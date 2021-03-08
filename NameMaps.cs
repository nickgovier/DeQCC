﻿using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    partial class DeQCC
    {
        void InitObotMaps()
        {
            nameMap.Add("globaldef1_off28", "self");
            nameMap.Add("globaldef2_off29", "other");
            nameMap.Add("globaldef3_off30", "world");
            nameMap.Add("globaldef4_off31", "time");
            nameMap.Add("globaldef5_off32", "frametime");
            nameMap.Add("globaldef6_off33", "force_retouch");
            nameMap.Add("globaldef7_off34", "mapname");
            nameMap.Add("globaldef8_off35", "deathmatch");
            nameMap.Add("globaldef9_off36", "coop");
            nameMap.Add("globaldef10_off37", "teamplay");
            nameMap.Add("globaldef11_off38", "serverflags");
            nameMap.Add("globaldef12_off39", "total_secrets");
            nameMap.Add("globaldef13_off40", "total_monsters");
            nameMap.Add("globaldef14_off41", "found_secrets");
            nameMap.Add("globaldef15_off42", "killed_monsters");
            nameMap.Add("globaldef16_off43", "parm1");
            nameMap.Add("globaldef17_off44", "parm2");
            nameMap.Add("globaldef18_off45", "parm3");
            nameMap.Add("globaldef19_off46", "parm4");
            nameMap.Add("globaldef20_off47", "parm5");
            nameMap.Add("globaldef21_off48", "parm6");
            nameMap.Add("globaldef22_off49", "parm7");
            nameMap.Add("globaldef23_off50", "parm8");
            nameMap.Add("globaldef24_off51", "parm9");
            nameMap.Add("globaldef25_off52", "parm10");
            nameMap.Add("globaldef26_off53", "parm11");
            nameMap.Add("globaldef27_off54", "parm12");
            nameMap.Add("globaldef28_off55", "parm13");
            nameMap.Add("globaldef29_off56", "parm14");
            nameMap.Add("globaldef30_off57", "parm15");
            nameMap.Add("globaldef31_off58", "parm16");
            nameMap.Add("globaldef32_off59", "v_forward");
            nameMap.Add("globaldef36_off62", "v_up");
            nameMap.Add("globaldef40_off65", "v_right");
            nameMap.Add("globaldef44_off68", "trace_allsolid");
            nameMap.Add("globaldef45_off69", "trace_startsolid");
            nameMap.Add("globaldef46_off70", "trace_fraction");
            nameMap.Add("globaldef47_off71", "trace_endpos");
            nameMap.Add("globaldef51_off74", "trace_plane_normal");
            nameMap.Add("globaldef55_off77", "trace_plane_dist");
            nameMap.Add("globaldef56_off78", "trace_ent");
            nameMap.Add("globaldef57_off79", "trace_inopen");
            nameMap.Add("globaldef58_off80", "trace_inwater");
            nameMap.Add("globaldef59_off81", "msg_entity");
            nameMap.Add("globaldef70_off92", "end_sys_globals");
            nameMap.Add("globaldef190_off212", "end_sys_fields");
            nameMap.Add("globaldef191_off213", "FALSE");
            nameMap.Add("globaldef192_off214", "TRUE");
            nameMap.Add("globaldef193_off215", "FL_FLY");
            nameMap.Add("globaldef194_off216", "FL_SWIM");
            nameMap.Add("globaldef195_off217", "FL_CLIENT");
            nameMap.Add("globaldef196_off218", "FL_INWATER");
            nameMap.Add("globaldef197_off219", "FL_MONSTER");
            nameMap.Add("globaldef198_off220", "FL_GODMODE");
            nameMap.Add("globaldef199_off221", "FL_NOTARGET");
            nameMap.Add("globaldef200_off222", "FL_ITEM");
            nameMap.Add("globaldef201_off223", "FL_ONGROUND");
            nameMap.Add("globaldef202_off224", "FL_PARTIALGROUND");
            nameMap.Add("globaldef203_off225", "FL_WATERJUMP");
            nameMap.Add("globaldef204_off226", "FL_JUMPRELEASED");
            nameMap.Add("globaldef205_off227", "MOVETYPE_NONE");
            nameMap.Add("globaldef206_off228", "MOVETYPE_WALK");
            nameMap.Add("globaldef207_off229", "MOVETYPE_STEP");
            nameMap.Add("globaldef208_off230", "MOVETYPE_FLY");
            nameMap.Add("globaldef209_off231", "MOVETYPE_TOSS");
            nameMap.Add("globaldef210_off232", "MOVETYPE_PUSH");
            nameMap.Add("globaldef211_off233", "MOVETYPE_NOCLIP");
            nameMap.Add("globaldef212_off234", "MOVETYPE_FLYMISSILE");
            nameMap.Add("globaldef213_off235", "MOVETYPE_BOUNCE");
            nameMap.Add("globaldef214_off236", "MOVETYPE_BOUNCEMISSILE");
            nameMap.Add("globaldef215_off237", "SOLID_NOT");
            nameMap.Add("globaldef216_off238", "SOLID_TRIGGER");
            nameMap.Add("globaldef217_off239", "SOLID_BBOX");
            nameMap.Add("globaldef218_off240", "SOLID_SLIDEBOX");
            nameMap.Add("globaldef219_off241", "SOLID_BSP");
            nameMap.Add("globaldef220_off242", "RANGE_MELEE");
            nameMap.Add("globaldef221_off243", "RANGE_NEAR");
            nameMap.Add("globaldef222_off244", "RANGE_MID");
            nameMap.Add("globaldef223_off245", "RANGE_FAR");
            nameMap.Add("globaldef224_off246", "DEAD_NO");
            nameMap.Add("globaldef225_off247", "DEAD_DYING");
            nameMap.Add("globaldef226_off248", "DEAD_DEAD");
            nameMap.Add("globaldef227_off249", "DEAD_RESPAWNABLE");
            nameMap.Add("globaldef228_off250", "DAMAGE_NO");
            nameMap.Add("globaldef229_off251", "DAMAGE_YES");
            nameMap.Add("globaldef230_off252", "DAMAGE_AIM");
            nameMap.Add("globaldef231_off253", "IT_AXE");
            nameMap.Add("globaldef232_off254", "IT_SHOTGUN");
            nameMap.Add("globaldef233_off255", "IT_SUPER_SHOTGUN");
            nameMap.Add("globaldef234_off256", "IT_NAILGUN");
            nameMap.Add("globaldef235_off257", "IT_SUPER_NAILGUN");
            nameMap.Add("globaldef236_off258", "IT_GRENADE_LAUNCHER");
            nameMap.Add("globaldef237_off259", "IT_ROCKET_LAUNCHER");
            nameMap.Add("globaldef238_off260", "IT_LIGHTNING");
            nameMap.Add("globaldef239_off261", "IT_EXTRA_WEAPON");
            nameMap.Add("globaldef240_off262", "IT_SHELLS");
            nameMap.Add("globaldef241_off263", "IT_NAILS");
            nameMap.Add("globaldef242_off264", "IT_ROCKETS");
            nameMap.Add("globaldef243_off265", "IT_CELLS");
            nameMap.Add("globaldef244_off266", "IT_ARMOR1");
            nameMap.Add("globaldef245_off267", "IT_ARMOR2");
            nameMap.Add("globaldef246_off268", "IT_ARMOR3");
            nameMap.Add("globaldef247_off269", "IT_SUPERHEALTH");
            nameMap.Add("globaldef248_off270", "IT_KEY1");
            nameMap.Add("globaldef249_off271", "IT_KEY2");
            nameMap.Add("globaldef250_off272", "IT_INVISIBILITY");
            nameMap.Add("globaldef251_off273", "IT_INVULNERABILITY");
            nameMap.Add("globaldef252_off274", "IT_SUIT");
            nameMap.Add("globaldef253_off275", "IT_QUAD");
            nameMap.Add("globaldef254_off276", "CONTENT_EMPTY");
            nameMap.Add("globaldef255_off277", "CONTENT_SOLID");
            nameMap.Add("globaldef256_off278", "CONTENT_WATER");
            nameMap.Add("globaldef257_off279", "CONTENT_SLIME");
            nameMap.Add("globaldef258_off280", "CONTENT_LAVA");
            nameMap.Add("globaldef259_off281", "CONTENT_SKY");
            nameMap.Add("globaldef260_off282", "STATE_TOP");
            nameMap.Add("globaldef261_off283", "STATE_BOTTOM");
            nameMap.Add("globaldef262_off284", "STATE_UP");
            nameMap.Add("globaldef263_off285", "STATE_DOWN");
            nameMap.Add("globaldef264_off286", "VEC_ORIGIN");
            nameMap.Add("globaldef268_off289", "VEC_HULL_MIN");
            nameMap.Add("globaldef272_off292", "VEC_HULL_MAX");
            nameMap.Add("globaldef276_off295", "VEC_HULL2_MIN");
            nameMap.Add("globaldef280_off298", "VEC_HULL2_MAX");
            nameMap.Add("globaldef287_off304", "SVC_TEMP");
            nameMap.Add("globaldef290_off307", "SVC_KILLEDMONSTER");
            nameMap.Add("globaldef291_off308", "SVC_FOUNDSECRET");
            nameMap.Add("globaldef292_off309", "SVC_INTERMISSION");
            nameMap.Add("globaldef293_off310", "SVC_FINALE");
            nameMap.Add("globaldef294_off311", "SVC_CDTRACK");
            nameMap.Add("globaldef295_off312", "SVC_SELLSCREEN");
            nameMap.Add("globaldef296_off313", "TE_SPIKE");
            nameMap.Add("globaldef297_off314", "TE_SUPERSPIKE");
            nameMap.Add("globaldef298_off315", "TE_GUNSHOT");
            nameMap.Add("globaldef299_off316", "TE_EXPLOSION");
            nameMap.Add("globaldef300_off317", "TE_TAREXPLOSION");
            nameMap.Add("globaldef301_off318", "TE_LIGHTNING1");
            nameMap.Add("globaldef302_off319", "TE_LIGHTNING2");
            nameMap.Add("globaldef303_off320", "TE_WIZSPIKE");
            nameMap.Add("globaldef304_off321", "TE_KNIGHTSPIKE");
            nameMap.Add("globaldef305_off322", "TE_LIGHTNING3");
            nameMap.Add("globaldef306_off323", "TE_LAVASPLASH");
            nameMap.Add("globaldef307_off324", "TE_TELEPORT");
            nameMap.Add("globaldef308_off325", "CHAN_AUTO");
            nameMap.Add("globaldef309_off326", "CHAN_WEAPON");
            nameMap.Add("globaldef310_off327", "CHAN_VOICE");
            nameMap.Add("globaldef311_off328", "CHAN_ITEM");
            nameMap.Add("globaldef312_off329", "CHAN_BODY");
            nameMap.Add("globaldef313_off330", "ATTN_NONE");
            nameMap.Add("globaldef314_off331", "ATTN_NORM");
            nameMap.Add("globaldef315_off332", "ATTN_IDLE");
            nameMap.Add("globaldef316_off333", "ATTN_STATIC");
            nameMap.Add("globaldef317_off334", "UPDATE_GENERAL");
            nameMap.Add("globaldef318_off335", "UPDATE_STATIC");
            nameMap.Add("globaldef319_off336", "UPDATE_BINARY");
            nameMap.Add("globaldef320_off337", "UPDATE_TEMP");
            nameMap.Add("globaldef321_off338", "EF_BRIGHTFIELD");
            nameMap.Add("globaldef322_off339", "EF_MUZZLEFLASH");
            nameMap.Add("globaldef323_off340", "EF_BRIGHTLIGHT");
            nameMap.Add("globaldef324_off341", "EF_DIMLIGHT");
            nameMap.Add("globaldef325_off342", "MSG_BROADCAST");
            nameMap.Add("globaldef326_off343", "MSG_ONE");
            nameMap.Add("globaldef327_off344", "MSG_ALL");
            nameMap.Add("globaldef328_off345", "MSG_INIT");
            nameMap.Add("globaldef329_off346", "movedist");
            nameMap.Add("globaldef330_off347", "gameover");
            nameMap.Add("globaldef331_off348", "string_null");
            nameMap.Add("globaldef332_off349", "empty_");
            nameMap.Add("globaldef333_off350", "newmis");
            nameMap.Add("globaldef334_off351", "activator");
            nameMap.Add("globaldef335_off352", "damage_attacker");
            nameMap.Add("globaldef336_off353", "framecount");
            nameMap.Add("globaldef337_off354", "skill");
            nameMap.Add("globaldef356_off373", "AS_STRAIGHT");
            nameMap.Add("globaldef357_off374", "AS_SLIDING");
            nameMap.Add("globaldef358_off375", "AS_MELEE");
            nameMap.Add("globaldef359_off376", "AS_MISSILE");

            nameMap.Add("globaldef95_off117", "angles");
            nameMap.Add("globaldef180_off202", "movedir");
            nameMap.Add("globaldef435_off452", "makevectors");
            nameMap.Add("globaldef448_off465", "remove");

            nameMap.Add("func149_fs2438", "SUB_Null");
            nameMap.Add("func150_fs2439", "SUB_Remove");
            nameMap.Add("func151_fs2442", "SetMovedir");
            nameMap.Add("func152_fs2462", "InitTrigger");
            nameMap.Add("SUB_CalcMoveEnt", "SUB_CalcMoveEnt");
            nameMap.Add("func154_fs2487", "SUB_CalcMove");
            nameMap.Add("func155_fs2533", "SUB_CalcMoveDone");
            nameMap.Add("SUB_CalcAngleMoveEnt", "SUB_CalcAngleMoveEnt");
            nameMap.Add("func157_fs2554", "SUB_CalcAngleMove");
            nameMap.Add("func158_fs2581", "SUB_CalcAngleMoveDone");
            nameMap.Add("func159_fs2593", "DelayThink");
            nameMap.Add("func160_fs2599", "SUB_UseTargets");
            nameMap.Add("func161_fs2686", "SUB_AttackFinished");
            nameMap.Add("func162_fs2694", "SUB_CheckRefire");

            // fileMap runs AFTER nameMap

            fileMap.Add("SUB_Null", "subs.qc");
            fileMap.Add("SUB_Remove", "subs.qc");
            fileMap.Add("SetMovedir", "subs.qc");
            fileMap.Add("InitTrigger", "subs.qc");
            fileMap.Add("SUB_CalcMoveEnt", "subs.qc");
            fileMap.Add("SUB_CalcMove", "subs.qc");
            fileMap.Add("SUB_CalcMoveDone", "subs.qc");
            fileMap.Add("SUB_CalcAngleMoveEnt", "subs.qc");
            fileMap.Add("SUB_CalcAngleMove", "subs.qc");
            fileMap.Add("SUB_CalcAngleMoveDone", "subs.qc");
            fileMap.Add("DelayThink", "subs.qc");
            fileMap.Add("SUB_UseTargets", "subs.qc");
            fileMap.Add("SUB_AttackFinished", "subs.qc");
            fileMap.Add("SUB_CheckRefire", "subs.qc");


        }
    }
}
