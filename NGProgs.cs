using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

/*
namespace DeQcc2
{
    // TODO only difference between IMMEDIATE and other variable is it is never written, only read.
    // so without names to identify immediates, give them a random name then post-decompile step to find all names never written?

    class GlobalVars
    {
        public List<int> pad = new List<int>(); //28;
        public int self;
        public int other;
        public int world;
        public float time;
        public float frametime;
        public float force_retouch;
        public int mapname; // string_t is typedef to int
        public float deathmatch;
        public float coop;
        public float teamplay;
        public float serverflags;
        public float total_secrets;
        public float total_monsters;
        public float found_secrets;
        public float killed_monsters;
        public float parm1;
        public float parm2;
        public float parm3;
        public float parm4;
        public float parm5;
        public float parm6;
        public float parm7;
        public float parm8;
        public float parm9;
        public float parm10;
        public float parm11;
        public float parm12;
        public float parm13;
        public float parm14;
        public float parm15;
        public float parm16;
        public List<float> v_forward = new List<float>();   // vec3_t
        public List<float> v_up = new List<float>();   // vec3_t
        public List<float> v_right = new List<float>();   // vec3_t
        public float trace_allsolid;
        public float trace_startsolid;
        public float trace_fraction;
        public List<float> trace_endpos = new List<float>();   // vec3_t
        public List<float> trace_plane_normal = new List<float>();   // vec3_t
        public float trace_plane_dist;
        public int trace_ent;
        public float trace_inopen;
        public float trace_inwater;
        public int msg_entity;
        // Following are the id of these functions in the progs.dat
        public int main; // func_t
        public int StartFrame; // func_t
        public int PlayerPreThink; // func_t
        public int PlayerPostThink; // func_t
        public int ClientKill; // func_t
        public int ClientConnect; // func_t
        public int PutClientInServer; // func_t
        public int ClientDisconnect; // func_t
        public int SetNewParms; // func_t
        public int SetChangeParms; // func_t
    }

    class NGProgs
    {
        public GlobalVars pr_global_struct = new GlobalVars();

        // NG
        public Dictionary<Opcode, Typecode> typeA = new Dictionary<Opcode, Typecode>(); // lookups for the types of each argument
        public Dictionary<Opcode, Typecode> typeB = new Dictionary<Opcode, Typecode>();
        public Dictionary<Opcode, Typecode> typeC = new Dictionary<Opcode, Typecode>();
        public Dictionary<int, string> globalNames = new Dictionary<int, string>();    // to save names of variables that were loaded into globals

        public void LoadProgs()
        {
            // Load the globalvars
            //GlobalVars globalvars = new GlobalVars();
            br.BaseStream.Seek(ofs_globals, SeekOrigin.Begin);
            for (int i = 0; i < 28; i++)
                pr_global_struct.pad.Add(br.ReadInt32());
            pr_global_struct.self = br.ReadInt32();
            pr_global_struct.other = br.ReadInt32();
            pr_global_struct.world = br.ReadInt32();
            pr_global_struct.time = br.ReadSingle();
            pr_global_struct.frametime = br.ReadSingle();
            pr_global_struct.force_retouch = br.ReadSingle();
            pr_global_struct.mapname = br.ReadInt32();
            pr_global_struct.deathmatch = br.ReadSingle();
            pr_global_struct.coop = br.ReadSingle();
            pr_global_struct.teamplay = br.ReadSingle();
            pr_global_struct.serverflags = br.ReadSingle();
            pr_global_struct.total_secrets = br.ReadSingle();
            pr_global_struct.total_monsters = br.ReadSingle();
            pr_global_struct.found_secrets = br.ReadSingle();
            pr_global_struct.killed_monsters = br.ReadSingle();
            pr_global_struct.parm1 = br.ReadSingle();
            pr_global_struct.parm2 = br.ReadSingle();
            pr_global_struct.parm3 = br.ReadSingle();
            pr_global_struct.parm4 = br.ReadSingle();
            pr_global_struct.parm5 = br.ReadSingle();
            pr_global_struct.parm6 = br.ReadSingle();
            pr_global_struct.parm7 = br.ReadSingle();
            pr_global_struct.parm8 = br.ReadSingle();
            pr_global_struct.parm9 = br.ReadSingle();
            pr_global_struct.parm10 = br.ReadSingle();
            pr_global_struct.parm11 = br.ReadSingle();
            pr_global_struct.parm12 = br.ReadSingle();
            pr_global_struct.parm13 = br.ReadSingle();
            pr_global_struct.parm14 = br.ReadSingle();
            pr_global_struct.parm15 = br.ReadSingle();
            pr_global_struct.parm16 = br.ReadSingle();
            for (int i = 0; i < 3; i++)
                pr_global_struct.v_forward.Add(br.ReadSingle());
            for (int i = 0; i < 3; i++)
                pr_global_struct.v_up.Add(br.ReadSingle());
            for (int i = 0; i < 3; i++)
                pr_global_struct.v_right.Add(br.ReadSingle());
            pr_global_struct.trace_allsolid = br.ReadSingle();
            pr_global_struct.trace_startsolid = br.ReadSingle();
            pr_global_struct.trace_fraction = br.ReadSingle();
            for (int i = 0; i < 3; i++)
                pr_global_struct.trace_endpos.Add(br.ReadSingle());
            for (int i = 0; i < 3; i++)
                pr_global_struct.trace_plane_normal.Add(br.ReadSingle());
            pr_global_struct.trace_plane_dist = br.ReadSingle();
            pr_global_struct.trace_ent = br.ReadInt32(); ;
            pr_global_struct.trace_inopen = br.ReadSingle();
            pr_global_struct.trace_inwater = br.ReadSingle();
            pr_global_struct.msg_entity = br.ReadInt32();
            pr_global_struct.main = br.ReadInt32();
            pr_global_struct.StartFrame = br.ReadInt32();
            pr_global_struct.PlayerPreThink = br.ReadInt32();
            pr_global_struct.PlayerPostThink = br.ReadInt32();
            pr_global_struct.ClientKill = br.ReadInt32();
            pr_global_struct.ClientConnect = br.ReadInt32();
            pr_global_struct.PutClientInServer = br.ReadInt32();
            pr_global_struct.ClientDisconnect = br.ReadInt32();
            pr_global_struct.SetNewParms = br.ReadInt32();
            pr_global_struct.SetChangeParms = br.ReadInt32();
        }

        public void DecompileStatement(Statement statement, Function function)
        {
            Typecode paramAType = typeA[statement.Opcode];
            Typecode paramBType = typeB[statement.Opcode];
            Typecode paramCType = typeC[statement.Opcode];
        }
    }
}
*/