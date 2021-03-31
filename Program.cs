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
            bool decompile = true;  // true to decompile inputprogs.dat into qc files, false to load progs.dat and output csvs only
            
            DeQCC p = new DeQCC();
            p.Decompile(mod, decompile);
        }
    }
}

