void () info_player_start;
void (entity targ, entity attacker) ClientObituary;
void () monster_death_use;
// CanDamage
// function begins at statement 9724, parm_start=8071
// OP_LOAD_F	8071	103	8073
// OP_EQ_F	8073	238	8074
// OP_IFNOT	8074	18	0
// OP_LOAD_V	8072	105	8075
// OP_STORE_V	8075	4	0
// OP_LOAD_V	8071	94	8078
// OP_LOAD_V	8071	98	8081
// OP_ADD_V	8078	8081	8084
// OP_MUL_FV	1182	8084	8087
// OP_STORE_V	8087	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	8090
// OP_IFNOT	8090	2	0
// OP_RETURN	219	0	0
// OP_EQ_E	78	8071	8091
// OP_IFNOT	8091	2	0
// OP_RETURN	219	0	0
// OP_RETURN	218	0	0
// OP_LOAD_V	8072	105	8092
// OP_STORE_V	8092	4	0
// OP_LOAD_V	8071	105	8095
// OP_STORE_V	8095	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	8098
// OP_IFNOT	8098	2	0
// OP_RETURN	219	0	0
// OP_LOAD_V	8072	105	8099
// OP_STORE_V	8099	4	0
// OP_LOAD_V	8071	105	8102
// OP_ADD_V	8102	8105	8108
// OP_STORE_V	8108	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	8111
// OP_IFNOT	8111	2	0
// OP_RETURN	219	0	0
// OP_LOAD_V	8072	105	8112
// OP_STORE_V	8112	4	0
// OP_LOAD_V	8071	105	8115
// OP_ADD_V	8115	8118	8121
// OP_STORE_V	8121	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	8124
// OP_IFNOT	8124	2	0
// OP_RETURN	219	0	0
// OP_LOAD_V	8072	105	8125
// OP_STORE_V	8125	4	0
// OP_LOAD_V	8071	105	8128
// OP_ADD_V	8128	8131	8134
// OP_STORE_V	8134	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	8137
// OP_IFNOT	8137	2	0
// OP_RETURN	219	0	0
// OP_LOAD_V	8072	105	8138
// OP_STORE_V	8138	4	0
// OP_LOAD_V	8071	105	8141
// OP_ADD_V	8141	8144	8147
// OP_STORE_V	8147	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	8150
// OP_IFNOT	8150	2	0
// OP_RETURN	219	0	0
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float (entity targ, entity inflictor) CanDamage = 
{
    
    if(targ.movetype == MOVETYPE_PUSH)
    {
        traceline(inflictor.origin, 0.5 * (targ.absmin + targ.absmax), TRUE, self);
        
        if(trace_fraction == 1)
        {
            return TRUE;
        }
        
        
        if(trace_ent == targ)
        {
            return TRUE;
        }
        
        return FALSE;
    }
    
    traceline(inflictor.origin, targ.origin, TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15.000 15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15.000 -15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15.000 15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15.000 -15.000 0.000', TRUE, self);
    
    if(trace_fraction == 1)
    {
        return TRUE;
    }
    
    return FALSE;
};

// Killed
// function begins at statement 9800, parm_start=8152
// OP_STORE_ENT	28	8154	0
// OP_STORE_ENT	8152	28	0
// OP_LOAD_F	28	152	8155
// OP_LT	8155	8156	8157
// OP_IFNOT	8157	3	0
// OP_ADDRESS	28	152	8158
// OP_STOREP_F	8156	8158	0
// OP_LOAD_F	28	103	8159
// OP_EQ_F	8159	238	8160
// OP_LOAD_F	28	103	8161
// OP_EQ_F	8161	233	8162
// OP_OR	8160	8162	8163
// OP_IFNOT	8163	5	0
// OP_LOAD_FNC	28	376	8164
// OP_CALL0	8164	0	0
// OP_STORE_ENT	8154	28	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	8165
// OP_STOREP_ENT	8153	8165	0
// OP_LOAD_F	28	182	8166
// OP_BITAND	8166	224	8167
// OP_IFNOT	8167	6	0
// OP_ADD_F	42	819	8168
// OP_STORE_F	8168	42	0
// OP_STORE_V	353	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	507	0	0
// OP_LOAD_F	28	165	8169
// OP_NOT_F	8169	0	8170
// OP_IFNOT	8170	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8153	7	0
// OP_CALL2	8069	0	0
// OP_ADDRESS	28	163	8171
// OP_STOREP_F	256	8171	0
// OP_ADDRESS	28	146	8172
// OP_STOREP_FNC	531	8172	0
// OP_CALL0	8070	0	0
// OP_LOAD_FNC	28	376	8173
// OP_CALL0	8173	0	0
// OP_STORE_ENT	8154	28	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) Killed = 
{
    local entity oself;
    oself = self;
    self = targ;
    
    if(self.health < -99)
    {
        self.health = -99;
    }
    
    
    if((self.movetype == MOVETYPE_PUSH) || (self.movetype == MOVETYPE_NONE))
    {
        self.th_die();
        self = oself;
        return;
    }
    
    self.enemy = attacker;
    
    if(self.flags & FL_MONSTER)
    {
        killed_monsters = killed_monsters + 1;
        WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    }
    
    
    if(!self.deadflag)
    {
        ClientObituary(self, attacker);
    }
    
    self.takedamage = DAMAGE_NO;
    self.touch = SUB_Null;
    monster_death_use();
    self.th_die();
    self = oself;
};

// T_Damage
// function begins at statement 9842, parm_start=8174
// OP_LOAD_F	8174	163	8184
// OP_NOT_F	8184	0	8185
// OP_IFNOT	8185	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	8176	361	0
// OP_LOAD_F	8176	391	8186
// OP_GT	8186	31	8187
// OP_IFNOT	8187	3	0
// OP_MUL_F	8177	825	8188
// OP_STORE_F	8188	8177	0
// OP_STORE_V	8177	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	1	8183	0
// OP_LOAD_F	8174	182	8189
// OP_BITAND	8189	222	8190
// OP_IFNOT	8190	11	0
// OP_ADDRESS	8174	198	8191
// OP_LOAD_F	8174	198	8192
// OP_ADD_F	8192	8183	8193
// OP_STOREP_F	8193	8191	0
// OP_ADDRESS	8174	199	8194
// OP_LOAD_F	8174	199	8195
// OP_ADD_F	8195	8182	8196
// OP_STOREP_F	8196	8194	0
// OP_ADDRESS	8174	200	8197
// OP_STOREP_ENT	8175	8197	0
// OP_NE_E	8175	30	8198
// OP_LOAD_F	8174	103	8199
// OP_EQ_F	8199	234	8200
// OP_AND	8198	8200	8201
// OP_IFNOT	8201	17	0
// OP_LOAD_V	8174	105	8202
// OP_LOAD_V	8175	94	8205
// OP_LOAD_V	8175	98	8208
// OP_ADD_V	8205	8208	8211
// OP_MUL_VF	8211	1182	8214
// OP_SUB_V	8202	8214	8217
// OP_STORE_V	8217	8178	0
// OP_STORE_V	8178	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	8178	0
// OP_ADDRESS	8174	113	8220
// OP_LOAD_V	8174	113	8223
// OP_MUL_VF	8178	8177	8226
// OP_MUL_VF	8226	843	8229
// OP_ADD_V	8223	8229	8232
// OP_STOREP_V	8232	8220	0
// OP_LOAD_F	8174	389	8235
// OP_GE	8235	31	8236
// OP_LT	8177	1957	8237
// OP_AND	8236	8237	8238
// OP_IFNOT	8238	14	0
// OP_LOAD_F	28	394	8239
// OP_LT	8239	31	8240
// OP_IFNOT	8240	10	0
// OP_STORE_V	8174	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	8241	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	394	8242
// OP_ADD_F	31	821	8243
// OP_STOREP_F	8243	8242	0
// OP_RETURN	0	0	0
// OP_ADDRESS	8174	152	8244
// OP_LOAD_F	8174	152	8245
// OP_SUB_F	8245	8183	8246
// OP_STOREP_F	8246	8244	0
// OP_LOAD_F	8174	152	8247
// OP_LE	8247	817	8248
// OP_IFNOT	8248	5	0
// OP_STORE_V	8174	4	0
// OP_STORE_V	8176	7	0
// OP_CALL2	8151	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	8181	0
// OP_STORE_ENT	8174	28	0
// OP_LOAD_F	28	182	8249
// OP_BITAND	8249	224	8250
// OP_NE_E	8176	30	8251
// OP_AND	8250	8251	8252
// OP_IFNOT	8252	23	0
// OP_NE_E	28	8176	8253
// OP_LOAD_ENT	28	181	8254
// OP_NE_E	8176	8254	8255
// OP_AND	8253	8255	8256
// OP_IFNOT	8256	18	0
// OP_LOAD_S	28	129	8257
// OP_LOAD_S	8176	129	8258
// OP_NE_S	8257	8258	8259
// OP_LOAD_S	28	129	8260
// OP_EQ_S	8260	7929	8261
// OP_OR	8259	8261	8262
// OP_IFNOT	8262	11	0
// OP_LOAD_ENT	28	181	8263
// OP_LOAD_S	8263	129	8264
// OP_EQ_S	8264	880	8265
// OP_IFNOT	8265	4	0
// OP_ADDRESS	28	377	8266
// OP_LOAD_ENT	28	181	8267
// OP_STOREP_ENT	8267	8266	0
// OP_ADDRESS	28	181	8268
// OP_STOREP_ENT	8176	8268	0
// OP_CALL0	7936	0	0
// OP_LOAD_FNC	28	375	8269
// OP_IFNOT	8269	10	0
// OP_LOAD_FNC	28	375	8270
// OP_STORE_V	8176	4	0
// OP_STORE_V	8183	7	0
// OP_CALL2	8270	0	0
// OP_EQ_F	363	823	8271
// OP_IFNOT	8271	4	0
// OP_ADDRESS	28	388	8272
// OP_ADD_F	31	827	8273
// OP_STOREP_F	8273	8272	0
// OP_STORE_ENT	8181	28	0
// OP_DONE	0	0	0
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage = 
{
    local vector dir;
    local entity oldself;
    local float save;
    local float take;
    
    if(!targ.takedamage)
    {
        return;
    }
    
    damage_attacker = attacker;
    
    if(attacker.super_damage_finished > time)
    {
        damage = damage * 4;
    }
    
    take = ceil(damage);
    
    if(targ.flags & FL_CLIENT)
    {
        targ.dmg_take = targ.dmg_take + take;
        targ.dmg_save = targ.dmg_save + save;
        targ.dmg_inflictor = inflictor;
    }
    
    
    if((inflictor != world) && (targ.movetype == MOVETYPE_WALK))
    {
        dir = targ.origin - ((inflictor.absmin + inflictor.absmax) * 0.5);
        dir = normalize(dir);
        targ.velocity = targ.velocity + ((dir * damage) * 8);
    }
    
    
    if((targ.invincible_finished >= time) && (damage < 100))
    {
        
        if(self.invincible_sound < time)
        {
            sound(targ, CHAN_ITEM, "items/protect3.wav", 1, ATTN_NORM);
            self.invincible_sound = time + 2;
        }
        
        return;
    }
    
    targ.health = targ.health - take;
    
    if(targ.health <= 0)
    {
        Killed(targ, attacker);
        return;
    }
    
    oldself = self;
    self = targ;
    
    if((self.flags & FL_MONSTER) && (attacker != world))
    {
        
        if((self != attacker) && (attacker != self.enemy))
        {
            
            if((self.classname != attacker.classname) || (self.classname == "monster_army"))
            {
                
                if(self.enemy.classname == "player")
                {
                    self.oldenemy = self.enemy;
                }
                
                self.enemy = attacker;
                FoundTarget();
            }
            
        }
        
    }
    
    
    if(self.th_pain)
    {
        self.th_pain(attacker, take);
        
        if(skill == 3)
        {
            self.pain_finished = time + 5;
        }
        
    }
    
    self = oldself;
};

// T_RadiusDamage
// function begins at statement 9960, parm_start=8275
// OP_LOAD_V	8275	105	8284
// OP_STORE_V	8284	4	0
// OP_ADD_F	8277	1632	8287
// OP_STORE_V	8287	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	8280	0
// OP_IFNOT	8280	51	0
// OP_NE_E	8280	8278	8288
// OP_IFNOT	8288	46	0
// OP_LOAD_F	8280	163	8289
// OP_IFNOT	8289	44	0
// OP_LOAD_V	8280	105	8290
// OP_LOAD_V	8280	134	8293
// OP_LOAD_V	8280	138	8296
// OP_ADD_V	8293	8296	8299
// OP_MUL_VF	8299	1182	8302
// OP_ADD_V	8290	8302	8305
// OP_STORE_V	8305	8281	0
// OP_LOAD_V	8275	105	8308
// OP_SUB_V	8308	8281	8311
// OP_STORE_V	8311	4	0
// OP_CALL1	471	0	0
// OP_MUL_F	1182	1	8314
// OP_STORE_F	8314	8279	0
// OP_LT	8279	817	8315
// OP_IFNOT	8315	2	0
// OP_STORE_F	817	8279	0
// OP_SUB_F	8277	8279	8316
// OP_STORE_F	8316	8279	0
// OP_EQ_E	8280	8276	8317
// OP_IFNOT	8317	3	0
// OP_MUL_F	8279	1182	8318
// OP_STORE_F	8318	8279	0
// OP_GT	8279	817	8319
// OP_IFNOT	8319	20	0
// OP_STORE_V	8280	4	0
// OP_STORE_V	8275	7	0
// OP_CALL2	536	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	8280	129	8320
// OP_EQ_S	8320	7886	8321
// OP_IFNOT	8321	8	0
// OP_STORE_V	8280	4	0
// OP_STORE_V	8275	7	0
// OP_STORE_V	8276	10	0
// OP_MUL_F	8279	1182	8322
// OP_STORE_V	8322	13	0
// OP_CALL4	534	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	8280	4	0
// OP_STORE_V	8275	7	0
// OP_STORE_V	8276	10	0
// OP_STORE_V	8279	13	0
// OP_CALL4	534	0	0
// OP_LOAD_ENT	8280	164	8323
// OP_STORE_ENT	8323	8280	0
// OP_GOTO	-50	0	0
// OP_DONE	0	0	0
void (entity inflictor, entity attacker, float damage, entity ignore) T_RadiusDamage = 
{
    local float points;
    local entity head;
    local vector org;
    head = findradius(inflictor.origin, damage + 40);
    
    while(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage)
            {
                org = head.origin + ((head.mins + head.maxs) * 0.5);
                points = 0.5 * (vlen(inflictor.origin - org));
                
                if(points < 0)
                {
                    points = 0;
                }
                
                points = damage - points;
                
                if(head == attacker)
                {
                    points = points * 0.5;
                }
                
                
                if(points > 0)
                {
                    
                    if(CanDamage(head, inflictor))
                    {
                        if(head.classname == "monster_shambler")
                        {
                            T_Damage(head, inflictor, attacker, points * 0.5);
                        }
                        else
                        {
                            T_Damage(head, inflictor, attacker, points);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
    
};

// T_BeamDamage
// function begins at statement 10018, parm_start=8325
// OP_LOAD_V	8325	105	8329
// OP_STORE_V	8329	4	0
// OP_ADD_F	8326	1632	8332
// OP_STORE_V	8332	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	8328	0
// OP_IFNOT	8328	43	0
// OP_LOAD_F	8328	163	8333
// OP_IFNOT	8333	38	0
// OP_LOAD_V	8325	105	8334
// OP_LOAD_V	8328	105	8337
// OP_SUB_V	8334	8337	8340
// OP_STORE_V	8340	4	0
// OP_CALL1	471	0	0
// OP_MUL_F	1182	1	8343
// OP_STORE_F	8343	8327	0
// OP_LT	8327	817	8344
// OP_IFNOT	8344	2	0
// OP_STORE_F	817	8327	0
// OP_SUB_F	8326	8327	8345
// OP_STORE_F	8345	8327	0
// OP_EQ_E	8328	8325	8346
// OP_IFNOT	8346	3	0
// OP_MUL_F	8327	1182	8347
// OP_STORE_F	8347	8327	0
// OP_GT	8327	817	8348
// OP_IFNOT	8348	20	0
// OP_STORE_V	8328	4	0
// OP_STORE_V	8325	7	0
// OP_CALL2	536	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	8328	129	8349
// OP_EQ_S	8349	7886	8350
// OP_IFNOT	8350	8	0
// OP_STORE_V	8328	4	0
// OP_STORE_V	8325	7	0
// OP_STORE_V	8325	10	0
// OP_MUL_F	8327	1182	8351
// OP_STORE_V	8351	13	0
// OP_CALL4	534	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	8328	4	0
// OP_STORE_V	8325	7	0
// OP_STORE_V	8325	10	0
// OP_STORE_V	8327	13	0
// OP_CALL4	534	0	0
// OP_LOAD_ENT	8328	164	8352
// OP_STORE_ENT	8352	8328	0
// OP_GOTO	-42	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) T_BeamDamage = 
{
    local float points;
    local entity head;
    head = findradius(attacker.origin, damage + 40);
    
    while(head)
    {
        
        if(head.takedamage)
        {
            points = 0.5 * (vlen(attacker.origin - head.origin));
            
            if(points < 0)
            {
                points = 0;
            }
            
            points = damage - points;
            
            if(head == attacker)
            {
                points = points * 0.5;
            }
            
            
            if(points > 0)
            {
                
                if(CanDamage(head, attacker))
                {
                    if(head.classname == "monster_shambler")
                    {
                        T_Damage(head, attacker, attacker, points * 0.5);
                    }
                    else
                    {
                        T_Damage(head, attacker, attacker, points);
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
    
};

