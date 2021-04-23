
// BotTurnTowardsGoal
// function begins at statement 41695, parm_start=23961
// OP_LOAD_ENT	23961	194	23967
// OP_LOAD_V	23967	105	23968
// OP_LOAD_V	23961	105	23971
// OP_SUB_V	23968	23971	23974
// OP_STORE_V	23974	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	23962	0
// OP_ADDRESS	23961	611	23977
// OP_STOREP_F	213	23977	0
// OP_GT	23962	1296	23978
// OP_IFNOT	23978	3	0
// OP_SUB_F	23962	1298	23979
// OP_STORE_F	23979	23962	0
// OP_GT	23962	235	23980
// OP_LT	23962	2805	23981
// OP_AND	23980	23981	23982
// OP_LT	23962	12190	23983
// OP_GT	23962	12648	23984
// OP_AND	23983	23984	23985
// OP_OR	23982	23985	23986
// OP_IFNOT	23986	14	0
// OP_LOAD_ENT	23961	194	23987
// OP_LOAD_ENT	23987	194	23988
// OP_LOAD_S	23988	129	23989
// OP_STORE_S	23989	23965	0
// OP_NE_S	23965	5259	23990
// OP_NE_S	23965	11860	23991
// OP_AND	23990	23991	23992
// OP_NE_S	23965	11722	23993
// OP_AND	23992	23993	23994
// OP_IFNOT	23994	4	0
// OP_ADDRESS	23961	611	23995
// OP_MUL_F	23962	3263	23996
// OP_STOREP_F	23996	23995	0
// OP_LOAD_F	23961	191	23997
// OP_SUB_F	23963	23997	23998
// OP_STORE_F	23998	23966	0
// OP_LOAD_F	23961	191	23999
// OP_GT	23963	23999	24000
// OP_IFNOT	24000	6	0
// OP_GT	23966	1296	24001
// OP_IFNOT	24001	3	0
// OP_SUB_F	23966	1298	24002
// OP_STORE_F	24002	23966	0
// OP_GOTO	5	0	0
// OP_LT	23966	1300	24003
// OP_IFNOT	24003	3	0
// OP_ADD_F	23966	1298	24004
// OP_STORE_F	24004	23966	0
// OP_GT	23966	213	24005
// OP_IFNOT	24005	5	0
// OP_GT	23966	309	24006
// OP_IFNOT	24006	2	0
// OP_STORE_F	309	23966	0
// OP_GOTO	4	0	0
// OP_LT	23966	24007	24008
// OP_IFNOT	24008	2	0
// OP_STORE_F	24007	23966	0
// OP_ADDRESS	23961	191	24009
// OP_LOAD_F	23961	191	24010
// OP_ADD_F	24010	23966	24011
// OP_STORE_V	24011	4	0
// OP_CALL1	3179	0	0
// OP_STOREP_F	1	24009	0
// OP_DONE	0	0	0
void (entity bot) BotTurnTowardsGoal = 
{
    local vector globaldef007846;
    local string globaldef007850;
    local float globaldef007851;
    globaldef007846 = vectoangles(bot.goalentity.origin - bot.origin);
    bot.field000288 = FALSE;
    
    if(globaldef007846_x > 180)
    {
        globaldef007846_x = globaldef007846_x - 360;
    }
    
    
    if(((globaldef007846_x > MOVETYPE_BOUNCE) && (globaldef007846_x < 80)) || ((globaldef007846_x < -10) && (globaldef007846_x > -80)))
    {
        globaldef007850 = bot.goalentity.goalentity.classname;
        
        if(((globaldef007850 != "door") && (globaldef007850 != "train")) && (globaldef007850 != "plat"))
        {
            bot.field000288 = globaldef007846_x * 0.9;
        }
        
    }
    
    globaldef007851 = globaldef007846_y - bot.ideal_yaw;
    if(globaldef007846_y > bot.ideal_yaw)
    {
        
        if(globaldef007851 > 180)
        {
            globaldef007851 = globaldef007851 - 360;
        }
        
    }
    else
    {
        
        if(globaldef007851 < -180)
        {
            globaldef007851 = globaldef007851 + 360;
        }
        
    }
    
    if(globaldef007851 > FALSE)
    {
        
        if(globaldef007851 > SVC_INTERMISSION)
        {
            globaldef007851 = SVC_INTERMISSION;
        }
        
    }
    else
    {
        
        if(globaldef007851 < -30)
        {
            globaldef007851 = -30;
        }
        
    }
    
    bot.ideal_yaw = anglemod(bot.ideal_yaw + globaldef007851);
};


// func002469
// function begins at statement 41760, parm_start=24013
// OP_LOAD_ENT	29	194	24013
// OP_NE_E	24013	28	24014
// OP_IFNOT	24014	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	24015
// OP_LOAD_S	24015	129	24016
// OP_NE_S	24016	1236	24017
// OP_LOAD_ENT	28	194	24018
// OP_LOAD_S	24018	129	24019
// OP_NE_S	24019	1241	24020
// OP_AND	24017	24020	24021
// OP_IFNOT	24021	11	0
// OP_ADDRESS	29	598	24022
// OP_SUB_F	31	214	24023
// OP_STOREP_F	24023	24022	0
// OP_LOAD_ENT	28	194	24024
// OP_LOAD_S	24024	129	24025
// OP_NE_S	24025	24026	24027
// OP_IFNOT	24027	4	0
// OP_ADDRESS	29	371	24028
// OP_SUB_F	31	214	24029
// OP_STOREP_F	24029	24028	0
// OP_DONE	0	0	0
void () func002469 = 
{
    
    if(other.goalentity != self)
    {
        return;
    }
    
    
    if((self.goalentity.classname != "player") && (self.goalentity.classname != "bot"))
    {
        other.field000275 = time - TRUE;
        
        if(self.goalentity.classname != "func_button")
        {
            other.search_time = time - TRUE;
        }
        
    }
    
};


// CreateBotGoal
// function begins at statement 41783, parm_start=24030
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	24030	0
// OP_ADDRESS	24030	129	24031
// OP_STOREP_S	24032	24031	0
// OP_ADDRESS	24030	104	24033
// OP_STOREP_F	238	24033	0
// OP_ADDRESS	24030	146	24034
// OP_STOREP_FNC	24012	24034	0
// OP_STORE_V	24030	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	24035	10	0
// OP_CALL3	455	0	0
// OP_RETURN	24030	0	0
// OP_DONE	0	0	0
entity () CreateBotGoal = 
{
    local entity globaldef007855;
    globaldef007855 = spawn();
    globaldef007855.classname = "botgoal";
    globaldef007855.solid = SOLID_TRIGGER;
    globaldef007855.touch = func002469;
    setsize(globaldef007855, '-4 -4 -4', '4 4 8');
    return globaldef007855;
};


// func002471
// function begins at statement 41797, parm_start=24038
// OP_LOAD_ENT	24038	194	24040
// OP_LOAD_ENT	24040	194	24041
// OP_EQ_E	24041	24039	24042
// OP_IFNOT	24042	4	0
// OP_ADDRESS	24038	371	24043
// OP_SUB_F	31	214	24044
// OP_STOREP_F	24044	24043	0
// OP_LOAD_ENT	24038	590	24045
// OP_EQ_E	24045	24039	24046
// OP_IFNOT	24046	5	0
// OP_ADDRESS	24038	575	24047
// OP_LOAD_F	24038	575	24048
// OP_BITOR	24048	707	24049
// OP_STOREP_F	24049	24047	0
// OP_DONE	0	0	0
void (entity globaldef007858, entity globaldef007859) func002471 = 
{
    
    if(globaldef007858.goalentity.goalentity == globaldef007859)
    {
        globaldef007858.search_time = time - TRUE;
    }
    
    
    if(globaldef007858.field000267 == globaldef007859)
    {
        globaldef007858.botflags = globaldef007858.botflags | GLOBALDEF690_128;
    }
    
};


// func002472
// function begins at statement 41812, parm_start=24050
// OP_LOAD_ENT	24050	194	24056
// OP_STORE_ENT	24056	24055	0
// OP_LOAD_ENT	24055	194	24057
// OP_NE_E	24057	24051	24058
// OP_IFNOT	24058	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	24055	194	24059
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	24051	196	24060
// OP_STORE_V	24060	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	24059	0
// OP_LOAD_ENT	24055	194	24061
// OP_LOAD_S	24061	129	24062
// OP_EQ_S	24062	24063	24064
// OP_IFNOT	24064	4	0
// OP_ADDRESS	24050	371	24065
// OP_STOREP_F	31	24065	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	24055	194	24066
// OP_IFNOT	24066	24	0
// OP_ADDRESS	24050	371	24067
// OP_ADD_F	31	228	24068
// OP_STOREP_F	24068	24067	0
// OP_LOAD_ENT	24055	194	24069
// OP_LOAD_V	24069	98	24070
// OP_LOAD_ENT	24055	194	24073
// OP_LOAD_V	24073	94	24074
// OP_ADD_V	24070	24074	24077
// OP_MUL_VF	24077	539	24080
// OP_STORE_V	24080	24052	0
// OP_LOAD_ENT	24055	194	24083
// OP_LOAD_F	24083	97	24084
// OP_ADD_F	24084	214	24085
// OP_STORE_F	24085	24054	0
// OP_STORE_V	24055	4	0
// OP_STORE_V	24052	7	0
// OP_CALL2	453	0	0
// OP_LOAD_ENT	24055	194	24086
// OP_ADDRESS	24086	662	24087
// OP_STOREP_ENT	24050	24087	0
// OP_LOAD_ENT	24055	194	24088
// OP_ADDRESS	24088	663	24089
// OP_STOREP_F	31	24089	0
// OP_DONE	0	0	0
void (entity globaldef007860, entity globaldef007861) func002472 = 
{
    local vector globaldef007862;
    local entity globaldef007866;
    globaldef007866 = globaldef007860.goalentity;
    
    if(globaldef007866.goalentity != globaldef007861)
    {
        return;
    }
    
    globaldef007866.goalentity = find(world, targetname, globaldef007861.target);
    
    if(globaldef007866.goalentity.classname == "light")
    {
        globaldef007860.search_time = time;
        return;
    }
    
    
    if(globaldef007866.goalentity)
    {
        globaldef007860.search_time = time + MOVETYPE_WALK;
        globaldef007862 = (globaldef007866.goalentity.absmax + globaldef007866.goalentity.absmin) * RA_PLAYERSTATTIME;
        globaldef007862_z = globaldef007866.goalentity.absmin_z + TRUE;
        setorigin(globaldef007866, globaldef007862);
        globaldef007866.goalentity.field000339 = globaldef007860;
        globaldef007866.goalentity.field000340 = time;
    }
    
};


// func002473
// function begins at statement 41858, parm_start=24090
// OP_LOAD_ENT	24090	194	24091
// OP_LOAD_ENT	24091	194	24092
// OP_LOAD_S	24092	129	24093
// OP_EQ_S	24093	5259	24094
// OP_IFNOT	24094	4	0
// OP_ADDRESS	24090	371	24095
// OP_SUB_F	31	214	24096
// OP_STOREP_F	24096	24095	0
// OP_DONE	0	0	0
void (entity globaldef007868) func002473 = 
{
    
    if(globaldef007868.goalentity.goalentity.classname == "door")
    {
        globaldef007868.search_time = time - TRUE;
    }
    
};

