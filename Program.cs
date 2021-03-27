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
            p.Decompile("vanilla");
        }
    }
}

