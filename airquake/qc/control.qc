// trigger_runway_touch
// function begins at statement 17819, parm_start=13040
// OP_LOAD_S	29	154	13040
// OP_EQ_S	13040	766	13041
// OP_IFNOT	13041	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	226	13042
// OP_LOAD_S	13042	154	13043
// OP_EQ_S	13043	766	13044
// OP_IFNOT	13044	5	0
// OP_LOAD_ENT	29	226	13045
// OP_ADDRESS	13045	241	13046
// OP_ADD_F	31	972	13047
// OP_STOREP_F	13047	13046	0
// OP_ADDRESS	28	422	13048
// OP_ADD_F	31	972	13049
// OP_STOREP_F	13049	13048	0
// OP_ADDRESS	28	412	13050
// OP_STOREP_ENT	29	13050	0
// OP_LOAD_S	29	154	13051
// OP_EQ_S	13051	2097	13052
// OP_IFNOT	13052	6	0
// OP_ADDRESS	28	415	13053
// OP_ADD_F	31	972	13054
// OP_STOREP_F	13054	13053	0
// OP_ADDRESS	28	206	13055
// OP_STOREP_ENT	29	13055	0
// OP_DONE	0	0	0
void () trigger_runway_touch = 
{
    
    if(other.classname == "player")
    {
        return;
    }
    
    
    if(other.owner.classname == "player")
    {
        other.owner.landed = time + 0.5;
    }
    
    self.attack_finished = time + 0.5;
    self.oldenemy = other;
    
    if(other.classname == "plane")
    {
        self.search_time = time + 0.5;
        self.enemy = other;
    }
    
};

// toffrunway_start
// function begins at statement 17845, parm_start=13057
// OP_STORE_V	13058	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	677	13059
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	619	13060
// OP_AND	13059	13060	13061
// OP_IFNOT	13061	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	13062
// OP_STOREP_FNC	13039	13062	0
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	13063
// OP_STORE_V	13063	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13057	0
// OP_ADDRESS	28	226	13064
// OP_STOREP_ENT	13057	13064	0
// OP_ADDRESS	13057	412	13065
// OP_STOREP_ENT	28	13065	0
// OP_DONE	0	0	0
void () toffrunway_start = 
{
    local entity e;
    
    if((cvar("deathmatch") == 1) && (cvar("teamplay") == 0))
    {
        remove(self);
        return;
    }
    
    InitTrigger();
    self.touch = trigger_runway_touch;
    e = find(world, targetname, self.target);
    self.owner = e;
    e.oldenemy = self;
};

// trigger_toffrunway
// function begins at statement 17870, parm_start=13067
// OP_ADDRESS	28	173	13067
// OP_STOREP_FNC	13056	13067	0
// OP_ADDRESS	28	175	13068
// OP_ADD_F	31	1349	13069
// OP_STOREP_F	13069	13068	0
// OP_DONE	0	0	0
void () trigger_toffrunway = 
{
    self.think = toffrunway_start;
    self.nextthink = time + 0.2;
};

// landrunway_start
// function begins at statement 17876, parm_start=13071
// OP_STORE_V	13058	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	677	13072
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	619	13073
// OP_AND	13072	13073	13074
// OP_IFNOT	13074	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	13075
// OP_STOREP_FNC	13039	13075	0
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	13076
// OP_STORE_V	13076	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13071	0
// OP_ADDRESS	28	226	13077
// OP_STOREP_ENT	13071	13077	0
// OP_ADDRESS	13071	206	13078
// OP_STOREP_ENT	28	13078	0
// OP_DONE	0	0	0
void () landrunway_start = 
{
    local entity e;
    
    if((cvar("deathmatch") == 1) && (cvar("teamplay") == 0))
    {
        remove(self);
        return;
    }
    
    InitTrigger();
    self.touch = trigger_runway_touch;
    e = find(world, targetname, self.target);
    self.owner = e;
    e.enemy = self;
};

// trigger_landrunway
// function begins at statement 17901, parm_start=13080
// OP_ADDRESS	28	173	13080
// OP_STOREP_FNC	13070	13080	0
// OP_ADDRESS	28	175	13081
// OP_ADD_F	31	1349	13082
// OP_STOREP_F	13082	13081	0
// OP_DONE	0	0	0
void () trigger_landrunway = 
{
    self.think = landrunway_start;
    self.nextthink = time + 0.2;
};

// control_think
// function begins at statement 17907, parm_start=13084
// OP_LOAD_ENT	28	263	13084
// OP_IFNOT	13084	24	0
// OP_LOAD_ENT	28	263	13085
// OP_LOAD_F	13085	241	13086
// OP_LT	13086	31	13087
// OP_LOAD_ENT	28	263	13088
// OP_LOAD_ENT	13088	206	13089
// OP_LOAD_F	13089	241	13090
// OP_NE_F	13090	619	13091
// OP_AND	13087	13091	13092
// OP_IFNOT	13092	3	0
// OP_ADDRESS	28	263	13093
// OP_STOREP_ENT	30	13093	0
// OP_LOAD_ENT	28	263	13094
// OP_LOAD_ENT	13094	206	13095
// OP_LOAD_F	13095	177	13096
// OP_LT	13096	677	13097
// OP_IFNOT	13097	3	0
// OP_ADDRESS	28	263	13098
// OP_STOREP_ENT	30	13098	0
// OP_LOAD_F	28	422	13099
// OP_LT	13099	31	13100
// OP_IFNOT	13100	3	0
// OP_ADDRESS	28	263	13101
// OP_STOREP_ENT	30	13101	0
// OP_LOAD_ENT	28	264	13102
// OP_IFNOT	13102	24	0
// OP_LOAD_ENT	28	264	13103
// OP_LOAD_F	13103	241	13104
// OP_LT	13104	31	13105
// OP_LOAD_ENT	28	264	13106
// OP_LOAD_ENT	13106	206	13107
// OP_LOAD_F	13107	241	13108
// OP_EQ_F	13108	619	13109
// OP_AND	13105	13109	13110
// OP_IFNOT	13110	3	0
// OP_ADDRESS	28	264	13111
// OP_STOREP_ENT	30	13111	0
// OP_LOAD_ENT	28	264	13112
// OP_LOAD_ENT	13112	206	13113
// OP_LOAD_F	13113	177	13114
// OP_LT	13114	677	13115
// OP_IFNOT	13115	3	0
// OP_ADDRESS	28	264	13116
// OP_STOREP_ENT	30	13116	0
// OP_LOAD_F	28	415	13117
// OP_LT	13117	31	13118
// OP_IFNOT	13118	3	0
// OP_ADDRESS	28	264	13119
// OP_STOREP_ENT	30	13119	0
// OP_ADDRESS	28	173	13120
// OP_STOREP_FNC	13083	13120	0
// OP_ADDRESS	28	175	13121
// OP_ADD_F	31	655	13122
// OP_STOREP_F	13122	13121	0
// OP_DONE	0	0	0
void () control_think = 
{
    
    if(self.tur1)
    {
        
        if((self.tur1.landed < time) && (self.tur1.enemy.landed != 0))
        {
            self.tur1 = world;
        }
        
        
        if(self.tur1.enemy.health < 1)
        {
            self.tur1 = world;
        }
        
        
        if(self.attack_finished < time)
        {
            self.tur1 = world;
        }
        
    }
    
    
    if(self.tur2)
    {
        
        if((self.tur2.landed < time) && (self.tur2.enemy.landed == 0))
        {
            self.tur2 = world;
        }
        
        
        if(self.tur2.enemy.health < 1)
        {
            self.tur2 = world;
        }
        
        
        if(self.search_time < time)
        {
            self.tur2 = world;
        }
        
    }
    
    self.think = control_think;
    self.nextthink = time + 0.1;
};

// start_control
// function begins at statement 17963, parm_start=13124
// OP_LOAD_S	28	221	13124
// OP_IFNOT	13124	19	0
// OP_ADDRESS	28	219	13125
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	13126
// OP_STORE_V	13126	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	13125	0
// OP_ADDRESS	28	130	13127
// OP_LOAD_ENT	28	219	13130
// OP_LOAD_V	13130	130	13131
// OP_LOAD_ENT	28	219	13134
// OP_LOAD_V	13134	159	13135
// OP_LOAD_ENT	28	219	13138
// OP_LOAD_V	13138	163	13139
// OP_ADD_V	13135	13139	13142
// OP_MUL_VF	13142	972	13145
// OP_ADD_V	13131	13145	13148
// OP_STOREP_V	13148	13127	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	13151
// OP_STORE_V	13151	7	0
// OP_CALL2	497	0	0
// OP_LOAD_S	28	231	13154
// OP_NOT_S	13154	0	13155
// OP_IFNOT	13155	3	0
// OP_ADDRESS	28	231	13156
// OP_STOREP_S	13157	13156	0
// OP_ADDRESS	28	173	13158
// OP_STOREP_FNC	13083	13158	0
// OP_ADDRESS	28	175	13159
// OP_ADD_F	31	655	13160
// OP_STOREP_F	13160	13159	0
// OP_DONE	0	0	0
void () start_control = 
{
    
    if(self.target)
    {
        self.goalentity = find(world, targetname, self.target);
        self.origin = self.goalentity.origin + ((self.goalentity.mins + self.goalentity.maxs) * 0.5);
    }
    
    setorigin(self, self.origin);
    
    if(!self.message)
    {
        self.message = "No briefing available.\n";
    }
    
    self.think = control_think;
    self.nextthink = time + 0.1;
};

// info_control
// function begins at statement 17998, parm_start=13162
// OP_LOAD_F	28	209	13162
// OP_EQ_F	13162	619	13163
// OP_LOAD_F	28	209	13164
// OP_NE_F	13164	677	13165
// OP_EQ_F	35	619	13166
// OP_AND	13165	13166	13167
// OP_OR	13163	13167	13168
// OP_IFNOT	13168	4	0
// OP_ADDRESS	28	243	13169
// OP_STOREP_S	101	13169	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	209	13170
// OP_EQ_F	13170	677	13171
// OP_IFNOT	13171	4	0
// OP_ADDRESS	28	243	13172
// OP_STOREP_S	102	13172	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	243	13173
// OP_STOREP_S	103	13173	0
// OP_STORE_V	13058	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	677	13174
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	619	13175
// OP_AND	13174	13175	13176
// OP_IFNOT	13176	7	0
// OP_ADDRESS	28	173	13177
// OP_STOREP_FNC	568	13177	0
// OP_ADDRESS	28	175	13178
// OP_ADD_F	31	655	13179
// OP_STOREP_F	13179	13178	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	205	13180
// OP_NOT_S	13180	0	13181
// OP_IFNOT	13181	3	0
// OP_ADDRESS	28	205	13182
// OP_STOREP_S	13183	13182	0
// OP_ADDRESS	28	173	13184
// OP_STOREP_FNC	13123	13184	0
// OP_ADDRESS	28	175	13185
// OP_ADD_F	31	1687	13186
// OP_STOREP_F	13186	13185	0
// OP_DONE	0	0	0
void () info_control = 
{
    if((self.team == 0) || ((self.team != 1) && (deathmatch == 0)))
    {
        self.ts = T0;
    }
    else
    {
        if(self.team == 1)
        {
            self.ts = T1;
        }
        else
        {
            self.ts = T2;
        }
        
    }
    
    
    if((cvar("deathmatch") == 1) && (cvar("teamplay") == 0))
    {
        self.think = SUB_Remove;
        self.nextthink = time + 0.1;
        return;
    }
    
    
    if(!self.netname)
    {
        self.netname = "Tower";
    }
    
    self.think = start_control;
    self.nextthink = time + 0.3;
};

// comm_control
// function begins at statement 18042, parm_start=13188
// OP_EQ_F	35	677	13193
// OP_EQ_F	37	619	13194
// OP_AND	13193	13194	13195
// OP_IFNOT	13195	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	30	13190	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13196	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13189	0
// OP_IFNOT	13189	12	0
// OP_LOAD_S	13189	243	13197
// OP_LOAD_S	28	243	13198
// OP_EQ_S	13197	13198	13199
// OP_IFNOT	13199	2	0
// OP_STORE_ENT	13189	13190	0
// OP_STORE_V	13189	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13196	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13189	0
// OP_GOTO	-11	0	0
// OP_NOT_ENT	13190	0	13200
// OP_IFNOT	13200	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	972	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13201	7	0
// OP_CALL2	518	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	13190	13189	0
// OP_LOAD_ENT	13189	219	13202
// OP_IFNOT	13202	19	0
// OP_LOAD_ENT	13189	219	13203
// OP_LOAD_F	13203	177	13204
// OP_LT	13204	677	13205
// OP_IFNOT	13205	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	972	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	13189	205	13206
// OP_STORE_V	13206	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13207	7	0
// OP_CALL2	518	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	13189	205	13208
// OP_STORE_V	13208	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13209	7	0
// OP_CALL2	518	0	0
// OP_EQ_F	13188	619	13210
// OP_IFNOT	13210	8	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	13189	231	13211
// OP_STORE_V	13211	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1274	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_EQ_F	13188	806	13212
// OP_IFNOT	13212	85	0
// OP_LOAD_F	28	404	13213
// OP_GT	13213	813	13214
// OP_IFNOT	13214	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13215	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	13216
// OP_LOAD_F	13216	241	13217
// OP_IFNOT	13217	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13218	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13189	263	13219
// OP_EQ_E	13219	28	13220
// OP_IFNOT	13220	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13221	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13189	206	13222
// OP_STORE_ENT	13222	13190	0
// OP_LOAD_ENT	13189	263	13223
// OP_IFNOT	13223	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13224	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1261	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_GOTO	43	0	0
// OP_LOAD_F	13190	415	13225
// OP_GT	13225	31	13226
// OP_IFNOT	13226	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13227	7	0
// OP_CALL2	518	0	0
// OP_LOAD_ENT	13190	206	13228
// OP_LOAD_ENT	13228	226	13229
// OP_STORE_V	13229	4	0
// OP_STORE_V	13230	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1264	4	0
// OP_LOAD_ENT	13190	206	13231
// OP_LOAD_ENT	13231	226	13232
// OP_STORE_V	13232	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	13190	422	13233
// OP_GT	13233	31	13234
// OP_IFNOT	13234	11	0
// OP_LOAD_ENT	13190	412	13235
// OP_LOAD_ENT	13235	226	13236
// OP_STORE_V	13236	4	0
// OP_STORE_V	13230	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1264	4	0
// OP_LOAD_ENT	13190	412	13237
// OP_LOAD_ENT	13237	226	13238
// OP_STORE_V	13238	7	0
// OP_CALL2	1088	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13239	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1255	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_ADDRESS	13189	263	13240
// OP_STOREP_ENT	28	13240	0
// OP_ADDRESS	13189	422	13241
// OP_ADD_F	31	1130	13242
// OP_STOREP_F	13242	13241	0
// OP_RETURN	0	0	0
// OP_EQ_F	13188	677	13243
// OP_IFNOT	13243	86	0
// OP_LOAD_F	28	404	13244
// OP_GT	13244	813	13245
// OP_IFNOT	13245	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13215	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	13246
// OP_LOAD_F	13246	241	13247
// OP_NOT_F	13247	0	13248
// OP_IFNOT	13248	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13249	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13189	264	13250
// OP_EQ_E	13250	28	13251
// OP_IFNOT	13251	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13252	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13189	412	13253
// OP_STORE_ENT	13253	13190	0
// OP_LOAD_ENT	13189	264	13254
// OP_IFNOT	13254	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13255	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1261	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_GOTO	43	0	0
// OP_LOAD_F	13190	415	13256
// OP_GT	13256	31	13257
// OP_IFNOT	13257	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13227	7	0
// OP_CALL2	518	0	0
// OP_LOAD_ENT	13190	206	13258
// OP_LOAD_ENT	13258	226	13259
// OP_STORE_V	13259	4	0
// OP_STORE_V	13230	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1264	4	0
// OP_LOAD_ENT	13190	206	13260
// OP_LOAD_ENT	13260	226	13261
// OP_STORE_V	13261	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	13190	422	13262
// OP_GT	13262	31	13263
// OP_IFNOT	13263	11	0
// OP_LOAD_ENT	13190	412	13264
// OP_LOAD_ENT	13264	226	13265
// OP_STORE_V	13265	4	0
// OP_STORE_V	13230	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1264	4	0
// OP_LOAD_ENT	13190	412	13266
// OP_LOAD_ENT	13266	226	13267
// OP_STORE_V	13267	7	0
// OP_CALL2	1088	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13268	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1258	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_ADDRESS	13189	264	13269
// OP_STOREP_ENT	28	13269	0
// OP_ADDRESS	13189	415	13270
// OP_ADD_F	31	1130	13271
// OP_STOREP_F	13271	13270	0
// OP_RETURN	0	0	0
// OP_EQ_F	13188	788	13272
// OP_IFNOT	13272	40	0
// OP_LOAD_F	28	404	13273
// OP_GT	13273	813	13274
// OP_LOAD_ENT	13189	264	13275
// OP_NE_E	13275	28	13276
// OP_LOAD_ENT	13189	263	13277
// OP_NE_E	13277	28	13278
// OP_AND	13276	13278	13279
// OP_OR	13274	13279	13280
// OP_IFNOT	13280	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13281	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13189	264	13282
// OP_EQ_E	13282	28	13283
// OP_IFNOT	13283	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13284	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_ADDRESS	13189	264	13285
// OP_STOREP_ENT	30	13285	0
// OP_LOAD_ENT	13189	263	13286
// OP_EQ_E	13286	28	13287
// OP_IFNOT	13287	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13288	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_ADDRESS	13189	263	13289
// OP_STOREP_ENT	30	13289	0
// OP_RETURN	0	0	0
// OP_EQ_F	13188	808	13290
// OP_IFNOT	13290	73	0
// OP_LOAD_F	28	404	13291
// OP_GT	13291	813	13292
// OP_IFNOT	13292	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13293	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	177	13294
// OP_GT	13294	856	13295
// OP_IFNOT	13295	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13296	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1261	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12956	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_ENT	13189	206	13297
// OP_LOAD_F	13297	422	13298
// OP_LT	13298	31	13299
// OP_IFNOT	13299	20	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13300	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1255	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_LOAD_ENT	13189	263	13301
// OP_IFNOT	13301	9	0
// OP_LOAD_ENT	13189	263	13302
// OP_STORE_V	13302	4	0
// OP_STORE_V	13303	7	0
// OP_CALL2	518	0	0
// OP_LOAD_ENT	13189	263	13304
// OP_STORE_V	13304	4	0
// OP_STORE_V	4655	7	0
// OP_CALL2	515	0	0
// OP_ADDRESS	13189	263	13305
// OP_STOREP_ENT	28	13305	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13189	412	13306
// OP_LOAD_F	13306	422	13307
// OP_LT	13307	31	13308
// OP_IFNOT	13308	20	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13309	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	1255	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_LOAD_ENT	13189	264	13310
// OP_IFNOT	13310	9	0
// OP_LOAD_ENT	13189	264	13311
// OP_STORE_V	13311	4	0
// OP_STORE_V	13312	7	0
// OP_CALL2	518	0	0
// OP_LOAD_ENT	13189	264	13313
// OP_STORE_V	13313	4	0
// OP_STORE_V	4655	7	0
// OP_CALL2	515	0	0
// OP_ADDRESS	13189	264	13314
// OP_STOREP_ENT	28	13314	0
// OP_RETURN	0	0	0
// OP_EQ_F	13188	813	13315
// OP_IFNOT	13315	41	0
// OP_STORE_V	1271	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13316	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	1793	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13190	0
// OP_IFNOT	13190	28	0
// OP_LOAD_S	13190	243	13317
// OP_LOAD_S	28	243	13318
// OP_EQ_S	13317	13318	13319
// OP_IFNOT	13319	18	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	13190	205	13320
// OP_STORE_V	13320	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13321	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	13190	198	13322
// OP_STORE_V	13322	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13192	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13192	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13323	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	13190	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	1793	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13190	0
// OP_GOTO	-27	0	0
// OP_RETURN	0	0	0
// OP_EQ_F	13188	816	13324
// OP_IFNOT	13324	41	0
// OP_STORE_V	1277	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13325	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13326	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13190	0
// OP_IFNOT	13190	28	0
// OP_LOAD_S	13190	243	13327
// OP_LOAD_S	28	243	13328
// OP_EQ_S	13327	13328	13329
// OP_IFNOT	13329	18	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	13190	205	13330
// OP_STORE_V	13330	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13321	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	13190	198	13331
// OP_STORE_V	13331	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13192	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13192	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13323	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	13190	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13326	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13190	0
// OP_GOTO	-27	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float f1) comm_control = 
{
    local entity e;
    local entity e2;
    local entity e3;
    local string teststr;
    
    if((deathmatch == 1) && (teamplay == 0))
    {
        return;
    }
    
    e2 = world;
    e = find(world, classname, "info_control");
    
    while(e)
    {
        
        if(e.ts == self.ts)
        {
            e2 = e;
        }
        
        e = find(e, classname, "info_control");
    }
    
    
    if(!e2)
    {
        sound(self, CHAN_WEAPON, "misc/talk.wav", 0.5, ATTN_NORM);
        sprint(self, "HQ doesn't reply...\n");
        return;
    }
    
    e = e2;
    
    if(e.goalentity)
    {
        
        if(e.goalentity.health < 1)
        {
            sound(self, CHAN_WEAPON, "misc/talk.wav", 0.5, ATTN_NORM);
            sprint(self, e.netname);
            sprint(self, " doesn't reply...\n");
            return;
        }
        
    }
    
    sprint(self, e.netname);
    sprint(self, ": ");
    
    if(f1 == 0)
    {
        sprint(self, e.message);
        send_voicemsg(82, self);
    }
    
    
    if(f1 == 2)
    {
        
        if(self.style > 5)
        {
            sprint(self, "Keep off the runways, pal.\n");
            send_voicemsg(0, self);
            return;
        }
        
        
        if(self.enemy.landed)
        {
            sprint(self, "You're on ground already.\n");
            send_voicemsg(0, self);
            return;
        }
        
        
        if(e.tur1 == self)
        {
            sprint(self, "Cleared for landing already.\n");
            send_voicemsg(0, self);
            return;
        }
        
        e2 = e.enemy;
        if(e.tur1)
        {
            sprint(self, "please wait.\n");
            send_voicemsg(73, self);
            return;
        }
        else
        {
            
            if(e2.search_time > time)
            {
                sprint(self, "Unauthorized aircraft on runway!\n");
                sprint(e2.enemy.owner, "Clear the runway now!\n");
                send_voicemsg(74, e2.enemy.owner);
                return;
            }
            
            
            if(e2.attack_finished > time)
            {
                sprint(e2.oldenemy.owner, "Clear the runway now!\n");
                send_voicemsg(74, e2.oldenemy.owner);
            }
            
            sprint(self, "You are cleared to land\n");
            send_voicemsg(71, self);
            e.tur1 = self;
            e.attack_finished = time + 30;
            return;
        }
        
    }
    
    
    if(f1 == 1)
    {
        
        if(self.style > 5)
        {
            sprint(self, "Keep off the runways, pal.\n");
            send_voicemsg(0, self);
            return;
        }
        
        
        if(!self.enemy.landed)
        {
            sprint(self, "You're airborne already.\n");
            send_voicemsg(0, self);
            return;
        }
        
        
        if(e.tur2 == self)
        {
            sprint(self, "Cleared for take-off already.\n");
            send_voicemsg(0, self);
            return;
        }
        
        e2 = e.oldenemy;
        if(e.tur2)
        {
            sprint(self, "please wait for take-off clearance.\n");
            send_voicemsg(73, self);
            return;
        }
        else
        {
            
            if(e2.search_time > time)
            {
                sprint(self, "Unauthorized aircraft on runway!\n");
                sprint(e2.enemy.owner, "Clear the runway now!\n");
                send_voicemsg(74, e2.enemy.owner);
                return;
            }
            
            
            if(e2.attack_finished > time)
            {
                sprint(e2.oldenemy.owner, "Clear the runway now!\n");
                send_voicemsg(74, e2.oldenemy.owner);
            }
            
            sprint(self, "You are cleared for take-off\n");
            send_voicemsg(72, self);
            e.tur2 = self;
            e.search_time = time + 30;
            return;
        }
        
    }
    
    
    if(f1 == 3)
    {
        
        if((self.style > 5) || ((e.tur2 != self) && (e.tur1 != self)))
        {
            sprint(self, "Nothing to cancel.\n");
            send_voicemsg(0, self);
            return;
        }
        
        
        if(e.tur2 == self)
        {
            sprint(self, "Take-off clearance cancelled.\n");
            send_voicemsg(0, self);
            e.tur2 = world;
        }
        
        
        if(e.tur1 == self)
        {
            sprint(self, "Landing clearance cancelled.\n");
            send_voicemsg(0, self);
            e.tur1 = world;
        }
        
        return;
    }
    
    
    if(f1 == 4)
    {
        
        if(self.style > 5)
        {
            sprint(self, "Try again with a plane, man.\n");
            send_voicemsg(0, self);
            return;
        }
        
        
        if(self.health > 50)
        {
            sprint(self, "Ask for normal landing clearance.\n");
            send_voicemsg(73, self);
            return;
        }
        
        sound(self, CHAN_VOICE, "speech/rw_a_al2.wav", 1, ATTN_NORM);
        
        if(e.enemy.attack_finished < time)
        {
            sprint(self, "You can land on the normal runway.\n");
            send_voicemsg(71, self);
            
            if(e.tur1)
            {
                sprint(e.tur1, "Emergency! Interrupt landing NOW!\n");
                stuffcmd(e.tur1, "play in1.wav\n");
            }
            
            e.tur1 = self;
            return;
        }
        
        
        if(e.oldenemy.attack_finished < time)
        {
            sprint(self, "You can land on the take-off runway.\n");
            send_voicemsg(71, self);
            
            if(e.tur2)
            {
                sprint(e.tur2, "Emergency! Interrupt take-off NOW!\n");
                stuffcmd(e.tur2, "play in1.wav\n");
            }
            
            e.tur2 = self;
            return;
        }
        
    }
    
    
    if(f1 == 5)
    {
        send_voicemsg(81, self);
        sprint(self, "radar report:\n");
        e2 = find(world, classname, "monster_rad");
        
        while(e2)
        {
            
            if(e2.ts == self.ts)
            {
                sprint(self, e2.netname);
                sprint(self, " reports ");
                teststr = ftos(e2.impulse);
                sprint(self, teststr);
                sprint(self, " visible enemies\n");
            }
            
            e2 = find(e2, classname, "monster_rad");
        }
        
        return;
    }
    
    
    if(f1 == 6)
    {
        send_voicemsg(83, self);
        sprint(self, "mobile radar report:\n");
        e2 = find(world, classname, "monster_mobrad");
        
        while(e2)
        {
            
            if(e2.ts == self.ts)
            {
                sprint(self, e2.netname);
                sprint(self, " reports ");
                teststr = ftos(e2.impulse);
                sprint(self, teststr);
                sprint(self, " visible enemies\n");
            }
            
            e2 = find(e2, classname, "monster_mobrad");
        }
        
        return;
    }
    
};

