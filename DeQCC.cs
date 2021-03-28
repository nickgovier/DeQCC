﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    partial class DeQCC
    {
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


        // Maps for obfuscated progs.dat files
        Dictionary<string, string> nameMap = new Dictionary<string, string>();  // map autogen name to actual name
        Dictionary<string, string> fileMap = new Dictionary<string, string>();  // map function name to filename

        Def? TODELETEGetGlobalByOffset(int ofs) { return null;  }

        void TODELETEDecompileFunctionDef(int funcIndex)
        {
            int findex;
            int dsIndex, tsIndex;   // NG
            Statement ds, ts;
            Function df;
            Def par;
            string arg2;
            ushort dom, tom;

            int kIndex;
            Statement k;
            int dum;

            df = functions[funcIndex];
            findex = funcIndex;

            // DO PRECEDING GLOBALDEFS

            // IF BUILTIN, PRINT DECLARATION AND RETURN

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

            // PRINT FUNCTION DECLARATION

            // handle state functions e.g. animation frames for monsters
            dsIndex = df.first_statement;
            ds = statements[dsIndex];

            if (ds.op == (ushort)Opcodes.OP_STATE)
            {
                par = TODELETEGetGlobalByOffset(ds.a);
                if (par is null) { throw new Exception("Error - Can't determine frame number."); }

                arg2 = TODELETEGet(df, ds.b, null);
                if (arg2 is null) { throw new Exception("Error - No state parameter with offset " + ds.b + "."); }

                qcOutputFile.Write(" = [ " /*+ ValueString((Types)par.type, par.ofs)*/ + ", " + arg2 + " ]");
            }
            else
            {
                qcOutputFile.Write(" =");
            }
            qcOutputFile.WriteLine(" {");
            qcOutputFile.WriteLine();

            // PRINT LOCALS

            // decompile the statements
        }

        string? TODELETEGet(Function df, int ofs, Types? req_t) { return null; }
        string? TODELETEGlobalVal(int ofs, Types? req_t) { return null; }

        void TODELETEIndent(int c){}

        void TODELETEDecompileStatementOld(Function df, int sIndex, ref int indent)
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

            ushort doc = (ushort)(dom / 10000);             // start of do
            ushort ifc = (ushort)((dom % 10000) / 100);     // end of block

            // remove all program flow information 
            s.op %= 100;

            typ1 = pr_opcodes[s.op].type_a;
            typ2 = pr_opcodes[s.op].type_b;
            typ3 = pr_opcodes[s.op].type_c;

            // states are handled at top level 


            if (s.op == (ushort)Opcodes.OP_IFNOT)
            {
                arg1 = TODELETEGet(df, s.a, null);
                arg2 = TODELETEGlobalVal(s.a, null);

                if (s.op == (ushort)Opcodes.OP_IFNOT)
                {
                    // get instruction right before the target 
                    int tIndex = sIndex + s.b - 1;
                    t = statements[tIndex];
                    tom = (ushort)(t.op % 100);

                    if (tom != (ushort)Opcodes.OP_GOTO)
                    {
                        // pure if 
                        // PRINT IF STATEMENT
                        qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                        qcOutputFile.WriteLine();
                        indent++;
                    }
                    else
                    {
                        if (t.a > 0)
                        {
                            // if-then-else
                            // PRINT IF STATEMENT
                            qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                            qcOutputFile.WriteLine();
                            indent++;
                        }
                        else
                        {
                            if ((t.a + s.b) > 1)
                            {
                                // pure if
                                // PRINT IF STATEMENT
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
                                    qcOutputFile.WriteLine("while ( " + arg1 + " ) {");
                                    qcOutputFile.WriteLine();
                                    indent++;
                                }
                                else
                                {
                                    // pure if
                                    // PRINT IF STATEMENT
                                    qcOutputFile.WriteLine("if ( " + arg1 + " ) {");
                                    qcOutputFile.WriteLine();
                                    indent++;
                                }
                            }
                        }
                    }
                }
            }
            else if (s.op == (ushort)Opcodes.OP_GOTO)
            {
                if (s.a > 0)
                {
                    // else 
                    indent--;
                    qcOutputFile.WriteLine();
                    TODELETEIndent(indent);
                    qcOutputFile.WriteLine("} else {");
                    qcOutputFile.WriteLine();
                    indent++;
                }
                else
                {
                    // while 
                    indent--;
                    qcOutputFile.WriteLine();
                    TODELETEIndent(indent);
                    qcOutputFile.WriteLine("}");
                }
            }

            return;
        }

    }
}
