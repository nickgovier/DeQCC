using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc2
{
    // TODO only difference between IMMEDIATE and other variable is it is never written, only read.
    // so without names to identify immediates, give them a random name then post-decompile step to find all names never written?
    class Function
    {
        public int first_statement;    // negative numbers are builtins
        public int parm_start;
        public int locals;             // total ints of parms + locals
        public int profile;            // runtime
        public int s_name;
        public int s_file;             // source file defined in
        public int numparms;
        public List<byte> parm_size = new List<byte>();      // MAX_PARMS = 8

        // NG
        public string name;
        public string file;
    }

    class Def
    {
        public ushort type;     // if DEF_SAVEGLOBAL bit is set the variable needs to be saved in savegames
        public ushort ofs;
        public int s_name;

        // NG
        public string name;
        public Typecode Typecode
        {
            get { return (Typecode)type; }
        }
    }

    class Statement
    {
        public ushort op;
        public short a, b, c;

        // NG
        public Opcode Opcode
        {
            get { return (Opcode)op; }
        }

        public override string ToString()
        {
            return Opcode.ToString() + "\t" + a.ToString() + "\t" + b.ToString() + "\t" + c.ToString();
        }
    }

    class GlobalVars
    {
        public List<int> pad = new List<int>(); //28;
        public int self;
        public int other;
        public int world;
        public float time;
        public float frametime;
        public float force_retouch;
        public int mapname; // string_t is typedef to int
        public float deathmatch;
        public float coop;
        public float teamplay;
        public float serverflags;
        public float total_secrets;
        public float total_monsters;
        public float found_secrets;
        public float killed_monsters;
        public float parm1;
        public float parm2;
        public float parm3;
        public float parm4;
        public float parm5;
        public float parm6;
        public float parm7;
        public float parm8;
        public float parm9;
        public float parm10;
        public float parm11;
        public float parm12;
        public float parm13;
        public float parm14;
        public float parm15;
        public float parm16;
        public List<float> v_forward = new List<float>();   // vec3_t
        public List<float> v_up = new List<float>();   // vec3_t
        public List<float> v_right = new List<float>();   // vec3_t
        public float trace_allsolid;
        public float trace_startsolid;
        public float trace_fraction;
        public List<float> trace_endpos = new List<float>();   // vec3_t
        public List<float> trace_plane_normal = new List<float>();   // vec3_t
        public float trace_plane_dist;
        public int trace_ent;
        public float trace_inopen;
        public float trace_inwater;
        public int msg_entity;
        // Following are the id of these functions in the progs.dat
        public int main; // func_t
        public int StartFrame; // func_t
        public int PlayerPreThink; // func_t
        public int PlayerPostThink; // func_t
        public int ClientKill; // func_t
        public int ClientConnect; // func_t
        public int PutClientInServer; // func_t
        public int ClientDisconnect; // func_t
        public int SetNewParms; // func_t
        public int SetChangeParms; // func_t
    }

    enum Typecode
    {
        EV_VOID,
        EV_STRING,
        EV_FLOAT,
        EV_VECTOR,
        EV_ENTITY,
        EV_FIELD,
        EV_FUNCTION,
        EV_POINTER
    }

    enum Opcode
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

    // pr_comp.h
    class NGProgs
    {
        public int version;
        public int crc;
        public int ofs_statements;
        public int numstatements;  // statement 0 is an error
        public int ofs_globaldefs;
        public int numglobaldefs;
        public int ofs_fielddefs;
        public int numfielddefs;
        public int ofs_functions;
        public int numfunctions;   // function 0 is an empty
        public int ofs_strings;
        public int numstrings; // first string is a null string // this is actually numchars not numstrings
        public int ofs_globals;
        public int numglobals;
        public int entityfields;

        public List<Function> pr_functions = new List<Function>();
        public List<string> pr_strings = new List<string>();
        public List<Def> pr_globaldefs = new List<Def>();
        public List<Def> pr_fielddefs = new List<Def>();
        public List<Statement> pr_statements = new List<Statement>();
        public GlobalVars pr_global_struct = new GlobalVars();
        public List<byte> pr_globals = new List<byte>();

        // NG
        public Dictionary<int, int> stringIndexMap = new Dictionary<int, int>();    // helper map to get from QC string offset to string index in pr_strings List
        public Dictionary<Opcode, Typecode> typeA = new Dictionary<Opcode, Typecode>(); // lookups for the types of each argument
        public Dictionary<Opcode, Typecode> typeB = new Dictionary<Opcode, Typecode>();
        public Dictionary<Opcode, Typecode> typeC = new Dictionary<Opcode, Typecode>();
        public Dictionary<int, string> globalNames = new Dictionary<int, string>();    // to save names of variables that were loaded into globals
        StreamWriter output;
        string scratchpad;  // temporary storage of values while constructing a line of source code

        public void LoadProgs()
        {
            BinaryReader br = new BinaryReader(File.Open("progs.dat", FileMode.Open));
            //br.BaseStream.Seek(offset, SeekOrigin.Begin);
            //byte[] data = br.ReadBytes(length);
            //br.ReadChar();
            //br.ReadInt32();

            version = br.ReadInt32();
            crc = br.ReadInt32();
            ofs_statements = br.ReadInt32();
            numstatements = br.ReadInt32();
            ofs_globaldefs = br.ReadInt32();
            numglobaldefs = br.ReadInt32();
            ofs_fielddefs = br.ReadInt32();
            numfielddefs = br.ReadInt32();
            ofs_functions = br.ReadInt32();
            numfunctions = br.ReadInt32();
            ofs_strings = br.ReadInt32();
            numstrings = br.ReadInt32();
            ofs_globals = br.ReadInt32();
            numglobals = br.ReadInt32();
            entityfields = br.ReadInt32();

            // Load the strings
            br.BaseStream.Seek(ofs_strings, SeekOrigin.Begin);
            StringBuilder sb = new StringBuilder();
            stringIndexMap.Add(0, 0); // offset 0 is string 0
            for (int i = 0; i < numstrings; i++)  // actually numchars not numstrings
            {
                char nextChar = br.ReadChar();
                if (nextChar == '\0')
                {
                    pr_strings.Add(sb.ToString());
                    if (i < numstrings - 1)   // still have more chars to process
                    {
                        sb = new StringBuilder();
                        stringIndexMap.Add(i + 1, pr_strings.Count);    // next string offset (i+1) will be string Count in List
                    }
                }
                else
                {
                    sb.Append(nextChar);
                }
            }

            // Load the statements
            br.BaseStream.Seek(ofs_statements, SeekOrigin.Begin);
            for (int i = 0; i < numstatements; i++)
            {
                Statement s = new Statement();
                s.op = br.ReadUInt16();
                s.a = br.ReadInt16();
                s.b = br.ReadInt16();
                s.c = br.ReadInt16();
                pr_statements.Add(s);
            }

            // Load the functions
            br.BaseStream.Seek(ofs_functions, SeekOrigin.Begin);
            for (int i = 0; i < numfunctions; i++)
            {
                Function f = new Function();
                f.first_statement = br.ReadInt32();
                f.parm_start = br.ReadInt32();
                f.locals = br.ReadInt32();
                f.profile = br.ReadInt32();
                f.s_name = br.ReadInt32();
                f.s_file = br.ReadInt32();
                f.numparms = br.ReadInt32();
                for (int j = 0; j < 8; j++)
                    f.parm_size.Add(br.ReadByte());

                // set strings
                if (f.s_name > 0) { f.name = pr_strings[stringIndexMap[f.s_name]]; }
                else { f.name = "func" + f.first_statement.ToString(); }
                if (f.s_file > 0) { f.file = pr_strings[stringIndexMap[f.s_file]]; }
                else { f.file = "unknown.qc"; }

                pr_functions.Add(f);
            }

            // Load the globaldefs
            br.BaseStream.Seek(ofs_globaldefs, SeekOrigin.Begin);
            for (int i = 0; i < numglobaldefs; i++)
            {
                Def d = new Def();
                d.type = br.ReadUInt16();
                d.ofs = br.ReadUInt16();
                d.s_name = br.ReadInt32();

                // set strings
                if (d.s_name > 0) { d.name = pr_strings[stringIndexMap[d.s_name]]; }
                else { d.name = "globaldef" + d.ofs.ToString(); }

                pr_globaldefs.Add(d);
            }

            // Load the fields
            br.BaseStream.Seek(ofs_fielddefs, SeekOrigin.Begin);
            for (int i = 0; i < numfielddefs; i++)
            {
                Def d = new Def();
                d.type = br.ReadUInt16();
                d.ofs = br.ReadUInt16();
                d.s_name = br.ReadInt32();

                // set strings
                if (d.s_name > 0) { d.name = pr_strings[stringIndexMap[d.s_name]]; }
                else { d.name = "field" + d.ofs.ToString(); }

                pr_fielddefs.Add(d);
            }

            // Load the globalvars
            //GlobalVars globalvars = new GlobalVars();
            br.BaseStream.Seek(ofs_globals, SeekOrigin.Begin);
            for (int i = 0; i < 28; i++)
                pr_global_struct.pad.Add(br.ReadInt32());
            pr_global_struct.self = br.ReadInt32();
            pr_global_struct.other = br.ReadInt32();
            pr_global_struct.world = br.ReadInt32();
            pr_global_struct.time = br.ReadSingle();
            pr_global_struct.frametime = br.ReadSingle();
            pr_global_struct.force_retouch = br.ReadSingle();
            pr_global_struct.mapname = br.ReadInt32();
            pr_global_struct.deathmatch = br.ReadSingle();
            pr_global_struct.coop = br.ReadSingle();
            pr_global_struct.teamplay = br.ReadSingle();
            pr_global_struct.serverflags = br.ReadSingle();
            pr_global_struct.total_secrets = br.ReadSingle();
            pr_global_struct.total_monsters = br.ReadSingle();
            pr_global_struct.found_secrets = br.ReadSingle();
            pr_global_struct.killed_monsters = br.ReadSingle();
            pr_global_struct.parm1 = br.ReadSingle();
            pr_global_struct.parm2 = br.ReadSingle();
            pr_global_struct.parm3 = br.ReadSingle();
            pr_global_struct.parm4 = br.ReadSingle();
            pr_global_struct.parm5 = br.ReadSingle();
            pr_global_struct.parm6 = br.ReadSingle();
            pr_global_struct.parm7 = br.ReadSingle();
            pr_global_struct.parm8 = br.ReadSingle();
            pr_global_struct.parm9 = br.ReadSingle();
            pr_global_struct.parm10 = br.ReadSingle();
            pr_global_struct.parm11 = br.ReadSingle();
            pr_global_struct.parm12 = br.ReadSingle();
            pr_global_struct.parm13 = br.ReadSingle();
            pr_global_struct.parm14 = br.ReadSingle();
            pr_global_struct.parm15 = br.ReadSingle();
            pr_global_struct.parm16 = br.ReadSingle();
            for (int i = 0; i < 3; i++)
                pr_global_struct.v_forward.Add(br.ReadSingle());
            for (int i = 0; i < 3; i++)
                pr_global_struct.v_up.Add(br.ReadSingle());
            for (int i = 0; i < 3; i++)
                pr_global_struct.v_right.Add(br.ReadSingle());
            pr_global_struct.trace_allsolid = br.ReadSingle();
            pr_global_struct.trace_startsolid = br.ReadSingle();
            pr_global_struct.trace_fraction = br.ReadSingle();
            for (int i = 0; i < 3; i++)
                pr_global_struct.trace_endpos.Add(br.ReadSingle());
            for (int i = 0; i < 3; i++)
                pr_global_struct.trace_plane_normal.Add(br.ReadSingle());
            pr_global_struct.trace_plane_dist = br.ReadSingle();
            pr_global_struct.trace_ent = br.ReadInt32(); ;
            pr_global_struct.trace_inopen = br.ReadSingle();
            pr_global_struct.trace_inwater = br.ReadSingle();
            pr_global_struct.msg_entity = br.ReadInt32();
            pr_global_struct.main = br.ReadInt32();
            pr_global_struct.StartFrame = br.ReadInt32();
            pr_global_struct.PlayerPreThink = br.ReadInt32();
            pr_global_struct.PlayerPostThink = br.ReadInt32();
            pr_global_struct.ClientKill = br.ReadInt32();
            pr_global_struct.ClientConnect = br.ReadInt32();
            pr_global_struct.PutClientInServer = br.ReadInt32();
            pr_global_struct.ClientDisconnect = br.ReadInt32();
            pr_global_struct.SetNewParms = br.ReadInt32();
            pr_global_struct.SetChangeParms = br.ReadInt32();

            // Load the globals (aka "immediates", constants)
            br.BaseStream.Seek(ofs_globals, SeekOrigin.Begin);
            for (int i = 0; i < numglobals; i++)
            {
                pr_globals.Add(br.ReadByte());
            }

            #region Store the types of arguments for each opcode
            // derived from https://github.com/id-Software/Quake-Tools/blob/master/qcc/pr_comp.c
            Opcode o;
            /* <DONE> */
            o = Opcode.OP_DONE; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_VOID);
            /* * */
            o = Opcode.OP_MUL_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* * */
            o = Opcode.OP_MUL_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_FLOAT);
            /* * */
            o = Opcode.OP_MUL_FV; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_VECTOR);
            /* * */
            o = Opcode.OP_MUL_VF; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_VECTOR);
            /* / */
            o = Opcode.OP_DIV_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* + */
            o = Opcode.OP_ADD_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* + */
            o = Opcode.OP_ADD_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_VECTOR);
            /* - */
            o = Opcode.OP_SUB_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* - */
            o = Opcode.OP_SUB_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_VECTOR);
            /* == */
            o = Opcode.OP_EQ_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* == */
            o = Opcode.OP_EQ_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_FLOAT);
            /* == */
            o = Opcode.OP_EQ_S; typeA.Add(o, Typecode.EV_STRING); typeB.Add(o, Typecode.EV_STRING); typeC.Add(o, Typecode.EV_FLOAT);
            /* == */
            o = Opcode.OP_EQ_E; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_ENTITY); typeC.Add(o, Typecode.EV_FLOAT);
            /* == */
            o = Opcode.OP_EQ_FNC; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_FUNCTION); typeC.Add(o, Typecode.EV_FLOAT);
            /* != */
            o = Opcode.OP_NE_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* != */
            o = Opcode.OP_NE_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_FLOAT);
            /* != */
            o = Opcode.OP_NE_S; typeA.Add(o, Typecode.EV_STRING); typeB.Add(o, Typecode.EV_STRING); typeC.Add(o, Typecode.EV_FLOAT);
            /* != */
            o = Opcode.OP_NE_E; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_ENTITY); typeC.Add(o, Typecode.EV_FLOAT);
            /* != */
            o = Opcode.OP_NE_FNC; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_FUNCTION); typeC.Add(o, Typecode.EV_FLOAT);
            /* <= */
            o = Opcode.OP_LE; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* >= */
            o = Opcode.OP_GE; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* < */
            o = Opcode.OP_LT; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* > */
            o = Opcode.OP_GT; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* . */
            o = Opcode.OP_LOAD_F; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_FLOAT);    // OP_INDIRECT
            /* . */
            o = Opcode.OP_LOAD_V; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_VECTOR);   // OP_INDIRECT
            /* . */
            o = Opcode.OP_LOAD_S; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_STRING);   // OP_INDIRECT
            /* . */
            o = Opcode.OP_LOAD_ENT; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_ENTITY);   // OP_INDIRECT
            /* . */
            o = Opcode.OP_LOAD_FLD; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_FIELD);    // OP_INDIRECT
            /* . */
            o = Opcode.OP_LOAD_FNC; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_FUNCTION); // OP_INDIRECT
            /* . */
            o = Opcode.OP_ADDRESS; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_POINTER);
            /* = */
            o = Opcode.OP_STORE_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* = */
            o = Opcode.OP_STORE_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_VECTOR);
            /* = */
            o = Opcode.OP_STORE_S; typeA.Add(o, Typecode.EV_STRING); typeB.Add(o, Typecode.EV_STRING); typeC.Add(o, Typecode.EV_STRING);
            /* = */
            o = Opcode.OP_STORE_ENT; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_ENTITY); typeC.Add(o, Typecode.EV_ENTITY);
            /* = */
            o = Opcode.OP_STORE_FLD; typeA.Add(o, Typecode.EV_FIELD); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_FIELD);
            /* = */
            o = Opcode.OP_STORE_FNC; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_FUNCTION); typeC.Add(o, Typecode.EV_FUNCTION);
            /* = */
            o = Opcode.OP_STOREP_F; typeA.Add(o, Typecode.EV_POINTER); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* = */
            o = Opcode.OP_STOREP_V; typeA.Add(o, Typecode.EV_POINTER); typeB.Add(o, Typecode.EV_VECTOR); typeC.Add(o, Typecode.EV_VECTOR);
            /* = */
            o = Opcode.OP_STOREP_S; typeA.Add(o, Typecode.EV_POINTER); typeB.Add(o, Typecode.EV_STRING); typeC.Add(o, Typecode.EV_STRING);
            /* = */
            o = Opcode.OP_STOREP_ENT; typeA.Add(o, Typecode.EV_POINTER); typeB.Add(o, Typecode.EV_ENTITY); typeC.Add(o, Typecode.EV_ENTITY);
            /* = */
            o = Opcode.OP_STOREP_FLD; typeA.Add(o, Typecode.EV_POINTER); typeB.Add(o, Typecode.EV_FIELD); typeC.Add(o, Typecode.EV_FIELD);
            /* = */
            o = Opcode.OP_STOREP_FNC; typeA.Add(o, Typecode.EV_POINTER); typeB.Add(o, Typecode.EV_FUNCTION); typeC.Add(o, Typecode.EV_FUNCTION);
            /* <RETURN> */
            o = Opcode.OP_RETURN; typeA.Add(o, Typecode.EV_VOID); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* ! */
            o = Opcode.OP_NOT_F; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_FLOAT);
            /* ! */
            o = Opcode.OP_NOT_V; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_FLOAT);
            /* ! */
            o = Opcode.OP_NOT_S; typeA.Add(o, Typecode.EV_VECTOR); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_FLOAT);
            /* ! */
            o = Opcode.OP_NOT_ENT; typeA.Add(o, Typecode.EV_ENTITY); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_FLOAT);
            /* ! */
            o = Opcode.OP_NOT_FNC; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_FLOAT);
            /* <IF> */
            o = Opcode.OP_IF; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_VOID);
            /* <IFNOT> */
            o = Opcode.OP_IFNOT; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL0> */
            o = Opcode.OP_CALL0; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL1> */
            o = Opcode.OP_CALL1; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL2> */
            o = Opcode.OP_CALL2; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL3> */
            o = Opcode.OP_CALL3; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL4> */
            o = Opcode.OP_CALL4; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL5> */
            o = Opcode.OP_CALL5; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL6> */
            o = Opcode.OP_CALL6; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL7> */
            o = Opcode.OP_CALL7; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <CALL8> */
            o = Opcode.OP_CALL8; typeA.Add(o, Typecode.EV_FUNCTION); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* <STATE> */
            o = Opcode.OP_STATE; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_VOID);
            /* <GOTO> */
            o = Opcode.OP_GOTO; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_VOID); typeC.Add(o, Typecode.EV_VOID);
            /* && */
            o = Opcode.OP_AND; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* || */
            o = Opcode.OP_OR; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* & */
            o = Opcode.OP_BITAND; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            /* | */
            o = Opcode.OP_BITOR; typeA.Add(o, Typecode.EV_FLOAT); typeB.Add(o, Typecode.EV_FLOAT); typeC.Add(o, Typecode.EV_FLOAT);
            #endregion
        }

        public void DecompileFunction(int function)
        {
            output = new StreamWriter(pr_functions[function].file, true);

            output.WriteLine("// function " + pr_functions[function].name);
            output.WriteLine("/*");
            int ip = pr_functions[function].first_statement;    // instruction pointer
            // print the bytecode as a comment
            while (pr_statements[ip].Opcode != Opcode.OP_DONE)
            {
                output.WriteLine(" * " + pr_statements[ip].ToString());
                ip++;
            }
            output.WriteLine(" * " + pr_statements[ip].ToString()); // final DONE
            output.WriteLine(" */");

            // TODO return type
            // TODO arguments
            output.WriteLine("TODO (TODO) " + pr_functions[function].name + " = {");

            ip = pr_functions[function].first_statement;    // instruction pointer
            while (pr_statements[ip].Opcode != Opcode.OP_DONE)
            {
                DecompileStatement(pr_statements[ip], pr_functions[function]);
                ip++;
            }

            output.WriteLine("};");
            output.WriteLine(); // blank line
            output.Close();
        }

        // Get a name from the globaldefs
        string? GetGlobaldef(int offset)
        {
            foreach (Def d in pr_globaldefs)
            {
                if (d.ofs == offset)
                {
                    return d.name;
                }
            }
            return null;
        }

        string GetGlobal(int parm_offset, int parm_start, Typecode type)
        {
            int offset = parm_offset - parm_start + 28; // 28 reserved offsets (RESERVED_OFS)
            switch (type)
            {
                case Typecode.EV_FLOAT:
                    return ((Single)pr_globals[offset]).ToString("F3");
                case Typecode.EV_VECTOR:
                    return "'" + ((Single)pr_globals[offset]).ToString("F3") + " " + ((Single)pr_globals[offset + 1]).ToString("F3") + " " + ((Single)pr_globals[offset + 2]).ToString("F3") + "'";
            }
            return "";
        }

        public void DecompileStatement(Statement statement, Function function)
        {
            Typecode paramAType = typeA[statement.Opcode];
            Typecode paramBType = typeB[statement.Opcode];
            Typecode paramCType = typeC[statement.Opcode];
            string aVal, bVal, cVal;

            // Process the opcode
            switch (statement.Opcode)
            {
                case Opcode.OP_DONE:    // pr_globals[OFS_RETURN] = pr_globals[st->a]; pr_globals[OFS_RETURN + 1] = pr_globals[st->a + 1];  pr_globals[OFS_RETURN + 2] = pr_globals[st->a + 2]; s = PR_LeaveFunction(); if (pr_depth == exitdepth) { return; }		// all done
                    break;
                case Opcode.OP_MUL_F:   // c->_float = a->_float * b->_float;
                    break;
                case Opcode.OP_MUL_V:   // c->_float = a->vector[0]*b->vector[0] + a->vector[1] * b->vector[1] + a->vector[2] * b->vector[2];
                    break;
                case Opcode.OP_MUL_FV:  // c->vector[0] = a->_float * b->vector[0]; c->vector[1] = a->_float * b->vector[1]; c->vector[2] = a->_float * b->vector[2];
                    break;
                case Opcode.OP_MUL_VF:  // c->vector[0] = b->_float * a->vector[0]; c->vector[1] = b->_float * a->vector[1]; c->vector[2] = b->_float * a->vector[2];
                    break;
                case Opcode.OP_DIV_F:   // c->_float = a->_float / b->_float;
                    break;
                case Opcode.OP_ADD_F:   // c->_float = a->_float + b->_float;
                    break;
                case Opcode.OP_ADD_V:   // c->vector[0] = a->vector[0] + b->vector[0]; c->vector[1] = a->vector[1] + b->vector[1]; c->vector[2] = a->vector[2] + b->vector[2];
                    break;
                case Opcode.OP_SUB_F:   // c->_float = a->_float - b->_float;
                    break;
                case Opcode.OP_SUB_V:   // c->vector[0] = a->vector[0] - b->vector[0]; c->vector[1] = a->vector[1] - b->vector[1]; c->vector[2] = a->vector[2] - b->vector[2];
                    break;
                case Opcode.OP_EQ_F:    // c->_float = a->_float == b->_float;
                    break;
                case Opcode.OP_EQ_V:    // c->_float = (a->vector[0] == b->vector[0]) && (a->vector[1] == b->vector[1]) && (a->vector[2] == b->vector[2]);
                    aVal = GetGlobaldef(statement.a);
                    bVal = GetGlobaldef(statement.b);
                    cVal = GetGlobaldef(statement.c);

                    if (aVal is null) { aVal = globalNames[statement.a]; }
                    // else if(aVal == "IMMEDIATE") { aVal = GetGlobal(statement.a, function.parm_start, paramAType); }
                    else if (aVal == "IMMEDIATE") { aVal += "_" + statement.a.ToString(); }  // simulate random variable name
                    if (bVal is null) { bVal = globalNames[statement.b]; }
                    // else if(bVal == "IMMEDIATE") { bVal = GetGlobal(statement.b, function.parm_start, paramBType); }
                    else if (bVal == "IMMEDIATE") { bVal += "_" + statement.b.ToString(); } // simulate random variable name

                    if (cVal is null)
                    {
                        scratchpad = "(" + aVal + " == " + bVal + ")";
                        globalNames[statement.c] = scratchpad;
                    }
                    else
                    {
                        output.WriteLine(cVal + " = " + aVal + " == " + bVal);
                    }

                    break;
                case Opcode.OP_EQ_S:    // c->_float = !strcmp(pr_strings+a->string,pr_strings+b->string);
                    break;
                case Opcode.OP_EQ_E:    // c->_float = a->_int == b->_int;
                    break;
                case Opcode.OP_EQ_FNC:  // c->_float = a->function == b->function;
                    break;
                case Opcode.OP_NE_F:    // c->_float = a->_float != b->_float;
                    break;
                case Opcode.OP_NE_V:    // c->_float = (a->vector[0] != b->vector[0]) || (a->vector[1] != b->vector[1]) || (a->vector[2] != b->vector[2]);
                    break;
                case Opcode.OP_NE_S:    // c->_float = strcmp(pr_strings+a->string,pr_strings+b->string);
                    break;
                case Opcode.OP_NE_E:    // c->_float = a->_int != b->_int;
                    break;
                case Opcode.OP_NE_FNC:  // c->_float = a->function != b->function;
                    break;
                case Opcode.OP_LE:  // c->_float = a->_float <= b->_float;
                    break;
                case Opcode.OP_GE:  // c->_float = a->_float >= b->_float;
                    break;
                case Opcode.OP_LT:  // c->_float = a->_float < b->_float;
                    break;
                case Opcode.OP_GT:  // c->_float = a->_float > b->_float;
                    break;
                case Opcode.OP_LOAD_F:  // ed = PROG_TO_EDICT(a->edict); a = (eval_t*)((int*)&ed->v + b->_int); c->_int = a->_int;
                    break;
                case Opcode.OP_LOAD_V:  // ed = PROG_TO_EDICT(a->edict); a = (eval_t*)((int*)&ed->v + b->_int); c->vector[0] = a->vector[0]; c->vector[1] = a->vector[1]; c->vector[2] = a->vector[2];
                    // vector c = vector a.b
                    aVal = GetGlobaldef(statement.a);
                    bVal = GetGlobaldef(statement.b);
                    cVal = GetGlobaldef(statement.c);

                    if (cVal is null)
                    {
                        scratchpad = aVal + "." + bVal;
                        globalNames[statement.c] = scratchpad;
                    }
                    else
                    {
                        scratchpad = cVal + " = " + aVal + "." + bVal;
                    }

                    break;
                case Opcode.OP_LOAD_S:  // ed = PROG_TO_EDICT(a->edict); a = (eval_t*)((int*)&ed->v + b->_int); c->_int = a->_int;
                    break;
                case Opcode.OP_LOAD_ENT:  // ed = PROG_TO_EDICT(a->edict); a = (eval_t*)((int*)&ed->v + b->_int); c->_int = a->_int;
                    break;
                case Opcode.OP_LOAD_FLD:  // ed = PROG_TO_EDICT(a->edict); a = (eval_t*)((int*)&ed->v + b->_int); c->_int = a->_int;
                    break;
                case Opcode.OP_LOAD_FNC:  // ed = PROG_TO_EDICT(a->edict); a = (eval_t*)((int*)&ed->v + b->_int); c->_int = a->_int;
                    break;
                case Opcode.OP_ADDRESS: // ed = PROG_TO_EDICT(a->edict); c->_int = (byte*)((int*)&ed->v + b->_int) - (byte*)sv.edicts;
                    break;
                case Opcode.OP_STORE_F:    // b->_int = a->_int;
                case Opcode.OP_STORE_V: // b->vector[0] = a->vector[0]; b->vector[1] = a->vector[1]; b->vector[2] = a->vector[2];
                case Opcode.OP_STORE_S:    // b->_int = a->_int;
                case Opcode.OP_STORE_ENT:    // b->_int = a->_int;
                case Opcode.OP_STORE_FLD:    // b->_int = a->_int;
                case Opcode.OP_STORE_FNC:    // b->_int = a->_int;
                    string value = GetGlobaldef(statement.a);

                    if (statement.b >= 4 && statement.b <= 27)
                    {
                        // this is a parameter to an upcoming function call
                        if (statement.b == 4) scratchpad = "";  // first argument
                        if (scratchpad.Length > 0) scratchpad += ",";   // already exists an argument
                        scratchpad += value;
                    }
                    else
                    {
                        string? variable = GetGlobaldef(statement.b);   // params to functions are 4,7,10 for params 1,2,3 etc
                        output.WriteLine(variable + " = " + value);
                    }
                    break;
                case Opcode.OP_STOREP_F:    // ptr = (eval_t *)((byte *)sv.edicts + b->_int); ptr->_int = a->_int;
                    break;
                case Opcode.OP_STOREP_V:    // ptr = (eval_t *)((byte *)sv.edicts + b->_int); ptr->vector[0] = a->vector[0]; ptr->vector[1] = a->vector[1]; ptr->vector[2] = a->vector[2];
                    break;
                case Opcode.OP_STOREP_S:    // ptr = (eval_t *)((byte *)sv.edicts + b->_int); ptr->_int = a->_int;
                    break;
                case Opcode.OP_STOREP_ENT:    // ptr = (eval_t *)((byte *)sv.edicts + b->_int); ptr->_int = a->_int;
                    break;
                case Opcode.OP_STOREP_FLD:    // ptr = (eval_t *)((byte *)sv.edicts + b->_int); ptr->_int = a->_int;
                    break;
                case Opcode.OP_STOREP_FNC:    // ptr = (eval_t *)((byte *)sv.edicts + b->_int); ptr->_int = a->_int;
                    break;
                case Opcode.OP_RETURN:    // pr_globals[OFS_RETURN] = pr_globals[st->a]; pr_globals[OFS_RETURN + 1] = pr_globals[st->a + 1];  pr_globals[OFS_RETURN + 2] = pr_globals[st->a + 2]; s = PR_LeaveFunction(); if (pr_depth == exitdepth) { return; }		// all done
                    break;
                case Opcode.OP_NOT_F:   // c->_float = !a->_float;
                case Opcode.OP_NOT_V:   // c->_float = !a->vector[0] && !a->vector[1] && !a->vector[2];
                case Opcode.OP_NOT_S:   // c->_float = !a->string || !pr_strings[a->string];
                case Opcode.OP_NOT_ENT: // c->_float = (PROG_TO_EDICT(a->edict) == sv.edicts);
                case Opcode.OP_NOT_FNC: // c->_float = !a->function;
                    // c(float) = !a(type)
                    //arg1 = DecompileGet(df, s->a, typ1);
                    //arg1 = DecompileGlobal(s->a, typ1);
                    //if (arg1 == null) arg1 = DecompileImmediate(df, s->a, 2, NULL);

                    output.WriteLine("!");// + arg1);
                    //DecompileImmediate(df, s->c, 1, line);
                    break;
                case Opcode.OP_IF:  // if (a->_int) { s += st->b - 1; }	// offset the s++
                    break;
                case Opcode.OP_IFNOT:   // if (!a->_int) { s += st->b - 1; }	// offset the s++
                    break;
                case Opcode.OP_CALL0:   // pr_argc = st->op - OP_CALL0; newf = &pr_functions[a->function]; if (newf->first_statement < 0) { i = -newf->first_statement; pr_builtins[i](); break; } s = PR_EnterFunction(newf);
                case Opcode.OP_CALL1:
                case Opcode.OP_CALL2:
                case Opcode.OP_CALL3:
                case Opcode.OP_CALL4:
                case Opcode.OP_CALL5:
                case Opcode.OP_CALL6:
                case Opcode.OP_CALL7:
                case Opcode.OP_CALL8:
                    string? functionName = GetGlobaldef(statement.a);
                    if (functionName is null) { throw new Exception("NG Couldn't find functionName"); }

                    // todo print return type

                    output.Write(functionName + "(");

                    // if there are arguments already processed and sitting in scratchpad, include them
                    if (statement.Opcode > Opcode.OP_CALL0)
                    {
                        output.Write(scratchpad);
                        scratchpad = "";
                    }

                    output.WriteLine(");");
                    break;
                case Opcode.OP_STATE:   // ed = PROG_TO_EDICT(pr_global_struct->self); ed->v.nextthink = pr_global_struct->time + 0.1; if (a->_float != ed->v.frame) { ed->v.frame = a->_float; } ed->v.think = b->function;
                    break;
                case Opcode.OP_GOTO:    // s += st->a - 1;	// offset the s++
                    break;
                case Opcode.OP_AND: // c->_float = a->_float && b->_float;
                    break;
                case Opcode.OP_OR:  // c->_float = a->_float || b->_float;
                    break;
                case Opcode.OP_BITAND:  // c->_float = (int)a->_float & (int)b->_float;
                    break;
                case Opcode.OP_BITOR:   // c->_float = (int)a->_float | (int)b->_float;
                    break;
            }
        }
    }
}
