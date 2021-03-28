using System;
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
    }
}
