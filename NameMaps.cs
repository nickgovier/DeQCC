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

            #region obot constants

            nameMap.Add("globaldef000669", "end_obot_fields");

            nameMap.Add("globaldef000681", "GLOBALDEF681_8192");
            nameMap.Add("globaldef000682", "GLOBALDEF682_16384");
            nameMap.Add("globaldef000683", "GLOBALDEF683_1");
            nameMap.Add("globaldef000684", "GLOBALDEF684_2");
            nameMap.Add("globaldef000685", "GLOBALDEF685_4");
            nameMap.Add("globaldef000686", "GLOBALDEF686_8");
            nameMap.Add("globaldef000687", "GLOBALDEF687_16");
            nameMap.Add("globaldef000688", "GLOBALDEF688_32");
            nameMap.Add("globaldef000689", "GLOBALDEF689_64");
            nameMap.Add("globaldef000690", "GLOBALDEF690_128");

            nameMap.Add("globaldef000692", "WAYPOINT_DUMP_TO_CONSOLE");
            nameMap.Add("globaldef000693", "WAYPOINT_DO_NOT_DUMP");

            nameMap.Add("globaldef000698", "unused698");

            nameMap.Add("globaldef000700", "WAYPOINTTYPE_PLATTOP");
            nameMap.Add("globaldef000702", "WAYPOINTTYPE_TELEPORT");
            nameMap.Add("globaldef000703", "WAYPOINTTYPE_ITEM");
            nameMap.Add("globaldef000704", "WAYPOINTTYPE_UNUSED1");
            nameMap.Add("globaldef000705", "WAYPOINTTYPE_UNUSED2");
            nameMap.Add("globaldef000706", "WAYPOINTTYPE_PLATBOTTOM");
            nameMap.Add("globaldef000707", "WAYPOINTSTATUS_UNINITIALISED");
            nameMap.Add("globaldef000708", "WAYPOINTSTATUS_FOUND");
            nameMap.Add("globaldef000709", "WAYPOINTSTATUS_UNCACHED");
            nameMap.Add("globaldef000710", "WAYPOINTSTATUS_SETUP_COMPLETE");

            nameMap.Add("globaldef000711", "OBSTACLE_TELEPORT");

            nameMap.Add("globaldef000717", "GLOBALDEF717_270");  // constant = 270

            nameMap.Add("globaldef000719", "OBOT_MAXBOTS");  // constant = 24

            nameMap.Add("globaldef000721", "GLOBALDEF721_250");  // constant = 250

            nameMap.Add("globaldef000723", "GLOBALDEF723_600");  // constant = 600
            nameMap.Add("globaldef000724", "GLOBALDEF724_800");  // constant = 800
            nameMap.Add("globaldef000725", "OBOT_MAXGIBS");  // constant = 30

            nameMap.Add("globaldef000727", "OBOT_MAXSHELLCASES");   // b_eject.qc, constant = 30
            nameMap.Add("globaldef000728", "GLOBALDEF728_500");   // constant = 500
            nameMap.Add("globaldef000729", "GLOBALDEF729_40");   // constant = 40

            nameMap.Add("globaldef000739", "BOTSOUND_DOOR");
            nameMap.Add("globaldef000740", "BOTSOUND_TELEPORT");
            nameMap.Add("globaldef000741", "BOTSOUND_FIRE");
            nameMap.Add("globaldef000742", "BOTSOUND_PICKUP");
            nameMap.Add("globaldef000743", "BOTSOUND_ARMOR");

            nameMap.Add("globaldef000748", "GLOBALDEF748_15");   // constant = 15
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
            nameMap.Add("globaldef000762", "BOTSHIRTPANTS_00");   // constant = 0
            nameMap.Add("globaldef000763", "BOTSHIRTPANTS_01");   // constant = 1
            nameMap.Add("globaldef000764", "BOTSHIRTPANTS_02");   // constant = 2
            nameMap.Add("globaldef000765", "BOTSHIRTPANTS_03");   // constant = 3
            nameMap.Add("globaldef000766", "BOTSHIRTPANTS_04");   // constant = 4
            nameMap.Add("globaldef000767", "BOTSHIRTPANTS_05");   // constant = 5
            nameMap.Add("globaldef000768", "BOTSHIRTPANTS_06");   // constant = 6
            nameMap.Add("globaldef000769", "BOTSHIRTPANTS_07");   // constant = 7
            nameMap.Add("globaldef000770", "BOTSHIRTPANTS_08");   // constant = 8
            nameMap.Add("globaldef000771", "BOTSHIRTPANTS_09");   // constant = 9
            nameMap.Add("globaldef000772", "BOTSHIRTPANTS_10");   // constant = 10
            nameMap.Add("globaldef000773", "BOTSHIRTPANTS_11");   // constant = 11
            nameMap.Add("globaldef000774", "BOTSHIRTPANTS_12");   // constant = 12
            nameMap.Add("globaldef000775", "BOTSHIRTPANTS_13");   // constant = 13

            nameMap.Add("globaldef000788", "waypointStatus");

            #endregion

            #region obot global variables

            nameMap.Add("globaldef000508", "modelindex_eyes");
            nameMap.Add("globaldef000509", "modelindex_player");
            nameMap.Add("globaldef000510", "modelindex_head");

            // rocket arena specific
            nameMap.Add("globaldef000522", "RA_PLAYERSTATTIME");  // constant = 0.5
            nameMap.Add("globaldef000523", "RA_MAXIDLETIME");  // constant = 300
            nameMap.Add("globaldef000524", "winner");
            nameMap.Add("globaldef000525", "loser");
            nameMap.Add("globaldef000526", "first");
            nameMap.Add("globaldef000527", "time_to_start");
            nameMap.Add("globaldef000528", "last_time");
            nameMap.Add("globaldef000529", "end_ra_globals");



            nameMap.Add("globaldef000744", "OBSERV_NAME");
            nameMap.Add("globaldef000745", "OBSERV_TELEPORT");
            nameMap.Add("globaldef000746", "OBSERV_CHASE");
            nameMap.Add("globaldef000747", "OBSERV_FLY");

            nameMap.Add("globaldef000784", "gibsCount"); // player.qc
            nameMap.Add("globaldef000786", "waypointCount");

            nameMap.Add("globaldef000789", "bspWaypointsExist");
            nameMap.Add("globaldef000790", "hardCodedWaypointsExist");

            nameMap.Add("globaldef000792", "observerCount");
            nameMap.Add("globaldef000793", "botCount");

            nameMap.Add("globaldef000795", "activeClientBitmask");  // b_clrank.qc
            nameMap.Add("globaldef000796", "maxClients");  // b_clrank.qc
            nameMap.Add("globaldef000797", "activeClientCount");  // b_clrank.qc
            nameMap.Add("globaldef000798", "unused798");
            nameMap.Add("globaldef000799", "gameNotRunning");
            nameMap.Add("globaldef000800", "mapStartTime");
            nameMap.Add("globaldef000801", "botSoundCount");
            nameMap.Add("globaldef000802", "maxWaypoint_ONLY_SET");
            nameMap.Add("globaldef000803", "lastBotMessageNr");    // b_talk.qc
            nameMap.Add("globaldef000804", "obot_game_option_bitflags");
            nameMap.Add("globaldef000805", "lowMemoryDisableExtraModels");
            nameMap.Add("globaldef000806", "unused806");
            nameMap.Add("globaldef000807", "unused807");
            nameMap.Add("globaldef000808", "unused808");
            nameMap.Add("globaldef000809", "unused809");

            nameMap.Add("globaldef000812", "floorTestEnt");
            nameMap.Add("globaldef000813", "lastBotToTalk");    // b_talk.qc
            nameMap.Add("globaldef000814", "currentAdmin");  // b_impuls.qc CheckIsAdmin
            nameMap.Add("globaldef000815", "prospectiveAdmin");
            nameMap.Add("globaldef000816", "firstClient");
            nameMap.Add("globaldef000817", "firstBot");
            nameMap.Add("globaldef000818", "firstBotSound");
            nameMap.Add("globaldef000819", "firstWaypoint");    // b_waypnt.qc GetWaypointByID
            nameMap.Add("globaldef000820", "end_obot_globals");

            #endregion

            #region obots fields

            nameMap.Add("field000224", "f_updatecache");
            nameMap.Add("field000225", "f_goalweight");
            nameMap.Add("field000226", "f_walkaboutweight");
            nameMap.Add("field000227", "f_sndweight");
            nameMap.Add("field000228", "f_ai");
            nameMap.Add("field000229", "f_lastai");
            nameMap.Add("field000230", "think2");
            nameMap.Add("field000231", "nextthink2");
            nameMap.Add("field000232", "lastphysicstime");
            nameMap.Add("field000233", "prephysicsorigin");
            nameMap.Add("field000237", "prephysicsvelocity");
            nameMap.Add("field000241", "touchorigin");
            nameMap.Add("field000245", "steporigin");

            nameMap.Add("field000250", "clmodelindex");

            nameMap.Add("field000252", "botflags");
            nameMap.Add("field000253", "old_velocity");
            nameMap.Add("field000257", "old_origin");

            nameMap.Add("field000261", "old_flags");
            nameMap.Add("field000262", "old_botflags");

            nameMap.Add("field000265", "botskill");

            nameMap.Add("field000283", "teamname"); // client.qc

            nameMap.Add("field000285", "clientnumber");  // b_clrank.qc
            nameMap.Add("field000286", "botnumber");  // b_char.qc
            nameMap.Add("field000287", "clientcolor");  // b_clrank.qc

            nameMap.Add("field000291", "messagestr1");
            nameMap.Add("field000292", "messagestr2");
            nameMap.Add("field000293", "messagestr3");
            nameMap.Add("field000294", "messagenr");

            nameMap.Add("field000296", "attackedby");
            nameMap.Add("field000297", "next");
            nameMap.Add("field000298", "prev");
            nameMap.Add("field000299", "path0");
            nameMap.Add("field000300", "path1");
            nameMap.Add("field000301", "path2");
            nameMap.Add("field000302", "path3");
            nameMap.Add("field000303", "path4");
            nameMap.Add("field000304", "path5");
            nameMap.Add("field000305", "path6");
            nameMap.Add("field000306", "path7");
            nameMap.Add("field000307", "dist0");
            nameMap.Add("field000308", "dist1");
            nameMap.Add("field000309", "dist2");
            nameMap.Add("field000310", "dist3");
            nameMap.Add("field000311", "dist4");
            nameMap.Add("field000312", "dist5");
            nameMap.Add("field000313", "dist6");
            nameMap.Add("field000314", "dist7");
            nameMap.Add("field000315", "cache0_ent");
            nameMap.Add("field000316", "cache1_ent");
            nameMap.Add("field000317", "cache2_ent");
            nameMap.Add("field000318", "cache3_ent");
            nameMap.Add("field000319", "cache4_ent");
            nameMap.Add("field000320", "cache5_ent");
            nameMap.Add("field000321", "cache6_ent");
            nameMap.Add("field000322", "cache7_ent");
            nameMap.Add("field000323", "cache8_ent");
            nameMap.Add("field000324", "cache9_ent");
            nameMap.Add("field000325", "cache0_dist");
            nameMap.Add("field000326", "cache1_dist");
            nameMap.Add("field000327", "cache2_dist");
            nameMap.Add("field000328", "cache3_dist");
            nameMap.Add("field000329", "cache4_dist");
            nameMap.Add("field000330", "cache5_dist");
            nameMap.Add("field000331", "cache6_dist");
            nameMap.Add("field000332", "cache7_dist");
            nameMap.Add("field000333", "cache8_dist");
            nameMap.Add("field000334", "cache9_dist");

            nameMap.Add("field000343", "camflags");
            nameMap.Add("field000344", "camera");
            nameMap.Add("field000345", "camangle");
            nameMap.Add("field000349", "clientorigin");
            nameMap.Add("field000353", "clientv_angle");
            nameMap.Add("field000357", "angletime");
            nameMap.Add("field000358", "chasecamoffset");
            nameMap.Add("field000362", "admin");


            #endregion

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

            #region client.qc

            // Declarations
            nameMap.Add("globaldef002863", "intermission_running");
            nameMap.Add("globaldef002864", "intermission_exittime");
            nameMap.Add("globaldef002871", "nextmap");
            
            nameMap.Add("func000376", "DecodeLevelParms");
            nameMap.Add("func000377", "FindIntermission");
            nameMap.Add("func000378", "GotoNextMap");
            nameMap.Add("func000379", "ExitIntermission");
            nameMap.Add("func000380", "IntermissionThink");
            nameMap.Add("func000381", "execute_changelevel");
            nameMap.Add("func000382", "changelevel_touch");
            nameMap.Add("func000384", "respawn");
            nameMap.Add("func000387", "SelectSpawnPoint");
            nameMap.Add("func000388", "FullLoadout");
            nameMap.Add("func000395", "NextLevel");
            nameMap.Add("func000396", "CheckRules");
            nameMap.Add("func000397", "PlayerDeathThink");
            nameMap.Add("func000398", "PlayerJump");
            nameMap.Add("func000399", "WaterMove");
            nameMap.Add("func000400", "CheckWaterJump");
            nameMap.Add("func000402", "CheckPowerups");
            nameMap.Add("func000406", "ClientObituary");

            for (int i = 373; i <= 406; i++)
            {
                fileMap[i] = "client.qc";
            }

            // FindIntermission locals
            nameMap.Add("globaldef002867", "spot");
            nameMap.Add("globaldef002868", "cyc");

            // execute_changelevel locals
            nameMap.Add("globaldef002882", "pos");

            // changelevel_touch locals
            nameMap.Add("globaldef002884", "pos");

            // CheckSpawnPoint params
            nameMap.Add("globaldef002895", "v");

            // SelectSpawnPoint locals
            nameMap.Add("globaldef002899", "spot");
            nameMap.Add("globaldef002900", "pcount");

            // FullLoadout params
            nameMap.Add("globaldef002908", "ent");

            // PutClientInServer locals
            nameMap.Add("globaldef002910", "spot");
            nameMap.Add("globaldef002911", "UNUSED");

            // NextLevel locals
            nameMap.Add("globaldef002918", "o");

            // CheckRules locals
            nameMap.Add("globaldef002926", "timelimit");
            nameMap.Add("globaldef002927", "fraglimit");

            // PlayerDeathThink locals
            nameMap.Add("globaldef002930", "old_self");
            nameMap.Add("globaldef002931", "forward");

            // PlayerJump locals
            nameMap.Add("globaldef002933", "start");
            nameMap.Add("globaldef002937", "end");

            // CheckWaterJump locals
            nameMap.Add("globaldef002944", "start");
            nameMap.Add("globaldef002948", "end");

            // PlayerPreThink locals
            nameMap.Add("globaldef002953", "UNUSED1");
            nameMap.Add("globaldef002954", "UNUSED2");

            // PlayerPostThink locals
            nameMap.Add("globaldef002960", "UNUSED1");
            nameMap.Add("globaldef002961", "UNUSED2");
            nameMap.Add("globaldef002962", "UNUSED3");

            // ClientConnect locals
            nameMap.Add("globaldef002966", "bot");
            nameMap.Add("globaldef002967", "botclnum");

            // ClientDisconnect locals
            nameMap.Add("globaldef002970", "UNUSED1");
            nameMap.Add("globaldef002971", "clientisalive");

            // ClientObituary params
            nameMap.Add("globaldef002975", "targ");
            nameMap.Add("globaldef002976", "attacker");

            // ClientObituary locals
            nameMap.Add("globaldef002977", "rnum");
            nameMap.Add("globaldef002978", "deathstring");
            nameMap.Add("globaldef002979", "deathstring2");
            nameMap.Add("globaldef002980", "attacker_health");
            nameMap.Add("globaldef002981", "attacker_armor");
            nameMap.Add("globaldef002982", "attacker_stat_str");
            nameMap.Add("globaldef002983", "UNUSED1");
            nameMap.Add("globaldef002984", "UNUSED2");
            nameMap.Add("globaldef002985", "UNUSED3");
            nameMap.Add("globaldef002986", "UNUSED4");
            nameMap.Add("globaldef002987", "UNUSED5");
            nameMap.Add("globaldef002988", "UNUSED6");
            nameMap.Add("globaldef002989", "UNUSED7");
            nameMap.Add("globaldef002990", "UNUSED8");
            nameMap.Add("globaldef002991", "UNUSED9");
            nameMap.Add("globaldef002992", "UNUSED10");
            nameMap.Add("globaldef002993", "UNUSED11");
            nameMap.Add("globaldef002994", "UNUSED12");
            nameMap.Add("globaldef002995", "UNUSED13");
            nameMap.Add("globaldef002996", "UNUSED14");
            nameMap.Add("globaldef002997", "UNUSED15");
            nameMap.Add("globaldef002998", "UNUSED16");
            nameMap.Add("globaldef002999", "UNUSED17");
            nameMap.Add("globaldef003000", "UNUSED18");
            nameMap.Add("globaldef003001", "UNUSED19");
            nameMap.Add("globaldef003002", "UNUSED20");
            nameMap.Add("globaldef003003", "UNUSED21");
            nameMap.Add("globaldef003004", "UNUSED22");
            nameMap.Add("globaldef003005", "UNUSED23");
            nameMap.Add("globaldef003006", "UNUSED24");
            nameMap.Add("globaldef003007", "rnum2");

            #endregion

            #region player.qc

            nameMap.Add("func000407", "player_stand1");
            nameMap.Add("func000408", "player_run");
            for (int i = 409; i <= 414; i++) { nameMap.Add("func000" + i.ToString(), "player_shot" + (i - 408).ToString()); }
            for (int i = 415; i <= 418; i++) { nameMap.Add("func000" + i.ToString(), "player_axe" + (i - 414).ToString()); }
            for (int i = 419; i <= 422; i++) { nameMap.Add("func000" + i.ToString(), "player_axeb" + (i - 418).ToString()); }
            for (int i = 423; i <= 426; i++) { nameMap.Add("func000" + i.ToString(), "player_axec" + (i - 422).ToString()); }
            for (int i = 427; i <= 430; i++) { nameMap.Add("func000" + i.ToString(), "player_axed" + (i - 426).ToString()); }
            for (int i = 431; i <= 432; i++) { nameMap.Add("func000" + i.ToString(), "player_nail" + (i - 430).ToString()); }
            for (int i = 433; i <= 434; i++) { nameMap.Add("func000" + i.ToString(), "player_light" + (i - 432).ToString()); }
            for (int i = 435; i <= 440; i++) { nameMap.Add("func000" + i.ToString(), "player_rocket" + (i - 434).ToString()); }
            nameMap.Add("func000441", "PainSound");
            for (int i = 442; i <= 447; i++) { nameMap.Add("func000" + i.ToString(), "player_pain" + (i - 441).ToString()); }
            for (int i = 448; i <= 453; i++) { nameMap.Add("func000" + i.ToString(), "player_axpain" + (i - 447).ToString()); }
            nameMap.Add("func000454", "player_pain");
            nameMap.Add("func000455", "DeathBubblesSpawn");
            nameMap.Add("func000456", "DeathBubbles");
            nameMap.Add("func000457", "DeathSound");
            nameMap.Add("func000458", "PlayerDead");
            nameMap.Add("func000459", "VelocityForDamage");
            nameMap.Add("func000460", "RemoveGib");
            nameMap.Add("func000461", "ThrowGib");
            nameMap.Add("func000462", "ThrowHead");
            nameMap.Add("func000463", "GibPlayer");
            nameMap.Add("func000464", "PlayerDie");
            nameMap.Add("func000465", "set_suicide_frame");
            for (int i = 466; i <= 476; i++) { nameMap.Add("func000" + i.ToString(), "player_diea" + (i - 465).ToString()); }
            for (int i = 477; i <= 485; i++) { nameMap.Add("func000" + i.ToString(), "player_dieb" + (i - 476).ToString()); }
            for (int i = 486; i <= 500; i++) { nameMap.Add("func000" + i.ToString(), "player_diec" + (i - 485).ToString()); }
            for (int i = 501; i <= 509; i++) { nameMap.Add("func000" + i.ToString(), "player_died" + (i - 500).ToString()); }
            for (int i = 510; i <= 518; i++) { nameMap.Add("func000" + i.ToString(), "player_diee" + (i - 509).ToString()); }
            for (int i = 519; i <= 527; i++) { nameMap.Add("func000" + i.ToString(), "player_die_ax" + (i - 518).ToString()); }

            for (int i = 407; i <= 527; i++)
            {
                fileMap[i] = "player.qc";
            }

            // PainSound locals
            nameMap.Add("globaldef003143", "rs");

            // DeathBubblesSpawn locals
            nameMap.Add("globaldef003169", "bubble");

            // DeathBubbles params
            nameMap.Add("globaldef003172", "num_bubbles");

            // DeathBubbles locals
            nameMap.Add("globaldef003173", "bubble_spawner");

            // DeathSound locals
            nameMap.Add("globaldef003175", "rs");

            // VelocityForDamage params
            nameMap.Add("globaldef003178", "dm");

            // VelocityForDamage locals
            nameMap.Add("globaldef003179", "v");

            // ThrowGib params
            nameMap.Add("globaldef003186", "gibname");
            nameMap.Add("globaldef003187", "dm");

            // ThrowGib locals
            nameMap.Add("globaldef003188", "new");

            // ThrowHead params
            nameMap.Add("globaldef003190", "gibname");
            nameMap.Add("globaldef003191", "dm");

            // PlayerDie locals
            nameMap.Add("globaldef003195", "i");

            #endregion

            #region monsters.qc

            nameMap.Add("func000528", "monster_use");
            nameMap.Add("func000529", "monster_death_use");
            nameMap.Add("func000530", "walkmonster_start_go");
            nameMap.Add("func000531", "walkmonster_start");
            nameMap.Add("func000532", "flymonster_start_go");
            nameMap.Add("func000533", "flymonster_start");
            nameMap.Add("func000534", "swimmonster_start_go");
            nameMap.Add("func000535", "swimmonster_start");

            for (int i = 528; i <= 535; i++)
            {
                fileMap[i] = "monsters.qc";
            }

            // monster_death_use locals
            nameMap.Add("globaldef003297", "ent");
            nameMap.Add("globaldef003298", "otemp");
            nameMap.Add("globaldef003299", "stemp");

            // walkmonster_start_go locals
            nameMap.Add("globaldef003301", "stemp");
            nameMap.Add("globaldef003302", "etemp");

            #endregion

            #region doors.qc

            // Declarations
            nameMap.Add("globaldef003316", "DOOR_START_OPEN");
            nameMap.Add("globaldef003317", "DOOR_DONT_LINK");
            nameMap.Add("globaldef003318", "DOOR_GOLD_KEY");
            nameMap.Add("globaldef003319", "DOOR_SILVER_KEY");
            nameMap.Add("globaldef003320", "DOOR_TOGGLE");
            nameMap.Add("globaldef003404", "SECRET_OPEN_ONCE");
            nameMap.Add("globaldef003405", "SECRET_1ST_LEFT");
            nameMap.Add("globaldef003406", "SECRET_1ST_DOWN");
            nameMap.Add("globaldef003407", "SECRET_NO_SHOOT");
            nameMap.Add("globaldef003408", "SECRET_YES_SHOOT");

            nameMap.Add("func000536", "door_blocked");
            nameMap.Add("func000539", "door_go_down");
            nameMap.Add("func000540", "door_go_up");
            nameMap.Add("func000541", "door_fire");
            nameMap.Add("func000542", "door_use");
            nameMap.Add("func000543", "door_trigger_touch");
            nameMap.Add("func000544", "door_killed");
            nameMap.Add("func000545", "door_touch");
            nameMap.Add("func000546", "spawn_field");
            nameMap.Add("func000547", "EntitiesTouching");
            nameMap.Add("func000548", "LinkDoors");
            nameMap.Add("func000550", "fd_secret_use");
            nameMap.Add("func000552", "fd_secret_move2");
            nameMap.Add("func000554", "fd_secret_move4");
            nameMap.Add("func000556", "fd_secret_move6");
            nameMap.Add("func000558", "secret_blocked");
            nameMap.Add("func000559", "secret_touch");

            for (int i = 536; i <= 560; i++)
            {
                fileMap[i] = "doors.qc";
            }

            // door_fire locals
            nameMap.Add("globaldef003327", "oself");
            nameMap.Add("globaldef003328", "starte");

            // door_use locals
            nameMap.Add("globaldef003331", "oself");

            // door_killed locals
            nameMap.Add("globaldef003334", "oself");

            // door_touch locals
            nameMap.Add("globaldef003336", "UNUSED");

            // spawn_field params
            nameMap.Add("globaldef003347", "fmins");
            nameMap.Add("globaldef003351", "fmaxs");

            // spawn_field locals
            nameMap.Add("globaldef003355", "trigger");
            nameMap.Add("globaldef003356", "t1");
            nameMap.Add("globaldef003360", "t2");

            // EntitiesTouching params
            nameMap.Add("globaldef003366", "e1");
            nameMap.Add("globaldef003367", "e2");

            // LinkDoors locals
            nameMap.Add("globaldef003369", "t");
            nameMap.Add("globaldef003370", "starte");
            nameMap.Add("globaldef003371", "cmins");
            nameMap.Add("globaldef003375", "cmaxs");

            // fd_secret_use locals
            nameMap.Add("globaldef003410", "temp");

            #endregion

            #region buttons.qc

            nameMap.Add("func000563", "button_return");
            nameMap.Add("func000564", "button_blocked");
            nameMap.Add("func000565", "button_fire");
            nameMap.Add("func000566", "button_use");
            nameMap.Add("func000567", "button_touch");
            nameMap.Add("func000568", "button_killed");

            for (int i = 561; i <= 569; i++)
            {
                fileMap[i] = "buttons.qc";
            }

            // button_touch locals
            nameMap.Add("globaldef003427", "UNUSED");

            // func_button locals
            nameMap.Add("globaldef003433", "gtemp");
            nameMap.Add("globaldef003434", "ftemp");

            #endregion

            #region triggers.qc

            // Declarations
            nameMap.Add("globaldef003439", "stemp");
            nameMap.Add("globaldef003440", "otemp");
            nameMap.Add("globaldef003441", "s");
            nameMap.Add("globaldef003442", "old");
            nameMap.Add("globaldef003444", "SPAWNFLAG_NOMESSAGE");
            nameMap.Add("globaldef003445", "SPAWNFLAG_NOTOUCH");
            nameMap.Add("globaldef003469", "PLAYER_ONLY");
            nameMap.Add("globaldef003470", "SILENT");
            nameMap.Add("globaldef003511", "PUSH_ONCE");

            nameMap.Add("func000571", "multi_wait");
            nameMap.Add("func000572", "multi_trigger");
            nameMap.Add("func000573", "multi_killed");
            nameMap.Add("func000574", "multi_use");
            nameMap.Add("func000575", "multi_touch");
            nameMap.Add("func000576", "trigger_multiple_original");
            nameMap.Add("func000581", "counter_use");
            nameMap.Add("func000583", "play_teleport");
            nameMap.Add("func000584", "spawn_tfog");
            nameMap.Add("func000585", "tdeath_touch");
            nameMap.Add("func000586", "spawn_tdeath");
            nameMap.Add("func000587", "teleport_touch");
            nameMap.Add("func000589", "teleport_use");
            nameMap.Add("func000591", "trigger_skill_touch");
            nameMap.Add("func000592", "trigger_setskill");
            nameMap.Add("func000593", "trigger_onlyregistered_touch");
            nameMap.Add("func000595", "hurt_on");
            nameMap.Add("func000596", "hurt_touch");
            nameMap.Add("func000598", "trigger_push_touch");
            nameMap.Add("func000600", "trigger_monsterjump_touch");

            for (int i = 570; i <= 601; i++)
            {
                fileMap[i] = "triggers.qc";
            }

            // counter_use locals
            nameMap.Add("globaldef003462", "junk");

            // play_teleport locals
            nameMap.Add("globaldef003472", "v");
            nameMap.Add("globaldef003473", "tmpstr");

            // spawn_tfog params
            nameMap.Add("globaldef003474", "org");

            // spawn_tdeath params
            nameMap.Add("globaldef003479", "org");
            nameMap.Add("globaldef003483", "death_owner");

            // spawn_tdeath locals
            nameMap.Add("globaldef003484", "death");

            // teleport_touch locals
            nameMap.Add("globaldef003487", "t");
            nameMap.Add("globaldef003488", "org");

            // trigger_teleport locals
            nameMap.Add("globaldef003498", "o");
            #endregion

            #region plats.qc

            // Declarations
            nameMap.Add("globaldef003524", "PLAT_LOW_TRIGGER");

            nameMap.Add("func000602", "plat_spawn_inside_trigger");
            nameMap.Add("func000605", "plat_go_down");
            nameMap.Add("func000606", "plat_go_up");
            nameMap.Add("func000607", "plat_center_touch");
            nameMap.Add("func000609", "plat_trigger_use");
            nameMap.Add("func000610", "plat_crush");
            nameMap.Add("func000611", "plat_use");
            nameMap.Add("func000613", "train_blocked");
            nameMap.Add("func000614", "train_use");
            nameMap.Add("func000616", "train_next");
            nameMap.Add("func000617", "func_train_find");

            for (int i = 602; i <= 619; i++)
            {
                fileMap[i] = "plats.qc";
            }

            // plat_spawn_inside_trigger locals
            nameMap.Add("globaldef003526", "trigger");
            nameMap.Add("globaldef003527", "tmin");
            nameMap.Add("globaldef003531", "tmax");

            // func_plat locals
            nameMap.Add("globaldef003543", "t");

            // train_next locals
            nameMap.Add("globaldef003554", "targ");
            nameMap.Add("globaldef003555", "UNUSED");

            // func_train_find locals
            nameMap.Add("globaldef003557", "targ");

            #endregion

            #region misc.qc

            // Declarations
            nameMap.Add("globaldef003568", "START_OFF");
            nameMap.Add("globaldef003599", "SPAWNFLAG_SUPERSPIKE");
            nameMap.Add("globaldef003600", "SPAWNFLAG_LASER");

            nameMap.Add("func000622", "light_use");
            nameMap.Add("func000627", "FireAmbient");
            nameMap.Add("func000633", "fire_fly");
            nameMap.Add("func000634", "fire_touch");
            nameMap.Add("func000635", "barrel_explode");
            nameMap.Add("func000638", "spikeshooter_use");
            nameMap.Add("func000639", "shooter_think");
            nameMap.Add("func000640", "trap_spikeshooter_original");
            nameMap.Add("func000644", "make_bubbles");
            nameMap.Add("func000645", "bubble_split");
            nameMap.Add("func000646", "bubble_remove");
            nameMap.Add("func000647", "bubble_bob");
            nameMap.Add("func000649", "func_wall_use");
            nameMap.Add("func000663", "noise_think");

            for (int i = 620; i <= 664; i++)
            {
                fileMap[i] = "misc.qc";
            }

            // fire_fly locals
            nameMap.Add("globaldef003588", "fireball");

            // misc_explobox locals
            nameMap.Add("globaldef003593", "oldz");

            // misc_explobox2 locals
            nameMap.Add("globaldef003597", "oldz");

            // make_bubbles locals
            nameMap.Add("globaldef003613", "bubble");

            // bubble_split locals
            nameMap.Add("globaldef003615", "bubble");

            // bubble_bob locals
            nameMap.Add("globaldef003616", "rnd1");
            nameMap.Add("globaldef003617", "rnd2");
            nameMap.Add("globaldef003618", "rnd3");
            nameMap.Add("globaldef003619", "vtmp1");
            nameMap.Add("globaldef003623", "modi");

            #endregion

            #region ogre.qc

            nameMap.Add("func000665", "OgreGrenadeExplode");
            nameMap.Add("func000666", "OgreGrenadeTouch");
            nameMap.Add("func000667", "OgreFireGrenade");
            nameMap.Add("func000668", "chainsaw");
            for (int i = 669; i <= 677; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_stand"+(i-668).ToString()); }
            for (int i = 678; i <= 693; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_walk" + (i - 677).ToString()); }
            for (int i = 694; i <= 701; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_run" + (i - 693).ToString()); }
            for (int i = 702; i <= 715; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_swing" + (i - 701).ToString()); }
            for (int i = 716; i <= 729; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_smash" + (i - 715).ToString()); }
            for (int i = 730; i <= 736; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_nail" + (i - 729).ToString()); }
            for (int i = 737; i <= 741; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_pain" + (i - 736).ToString()); }
            for (int i = 742; i <= 744; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_painb" + (i - 741).ToString()); }
            for (int i = 745; i <= 750; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_painc" + (i - 744).ToString()); }
            for (int i = 751; i <= 766; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_paind" + (i - 750).ToString()); }
            for (int i = 767; i <= 781; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_paine" + (i - 766).ToString()); }
            nameMap.Add("func000782", "ogre_pain");
            for (int i = 783; i <= 796; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_die" + (i - 782).ToString()); }
            for (int i = 797; i <= 806; i++) { nameMap.Add("func000" + (i).ToString(), "ogre_bdie" + (i - 796).ToString()); }
            nameMap.Add("func000807", "ogre_die");
            nameMap.Add("func000808", "ogre_melee");
            nameMap.Add("func000809", "monster_ogre_original");

            for (int i = 665; i <= 811; i++)
            {
                fileMap[i] = "ogre.qc";
            }

            // OgreFireGrenade locals
            nameMap.Add("globaldef003659", "missile");
            nameMap.Add("globaldef003660", "mpuff");

            // chainsaw params
            nameMap.Add("globaldef003662", "side");

            // chainsaw locals
            nameMap.Add("globaldef003663", "delta");
            nameMap.Add("globaldef003667", "ldmg");

            // ogre_pain params
            nameMap.Add("globaldef003785", "attacker");
            nameMap.Add("globaldef003786", "damage");

            // ogre_pain locals
            nameMap.Add("globaldef003787", "r");

            #endregion

            // Done to here

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
            
            nameMap.Add("func002072", "LaunchLaser");

            for (int i = 2071; i <= 2182; i++)
            {
                fileMap[i] = "enforcer.qc";
            }

            // LaunchLaser params
            nameMap.Add("globaldef005434", "org");
            nameMap.Add("globaldef005438", "vec");

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

            // Done
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

            #region b_clskin.qc

            nameMap.Add("func002266", "GetClientEntity");

            for (int i = 2266; i <= 2266; i++)
            {
                fileMap[i] = "b_clskin.qc";
            }

            #endregion

            #region b_clphys.qc

            for (int i = 2274; i <= 2277; i++)
            {
                fileMap[i] = "b_clphys.qc";
            }

            #endregion

            // Done
            #region b_char.qc

            // Declarations
            for (int i = 5782; i <= 5805; i++) { nameMap.Add("globaldef00" + i.ToString(), "BOT" + (i-5782).ToString()); }

            nameMap.Add("globaldef005806", "BOTMESSAGETYPE_NEVERUSED");
            nameMap.Add("globaldef005807", "BOTMESSAGETYPE_EXIT");
            nameMap.Add("globaldef005808", "BOTMESSAGETYPE_KILL");
            nameMap.Add("globaldef005809", "BOTMESSAGETYPE_DEATH");
            nameMap.Add("globaldef005810", "BOTMESSAGETYPE_INSULT");
            nameMap.Add("globaldef005811", "BOTMESSAGETYPE_QUESTION");
            nameMap.Add("globaldef005812", "BOTMESSAGETYPE_BRAG");
            nameMap.Add("globaldef005813", "BOTMESSAGETYPE_REPLY");
            nameMap.Add("globaldef005814", "BOTMESSAGETYPE_NEVERUSED2");
            nameMap.Add("globaldef005815", "BOTMESSAGETYPE_PRAISE");

            nameMap.Add("globaldef005816", "BOTMESSAGEOPTION_COMMON");
            nameMap.Add("globaldef005817", "BOTMESSAGEOPTION_RARE");
            nameMap.Add("globaldef005818", "BOTMESSAGEOPTION_RAREST");
            nameMap.Add("globaldef005819", "BOTMESSAGEOPTION_REPLY");


            nameMap.Add("func002278", "BotName");
            nameMap.Add("func002279", "BotConsoleName");
            nameMap.Add("func002280", "BotShirtPantsColor");
            nameMap.Add("func002281", "BotChooseExitMessage");
            nameMap.Add("func002282", "BotChooseKillMessage");
            nameMap.Add("func002283", "BotChooseDeathMessage");
            nameMap.Add("func002284", "BotChooseInsultMessage");
            nameMap.Add("func002286", "BotChooseRandomMessage");

            for (int i = 2278; i <= 2286; i++)
            {
                fileMap[i] = "b_char.qc";
            }

            // BotName params
            nameMap.Add("globaldef005820", "n");

            // BotConsoleName params
            nameMap.Add("globaldef005846", "n");

            // BotShirtPantsColor params
            nameMap.Add("globaldef005871", "n");

            // BotChooseExitMessage params
            nameMap.Add("globaldef005872", "e");

            // BotChooseExitMessage locals
            nameMap.Add("globaldef005873", "rnd");

            // BotChooseKillMessage params
            nameMap.Add("globaldef005898", "e");

            // BotChooseKillMessage locals
            nameMap.Add("globaldef005899", "rnd");
            nameMap.Add("globaldef005900", "enemy_name");

            // BotChooseDeathMessage params
            nameMap.Add("globaldef006020", "e");

            // BotChooseDeathMessage locals
            nameMap.Add("globaldef006021", "rnd");
            nameMap.Add("globaldef006022", "enemy_name");

            // BotChooseInsultMessage params
            nameMap.Add("globaldef006144", "e");

            // BotChooseInsultMessage locals
            nameMap.Add("globaldef006145", "rnd");
            nameMap.Add("globaldef006146", "choice");
            nameMap.Add("globaldef006147", "name");

            // BotChooseTelefragMessage params
            nameMap.Add("globaldef006464", "e");

            // BotChooseTelefragMessage locals
            nameMap.Add("globaldef006465", "rnd");

            // BotChooseRandomMessage params
            nameMap.Add("globaldef006474", "e");

            // BotChooseRandomMessage locals
            nameMap.Add("globaldef006475", "rnd");

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

            for (int i = 2346; i <= 2365; i++)
            {
                fileMap[i] = "b_observ.qc";
            }

            // CycleClientCamera params
            nameMap.Add("globaldef006785", "client");

            // CycleClientCamera locals
            nameMap.Add("globaldef006786", "tofollow");

            // ToggleObserverFly params
            nameMap.Add("globaldef006792", "e");

            #endregion

            #region b_talk.qc

            nameMap.Add("func002366", "BotEnterMessage1");
            nameMap.Add("func002367", "BotEnterMessage2");
            nameMap.Add("func002368", "BotEnterMessage3");
            nameMap.Add("func002369", "BotStoreMessage");
            nameMap.Add("func002370", "BotStoreMessage2");
            nameMap.Add("func002371", "BotStoreMessage3");
            nameMap.Add("func002372", "RandomNameExcept");
            nameMap.Add("func002373", "ObserverName");
            nameMap.Add("func002374", "BotRemoveMessage");
            nameMap.Add("func002375", "BotEnterMessage");
            nameMap.Add("func002376", "CheckBotExitMessage");
            nameMap.Add("func002377", "CheckBotDeathMessage");
            nameMap.Add("func002378", "CheckBotKillMessage");

            for (int i = 2366; i <= 2380; i++)
            {
                fileMap[i] = "b_talk.qc";
            }

            // BotEnterMessage params
            nameMap.Add("globaldef006801", "e");
            nameMap.Add("globaldef006802", "str1");
            nameMap.Add("globaldef006803", "mnr");

            // BotEnterMessage2 params
            nameMap.Add("globaldef006806", "e");
            nameMap.Add("globaldef006807", "str1");
            nameMap.Add("globaldef006808", "str2");
            nameMap.Add("globaldef006809", "mnr");

            // BotEnterMessage3 params
            nameMap.Add("globaldef006810", "e");
            nameMap.Add("globaldef006811", "str1");
            nameMap.Add("globaldef006812", "str2");
            nameMap.Add("globaldef006813", "str3");
            nameMap.Add("globaldef006814", "mnr");

            // BotStoreMessage params
            nameMap.Add("globaldef006815", "e");
            nameMap.Add("globaldef006816", "str1");
            nameMap.Add("globaldef006817", "mnr");
            nameMap.Add("globaldef006818", "mtime");

            // BotStoreMessage2 params
            nameMap.Add("globaldef006819", "e");
            nameMap.Add("globaldef006820", "str1");
            nameMap.Add("globaldef006821", "str2");
            nameMap.Add("globaldef006822", "mnr");
            nameMap.Add("globaldef006823", "mtime");

            // BotStoreMessage3 params
            nameMap.Add("globaldef006824", "e");
            nameMap.Add("globaldef006825", "str1");
            nameMap.Add("globaldef006826", "str2");
            nameMap.Add("globaldef006827", "str3");
            nameMap.Add("globaldef006828", "mnr");
            nameMap.Add("globaldef006829", "mtime");

            // RandomNameExcept params
            nameMap.Add("globaldef006830", "e");

            // RandomNameExcept locals
            nameMap.Add("globaldef006831", "count");
            nameMap.Add("globaldef006832", "rnd");
            nameMap.Add("globaldef006833", "plr_ent");

            // ObserverName locals
            nameMap.Add("globaldef006835", "count");
            nameMap.Add("globaldef006836", "rnd");
            nameMap.Add("globaldef006837", "obs_ent");

            // BotRemoveMessage params
            nameMap.Add("globaldef006839", "e");

            // BotEnterMessage params
            nameMap.Add("globaldef006840", "e");

            // CheckBotExitMessage params
            nameMap.Add("globaldef006841", "bot");

            // CheckBotDeathMessage params
            nameMap.Add("globaldef006842", "bot");

            // CheckBotKillMessage params
            nameMap.Add("globaldef006843", "bot");

            #endregion

            #region b_fight.qc

            nameMap.Add("func002381", "BotAimAtEnemyAxe");
            nameMap.Add("func002382", "BotAimAtEnemyShotgun");
            nameMap.Add("func002383", "BotAimAtEnemyNailgun");
            nameMap.Add("func002384", "BotAimAtEnemyRocket");
            nameMap.Add("func002385", "BotAimAtEnemyGrenade");
            nameMap.Add("func002386", "BotAimAtEnemyLightning");
            nameMap.Add("func002387", "BotAimAtEnemyByWeapon");
            nameMap.Add("func002388", "BotAimAtEnemy");

            nameMap.Add("func002398", "BotEnemyRange");
            nameMap.Add("func002399", "BotAttackMove");

            for (int i = 2381; i <= 2399; i++)
            {
                fileMap[i] = "b_fight.qc";
            }

            // BotEnemyRange params
            nameMap.Add("globaldef007028", "bot");
            nameMap.Add("globaldef007029", "botenemy");

            // BotEnemyRange locals
            nameMap.Add("globaldef007030", "startPos");
            nameMap.Add("globaldef007034", "endPos");
            nameMap.Add("globaldef007038", "botCondition");
            nameMap.Add("globaldef007039", "dist");

            // BotAttackMove params
            nameMap.Add("globaldef007040", "bot");
            nameMap.Add("globaldef007041", "botspeed");

            // BotAttackMove locals
            nameMap.Add("globaldef007042", "strafeAngle");
            nameMap.Add("globaldef007043", "strafeAngleChoice");
            nameMap.Add("globaldef007044", "currentDistToEnemy");
            nameMap.Add("globaldef007045", "oldDistToEnemy");
            nameMap.Add("globaldef007046", "rnd");
            nameMap.Add("globaldef007047", "bestWeapon");

            #endregion

            #region b_think.qc

            nameMap.Add("func002408", "BotPostThink");
            nameMap.Add("func002409", "BotPreThink");
            nameMap.Add("func002410", "BotThink");

            for (int i = 2408; i <= 2410; i++)
            {
                fileMap[i] = "b_think.qc";
            }

            // BotThink params
            nameMap.Add("globaldef007088", "sk");

            #endregion

            #region b_spawn.qc

            nameMap.Add("func002417", "DestroyBot");
            nameMap.Add("func002420", "AddDeathmatchBot");
            nameMap.Add("func002422", "AddBots");
            nameMap.Add("func002423", "AddRandomDeathmatchBot");
            nameMap.Add("func002424", "RemoveAllBots");  // impulse 152
            nameMap.Add("func002425", "RemoveOneDeathmatchBot");
            
            for (int i = 2417; i <= 2429; i++)
            {
                fileMap[i] = "b_spawn.qc";
            }

            #endregion

            #region b_move.qc

            nameMap.Add("func002440", "BotMove");
            nameMap.Add("func002441", "BotMoveInitial");
            nameMap.Add("func002442", "BotMoveToGoal");
            nameMap.Add("func002444", "BotMoveInDirection");
            nameMap.Add("func002445", "BotJumpInDirection");

            for (int i = 2430; i <= 2445; i++)
            {
                fileMap[i] = "b_move.qc";
            }

            // BotMove params
            nameMap.Add("globaldef007502", "bot");
            nameMap.Add("globaldef007503", "direction");
            nameMap.Add("globaldef007507", "botspeed");
            nameMap.Add("globaldef007508", "jump");

            // BotMoveInitial params
            nameMap.Add("globaldef007567", "bot");
            nameMap.Add("globaldef007568", "direction");
            nameMap.Add("globaldef007572", "botspeed");
            nameMap.Add("globaldef007573", "jump");

            // BotMoveInitial locals
            nameMap.Add("globaldef007574", "goalpos");
            nameMap.Add("globaldef007578", "goaltype");

            // BotMoveToGoal params
            nameMap.Add("globaldef007579", "bot");
            nameMap.Add("globaldef007580", "botspeed");

            // BotMoveToGoal locals
            nameMap.Add("globaldef007581", "obstacle");

            // BotJumpToGoal params
            nameMap.Add("globaldef007582", "bot");
            nameMap.Add("globaldef007583", "botspeed");

            // BotJumpToGoal locals
            nameMap.Add("globaldef007584", "obstacle");

            // BotMoveInDirection params
            nameMap.Add("globaldef007585", "bot");
            nameMap.Add("globaldef007586", "yaw");
            nameMap.Add("globaldef007587", "botspeed");

            // BotMoveInDirection locals
            nameMap.Add("globaldef007588", "angle");
            nameMap.Add("globaldef007592", "obstacle");

            // BotJumpInDirection params
            nameMap.Add("globaldef007593", "bot");
            nameMap.Add("globaldef007594", "yaw");
            nameMap.Add("globaldef007595", "botspeed");

            // BotJumpInDirection locals
            nameMap.Add("globaldef007596", "angle");
            nameMap.Add("globaldef007600", "obstacle");


            #endregion

            #region b_hear.qc

            nameMap.Add("func002447", "soundweight_door");
            nameMap.Add("func002448", "soundweight_teleport");
            nameMap.Add("func002449", "soundweight_fire");
            nameMap.Add("func002450", "soundweight_armor");
            nameMap.Add("func002451", "soundweight_pickup");
            nameMap.Add("func002452", "RemoveBotSound");
            nameMap.Add("func002453", "CreateBotSound");
            nameMap.Add("func002454", "Hearable");
            nameMap.Add("func002455", "LocateDistantSound");

            for (int i = 2447; i <= 2455; i++)
            {
                fileMap[i] = "b_hear.qc";
            }

            // CreateBotSound params
            nameMap.Add("globaldef007646", "cause");
            nameMap.Add("globaldef007647", "spot");
            nameMap.Add("globaldef007651", "duration");
            nameMap.Add("globaldef007652", "type");

            // CreateBotSound locals
            nameMap.Add("globaldef007653", "botsound");

            // Hearable params
            nameMap.Add("globaldef007657", "ear");
            nameMap.Add("globaldef007658", "e");

            // Hearable locals
            nameMap.Add("globaldef007659", "check");

            // LocateDistantSound params
            nameMap.Add("globaldef007660", "ear");

            // LocateDistantSound locals
            nameMap.Add("globaldef007661", "sndweight");
            nameMap.Add("globaldef007662", "highestsndweight");
            nameMap.Add("globaldef007663", "sndtype");
            nameMap.Add("globaldef007664", "botsnd");
            nameMap.Add("globaldef007665", "found");
            nameMap.Add("globaldef007666", "UNUSED");

            #endregion

            #region b_locate.qc

            nameMap.Add("func002456", "Visible");
            nameMap.Add("func002457", "AbsFloorHeight");
            nameMap.Add("func002458", "CreateFloorTestEnt");
            nameMap.Add("func002459", "BotAbovePlatDoorTrain");
            nameMap.Add("func002460", "BotIsOnPlatDoorTrain");
            nameMap.Add("func002461", "BotIsOnMovingPlatDoorTrain");
            nameMap.Add("func002462", "Reachable");

            for (int i = 2456; i <= 2462; i++)
            {
                fileMap[i] = "b_locate.qc";
            }

            // Visible params
            nameMap.Add("globaldef007667", "bot");
            nameMap.Add("globaldef007668", "obj");

            // Visible locals
            nameMap.Add("globaldef007669", "start");
            nameMap.Add("globaldef007673", "end");

            // AbsFloorHeight params
            nameMap.Add("globaldef007677", "spot");

            // BotAbovePlatDoorTrain params
            nameMap.Add("globaldef007683", "e");

            // BotAbovePlatDoorTrain locals
            nameMap.Add("globaldef007684", "start");
            nameMap.Add("globaldef007688", "end");

            // BotIsOnPlatDoorTrain params
            nameMap.Add("globaldef007692", "e");

            // BotIsOnMovingPlatDoorTrain params
            nameMap.Add("globaldef007693", "e");

            // BotIsOnMovingPlatDoorTrain locals
            nameMap.Add("globaldef007694", "start");
            nameMap.Add("globaldef007698", "end");

            // Reachable params
            nameMap.Add("globaldef007702", "a");
            nameMap.Add("globaldef007703", "b");

            #endregion

            #region b_goal.qc

            nameMap.Add("func002470", "CreateBotGoal");
            
            for (int i = 2470; i <= 2470; i++)
            {
                fileMap[i] = "b_goal.qc";
            }

            #endregion

            // f_goalweight params
            nameMap.Add("globaldef007942", "bot");
            nameMap.Add("globaldef007944", "e");
            // f_walkaboutweight params
            nameMap.Add("globaldef008076", "bot");
            nameMap.Add("globaldef008092", "e");
            // f_ai params
            nameMap.Add("globaldef008110", "bot");

            #region b_aitree.qc

            nameMap.Add("func002499", "BotAI");

            for (int i = 2499; i <= 2499; i++)
            {
                fileMap[i] = "b_aitree.qc";
            }

            #endregion 

            #region b_frames.qc

            nameMap.Add("func002524", "bot_stand");
            nameMap.Add("func002525", "bot_run");
            for (int i = 2526; i <= 2531; i++) { nameMap.Add("func00" + i.ToString(), "bot_shot" + (i - 2525).ToString()); }
            for (int i = 2532; i <= 2535; i++) { nameMap.Add("func00" + i.ToString(), "bot_axe" + (i - 2531).ToString()); }
            for (int i = 2536; i <= 2539; i++) { nameMap.Add("func00" + i.ToString(), "bot_axeb" + (i - 2535).ToString()); }
            for (int i = 2540; i <= 2543; i++) { nameMap.Add("func00" + i.ToString(), "bot_axec" + (i - 2539).ToString()); }
            for (int i = 2544; i <= 2547; i++) { nameMap.Add("func00" + i.ToString(), "bot_axed" + (i - 2543).ToString()); }
            for (int i = 2548; i <= 2549; i++) { nameMap.Add("func00" + i.ToString(), "bot_nail" + (i - 2547).ToString()); }
            for (int i = 2550; i <= 2551; i++) { nameMap.Add("func00" + i.ToString(), "bot_light" + (i - 2549).ToString()); }
            for (int i = 2552; i <= 2557; i++) { nameMap.Add("func00" + i.ToString(), "bot_rocket" + (i - 2551).ToString()); }
            nameMap.Add("func002558", "BotPainSound");
            for (int i = 2559; i <= 2564; i++) { nameMap.Add("func00" + i.ToString(), "bot_pain" + (i - 2558).ToString()); }
            for (int i = 2565; i <= 2570; i++) { nameMap.Add("func00" + i.ToString(), "bot_axpain" + (i - 2564).ToString()); }
            nameMap.Add("func002571", "bot_pain");
            nameMap.Add("func002572", "PostBotDeathMessage");
            nameMap.Add("func002573", "BotDead");
            for (int i = 2574; i <= 2584; i++) { nameMap.Add("func00" + i.ToString(), "bot_diea" + (i - 2573).ToString()); }
            for (int i = 2585; i <= 2593; i++) { nameMap.Add("func00" + i.ToString(), "bot_dieb" + (i - 2584).ToString()); }
            for (int i = 2594; i <= 2608; i++) { nameMap.Add("func00" + i.ToString(), "bot_diec" + (i - 2593).ToString()); }
            for (int i = 2609; i <= 2617; i++) { nameMap.Add("func00" + i.ToString(), "bot_died" + (i - 2608).ToString()); }
            for (int i = 2618; i <= 2626; i++) { nameMap.Add("func00" + i.ToString(), "bot_diee" + (i - 2617).ToString()); }
            for (int i = 2627; i <= 2635; i++) { nameMap.Add("func00" + i.ToString(), "bot_die_ax" + (i - 2626).ToString()); }
            nameMap.Add("func002636", "BotDeathSound");
            nameMap.Add("func002637", "BotDie");

            for (int i = 2524; i <= 2637; i++)
            {
                fileMap[i] = "b_frames.qc";
            }

            // BotPainSound locals
            nameMap.Add("globaldef008176", "rs");

            // bot_pain params
            nameMap.Add("globaldef008189", "attacker");
            nameMap.Add("globaldef008190", "damage");


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

            nameMap.Add("func002640", "update_cache0");
            nameMap.Add("func002641", "update_cache1");
            nameMap.Add("func002642", "update_cache2");
            nameMap.Add("func002643", "update_cache3");
            nameMap.Add("func002644", "update_cache4");
            nameMap.Add("func002645", "update_cache5");
            nameMap.Add("func002646", "update_cache6");
            nameMap.Add("func002647", "update_cache7");
            nameMap.Add("func002648", "update_cachex1");

            nameMap.Add("func002650", "GetWaypointByID");
            nameMap.Add("func002651", "SetNearestItemForWaypoint");
            nameMap.Add("func002652", "SetNearestTeleportForWaypoint");
            nameMap.Add("func002653", "SetNearestPlatTopForWaypoint");
            nameMap.Add("func002654", "SetNearestPlatBottomForWaypoint");
            nameMap.Add("func002655", "EntityDistance");

            nameMap.Add("func002657", "SetupWaypoints");

            nameMap.Add("func002660", "DumpBSPWaypointsCommand");  // impulse 170
            nameMap.Add("func002661", "DumpBSPWaypointsToConsole");
            nameMap.Add("func002662", "DumpHCWaypointsCommand");  // impulse 171
            nameMap.Add("func002663", "DumpHCWaypointsToConsole");

            nameMap.Add("func002666", "waypoint_touch");

            nameMap.Add("func002668", "HCWP_Create");
            nameMap.Add("func002669", "HCWP_SetPointers1");
            nameMap.Add("func002670", "HCWP_SetPointers2");

            nameMap.Add("func002673", "PathPointerExists");
            

            for (int i = 2639; i <= 2692; i++)
            {
                fileMap[i] = "b_waypnt.qc";
            }

            // update_cache0 params
            nameMap.Add("globaldef008983", "wp");
            nameMap.Add("globaldef008984", "dist");
            nameMap.Add("globaldef008985", "ent");

            // update_cache1 params
            nameMap.Add("globaldef008986", "wp");
            nameMap.Add("globaldef008987", "dist");
            nameMap.Add("globaldef008988", "ent");

            // update_cache2 params
            nameMap.Add("globaldef008989", "wp");
            nameMap.Add("globaldef008990", "dist");
            nameMap.Add("globaldef008991", "ent");

            // update_cache3 params
            nameMap.Add("globaldef008992", "wp");
            nameMap.Add("globaldef008993", "dist");
            nameMap.Add("globaldef008994", "ent");

            // update_cache4 params
            nameMap.Add("globaldef008995", "wp");
            nameMap.Add("globaldef008996", "dist");
            nameMap.Add("globaldef008997", "ent");

            // update_cache5 params
            nameMap.Add("globaldef008998", "wp");
            nameMap.Add("globaldef008999", "dist");
            nameMap.Add("globaldef009000", "ent");

            // update_cache6 params
            nameMap.Add("globaldef009001", "wp");
            nameMap.Add("globaldef009002", "dist");
            nameMap.Add("globaldef009003", "ent");

            // update_cache7 params
            nameMap.Add("globaldef009004", "wp");
            nameMap.Add("globaldef009005", "dist");
            nameMap.Add("globaldef009006", "ent");

            // update_cachex1 params
            nameMap.Add("globaldef009008", "wp");
            nameMap.Add("globaldef009009", "dist");
            nameMap.Add("globaldef009010", "ent");

            // update_cachex2 params
            nameMap.Add("globaldef009012", "wp");
            nameMap.Add("globaldef009013", "dist");
            nameMap.Add("globaldef009014", "ent");

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

            nameMap.Add("globaldef009217", "wp");
            nameMap.Add("globaldef009224", "dist");
            nameMap.Add("globaldef009219", "ent");

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
            nameMap.Add("func002738", "SetAdmin");
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
