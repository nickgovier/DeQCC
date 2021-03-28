using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    class Statement
    {
        public ushort op;
        public short a, b, c;

        public Opcodes Opcode
        {
            get { return (Opcodes)op; }
        }

        public override string ToString()   // used to write out the bytecode at the head of every function
        {
            return Opcode.ToString() + "\t" + a.ToString() + "\t" + b.ToString() + "\t" + c.ToString();
        }
    }
}
