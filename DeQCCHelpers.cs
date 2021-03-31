using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    // This file contains boring code
    partial class DeQCC
    {
        const int OFS_NULL = 0;
        const int OFS_RETURN = 1;
        const int OFS_PARM0 = 4;    // leave 3 ofs for each parm to hold vectors
        const int OFS_PARM1 = 7;
        const int OFS_PARM2 = 10;
        const int OFS_PARM3 = 13;
        const int OFS_PARM4 = 16;
        const int OFS_PARM5 = 19;
        const int OFS_PARM6 = 22;
        const int OFS_PARM7 = 25;
        const int RESERVED_OFS = 28;

        //Dictionary<int, string> builtins = new Dictionary<int, string>();
        Dictionary<int, Types> builtinsReturns = new Dictionary<int, Types>();
        Dictionary<int, List<Types>> builtinsParms = new Dictionary<int, List<Types>>();
        Dictionary<int, List<string>> builtinsParmNames = new Dictionary<int, List<string>>();
        
        private List<string> _decompileFilesSeen = new List<string>();   // have we already seen this file during decompilation

        void SetUpNameMaps(string outputfolder)
        {
            if (outputfolder == "obots")
            {
                InitObotMaps();
            }
        }

        void InitStaticData()
        {
            // There is no way to reconstruct these from the progs.dat, and they are built in to the Quake engine
            // so we replicate the original v106qc declarations here as they will be the same in every progs.dat
            //builtins.Clear();
            builtinsParms.Clear();
            builtinsParmNames.Clear();
            //builtins.Add(1, "void(vector ang) makevectors = #1; // sets v_forward, etc globals");
            builtinsReturns.Add(1, Types.ev_void);
            builtinsParms.Add(1, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(1, new List<string> { "ang" });

            //builtins.Add(2, "void(entity e, vector o) setorigin = #2;");
            builtinsReturns.Add(2, Types.ev_void);
            builtinsParms.Add(2, new List<Types> { Types.ev_entity, Types.ev_vector });
            builtinsParmNames.Add(2, new List<string> { "e", "o" });

            //builtins.Add(3, "void(entity e, string m) setmodel	= #3; // set movetype and solid first");
            builtinsReturns.Add(3, Types.ev_void);
            builtinsParms.Add(3, new List<Types> { Types.ev_entity, Types.ev_string });
            builtinsParmNames.Add(3, new List<string> { "e", "m" });

            //builtins.Add(4, "void(entity e, vector min, vector max) setsize = #4;");
            builtinsReturns.Add(4, Types.ev_void);
            builtinsParms.Add(4, new List<Types> { Types.ev_entity, Types.ev_vector, Types.ev_vector });
            builtinsParmNames.Add(4, new List<string> { "e", "min", "max" });

            //builtins.Add(5, "// #5 was removed");
            builtinsReturns.Add(5, Types.ev_void);
            builtinsParms.Add(5, new List<Types>());
            builtinsParmNames.Add(5, new List<string>());

            //builtins.Add(6, "void() break = #6;");
            builtinsReturns.Add(6, Types.ev_void);
            builtinsParms.Add(6, new List<Types>());
            builtinsParmNames.Add(6, new List<string>());

            //builtins.Add(7, "float() random = #7; // returns 0 - 1");
            builtinsReturns.Add(7, Types.ev_float);
            builtinsParms.Add(7, new List<Types>());
            builtinsParmNames.Add(7, new List<string>());

            //builtins.Add(8, "void(entity e, float chan, string samp, float vol, float atten) sound = #8;");
            builtinsReturns.Add(8, Types.ev_void);
            builtinsParms.Add(8, new List<Types> { Types.ev_entity, Types.ev_float, Types.ev_string, Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(8, new List<string> { "e", "chan", "samp", "vol", "atten" });

            //builtins.Add(9, "vector(vector v) normalize = #9;");
            builtinsReturns.Add(9, Types.ev_vector);
            builtinsParms.Add(9, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(9, new List<string> { "v" });

            //builtins.Add(10, "void(string e) error = #10;");
            builtinsReturns.Add(10, Types.ev_void);
            builtinsParms.Add(10, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(10, new List<string> { "e" });

            //builtins.Add(11, "void(string e) objerror = #11;");
            builtinsReturns.Add(11, Types.ev_void);
            builtinsParms.Add(11, new List<Types> { Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string });  // can be overloaded with multiple strings
            builtinsParmNames.Add(11, new List<string> { "e", "e2", "e3", "e4", "e5", "e6", "e7", "e8" });

            //builtins.Add(12, "float(vector v) vlen = #12;");
            builtinsReturns.Add(12, Types.ev_float);
            builtinsParms.Add(12, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(12, new List<string> { "v" });

            //builtins.Add(13, "float(vector v) vectoyaw = #13;");
            builtinsReturns.Add(13, Types.ev_float);
            builtinsParms.Add(13, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(13, new List<string> { "v" });

            //builtins.Add(14, "entity() spawn = #14;");
            builtinsReturns.Add(14, Types.ev_entity);
            builtinsParms.Add(14, new List<Types>());
            builtinsParmNames.Add(14, new List<string>());

            //builtins.Add(15, "void(entity e) remove = #15;");
            builtinsReturns.Add(15, Types.ev_void);
            builtinsParms.Add(15, new List<Types> { Types.ev_entity });
            builtinsParmNames.Add(15, new List<string> { "e" });

            //builtins.Add(16, "void(vector v1, vector v2, float nomonsters, entity forent) traceline = #16;");
            builtinsReturns.Add(16, Types.ev_void);
            builtinsParms.Add(16, new List<Types> { Types.ev_vector, Types.ev_vector, Types.ev_float, Types.ev_entity });
            builtinsParmNames.Add(16, new List<string> { "v1", "v2", "nomonsters", "forent" });

            //builtins.Add(17, "entity() checkclient = #17;	// returns a client to look for");
            builtinsReturns.Add(17, Types.ev_entity);
            builtinsParms.Add(17, new List<Types>());
            builtinsParmNames.Add(17, new List<string>());

            //builtins.Add(18, "entity(entity start, .string fld, string match) find = #18;");
            builtinsReturns.Add(18, Types.ev_entity);
            builtinsParms.Add(18, new List<Types> { Types.ev_entity, Types.ev_fieldstring, Types.ev_string });
            builtinsParmNames.Add(18, new List<string> { "start", "fld", "match" });

            //builtins.Add(19, "string(string s) precache_sound = #19;");
            builtinsReturns.Add(19, Types.ev_string);
            builtinsParms.Add(19, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(19, new List<string> { "s" });

            //builtins.Add(20, "string(string s) precache_model = #20;");
            builtinsReturns.Add(20, Types.ev_string);
            builtinsParms.Add(20, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(20, new List<string> { "s" });

            //builtins.Add(21, "void(entity client, string s) stuffcmd = #21;");
            builtinsReturns.Add(21, Types.ev_void);
            builtinsParms.Add(21, new List<Types> { Types.ev_entity, Types.ev_string });
            builtinsParmNames.Add(21, new List<string> { "client", "s" });

            //builtins.Add(22, "entity(vector org, float rad) findradius = #22;");
            builtinsReturns.Add(22, Types.ev_entity);
            builtinsParms.Add(22, new List<Types> { Types.ev_vector, Types.ev_float });
            builtinsParmNames.Add(22, new List<string> { "org", "rad" });

            //builtins.Add(23, "void(string s) bprint = #23;");
            builtinsReturns.Add(23, Types.ev_void);
            builtinsParms.Add(23, new List<Types> { Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string });  // can be overloaded with multiple strings
            builtinsParmNames.Add(23, new List<string> { "s", "s2", "s3", "s4", "s5", "s6", "s7", "s8" });

            //builtins.Add(24, "void(entity client, string s) sprint = #24;");
            builtinsReturns.Add(24, Types.ev_void);
            builtinsParms.Add(24, new List<Types> { Types.ev_entity, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string });  // can be overloaded with multiple strings
            builtinsParmNames.Add(24, new List<string> { "client", "s", "s2", "s3", "s4", "s5", "s6", "s7" });

            //builtins.Add(25, "void(string s) dprint = #25;");
            builtinsReturns.Add(25, Types.ev_void);
            builtinsParms.Add(25, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(25, new List<string> { "s" });

            //builtins.Add(26, "string(float f) ftos = #26;");
            builtinsReturns.Add(26, Types.ev_string);
            builtinsParms.Add(26, new List<Types> { Types.ev_float });
            builtinsParmNames.Add(26, new List<string> { "f" });

            //builtins.Add(27, "string(vector v) vtos = #27;");
            builtinsReturns.Add(27, Types.ev_string);
            builtinsParms.Add(27, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(27, new List<string> { "v" });

            //builtins.Add(28, "void() coredump = #28;		// prints all edicts");
            builtinsReturns.Add(28, Types.ev_void);
            builtinsParms.Add(28, new List<Types>());
            builtinsParmNames.Add(28, new List<string>());

            //builtins.Add(29, "void() traceon = #29;		// turns statment trace on");
            builtinsReturns.Add(29, Types.ev_void);
            builtinsParms.Add(29, new List<Types>());
            builtinsParmNames.Add(29, new List<string>());

            //builtins.Add(30, "void() traceoff = #30;");
            builtinsReturns.Add(30, Types.ev_void);
            builtinsParms.Add(30, new List<Types>());
            builtinsParmNames.Add(30, new List<string>());

            //builtins.Add(31, "void(entity e) eprint = #31;		// prints an entire edict");
            builtinsReturns.Add(31, Types.ev_void);
            builtinsParms.Add(31, new List<Types> { Types.ev_entity });
            builtinsParmNames.Add(31, new List<string> { "e" });

            //builtins.Add(32, "float(float yaw, float dist) walkmove	= #32;	// returns TRUE or FALSE");
            builtinsReturns.Add(32, Types.ev_float);
            builtinsParms.Add(32, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(32, new List<string> { "yaw", "dist" });

            //builtins.Add(33, "// #33 was removed");
            builtinsReturns.Add(33, Types.ev_void);
            builtinsParms.Add(33, new List<Types>());
            builtinsParmNames.Add(33, new List<string>());

            //builtins.Add(34, "float() droptofloor = #34; // TRUE if landed on floor");
            builtinsReturns.Add(34, Types.ev_float);
            builtinsParms.Add(34, new List<Types>());
            builtinsParmNames.Add(34, new List<string>());

            //builtins.Add(35, "void(float style, string value) lightstyle = #35;");
            builtinsReturns.Add(35, Types.ev_void);
            builtinsParms.Add(35, new List<Types> { Types.ev_float, Types.ev_string });
            builtinsParmNames.Add(35, new List<string> { "style", "value" });

            //builtins.Add(36, "float(float v) rint = #36; // round to nearest int");
            builtinsReturns.Add(36, Types.ev_float);
            builtinsParms.Add(36, new List<Types> { Types.ev_float });
            builtinsParmNames.Add(36, new List<string> { "v" });

            //builtins.Add(37, "float(float v) floor = #37; // largest integer <= v");
            builtinsReturns.Add(37, Types.ev_float);
            builtinsParms.Add(37, new List<Types> { Types.ev_float });
            builtinsParmNames.Add(37, new List<string> { "v" });

            //builtins.Add(38, "float(float v) ceil = #38; // smallest integer >= v");
            builtinsReturns.Add(38, Types.ev_float);
            builtinsParms.Add(38, new List<Types> { Types.ev_float });
            builtinsParmNames.Add(38, new List<string> { "v" });

            //builtins.Add(39, "// #39 was removed");
            builtinsReturns.Add(39, Types.ev_void);
            builtinsParms.Add(39, new List<Types>());
            builtinsParmNames.Add(39, new List<string>());

            //builtins.Add(40, "float(entity e) checkbottom = #40; // true if self is on ground");
            builtinsReturns.Add(40, Types.ev_float);
            builtinsParms.Add(40, new List<Types> { Types.ev_entity });
            builtinsParmNames.Add(40, new List<string> { "e" });

            //builtins.Add(41, "float(vector v) pointcontents = #41; // returns a CONTENT_*");
            builtinsReturns.Add(41, Types.ev_float);
            builtinsParms.Add(41, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(41, new List<string> { "v" });

            //builtins.Add(42, "// #42 was removed");
            builtinsReturns.Add(42, Types.ev_void);
            builtinsParms.Add(42, new List<Types>());
            builtinsParmNames.Add(42, new List<string>());

            //builtins.Add(43, "float(float f) fabs = #43;");
            builtinsReturns.Add(43, Types.ev_float);
            builtinsParms.Add(43, new List<Types> { Types.ev_float });
            builtinsParmNames.Add(43, new List<string> { "f" });

            //builtins.Add(44, "vector(entity e, float speed) aim = #44; // returns the shooting vector");
            builtinsReturns.Add(44, Types.ev_vector);
            builtinsParms.Add(44, new List<Types> { Types.ev_entity, Types.ev_float });
            builtinsParmNames.Add(44, new List<string> { "e", "speed" });

            //builtins.Add(45, "float(string s) cvar = #45; // return cvar.value");
            builtinsReturns.Add(45, Types.ev_float);
            builtinsParms.Add(45, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(45, new List<string> { "s" });

            //builtins.Add(46, "void(string s) localcmd = #46; // put string into local que");
            builtinsReturns.Add(46, Types.ev_void);
            builtinsParms.Add(46, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(46, new List<string> { "s" });

            //builtins.Add(47, "entity(entity e) nextent = #47; // for looping through all ents");
            builtinsReturns.Add(47, Types.ev_entity);
            builtinsParms.Add(47, new List<Types> { Types.ev_entity });
            builtinsParmNames.Add(47, new List<string> { "e" });

            //builtins.Add(48, "void(vector o, vector d, float color, float count) particle = #48; // start a particle effect");
            builtinsReturns.Add(48, Types.ev_void);
            builtinsParms.Add(48, new List<Types> { Types.ev_vector, Types.ev_vector, Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(48, new List<string> { "o", "d", "color", "count" });

            //builtins.Add(49, "void() ChangeYaw = #49; // turn towards self.ideal_yaw at self.yaw_speed");
            builtinsReturns.Add(49, Types.ev_void);
            builtinsParms.Add(49, new List<Types>());
            builtinsParmNames.Add(49, new List<string>());

            //builtins.Add(50, "// #50 was removed");
            builtinsReturns.Add(50, Types.ev_void);
            builtinsParms.Add(50, new List<Types>());
            builtinsParmNames.Add(50, new List<string>());

            //builtins.Add(51, "vector(vector v) vectoangles = #51;");
            builtinsReturns.Add(51, Types.ev_vector);
            builtinsParms.Add(51, new List<Types> { Types.ev_vector });
            builtinsParmNames.Add(51, new List<string> { "v" });

            //builtins.Add(52, "void(float to, float f) WriteByte = #52;");
            builtinsReturns.Add(52, Types.ev_void);
            builtinsParms.Add(52, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(52, new List<string> { "to", "f" });

            //builtins.Add(53, "void(float to, float f) WriteChar = #53;");
            builtinsReturns.Add(53, Types.ev_void);
            builtinsParms.Add(53, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(53, new List<string> { "to", "f" });

            //builtins.Add(54, "void(float to, float f) WriteShort = #54;");
            builtinsReturns.Add(54, Types.ev_void);
            builtinsParms.Add(54, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(54, new List<string> { "to", "f" });

            //builtins.Add(55, "void(float to, float f) WriteLong	= #55;");
            builtinsReturns.Add(55, Types.ev_void);
            builtinsParms.Add(55, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(55, new List<string> { "to", "f" });

            //builtins.Add(56, "void(float to, float f) WriteCoord = #56;");
            builtinsReturns.Add(56, Types.ev_void);
            builtinsParms.Add(56, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(56, new List<string> { "to", "f" });

            //builtins.Add(57, "void(float to, float f) WriteAngle = #57;");
            builtinsReturns.Add(57, Types.ev_void);
            builtinsParms.Add(57, new List<Types> { Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(57, new List<string> { "to", "f" });

            //builtins.Add(58, "void(float to, string s) WriteString = #58;");
            builtinsReturns.Add(58, Types.ev_void);
            builtinsParms.Add(58, new List<Types> { Types.ev_float, Types.ev_string });
            builtinsParmNames.Add(58, new List<string> {"to", "s" });

            //builtins.Add(59, "void(float to, entity s) WriteEntity = #59;");
            builtinsReturns.Add(59, Types.ev_void);
            builtinsParms.Add(59, new List<Types> { Types.ev_float, Types.ev_entity });
            builtinsParmNames.Add(59, new List<string> { "to", "s" });

            //builtins.Add(60, "// #60 was removed");
            builtinsReturns.Add(60, Types.ev_void);
            builtinsParms.Add(60, new List<Types>());
            builtinsParmNames.Add(60, new List<string>());

            //builtins.Add(61, "// #61 was removed");
            builtinsReturns.Add(61, Types.ev_void);
            builtinsParms.Add(61, new List<Types>());
            builtinsParmNames.Add(61, new List<string>());

            //builtins.Add(62, "// #62 was removed");
            builtinsReturns.Add(62, Types.ev_void);
            builtinsParms.Add(62, new List<Types>());
            builtinsParmNames.Add(62, new List<string>());

            //builtins.Add(63, "// #63 was removed");
            builtinsReturns.Add(63, Types.ev_void);
            builtinsParms.Add(63, new List<Types>());
            builtinsParmNames.Add(63, new List<string>());

            //builtins.Add(64, "// #64 was removed");
            builtinsReturns.Add(64, Types.ev_void);
            builtinsParms.Add(64, new List<Types>());
            builtinsParmNames.Add(64, new List<string>());

            //builtins.Add(65, "// #65 was removed");
            builtinsReturns.Add(65, Types.ev_void);
            builtinsParms.Add(65, new List<Types>());
            builtinsParmNames.Add(65, new List<string>());

            //builtins.Add(66, "// #66 was removed");
            builtinsReturns.Add(66, Types.ev_void);
            builtinsParms.Add(66, new List<Types>());
            builtinsParmNames.Add(66, new List<string>());

            //builtins.Add(67, "void(float step) movetogoal = #67;");
            builtinsReturns.Add(67, Types.ev_void);
            builtinsParms.Add(67, new List<Types> { Types.ev_float });
            builtinsParmNames.Add(67, new List<string> { "step" });

            //builtins.Add(68, "string(string s) precache_file = #68;	// no effect except for -copy");
            builtinsReturns.Add(68, Types.ev_string);
            builtinsParms.Add(68, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(68, new List<string> { "s" });

            //builtins.Add(69, "void(entity e) makestatic = #69;");
            builtinsReturns.Add(69, Types.ev_void);
            builtinsParms.Add(69, new List<Types> { Types.ev_entity });
            builtinsParmNames.Add(69, new List<string> { "e" });

            //builtins.Add(70, "void(string s) changelevel = #70;");
            builtinsReturns.Add(70, Types.ev_void);
            builtinsParms.Add(70, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(70, new List<string> { "s" });

            //builtins.Add(71, "// #71 was removed");
            builtinsReturns.Add(71, Types.ev_void);
            builtinsParms.Add(71, new List<Types>());
            builtinsParmNames.Add(71, new List<string>());

            //builtins.Add(72, "void(string var, string val) cvar_set = #72; // sets cvar.value");
            builtinsReturns.Add(72, Types.ev_void);
            builtinsParms.Add(72, new List<Types> { Types.ev_string, Types.ev_string });
            builtinsParmNames.Add(72, new List<string> { "var", "val" });

            //builtins.Add(73, "void(entity client, string s) centerprint = #73; // sprint, but in middle");
            builtinsReturns.Add(73, Types.ev_void);
            builtinsParms.Add(73, new List<Types> { Types.ev_entity, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string, Types.ev_string });  // can be overloaded with multiple strings
            builtinsParmNames.Add(73, new List<string> { "client", "s", "s2", "s3", "s4", "s5", "s6", "s7" });

            //builtins.Add(74, "void(vector pos, string samp, float vol, float atten) ambientsound = #74;");
            builtinsReturns.Add(74, Types.ev_void);
            builtinsParms.Add(74, new List<Types> { Types.ev_vector, Types.ev_string, Types.ev_float, Types.ev_float });
            builtinsParmNames.Add(74, new List<string> { "pos", "samp", "vol", "atten" });

            //builtins.Add(75, "string(string s) precache_model2 = #75; // registered version only");
            builtinsReturns.Add(75, Types.ev_string);
            builtinsParms.Add(75, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(75, new List<string> { "s" });

            //builtins.Add(76, "string(string s) precache_sound2 = #76; // registered version only");
            builtinsReturns.Add(76, Types.ev_string);
            builtinsParms.Add(76, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(76, new List<string> { "s" });

            //builtins.Add(77, "string(string s) precache_file2 = #77; // registered version only");
            builtinsReturns.Add(77, Types.ev_string);
            builtinsParms.Add(77, new List<Types> { Types.ev_string });
            builtinsParmNames.Add(77, new List<string> { "s" });

            //builtins.Add(78, "void(entity e) setspawnparms = #78; // set parm1... to the values at level start for coop respawn");
            builtinsReturns.Add(78, Types.ev_void);
            builtinsParms.Add(78, new List<Types> { Types.ev_entity });
            builtinsParmNames.Add(78, new List<string> { "e" });

            pr_opcodes.Add(new Opcode("<DONE>", "DONE", -1, false, Types.ev_entity, Types.ev_field, Types.ev_void));
            pr_opcodes.Add(new Opcode("*", "MUL_F", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("*", "MUL_V", 2, false, Types.ev_vector, Types.ev_vector, Types.ev_float));
            pr_opcodes.Add(new Opcode("*", "MUL_FV", 2, false, Types.ev_float, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("*", "MUL_VF", 2, false, Types.ev_vector, Types.ev_float, Types.ev_vector));
            pr_opcodes.Add(new Opcode("/", "DIV", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("+", "ADD_F", 3, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("+", "ADD_V", 3, false, Types.ev_vector, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("-", "SUB_F", 3, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("-", "SUB_V", 3, false, Types.ev_vector, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("==", "EQ_F", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_V", 4, false, Types.ev_vector, Types.ev_vector, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_S", 4, false, Types.ev_string, Types.ev_string, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_E", 4, false, Types.ev_entity, Types.ev_entity, Types.ev_float));
            pr_opcodes.Add(new Opcode("==", "EQ_FNC", 4, false, Types.ev_function, Types.ev_function, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_F", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_V", 4, false, Types.ev_vector, Types.ev_vector, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_S", 4, false, Types.ev_string, Types.ev_string, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_E", 4, false, Types.ev_entity, Types.ev_entity, Types.ev_float));
            pr_opcodes.Add(new Opcode("!=", "NE_FNC", 4, false, Types.ev_function, Types.ev_function, Types.ev_float));
            pr_opcodes.Add(new Opcode("<=", "LE", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode(">=", "GE", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("<", "LT", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode(">", "GT", 4, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_float));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_vector));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_string));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_entity));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_field));
            pr_opcodes.Add(new Opcode(".", "INDIRECT", 1, false, Types.ev_entity, Types.ev_field, Types.ev_function));
            pr_opcodes.Add(new Opcode(".", "ADDRESS", 1, false, Types.ev_entity, Types.ev_field, Types.ev_pointer));
            pr_opcodes.Add(new Opcode("=", "STORE_F", 5, true, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("=", "STORE_V", 5, true, Types.ev_vector, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("=", "STORE_S", 5, true, Types.ev_string, Types.ev_string, Types.ev_string));
            pr_opcodes.Add(new Opcode("=", "STORE_ENT", 5, true, Types.ev_entity, Types.ev_entity, Types.ev_entity));
            pr_opcodes.Add(new Opcode("=", "STORE_FLD", 5, true, Types.ev_field, Types.ev_field, Types.ev_field));
            pr_opcodes.Add(new Opcode("=", "STORE_FNC", 5, true, Types.ev_function, Types.ev_function, Types.ev_function));
            pr_opcodes.Add(new Opcode("=", "STOREP_F", 5, true, Types.ev_pointer, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("=", "STOREP_V", 5, true, Types.ev_pointer, Types.ev_vector, Types.ev_vector));
            pr_opcodes.Add(new Opcode("=", "STOREP_S", 5, true, Types.ev_pointer, Types.ev_string, Types.ev_string));
            pr_opcodes.Add(new Opcode("=", "STOREP_ENT", 5, true, Types.ev_pointer, Types.ev_entity, Types.ev_entity));
            pr_opcodes.Add(new Opcode("=", "STOREP_FLD", 5, true, Types.ev_pointer, Types.ev_field, Types.ev_field));
            pr_opcodes.Add(new Opcode("=", "STOREP_FNC", 5, true, Types.ev_pointer, Types.ev_function, Types.ev_function));
            pr_opcodes.Add(new Opcode("<RETURN>", "RETURN", -1, false, Types.ev_void, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("!", "NOT_F", -1, false, Types.ev_float, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_V", -1, false, Types.ev_vector, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_S", -1, false, Types.ev_vector, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_ENT", -1, false, Types.ev_entity, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("!", "NOT_FNC", -1, false, Types.ev_function, Types.ev_void, Types.ev_float));
            pr_opcodes.Add(new Opcode("<IF>", "IF", -1, false, Types.ev_float, Types.ev_float, Types.ev_void));
            pr_opcodes.Add(new Opcode("<IFNOT>", "IFNOT", -1, false, Types.ev_float, Types.ev_float, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL0>", "CALL0", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL1>", "CALL1", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL2>", "CALL2", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL3>", "CALL3", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL4>", "CALL4", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL5>", "CALL5", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL6>", "CALL6", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL7>", "CALL7", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<CALL8>", "CALL8", -1, false, Types.ev_function, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("<STATE>", "STATE", -1, false, Types.ev_float, Types.ev_float, Types.ev_void));
            pr_opcodes.Add(new Opcode("<GOTO>", "GOTO", -1, false, Types.ev_float, Types.ev_void, Types.ev_void));
            pr_opcodes.Add(new Opcode("&&", "AND", 6, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("||", "OR", 6, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("&", "BITAND", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
            pr_opcodes.Add(new Opcode("|", "BITOR", 2, false, Types.ev_float, Types.ev_float, Types.ev_float));
        }

        // Check for presence of operators in the string, and if so, bracket it
        // used when combining two potential calculations, e.g. a + b
        // to check whether a or b need brackets
        // Note this doesn't actually check for precedence, it just brackets
        // operations in the order they were performed in bytecode (thus
        // preserving the original precedence from the source file)
        string CheckPrecedence(string input)
        {
            if (input is null) return null;

            if (input.Contains(" + ") ||
                input.Contains(" - ") ||
                input.Contains(" * ") ||
                input.Contains(" / ") ||
                input.Contains(" == ") ||
                input.Contains(" != ") ||
                input.Contains(" <= ") ||
                input.Contains(" >= ") ||
                input.Contains(" < ") ||
                input.Contains(" > ") ||
                input.Contains(" && ") ||
                input.Contains(" || ") ||
                input.Contains(" & ") ||
                input.Contains(" | "))
            {
                return "(" + input + ")";
            }
            return input;
        }

        public static string CleanseString(string stringToCleanse)
        {
            for (int i = 0; i < stringToCleanse.Length; i++)
            {
                // Can't use string.Replace as need to replace char with string
                if (stringToCleanse[i] == '\n')
                {
                    stringToCleanse = stringToCleanse.Substring(0, i) + "\\n" + stringToCleanse.Substring(i + 1);
                    i++;    // we added a character
                }
                if (stringToCleanse[i] == '\"')
                {
                    stringToCleanse = stringToCleanse.Substring(0, i) + "\\" + '"' + stringToCleanse.Substring(i + 1);
                    i++;    // we added a character
                }
            }
            return '"' + stringToCleanse + '"';
        }

        public static string GetTypeString(Types? input)
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
                    return "ev_field";
                case Types.ev_pointer:
                    return "ev_pointer";
                case Types.ev_fieldstring:
                    return ".string";
            }
            return "/* ERROR: Unknown type in GetTypeString() */";
        }

        bool AlreadySeen(string fname)
        {
            if (_decompileFilesSeen.Contains(fname))
            {
                return true;
            }
            _decompileFilesSeen.Add(fname);
            return false;
        }

        void ReadProgsData(string outputfolder, bool decompile)
        {
            string filename;
            if (decompile) { filename = "inputprogs.dat"; }
            else { filename = "progs.dat"; }   // we are checking the output

            BinaryReader h = new BinaryReader(File.Open(outputfolder + filename, FileMode.Open), Encoding.ASCII);
            int version = h.ReadInt32();
            int crc = h.ReadInt32();
            int ofs_statements = h.ReadInt32();
            int numstatements = h.ReadInt32();
            int ofs_globaldefs = h.ReadInt32();
            int numglobaldefs = h.ReadInt32();
            int ofs_fielddefs = h.ReadInt32();
            int numfielddefs = h.ReadInt32();
            int ofs_functions = h.ReadInt32();
            int numfunctions = h.ReadInt32();
            int ofs_strings = h.ReadInt32();
            int numstrings = h.ReadInt32();
            int ofs_globals = h.ReadInt32();
            int numglobals = h.ReadInt32();
            int entityfields = h.ReadInt32();

            // strings are now referenced by strings[stringIndexMap[offset]]
            h.BaseStream.Seek(ofs_strings, SeekOrigin.Begin);
            StringBuilder sb = new StringBuilder();
            //stringOffsetMap.Add(0, 0); // offset 0 is string 0
            int startChar = 0;  // start of the current string, i.e. offset
            for (int i = 0; i < numstrings; i++)  // actually numchars not numstrings
            {
                char nextChar = h.ReadChar();
                if (nextChar == '\0')
                {
                    Strings.AddString(sb.ToString(), startChar);
                    //strings.Add(sb.ToString());
                    if (i < numstrings - 1)   // still have more chars to process
                    {
                        sb = new StringBuilder();
                        startChar = i + 1;
                        //stringOffsetMap.Add(i + 1, strings.Count);    // next string offset (i+1) will be string Count in List
                    }
                }
                else
                {
                    sb.Append(nextChar);
                }
            }

            h.BaseStream.Seek(ofs_statements, SeekOrigin.Begin);
            for (int i = 0; i < numstatements; i++)
            {
                Statement s = new Statement();
                s.op = h.ReadUInt16();
                s.a = h.ReadInt16();
                s.b = h.ReadInt16();
                s.c = h.ReadInt16();
                statements.Add(s);
            }

            h.BaseStream.Seek(ofs_functions, SeekOrigin.Begin);
            for (int i = 0; i < numfunctions; i++)
            {
                Function f = new Function();
                f.first_statement = h.ReadInt32();
                f.parm_start = h.ReadInt32();
                f.locals = h.ReadInt32();
                f.profile = h.ReadInt32();
                f.s_name = h.ReadInt32();
                f.s_file = h.ReadInt32();
                f.numparms = h.ReadInt32();
                for (int j = 0; j < 8; j++)
                    f.parm_size[j] = h.ReadByte();

                // set strings
                if (f.s_name > 0) { f.name = Strings.GetString(f.s_name); }
                else { f.name = "func" + i.ToString("D6"); }
                if (nameMap.ContainsKey(f.name)) { f.name = nameMap[f.name]; }

                if (f.s_file > 0) { f.file = Strings.GetString(f.s_file); }
                else if (fileMap.ContainsKey(f.name)) { f.file = fileMap[f.name]; }
                else { f.file = "unknown.qc"; }

                functions.Add(f);
            }

            h.BaseStream.Seek(ofs_fielddefs, SeekOrigin.Begin);
            for (int i = 0; i < numfielddefs; i++)
            {
                Def f = new Def();
                f.type = h.ReadUInt16();
                f.ofs = h.ReadUInt16();
                f.s_name = h.ReadInt32();

                // set strings
                if (f.s_name > 0) { f.name = Strings.GetString(f.s_name); }
                else { f.name = "field" + i.ToString("D6"); }
                if (nameMap.ContainsKey(f.name)) { f.name = nameMap[f.name]; }

                fields.Add(f);
                if (i > 0)  // don't add the null field
                {
                    if (!fieldsOffsetMap.ContainsKey(f.ofs))   // for vectors, var and var_x are separate globals with same offset
                    {
                        fieldsOffsetMap.Add(f.ofs, i);
                    }
                }
            }

            h.BaseStream.Seek(ofs_globals, SeekOrigin.Begin);
            for (int i = 0; i < numglobals; i++)
            {
                pr_globals.Add(h.ReadSingle());     // Read these as floats for now, will need to bitconvert some to ints later
            }

            h.BaseStream.Seek(ofs_globaldefs, SeekOrigin.Begin);
            for (int i = 0; i < numglobaldefs; i++)
            {
                Def g = new Def();
                g.type = h.ReadUInt16();
                g.ofs = h.ReadUInt16();
                g.s_name = h.ReadInt32();

                // set strings
                if (g.s_name > 0)
                {
                    g.name = Strings.GetString(g.s_name);
                }
                else
                {
                    // if function, link through to the underlying function name
                    if (g.Type == Types.ev_function)
                    {
                        int funcIndex = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[g.ofs]));
                        g.name = functions[funcIndex].name;
                    }
                    else if (g.Type == Types.ev_field)
                    {
                        int fieldOffset = BitConverter.ToInt32(BitConverter.GetBytes(pr_globals[g.ofs]));
                        g.name = fields[fieldsOffsetMap[fieldOffset]].name;
                    }
                    else
                    {
                        g.name = "globaldef" + i.ToString("D6");
                    }
                }

                if (nameMap.ContainsKey(g.name))
                {
                    g.name = nameMap[g.name];
                }

                globals.Add(g);
                if (i > 0)  // don't add the null globaldef
                {
                    if (!globalsOffsetMap.ContainsKey(g.ofs))   // for vectors, var and var_x are separate globals with same offset
                    {
                        globalsOffsetMap.Add(g.ofs, i);
                    }
                }
            }
        }

        void WriteProgsDataToCSV(string folder, bool decompile)
        {
            if(decompile) { folder += "_original_progs"; }    // effectively added to the front of each file name
            else { folder += "_decomped_progs"; }

            int i;
            StreamWriter outfile;

            // Try catch blocks here allow the code to skip writing a file if it is open (e.g. in Excel)
            try
            {
                Strings.WriteCSV(folder + "_strings.csv");
            }
            catch { }

            try
            {
                outfile = new StreamWriter(folder + "_statements.csv", false);
                outfile.WriteLine("row,opcode,op,a,b,c");
                i = 0;
                foreach (Statement s in statements)
                {
                    outfile.WriteLine((i++) + "," + s.Opcode + "," + s.op + "," + s.a + "," + s.b + "," + s.c);
                }
                outfile.Close();
            }
            catch { }

            try
            {
                outfile = new StreamWriter(folder + "_functions.csv", false);
                outfile.WriteLine("row,file,s_file,name,s_name,profile,first_statement,locals,numparms,parm_start,parm_size");
                i = 0;
                foreach (Function f in functions)
                {
                    string parm_sizes = "";
                    for (int j = 0; j < 8; j++)
                    {
                        parm_sizes += f.parm_size[j];
                    }
                    outfile.WriteLine((i++) + "," + f.file + "," + f.s_file + "," + f.name + "," + f.s_name + "," + f.profile + "," + f.first_statement + "," + f.locals + "," + f.numparms + "," + f.parm_start + "," + parm_sizes);
                }
                outfile.Close();
            }
            catch { }

            try
            {
                outfile = new StreamWriter(folder + "_globaldefs.csv", false);
                outfile.WriteLine("row,name,s_name,ofs,type,typename");
                i = 0;
                foreach (Def g in globals)
                {
                    string typename = "";
                    if (g.type < 8) { typename = DeQCC.GetTypeString((Types)g.type); }
                    outfile.WriteLine((i++) + "," + g.name + "," + g.s_name + "," + g.ofs + "," + g.type + "," + typename);
                }
                outfile.Close();
            }
            catch { }

            try
            {
                outfile = new StreamWriter(folder + "_fields.csv", false);
                outfile.WriteLine("row,name,s_name,ofs,type,typename");
                i = 0;
                foreach (Def g in fields)
                {
                    string typename = "";
                    if (g.type < 8) { typename = DeQCC.GetTypeString((Types)g.type); }
                    outfile.WriteLine((i++) + "," + g.name + "," + g.s_name + "," + g.ofs + "," + g.type + "," + typename);
                }
                outfile.Close();
            }
            catch { }

            try
            {
                outfile = new StreamWriter(folder + "_globals.csv", false);
                outfile.WriteLine("row,floatVal,intVal");
                i = 0;
                foreach (float f in pr_globals)
                {
                    outfile.WriteLine((i++) + "," + f + "," + BitConverter.ToInt32(BitConverter.GetBytes(f)) + "," + BitConverter.ToString(BitConverter.GetBytes(f)));
                }
                outfile.Close();
            }
            catch { }
        }
    }
}
