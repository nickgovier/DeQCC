using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
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

    class Def
    {
        public ushort type;	// if DEF_SAVEGLOBGAL bit is set
        // the variable needs to be saved in savegames

        public Types Type
        {
            get
            {
                return (Types)type;
            }
        }

        public ushort ofs;
        public int s_name;

        public string name;

        public override string ToString()
        {
            return "Ofs: " + ofs + " name: " + name + " (" + s_name + ")";
        }
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


        List<Statement> statements = new List<Statement>();
        List<Function> functions = new List<Function>();
        List<Def> globals = new List<Def>();
        Dictionary<int, int> globalsOffsetMap = new Dictionary<int, int>();  // to look up global by offset
        List<Def> fields = new List<Def>();
        Dictionary<int, int> fieldsOffsetMap = new Dictionary<int, int>();  // to look up field by offset

        StreamWriter qcOutputFile;
        StreamWriter progsSrcOutputFile;
        Dictionary<int,string> DecompileProfiles = new Dictionary<int, string>();

        Dictionary<int, string> builtins = new Dictionary<int, string>();
        Dictionary<int, string> immediates = new Dictionary<int, string>();   // used in DecompileImmediate()

        // Maps for obfuscated progs.dat files
        Dictionary<string, string> nameMap = new Dictionary<string, string>();  // map autogen name to actual name
        Dictionary<string, string> fileMap = new Dictionary<string, string>();  // map function name to filename

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
                            fname = DeQCC.GetTypeString(par.Type) + " ";
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
                line = DeQCC.GetTypeString(def.Type) + " " + def.name;
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
                    line = CleanseString(Strings.GetString(intVal));
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

        Def? GetGlobalByOffset(int ofs)
        {
            if (globalsOffsetMap.ContainsKey(ofs))
            {
                return globals[globalsOffsetMap[ofs]];
            }
            return null;
        }

        /*
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
        */

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

                                qcOutputFile.WriteLine("." + DeQCC.GetTypeString(ef.Type) + " " + ef.name + ";");
                            }
                            else
                            {
                                if (par.type == (ushort)Types.ev_vector)
                                {
                                    i += 2;
                                }

                                if (par.type == (ushort)Types.ev_entity || par.type == (ushort)Types.ev_void)
                                {
                                    qcOutputFile.WriteLine(DeQCC.GetTypeString(par.Type) + " " + par.name + ";");
                                }
                                else
                                {
                                    line = ValueString((Types)par.type, par.ofs);

                                    if ((par.name.Length > 1) &&
                                        Char.IsUpper((par.name)[0]) &&
                                        (Char.IsUpper((par.name)[1]) || (par.name)[1] == '_'))  // TODO
                                    {
                                        qcOutputFile.WriteLine(DeQCC.GetTypeString(par.Type) + " " + par.name + " = " + line + ";");
                                    }
                                    else
                                    {
                                        qcOutputFile.WriteLine(DeQCC.GetTypeString(par.Type) + " " + par.name + " /* = " + line + " */;");
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
                DecompileStatementOld(df, dsIndex, ref indent);
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

        void DecompileStatementOld(Function df, int sIndex, ref int indent)
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
