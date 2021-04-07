// TODO
// GetGlobal overload with one param which just does the negative check but no other processing
// IFNOT
// get rid of all ushort casts for types
// Print/PrintLine indentation - check negative indent, also whether print it best place to indent if used sequentially on the same line

using System;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;

namespace DeQcc
{
    partial class DeQCC
    {
        List<Opcode> pr_opcodes = new List<Opcode>();
        List<float> pr_globals = new List<float>();

        public List<Statement> statements = new List<Statement>();
        public List<Function> functions = new List<Function>();
        List<Def> globals = new List<Def>();
        Dictionary<int, int> globalsOffsetMap = new Dictionary<int, int>();  // to look up global by offset
        List<Def> fields = new List<Def>();
        Dictionary<int, int> fieldsOffsetMap = new Dictionary<int, int>();  // to look up field by offset

        StreamWriter qcOutputFile;
        StreamWriter progsSrcOutputFile;

        // Maps for obfuscated progs.dat files
        Dictionary<string, string> nameMap = new Dictionary<string, string>();  // map autogen name to actual name
        Dictionary<int, string> fileMap = new Dictionary<int, string>();  // map function id to filename

        int highestGlobalAccessed;  // highest global processed so far in decompilation (used to detect globals between functions)
        List<Global> globalList = new List<Global>();
        int indent = 0;

        // Store statement numbers where we have to remember to do something
        List<int> startOfDoLoop = new List<int>();  // begin an upcoming do while loop
        List<int> endofBlock = new List<int>(); // reduce indentation

        //List<int> IFNOTisWhile = new List<int> { 659, 664, 5695, 5900, 6051, 6068, 1592, 1650, 20773, 20867, 20870, 20873, 3662, 4831, 4921 };  // all the IFNOT statements which are while loops

        public void Decompile(string outputfolder, string progsdatname, bool decompile)
        {
            string fulldirectorfolder = Directory.GetCurrentDirectory() + "\\" + outputfolder + "\\";

            // Output folder structure:
            // /outputfolder/
            // /outputfolder/inputprogs.dat <- will be read
            // /outputfolder/qc/ <- decompilation will be output here
            // /outputfolder/qcc.bat <- will compile the results of the decompilation
            // /outputfolder/progs.dat <- output of qcc.bat, to be compared with inputprogs.dat

            Strings.Clear();
            SetUpNameMaps(outputfolder);    // do this before reading the data so the mappings exist
            ReadProgsData(fulldirectorfolder, progsdatname, decompile);
            WriteProgsDataToCSV(fulldirectorfolder, decompile);

            if (!decompile) { return; }   // just load the data and return
            
            InitStaticData();   // do this after reading the data so the base data exists
            Preprocess();
            DecompileFunctions(fulldirectorfolder);
        }

        void Preprocess()
        {
            // Statics - allow the globals to access the other relevant data from the progs.dat
            Global.globalList = globalList;
            Global.functions = functions;
            Global.fields = fields;
            Global.fieldsOffsetMap = fieldsOffsetMap;

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
                globalList[gd.ofs].Name = gd.name; // name is already set by this point

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

                if(i < 3) { continue; } // skip the following code which looks backwards up to 3 globals to fix vector components

                // fix vector fields
                if (globalList[globals[i - 1].ofs].Type == Types.ev_field && globalList[globals[i - 1].ofs].FieldType == Types.ev_vector)
                {
                    globalList[gd.ofs].FieldType = Types.ev_float;
                    globalList[gd.ofs].NameOverride = globalList[globals[i - 1].ofs].Name + "_x";
                }
                if (globalList[globals[i - 2].ofs].Type == Types.ev_field && globalList[globals[i - 2].ofs].FieldType == Types.ev_vector)
                {
                    globalList[gd.ofs].FieldType = Types.ev_float;
                    globalList[gd.ofs].NameOverride = globalList[globals[i - 2].ofs].Name + "_y";
                }
                if (globalList[globals[i - 3].ofs].Type == Types.ev_field && globalList[globals[i - 3].ofs].FieldType == Types.ev_vector)
                {
                    globalList[gd.ofs].FieldType = Types.ev_float;
                    globalList[gd.ofs].NameOverride = globalList[globals[i - 3].ofs].Name + "_z";
                }
            }

            #endregion

            highestGlobalAccessed = RESERVED_OFS - 1;  // index to the next global to process

            for (int fIndex = 1; fIndex < functions.Count; fIndex++)
            {
                Function f = functions[fIndex];

                // Any globals not yet processed up until the start of this one are Globaldefs
                // e.g. perhaps the previous function ended but there are some defs before this one begins
                while(highestGlobalAccessed < (f.parm_start - 1))
                {
                    Global g = GetGlobal(highestGlobalAccessed + 1, false);
                    if (g.Kind == GlobalKind.Unknown)
                    {
                        g.Kind = GlobalKind.Globaldef;
                    }
                }

                // Process builtins
                if(f.IsBuiltin)
                {
                    int builtin = -f.first_statement;
                    // return type
                    f.declaration = DeQCC.GetTypeString(builtinsReturns[builtin]) + "(";
                    // args
                    for(int i = 0; i < f.numparms; i++)
                    {
                        // Some older QuakeC mods have the wrong number args for builtins
                        // e.g. droptofloor #34 takes 0 args but has 2 in old defs.qc files
                        // which seem to be copy/pasted from walkmove #32, the builtin above it
                        // if we are processing a builtin but the number of args is too high, skip
                        if(f.numparms > builtinsParms[builtin].Count) { break; }

                        f.declaration += DeQCC.GetTypeString(builtinsParms[builtin][i]) + " " + builtinsParmNames[builtin][i];
                        if(i < f.numparms - 1)
                        {
                            f.declaration += ", ";
                        }
                    }
                    // name
                    f.declaration += ") " + f.name + " = #" + builtin + ";";
                    // store the parm types
                    f.parm_types = builtinsParms[builtin];
                    f.returnType = builtinsReturns[builtin];
                    continue;
                }

                // Parameters
                //highestGlobalAccessed = f.parm_start - 1;
                f.declaration = "(";
                for (int parmIndex = 0; parmIndex < f.numparms; parmIndex++)
                {
                    Global parm = GetGlobal(highestGlobalAccessed + 1, false, GlobalKind.Parameter);
                    f.declaration += parm.TypeCodeOutput + " " + parm.Name;
                    f.parm_types.Add((Types)parm.Type);    // save the type for type checking when we proces an OP_CALL statement
                    if (parmIndex < f.numparms - 1) { f.declaration += ", "; }
                }
                f.declaration += ") " + f.name;

                // Locals
                while (highestGlobalAccessed < (f.parm_start + f.locals - 1))
                {
                    Global local = GetGlobal(highestGlobalAccessed + 1, false, GlobalKind.Local);
                    if(local.Type == Types.ev_function) { continue; } // OP_STATE functions can otherwise appear to have the next state function as a local
                    if(local.Type == null) { continue; }    // this was code ahead of the locals in the function definition
                    f.localDefs.Add("local " + local.TypeCodeOutput + " " + local.Name + ";");
                }

                f.returnType = Types.ev_void;

                // Loop through the statements of this function to find the return value
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
                    Global a = GetGlobal(s.a, true);
                    Global b = GetGlobal(s.b, true);
                    Global c = GetGlobal(s.c, true);

                    switch (s.Opcode)
                    {
                        case Opcodes.OP_IF:
                        case Opcodes.OP_IFNOT:
                        case Opcodes.OP_CALL0:
                        case Opcodes.OP_CALL1:
                        case Opcodes.OP_CALL2:
                        case Opcodes.OP_CALL3:
                        case Opcodes.OP_CALL4:
                        case Opcodes.OP_CALL5:
                        case Opcodes.OP_CALL6:
                        case Opcodes.OP_CALL7:
                        case Opcodes.OP_CALL8:
                            a.readBy.Add(statementIndex);
                            break;
                        case Opcodes.OP_RETURN:
                            if (a != null) { a.readBy.Add(statementIndex); }    // might be null if function doesn't return anything
                            break;
                        case Opcodes.OP_STATE:
                            a.readBy.Add(statementIndex); b.readBy.Add(statementIndex);
                            break;
                        case Opcodes.OP_ADD_F:
                        case Opcodes.OP_ADD_V:
                        case Opcodes.OP_SUB_F:
                        case Opcodes.OP_SUB_V:
                        case Opcodes.OP_MUL_F:
                        case Opcodes.OP_MUL_V:
                        case Opcodes.OP_MUL_FV:
                        case Opcodes.OP_MUL_VF:
                        case Opcodes.OP_DIV_F:
                        case Opcodes.OP_BITAND:
                        case Opcodes.OP_BITOR:
                        case Opcodes.OP_AND:
                        case Opcodes.OP_OR:
                        case Opcodes.OP_GE:
                        case Opcodes.OP_LE:
                        case Opcodes.OP_GT:
                        case Opcodes.OP_LT:
                        case Opcodes.OP_EQ_F:
                        case Opcodes.OP_EQ_V:
                        case Opcodes.OP_EQ_S:
                        case Opcodes.OP_EQ_E:
                        case Opcodes.OP_EQ_FNC:
                        case Opcodes.OP_NE_F:
                        case Opcodes.OP_NE_V:
                        case Opcodes.OP_NE_S:
                        case Opcodes.OP_NE_E:
                        case Opcodes.OP_NE_FNC:
                        case Opcodes.OP_ADDRESS:
                        case Opcodes.OP_LOAD_F:
                        case Opcodes.OP_LOAD_V:
                        case Opcodes.OP_LOAD_S:
                        case Opcodes.OP_LOAD_ENT:
                        case Opcodes.OP_LOAD_FLD:
                        case Opcodes.OP_LOAD_FNC:
                            a.readBy.Add(statementIndex); b.readBy.Add(statementIndex); c.writtenBy.Add(statementIndex);
                            if (c.Type == null) { c.Type = pr_opcodes[s.op].type_c; }
                            break;
                        case Opcodes.OP_NOT_F:
                        case Opcodes.OP_NOT_V:
                        case Opcodes.OP_NOT_S:
                        case Opcodes.OP_NOT_FNC:
                        case Opcodes.OP_NOT_ENT:
                            a.readBy.Add(statementIndex); c.writtenBy.Add(statementIndex);
                            if (c.Type == null) { c.Type = pr_opcodes[s.op].type_c; }
                            break;
                        case Opcodes.OP_STORE_F:
                        case Opcodes.OP_STORE_ENT:
                        case Opcodes.OP_STORE_FLD:
                        case Opcodes.OP_STORE_S:
                        case Opcodes.OP_STORE_FNC:
                        case Opcodes.OP_STORE_V:
                        case Opcodes.OP_STOREP_F:
                        case Opcodes.OP_STOREP_ENT:
                        case Opcodes.OP_STOREP_FLD:
                        case Opcodes.OP_STOREP_S:
                        case Opcodes.OP_STOREP_FNC:
                        case Opcodes.OP_STOREP_V:
                            a.readBy.Add(statementIndex); b.writtenBy.Add(statementIndex);
                            if (b.Type == null) { b.Type = pr_opcodes[s.op].type_b; }
                            if (b.Type == Types.ev_pointer) { b.TypePointedTo = a.Type; }
                            break;
                        case Opcodes.OP_DONE:
                        case Opcodes.OP_GOTO:
                            break;
                    }

                    // Check for return and set the type if found
                    if (s.Opcode == Opcodes.OP_RETURN)
                    {
                        if(s.a == 1)
                        {
                            // this is returning the result of a function call
                            // find the most recent call statement
                            int prevStatement = statementIndex - 1;
                            while(!(statements[prevStatement].Opcode >= Opcodes.OP_CALL0 && statements[prevStatement].Opcode <= Opcodes.OP_CALL8))
                            {
                                prevStatement--;
                            }
                            f.returnType = functions[(int)globalList[statements[prevStatement].a].IntVal].returnType;
                        }
                        else if (a != null && a.Type != null)
                        {
                            f.returnType = (Types)a.Type;
                        }
                        else
                        {
                            f.returnType = Types.ev_void;
                        }
                    }
                    statementIndex++;

                    // Check for OP_STATE shorthand function and unpack it
                    if (s.Opcode == Opcodes.OP_STATE)
                    {
                        f.state = "[" + a.ImmediateValue + ", " + b.ValueToAssign + "]";
                    }
                }

                // Set the return type
                f.declaration = DeQCC.GetTypeString(f.returnType) + " " + f.declaration;
            }

            // Check for fields which are functions
            // e.g. th_pain takes two arguments, from the original QC source we can see these are entity attacker, float damage
            // but there's no direct way to determine this from the field declaration itself (we only know th_pain is of type function)
            // this means if we decompile, then recompile, the compilation will fail when QuakeC tries to call th_pain with 2 arguments
            // when the field declaration has none.  This would be an easy manual fix, or even just hardcode the th_pain declaration
            // in the decompilation code to fix this specific problem, but what if a mod adds another function field which takes arguments?
            // This code detects whenever a field function is called from elseqehere in QuakeC, and if so, gets the types of the arguments
            // supplied so the function declaration can be correctly decompiled.
            // Algorithm
            // 1. find whenever a field function is assigned to a global
            // 2. see if that global is ever used in a CALL op (i.e. the field function is being called)
            // 3. detect the arguments of that call
            // 4. construct the field function declaration from the types of those arguments
            foreach (Global g in globalList)
            {
                if (g.Type == Types.ev_field && g.FieldType == Types.ev_function)   // this is a field function (e.g. th_pain)
                {
                    foreach (int readStatement in g.readBy) // for every statement reading this field function
                    {
                        // Should only be read in s.b of a LOAD or ADDRESS op, which saves the reference to s.c
                        Global c = globalList[statements[readStatement].c];

                        foreach(int callStatement in c.readBy) // Each statment which reads our field function reference
                        {
                            if(statements[callStatement].Opcode >= Opcodes.OP_CALL0 && statements[callStatement].Opcode <= Opcodes.OP_CALL8)
                            {
                                string declaration = ".";   // as it's a field

                                // does it return anything (i.e. does the next statement read from the return value?)
                                if (statements[callStatement + 1].a == OFS_RETURN)
                                {
                                    // get the return type
                                    declaration += DeQCC.GetTypeString(pr_opcodes[statements[callStatement + 1].op].type_a);
                                }
                                else
                                {
                                    // doesn't return anything
                                    declaration += "void";
                                }

                                // calc the args
                                int numargs = statements[callStatement].Opcode - Opcodes.OP_CALL0;
                                List<Types> argTypes = new List<Types>();
                                string args = "";
                                for (int i = 0; i < numargs; i++)
                                {
                                    // look backwards to find the most recent setting of this arg, and pluck the name and type from that setting
                                    int argStatement = callStatement - 1;  // the statement before the call
                                    while(true)
                                    {
                                        if(statements[argStatement].b == OFS_PARM0 + 3 * i)
                                        {
                                            Global arg = globalList[statements[argStatement].a];
                                            argTypes.Add((Types)arg.Type);
                                            args += DeQCC.GetTypeString(arg.Type) + " " + arg.Name;
                                            break;
                                        }
                                        argStatement--;
                                    }
                                    if (i < numargs - 1) { args += ", "; }
                                }

                                // append the function name
                                declaration += "(" + args +") " + g.Name;
                                g.FieldFunctionDeclaration = declaration;
                                g.FieldFunctionArgTypes = argTypes;
                                break;
                            }
                        }
                        if(g.FieldFunctionDeclaration != null) { break; }
                    }
                }
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

            // Prepare Globals for decompilation
            highestGlobalAccessed = RESERVED_OFS - 1;
            foreach(Global g in globalList) { g.accessed = false; }

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

        // calledFromFunction - are we getting this globaldef while we are processing a function (true) or is it outside of a function (false)
        //                    - note that this is only true if we are processing a function's statements (i.e. params and locals should set this false)
        // setKind - tell it to set the kind if we know what it should be from the calling context
        // expectedType - tell it what type we are expecting it to be (e.g. we want a float but this is a vector, so return the _x component)
        Global GetGlobal(int offset, bool calledFromFunction, GlobalKind? setKind = null, Types expectedType = Types.ev_void)
        {
            if(offset <= 0)
            {
                // some ops e.g. OP_GOTO where the parameters are actually backwards jumps have negative "offsets"
                // because they aren't really offsets, just instruction pointer deltas, so don't bother returning anything (it will be ignored)
                return null;
            }

            Global g = globalList[offset];

            if (setKind == GlobalKind.Local && (g.Type == null || (g.Type == Types.ev_string && g.IntVal != 0) || (g.Type == Types.ev_float && g.FloatVal != 0.0)))
            {
                // we are expecting a local but there wasn't a globaldef representing the type of this local
                // so it's actually due to code sitting ahead of the locals within a function.
                // e.g. shambler.qc sham_magic3()
                // Assume they are Anonymous variables and proceed on that basis
                setKind = null;
                calledFromFunction = true;
            }

            g.ExpectedType = expectedType;

            if (setKind != null)
            {
                g.Kind = (GlobalKind)setKind;
            }

            // if this is a newly accessed global
            if (!g.accessed)
            {
                if (calledFromFunction)
                {
                    // if we are calling this from inside a function and we haven't seen it before
                    // it must either be immediate (if it had a globaldef) or anonymous (if it didn't)
                    // anything else would be already seen by this point (fields, params, locals etc)
                    if (g.Kind == GlobalKind.Globaldef) { g.Kind = GlobalKind.Immediate; }
                    else if (g.Kind == GlobalKind.Unknown) { g.Kind = GlobalKind.Anonymous; }
                }

                if (g.Type == Types.ev_vector || (g.Type == Types.ev_pointer && g.TypePointedTo == Types.ev_vector))
                {
                    string name = "";
                    if (g.Name != null) { name = g.Name.Replace("_x", ""); } // strip off _x if it exists

                    // set the next two globals to floats for _y and _z
                    if (g.Kind == GlobalKind.Local || g.Kind == GlobalKind.Parameter || g.Kind == GlobalKind.Globaldef || globalList[offset + 1].Kind == GlobalKind.Unknown || globalList[offset + 1].Kind == GlobalKind.Anonymous)   // avoid overwriting something e.g. if this is just meant to access the float _x component and is not a real vector
                    {
                        Global y = GetGlobal(offset + 1, calledFromFunction, g.Kind);
                        y.Type = Types.ev_float;
                        y.Name = name + "_y";
                    }
                    if (g.Kind == GlobalKind.Local || g.Kind == GlobalKind.Parameter || g.Kind == GlobalKind.Globaldef || globalList[offset + 2].Kind == GlobalKind.Unknown || globalList[offset + 2].Kind == GlobalKind.Anonymous)   // avoid overwriting something e.g. if this is just meant to access the float _x component and is not a real vector
                    {
                        Global z = GetGlobal(offset + 2, calledFromFunction, g.Kind);
                        z.Type = Types.ev_float;
                        z.Name = name + "_z";
                    }
                }

                g.accessed = true;
            }

            // Track if this is the highest global accessed so far
            // only used in decompilation, not preprocessing
            if (g.ExpectedType != Types.ev_float && (g.Type == Types.ev_vector || (g.Type == Types.ev_pointer && g.TypePointedTo == Types.ev_vector)))
            {
                // Vectors share the x component but are followed by the y and z components
                // account for the _y and _z
                highestGlobalAccessed = Math.Max(highestGlobalAccessed, offset + 2);
            }
            else if (g.ExpectedType != Types.ev_float && (g.Kind == GlobalKind.Field && g.FieldType == Types.ev_vector))
            {
                // Fields are followed by all three components
                // account for the _x, _y, and _z
                highestGlobalAccessed = Math.Max(highestGlobalAccessed, offset + 3);
            }
            else
            {
                highestGlobalAccessed = Math.Max(highestGlobalAccessed, offset);
            }

            return g;
        }

        void DecompileFunction(Function f)
        {
            int sIndex;
            Console.Out.WriteLine("Function " + f.name + "(), parm_start:" + f.parm_start + " highestGlobalAccessed:" + highestGlobalAccessed);

            // Process any unprocessed globals following the previous function
            while (highestGlobalAccessed < (f.parm_start - 1))    // ends when highestGlobalAccessed == f.parm_start - 1
            {
                Global g = GetGlobal(highestGlobalAccessed + 1, false);
                if (g.Kind == GlobalKind.Function)
                {
                    if (g.Function.name == f.name)   // if it's this function
                    {
                        continue;   // do nothing, the definition will be output below
                    }
                    else
                    {
                        Print(g.Function.declaration);
                    }
                }
                else if (g.Kind == GlobalKind.Field && g.FieldType == Types.ev_function && g.FieldFunctionDeclaration != null)
                {
                    // if its a field that is a function and we managed to construct a fieldfunctiondefinition
                    // otherwise just print the default (which will be ".void () functionname")
                    Print(g.FieldFunctionDeclaration);
                }
                else
                {
                    Print(g.TypeCodeOutput + " " + g.Name);
                    if (g.IsConstant())  // Incredibly tiny positive FloatVals are actually IntVals (indices), so exclude these too
                    {
                        Print(" = " + g.ImmediateValue);
                    }
                    //else
                    //{
                    //    Print(" /* = " + g.ImmediateValue + " */");
                    //}
                }
                PrintLine(";");
            }

            // Check for builtin functions
            if(f.IsBuiltin)
            {
                PrintLine(f.declaration);
                return;
            }

            // Print the bytecode
            PrintLine("// " + f.name);
            PrintLine("// function begins at statement " + f.first_statement + ", parm_start=" + f.parm_start);
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
            PrintLine(f.declaration + " = " + f.state);
            PrintLine("{");
            indent++;

            // Print the locals
            foreach(string l in f.localDefs)
            {
                PrintLine(l);
            }

            // we don't access the parm/local globals here (already done when calcuating the function declaration) so account for them
            if (f.locals == 0 && f.numparms > 0)
            {
                // if there are no locals, locals=0, if there are, locals = locals+parms
                int parmsize = 0;
                for(int i = 0; i < f.numparms; i++)
                {
                    parmsize += f.parm_size[i];
                }
                highestGlobalAccessed += parmsize;
            }
            else
            {
                highestGlobalAccessed += f.locals;  
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

            // Should never happen
            if(indent != 0)
            {
                //throw new Exception("INDENT");
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
            Global a = GetGlobal(s.a, true, null, pr_opcodes[s.op].type_a);
            Global b = GetGlobal(s.b, true, null, pr_opcodes[s.op].type_b);
            Global c = GetGlobal(s.c, true, null, pr_opcodes[s.op].type_c);

            // Process the opcode
            switch (s.Opcode)
            {
                case Opcodes.OP_DONE:
                    // end of function, do nothing
                    break;
                case Opcodes.OP_RETURN:
                    if (a != null) { PrintLine("return " + a.ValueToAssign + ";"); }
                    else { PrintLine("return;"); }
                    break;
                case Opcodes.OP_STATE:
                    // already processed as part of the function declaration
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

                        // fix for misc_lavaball where there is an equality inside an if block
                        if(c.readBy.Count == 0)
                        {
                            PrintLine(c.ValueSource + "; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?");
                        }
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
                        // store the type for later reference
                        // in particular in case this is a vector and we later meant to refer only to the float _x component
                        c.Type = b.FieldType;
                        if (b.FieldType == Types.ev_function)
                        {
                            // if it's a function, also send across the arg types
                            c.FieldFunctionArgTypes = b.FieldFunctionArgTypes;
                        }
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
                        if (s.a == 1)
                        {
                            // if we are assigning the return value from a function call, overwrite the type
                            // e.g. bytecode might call OP_STORE_V for a function which actually returns a float
                            // this can happen e.g. if random() is being used in an operation, e.g.
                            // fight.qc ai_melee, where random() calls are chained together, it can start appending _x to the function name
                            // if it thinks it was returning a vector and later we try to access it as a float
                            b.Type = Types.ev_function;
                        }
                        else
                        {
                            b.Type = a.Type;
                        }
                    }
                    else
                    {
                        string output;
                        if (b.Kind == GlobalKind.Anonymous && b.ValueSource != null)
                        {
                            output = b.ValueSource + " = " + a.ValueToAssign;
                        }
                        else
                        {
                            output = b.Name + " = " + a.ValueToAssign;
                        }

                        // fix for multiple assignments, e.g. self.currentammo = self.ammo_shells = self.ammo_shells - 1; in weapons.qc W_FireShotgun
                        Statement nextS = statements[sIndex + 1];
                        // if the next statement is also a store using the same value, but not as a parameter to a function call
                        if (!a.IsConstant() && nextS.Opcode >= Opcodes.OP_STORE_F && nextS.Opcode <= Opcodes.OP_STOREP_FNC && nextS.a == s.a && nextS.b >= RESERVED_OFS)
                        {
                            // just store the assignment ready to be written in the next statement
                            a.ValueToAssign = output;
                        }
                        else
                        {
                            PrintLine(output + ";");
                            // clear the ValueToAssign override if it exists
                            a.ValueToAssign = null;
                        }
                    }
                    break;
                case Opcodes.OP_CALL0: case Opcodes.OP_CALL1: case Opcodes.OP_CALL2: case Opcodes.OP_CALL3: case Opcodes.OP_CALL4: case Opcodes.OP_CALL5: case Opcodes.OP_CALL6: case Opcodes.OP_CALL7: case Opcodes.OP_CALL8:
                    // Get the args
                    int numargs = s.Opcode - Opcodes.OP_CALL0;
                    string args = "";
                    for (int i = 0; i < numargs; i++)
                    {
                        List<Types> argTypes;
                        if (a.Type == Types.ev_function && a.IntVal == 0)    // it's actually a field
                        {
                            argTypes = a.FieldFunctionArgTypes;
                        }
                        else
                        {
                            argTypes = a.Function.parm_types;
                        }
                        globalList[OFS_PARM0 + 3 * i].ExpectedType = argTypes[i];   // set the expected type of the argument before we access it
                        args += globalList[OFS_PARM0 + 3 * i].ValueSource;
                        if (i < numargs - 1) { args += ", "; }
                    }

                    // get the correct function name
                    string name;
                    if (a.Type == Types.ev_function && a.IntVal == 0)    // it's actually a field
                    {
                        name = a.ValueSource;
                    }
                    else
                    {
                        name = a.Function.name;
                    }

                    // Check to see if the return value is used before the next call statement (or end of function)
                    bool returnUsed = false;
                    int nextStatement = sIndex + 1;
                    while(statements[nextStatement].Opcode != Opcodes.OP_DONE &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL0 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL1 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL2 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL3 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL4 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL5 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL6 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL7 &&
                        statements[nextStatement].Opcode != Opcodes.OP_CALL8)
                    {
                        if(statements[nextStatement].a == OFS_RETURN || statements[nextStatement].b == OFS_RETURN)
                        {
                            returnUsed = true;
                            break;
                        }
                        nextStatement++;
                    }

                    if (!returnUsed)
                    {
                        PrintLine(name + "(" + args + ");");    // it's a standalone function call
                    }
                    else
                    {
                        // Otherwise save it for the next assignment to use
                        globalList[OFS_RETURN].ValueSource = name + "(" + args + ")";
                    }
                    break;
                case Opcodes.OP_IF:
                    // end of a do loop
                    indent--;
                    PrintLine("} while (" + a.ValueToAssign + ");");
                    break;
                case Opcodes.OP_IFNOT:
                    // Get statement immediately before the target of this jump
                    Statement oneBeforeTarget = statements[sIndex + s.b - 1];

                    // Check for a while loop
                    if (oneBeforeTarget.Opcode == Opcodes.OP_GOTO && (-oneBeforeTarget.a >= (s.b - 1)))
                    {
                        // while loops jump forward to the statement after a GOTO which jumps back to either before this IFNOT
                        // if there is an equality to check on each loop (a jumps back by s.b or more), or the GOTO jumps back
                        // to this actual statement if there is no check e.g. while(1) (a jumps back by (s.b - 1).
                        // It's (s.b - 1) because s.b actually jumps to the statement AFTER the GOTO, so the GOTO jumps back s.b - 1
                        // to get back to the IFNOT.
                        PrintLine("");
                        PrintLine("while(" + a.ValueToAssign + ")");

                        //if (IFNOTisWhile.Contains(sIndex))
                        //{
                        //    Console.Out.WriteLine("Correctly found while loop in " + f.name + " at " + sIndex);
                        //}
                        //else
                        //{
                        //    Console.Out.WriteLine("ERROR I found a while loop that should really be an IF in " + f.name + " at " + sIndex);
                        //}
                    }
                    // Must be an if block
                    else
                    {
                        // IFNOTs that jump just beyond a GOTO have a subsequent else if/else (which the GOTO skips over), otherwise it's an if with no else

                        // Set the desination info correctly:
                        if (oneBeforeTarget.Opcode != Opcodes.OP_GOTO || (oneBeforeTarget.Opcode == Opcodes.OP_GOTO && oneBeforeTarget.a < 0))
                        {
                            // there is no subsequent if block, so remember to undo the indentation at the end of the block
                            PrintLine("");
                            endofBlock.Add(sIndex + s.b);   // Note when to undo the if indentation, as we don't have a goto to do it
                        }
                        PrintLine("if(" + a.ValueToAssign + ")");

                        //if (IFNOTisWhile.Contains(sIndex))
                        //{
                        //    Console.Out.WriteLine("ERROR I found an if block that should really be a WHILE in " + f.name + " at " + sIndex);
                        //}
                        //else
                        //{
                        //    //Console.Out.WriteLine("Correctly found if block in " + f.name + " at " + sIndex);
                        //}
                    }
                    PrintLine("{");
                    indent++;
                    break;
                case Opcodes.OP_GOTO:
                    // GOTO might be the end of a while or the end of a if/else if
                    // Close the current scope
                    indent--;
                    PrintLine("}");
                    if(s.a < 0)
                    {
                        // End of a while loop
                        // Newline after the while block just for clarity
                        PrintLine("");
                    }
                    else
                    {
                        // This GOTO is part of an if block, and only exists if there is an else block
                        PrintLine("else");
                        PrintLine("{");
                        indent++;
                        endofBlock.Add(sIndex + s.a);   // make sure we unwind this block as there will be no IFNOT or GOTO to do so
                    }
                    break;
                default:
                    throw new Exception("Unprocessed opcode " + s.Opcode + " " + " at statement " + sIndex);
            }
        }
    }
}
