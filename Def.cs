using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    class Def
    {
        public ushort type;	// if DEF_SAVEGLOBGAL bit is set
        // the variable needs to be saved in savegames

        public Types Type
        {
            get
            {
                return (Types)type;
            }
        }

        public ushort ofs;
        public int s_name;

        public string name;

        public override string ToString()
        {
            return "Ofs: " + ofs + " name: " + name + " (" + s_name + ")";
        }
    }
}
