using System;
using System.Collections.Generic;
using System.Text;

namespace DeQcc
{
    partial class DeQCC
    {
        void InitObotMaps()
        {
            #region Names still in obfuscated progs.dat and their original qc files

            for(int i = 1; i <= 62; i++) { fileMap.Add(i, "defs.qc"); } // built-ins
            //fileMap.Add(63, ".qc");   // bot_stuffcmd
            //for(int i = 65; i <= 71; i++) { fileMap.Add(i, ".qc"); }  // bot_centerprint, bot_centerprint2, bot_centerprint3, bot_centerprint4, bot_centerprint5, bot_centerprint6, bot_centerprint7
            //fileMap.Add(73, ".qc");   // centerprint2
            //fileMap.Add(75, ".qc");   // centerprint4
            //for (int i = 77; i <= 91; i++) { fileMap.Add(i, ".qc"); }   // centerprint6, centerprint7, bprint2, bprint3, bprint4, bprint5, bprint6, bprint7, bot_sprint, bot_sprint2, bot_sprint3, bot_sprint4, bot_sprint5, bot_sprint6, bot_sprint7, 
            //for (int i = 95; i <= 105; i++) { fileMap.Add(i, ".qc"); }    // sprint4, sprint5, sprint6, sprint7, objerror2, objerror3, objerror4, objerror5, objerror6, objerror7, IDCopyright
            //for (int i = 108; i <= 114; i++) { fileMap.Add(i, ".qc"); }  // camcenterprint1, camcenterprint2, camcenterprint3, camcenterprint4, camcenterprint5, camcenterprint6, camcenterprint7
            fileMap.Add(153, "subs.qc");    // SUB_CalcMoveEnt
            fileMap.Add(156, "subs.qc");    // SUB_CalcAngleMoveEnt
            fileMap.Add(175, "ai.qc");    // path_corner
            fileMap.Add(192, "ai.qc");  // ChooseTurn
            fileMap.Add(203, "combat.qc");  // T_BeamDamage
            fileMap.Add(205, "items.qc");  // noclass
            fileMap.Add(209, "items.qc");   // item_health
            for (int i = 213; i <= 215; i++) { fileMap.Add(i, "items.qc"); } // item_armor1, item_armor2, item_armorInv
            for (int i = 220; i <= 225; i++) { fileMap.Add(i, "items.qc"); } // weapon_supershotgun, weapon_nailgun, weapon_supernailgun, weapon_grenadelauncher, weapon_rocketlauncher, weapon_lightning
            for (int i = 227; i <= 231; i++) { fileMap.Add(i, "items.qc"); }    // item_shells, item_spikes, item_rockets, item_cells, item_weapon
            for (int i = 234; i <= 235; i++) { fileMap.Add(i, "items.qc"); }    // item_key1, item_key2
            fileMap.Add(237, "items.qc");   // item_sigil
            for (int i = 239; i <= 242; i++) { fileMap.Add(i, "items.qc"); }    // item_artifact_invulnerability, item_artifact_envirosuit, item_artifact_invisibility, item_artifact_super_damage
            fileMap.Add(256, "weapons.qc"); // SpawnChunk
            fileMap.Add(291, "weapons.qc"); // ServerflagsCommand
            for (int i = 296; i <= 299; i++) { fileMap.Add(i, "world.qc"); }    // main, worldspawn, StartFrame, bodyque
            //fileMap.Add(357, ".qc");  // readytostart
            //fileMap.Add(359, ".qc");  // setfullhealth
            //fileMap.Add(367, ".qc");  // entinfo
            for (int i = 373; i <= 375; i++) { fileMap.Add(i, "client.qc"); }   // info_intermission, SetChangeParms, SetNewParms
            fileMap.Add(383, "client.qc"); // trigger_changelevel
            for (int i = 385; i <= 386; i++) { fileMap.Add(i, "client.qc"); }   // ClientKill, CheckSpawnPoint
            for (int i = 389; i <= 394; i++) { fileMap.Add(i, "client.qc"); }   // PutClientInServer, info_player_start, info_player_start2, testplayerstart, info_player_deathmatch, info_player_coop
            fileMap.Add(401, "client.qc"); // PlayerPreThink
            for (int i = 403; i <= 405; i++) { fileMap.Add(i, "client.qc"); }   // PlayerPostThink, ClientConnect, ClientDisconnect
            for (int i = 537; i <= 538; i++) { fileMap.Add(i, "doors.qc"); }    // door_hit_top, door_hit_bottom
            fileMap.Add(549, "doors.qc");   // func_door
            fileMap.Add(551, "doors.qc");   // fd_secret_move1
            fileMap.Add(553, "doors.qc");   // fd_secret_move3
            fileMap.Add(555, "doors.qc");   // fd_secret_move5
            fileMap.Add(557, "doors.qc");   // fd_secret_done
            for (int i = 560; i <= 562; i++) { fileMap.Add(i, "doors.qc"); }    // func_door_secret, button_wait, button_done
            fileMap.Add(569, "buttons.qc"); // func_button
            fileMap.Add(570, "triggers.qc");     // trigger_reactivate
            for (int i = 577; i <= 580; i++) { fileMap.Add(i, "triggers.qc"); } // trigger_multiple, trigger_once, trigger_relay, trigger_secret
            fileMap.Add(582, "triggers.qc");    // trigger_counter
            fileMap.Add(588, "triggers.qc");    // info_teleport_destination
            fileMap.Add(590, "triggers.qc");    // trigger_teleport
            fileMap.Add(592, "triggers.qc");    // trigger_setskill
            fileMap.Add(594, "triggers.qc");    // trigger_onlyregistered
            fileMap.Add(597, "triggers.qc");    // trigger_hurt
            fileMap.Add(599, "triggers.qc");    // trigger_push
            fileMap.Add(601, "triggers.qc");    // trigger_monsterjump
            for (int i = 603; i <= 604; i++) { fileMap.Add(i, "plats.qc"); }    // plat_hit_top, plat_hit_bottom
            fileMap.Add(608, "plats.qc");    // plat_outside_touch
            fileMap.Add(612, "plats.qc");   // func_plat
            fileMap.Add(615, "plats.qc");   // train_wait
            for (int i = 618; i <= 619; i++) { fileMap.Add(i, "plats.qc"); }    // func_train, misc_teleporttrain
            for (int i = 620; i <= 621; i++) { fileMap.Add(i, "misc.qc"); }    // info_null, info_notnull
            for (int i = 623; i <= 626; i++) { fileMap.Add(i, "misc.qc"); }    // light, light_fluoro, light_fluorospark, light_globe
            for (int i = 628; i <= 632; i++) { fileMap.Add(i, "misc.qc"); }     // light_torch_small_walltorch, light_flame_large_yellow, light_flame_small_yellow, light_flame_small_white, misc_fireball
            for (int i = 636; i <= 637; i++) { fileMap.Add(i, "misc.qc"); }     // misc_explobox, misc_explobox2
            for (int i = 641; i <= 643; i++) { fileMap.Add(i, "misc.qc"); }     // trap_spikeshooter, trap_shooter, air_bubbles
            fileMap.Add(648, "misc.qc");   // viewthing
            for (int i = 650; i <= 662; i++) { fileMap.Add(i, "misc.qc"); }     // func_wall, func_illusionary, func_episodegate, func_bossgate, ambient_suck_wind, ambient_drone, ambient_flouro_buzz, ambient_drip, ambient_comp_hum, ambient_thunder,ambient_light_buzz, ambient_swamp1, ambient_swamp2
            fileMap.Add(664, "misc.qc");    // misc_noisemaker
            for (int i = 810; i <= 811; i++) { fileMap.Add(i, "ogre.qc"); }     // monster_ogre, monster_ogre_marksman
            fileMap.Add(884, "demon.qc");    // monster_demon1
            fileMap.Add(987, "shambler.qc"); // monster_shambler
            fileMap.Add(1055, "knight.qc");   // knight_bow1
            fileMap.Add(1060, "knight.qc");     // knight_bow6
            fileMap.Add(1087, "knight.qc");     // monster_knight
            fileMap.Add(1194, "soldier.qc"); // monster_army
            fileMap.Add(1195, "wizard.qc");    // LaunchMissile
            fileMap.Add(1264, "wizard.qc"); // monster_wizard
            fileMap.Add(1358, "dog.qc"); // monster_dog
            fileMap.Add(1562, "zombie.qc"); // monster_zombie
            fileMap.Add(1677, "boss.qc");   // monster_boss
            fileMap.Add(1680, "boss.qc");   // event_lightning
            fileMap.Add(1746, "tarbaby.qc");    // monster_tarbaby
            fileMap.Add(1814, "hknight.qc");    // hknight_magica1
            fileMap.Add(1828, "hknight.qc");    // hknight_magicb1
            fileMap.Add(1920, "hknight.qc");    // monster_hell_knight
            fileMap.Add(2016, "fish.qc");    // monster_fish
            fileMap.Add(2070, "shalrath.qc");   // monster_shalrath
            fileMap.Add(2182, "enforcer.qc");   // monster_enforcer
            fileMap.Add(2254, "oldone.qc");   // monster_oldone
                                              //fileMap.Add(2285, ".qc");   // BotChooseTelefragMessage
                                              //fileMap.Add(2443, ".qc");   // BotJumpToGoal
                                              //fileMap.Add(2649, ".qc");   // update_cachex2
                                              //fileMap.Add(2667, ".qc");   // waypoint
                                              //fileMap.Add(2672, ".qc");   // DestroyWaypoint
                                              //fileMap.Add(2690, ".qc");   // MovingEntityCached

            #endregion

            #region Set unknown files for all unknown names at this point

            // Whenever there is a gap between the known function names/files, create a new unique file for the
            // functions in that gap (so we continue to have a sequential list of functions across multiple files)
            // if we don't do this, all the unknown files will be appended to a single file, and we won't be able
            // to tell where the known functions originally were in that file, making matching more difficult
            int nextfile = 0;
            bool lastFunctionWasInFileMap = false;
            for(int i = 1; i < 3000; i++)   // should be to functions.Count, but functions aren't read in yet
            {
                if (!fileMap.ContainsKey(i))
                {
                    fileMap.Add(i, "unknown" + nextfile.ToString("000") + ".qc");
                    lastFunctionWasInFileMap = false;
                }
                else
                {
                    if (lastFunctionWasInFileMap == false)
                    {
                        nextfile++;
                    }
                    lastFunctionWasInFileMap = true;
                }
            }

            #endregion

            #region defs.qc system globals

            nameMap.Add("globaldef000001", "self");
            nameMap.Add("globaldef000002", "other");
            nameMap.Add("globaldef000003", "world");
            nameMap.Add("globaldef000004", "time");
            nameMap.Add("globaldef000005", "frametime");
            nameMap.Add("globaldef000006", "force_retouch");
            nameMap.Add("globaldef000007", "mapname");
            nameMap.Add("globaldef000008", "deathmatch");
            nameMap.Add("globaldef000009", "coop");
            nameMap.Add("globaldef000010", "teamplay");
            nameMap.Add("globaldef000011", "serverflags");
            nameMap.Add("globaldef000012", "total_secrets");
            nameMap.Add("globaldef000013", "total_monsters");
            nameMap.Add("globaldef000014", "found_secrets");
            nameMap.Add("globaldef000015", "killed_monsters");
            nameMap.Add("globaldef000016", "parm1");
            nameMap.Add("globaldef000017", "parm2");
            nameMap.Add("globaldef000018", "parm3");
            nameMap.Add("globaldef000019", "parm4");
            nameMap.Add("globaldef000020", "parm5");
            nameMap.Add("globaldef000021", "parm6");
            nameMap.Add("globaldef000022", "parm7");
            nameMap.Add("globaldef000023", "parm8");
            nameMap.Add("globaldef000024", "parm9");
            nameMap.Add("globaldef000025", "parm10");
            nameMap.Add("globaldef000026", "parm11");
            nameMap.Add("globaldef000027", "parm12");
            nameMap.Add("globaldef000028", "parm13");
            nameMap.Add("globaldef000029", "parm14");
            nameMap.Add("globaldef000030", "parm15");
            nameMap.Add("globaldef000031", "parm16");
            nameMap.Add("globaldef000032", "v_forward");
            nameMap.Add("globaldef000036", "v_up");
            nameMap.Add("globaldef000040", "v_right");
            nameMap.Add("globaldef000044", "trace_allsolid");
            nameMap.Add("globaldef000045", "trace_startsolid");
            nameMap.Add("globaldef000046", "trace_fraction");
            nameMap.Add("globaldef000047", "trace_endpos");
            nameMap.Add("globaldef000051", "trace_plane_normal");
            nameMap.Add("globaldef000055", "trace_plane_dist");
            nameMap.Add("globaldef000056", "trace_ent");
            nameMap.Add("globaldef000057", "trace_inopen");
            nameMap.Add("globaldef000058", "trace_inwater");
            nameMap.Add("globaldef000059", "msg_entity");
            nameMap.Add("globaldef000070", "end_sys_globals");
            nameMap.Add("globaldef000190", "end_sys_fields");

            #endregion

            #region defs.qc constants

            nameMap.Add("globaldef000191", "FALSE"); /* = 0 */
            nameMap.Add("globaldef000192", "TRUE"); /* = 1 */
            nameMap.Add("globaldef000193", "FL_FLY"); /* = 1 */
            nameMap.Add("globaldef000194", "FL_SWIM"); /* = 2 */
            nameMap.Add("globaldef000195", "FL_CLIENT"); /* = 8 */
            nameMap.Add("globaldef000196", "FL_INWATER"); /* = 16 */
            nameMap.Add("globaldef000197", "FL_MONSTER"); /* = 32 */
            nameMap.Add("globaldef000198", "FL_GODMODE"); /* = 64 */
            nameMap.Add("globaldef000199", "FL_NOTARGET"); /* = 128 */
            nameMap.Add("globaldef000200", "FL_ITEM"); /* = 256 */
            nameMap.Add("globaldef000201", "FL_ONGROUND"); /* = 512 */
            nameMap.Add("globaldef000202", "FL_PARTIALGROUND"); /* = 1024 */
            nameMap.Add("globaldef000203", "FL_WATERJUMP"); /* = 2048 */
            nameMap.Add("globaldef000204", "FL_JUMPRELEASED"); /* = 4096 */
            nameMap.Add("globaldef000205", "MOVETYPE_NONE"); /* = 0 */
            nameMap.Add("globaldef000206", "MOVETYPE_WALK"); /* = 3 */
            nameMap.Add("globaldef000207", "MOVETYPE_STEP"); /* = 4 */
            nameMap.Add("globaldef000208", "MOVETYPE_FLY"); /* = 5 */
            nameMap.Add("globaldef000209", "MOVETYPE_TOSS"); /* = 6 */
            nameMap.Add("globaldef000210", "MOVETYPE_PUSH"); /* = 7 */
            nameMap.Add("globaldef000211", "MOVETYPE_NOCLIP"); /* = 8 */
            nameMap.Add("globaldef000212", "MOVETYPE_FLYMISSILE"); /* = 9 */
            nameMap.Add("globaldef000213", "MOVETYPE_BOUNCE"); /* = 10 */
            nameMap.Add("globaldef000214", "MOVETYPE_BOUNCEMISSILE"); /* = 11 */
            nameMap.Add("globaldef000215", "SOLID_NOT"); /* = 0 */
            nameMap.Add("globaldef000216", "SOLID_TRIGGER"); /* = 1 */
            nameMap.Add("globaldef000217", "SOLID_BBOX"); /* = 2 */
            nameMap.Add("globaldef000218", "SOLID_SLIDEBOX"); /* = 3 */
            nameMap.Add("globaldef000219", "SOLID_BSP"); /* = 4 */
            nameMap.Add("globaldef000220", "RANGE_MELEE"); /* = 0 */
            nameMap.Add("globaldef000221", "RANGE_NEAR"); /* = 1 */
            nameMap.Add("globaldef000222", "RANGE_MID"); /* = 2 */
            nameMap.Add("globaldef000223", "RANGE_FAR"); /* = 3 */
            nameMap.Add("globaldef000224", "DEAD_NO"); /* = 0 */
            nameMap.Add("globaldef000225", "DEAD_DYING"); /* = 1 */
            nameMap.Add("globaldef000226", "DEAD_DEAD"); /* = 2 */
            nameMap.Add("globaldef000227", "DEAD_RESPAWNABLE"); /* = 3 */
            nameMap.Add("globaldef000228", "DAMAGE_NO"); /* = 0 */
            nameMap.Add("globaldef000229", "DAMAGE_YES"); /* = 1 */
            nameMap.Add("globaldef000230", "DAMAGE_AIM"); /* = 2 */
            nameMap.Add("globaldef000231", "IT_AXE"); /* = 4096 */
            nameMap.Add("globaldef000232", "IT_SHOTGUN"); /* = 1 */
            nameMap.Add("globaldef000233", "IT_SUPER_SHOTGUN"); /* = 2 */
            nameMap.Add("globaldef000234", "IT_NAILGUN"); /* = 4 */
            nameMap.Add("globaldef000235", "IT_SUPER_NAILGUN"); /* = 8 */
            nameMap.Add("globaldef000236", "IT_GRENADE_LAUNCHER"); /* = 16 */
            nameMap.Add("globaldef000237", "IT_ROCKET_LAUNCHER"); /* = 32 */
            nameMap.Add("globaldef000238", "IT_LIGHTNING"); /* = 64 */
            nameMap.Add("globaldef000239", "IT_EXTRA_WEAPON"); /* = 128 */
            nameMap.Add("globaldef000240", "IT_SHELLS"); /* = 256 */
            nameMap.Add("globaldef000241", "IT_NAILS"); /* = 512 */
            nameMap.Add("globaldef000242", "IT_ROCKETS"); /* = 1024 */
            nameMap.Add("globaldef000243", "IT_CELLS"); /* = 2048 */
            nameMap.Add("globaldef000244", "IT_ARMOR1"); /* = 8192 */
            nameMap.Add("globaldef000245", "IT_ARMOR2"); /* = 16384 */
            nameMap.Add("globaldef000246", "IT_ARMOR3"); /* = 32768 */
            nameMap.Add("globaldef000247", "IT_SUPERHEALTH"); /* = 65536 */
            nameMap.Add("globaldef000248", "IT_KEY1"); /* = 131072 */
            nameMap.Add("globaldef000249", "IT_KEY2"); /* = 262144 */
            nameMap.Add("globaldef000250", "IT_INVISIBILITY"); /* = 524288 */
            nameMap.Add("globaldef000251", "IT_INVULNERABILITY"); /* = 1048576 */
            nameMap.Add("globaldef000252", "IT_SUIT"); /* = 2097152 */
            nameMap.Add("globaldef000253", "IT_QUAD"); /* = 4194304 */
            nameMap.Add("globaldef000254", "CONTENT_EMPTY"); /* = -1 */
            nameMap.Add("globaldef000255", "CONTENT_SOLID"); /* = -2 */
            nameMap.Add("globaldef000256", "CONTENT_WATER"); /* = -3 */
            nameMap.Add("globaldef000257", "CONTENT_SLIME"); /* = -4 */
            nameMap.Add("globaldef000258", "CONTENT_LAVA"); /* = -5 */
            nameMap.Add("globaldef000259", "CONTENT_SKY"); /* = -6 */
            nameMap.Add("globaldef000260", "STATE_TOP"); /* = 0 */
            nameMap.Add("globaldef000261", "STATE_BOTTOM"); /* = 1 */
            nameMap.Add("globaldef000262", "STATE_UP"); /* = 2 */
            nameMap.Add("globaldef000263", "STATE_DOWN"); /* = 3 */

            nameMap.Add("globaldef000264", "VEC_ORIGIN");
            nameMap.Add("globaldef000268", "VEC_HULL_MIN");
            nameMap.Add("globaldef000272", "VEC_HULL_MAX");
            nameMap.Add("globaldef000276", "VEC_HULL2_MIN");
            nameMap.Add("globaldef000280", "VEC_HULL2_MAX");

            nameMap.Add("globaldef000284", "SVC_SETVIEW"); /* = 5 */
            nameMap.Add("globaldef000285", "SVC_PRINT"); /* = 8 */
            nameMap.Add("globaldef000286", "SVC_SETANGLE"); /* = 10 */
            nameMap.Add("globaldef000287", "SVC_TEMPENTITY"); /* = 23 */
            nameMap.Add("globaldef000288", "SVC_SIGNONNUM"); /* = 25 */
            nameMap.Add("globaldef000289", "SVC_CENTERPRINT"); /* = 26 */
            nameMap.Add("globaldef000290", "SVC_KILLEDMONSTER"); /* = 27 */
            nameMap.Add("globaldef000291", "SVC_FOUNDSECRET"); /* = 28 */
            nameMap.Add("globaldef000292", "SVC_INTERMISSION"); /* = 30 */
            nameMap.Add("globaldef000293", "SVC_FINALE"); /* = 31 */
            nameMap.Add("globaldef000294", "SVC_CDTRACK"); /* = 32 */
            nameMap.Add("globaldef000295", "SVC_SELLSCREEN"); /* = 33 */
            nameMap.Add("globaldef000296", "TE_SPIKE"); /* = 0 */
            nameMap.Add("globaldef000297", "TE_SUPERSPIKE"); /* = 1 */
            nameMap.Add("globaldef000298", "TE_GUNSHOT"); /* = 2 */
            nameMap.Add("globaldef000299", "TE_EXPLOSION"); /* = 3 */
            nameMap.Add("globaldef000300", "TE_TAREXPLOSION"); /* = 4 */
            nameMap.Add("globaldef000301", "TE_LIGHTNING1"); /* = 5 */
            nameMap.Add("globaldef000302", "TE_LIGHTNING2"); /* = 6 */
            nameMap.Add("globaldef000303", "TE_WIZSPIKE"); /* = 7 */
            nameMap.Add("globaldef000304", "TE_KNIGHTSPIKE"); /* = 8 */
            nameMap.Add("globaldef000305", "TE_LIGHTNING3"); /* = 9 */
            nameMap.Add("globaldef000306", "TE_LAVASPLASH"); /* = 10 */
            nameMap.Add("globaldef000307", "TE_TELEPORT"); /* = 11 */
            nameMap.Add("globaldef000308", "CHAN_AUTO"); /* = 0 */
            nameMap.Add("globaldef000309", "CHAN_WEAPON"); /* = 1 */
            nameMap.Add("globaldef000310", "CHAN_VOICE"); /* = 2 */
            nameMap.Add("globaldef000311", "CHAN_ITEM"); /* = 3 */
            nameMap.Add("globaldef000312", "CHAN_BODY"); /* = 4 */
            nameMap.Add("globaldef000313", "ATTN_NONE"); /* = 0 */
            nameMap.Add("globaldef000314", "ATTN_NORM"); /* = 1 */
            nameMap.Add("globaldef000315", "ATTN_IDLE"); /* = 2 */
            nameMap.Add("globaldef000316", "ATTN_STATIC"); /* = 3 */
            nameMap.Add("globaldef000317", "UPDATE_GENERAL"); /* = 0 */
            nameMap.Add("globaldef000318", "UPDATE_STATIC"); /* = 1 */
            nameMap.Add("globaldef000319", "UPDATE_BINARY"); /* = 2 */
            nameMap.Add("globaldef000320", "UPDATE_TEMP"); /* = 3 */
            nameMap.Add("globaldef000321", "EF_BRIGHTFIELD"); /* = 1 */
            nameMap.Add("globaldef000322", "EF_MUZZLEFLASH"); /* = 2 */
            nameMap.Add("globaldef000323", "EF_BRIGHTLIGHT"); /* = 4 */
            nameMap.Add("globaldef000324", "EF_DIMLIGHT"); /* = 8 */
            nameMap.Add("globaldef000325", "MSG_BROADCAST"); /* = 0 */
            nameMap.Add("globaldef000326", "MSG_ONE"); /* = 1 */
            nameMap.Add("globaldef000327", "MSG_ALL"); /* = 2 */
            nameMap.Add("globaldef000328", "MSG_INIT"); /* = 3 */

            nameMap.Add("globaldef000329", "movedist");
            nameMap.Add("globaldef000330", "gameover");
            nameMap.Add("globaldef000331", "string_null");
            nameMap.Add("globaldef000332", "empty_float");
            nameMap.Add("globaldef000333", "newmis");
            nameMap.Add("globaldef000334", "activator");
            nameMap.Add("globaldef000335", "damage_attacker");
            nameMap.Add("globaldef000336", "framecount");
            nameMap.Add("globaldef000337", "skill");

            nameMap.Add("globaldef000356", "AS_STRAIGHT");
            nameMap.Add("globaldef000357", "AS_SLIDING");
            nameMap.Add("globaldef000358", "AS_MELEE");
            nameMap.Add("globaldef000359", "AS_MISSILE");

            #endregion

            nameMap.Add("func000072", "centerprint");

            nameMap.Add("globaldef000723", "GLOBALDEFSEVENTWOTHREE");  // constant = 600
            nameMap.Add("globaldef000728", "GLOBALDEFSEVENTWOEIGHT");   // constant = 500

            #region subs.qc

            // Functions
            nameMap.Add("func000149", "SUB_Null");
            nameMap.Add("func000150", "SUB_Remove");
            nameMap.Add("func000151", "SetMovedir");
            nameMap.Add("func000152", "InitTrigger");
            nameMap.Add("func000154", "SUB_CalcMove");
            nameMap.Add("func000155", "SUB_CalcMoveDone");
            nameMap.Add("func000157", "SUB_CalcAngleMove");
            nameMap.Add("func000158", "SUB_CalcAngleMoveDone");
            nameMap.Add("func000159", "DelayThink");
            nameMap.Add("func000160", "SUB_UseTargets");
            nameMap.Add("func000161", "SUB_AttackFinished");
            nameMap.Add("func000162", "SUB_CheckRefire");

            for (int i = 149; i <= 162; i++)
            {
                fileMap[i] = "subs.qc";
            }

            // SUB_CalcMoveEnt params
            nameMap.Add("globaldef001467", "ent");
            nameMap.Add("globaldef001468", "tdest");
            nameMap.Add("globaldef001472", "tspeed");
            nameMap.Add("func000000", "func");
            // Sub_CalcMoveEnt locals
            nameMap.Add("globaldef001474", "stemp");

            // Sub_CalcMove params
            nameMap.Add("globaldef001475", "tdest");
            nameMap.Add("globaldef001479", "tspeed");

            // SUB_CalcMove locals
            nameMap.Add("globaldef001481", "vdestdelta");
            nameMap.Add("globaldef001485", "len");
            nameMap.Add("globaldef001486", "traveltime");

            // SUB_CalcAngleMoveEnt params
            nameMap.Add("globaldef001490", "ent");
            nameMap.Add("globaldef001491", "destangle");
            nameMap.Add("globaldef001495", "tspeed");

            // SUB_CalcAngleMoveEnt locals
            nameMap.Add("globaldef001497", "stemp");

            // SUB_CalcAngleMove params
            nameMap.Add("globaldef001498", "destangle");
            nameMap.Add("globaldef001502", "tspeed");

            // SUB_CalcAngleMove locals
            nameMap.Add("globaldef001504", "destdelta");
            nameMap.Add("globaldef001508", "len");
            nameMap.Add("globaldef001509", "traveltime");

            // SUB_UseTargets locals
            nameMap.Add("globaldef001511", "t");
            nameMap.Add("globaldef001512", "stemp");
            nameMap.Add("globaldef001513", "otemp");
            nameMap.Add("globaldef001514", "act");

            // SUB_AttackFinished params
            nameMap.Add("globaldef001518", "normal");

            // Declaration
            nameMap.Add("globaldef001639", "targ");

            #endregion

            #region fight.qc

            nameMap.Add("func000163", "knight_attack");
            nameMap.Add("func000164", "CheckAttack");
            nameMap.Add("func000165", "ai_face");
            nameMap.Add("func000166", "ai_charge");
            nameMap.Add("func000167", "ai_charge_side");
            nameMap.Add("func000168", "ai_melee");
            nameMap.Add("func000169", "ai_melee_side");
            nameMap.Add("func000170", "SoldierCheckAttack");
            nameMap.Add("func000171", "ShamCheckAttack");
            nameMap.Add("func000172", "OgreCheckAttack");

            for (int i = 163; i <= 172; i++)
            {
                fileMap[i] = "fight.qc";
            }

            // Declarations
            nameMap.Add("globaldef001534", "enemy_vis");
            nameMap.Add("globaldef001535", "enemy_infront");
            nameMap.Add("globaldef001536", "enemy_range");
            nameMap.Add("globaldef001537", "enemy_yaw");

            // knight_attack locals
            nameMap.Add("globaldef001539", "len");

            // CheckAttack locals
            nameMap.Add("globaldef001541", "spot1");
            nameMap.Add("globaldef001545", "spot2");
            nameMap.Add("globaldef001549", "targ");
            nameMap.Add("globaldef001550", "chance");

            // ai_charge params
            nameMap.Add("globaldef001558", "d");

            // ai_charge_side locals
            nameMap.Add("globaldef001560", "dtemp");
            nameMap.Add("globaldef001564", "heading");

            // ai_melee locals
            nameMap.Add("globaldef001566", "delta");
            nameMap.Add("globaldef001570", "ldmg");

            // ai_melee_side locals
            nameMap.Add("globaldef001572", "delta");
            nameMap.Add("globaldef001576", "ldmg");
            // note extra random() call not assigned to anything, due to compiler bug

            // SoldierCheckAttack locals
            nameMap.Add("globaldef001578", "spot1");
            nameMap.Add("globaldef001582", "spot2");
            nameMap.Add("globaldef001586", "targ");
            nameMap.Add("globaldef001587", "chance");

            // ShamCheckAttack locals
            nameMap.Add("globaldef001590", "spot1");
            nameMap.Add("globaldef001594", "spot2");
            nameMap.Add("globaldef001598", "targ");
            nameMap.Add("globaldef001599", "chance");

            // OgreCheckAttack locals
            nameMap.Add("globaldef001601", "spot1");
            nameMap.Add("globaldef001605", "spot2");
            nameMap.Add("globaldef001609", "targ");
            nameMap.Add("globaldef001610", "chance");

            #endregion

            #region ai.qc

            // Declarations
            nameMap.Add("globaldef001616", "current_yaw");
            nameMap.Add("globaldef001617", "sight_entity");
            nameMap.Add("globaldef001618", "sight_entity_time");

            nameMap.Add("func000173", "anglemod");
            nameMap.Add("func000174", "movetarget_f");
            nameMap.Add("func000176", "t_movetarget");
            nameMap.Add("func000177", "range");
            nameMap.Add("func000178", "visible");
            nameMap.Add("func000179", "infront");
            nameMap.Add("func000180", "HuntTarget");
            nameMap.Add("func000181", "SightSound");
            nameMap.Add("func000182", "FoundTarget");
            nameMap.Add("func000183", "obot_ai_FindClosestVisibleEnt");
            nameMap.Add("func000184", "FindTarget");
            nameMap.Add("func000185", "ai_forward");
            nameMap.Add("func000186", "ai_back");
            nameMap.Add("func000187", "ai_pain");
            nameMap.Add("func000188", "ai_painforward");
            nameMap.Add("func000189", "ai_walk");
            nameMap.Add("func000190", "ai_stand");
            nameMap.Add("func000191", "ai_turn");
            nameMap.Add("func000193", "FacingIdeal");
            nameMap.Add("func000194", "CheckAnyAttack");
            nameMap.Add("func000195", "ai_run_melee");
            nameMap.Add("func000196", "ai_run_missile");
            nameMap.Add("func000197", "ai_run_slide");
            nameMap.Add("func000198", "ai_run");

            for (int i = 173; i <= 198; i++)
            {
                fileMap[i] = "ai.qc";
            }

            // anglemod params
            nameMap.Add("globaldef001619", "v");

            // t_movetarget locals
            nameMap.Add("globaldef001624", "temp");

            // range params
            nameMap.Add("globaldef001628", "targ");

            // range locals
            nameMap.Add("globaldef001629", "spot1");
            nameMap.Add("globaldef001633", "spot2");
            nameMap.Add("globaldef001637", "r");

            // visible locals
            nameMap.Add("globaldef001640", "spot1");
            nameMap.Add("globaldef001644", "spot2");

            // infront params
            nameMap.Add("globaldef001648", "targ");

            // infront locals
            nameMap.Add("globaldef001649", "vec");
            nameMap.Add("globaldef001653", "dot");

            // SightSound locals
            nameMap.Add("globaldef001656", "rsnd");

            // obot_ai_FindClosestVisibleEnt locals
            nameMap.Add("globaldef001686", "currentdist");
            nameMap.Add("globaldef001687", "closestdist");
            nameMap.Add("globaldef001688", "currentent");
            nameMap.Add("globaldef001689", "closestent");

            // FindTarget locals
            nameMap.Add("globaldef001692", "client");
            nameMap.Add("globaldef001693", "r");

            // ai_forward params
            nameMap.Add("globaldef001695", "dist");

            // ai_back params
            nameMap.Add("globaldef001697", "dist");

            // ai_pain params
            nameMap.Add("globaldef001699", "dist");

            // ai_painforward params
            nameMap.Add("globaldef001701", "dist");

            // ai_walk params
            nameMap.Add("globaldef001703", "dist");

            // ai_walk locals
            nameMap.Add("globaldef001704", "mtemp");

            // ChooseTurn params
            nameMap.Add("globaldef001711", "dest3");

            // ChooseTurn locals
            nameMap.Add("globaldef001715", "dir");
            nameMap.Add("globaldef001719", "newdir");

            // FacingIdeal locals
            nameMap.Add("globaldef001724", "delta");

            // ai_run_slide locals
            nameMap.Add("globaldef001732", "ofs");

            // ai_run params
            nameMap.Add("globaldef001735", "dist");

            // ai_run_locals
            nameMap.Add("globaldef001736", "delta");
            nameMap.Add("globaldef001740", "axis");
            nameMap.Add("globaldef001741", "direct");
            nameMap.Add("globaldef001742", "ang_rint");
            nameMap.Add("globaldef001743", "ang_floor");
            nameMap.Add("globaldef001744", "ang_ceil");

            #endregion

            #region combat.qc

            nameMap.Add("func000199", "CanDamage");
            nameMap.Add("func000201", "T_Damage");

            for (int i = 199; i <= 201; i++)
            {
                fileMap[i] = "combat.qc";
            }

            #endregion

            #region items.qc

            for (int i = 205; i <= 242; i++)
            {
                fileMap[i] = "items.qc";
            }

            #endregion

            #region weapons.qc

            for (int i = 256; i <= 291; i++)
            {
                fileMap[i] = "weapons.qc";
            }

            #endregion

            #region client.qc

            for (int i = 373; i <= 405; i++)
            {
                fileMap[i] = "client.qc";
            }

            #endregion

            // not sure where this goes
            nameMap.Add("func000461", "ThrowGib");

            #region doors.qc

            for (int i = 537; i <= 562; i++)
            {
                fileMap[i] = "doors.qc";
            }

            #endregion

            #region triggers.qc

            for (int i = 570; i <= 601; i++)
            {
                fileMap[i] = "triggers.qc";
            }

            #endregion

            #region plats.qc

            for (int i = 603; i <= 619; i++)
            {
                fileMap[i] = "plats.qc";
            }

            #endregion

            #region misc.qc

            for (int i = 620; i <= 664; i++)
            {
                fileMap[i] = "misc.qc";
            }

            #endregion

            nameMap.Add("func000702", "ogre_swing1");
            nameMap.Add("func000716", "ogre_smash1");
            nameMap.Add("func000887", "DemonCheckAttack");

            nameMap.Add("func000888", "Demon_Melee");
            // Demon_Melee params
            nameMap.Add("globaldef003923", "side");

            nameMap.Add("func000925", "sham_smash1");
            nameMap.Add("func000938", "sham_swingl1");
            nameMap.Add("func000947", "sham_swingr1");

            nameMap.Add("func000997", "knight_walk1");
            nameMap.Add("func001019", "knight_runatk1");
            nameMap.Add("func001030", "knight_atk1");

            #region knight.qc

            for (int i = 1055; i <= 1087; i++)
            {
                fileMap[i] = "knight.qc";
            }

            #endregion

            #region wizard.qc

            nameMap.Add("func001196", "WizardCheckAttack");

            for (int i = 1195; i <= 1264; i++)
            {
                fileMap[i] = "wizard.qc";
            }

            #endregion

            #region dog.qc

            nameMap.Add("func001357", "DogCheckAttack");

            for (int i = 1357; i <= 1357; i++)
            {
                fileMap[i] = "dog.qc";
            }

            #endregion

            #region boss.qc

            for (int i = 1677; i <= 1680; i++)
            {
                fileMap[i] = "boss.qc";
            }

            #endregion

            #region hknight.qc

            for (int i = 1814; i <= 1920; i++)
            {
                fileMap[i] = "hknight.qc";
            }

            #endregion

            #region oldone.qc

            // Declaration
            nameMap.Add("globaldef005566", "shub");

            for(int i = 1; i <= 46; i++) { nameMap.Add("func00" + (2182+i).ToString(), "old_idle" + i.ToString()); }
            for (int i = 1; i <= 20; i++) { nameMap.Add("func00" + (2228 + i).ToString(), "old_thrash" + i.ToString()); }
            nameMap.Add("func002249", "finale_1");
            nameMap.Add("func002250", "finale_2");
            nameMap.Add("func002251", "finale_3");
            nameMap.Add("func002252", "finale_4");
            nameMap.Add("func002253", "nopain");

            for (int i = 2183; i <= 2253; i++)
            {
                fileMap[i] = "oldone.qc";
            }

            // finale_1 locals
            nameMap.Add("globaldef005639", "pos");
            nameMap.Add("globaldef005640", "pl");
            nameMap.Add("globaldef005641", "timer");

            // finale_2 locals
            nameMap.Add("globaldef005646", "o");

            // finale_4 locals
            nameMap.Add("globaldef005653", "oldo");
            nameMap.Add("globaldef005657", "x");
            nameMap.Add("globaldef005658", "y");
            nameMap.Add("globaldef005659", "z");
            nameMap.Add("globaldef005660", "r");
            nameMap.Add("globaldef005661", "n");

            #endregion
        }
    }
}
