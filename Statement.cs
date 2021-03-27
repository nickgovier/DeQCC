using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    enum GotoType { None, EndWhile, EndIf }

    class Statement
    {
        public ushort op;
        public short a, b, c;

        public Opcodes Opcode
        {
            get { return (Opcodes)(op % 100); }
        }

        public override string ToString()   // used to write out the bytecode at the head of every function
        {
            return Opcode.ToString() + "\t" + a.ToString() + "\t" + b.ToString() + "\t" + c.ToString();
        }

        public GotoType gotoType;   // Just used for GOTOs to properly process the end of IFNOT blocks
    }
}
