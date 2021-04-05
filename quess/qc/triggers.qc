entity stemp;
entity otemp;
entity s;
entity old;
// trigger_reactivate
// function begins at statement 10531, parm_start=7088
// OP_ADDRESS	28	104	7088
// OP_STOREP_F	239	7088	0
// OP_DONE	0	0	0
void () trigger_reactivate = 
{
    self.solid = SOLID_TRIGGER;
};

float SPAWNFLAG_NOMESSAGE = 1;
float SPAWNFLAG_NOTOUCH = 1;
// multi_wait
// function begins at statement 10534, parm_start=7092
// OP_LOAD_F	28	185	7092
// OP_IFNOT	7092	8	0
// OP_ADDRESS	28	152	7093
// OP_LOAD_F	28	185	7094
// OP_STOREP_F	7094	7093	0
// OP_ADDRESS	28	163	7095
// OP_STOREP_F	252	7095	0
// OP_ADDRESS	28	104	7096
// OP_STOREP_F	240	7096	0
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
// function begins at statement 10544, parm_start=7098
// OP_LOAD_F	28	150	7098
// OP_GT	7098	31	7099
// OP_IFNOT	7099	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	7100
// OP_EQ_S	7100	7101	7102
// OP_IFNOT	7102	11	0
// OP_LOAD_ENT	28	181	7103
// OP_LOAD_S	7103	129	7104
// OP_NE_S	7104	797	7105
// OP_IFNOT	7105	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	41	708	7106
// OP_STORE_F	7106	41	0
// OP_STORE_V	340	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	494	0	0
// OP_LOAD_S	28	208	7107
// OP_IFNOT	7107	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	7108
// OP_STORE_V	7108	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	163	7109
// OP_STOREP_F	251	7109	0
// OP_LOAD_ENT	28	181	7110
// OP_STORE_ENT	7110	347	0
// OP_CALL0	519	0	0
// OP_LOAD_F	28	414	7111
// OP_GT	7111	650	7112
// OP_IFNOT	7112	8	0
// OP_ADDRESS	28	148	7113
// OP_STOREP_FNC	7091	7113	0
// OP_ADDRESS	28	150	7114
// OP_LOAD_F	28	414	7115
// OP_ADD_F	31	7115	7116
// OP_STOREP_F	7116	7114	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	146	7117
// OP_STOREP_FNC	518	7117	0
// OP_ADDRESS	28	150	7118
// OP_ADD_F	31	686	7119
// OP_STOREP_F	7119	7118	0
// OP_ADDRESS	28	148	7120
// OP_STOREP_FNC	520	7120	0
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
// function begins at statement 10593, parm_start=7122
// OP_ADDRESS	28	181	7122
// OP_STOREP_ENT	348	7122	0
// OP_CALL0	7097	0	0
// OP_DONE	0	0	0
void () multi_killed = 
{
    self.enemy = damage_attacker;
    multi_trigger();
};

// multi_use
// function begins at statement 10597, parm_start=7124
// OP_ADDRESS	28	181	7124
// OP_STOREP_ENT	347	7124	0
// OP_CALL0	7097	0	0
// OP_DONE	0	0	0
void () multi_use = 
{
    self.enemy = activator;
    multi_trigger();
};

// multi_touch
// function begins at statement 10601, parm_start=7126
// OP_LOAD_S	29	129	7126
// OP_NE_S	7126	797	7127
// OP_IFNOT	7127	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	202	7128
// OP_NE_V	7128	638	7131
// OP_IFNOT	7131	9	0
// OP_LOAD_V	29	117	7132
// OP_STORE_V	7132	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	202	7135
// OP_MUL_V	59	7135	7138
// OP_LT	7138	650	7139
// OP_IFNOT	7139	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	7140
// OP_STOREP_ENT	29	7140	0
// OP_CALL0	7097	0	0
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
// function begins at statement 10620, parm_start=7142
// OP_LOAD_F	28	207	7142
// OP_EQ_F	7142	708	7143
// OP_IFNOT	7143	6	0
// OP_STORE_V	7144	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7145
// OP_STOREP_S	7144	7145	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	207	7146
// OP_EQ_F	7146	929	7147
// OP_IFNOT	7147	6	0
// OP_STORE_V	805	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7148
// OP_STOREP_S	805	7148	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	7149
// OP_EQ_F	7149	819	7150
// OP_IFNOT	7150	5	0
// OP_STORE_V	7151	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7152
// OP_STOREP_S	7151	7152	0
// OP_LOAD_F	28	414	7153
// OP_NOT_F	7153	0	7154
// OP_IFNOT	7154	3	0
// OP_ADDRESS	28	414	7155
// OP_STOREP_F	922	7155	0
// OP_ADDRESS	28	147	7156
// OP_STOREP_FNC	7123	7156	0
// OP_CALL0	641	0	0
// OP_LOAD_F	28	152	7157
// OP_IFNOT	7157	20	0
// OP_LOAD_F	28	195	7158
// OP_BITAND	7158	7090	7159
// OP_IFNOT	7159	3	0
// OP_STORE_V	7160	4	0
// OP_CALL1	457	0	0
// OP_ADDRESS	28	185	7161
// OP_LOAD_F	28	152	7162
// OP_STOREP_F	7162	7161	0
// OP_ADDRESS	28	363	7163
// OP_STOREP_FNC	7121	7163	0
// OP_ADDRESS	28	163	7164
// OP_STOREP_F	252	7164	0
// OP_ADDRESS	28	104	7165
// OP_STOREP_F	240	7165	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7166
// OP_STORE_V	7166	7	0
// OP_CALL2	449	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	195	7169
// OP_BITAND	7169	7090	7170
// OP_NOT_F	7170	0	7171
// OP_IFNOT	7171	3	0
// OP_ADDRESS	28	146	7172
// OP_STOREP_FNC	7125	7172	0
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
// function begins at statement 10679, parm_start=7174
// OP_ADDRESS	28	414	7174
// OP_STOREP_F	720	7174	0
// OP_CALL0	7141	0	0
// OP_DONE	0	0	0
void () trigger_once = 
{
    self.wait = -1;
    trigger_multiple();
};

// trigger_relay
// function begins at statement 10683, parm_start=7176
// OP_ADDRESS	28	147	7176
// OP_STOREP_FNC	519	7176	0
// OP_DONE	0	0	0
void () trigger_relay = 
{
    self.use = SUB_UseTargets;
};

// trigger_secret
// function begins at statement 10686, parm_start=7178
// OP_ADD_F	39	708	7178
// OP_STORE_F	7178	39	0
// OP_ADDRESS	28	414	7179
// OP_STOREP_F	720	7179	0
// OP_LOAD_S	28	206	7180
// OP_NOT_S	7180	0	7181
// OP_IFNOT	7181	3	0
// OP_ADDRESS	28	206	7182
// OP_STOREP_S	7183	7182	0
// OP_LOAD_F	28	207	7184
// OP_NOT_F	7184	0	7185
// OP_IFNOT	7185	3	0
// OP_ADDRESS	28	207	7186
// OP_STOREP_F	708	7186	0
// OP_LOAD_F	28	207	7187
// OP_EQ_F	7187	708	7188
// OP_IFNOT	7188	6	0
// OP_STORE_V	7144	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7189
// OP_STOREP_S	7144	7189	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	7190
// OP_EQ_F	7190	929	7191
// OP_IFNOT	7191	5	0
// OP_STORE_V	805	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7192
// OP_STOREP_S	805	7192	0
// OP_CALL0	7141	0	0
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
// function begins at statement 10717, parm_start=7194
// OP_ADDRESS	28	432	7195
// OP_LOAD_F	28	432	7196
// OP_SUB_F	7196	708	7197
// OP_STOREP_F	7197	7195	0
// OP_LOAD_F	28	432	7198
// OP_LT	7198	650	7199
// OP_IFNOT	7199	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	432	7200
// OP_NE_F	7200	650	7201
// OP_IFNOT	7201	33	0
// OP_LOAD_S	347	129	7202
// OP_EQ_S	7202	797	7203
// OP_LOAD_F	28	195	7204
// OP_BITAND	7204	7089	7205
// OP_EQ_F	7205	650	7206
// OP_AND	7203	7206	7207
// OP_IFNOT	7207	25	0
// OP_LOAD_F	28	432	7208
// OP_GE	7208	1835	7209
// OP_IFNOT	7209	5	0
// OP_STORE_V	347	4	0
// OP_STORE_V	7210	7	0
// OP_CALL2	507	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	432	7211
// OP_EQ_F	7211	819	7212
// OP_IFNOT	7212	5	0
// OP_STORE_V	347	4	0
// OP_STORE_V	7213	7	0
// OP_CALL2	507	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	432	7214
// OP_EQ_F	7214	929	7215
// OP_IFNOT	7215	5	0
// OP_STORE_V	347	4	0
// OP_STORE_V	7216	7	0
// OP_CALL2	507	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	347	4	0
// OP_STORE_V	7217	7	0
// OP_CALL2	507	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	7218
// OP_EQ_S	7218	797	7219
// OP_LOAD_F	28	195	7220
// OP_BITAND	7220	7089	7221
// OP_EQ_F	7221	650	7222
// OP_AND	7219	7222	7223
// OP_IFNOT	7223	4	0
// OP_STORE_V	347	4	0
// OP_STORE_V	7224	7	0
// OP_CALL2	507	0	0
// OP_ADDRESS	28	181	7225
// OP_STOREP_ENT	347	7225	0
// OP_CALL0	7097	0	0
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
// function begins at statement 10774, parm_start=7227
// OP_ADDRESS	28	414	7227
// OP_STOREP_F	720	7227	0
// OP_LOAD_F	28	432	7228
// OP_NOT_F	7228	0	7229
// OP_IFNOT	7229	3	0
// OP_ADDRESS	28	432	7230
// OP_STOREP_F	929	7230	0
// OP_ADDRESS	28	147	7231
// OP_STOREP_FNC	7193	7231	0
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
// function begins at statement 10784, parm_start=7235
// OP_STORE_S	4318	7236	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	7236	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () play_teleport = 
{
    local float v;
    local string tmpstr;
    tmpstr = "effects/spell.wav";
    sound(self, CHAN_VOICE, tmpstr, 1, ATTN_NORM);
    remove(self);
};

// spawn_tfog
// function begins at statement 10794, parm_start=7237
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	7085	0
// OP_ADDRESS	7085	105	7240
// OP_STOREP_V	7237	7240	0
// OP_ADDRESS	7085	150	7243
// OP_ADD_F	31	922	7244
// OP_STOREP_F	7244	7243	0
// OP_ADDRESS	7085	148	7245
// OP_STOREP_FNC	7234	7245	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	7237	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	7238	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	7239	7	0
// OP_CALL2	498	0	0
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
// function begins at statement 10819, parm_start=7247
// OP_LOAD_ENT	28	201	7247
// OP_EQ_E	29	7247	7248
// OP_IFNOT	7248	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	7249
// OP_EQ_S	7249	797	7250
// OP_IFNOT	7250	17	0
// OP_LOAD_F	29	376	7251
// OP_GT	7251	31	7252
// OP_IFNOT	7252	3	0
// OP_ADDRESS	28	129	7253
// OP_STOREP_S	5401	7253	0
// OP_LOAD_ENT	28	201	7254
// OP_LOAD_S	7254	129	7255
// OP_NE_S	7255	797	7256
// OP_IFNOT	7256	8	0
// OP_LOAD_ENT	28	201	7257
// OP_STORE_V	7257	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	4541	13	0
// OP_CALL4	521	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7258
// OP_IFNOT	7258	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	4541	13	0
// OP_CALL4	521	0	0
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
// function begins at statement 10850, parm_start=7259
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	7263	0
// OP_ADDRESS	7263	129	7264
// OP_STOREP_S	5389	7264	0
// OP_ADDRESS	7263	103	7265
// OP_STOREP_F	228	7265	0
// OP_ADDRESS	7263	104	7266
// OP_STOREP_F	239	7266	0
// OP_ADDRESS	7263	117	7267
// OP_STOREP_V	638	7267	0
// OP_STORE_V	7263	4	0
// OP_LOAD_V	7262	134	7270
// OP_SUB_V	7270	7273	7276
// OP_STORE_V	7276	7	0
// OP_LOAD_V	7262	138	7279
// OP_ADD_V	7279	7273	7282
// OP_STORE_V	7282	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	7263	4	0
// OP_STORE_V	7259	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	7263	146	7285
// OP_STOREP_FNC	7246	7285	0
// OP_ADDRESS	7263	150	7286
// OP_ADD_F	31	922	7287
// OP_STOREP_F	7287	7286	0
// OP_ADDRESS	7263	148	7288
// OP_STOREP_FNC	520	7288	0
// OP_ADDRESS	7263	201	7289
// OP_STOREP_ENT	7262	7289	0
// OP_STORE_F	929	33	0
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
// function begins at statement 10882, parm_start=7291
// OP_LOAD_S	28	197	7295
// OP_IFNOT	7295	5	0
// OP_LOAD_F	28	150	7296
// OP_LT	7296	31	7297
// OP_IFNOT	7297	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	7298
// OP_BITAND	7298	7232	7299
// OP_IFNOT	7299	5	0
// OP_LOAD_S	29	129	7300
// OP_NE_S	7300	797	7301
// OP_IFNOT	7301	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7302
// OP_LE	7302	650	7303
// OP_LOAD_F	29	104	7304
// OP_NE_F	7304	241	7305
// OP_OR	7303	7305	7306
// OP_IFNOT	7306	2	0
// OP_RETURN	0	0	0
// OP_CALL0	519	0	0
// OP_LOAD_V	29	105	7307
// OP_STORE_V	7307	4	0
// OP_CALL1	591	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7310
// OP_STORE_V	7310	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	7291	0
// OP_NOT_ENT	7291	0	7311
// OP_IFNOT	7311	3	0
// OP_STORE_V	7312	4	0
// OP_CALL1	457	0	0
// OP_LOAD_V	7291	396	7313
// OP_STORE_V	7313	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	7291	105	7316
// OP_MUL_FV	959	59	7319
// OP_ADD_V	7316	7319	7322
// OP_STORE_V	7322	7292	0
// OP_STORE_V	7292	4	0
// OP_CALL1	591	0	0
// OP_LOAD_V	7291	105	7325
// OP_STORE_V	7325	4	0
// OP_STORE_V	29	7	0
// OP_CALL2	4411	0	0
// OP_LOAD_F	29	152	7328
// OP_NOT_F	7328	0	7329
// OP_IFNOT	7329	12	0
// OP_ADDRESS	29	105	7330
// OP_LOAD_V	7291	105	7333
// OP_STOREP_V	7333	7330	0
// OP_ADDRESS	29	113	7336
// OP_LOAD_F	29	114	7339
// OP_MUL_VF	59	7339	7340
// OP_LOAD_F	29	115	7343
// OP_MUL_VF	59	7343	7344
// OP_ADD_V	7340	7344	7347
// OP_STOREP_V	7347	7336	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	7291	105	7350
// OP_STORE_V	7350	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	29	117	7353
// OP_LOAD_V	7291	396	7356
// OP_STOREP_V	7356	7353	0
// OP_LOAD_S	29	129	7359
// OP_EQ_S	7359	797	7360
// OP_IFNOT	7360	16	0
// OP_ADDRESS	29	174	7361
// OP_STOREP_F	708	7361	0
// OP_ADDRESS	29	186	7362
// OP_ADD_F	31	3100	7363
// OP_STOREP_F	7363	7362	0
// OP_LOAD_F	29	182	7364
// OP_BITAND	7364	223	7365
// OP_IFNOT	7365	5	0
// OP_ADDRESS	29	182	7366
// OP_LOAD_F	29	182	7367
// OP_SUB_F	7367	223	7368
// OP_STOREP_F	7368	7366	0
// OP_ADDRESS	29	113	7369
// OP_MUL_VF	59	2845	7372
// OP_STOREP_V	7372	7369	0
// OP_ADDRESS	29	182	7375
// OP_LOAD_F	29	182	7376
// OP_LOAD_F	29	182	7377
// OP_BITAND	7377	223	7378
// OP_SUB_F	7376	7378	7379
// OP_STOREP_F	7379	7375	0
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
// function begins at statement 10975, parm_start=7381
// OP_ADDRESS	28	396	7381
// OP_LOAD_V	28	117	7384
// OP_STOREP_V	7384	7381	0
// OP_ADDRESS	28	117	7387
// OP_STOREP_V	638	7387	0
// OP_ADDRESS	28	130	7390
// OP_STOREP_S	652	7390	0
// OP_ADDRESS	28	105	7391
// OP_LOAD_V	28	105	7394
// OP_ADD_V	7394	7397	7400
// OP_STOREP_V	7400	7391	0
// OP_LOAD_S	28	197	7403
// OP_NOT_S	7403	0	7404
// OP_IFNOT	7404	3	0
// OP_STORE_V	7405	4	0
// OP_CALL1	457	0	0
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
// function begins at statement 10992, parm_start=7407
// OP_ADDRESS	28	150	7407
// OP_ADD_F	31	922	7408
// OP_STOREP_F	7408	7407	0
// OP_STORE_F	929	33	0
// OP_ADDRESS	28	148	7409
// OP_STOREP_FNC	518	7409	0
// OP_DONE	0	0	0
void () teleport_use = 
{
    self.nextthink = time + 0.2;
    force_retouch = 2;
    self.think = SUB_Null;
};

// trigger_teleport
// function begins at statement 10999, parm_start=7411
// OP_CALL0	641	0	0
// OP_ADDRESS	28	146	7414
// OP_STOREP_FNC	7290	7414	0
// OP_LOAD_S	28	196	7415
// OP_NOT_S	7415	0	7416
// OP_IFNOT	7416	3	0
// OP_STORE_V	7417	4	0
// OP_CALL1	457	0	0
// OP_ADDRESS	28	147	7418
// OP_STOREP_FNC	7406	7418	0
// OP_LOAD_F	28	195	7419
// OP_BITAND	7419	7233	7420
// OP_NOT_F	7420	0	7421
// OP_IFNOT	7421	13	0
// OP_STORE_V	7422	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	134	7423
// OP_LOAD_V	28	138	7426
// OP_ADD_V	7423	7426	7429
// OP_MUL_VF	7429	1727	7432
// OP_STORE_V	7432	7411	0
// OP_STORE_V	7411	4	0
// OP_STORE_V	7422	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
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
        ambientsound(o, "ambience/hum1.wav", 0.5, ATTN_STATIC);
    }
    
};

// trigger_skill_touch
// function begins at statement 11026, parm_start=7436
// OP_LOAD_S	29	129	7436
// OP_NE_S	7436	797	7437
// OP_IFNOT	7437	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4348	4	0
// OP_LOAD_S	28	206	7438
// OP_STORE_V	7438	7	0
// OP_CALL2	506	0	0
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
// function begins at statement 11035, parm_start=7440
// OP_CALL0	641	0	0
// OP_ADDRESS	28	146	7440
// OP_STOREP_FNC	7435	7440	0
// OP_DONE	0	0	0
void () trigger_setskill = 
{
    InitTrigger();
    self.touch = trigger_skill_touch;
};

// trigger_onlyregistered_touch
// function begins at statement 11039, parm_start=7442
// OP_LOAD_S	29	129	7442
// OP_NE_S	7442	797	7443
// OP_IFNOT	7443	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	7444
// OP_GT	7444	31	7445
// OP_IFNOT	7445	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	7446
// OP_ADD_F	31	929	7447
// OP_STOREP_F	7447	7446	0
// OP_STORE_V	4481	4	0
// OP_CALL1	488	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	206	7448
// OP_STOREP_S	652	7448	0
// OP_CALL0	519	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_GOTO	14	0	0
// OP_LOAD_S	28	206	7449
// OP_NE_S	7449	652	7450
// OP_IFNOT	7450	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	7451
// OP_STORE_V	7451	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	805	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
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
// function begins at statement 11073, parm_start=7453
// OP_STORE_V	805	4	0
// OP_CALL1	465	0	0
// OP_CALL0	641	0	0
// OP_ADDRESS	28	146	7453
// OP_STOREP_FNC	7441	7453	0
// OP_DONE	0	0	0
void () trigger_onlyregistered = 
{
    precache_sound("misc/talk.wav");
    InitTrigger();
    self.touch = trigger_onlyregistered_touch;
};

// hurt_on
// function begins at statement 11079, parm_start=7455
// OP_ADDRESS	28	104	7455
// OP_STOREP_F	239	7455	0
// OP_ADDRESS	28	150	7456
// OP_STOREP_F	720	7456	0
// OP_DONE	0	0	0
void () hurt_on = 
{
    self.solid = SOLID_TRIGGER;
    self.nextthink = -1;
};

// hurt_touch
// function begins at statement 11084, parm_start=7458
// OP_LOAD_F	29	163	7458
// OP_IFNOT	7458	14	0
// OP_ADDRESS	28	104	7459
// OP_STOREP_F	238	7459	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	421	7460
// OP_STORE_V	7460	13	0
// OP_CALL4	521	0	0
// OP_ADDRESS	28	148	7461
// OP_STOREP_FNC	7454	7461	0
// OP_ADDRESS	28	150	7462
// OP_ADD_F	31	708	7463
// OP_STOREP_F	7463	7462	0
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
// function begins at statement 11101, parm_start=7465
// OP_CALL0	641	0	0
// OP_ADDRESS	28	146	7465
// OP_STOREP_FNC	7457	7465	0
// OP_LOAD_F	28	421	7466
// OP_NOT_F	7466	0	7467
// OP_IFNOT	7467	3	0
// OP_ADDRESS	28	421	7468
// OP_STOREP_F	1660	7468	0
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
// function begins at statement 11110, parm_start=7471
// OP_LOAD_S	29	129	7471
// OP_EQ_S	7471	3388	7472
// OP_IFNOT	7472	8	0
// OP_ADDRESS	29	113	7473
// OP_LOAD_F	28	365	7476
// OP_LOAD_V	28	202	7477
// OP_MUL_FV	7476	7477	7480
// OP_MUL_VF	7480	1931	7483
// OP_STOREP_V	7483	7473	0
// OP_GOTO	25	0	0
// OP_LOAD_F	29	152	7486
// OP_GT	7486	650	7487
// OP_IFNOT	7487	22	0
// OP_ADDRESS	29	113	7488
// OP_LOAD_F	28	365	7491
// OP_LOAD_V	28	202	7492
// OP_MUL_FV	7491	7492	7495
// OP_MUL_VF	7495	1931	7498
// OP_STOREP_V	7498	7488	0
// OP_LOAD_S	29	129	7501
// OP_EQ_S	7501	797	7502
// OP_IFNOT	7502	13	0
// OP_LOAD_F	29	387	7503
// OP_LT	7503	31	7504
// OP_IFNOT	7504	10	0
// OP_ADDRESS	29	387	7505
// OP_ADD_F	31	7506	7507
// OP_STOREP_F	7507	7505	0
// OP_STORE_V	29	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	7508	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	195	7509
// OP_BITAND	7509	7469	7510
// OP_IFNOT	7510	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
// function begins at statement 11150, parm_start=7512
// OP_CALL0	641	0	0
// OP_STORE_V	7508	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	146	7512
// OP_STOREP_FNC	7470	7512	0
// OP_LOAD_F	28	365	7513
// OP_NOT_F	7513	0	7514
// OP_IFNOT	7514	3	0
// OP_ADDRESS	28	365	7515
// OP_STOREP_F	1259	7515	0
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
// function begins at statement 11161, parm_start=7517
// OP_LOAD_F	29	182	7517
// OP_BITOR	219	215	7518
// OP_BITOR	7518	216	7519
// OP_BITAND	7517	7519	7520
// OP_NE_F	7520	219	7521
// OP_IFNOT	7521	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	114	7522
// OP_LOAD_F	28	203	7523
// OP_LOAD_F	28	365	7524
// OP_MUL_F	7523	7524	7525
// OP_STOREP_F	7525	7522	0
// OP_ADDRESS	29	115	7526
// OP_LOAD_F	28	204	7527
// OP_LOAD_F	28	365	7528
// OP_MUL_F	7527	7528	7529
// OP_STOREP_F	7529	7526	0
// OP_LOAD_F	29	182	7530
// OP_BITAND	7530	223	7531
// OP_NOT_F	7531	0	7532
// OP_IFNOT	7532	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	182	7533
// OP_LOAD_F	29	182	7534
// OP_SUB_F	7534	223	7535
// OP_STOREP_F	7535	7533	0
// OP_ADDRESS	29	116	7536
// OP_LOAD_F	28	443	7537
// OP_STOREP_F	7537	7536	0
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
// function begins at statement 11191, parm_start=7539
// OP_LOAD_F	28	365	7539
// OP_NOT_F	7539	0	7540
// OP_IFNOT	7540	3	0
// OP_ADDRESS	28	365	7541
// OP_STOREP_F	2246	7541	0
// OP_LOAD_F	28	443	7542
// OP_NOT_F	7542	0	7543
// OP_IFNOT	7543	3	0
// OP_ADDRESS	28	443	7544
// OP_STOREP_F	2246	7544	0
// OP_LOAD_V	28	117	7545
// OP_EQ_V	7545	638	7548
// OP_IFNOT	7548	3	0
// OP_ADDRESS	28	117	7549
// OP_STOREP_V	7552	7549	0
// OP_CALL0	641	0	0
// OP_ADDRESS	28	146	7555
// OP_STOREP_FNC	7516	7555	0
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

