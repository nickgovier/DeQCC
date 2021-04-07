using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    class Program
    {
        static void Main(string[] args)
        {
            string mod = "";
            mod = "vanilla";
            //mod = "obots";
            //mod = "airquake";
            //mod = "quess";
            //mod = "rally";
            //mod = "reaper";

            bool decompile = true;  // true to decompile inputprogs.dat into qc files, false to compare
            if (decompile)
            {
                DeQCC p = new DeQCC();
                p.Decompile(mod, "inputprogs.dat", decompile);
            }
            else
            {
                DeQCC original = new DeQCC();
                original.Decompile(mod, "inputprogs.dat", false);
                Strings.Clear();
                DeQCC decomped = new DeQCC();
                decomped.Decompile(mod, "progs.dat", false);

                // check number of functions
                if(original.functions.Count == decomped.functions.Count) { Console.Out.WriteLine("Function counts match"); }
                else { Console.Out.WriteLine("ERROR: Function counts do not match"); }

                List<string> statementErrors = new List<string>();
                List<string> globalErrors = new List<string>();
                List<string> bytecodeErrors = new List<string>();

                // check each function
                string originalBytecode = "";
                string decompedBytecode = "";
                for(int i = 1; i < original.functions.Count - 1; i++)
                {
                    int originalStatements = original.functions[i + 1].first_statement - original.functions[i].first_statement;
                    int originalglobals = original.functions[i + 1].parm_start - original.functions[i].parm_start;
                    int decompedStatements = decomped.functions[i + 1].first_statement - decomped.functions[i].first_statement;
                    int decompedglobals = decomped.functions[i + 1].parm_start - decomped.functions[i].parm_start;

                    /*
                    int s = original.functions[i].first_statement;
                    while(s > 0 && original.statements[s].Opcode != Opcodes.OP_DONE)
                    {
                        originalBytecode += original.statements[s].op.ToString("00") + "_";
                        s++;
                    }
                    s = decomped.functions[i].first_statement;
                    while (s > 0 && decomped.statements[s].Opcode != Opcodes.OP_DONE)
                    {
                        decompedBytecode += decomped.statements[s].op.ToString("00") + "_";
                        s++;
                    }
                    */

                    if (originalStatements != decompedStatements) { statementErrors.Add("ERROR: " + original.functions[i].file + " " + original.functions[i].name + " statements do not match"); }
                    if (originalglobals != decompedglobals) { globalErrors.Add("ERROR: " + original.functions[i].file + " " + original.functions[i].name + " globals do not match"); }
                    if(originalBytecode != decompedBytecode) { bytecodeErrors.Add("ERROR: " + original.functions[i].file + " " + original.functions[i].name + " bytecode doesn't match\noriginal: " + originalBytecode + "\ndecomped: " + decompedBytecode); }
                    //originalBytecode = decompedBytecode = "";
                }

                Console.Out.WriteLine("Statement errors:");
                foreach(string s in statementErrors) { Console.Out.WriteLine(s); }
                Console.Out.WriteLine("");
                Console.Out.WriteLine("Global errors:");
                foreach (string s in globalErrors) { Console.Out.WriteLine(s); }
                //Console.Out.WriteLine("");
                //Console.Out.WriteLine("Bytecode errors:");
                //foreach (string s in  bytecodeErrors) { Console.Out.WriteLine(s); }

            }
        }
    }
}

