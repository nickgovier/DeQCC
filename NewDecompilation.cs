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
        public GlobalKind Kind;

        public int id;
        public float FloatVal;
        public ushort? IntVal
        {
            get {
                // TODO better way to do this?
                int intVal = BitConverter.ToInt32(BitConverter.GetBytes(FloatVal));
                if (intVal < (1<<16))    // ints seem to be the first 16 bits, 0-65536 - and only used as offsets(?)
                {
                    return (ushort)intVal;
                }
                return null;
            }
        }

        // Kind.Globaldef
        public ushort? _globaldef_type;
        public int? _globaldef_s_name;
        private string? _globaldef_name_overwrite;

        private int DEF_SAVEGLOBAL = (1 << 15);
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

        public Types? Type
        {
            get
            {
                if(_globaldef_type == null)
                {
                    return null;
                }
                if(SaveGlobal)
                {
                    return (Types)(_globaldef_type - DEF_SAVEGLOBAL);
                }
                return (Types)(_globaldef_type);
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
                switch (Type)
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
                    default:
                        return "/* ERROR: UNKNOWN TYPE */";
                }
            }
        }

        public static List<string> strings;
        public static Dictionary<int, int> stringOffsetMap;

        public string? GlobaldefName
        {
            set // Overwrite with a custom name
            {
                _globaldef_name_overwrite = value;
            }
        }

        // Kind.Function
        // If this global is an offset to a function
        public int? FunctionNumber;
        public string? FunctionName;

        // Kind.Field
        // If this global is an offset to a field
        public int? FieldNumber;
        public string? FieldName;
        public ushort? _fields_type;
        public Types? FieldType
        {
            get
            {
                if (_fields_type == null)
                {
                    return null;
                }
                return (Types)(_fields_type);
            }
        }

        public string? ValueSource; // the source code for the source of the value being stored in this global

        public string? Name
        {
            get
            {
                if (Kind == GlobalKind.Function)
                {
                    if (FunctionNumber > 0) { return FunctionName; }
                    return null;
                }
                if (Kind == GlobalKind.Field)
                {
                    if (FieldNumber > 0) { return FieldName; }
                    return null;
                }
                if (_globaldef_name_overwrite != null)
                {
                    return _globaldef_name_overwrite;
                }
                if (_globaldef_s_name is null || _globaldef_s_name == 0)
                {
                    return null;
                }
                return strings[stringOffsetMap[(int)_globaldef_s_name]];
            }
        }

        // if this is an immediate string, get the string pointed to and escape special chars before returning
        private string CleanseImmediateString()
        {
            string stringToCleanse = strings[stringOffsetMap[(int)IntVal]];
            for(int i = 0; i < stringToCleanse.Length; i++)
            {
                // Can't use string.Replace as need to replace char with string
                if(stringToCleanse[i] == '\n')
                {
                    stringToCleanse = stringToCleanse.Substring(0, i) + "\\n" + stringToCleanse.Substring(i + 1);
                }
                if(stringToCleanse[i] == '\"')
                {
                    stringToCleanse = stringToCleanse.Substring(0, i) + "\\" + '"' + stringToCleanse.Substring(i + 1);
                }
            }
            return '"' + stringToCleanse + '"';
        }

        public static List<Global> globalList;

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
                        return "'" + FloatVal.ToString("F3") + " " + (globalList[id + 1].FloatVal).ToString("F3") + " " + (globalList[id + 2].FloatVal).ToString("F3") + "'";
                    default:
                        return "/* ERROR ImmediateValue for " + Type + " */";
                }
            }
        }

        // If this globaldef is being assigned to something else
        public string ValueToAssign
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
    }

    partial class DeQCC
    {
        public int highestGlobalAccessed;
        //Dictionary<int, string> globalMap = new Dictionary<int, string>();
        List<Global> globalList = new List<Global>();
        ushort indent = 0;

        // Check for presence of operators in the string, and if so, bracket it
        // used when combining two potential calculations, e.g. a + b
        // to check whether a or b need brackets
        // Note this doesn't actually check for precedence, it just brackets
        // operations in the order they were performed in bytecode (thus
        // preserving the original precedence from the source file)
        string CheckPrecedence(string input)
        {
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
            int highestGlobalAccessed = 0;
            ReadData(name);
            InitGlobalList();

            DecompileFunctions(outputfolder);
        }

        void InitGlobalList()
        {
            // Get all of the possible information for a given global

            // Allow the globals to access the strings data, and other globals
            Global.strings = strings;
            Global.stringOffsetMap = stringOffsetMap;
            Global.globalList = globalList;

            // Get the value
            int id = 0;
            foreach(float f in pr_globals)
            {
                Global g = new Global();
                g.id = id++;
                g.FloatVal = f;
                g._globaldef_type = null;
                g._globaldef_s_name = null;
                g.FunctionNumber = null;
                g.FunctionName = null;
                g.FieldNumber = null;
                g.FieldName = null;
                g._fields_type = null;
                g.ValueSource = null;
                globalList.Add(g);
            }

            // Reserved offsets
            globalList[OFS_NULL].GlobaldefName = "OFS_NULL";
            globalList[OFS_RETURN].GlobaldefName = "OFS_RETURN";
            globalList[OFS_RETURN+1].GlobaldefName = "OFS_RETURN_y";
            globalList[OFS_RETURN+2].GlobaldefName = "OFS_RETURN_z";
            globalList[OFS_PARM0].GlobaldefName = "OFS_PARM0";
            globalList[OFS_PARM0+1].GlobaldefName = "OFS_PARM0_y";
            globalList[OFS_PARM0+2].GlobaldefName = "OFS_PARM0_z";
            globalList[OFS_PARM1].GlobaldefName = "OFS_PARM1";
            globalList[OFS_PARM1+1].GlobaldefName = "OFS_PARM1_y";
            globalList[OFS_PARM1+2].GlobaldefName = "OFS_PARM1_z";
            globalList[OFS_PARM2].GlobaldefName = "OFS_PARM2";
            globalList[OFS_PARM2+1].GlobaldefName = "OFS_PARM2_y";
            globalList[OFS_PARM2+2].GlobaldefName = "OFS_PARM2_z";
            globalList[OFS_PARM3].GlobaldefName = "OFS_PARM3";
            globalList[OFS_PARM3+1].GlobaldefName = "OFS_PARM3_y";
            globalList[OFS_PARM3+2].GlobaldefName = "OFS_PARM3_z";
            globalList[OFS_PARM4].GlobaldefName = "OFS_PARM4";
            globalList[OFS_PARM4+1].GlobaldefName = "OFS_PARM4_y";
            globalList[OFS_PARM4+2].GlobaldefName = "OFS_PARM4_z";
            globalList[OFS_PARM5].GlobaldefName = "OFS_PARM5";
            globalList[OFS_PARM5+1].GlobaldefName = "OFS_PARM5_y";
            globalList[OFS_PARM5+2].GlobaldefName = "OFS_PARM5_z";
            globalList[OFS_PARM6].GlobaldefName = "OFS_PARM6";
            globalList[OFS_PARM6+1].GlobaldefName = "OFS_PARM6_y";
            globalList[OFS_PARM6+2].GlobaldefName = "OFS_PARM6_z";
            globalList[OFS_PARM7].GlobaldefName = "OFS_PARM7";
            globalList[OFS_PARM7+1].GlobaldefName = "OFS_PARM7_y";
            globalList[OFS_PARM7+2].GlobaldefName = "OFS_PARM7_z";
            for(int i = 0; i < RESERVED_OFS; i++)
            {
                globalList[i].Kind = GlobalKind.Reserved;
            }

            // Match the globaldefs
            for (int i = 1; i < globals.Count; i++)
            {
                Def gd = globals[i];
                globalList[gd.ofs]._globaldef_type = gd.type;
                globalList[gd.ofs]._globaldef_s_name = gd.s_name;
                globalList[gd.ofs].Kind = GlobalKind.Globaldef;
                if(globalList[gd.ofs].Type == Types.ev_vector)
                {
                    // Skip the following _x which has the same offset
                    i++;
                }
            }

            // Links by offset
            foreach (Global g in globalList)
            {
                // If the globaldef is a function
                if (g.Type == Types.ev_function)
                {
                    g.Kind = GlobalKind.Function;
                    g.FunctionNumber = g.IntVal;
                    g.FunctionName = functions[(int)g.FunctionNumber].name;
                }

                // If the globaldef is a field
                if(g.Type == Types.ev_field)
                {
                    g.Kind = GlobalKind.Field;
                    g.FieldNumber = g.IntVal;
                    g.FieldName = fields[fieldsOffsetMap[(int)g.FieldNumber]].name;
                    g._fields_type = fields[fieldsOffsetMap[(int)g.FieldNumber]].type;
                }
            }
        }

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

        void DecompileFunctions(string folder)
        {
            qcOutputFile = new StreamWriter(folder + "newdecompilation.qc", false);    // overwrite
            qcOutputFile.AutoFlush = true;

            DecompileFunction(functions[66]);   // subs.qc SUB_Null
            DecompileFunction(functions[67]);   // subs.qc SUB_Remove
            DecompileFunction(functions[71]);   // subs.qc SUB_CalcMove
            DecompileFunction(functions[2088]); // oldone.qc finale_4

            DecompileFunction(functions[380]); // doors.qc DoorFire
            //DecompileFunction(functions[77]); // subs.qc SUB_UseTargets
            //DecompileFunction(functions[387]); // doors.qc LinkDoors
        }

        Global GetGlobal(int offset)
        {
            if(offset < 0) { return null; } // e.g. OP_GOTO which jumps backwards has negative s.a

            if (offset > highestGlobalAccessed)
            {
                // this is a never-before-seen offset, must either be:
                // immediate (if has globaldef info)
                // anonymous store of value (if no globaldef info)
                Global g = globalList[offset];
                if(g.Kind == GlobalKind.Globaldef)  // was listed in globaldefs, must be immediate
                {
                    // overwrite it with its value
                    g.Kind = GlobalKind.Immediate;
                    g.ValueSource = g.ImmediateValue;
                }
                else
                {
                    g.Kind = GlobalKind.Anonymous;
                }
            }
            return globalList[offset];
        }

        List<int> startOfDoLoop = new List<int>();

        void DecompileFunction(Function f)
        {
            //  Check for OP_IF codes which encode do while loops
            startOfDoLoop.Clear();
            int sIndex = f.first_statement;
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

            // Return type
            Print("voidTODO" + " ");

            // Set the highestGlobalAccessed to the end of params and locals
            // Otherwise it will trigger as an immediate when we process them
            highestGlobalAccessed = f.parm_start + f.locals - 1;

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
            Print(") ");
            Print(f.name);
            PrintLine(" =");
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

            sIndex = f.first_statement;
            while (true)
            {
                DecompileStatementNew(f, sIndex);
                if (statements[sIndex].op == 0)
                    break;
                sIndex++;
            }

            indent--;
            PrintLine("};");
            PrintLine("");
        }

        List<int> endofBlock = new List<int>(); // used to set statement numbers where indentation should be reduced

        void DecompileStatementNew(Function f, int sIndex)
        {
            // If we have reached the end of an indentation block, undo it
            while(endofBlock.Contains(sIndex))  // while as there might be more than one block ending on this statement
            {
                indent--;
                PrintLine("}");
                PrintLine("");
                endofBlock.Remove(sIndex);
            }

            while(startOfDoLoop.Contains(sIndex))   // probably only one do loop starting here, but while just in case...
            {
                PrintLine("do");
                PrintLine("{");
                indent++;
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
                            ushort saveIndent = indent;
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
