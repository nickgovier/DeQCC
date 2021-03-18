using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    enum Types
    {
        ev_void, ev_string, ev_float, ev_vector, ev_entity, ev_field, ev_function, ev_pointer
    }

    enum Opcodes
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

    partial class Statement
    {
        public ushort op;
        public short a, b, c;

        public Opcodes Opcode
        {
            get { return (Opcodes)(op % 100); }
        }

        public override string ToString()   // used to write out the bytecode at the head of every function
        {
            return Opcode.ToString() + "\t" + a.ToString() + "\t" + b.ToString() + "\t" + c.ToString();
        }
    }

    class Def
    {
        public ushort type;	// if DEF_SAVEGLOBGAL bit is set
        // the variable needs to be saved in savegames

        public ushort ofs;
        public int s_name;

        public string name;
    }

    class Function
    {
        public int first_statement;    // negative numbers are builtins

        public int parm_start;
        public int locals;         // total ints of parms + locals

        public int profile;        // runtime

        public int s_name;
        public int s_file;         // source file defined in

        public int numparms;
        public byte[] parm_size = new byte[8];

        public string name;
        public string file;
    }

    class Opcode
    {
        public string name;
        public string opname;
        public int priority;
        public bool right_associative;
        public Types type_a;
        public Types type_b;
        public Types type_c;

        public Opcode(string _name, string _opname, int _priority, bool _right_associative, Types _type_a, Types _type_b, Types _type_c)
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

    partial class DeQCC
    {
        const int OFS_NULL = 0;
        const int OFS_RETURN = 1;
        const int OFS_PARM0 = 4;    // leave 3 ofs for each parm to hold vectors
        const int OFS_PARM1 = 7;
        const int OFS_PARM2 = 10;
        const int OFS_PARM3 = 13;
        const int OFS_PARM4 = 16;
        const int OFS_PARM5 = 19;
        const int OFS_PARM6 = 22;
        const int OFS_PARM7 = 25;
        const int RESERVED_OFS = 28;

        List<Opcode> pr_opcodes = new List<Opcode>();

        List<float> pr_globals = new List<float>();

        List<string> strings = new List<string>();
        public Dictionary<int, int> stringOffsetMap = new Dictionary<int, int>();    // helper map to get from QC string offset to string index in "strings" List

        List<Statement> statements = new List<Statement>();
        List<Function> functions = new List<Function>();
        List<Def> globals = new List<Def>();
        Dictionary<int, int> globalsOffsetMap = new Dictionary<int, int>();  // to look up global by offset
        List<Def> fields = new List<Def>();
        Dictionary<int, int> fieldsOffsetMap = new Dictionary<int, int>();  // to look up field by offset

        StreamWriter qcOutputFile;
        StreamWriter progsSrcOutputFile;
        StreamWriter metaOutputFile;
        List<string> DecompileFilesSeen = new List<string>();
        Dictionary<int,string> DecompileProfiles = new Dictionary<int, string>();

        List<string> type_names = new List<string>();
        List<string> builtins = new List<string>();
        Dictionary<int, string> immediates = new Dictionary<int, string>();   // used in DecompileImmediate()

        // Maps for obfuscated progs.dat files
        Dictionary<string, string> nameMap = new Dictionary<string, string>();  // map autogen name to actual name
        Dictionary<string, string> fileMap = new Dictionary<string, string>();  // map function name to filename

        void InitStaticData(string progsName)
        {
            if(progsName == "obots102progs.dat")
            {
                InitObotMaps();
            }

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

            pr_opcodes.Add(new Opcode("<DONE>", "DONE", -1, false, Types.ev_entity, Types.ev_field, Types.ev_void));
            pr_opcodes.Add(new Opcode("*", "MUL_F", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("*", "MUL_V", 2, false, Types.ev_vector, Types.ev_vector, Types.ev_float));
            pr_opcodes.Add(new Opcode("*", "MUL_FV", 2, false, Types.ev_float, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("*", "MUL_VF", 2, false, Types.ev_vector, Types.ev_float, Types.ev_vector));
            pr_opcodes.Add(new Opcode("/", "DIV", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("+", "ADD_F", 3, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("+", "ADD_V", 3, false, Types.ev_vector, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("-", "SUB_F", 3, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("-", "SUB_V", 3, false, Types.ev_vector, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("==", "EQ_F", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_V", 4, false, Types.ev_vector, Types.ev_vector, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_S", 4, false, Types.ev_string, Types.ev_string, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_E", 4, false, Types.ev_entity, Types.ev_entity, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_FNC", 4, false, Types.ev_function, Types.ev_function, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_F", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_V", 4, false, Types.ev_vector, Types.ev_vector, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_S", 4, false, Types.ev_string, Types.ev_string, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_E", 4, false, Types.ev_entity, Types.ev_entity, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_FNC", 4, false, Types.ev_function, Types.ev_function, Types.ev_float));
            pr_opcodes.Add(new Opcode("<=", "LE", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode(">=", "GE", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("<", "LT", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode(">", "GT", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_float));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_vector));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_string));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_entity));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_field));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_function));
            pr_opcodes.Add(new Opcode(".", "ADDRESS", 1, false, Types.ev_entity, Types.ev_field, Types.ev_pointer));
            pr_opcodes.Add(new Opcode("=", "STORE_F", 5, true, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("=", "STORE_V", 5, true, Types.ev_vector, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("=", "STORE_S", 5, true, Types.ev_string, Types.ev_string, Types.ev_string));
            pr_opcodes.Add(new Opcode("=", "STORE_ENT", 5, true, Types.ev_entity, Types.ev_entity, Types.ev_entity));
            pr_opcodes.Add(new Opcode("=", "STORE_FLD", 5, true, Types.ev_field, Types.ev_field, Types.ev_field));
            pr_opcodes.Add(new Opcode("=", "STORE_FNC", 5, true, Types.ev_function, Types.ev_function, Types.ev_function));
            pr_opcodes.Add(new Opcode("=", "STOREP_F", 5, true, Types.ev_pointer, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("=", "STOREP_V", 5, true, Types.ev_pointer, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("=", "STOREP_S", 5, true, Types.ev_pointer, Types.ev_string, Types.ev_string));
            pr_opcodes.Add(new Opcode("=", "STOREP_ENT", 5, true, Types.ev_pointer, Types.ev_entity, Types.ev_entity));
            pr_opcodes.Add(new Opcode("=", "STOREP_FLD", 5, true, Types.ev_pointer, Types.ev_field, Types.ev_field));
            pr_opcodes.Add(new Opcode("=", "STOREP_FNC", 5, true, Types.ev_pointer, Types.ev_function, Types.ev_function));
            pr_opcodes.Add(new Opcode("<RETURN>", "RETURN", -1, false, Types.ev_void, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("!", "NOT_F", -1, false, Types.ev_float, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_V", -1, false, Types.ev_vector, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_S", -1, false, Types.ev_vector, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_ENT", -1, false, Types.ev_entity, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_FNC", -1, false, Types.ev_function, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("<IF>", "IF", -1, false, Types.ev_float, Types.ev_float, Types.ev_void));
            pr_opcodes.Add(new Opcode("<IFNOT>", "IFNOT", -1, false, Types.ev_float, Types.ev_float, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL0>", "CALL0", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL1>", "CALL1", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL2>", "CALL2", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL3>", "CALL3", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL4>", "CALL4", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL5>", "CALL5", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL6>", "CALL6", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL7>", "CALL7", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL8>", "CALL8", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<STATE>", "STATE", -1, false, Types.ev_float, Types.ev_float, Types.ev_void));
            pr_opcodes.Add(new Opcode("<GOTO>", "GOTO", -1, false, Types.ev_float, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("&&", "AND", 6, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("||", "OR", 6, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("&", "BITAND", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("|", "BITOR", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
        }

        public void DecompileProgsDat(string name, string outputfolder)
        {
            InitStaticData(name);
            ReadData(name);
            Decompile(outputfolder);
        }

        void ReadData(string srcfile)
        {
            BinaryReader h = new BinaryReader(File.Open(srcfile, FileMode.Open), Encoding.ASCII);
            int version = h.ReadInt32();
            int crc = h.ReadInt32();
            int ofs_statements = h.ReadInt32();
            int numstatements = h.ReadInt32();
            int ofs_globaldefs = h.ReadInt32();
            int numglobaldefs = h.ReadInt32();
            int ofs_fielddefs = h.ReadInt32();
            int numfielddefs = h.ReadInt32();
            int ofs_functions = h.ReadInt32();
            int numfunctions = h.ReadInt32();
            int ofs_strings = h.ReadInt32();
            int numstrings = h.ReadInt32();
            int ofs_globals = h.ReadInt32();
            int numglobals = h.ReadInt32();
            int entityfields = h.ReadInt32();

            // strings are now referenced by strings[stringIndexMap[offset]]
            h.BaseStream.Seek(ofs_strings, SeekOrigin.Begin);
            StringBuilder sb = new StringBuilder();
            stringOffsetMap.Add(0, 0); // offset 0 is string 0
            for (int i = 0; i < numstrings; i++)  // actually numchars not numstrings
            {
                char nextChar = h.ReadChar();
                if (nextChar == '\0')
                {
                    strings.Add(sb.ToString());
                    if (i < numstrings - 1)   // still have more chars to process
                    {
                        sb = new StringBuilder();
                        stringOffsetMap.Add(i + 1, strings.Count);    // next string offset (i+1) will be string Count in List
                    }
                }
                else
                {
                    sb.Append(nextChar);
                }
            }

            h.BaseStream.Seek(ofs_statements, SeekOrigin.Begin);
            for (int i = 0; i < numstatements; i++)
            {
                Statement s = new Statement();
                s.op = h.ReadUInt16();
                s.a = h.ReadInt16();
                s.b = h.ReadInt16();
                s.c = h.ReadInt16();
                statements.Add(s);
            }

            h.BaseStream.Seek(ofs_functions, SeekOrigin.Begin);
            for (int i = 0; i < numfunctions; i++)
            {
                Function f = new Function();
                f.first_statement = h.ReadInt32();
                f.parm_start = h.ReadInt32();
                f.locals = h.ReadInt32();
                f.profile = h.ReadInt32();
                f.s_name = h.ReadInt32();
                f.s_file = h.ReadInt32();
                f.numparms = h.ReadInt32();
                for (int j = 0; j < 8; j++)
                    f.parm_size[j] = h.ReadByte();

                // set strings
                if (f.s_name > 0) { f.name = strings[stringOffsetMap[f.s_name]]; }
                else { f.name = "func" + i.ToString("D6"); }
                if (nameMap.ContainsKey(f.name)) { f.name = nameMap[f.name]; }

                if (f.s_file > 0) { f.file = strings[stringOffsetMap[f.s_file]]; }
                else if (fileMap.ContainsKey(f.name)) { f.file = fileMap[f.name]; }
                else { f.file = "unknown.qc"; }

                functions.Add(f);
            }

            h.BaseStream.Seek(ofs_fielddefs, SeekOrigin.Begin);
            for (int i = 0; i < numfielddefs; i++)
            {
                Def f = new Def();
                f.type = h.ReadUInt16();
                f.ofs = h.ReadUInt16();
                f.s_name = h.ReadInt32();

                // set strings
                if (f.s_name > 0) { f.name = strings[stringOffsetMap[f.s_name]]; }
                else { f.name = "field" + i.ToString("D6"); }
                if (nameMap.ContainsKey(f.name)) { f.name = nameMap[f.name]; }

                fields.Add(f);
                if (i > 0)  // don't add the null field
                {
                    if (!fieldsOffsetMap.ContainsKey(f.ofs))   // for vectors, var and var_x are separate globals with same offset
                    {
                        fieldsOffsetMap.Add(f.ofs, i);
                    }
                }
            }

            h.BaseStream.Seek(ofs_globals, SeekOrigin.Begin);
            for (int i = 0; i < numglobals; i++)
            {
                pr_globals.Add(h.ReadSingle());     // Read these as floats for now, will need to bitconvert some to ints later
            }

            h.BaseStream.Seek(ofs_globaldefs, SeekOrigin.Begin);
            for (int i = 0; i < numglobaldefs; i++)
            {
                Def g = new Def();
                g.type = h.ReadUInt16();
                g.ofs = h.ReadUInt16();
                g.s_name = h.ReadInt32();

                // set strings
                if (g.s_name > 0)
                {
                    g.name = strings[stringOffsetMap[g.s_name]];
                }
                else
                {
                    // if function, link through to the underlying function name
                    if (g.type == ((ushort)(Types.ev_function)))
                    {
                        int funcIndex = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[g.ofs]));
                        g.name = functions[funcIndex].name;
                    }
                    else if (g.type == ((ushort)(Types.ev_field)))
                    {
                        int fieldOffset = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[g.ofs]));
                        g.name = fields[fieldsOffsetMap[fieldOffset]].name;
                    }
                    else
                    {
                        g.name = "globaldef" + i.ToString("D6");
                    }
                }

                if (nameMap.ContainsKey(g.name))
                {
                    g.name = nameMap[g.name];
                }

                globals.Add(g);
                if (i > 0)  // don't add the null globaldef
                {
                    if (!globalsOffsetMap.ContainsKey(g.ofs))   // for vectors, var and var_x are separate globals with same offset
                    {
                        globalsOffsetMap.Add(g.ofs, i);
                    }
                }
            }
        }

        void WriteProgsData(string folder)
        {
            int i;
            StreamWriter outfile;

            outfile = new StreamWriter(folder + "_strings.csv", false);
            outfile.WriteLine("row,offset,id,string");
            i = 0;
            foreach(KeyValuePair<int,int> kvp in stringOffsetMap)
            {
                outfile.WriteLine((i++) + "," + kvp.Key + "," + kvp.Value + "," + CleanseString(strings[kvp.Value]));
            }
            outfile.Close();

            outfile = new StreamWriter(folder + "_statements.csv", false);
            outfile.WriteLine("row,opcode,op,a,b,c");
            i = 0;
            foreach (Statement s in statements)
            {
                outfile.WriteLine((i++) + "," + s.Opcode + "," + s.op + "," + s.a + "," + s.b + "," + s.c);
            }
            outfile.Close();

            outfile = new StreamWriter(folder + "_functions.csv", false);
            outfile.WriteLine("row,file,s_file,name,s_name,profile,first_statement,locals,numparms,parm_start,parm_size");
            i = 0;
            foreach (Function f in functions)
            {
                string parm_sizes = "";
                for(int j = 0; j < 8; j++)
                {
                    parm_sizes += f.parm_size[j];
                }
                outfile.WriteLine((i++) + "," + f.file + "," + f.s_file + "," + f.name + "," + f.s_name + "," + f.profile + "," + f.first_statement + "," + f.locals + "," + f.numparms + "," + f.parm_start + "," + parm_sizes);
            }
            outfile.Close();

            outfile = new StreamWriter(folder + "_globaldefs.csv", false);
            outfile.WriteLine("row,name,s_name,ofs,type,typename");
            i = 0;
            foreach (Def g in globals)
            {
                string typename = "";
                if (g.type < 8) { typename = type_names[g.type]; }
                outfile.WriteLine((i++) + "," + g.name + "," + g.s_name + "," + g.ofs + "," + g.type + "," + typename);
            }
            outfile.Close();

            outfile = new StreamWriter(folder + "_fields.csv", false);
            outfile.WriteLine("row,name,s_name,ofs,type,typename");
            i = 0;
            foreach (Def g in fields)
            {
                string typename = "";
                if (g.type < 8) { typename = type_names[g.type]; }
                outfile.WriteLine((i++) + "," + g.name + "," + g.s_name + "," + g.ofs + "," + g.type + "," + typename);
            }
            outfile.Close();

            outfile = new StreamWriter(folder + "_globals.csv", false);
            outfile.WriteLine("row,floatVal,intVal");
            i = 0;
            foreach (float f in pr_globals)
            {
                outfile.WriteLine((i++) + "," + f + "," + BitConverter.ToInt32(BitConverter.GetBytes(f)) + "," + BitConverter.ToString(BitConverter.GetBytes(f)));
            }
            outfile.Close();
        }

        // works with obots
        void CalcProfiles()
        {
            Function df;
            Statement ds, rds;
            Def par;
            ushort dom;
            string fname;
            string line;

            for (int i = 1; i < functions.Count; i++)
            {
                df = functions[i];
                fname = "";
                line = "";

                if (df.first_statement <= 0)    // this is a builtin function
                {
                    fname = builtins[-df.first_statement] + " " + functions[i].name;    // TODO can save builtin names when loading functions from file as we already know what they are
                }
                else
                {
                    int statementIndex = df.first_statement;
                    ds = statements[statementIndex];
                    rds = null;

                    // find a return statement, to determine the result type 
                    while (true)
                    {
                        dom = (ushort)((ds.op) % 100);
                        if (dom == 0)
                            break;
                        if (dom == (ushort)Opcodes.OP_RETURN)
                        {
                            rds = ds;
                        }
                        statementIndex++;
                        ds = statements[statementIndex];
                    }

                    // print the return type  
                    if ((rds != null) && (rds.a != 0))
                    {
                        par = GetGlobalByOffset(rds.a);

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

                    // determine overall parameter size 
                    int ps = 0;
                    for (int j = 0; j < df.numparms; j++)
                        ps += df.parm_size[j];

                    if (ps > 0)
                    {
                        for (int j = df.parm_start; j < (df.parm_start) + ps; j++)
                        {
                            line = "";
                            par = GetGlobalByOffset(j);

                            if (par is null)
                                throw new Exception("Error - No parameter names with offset " + j + ".");

                            if (par.type == (ushort)Types.ev_vector)
                                j += 2;

                            if (j < (df.parm_start) + ps - 1)
                            {
                                line = PrintParameter(par) + ", ";
                            }
                            else
                            {
                                line = PrintParameter(par);
                            }
                            fname += line;
                        }
                    }
                    fname += ") ";
                    line = "";
                    line = functions[i].name;
                    fname += line;
                }

                DecompileProfiles[i] = fname;
            }
        }

        string PrintParameter(Def def)
        {
            string line;

            if (def.name == "IMMEDIATE")    // TODO new way of detecting immediates
            {
                line = ValueString((Types)def.type, def.ofs);
            }
            else
            {
                line = type_names[def.type] + " " + def.name;
            }

            return line;
        }

        string ValueString(Types type, ushort pr_globals_offset)
        {
            string line;

            switch (type)
            {
                case Types.ev_string:
                    int intVal = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[pr_globals_offset]));
                    line = CleanseString(strings[stringOffsetMap[intVal]]);
                    break;
                case Types.ev_void:
                    line = "void";
                    break;
                case Types.ev_float:
                    line = (pr_globals[pr_globals_offset]).ToString("F3");
                    break;
                case Types.ev_vector:
                    line = "'" + (pr_globals[pr_globals_offset]).ToString("F3") + " " + (pr_globals[pr_globals_offset + 1]).ToString("F3") + " " + (pr_globals[pr_globals_offset + 2]).ToString("F3") + "'";
                    break;
                default:
                    line = "bad type " + type;
                    break;
            }

            return line;
        }

        string CleanseString(string stringToDecompile)
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

        Def? GetGlobalByOffset(int ofs)
        {
            if (globalsOffsetMap.ContainsKey(ofs))
            {
                return globals[globalsOffsetMap[ofs]];
            }
            return null;
        }

        bool AlreadySeen(string fname)
        {
            if(DecompileFilesSeen.Contains(fname))
            {
                return true;
            }
            DecompileFilesSeen.Add(fname);
            return false;
        }

        void Decompile(string folder)
        {
            int i;
            StreamWriter f;
            string filename;

            WriteProgsData(folder);

            CalcProfiles();

            // for printing local variable names, etc
            metaOutputFile = new StreamWriter(folder + "meta.txt", false);
            metaOutputFile.AutoFlush = true;

            progsSrcOutputFile = new StreamWriter(folder + "progs.src", false);     // overwrite
            progsSrcOutputFile.AutoFlush = true;
            progsSrcOutputFile.WriteLine("./progs.dat");
            progsSrcOutputFile.WriteLine();

            for (i = 1; i < functions.Count; i++)
            {
                filename = functions[i].file;

                if (AlreadySeen(filename) == false)
                {
                    progsSrcOutputFile.WriteLine(filename);
                    f = new StreamWriter(folder + filename, false);    // overwrite
                } else
                {
                    f = new StreamWriter(folder + filename, true);     // append
                }

                qcOutputFile = f;
                qcOutputFile.AutoFlush = true;
                
                metaOutputFile.WriteLine(functions[i].name);
                DecompileFunctionDef(i);  // TODO
                metaOutputFile.WriteLine();

                f.Close();
            }

            progsSrcOutputFile.Close();
        }

        void DecompileFunctionDef(int funcIndex)
        {
            int findex, paramSize=0;
            int dsIndex, tsIndex;   // NG
            Statement ds, ts;
            Function df;
            Def par;
            string arg2;
            ushort dom, tom;

            int start, end;
            Function dfpred;
            Def ef;

            string line;

            int kIndex;
            Statement k;
            int dum;

            df = functions[funcIndex];
            findex = funcIndex;

            // Capture any information (function defs, globals etc) between the previous function and this one
            dfpred = functions[findex - 1];

            for (int i = 0; i < dfpred.numparms; i++)
            {
                paramSize += dfpred.parm_size[i];
            }

            start = dfpred.parm_start + dfpred.locals + paramSize;

            if (dfpred.first_statement < 0 && df.first_statement > 0)
            {
                start -= 1;
            }

            if (start == 0)
            {
                start = 1;
            }

            end = df.parm_start;

            for (int i = start; i < end; i++)
            {
                par = GetGlobalByOffset(i);

                if (par != null)
                {
                    if ((par.type & (1 << 15)) != 0)
                    {
                        par.type -= (1 << 15);
                    }

                    if (par.type == (ushort)Types.ev_function)
                    {
                        if (par.name != "IMMEDIATE")
                        {
                            if (par.name != df.name)   // if it's not this function, write the profile
                            {
                                int intVal = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[par.ofs]));
                                string profile = DecompileProfiles[intVal];
                                // string profile = DecompileProfiles[GetFunctionIdxByName(par.name)];
                                if(profile.StartsWith("\n"))
                                {
                                    qcOutputFile.WriteLine();
                                    profile = profile.Remove(0, 1); // remove the \n
                                }
                                qcOutputFile.WriteLine(profile + ";");
                                qcOutputFile.Flush();
                            }
                        }
                    }
                    else if (par.type != (ushort)Types.ev_pointer)
                    {
                        if (par.name != "IMMEDIATE")    // TODO
                        {
                            if (par.type == (ushort)Types.ev_field)
                            {
                                int intVal = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[par.ofs]));
                                ef = fields[fieldsOffsetMap[intVal]];

                                if (ef.type == (ushort)Types.ev_vector)
                                {
                                    i += 3;
                                }

                                qcOutputFile.WriteLine("." + type_names[ef.type] + " " + ef.name + ";");
                            }
                            else
                            {
                                if (par.type == (ushort)Types.ev_vector)
                                {
                                    i += 2;
                                }

                                if (par.type == (ushort)Types.ev_entity || par.type == (ushort)Types.ev_void)
                                {
                                    qcOutputFile.WriteLine(type_names[par.type] + " " + par.name + ";");
                                }
                                else
                                {
                                    line = ValueString((Types)par.type, par.ofs);

                                    if ((par.name.Length > 1) &&
                                        Char.IsUpper((par.name)[0]) &&
                                        (Char.IsUpper((par.name)[1]) || (par.name)[1] == '_'))  // TODO
                                    {
                                        qcOutputFile.WriteLine(type_names[par.type] + " " + par.name + " = " + line + ";");
                                    }
                                    else
                                    {
                                        qcOutputFile.WriteLine(type_names[par.type] + " " + par.name + " /* = " + line + " */;");
                                    }
                                }
                            }
                        }
                    }
                }
            }

            // if it's a builtin function, write it out
            if (df.first_statement <= 0)
            {
                qcOutputFile.WriteLine(DecompileProfiles[findex] + " = #" + (-df.first_statement) + ";");
                return;
            }

            // Calculate indentation
            dsIndex = df.first_statement;
            ds = statements[dsIndex];
            while (true)
            {
                dom = (ushort)((ds.op) % 100);

                if (dom == 0) { break; }

                else if (dom == (ushort)Opcodes.OP_GOTO)
                {
                    // check for i-t-e 
                    if (ds.a > 0)
                    {
                        tsIndex = dsIndex + ds.a;
                        ts = statements[tsIndex];
                        ts.op += 100;
                        // mark the end of a if/ite construct 
                    }
                }
                else if (dom == (ushort)Opcodes.OP_IFNOT)
                {
                    // check for pure if 
                    tsIndex = dsIndex + ds.b;
                    ts = statements[tsIndex];
                    tom = (ushort)(statements[tsIndex - 1].op % 100);

                    if (tom != (ushort)Opcodes.OP_GOTO)
                    {
                        ts.op += 100;
						// mark the end of a if/ite construct 
                    }
                    else if (statements[tsIndex - 1].a < 0)
                    {
                        if ((statements[tsIndex - 1].a + ds.b) > 1)
                        {
                            // pure if  
                            ts.op += 100;
							// mark the end of a if/ite construct 
                        }
                        else
                        {
                            dum = 1;
                            for (kIndex = (tsIndex - 1) + (statements[tsIndex - 1].a); kIndex < dsIndex; kIndex++)
                            {
                                k = statements[kIndex];
                                tom = (ushort)(k.op % 100);
                                if (tom == (ushort)Opcodes.OP_GOTO || tom == (ushort)Opcodes.OP_IF || tom == (ushort)Opcodes.OP_IFNOT)
                                    dum = 0;
                            }
                            if (dum == 0)
                            {
                                // pure if  
                                ts.op += 100;
								// mark the end of a if/ite construct 
                            }
                        }
                    }
                }
                else if (dom == (ushort)Opcodes.OP_IF)
                {
                    tsIndex = dsIndex + ds.b;
                    ts = statements[tsIndex];
                    ts.op += 10000;
					// mark the start of a do construct 
                }
                dsIndex++;
                ds = statements[dsIndex];
            }

            // NG ->
            // write out the bytecode for the function
            int ip = df.first_statement;    // instruction pointer
            if (ip >= 0)
            {
                qcOutputFile.WriteLine();
                qcOutputFile.WriteLine("// function " + df.name);
                qcOutputFile.WriteLine("// function number " + funcIndex + " begins at statement " + df.first_statement);
                qcOutputFile.WriteLine("/*");
                // print the bytecode as a comment
                while (statements[ip].Opcode != Opcodes.OP_DONE)
                {
                    qcOutputFile.WriteLine(" * " + statements[ip].ToString());
                    ip++;
                }
                qcOutputFile.WriteLine(" * " + statements[ip].ToString()); // final DONE
                qcOutputFile.WriteLine(" */");
            }
            // <- NG

            // print the prototype 
            qcOutputFile.Write(DecompileProfiles[findex]);

            // handle state functions e.g. animation frames for monsters
            dsIndex = df.first_statement;
            ds = statements[dsIndex];

            if (ds.op == (ushort)Opcodes.OP_STATE)
            {
                par = GetGlobalByOffset(ds.a);
                if (par is null) { throw new Exception("Error - Can't determine frame number."); }

                arg2 = Get(df, ds.b, null);
                if (arg2 is null) { throw new Exception("Error - No state parameter with offset " + ds.b + "."); }

                qcOutputFile.Write(" = [ " + ValueString((Types)par.type, par.ofs) + ", " + arg2 + " ]");
            }
            else
            {
                qcOutputFile.Write(" =");
            }
            qcOutputFile.WriteLine(" {");
            qcOutputFile.WriteLine();

            // calculate the parameter size 
            paramSize = 0;
            for (int i = 0; i < df.numparms; i++)
            {
                paramSize += df.parm_size[i];
            }

			// print the locals 
            if (df.locals > 0)
            {
                if ((df.parm_start) + df.locals - 1 >= (df.parm_start) + paramSize)
                {
                    for (funcIndex = df.parm_start + paramSize; funcIndex < (df.parm_start) + df.locals; funcIndex++)
                    {
                        par = GetGlobalByOffset(funcIndex);

                        if (par is null)
                        {
                            qcOutputFile.WriteLine("   /* Warning: No local name with offset " + funcIndex + " */");
                        }
                        else
                        {
                            if (par.type == (ushort)Types.ev_function)
                            {
                                qcOutputFile.WriteLine("   /* Warning: Fields and functions must be global */");
                            }
                            else
                            {
                                qcOutputFile.WriteLine("   local " + PrintParameter(par) + ";");
                                metaOutputFile.WriteLine(PrintParameter(par));
                            }

                            if (par.type == (ushort)Types.ev_vector)
                            {
                                funcIndex += 2;
                            }
                        }
                    }
                    qcOutputFile.WriteLine();
                }
            }

            // decompile the statements
            DecompileFunctionStatements(df);

            qcOutputFile.WriteLine();
            qcOutputFile.WriteLine("};");
        }

        string? Get(Function df, int ofs, Types? req_t)
        {
            string arg1 = GlobalVal(ofs, req_t);
            if (arg1 == null)
            {
                arg1 = Immediate(df, ofs, 2, null);
            }
            return arg1;
        }

        string? GlobalVal(int ofs, Types? req_t)
        {
            Def? def = null;
            string line = "";

            def = GetGlobalByOffset(ofs);

            if (def != null)
            {
                if (def.name == "IMMEDIATE")    // TODO
                {
                    line = ValueString((Types)def.type, def.ofs);
                }
                else
                {
                        line = def.name;
                        if (def.type == ((ushort)(Types.ev_vector)) && req_t == Types.ev_float)
                        {
                            line += "_x";
                        }
//                    }
                }
                return line;
            }
            return null;
        }

        string? Immediate(Function df, int ofs, int fun, string newStr)
        {
            int nofs;
	
            if (fun == 0)
            {
                // free 'em all
                immediates.Clear();
                return null;
            }

            nofs = ScaleIndex(df, ofs);
            if (nofs <= 0) throw new Exception("Fatal Error - Index (" + nofs + ") out of bounds.");

            if (fun == 1)
            {
                // insert
                immediates[nofs] = newStr;
            }

            if (fun == 2)
            {
                // get
                if(immediates.ContainsKey(nofs))
                {
                    return immediates[nofs];
                }
                else
                {
                    throw new Exception("Error - " + nofs + " not defined.");
                }
            }
            return null;
         }

        int ScaleIndex(Function df, int ofs)
        {
            int nofs = 0;

            if (ofs > RESERVED_OFS)
                nofs = ofs - df.parm_start + RESERVED_OFS;
            else
                nofs = ofs;

            return nofs;
        }

        void DecompileFunctionStatements(Function df)
        {
            // Initialize 
            Immediate(df, 0, 0, null);

            int indent = 1;

            int dsIndex = df.first_statement;
            while (true)
            {
                DecompileStatement(df, dsIndex, ref indent);
                if (statements[dsIndex].op == 0)
                    break;
                dsIndex++;
            }

            if (indent != 1)
                qcOutputFile.WriteLine("/* Warning : Indentiation structure corrupt */");

        }

        void Indent(int c)
        {
            if (c < 0)
                c = 0;

            for (int i = 0; i < c; i++)
            {
                qcOutputFile.Write("   ");
            }
        }

        void DecompileStatement(Function df, int sIndex, ref int indent)
        {
            Statement s = statements[sIndex];
            Statement t;
            ushort tom;
            Types? typ1, typ2, typ3;

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
                qcOutputFile.WriteLine();
                Indent(indent);
                qcOutputFile.WriteLine("}");
            }
            for (int i = 0; i < doc; i++)
            {
                Indent(indent);
                qcOutputFile.WriteLine("do {");
                qcOutputFile.WriteLine();
                indent++;
            }

            // remove all program flow information 
            s.op %= 100;

            typ1 = pr_opcodes[s.op].type_a;
            typ2 = pr_opcodes[s.op].type_b;
            typ3 = pr_opcodes[s.op].type_c;

            // states are handled at top level 
            if (s.op == (ushort)Opcodes.OP_DONE || s.op == (ushort)Opcodes.OP_STATE)
            {
            }
            else if (s.op == (ushort)Opcodes.OP_RETURN)
            {
                Indent(indent);
                qcOutputFile.Write("return ");

                if (s.a != 0)
                {
                    arg1 = Get(df, s.a, typ1);
                    qcOutputFile.Write("( " + arg1 + " )");
                }
                qcOutputFile.WriteLine(";");
            }
            else if (((ushort)Opcodes.OP_MUL_F <= s.op && s.op <= (ushort)Opcodes.OP_SUB_V) ||
              ((ushort)Opcodes.OP_EQ_F <= s.op && s.op <= (ushort)Opcodes.OP_GT) ||
              ((ushort)Opcodes.OP_AND <= s.op && s.op <= (ushort)Opcodes.OP_BITOR))
            {
                arg1 = Get(df, s.a, typ1);
                arg2 = Get(df, s.b, typ2);
                arg3 = GlobalVal(s.c, typ3);

                if (arg3 != null)
                {
                    Indent(indent);
                    qcOutputFile.WriteLine(arg3 + " = " + arg1 + " " + pr_opcodes[s.op].name + " " + arg2 + ";");
                }
                else
                {
                    line = "(" + arg1 + " " + pr_opcodes[s.op].name + " " + arg2 + ")";
                    Immediate(df, s.c, 1, line);
                }
            }
            else if ((ushort)Opcodes.OP_LOAD_F <= s.op && s.op <= (ushort)Opcodes.OP_ADDRESS)
            {
                arg1 = Get(df, s.a, typ1);
                arg2 = Get(df, s.b, typ2);
                arg3 = GlobalVal(s.c, typ3);

                if (arg3 != null)
                {
                    Indent(indent);
                    qcOutputFile.WriteLine(arg3 + " = " + arg1 + "." + arg2 + ";");
                }
                else
                {
                    line = arg1 + "." + arg2;
                    Immediate(df, s.c, 1, line);
                }
            }
            else if ((ushort)Opcodes.OP_STORE_F <= s.op && s.op <= (ushort)Opcodes.OP_STORE_FNC)
            {
                arg1 = Get(df, s.a, typ1);
                arg3 = GlobalVal(s.b, typ2);

                if (arg3 != null)
                {
                    Indent(indent);
                    qcOutputFile.WriteLine(arg3 + " = " + arg1 + ";");
                }
                else
                {
                    line = arg1;
                    Immediate(df, s.b, 1, line);
                }
            }
            else if ((ushort)Opcodes.OP_STOREP_F <= s.op && s.op <= (ushort)Opcodes.OP_STOREP_FNC)
            {
                arg1 = Get(df, s.a, typ1);
                arg2 = Get(df, s.b, typ2);

                Indent(indent);
                qcOutputFile.WriteLine(arg2 + " = " + arg1 + ";");
            }
            else if ((ushort)Opcodes.OP_NOT_F <= s.op && s.op <= (ushort)Opcodes.OP_NOT_FNC)
            {
                arg1 = Get(df, s.a, typ1);
                line = "!" + arg1;
                Immediate(df, s.c, 1, line);
            }
            else if ((ushort)Opcodes.OP_CALL0 <= s.op && s.op <= (ushort)Opcodes.OP_CALL8)
            {
                int nargs = s.op - (ushort)Opcodes.OP_CALL0;

                arg1 = Get(df, s.a, null);
                line = arg1 + " (";
                fnam = arg1;

                for (int i = 0; i < nargs; i++)
                {
                    typ1 = null;

                    int j = 4 + 3 * i;

                    arg1 = Get(df, j, typ1);
                    line += arg1;

                    if (i < nargs - 1)
                        line += ",";
                }

                line += ")";
                Immediate(df, 1, 1, line);

                // NG in case this call is at the end of the final function in the file (as in obots102)
                if (sIndex >= statements.Count - 2)
                {
                    Indent(indent);
                    qcOutputFile.WriteLine(line + ";");
                }
                else
                {

                    if (((statements[sIndex + 1].a != 1) && (statements[sIndex + 1].b != 1) &&
                        (statements[sIndex + 2].a != 1) && (statements[sIndex + 2].b != 1)) ||
                        (((statements[sIndex + 1].op) % 100 == (ushort)Opcodes.OP_CALL0) && (((statements[sIndex + 2].a != 1)) || (statements[sIndex + 2].b != 1))))
                    {
                        Indent(indent);
                        qcOutputFile.WriteLine(line + ";");
                    }
                }
            }
            else if (s.op == (ushort)Opcodes.OP_IF || s.op == (ushort)Opcodes.OP_IFNOT)
            {
                arg1 = Get(df, s.a, null);
                arg2 = GlobalVal(s.a, null);

                if (s.op == (ushort)Opcodes.OP_IFNOT)
                {
                    if (s.b < 1)
                        throw new Exception("Found a negative IFNOT jump.");

                    // get instruction right before the target 
                    int tIndex = sIndex + s.b - 1;
                    t = statements[tIndex];
                    tom = (ushort)(t.op % 100);

                    if (tom != (ushort)Opcodes.OP_GOTO)
                    {
                        // pure if 
                        Indent(indent);
                        qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                        qcOutputFile.WriteLine();
                        indent++;
                    }
                    else
                    {
                        if (t.a > 0)
                        {
                            // if-then-else
                            Indent(indent);
                            qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                            qcOutputFile.WriteLine();
                            indent++;
                        }
                        else
                        {
                            if ((t.a + s.b) > 1)
                            {
                                // pure if
                                Indent(indent);
                                qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                                qcOutputFile.WriteLine();
                                indent++;
                            }
                            else
                            {
                                dum = 1;
                                for (int kIndex = tIndex + (t.a); kIndex < sIndex; kIndex++)
                                {
                                    tom = (ushort)(statements[kIndex].op % 100);
                                    if (tom == (ushort)Opcodes.OP_GOTO || tom == (ushort)Opcodes.OP_IF || tom == (ushort)Opcodes.OP_IFNOT)
                                        dum = 0;
                                }
                                if (dum != 0)
                                {
                                    // while
                                    Indent(indent);
                                    qcOutputFile.WriteLine("while ( " + arg1 + " ) {");
                                    qcOutputFile.WriteLine();
                                    indent++;
                                }
                                else
                                {
                                    // pure if
                                    Indent(indent);
                                    qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                                    qcOutputFile.WriteLine();
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
                    qcOutputFile.WriteLine();
                    Indent(indent);
                    qcOutputFile.WriteLine("} while ( " + arg1 + " );");
                }
            }
            else if (s.op == (ushort)Opcodes.OP_GOTO)
            {
                if (s.a > 0)
                {
                    // else 
                    indent--;
                    qcOutputFile.WriteLine();
                    Indent(indent);
                    qcOutputFile.WriteLine("} else {");
                    qcOutputFile.WriteLine();
                    indent++;
                }
                else
                {
                    // while 
                    indent--;
                    qcOutputFile.WriteLine();
                    Indent(indent);
                    qcOutputFile.WriteLine("}");
                }
            }
            else
            {
                qcOutputFile.WriteLine();
                qcOutputFile.WriteLine("/* Warning: UNKNOWN COMMAND */");
            }

            return;
        }
    }
}
