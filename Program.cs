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
            DeQCC p = new DeQCC();
            //p.DecompileProgsDat("vanillaprogs.dat", Directory.GetCurrentDirectory() + "\\vanillaoutput\\");
            p.NewDecompilation("vanillaprogs.dat", Directory.GetCurrentDirectory() + "\\vanillaoutput\\");
            //p = new DeQCC();
            //p.DecompileProgsDat("obots102progs.dat", Directory.GetCurrentDirectory() + "\\obotsoutput\\");
            
        }
    }
}

