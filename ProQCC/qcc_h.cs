using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    // offsets are always multiplied by 4 before using
    using gofs_t = System.Int32;		// offset in global data block

    class type_t
    {
        public etype_t type;
        public def_t def;   // NG ptr		// a def that points to this type

        public type_t next; // NG ptr
        // function types are more complex
        public type_t aux_type; // NG ptr	// return type or field type

        public int num_parms;      // -1 = variable args

        public type_t[] parm_types = new type_t[ProQCC.MAX_PARMS];    // NG ptr	// only [num_parms] allocated
    }

    class def_t
    {
        public type_t type;    // NG ptr
        public char name;  // NG ptr
        public def_t next;
        public def_t prev;    // NG ptrs
        public gofs_t ofs;
        public def_t scope;	// NG ptr // function the var was defined in, or NULL

        public int initialized;        // 1 when a declaration included "= immediate"
    }

    class opcode_t
    {
        public string name;
        public string opname;
        public int priority;
        public bool right_associative;
        public def_t type_a;
        public def_t type_b;
        public def_t type_c;

        public opcode_t(string _name, string _opname, int _priority, bool _right_associative, def_t _type_a, def_t _type_b, def_t _type_c)
        {
            name = _name;
            opname = _opname;
            priority = _priority;
            right_associative = _right_associative;
            type_a = _type_a;
            type_b = _type_b;
            type_c = _type_c;
        }
    }

    partial class ProQCC
    {
        public const int MAX_PARMS = 8;

        const int MAX_REGS = 100000;

        const int OFS_NULL = 0;
        const int OFS_RETURN = 1;
        const int OFS_PARM0 = 4;    // leave 3 ofs for each parm to hold vectors
        const int OFS_PARM1 = 7;
        const int OFS_PARM2 = 10;
        const int OFS_PARM3 = 13;
        const int OFS_PARM4 = 16;
        const int RESERVED_OFS = 28;

        const int MAX_STRINGS = 1000000;
        const int MAX_GLOBALS = 80000;
        const int MAX_FIELDS = 2048;
        const int MAX_STATEMENTS = 131072;
        const int MAX_FUNCTIONS = 16384;

        def_t def_ret = new def_t();
        def_t[] def_parms = new def_t[MAX_PARMS];
        def_t def_void = new def_t();
        def_t def_string = new def_t();
        def_t def_float = new def_t();
        def_t def_vector = new def_t();
        def_t def_entity = new def_t();
        def_t def_field = new def_t();
        def_t def_function = new def_t();
        def_t def_pointer = new def_t();

        List<opcode_t> pr_opcodes = new List<opcode_t>();
    }
}
