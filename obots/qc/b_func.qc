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
entity (float globaldef005699) GetClientEntity;
void (entity globaldef005702, entity globaldef005703) func002267;
void (entity globaldef005704) func002268;
void (entity globaldef005739) func002273;
void () func002277;
void (entity globaldef006690, entity globaldef006691) func002349;
void (entity globaldef006692, vector globaldef006693) func002350;
void (entity globaldef006784) func002357;
void (entity globaldef006798) ToggleObserverMode;
void (entity e) ToggleObserverFly;
void (entity globaldef006793) ToggleCamName;
void (entity globaldef006796) ToggleChaseCam;
void (entity globaldef006790) func002359;
void (entity globaldef006797) func002364;
void (entity client) CycleClientCamera;
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
void (entity globaldef006959) BotAimAtEnemy;
void (entity globaldef006975) func002391;
float (entity globaldef006991, entity globaldef006992) func002392;
void (entity globaldef007026) func002397;
void (entity bot, float botspeed) BotAttackMove;
void (float sk) BotThink;
void (entity globaldef007102) DestroyBot;
void () func002421;
void () AddRandomDeathmatchBot;
void () RemoveOneDeathmatchBot;
void (float globaldef007118) AddBots;
void (float globaldef007125) func002427;
void (float globaldef007127) func002428;
void () RemoveAllBots;
void () func002429;
void (entity globaldef007123, float globaldef007124) func002426;
float (entity bot, entity obj) Visible;
float (vector spot) AbsFloorHeight;
void () CreateFloorTestEnt;
float (entity e) BotAbovePlatDoorTrain;
float (entity e) BotIsOnPlatDoorTrain;
entity (entity e) BotIsOnMovingPlatDoorTrain;
float (entity a, entity b) Reachable;
float (entity globaldef007728, entity globaldef007729, entity globaldef007730) func002463;
float (entity globaldef007841, entity globaldef007842) func002466;
float (entity globaldef007843, entity globaldef007844) func002467;
void (entity cause, vector spot, float duration, float type) CreateBotSound;
float (entity ear, entity e) Hearable;
entity (entity ear) LocateDistantSound;
float (entity bot, float botspeed) BotMoveToGoal;
float (entity bot, float botspeed) BotJumpToGoal;
float (entity bot, float yaw, float botspeed) BotMoveInDirection;
float (entity bot, float yaw, float botspeed) BotJumpInDirection;
float (entity bot) MovingCloserToGoal;
void (entity bot) BotTurnTowardsGoal;
vector (entity globaldef007869) func002474;
entity () CreateBotGoal;
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
void (entity bot) BotAI;
void (entity bot) BotEnterIntermission;
void (entity globaldef008113) func002502;
void (entity bot) RemoveBotEnemy;
void (entity globaldef008116) func002505;
void (entity globaldef008118) func002507;
void (entity globaldef008130) func002509;
void (entity globaldef008134) func002512;
void (entity globaldef008132) func002510;
void (entity globaldef008136) func002514;
void (entity globaldef008139) func002516;
void (entity globaldef008142) func002518;
void (entity globaldef008143) RepeatLastAIFunction;
void (entity bot) AI_None;
void (entity globaldef008114) func002503;
void (entity globaldef008117) func002506;
void (entity globaldef008119) func002508;
void (entity globaldef008135) func002513;
void (entity globaldef008133) func002511;
void (entity globaldef008137) func002515;
void (entity globaldef008140) func002517;
void (entity globaldef008144) func002520;
void () StopAllBotBattles;
void (entity e) RemoveEnemyFromBots;
void () BotIntermission;
void () bot_stand;
void () bot_run;
void () bot_shot1;
void () bot_axe1;
void () bot_axeb1;
void () bot_axec1;
void () bot_axed1;
void () bot_nail1;
void () bot_light1;
void () bot_rocket1;
void (entity attacker, float damage) bot_pain;
void () BotDie;
void () CheckHardCodedWaypoints;
float (entity wp, float dist, entity ent) update_cache0;
float (entity wp, float dist, entity ent) update_cache1;
float (entity wp, float dist, entity ent) update_cache2;
float (entity wp, float dist, entity ent) update_cache3;
float (entity wp, float dist, entity ent) update_cache4;
float (entity wp, float dist, entity ent) update_cache5;
float (entity wp, float dist, entity ent) update_cache6;
float (entity wp, float dist, entity ent) update_cache7;
void () SetupWaypoints;
void () DumpBSPWaypointsCommand;
void () DumpBSPWaypointsToConsole;
void () DumpHCWaypointsCommand;
void () DumpHCWaypointsToConsole;
void (vector org, float number, float type, string itemstr) HCWP_Create;
void (float number, float p0, float p1, float p2, float p3) HCWP_SetPointers1;
void (float number, float p4, float p5, float p6, float p7) HCWP_SetPointers2;
float (entity globaldef009161, entity globaldef009162) PathPointerExists;
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
void (entity globaldef009548) SetAdmin;
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

