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
float globaldef000510;
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
.float(entity globaldef007942, entity globaldef007944) f_goalweight;
.float(entity globaldef008076, entity globaldef008092) f_walkaboutweight;
.float(entity globaldef007660, entity globaldef007664) field000227;
.void(entity globaldef008110) field000228;
.void() field000229;
.void() field000230;
.float field000231;
.float field000232;
.vector field000233;
.vector field000237;
.vector field000241;
.vector field000245;
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
.float field000265;
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
.entity field000299;
.entity field000300;
.entity field000301;
.entity field000302;
.entity field000303;
.entity field000304;
.entity field000305;
.entity field000306;
.float field000307;
.float field000308;
.float field000309;
.float field000310;
.float field000311;
.float field000312;
.float field000313;
.float field000314;
.entity field000315;
.entity field000316;
.entity field000317;
.entity field000318;
.entity field000319;
.entity field000320;
.entity field000321;
.entity field000322;
.entity field000323;
.entity field000324;
.float field000325;
.float field000326;
.float field000327;
.float field000328;
.float field000329;
.float field000330;
.float field000331;
.float field000332;
.float field000333;
.float field000334;
.entity field000335;
.entity field000336;
.float field000337;
.float field000338;
.entity field000339;
.float field000340;
.entity field000341;
.float field000342;
.float field000343;
.entity field000344;
.vector field000345;
.vector field000349;
.vector field000353;
.float field000357;
.vector field000358;
.float field000362;
void globaldef000669;
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
float globaldef000681;
float globaldef000682;
float globaldef000683;
float globaldef000684;
float globaldef000685;
float globaldef000686;
float globaldef000687;
float globaldef000688;
float globaldef000689;
float globaldef000690;
float globaldef000691;
float globaldef000692;
float globaldef000693;
float globaldef000694;
float globaldef000695;
float globaldef000696;
float globaldef000697;
float globaldef000698;
float globaldef000699;
float globaldef000700;
float globaldef000701;
float globaldef000702;
float globaldef000703;
float globaldef000704;
float globaldef000705;
float globaldef000706;
float globaldef000707;
float globaldef000708;
float globaldef000709;
float globaldef000710;
float globaldef000711;
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
float globaldef000739;
float globaldef000740;
float globaldef000741;
float globaldef000742;
float globaldef000743;
float globaldef000744;
float globaldef000745;
float globaldef000746;
float globaldef000747;
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
float num_gibs;
float globaldef000785;
float globaldef000786;
float globaldef000787;
float globaldef000788;
float globaldef000789;
float globaldef000790;
float globaldef000791;
float globaldef000792;
float globaldef000793;
float globaldef000794;
float activeClientBitmask;
float maxClients;
float activeClientCount;
float globaldef000798;
float globaldef000799;
float globaldef000800;
float globaldef000801;
float globaldef000802;
float lastBotMessageNr;
float globaldef000804;
float globaldef000805;
float globaldef000806;
float globaldef000807;
entity globaldef000808;
entity globaldef000809;
entity globaldef000810;
entity globaldef000811;
entity globaldef000812;
entity lastBotToTalk;
entity currentAdmin;
entity globaldef000815;
entity firstClient;
entity firstBot;
entity globaldef000818;
entity firstWaypoint;
entity globaldef000820;

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
    
    if(!(globaldef000823.flags & globaldef000681))
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
    
    if(!(globaldef000833.flags & globaldef000681))
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
    
    if(!(globaldef000836.flags & globaldef000681))
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
    
    if(!(globaldef000840.flags & globaldef000681))
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
    
    if(!(globaldef000845.flags & globaldef000681))
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
    
    if(!(globaldef000851.flags & globaldef000681))
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
    
    if(!(globaldef000858.flags & globaldef000681))
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
    
    if(!(globaldef000866.flags & globaldef000681))
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
    
    if(!(globaldef000888.flags & globaldef000681))
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
    
    if(!(globaldef000891.flags & globaldef000681))
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
    
    if(!(globaldef000895.flags & globaldef000681))
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
    
    if(!(globaldef000900.flags & globaldef000681))
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
    
    if(!(globaldef000906.flags & globaldef000681))
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
    
    if(!(globaldef000913.flags & globaldef000681))
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
    
    if(!(globaldef000921.flags & globaldef000681))
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

