void (vector tdest, float tspeed, void() func) SUB_CalcMove;
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt;
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove;
void () SUB_CalcMoveDone;
void () SUB_CalcAngleMoveDone;
void () SUB_Null;
void () SUB_UseTargets;
void () SUB_Remove;
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage;
float (entity e, float healamount, float ignore) T_Heal;
float (entity targ, entity inflictor) CanDamage;
float modelindex_eyes;
float modelindex_player;
float modelindex_head;
.entity ra_next;
.entity ra_prev;
.float idletime;
.float lasttime;
.float laststattime;
.float statstate;
.float mypos;
.float wins;
.float loses;
.float ratio;
.float motd;
float RA_PLAYERSTATTIME = 0.5;
float RA_MAXIDLETIME = 300;
entity winner;
entity loser;
entity first;
float time_to_start;
float last_time;
void end_ra_globals;
.float(entity wp, float dist, entity ent) f_updatecache;
.float(entity bot, entity e) f_goalweight;
.float(entity bot, entity e) f_walkaboutweight;
.float(entity ear, entity botsnd) f_sndweight;
.void(entity bot) f_ai;
.void() f_lastai;
.void() think2;
.float nextthink2;
.float lastphysicstime;
.vector prephysicsorigin;
.vector prephysicsvelocity;
.vector touchorigin;
.vector steporigin;
.float field000249;
.float clmodelindex;
.float field000251;
.float botflags;
.vector old_velocity;
.vector old_origin;
.float old_flags;
.float old_botflags;
.entity field000263;
.float field000264;
.float botskill;
.entity field000266;
.entity field000267;
.entity field000268;
.float field000269;
.float field000270;
.float field000271;
.float field000272;
.float field000273;
.float field000274;
.float field000275;
.float field000276;
.float field000277;
.float field000278;
.vector field000279;
.string teamname;
.float field000284;
.float clientnumber;
.float botnumber;
.float clientcolor;
.float field000288;
.float field000289;
.entity field000290;
.string messagestr1;
.string messagestr2;
.string messagestr3;
.float messagenr;
.entity field000295;
.entity attackedby;
.entity next;
.entity prev;
.entity path0;
.entity path1;
.entity path2;
.entity path3;
.entity path4;
.entity path5;
.entity path6;
.entity path7;
.float dist0;
.float dist1;
.float dist2;
.float dist3;
.float dist4;
.float dist5;
.float dist6;
.float dist7;
.entity cache0_ent;
.entity cache1_ent;
.entity cache2_ent;
.entity cache3_ent;
.entity cache4_ent;
.entity cache5_ent;
.entity cache6_ent;
.entity cache7_ent;
.entity cache8_ent;
.entity cache9_ent;
.float cache0_dist;
.float cache1_dist;
.float cache2_dist;
.float cache3_dist;
.float cache4_dist;
.float cache5_dist;
.float cache6_dist;
.float cache7_dist;
.float cache8_dist;
.float cache9_dist;
.entity field000335;
.entity field000336;
.float field000337;
.float field000338;
.entity field000339;
.float field000340;
.entity field000341;
.float field000342;
.float camflags;
.entity camera;
.vector camangle;
.vector clientorigin;
.vector clientv_angle;
.float angletime;
.vector chasecamoffset;
.float admin;
void end_obot_fields;
.float waypointnumber;
.float waypointtype;
.string waypointitem;
.float wp0;
.float wp1;
.float wp2;
.float wp3;
.float wp4;
.float wp5;
.float wp6;
.float wp7;
float GLOBALDEF681_8192 = 8192;
float GLOBALDEF682_16384 = 16384;
float GLOBALDEF683_1 = 1;
float GLOBALDEF684_2 = 2;
float GLOBALDEF685_4 = 4;
float GLOBALDEF686_8 = 8;
float GLOBALDEF687_16 = 16;
float GLOBALDEF688_32 = 32;
float GLOBALDEF689_64 = 64;
float GLOBALDEF690_128 = 128;
float GLOBALDEF691_256 = 256;
float WAYPOINT_DUMP_TO_CONSOLE = 512;
float WAYPOINT_DO_NOT_DUMP = 1024;
float GLOBALDEF694_2048 = 2048;
float GLOBALDEF695_4096 = 4096;
float GLOBALDEF696_8192 = 8192;
float GLOBALDEF697_16384 = 16384;
float end_wp_options;
float globaldef000699;
float WAYPOINTTYPE_PLATTOP = 2;
float globaldef000701;
float WAYPOINTTYPE_TELEPORT = 4;
float WAYPOINTTYPE_ITEM = 5;
float WAYPOINTTYPE_UNUSED1 = 6;
float WAYPOINTTYPE_UNUSED2 = 7;
float WAYPOINTTYPE_PLATBOTTOM = 8;
float WAYPOINTSTATUS_UNINITIALISED = 0;
float WAYPOINTSTATUS_FOUND = 1;
float WAYPOINTSTATUS_UNCACHED = 2;
float WAYPOINTSTATUS_SETUP_COMPLETE = 3;
float OBSTACLE_TELEPORT = 0;
float globaldef000712;
float globaldef000713;
float globaldef000714;
float globaldef000715;
float globaldef000716;
float GLOBALDEF717_270 = 270;
float globaldef000718;
float OBOT_MAXBOTS = 24;
float globaldef000720;
float GLOBALDEF721_250 = 250;
float globaldef000722;
float GLOBALDEF723_600 = 600;
float GLOBALDEF724_800 = 800;
float OBOT_MAXGIBS = 30;
float globaldef000726;
float OBOT_MAXSHELLCASES = 30;
float GLOBALDEF728_500 = 500;
float GLOBALDEF729_40 = 40;
float globaldef000730;
float globaldef000731;
float globaldef000732;
float globaldef000733;
float globaldef000734;
float globaldef000735;
float globaldef000736;
float globaldef000737;
float globaldef000738;
float BOTSOUND_DOOR = 1;
float BOTSOUND_TELEPORT = 2;
float BOTSOUND_FIRE = 3;
float BOTSOUND_PICKUP = 4;
float BOTSOUND_ARMOR = 5;
float OBSERV_NAME = 1;
float OBSERV_TELEPORT = 2;
float OBSERV_CHASE = 4;
float OBSERV_FLY = 8;
float GLOBALDEF748_15 = 15;
float OBOT_BUBBLEROUTING = 16;
float OBOT_ROCKETARENA = 32;
float OBOT_BOTPATHING = 64;
float OBOT_HUMANPATHING = 128;
float OBOT_TALK = 256;
float OBOT_POWERUPS = 512;
float OBOT_WEAPONS = 1024;
float OBOT_LIGHTNING = 2048;
float OBOT_ROCKET = 4096;
float OBOT_GRENADE = 8192;
float OBOT_SUPERNAIL = 16384;
float globaldef000760;
float OBOT_SHELLCASES = 65536;
float BOTSHIRTPANTS_00 = 0;
float BOTSHIRTPANTS_01 = 1;
float BOTSHIRTPANTS_02 = 2;
float BOTSHIRTPANTS_03 = 3;
float BOTSHIRTPANTS_04 = 4;
float BOTSHIRTPANTS_05 = 5;
float BOTSHIRTPANTS_06 = 6;
float BOTSHIRTPANTS_07 = 7;
float BOTSHIRTPANTS_08 = 8;
float BOTSHIRTPANTS_09 = 9;
float BOTSHIRTPANTS_10 = 10;
float BOTSHIRTPANTS_11 = 11;
float BOTSHIRTPANTS_12 = 12;
float BOTSHIRTPANTS_13 = 13;
float globaldef000776;
float globaldef000777;
float globaldef000778;
float globaldef000779;
float globaldef000780;
float globaldef000781;
float globaldef000782;
float globaldef000783;
float gibsCount;
float globaldef000785;
float waypointCount;
float globaldef000787;
float waypointStatus;
float bspWaypointsExist;
float hardCodedWaypointsExist;
float globaldef000791;
float observerCount;
float botCount;
float globaldef000794;
float activeClientBitmask;
float maxClients;
float activeClientCount;
float unused798;
float gameNotRunning;
float mapStartTime;
float botSoundCount;
float maxWaypoint_ONLY_SET;
float lastBotMessageNr;
float obot_game_option_bitflags;
float lowMemoryDisableExtraModels;
float unused806;
float unused807;
entity unused808;
entity unused809;
entity globaldef000810;
entity globaldef000811;
entity floorTestEnt;
entity lastBotToTalk;
entity currentAdmin;
entity prospectiveAdmin;
entity firstClient;
entity firstBot;
entity firstBotSound;
entity firstWaypoint;
entity end_obot_globals;

void(entity client, string s) bot_stuffcmd = #21;

// stuffcmd
// function begins at statement 1, parm_start=840
// OP_LOAD_F	840	182	842
// OP_BITAND	842	698	843
// OP_NOT_F	843	0	844
// OP_IFNOT	844	4	0
// OP_STORE_V	840	4	0
// OP_STORE_V	841	7	0
// OP_CALL2	838	0	0
// OP_DONE	0	0	0
void (entity globaldef000823, string globaldef000824) stuffcmd = 
{
    
    if(!(globaldef000823.flags & GLOBALDEF681_8192))
    {
        bot_stuffcmd(globaldef000823, globaldef000824);
    }
    
};


void(entity client, string s) bot_centerprint = #73;

void(entity client, string s, string s2) bot_centerprint2 = #73;

void(entity client, string s, string s2, string s3) bot_centerprint3 = #73;

void(entity client, string s, string s2, string s3, string s4) bot_centerprint4 = #73;

void(entity client, string s, string s2, string s3, string s4, string s5) bot_centerprint5 = #73;

void(entity client, string s, string s2, string s3, string s4, string s5, string s6) bot_centerprint6 = #73;

void(entity client, string s, string s2, string s3, string s4, string s5, string s6, string s7) bot_centerprint7 = #73;

// centerprint
// function begins at statement 9, parm_start=853
// OP_LOAD_F	853	182	855
// OP_BITAND	855	698	856
// OP_NOT_F	856	0	857
// OP_IFNOT	857	4	0
// OP_STORE_V	853	4	0
// OP_STORE_V	854	7	0
// OP_CALL2	845	0	0
// OP_DONE	0	0	0
void (entity globaldef000833, string globaldef000834) centerprint = 
{
    
    if(!(globaldef000833.flags & GLOBALDEF681_8192))
    {
        bot_centerprint(globaldef000833, globaldef000834);
    }
    
};


// centerprint2
// function begins at statement 17, parm_start=859
// OP_LOAD_F	859	182	862
// OP_BITAND	862	698	863
// OP_NOT_F	863	0	864
// OP_IFNOT	864	5	0
// OP_STORE_V	859	4	0
// OP_STORE_V	860	7	0
// OP_STORE_V	861	10	0
// OP_CALL3	846	0	0
// OP_DONE	0	0	0
void (entity globaldef000836, string globaldef000837, string globaldef000838) centerprint2 = 
{
    
    if(!(globaldef000836.flags & GLOBALDEF681_8192))
    {
        bot_centerprint2(globaldef000836, globaldef000837, globaldef000838);
    }
    
};


// centerprint3
// function begins at statement 26, parm_start=866
// OP_LOAD_F	866	182	870
// OP_BITAND	870	698	871
// OP_NOT_F	871	0	872
// OP_IFNOT	872	6	0
// OP_STORE_V	866	4	0
// OP_STORE_V	867	7	0
// OP_STORE_V	868	10	0
// OP_STORE_V	869	13	0
// OP_CALL4	847	0	0
// OP_DONE	0	0	0
void (entity globaldef000840, string globaldef000841, string globaldef000842, string globaldef000843) centerprint3 = 
{
    
    if(!(globaldef000840.flags & GLOBALDEF681_8192))
    {
        bot_centerprint3(globaldef000840, globaldef000841, globaldef000842, globaldef000843);
    }
    
};


// centerprint4
// function begins at statement 36, parm_start=874
// OP_LOAD_F	874	182	879
// OP_BITAND	879	698	880
// OP_NOT_F	880	0	881
// OP_IFNOT	881	7	0
// OP_STORE_V	874	4	0
// OP_STORE_V	875	7	0
// OP_STORE_V	876	10	0
// OP_STORE_V	877	13	0
// OP_STORE_V	878	16	0
// OP_CALL5	848	0	0
// OP_DONE	0	0	0
void (entity globaldef000845, string globaldef000846, string globaldef000847, string globaldef000848, string globaldef000849) centerprint4 = 
{
    
    if(!(globaldef000845.flags & GLOBALDEF681_8192))
    {
        bot_centerprint4(globaldef000845, globaldef000846, globaldef000847, globaldef000848, globaldef000849);
    }
    
};


// centerprint5
// function begins at statement 47, parm_start=883
// OP_LOAD_F	883	182	889
// OP_BITAND	889	698	890
// OP_NOT_F	890	0	891
// OP_IFNOT	891	8	0
// OP_STORE_V	883	4	0
// OP_STORE_V	884	7	0
// OP_STORE_V	885	10	0
// OP_STORE_V	886	13	0
// OP_STORE_V	887	16	0
// OP_STORE_V	888	19	0
// OP_CALL6	849	0	0
// OP_DONE	0	0	0
void (entity globaldef000851, string globaldef000852, string globaldef000853, string globaldef000854, string globaldef000855, string globaldef000856) centerprint5 = 
{
    
    if(!(globaldef000851.flags & GLOBALDEF681_8192))
    {
        bot_centerprint5(globaldef000851, globaldef000852, globaldef000853, globaldef000854, globaldef000855, globaldef000856);
    }
    
};


// centerprint6
// function begins at statement 59, parm_start=893
// OP_LOAD_F	893	182	900
// OP_BITAND	900	698	901
// OP_NOT_F	901	0	902
// OP_IFNOT	902	9	0
// OP_STORE_V	893	4	0
// OP_STORE_V	894	7	0
// OP_STORE_V	895	10	0
// OP_STORE_V	896	13	0
// OP_STORE_V	897	16	0
// OP_STORE_V	898	19	0
// OP_STORE_V	899	22	0
// OP_CALL7	850	0	0
// OP_DONE	0	0	0
void (entity globaldef000858, string globaldef000859, string globaldef000860, string globaldef000861, string globaldef000862, string globaldef000863, string globaldef000864) centerprint6 = 
{
    
    if(!(globaldef000858.flags & GLOBALDEF681_8192))
    {
        bot_centerprint6(globaldef000858, globaldef000859, globaldef000860, globaldef000861, globaldef000862, globaldef000863, globaldef000864);
    }
    
};


// centerprint7
// function begins at statement 72, parm_start=904
// OP_LOAD_F	904	182	912
// OP_BITAND	912	698	913
// OP_NOT_F	913	0	914
// OP_IFNOT	914	10	0
// OP_STORE_V	904	4	0
// OP_STORE_V	905	7	0
// OP_STORE_V	906	10	0
// OP_STORE_V	907	13	0
// OP_STORE_V	908	16	0
// OP_STORE_V	909	19	0
// OP_STORE_V	910	22	0
// OP_STORE_V	911	25	0
// OP_CALL8	851	0	0
// OP_DONE	0	0	0
void (entity globaldef000866, string globaldef000867, string globaldef000868, string globaldef000869, string globaldef000870, string globaldef000871, string globaldef000872, string globaldef000873) centerprint7 = 
{
    
    if(!(globaldef000866.flags & GLOBALDEF681_8192))
    {
        bot_centerprint7(globaldef000866, globaldef000867, globaldef000868, globaldef000869, globaldef000870, globaldef000871, globaldef000872, globaldef000873);
    }
    
};


void(string s, string s2) bprint2 = #23;

void(string s, string s2, string s3) bprint3 = #23;

void(string s, string s2, string s3, string s4) bprint4 = #23;

void(string s, string s2, string s3, string s4, string s5) bprint5 = #23;

void(string s, string s2, string s3, string s4, string s5, string s6) bprint6 = #23;

void(string s, string s2, string s3, string s4, string s5, string s6, string s7) bprint7 = #23;

void(entity client, string s) bot_sprint = #24;

void(entity client, string s, string s2) bot_sprint2 = #24;

void(entity client, string s, string s2, string s3) bot_sprint3 = #24;

void(entity client, string s, string s2, string s3, string s4) bot_sprint4 = #24;

void(entity client, string s, string s2, string s3, string s4, string s5) bot_sprint5 = #24;

void(entity client, string s, string s2, string s3, string s4, string s5, string s6) bot_sprint6 = #24;

void(entity client, string s, string s2, string s3, string s4, string s5, string s6, string s7) bot_sprint7 = #24;

// sprint
// function begins at statement 86, parm_start=929
// OP_LOAD_F	929	182	931
// OP_BITAND	931	698	932
// OP_NOT_F	932	0	933
// OP_IFNOT	933	4	0
// OP_STORE_V	929	4	0
// OP_STORE_V	930	7	0
// OP_CALL2	921	0	0
// OP_DONE	0	0	0
void (entity globaldef000888, string globaldef000889) sprint = 
{
    
    if(!(globaldef000888.flags & GLOBALDEF681_8192))
    {
        bot_sprint(globaldef000888, globaldef000889);
    }
    
};


// sprint2
// function begins at statement 94, parm_start=935
// OP_LOAD_F	935	182	938
// OP_BITAND	938	698	939
// OP_NOT_F	939	0	940
// OP_IFNOT	940	5	0
// OP_STORE_V	935	4	0
// OP_STORE_V	936	7	0
// OP_STORE_V	937	10	0
// OP_CALL3	922	0	0
// OP_DONE	0	0	0
void (entity globaldef000891, string globaldef000892, string globaldef000893) sprint2 = 
{
    
    if(!(globaldef000891.flags & GLOBALDEF681_8192))
    {
        bot_sprint2(globaldef000891, globaldef000892, globaldef000893);
    }
    
};


// sprint3
// function begins at statement 103, parm_start=942
// OP_LOAD_F	942	182	946
// OP_BITAND	946	698	947
// OP_NOT_F	947	0	948
// OP_IFNOT	948	6	0
// OP_STORE_V	942	4	0
// OP_STORE_V	943	7	0
// OP_STORE_V	944	10	0
// OP_STORE_V	945	13	0
// OP_CALL4	923	0	0
// OP_DONE	0	0	0
void (entity globaldef000895, string globaldef000896, string globaldef000897, string globaldef000898) sprint3 = 
{
    
    if(!(globaldef000895.flags & GLOBALDEF681_8192))
    {
        bot_sprint3(globaldef000895, globaldef000896, globaldef000897, globaldef000898);
    }
    
};


// sprint4
// function begins at statement 113, parm_start=950
// OP_LOAD_F	950	182	955
// OP_BITAND	955	698	956
// OP_NOT_F	956	0	957
// OP_IFNOT	957	7	0
// OP_STORE_V	950	4	0
// OP_STORE_V	951	7	0
// OP_STORE_V	952	10	0
// OP_STORE_V	953	13	0
// OP_STORE_V	954	16	0
// OP_CALL5	924	0	0
// OP_DONE	0	0	0
void (entity globaldef000900, string globaldef000901, string globaldef000902, string globaldef000903, string globaldef000904) sprint4 = 
{
    
    if(!(globaldef000900.flags & GLOBALDEF681_8192))
    {
        bot_sprint4(globaldef000900, globaldef000901, globaldef000902, globaldef000903, globaldef000904);
    }
    
};


// sprint5
// function begins at statement 124, parm_start=959
// OP_LOAD_F	959	182	965
// OP_BITAND	965	698	966
// OP_NOT_F	966	0	967
// OP_IFNOT	967	8	0
// OP_STORE_V	959	4	0
// OP_STORE_V	960	7	0
// OP_STORE_V	961	10	0
// OP_STORE_V	962	13	0
// OP_STORE_V	963	16	0
// OP_STORE_V	964	19	0
// OP_CALL6	925	0	0
// OP_DONE	0	0	0
void (entity globaldef000906, string globaldef000907, string globaldef000908, string globaldef000909, string globaldef000910, string globaldef000911) sprint5 = 
{
    
    if(!(globaldef000906.flags & GLOBALDEF681_8192))
    {
        bot_sprint5(globaldef000906, globaldef000907, globaldef000908, globaldef000909, globaldef000910, globaldef000911);
    }
    
};


// sprint6
// function begins at statement 136, parm_start=969
// OP_LOAD_F	969	182	976
// OP_BITAND	976	698	977
// OP_NOT_F	977	0	978
// OP_IFNOT	978	9	0
// OP_STORE_V	969	4	0
// OP_STORE_V	970	7	0
// OP_STORE_V	971	10	0
// OP_STORE_V	972	13	0
// OP_STORE_V	973	16	0
// OP_STORE_V	974	19	0
// OP_STORE_V	975	22	0
// OP_CALL7	926	0	0
// OP_DONE	0	0	0
void (entity globaldef000913, string globaldef000914, string globaldef000915, string globaldef000916, string globaldef000917, string globaldef000918, string globaldef000919) sprint6 = 
{
    
    if(!(globaldef000913.flags & GLOBALDEF681_8192))
    {
        bot_sprint6(globaldef000913, globaldef000914, globaldef000915, globaldef000916, globaldef000917, globaldef000918, globaldef000919);
    }
    
};


// sprint7
// function begins at statement 149, parm_start=980
// OP_LOAD_F	980	182	988
// OP_BITAND	988	698	989
// OP_NOT_F	989	0	990
// OP_IFNOT	990	10	0
// OP_STORE_V	980	4	0
// OP_STORE_V	981	7	0
// OP_STORE_V	982	10	0
// OP_STORE_V	983	13	0
// OP_STORE_V	984	16	0
// OP_STORE_V	985	19	0
// OP_STORE_V	986	22	0
// OP_STORE_V	987	25	0
// OP_CALL8	927	0	0
// OP_DONE	0	0	0
void (entity globaldef000921, string globaldef000922, string globaldef000923, string globaldef000924, string globaldef000925, string globaldef000926, string globaldef000927, string globaldef000928) sprint7 = 
{
    
    if(!(globaldef000921.flags & GLOBALDEF681_8192))
    {
        bot_sprint7(globaldef000921, globaldef000922, globaldef000923, globaldef000924, globaldef000925, globaldef000926, globaldef000927, globaldef000928);
    }
    
};


void(string e, string e2) objerror2 = #11;

void(string e, string e2, string e3) objerror3 = #11;

void(string e, string e2, string e3, string e4) objerror4 = #11;

void(string e, string e2, string e3, string e4, string e5) objerror5 = #11;

void(string e, string e2, string e3, string e4, string e5, string e6) objerror6 = #11;

void(string e, string e2, string e3, string e4, string e5, string e6, string e7) objerror7 = #11;

// IDCopyright
// function begins at statement 163, parm_start=998
// OP_STORE_V	998	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void () IDCopyright = 
{
    bprint("The original QuakeC source is Copyright 1996, ID Software.");
};

