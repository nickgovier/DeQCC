// SUB_Null
// function begins at statement 385, parm_start=916
// OP_DONE	0	0	0
void () SUB_Null = 
{
};

// SUB_Remove
// function begins at statement 386, parm_start=916
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () SUB_Remove = 
{
    remove(self);
};

// SetMovedir
// function begins at statement 389, parm_start=917
// OP_LOAD_V	28	117	917
// OP_EQ_V	917	920	923
// OP_IFNOT	923	4	0
// OP_ADDRESS	28	202	924
// OP_STOREP_V	713	924	0
// OP_GOTO	12	0	0
// OP_LOAD_V	28	117	927
// OP_EQ_V	927	930	933
// OP_IFNOT	933	4	0
// OP_ADDRESS	28	202	934
// OP_STOREP_V	937	934	0
// OP_GOTO	6	0	0
// OP_LOAD_V	28	117	940
// OP_STORE_V	940	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	202	943
// OP_STOREP_V	59	943	0
// OP_ADDRESS	28	117	946
// OP_STOREP_V	286	946	0
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
// function begins at statement 409, parm_start=950
// OP_LOAD_V	28	117	950
// OP_NE_V	950	286	953
// OP_IFNOT	953	2	0
// OP_CALL0	916	0	0
// OP_ADDRESS	28	104	954
// OP_STOREP_F	238	954	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	955
// OP_STORE_V	955	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	103	956
// OP_STOREP_F	227	956	0
// OP_ADDRESS	28	93	957
// OP_STOREP_F	213	957	0
// OP_ADDRESS	28	130	958
// OP_STOREP_S	959	958	0
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
// function begins at statement 426, parm_start=960
// OP_STORE_ENT	28	966	0
// OP_STORE_ENT	960	28	0
// OP_STORE_V	961	4	0
// OP_STORE_V	964	7	0
// OP_STORE_V	965	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	966	28	0
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
// function begins at statement 434, parm_start=967
// OP_NOT_F	970	0	977
// OP_IFNOT	977	3	0
// OP_STORE_V	978	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	422	979
// OP_STOREP_FNC	971	979	0
// OP_ADDRESS	28	423	980
// OP_STOREP_V	967	980	0
// OP_ADDRESS	28	148	983
// OP_STOREP_FNC	515	983	0
// OP_LOAD_V	28	105	984
// OP_EQ_V	967	984	987
// OP_IFNOT	987	8	0
// OP_ADDRESS	28	113	988
// OP_STOREP_V	286	988	0
// OP_ADDRESS	28	150	991
// OP_LOAD_F	28	102	992
// OP_ADD_F	992	993	994
// OP_STOREP_F	994	991	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	995
// OP_SUB_V	967	995	998
// OP_STORE_V	998	972	0
// OP_STORE_V	972	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	975	0
// OP_DIV_F	975	970	1001
// OP_STORE_F	1001	976	0
// OP_LT	976	993	1002
// OP_IFNOT	1002	8	0
// OP_ADDRESS	28	113	1003
// OP_STOREP_V	286	1003	0
// OP_ADDRESS	28	150	1006
// OP_LOAD_F	28	102	1007
// OP_ADD_F	1007	993	1008
// OP_STOREP_F	1008	1006	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	1009
// OP_LOAD_F	28	102	1010
// OP_ADD_F	1010	976	1011
// OP_STOREP_F	1011	1009	0
// OP_ADDRESS	28	113	1012
// OP_DIV_F	214	976	1015
// OP_MUL_VF	972	1015	1016
// OP_STOREP_V	1016	1012	0
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
// function begins at statement 480, parm_start=1019
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	423	1019
// OP_STORE_V	1019	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	113	1022
// OP_STOREP_V	286	1022	0
// OP_ADDRESS	28	150	1025
// OP_STOREP_F	276	1025	0
// OP_LOAD_FNC	28	422	1026
// OP_IFNOT	1026	3	0
// OP_LOAD_FNC	28	422	1027
// OP_CALL0	1027	0	0
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
// function begins at statement 493, parm_start=1029
// OP_STORE_ENT	28	1035	0
// OP_STORE_ENT	1029	28	0
// OP_STORE_V	1030	4	0
// OP_STORE_V	1033	7	0
// OP_STORE_V	1034	10	0
// OP_CALL3	514	0	0
// OP_STORE_ENT	1035	28	0
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
// function begins at statement 501, parm_start=1036
// OP_NOT_F	1039	0	1046
// OP_IFNOT	1046	3	0
// OP_STORE_V	978	4	0
// OP_CALL1	456	0	0
// OP_LOAD_V	28	117	1047
// OP_SUB_V	1036	1047	1050
// OP_STORE_V	1050	1041	0
// OP_STORE_V	1041	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	1044	0
// OP_DIV_F	1044	1039	1053
// OP_STORE_F	1053	1045	0
// OP_ADDRESS	28	150	1054
// OP_LOAD_F	28	102	1055
// OP_ADD_F	1055	1045	1056
// OP_STOREP_F	1056	1054	0
// OP_ADDRESS	28	121	1057
// OP_DIV_F	214	1045	1060
// OP_MUL_VF	1041	1060	1061
// OP_STOREP_V	1061	1057	0
// OP_ADDRESS	28	422	1064
// OP_STOREP_FNC	1040	1064	0
// OP_ADDRESS	28	427	1065
// OP_STOREP_V	1036	1065	0
// OP_ADDRESS	28	148	1068
// OP_STOREP_FNC	516	1068	0
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
// function begins at statement 528, parm_start=1069
// OP_ADDRESS	28	117	1069
// OP_LOAD_V	28	427	1072
// OP_STOREP_V	1072	1069	0
// OP_ADDRESS	28	121	1075
// OP_STOREP_V	286	1075	0
// OP_ADDRESS	28	150	1078
// OP_STOREP_F	276	1078	0
// OP_LOAD_FNC	28	422	1079
// OP_IFNOT	1079	3	0
// OP_LOAD_FNC	28	422	1080
// OP_CALL0	1080	0	0
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
// function begins at statement 540, parm_start=1082
// OP_LOAD_ENT	28	181	1082
// OP_STORE_ENT	1082	346	0
// OP_CALL0	518	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () DelayThink = 
{
    activator = self.enemy;
    SUB_UseTargets();
    remove(self);
};

// SUB_UseTargets
// function begins at statement 546, parm_start=1083
// OP_LOAD_F	28	414	1087
// OP_IFNOT	1087	23	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	1083	0
// OP_ADDRESS	1083	129	1088
// OP_STOREP_S	1089	1088	0
// OP_ADDRESS	1083	150	1090
// OP_LOAD_F	28	414	1091
// OP_ADD_F	31	1091	1092
// OP_STOREP_F	1092	1090	0
// OP_ADDRESS	1083	148	1093
// OP_STOREP_FNC	1081	1093	0
// OP_ADDRESS	1083	181	1094
// OP_STOREP_ENT	346	1094	0
// OP_ADDRESS	1083	206	1095
// OP_LOAD_S	28	206	1096
// OP_STOREP_S	1096	1095	0
// OP_ADDRESS	1083	353	1097
// OP_LOAD_S	28	353	1098
// OP_STOREP_S	1098	1097	0
// OP_ADDRESS	1083	196	1099
// OP_LOAD_S	28	196	1100
// OP_STOREP_S	1100	1099	0
// OP_RETURN	0	0	0
// OP_LOAD_S	346	129	1101
// OP_EQ_S	1101	1102	1103
// OP_LOAD_S	28	206	1104
// OP_NE_S	1104	959	1105
// OP_AND	1103	1105	1106
// OP_IFNOT	1106	14	0
// OP_STORE_V	346	4	0
// OP_LOAD_S	28	206	1107
// OP_STORE_V	1107	7	0
// OP_CALL2	506	0	0
// OP_LOAD_S	28	208	1108
// OP_NOT_S	1108	0	1109
// OP_IFNOT	1109	7	0
// OP_STORE_V	346	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1110	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_S	28	353	1111
// OP_IFNOT	1111	14	0
// OP_STORE_ENT	30	1083	0
// OP_STORE_V	1083	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	353	1112
// OP_STORE_V	1112	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	1083	0
// OP_NOT_ENT	1083	0	1113
// OP_IFNOT	1113	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	1083	4	0
// OP_CALL1	460	0	0
// OP_IF	214	-11	0
// OP_LOAD_S	28	196	1114
// OP_IFNOT	1114	27	0
// OP_STORE_ENT	346	1086	0
// OP_STORE_ENT	30	1083	0
// OP_STORE_V	1083	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	1115
// OP_STORE_V	1115	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	1083	0
// OP_NOT_ENT	1083	0	1116
// OP_IFNOT	1116	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	1084	0
// OP_STORE_ENT	29	1085	0
// OP_STORE_ENT	1083	28	0
// OP_STORE_ENT	1084	29	0
// OP_LOAD_FNC	28	147	1117
// OP_NE_FNC	1117	517	1118
// OP_IFNOT	1118	5	0
// OP_LOAD_FNC	28	147	1119
// OP_IFNOT	1119	3	0
// OP_LOAD_FNC	28	147	1120
// OP_CALL0	1120	0	0
// OP_STORE_ENT	1084	28	0
// OP_STORE_ENT	1085	29	0
// OP_STORE_ENT	1086	346	0
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
// function begins at statement 633, parm_start=1122
// OP_ADDRESS	28	421	1123
// OP_STOREP_F	213	1123	0
// OP_NE_F	349	228	1124
// OP_IFNOT	1124	4	0
// OP_ADDRESS	28	373	1125
// OP_ADD_F	31	1122	1126
// OP_STOREP_F	1126	1125	0
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
// function begins at statement 641, parm_start=1129
// OP_NE_F	349	228	1130
// OP_IFNOT	1130	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	421	1131
// OP_EQ_F	1131	214	1132
// OP_IFNOT	1132	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1133
// OP_STORE_V	1133	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	1134
// OP_IFNOT	1134	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	421	1135
// OP_STOREP_F	214	1135	0
// OP_ADDRESS	28	148	1136
// OP_STOREP_FNC	1129	1136	0
// OP_DONE	0	0	0
void (void() thinkst) SUB_CheckRefire = 
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
    self.think = thinkst;
};

