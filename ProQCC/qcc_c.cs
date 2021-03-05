using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    partial class ProQCC
    {
        float[] pr_globals = new float[MAX_REGS];
        int numpr_globals;

        char[] strings = new char[MAX_STRINGS];
        int strofs;

        dstatement_t[] statements = new dstatement_t[MAX_STATEMENTS];
        int numstatements;
        int[] statement_linenums = new int[MAX_STATEMENTS];

        dfunction_t[] functions = new dfunction_t[MAX_FUNCTIONS];
        int numfunctions;

        ddef_t[] globals = new ddef_t[MAX_GLOBALS];
        int numglobaldefs;

        ddef_t[] fields = new ddef_t[MAX_FIELDS];
        int numfielddefs;

        public void InitData()
        {
            int i;

            numstatements = 1;
            strofs = 1;
            numfunctions = 1;
            numglobaldefs = 1;
            numfielddefs = 1;

            def_ret.ofs = OFS_RETURN;
            for (i = 0; i < MAX_PARMS; i++)
            {
                def_parms[i] = new def_t(); // NG
                def_parms[i].ofs = OFS_PARM0 + 3 * i;
            }
        }
    }
}
