using System;
using System.Collections.Generic;

namespace DeQcc
{
    enum Types
    {
        ev_void, ev_string, ev_float, ev_vector, ev_entity, ev_field, ev_function, ev_pointer,
        ev_fieldstring  // field that points to a string
    }

    enum GlobalKind
    {
        Unknown,
        Reserved,
        Function,
        Field,
        Immediate,
        Local,
        Parameter,
        Anonymous,
        Globaldef   // e.g. actual global defined in defs.qc
    }

    class Global
    {
        #region Statics

        public static List<Global> globalList;
        public static List<Function> functions;
        public static List<Def> fields;
        public static Dictionary<int, int> fieldsOffsetMap;  // to look up field by offset

        private static int DEF_SAVEGLOBAL = (1 << 15);

        #endregion Statics

        #region Constructor

        public Global(int id, float f)
        {
            _id = id;
            _name = null;
            _globaldef_type = null;
            _valueToAssignOverride = null;

            Kind = GlobalKind.Unknown;
            FloatVal = f;
            ValueSource = null;
            FieldFunctionDeclaration = null;
        }

        #endregion Constructor

        #region Private variables

        private int _id;
        private string _name;
        private ushort? _globaldef_type;    // original - may have DEF_SAVEGLOBAL bit set
        private string? _valueToAssignOverride;

        #endregion Private variables

        #region Public Variables

        public GlobalKind Kind;
        public float FloatVal;
        public string? _valueSource; // the source of the value being stored in this global

        public List<int> writtenBy = new List<int>();   // statements on which this global is wrtten to
        public List<int> readBy = new List<int>();      // statements on which this global is read by

        public Types? TypePointedTo;    // if this global is a pointer, this has the type of the thing it is pointing to
        public Types ExpectedType;     // temporary setting of what type this global is expected to be - used to determine whether to return vector vec or float vec_x

        public bool accessed;   // False if this global hasn't been accessed in the decompilation process yet

        public string? FieldFunctionDeclaration;
        public List<Types> FieldFunctionArgTypes;

        #endregion Public Variables

        #region Properties

        public bool IsWritten   // is this global ever written to?
        {
            get
            {
                return writtenBy.Count > 0;
            }
        }

        public int? IntVal
        {
            get
            {
                // TODO better way to do this?
                int intVal = BitConverter.ToInt32(BitConverter.GetBytes(FloatVal));
                if (intVal < (1 << 17))    // ints seem to be the first 17 bits, 0-131071 - and only used as offsets(?)
                {
                    return intVal;
                }
                return null;
            }
        }

        public string TypeCodeOutput
        {
            get
            {
                if (Type is null)
                {
                    return "/* ERROR: NULL TYPE */";
                }
                if (Type == Types.ev_field)
                {
                    return "." + TypeCode(FieldType);       // e.g. in defs.qc, starting with "." denotes field
                }
                return TypeCode(Type);
            }
        }

        public string? Name
        {
            get
            {
                if (Kind == GlobalKind.Function)
                {
                    return Function.name;
                }
                if (Kind == GlobalKind.Field)
                {
                    return fields[fieldsOffsetMap[(int)IntVal]].name;
                }
                if (ExpectedType == Types.ev_float && Type == Types.ev_vector)
                {
                    // we are trying to access a vector expecting a float type
                    // so we are trying to specifically get the _x term
                    return _name + "_x";
                }
                return _name;
            }
            set
            {
                _name = value;
            }
        }

        public string? ValueSource
        {
            get
            {
                if (ExpectedType == Types.ev_float && Type == Types.ev_vector)
                {
                    // we are trying to access a vector expecting a float type
                    // so we are trying to specifically get the _x term
                    return _valueSource + "_x";
                }
                return _valueSource;
            }
            set
            {
                _valueSource = value;
            }
        }

        public string ImmediateValue
        {
            get
            {
                switch (Type)
                {
                    case Types.ev_string:
                        return DeQCC.CleanseString(Strings.GetString((int)IntVal));
                    case Types.ev_void:
                        return "void";
                    case Types.ev_float:
                        return FloatVal.ToString("F3");
                    case Types.ev_vector:
                        return "'" + FloatVal.ToString("F3") + " " + (globalList[_id + 1].FloatVal).ToString("F3") + " " + (globalList[_id + 2].FloatVal).ToString("F3") + "'";
                    default:
                        return "/* ERROR ImmediateValue for " + Type + " */";
                }
            }
        }

        public string ValueToAssign // If this globaldef is being assigned to something else
        {
            get
            {
                if(_valueToAssignOverride != null)
                {
                    return _valueToAssignOverride;
                }
                else if (Kind == GlobalKind.Immediate)
                {
                    return ImmediateValue;
                }
                else if (Kind == GlobalKind.Anonymous || Kind == GlobalKind.Reserved)
                {
                    return ValueSource;
                }
                else
                {
                    return Name;
                }
            }
            set
            {
                _valueToAssignOverride = value;
            }
        }

        public Types? FieldType
        {
            get
            {
                return (Types)(fields[fieldsOffsetMap[(int)IntVal]].type);
            }
        }

        public Function? Function // if this global is an offset to a function
        {
            get
            {
                if (Type == Types.ev_function)
                {
                    return functions[(int)IntVal];
                }
                return null;
            }
        }

        public Types? Type
        {
            get
            {
                if (_globaldef_type == null)
                {
                    return null;
                }
                if ((_globaldef_type & DEF_SAVEGLOBAL) != 0)
                {
                    return (Types)(_globaldef_type - DEF_SAVEGLOBAL);
                }
                return (Types)(_globaldef_type);
            }
            set
            {
                _globaldef_type = (ushort)value;
            }
        }

        #endregion Properties

        #region Private functions

        private string TypeCode(Types? input)
        {
            if (input is null)
            {
                return null;
            }

            switch (input)
            {
                case Types.ev_void:
                    return "void";
                case Types.ev_string:
                    return "string";
                case Types.ev_float:
                    return "float";
                case Types.ev_vector:
                    return "vector";
                case Types.ev_entity:
                    return "entity";
                case Types.ev_function:
                    return "void()";
                case Types.ev_field:
                    return "/* TYPE: EV_FIELD */";
                case Types.ev_pointer:
                    return "/* TYPE: EV_POINTER */";
            }
            return "/* ERROR: UNKNOWN TYPE */";
        }

        #endregion Private functions

        public bool IsConstant()   // constants defined outside of functions (e.g. in defs.qc have their value printed after
        {
            if (Name is null)
            {
                return false;
            }

            if (Type == Types.ev_entity || Type == Types.ev_field || Type == Types.ev_function || Type == Types.ev_pointer || Type == Types.ev_void)
            {
                return false;
            }

            // TODO assumes constants are all caps (true for defs.qc, is this true in all cases?)
            for (int i = 0; i < Name.Length; i++)
            {
                if (Char.IsLetter(Name[i]) && !Char.IsUpper(Name[i]))
                    return false;
            }
            return true;
        }

        public override string ToString()
        {
            return Kind + " " + TypeCodeOutput + " " + Name;
        }
    }

}
