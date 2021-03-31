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
            //p.Decompile("vanilla");
            //p.Decompile("obots");
            //p.Decompile("airquake");
            //p.Decompile("quess");
            //p.Decompile("rally");
            p.Decompile("reaper");
        }
    }
}

