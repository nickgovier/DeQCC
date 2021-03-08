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
            ProQCC p = new ProQCC();
            //p.DecompileProgsDat("vanillaprogs.dat", Directory.GetCurrentDirectory() + "\\output\\");
            p.DecompileProgsDat("obots102progs.dat", Directory.GetCurrentDirectory() + "\\obotsoutput\\");

            
            // Now cross check with original source to highlight differences

            string newfiles = Directory.GetCurrentDirectory() + "\\output\\";
            string oldfiles = Directory.GetCurrentDirectory() + "\\target\\";

            checkFile(newfiles, oldfiles, "progs.src");

            StreamReader progssrc = new StreamReader(File.Open(newfiles + "progs.src", FileMode.Open));
            while(true)
            {
                string line = progssrc.ReadLine();
                if(line == null)
                {
                    Console.Out.WriteLine("Finished");
                    break;
                }

                if(line.EndsWith(".qc"))
                {
                    checkFile(newfiles, oldfiles, line);
                }
            }
        }

        static void checkFile(string newfolder, string oldfolder, string filename)
        {
            StreamReader newsr = new StreamReader(File.Open(newfolder + filename, FileMode.Open));
            StreamReader oldsr = new StreamReader(File.Open(oldfolder + filename, FileMode.Open));

            while(true)
            {
                string newline = newsr.ReadLine();
                string oldline = oldsr.ReadLine();

                if(newline == null && oldline == null)
                {
                    Console.Out.WriteLine(filename + " is equal");
                    newsr.Close(); oldsr.Close();
                    return;
                }

                if(newline == null && oldline != null)
                {
                    Console.Out.WriteLine(filename + " new is shorter than old");
                    newsr.Close(); oldsr.Close();
                    return;
                }

                if(newline != null && oldline == null)
                {
                    Console.Out.WriteLine(filename + " new is longer than old ");
                    newsr.Close(); oldsr.Close();
                    return;
                }

                if(newline != oldline)
                {
                    Console.Out.WriteLine(filename + " is different");
                    Console.Out.WriteLine("Expected " + oldline);
                    Console.Out.WriteLine("Got      " + newline);
                }
            }
        }
    }
}

