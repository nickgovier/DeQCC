float globaldef003444;
float globaldef003445;
// func000571
// function begins at statement 16059, parm_start=11008
// OP_LOAD_F	28	185	11008
// OP_IFNOT	11008	8	0
// OP_ADDRESS	28	152	11009
// OP_LOAD_F	28	185	11010
// OP_STOREP_F	11010	11009	0
// OP_ADDRESS	28	163	11011
// OP_STOREP_F	251	11011	0
// OP_ADDRESS	28	104	11012
// OP_STOREP_F	239	11012	0
// OP_DONE	0	0	0
void () func000571 = 
{
    
    if(self.max_health)
    {
        self.health = self.max_health;
        self.takedamage = DAMAGE_YES;
        self.solid = SOLID_BBOX;
    }
    
};

// func000572
// function begins at statement 16069, parm_start=11014
// OP_LOAD_F	28	150	11014
// OP_GT	11014	31	11015
// OP_IFNOT	11015	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	11016
// OP_EQ_S	11016	11017	11018
// OP_IFNOT	11018	15	0
// OP_LOAD_ENT	28	181	11019
// OP_LOAD_S	11019	129	11020
// OP_NE_S	11020	1236	11021
// OP_IFNOT	11021	6	0
// OP_LOAD_ENT	28	181	11022
// OP_LOAD_S	11022	129	11023
// OP_NE_S	11023	1241	11024
// OP_IFNOT	11024	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	41	214	11025
// OP_STORE_F	11025	41	0
// OP_STORE_V	344	4	0
// OP_STORE_V	308	7	0
// OP_CALL2	496	0	0
// OP_LOAD_S	28	208	11026
// OP_IFNOT	11026	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	11027
// OP_STORE_V	11027	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	163	11028
// OP_STOREP_F	250	11028	0
// OP_LOAD_ENT	28	181	11029
// OP_STORE_ENT	11029	351	0
// OP_LOAD_S	351	129	11030
// OP_EQ_S	11030	1241	11031
// OP_IFNOT	11031	4	0
// OP_STORE_V	351	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1132	0	0
// OP_CALL0	520	0	0
// OP_LOAD_F	28	418	11032
// OP_GT	11032	213	11033
// OP_IFNOT	11033	8	0
// OP_ADDRESS	28	148	11034
// OP_STOREP_FNC	11007	11034	0
// OP_ADDRESS	28	150	11035
// OP_LOAD_F	28	418	11036
// OP_ADD_F	31	11036	11037
// OP_STOREP_F	11037	11035	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	146	11038
// OP_STOREP_FNC	519	11038	0
// OP_ADDRESS	28	150	11039
// OP_ADD_F	31	3036	11040
// OP_STOREP_F	11040	11039	0
// OP_ADDRESS	28	148	11041
// OP_STOREP_FNC	521	11041	0
// OP_DONE	0	0	0
void () func000572 = 
{
    
    if(self.nextthink > time)
    {
        return;
    }
    
    
    if(self.classname == "trigger_secret")
    {
        
        if(self.enemy.classname != "player")
        {
            
            if(self.enemy.classname != "bot")
            {
                return;
            }
            
        }
        
        found_secrets = found_secrets + TRUE;
        WriteByte(MSG_ALL, SVC_FOUNDSECRET);
    }
    
    
    if(self.noise)
    {
        sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    }
    
    self.takedamage = DAMAGE_NO;
    activator = self.enemy;
    
    if(activator.classname == "bot")
    {
        func002472(activator, self);
    }
    
    SUB_UseTargets();
    if(self.wait > FALSE)
    {
        self.think = func000571;
        self.nextthink = time + self.wait;
    }
    else
    {
        self.touch = SUB_Null;
        self.nextthink = time + 0.1;
        self.think = SUB_Remove;
    }
    
};

// func000573
// function begins at statement 16128, parm_start=11043
// OP_ADDRESS	28	181	11043
// OP_STOREP_ENT	352	11043	0
// OP_CALL0	11013	0	0
// OP_DONE	0	0	0
void () func000573 = 
{
    self.enemy = damage_attacker;
    func000572();
};

// func000574
// function begins at statement 16132, parm_start=11045
// OP_ADDRESS	28	181	11045
// OP_STOREP_ENT	351	11045	0
// OP_CALL0	11013	0	0
// OP_DONE	0	0	0
void () func000574 = 
{
    self.enemy = activator;
    func000572();
};

// func000575
// function begins at statement 16136, parm_start=11047
// OP_LOAD_S	29	129	11047
// OP_NE_S	11047	1236	11048
// OP_IFNOT	11048	5	0
// OP_LOAD_S	29	129	11049
// OP_NE_S	11049	1241	11050
// OP_IFNOT	11050	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	202	11051
// OP_NE_V	11051	286	11054
// OP_IFNOT	11054	9	0
// OP_LOAD_V	29	117	11055
// OP_STORE_V	11055	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	202	11058
// OP_MUL_V	59	11058	11061
// OP_LT	11061	213	11062
// OP_IFNOT	11062	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	11063
// OP_STOREP_ENT	29	11063	0
// OP_CALL0	11013	0	0
// OP_DONE	0	0	0
void () func000575 = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(self.movedir != VEC_ORIGIN)
    {
        makevectors(other.angles);
        
        if((v_forward * self.movedir) < FALSE)
        {
            return;
        }
        
    }
    
    self.enemy = other;
    func000572();
};

// func000576
// function begins at statement 16158, parm_start=11065
// OP_LOAD_F	28	207	11065
// OP_EQ_F	11065	214	11066
// OP_IFNOT	11066	6	0
// OP_STORE_V	11067	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11068
// OP_STOREP_S	11067	11068	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	207	11069
// OP_EQ_F	11069	216	11070
// OP_IFNOT	11070	6	0
// OP_STORE_V	3152	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11071
// OP_STOREP_S	3152	11071	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	11072
// OP_EQ_F	11072	228	11073
// OP_IFNOT	11073	5	0
// OP_STORE_V	11074	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11075
// OP_STOREP_S	11074	11075	0
// OP_LOAD_F	28	418	11076
// OP_NOT_F	11076	0	11077
// OP_IFNOT	11077	3	0
// OP_ADDRESS	28	418	11078
// OP_STOREP_F	3267	11078	0
// OP_ADDRESS	28	147	11079
// OP_STOREP_FNC	11044	11079	0
// OP_CALL0	2992	0	0
// OP_LOAD_F	28	152	11080
// OP_IFNOT	11080	20	0
// OP_LOAD_F	28	195	11081
// OP_BITAND	11081	11006	11082
// OP_IFNOT	11082	3	0
// OP_STORE_V	11083	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	185	11084
// OP_LOAD_F	28	152	11085
// OP_STOREP_F	11085	11084	0
// OP_ADDRESS	28	367	11086
// OP_STOREP_FNC	11042	11086	0
// OP_ADDRESS	28	163	11087
// OP_STOREP_F	251	11087	0
// OP_ADDRESS	28	104	11088
// OP_STOREP_F	239	11088	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11089
// OP_STORE_V	11089	7	0
// OP_CALL2	453	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	195	11092
// OP_BITAND	11092	11006	11093
// OP_NOT_F	11093	0	11094
// OP_IFNOT	11094	3	0
// OP_ADDRESS	28	146	11095
// OP_STOREP_FNC	11046	11095	0
// OP_DONE	0	0	0
void () func000576 = 
{
    if(self.sounds == TRUE)
    {
        precache_sound("misc/secret.wav");
        self.noise = "misc/secret.wav";
    }
    else
    {
        if(self.sounds == FL_SWIM)
        {
            precache_sound("misc/talk.wav");
            self.noise = "misc/talk.wav";
        }
        else
        {
            
            if(self.sounds == MOVETYPE_WALK)
            {
                precache_sound("misc/trigger1.wav");
                self.noise = "misc/trigger1.wav";
            }
            
        }
        
    }
    
    
    if(!self.wait)
    {
        self.wait = 0.2;
    }
    
    self.use = func000574;
    InitTrigger();
    if(self.health)
    {
        
        if(self.spawnflags & globaldef003445)
        {
            objerror("health and notouch don't make sense\n");
        }
        
        self.max_health = self.health;
        self.th_die = func000573;
        self.takedamage = DAMAGE_YES;
        self.solid = SOLID_BBOX;
        setorigin(self, self.origin);
    }
    else
    {
        
        if(!(self.spawnflags & globaldef003445))
        {
            self.touch = func000575;
        }
        
    }
    
};

