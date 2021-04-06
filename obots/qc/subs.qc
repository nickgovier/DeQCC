// SUB_Null
// function begins at statement 2438, parm_start=2956
// OP_DONE	0	0	0
void () SUB_Null = 
{
};

// SUB_Remove
// function begins at statement 2439, parm_start=2956
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () SUB_Remove = 
{
    remove(self);
};

// SetMovedir
// function begins at statement 2442, parm_start=2957
// OP_LOAD_V	28	117	2957
// OP_EQ_V	2957	2960	2963
// OP_IFNOT	2963	4	0
// OP_ADDRESS	28	202	2964
// OP_STOREP_V	2967	2964	0
// OP_GOTO	12	0	0
// OP_LOAD_V	28	117	2970
// OP_EQ_V	2970	2973	2976
// OP_IFNOT	2976	4	0
// OP_ADDRESS	28	202	2977
// OP_STOREP_V	2980	2977	0
// OP_GOTO	6	0	0
// OP_LOAD_V	28	117	2983
// OP_STORE_V	2983	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	28	202	2986
// OP_STOREP_V	59	2986	0
// OP_ADDRESS	28	117	2989
// OP_STOREP_V	286	2989	0
// OP_DONE	0	0	0
void () SetMovedir = 
{
    if(self.angles == '0 -1 0')
    {
        self.movedir = '0 0 1';
    }
    else
    {
        if(self.angles == '0 -2 0')
        {
            self.movedir = '0 0 -1';
        }
        else
        {
            makevectors(self.angles);
            self.movedir = v_forward;
        }
        
    }
    
    self.angles = VEC_ORIGIN;
};

// InitTrigger
// function begins at statement 2462, parm_start=2993
// OP_LOAD_V	28	117	2993
// OP_NE_V	2993	286	2996
// OP_IFNOT	2996	2	0
// OP_CALL0	2956	0	0
// OP_ADDRESS	28	104	2997
// OP_STOREP_F	238	2997	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	2998
// OP_STORE_V	2998	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	103	2999
// OP_STOREP_F	227	2999	0
// OP_ADDRESS	28	93	3000
// OP_STOREP_F	213	3000	0
// OP_ADDRESS	28	130	3001
// OP_STOREP_S	3002	3001	0
// OP_DONE	0	0	0
void () InitTrigger = 
{
    
    if(self.angles != VEC_ORIGIN)
    {
        SetMovedir();
    }
    
    self.solid = SOLID_TRIGGER;
    setmodel(self, self.model);
    self.movetype = MOVETYPE_NONE;
    self.modelindex = FALSE;
    self.model = "";
};

// SUB_CalcMoveEnt
// function begins at statement 2479, parm_start=3003
// OP_STORE_ENT	28	3009	0
// OP_STORE_ENT	3003	28	0
// OP_STORE_V	3004	4	0
// OP_STORE_V	3007	7	0
// OP_STORE_V	3008	10	0
// OP_CALL3	514	0	0
// OP_STORE_ENT	3009	28	0
// OP_DONE	0	0	0
void (entity ent, vector tdest, float tspeed, void() func) SUB_CalcMoveEnt = 
{
    local entity stemp;
    stemp = self;
    self = ent;
    SUB_CalcMove(tdest, tspeed, func);
    self = stemp;
};

// SUB_CalcMove
// function begins at statement 2487, parm_start=3010
// OP_NOT_F	3013	0	3020
// OP_IFNOT	3020	3	0
// OP_STORE_V	3021	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	427	3022
// OP_STOREP_FNC	3014	3022	0
// OP_ADDRESS	28	428	3023
// OP_STOREP_V	3010	3023	0
// OP_ADDRESS	28	148	3026
// OP_STOREP_FNC	517	3026	0
// OP_LOAD_V	28	105	3027
// OP_EQ_V	3010	3027	3030
// OP_IFNOT	3030	8	0
// OP_ADDRESS	28	113	3031
// OP_STOREP_V	286	3031	0
// OP_ADDRESS	28	150	3034
// OP_LOAD_F	28	102	3035
// OP_ADD_F	3035	3036	3037
// OP_STOREP_F	3037	3034	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3038
// OP_SUB_V	3010	3038	3041
// OP_STORE_V	3041	3015	0
// OP_STORE_V	3015	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	3018	0
// OP_DIV_F	3018	3013	3044
// OP_STORE_F	3044	3019	0
// OP_LT	3019	3036	3045
// OP_IFNOT	3045	8	0
// OP_ADDRESS	28	113	3046
// OP_STOREP_V	286	3046	0
// OP_ADDRESS	28	150	3049
// OP_LOAD_F	28	102	3050
// OP_ADD_F	3050	3036	3051
// OP_STOREP_F	3051	3049	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	3052
// OP_LOAD_F	28	102	3053
// OP_ADD_F	3053	3019	3054
// OP_STOREP_F	3054	3052	0
// OP_ADDRESS	28	113	3055
// OP_DIV_F	214	3019	3058
// OP_MUL_VF	3015	3058	3059
// OP_STOREP_V	3059	3055	0
// OP_DONE	0	0	0
void (vector tdest, float tspeed, void() func) SUB_CalcMove = 
{
    local vector vdestdelta;
    local float len;
    local float traveltime;
    
    if(!tspeed)
    {
        objerror("No speed is defined!");
    }
    
    self.think1 = func;
    self.finaldest = tdest;
    self.think = SUB_CalcMoveDone;
    
    if(tdest == self.origin)
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = self.ltime + 0.1;
        return;
    }
    
    vdestdelta = tdest - self.origin;
    len = vlen(vdestdelta);
    traveltime = len / tspeed;
    
    if(traveltime < 0.1)
    {
        self.velocity = VEC_ORIGIN;
        self.nextthink = self.ltime + 0.1;
        return;
    }
    
    self.nextthink = self.ltime + traveltime;
    self.velocity = vdestdelta * (TRUE / traveltime);
};

// SUB_CalcMoveDone
// function begins at statement 2533, parm_start=3062
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	428	3062
// OP_STORE_V	3062	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	113	3065
// OP_STOREP_V	286	3065	0
// OP_ADDRESS	28	150	3068
// OP_STOREP_F	276	3068	0
// OP_LOAD_FNC	28	427	3069
// OP_IFNOT	3069	3	0
// OP_LOAD_FNC	28	427	3070
// OP_CALL0	3070	0	0
// OP_DONE	0	0	0
void () SUB_CalcMoveDone = 
{
    setorigin(self, self.finaldest);
    self.velocity = VEC_ORIGIN;
    self.nextthink = CONTENT_EMPTY;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// SUB_CalcAngleMoveEnt
// function begins at statement 2546, parm_start=3072
// OP_STORE_ENT	28	3078	0
// OP_STORE_ENT	3072	28	0
// OP_STORE_V	3073	4	0
// OP_STORE_V	3076	7	0
// OP_STORE_V	3077	10	0
// OP_CALL3	516	0	0
// OP_STORE_ENT	3078	28	0
// OP_DONE	0	0	0
void (entity ent, vector destangle, float tspeed, void() func) SUB_CalcAngleMoveEnt = 
{
    local entity stemp;
    stemp = self;
    self = ent;
    SUB_CalcAngleMove(destangle, tspeed, func);
    self = stemp;
};

// SUB_CalcAngleMove
// function begins at statement 2554, parm_start=3079
// OP_NOT_F	3082	0	3089
// OP_IFNOT	3089	3	0
// OP_STORE_V	3021	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	117	3090
// OP_SUB_V	3079	3090	3093
// OP_STORE_V	3093	3084	0
// OP_STORE_V	3084	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	3087	0
// OP_DIV_F	3087	3082	3096
// OP_STORE_F	3096	3088	0
// OP_ADDRESS	28	150	3097
// OP_LOAD_F	28	102	3098
// OP_ADD_F	3098	3088	3099
// OP_STOREP_F	3099	3097	0
// OP_ADDRESS	28	121	3100
// OP_DIV_F	214	3088	3103
// OP_MUL_VF	3084	3103	3104
// OP_STOREP_V	3104	3100	0
// OP_ADDRESS	28	427	3107
// OP_STOREP_FNC	3083	3107	0
// OP_ADDRESS	28	432	3108
// OP_STOREP_V	3079	3108	0
// OP_ADDRESS	28	148	3111
// OP_STOREP_FNC	518	3111	0
// OP_DONE	0	0	0
void (vector destangle, float tspeed, void() func) SUB_CalcAngleMove = 
{
    local vector destdelta;
    local float len;
    local float traveltime;
    
    if(!tspeed)
    {
        objerror("No speed is defined!");
    }
    
    destdelta = destangle - self.angles;
    len = vlen(destdelta);
    traveltime = len / tspeed;
    self.nextthink = self.ltime + traveltime;
    self.avelocity = destdelta * (TRUE / traveltime);
    self.think1 = func;
    self.finalangle = destangle;
    self.think = SUB_CalcAngleMoveDone;
};

// SUB_CalcAngleMoveDone
// function begins at statement 2581, parm_start=3112
// OP_ADDRESS	28	117	3112
// OP_LOAD_V	28	432	3115
// OP_STOREP_V	3115	3112	0
// OP_ADDRESS	28	121	3118
// OP_STOREP_V	286	3118	0
// OP_ADDRESS	28	150	3121
// OP_STOREP_F	276	3121	0
// OP_LOAD_FNC	28	427	3122
// OP_IFNOT	3122	3	0
// OP_LOAD_FNC	28	427	3123
// OP_CALL0	3123	0	0
// OP_DONE	0	0	0
void () SUB_CalcAngleMoveDone = 
{
    self.angles = self.finalangle;
    self.avelocity = VEC_ORIGIN;
    self.nextthink = CONTENT_EMPTY;
    
    if(self.think1)
    {
        self.think1();
    }
    
};

// DelayThink
// function begins at statement 2593, parm_start=3125
// OP_LOAD_ENT	28	181	3125
// OP_STORE_ENT	3125	351	0
// OP_CALL0	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () DelayThink = 
{
    activator = self.enemy;
    SUB_UseTargets();
    remove(self);
};

// SUB_UseTargets
// function begins at statement 2599, parm_start=3126
// OP_LOAD_F	28	419	3130
// OP_IFNOT	3130	23	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	3126	0
// OP_ADDRESS	3126	129	3131
// OP_STOREP_S	3132	3131	0
// OP_ADDRESS	3126	150	3133
// OP_LOAD_F	28	419	3134
// OP_ADD_F	31	3134	3135
// OP_STOREP_F	3135	3133	0
// OP_ADDRESS	3126	148	3136
// OP_STOREP_FNC	3124	3136	0
// OP_ADDRESS	3126	181	3137
// OP_STOREP_ENT	351	3137	0
// OP_ADDRESS	3126	206	3138
// OP_LOAD_S	28	206	3139
// OP_STOREP_S	3139	3138	0
// OP_ADDRESS	3126	358	3140
// OP_LOAD_S	28	358	3141
// OP_STOREP_S	3141	3140	0
// OP_ADDRESS	3126	196	3142
// OP_LOAD_S	28	196	3143
// OP_STOREP_S	3143	3142	0
// OP_RETURN	0	0	0
// OP_LOAD_S	351	129	3144
// OP_EQ_S	3144	1236	3145
// OP_LOAD_S	28	206	3146
// OP_NE_S	3146	3002	3147
// OP_AND	3145	3147	3148
// OP_IFNOT	3148	14	0
// OP_STORE_V	351	4	0
// OP_LOAD_S	28	206	3149
// OP_STORE_V	3149	7	0
// OP_CALL2	852	0	0
// OP_LOAD_S	28	208	3150
// OP_NOT_S	3150	0	3151
// OP_IFNOT	3151	7	0
// OP_STORE_V	351	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3152	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	28	358	3153
// OP_IFNOT	3153	14	0
// OP_STORE_ENT	30	3126	0
// OP_STORE_V	3126	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	358	3154
// OP_STORE_V	3154	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	3126	0
// OP_NOT_ENT	3126	0	3155
// OP_IFNOT	3155	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	3126	4	0
// OP_CALL1	465	0	0
// OP_IF	214	-11	0
// OP_LOAD_S	28	196	3156
// OP_IFNOT	3156	27	0
// OP_STORE_ENT	351	3129	0
// OP_STORE_ENT	30	3126	0
// OP_STORE_V	3126	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	3157
// OP_STORE_V	3157	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	3126	0
// OP_NOT_ENT	3126	0	3158
// OP_IFNOT	3158	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	3127	0
// OP_STORE_ENT	29	3128	0
// OP_STORE_ENT	3126	28	0
// OP_STORE_ENT	3127	29	0
// OP_LOAD_FNC	28	147	3159
// OP_NE_FNC	3159	519	3160
// OP_IFNOT	3160	5	0
// OP_LOAD_FNC	28	147	3161
// OP_IFNOT	3161	3	0
// OP_LOAD_FNC	28	147	3162
// OP_CALL0	3162	0	0
// OP_STORE_ENT	3127	28	0
// OP_STORE_ENT	3128	29	0
// OP_STORE_ENT	3129	351	0
// OP_IF	214	-23	0
// OP_DONE	0	0	0
void () SUB_UseTargets = 
{
    local entity t;
    local entity stemp;
    local entity otemp;
    local entity act;
    
    if(self.delay)
    {
        t = spawn();
        t.classname = "DelayedUse";
        t.nextthink = time + self.delay;
        t.think = DelayThink;
        t.enemy = activator;
        t.message = self.message;
        t.killtarget = self.killtarget;
        t.target = self.target;
        return;
    }
    
    
    if((activator.classname == "player") && (self.message != ""))
    {
        centerprint(activator, self.message);
        
        if(!self.noise)
        {
            sound(activator, CHAN_VOICE, "misc/talk.wav", TRUE, ATTN_NORM);
        }
        
    }
    
    
    if(self.killtarget)
    {
        t = world;
        do
        {
            t = find(t, targetname, self.killtarget);
            
            if(!t)
            {
                return;
            }
            
            remove(t);
        } while (TRUE);
    }
    
    
    if(self.target)
    {
        act = activator;
        t = world;
        do
        {
            t = find(t, targetname, self.target);
            
            if(!t)
            {
                return;
            }
            
            stemp = self;
            otemp = other;
            self = t;
            other = stemp;
            
            if(self.use != SUB_Null)
            {
                
                if(self.use)
                {
                    self.use();
                }
                
            }
            
            self = stemp;
            other = otemp;
            activator = act;
        } while (TRUE);
    }
    
};

// SUB_AttackFinished
// function begins at statement 2686, parm_start=3164
// OP_ADDRESS	28	426	3165
// OP_STOREP_F	213	3165	0
// OP_NE_F	354	228	3166
// OP_IFNOT	3166	4	0
// OP_ADDRESS	28	378	3167
// OP_ADD_F	31	3164	3168
// OP_STOREP_F	3168	3167	0
// OP_DONE	0	0	0
void (float normal) SUB_AttackFinished = 
{
    self.cnt = FALSE;
    
    if(skill != MOVETYPE_WALK)
    {
        self.attack_finished = time + normal;
    }
    
};

float (entity targ) visible;
// SUB_CheckRefire
// function begins at statement 2694, parm_start=3171
// OP_NE_F	354	228	3172
// OP_IFNOT	3172	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	426	3173
// OP_EQ_F	3173	214	3174
// OP_IFNOT	3174	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	3175
// OP_STORE_V	3175	4	0
// OP_CALL1	3169	0	0
// OP_NOT_F	1	0	3176
// OP_IFNOT	3176	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	426	3177
// OP_STOREP_F	214	3177	0
// OP_ADDRESS	28	148	3178
// OP_STOREP_FNC	3171	3178	0
// OP_DONE	0	0	0
void (void() func) SUB_CheckRefire = 
{
    
    if(skill != MOVETYPE_WALK)
    {
        return;
    }
    
    
    if(self.cnt == TRUE)
    {
        return;
    }
    
    
    if(!visible(self.enemy))
    {
        return;
    }
    
    self.cnt = TRUE;
    self.think = func;
};

