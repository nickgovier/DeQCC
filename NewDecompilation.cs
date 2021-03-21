using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    enum GotoType { None, EndWhile, EndIf }

    partial class Statement
    {
        public GotoType gotoType;   // Just used for GOTOs to properly process the end of IFNOT blocks
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

        #endregion Public Variables

        #region Properties

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
                    return FieldName;
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
                if (Kind == GlobalKind.Anonymous || Kind == GlobalKind.Immediate || Kind == GlobalKind.Reserved)
                {
                    return ValueSource;
                }
                else
                {
                    return Name;
                }
            }
        }

        public bool SaveGlobal  // we don't actually need this info, but it helps in the Type property later
        {
            get
            {
                if (_globaldef_type == null)
                {
                    return false;
                }
                int bitCheck = (ushort)_globaldef_type & DEF_SAVEGLOBAL;    // check if DEF_SAVEGLOBAL bit is set
                if (bitCheck == 0)
                {
                    return false;
                }
                return true;
            }
        }

        public string? FieldName    // If this global is an offset to a field
        {
            get
            {
                return fields[fieldsOffsetMap[(int)IntVal]].name;
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
                return functions[(int)IntVal].name;
            }
        }

        public bool FunctionIsBuiltin
        {
            get
            {
                if(Kind == GlobalKind.Function && functions[(int)IntVal].first_statement < 0)
                {
                    return true;
                }
                return false;
            }
        }

        public ushort GlobaldefType
        {
            set
            {
                _globaldef_type = value;
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
                if (SaveGlobal)
                {
                    return (Types)(_globaldef_type - DEF_SAVEGLOBAL);
                }
                return (Types)(_globaldef_type);
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
            string stringToCleanse = _name;
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
    }

    partial class DeQCC
    {
        public int highestGlobalAccessed;
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

            if(input.Contains("+") ||
                input.Contains("-") ||
                input.Contains("*") ||
                input.Contains("/") ||
                input.Contains("==") ||
                input.Contains("!=") ||
                input.Contains("<=") ||
                input.Contains(">=") ||
                input.Contains("<") ||
                input.Contains(">") ||
                input.Contains("&&") ||
                input.Contains("||") ||
                input.Contains("&") ||
                input.Contains("|"))
            {
                return "(" + input + ")";
            }
            return input;
        }

        public void NewDecompilation(string name, string outputfolder)
        {
            InitStaticData(name);
            highestGlobalAccessed = RESERVED_OFS - 1;
            ReadData(name);
            InitGlobalList();

            DecompileFunctions(outputfolder);
        }

        void InitGlobalList()
        {
            // Get all of the possible information for a given global

            // Allow the globals to access the other relevant data from the progs.dat
            Global.globalList = globalList;
            Global.functions = functions;
            Global.fields = fields;
            Global.fieldsOffsetMap = fieldsOffsetMap;

            // Set the value
            int id = 0;
            foreach (float f in pr_globals)
            {
                Global g = new Global(id++, f);
                globalList.Add(g);
            }

            // Reserved offsets
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
            progsSrcOutputFile = new StreamWriter(folder + "progs.src", false);     // overwrite
            progsSrcOutputFile.AutoFlush = true;
            progsSrcOutputFile.WriteLine("./progs.dat");
            progsSrcOutputFile.WriteLine();

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


            qcOutputFile = new StreamWriter(folder + "newdecompilation.qc", false);    // overwrite
            qcOutputFile.AutoFlush = true;
        }

        Global GetGlobal(int offset)
        {
            if(offset == 524)
            {
                Console.Out.WriteLine("BREAKPOINT");
            }

            if(offset <= 0)
            {
                // some ops e.g. OP_GOTO where the parameters are actually backwards jumps have negative "offsets"
                // because they aren't really offsets, just instruction pointer deltas, so don't bother returning anything (it will be ignored)
                return null;
            }

            Global g = globalList[offset];

            if (offset <= highestGlobalAccessed)
            {
                // We've encountered this offset before so just return it
                return g;
            }

            // remember this as once a function is finished decompilation, there might be more globals
            // to process (e.g. function defs) before the next function's parm_start
            highestGlobalAccessed = offset;

            if (!globalsOffsetMap.ContainsKey(offset))
            {
                // There is no globaldef for this so assume it is anonymous and return it
                g.Kind = GlobalKind.Anonymous;
                return g;
            }

            Def gd = globals[globalsOffsetMap[offset]];

            g.GlobaldefType = gd.type;
            g.Name = strings[stringOffsetMap[gd.s_name]];

            if (g.Type == Types.ev_function)
            {
                g.Kind = GlobalKind.Function;
            }
            else if (g.Type == Types.ev_field)
            {
                g.Kind = GlobalKind.Field;
            }
            else if (g.Type == Types.ev_entity || g.Type == Types.ev_pointer || g.Type == Types.ev_void)
            {
                g.Kind = GlobalKind.Globaldef;
            }
            else
            { 
                // Calling code might overwrite this if it knows it is a parameter or local
                g.Kind = GlobalKind.Immediate;
                g.ValueSource = g.ImmediateValue;
            }
            
            return g;
        }

        void DecompileFunction(Function f)
        {
            int sIndex;

            // Process any unprocessed globals following the previous function
            while (highestGlobalAccessed < f.parm_start - 1)
            {
                Global g = GetGlobal(highestGlobalAccessed + 1);
                if(g.Kind == GlobalKind.Function && g.FunctionIsBuiltin)
                {
                    continue;   // It will be printed lower down
                }
                Print(g.TypeCodeOutput + " " + g.Name);
                if(g.IsConstant())  // Incredibly tiny positive FloatVals are actually IntVals (indices), so exclude these too
                {
                    Print(" = " + g.ImmediateValue);
                }
                PrintLine(";");

                if(g.Type == Types.ev_vector)
                {
                    // skip the _y and _z
                    highestGlobalAccessed += 2;
                }
                if(g.Kind == GlobalKind.Field && g.FieldType == Types.ev_vector)
                {
                    // skip the _x, _y, and _z
                    highestGlobalAccessed += 3;
                }
            }

            // Check for builtin functions
            if(f.first_statement < 0)
            {
                PrintLine(builtins[-f.first_statement] + " " + f.name + " = #" + (-f.first_statement));
                return;
            }

            // Print the bytecode
            PrintLine("// " + f.name);
            PrintLine("// function begins at statement " + f.first_statement);
            sIndex = f.first_statement;
            while (true)
            {
                PrintLine(statements[sIndex].ToString());
                if (statements[sIndex].Opcode == Opcodes.OP_DONE)
                {
                    break;
                }
                sIndex++;
            }

            // Return type
            Print("voidTODO" + " ");

            // Parameters
            int currentParmOffset = f.parm_start;
            Print("(");
            for (int i = 0; i < f.numparms; i++)
            {
                Global parm = GetGlobal(currentParmOffset);
                parm.Kind = GlobalKind.Parameter;
                Print(parm.TypeCodeOutput + " " + parm.Name);
                if (i < f.numparms - 1) { Print(", "); }

                if (parm.Type == Types.ev_vector) { currentParmOffset += 3; }
                else { currentParmOffset++; }
            }
            PrintLine(") " + f.name + " =");
            PrintLine("{");
            indent++;

            // Locals
            while ((currentParmOffset - f.parm_start) < f.locals)
            {
                Global local = GetGlobal(currentParmOffset);
                local.Kind = GlobalKind.Local;
                PrintLine("local " + local.TypeCodeOutput + " " + local.Name + ";");

                if (local.Type == Types.ev_vector) { currentParmOffset += 3; }
                else { currentParmOffset++; }
            }

            //  Check for OP_IF codes in this function, which encode do while loops
            startOfDoLoop.Clear();
            sIndex = f.first_statement;
            while (true)
            {
                if (statements[sIndex].Opcode == Opcodes.OP_IF)
                {
                    // store the start statement of the do loop
                    startOfDoLoop.Add(sIndex + statements[sIndex].b);
                }
                if (statements[sIndex].Opcode == Opcodes.OP_DONE)
                {
                    break;
                }
                sIndex++;
            }

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

            switch (s.Opcode)
            {

                case Opcodes.OP_DONE:
                    // end of function
                    break;
                case Opcodes.OP_RETURN:
                    PrintLine("return; /* TODO retvalue? */");
                    return;
                case Opcodes.OP_CALL0:
                case Opcodes.OP_CALL1:
                case Opcodes.OP_CALL2:
                case Opcodes.OP_CALL3:
                case Opcodes.OP_CALL4:
                case Opcodes.OP_CALL5:
                case Opcodes.OP_CALL6:
                case Opcodes.OP_CALL7:
                case Opcodes.OP_CALL8:
                    // Get the args
                    int numargs = s.Opcode - Opcodes.OP_CALL0;
                    string args = "";
                    for(int i = 0; i < numargs; i++)
                    {
                        args += globalList[OFS_PARM0 + 3*i].ValueSource;
                        if(i < numargs - 1) { args += ", "; }
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
                case Opcodes.OP_NOT_F:
                    // c = !a
                    if(c.Kind == GlobalKind.Anonymous || c.Kind == GlobalKind.Reserved)
                    {
                        c.ValueSource = "!" + CheckPrecedence(a.ValueToAssign);
                        //PrintLine("// " + s.Opcode + " " + s.a + " " + s.b + " " + s.c + " => " + s.c + " = " + c.ValueSource);
                    }
                    else
                    {
                        PrintLine(c.Name + " = !" + CheckPrecedence(a.ValueToAssign) + ";");
                    }
                    break;
                case Opcodes.OP_EQ_V:
                case Opcodes.OP_ADD_F:
                case Opcodes.OP_SUB_V:
                case Opcodes.OP_DIV_F:
                case Opcodes.OP_MUL_VF:
                case Opcodes.OP_LT:
                case Opcodes.OP_LE:
                case Opcodes.OP_NE_E:
                case Opcodes.OP_BITAND:
                case Opcodes.OP_EQ_F:
                case Opcodes.OP_OR:
                case Opcodes.OP_AND:
                case Opcodes.OP_NE_V:
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
                case Opcodes.OP_STORE_V:
                case Opcodes.OP_STOREP_FNC:
                case Opcodes.OP_STOREP_V:
                case Opcodes.OP_STOREP_F:
                case Opcodes.OP_STORE_F:
                case Opcodes.OP_STOREP_S:
                case Opcodes.OP_STORE_ENT:
                case Opcodes.OP_STOREP_ENT:
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
                    } else if(s.gotoType == GotoType.EndWhile)
                    {
                        // Newline after the while block just for clarity
                        PrintLine("");
                    }
                    break;
                case Opcodes.OP_IF:
                    // end of a do loop
                    indent--;
                    PrintLine("} while (" + a.ValueToAssign + ");");
                    break;
                case Opcodes.OP_ADDRESS:
                case Opcodes.OP_LOAD_V:
                case Opcodes.OP_LOAD_F:
                case Opcodes.OP_LOAD_ENT:
                case Opcodes.OP_LOAD_S:
                case Opcodes.OP_LOAD_FNC:
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
                default:
                    PrintLine("// *** UNPROCESSED OPCODE " + s.Opcode + " " + s.a + " " + s.b + " " + s.c);
                    break;
            }

        }
    }
}
