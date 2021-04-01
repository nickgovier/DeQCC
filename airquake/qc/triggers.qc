entity stemp;
entity otemp;
entity s;
entity old;
// trigger_reactivate
// function begins at statement 23434, parm_start=16183
// OP_ADDRESS	28	129	16183
// OP_STOREP_F	292	16183	0
// OP_DONE	0	0	0
void () trigger_reactivate = 
{
    self.solid = SOLID_TRIGGER;
};

float SPAWNFLAG_NOMESSAGE = 1.000;
float SPAWNFLAG_NOTOUCH = 1.000;
// multi_wait
// function begins at statement 23437, parm_start=16187
// OP_LOAD_F	28	210	16187
// OP_IFNOT	16187	8	0
// OP_ADDRESS	28	177	16188
// OP_LOAD_F	28	210	16189
// OP_STOREP_F	16189	16188	0
// OP_ADDRESS	28	188	16190
// OP_STOREP_F	305	16190	0
// OP_ADDRESS	28	129	16191
// OP_STOREP_F	293	16191	0
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
// function begins at statement 23447, parm_start=16193
// OP_LOAD_F	28	175	16193
// OP_GT	16193	31	16194
// OP_IFNOT	16194	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	154	16195
// OP_EQ_S	16195	16196	16197
// OP_IFNOT	16197	11	0
// OP_LOAD_ENT	28	206	16198
// OP_LOAD_S	16198	154	16199
// OP_NE_S	16199	766	16200
// OP_IFNOT	16200	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	41	677	16201
// OP_STORE_F	16201	41	0
// OP_STORE_V	388	4	0
// OP_STORE_V	352	7	0
// OP_CALL2	542	0	0
// OP_LOAD_S	28	233	16202
// OP_IFNOT	16202	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	16203
// OP_STORE_V	16203	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	188	16204
// OP_STOREP_F	304	16204	0
// OP_LOAD_ENT	28	206	16205
// OP_STORE_ENT	16205	395	0
// OP_CALL0	567	0	0
// OP_LOAD_F	28	462	16206
// OP_GT	16206	619	16207
// OP_IFNOT	16207	8	0
// OP_ADDRESS	28	173	16208
// OP_STOREP_FNC	16186	16208	0
// OP_ADDRESS	28	175	16209
// OP_LOAD_F	28	462	16210
// OP_ADD_F	31	16210	16211
// OP_STOREP_F	16211	16209	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	171	16212
// OP_STOREP_FNC	566	16212	0
// OP_ADDRESS	28	175	16213
// OP_ADD_F	31	655	16214
// OP_STOREP_F	16214	16213	0
// OP_ADDRESS	28	173	16215
// OP_STOREP_FNC	568	16215	0
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
        
        found_secrets = found_secrets + 1.000;
        WriteByte(MSG_ALL, SVC_FOUNDSECRET);
    }
    
    
    if(self.noise)
    {
        sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    }
    
    self.takedamage = DAMAGE_NO;
    activator = self.enemy;
    SUB_UseTargets();
    if(self.wait > 0.000)
    {
        self.think = multi_wait;
        self.nextthink = time + self.wait;
    }
    else
    {
        self.touch = SUB_Null;
        self.nextthink = time + 0.100;
        self.think = SUB_Remove;
    }
    
};

// multi_killed
// function begins at statement 23496, parm_start=16217
// OP_ADDRESS	28	206	16217
// OP_STOREP_ENT	396	16217	0
// OP_CALL0	16192	0	0
// OP_DONE	0	0	0
void () multi_killed = 
{
    self.enemy = damage_attacker;
    multi_trigger();
};

// multi_use
// function begins at statement 23500, parm_start=16219
// OP_ADDRESS	28	206	16219
// OP_STOREP_ENT	395	16219	0
// OP_CALL0	16192	0	0
// OP_DONE	0	0	0
void () multi_use = 
{
    self.enemy = activator;
    multi_trigger();
};

// multi_touch
// function begins at statement 23504, parm_start=16221
// OP_LOAD_ENT	29	226	16221
// OP_LOAD_S	16221	154	16222
// OP_NE_S	16222	766	16223
// OP_IFNOT	16223	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	188	16224
// OP_NOT_F	16224	0	16225
// OP_IFNOT	16225	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	227	16226
// OP_NE_V	16226	607	16229
// OP_IFNOT	16229	9	0
// OP_LOAD_V	29	142	16230
// OP_STORE_V	16230	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	227	16233
// OP_MUL_V	59	16233	16236
// OP_LT	16236	619	16237
// OP_IFNOT	16237	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	16238
// OP_LOAD_ENT	29	226	16239
// OP_STOREP_ENT	16239	16238	0
// OP_CALL0	16192	0	0
// OP_DONE	0	0	0
void () multi_touch = 
{
    
    if(other.owner.classname != "player")
    {
        return;
    }
    
    
    if(!other.takedamage)
    {
        return;
    }
    
    
    if(self.movedir != '0.000 0.000 0.000')
    {
        makevectors(other.angles);
        
        if((v_forward * self.movedir) < 0.000)
        {
            return;
        }
        
    }
    
    self.enemy = other.owner;
    multi_trigger();
};

// trigger_multiple
// function begins at statement 23529, parm_start=16241
// OP_LOAD_F	28	232	16241
// OP_EQ_F	16241	677	16242
// OP_IFNOT	16242	6	0
// OP_STORE_V	16243	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16244
// OP_STOREP_S	16243	16244	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	232	16245
// OP_EQ_F	16245	806	16246
// OP_IFNOT	16246	6	0
// OP_STORE_V	774	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16247
// OP_STOREP_S	774	16247	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	232	16248
// OP_EQ_F	16248	788	16249
// OP_IFNOT	16249	5	0
// OP_STORE_V	16250	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16251
// OP_STOREP_S	16250	16251	0
// OP_LOAD_F	28	462	16252
// OP_NOT_F	16252	0	16253
// OP_IFNOT	16253	3	0
// OP_ADDRESS	28	462	16254
// OP_STOREP_F	1349	16254	0
// OP_ADDRESS	28	172	16255
// OP_STOREP_FNC	16218	16255	0
// OP_CALL0	610	0	0
// OP_LOAD_F	28	177	16256
// OP_IFNOT	16256	20	0
// OP_LOAD_F	28	220	16257
// OP_BITAND	16257	16185	16258
// OP_IFNOT	16258	3	0
// OP_STORE_V	16259	4	0
// OP_CALL1	505	0	0
// OP_ADDRESS	28	210	16260
// OP_LOAD_F	28	177	16261
// OP_STOREP_F	16261	16260	0
// OP_ADDRESS	28	411	16262
// OP_STOREP_FNC	16216	16262	0
// OP_ADDRESS	28	188	16263
// OP_STOREP_F	305	16263	0
// OP_ADDRESS	28	129	16264
// OP_STOREP_F	293	16264	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	16265
// OP_STORE_V	16265	7	0
// OP_CALL2	497	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	220	16268
// OP_BITAND	16268	16185	16269
// OP_NOT_F	16269	0	16270
// OP_IFNOT	16270	3	0
// OP_ADDRESS	28	171	16271
// OP_STOREP_FNC	16220	16271	0
// OP_DONE	0	0	0
void () trigger_multiple = 
{
    if(self.sounds == 1.000)
    {
        precache_sound("misc/secret.wav");
        self.noise = "misc/secret.wav";
    }
    else
    {
        if(self.sounds == 2.000)
        {
            precache_sound("misc/talk.wav");
            self.noise = "misc/talk.wav";
        }
        else
        {
            
            if(self.sounds == 3.000)
            {
                precache_sound("misc/trigger1.wav");
                self.noise = "misc/trigger1.wav";
            }
            
        }
        
    }
    
    
    if(!self.wait)
    {
        self.wait = 0.200;
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
// function begins at statement 23588, parm_start=16273
// OP_ADDRESS	28	462	16273
// OP_STOREP_F	689	16273	0
// OP_CALL0	16240	0	0
// OP_DONE	0	0	0
void () trigger_once = 
{
    self.wait = -1.000;
    trigger_multiple();
};

// trigger_relay
// function begins at statement 23592, parm_start=16275
// OP_ADDRESS	28	172	16275
// OP_STOREP_FNC	567	16275	0
// OP_DONE	0	0	0
void () trigger_relay = 
{
    self.use = SUB_UseTargets;
};

// trigger_secret
// function begins at statement 23595, parm_start=16277
// OP_ADD_F	39	677	16277
// OP_STORE_F	16277	39	0
// OP_ADDRESS	28	462	16278
// OP_STOREP_F	689	16278	0
// OP_LOAD_S	28	231	16279
// OP_NOT_S	16279	0	16280
// OP_IFNOT	16280	3	0
// OP_ADDRESS	28	231	16281
// OP_STOREP_S	16282	16281	0
// OP_LOAD_F	28	232	16283
// OP_NOT_F	16283	0	16284
// OP_IFNOT	16284	3	0
// OP_ADDRESS	28	232	16285
// OP_STOREP_F	677	16285	0
// OP_LOAD_F	28	232	16286
// OP_EQ_F	16286	677	16287
// OP_IFNOT	16287	6	0
// OP_STORE_V	16243	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16288
// OP_STOREP_S	16243	16288	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	232	16289
// OP_EQ_F	16289	806	16290
// OP_IFNOT	16290	5	0
// OP_STORE_V	774	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16291
// OP_STOREP_S	774	16291	0
// OP_CALL0	16240	0	0
// OP_DONE	0	0	0
void () trigger_secret = 
{
    total_secrets = total_secrets + 1.000;
    self.wait = -1.000;
    
    if(!self.message)
    {
        self.message = "You found a secret area!";
    }
    
    
    if(!self.sounds)
    {
        self.sounds = 1.000;
    }
    
    if(self.sounds == 1.000)
    {
        precache_sound("misc/secret.wav");
        self.noise = "misc/secret.wav";
    }
    else
    {
        
        if(self.sounds == 2.000)
        {
            precache_sound("misc/talk.wav");
            self.noise = "misc/talk.wav";
        }
        
    }
    
    trigger_multiple();
};

// counter_use
// function begins at statement 23626, parm_start=16293
// OP_ADDRESS	28	480	16294
// OP_LOAD_F	28	480	16295
// OP_SUB_F	16295	677	16296
// OP_STOREP_F	16296	16294	0
// OP_LOAD_F	28	480	16297
// OP_LT	16297	619	16298
// OP_IFNOT	16298	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	480	16299
// OP_NE_F	16299	619	16300
// OP_IFNOT	16300	33	0
// OP_LOAD_S	395	154	16301
// OP_EQ_S	16301	766	16302
// OP_LOAD_F	28	220	16303
// OP_BITAND	16303	16184	16304
// OP_EQ_F	16304	619	16305
// OP_AND	16302	16305	16306
// OP_IFNOT	16306	25	0
// OP_LOAD_F	28	480	16307
// OP_GE	16307	808	16308
// OP_IFNOT	16308	5	0
// OP_STORE_V	395	4	0
// OP_STORE_V	16309	7	0
// OP_CALL2	555	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	480	16310
// OP_EQ_F	16310	788	16311
// OP_IFNOT	16311	5	0
// OP_STORE_V	395	4	0
// OP_STORE_V	16312	7	0
// OP_CALL2	555	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	480	16313
// OP_EQ_F	16313	806	16314
// OP_IFNOT	16314	5	0
// OP_STORE_V	395	4	0
// OP_STORE_V	16315	7	0
// OP_CALL2	555	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	395	4	0
// OP_STORE_V	16316	7	0
// OP_CALL2	555	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	395	154	16317
// OP_EQ_S	16317	766	16318
// OP_LOAD_F	28	220	16319
// OP_BITAND	16319	16184	16320
// OP_EQ_F	16320	619	16321
// OP_AND	16318	16321	16322
// OP_IFNOT	16322	4	0
// OP_STORE_V	395	4	0
// OP_STORE_V	16323	7	0
// OP_CALL2	555	0	0
// OP_ADDRESS	28	206	16324
// OP_STOREP_ENT	395	16324	0
// OP_CALL0	16192	0	0
// OP_DONE	0	0	0
void () counter_use = 
{
    local string junk;
    self.count = self.count - 1.000;
    
    if(self.count < 0.000)
    {
        return;
    }
    
    
    if(self.count != 0.000)
    {
        
        if((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == 0.000))
        {
            if(self.count >= 4.000)
            {
                centerprint(activator, "There are more to go...");
            }
            else
            {
                if(self.count == 3.000)
                {
                    centerprint(activator, "Only 3 more to go...");
                }
                else
                {
                    if(self.count == 2.000)
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
    
    
    if((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == 0.000))
    {
        centerprint(activator, "Sequence completed!");
    }
    
    self.enemy = activator;
    multi_trigger();
};

// trigger_counter
// function begins at statement 23683, parm_start=16326
// OP_ADDRESS	28	462	16326
// OP_STOREP_F	689	16326	0
// OP_LOAD_F	28	480	16327
// OP_NOT_F	16327	0	16328
// OP_IFNOT	16328	3	0
// OP_ADDRESS	28	480	16329
// OP_STOREP_F	806	16329	0
// OP_ADDRESS	28	172	16330
// OP_STOREP_FNC	16292	16330	0
// OP_DONE	0	0	0
void () trigger_counter = 
{
    self.wait = -1.000;
    
    if(!self.count)
    {
        self.count = 2.000;
    }
    
    self.use = counter_use;
};

float PLAYER_ONLY = 1.000;
float SILENT = 2.000;
// play_teleport
// function begins at statement 23693, parm_start=16334
// OP_CALL0	501	0	0
// OP_MUL_F	1	813	16336
// OP_STORE_F	16336	16334	0
// OP_LT	16334	677	16337
// OP_IFNOT	16337	3	0
// OP_STORE_S	12915	16335	0
// OP_GOTO	14	0	0
// OP_LT	16334	806	16338
// OP_IFNOT	16338	3	0
// OP_STORE_S	12916	16335	0
// OP_GOTO	10	0	0
// OP_LT	16334	788	16339
// OP_IFNOT	16339	3	0
// OP_STORE_S	12917	16335	0
// OP_GOTO	6	0	0
// OP_LT	16334	808	16340
// OP_IFNOT	16340	3	0
// OP_STORE_S	12918	16335	0
// OP_GOTO	2	0	0
// OP_STORE_S	12919	16335	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	16335	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () play_teleport = 
{
    local float v;
    local string tmpstr;
    v = random() * 5.000;
    if(v < 1.000)
    {
        tmpstr = "misc/r_tele1.wav";
    }
    else
    {
        if(v < 2.000)
        {
            tmpstr = "misc/r_tele2.wav";
        }
        else
        {
            if(v < 3.000)
            {
                tmpstr = "misc/r_tele3.wav";
            }
            else
            {
                if(v < 4.000)
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
    
    sound(self, CHAN_VOICE, tmpstr, 1.000, ATTN_NORM);
    remove(self);
};

// spawn_tfog
// function begins at statement 23722, parm_start=16341
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16180	0
// OP_ADDRESS	16180	130	16344
// OP_STOREP_V	16341	16344	0
// OP_ADDRESS	16180	175	16347
// OP_ADD_F	31	1349	16348
// OP_STOREP_F	16348	16347	0
// OP_ADDRESS	16180	173	16349
// OP_STOREP_FNC	16333	16349	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	368	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	16341	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	16342	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	16343	7	0
// OP_CALL2	546	0	0
// OP_DONE	0	0	0
void (vector org) spawn_tfog = 
{
    s = spawn();
    s.origin = org;
    s.nextthink = time + 0.200;
    s.think = play_teleport;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_TELEPORT);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, 0.000);
    WriteCoord(MSG_BROADCAST, 0.000);
};

// tdeath_touch
// function begins at statement 23747, parm_start=16351
// OP_LOAD_ENT	28	226	16351
// OP_EQ_E	29	16351	16352
// OP_IFNOT	16352	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	154	16353
// OP_EQ_S	16353	766	16354
// OP_IFNOT	16354	17	0
// OP_LOAD_F	29	424	16355
// OP_GT	16355	31	16356
// OP_IFNOT	16356	3	0
// OP_ADDRESS	28	154	16357
// OP_STOREP_S	15122	16357	0
// OP_LOAD_ENT	28	226	16358
// OP_LOAD_S	16358	154	16359
// OP_NE_S	16359	766	16360
// OP_IFNOT	16360	8	0
// OP_LOAD_ENT	28	226	16361
// OP_STORE_V	16361	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	16362	13	0
// OP_CALL4	569	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	177	16363
// OP_IFNOT	16363	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	16362	13	0
// OP_CALL4	569	0	0
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
            T_Damage(self.owner, self, self, 50000.000);
            return;
        }
        
    }
    
    
    if(other.health)
    {
        T_Damage(other, self, self, 50000.000);
    }
    
};

// spawn_tdeath
// function begins at statement 23778, parm_start=16364
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16368	0
// OP_ADDRESS	16368	154	16369
// OP_STOREP_S	14868	16369	0
// OP_ADDRESS	16368	128	16370
// OP_STOREP_F	281	16370	0
// OP_ADDRESS	16368	129	16371
// OP_STOREP_F	292	16371	0
// OP_ADDRESS	16368	142	16372
// OP_STOREP_V	607	16372	0
// OP_STORE_V	16368	4	0
// OP_LOAD_V	16367	159	16375
// OP_SUB_V	16375	16378	16381
// OP_STORE_V	16381	7	0
// OP_LOAD_V	16367	163	16384
// OP_ADD_V	16384	16378	16387
// OP_STORE_V	16387	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	16368	4	0
// OP_STORE_V	16364	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	16368	171	16390
// OP_STOREP_FNC	16350	16390	0
// OP_ADDRESS	16368	175	16391
// OP_ADD_F	31	1349	16392
// OP_STOREP_F	16392	16391	0
// OP_ADDRESS	16368	173	16393
// OP_STOREP_FNC	568	16393	0
// OP_ADDRESS	16368	226	16394
// OP_STOREP_ENT	16367	16394	0
// OP_STORE_F	806	33	0
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
    death.nextthink = time + 0.200;
    death.think = SUB_Remove;
    death.owner = death_owner;
    force_retouch = 2.000;
};

// teleport_touch
// function begins at statement 23810, parm_start=16396
// OP_LOAD_S	28	222	16401
// OP_IFNOT	16401	5	0
// OP_LOAD_F	28	175	16402
// OP_LT	16402	31	16403
// OP_IFNOT	16403	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	220	16404
// OP_BITAND	16404	16331	16405
// OP_IFNOT	16405	5	0
// OP_LOAD_S	29	154	16406
// OP_NE_S	16406	766	16407
// OP_IFNOT	16407	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	177	16408
// OP_LE	16408	619	16409
// OP_LOAD_F	29	129	16410
// OP_NE_F	16410	294	16411
// OP_OR	16409	16411	16412
// OP_IFNOT	16412	2	0
// OP_RETURN	0	0	0
// OP_CALL0	567	0	0
// OP_LOAD_V	29	130	16413
// OP_STORE_V	16413	4	0
// OP_CALL1	13493	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	16416
// OP_STORE_V	16416	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	16396	0
// OP_NOT_ENT	16396	0	16417
// OP_IFNOT	16417	3	0
// OP_STORE_V	16418	4	0
// OP_CALL1	505	0	0
// OP_LOAD_V	16396	444	16419
// OP_STORE_V	16419	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	16396	130	16422
// OP_MUL_FV	815	59	16425
// OP_ADD_V	16422	16425	16428
// OP_STORE_V	16428	16398	0
// OP_STORE_V	16398	4	0
// OP_CALL1	13493	0	0
// OP_LOAD_V	16396	130	16431
// OP_STORE_V	16431	4	0
// OP_STORE_V	29	7	0
// OP_CALL2	13494	0	0
// OP_LOAD_F	29	177	16434
// OP_NOT_F	16434	0	16435
// OP_IFNOT	16435	8	0
// OP_ADDRESS	29	130	16436
// OP_LOAD_V	16396	130	16439
// OP_STOREP_V	16439	16436	0
// OP_ADDRESS	29	138	16442
// OP_MUL_VF	59	4412	16445
// OP_STOREP_V	16445	16442	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	16396	130	16448
// OP_STORE_V	16448	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	29	142	16451
// OP_LOAD_V	16396	444	16454
// OP_STOREP_V	16454	16451	0
// OP_LOAD_S	29	154	16457
// OP_EQ_S	16457	766	16458
// OP_IFNOT	16458	16	0
// OP_ADDRESS	29	199	16459
// OP_STOREP_F	677	16459	0
// OP_ADDRESS	29	211	16460
// OP_ADD_F	31	2571	16461
// OP_STOREP_F	16461	16460	0
// OP_LOAD_F	29	207	16462
// OP_BITAND	16462	277	16463
// OP_IFNOT	16463	5	0
// OP_ADDRESS	29	207	16464
// OP_LOAD_F	29	207	16465
// OP_SUB_F	16465	277	16466
// OP_STOREP_F	16466	16464	0
// OP_ADDRESS	29	138	16467
// OP_MUL_VF	59	4412	16470
// OP_STOREP_V	16470	16467	0
// OP_LOAD_ENT	29	226	16473
// OP_LOAD_S	16473	154	16474
// OP_EQ_S	16474	766	16475
// OP_LOAD_ENT	29	226	16476
// OP_LOAD_ENT	16476	206	16477
// OP_EQ_E	29	16477	16478
// OP_AND	16475	16478	16479
// OP_IFNOT	16479	32	0
// OP_ADDRESS	29	138	16480
// OP_MUL_VF	59	4412	16483
// OP_STOREP_V	16483	16480	0
// OP_ADDRESS	29	227	16486
// OP_LOAD_V	29	138	16489
// OP_STOREP_V	16489	16486	0
// OP_LOAD_ENT	29	226	16492
// OP_STORE_ENT	16492	16397	0
// OP_ADDRESS	16397	130	16493
// OP_LOAD_V	29	130	16496
// OP_STOREP_V	16496	16493	0
// OP_ADDRESS	16397	138	16499
// OP_LOAD_V	29	138	16502
// OP_STOREP_V	16502	16499	0
// OP_ADDRESS	16397	207	16505
// OP_LOAD_F	16397	207	16506
// OP_LOAD_F	16397	207	16507
// OP_BITAND	16507	277	16508
// OP_SUB_F	16506	16508	16509
// OP_STOREP_F	16509	16505	0
// OP_ADDRESS	16397	211	16510
// OP_ADD_F	31	2571	16511
// OP_STOREP_F	16511	16510	0
// OP_ADDRESS	16397	142	16512
// OP_LOAD_V	16396	444	16515
// OP_STOREP_V	16515	16512	0
// OP_ADDRESS	16397	138	16518
// OP_MUL_VF	59	4412	16521
// OP_STOREP_V	16521	16518	0
// OP_ADDRESS	16397	199	16524
// OP_STOREP_F	677	16524	0
// OP_ADDRESS	29	207	16525
// OP_LOAD_F	29	207	16526
// OP_LOAD_F	29	207	16527
// OP_BITAND	16527	277	16528
// OP_SUB_F	16526	16528	16529
// OP_STOREP_F	16529	16525	0
// OP_DONE	0	0	0
void () teleport_touch = 
{
    local entity t;
    local entity e;
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
    
    
    if((other.health <= 0.000) || (other.solid != SOLID_SLIDEBOX))
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
    org = t.origin + (32.000 * v_forward);
    spawn_tfog(org);
    spawn_tdeath(t.origin, other);
    
    if(!other.health)
    {
        other.origin = t.origin;
        other.velocity = v_forward * 300.000;
        return;
    }
    
    setorigin(other, t.origin);
    other.angles = t.mangle;
    
    if(other.classname == "player")
    {
        other.fixangle = 1.000;
        other.teleport_time = time + 0.700;
        
        if(other.flags & FL_ONGROUND)
        {
            other.flags = other.flags - FL_ONGROUND;
        }
        
        other.velocity = v_forward * 300.000;
    }
    
    
    if((other.owner.classname == "player") && (other == other.owner.enemy))
    {
        other.velocity = v_forward * 300.000;
        other.movedir = other.velocity;
        e = other.owner;
        e.origin = other.origin;
        e.velocity = other.velocity;
        e.flags = e.flags - (e.flags & FL_ONGROUND);
        e.teleport_time = time + 0.700;
        e.angles = t.mangle;
        e.velocity = v_forward * 300.000;
        e.fixangle = 1.000;
    }
    
    other.flags = other.flags - (other.flags & FL_ONGROUND);
};

// info_teleport_destination
// function begins at statement 23938, parm_start=16531
// OP_ADDRESS	28	444	16531
// OP_LOAD_V	28	142	16534
// OP_STOREP_V	16534	16531	0
// OP_ADDRESS	28	142	16537
// OP_STOREP_V	607	16537	0
// OP_ADDRESS	28	155	16540
// OP_STOREP_S	621	16540	0
// OP_ADDRESS	28	130	16541
// OP_LOAD_V	28	130	16544
// OP_ADD_V	16544	16547	16550
// OP_STOREP_V	16550	16541	0
// OP_LOAD_S	28	222	16553
// OP_NOT_S	16553	0	16554
// OP_IFNOT	16554	3	0
// OP_STORE_V	16555	4	0
// OP_CALL1	505	0	0
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
// function begins at statement 23955, parm_start=16557
// OP_ADDRESS	28	175	16557
// OP_ADD_F	31	1349	16558
// OP_STOREP_F	16558	16557	0
// OP_STORE_F	806	33	0
// OP_ADDRESS	28	173	16559
// OP_STOREP_FNC	566	16559	0
// OP_DONE	0	0	0
void () teleport_use = 
{
    self.nextthink = time + 0.200;
    force_retouch = 2.000;
    self.think = SUB_Null;
};

// trigger_teleport
// function begins at statement 23962, parm_start=16561
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	16564
// OP_STOREP_FNC	16395	16564	0
// OP_LOAD_S	28	221	16565
// OP_NOT_S	16565	0	16566
// OP_IFNOT	16566	3	0
// OP_STORE_V	16567	4	0
// OP_CALL1	505	0	0
// OP_ADDRESS	28	172	16568
// OP_STOREP_FNC	16556	16568	0
// OP_LOAD_F	28	220	16569
// OP_BITAND	16569	16332	16570
// OP_NOT_F	16570	0	16571
// OP_IFNOT	16571	13	0
// OP_STORE_V	16572	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	159	16573
// OP_LOAD_V	28	163	16576
// OP_ADD_V	16573	16576	16579
// OP_MUL_VF	16579	972	16582
// OP_STORE_V	16582	16561	0
// OP_STORE_V	16561	4	0
// OP_STORE_V	16572	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
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
        o = (self.mins + self.maxs) * 0.500;
        ambientsound(o, "ambience/hum1.wav", 0.500, ATTN_STATIC);
    }
    
};

// trigger_skill_touch
// function begins at statement 23989, parm_start=16586
// OP_LOAD_S	29	154	16586
// OP_NE_S	16586	766	16587
// OP_IFNOT	16587	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	12971	4	0
// OP_LOAD_S	28	231	16588
// OP_STORE_V	16588	7	0
// OP_CALL2	554	0	0
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
// function begins at statement 23998, parm_start=16590
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	16590
// OP_STOREP_FNC	16585	16590	0
// OP_DONE	0	0	0
void () trigger_setskill = 
{
    InitTrigger();
    self.touch = trigger_skill_touch;
};

// trigger_onlyregistered_touch
// function begins at statement 24002, parm_start=16592
// OP_LOAD_S	29	154	16592
// OP_NE_S	16592	766	16593
// OP_IFNOT	16593	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	422	16594
// OP_GT	16594	31	16595
// OP_IFNOT	16595	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	422	16596
// OP_ADD_F	31	806	16597
// OP_STOREP_F	16597	16596	0
// OP_STORE_V	13578	4	0
// OP_CALL1	536	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	231	16598
// OP_STOREP_S	621	16598	0
// OP_CALL0	567	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_GOTO	14	0	0
// OP_LOAD_S	28	231	16599
// OP_NE_S	16599	621	16600
// OP_IFNOT	16600	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	231	16601
// OP_STORE_V	16601	7	0
// OP_CALL2	555	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
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
    
    self.attack_finished = time + 2.000;
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
            sound(other, CHAN_BODY, "misc/talk.wav", 1.000, ATTN_NORM);
        }
        
    }
    
};

// trigger_onlyregistered
// function begins at statement 24036, parm_start=16603
// OP_STORE_V	774	4	0
// OP_CALL1	513	0	0
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	16603
// OP_STOREP_FNC	16591	16603	0
// OP_DONE	0	0	0
void () trigger_onlyregistered = 
{
    precache_sound("misc/talk.wav");
    InitTrigger();
    self.touch = trigger_onlyregistered_touch;
};

// hurt_on
// function begins at statement 24042, parm_start=16605
// OP_ADDRESS	28	129	16605
// OP_STOREP_F	292	16605	0
// OP_ADDRESS	28	175	16606
// OP_STOREP_F	689	16606	0
// OP_DONE	0	0	0
void () hurt_on = 
{
    self.solid = SOLID_TRIGGER;
    self.nextthink = -1.000;
};

// hurt_touch
// function begins at statement 24047, parm_start=16608
// OP_LOAD_F	29	188	16608
// OP_IFNOT	16608	14	0
// OP_ADDRESS	28	129	16609
// OP_STOREP_F	291	16609	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	469	16610
// OP_STORE_V	16610	13	0
// OP_CALL4	569	0	0
// OP_ADDRESS	28	173	16611
// OP_STOREP_FNC	16604	16611	0
// OP_ADDRESS	28	175	16612
// OP_ADD_F	31	677	16613
// OP_STOREP_F	16613	16612	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () hurt_touch = 
{
    
    if(other.takedamage)
    {
        self.solid = SOLID_NOT;
        T_Damage(other, self, self, self.dmg);
        self.think = hurt_on;
        self.nextthink = time + 1.000;
    }
    
    return;
};

// trigger_hurt
// function begins at statement 24064, parm_start=16615
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	16615
// OP_STOREP_FNC	16607	16615	0
// OP_LOAD_F	28	469	16616
// OP_NOT_F	16616	0	16617
// OP_IFNOT	16617	3	0
// OP_ADDRESS	28	469	16618
// OP_STOREP_F	813	16618	0
// OP_DONE	0	0	0
void () trigger_hurt = 
{
    InitTrigger();
    self.touch = hurt_touch;
    
    if(!self.dmg)
    {
        self.dmg = 5.000;
    }
    
};

float PUSH_ONCE = 1.000;
// trigger_push_touch
// function begins at statement 24073, parm_start=16621
// OP_LOAD_S	29	154	16621
// OP_EQ_S	16621	16622	16623
// OP_IFNOT	16623	8	0
// OP_ADDRESS	29	138	16624
// OP_LOAD_F	28	413	16627
// OP_LOAD_V	28	227	16628
// OP_MUL_FV	16627	16628	16631
// OP_MUL_VF	16631	827	16634
// OP_STOREP_V	16634	16624	0
// OP_GOTO	25	0	0
// OP_LOAD_F	29	177	16637
// OP_GT	16637	619	16638
// OP_IFNOT	16638	22	0
// OP_ADDRESS	29	138	16639
// OP_LOAD_F	28	413	16642
// OP_LOAD_V	28	227	16643
// OP_MUL_FV	16642	16643	16646
// OP_MUL_VF	16646	827	16649
// OP_STOREP_V	16649	16639	0
// OP_LOAD_S	29	154	16652
// OP_EQ_S	16652	766	16653
// OP_IFNOT	16653	13	0
// OP_LOAD_F	29	435	16654
// OP_LT	16654	31	16655
// OP_IFNOT	16655	10	0
// OP_ADDRESS	29	435	16656
// OP_ADD_F	31	1798	16657
// OP_STOREP_F	16657	16656	0
// OP_STORE_V	29	4	0
// OP_STORE_V	369	7	0
// OP_STORE_V	16658	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_F	28	220	16659
// OP_BITAND	16659	16619	16660
// OP_IFNOT	16660	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () trigger_push_touch = 
{
    if(other.classname == "grenade")
    {
        other.velocity = (self.speed * self.movedir) * 10.000;
    }
    else
    {
        
        if(other.health > 0.000)
        {
            other.velocity = (self.speed * self.movedir) * 10.000;
            
            if(other.classname == "player")
            {
                
                if(other.fly_sound < time)
                {
                    other.fly_sound = time + 1.500;
                    sound(other, CHAN_AUTO, "ambience/windfly.wav", 1.000, ATTN_NORM);
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
// function begins at statement 24113, parm_start=16662
// OP_CALL0	610	0	0
// OP_STORE_V	16658	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	171	16662
// OP_STOREP_FNC	16620	16662	0
// OP_LOAD_F	28	413	16663
// OP_NOT_F	16663	0	16664
// OP_IFNOT	16664	3	0
// OP_ADDRESS	28	413	16665
// OP_STOREP_F	1622	16665	0
// OP_DONE	0	0	0
void () trigger_push = 
{
    InitTrigger();
    precache_sound("ambience/windfly.wav");
    self.touch = trigger_push_touch;
    
    if(!self.speed)
    {
        self.speed = 1000.000;
    }
    
};

// trigger_monsterjump_touch
// function begins at statement 24124, parm_start=16667
// OP_LOAD_F	29	207	16667
// OP_BITOR	273	269	16668
// OP_BITOR	16668	270	16669
// OP_BITAND	16667	16669	16670
// OP_NE_F	16670	273	16671
// OP_IFNOT	16671	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	139	16672
// OP_LOAD_F	28	228	16673
// OP_LOAD_F	28	413	16674
// OP_MUL_F	16673	16674	16675
// OP_STOREP_F	16675	16672	0
// OP_ADDRESS	29	140	16676
// OP_LOAD_F	28	229	16677
// OP_LOAD_F	28	413	16678
// OP_MUL_F	16677	16678	16679
// OP_STOREP_F	16679	16676	0
// OP_LOAD_F	29	207	16680
// OP_BITAND	16680	277	16681
// OP_NOT_F	16681	0	16682
// OP_IFNOT	16682	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	207	16683
// OP_LOAD_F	29	207	16684
// OP_SUB_F	16684	277	16685
// OP_STOREP_F	16685	16683	0
// OP_ADDRESS	29	141	16686
// OP_LOAD_F	28	491	16687
// OP_STOREP_F	16687	16686	0
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
// function begins at statement 24154, parm_start=16689
// OP_LOAD_F	28	413	16689
// OP_NOT_F	16689	0	16690
// OP_IFNOT	16690	3	0
// OP_ADDRESS	28	413	16691
// OP_STOREP_F	986	16691	0
// OP_LOAD_F	28	491	16692
// OP_NOT_F	16692	0	16693
// OP_IFNOT	16693	3	0
// OP_ADDRESS	28	491	16694
// OP_STOREP_F	986	16694	0
// OP_LOAD_V	28	142	16695
// OP_EQ_V	16695	607	16698
// OP_IFNOT	16698	3	0
// OP_ADDRESS	28	142	16699
// OP_STOREP_V	16702	16699	0
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	16705
// OP_STOREP_FNC	16666	16705	0
// OP_DONE	0	0	0
void () trigger_monsterjump = 
{
    
    if(!self.speed)
    {
        self.speed = 200.000;
    }
    
    
    if(!self.height)
    {
        self.height = 200.000;
    }
    
    
    if(self.angles == '0.000 0.000 0.000')
    {
        self.angles = '0.000 360.000 0.000';
    }
    
    InitTrigger();
    self.touch = trigger_monsterjump_touch;
};

// trigger_rearm_touch
// function begins at statement 24173, parm_start=16707
// OP_LOAD_ENT	29	226	16708
// OP_LOAD_S	16708	154	16709
// OP_NE_S	16709	766	16710
// OP_IFNOT	16710	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	226	16711
// OP_ADDRESS	16711	415	16712
// OP_STOREP_F	619	16712	0
// OP_LOAD_F	29	177	16713
// OP_LT	16713	677	16714
// OP_IFNOT	16714	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	29	138	16715
// OP_NE_V	16715	607	16718
// OP_IFNOT	16718	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	240	16719
// OP_IFNOT	16719	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	413	16720
// OP_NE_F	16720	619	16721
// OP_LOAD_ENT	29	226	16722
// OP_LOAD_F	16722	404	16723
// OP_NE_F	16723	816	16724
// OP_AND	16721	16724	16725
// OP_IFNOT	16725	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	226	16726
// OP_LOAD_F	16726	422	16727
// OP_GT	16727	31	16728
// OP_IFNOT	16728	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	219	16729
// OP_STORE_ENT	16729	16707	0
// OP_LOAD_F	28	232	16730
// OP_IFNOT	16730	9	0
// OP_LOAD_F	28	232	16731
// OP_LOAD_F	16707	404	16732
// OP_STORE_V	16732	4	0
// OP_CALL1	802	0	0
// OP_BITAND	16731	1	16733
// OP_NOT_F	16733	0	16734
// OP_IFNOT	16734	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	16707	245	16735
// OP_LOAD_F	16707	245	16736
// OP_STORE_V	16707	4	0
// OP_STORE_V	677	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16737
// OP_ADD_F	16736	16737	16738
// OP_STOREP_F	16738	16735	0
// OP_ADDRESS	16707	246	16739
// OP_LOAD_F	16707	246	16740
// OP_STORE_V	16707	4	0
// OP_STORE_V	806	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16741
// OP_ADD_F	16740	16741	16742
// OP_STOREP_F	16742	16739	0
// OP_ADDRESS	16707	247	16743
// OP_LOAD_F	16707	247	16744
// OP_STORE_V	16707	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16745
// OP_ADD_F	16744	16745	16746
// OP_STOREP_F	16746	16743	0
// OP_ADDRESS	16707	248	16747
// OP_LOAD_F	16707	248	16748
// OP_STORE_V	16707	4	0
// OP_STORE_V	808	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16749
// OP_ADD_F	16748	16749	16750
// OP_STOREP_F	16750	16747	0
// OP_ADDRESS	16707	249	16751
// OP_LOAD_F	16707	249	16752
// OP_STORE_V	16707	4	0
// OP_STORE_V	813	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16753
// OP_ADD_F	16752	16753	16754
// OP_STOREP_F	16754	16751	0
// OP_ADDRESS	16707	250	16755
// OP_LOAD_F	16707	250	16756
// OP_STORE_V	16707	4	0
// OP_STORE_V	816	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16757
// OP_ADD_F	16756	16757	16758
// OP_STOREP_F	16758	16755	0
// OP_ADDRESS	16707	251	16759
// OP_LOAD_F	16707	251	16760
// OP_STORE_V	16707	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16761
// OP_ADD_F	16760	16761	16762
// OP_STOREP_F	16762	16759	0
// OP_ADDRESS	16707	252	16763
// OP_LOAD_F	16707	252	16764
// OP_STORE_V	16707	4	0
// OP_STORE_V	810	7	0
// OP_CALL2	2369	0	0
// OP_MUL_F	1	113	16765
// OP_ADD_F	16764	16765	16766
// OP_STOREP_F	16766	16763	0
// OP_STORE_V	16707	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	2369	0	0
// OP_LOAD_F	29	177	16767
// OP_LOAD_F	29	210	16768
// OP_LT	16767	16768	16769
// OP_IFNOT	16769	17	0
// OP_ADDRESS	29	177	16770
// OP_LOAD_F	29	210	16771
// OP_MUL_F	16771	655	16772
// OP_LOAD_F	29	177	16773
// OP_ADD_F	16772	16773	16774
// OP_STORE_V	16774	4	0
// OP_CALL1	530	0	0
// OP_STOREP_F	1	16770	0
// OP_LOAD_F	29	177	16775
// OP_LOAD_F	29	210	16776
// OP_GT	16775	16776	16777
// OP_IFNOT	16777	4	0
// OP_ADDRESS	29	177	16778
// OP_LOAD_F	29	210	16779
// OP_STOREP_F	16779	16778	0
// OP_GOTO	5	0	0
// OP_LOAD_ENT	29	226	16780
// OP_ADDRESS	16780	415	16781
// OP_ADD_F	31	677	16782
// OP_STOREP_F	16782	16781	0
// OP_STORE_ENT	28	16178	0
// OP_STORE_ENT	16707	28	0
// OP_CALL0	2769	0	0
// OP_STORE_ENT	16178	28	0
// OP_ADDRESS	28	129	16783
// OP_STOREP_F	291	16783	0
// OP_ADDRESS	28	173	16784
// OP_STOREP_FNC	16182	16784	0
// OP_ADDRESS	28	175	16785
// OP_ADD_F	31	677	16786
// OP_STOREP_F	16786	16785	0
// OP_DONE	0	0	0
void () trigger_rearm_touch = 
{
    local entity pler;
    
    if(other.owner.classname != "player")
    {
        return;
    }
    
    other.owner.search_time = 0.000;
    
    if(other.health < 1.000)
    {
        return;
    }
    
    
    if(other.velocity != '0.000 0.000 0.000')
    {
        return;
    }
    
    
    if(other.thru)
    {
        return;
    }
    
    
    if((other.speed != 0.000) && (other.owner.style != 6.000))
    {
        return;
    }
    
    
    if(other.owner.attack_finished > time)
    {
        return;
    }
    
    pler = other.goalentity;
    
    if(self.sounds)
    {
        
        if(!(self.sounds & calcbit(pler.style)))
        {
            return;
        }
        
    }
    
    pler.ammo_auto = pler.ammo_auto + (check_ammo(pler, 1.000) * wepmulti);
    pler.ammo_rock = pler.ammo_rock + (check_ammo(pler, 2.000) * wepmulti);
    pler.ammo_shel = pler.ammo_shel + (check_ammo(pler, 3.000) * wepmulti);
    pler.ammo_amsl = pler.ammo_amsl + (check_ammo(pler, 4.000) * wepmulti);
    pler.ammo_smsl = pler.ammo_smsl + (check_ammo(pler, 5.000) * wepmulti);
    pler.ammo_bomb = pler.ammo_bomb + (check_ammo(pler, 6.000) * wepmulti);
    pler.ammo_cell = pler.ammo_cell + (check_ammo(pler, 7.000) * wepmulti);
    pler.ammo_mine = pler.ammo_mine + (check_ammo(pler, 8.000) * wepmulti);
    check_ammo(pler, 0.000);
    if(other.health < other.max_health)
    {
        other.health = floor((other.max_health * 0.100) + other.health);
        
        if(other.health > other.max_health)
        {
            other.health = other.max_health;
        }
        
    }
    else
    {
        other.owner.search_time = time + 1.000;
    }
    
    stemp = self;
    self = pler;
    W_SetCurrentAmmo();
    self = stemp;
    self.solid = SOLID_NOT;
    self.think = trigger_reactivate;
    self.nextthink = time + 1.000;
};

// trigger_rearm
// function begins at statement 24320, parm_start=16788
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	16788
// OP_STOREP_FNC	16706	16788	0
// OP_DONE	0	0	0
void () trigger_rearm = 
{
    InitTrigger();
    self.touch = trigger_rearm_touch;
};

