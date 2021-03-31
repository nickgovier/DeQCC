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
            p.Decompile("vanilla", false);
            //p.Decompile("obots", false);
            //p.Decompile("airquake", false);
            //p.Decompile("quess", false);
            //p.Decompile("rally", false);
            //p.Decompile("reaper", false);

            DeQCC q = new DeQCC();
            q.Decompile("vanilla", true);
        }
    }
}

