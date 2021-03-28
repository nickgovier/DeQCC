using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    class Function
    {
        public int first_statement;    // negative numbers are builtins

        public int parm_start;
        public int locals;         // total ints of parms + locals

        public int profile;        // runtime

        public int s_name;
        public int s_file;         // source file defined in

        public int numparms;
        public byte[] parm_size = new byte[8];

        public string name;
        public string file;

        public string declaration;   // The return type, arguments, and function name
        public string? state;        // The unpacked contents of the OP_STATE instruction if this function has one

        public List<string> localDefs = new List<string>(); // store the locals code to be written out at the top of the function definition

        public bool IsBuiltin   // is this function a builtin?
        {
            get
            {
                return first_statement < 0;
            }
        }

        public List<Types> parm_types = new List<Types>();  // store the type of each parameter
    }
}
