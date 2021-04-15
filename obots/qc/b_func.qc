float (entity bot, entity e) goalweight_door;
float (entity bot, entity e) goalweight_secretdoor;
float (entity bot, entity e) goalweight_button;
float (entity bot, entity e) goalweight_plat;
float (entity bot, entity e) goalweight_train;
float (entity bot, entity e) goalweight_teleporter;
float (entity bot, entity e) goalweight_triggerpush;
float (entity bot, entity e) goalweight_trigger;
float (entity bot, entity e) goalweight_backpack;
float (entity bot, entity e) goalweight_health15;
float (entity bot, entity e) goalweight_health25;
float (entity bot, entity e) goalweight_megahealth;
float (entity bot, entity e) goalweight_nails;
float (entity bot, entity e) goalweight_shells;
float (entity bot, entity e) goalweight_cells;
float (entity bot, entity e) goalweight_rockets;
float (entity bot, entity e) goalweight_rocketlauncher;
float (entity bot, entity e) goalweight_lightning;
float (entity bot, entity e) goalweight_grenadelauncher;
float (entity bot, entity e) goalweight_nailgun;
float (entity bot, entity e) goalweight_supernailgun;
float (entity bot, entity e) goalweight_supershotgun;
float (entity bot, entity e) goalweight_greenarmor;
float (entity bot, entity e) goalweight_yellowarmor;
float (entity bot, entity e) goalweight_redarmor;
float (entity bot, entity e) goalweight_envirosuit;
float (entity bot, entity e) goalweight_invisibility;
float (entity bot, entity e) goalweight_quad;
float (entity bot, entity e) goalweight_invulnerability;
float (entity bot, entity e) walkaboutweight_megahealth;
float (entity bot, entity e) walkaboutweight_supershotgun;
float (entity bot, entity e) walkaboutweight_nailgun;
float (entity bot, entity e) walkaboutweight_supernailgun;
float (entity bot, entity e) walkaboutweight_grenadelauncher;
float (entity bot, entity e) walkaboutweight_rocketlauncher;
float (entity bot, entity e) walkaboutweight_lightning;
float (entity bot, entity e) walkaboutweight_yellowarmor;
float (entity bot, entity e) walkaboutweight_redarmor;
float (entity bot, entity e) walkaboutweight_invisibility;
float (entity bot, entity e) walkaboutweight_quad;
float (entity bot, entity e) walkaboutweight_invulnerability;
void (entity bot) BotSetBestRangeWeapon;
float (entity bot) BestBotWeapon;
float (entity bot) BotWantsToRetreat;
float (entity bot) BotWantsToFight;
float (entity bot) BotWantsToChase;
void () InitMaxClients;
float () NextAvailableClientNumber;
float (float clnumber) ClientIsActive;
void (float clnumber) SetClientNumberUsed;
void (float clnumber) SetClientNumberFree;
void (float clnumber, string n) msgUpdateClientNameToAll;
void (float clnumber, float f) msgUpdateClientFragsToAll;
void (float clnumber, float c) msgUpdateClientColorsToAll;
void () msgUpdateAllClientSettingsToAll;
entity (float globaldef005699) func002266;
void (entity globaldef005702, entity globaldef005703) func002267;
void (entity globaldef005704) func002268;
void (entity globaldef005739) func002273;
void () func002277;
void (entity globaldef006690, entity globaldef006691) func002349;
void (entity globaldef006692, vector globaldef006693) func002350;
void (entity globaldef006784) func002357;
void (entity globaldef006798) ToggleObserverMode;
void (entity globaldef006792) ToggleObserverFly;
void (entity globaldef006793) ToggleCamName;
void (entity globaldef006796) ToggleChaseCam;
void (entity globaldef006790) func002359;
void (entity globaldef006797) func002364;
void (entity globaldef006785) CycleClientCamera;
void (entity globaldef006779) func002356;
void (entity e, string str1, float mnr) BotEnterMessage1;
void (entity e, string str1, string str2, float mnr) BotEnterMessage2;
void (entity e, string str1, string str2, string str3, float mnr) BotEnterMessage3;
void (entity e, string str1, float mnr, float mtime) BotStoreMessage;
void (entity e, string str1, string str2, float mnr, float mtime) BotStoreMessage2;
void (entity e, string str1, string str2, string str3, float mnr, float mtime) BotStoreMessage3;
void (entity e) BotRemoveMessage;
void (entity e) BotEnterMessage;
float (entity bot) CheckBotExitMessage;
float (entity bot) CheckBotKillMessage;
float (entity bot) CheckBotDeathMessage;
float (entity globaldef006844) func002379;
string () ObserverName;
string (entity e) RandomNameExcept;
void () func002380;
string (float n) BotName;
string (float n) BotConsoleName;
float (float n) BotShirtPantsColor;
void (entity e) BotChooseExitMessage;
void (entity e) BotChooseKillMessage;
void (entity e) BotChooseDeathMessage;
void (entity e) BotChooseTelefragMessage;
void (entity e) BotChooseInsultMessage;
void (entity e) BotChooseRandomMessage;
void (entity globaldef006959) func002388;
void (entity globaldef006975) func002391;
float (entity globaldef006991, entity globaldef006992) func002392;
void (entity globaldef007026) func002397;
void (entity globaldef007040, float globaldef007041) func002399;
void (float globaldef007088) func002410;
void (entity globaldef007102) func002417;
void () func002421;
void () AddRandomDeathmatchBot;
void () RemoveOneDeathmatchBot;
void (float globaldef007118) AddBots;
void (float globaldef007125) func002427;
void (float globaldef007127) func002428;
void () RemoveAllBots;
void () func002429;
void (entity globaldef007123, float globaldef007124) func002426;
float (entity globaldef007667, entity globaldef007668) func002456;
float (vector globaldef007677) func002457;
void () func002458;
float (entity globaldef007683) func002459;
float (entity globaldef007692) func002460;
entity (entity globaldef007693) func002461;
float (entity globaldef007702, entity globaldef007703) func002462;
float (entity globaldef007728, entity globaldef007729, entity globaldef007730) func002463;
float (entity globaldef007841, entity globaldef007842) func002466;
float (entity globaldef007843, entity globaldef007844) func002467;
void (entity globaldef007646, vector globaldef007647, float globaldef007651, float globaldef007652) func002453;
float (entity globaldef007657, entity globaldef007658) func002454;
entity (entity globaldef007660) func002455;
float (entity globaldef007579, float globaldef007580) func002442;
float (entity globaldef007582, float globaldef007583) BotJumpToGoal;
float (entity globaldef007585, float globaldef007586, float globaldef007587) func002444;
float (entity globaldef007593, float globaldef007594, float globaldef007595) func002445;
float (entity globaldef007601) func002446;
void (entity globaldef007845) func002468;
vector (entity globaldef007869) func002474;
entity () func002470;
void (entity globaldef007858, entity globaldef007859) func002471;
void (entity globaldef007860, entity globaldef007861) func002472;
void (entity globaldef007868) func002473;
float (entity globaldef007978, float globaldef007979, float globaldef007980) func002482;
float (entity globaldef007998, float globaldef007999) func002483;
float (entity globaldef008024) func002489;
entity (entity globaldef008038, entity globaldef008039) func002491;
entity (entity globaldef008046, entity globaldef008047) func002492;
entity (entity globaldef008101) func002497;
entity (entity globaldef008103) func002498;
void (entity globaldef008110) func002499;
void (entity globaldef008111) func002500;
void (entity globaldef008113) func002502;
void (entity globaldef008115) func002504;
void (entity globaldef008116) func002505;
void (entity globaldef008118) func002507;
void (entity globaldef008130) func002509;
void (entity globaldef008134) func002512;
void (entity globaldef008132) func002510;
void (entity globaldef008136) func002514;
void (entity globaldef008139) func002516;
void (entity globaldef008142) func002518;
void (entity globaldef008143) func002519;
void (entity globaldef008112) func002501;
void (entity globaldef008114) func002503;
void (entity globaldef008117) func002506;
void (entity globaldef008119) func002508;
void (entity globaldef008135) func002513;
void (entity globaldef008133) func002511;
void (entity globaldef008137) func002515;
void (entity globaldef008140) func002517;
void (entity globaldef008144) func002520;
void () func002521;
void (entity globaldef008148) func002522;
void () func002523;
void () func002524;
void () func002525;
void () func002526;
void () func002532;
void () func002536;
void () func002540;
void () func002544;
void () func002548;
void () func002550;
void () func002552;
void (entity globaldef008189, float globaldef008190) func002571;
void () func002637;
void () CheckHardCodedWaypoints;
float (entity globaldef008983, float globaldef008984, entity globaldef008985) func002640;
float (entity globaldef008986, float globaldef008987, entity globaldef008988) func002641;
float (entity globaldef008989, float globaldef008990, entity globaldef008991) func002642;
float (entity globaldef008992, float globaldef008993, entity globaldef008994) func002643;
float (entity globaldef008995, float globaldef008996, entity globaldef008997) func002644;
float (entity globaldef008998, float globaldef008999, entity globaldef009000) func002645;
float (entity globaldef009001, float globaldef009002, entity globaldef009003) func002646;
float (entity globaldef009004, float globaldef009005, entity globaldef009006) func002647;
void () func002657;
void () dumpbspwaypoints;
void () func002661;
void () dumphcwaypoints;
void () func002663;
void (vector org, float number, float type, string itemstr) HCWP_Create;
void (float number, float p0, float p1, float p2, float p3) HCWP_SetPointers1;
void (float number, float p4, float p5, float p6, float p7) HCWP_SetPointers2;
float (entity globaldef009161, entity globaldef009162) func002673;
void () func002680;
void (entity globaldef009179) func002675;
void (entity globaldef009252, entity globaldef009253) func002686;
void (entity globaldef009186, entity globaldef009187) func002676;
void (entity globaldef009193, entity globaldef009194) func002677;
void (entity globaldef009241, entity globaldef009242, float globaldef009243, entity globaldef009244) func002683;
void (entity globaldef009248, entity globaldef009249) func002685;
float (entity globaldef009258, entity globaldef009259) func002689;
float (entity globaldef009260, entity globaldef009261) MovingEntityCached;
float (entity globaldef009254, entity globaldef009255) func002687;
float (entity globaldef009256, entity globaldef009257) func002688;
entity (entity globaldef009262) func002691;
void (entity globaldef009275, entity globaldef009276) func002692;
void (entity globaldef009548) func002738;
void (entity globaldef009550) stopadmin;
void () BotImpulseCommand;
void () func002704;
void () func002719;
void () func002708;
void (entity globaldef002819, float globaldef002820) rocket_arena_disconnect;
void (entity globaldef002797) rocket_arena_prethink;
void (entity globaldef002791) rocket_arena_putclientinserver;
void () getnewopponent;
void (string globaldef002761) playallsound;
entity (string globaldef002729) rocket_arena_selectspawnpoint;
void () rocket_arena_impulses;
float CAM_IDLE = 0;
float CAM_FIXED = 1;
float CAM_FLYBY = 2;
float CAM_FOLLOW = 3;
float CAM_HAND = 4;
float CAM_FREE = 5;
float CAM_NOCLIP = 6;
float CAM_DEATH = 7;

// CamCycle
// function begins at statement 166, parm_start=1231
// OP_EQ_E	1231	30	1232
// OP_IFNOT	1232	3	0
// OP_ADDRESS	28	426	1233
// OP_STOREP_F	213	1233	0
// OP_LOAD_F	28	426	1234
// OP_EQ_F	1234	213	1235
// OP_IFNOT	1235	10	0
// OP_STORE_V	1231	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	1231	0
// OP_EQ_E	1231	30	1237
// OP_IFNOT	1237	3	0
// OP_ADDRESS	28	426	1238
// OP_STOREP_F	214	1238	0
// OP_LOAD_F	28	426	1239
// OP_EQ_F	1239	214	1240
// OP_IFNOT	1240	6	0
// OP_STORE_V	1231	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	1231	0
// OP_RETURN	1231	0	0
// OP_DONE	0	0	0
entity (entity ent) CamCycle = 
{
    
    if(ent == world)
    {
        self.cnt = FALSE;
    }
    
    
    if(self.cnt == FALSE)
    {
        ent = find(ent, classname, "player");
        
        if(ent == world)
        {
            self.cnt = TRUE;
        }
        
    }
    
    
    if(self.cnt == TRUE)
    {
        ent = find(ent, classname, "bot");
    }
    
    return ent;
};

