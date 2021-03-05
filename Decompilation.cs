using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    // offsets are always multiplied by 4 before using
    using gofs_t = System.Int32;		// offset in global data block

    enum etype_t
    {
        ev_void, ev_string, ev_float, ev_vector, ev_entity, ev_field, ev_function, ev_pointer
    }

    enum opcodes
    {
        OP_DONE,
        OP_MUL_F,
        OP_MUL_V,
        OP_MUL_FV,
        OP_MUL_VF,
        OP_DIV_F,
        OP_ADD_F,
        OP_ADD_V,
        OP_SUB_F,
        OP_SUB_V,

        OP_EQ_F,
        OP_EQ_V,
        OP_EQ_S,
        OP_EQ_E,
        OP_EQ_FNC,

        OP_NE_F,
        OP_NE_V,
        OP_NE_S,
        OP_NE_E,
        OP_NE_FNC,

        OP_LE,
        OP_GE,
        OP_LT,
        OP_GT,

        OP_LOAD_F,
        OP_LOAD_V,
        OP_LOAD_S,
        OP_LOAD_ENT,
        OP_LOAD_FLD,
        OP_LOAD_FNC,

        OP_ADDRESS,

        OP_STORE_F,
        OP_STORE_V,
        OP_STORE_S,
        OP_STORE_ENT,
        OP_STORE_FLD,
        OP_STORE_FNC,

        OP_STOREP_F,
        OP_STOREP_V,
        OP_STOREP_S,
        OP_STOREP_ENT,
        OP_STOREP_FLD,
        OP_STOREP_FNC,

        OP_RETURN,
        OP_NOT_F,
        OP_NOT_V,
        OP_NOT_S,
        OP_NOT_ENT,
        OP_NOT_FNC,
        OP_IF,
        OP_IFNOT,
        OP_CALL0,
        OP_CALL1,
        OP_CALL2,
        OP_CALL3,
        OP_CALL4,
        OP_CALL5,
        OP_CALL6,
        OP_CALL7,
        OP_CALL8,
        OP_STATE,
        OP_GOTO,
        OP_AND,
        OP_OR,

        OP_BITAND,
        OP_BITOR
    }


    class dstatement_t
    {
        public ushort op;
        public short a, b, c;
    }

    class ddef_t
    {
        public ushort type;	// if DEF_SAVEGLOBGAL bit is set
        // the variable needs to be saved in savegames

        public ushort ofs;
        public int s_name;
    }

    class dfunction_t
    {
        public int first_statement;    // negative numbers are builtins

        public int parm_start;
        public int locals;         // total ints of parms + locals

        public int profile;        // runtime

        public int s_name;
        public int s_file;         // source file defined in

        public int numparms;
        public byte[] parm_size = new byte[ProQCC.MAX_PARMS];
    }

    class dprograms_t
    {
        public int version;
        public int crc;			// check of header file

        public int ofs_statements;
        public int numstatements;		// statement 0 is an error

        public int ofs_globaldefs;
        public int numglobaldefs;

        public int ofs_fielddefs;
        public int numfielddefs;

        public int ofs_functions;
        public int numfunctions;		// function 0 is an empty

        public int ofs_strings;
        public int numstrings;		// first string is a null string

        public int ofs_globals;
        public int numglobals;

        public int entityfields;
    }

    class type_t
    {
        public etype_t type;
        public def_t def;   // NG ptr		// a def that points to this type

        public type_t next; // NG ptr
        // function types are more complex
        public type_t aux_type; // NG ptr	// return type or field type

        public int num_parms;      // -1 = variable args

        public type_t[] parm_types = new type_t[ProQCC.MAX_PARMS];    // NG ptr	// only [num_parms] allocated
    }

    class def_t
    {
        public type_t type;    // NG ptr
        public char name;  // NG ptr
        public def_t next;
        public def_t prev;    // NG ptrs
        public gofs_t ofs;
        public def_t scope;	// NG ptr // function the var was defined in, or NULL

        public int initialized;        // 1 when a declaration included "= immediate"
    }

    class opcode_t
    {
        public string name;
        public string opname;
        public int priority;
        public bool right_associative;
        public def_t type_a;
        public def_t type_b;
        public def_t type_c;

        public opcode_t(string _name, string _opname, int _priority, bool _right_associative, def_t _type_a, def_t _type_b, def_t _type_c)
        {
            name = _name;
            opname = _opname;
            priority = _priority;
            right_associative = _right_associative;
            type_a = _type_a;
            type_b = _type_b;
            type_c = _type_c;
        }
    }

    partial class ProQCC
    {
        public const int MAX_PARMS = 8;

        const int MAX_REGS = 100000;

        const int OFS_NULL = 0;
        const int OFS_RETURN = 1;
        const int OFS_PARM0 = 4;    // leave 3 ofs for each parm to hold vectors
        const int OFS_PARM1 = 7;
        const int OFS_PARM2 = 10;
        const int OFS_PARM3 = 13;
        const int OFS_PARM4 = 16;
        const int RESERVED_OFS = 28;

        const int MAX_STRINGS = 1000000;
        const int MAX_GLOBALS = 80000;
        const int MAX_FIELDS = 2048;
        const int MAX_STATEMENTS = 131072;
        const int MAX_FUNCTIONS = 16384;

        def_t def_ret = new def_t();
        def_t[] def_parms = new def_t[MAX_PARMS];
        def_t def_void = new def_t();
        def_t def_string = new def_t();
        def_t def_float = new def_t();
        def_t def_vector = new def_t();
        def_t def_entity = new def_t();
        def_t def_field = new def_t();
        def_t def_function = new def_t();
        def_t def_pointer = new def_t();

        List<opcode_t> pr_opcodes = new List<opcode_t>();

        float[] pr_globals = new float[MAX_REGS];
        int numpr_globals;

        char[] strings = new char[MAX_STRINGS];
        int strofs;

        dstatement_t[] statements = new dstatement_t[MAX_STATEMENTS];
        int numstatements;
        int[] statement_linenums = new int[MAX_STATEMENTS];

        dfunction_t[] functions = new dfunction_t[MAX_FUNCTIONS];
        int numfunctions;

        ddef_t[] globals = new ddef_t[MAX_GLOBALS];
        int numglobaldefs;

        ddef_t[] fields = new ddef_t[MAX_FIELDS];
        int numfielddefs;

        public void InitData()
        {
            int i;

            numstatements = 1;
            strofs = 1;
            numfunctions = 1;
            numglobaldefs = 1;
            numfielddefs = 1;

            def_ret.ofs = OFS_RETURN;
            for (i = 0; i < MAX_PARMS; i++)
            {
                def_parms[i] = new def_t(); // NG
                def_parms[i].ofs = OFS_PARM0 + 3 * i;
            }
        }

        StreamWriter Decompileofile;
        StreamWriter Decompileprogssrc;
        StreamWriter Decompileprofile;
        string[] DecompileFilesSeen = new string[1024];
        int DecompileFileCtr = 0;
        string[] DecompileProfiles = new string[MAX_FUNCTIONS];

        List<string> type_names = new List<string>();
        List<string> builtins = new List<string>();
        Dictionary<int, string> IMMEDIATES = new Dictionary<int, string>();   // used in DecompileImmediate()

        // from offset into char[] array ending at null, to string
        string NGGetString(int offset)
        {
            StringBuilder sb = new StringBuilder();
            int currentCharOffset = offset;
            char currentChar = strings[currentCharOffset];
            while (currentChar != '\0')
            {
                sb.Append(currentChar);
                currentCharOffset++;
                currentChar = strings[currentCharOffset];
            }
            return sb.ToString();
        }

        void NGInit()
        {
            type_names.Clear();
            type_names.Add("void");
            type_names.Add("string");
            type_names.Add("float");
            type_names.Add("vector");
            type_names.Add("entity");
            type_names.Add("ev_field");
            type_names.Add("void()");
            type_names.Add("ev_pointer");

            builtins.Clear();
            builtins.Add("");
            builtins.Add("void (vector ang)");
            builtins.Add("void (entity e, vector o)");
            builtins.Add("void (entity e, string m)");
            builtins.Add("void (entity e, vector min, vector max)");
            builtins.Add("");
            builtins.Add("void ()");
            builtins.Add("float ()");
            builtins.Add("void (entity e, float chan, string samp, float vol, float atten)");
            builtins.Add("vector (vector v)");
            builtins.Add("void (string e)");
            builtins.Add("void (string e)");
            builtins.Add("float (vector v)");
            builtins.Add("float (vector v)");
            builtins.Add("entity ()");
            builtins.Add("void (entity e)");
            builtins.Add("void (vector v1, vector v2, float nomonsters, entity forent)");
            builtins.Add("entity ()");
            builtins.Add("entity (entity start, .string fld, string match)");
            builtins.Add("string (string s)");
            builtins.Add("string (string s)");
            builtins.Add("void (entity client, string s)");
            builtins.Add("entity (vector org, float rad)");
            builtins.Add("void (string s)");
            builtins.Add("void (entity client, string s)");
            builtins.Add("void (string s)");
            builtins.Add("string (float f)");
            builtins.Add("string (vector v)");
            builtins.Add("void ()");
            builtins.Add("void ()");
            builtins.Add("void ()");
            builtins.Add("void (entity e)");
            builtins.Add("float (float yaw, float dist)");
            builtins.Add("");
            builtins.Add("float (float yaw, float dist)");
            builtins.Add("void (float style, string value)");
            builtins.Add("float (float v)");
            builtins.Add("float (float v)");
            builtins.Add("float (float v)");
            builtins.Add("");
            builtins.Add("float (entity e)");
            builtins.Add("float (vector v)");
            builtins.Add("");
            builtins.Add("float (float f)");
            builtins.Add("vector (entity e, float speed)");
            builtins.Add("float (string s)");
            builtins.Add("void (string s)");
            builtins.Add("entity (entity e)");
            builtins.Add("void (vector o, vector d, float color, float count)");
            builtins.Add("void ()");
            builtins.Add("");
            builtins.Add("vector (vector v)");
            builtins.Add("void (float to, float f)");
            builtins.Add("void (float to, float f)");
            builtins.Add("void (float to, float f)");
            builtins.Add("void (float to, float f)");
            builtins.Add("void (float to, float f)");
            builtins.Add("void (float to, float f)");
            builtins.Add("void (float to, string s)");
            builtins.Add("void (float to, entity s)");
            builtins.Add("");
            builtins.Add("");
            builtins.Add("");
            builtins.Add("");
            builtins.Add("");
            builtins.Add("");
            builtins.Add("");
            builtins.Add("void (float step)");
            builtins.Add("string (string s)");
            builtins.Add("void (entity e)");
            builtins.Add("void (string s)");
            builtins.Add("");
            builtins.Add("void (string var, string val)");
            builtins.Add("void (entity client, string s)");
            builtins.Add("void (vector pos, string samp, float vol, float atten)");
            builtins.Add("string (string s)");
            builtins.Add("string (string s)");
            builtins.Add("string (string s)");
            builtins.Add("void (entity e)");

            pr_opcodes.Add(new opcode_t("<DONE>", "DONE", -1, false, def_entity, def_field, def_void));
            pr_opcodes.Add(new opcode_t("*", "MUL_F", 2, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("*", "MUL_V", 2, false, def_vector, def_vector, def_float));
            pr_opcodes.Add(new opcode_t("*", "MUL_FV", 2, false, def_float, def_vector, def_vector));
            pr_opcodes.Add(new opcode_t("*", "MUL_VF", 2, false, def_vector, def_float, def_vector));
            pr_opcodes.Add(new opcode_t("/", "DIV", 2, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("+", "ADD_F", 3, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("+", "ADD_V", 3, false, def_vector, def_vector, def_vector));
            pr_opcodes.Add(new opcode_t("-", "SUB_F", 3, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("-", "SUB_V", 3, false, def_vector, def_vector, def_vector));
            pr_opcodes.Add(new opcode_t("==", "EQ_F", 4, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("==", "EQ_V", 4, false, def_vector, def_vector, def_float));
            pr_opcodes.Add(new opcode_t("==", "EQ_S", 4, false, def_string, def_string, def_float));
            pr_opcodes.Add(new opcode_t("==", "EQ_E", 4, false, def_entity, def_entity, def_float));
            pr_opcodes.Add(new opcode_t("==", "EQ_FNC", 4, false, def_function, def_function, def_float));
            pr_opcodes.Add(new opcode_t("!=", "NE_F", 4, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("!=", "NE_V", 4, false, def_vector, def_vector, def_float));
            pr_opcodes.Add(new opcode_t("!=", "NE_S", 4, false, def_string, def_string, def_float));
            pr_opcodes.Add(new opcode_t("!=", "NE_E", 4, false, def_entity, def_entity, def_float));
            pr_opcodes.Add(new opcode_t("!=", "NE_FNC", 4, false, def_function, def_function, def_float));
            pr_opcodes.Add(new opcode_t("<=", "LE", 4, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t(">=", "GE", 4, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("<", "LT", 4, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t(">", "GT", 4, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t(".", "INDIRECT", 1, false, def_entity, def_field, def_float));
            pr_opcodes.Add(new opcode_t(".", "INDIRECT", 1, false, def_entity, def_field, def_vector));
            pr_opcodes.Add(new opcode_t(".", "INDIRECT", 1, false, def_entity, def_field, def_string));
            pr_opcodes.Add(new opcode_t(".", "INDIRECT", 1, false, def_entity, def_field, def_entity));
            pr_opcodes.Add(new opcode_t(".", "INDIRECT", 1, false, def_entity, def_field, def_field));
            pr_opcodes.Add(new opcode_t(".", "INDIRECT", 1, false, def_entity, def_field, def_function));
            pr_opcodes.Add(new opcode_t(".", "ADDRESS", 1, false, def_entity, def_field, def_pointer));
            pr_opcodes.Add(new opcode_t("=", "STORE_F", 5, true, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("=", "STORE_V", 5, true, def_vector, def_vector, def_vector));
            pr_opcodes.Add(new opcode_t("=", "STORE_S", 5, true, def_string, def_string, def_string));
            pr_opcodes.Add(new opcode_t("=", "STORE_ENT", 5, true, def_entity, def_entity, def_entity));
            pr_opcodes.Add(new opcode_t("=", "STORE_FLD", 5, true, def_field, def_field, def_field));
            pr_opcodes.Add(new opcode_t("=", "STORE_FNC", 5, true, def_function, def_function, def_function));
            pr_opcodes.Add(new opcode_t("=", "STOREP_F", 5, true, def_pointer, def_float, def_float));
            pr_opcodes.Add(new opcode_t("=", "STOREP_V", 5, true, def_pointer, def_vector, def_vector));
            pr_opcodes.Add(new opcode_t("=", "STOREP_S", 5, true, def_pointer, def_string, def_string));
            pr_opcodes.Add(new opcode_t("=", "STOREP_ENT", 5, true, def_pointer, def_entity, def_entity));
            pr_opcodes.Add(new opcode_t("=", "STOREP_FLD", 5, true, def_pointer, def_field, def_field));
            pr_opcodes.Add(new opcode_t("=", "STOREP_FNC", 5, true, def_pointer, def_function, def_function));
            pr_opcodes.Add(new opcode_t("<RETURN>", "RETURN", -1, false, def_void, def_void, def_void));
            pr_opcodes.Add(new opcode_t("!", "NOT_F", -1, false, def_float, def_void, def_float));
            pr_opcodes.Add(new opcode_t("!", "NOT_V", -1, false, def_vector, def_void, def_float));
            pr_opcodes.Add(new opcode_t("!", "NOT_S", -1, false, def_vector, def_void, def_float));
            pr_opcodes.Add(new opcode_t("!", "NOT_ENT", -1, false, def_entity, def_void, def_float));
            pr_opcodes.Add(new opcode_t("!", "NOT_FNC", -1, false, def_function, def_void, def_float));
            pr_opcodes.Add(new opcode_t("<IF>", "IF", -1, false, def_float, def_float, def_void));
            pr_opcodes.Add(new opcode_t("<IFNOT>", "IFNOT", -1, false, def_float, def_float, def_void));
            pr_opcodes.Add(new opcode_t("<CALL0>", "CALL0", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL1>", "CALL1", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL2>", "CALL2", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL3>", "CALL3", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL4>", "CALL4", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL5>", "CALL5", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL6>", "CALL6", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL7>", "CALL7", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<CALL8>", "CALL8", -1, false, def_function, def_void, def_void));
            pr_opcodes.Add(new opcode_t("<STATE>", "STATE", -1, false, def_float, def_float, def_void));
            pr_opcodes.Add(new opcode_t("<GOTO>", "GOTO", -1, false, def_float, def_void, def_void));
            pr_opcodes.Add(new opcode_t("&&", "AND", 6, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("||", "OR", 6, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("&", "BITAND", 2, false, def_float, def_float, def_float));
            pr_opcodes.Add(new opcode_t("|", "BITOR", 2, false, def_float, def_float, def_float));
        }

        public void DecompileProgsDat(string name)
        {
            NGInit();

            DecompileReadData(name);
            DecompileDecompileFunctions();
        }

        // checked
        void DecompileReadData(string srcfile)
        {
            dprograms_t progs = new dprograms_t();

            BinaryReader h = new BinaryReader(File.Open(srcfile, FileMode.Open));
            progs.version = h.ReadInt32();
            progs.crc = h.ReadInt32();
            progs.ofs_statements = h.ReadInt32();
            progs.numstatements = h.ReadInt32();
            progs.ofs_globaldefs = h.ReadInt32();
            progs.numglobaldefs = h.ReadInt32();
            progs.ofs_fielddefs = h.ReadInt32();
            progs.numfielddefs = h.ReadInt32();
            progs.ofs_functions = h.ReadInt32();
            progs.numfunctions = h.ReadInt32();
            progs.ofs_strings = h.ReadInt32();
            progs.numstrings = h.ReadInt32();
            progs.ofs_globals = h.ReadInt32();
            progs.numglobals = h.ReadInt32();
            progs.entityfields = h.ReadInt32();

            h.BaseStream.Seek(progs.ofs_strings, SeekOrigin.Begin);
            strofs = progs.numstrings;
            for (int i = 0; i < strofs; i++)
            {
                strings[i] = h.ReadChar();
            }

            h.BaseStream.Seek(progs.ofs_statements, SeekOrigin.Begin);
            numstatements = progs.numstatements;
            for (int i = 0; i < numstatements; i++)
            {
                statements[i] = new dstatement_t();
                statements[i].op = h.ReadUInt16();
                statements[i].a = h.ReadInt16();
                statements[i].b = h.ReadInt16();
                statements[i].c = h.ReadInt16();
            }

            h.BaseStream.Seek(progs.ofs_functions, SeekOrigin.Begin);
            numfunctions = progs.numfunctions;
            for (int i = 0; i < numfunctions; i++)
            {
                functions[i] = new dfunction_t();
                functions[i].first_statement = h.ReadInt32();
                functions[i].parm_start = h.ReadInt32();
                functions[i].locals = h.ReadInt32();
                functions[i].profile = h.ReadInt32();
                functions[i].s_name = h.ReadInt32();
                functions[i].s_file = h.ReadInt32();
                functions[i].numparms = h.ReadInt32();
                for(int j = 0; j < ProQCC.MAX_PARMS; j++)
                    functions[i].parm_size[j] = h.ReadByte();
            }

            h.BaseStream.Seek(progs.ofs_globaldefs, SeekOrigin.Begin);
            numglobaldefs = progs.numglobaldefs;
            for(int i = 0; i < numglobaldefs; i++)
            {
                globals[i] = new ddef_t();
                globals[i].type = h.ReadUInt16();
                globals[i].ofs = h.ReadUInt16();
                globals[i].s_name = h.ReadInt32();
            }

            h.BaseStream.Seek(progs.ofs_fielddefs, SeekOrigin.Begin);
            numfielddefs = progs.numfielddefs;
            for (int i = 0; i < numfielddefs; i++)
            {
                fields[i] = new ddef_t();
                fields[i].type = h.ReadUInt16();
                fields[i].ofs = h.ReadUInt16();
                fields[i].s_name = h.ReadInt32();
            }

            h.BaseStream.Seek(progs.ofs_globals, SeekOrigin.Begin);
            numpr_globals = progs.numglobals;
            for(int i = 0; i < numpr_globals; i++)
            {
                pr_globals[i] = h.ReadSingle();
            }
        }

        // checked
        void DecompileCalcProfiles()
        {
            dfunction_t df;
            dstatement_t ds, rds;
            ddef_t par;
            ushort dom;
            string fname;
            string line;

            for (int i = 1; i < numfunctions; i++)
            {
                df = functions[i];
                fname = "";
                line = "";
                DecompileProfiles[i] = null;

                if (df.first_statement <= 0)
                {
                    fname = builtins[-df.first_statement] + " " + NGGetString(functions[i].s_name);
                }
                else
                {
                    int statementIndex = df.first_statement;
                    ds = statements[statementIndex];
                    rds = null;

                    /*
                    * find a return statement, to determine the result type 
                    */
                    while (true)
                    {
                        dom = (ushort)((ds.op) % 100);
                        if (dom == 0)
                            break;
                        if (dom == (ushort)opcodes.OP_RETURN)
                        {
                            rds = ds;
                        }
                        statementIndex++;
                        ds = statements[statementIndex];
                    }

                    /*
                    * print the return type  
                    */
                    if ((rds != null) && (rds.a != 0))
                    {
                        par = DecompileGetParameter(rds.a);

                        if (par != null && par.type >= 0 && par.type < 8)   // NG TODO some par.types are 5 figures?!
                        {
                            fname = type_names[par.type] + " ";
                        }
                        else
                        {
                            fname = "float /* Warning: Could not determine return type */ ";
                        }
                    }
                    else
                    {
                        fname = "\nvoid ";
                    }
                    fname += "(";

                    /*
                    * determine overall parameter size 
                    */
                    int ps = 0;
                    for (int j = 0; j < df.numparms; j++)
                        ps += df.parm_size[j];

                    if (ps > 0)
                    {
                        for (int j = df.parm_start; j < (df.parm_start) + ps; j++)
                        {
                            line = "";
                            par = DecompileGetParameter(j);

                            if (par is null)
                                throw new Exception("Error - No parameter names with offset " + j + ".");

                            if (par.type == (ushort)etype_t.ev_vector)
                                j += 2;

                            if (j < (df.parm_start) + ps - 1)
                            {
                                line = DecompilePrintParameter(par) + ", ";
                            }
                            else
                            {
                                line = DecompilePrintParameter(par);
                            }
                            fname += line;
                        }
                    }
                    fname += ") ";
                    line = "";
                    line = NGGetString(functions[i].s_name);
                    fname += line;
                }

                if (i >= MAX_FUNCTIONS)
                    throw new Exception("Fatal Error - too many functions.");

                DecompileProfiles[i] = fname;
            }
        }

        string DecompilePrintParameter(ddef_t def)
        {
            string line = "";

            if (NGGetString(def.s_name) == "IMMEDIATE")
            {
                line = DecompileValueString((etype_t)def.type, def.ofs);
            }
            else
            {
                line = type_names[def.type] + " " + NGGetString(def.s_name);
            }

            return line;
        }

        string DecompileValueString(etype_t type, ushort pr_globals_offset)
        {
            string line = "";

            switch (type)
            {
                case etype_t.ev_string:
                    line = DecompileString(NGGetString(BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[pr_globals_offset]))));
                    break;
                case etype_t.ev_void:
                    line = "void";
                    break;
                case etype_t.ev_float:
                    line = ((float)pr_globals[pr_globals_offset]).ToString("F3");
                    break;
                case etype_t.ev_vector:
                    line = "'" + ((float)pr_globals[pr_globals_offset]).ToString("F3") + " " + ((float)pr_globals[pr_globals_offset + 1]).ToString("F3") + " " + ((float)pr_globals[pr_globals_offset + 2]).ToString("F3") + "'";
                    break;
                default:
                    line = "bad type " + type;
                    break;
            }

            return line;
        }

        string DecompileString(string stringToDecompile)
        {
            // doesn't escape newlines - see ending message in oldone.qc
            //stringToDecompile.Replace('"', '\"');
            //return "\"" + stringToDecompile + "\"";

            StringBuilder buf = new StringBuilder();
            buf.Append('"');
            foreach(char chr in stringToDecompile)
            {
                if (chr == '\n')
                {
                    buf.Append('\\');
                    buf.Append('n');
                }
                else if (chr == '"')
                {
                    buf.Append('\\');
                    buf.Append('"');
                }
                else
                {
                    buf.Append(chr);
                }
            }
            buf.Append('"');
            return buf.ToString();
        }

        ddef_t? DecompileGetParameter(gofs_t ofs)
        {
            for (int i = 0; i < numglobaldefs; i++)
            {
                ddef_t def = globals[i];

                if (def.ofs == ofs)
                {
                    return def;
                }
            }
            return null;
        }

        int DecompileAlreadySeen(string fname)
        {
            if (DecompileFileCtr > 1000)
                throw new Exception("Fatal Error - too many source files.");

            for (int i = 0; i < DecompileFileCtr; i++)
            {
                if (fname == DecompileFilesSeen[i])
                    return 1;
            }

            DecompileFilesSeen[DecompileFileCtr] = fname;
            DecompileFileCtr++;

            return 0;
        }

        void DecompileDecompileFunctions()
        {
            int i;
            dfunction_t d;
            StreamWriter f;
            string fname;
            bool shownwarning = false;

            DecompileCalcProfiles();

            Decompileprogssrc = new StreamWriter("progs.src", false);
            Decompileprogssrc.WriteLine("./progs.dat");
            Decompileprogssrc.WriteLine();

            for (i = 1; i < numfunctions; i++)
            {
                d = functions[i];

                fname = NGGetString(d.s_file);

                if (fname.Length == 0)
                {
                    fname = "scram.qc";
                    if (!shownwarning)
                    {
                        Console.Out.WriteLine("Warning - Scrambled file, generating " + fname + ".");
                        shownwarning = true;
                    }
                }

                f = new StreamWriter(fname, true);

                if (DecompileAlreadySeen(fname) == 0)
                {
                    Decompileprogssrc.WriteLine(fname);
                }

                Decompileofile = f;
                DecompileFunction(NGGetString(d.s_name));

                f.Close();
            }

            Decompileprogssrc.Close();
        }

        void DecompileFunction(string name)
        {
            int i, findex, ps;
            int dsIndex, tsIndex;   // NG
            dstatement_t ds, ts;
            dfunction_t df;
            ddef_t par;
            string arg2;
            ushort dom, tom;

            int j, start, end;
            dfunction_t dfpred;
            ddef_t ef;

            string line;

            int kIndex;
            dstatement_t k;
            int dum;

            for (i = 1; i < numfunctions; i++)
            {
                if (name == NGGetString(functions[i].s_name)) { break; }
            }
            if (i == numfunctions) { throw new Exception("No function named \"" + name + "\""); }
            df = functions[i];

            findex = i;

            /*
            * Check ''local globals'' 
            */
            dfpred = functions[findex - 1];

            for (j = 0, ps = 0; j < dfpred.numparms; j++)
            {
                ps += dfpred.parm_size[j];
            }

            start = dfpred.parm_start + dfpred.locals + ps;

            if (dfpred.first_statement < 0 && df.first_statement > 0)
            {
                start -= 1;
            }

            if (start == 0)
            {
                start = 1;
            }

            end = df.parm_start;

            for (j = start; j < end; j++)
            {
                par = DecompileGetParameter(j);

                if (par != null)
                {
                    if ((par.type & (1 << 15)) != 0)
                    {
                        par.type -= (1 << 15);
                    }

                    if (par.type == (ushort)etype_t.ev_function)
                    {
                        if (NGGetString(par.s_name) != "IMMEDIATE")
                        {
                            if (NGGetString(par.s_name) != name)
                            {
                                string profile = DecompileProfiles[DecompileGetFunctionIdxByName(NGGetString(par.s_name))];
                                if(profile.StartsWith("\n"))
                                {
                                    Decompileofile.WriteLine();
                                    profile = profile.Remove(0, 1); // remove the \n
                                }
                                Decompileofile.WriteLine(profile + ";");
                            }
                        }
                    }
                    else if (par.type != (ushort)etype_t.ev_pointer)
                    {
                        if (NGGetString(par.s_name) != "IMMEDIATE")
                        {
                            if (par.type == (ushort)etype_t.ev_field)
                            {
                                ef = GetField(NGGetString(par.s_name));

                                if (ef is null) { throw new Exception("Could not locate a field named \"" + NGGetString(par.s_name) + "\""); }

                                if (ef.type == (ushort)etype_t.ev_vector)
                                {
                                    j += 3;
                                }

                                Decompileofile.WriteLine("." + type_names[ef.type] + " " + NGGetString(ef.s_name) + ";");
                            }
                            else
                            {
                                if (par.type == (ushort)etype_t.ev_vector)
                                {
                                    j += 2;
                                }

                                if (par.type == (ushort)etype_t.ev_entity || par.type == (ushort)etype_t.ev_void)
                                {
                                    Decompileofile.WriteLine(type_names[par.type] + " " + NGGetString(par.s_name) + ";");
                                }
                                else
                                {
                                    line = DecompileValueString((etype_t)par.type, par.ofs);

                                    if ((NGGetString(par.s_name).Length > 1) &&
                                        Char.IsUpper((NGGetString(par.s_name))[0]) &&
                                        (Char.IsUpper((NGGetString(par.s_name))[1]) || (NGGetString(par.s_name))[1] == '_'))
                                    {
                                        Decompileofile.WriteLine(type_names[par.type] + " " + NGGetString(par.s_name) + " = " + line + ";");
                                    }
                                    else
                                    {
                                        Decompileofile.WriteLine(type_names[par.type] + " " + NGGetString(par.s_name) + " /* = " + line + " */;");
                                    }
                                }
                            }
                        }
                    }
                }
            }

            /*
            * Check ''local globals'' 
            */
            if (df.first_statement <= 0)
            {
                Decompileofile.WriteLine(DecompileProfiles[findex] + " = #" + (-df.first_statement) + ";");
                return;
            }
            dsIndex = df.first_statement;
            ds = statements[dsIndex];

            while (true)
            {
                dom = (ushort)((ds.op) % 100);

                if (dom == 0) { break; }

                else if (dom == (ushort)opcodes.OP_GOTO)
                {
                    /*
                    * check for i-t-e 
                        */
                    if (ds.a > 0)
                    {
                        tsIndex = dsIndex + ds.a;
                        ts = statements[tsIndex];
                        ts.op += 100;  /*
									* mark the end of a if/ite construct 
					*/
                    }
                }
                else if (dom == (ushort)opcodes.OP_IFNOT)
                {
                    /*
                    * check for pure if 
                        */
                    tsIndex = dsIndex + ds.b;
                    ts = statements[tsIndex];
                    tom = (ushort)(statements[tsIndex - 1].op % 100);

                    if (tom != (ushort)opcodes.OP_GOTO)
                    {
                        ts.op += 100;  /*
								* mark the end of a if/ite construct 
				*/
                    }
                    else if (statements[tsIndex - 1].a < 0)
                    {
                        if ((statements[tsIndex - 1].a + ds.b) > 1)
                        {
                            /*
                            * pure if  
                                */
                            ts.op += 100;  /*
										* mark the end of a if/ite construct 
						*/
                        }
                        else
                        {
                            dum = 1;
                            for (kIndex = (tsIndex - 1) + (statements[tsIndex - 1].a); kIndex < dsIndex; kIndex++)
                            {
                                k = statements[kIndex];
                                tom = (ushort)(k.op % 100);
                                if (tom == (ushort)opcodes.OP_GOTO || tom == (ushort)opcodes.OP_IF || tom == (ushort)opcodes.OP_IFNOT)
                                    dum = 0;
                            }
                            if (dum == 0)
                            {
                                /*
                                * pure if  
                                    */
                                ts.op += 100;  /*
											* mark the end of a if/ite construct 
							*/
                            }
                        }
                    }
                }
                else if (dom == (ushort)opcodes.OP_IF)
                {
                    tsIndex = dsIndex + ds.b;
                    ts = statements[tsIndex];
                    ts.op += 10000;    /*
									* mark the start of a do construct 
				*/
                }
                dsIndex++;
                ds = statements[dsIndex];
            }

            /*
            * print the prototype 
            */
            Decompileofile.Write(DecompileProfiles[findex]);

            /*
            * handle state functions 
            */
            dsIndex = df.first_statement;
            ds = statements[dsIndex];

            if (ds.op == (ushort)opcodes.OP_STATE)
            {
                par = DecompileGetParameter(ds.a);
                if (par is null) { throw new Exception("Error - Can't determine frame number."); }

                arg2 = DecompileGet(df, ds.b, null);
                if (arg2 is null) { throw new Exception("Error - No state parameter with offset " + ds.b + "."); }

                Decompileofile.Write(" = [ " + DecompileValueString((etype_t)par.type, par.ofs) + ", " + arg2 + " ]");
            }
            else
            {
                Decompileofile.Write(" =");
            }
            Decompileofile.WriteLine(" {");
            Decompileofile.WriteLine();

            /*
            * calculate the parameter size 
            */
            for (j = 0, ps = 0; j < df.numparms; j++)
            {
                ps += df.parm_size[j];
            }

            /*
			* print the locals 
		    */
            if (df.locals > 0)
            {
                if ((df.parm_start) + df.locals - 1 >= (df.parm_start) + ps)
                {
                    for (i = df.parm_start + ps; i < (df.parm_start) + df.locals; i++)
                    {
                        par = DecompileGetParameter(i);

                        if (par is null)
                        {
                            Decompileofile.WriteLine("   /* Warning: No local name with offset " + i + " */");
                        }
                        else
                        {
                            if (par.type == (ushort)etype_t.ev_function)
                            {
                                Decompileofile.WriteLine("   /* Warning: Fields and functions must be global */");
                            }
                            else
                            {
                                Decompileofile.WriteLine("   local " + DecompilePrintParameter(par) + ";");
                            }

                            if (par.type == (ushort)etype_t.ev_vector)
                            {
                                i += 2;
                            }
                        }
                    }
                    Decompileofile.WriteLine();
                }
            }

            /*
            * do the hard work 
            */
            DecompileDecompileFunction(df);

            Decompileofile.WriteLine();
            Decompileofile.WriteLine("};");
        }

        ddef_t? GetField(string name)
        {
            ddef_t d;

            for (int i = 1; i < numfielddefs; i++)
            {
                d = fields[i];

                if (NGGetString(d.s_name) == name)
                    return d;
            }
            return null;
        }

        int DecompileGetFunctionIdxByName(string name)
        {
            int i;
            for (i = 1; i < numfunctions; i++)
            {
                if (name == NGGetString(functions[i].s_name))
                {
                    break;
                }
            }
            return i;
        }

        string? DecompileGet(dfunction_t df, gofs_t ofs, def_t req_t)
        {
            string arg1 = null;

            arg1 = DecompileGlobal(ofs, req_t);

            if (arg1 == null)
            {
                arg1 = DecompileImmediate(df, ofs, 2, null);
            }
            return arg1;
        }

        string? DecompileGlobal(gofs_t ofs, def_t req_t)
        {
            int i;
            ddef_t def = null;
            string line = "";
            bool found = false;

            for (i = 0; i < numglobaldefs; i++)
            {
                def = globals[i];

                if (def.ofs == ofs)
                {
                    found = true;
                    break;
                }
            }

            if (found)
            {

                if (NGGetString(def.s_name) == "IMMEDIATE")
                    line = DecompileValueString((etype_t)def.type, def.ofs);
                else
                {

                    line = NGGetString(def.s_name);
                    if (def.type == ((ushort)(etype_t.ev_vector)) && req_t == def_float)
                    {
                        line += "_x";
                    }
                }
                return line;
            }
            return null;
        }

        string? DecompileImmediate(dfunction_t df, gofs_t ofs, int fun, string newStr)
        {
            int i;
            string  res;
            
            gofs_t nofs;
	
            if (fun == 0)
            {
                // free 'em all
                IMMEDIATES.Clear();
                return null;
            }

            nofs = DecompileScaleIndex(df, ofs);
            if ((nofs <= 0) /*|| (nofs > MAX_NO_LOCAL_IMMEDIATES - 1)*/) throw new Exception("Fatal Error - Index (" + nofs + ") out of bounds.");

            if (fun == 1)
            {
                // insert
                IMMEDIATES[nofs] = newStr;
            }

            if (fun == 2)
            {
                // get
                if(IMMEDIATES.ContainsKey(nofs))
                {
                    return IMMEDIATES[nofs];
                }
                else
                {
                    throw new Exception("Error - " + nofs + " not defined.");
                }
            }
            return null;
         }

        gofs_t DecompileScaleIndex(dfunction_t df, gofs_t ofs)
        {
            gofs_t nofs = 0;

            if (ofs > RESERVED_OFS)
                nofs = ofs - df.parm_start + RESERVED_OFS;
            else
                nofs = ofs;

            return nofs;
        }

        void DecompileDecompileFunction(dfunction_t df)
        {
            // Initialize 
            DecompileImmediate(df, 0, 0, null);

            int indent = 1;

            int dsIndex = df.first_statement;
            while (true)
            {
                DecompileDecompileStatement(df, dsIndex, ref indent);
                if (statements[dsIndex].op == 0)
                    break;
                dsIndex++;
            }

            if (indent != 1)
                Decompileofile.WriteLine("/* Warning : Indentiation structure corrupt */");

        }

        void DecompileIndent(int c)
        {
            if (c < 0)
                c = 0;

            for (int i = 0; i < c; i++)
            {
                Decompileofile.Write("   ");
            }
        }

        void DecompileDecompileStatement(dfunction_t df, int sIndex, ref int indent)
        {
            dstatement_t s = statements[sIndex];
            dstatement_t t;
            ushort tom;
            def_t typ1, typ2, typ3;

            int dum;

            string? arg1 = null, arg2 = null, arg3 = null;
            string line = "";
            string fnam = "";

            ushort dom = s.op;

            ushort doc = (ushort)(dom / 10000);
            ushort ifc = (ushort)((dom % 10000) / 100);

            // use program flow information 
            for (int i = 0; i < ifc; i++)
            {
                indent--;
                Decompileofile.WriteLine();
                DecompileIndent(indent);
                Decompileofile.WriteLine("}");
            }
            for (int i = 0; i < doc; i++)
            {
                DecompileIndent(indent);
                Decompileofile.WriteLine("do {");
                Decompileofile.WriteLine();
                indent++;
            }

            // remove all program flow information 
            s.op %= 100;

            typ1 = pr_opcodes[s.op].type_a;
            typ2 = pr_opcodes[s.op].type_b;
            typ3 = pr_opcodes[s.op].type_c;

            // states are handled at top level 
            if (s.op == (ushort)opcodes.OP_DONE || s.op == (ushort)opcodes.OP_STATE)
            {
            }
            else if (s.op == (ushort)opcodes.OP_RETURN)
            {
                DecompileIndent(indent);
                Decompileofile.Write("return ");

                if (s.a != 0)
                {
                    arg1 = DecompileGet(df, s.a, typ1);
                    Decompileofile.Write("( " + arg1 + " )");
                }
                Decompileofile.WriteLine(";");
            }
            else if (((ushort)opcodes.OP_MUL_F <= s.op && s.op <= (ushort)opcodes.OP_SUB_V) ||
              ((ushort)opcodes.OP_EQ_F <= s.op && s.op <= (ushort)opcodes.OP_GT) ||
              ((ushort)opcodes.OP_AND <= s.op && s.op <= (ushort)opcodes.OP_BITOR))
            {
                arg1 = DecompileGet(df, s.a, typ1);
                arg2 = DecompileGet(df, s.b, typ2);
                arg3 = DecompileGlobal(s.c, typ3);

                if (arg3 != null)
                {
                    DecompileIndent(indent);
                    Decompileofile.WriteLine(arg3 + " = " + arg1 + " " + pr_opcodes[s.op].name + " " + arg2 + ";");
                }
                else
                {
                    line = "(" + arg1 + " " + pr_opcodes[s.op].name + " " + arg2 + ")";
                    DecompileImmediate(df, s.c, 1, line);
                }
            }
            else if ((ushort)opcodes.OP_LOAD_F <= s.op && s.op <= (ushort)opcodes.OP_ADDRESS)
            {
                arg1 = DecompileGet(df, s.a, typ1);
                arg2 = DecompileGet(df, s.b, typ2);
                arg3 = DecompileGlobal(s.c, typ3);

                if (arg3 != null)
                {
                    DecompileIndent(indent);
                    Decompileofile.WriteLine(arg3 + " = " + arg1 + "." + arg2 + ";");
                }
                else
                {
                    line = arg1 + "." + arg2;
                    DecompileImmediate(df, s.c, 1, line);
                }
            }
            else if ((ushort)opcodes.OP_STORE_F <= s.op && s.op <= (ushort)opcodes.OP_STORE_FNC)
            {
                arg1 = DecompileGet(df, s.a, typ1);
                arg3 = DecompileGlobal(s.b, typ2);

                if (arg3 != null)
                {
                    DecompileIndent(indent);
                    Decompileofile.WriteLine(arg3 + " = " + arg1 + ";");
                }
                else
                {
                    line = arg1;
                    DecompileImmediate(df, s.b, 1, line);
                }
            }
            else if ((ushort)opcodes.OP_STOREP_F <= s.op && s.op <= (ushort)opcodes.OP_STOREP_FNC)
            {
                arg1 = DecompileGet(df, s.a, typ1);
                arg2 = DecompileGet(df, s.b, typ2);

                DecompileIndent(indent);
                Decompileofile.WriteLine(arg2 + " = " + arg1 + ";");
            }
            else if ((ushort)opcodes.OP_NOT_F <= s.op && s.op <= (ushort)opcodes.OP_NOT_FNC)
            {
                arg1 = DecompileGet(df, s.a, typ1);
                line = "!" + arg1;
                DecompileImmediate(df, s.c, 1, line);
            }
            else if ((ushort)opcodes.OP_CALL0 <= s.op && s.op <= (ushort)opcodes.OP_CALL8)
            {
                int nargs = s.op - (ushort)opcodes.OP_CALL0;

                arg1 = DecompileGet(df, s.a, null);
                line = arg1 + " (";
                fnam = arg1;

                for (int i = 0; i < nargs; i++)
                {
                    typ1 = null;

                    int j = 4 + 3 * i;

                    arg1 = DecompileGet(df, j, typ1);
                    line += arg1;

                    if (i < nargs - 1)
                        line += ",";
                }

                line += ")";
                DecompileImmediate(df, 1, 1, line);

                if (((statements[sIndex + 1].a != 1) && (statements[sIndex + 1].b != 1) &&
                    (statements[sIndex + 2].a != 1) && (statements[sIndex + 2].b != 1)) ||
                    (((statements[sIndex + 1].op) % 100 == (ushort)opcodes.OP_CALL0) && (((statements[sIndex + 2].a != 1)) || (statements[sIndex + 2].b != 1))))
                {
                    DecompileIndent(indent);
                    Decompileofile.WriteLine(line + ";");
                }
            }
            else if (s.op == (ushort)opcodes.OP_IF || s.op == (ushort)opcodes.OP_IFNOT)
            {
                arg1 = DecompileGet(df, s.a, null);
                arg2 = DecompileGlobal(s.a, null);

                if (s.op == (ushort)opcodes.OP_IFNOT)
                {
                    if (s.b < 1)
                        throw new Exception("Found a negative IFNOT jump.");

                    // get instruction right before the target 
                    int tIndex = sIndex + s.b - 1;
                    t = statements[tIndex];
                    tom = (ushort)(t.op % 100);

                    if (tom != (ushort)opcodes.OP_GOTO)
                    {
                        // pure if 
                        DecompileIndent(indent);
                        Decompileofile.WriteLine("if ( " + arg1 + " ) {");
                        Decompileofile.WriteLine();
                        indent++;
                    }
                    else
                    {
                        if (t.a > 0)
                        {
                            // if-then-else
                            DecompileIndent(indent);
                            Decompileofile.WriteLine("if ( " + arg1 + " ) {");
                            Decompileofile.WriteLine();
                            indent++;
                        }
                        else
                        {
                            if ((t.a + s.b) > 1)
                            {
                                // pure if
                                DecompileIndent(indent);
                                Decompileofile.WriteLine("if ( " + arg1 + " ) {");
                                Decompileofile.WriteLine();
                                indent++;
                            }
                            else
                            {
                                dum = 1;
                                for (int kIndex = tIndex + (t.a); kIndex < sIndex; kIndex++)
                                {
                                    tom = (ushort)(statements[kIndex].op % 100);
                                    if (tom == (ushort)opcodes.OP_GOTO || tom == (ushort)opcodes.OP_IF || tom == (ushort)opcodes.OP_IFNOT)
                                        dum = 0;
                                }
                                if (dum != 0)
                                {
                                    // while
                                    DecompileIndent(indent);
                                    Decompileofile.WriteLine("while ( " + arg1 + " ) {");
                                    Decompileofile.WriteLine();
                                    indent++;
                                }
                                else
                                {
                                    // pure if
                                    DecompileIndent(indent);
                                    Decompileofile.WriteLine("if ( " + arg1 + " ) {");
                                    Decompileofile.WriteLine();
                                    indent++;
                                }
                            }
                        }
                    }
                }
                else
                {
                    // do ... while 
                    indent--;
                    Decompileofile.WriteLine();
                    DecompileIndent(indent);
                    Decompileofile.WriteLine("} while ( " + arg1 + " );");
                }
            }
            else if (s.op == (ushort)opcodes.OP_GOTO)
            {
                if (s.a > 0)
                {
                    // else 
                    indent--;
                    Decompileofile.WriteLine();
                    DecompileIndent(indent);
                    Decompileofile.WriteLine("} else {");
                    Decompileofile.WriteLine();
                    indent++;
                }
                else
                {
                    // while 
                    indent--;
                    Decompileofile.WriteLine();
                    DecompileIndent(indent);
                    Decompileofile.WriteLine("}");
                }
            }
            else
            {
                Decompileofile.WriteLine();
                Decompileofile.WriteLine("/* Warning: UNKNOWN COMMAND */");
            }

            return;
        }
    }
}
