using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace DeQcc
{
    enum GotoType { None, EndWhile, EndIf }

    partial class Statement
    {
        public GotoType gotoType;   // Just used for GOTOs to properly process the end of IFNOT blocks
    }

    partial class Function
    {
        public string declaration;   // The return type, arguments, and function name
        public List<string> localDefs = new List<string>(); // store the locals code to be written out at the top of the function definition

        public bool IsBuiltin   // is this function a builtin?
        {
            get
            {
                return first_statement < 0;
            }
        }
    }

    enum GlobalKind
    {
        Unknown,
        Reserved,
        Function,
        Field,
        Immediate,
        Local,
        Parameter,
        Anonymous,
        Globaldef   // e.g. actual global defined in defs.qc
    }
    
    class Global
    {
        #region Statics

        public static List<Global> globalList;
        public static List<Function> functions;
        public static List<Def> fields;
        public static Dictionary<int, int> fieldsOffsetMap;  // to look up field by offset
        public static List<string> strings;
        public static Dictionary<int, int> stringOffsetMap;

        private static int DEF_SAVEGLOBAL = (1 << 15);

        #endregion Statics

        #region Constructor

        public Global(int id, float f)
        {
            _id = id;
            _name = null;
            _globaldef_type = null;

            Kind = GlobalKind.Unknown;
            FloatVal = f;
            ValueSource = null;
        }

        #endregion Constructor

        #region Private variables

        private int _id;
        private string _name;
        private ushort? _globaldef_type;    // original - may have DEF_SAVEGLOBAL bit set

        #endregion Private variables

        #region Public Variables

        public GlobalKind Kind;
        public float FloatVal;
        public string? ValueSource; // the source of the value being stored in this global

        public List<int> writtenBy = new List<int>();   // statements on which this global is wrtten to
        public List<int> readBy = new List<int>();      // statements on which this global is read by

        public Types? TypePointedTo;    // if this global is a pointer, this has the type of the thing it is pointing to

        #endregion Public Variables

        #region Properties

        public bool IsWritten   // is this global ever written to?
        {
            get
            {
                return writtenBy.Count > 0;
            }
        }

        public ushort? IntVal
        {
            get
            {
                // TODO better way to do this?
                int intVal = BitConverter.ToInt32(BitConverter.GetBytes(FloatVal));
                if (intVal < (1 << 16))    // ints seem to be the first 16 bits, 0-65536 - and only used as offsets(?)
                {
                    return (ushort)intVal;
                }
                return null;
            }
        }

        public string TypeCodeOutput
        {
            get
            {
                if (Type is null)
                {
                    return "/* ERROR: NULL TYPE */";
                }
                if (Type == Types.ev_field)
                {
                    return "." + TypeCode(FieldType);       // e.g. in defs.qc, starting with "." denotes field
                }
                return TypeCode(Type);
            }
        }

        public string? Name
        {
            get
            {
                if (Kind == GlobalKind.Function)
                {
                    return FunctionName;
                }
                if (Kind == GlobalKind.Field)
                {
                    return fields[fieldsOffsetMap[(int)IntVal]].name;
                }
                return _name;
            }
            set
            {
                _name = value;
            }
        }

        public string ImmediateValue
        {
            get
            {
                switch (Type)
                {
                    case Types.ev_string:
                        return CleanseImmediateString();
                    case Types.ev_void:
                        return "void";
                    case Types.ev_float:
                        return FloatVal.ToString("F3");
                    case Types.ev_vector:
                        return "'" + FloatVal.ToString("F3") + " " + (globalList[_id + 1].FloatVal).ToString("F3") + " " + (globalList[_id + 2].FloatVal).ToString("F3") + "'";
                    default:
                        return "/* ERROR ImmediateValue for " + Type + " */";
                }
            }
        }

        public string ValueToAssign // If this globaldef is being assigned to something else
        {
            get
            {
                if (Kind == GlobalKind.Immediate)
                {
                    return ImmediateValue;
                }
                else if (Kind == GlobalKind.Anonymous || Kind == GlobalKind.Reserved)
                {
                    return ValueSource;
                }
                else
                {
                    return Name;
                }
            }
        }

        public Types? FieldType
        {
            get
            {
                return (Types)(fields[fieldsOffsetMap[(int)IntVal]].type);
            }
        }

        public string? FunctionName // If this global is an offset to a function
        {
            get
            {
                if (IntVal > 0)
                {
                    return functions[(int)IntVal].name;
                }
                else
                {
                    return ValueSource;
                }
            }
        }

        public string? FunctionDeclaration  // If this global is an offset to a function
        {
            get
            {
                return functions[(int)IntVal].declaration;
            }
        }

        public bool FunctionIsBuiltin
        {
            get
            {
                if(Kind == GlobalKind.Function && functions[(int)IntVal].IsBuiltin)
                {
                    return true;
                }
                return false;
            }
        }

        public Types? Type
        {
            get
            {
                if (_globaldef_type == null)
                {
                    return null;
                }
                if ((_globaldef_type & DEF_SAVEGLOBAL) != 0)
                {
                    return (Types)(_globaldef_type - DEF_SAVEGLOBAL);
                }
                return (Types)(_globaldef_type);
            }
            set
            {
                _globaldef_type = (ushort)value;
            }
        }

        #endregion Properties

        #region Private functions

        private string TypeCode(Types? input)
        {
            if(input is null)
            {
                return null;
            }

            switch (input)
            {
                case Types.ev_void:
                    return "void";
                case Types.ev_string:
                    return "string";
                case Types.ev_float:
                    return "float";
                case Types.ev_vector:
                    return "vector";
                case Types.ev_entity:
                    return "entity";
                case Types.ev_function:
                    return "void()";
                case Types.ev_field:
                    return "/* TYPE: EV_FIELD */";
                case Types.ev_pointer:
                    return "/* TYPE: EV_POINTER */";
            }
            return "/* ERROR: UNKNOWN TYPE */";
        }

        // if this is an immediate string, get the string pointed to and escape special chars before returning
        private string CleanseImmediateString()
        {
            string stringToCleanse = strings[stringOffsetMap[(int)IntVal]];
            for (int i = 0; i < stringToCleanse.Length; i++)
            {
                // Can't use string.Replace as need to replace char with string
                if (stringToCleanse[i] == '\n')
                {
                    stringToCleanse = stringToCleanse.Substring(0, i) + "\\n" + stringToCleanse.Substring(i + 1);
                }
                if (stringToCleanse[i] == '\"')
                {
                    stringToCleanse = stringToCleanse.Substring(0, i) + "\\" + '"' + stringToCleanse.Substring(i + 1);
                }
            }
            return '"' + stringToCleanse + '"';
        }

        #endregion Private functions

        public bool IsConstant()   // constants defined outside of functions (e.g. in defs.qc have their value printed after
        {
            if(Name is null)
            {
                return false;
            }
            // TODO assumes constants are all caps (true for defs.qc, is this true in all cases?)
            for (int i = 0; i < Name.Length; i++)
            {
                if (Char.IsLetter(Name[i]) && !Char.IsUpper(Name[i]))
                    return false;
            }
            return true;
        }

        public override string ToString()
        {
            return Kind + " " + TypeCodeOutput + " " + Name;
        }
    }

    partial class DeQCC
    {
        public int nextGlobal;
        //Dictionary<int, string> globalMap = new Dictionary<int, string>();
        List<Global> globalList = new List<Global>();
        int indent = 0;

        // Store statement numbers where we have to remember to do something
        List<int> startOfDoLoop = new List<int>();  // begin an upcoming do while loop
        List<int> endofBlock = new List<int>(); // reduce indentation

        // Check for presence of operators in the string, and if so, bracket it
        // used when combining two potential calculations, e.g. a + b
        // to check whether a or b need brackets
        // Note this doesn't actually check for precedence, it just brackets
        // operations in the order they were performed in bytecode (thus
        // preserving the original precedence from the source file)
        string CheckPrecedence(string input)
        {
            if (input is null) return null;

            if(input.Contains(" + ") ||
                input.Contains(" - ") ||
                input.Contains(" * ") ||
                input.Contains(" / ") ||
                input.Contains(" == ") ||
                input.Contains(" != ") ||
                input.Contains(" <= ") ||
                input.Contains(" >= ") ||
                input.Contains(" < ") ||
                input.Contains(" > ") ||
                input.Contains(" && ") ||
                input.Contains(" || ") ||
                input.Contains(" & ") ||
                input.Contains(" | "))
            {
                return "(" + input + ")";
            }
            return input;
        }

        public void NewDecompilation(string outputfolder)
        {
            // Output folder structure:
            // /outputfolder/
            // /outputfolder/inputprogs.dat <- will be read
            // /outputfolder/qc/ <- decompilation will be output here
            // /outputfolder/qcc.bat <- will compile the results of the decompilation
            // /outputfolder/progs.dat <- output of qcc.bat, to be compared with inputprogs.dat

            outputfolder = Directory.GetCurrentDirectory() + "\\" + outputfolder + "\\";
            InitStaticData(outputfolder);
            ReadData(outputfolder);
            WriteProgsData(outputfolder);
            Preprocess();
            DecompileFunctions(outputfolder);
        }

        void Preprocess()
        {
            // Statics - allow the globals to access the other relevant data from the progs.dat
            Global.globalList = globalList;
            Global.functions = functions;
            Global.fields = fields;
            Global.fieldsOffsetMap = fieldsOffsetMap;
            Global.strings = strings;
            Global.stringOffsetMap = stringOffsetMap;

            #region Set the value of each global

            int id = 0;
            foreach (float f in pr_globals)
            {
                Global g = new Global(id++, f);
                globalList.Add(g);
            }

            #endregion

            #region Set up the reserved offsets

            globalList[OFS_NULL].Name = "OFS_NULL";
            globalList[OFS_RETURN].Name = "OFS_RETURN";
            globalList[OFS_RETURN + 1].Name = "OFS_RETURN_y";
            globalList[OFS_RETURN + 2].Name = "OFS_RETURN_z";
            globalList[OFS_PARM0].Name = "OFS_PARM0";
            globalList[OFS_PARM0 + 1].Name = "OFS_PARM0_y";
            globalList[OFS_PARM0 + 2].Name = "OFS_PARM0_z";
            globalList[OFS_PARM1].Name = "OFS_PARM1";
            globalList[OFS_PARM1 + 1].Name = "OFS_PARM1_y";
            globalList[OFS_PARM1 + 2].Name = "OFS_PARM1_z";
            globalList[OFS_PARM2].Name = "OFS_PARM2";
            globalList[OFS_PARM2 + 1].Name = "OFS_PARM2_y";
            globalList[OFS_PARM2 + 2].Name = "OFS_PARM2_z";
            globalList[OFS_PARM3].Name = "OFS_PARM3";
            globalList[OFS_PARM3 + 1].Name = "OFS_PARM3_y";
            globalList[OFS_PARM3 + 2].Name = "OFS_PARM3_z";
            globalList[OFS_PARM4].Name = "OFS_PARM4";
            globalList[OFS_PARM4 + 1].Name = "OFS_PARM4_y";
            globalList[OFS_PARM4 + 2].Name = "OFS_PARM4_z";
            globalList[OFS_PARM5].Name = "OFS_PARM5";
            globalList[OFS_PARM5 + 1].Name = "OFS_PARM5_y";
            globalList[OFS_PARM5 + 2].Name = "OFS_PARM5_z";
            globalList[OFS_PARM6].Name = "OFS_PARM6";
            globalList[OFS_PARM6 + 1].Name = "OFS_PARM6_y";
            globalList[OFS_PARM6 + 2].Name = "OFS_PARM6_z";
            globalList[OFS_PARM7].Name = "OFS_PARM7";
            globalList[OFS_PARM7 + 1].Name = "OFS_PARM7_y";
            globalList[OFS_PARM7 + 2].Name = "OFS_PARM7_z";
            for (int i = 0; i < RESERVED_OFS; i++)
            {
                globalList[i].Kind = GlobalKind.Reserved;
                globalList[i].Type = Types.ev_void;    // don't know
            }

            #endregion

            #region Get info from globaldefs

            for(int i = 1; i < globals.Count; i++)
            {
                if(globals[i].ofs == globals[i-1].ofs)
                {
                    // Vector and float _x component of vector have the same offset
                    // so avoid the latter overwriting the former
                    continue;
                }

                Def gd = globals[i];
                globalList[gd.ofs].Type = (Types)gd.type;
                globalList[gd.ofs].Name = strings[stringOffsetMap[gd.s_name]];

                if (globalList[gd.ofs].Type == Types.ev_function)
                {
                    globalList[gd.ofs].Kind = GlobalKind.Function;
                }
                else if (globalList[gd.ofs].Type == Types.ev_field)
                {
                    globalList[gd.ofs].Kind = GlobalKind.Field;
                }
                else
                {
                    globalList[gd.ofs].Kind = GlobalKind.Globaldef;
                }
            }

            #endregion

            nextGlobal = RESERVED_OFS;  // index to the next global to process

            for (int fIndex = 1; fIndex < functions.Count; fIndex++)
            {
                Function f = functions[fIndex];

                // Any globals not yet processed up until the start of this one are Globaldefs
                // e.g. perhaps the previous function ended but there are some defs before this one begins
                while(nextGlobal < f.parm_start)
                {
                    if (globalList[nextGlobal].Kind == GlobalKind.Unknown)
                    {
                        globalList[nextGlobal].Kind = GlobalKind.Globaldef;
                    }
                    nextGlobal++;
                }

                // Skip builtins
                if(f.IsBuiltin)
                {
                    continue;
                }

                // Calculate function declaration

                // Return type
                f.declaration = "%%RETURNTYPE%% ";  // will be filled in later

                // Parameters
                nextGlobal = f.parm_start;
                f.declaration += "(";
                for (int parmIndex = 0; parmIndex < f.numparms; parmIndex++)
                {
                    Global parm = GetGlobal(nextGlobal);
                    parm.Kind = GlobalKind.Parameter;
                    f.declaration += parm.TypeCodeOutput + " " + parm.Name;
                    if (parmIndex < f.numparms - 1) { f.declaration += ", "; }

                    if (parm.Type == Types.ev_vector)
                    {
                        Global parm_y = GetGlobal(nextGlobal + 1);
                        Global parm_z = GetGlobal(nextGlobal + 2);
                        parm_y.Kind = parm_z.Kind = GlobalKind.Parameter;
                        parm_y.Name = parm.Name + "_y"; parm_z.Name = parm.Name + "_z";
                        nextGlobal += 3;
                    }
                    else { nextGlobal++; }
                }
                f.declaration += ") " + f.name;

                // Locals
                while ((nextGlobal - f.parm_start) < f.locals)
                {
                    Global local = GetGlobal(nextGlobal);
                    local.Kind = GlobalKind.Local;
                    f.localDefs.Add("local " + local.TypeCodeOutput + " " + local.Name + ";");

                    if (local.Type == Types.ev_vector)
                    {
                        Global local_y = GetGlobal(nextGlobal + 1);
                        Global local_z = GetGlobal(nextGlobal + 2);
                        local_y.Kind = local_z.Kind = GlobalKind.Local;
                        local_y.Name = local.Name + "_y"; local_z.Name = local.Name + "_z";
                        nextGlobal += 3;
                    }
                    else { nextGlobal++; }
                }

                Types returnType = Types.ev_void;

                // Loop through the statements of this function
                int statementIndex = f.first_statement;
                while(statements[statementIndex].Opcode != Opcodes.OP_DONE)
                {
                    Statement s = statements[statementIndex];

                    // Check for do while loops
                    if (s.Opcode == Opcodes.OP_IF)
                    {
                        // OP_IF codes in the statements encode do while loops
                        // store the start statement of the do loop, as we will encounter it
                        // before the OP_IF, which encodes the end of the loop
                        startOfDoLoop.Add(statementIndex + s.b);
                    }

                    // We wiil set the readBy/writtenBy properties for each global based on the type of statement
                    // so each global will have a list of statements where it is accessed (read or write)

                    Global a = GetGlobal(s.a);
                    Global b = GetGlobal(s.b);
                    Global c = GetGlobal(s.c);

                    switch (s.Opcode)
                    {
                        case Opcodes.OP_IF: case Opcodes.OP_IFNOT: case Opcodes.OP_CALL0:
                        case Opcodes.OP_CALL1: case Opcodes.OP_CALL2: case Opcodes.OP_CALL3: case Opcodes.OP_CALL4:
                        case Opcodes.OP_CALL5: case Opcodes.OP_CALL6: case Opcodes.OP_CALL7: case Opcodes.OP_CALL8:
                            a.readBy.Add(statementIndex);
                            break;
                        case Opcodes.OP_RETURN:
                            if (a != null)
                            {
                                a.readBy.Add(statementIndex);
                            }
                            break;
                        case Opcodes.OP_STATE:
                            a.readBy.Add(statementIndex); b.readBy.Add(statementIndex);
                            break;
                        case Opcodes.OP_ADD_F: case Opcodes.OP_ADD_V: case Opcodes.OP_SUB_F: case Opcodes.OP_SUB_V:
                        case Opcodes.OP_MUL_F: case Opcodes.OP_MUL_V: case Opcodes.OP_MUL_FV: case Opcodes.OP_MUL_VF: case Opcodes.OP_DIV_F:
                        case Opcodes.OP_BITAND: case Opcodes.OP_BITOR: case Opcodes.OP_AND: case Opcodes.OP_OR:
                        case Opcodes.OP_GE: case Opcodes.OP_LE: case Opcodes.OP_GT: case Opcodes.OP_LT:
                        case Opcodes.OP_EQ_F: case Opcodes.OP_EQ_V: case Opcodes.OP_EQ_S: case Opcodes.OP_EQ_E: case Opcodes.OP_EQ_FNC:
                        case Opcodes.OP_NE_F: case Opcodes.OP_NE_V: case Opcodes.OP_NE_S: case Opcodes.OP_NE_E: case Opcodes.OP_NE_FNC:
                        case Opcodes.OP_ADDRESS: case Opcodes.OP_LOAD_F: case Opcodes.OP_LOAD_V: case Opcodes.OP_LOAD_S:
                        case Opcodes.OP_LOAD_ENT: case Opcodes.OP_LOAD_FLD: case Opcodes.OP_LOAD_FNC:
                            a.readBy.Add(statementIndex); b.readBy.Add(statementIndex); c.writtenBy.Add(statementIndex);
                            if (c.Type == null) { c.Type = pr_opcodes[s.op].type_c; }
                            break;
                        case Opcodes.OP_NOT_F: case Opcodes.OP_NOT_V: case Opcodes.OP_NOT_S: case Opcodes.OP_NOT_FNC: case Opcodes.OP_NOT_ENT:
                            a.readBy.Add(statementIndex); c.writtenBy.Add(statementIndex);
                            if (c.Type == null) { c.Type = pr_opcodes[s.op].type_c; }
                            break;
                        case Opcodes.OP_STORE_F: case Opcodes.OP_STORE_ENT: case Opcodes.OP_STORE_FLD: case Opcodes.OP_STORE_S: case Opcodes.OP_STORE_FNC: case Opcodes.OP_STORE_V:
                        case Opcodes.OP_STOREP_F: case Opcodes.OP_STOREP_ENT: case Opcodes.OP_STOREP_FLD: case Opcodes.OP_STOREP_S: case Opcodes.OP_STOREP_FNC: case Opcodes.OP_STOREP_V:
                            a.readBy.Add(statementIndex); b.writtenBy.Add(statementIndex);
                            if (b.Type == null) { b.Type = pr_opcodes[s.op].type_b; }
                            if(b.Type == Types.ev_pointer) { b.TypePointedTo = a.Type; }
                            break;
                        case Opcodes.OP_DONE: case Opcodes.OP_GOTO:
                            break;
                        default:
                            throw new Exception("Unknown Opcode in Preprocess()");
                    }

                    // Process any new globals
                    if (s.a >= nextGlobal)
                    {
                        if (a.Kind == GlobalKind.Globaldef) { a.Kind = GlobalKind.Immediate; }
                        else { a.Kind = GlobalKind.Anonymous; }
                        if (a.Type == Types.ev_vector || (a.Type == Types.ev_pointer && a.TypePointedTo == Types.ev_vector))
                        {
                            Global y = GetGlobal(s.a + 1);
                            y.Type = Types.ev_float;
                            y.Name = a.Name + "_y";
                            y.Kind = a.Kind;
                            Global z = GetGlobal(s.a + 2);
                            z.Type = Types.ev_float;
                            z.Name = a.Name + "_z";
                            z.Kind = a.Kind;
                            nextGlobal += 3;
                        }
                        else { nextGlobal++; }
                    }
                    if (s.b >= nextGlobal)
                    {
                        if (b.Kind == GlobalKind.Globaldef) { b.Kind = GlobalKind.Immediate; }
                        else { b.Kind = GlobalKind.Anonymous; }
                        if (b.Type == Types.ev_vector || (b.Type == Types.ev_pointer && b.TypePointedTo == Types.ev_vector))
                        {
                            Global y = GetGlobal(s.b + 1);
                            y.Type = Types.ev_float;
                            y.Name = b.Name + "_y";
                            y.Kind = b.Kind;
                            Global z = GetGlobal(s.b + 2);
                            z.Type = Types.ev_float;
                            z.Name = b.Name + "_z";
                            z.Kind = b.Kind;
                            nextGlobal += 3;
                        }
                        else { nextGlobal++; }
                    }
                    if (s.c >= nextGlobal)
                    {
                        if (c.Kind == GlobalKind.Globaldef) { c.Kind = GlobalKind.Immediate; }
                        else { c.Kind = GlobalKind.Anonymous; }
                        if (c.Type == Types.ev_vector || (c.Type == Types.ev_pointer && c.TypePointedTo == Types.ev_vector))
                        {
                            Global y = GetGlobal(s.c + 1);
                            y.Type = Types.ev_float;
                            y.Name = c.Name + "_y";
                            y.Kind = c.Kind;
                            Global z = GetGlobal(s.c + 2);
                            z.Type = Types.ev_float;
                            z.Name = c.Name + "_z";
                            z.Kind = c.Kind;
                            nextGlobal += 3;
                        }
                        else { nextGlobal++; }
                    }

                    // Check for return and set the type if found
                    if (s.Opcode == Opcodes.OP_RETURN)
                    {
                        if (a != null && a.Type != null)
                        {
                            returnType = (Types)a.Type;
                        }
                        else
                        {
                            returnType = Types.ev_void;
                        }
                    }

                    statementIndex++;
                }

                // Set the return type
                f.declaration = f.declaration.Replace("%%RETURNTYPE%%", type_names[(int)returnType]);
            }
        }

        #region Print

        void Print(string output)
        {
            for(int i = 0; i < indent; i++)
            {
                qcOutputFile.Write("    ");
            }
            qcOutputFile.Write(output);

        }

        void PrintLine(string output)
        {
            Print(output);
            qcOutputFile.WriteLine("");
        }

        #endregion Print

        void DecompileFunctions(string folder)
        {
            folder = folder + "qc\\";
            progsSrcOutputFile = new StreamWriter(folder + "progs.src", false);     // overwrite
            progsSrcOutputFile.AutoFlush = true;
            progsSrcOutputFile.WriteLine("./progs.dat");
            progsSrcOutputFile.WriteLine();

            nextGlobal = RESERVED_OFS;
            StreamWriter f;
            for (int i = 1; i < functions.Count; i++)
            {
                string filename = functions[i].file;

                if (AlreadySeen(filename) == false)
                {
                    progsSrcOutputFile.WriteLine(filename);
                    f = new StreamWriter(folder + filename, false);    // overwrite
                }
                else
                {
                    f = new StreamWriter(folder + filename, true);     // append
                }

                qcOutputFile = f;
                qcOutputFile.AutoFlush = true;

                DecompileFunction(functions[i]);

                f.Close();
            }

            progsSrcOutputFile.Close();
        }

        Global GetGlobal(int offset)
        {
            if(offset <= 0)
            {
                // some ops e.g. OP_GOTO where the parameters are actually backwards jumps have negative "offsets"
                // because they aren't really offsets, just instruction pointer deltas, so don't bother returning anything (it will be ignored)
                return null;
            }

            return globalList[offset];
        }

        void DecompileFunction(Function f)
        {
            int sIndex;
            Console.Out.WriteLine("Function " + f.name + "(), parm_start:" + f.parm_start + " nextGlobal:" + nextGlobal);

            // Process any unprocessed globals following the previous function
            while (nextGlobal < f.parm_start)
            {
                Global g = GetGlobal(nextGlobal);
                if (g.Kind == GlobalKind.Function)
                {
                    if (g.FunctionName == f.name)   // if it's this function
                    {
                        nextGlobal++;
                        continue;   // do nothing, the definition will be output below
                    }
                    else
                    {
                        Print(g.FunctionDeclaration);
                    }
                }
                else
                {
                    Print(g.TypeCodeOutput + " " + g.Name);
                    if (g.IsConstant())  // Incredibly tiny positive FloatVals are actually IntVals (indices), so exclude these too
                    {
                        Print(" = " + g.ImmediateValue);
                    }
                }
                PrintLine(";");

                if(g.Type == Types.ev_vector)
                {
                    // Vectors share the x component but are followed by the y and z components
                    // skip the _y and _z
                    nextGlobal += 3;
                }
                else if(g.Kind == GlobalKind.Field && g.FieldType == Types.ev_vector)
                {
                    // Fields are followed by all three components
                    // skip the _x, _y, and _z
                    nextGlobal += 4;
                }
                else
                {
                    nextGlobal++;
                }
            }

            // Check for builtin functions
            if(f.IsBuiltin)
            {
                PrintLine(builtins[-f.first_statement] + " " + f.name + " = #" + (-f.first_statement) + ";");
                return;
            }

            // Print the bytecode
            PrintLine("// " + f.name);
            PrintLine("// function begins at statement " + f.first_statement);
            sIndex = f.first_statement;
            while (true)
            {
                PrintLine("// " + statements[sIndex].ToString());
                if (statements[sIndex].Opcode == Opcodes.OP_DONE)
                {
                    break;
                }
                sIndex++;
            }

            // Print the declaration
            PrintLine(f.declaration + " =");
            PrintLine("{");
            indent++;

            // Print the locals
            foreach(string l in f.localDefs)
            {
                PrintLine(l);
            }

            nextGlobal += f.locals;

            // Decompile the function statements
            sIndex = f.first_statement;
            while (true)
            {
                DecompileStatement(f, sIndex);
                if (statements[sIndex].op == 0)
                    break;
                sIndex++;
            }

            // End the function
            indent--;
            PrintLine("};");
            PrintLine("");

            // Should never happen
            if(indent != 0)
            {
                indent = 0;
                PrintLine("/* ERROR INDENTATION */");
            }
        }

        void DecompileStatement(Function f, int sIndex)
        {
            // If we have reached the end of an indentation block, undo it
            while(endofBlock.Contains(sIndex))  // while as there might be more than one block ending on this statement
            {
                indent--;
                PrintLine("}");
                PrintLine("");
                endofBlock.Remove(sIndex);  // Removes first occurrence
            }

            // If we are beginning a do while loop
            while(startOfDoLoop.Contains(sIndex))   // probably only one do loop starting here, but while just in case...
            {
                PrintLine("do");
                PrintLine("{");
                indent++;
                startOfDoLoop.Remove(sIndex);   // Removes first occurrence
            }

            Statement s = statements[sIndex];
            Global a = GetGlobal(s.a);
            Global b = GetGlobal(s.b);
            Global c = GetGlobal(s.c);

            if (s.a >= nextGlobal)
            {
                if (a.Type == Types.ev_vector || (a.Type == Types.ev_pointer && a.TypePointedTo == Types.ev_vector))
                {
                    nextGlobal += 3;
                }
                else
                {
                    nextGlobal++;
                }
            }
            if (s.b >= nextGlobal)
            {
                if (b.Type == Types.ev_vector || (b.Type == Types.ev_pointer && b.TypePointedTo == Types.ev_vector))
                {
                    nextGlobal += 3;
                }
                else
                {
                    nextGlobal++;
                }
            }
            if (s.c >= nextGlobal)
            {
                if (c.Type == Types.ev_vector || (c.Type == Types.ev_pointer && c.TypePointedTo == Types.ev_vector))
                {
                    nextGlobal += 3;
                }
                else
                {
                    nextGlobal++;
                }
            }

            // Process the opcode
            switch(s.Opcode)
            {
                case Opcodes.OP_DONE:
                    // end of function, do nothing
                    break;
                case Opcodes.OP_RETURN:
                    if (a != null) { PrintLine("return " + a.ValueToAssign + ";"); }
                    else { PrintLine("return;"); }
                    break;
                case Opcodes.OP_STATE:
                    PrintLine("*** UNPROCESSED OPCODE " + s.Opcode + " " + s.a + " " + s.b + " " + s.c);
                    break;
                case Opcodes.OP_MUL_F: case Opcodes.OP_MUL_V: case Opcodes.OP_MUL_FV: case Opcodes.OP_MUL_VF: case Opcodes.OP_DIV_F:
                case Opcodes.OP_ADD_F: case Opcodes.OP_ADD_V: case Opcodes.OP_SUB_F: case Opcodes.OP_SUB_V:
                case Opcodes.OP_EQ_F: case Opcodes.OP_EQ_V: case Opcodes.OP_EQ_S: case Opcodes.OP_EQ_E: case Opcodes.OP_EQ_FNC:
                case Opcodes.OP_NE_F: case Opcodes.OP_NE_V: case Opcodes.OP_NE_S: case Opcodes.OP_NE_E: case Opcodes.OP_NE_FNC:
                case Opcodes.OP_LE: case Opcodes.OP_GE: case Opcodes.OP_LT: case Opcodes.OP_GT:
                case Opcodes.OP_AND: case Opcodes.OP_OR: case Opcodes.OP_BITAND: case Opcodes.OP_BITOR:
                    // c = a <operator> b
                    string oper = pr_opcodes[s.op].name;

                    if (c.Kind == GlobalKind.Anonymous || c.Kind == GlobalKind.Reserved)
                    {
                        c.ValueSource = CheckPrecedence(a.ValueToAssign) + " " + oper + " " + CheckPrecedence(b.ValueToAssign);
                        //PrintLine("// " + s.Opcode + " " + s.a + " " + s.b + " " + s.c + " => " + s.c + " = " + c.ValueSource);
                    }
                    else
                    {
                        PrintLine(c.Name + " = " + CheckPrecedence(a.ValueToAssign) + " " + oper + " " + CheckPrecedence(b.ValueToAssign) + ";");
                    }
                    break;
                case Opcodes.OP_NOT_F: case Opcodes.OP_NOT_V: case Opcodes.OP_NOT_S: case Opcodes.OP_NOT_ENT: case Opcodes.OP_NOT_FNC:
                    // c = !a
                    if (c.Kind == GlobalKind.Anonymous || c.Kind == GlobalKind.Reserved)
                    {
                        c.ValueSource = "!" + CheckPrecedence(a.ValueToAssign);
                        //PrintLine("// " + s.Opcode + " " + s.a + " " + s.b + " " + s.c + " => " + s.c + " = " + c.ValueSource);
                    }
                    else
                    {
                        PrintLine(c.Name + " = !" + CheckPrecedence(a.ValueToAssign) + ";");
                    }
                    break;
                case Opcodes.OP_LOAD_F: case Opcodes.OP_LOAD_V: case Opcodes.OP_LOAD_S: case Opcodes.OP_LOAD_ENT: case Opcodes.OP_LOAD_FLD: case Opcodes.OP_LOAD_FNC: case Opcodes.OP_ADDRESS:
                    // c = a.b
                    if (c.Kind == GlobalKind.Anonymous || c.Kind == GlobalKind.Reserved)
                    {
                        c.ValueSource = a.ValueToAssign + "." + b.ValueToAssign;
                        //PrintLine("// " + s.Opcode + " " + s.a + " " + s.b + " " + s.c + " => " + s.c + " = " + c.ValueSource);
                    }
                    else
                    {
                        PrintLine(c.Name + " = " + a.ValueToAssign + "." + b.ValueToAssign + ";");
                    }
                    break;
                case Opcodes.OP_STORE_F: case Opcodes.OP_STORE_V: case Opcodes.OP_STORE_S: case Opcodes.OP_STORE_ENT: case Opcodes.OP_STORE_FLD: case Opcodes.OP_STORE_FNC:
                case Opcodes.OP_STOREP_F: case Opcodes.OP_STOREP_V: case Opcodes.OP_STOREP_S: case Opcodes.OP_STOREP_ENT: case Opcodes.OP_STOREP_FLD: case Opcodes.OP_STOREP_FNC:
                    // b = a
                    if ((b.Kind == GlobalKind.Anonymous && b.ValueSource is null) || b.Kind == GlobalKind.Reserved)
                    {
                        b.ValueSource = a.ValueToAssign;
                        //PrintLine("// " + s.Opcode + " " + s.a + " " + s.b + " " + s.c + " => " + s.b + " = " + b.ValueSource);
                    }
                    else
                    {
                        if (b.Kind == GlobalKind.Anonymous && b.ValueSource != null)
                        {
                            PrintLine(b.ValueSource + " = " + a.ValueToAssign + ";");
                        }
                        else
                        {
                            PrintLine(b.Name + " = " + a.ValueToAssign + ";");
                        }
                    }
                    break;
                case Opcodes.OP_CALL0: case Opcodes.OP_CALL1: case Opcodes.OP_CALL2: case Opcodes.OP_CALL3: case Opcodes.OP_CALL4: case Opcodes.OP_CALL5: case Opcodes.OP_CALL6: case Opcodes.OP_CALL7: case Opcodes.OP_CALL8:
                    // Get the args
                    int numargs = s.Opcode - Opcodes.OP_CALL0;
                    string args = "";
                    for (int i = 0; i < numargs; i++)
                    {
                        args += globalList[OFS_PARM0 + 3 * i].ValueSource;
                        if (i < numargs - 1) { args += ", "; }
                    }

                    // call function a with pre-saved args in reserved globals
                    if (statements[sIndex + 1].a != OFS_RETURN)     // if the next statement does not assign the return value, just print the function call
                    {
                        PrintLine(a.FunctionName + "(" + args + ");");
                    }
                    else
                    {
                        // Otherwise save it for the next assignment to use
                        globalList[OFS_RETURN].ValueSource = a.FunctionName + "(" + args + ")";
                    }
                    break;
                case Opcodes.OP_IF:
                    // end of a do loop
                    indent--;
                    PrintLine("} while (" + a.ValueToAssign + ");");
                    break;
                case Opcodes.OP_IFNOT:
                    // Check for a while loop
                    if (statements[sIndex + s.b - 1].Opcode == Opcodes.OP_GOTO && statements[sIndex + s.b - 1].a == -s.b)
                    {
                        // while loops jump forward to just after a GOTO which jumps back to the statement before this IFNOT
                        // this IFNOT jumps to just beyond a GOTO, which jumps back to just before the IFNOT, i.e. to the comparator => while loop
                        PrintLine("");
                        PrintLine("while(" + a.ValueToAssign + ")");
                        statements[sIndex + s.b - 1].gotoType = GotoType.EndWhile;  // Inform the future that the GOTO is the end of this while loop
                    }
                    // Must be an if block
                    else
                    {
                        // IFNOTs that jump just beyond a GOTO have a subsequent else if/else (which the GOTO skips over), otherwise it's an if with no else

                        // Set the desination info correctly:
                        if (statements[sIndex + s.b - 1].Opcode == Opcodes.OP_GOTO && statements[sIndex + s.b - 1].a >= 0)
                        {
                            // this IFNOT jumps to just beyond a GOTO, which jumps forward, i.e. over an else/else if term
                            // the GOTO will handle the indendation
                            statements[sIndex + s.b - 1].gotoType = GotoType.EndIf;
                        }
                        else
                        {
                            // there is no subsequent block, so remember to undo the indentation at the end of the block
                            PrintLine("");
                            endofBlock.Add(sIndex + s.b);   // Note when to undo the if indentation, as we don't have a goto to do it
                        }

                        // Now decide what to print for this if
                        if (statements[sIndex - 2].Opcode == Opcodes.OP_GOTO)
                        {
                            // If we have just come from a GOTO, this must be an else if
                            // the "else" will have been printed by the GOTO, so just append the " if"
                            // temporarily remove the indentation to avoid extra whitespace
                            int saveIndent = indent;
                            indent = 0;
                            PrintLine(" if(" + a.ValueToAssign + ")");
                            indent = saveIndent;
                        }
                        else
                        {
                            // There is no preceeding GOTO (i.e. previous part of an if block), so start one
                            PrintLine("if(" + a.ValueToAssign + ")");
                        }
                    }
                    PrintLine("{");
                    indent++;
                    break;
                case Opcodes.OP_GOTO:
                    // GOTO might be the end of a while or the end of a if/else if
                    // Close the current scope
                    indent--;
                    PrintLine("}");
                    if (s.gotoType == GotoType.EndIf)
                    {
                        // This GOTO is part of an if block, and only exists if there is an else block
                        Print("else");
                        if (statements[sIndex + 2].Opcode == Opcodes.OP_IFNOT)
                        {
                            // Goes straight into another if, i.e. this is the start of an else if block
                            // the rest of the block will be printed by the subsequent IFNOT
                        }
                        else
                        {
                            // this is the final block, just an else, not an else if
                            PrintLine("");
                            PrintLine("{");
                            indent++;
                            endofBlock.Add(sIndex + s.a);   // make sure we unwind this block as there will be no IFNOT or GOTO to do so
                        }
                    }
                    else if (s.gotoType == GotoType.EndWhile)
                    {
                        // Newline after the while block just for clarity
                        PrintLine("");
                    }
                    break;
                default:
                    throw new Exception("Unprocessed opcode " + s.Opcode + " " + " at statement " + sIndex);
            }
        }
    }
}
