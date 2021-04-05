entity stemp;
entity otemp;
entity s;
entity old;
// trigger_reactivate
// function begins at statement 10753, parm_start=7059
// OP_ADDRESS	28	104	7059
// OP_STOREP_F	238	7059	0
// OP_DONE	0	0	0
void () trigger_reactivate = 
{
    self.solid = SOLID_TRIGGER;
};

float SPAWNFLAG_NOMESSAGE = 1;
float SPAWNFLAG_NOTOUCH = 1;
// multi_wait
// function begins at statement 10756, parm_start=7063
// OP_LOAD_F	28	185	7063
// OP_IFNOT	7063	8	0
// OP_ADDRESS	28	152	7064
// OP_LOAD_F	28	185	7065
// OP_STOREP_F	7065	7064	0
// OP_ADDRESS	28	163	7066
// OP_STOREP_F	251	7066	0
// OP_ADDRESS	28	104	7067
// OP_STOREP_F	239	7067	0
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
// function begins at statement 10766, parm_start=7069
// OP_LOAD_F	28	150	7069
// OP_GT	7069	31	7070
// OP_IFNOT	7070	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	7071
// OP_EQ_S	7071	7072	7073
// OP_IFNOT	7073	15	0
// OP_LOAD_ENT	28	181	7074
// OP_LOAD_S	7074	129	7075
// OP_NE_S	7075	1102	7076
// OP_IFNOT	7076	6	0
// OP_LOAD_ENT	28	181	7077
// OP_LOAD_S	7077	129	7078
// OP_NE_S	7078	2056	7079
// OP_IFNOT	7079	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	41	214	7080
// OP_STORE_F	7080	41	0
// OP_STORE_V	339	4	0
// OP_STORE_V	303	7	0
// OP_CALL2	493	0	0
// OP_LOAD_S	28	208	7081
// OP_IFNOT	7081	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	7082
// OP_STORE_V	7082	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	163	7083
// OP_STOREP_F	250	7083	0
// OP_LOAD_ENT	28	181	7084
// OP_STORE_ENT	7084	346	0
// OP_LOAD_S	346	129	7085
// OP_EQ_S	7085	2056	7086
// OP_IFNOT	7086	3	0
// OP_STORE_V	346	4	0
// OP_CALL1	6960	0	0
// OP_CALL0	518	0	0
// OP_LOAD_F	28	413	7087
// OP_GT	7087	213	7088
// OP_IFNOT	7088	8	0
// OP_ADDRESS	28	148	7089
// OP_STOREP_FNC	7062	7089	0
// OP_ADDRESS	28	150	7090
// OP_LOAD_F	28	413	7091
// OP_ADD_F	31	7091	7092
// OP_STOREP_F	7092	7090	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	146	7093
// OP_STOREP_FNC	517	7093	0
// OP_ADDRESS	28	150	7094
// OP_ADD_F	31	993	7095
// OP_STOREP_F	7095	7094	0
// OP_ADDRESS	28	148	7096
// OP_STOREP_FNC	519	7096	0
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
            
            if(self.enemy.classname != "dmbot")
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
    
    if(activator.classname == "dmbot")
    {
        bot_triggered(activator);
    }
    
    SUB_UseTargets();
    if(self.wait > FALSE)
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
// function begins at statement 10824, parm_start=7098
// OP_ADDRESS	28	181	7098
// OP_STOREP_ENT	347	7098	0
// OP_CALL0	7068	0	0
// OP_DONE	0	0	0
void () multi_killed = 
{
    self.enemy = damage_attacker;
    multi_trigger();
};

// multi_use
// function begins at statement 10828, parm_start=7100
// OP_ADDRESS	28	181	7100
// OP_STOREP_ENT	346	7100	0
// OP_CALL0	7068	0	0
// OP_DONE	0	0	0
void () multi_use = 
{
    self.enemy = activator;
    multi_trigger();
};

// multi_touch
// function begins at statement 10832, parm_start=7102
// OP_LOAD_S	29	129	7102
// OP_NE_S	7102	1102	7103
// OP_IFNOT	7103	5	0
// OP_LOAD_S	29	129	7104
// OP_NE_S	7104	2056	7105
// OP_IFNOT	7105	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	7106
// OP_EQ_S	7106	2056	7107
// OP_IFNOT	7107	6	0
// OP_ADDRESS	28	181	7108
// OP_STOREP_ENT	29	7108	0
// OP_CALL0	6344	0	0
// OP_CALL0	7068	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	202	7109
// OP_NE_V	7109	286	7112
// OP_IFNOT	7112	9	0
// OP_LOAD_V	29	117	7113
// OP_STORE_V	7113	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	202	7116
// OP_MUL_V	59	7116	7119
// OP_LT	7119	213	7120
// OP_IFNOT	7120	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	7121
// OP_STOREP_ENT	29	7121	0
// OP_CALL0	7068	0	0
// OP_DONE	0	0	0
void () multi_touch = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(other.classname == "dmbot")
    {
        self.enemy = other;
        bot_touched();
        multi_trigger();
        return;
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
    multi_trigger();
};

// trigger_multiple
// function begins at statement 10862, parm_start=7123
// OP_LOAD_F	28	207	7123
// OP_EQ_F	7123	214	7124
// OP_IFNOT	7124	6	0
// OP_STORE_V	7125	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7126
// OP_STOREP_S	7125	7126	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	207	7127
// OP_EQ_F	7127	216	7128
// OP_IFNOT	7128	6	0
// OP_STORE_V	1110	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7129
// OP_STOREP_S	1110	7129	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	7130
// OP_EQ_F	7130	228	7131
// OP_IFNOT	7131	5	0
// OP_STORE_V	7132	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7133
// OP_STOREP_S	7132	7133	0
// OP_LOAD_F	28	413	7134
// OP_NOT_F	7134	0	7135
// OP_IFNOT	7135	3	0
// OP_ADDRESS	28	413	7136
// OP_STOREP_F	1226	7136	0
// OP_ADDRESS	28	147	7137
// OP_STOREP_FNC	7099	7137	0
// OP_ADDRESS	28	523	7138
// OP_STOREP_FNC	698	7138	0
// OP_ADDRESS	28	526	7139
// OP_STOREP_F	214	7139	0
// OP_CALL0	949	0	0
// OP_LOAD_F	28	152	7140
// OP_IFNOT	7140	20	0
// OP_LOAD_F	28	195	7141
// OP_BITAND	7141	7061	7142
// OP_IFNOT	7142	3	0
// OP_STORE_V	7143	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	185	7144
// OP_LOAD_F	28	152	7145
// OP_STOREP_F	7145	7144	0
// OP_ADDRESS	28	362	7146
// OP_STOREP_FNC	7097	7146	0
// OP_ADDRESS	28	163	7147
// OP_STOREP_F	251	7147	0
// OP_ADDRESS	28	104	7148
// OP_STOREP_F	239	7148	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7149
// OP_STORE_V	7149	7	0
// OP_CALL2	448	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	195	7152
// OP_BITAND	7152	7061	7153
// OP_NOT_F	7153	0	7154
// OP_IFNOT	7154	3	0
// OP_ADDRESS	28	146	7155
// OP_STOREP_FNC	7101	7155	0
// OP_DONE	0	0	0
void () trigger_multiple = 
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
    
    self.use = multi_use;
    self.th_weight = triggerweight;
    self.istrigger = TRUE;
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
// function begins at statement 10925, parm_start=7157
// OP_ADDRESS	28	413	7157
// OP_STOREP_F	276	7157	0
// OP_CALL0	7122	0	0
// OP_DONE	0	0	0
void () trigger_once = 
{
    self.wait = CONTENT_EMPTY;
    trigger_multiple();
};

// trigger_relay
// function begins at statement 10929, parm_start=7159
// OP_ADDRESS	28	147	7159
// OP_STOREP_FNC	518	7159	0
// OP_DONE	0	0	0
void () trigger_relay = 
{
    self.use = SUB_UseTargets;
};

// trigger_secret
// function begins at statement 10932, parm_start=7161
// OP_ADD_F	39	214	7161
// OP_STORE_F	7161	39	0
// OP_ADDRESS	28	413	7162
// OP_STOREP_F	276	7162	0
// OP_LOAD_S	28	206	7163
// OP_NOT_S	7163	0	7164
// OP_IFNOT	7164	3	0
// OP_ADDRESS	28	206	7165
// OP_STOREP_S	7166	7165	0
// OP_LOAD_F	28	207	7167
// OP_NOT_F	7167	0	7168
// OP_IFNOT	7168	3	0
// OP_ADDRESS	28	207	7169
// OP_STOREP_F	214	7169	0
// OP_LOAD_F	28	207	7170
// OP_EQ_F	7170	214	7171
// OP_IFNOT	7171	6	0
// OP_STORE_V	7125	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7172
// OP_STOREP_S	7125	7172	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	7173
// OP_EQ_F	7173	216	7174
// OP_IFNOT	7174	5	0
// OP_STORE_V	1110	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7175
// OP_STOREP_S	1110	7175	0
// OP_CALL0	7122	0	0
// OP_DONE	0	0	0
void () trigger_secret = 
{
    total_secrets = total_secrets + TRUE;
    self.wait = CONTENT_EMPTY;
    
    if(!self.message)
    {
        self.message = "You found a secret area!";
    }
    
    
    if(!self.sounds)
    {
        self.sounds = TRUE;
    }
    
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
        
    }
    
    trigger_multiple();
};

// counter_use
// function begins at statement 10963, parm_start=7177
// OP_ADDRESS	28	431	7178
// OP_LOAD_F	28	431	7179
// OP_SUB_F	7179	214	7180
// OP_STOREP_F	7180	7178	0
// OP_LOAD_F	28	431	7181
// OP_LT	7181	213	7182
// OP_IFNOT	7182	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	431	7183
// OP_NE_F	7183	213	7184
// OP_IFNOT	7184	33	0
// OP_LOAD_S	346	129	7185
// OP_EQ_S	7185	1102	7186
// OP_LOAD_F	28	195	7187
// OP_BITAND	7187	7060	7188
// OP_EQ_F	7188	213	7189
// OP_AND	7186	7189	7190
// OP_IFNOT	7190	25	0
// OP_LOAD_F	28	431	7191
// OP_GE	7191	229	7192
// OP_IFNOT	7192	5	0
// OP_STORE_V	346	4	0
// OP_STORE_V	7193	7	0
// OP_CALL2	506	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	431	7194
// OP_EQ_F	7194	228	7195
// OP_IFNOT	7195	5	0
// OP_STORE_V	346	4	0
// OP_STORE_V	7196	7	0
// OP_CALL2	506	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	431	7197
// OP_EQ_F	7197	216	7198
// OP_IFNOT	7198	5	0
// OP_STORE_V	346	4	0
// OP_STORE_V	7199	7	0
// OP_CALL2	506	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	7200	7	0
// OP_CALL2	506	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	346	129	7201
// OP_EQ_S	7201	1102	7202
// OP_LOAD_F	28	195	7203
// OP_BITAND	7203	7060	7204
// OP_EQ_F	7204	213	7205
// OP_AND	7202	7205	7206
// OP_IFNOT	7206	4	0
// OP_STORE_V	346	4	0
// OP_STORE_V	7207	7	0
// OP_CALL2	506	0	0
// OP_ADDRESS	28	181	7208
// OP_STOREP_ENT	346	7208	0
// OP_CALL0	7068	0	0
// OP_DONE	0	0	0
void () counter_use = 
{
    local string junk;
    self.count = self.count - TRUE;
    
    if(self.count < FALSE)
    {
        return;
    }
    
    
    if(self.count != FALSE)
    {
        
        if((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == FALSE))
        {
            if(self.count >= MOVETYPE_STEP)
            {
                centerprint(activator, "There are more to go...");
            }
            else
            {
                if(self.count == MOVETYPE_WALK)
                {
                    centerprint(activator, "Only 3 more to go...");
                }
                else
                {
                    if(self.count == FL_SWIM)
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
    
    
    if((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == FALSE))
    {
        centerprint(activator, "Sequence completed!");
    }
    
    self.enemy = activator;
    multi_trigger();
};

// trigger_counter
// function begins at statement 11020, parm_start=7210
// OP_ADDRESS	28	413	7210
// OP_STOREP_F	276	7210	0
// OP_LOAD_F	28	431	7211
// OP_NOT_F	7211	0	7212
// OP_IFNOT	7212	3	0
// OP_ADDRESS	28	431	7213
// OP_STOREP_F	216	7213	0
// OP_ADDRESS	28	147	7214
// OP_STOREP_FNC	7176	7214	0
// OP_DONE	0	0	0
void () trigger_counter = 
{
    self.wait = CONTENT_EMPTY;
    
    if(!self.count)
    {
        self.count = FL_SWIM;
    }
    
    self.use = counter_use;
};

float PLAYER_ONLY = 1;
float SILENT = 2;
// play_teleport
// function begins at statement 11030, parm_start=7218
// OP_CALL0	452	0	0
// OP_MUL_F	1	230	7220
// OP_STORE_F	7220	7218	0
// OP_LT	7218	214	7221
// OP_IFNOT	7221	3	0
// OP_STORE_S	4312	7219	0
// OP_GOTO	14	0	0
// OP_LT	7218	216	7222
// OP_IFNOT	7222	3	0
// OP_STORE_S	4313	7219	0
// OP_GOTO	10	0	0
// OP_LT	7218	228	7223
// OP_IFNOT	7223	3	0
// OP_STORE_S	4314	7219	0
// OP_GOTO	6	0	0
// OP_LT	7218	229	7224
// OP_IFNOT	7224	3	0
// OP_STORE_S	4315	7219	0
// OP_GOTO	2	0	0
// OP_STORE_S	4316	7219	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7219	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () play_teleport = 
{
    local float v;
    local string tmpstr;
    v = random() * MOVETYPE_FLY;
    if(v < TRUE)
    {
        tmpstr = "misc/r_tele1.wav";
    }
    else
    {
        if(v < FL_SWIM)
        {
            tmpstr = "misc/r_tele2.wav";
        }
        else
        {
            if(v < MOVETYPE_WALK)
            {
                tmpstr = "misc/r_tele3.wav";
            }
            else
            {
                if(v < MOVETYPE_STEP)
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
    
    sound(self, CHAN_VOICE, tmpstr, TRUE, ATTN_NORM);
    remove(self);
};

// spawn_tfog
// function begins at statement 11059, parm_start=7225
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7056	0
// OP_ADDRESS	7056	105	7228
// OP_STOREP_V	7225	7228	0
// OP_ADDRESS	7056	150	7231
// OP_ADD_F	31	1226	7232
// OP_STOREP_F	7232	7231	0
// OP_ADDRESS	7056	148	7233
// OP_STOREP_FNC	7217	7233	0
// OP_STORE_V	29	4	0
// OP_STORE_V	7056	7	0
// OP_CALL2	625	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	7225	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	7226	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	7227	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void (vector org) spawn_tfog = 
{
    s = spawn();
    s.origin = org;
    s.nextthink = time + 0.2;
    s.think = play_teleport;
    signalnoise(other, s);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_TELEPORT);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, 0);
    WriteCoord(MSG_BROADCAST, 0);
};

// tdeath_touch
// function begins at statement 11087, parm_start=7235
// OP_LOAD_ENT	28	201	7235
// OP_EQ_E	29	7235	7236
// OP_IFNOT	7236	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	7237
// OP_EQ_S	7237	1102	7238
// OP_LOAD_S	29	129	7239
// OP_EQ_S	7239	2056	7240
// OP_OR	7238	7240	7241
// OP_IFNOT	7241	21	0
// OP_LOAD_F	29	375	7242
// OP_GT	7242	31	7243
// OP_IFNOT	7243	3	0
// OP_ADDRESS	28	129	7244
// OP_STOREP_S	5276	7244	0
// OP_LOAD_ENT	28	201	7245
// OP_LOAD_S	7245	129	7246
// OP_NE_S	7246	1102	7247
// OP_IFNOT	7247	12	0
// OP_LOAD_ENT	28	201	7248
// OP_LOAD_S	7248	129	7249
// OP_NE_S	7249	2056	7250
// OP_IFNOT	7250	8	0
// OP_LOAD_ENT	28	201	7251
// OP_STORE_V	7251	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	4611	13	0
// OP_CALL4	520	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	7252
// OP_EQ_S	7252	2455	7253
// OP_IFNOT	7253	3	0
// OP_ADDRESS	29	163	7254
// OP_STOREP_F	252	7254	0
// OP_LOAD_F	29	152	7255
// OP_IFNOT	7255	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	4611	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
void () tdeath_touch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if((other.classname == "player") || (other.classname == "dmbot"))
    {
        
        if(other.invincible_finished > time)
        {
            self.classname = "teledeath2";
        }
        
        
        if(self.owner.classname != "player")
        {
            
            if(self.owner.classname != "dmbot")
            {
                T_Damage(self.owner, self, self, 50000);
                return;
            }
            
        }
        
    }
    
    
    if(other.classname == "peeper")
    {
        other.takedamage = DAMAGE_AIM;
    }
    
    
    if(other.health)
    {
        T_Damage(other, self, self, 50000);
    }
    
};

// spawn_tdeath
// function begins at statement 11130, parm_start=7256
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7260	0
// OP_ADDRESS	7260	129	7261
// OP_STOREP_S	5257	7261	0
// OP_ADDRESS	7260	103	7262
// OP_STOREP_F	227	7262	0
// OP_ADDRESS	7260	104	7263
// OP_STOREP_F	238	7263	0
// OP_ADDRESS	7260	117	7264
// OP_STOREP_V	286	7264	0
// OP_STORE_V	7260	4	0
// OP_LOAD_V	7259	134	7267
// OP_SUB_V	7267	7270	7273
// OP_STORE_V	7273	7	0
// OP_LOAD_V	7259	138	7276
// OP_ADD_V	7276	7270	7279
// OP_STORE_V	7279	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	7260	4	0
// OP_STORE_V	7256	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	7260	146	7282
// OP_STOREP_FNC	7234	7282	0
// OP_ADDRESS	7260	150	7283
// OP_ADD_F	31	1226	7284
// OP_STOREP_F	7284	7283	0
// OP_ADDRESS	7260	148	7285
// OP_STOREP_FNC	519	7285	0
// OP_ADDRESS	7260	201	7286
// OP_STOREP_ENT	7259	7286	0
// OP_STORE_F	216	33	0
// OP_DONE	0	0	0
void (vector org, entity death_owner) spawn_tdeath = 
{
    local entity death;
    death = spawn();
    death.classname = "teledeath";
    death.movetype = MOVETYPE_NONE;
    death.solid = SOLID_TRIGGER;
    death.angles = VEC_ORIGIN;
    setsize(death, death_owner.mins - '1.000 1.000 1.000', death_owner.maxs + '1.000 1.000 1.000');
    setorigin(death, org);
    death.touch = tdeath_touch;
    death.nextthink = time + 0.2;
    death.think = SUB_Remove;
    death.owner = death_owner;
    force_retouch = FL_SWIM;
};

void (entity a, entity b) addTarget;
// teleport_touch
// function begins at statement 11162, parm_start=7289
// OP_LOAD_S	28	197	7293
// OP_IFNOT	7293	5	0
// OP_LOAD_F	28	150	7294
// OP_LT	7294	31	7295
// OP_IFNOT	7295	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	7296
// OP_BITAND	7296	7215	7297
// OP_IFNOT	7297	8	0
// OP_LOAD_S	29	129	7298
// OP_NE_S	7298	1102	7299
// OP_IFNOT	7299	5	0
// OP_LOAD_S	29	129	7300
// OP_NE_S	7300	2056	7301
// OP_IFNOT	7301	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7302
// OP_LE	7302	213	7303
// OP_LOAD_F	29	104	7304
// OP_NE_F	7304	240	7305
// OP_OR	7303	7305	7306
// OP_IFNOT	7306	2	0
// OP_RETURN	0	0	0
// OP_CALL0	518	0	0
// OP_LOAD_V	29	105	7307
// OP_STORE_V	7307	4	0
// OP_CALL1	4434	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7310
// OP_STORE_V	7310	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	7289	0
// OP_NOT_ENT	7289	0	7311
// OP_IFNOT	7311	3	0
// OP_STORE_V	7312	4	0
// OP_CALL1	456	0	0
// OP_LOAD_V	7289	395	7313
// OP_STORE_V	7313	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	7289	105	7316
// OP_MUL_FV	219	59	7319
// OP_ADD_V	7316	7319	7322
// OP_STORE_V	7322	7290	0
// OP_STORE_V	7290	4	0
// OP_CALL1	4434	0	0
// OP_LOAD_V	7289	105	7325
// OP_STORE_V	7325	4	0
// OP_STORE_V	29	7	0
// OP_CALL2	4435	0	0
// OP_LOAD_ENT	29	181	7328
// OP_LOAD_S	7328	129	7329
// OP_EQ_S	7329	2056	7330
// OP_IFNOT	7330	2	0
// OP_CALL0	6369	0	0
// OP_LOAD_F	29	152	7331
// OP_NOT_F	7331	0	7332
// OP_IFNOT	7332	12	0
// OP_ADDRESS	29	105	7333
// OP_LOAD_V	7289	105	7336
// OP_STOREP_V	7336	7333	0
// OP_ADDRESS	29	113	7339
// OP_LOAD_F	29	114	7342
// OP_MUL_VF	59	7342	7343
// OP_LOAD_F	29	115	7346
// OP_MUL_VF	59	7346	7347
// OP_ADD_V	7343	7347	7350
// OP_STOREP_V	7350	7339	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	7289	105	7353
// OP_STORE_V	7353	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	29	117	7356
// OP_LOAD_V	7289	395	7359
// OP_STOREP_V	7359	7356	0
// OP_LOAD_ENT	29	418	7362
// OP_LOAD_ENT	7362	418	7363
// OP_IFNOT	7363	9	0
// OP_LOAD_ENT	29	418	7364
// OP_LOAD_ENT	7364	418	7365
// OP_STORE_V	7365	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	7287	0	0
// OP_LOAD_ENT	29	418	7366
// OP_ADDRESS	7366	418	7367
// OP_STOREP_ENT	28	7367	0
// OP_LOAD_S	29	129	7368
// OP_EQ_S	7368	2056	7369
// OP_IFNOT	7369	2	0
// OP_CALL0	6344	0	0
// OP_LOAD_S	29	129	7370
// OP_EQ_S	7370	1102	7371
// OP_LOAD_S	29	129	7372
// OP_EQ_S	7372	2056	7373
// OP_OR	7371	7373	7374
// OP_LOAD_S	29	129	7375
// OP_EQ_S	7375	2455	7376
// OP_OR	7374	7376	7377
// OP_IFNOT	7377	16	0
// OP_ADDRESS	29	174	7378
// OP_STOREP_F	214	7378	0
// OP_ADDRESS	29	186	7379
// OP_ADD_F	31	3328	7380
// OP_STOREP_F	7380	7379	0
// OP_LOAD_F	29	182	7381
// OP_BITAND	7381	223	7382
// OP_IFNOT	7382	5	0
// OP_ADDRESS	29	182	7383
// OP_LOAD_F	29	182	7384
// OP_SUB_F	7384	223	7385
// OP_STOREP_F	7385	7383	0
// OP_ADDRESS	29	113	7386
// OP_MUL_VF	59	3070	7389
// OP_STOREP_V	7389	7386	0
// OP_ADDRESS	29	182	7392
// OP_LOAD_F	29	182	7393
// OP_LOAD_F	29	182	7394
// OP_BITAND	7394	223	7395
// OP_SUB_F	7393	7395	7396
// OP_STOREP_F	7396	7392	0
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
            
            if(other.classname != "dmbot")
            {
                return;
            }
            
        }
        
    }
    
    
    if((other.health <= FALSE) || (other.solid != SOLID_SLIDEBOX))
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
    org = t.origin + (FL_MONSTER * v_forward);
    spawn_tfog(org);
    spawn_tdeath(t.origin, other);
    
    if(other.enemy.classname == "dmbot")
    {
        enemy_touched();
    }
    
    
    if(!other.health)
    {
        other.origin = t.origin;
        other.velocity = (v_forward * other.velocity_x) + (v_forward * other.velocity_y);
        return;
    }
    
    setorigin(other, t.origin);
    other.angles = t.mangle;
    
    if(other.movetarget.movetarget)
    {
        addTarget(other.movetarget.movetarget, self);
        other.movetarget.movetarget = self;
    }
    
    
    if(other.classname == "dmbot")
    {
        bot_touched();
    }
    
    
    if(((other.classname == "player") || (other.classname == "dmbot")) || (other.classname == "peeper"))
    {
        other.fixangle = TRUE;
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
// function begins at statement 11284, parm_start=7398
// OP_ADDRESS	28	395	7398
// OP_LOAD_V	28	117	7401
// OP_STOREP_V	7401	7398	0
// OP_ADDRESS	28	117	7404
// OP_STOREP_V	286	7404	0
// OP_ADDRESS	28	130	7407
// OP_STOREP_S	959	7407	0
// OP_ADDRESS	28	105	7408
// OP_LOAD_V	28	105	7411
// OP_ADD_V	7411	7414	7417
// OP_STOREP_V	7417	7408	0
// OP_LOAD_S	28	197	7420
// OP_NOT_S	7420	0	7421
// OP_IFNOT	7421	3	0
// OP_STORE_V	7422	4	0
// OP_CALL1	456	0	0
// OP_DONE	0	0	0
void () info_teleport_destination = 
{
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.model = "";
    self.origin = self.origin + '0.000 0.000 27.000';
    
    if(!self.targetname)
    {
        objerror("no targetname");
    }
    
};

// teleport_use
// function begins at statement 11301, parm_start=7424
// OP_ADDRESS	28	150	7424
// OP_ADD_F	31	1226	7425
// OP_STOREP_F	7425	7424	0
// OP_STORE_F	216	33	0
// OP_ADDRESS	28	148	7426
// OP_STOREP_FNC	517	7426	0
// OP_DONE	0	0	0
void () teleport_use = 
{
    self.nextthink = time + 0.2;
    force_retouch = FL_SWIM;
    self.think = SUB_Null;
};

// trigger_teleport
// function begins at statement 11308, parm_start=7428
// OP_CALL0	949	0	0
// OP_ADDRESS	28	146	7431
// OP_STOREP_FNC	7288	7431	0
// OP_ADDRESS	28	526	7432
// OP_STOREP_F	214	7432	0
// OP_ADDRESS	28	552	7433
// OP_STOREP_F	587	7433	0
// OP_LOAD_S	28	196	7434
// OP_NOT_S	7434	0	7435
// OP_IFNOT	7435	3	0
// OP_STORE_V	7436	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	147	7437
// OP_STOREP_FNC	7423	7437	0
// OP_LOAD_F	28	195	7438
// OP_BITAND	7438	7216	7439
// OP_NOT_F	7439	0	7440
// OP_IFNOT	7440	13	0
// OP_STORE_V	7441	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	134	7442
// OP_LOAD_V	28	138	7445
// OP_ADD_V	7442	7445	7448
// OP_MUL_VF	7448	677	7451
// OP_STORE_V	7451	7428	0
// OP_STORE_V	7428	4	0
// OP_STORE_V	7441	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () trigger_teleport = 
{
    local vector o;
    InitTrigger();
    self.touch = teleport_touch;
    self.istrigger = TRUE;
    self.pathtype = TELEPORT;
    
    if(!self.target)
    {
        objerror("no target");
    }
    
    self.use = teleport_use;
    
    if(!(self.spawnflags & SILENT))
    {
        precache_sound("ambience/hum1.wav");
        o = (self.mins + self.maxs) * 0.5;
        ambientsound(o, "ambience/hum1.wav", 0.5, ATTN_STATIC);
    }
    
};

// trigger_skill_touch
// function begins at statement 11339, parm_start=7455
// OP_RETURN	0	0	0
// OP_STORE_V	4369	4	0
// OP_LOAD_S	28	206	7455
// OP_STORE_V	7455	7	0
// OP_CALL2	505	0	0
// OP_DONE	0	0	0
void () trigger_skill_touch = 
{
    return;
    cvar_set("skill", self.message);
};

// trigger_setskill
// function begins at statement 11345, parm_start=7457
// OP_CALL0	949	0	0
// OP_ADDRESS	28	146	7457
// OP_STOREP_FNC	7454	7457	0
// OP_ADDRESS	28	526	7458
// OP_STOREP_F	214	7458	0
// OP_ADDRESS	28	552	7459
// OP_STOREP_F	587	7459	0
// OP_DONE	0	0	0
void () trigger_setskill = 
{
    InitTrigger();
    self.touch = trigger_skill_touch;
    self.istrigger = TRUE;
    self.pathtype = TELEPORT;
};

// trigger_onlyregistered_touch
// function begins at statement 11353, parm_start=7461
// OP_LOAD_S	29	129	7461
// OP_NE_S	7461	1102	7462
// OP_IFNOT	7462	5	0
// OP_LOAD_S	29	129	7463
// OP_NE_S	7463	2056	7464
// OP_IFNOT	7464	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	7465
// OP_GT	7465	31	7466
// OP_IFNOT	7466	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	7467
// OP_ADD_F	31	216	7468
// OP_STOREP_F	7468	7467	0
// OP_STORE_V	4550	4	0
// OP_CALL1	487	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	206	7469
// OP_STOREP_S	959	7469	0
// OP_CALL0	518	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_GOTO	17	0	0
// OP_LOAD_S	29	129	7470
// OP_NE_S	7470	2056	7471
// OP_IFNOT	7471	14	0
// OP_LOAD_S	28	206	7472
// OP_NE_S	7472	959	7473
// OP_IFNOT	7473	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	7474
// OP_STORE_V	7474	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	1110	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () trigger_onlyregistered_touch = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(self.attack_finished > time)
    {
        return;
    }
    
    self.attack_finished = time + FL_SWIM;
    if(cvar("registered"))
    {
        self.message = "";
        SUB_UseTargets();
        remove(self);
    }
    else
    {
        
        if(other.classname != "dmbot")
        {
            
            if(self.message != "")
            {
                centerprint(other, self.message);
                sound(other, CHAN_BODY, "misc/talk.wav", TRUE, ATTN_NORM);
            }
            
        }
        
    }
    
};

// trigger_onlyregistered
// function begins at statement 11393, parm_start=7476
// OP_STORE_V	1110	4	0
// OP_CALL1	464	0	0
// OP_CALL0	949	0	0
// OP_ADDRESS	28	146	7476
// OP_STOREP_FNC	7460	7476	0
// OP_ADDRESS	28	526	7477
// OP_STOREP_F	214	7477	0
// OP_ADDRESS	28	523	7478
// OP_STOREP_FNC	698	7478	0
// OP_DONE	0	0	0
void () trigger_onlyregistered = 
{
    precache_sound("misc/talk.wav");
    InitTrigger();
    self.touch = trigger_onlyregistered_touch;
    self.istrigger = TRUE;
    self.th_weight = triggerweight;
};

// hurt_on
// function begins at statement 11403, parm_start=7480
// OP_ADDRESS	28	104	7480
// OP_STOREP_F	238	7480	0
// OP_ADDRESS	28	150	7481
// OP_STOREP_F	276	7481	0
// OP_DONE	0	0	0
void () hurt_on = 
{
    self.solid = SOLID_TRIGGER;
    self.nextthink = CONTENT_EMPTY;
};

// hurt_touch
// function begins at statement 11408, parm_start=7483
// OP_LOAD_F	29	163	7483
// OP_IFNOT	7483	14	0
// OP_ADDRESS	28	104	7484
// OP_STOREP_F	237	7484	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	420	7485
// OP_STORE_V	7485	13	0
// OP_CALL4	520	0	0
// OP_ADDRESS	28	148	7486
// OP_STOREP_FNC	7479	7486	0
// OP_ADDRESS	28	150	7487
// OP_ADD_F	31	214	7488
// OP_STOREP_F	7488	7487	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () hurt_touch = 
{
    
    if(other.takedamage)
    {
        self.solid = SOLID_NOT;
        T_Damage(other, self, self, self.dmg);
        self.think = hurt_on;
        self.nextthink = time + TRUE;
    }
    
    return;
};

// trigger_hurt
// function begins at statement 11425, parm_start=7490
// OP_CALL0	949	0	0
// OP_ADDRESS	28	146	7490
// OP_STOREP_FNC	7482	7490	0
// OP_LOAD_F	28	420	7491
// OP_NOT_F	7491	0	7492
// OP_IFNOT	7492	3	0
// OP_ADDRESS	28	420	7493
// OP_STOREP_F	230	7493	0
// OP_DONE	0	0	0
void () trigger_hurt = 
{
    InitTrigger();
    self.touch = hurt_touch;
    
    if(!self.dmg)
    {
        self.dmg = MOVETYPE_FLY;
    }
    
};

float PUSH_ONCE = 1;
// trigger_push_touch
// function begins at statement 11434, parm_start=7496
// OP_LOAD_S	29	129	7496
// OP_EQ_S	7496	3656	7497
// OP_IFNOT	7497	8	0
// OP_ADDRESS	29	113	7498
// OP_LOAD_F	28	364	7501
// OP_LOAD_V	28	202	7502
// OP_MUL_FV	7501	7502	7505
// OP_MUL_VF	7505	235	7508
// OP_STOREP_V	7508	7498	0
// OP_GOTO	66	0	0
// OP_LOAD_F	29	152	7511
// OP_GT	7511	213	7512
// OP_IFNOT	7512	63	0
// OP_ADDRESS	29	113	7513
// OP_LOAD_F	28	364	7516
// OP_LOAD_V	28	202	7517
// OP_MUL_FV	7516	7517	7520
// OP_MUL_VF	7520	235	7523
// OP_STOREP_V	7523	7513	0
// OP_LOAD_S	29	129	7526
// OP_EQ_S	7526	1102	7527
// OP_IFNOT	7527	14	0
// OP_LOAD_F	29	386	7528
// OP_LT	7528	31	7529
// OP_IFNOT	7529	10	0
// OP_ADDRESS	29	386	7530
// OP_ADD_F	31	7531	7532
// OP_STOREP_F	7532	7530	0
// OP_STORE_V	29	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	7533	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	36	0	0
// OP_LOAD_S	29	129	7534
// OP_EQ_S	7534	2056	7535
// OP_IFNOT	7535	33	0
// OP_LOAD_F	28	203	7536
// OP_LT	7536	993	7537
// OP_LOAD_F	28	204	7538
// OP_LT	7538	993	7539
// OP_AND	7537	7539	7540
// OP_IFNOT	7540	15	0
// OP_ADDRESS	29	114	7541
// OP_LOAD_F	29	114	7542
// OP_CALL0	452	0	0
// OP_MUL_F	1178	1	7543
// OP_ADD_F	7542	7543	7544
// OP_SUB_F	7544	2101	7545
// OP_STOREP_F	7545	7541	0
// OP_ADDRESS	29	115	7546
// OP_LOAD_F	29	115	7547
// OP_CALL0	452	0	0
// OP_MUL_F	1178	1	7548
// OP_ADD_F	7547	7548	7549
// OP_SUB_F	7549	2101	7550
// OP_STOREP_F	7550	7546	0
// OP_LOAD_F	29	386	7551
// OP_LT	7551	31	7552
// OP_IFNOT	7552	10	0
// OP_ADDRESS	29	386	7553
// OP_ADD_F	31	7531	7554
// OP_STOREP_F	7554	7553	0
// OP_STORE_V	29	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	7533	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	29	181	7555
// OP_LOAD_S	7555	129	7556
// OP_EQ_S	7556	2056	7557
// OP_IFNOT	7557	2	0
// OP_CALL0	6369	0	0
// OP_LOAD_F	28	195	7558
// OP_BITAND	7558	7494	7559
// OP_IFNOT	7559	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () trigger_push_touch = 
{
    if(other.classname == "grenade")
    {
        other.velocity = (self.speed * self.movedir) * MOVETYPE_BOUNCE;
    }
    else
    {
        
        if(other.health > FALSE)
        {
            other.velocity = (self.speed * self.movedir) * MOVETYPE_BOUNCE;
            if(other.classname == "player")
            {
                
                if(other.fly_sound < time)
                {
                    other.fly_sound = time + 1.5;
                    sound(other, CHAN_AUTO, "ambience/windfly.wav", TRUE, ATTN_NORM);
                }
                
            }
            else
            {
                
                if(other.classname == "dmbot")
                {
                    
                    if((self.movedir_x < 0.1) && (self.movedir_y < 0.1))
                    {
                        other.velocity_x = (other.velocity_x + (80 * random())) - 40;
                        other.velocity_y = (other.velocity_y + (80 * random())) - 40;
                    }
                    
                    
                    if(other.fly_sound < time)
                    {
                        other.fly_sound = time + 1.5;
                        sound(other, CHAN_AUTO, "ambience/windfly.wav", TRUE, ATTN_NORM);
                    }
                    
                }
                
            }
            
            
            if(other.enemy.classname == "dmbot")
            {
                enemy_touched();
            }
            
        }
        
    }
    
    
    if(self.spawnflags & PUSH_ONCE)
    {
        remove(self);
    }
    
};

// trigger_push
// function begins at statement 11515, parm_start=7561
// OP_CALL0	949	0	0
// OP_STORE_V	7533	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	146	7561
// OP_STOREP_FNC	7495	7561	0
// OP_ADDRESS	28	526	7562
// OP_STOREP_F	214	7562	0
// OP_ADDRESS	28	523	7563
// OP_STOREP_FNC	659	7563	0
// OP_LOAD_F	28	364	7564
// OP_NOT_F	7564	0	7565
// OP_IFNOT	7565	3	0
// OP_ADDRESS	28	364	7566
// OP_STOREP_F	1548	7566	0
// OP_DONE	0	0	0
void () trigger_push = 
{
    InitTrigger();
    precache_sound("ambience/windfly.wav");
    self.touch = trigger_push_touch;
    self.istrigger = TRUE;
    self.th_weight = trigpushweight;
    
    if(!self.speed)
    {
        self.speed = 1000;
    }
    
};

// trigger_monsterjump_touch
// function begins at statement 11530, parm_start=7568
// OP_LOAD_F	29	182	7568
// OP_BITOR	219	215	7569
// OP_BITOR	7569	216	7570
// OP_BITAND	7568	7570	7571
// OP_NE_F	7571	219	7572
// OP_IFNOT	7572	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	114	7573
// OP_LOAD_F	28	203	7574
// OP_LOAD_F	28	364	7575
// OP_MUL_F	7574	7575	7576
// OP_STOREP_F	7576	7573	0
// OP_ADDRESS	29	115	7577
// OP_LOAD_F	28	204	7578
// OP_LOAD_F	28	364	7579
// OP_MUL_F	7578	7579	7580
// OP_STOREP_F	7580	7577	0
// OP_LOAD_F	29	182	7581
// OP_BITAND	7581	223	7582
// OP_NOT_F	7582	0	7583
// OP_IFNOT	7583	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	182	7584
// OP_LOAD_F	29	182	7585
// OP_SUB_F	7585	223	7586
// OP_STOREP_F	7586	7584	0
// OP_ADDRESS	29	116	7587
// OP_LOAD_F	28	442	7588
// OP_STOREP_F	7588	7587	0
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
// function begins at statement 11560, parm_start=7590
// OP_LOAD_F	28	364	7590
// OP_NOT_F	7590	0	7591
// OP_IFNOT	7591	3	0
// OP_ADDRESS	28	364	7592
// OP_STOREP_F	2356	7592	0
// OP_LOAD_F	28	442	7593
// OP_NOT_F	7593	0	7594
// OP_IFNOT	7594	3	0
// OP_ADDRESS	28	442	7595
// OP_STOREP_F	2356	7595	0
// OP_LOAD_V	28	117	7596
// OP_EQ_V	7596	286	7599
// OP_IFNOT	7599	3	0
// OP_ADDRESS	28	117	7600
// OP_STOREP_V	7603	7600	0
// OP_CALL0	949	0	0
// OP_ADDRESS	28	146	7606
// OP_STOREP_FNC	7567	7606	0
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
    
    
    if(self.angles == VEC_ORIGIN)
    {
        self.angles = '0.000 360.000 0.000';
    }
    
    InitTrigger();
    self.touch = trigger_monsterjump_touch;
};

