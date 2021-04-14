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


            nameMap.Add("globaldef000529", "end_ra_globals");
            nameMap.Add("field000224", "f_updatecache");
            nameMap.Add("globaldef009217", "wp");
            nameMap.Add("globaldef009224", "dist");
            nameMap.Add("globaldef009219", "ent");
            nameMap.Add("field000225", "f_goalweight");
            nameMap.Add("field000226", "f_walkaboutweight");

            // rocket arena
            nameMap.Add("globaldef000522", "RA_PLAYERSTATTIME");  // constant = 0.5
            nameMap.Add("globaldef000523", "RA_MAXIDLETIME");  // constant = 300
            nameMap.Add("globaldef000524", "winner");
            nameMap.Add("globaldef000525", "loser");
            nameMap.Add("globaldef000526", "first");
            nameMap.Add("globaldef000527", "time_to_start");
            nameMap.Add("globaldef000528", "last_time");

            nameMap.Add("globaldef000719", "OBOT_MAXBOTS");  // constant = 24
            nameMap.Add("globaldef000721", "GLOBALDEF721_250");  // constant = 250
            nameMap.Add("globaldef000723", "GLOBALDEF723_600");  // constant = 600
            nameMap.Add("globaldef000724", "GLOBALDEF724_800");  // constant = 800
            nameMap.Add("globaldef000727", "OBOT_MAXSHELLCASES");   // b_eject.qc, constant = 30
            nameMap.Add("globaldef000728", "GLOBALDEF728_500");   // constant = 500
            nameMap.Add("globaldef000729", "GLOBALDEF729_40");   // constant = 40
            nameMap.Add("globaldef000748", "GLOBALDEF748_15");   // constant = 15

            // boolean flags
            nameMap.Add("globaldef000749", "OBOT_BUBBLEROUTING");   // constant = 16
            nameMap.Add("globaldef000750", "OBOT_ROCKETARENA");   // constant = 32
            nameMap.Add("globaldef000751", "OBOT_BOTPATHING");   // constant = 64
            nameMap.Add("globaldef000752", "OBOT_HUMANPATHING");   // constant = 128
            nameMap.Add("globaldef000753", "OBOT_TALK");   // constant = 256
            nameMap.Add("globaldef000754", "OBOT_POWERUPS");   // constant = 512 
            nameMap.Add("globaldef000755", "OBOT_WEAPONS");   // constant = 1024
            nameMap.Add("globaldef000756", "OBOT_LIGHTNING");   // constant = 2048
            nameMap.Add("globaldef000757", "OBOT_ROCKET");   // constant = 4096
            nameMap.Add("globaldef000758", "OBOT_GRENADE");   // constant = 8192
            nameMap.Add("globaldef000759", "OBOT_SUPERNAIL");   // constant = 16384
            //nameMap.Add("globaldef000760", "OBOT_");   // constant = 32768
            nameMap.Add("globaldef000761", "OBOT_SHELLCASES");   // b_eject.qc, constant = 65536

            nameMap.Add("globaldef000774", "GLOBALDEF774_12");   // constant = 12
            nameMap.Add("globaldef000775", "GLOBALDEF775_13");   // constant = 13

            // b_clrank.qc
            nameMap.Add("globaldef000795", "activeClientBitmask");  // b_clrank.qc
            nameMap.Add("globaldef000796", "maxClients");  // b_clrank.qc
            nameMap.Add("globaldef000797", "activeClientCount");  // b_clrank.qc

            nameMap.Add("globaldef000814", "currentAdmin");  // b_impuls.qc CheckIsAdmin

            // b_clrank.qc
            nameMap.Add("field000285", "clientnumber");  // b_clrank.qc
            nameMap.Add("field000287", "clientcolor");  // b_clrank.qc

            // Note that b_func.qc, all the function definitions
            // is decompiled to the top of the next file

            #region b_defs.qc

            nameMap.Add("func000064", "stuffcmd");
            nameMap.Add("func000072", "centerprint");
            nameMap.Add("func000074", "centerprint3");
            nameMap.Add("func000076", "centerprint5");
            nameMap.Add("func000092", "sprint");
            nameMap.Add("func000093", "sprint2");
            nameMap.Add("func000094", "sprint3");

            for (int i = 63; i <= 105; i++)
            {
                fileMap[i] = "b_defs.qc";
            }

            #endregion

            #region b_func.qc

            // all of the function declarations sit before the first kascam function, 
            // so just include that one function here to make sure all the defs appear in the
            // correct file (better to have one kascam function in b_defs than all of the
            // declarations in b_kascam, or to rewrite the decompiler for this special case

            nameMap.Add("func000106", "CamCycle");

            for (int i = 106; i <= 106; i++)
            {
                fileMap[i] = "b_func.qc";
            }

            // CamCycle params
            nameMap.Add("globaldef001169", "ent");

            #endregion

            #region b_kascam.qc

            // These are taken from KasCam so we can match on that basis

            // Declarations
            nameMap.Add("globaldef001160", "CAM_IDLE");
            nameMap.Add("globaldef001161", "CAM_FIXED");
            nameMap.Add("globaldef001162", "CAM_FLYBY");
            nameMap.Add("globaldef001163", "CAM_FOLLOW");
            nameMap.Add("globaldef001164", "CAM_HAND");
            nameMap.Add("globaldef001165", "CAM_FREE");
            nameMap.Add("globaldef001166", "CAM_NOCLIP");
            nameMap.Add("globaldef001167", "CAM_DEATH");

            nameMap.Add("func000107", "CamVectors");
            nameMap.Add("func000115", "CamReport");
            nameMap.Add("func000116", "CamSqrt");
            nameMap.Add("func000117", "CamReAngle");
            nameMap.Add("func000118", "CamVisible");
            nameMap.Add("func000119", "CamVisibleEnt");
            nameMap.Add("func000120", "CamShoot");
            nameMap.Add("func000121", "CamHurry");
            nameMap.Add("func000122", "CamSmooth");
            nameMap.Add("func000123", "TryFlybyVector");
            nameMap.Add("func000124", "CamUpdatePos");
            nameMap.Add("func000125", "CamSetAuto");
            nameMap.Add("func000126", "CamGoIdle");
            nameMap.Add("func000127", "CamGoDeath");
            nameMap.Add("func000128", "CamFlybyTarget");
            nameMap.Add("func000129", "CamInitFlybyMode");
            nameMap.Add("func000130", "GetFollowCam");
            nameMap.Add("func000131", "GetFollowTrg");
            nameMap.Add("func000132", "CamHandJump");
            nameMap.Add("func000133", "CamGetPos");
            nameMap.Add("func000134", "CamSavePos");
            nameMap.Add("func000135", "CamLoadPos");
            nameMap.Add("func000136", "CamImpulses");
            nameMap.Add("func000137", "CamUpdValues");
            nameMap.Add("func000138", "CamHealthVal");
            nameMap.Add("func000139", "CamIdleThink");
            nameMap.Add("func000140", "CamFlyByThink");
            nameMap.Add("func000141", "CamFollowThink");
            nameMap.Add("func000142", "CamFixedThink");
            nameMap.Add("func000143", "CamDeathThink");
            nameMap.Add("func000144", "CamThink");
            nameMap.Add("func000145", "CamClientInit");
            nameMap.Add("func000146", "CamSpawn");
            nameMap.Add("func000147", "CamDisconnect");
            nameMap.Add("func000148", "CamCopyBody");

            for (int i = 107; i <= 148; i++)
            {
                fileMap[i] = "b_kascam.qc";
            }

            // CamVectors params
            nameMap.Add("globaldef001173", "ent");

            // CamReport params
            nameMap.Add("globaldef001182", "ent");
            nameMap.Add("globaldef001183", "tit");

            // CamReport locals
            nameMap.Add("globaldef001184", "s2");
            nameMap.Add("globaldef001185", "s3");

            // CamSqrt params
            nameMap.Add("globaldef001192", "num");

            // CamSqrt locals
            nameMap.Add("globaldef001193", "apr");

            // CamReAngle params
            nameMap.Add("globaldef001196", "a");

            // CamVisible params
            nameMap.Add("globaldef001201", "vec");

            // CamVisibleEnt params
            nameMap.Add("globaldef001206", "ent");

            // CamVisibleEnt locals
            nameMap.Add("globaldef001207", "vec");

            // CamShoot locals
            nameMap.Add("globaldef001212", "ent");
            nameMap.Add("globaldef001213", "entx");
            nameMap.Add("globaldef001214", "vec");
            nameMap.Add("globaldef001218", "d1");
            nameMap.Add("globaldef001219", "dx");

            // CamHurry params
            nameMap.Add("globaldef001221", "d");
            nameMap.Add("globaldef001222", "a");

            // CamHurry locals
            nameMap.Add("globaldef001223", "dd");
            nameMap.Add("globaldef001224", "t");
            nameMap.Add("globaldef001225", "tt");

            // CamSmooth params
            nameMap.Add("globaldef001227", "s");
            nameMap.Add("globaldef001228", "v");
            nameMap.Add("globaldef001229", "a");

            // CamSmooth locals
            nameMap.Add("globaldef001230", "dt");
            nameMap.Add("globaldef001231", "t1");
            nameMap.Add("globaldef001232", "t2");
            nameMap.Add("globaldef001233", "v2");
            nameMap.Add("globaldef001234", "as");
            nameMap.Add("globaldef001235", "sv2");
            nameMap.Add("globaldef001236", "b");
            nameMap.Add("globaldef001237", "vec");

            // TryFlybyVector params
            nameMap.Add("globaldef001242", "vec");

            // TryFlybyVector locals
            nameMap.Add("globaldef001246", "orig");
            nameMap.Add("globaldef001250", "vec1");
            nameMap.Add("globaldef001254", "v1");

            // CamUpdatePos params
            nameMap.Add("globaldef001260", "speedv");
            nameMap.Add("globaldef001261", "speeda");

            // CamUpdatePos locals
            nameMap.Add("globaldef001262", "vec");
            nameMap.Add("globaldef001266", "v1");
            nameMap.Add("globaldef001270", "vlength");

            // CamFlybyTarget params
            nameMap.Add("globaldef001278", "ent");

            // CamFlybyTarget locals
            nameMap.Add("globaldef001279", "vec");

            // CamInitFlybyMode params
            nameMap.Add("globaldef001284", "newtarg");

            // CamInitFlybyMode locals
            nameMap.Add("globaldef001285", "f");
            nameMap.Add("globaldef001286", "max");
            nameMap.Add("globaldef001287", "vec");
            nameMap.Add("globaldef001291", "vec2");
            nameMap.Add("globaldef001295", "trg");
            nameMap.Add("globaldef001299", "ent");

            // GetFollowCam locals
            nameMap.Add("globaldef001305", "vec");
            nameMap.Add("globaldef001309", "vec2");

            // GetFollowTrg locals
            nameMap.Add("globaldef001315", "vec");

            // CamGetPos params
            nameMap.Add("globaldef001322", "n");

            // CamGetPos locals
            nameMap.Add("globaldef001323", "ent");

            // CamSavePos params
            nameMap.Add("globaldef001326", "n");

            // CamSavePos locals
            nameMap.Add("globaldef001327", "ent");

            // CamLoadPos params
            nameMap.Add("globaldef001329", "n");

            // CamLoadPos locals
            nameMap.Add("globaldef001330", "ent");

            // CamImpulses locals
            nameMap.Add("globaldef001332", "c");
            nameMap.Add("globaldef001333", "ent");
            nameMap.Add("globaldef001334", "s");

            // CamUpdValues locals
            nameMap.Add("globaldef001363", "it");

            // CamHealthVal params
            nameMap.Add("globaldef001367", "ent");

            // CamHealthVal locals
            nameMap.Add("globaldef001368", "alldmg");

            // CamIdleThink locals
            nameMap.Add("globaldef001370", "ent");
            nameMap.Add("globaldef001371", "ent2");
            nameMap.Add("globaldef001372", "vec");
            nameMap.Add("globaldef001376", "vec2");
            nameMap.Add("globaldef001380", "p1");
            nameMap.Add("globaldef001381", "p2");
            nameMap.Add("globaldef001382", "pa");
            nameMap.Add("globaldef001383", "pb");

            // CamFlyByThink locals
            nameMap.Add("globaldef001386", "p0");
            nameMap.Add("globaldef001387", "p1");
            nameMap.Add("globaldef001388", "grad");
            nameMap.Add("globaldef001389", "p");
            nameMap.Add("globaldef001390", "vec");
            nameMap.Add("globaldef001394", "ent");
            nameMap.Add("globaldef001395", "ok");

            // CamFollowThink locals
            nameMap.Add("globaldef001399", "ent");
            nameMap.Add("globaldef001400", "vec");

            // CamFixedThink locals
            nameMap.Add("globaldef001405", "vec");
            nameMap.Add("globaldef001409", "ent");
            nameMap.Add("globaldef001410", "cang");
            nameMap.Add("globaldef001411", "a");
            nameMap.Add("globaldef001412", "cscr");
            nameMap.Add("globaldef001413", "maxscr");
            nameMap.Add("globaldef001414", "minscr");
            nameMap.Add("globaldef001415", "maxlo");
            nameMap.Add("globaldef001416", "minhi");
            nameMap.Add("globaldef001417", "scrv");
            nameMap.Add("globaldef001421", "hiv");
            nameMap.Add("globaldef001425", "lov");
            nameMap.Add("globaldef001429", "c");

            // CamDeathThink locals
            nameMap.Add("globaldef001436", "f");

            // CamClientInit locals
            nameMap.Add("globaldef001442", "UNUSED");
            nameMap.Add("globaldef001443", "ent2");

            // CamSpawn locals
            nameMap.Add("globaldef001448", "i");
            nameMap.Add("globaldef001449", "ent");
            nameMap.Add("globaldef001450", "start");

            // CamDisconnect locals
            nameMap.Add("globaldef001453", "cam");
            nameMap.Add("globaldef001454", "oself");

            // CamCopyBody params
            nameMap.Add("globaldef001456", "ent");
            nameMap.Add("globaldef001457", "que");

            // CamCopyBody locals
            nameMap.Add("globaldef001458", "oself");
            nameMap.Add("globaldef001459", "cam");

            #endregion

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

            // Declarations

            nameMap.Add("func000199", "CanDamage");
            nameMap.Add("func000200", "Killed");
            nameMap.Add("func000201", "T_Damage");
            nameMap.Add("func000202", "T_RadiusDamage");

            for (int i = 199; i <= 203; i++)
            {
                fileMap[i] = "combat.qc";
            }

            // CanDamage params
            nameMap.Add("globaldef001749", "targ");
            nameMap.Add("globaldef001750", "inflictor");

            // Killed params
            nameMap.Add("globaldef001756", "targ");
            nameMap.Add("globaldef001757", "attacker");

            // Killed locals
            nameMap.Add("globaldef001758", "oself");

            // T_Damage params
            nameMap.Add("globaldef001760", "targ");
            nameMap.Add("globaldef001761", "inflictor");
            nameMap.Add("globaldef001762", "attacker");
            nameMap.Add("globaldef001763", "damage");

            // T_Damage locals
            nameMap.Add("globaldef001764", "dir");
            nameMap.Add("globaldef001768", "oldself");
            nameMap.Add("globaldef001769", "save");
            nameMap.Add("globaldef001770", "take");

            // T_RadiusDamage params
            nameMap.Add("globaldef001773", "inflictor");
            nameMap.Add("globaldef001774", "attacker");
            nameMap.Add("globaldef001775", "damage");
            nameMap.Add("globaldef001776", "ignore");

            // T_RadiusDamage locals
            nameMap.Add("globaldef001777", "points");
            nameMap.Add("globaldef001778", "head");
            nameMap.Add("globaldef001779", "org");

            // T_BeamDamage params
            nameMap.Add("globaldef001784", "attacker");
            nameMap.Add("globaldef001785", "damage");

            // T_BeamDamage locals
            nameMap.Add("globaldef001786", "points");
            nameMap.Add("globaldef001787", "head");

            #endregion

            #region items.qc

            // Declarations
            nameMap.Add("globaldef001800", "H_ROTTEN");
            nameMap.Add("globaldef001801", "H_MEGA");
            nameMap.Add("globaldef001883", "WEAPON_BIG2");
            nameMap.Add("globaldef001900", "WEAPON_SHOTGUN");
            nameMap.Add("globaldef001901", "WEAPON_ROCKET");
            nameMap.Add("globaldef001902", "WEAPON_SPIKES");
            nameMap.Add("globaldef001903", "WEAPON_BIG");

            nameMap.Add("func000204", "SUB_regen");
            nameMap.Add("func000206", "PlaceItem");
            nameMap.Add("func000207", "StartItem");
            nameMap.Add("func000208", "T_Heal");
            nameMap.Add("func000210", "health_touch");
            nameMap.Add("func000211", "item_megahealth_rot");
            nameMap.Add("func000212", "armor_touch");
            nameMap.Add("func000216", "bound_other_ammo");
            nameMap.Add("func000217", "RankForWeapon");
            nameMap.Add("func000218", "Deathmatch_Weapon");
            nameMap.Add("func000219", "weapon_touch");
            nameMap.Add("func000226", "ammo_touch");
            nameMap.Add("func000232", "key_touch");
            nameMap.Add("func000233", "key_setsounds");
            nameMap.Add("func000236", "sigil_touch");
            nameMap.Add("func000238", "powerup_touch");
            nameMap.Add("func000243", "BackpackTouch");
            nameMap.Add("func000244", "DropBackpack");

            for (int i = 204; i <= 244; i++)
            {
                fileMap[i] = "items.qc";
            }

            // PlaceItem locals
            nameMap.Add("globaldef001794", "oldz");

            // T_Heal params
            nameMap.Add("globaldef001797", "e");
            nameMap.Add("globaldef001798", "healamount");
            nameMap.Add("globaldef001799", "ignore");

            // health_touch locals
            nameMap.Add("globaldef001814", "amount");
            nameMap.Add("globaldef001815", "s");

            // armor_touch locals
            nameMap.Add("globaldef001820", "type");
            nameMap.Add("globaldef001821", "value");
            nameMap.Add("globaldef001822", "bit");

            // RankForWeapon params
            nameMap.Add("globaldef001838", "w");

            // Deathmatch_Weapon params
            nameMap.Add("globaldef001840", "old");
            nameMap.Add("globaldef001841", "new");

            // Deathmatch_Weapon locals
            nameMap.Add("globaldef001842", "or");
            nameMap.Add("globaldef001843", "nr");

            // weapon_touch locals
            nameMap.Add("globaldef001846", "hadammo");
            nameMap.Add("globaldef001847", "best");
            nameMap.Add("globaldef001848", "new");
            nameMap.Add("globaldef001849", "old");
            nameMap.Add("globaldef001850", "stemp");
            nameMap.Add("globaldef001851", "leave");

            // ammo_touch locals
            nameMap.Add("globaldef001880", "stemp");
            nameMap.Add("globaldef001881", "best");

            // key_touch locals
            nameMap.Add("globaldef001907", "stemp");
            nameMap.Add("globaldef001908", "best");

            // sigil_touch locals
            nameMap.Add("globaldef001928", "stemp");
            nameMap.Add("globaldef001929", "best");

            // powerup_touch locals
            nameMap.Add("globaldef001938", "stemp");
            nameMap.Add("globaldef001939", "best");

            // BackpackTouch locals
            nameMap.Add("globaldef001967", "s");
            nameMap.Add("globaldef001968", "best");
            nameMap.Add("globaldef001969", "old");
            nameMap.Add("globaldef001970", "new");
            nameMap.Add("globaldef001971", "stemp");
            nameMap.Add("globaldef001972", "acount");

            // DropBackpack locala
            nameMap.Add("globaldef001981", "item");

            #endregion

            #region b_eject.qc

            // This is taken from one of the shotgun shell eject mods 
            // e.g. Steve Bond's eject, Bort's QuakeC mod, or similar

            // Declarations
            nameMap.Add("globaldef001987", "numShellCases");

            nameMap.Add("func000245", "EjectShell_remove");
            nameMap.Add("func000246", "EjectShell_touch");
            nameMap.Add("func000247", "EjectShell_spawn");

            for (int i = 245; i <= 247; i++)
            {
                fileMap[i] = "b_eject.qc";
            }

            // EjectShell_touch locals
            nameMap.Add("globaldef001990", "currentLocationContents");

            // EjectShell_spawn params
            nameMap.Add("globaldef001995", "originpt");
            nameMap.Add("globaldef001999", "angle");

            // EjectShell_spawn locals
            nameMap.Add("globaldef002003", "shell");
            nameMap.Add("globaldef002004", "oldshell");

            #endregion

            #region weapons.qc

            // Declarations
            nameMap.Add("globaldef002084", "multi_ent");
            nameMap.Add("globaldef002085", "multi_damage");

            nameMap.Add("func000248", "W_Precache");
            nameMap.Add("func000249", "crandom");
            nameMap.Add("func000250", "aim_obot");
            nameMap.Add("func000251", "W_FireAxe");
            nameMap.Add("func000252", "wall_velocity");
            nameMap.Add("func000253", "SpawnMeatSpray");
            nameMap.Add("func000254", "SpawnBlood");
            nameMap.Add("func000255", "spawn_touchblood");
            nameMap.Add("func000257", "ClearMultiDamage");
            nameMap.Add("func000258", "ApplyMultiDamage");
            nameMap.Add("func000259", "AddMultiDamage");
            nameMap.Add("func000260", "TraceAttack");
            nameMap.Add("func000261", "FireBullets");
            nameMap.Add("func000262", "W_FireShotgun");
            nameMap.Add("func000263", "W_FireSuperShotgun");
            for (int i = 1; i <= 6; i++) { nameMap.Add("func000" + (263 + i).ToString(), "s_explode" + i.ToString()); }
            nameMap.Add("func000270", "BecomeExplosion");
            nameMap.Add("func000271", "T_MissileTouch");
            nameMap.Add("func000272", "W_FireRocket");
            nameMap.Add("func000273", "LightningDamage");
            nameMap.Add("func000274", "W_FireLightning");
            nameMap.Add("func000275", "GrenadeExplode");
            nameMap.Add("func000276", "GrenadeTouch");
            nameMap.Add("func000277", "W_FireGrenade");
            nameMap.Add("func000278", "launch_spike");
            nameMap.Add("func000279", "W_FireSuperSpikes");
            nameMap.Add("func000280", "W_FireSpikes");
            nameMap.Add("func000281", "spike_touch");
            nameMap.Add("func000282", "superspike_touch");
            nameMap.Add("func000283", "W_SetCurrentAmmo");
            nameMap.Add("func000284", "W_BestWeapon");
            nameMap.Add("func000285", "W_CheckNoAmmo");
            nameMap.Add("func000286", "W_Attack");
            nameMap.Add("func000287", "W_ChangeWeapon");
            nameMap.Add("func000288", "CheatCommand");
            nameMap.Add("func000289", "CycleWeaponCommand");
            nameMap.Add("func000290", "CycleWeaponReverseCommand");
            nameMap.Add("func000292", "QuadCheat");
            nameMap.Add("func000293", "ImpulseCommands");
            nameMap.Add("func000294", "W_WeaponFrame");
            nameMap.Add("func000295", "SuperDamageSound");

            for (int i = 248; i <= 295; i++)
            {
                fileMap[i] = "weapons.qc";
            }

            // aim params
            nameMap.Add("globaldef002026", "e");
            nameMap.Add("globaldef002027", "speed_UNUSED");

            // W_FireAxe locals
            nameMap.Add("globaldef002029", "source");
            nameMap.Add("globaldef002033", "org");

            // wall_velocity locals
            nameMap.Add("globaldef002040", "vel");

            // SpawnMeatSpray params
            nameMap.Add("globaldef002045", "org");
            nameMap.Add("globaldef002049", "vel");

            // SpawnMeatSpray locals
            nameMap.Add("globaldef002053", "missile");
            nameMap.Add("globaldef002054", "mpuff");

            // SpawnBlood params
            nameMap.Add("globaldef002057", "org");
            nameMap.Add("globaldef002061", "vel");
            nameMap.Add("globaldef002065", "damage");

            // spawn_touchblood params
            nameMap.Add("globaldef002068", "damage");

            // spawn_touchblood locals
            nameMap.Add("globaldef002069", "vel");

            // SpawnChunk params
            nameMap.Add("globaldef002075", "org");
            nameMap.Add("globaldef002079", "vel");

            // AddMultiDamage params
            nameMap.Add("globaldef002089", "hit");
            nameMap.Add("globaldef002090", "damage");

            // TraceAttack params
            nameMap.Add("globaldef002092", "damage");
            nameMap.Add("globaldef002093", "dir");

            // TraceAttack locals
            nameMap.Add("globaldef002097", "vel");
            nameMap.Add("globaldef002101", "org");

            // FireBullets params
            nameMap.Add("globaldef002106", "shotcount");
            nameMap.Add("globaldef002107", "dir");
            nameMap.Add("globaldef002111", "spread");

            // FireBullets locals
            nameMap.Add("globaldef002115", "direction");
            nameMap.Add("globaldef002119", "src");

            // W_FireShotgun locals
            nameMap.Add("globaldef002125", "dir");

            // W_FireSuperShotgun locals
            nameMap.Add("globaldef002132", "dir");

            // T_MissileTouch locals
            nameMap.Add("globaldef002146", "damg");

            // W_FireRocket locals
            nameMap.Add("globaldef002148", "missile");
            nameMap.Add("globaldef002149", "mpuff");

            // LightningDamage params
            nameMap.Add("globaldef002153", "p1");
            nameMap.Add("globaldef002157", "p2");
            nameMap.Add("globaldef002161", "from");
            nameMap.Add("globaldef002162", "damage");

            // LightningDamage locals
            nameMap.Add("globaldef002163", "e1");
            nameMap.Add("globaldef002164", "e2");
            nameMap.Add("globaldef002165", "f");

            // W_FireLightning locals
            nameMap.Add("globaldef002172", "org");
            nameMap.Add("globaldef002176", "cells");

            // W_FireGrenade locals
            nameMap.Add("globaldef002182", "missile");
            nameMap.Add("globaldef002183", "mpuff");

            // launch_spike params
            nameMap.Add("globaldef002192", "org");
            nameMap.Add("globaldef002196", "dir");

            // W_FireSuperSpikes params
            nameMap.Add("globaldef002203", "dir");
            nameMap.Add("globaldef002207", "old");

            // W_FireSpikes params
            nameMap.Add("globaldef002211", "dir");
            nameMap.Add("globaldef002215", "old");

            // spike_touch locals
            nameMap.Add("globaldef002217", "rand");

            // superspike_touch locals
            nameMap.Add("globaldef002220", "rand");

            // W_BestWeapon locals
            nameMap.Add("globaldef002230", "it");

            // W_Attack locals
            nameMap.Add("globaldef002241", "r");

            // W_ChangeWeapon locals
            nameMap.Add("globaldef002247", "it");
            nameMap.Add("globaldef002248", "am");
            nameMap.Add("globaldef002249", "fl");

            // CycleWeaponCommand locals
            nameMap.Add("globaldef002254", "am");

            // CycleWeaponReverseCommand locals
            nameMap.Add("globaldef002256", "it");
            nameMap.Add("globaldef002257", "am");

            #endregion

            #region world.qc

            // Declarations
            nameMap.Add("globaldef002375", "lastspawn");
            nameMap.Add("globaldef002466", "bodyque_head");

            nameMap.Add("func000300", "InitBodyQue");
            nameMap.Add("func000301", "CopyToBodyQue");

            for (int i = 296; i <= 301; i++)
            {
                fileMap[i] = "world.qc";
            }

            // InitBodyQue locals
            nameMap.Add("globaldef002468", "e");

            // CopyToBodyQue params
            nameMap.Add("globaldef002470", "ent");

            #endregion

            // Not done
            #region b_camp.qc

            // this is based on one of the many anti-camp mods available

            // Declarations
            nameMap.Add("globaldef002605", "CAMP_NO_DETECTION");
            nameMap.Add("globaldef002606", "CAMP_DETECT");
            nameMap.Add("globaldef002607", "CAMP_DETECT_AND_PUNISH");
            nameMap.Add("globaldef002608", "CAMP_DETECT_AND_PUNISH_SEVERE");
            nameMap.Add("globaldef002609", "CampingMode");

            nameMap.Add("func000302", "CampingCloudSpawnRain");
            nameMap.Add("func000303", "CampingCloudSpawnLightning");
            nameMap.Add("func000304", "CampingCloudLightningFlash");
            for (int i = 1; i <= 12; i++) { nameMap.Add("func000" + (304 + i).ToString(), "cloud_a" + i.ToString()); }
            for (int i = 1; i <= 4; i++) { nameMap.Add("func000" + (316 + i).ToString(), "cloud_b" + i.ToString()); }
            for (int i = 1; i <= 4; i++) { nameMap.Add("func000" + (320 + i).ToString(), "cloud_c" + i.ToString()); }
            nameMap.Add("func000336", "CampingPrint");
            nameMap.Add("func000337", "CampingToggleMode");  // impulse 156

            for (int i = 302; i <= 347; i++)
            {
                fileMap[i] = "b_camp.qc";
            }

            // CampingSpawnRain params
            nameMap.Add("globaldef002473", "org");
            nameMap.Add("globaldef002477", "vel");
            nameMap.Add("globaldef002481", "color");
            nameMap.Add("globaldef002482", "num");

            // CampingCloudSpawnLightning params
            nameMap.Add("globaldef002484", "start");
            nameMap.Add("globaldef002488", "end");
            nameMap.Add("globaldef002492", "ent");


            // CampingPrint params
            nameMap.Add("globaldef002586", "s");

            #endregion

            // Not done
            #region b_ra.qc

            // rocket arena 1.2

            nameMap.Add("func000348", "rocket_arena_gotonextmap");
            nameMap.Add("func000353", "rocket_arena_selectspawnpoint");
            nameMap.Add("func000354", "TeamSetStatRes");
            nameMap.Add("func000355", "PrintStats");
            nameMap.Add("func000356", "playallsound");
            nameMap.Add("func000358", "setfullwep");
            nameMap.Add("func000360", "teleport_to_arena");
            nameMap.Add("func000361", "gotoarena");
            nameMap.Add("func000362", "getnewopponent");
            nameMap.Add("func000363", "addtoqueue");
            nameMap.Add("func000364", "rocket_arena_putclientinserver");
            nameMap.Add("func000365", "rocket_arena_prethink");
            nameMap.Add("func000366", "rocket_arena_disconnect");
            nameMap.Add("func000368", "win_loss_ratio");
            nameMap.Add("func000372", "rocket_arena_impulses");

            for (int i = 348; i <= 372; i++)
            {
                fileMap[i] = "b_ra.qc";
            }

            // setfullwep params
            nameMap.Add("globaldef002765", "anent");

            #endregion

            // Done to here

            #region client.qc

            nameMap.Add("func000406", "ClientObituary");

            for (int i = 373; i <= 406; i++)
            {
                fileMap[i] = "client.qc";
            }

            // ClientObituary params
            nameMap.Add("globaldef002975", "targ");
            nameMap.Add("globaldef002976", "attacker");


            #endregion

            #region player.qc

            nameMap.Add("func000408", "player_run");
            nameMap.Add("func000409", "player_shot1");
            nameMap.Add("func000415", "player_axe1");
            nameMap.Add("func000419", "player_axeb1");
            nameMap.Add("func000423", "player_axec1");
            nameMap.Add("func000427", "player_axed1");
            nameMap.Add("func000431", "player_nail1");
            nameMap.Add("func000433", "player_light1");
            nameMap.Add("func000435", "player_rocket1");
            nameMap.Add("func000461", "ThrowGib");

            for (int i = 408; i <= 461; i++)
            {
                fileMap[i] = "player.qc";
            }

            #endregion

            #region monsters.qc

            nameMap.Add("func000529", "monster_death_use");

            for (int i = 529; i <= 529; i++)
            {
                fileMap[i] = "monsters.qc";
            }

            #endregion

            #region doors.qc

            for (int i = 537; i <= 562; i++)
            {
                fileMap[i] = "doors.qc";
            }

            #endregion

            #region buttons.qc

            for (int i = 569; i <= 569; i++)
            {
                fileMap[i] = "buttons.qc";
            }

            #endregion

            #region triggers.qc

            nameMap.Add("func000584", "spawn_tfog");
            nameMap.Add("func000586", "spawn_tdeath");
            

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

            #region ogre.qc

            nameMap.Add("func000702", "ogre_swing1");
            nameMap.Add("func000716", "ogre_smash1");

            for (int i = 665; i <= 811; i++)
            {
                fileMap[i] = "ogre.qc";
            }

            #endregion

            #region demon.qc

            nameMap.Add("func000887", "DemonCheckAttack");
            nameMap.Add("func000888", "Demon_Melee");

            for (int i = 812; i <= 889; i++)
            {
                fileMap[i] = "demon.qc";
            }

            // Demon_Melee params
            nameMap.Add("globaldef003923", "side");

            #endregion

            #region shambler.qc

            nameMap.Add("func000925", "sham_smash1");
            nameMap.Add("func000938", "sham_swingl1");
            nameMap.Add("func000947", "sham_swingr1");

            for (int i = 890; i <= 987; i++)
            {
                fileMap[i] = "shambler.qc";
            }

            #endregion

            #region knight.qc

            nameMap.Add("func000997", "knight_walk1");
            nameMap.Add("func001019", "knight_runatk1");
            nameMap.Add("func001030", "knight_atk1");

            for (int i = 988; i <= 1087; i++)
            {
                fileMap[i] = "knight.qc";
            }

            #endregion

            #region soldier.qc

            for (int i = 1088; i <= 1194; i++)
            {
                fileMap[i] = "soldier.qc";
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

            for (int i = 1265; i <= 1358; i++)
            {
                fileMap[i] = "dog.qc";
            }

            #endregion

            #region zombie.qc

            for (int i = 1359; i <= 1562; i++)
            {
                fileMap[i] = "zombie.qc";
            }

            #endregion

            #region boss.qc

            for (int i = 1563; i <= 1680; i++)
            {
                fileMap[i] = "boss.qc";
            }

            #endregion

            #region tarbaby.qc

            for (int i = 1681; i <= 1746; i++)
            {
                fileMap[i] = "tarbaby.qc";
            }

            #endregion

            #region hknight.qc

            for (int i = 1747; i <= 1920; i++)
            {
                fileMap[i] = "hknight.qc";
            }

            #endregion

            #region fish.qc

            for (int i = 1921; i <= 2016; i++)
            {
                fileMap[i] = "fish.qc";
            }

            #endregion

            #region shalrath.qc

            for (int i = 2017; i <= 2070; i++)
            {
                fileMap[i] = "shalrath.qc";
            }

            #endregion

            #region enforcer.qc

            for (int i = 2071; i <= 2182; i++)
            {
                fileMap[i] = "enforcer.qc";
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

            for (int i = 2183; i <= 2254; i++)
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

            #region b_clrank.c

            // this was taken from Alan Kivlin's rankings.qc, so we can match on that basis

            // Declarations
            nameMap.Add("globaldef005676", "MSG_UPDATENAME");
            nameMap.Add("globaldef005677", "MSG_UPDATEFRAGS");
            nameMap.Add("globaldef005678", "MSG_UPDATECOLORS");

            nameMap.Add("func002255", "InitMaxClients");
            nameMap.Add("func002256", "clientBitFlag");
            nameMap.Add("func002257", "ClientIsActive");
            nameMap.Add("func002258", "ActiveClientCount"); // my guess as not in original rankings.qc or obotdoc
            nameMap.Add("func002259", "SetClientNumberUsed");
            nameMap.Add("func002260", "SetClientNumberFree");
            nameMap.Add("func002261", "NextAvailableClientNumber");
            nameMap.Add("func002262", "msgUpdateClientNameToAll");
            nameMap.Add("func002263", "msgUpdateClientFragsToAll");
            nameMap.Add("func002264", "msgUpdateClientColorsToAll");
            nameMap.Add("func002265", "msgUpdateAllClientSettingsToAll");

            for (int i = 2255; i <= 2265; i++)
            {
                fileMap[i] = "b_clrank.qc";
            }

            // InitMaxClients locals
            nameMap.Add("globaldef005679", "ent");

            // clientBitFlag params
            nameMap.Add("globaldef005682", "clnumber");

            // clientBitFlag locals
            nameMap.Add("globaldef005683", "bitflag");

            // ClientIsActive params
            nameMap.Add("globaldef005684", "clnumber");

            // ActiveClientCount locals
            nameMap.Add("globaldef005686", "index");
            nameMap.Add("globaldef005687", "num_active");
            
            // SetClientNumberUsed params
            nameMap.Add("globaldef005688", "clnumber");

            // SetClientNumberFree params
            nameMap.Add("globaldef005689", "clnumber");

            // NextAvailableClientNumber locals
            nameMap.Add("globaldef005690", "clnumber");

            // msgUpdateClientNameToAll params
            nameMap.Add("globaldef005691", "clnumber");
            nameMap.Add("globaldef005692", "n");

            // msgUpdateClientFragsToAll params
            nameMap.Add("globaldef005693", "clnumber");
            nameMap.Add("globaldef005694", "f");

            // msgUpdateClientColorsToAll params
            nameMap.Add("globaldef005695", "clnumber");
            nameMap.Add("globaldef005696", "c");

            // locals
            nameMap.Add("globaldef005697", "bot");
            nameMap.Add("globaldef005698", "index");

            #endregion
            
            #region b_char.qc

            for (int i = 2285; i <= 2286; i++)
            {
                fileMap[i] = "b_char.qc";
            }

            #endregion

            // Done
            #region b_fuzzy.qc

            nameMap.Add("func002289", "goalweight_door");
            nameMap.Add("func002290", "goalweight_secretdoor");
            nameMap.Add("func002291", "goalweight_button");
            nameMap.Add("func002292", "goalweight_plat");
            nameMap.Add("func002293", "goalweight_train");
            nameMap.Add("func002294", "goalweight_teleporter");
            nameMap.Add("func002295", "goalweight_triggerpush");
            nameMap.Add("func002296", "goalweight_trigger");
            nameMap.Add("func002297", "goalweight_backpack");
            nameMap.Add("func002298", "goalweight_megahealth");
            nameMap.Add("func002299", "goalweight_health15");
            nameMap.Add("func002300", "goalweight_health25");
            nameMap.Add("func002301", "goalweight_nails");
            nameMap.Add("func002302", "goalweight_shells");
            nameMap.Add("func002303", "goalweight_cells");
            nameMap.Add("func002304", "goalweight_rockets");
            nameMap.Add("func002305", "goalweight_rocketlauncher");
            nameMap.Add("func002306", "goalweight_lightning");
            nameMap.Add("func002307", "goalweight_grenadelauncher");
            nameMap.Add("func002308", "goalweight_nailgun");
            nameMap.Add("func002309", "goalweight_supernailgun");
            nameMap.Add("func002310", "goalweight_supershotgun");
            nameMap.Add("func002311", "goalweight_greenarmor");
            nameMap.Add("func002312", "goalweight_yellowarmor");
            nameMap.Add("func002313", "goalweight_redarmor");
            nameMap.Add("func002314", "goalweight_envirosuit");
            nameMap.Add("func002315", "goalweight_invisibility");
            nameMap.Add("func002316", "goalweight_quad");
            nameMap.Add("func002317", "goalweight_invulnerability");

            // walkaboutweight functions encode the weights for bots to go to these items
            // not because it needs them, but because it might find other players to fight there
            nameMap.Add("func002318", "walkaboutweight_megahealth");
            nameMap.Add("func002319", "walkaboutweight_supershotgun");
            nameMap.Add("func002320", "walkaboutweight_nailgun");
            nameMap.Add("func002321", "walkaboutweight_supernailgun");
            nameMap.Add("func002322", "walkaboutweight_grenadelauncher");
            nameMap.Add("func002323", "walkaboutweight_rocketlauncher");
            nameMap.Add("func002324", "walkaboutweight_lightning");
            nameMap.Add("func002325", "walkaboutweight_yellowarmor");
            nameMap.Add("func002326", "walkaboutweight_redarmor");
            nameMap.Add("func002327", "walkaboutweight_invisibility");
            nameMap.Add("func002328", "walkaboutweight_quad");
            nameMap.Add("func002329", "walkaboutweight_invulnerability");

            nameMap.Add("func002330", "fuzzy_lightning_weight");
            nameMap.Add("func002331", "fuzzy_rocketlauncher_weight");
            nameMap.Add("func002332", "fuzzy_grenadelauncher_weight");
            nameMap.Add("func002333", "fuzzy_supernailgun_weight");
            nameMap.Add("func002334", "fuzzy_nailgun_weight");
            nameMap.Add("func002335", "fuzzy_supershotgun_weight");
            nameMap.Add("func002336", "fuzzy_shotgun_weight");
            nameMap.Add("func002337", "fuzzy_axe_weight");
            nameMap.Add("func002338", "BotSetBestRangeWeapon");
            nameMap.Add("func002339", "BestBotWeapon");
            nameMap.Add("func002340", "BotWantsToRetreat");
            nameMap.Add("func002341", "BotWantsToFight");
            nameMap.Add("func002342", "BotWantsToChase");

            for (int i = 2287; i <= 2342; i++)
            {
                fileMap[i] = "b_fuzzy.qc";
            }

            // goalweight_* params
            for(int i = 6502; i <= 6515; i++)
            {
                string name = "";
                if(i%2 == 0) { name = "bot"; }
                else { name = "e"; }
                nameMap.Add("globaldef00" + (i).ToString(), name);
            }

            // goalweight_triggerpush locals
            nameMap.Add("globaldef006516", "vec1");
            nameMap.Add("globaldef006520", "vec2");

            // goalweight_* params
            for (int i = 6524; i <= 6553; i++)
            {
                string name = "";
                if (i % 2 == 0) { name = "bot"; }
                else { name = "e"; }
                nameMap.Add("globaldef00" + (i).ToString(), name);
            }

            // goalweight_greenarmor params
            nameMap.Add("globaldef006554", "bot");
            nameMap.Add("globaldef006555", "e");

            // goalweight_greenarmor locals
            nameMap.Add("globaldef006556", "compare");

            // goalweight_yellowarmor params
            nameMap.Add("globaldef006557", "bot");
            nameMap.Add("globaldef006558", "e");

            // goalweight_yellowarmor locals
            nameMap.Add("globaldef006559", "compare");

            // goalweight_redarmor params
            nameMap.Add("globaldef006560", "bot");
            nameMap.Add("globaldef006561", "e");

            // goalweight_redarmor locals
            nameMap.Add("globaldef006562", "compare");

            // goalweight_* params
            for (int i = 6563; i <= 6594; i++)
            {
                string name = "";
                if (i % 2 == 1) { name = "bot"; }
                else { name = "e"; }
                nameMap.Add("globaldef00" + (i).ToString(), name);
            }

            // fuzzy_lightning_weight params
            nameMap.Add("globaldef006596", "bot");

            // fuzzy_lightning_weight locals
            nameMap.Add("globaldef006597", "dist");

            // fuzzy_rocketlauncher_weight params
            nameMap.Add("globaldef006599", "bot");

            // fuzzy_rocketlauncher_weight locals
            nameMap.Add("globaldef006600", "condition");
            nameMap.Add("globaldef006601", "dist");

            // fuzzy_grenadelauncher_weight params
            nameMap.Add("globaldef006603", "bot");

            // fuzzy_grenadelauncher_weight locals
            nameMap.Add("globaldef006604", "dist");

            // fuzzy_supernailgun_weight params
            nameMap.Add("globaldef006606", "bot");

            // fuzzy_nailgun_weight params
            nameMap.Add("globaldef006608", "bot");

            // fuzzy_supershotgun_weight params
            nameMap.Add("globaldef006610", "bot");

            // fuzzy_supershotgun_weight locals
            nameMap.Add("globaldef006611", "dist");

            // fuzzy_shotgun_weight params
            nameMap.Add("globaldef006613", "bot");

            // fuzzy_axe_weight pararms
            nameMap.Add("globaldef006615", "bot");

            // fuzzy_axe_weight locals
            nameMap.Add("globaldef006616", "dist");

            // BotSetBestRangeWeapon params
            nameMap.Add("globaldef006617", "bot");

            // BotSetBestRangeWeapon locals
            nameMap.Add("globaldef006618", "best");
            nameMap.Add("globaldef006619", "weight");
            nameMap.Add("globaldef006620", "weap");

            // BestBotWeapon params
            nameMap.Add("globaldef006621", "bot");

            // BotWantsToRetreat params
            nameMap.Add("globaldef006622", "bot");

            // BotWantsToRetreat locals
            nameMap.Add("globaldef006623", "enemybestweapon");

            // BotWantsToFight params
            nameMap.Add("globaldef006624", "bot");

            // BotWantsToChase params
            nameMap.Add("globaldef006625", "bot");

            #endregion

            #region b_observ.qc

            nameMap.Add("func002358", "CycleClientCamera");  // impulse 161
            nameMap.Add("func002360", "ToggleObserverFly");   // impulse 162
            nameMap.Add("func002361", "ToggleCamName");   // impulse 163
            nameMap.Add("func002362", "observerteleport");  // impulse 164
            nameMap.Add("func002363", "ToggleChaseCam");  // impulse 165

            nameMap.Add("func002365", "ToggleObserverMode");

            for (int i = 2358; i <= 2365; i++)
            {
                fileMap[i] = "b_observ.qc";
            }

            #endregion

            #region b_spawn.qc

            nameMap.Add("func002422", "AddBots");
            nameMap.Add("func002423", "AddRandomDeathmatchBot");
            nameMap.Add("func002424", "RemoveAllBots");  // impulse 152
            nameMap.Add("func002425", "RemoveOneDeathmatchBot");
            
            for (int i = 2422; i <= 2425; i++)
            {
                fileMap[i] = "b_spawn.qc";
            }

            #endregion

            #region b_move.qc

            for (int i = 2443; i <= 2443; i++)
            {
                fileMap[i] = "b_move.qc";
            }

            #endregion

            #region b_frames.qc

            for (int i = 2526; i <= 2635; i++)
            {
                fileMap[i] = "b_frames.qc";
            }

            #endregion

            // Done
            #region b_hcwp.qc

            nameMap.Add("func002638", "CheckHardCodedWaypoints");

            for (int i = 2638; i <= 2638; i++)
            {
                fileMap[i] = "b_hcwp.qc";
            }

            #endregion

            #region b_waypnt.qc

            nameMap.Add("func002650", "GetWaypointByID");
            nameMap.Add("func002660", "dumpbspwaypoints");  // impulse 170
            nameMap.Add("func002662", "dumphcwaypoints");  // impulse 171

            nameMap.Add("func002668", "HCWP_Create");
            nameMap.Add("func002669", "HCWP_SetPointers1");
            nameMap.Add("func002670", "HCWP_SetPointers2");

            for (int i = 2649; i <= 2692; i++)
            {
                fileMap[i] = "b_waypnt.qc";
            }

            // GetWaypointByID params
            nameMap.Add("globaldef009016", "wp_id");

            // GetWaypointByID locals
            nameMap.Add("globaldef009017", "wp");

            // HCWP_Create params
            nameMap.Add("globaldef009133", "org");
            nameMap.Add("globaldef009137", "number");
            nameMap.Add("globaldef009138", "type");
            nameMap.Add("globaldef009139", "itemstr");

            // HCWP_Create locals
            nameMap.Add("globaldef009140", "new_wp");

            // HCWP_SetPointers1 params
            nameMap.Add("globaldef009141", "number");
            nameMap.Add("globaldef009142", "p0");
            nameMap.Add("globaldef009143", "p1");
            nameMap.Add("globaldef009144", "p2");
            nameMap.Add("globaldef009145", "p3");

            // HCWP_SetPointers1 locals
            nameMap.Add("globaldef009146", "wp");
            nameMap.Add("globaldef009147", "errormsg_wpnum");

            // HCWP_SetPointers2 params
            nameMap.Add("globaldef009149", "number");
            nameMap.Add("globaldef009150", "p4");
            nameMap.Add("globaldef009151", "p5");
            nameMap.Add("globaldef009152", "p6");
            nameMap.Add("globaldef009153", "p7");

            // HCWP_SetPointers2 locals
            nameMap.Add("globaldef009154", "wp");
            nameMap.Add("globaldef009155", "errormsg_wpnum");

            #endregion

            #region b_impuls.qc

            nameMap.Add("func002693", "cmdlist");  // impulse 147
            nameMap.Add("func002694", "SetUpAliases");
            nameMap.Add("func002695", "CheckIsAdmin");
            nameMap.Add("func002696", "skinchange");  // impulse 140, 141
            nameMap.Add("func002700", "botpathing");  // impulse 154
            nameMap.Add("func002701", "humanpathing");  // impulse 155
            nameMap.Add("func002702", "bottalk");  // impulse 157
            nameMap.Add("func002705", "impulse190");  // impulse 190
            nameMap.Add("func002706", "rocketarena");  // impulse 158
            nameMap.Add("func002710", "nopowerups");  // impulse 130
            nameMap.Add("func002711", "noweapons");  // impulse 131
            nameMap.Add("func002712", "nolightning");  // impulse 132
            nameMap.Add("func002713", "norocket");  // impulse 133
            nameMap.Add("func002714", "nogrenade");  // impulse 134
            nameMap.Add("func002715", "nosupernail");  // impulse 135
            nameMap.Add("func002716", "noshellcases");  // impulse 136
            nameMap.Add("func002717", "bubblerouting");  // impulse 172
            nameMap.Add("func002718", "PrintServerflags");
            nameMap.Add("func002720", "botskills");  // impulse 142
            nameMap.Add("func002721", "observer");  // impulse 160
            nameMap.Add("func002725", "setteam");  // impulse 201-208
            nameMap.Add("func002737", "menu");  // impulse 200
            nameMap.Add("func002739", "stopadmin");  // impulse 144
            nameMap.Add("func002741", "admin");  // impulse 143
            nameMap.Add("func002742", "yes");  // impulse 145
            nameMap.Add("func002743", "omicron");  // impulse 146
            nameMap.Add("func002744", "addbots");  // impulse 100-10x
            nameMap.Add("func002745", "addbot");  // impulse 150
            nameMap.Add("func002746", "removebot");  // impulse 151
            nameMap.Add("func002748", "BotImpulseCommand");
            
            for (int i = 2693; i <= 2748; i++)
            {
                fileMap[i] = "b_impuls.qc";
            }

            #endregion

            #region Set unknown files for all unknown names at this point

            // Whenever there is a gap between the known function names/files, create a new unique file for the
            // functions in that gap (so we continue to have a sequential list of functions across multiple files)
            // if we don't do this, all the unknown files will be appended to a single file, and we won't be able
            // to tell where the known functions originally were in that file, making matching more difficult
            int nextfile = 0;
            bool lastFunctionWasInFileMap = false;
            for (int i = 1; i < 3000; i++)   // should be to functions.Count, but functions aren't read in yet
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
        }
    }
}
