entity stemp;
entity otemp;
entity s;
entity old;
// trigger_reactivate
// function begins at statement 22632, parm_start=16070
// OP_ADDRESS	28	104	16070
// OP_STOREP_F	244	16070	0
// OP_DONE	0	0	0
void () trigger_reactivate = 
{
    self.solid = SOLID_TRIGGER;
};

float SPAWNFLAG_NOMESSAGE = 1;
float SPAWNFLAG_NOTOUCH = 1;
// multi_wait
// function begins at statement 22635, parm_start=16074
// OP_LOAD_F	28	185	16074
// OP_IFNOT	16074	8	0
// OP_ADDRESS	28	152	16075
// OP_LOAD_F	28	185	16076
// OP_STOREP_F	16076	16075	0
// OP_ADDRESS	28	163	16077
// OP_STOREP_F	257	16077	0
// OP_ADDRESS	28	104	16078
// OP_STOREP_F	245	16078	0
// OP_DONE	0	0	0
void () multi_wait = 
{
    
    if(self.max_health)
    {
        self.health = self.max_health;
        self.takedamage = DAMAGE_YES;
        self.solid = SOLID_BBOX;
    }
    
};

// multi_trigger
// function begins at statement 22645, parm_start=16080
// OP_LOAD_F	28	150	16080
// OP_GT	16080	31	16081
// OP_IFNOT	16081	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	16082
// OP_EQ_S	16082	16083	16084
// OP_IFNOT	16084	11	0
// OP_LOAD_ENT	28	181	16085
// OP_LOAD_S	16085	129	16086
// OP_NE_S	16086	880	16087
// OP_IFNOT	16087	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	41	819	16088
// OP_STORE_F	16088	41	0
// OP_STORE_V	353	4	0
// OP_STORE_V	317	7	0
// OP_CALL2	507	0	0
// OP_LOAD_S	28	208	16089
// OP_IFNOT	16089	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	16090
// OP_STORE_V	16090	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	163	16091
// OP_STOREP_F	256	16091	0
// OP_LOAD_ENT	28	181	16092
// OP_STORE_ENT	16092	360	0
// OP_CALL0	532	0	0
// OP_LOAD_F	28	427	16093
// OP_GT	16093	817	16094
// OP_IFNOT	16094	8	0
// OP_ADDRESS	28	148	16095
// OP_STOREP_FNC	16073	16095	0
// OP_ADDRESS	28	150	16096
// OP_LOAD_F	28	427	16097
// OP_ADD_F	31	16097	16098
// OP_STOREP_F	16098	16096	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	146	16099
// OP_STOREP_FNC	531	16099	0
// OP_ADDRESS	28	150	16100
// OP_ADD_F	31	2869	16101
// OP_STOREP_F	16101	16100	0
// OP_ADDRESS	28	148	16102
// OP_STOREP_FNC	533	16102	0
// OP_DONE	0	0	0
void () multi_trigger = 
{
    
    if(self.nextthink > time)
    {
        return;
    }
    
    
    if(self.classname == "trigger_secret")
    {
        
        if(self.enemy.classname != "player")
        {
            return;
        }
        
        found_secrets = found_secrets + 1;
        WriteByte(MSG_ALL, SVC_FOUNDSECRET);
    }
    
    
    if(self.noise)
    {
        sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    }
    
    self.takedamage = DAMAGE_NO;
    activator = self.enemy;
    SUB_UseTargets();
    if(self.wait > 0)
    {
        self.think = multi_wait;
        self.nextthink = time + self.wait;
    }
    else
    {
        self.touch = SUB_Null;
        self.nextthink = time + 0.1;
        self.think = SUB_Remove;
    }
    
};

// multi_killed
// function begins at statement 22694, parm_start=16104
// OP_ADDRESS	28	181	16104
// OP_STOREP_ENT	361	16104	0
// OP_CALL0	16079	0	0
// OP_DONE	0	0	0
void () multi_killed = 
{
    self.enemy = damage_attacker;
    multi_trigger();
};

// multi_use
// function begins at statement 22698, parm_start=16106
// OP_ADDRESS	28	181	16106
// OP_STOREP_ENT	360	16106	0
// OP_CALL0	16079	0	0
// OP_DONE	0	0	0
void () multi_use = 
{
    self.enemy = activator;
    multi_trigger();
};

// multi_touch
// function begins at statement 22702, parm_start=16108
// OP_LOAD_S	29	129	16108
// OP_NE_S	16108	880	16109
// OP_IFNOT	16109	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	202	16110
// OP_NE_V	16110	926	16113
// OP_IFNOT	16113	9	0
// OP_LOAD_V	29	117	16114
// OP_STORE_V	16114	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	202	16117
// OP_MUL_V	59	16117	16120
// OP_LT	16120	817	16121
// OP_IFNOT	16121	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	16122
// OP_STOREP_ENT	29	16122	0
// OP_CALL0	16079	0	0
// OP_DONE	0	0	0
void () multi_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.movedir != '0.000 0.000 0.000')
    {
        makevectors(other.angles);
        
        if((v_forward * self.movedir) < 0)
        {
            return;
        }
        
    }
    
    self.enemy = other;
    multi_trigger();
};

// trigger_multiple
// function begins at statement 22721, parm_start=16124
// OP_LOAD_F	28	207	16124
// OP_EQ_F	16124	819	16125
// OP_IFNOT	16125	6	0
// OP_STORE_V	16126	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16127
// OP_STOREP_S	16126	16127	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	207	16128
// OP_EQ_F	16128	821	16129
// OP_IFNOT	16129	6	0
// OP_STORE_V	7562	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16130
// OP_STOREP_S	7562	16130	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	16131
// OP_EQ_F	16131	823	16132
// OP_IFNOT	16132	5	0
// OP_STORE_V	16133	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16134
// OP_STOREP_S	16133	16134	0
// OP_LOAD_F	28	427	16135
// OP_NOT_F	16135	0	16136
// OP_IFNOT	16136	3	0
// OP_ADDRESS	28	427	16137
// OP_STOREP_F	1152	16137	0
// OP_ADDRESS	28	147	16138
// OP_STOREP_FNC	16105	16138	0
// OP_CALL0	7404	0	0
// OP_LOAD_F	28	152	16139
// OP_IFNOT	16139	20	0
// OP_LOAD_F	28	195	16140
// OP_BITAND	16140	16072	16141
// OP_IFNOT	16141	3	0
// OP_STORE_V	16142	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	185	16143
// OP_LOAD_F	28	152	16144
// OP_STOREP_F	16144	16143	0
// OP_ADDRESS	28	376	16145
// OP_STOREP_FNC	16103	16145	0
// OP_ADDRESS	28	163	16146
// OP_STOREP_F	257	16146	0
// OP_ADDRESS	28	104	16147
// OP_STOREP_F	245	16147	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	16148
// OP_STORE_V	16148	7	0
// OP_CALL2	462	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	195	16151
// OP_BITAND	16151	16072	16152
// OP_NOT_F	16152	0	16153
// OP_IFNOT	16153	3	0
// OP_ADDRESS	28	146	16154
// OP_STOREP_FNC	16107	16154	0
// OP_DONE	0	0	0
void () trigger_multiple = 
{
    if(self.sounds == 1)
    {
        precache_sound("misc/secret.wav");
        self.noise = "misc/secret.wav";
    }
    else
    {
        if(self.sounds == 2)
        {
            precache_sound("misc/talk.wav");
            self.noise = "misc/talk.wav";
        }
        else
        {
            
            if(self.sounds == 3)
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
    
    self.use = multi_use;
    InitTrigger();
    if(self.health)
    {
        
        if(self.spawnflags & SPAWNFLAG_NOTOUCH)
        {
            objerror("health and notouch don't make sense\n");
        }
        
        self.max_health = self.health;
        self.th_die = multi_killed;
        self.takedamage = DAMAGE_YES;
        self.solid = SOLID_BBOX;
        setorigin(self, self.origin);
    }
    else
    {
        
        if(!(self.spawnflags & SPAWNFLAG_NOTOUCH))
        {
            self.touch = multi_touch;
        }
        
    }
    
};

// trigger_once
// function begins at statement 22780, parm_start=16156
// OP_ADDRESS	28	427	16156
// OP_STOREP_F	1228	16156	0
// OP_CALL0	16123	0	0
// OP_DONE	0	0	0
void () trigger_once = 
{
    self.wait = -1;
    trigger_multiple();
};

// trigger_relay
// function begins at statement 22784, parm_start=16158
// OP_ADDRESS	28	147	16158
// OP_STOREP_FNC	532	16158	0
// OP_DONE	0	0	0
void () trigger_relay = 
{
    self.use = SUB_UseTargets;
};

// trigger_secret
// function begins at statement 22787, parm_start=16160
// OP_ADD_F	39	819	16160
// OP_STORE_F	16160	39	0
// OP_ADDRESS	28	427	16161
// OP_STOREP_F	1228	16161	0
// OP_LOAD_S	28	206	16162
// OP_NOT_S	16162	0	16163
// OP_IFNOT	16163	3	0
// OP_ADDRESS	28	206	16164
// OP_STOREP_S	16165	16164	0
// OP_LOAD_F	28	207	16166
// OP_NOT_F	16166	0	16167
// OP_IFNOT	16167	3	0
// OP_ADDRESS	28	207	16168
// OP_STOREP_F	819	16168	0
// OP_LOAD_F	28	207	16169
// OP_EQ_F	16169	819	16170
// OP_IFNOT	16170	6	0
// OP_STORE_V	16126	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16171
// OP_STOREP_S	16126	16171	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	16172
// OP_EQ_F	16172	821	16173
// OP_IFNOT	16173	5	0
// OP_STORE_V	7562	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16174
// OP_STOREP_S	7562	16174	0
// OP_CALL0	16123	0	0
// OP_DONE	0	0	0
void () trigger_secret = 
{
    total_secrets = total_secrets + 1;
    self.wait = -1;
    
    if(!self.message)
    {
        self.message = "You found a secret area!";
    }
    
    
    if(!self.sounds)
    {
        self.sounds = 1;
    }
    
    if(self.sounds == 1)
    {
        precache_sound("misc/secret.wav");
        self.noise = "misc/secret.wav";
    }
    else
    {
        
        if(self.sounds == 2)
        {
            precache_sound("misc/talk.wav");
            self.noise = "misc/talk.wav";
        }
        
    }
    
    trigger_multiple();
};

// counter_use
// function begins at statement 22818, parm_start=16176
// OP_ADDRESS	28	445	16177
// OP_LOAD_F	28	445	16178
// OP_SUB_F	16178	819	16179
// OP_STOREP_F	16179	16177	0
// OP_LOAD_F	28	445	16180
// OP_LT	16180	817	16181
// OP_IFNOT	16181	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	445	16182
// OP_NE_F	16182	817	16183
// OP_IFNOT	16183	33	0
// OP_LOAD_S	360	129	16184
// OP_EQ_S	16184	880	16185
// OP_LOAD_F	28	195	16186
// OP_BITAND	16186	16071	16187
// OP_EQ_F	16187	817	16188
// OP_AND	16185	16188	16189
// OP_IFNOT	16189	25	0
// OP_LOAD_F	28	445	16190
// OP_GE	16190	825	16191
// OP_IFNOT	16191	5	0
// OP_STORE_V	360	4	0
// OP_STORE_V	16192	7	0
// OP_CALL2	520	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	445	16193
// OP_EQ_F	16193	823	16194
// OP_IFNOT	16194	5	0
// OP_STORE_V	360	4	0
// OP_STORE_V	16195	7	0
// OP_CALL2	520	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	445	16196
// OP_EQ_F	16196	821	16197
// OP_IFNOT	16197	5	0
// OP_STORE_V	360	4	0
// OP_STORE_V	16198	7	0
// OP_CALL2	520	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	360	4	0
// OP_STORE_V	16199	7	0
// OP_CALL2	520	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	360	129	16200
// OP_EQ_S	16200	880	16201
// OP_LOAD_F	28	195	16202
// OP_BITAND	16202	16071	16203
// OP_EQ_F	16203	817	16204
// OP_AND	16201	16204	16205
// OP_IFNOT	16205	4	0
// OP_STORE_V	360	4	0
// OP_STORE_V	16206	7	0
// OP_CALL2	520	0	0
// OP_ADDRESS	28	181	16207
// OP_STOREP_ENT	360	16207	0
// OP_CALL0	16079	0	0
// OP_DONE	0	0	0
void () counter_use = 
{
    local string junk;
    self.count = self.count - 1;
    
    if(self.count < 0)
    {
        return;
    }
    
    
    if(self.count != 0)
    {
        
        if((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == 0))
        {
            if(self.count >= 4)
            {
                centerprint(activator, "There are more to go...");
            }
            else
            {
                if(self.count == 3)
                {
                    centerprint(activator, "Only 3 more to go...");
                }
                else
                {
                    if(self.count == 2)
                    {
                        centerprint(activator, "Only 2 more to go...");
                    }
                    else
                    {
                        centerprint(activator, "Only 1 more to go...");
                    }
                    
                }
                
            }
            
        }
        
        return;
    }
    
    
    if((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == 0))
    {
        centerprint(activator, "Sequence completed!");
    }
    
    self.enemy = activator;
    multi_trigger();
};

// trigger_counter
// function begins at statement 22875, parm_start=16209
// OP_ADDRESS	28	427	16209
// OP_STOREP_F	1228	16209	0
// OP_LOAD_F	28	445	16210
// OP_NOT_F	16210	0	16211
// OP_IFNOT	16211	3	0
// OP_ADDRESS	28	445	16212
// OP_STOREP_F	821	16212	0
// OP_ADDRESS	28	147	16213
// OP_STOREP_FNC	16175	16213	0
// OP_DONE	0	0	0
void () trigger_counter = 
{
    self.wait = -1;
    
    if(!self.count)
    {
        self.count = 2;
    }
    
    self.use = counter_use;
};

float PLAYER_ONLY = 1;
float SILENT = 2;
// play_teleport
// function begins at statement 22885, parm_start=16217
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	16219
// OP_STORE_F	16219	16217	0
// OP_LT	16217	819	16220
// OP_IFNOT	16220	3	0
// OP_STORE_S	12078	16218	0
// OP_GOTO	14	0	0
// OP_LT	16217	821	16221
// OP_IFNOT	16221	3	0
// OP_STORE_S	12079	16218	0
// OP_GOTO	10	0	0
// OP_LT	16217	823	16222
// OP_IFNOT	16222	3	0
// OP_STORE_S	12080	16218	0
// OP_GOTO	6	0	0
// OP_LT	16217	825	16223
// OP_IFNOT	16223	3	0
// OP_STORE_S	12081	16218	0
// OP_GOTO	2	0	0
// OP_STORE_S	12082	16218	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	16218	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () play_teleport = 
{
    local float v;
    local string tmpstr;
    v = random() * 5;
    if(v < 1)
    {
        tmpstr = "misc/r_tele1.wav";
    }
    else
    {
        if(v < 2)
        {
            tmpstr = "misc/r_tele2.wav";
        }
        else
        {
            if(v < 3)
            {
                tmpstr = "misc/r_tele3.wav";
            }
            else
            {
                if(v < 4)
                {
                    tmpstr = "misc/r_tele4.wav";
                }
                else
                {
                    tmpstr = "misc/r_tele5.wav";
                }
                
            }
            
        }
        
    }
    
    sound(self, CHAN_VOICE, tmpstr, 1, ATTN_NORM);
    remove(self);
};

// spawn_tfog
// function begins at statement 22914, parm_start=16224
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	16067	0
// OP_ADDRESS	16067	105	16227
// OP_STOREP_V	16224	16227	0
// OP_ADDRESS	16067	150	16230
// OP_ADD_F	31	1152	16231
// OP_STOREP_F	16231	16230	0
// OP_ADDRESS	16067	148	16232
// OP_STOREP_FNC	16216	16232	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	333	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	16224	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	16225	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	16226	7	0
// OP_CALL2	511	0	0
// OP_DONE	0	0	0
void (vector org) spawn_tfog = 
{
    s = spawn();
    s.origin = org;
    s.nextthink = time + 0.2;
    s.think = play_teleport;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_TELEPORT);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, 0);
    WriteCoord(MSG_BROADCAST, 0);
};

// tdeath_touch
// function begins at statement 22939, parm_start=16234
// OP_LOAD_ENT	28	201	16234
// OP_EQ_E	29	16234	16235
// OP_IFNOT	16235	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	16236
// OP_EQ_S	16236	880	16237
// OP_IFNOT	16237	17	0
// OP_LOAD_F	29	389	16238
// OP_GT	16238	31	16239
// OP_IFNOT	16239	3	0
// OP_ADDRESS	28	129	16240
// OP_STOREP_S	13372	16240	0
// OP_LOAD_ENT	28	201	16241
// OP_LOAD_S	16241	129	16242
// OP_NE_S	16242	880	16243
// OP_IFNOT	16243	8	0
// OP_LOAD_ENT	28	201	16244
// OP_STORE_V	16244	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12486	13	0
// OP_CALL4	534	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	16245
// OP_IFNOT	16245	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12486	13	0
// OP_CALL4	534	0	0
// OP_DONE	0	0	0
void () tdeath_touch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.classname == "player")
    {
        
        if(other.invincible_finished > time)
        {
            self.classname = "teledeath2";
        }
        
        
        if(self.owner.classname != "player")
        {
            T_Damage(self.owner, self, self, 50000);
            return;
        }
        
    }
    
    
    if(other.health)
    {
        T_Damage(other, self, self, 50000);
    }
    
};

// spawn_tdeath
// function begins at statement 22970, parm_start=16246
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	16250	0
// OP_ADDRESS	16250	129	16251
// OP_STOREP_S	13360	16251	0
// OP_ADDRESS	16250	103	16252
// OP_STOREP_F	233	16252	0
// OP_ADDRESS	16250	104	16253
// OP_STOREP_F	244	16253	0
// OP_ADDRESS	16250	117	16254
// OP_STOREP_V	926	16254	0
// OP_STORE_V	16250	4	0
// OP_LOAD_V	16249	134	16257
// OP_SUB_V	16257	16260	16263
// OP_STORE_V	16263	7	0
// OP_LOAD_V	16249	138	16266
// OP_ADD_V	16266	16260	16269
// OP_STORE_V	16269	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	16250	4	0
// OP_STORE_V	16246	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	16250	146	16272
// OP_STOREP_FNC	16233	16272	0
// OP_ADDRESS	16250	150	16273
// OP_ADD_F	31	1152	16274
// OP_STOREP_F	16274	16273	0
// OP_ADDRESS	16250	148	16275
// OP_STOREP_FNC	533	16275	0
// OP_ADDRESS	16250	201	16276
// OP_STOREP_ENT	16249	16276	0
// OP_STORE_F	821	33	0
// OP_DONE	0	0	0
void (vector org, entity death_owner) spawn_tdeath = 
{
    local entity death;
    death = spawn();
    death.classname = "teledeath";
    death.movetype = MOVETYPE_NONE;
    death.solid = SOLID_TRIGGER;
    death.angles = '0.000 0.000 0.000';
    setsize(death, death_owner.mins - '1.000 1.000 1.000', death_owner.maxs + '1.000 1.000 1.000');
    setorigin(death, org);
    death.touch = tdeath_touch;
    death.nextthink = time + 0.2;
    death.think = SUB_Remove;
    death.owner = death_owner;
    force_retouch = 2;
};

// teleport_touch
// function begins at statement 23002, parm_start=16278
// OP_LOAD_S	28	197	16282
// OP_IFNOT	16282	5	0
// OP_LOAD_F	28	150	16283
// OP_LT	16283	31	16284
// OP_IFNOT	16284	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	16285
// OP_BITAND	16285	16214	16286
// OP_IFNOT	16286	5	0
// OP_LOAD_S	29	129	16287
// OP_NE_S	16287	880	16288
// OP_IFNOT	16288	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	16289
// OP_LE	16289	817	16290
// OP_LOAD_F	29	104	16291
// OP_NE_F	16291	246	16292
// OP_OR	16290	16292	16293
// OP_IFNOT	16293	2	0
// OP_RETURN	0	0	0
// OP_CALL0	532	0	0
// OP_LOAD_V	29	105	16294
// OP_STORE_V	16294	4	0
// OP_CALL1	858	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	16297
// OP_STORE_V	16297	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	16278	0
// OP_NOT_ENT	16278	0	16298
// OP_IFNOT	16298	3	0
// OP_STORE_V	16299	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	16278	409	16300
// OP_STORE_V	16300	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	16278	105	16303
// OP_MUL_FV	2657	59	16306
// OP_ADD_V	16303	16306	16309
// OP_STORE_V	16309	16279	0
// OP_STORE_V	16279	4	0
// OP_CALL1	858	0	0
// OP_LOAD_V	16278	105	16312
// OP_STORE_V	16312	4	0
// OP_STORE_V	29	7	0
// OP_CALL2	12318	0	0
// OP_LOAD_F	29	152	16315
// OP_NOT_F	16315	0	16316
// OP_IFNOT	16316	12	0
// OP_ADDRESS	29	105	16317
// OP_LOAD_V	16278	105	16320
// OP_STOREP_V	16320	16317	0
// OP_ADDRESS	29	113	16323
// OP_LOAD_F	29	114	16326
// OP_MUL_VF	59	16326	16327
// OP_LOAD_F	29	115	16330
// OP_MUL_VF	59	16330	16331
// OP_ADD_V	16327	16331	16334
// OP_STOREP_V	16334	16323	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	16278	105	16337
// OP_STORE_V	16337	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	29	117	16340
// OP_LOAD_V	16278	409	16343
// OP_STOREP_V	16343	16340	0
// OP_LOAD_S	29	129	16346
// OP_EQ_S	16346	880	16347
// OP_IFNOT	16347	16	0
// OP_ADDRESS	29	174	16348
// OP_STOREP_F	819	16348	0
// OP_ADDRESS	29	186	16349
// OP_ADD_F	31	2619	16350
// OP_STOREP_F	16350	16349	0
// OP_LOAD_F	29	182	16351
// OP_BITAND	16351	228	16352
// OP_IFNOT	16352	5	0
// OP_ADDRESS	29	182	16353
// OP_LOAD_F	29	182	16354
// OP_SUB_F	16354	228	16355
// OP_STOREP_F	16355	16353	0
// OP_ADDRESS	29	113	16356
// OP_MUL_VF	59	2299	16359
// OP_STOREP_V	16359	16356	0
// OP_ADDRESS	29	182	16362
// OP_LOAD_F	29	182	16363
// OP_LOAD_F	29	182	16364
// OP_BITAND	16364	228	16365
// OP_SUB_F	16363	16365	16366
// OP_STOREP_F	16366	16362	0
// OP_DONE	0	0	0
void () teleport_touch = 
{
    local entity t;
    local vector org;
    
    if(self.targetname)
    {
        
        if(self.nextthink < time)
        {
            return;
        }
        
    }
    
    
    if(self.spawnflags & PLAYER_ONLY)
    {
        
        if(other.classname != "player")
        {
            return;
        }
        
    }
    
    
    if((other.health <= 0) || (other.solid != SOLID_SLIDEBOX))
    {
        return;
    }
    
    SUB_UseTargets();
    spawn_tfog(other.origin);
    t = find(world, targetname, self.target);
    
    if(!t)
    {
        objerror("couldn't find target");
    }
    
    makevectors(t.mangle);
    org = t.origin + (32 * v_forward);
    spawn_tfog(org);
    spawn_tdeath(t.origin, other);
    
    if(!other.health)
    {
        other.origin = t.origin;
        other.velocity = (v_forward * other.velocity_x) + (v_forward * other.velocity_y);
        return;
    }
    
    setorigin(other, t.origin);
    other.angles = t.mangle;
    
    if(other.classname == "player")
    {
        other.fixangle = 1;
        other.teleport_time = time + 0.7;
        
        if(other.flags & FL_ONGROUND)
        {
            other.flags = other.flags - FL_ONGROUND;
        }
        
        other.velocity = v_forward * 300;
    }
    
    other.flags = other.flags - (other.flags & FL_ONGROUND);
};

// info_teleport_destination
// function begins at statement 23095, parm_start=16368
// OP_ADDRESS	28	409	16368
// OP_LOAD_V	28	117	16371
// OP_STOREP_V	16371	16368	0
// OP_ADDRESS	28	117	16374
// OP_STOREP_V	926	16374	0
// OP_ADDRESS	28	130	16377
// OP_STOREP_S	4128	16377	0
// OP_ADDRESS	28	105	16378
// OP_LOAD_V	28	105	16381
// OP_ADD_V	16381	16384	16387
// OP_STOREP_V	16387	16378	0
// OP_LOAD_S	28	197	16390
// OP_NOT_S	16390	0	16391
// OP_IFNOT	16391	3	0
// OP_STORE_V	16392	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () info_teleport_destination = 
{
    self.mangle = self.angles;
    self.angles = '0.000 0.000 0.000';
    self.model = "";
    self.origin = self.origin + '0.000 0.000 27.000';
    
    if(!self.targetname)
    {
        objerror("no targetname");
    }
    
};

// teleport_use
// function begins at statement 23112, parm_start=16394
// OP_ADDRESS	28	150	16394
// OP_ADD_F	31	1152	16395
// OP_STOREP_F	16395	16394	0
// OP_STORE_F	821	33	0
// OP_ADDRESS	28	148	16396
// OP_STOREP_FNC	531	16396	0
// OP_DONE	0	0	0
void () teleport_use = 
{
    self.nextthink = time + 0.2;
    force_retouch = 2;
    self.think = SUB_Null;
};

// trigger_teleport
// function begins at statement 23119, parm_start=16398
// OP_CALL0	7404	0	0
// OP_ADDRESS	28	146	16401
// OP_STOREP_FNC	16277	16401	0
// OP_LOAD_S	28	196	16402
// OP_NOT_S	16402	0	16403
// OP_IFNOT	16403	3	0
// OP_STORE_V	16404	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	147	16405
// OP_STOREP_FNC	16393	16405	0
// OP_LOAD_F	28	195	16406
// OP_BITAND	16406	16215	16407
// OP_NOT_F	16407	0	16408
// OP_IFNOT	16408	8	0
// OP_STORE_V	16409	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	134	16410
// OP_LOAD_V	28	138	16413
// OP_ADD_V	16410	16413	16416
// OP_MUL_VF	16416	1182	16419
// OP_STORE_V	16419	16398	0
// OP_DONE	0	0	0
void () trigger_teleport = 
{
    local vector o;
    InitTrigger();
    self.touch = teleport_touch;
    
    if(!self.target)
    {
        objerror("no target");
    }
    
    self.use = teleport_use;
    
    if(!(self.spawnflags & SILENT))
    {
        precache_sound("ambience/hum1.wav");
        o = (self.mins + self.maxs) * 0.5;
    }
    
};

// trigger_skill_touch
// function begins at statement 23141, parm_start=16423
// OP_LOAD_S	29	129	16423
// OP_NE_S	16423	880	16424
// OP_IFNOT	16424	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4339	4	0
// OP_LOAD_S	28	206	16425
// OP_STORE_V	16425	7	0
// OP_CALL2	519	0	0
// OP_DONE	0	0	0
void () trigger_skill_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    cvar_set("skill", self.message);
};

// trigger_setskill
// function begins at statement 23150, parm_start=16427
// OP_CALL0	7404	0	0
// OP_ADDRESS	28	146	16427
// OP_STOREP_FNC	16422	16427	0
// OP_DONE	0	0	0
void () trigger_setskill = 
{
    InitTrigger();
    self.touch = trigger_skill_touch;
};

// trigger_onlyregistered_touch
// function begins at statement 23154, parm_start=16429
// OP_LOAD_S	29	129	16429
// OP_NE_S	16429	880	16430
// OP_IFNOT	16430	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	387	16431
// OP_GT	16431	31	16432
// OP_IFNOT	16432	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	387	16433
// OP_ADD_F	31	821	16434
// OP_STOREP_F	16434	16433	0
// OP_STORE_V	12437	4	0
// OP_CALL1	501	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	206	16435
// OP_STOREP_S	4128	16435	0
// OP_CALL0	532	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_GOTO	14	0	0
// OP_LOAD_S	28	206	16436
// OP_NE_S	16436	4128	16437
// OP_IFNOT	16437	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	16438
// OP_STORE_V	16438	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	7562	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () trigger_onlyregistered_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.attack_finished > time)
    {
        return;
    }
    
    self.attack_finished = time + 2;
    if(cvar("registered"))
    {
        self.message = "";
        SUB_UseTargets();
        remove(self);
    }
    else
    {
        
        if(self.message != "")
        {
            centerprint(other, self.message);
            sound(other, CHAN_BODY, "misc/talk.wav", 1, ATTN_NORM);
        }
        
    }
    
};

// trigger_onlyregistered
// function begins at statement 23188, parm_start=16440
// OP_STORE_V	7562	4	0
// OP_CALL1	478	0	0
// OP_CALL0	7404	0	0
// OP_ADDRESS	28	146	16440
// OP_STOREP_FNC	16428	16440	0
// OP_DONE	0	0	0
void () trigger_onlyregistered = 
{
    precache_sound("misc/talk.wav");
    InitTrigger();
    self.touch = trigger_onlyregistered_touch;
};

// hurt_on
// function begins at statement 23194, parm_start=16442
// OP_ADDRESS	28	104	16442
// OP_STOREP_F	244	16442	0
// OP_ADDRESS	28	150	16443
// OP_STOREP_F	1228	16443	0
// OP_DONE	0	0	0
void () hurt_on = 
{
    self.solid = SOLID_TRIGGER;
    self.nextthink = -1;
};

// hurt_touch
// function begins at statement 23199, parm_start=16445
// OP_LOAD_F	29	163	16445
// OP_IFNOT	16445	14	0
// OP_ADDRESS	28	104	16446
// OP_STOREP_F	243	16446	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	434	16447
// OP_STORE_V	16447	13	0
// OP_CALL4	534	0	0
// OP_ADDRESS	28	148	16448
// OP_STOREP_FNC	16441	16448	0
// OP_ADDRESS	28	150	16449
// OP_ADD_F	31	819	16450
// OP_STOREP_F	16450	16449	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () hurt_touch = 
{
    
    if(other.takedamage)
    {
        self.solid = SOLID_NOT;
        T_Damage(other, self, self, self.dmg);
        self.think = hurt_on;
        self.nextthink = time + 1;
    }
    
    return;
};

// trigger_hurt
// function begins at statement 23216, parm_start=16452
// OP_CALL0	7404	0	0
// OP_ADDRESS	28	146	16452
// OP_STOREP_FNC	16444	16452	0
// OP_LOAD_F	28	434	16453
// OP_NOT_F	16453	0	16454
// OP_IFNOT	16454	3	0
// OP_ADDRESS	28	434	16455
// OP_STOREP_F	827	16455	0
// OP_DONE	0	0	0
void () trigger_hurt = 
{
    InitTrigger();
    self.touch = hurt_touch;
    
    if(!self.dmg)
    {
        self.dmg = 5;
    }
    
};

float PUSH_ONCE = 1;
// trigger_push_touch
// function begins at statement 23225, parm_start=16458
// OP_LOAD_S	29	129	16458
// OP_EQ_S	16458	9795	16459
// OP_IFNOT	16459	8	0
// OP_ADDRESS	29	113	16460
// OP_LOAD_F	28	378	16463
// OP_LOAD_V	28	202	16464
// OP_MUL_FV	16463	16464	16467
// OP_MUL_VF	16467	855	16470
// OP_STOREP_V	16470	16460	0
// OP_GOTO	25	0	0
// OP_LOAD_F	29	152	16473
// OP_GT	16473	817	16474
// OP_IFNOT	16474	22	0
// OP_ADDRESS	29	113	16475
// OP_LOAD_F	28	378	16478
// OP_LOAD_V	28	202	16479
// OP_MUL_FV	16478	16479	16482
// OP_MUL_VF	16482	855	16485
// OP_STOREP_V	16485	16475	0
// OP_LOAD_S	29	129	16488
// OP_EQ_S	16488	880	16489
// OP_IFNOT	16489	13	0
// OP_LOAD_F	29	400	16490
// OP_LT	16490	31	16491
// OP_IFNOT	16491	10	0
// OP_ADDRESS	29	400	16492
// OP_ADD_F	31	883	16493
// OP_STOREP_F	16493	16492	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	16494	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	195	16495
// OP_BITAND	16495	16456	16496
// OP_IFNOT	16496	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () trigger_push_touch = 
{
    if(other.classname == "grenade")
    {
        other.velocity = (self.speed * self.movedir) * 10;
    }
    else
    {
        
        if(other.health > 0)
        {
            other.velocity = (self.speed * self.movedir) * 10;
            
            if(other.classname == "player")
            {
                
                if(other.fly_sound < time)
                {
                    other.fly_sound = time + 1.5;
                    sound(other, CHAN_AUTO, "ambience/windfly.wav", 1, ATTN_NORM);
                }
                
            }
            
        }
        
    }
    
    
    if(self.spawnflags & PUSH_ONCE)
    {
        remove(self);
    }
    
};

// trigger_push
// function begins at statement 23265, parm_start=16498
// OP_CALL0	7404	0	0
// OP_STORE_V	16494	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	146	16498
// OP_STOREP_FNC	16457	16498	0
// OP_LOAD_F	28	378	16499
// OP_NOT_F	16499	0	16500
// OP_IFNOT	16500	3	0
// OP_ADDRESS	28	378	16501
// OP_STOREP_F	3337	16501	0
// OP_DONE	0	0	0
void () trigger_push = 
{
    InitTrigger();
    precache_sound("ambience/windfly.wav");
    self.touch = trigger_push_touch;
    
    if(!self.speed)
    {
        self.speed = 1000;
    }
    
};

// trigger_monsterjump_touch
// function begins at statement 23276, parm_start=16503
// OP_LOAD_F	29	182	16503
// OP_BITOR	224	220	16504
// OP_BITOR	16504	221	16505
// OP_BITAND	16503	16505	16506
// OP_NE_F	16506	224	16507
// OP_IFNOT	16507	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	114	16508
// OP_LOAD_F	28	203	16509
// OP_LOAD_F	28	378	16510
// OP_MUL_F	16509	16510	16511
// OP_STOREP_F	16511	16508	0
// OP_ADDRESS	29	115	16512
// OP_LOAD_F	28	204	16513
// OP_LOAD_F	28	378	16514
// OP_MUL_F	16513	16514	16515
// OP_STOREP_F	16515	16512	0
// OP_LOAD_F	29	182	16516
// OP_BITAND	16516	228	16517
// OP_NOT_F	16517	0	16518
// OP_IFNOT	16518	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	182	16519
// OP_LOAD_F	29	182	16520
// OP_SUB_F	16520	228	16521
// OP_STOREP_F	16521	16519	0
// OP_ADDRESS	29	116	16522
// OP_LOAD_F	28	456	16523
// OP_STOREP_F	16523	16522	0
// OP_DONE	0	0	0
void () trigger_monsterjump_touch = 
{
    
    if((other.flags & ((FL_MONSTER | FL_FLY) | FL_SWIM)) != FL_MONSTER)
    {
        return;
    }
    
    other.velocity_x = self.movedir_x * self.speed;
    other.velocity_y = self.movedir_y * self.speed;
    
    if(!(other.flags & FL_ONGROUND))
    {
        return;
    }
    
    other.flags = other.flags - FL_ONGROUND;
    other.velocity_z = self.height;
};

// trigger_monsterjump
// function begins at statement 23306, parm_start=16525
// OP_LOAD_F	28	378	16525
// OP_NOT_F	16525	0	16526
// OP_IFNOT	16526	3	0
// OP_ADDRESS	28	378	16527
// OP_STOREP_F	4760	16527	0
// OP_LOAD_F	28	456	16528
// OP_NOT_F	16528	0	16529
// OP_IFNOT	16529	3	0
// OP_ADDRESS	28	456	16530
// OP_STOREP_F	4760	16530	0
// OP_LOAD_V	28	117	16531
// OP_EQ_V	16531	926	16534
// OP_IFNOT	16534	3	0
// OP_ADDRESS	28	117	16535
// OP_STOREP_V	16538	16535	0
// OP_CALL0	7404	0	0
// OP_ADDRESS	28	146	16541
// OP_STOREP_FNC	16502	16541	0
// OP_DONE	0	0	0
void () trigger_monsterjump = 
{
    
    if(!self.speed)
    {
        self.speed = 200;
    }
    
    
    if(!self.height)
    {
        self.height = 200;
    }
    
    
    if(self.angles == '0.000 0.000 0.000')
    {
        self.angles = '0.000 360.000 0.000';
    }
    
    InitTrigger();
    self.touch = trigger_monsterjump_touch;
};

