float DOOR_START_OPEN = 1;
float DOOR_DONT_LINK = 4;
float DOOR_GOLD_KEY = 8;
float DOOR_SILVER_KEY = 16;
float DOOR_TOGGLE = 32;
void () door_go_down;
void () door_go_up;
// door_blocked
// function begins at statement 9499, parm_start=6278
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	420	6278
// OP_STORE_V	6278	13	0
// OP_CALL4	520	0	0
// OP_LOAD_F	28	413	6279
// OP_GE	6279	213	6280
// OP_IFNOT	6280	7	0
// OP_LOAD_F	28	433	6281
// OP_EQ_F	6281	285	6282
// OP_IFNOT	6282	3	0
// OP_CALL0	6276	0	0
// OP_GOTO	2	0	0
// OP_CALL0	6275	0	0
// OP_DONE	0	0	0
void () door_blocked = 
{
    T_Damage(other, self, self, self.dmg);
    
    if(self.wait >= FALSE)
    {
        if(self.state == STATE_DOWN)
        {
            door_go_up();
        }
        else
        {
            door_go_down();
        }
        
    }
    
};

// door_hit_top
// function begins at statement 9515, parm_start=6284
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	209	6284
// OP_STORE_V	6284	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6285
// OP_STOREP_F	282	6285	0
// OP_LOAD_F	28	195	6286
// OP_BITAND	6286	6274	6287
// OP_IFNOT	6287	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	148	6288
// OP_STOREP_FNC	6275	6288	0
// OP_ADDRESS	28	150	6289
// OP_LOAD_F	28	102	6290
// OP_LOAD_F	28	413	6291
// OP_ADD_F	6290	6291	6292
// OP_STOREP_F	6292	6289	0
// OP_DONE	0	0	0
void () door_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_TOP;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        return;
    }
    
    self.think = door_go_down;
    self.nextthink = self.ltime + self.wait;
};

// door_hit_bottom
// function begins at statement 9536, parm_start=6294
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	209	6294
// OP_STORE_V	6294	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6295
// OP_STOREP_F	283	6295	0
// OP_DONE	0	0	0
void () door_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// door_go_down
// function begins at statement 9546, parm_start=6296
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	210	6296
// OP_STORE_V	6296	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	185	6297
// OP_IFNOT	6297	6	0
// OP_ADDRESS	28	163	6298
// OP_STOREP_F	251	6298	0
// OP_ADDRESS	28	152	6299
// OP_LOAD_F	28	185	6300
// OP_STOREP_F	6300	6299	0
// OP_ADDRESS	28	433	6301
// OP_STOREP_F	285	6301	0
// OP_LOAD_V	28	434	6302
// OP_STORE_V	6302	4	0
// OP_LOAD_F	28	364	6305
// OP_STORE_V	6305	7	0
// OP_STORE_V	6293	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () door_go_down = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    
    if(self.max_health)
    {
        self.takedamage = DAMAGE_YES;
        self.health = self.max_health;
    }
    
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, door_hit_bottom);
};

// door_go_up
// function begins at statement 9569, parm_start=6306
// OP_LOAD_F	28	433	6306
// OP_EQ_F	6306	284	6307
// OP_IFNOT	6307	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	433	6308
// OP_EQ_F	6308	282	6309
// OP_IFNOT	6309	7	0
// OP_ADDRESS	28	150	6310
// OP_LOAD_F	28	102	6311
// OP_LOAD_F	28	413	6312
// OP_ADD_F	6311	6312	6313
// OP_STOREP_F	6313	6310	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	210	6314
// OP_STORE_V	6314	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6315
// OP_STOREP_F	284	6315	0
// OP_LOAD_V	28	438	6316
// OP_STORE_V	6316	4	0
// OP_LOAD_F	28	364	6319
// OP_STORE_V	6319	7	0
// OP_STORE_V	6283	10	0
// OP_CALL3	512	0	0
// OP_CALL0	518	0	0
// OP_DONE	0	0	0
void () door_go_up = 
{
    
    if(self.state == STATE_UP)
    {
        return;
    }
    
    
    if(self.state == STATE_TOP)
    {
        self.nextthink = self.ltime + self.wait;
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, door_hit_top);
    SUB_UseTargets();
};

// door_fire
// function begins at statement 9599, parm_start=6321
// OP_LOAD_ENT	28	201	6323
// OP_NE_E	6323	28	6324
// OP_IFNOT	6324	3	0
// OP_STORE_V	6325	4	0
// OP_CALL1	456	0	0
// OP_LOAD_F	28	162	6326
// OP_IFNOT	6326	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	416	6327
// OP_STORE_V	6327	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	206	6328
// OP_STOREP_S	343	6328	0
// OP_STORE_ENT	28	6321	0
// OP_LOAD_F	28	195	6329
// OP_BITAND	6329	6274	6330
// OP_IFNOT	6330	17	0
// OP_LOAD_F	28	433	6331
// OP_EQ_F	6331	284	6332
// OP_LOAD_F	28	433	6333
// OP_EQ_F	6333	282	6334
// OP_OR	6332	6334	6335
// OP_IFNOT	6335	11	0
// OP_STORE_ENT	28	6322	0
// OP_CALL0	6275	0	0
// OP_LOAD_ENT	28	181	6336
// OP_STORE_ENT	6336	28	0
// OP_NE_E	28	6322	6337
// OP_NE_E	28	30	6338
// OP_AND	6337	6338	6339
// OP_IF	6339	-6	0
// OP_STORE_ENT	6321	28	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	6322	0
// OP_CALL0	6276	0	0
// OP_LOAD_ENT	28	181	6340
// OP_STORE_ENT	6340	28	0
// OP_NE_E	28	6322	6341
// OP_NE_E	28	30	6342
// OP_AND	6341	6342	6343
// OP_IF	6343	-6	0
// OP_STORE_ENT	6321	28	0
// OP_DONE	0	0	0
void () door_fire = 
{
    local entity oself;
    local entity starte;
    
    if(self.owner != self)
    {
        objerror("door_fire: self.owner != self");
    }
    
    
    if(self.items)
    {
        sound(self, CHAN_VOICE, self.noise4, TRUE, ATTN_NORM);
    }
    
    self.message = string_null;
    oself = self;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        
        if((self.state == STATE_UP) || (self.state == STATE_TOP))
        {
            starte = self;
            do
            {
                door_go_down();
                self = self.enemy;
            } while ((self != starte) && (self != world));
            self = oself;
            return;
        }
        
    }
    
    starte = self;
    do
    {
        door_go_up();
        self = self.enemy;
    } while ((self != starte) && (self != world));
    self = oself;
};

void () bot_touched;
// door_use
// function begins at statement 9645, parm_start=6346
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	625	0	0
// OP_LOAD_S	29	129	6347
// OP_EQ_S	6347	2056	6348
// OP_IFNOT	6348	2	0
// OP_CALL0	6344	0	0
// OP_ADDRESS	28	206	6349
// OP_STOREP_S	959	6349	0
// OP_LOAD_ENT	28	201	6350
// OP_ADDRESS	6350	206	6351
// OP_STOREP_S	959	6351	0
// OP_LOAD_ENT	28	181	6352
// OP_ADDRESS	6352	206	6353
// OP_STOREP_S	959	6353	0
// OP_STORE_ENT	28	6346	0
// OP_LOAD_ENT	28	201	6354
// OP_STORE_ENT	6354	28	0
// OP_CALL0	6320	0	0
// OP_STORE_ENT	6346	28	0
// OP_DONE	0	0	0
void () door_use = 
{
    local entity oself;
    signalnoise(other, self);
    
    if(other.classname == "dmbot")
    {
        bot_touched();
    }
    
    self.message = "";
    self.owner.message = "";
    self.enemy.message = "";
    oself = self;
    self = self.owner;
    door_fire();
    self = oself;
};

// door_trigger_touch
// function begins at statement 9666, parm_start=6356
// OP_LOAD_F	29	152	6356
// OP_LE	6356	213	6357
// OP_IFNOT	6357	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	6358
// OP_LT	31	6358	6359
// OP_IFNOT	6359	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	6360
// OP_ADD_F	31	214	6361
// OP_STOREP_F	6361	6360	0
// OP_STORE_ENT	29	346	0
// OP_LOAD_ENT	28	201	6362
// OP_STORE_ENT	6362	28	0
// OP_CALL0	6345	0	0
// OP_DONE	0	0	0
void () door_trigger_touch = 
{
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + TRUE;
    activator = other;
    self = self.owner;
    door_use();
};

// door_killed
// function begins at statement 9682, parm_start=6364
// OP_STORE_ENT	28	6364	0
// OP_LOAD_ENT	28	201	6365
// OP_STORE_ENT	6365	28	0
// OP_ADDRESS	28	152	6366
// OP_LOAD_F	28	185	6367
// OP_STOREP_F	6367	6366	0
// OP_ADDRESS	28	163	6368
// OP_STOREP_F	250	6368	0
// OP_CALL0	6345	0	0
// OP_STORE_ENT	6364	28	0
// OP_DONE	0	0	0
void () door_killed = 
{
    local entity oself;
    oself = self;
    self = self.owner;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    door_use();
    self = oself;
};

void () enemy_touched;
// door_touch
// function begins at statement 9693, parm_start=6371
// OP_LOAD_S	29	129	6374
// OP_NE_S	6374	1102	6375
// OP_IFNOT	6375	5	0
// OP_LOAD_S	29	129	6376
// OP_NE_S	6376	2056	6377
// OP_IFNOT	6377	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	6378
// OP_LOAD_F	6378	373	6379
// OP_GT	6379	31	6380
// OP_IFNOT	6380	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	6381
// OP_ADDRESS	6381	373	6382
// OP_ADD_F	31	216	6383
// OP_STOREP_F	6383	6382	0
// OP_LOAD_ENT	28	201	6384
// OP_LOAD_S	6384	206	6385
// OP_NE_S	6385	959	6386
// OP_IFNOT	6386	15	0
// OP_LOAD_S	29	129	6387
// OP_EQ_S	6387	1102	6388
// OP_IFNOT	6388	6	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	201	6389
// OP_LOAD_S	6389	206	6390
// OP_STORE_V	6390	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	1110	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	29	181	6391
// OP_LOAD_S	6391	129	6392
// OP_EQ_S	6392	2056	6393
// OP_IFNOT	6393	2	0
// OP_CALL0	6369	0	0
// OP_LOAD_S	29	129	6394
// OP_EQ_S	6394	2056	6395
// OP_IFNOT	6395	2	0
// OP_CALL0	6344	0	0
// OP_LOAD_F	28	162	6396
// OP_NOT_F	6396	0	6397
// OP_IFNOT	6397	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	6398
// OP_LOAD_F	29	162	6399
// OP_BITAND	6398	6399	6400
// OP_LOAD_F	28	162	6401
// OP_NE_F	6400	6401	6402
// OP_IFNOT	6402	89	0
// OP_LOAD_ENT	28	201	6403
// OP_LOAD_F	6403	162	6404
// OP_EQ_F	6404	270	6405
// OP_IFNOT	6405	43	0
// OP_LOAD_F	30	352	6406
// OP_EQ_F	6406	216	6407
// OP_IFNOT	6407	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6408	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6409
// OP_STORE_V	6409	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	352	6410
// OP_EQ_F	6410	214	6411
// OP_IFNOT	6411	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6412	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6413
// OP_STORE_V	6413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	352	6414
// OP_EQ_F	6414	213	6415
// OP_IFNOT	6415	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6416	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6417
// OP_STORE_V	6417	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	42	0	0
// OP_LOAD_F	30	352	6418
// OP_EQ_F	6418	216	6419
// OP_IFNOT	6419	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6420	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6421
// OP_STORE_V	6421	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	352	6422
// OP_EQ_F	6422	214	6423
// OP_IFNOT	6423	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6424	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6425
// OP_STORE_V	6425	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	352	6426
// OP_EQ_F	6426	213	6427
// OP_IFNOT	6427	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6428	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6429
// OP_STORE_V	6429	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	6430
// OP_LOAD_F	29	162	6431
// OP_LOAD_F	28	162	6432
// OP_SUB_F	6431	6432	6433
// OP_STOREP_F	6433	6430	0
// OP_ADDRESS	28	146	6434
// OP_STOREP_FNC	517	6434	0
// OP_LOAD_ENT	28	181	6435
// OP_IFNOT	6435	4	0
// OP_LOAD_ENT	28	181	6436
// OP_ADDRESS	6436	146	6437
// OP_STOREP_FNC	517	6437	0
// OP_CALL0	6345	0	0
// OP_DONE	0	0	0
void () door_touch = 
{
    local vector org;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    
    if(self.owner.attack_finished > time)
    {
        return;
    }
    
    self.owner.attack_finished = time + FL_SWIM;
    
    if(self.owner.message != "")
    {
        
        if(other.classname == "player")
        {
            centerprint(other, self.owner.message);
        }
        
        sound(other, CHAN_VOICE, "misc/talk.wav", TRUE, ATTN_NORM);
    }
    
    
    if(other.enemy.classname == "dmbot")
    {
        enemy_touched();
    }
    
    
    if(other.classname == "dmbot")
    {
        bot_touched();
    }
    
    
    if(!self.items)
    {
        return;
    }
    
    
    if((self.items & other.items) != self.items)
    {
        if(self.owner.items == IT_KEY1)
        {
            if(world.worldtype == FL_SWIM)
            {
                centerprint(other, "You need the silver keycard");
                sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == TRUE)
                {
                    centerprint(other, "You need the silver runekey");
                    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == FALSE)
                    {
                        centerprint(other, "You need the silver key");
                        sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(world.worldtype == FL_SWIM)
            {
                centerprint(other, "You need the gold keycard");
                sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == TRUE)
                {
                    centerprint(other, "You need the gold runekey");
                    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == FALSE)
                    {
                        centerprint(other, "You need the gold key");
                        sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        
        return;
    }
    
    other.items = other.items - self.items;
    self.touch = SUB_Null;
    
    if(self.enemy)
    {
        self.enemy.touch = SUB_Null;
    }
    
    door_use();
};

// spawn_field
// function begins at statement 9848, parm_start=6439
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	6445	0
// OP_ADDRESS	6445	103	6452
// OP_STOREP_F	227	6452	0
// OP_ADDRESS	6445	104	6453
// OP_STOREP_F	238	6453	0
// OP_ADDRESS	6445	201	6454
// OP_STOREP_ENT	28	6454	0
// OP_ADDRESS	6445	146	6455
// OP_STOREP_FNC	6355	6455	0
// OP_STORE_V	6439	6446	0
// OP_STORE_V	6442	6449	0
// OP_STORE_V	6445	4	0
// OP_SUB_V	6446	6456	6459
// OP_STORE_V	6459	7	0
// OP_ADD_V	6449	6456	6462
// OP_STORE_V	6462	10	0
// OP_CALL3	450	0	0
// OP_RETURN	6445	0	0
// OP_DONE	0	0	0
entity (vector fmins, vector fmaxs) spawn_field = 
{
    local entity trigger;
    local vector t1;
    local vector t2;
    trigger = spawn();
    trigger.movetype = MOVETYPE_NONE;
    trigger.solid = SOLID_TRIGGER;
    trigger.owner = self;
    trigger.touch = door_trigger_touch;
    t1 = fmins;
    t2 = fmaxs;
    setsize(trigger, t1 - '60.000 60.000 8.000', t2 + '60.000 60.000 8.000');
    return trigger;
};

// EntitiesTouching
// function begins at statement 9868, parm_start=6466
// OP_LOAD_F	6466	135	6468
// OP_LOAD_F	6467	139	6469
// OP_GT	6468	6469	6470
// OP_IFNOT	6470	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6466	136	6471
// OP_LOAD_F	6467	140	6472
// OP_GT	6471	6472	6473
// OP_IFNOT	6473	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6466	137	6474
// OP_LOAD_F	6467	141	6475
// OP_GT	6474	6475	6476
// OP_IFNOT	6476	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6466	139	6477
// OP_LOAD_F	6467	135	6478
// OP_LT	6477	6478	6479
// OP_IFNOT	6479	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6466	140	6480
// OP_LOAD_F	6467	136	6481
// OP_LT	6480	6481	6482
// OP_IFNOT	6482	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6466	141	6483
// OP_LOAD_F	6467	137	6484
// OP_LT	6483	6484	6485
// OP_IFNOT	6485	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity e1, entity e2) EntitiesTouching = 
{
    
    if(e1.mins_x > e2.maxs_x)
    {
        return FALSE;
    }
    
    
    if(e1.mins_y > e2.maxs_y)
    {
        return FALSE;
    }
    
    
    if(e1.mins_z > e2.maxs_z)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_x < e2.mins_x)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_y < e2.mins_y)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_z < e2.mins_z)
    {
        return FALSE;
    }
    
    return TRUE;
};

// LinkDoors
// function begins at statement 9900, parm_start=6487
// OP_LOAD_ENT	28	181	6495
// OP_IFNOT	6495	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	6496
// OP_BITAND	6496	229	6497
// OP_IFNOT	6497	6	0
// OP_ADDRESS	28	201	6498
// OP_ADDRESS	28	181	6499
// OP_STOREP_ENT	28	6499	0
// OP_STOREP_ENT	28	6498	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	134	6500
// OP_STORE_V	6500	6489	0
// OP_LOAD_V	28	138	6503
// OP_STORE_V	6503	6492	0
// OP_STORE_ENT	28	6488	0
// OP_STORE_ENT	28	6487	0
// OP_ADDRESS	28	201	6506
// OP_STOREP_ENT	6488	6506	0
// OP_LOAD_F	28	152	6507
// OP_IFNOT	6507	4	0
// OP_ADDRESS	6488	152	6508
// OP_LOAD_F	28	152	6509
// OP_STOREP_F	6509	6508	0
// OP_LOAD_S	28	197	6510
// OP_IFNOT	6510	4	0
// OP_ADDRESS	6488	197	6511
// OP_LOAD_S	28	197	6512
// OP_STOREP_S	6512	6511	0
// OP_LOAD_S	28	206	6513
// OP_NE_S	6513	959	6514
// OP_IFNOT	6514	4	0
// OP_ADDRESS	6488	206	6515
// OP_LOAD_S	28	206	6516
// OP_STOREP_S	6516	6515	0
// OP_STORE_V	6487	4	0
// OP_STORE_V	129	7	0
// OP_LOAD_S	28	129	6517
// OP_STORE_V	6517	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	6487	0
// OP_NOT_ENT	6487	0	6518
// OP_IFNOT	6518	21	0
// OP_ADDRESS	28	181	6519
// OP_STOREP_ENT	6488	6519	0
// OP_LOAD_ENT	28	201	6520
// OP_STORE_ENT	6520	28	0
// OP_LOAD_F	28	152	6521
// OP_IFNOT	6521	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	197	6522
// OP_IFNOT	6522	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	6523
// OP_IFNOT	6523	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	6524
// OP_ADDRESS	6524	415	6525
// OP_STORE_V	6489	4	0
// OP_STORE_V	6492	7	0
// OP_CALL2	6438	0	0
// OP_STOREP_ENT	1	6525	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6487	7	0
// OP_CALL2	6465	0	0
// OP_IFNOT	1	38	0
// OP_LOAD_ENT	6487	181	6526
// OP_IFNOT	6526	3	0
// OP_STORE_V	6527	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	181	6528
// OP_STOREP_ENT	6487	6528	0
// OP_STORE_ENT	6487	28	0
// OP_LOAD_F	6487	135	6529
// OP_LT	6529	6489	6530
// OP_IFNOT	6530	3	0
// OP_LOAD_F	6487	135	6531
// OP_STORE_F	6531	6489	0
// OP_LOAD_F	6487	136	6532
// OP_LT	6532	6490	6533
// OP_IFNOT	6533	3	0
// OP_LOAD_F	6487	136	6534
// OP_STORE_F	6534	6490	0
// OP_LOAD_F	6487	137	6535
// OP_LT	6535	6491	6536
// OP_IFNOT	6536	3	0
// OP_LOAD_F	6487	137	6537
// OP_STORE_F	6537	6491	0
// OP_LOAD_F	6487	139	6538
// OP_GT	6538	6492	6539
// OP_IFNOT	6539	3	0
// OP_LOAD_F	6487	139	6540
// OP_STORE_F	6540	6492	0
// OP_LOAD_F	6487	140	6541
// OP_GT	6541	6493	6542
// OP_IFNOT	6542	3	0
// OP_LOAD_F	6487	140	6543
// OP_STORE_F	6543	6493	0
// OP_LOAD_F	6487	141	6544
// OP_GT	6544	6494	6545
// OP_IFNOT	6545	3	0
// OP_LOAD_F	6487	141	6546
// OP_STORE_F	6546	6494	0
// OP_IF	214	-87	0
// OP_DONE	0	0	0
void () LinkDoors = 
{
    local entity t;
    local entity starte;
    local vector cmins;
    local vector cmaxs;
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.spawnflags & MOVETYPE_STEP)
    {
        self.owner = self.enemy = self;
        return;
    }
    
    cmins = self.mins;
    cmaxs = self.maxs;
    t = starte = self;
    do
    {
        self.owner = starte;
        
        if(self.health)
        {
            starte.health = self.health;
        }
        
        
        if(self.targetname)
        {
            starte.targetname = self.targetname;
        }
        
        
        if(self.message != "")
        {
            starte.message = self.message;
        }
        
        t = find(t, classname, self.classname);
        
        if(!t)
        {
            self.enemy = starte;
            self = self.owner;
            
            if(self.health)
            {
                return;
            }
            
            
            if(self.targetname)
            {
                return;
            }
            
            
            if(self.items)
            {
                return;
            }
            
            self.owner.trigger_field = spawn_field(cmins, cmaxs);
            return;
        }
        
        
        if(EntitiesTouching(self, t))
        {
            
            if(t.enemy)
            {
                objerror("cross connected doors");
            }
            
            self = self.enemy = t;
            
            if(t.mins_x < cmins_x)
            {
                cmins_x = t.mins_x;
            }
            
            
            if(t.mins_y < 0)
            {
                cmins_y = t.mins_y;
            }
            
            
            if(t.mins_z < 0)
            {
                cmins_z = t.mins_z;
            }
            
            
            if(t.maxs_x > cmaxs_x)
            {
                cmaxs_x = t.maxs_x;
            }
            
            
            if(t.maxs_y > 0)
            {
                cmaxs_y = t.maxs_y;
            }
            
            
            if(t.maxs_z > 0)
            {
                cmaxs_z = t.maxs_z;
            }
            
        }
        
    } while (TRUE);
};

// func_door
// function begins at statement 10006, parm_start=6548
// OP_LOAD_F	30	352	6548
// OP_EQ_F	6548	213	6549
// OP_IFNOT	6549	10	0
// OP_STORE_V	6550	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6551	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	211	6552
// OP_STOREP_S	6550	6552	0
// OP_ADDRESS	28	416	6553
// OP_STOREP_S	6551	6553	0
// OP_GOTO	27	0	0
// OP_LOAD_F	30	352	6554
// OP_EQ_F	6554	214	6555
// OP_IFNOT	6555	10	0
// OP_STORE_V	6556	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6557	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	211	6558
// OP_STOREP_S	6556	6558	0
// OP_ADDRESS	28	416	6559
// OP_STOREP_S	6557	6559	0
// OP_GOTO	15	0	0
// OP_LOAD_F	30	352	6560
// OP_EQ_F	6560	216	6561
// OP_IFNOT	6561	10	0
// OP_STORE_V	6562	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6563	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	211	6564
// OP_STOREP_S	6562	6564	0
// OP_ADDRESS	28	416	6565
// OP_STOREP_S	6563	6565	0
// OP_GOTO	3	0	0
// OP_STORE_V	6566	4	0
// OP_CALL1	470	0	0
// OP_LOAD_F	28	207	6567
// OP_EQ_F	6567	213	6568
// OP_IFNOT	6568	9	0
// OP_STORE_V	6569	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6569	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	6570
// OP_STOREP_S	6569	6570	0
// OP_ADDRESS	28	210	6571
// OP_STOREP_S	6569	6571	0
// OP_LOAD_F	28	207	6572
// OP_EQ_F	6572	214	6573
// OP_IFNOT	6573	9	0
// OP_STORE_V	6574	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6575	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	6576
// OP_STOREP_S	6574	6576	0
// OP_ADDRESS	28	210	6577
// OP_STOREP_S	6575	6577	0
// OP_LOAD_F	28	207	6578
// OP_EQ_F	6578	216	6579
// OP_IFNOT	6579	9	0
// OP_STORE_V	6580	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6581	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	6582
// OP_STOREP_S	6580	6582	0
// OP_ADDRESS	28	209	6583
// OP_STOREP_S	6581	6583	0
// OP_LOAD_F	28	207	6584
// OP_EQ_F	6584	228	6585
// OP_IFNOT	6585	9	0
// OP_STORE_V	6586	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6587	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	6588
// OP_STOREP_S	6586	6588	0
// OP_ADDRESS	28	209	6589
// OP_STOREP_S	6587	6589	0
// OP_LOAD_F	28	207	6590
// OP_EQ_F	6590	229	6591
// OP_IFNOT	6591	9	0
// OP_STORE_V	6592	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6593	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	6594
// OP_STOREP_S	6593	6594	0
// OP_ADDRESS	28	210	6595
// OP_STOREP_S	6592	6595	0
// OP_CALL0	916	0	0
// OP_ADDRESS	28	185	6596
// OP_LOAD_F	28	152	6597
// OP_STOREP_F	6597	6596	0
// OP_ADDRESS	28	104	6598
// OP_STOREP_F	241	6598	0
// OP_ADDRESS	28	103	6599
// OP_STOREP_F	232	6599	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6600
// OP_STORE_V	6600	7	0
// OP_CALL2	448	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6603
// OP_STORE_V	6603	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	129	6604
// OP_STOREP_S	6605	6604	0
// OP_ADDRESS	28	149	6606
// OP_STOREP_FNC	6277	6606	0
// OP_ADDRESS	28	147	6607
// OP_STOREP_FNC	6345	6607	0
// OP_LOAD_F	28	195	6608
// OP_BITAND	6608	6273	6609
// OP_IFNOT	6609	3	0
// OP_ADDRESS	28	162	6610
// OP_STOREP_F	270	6610	0
// OP_LOAD_F	28	195	6611
// OP_BITAND	6611	6272	6612
// OP_IFNOT	6612	3	0
// OP_ADDRESS	28	162	6613
// OP_STOREP_F	271	6613	0
// OP_LOAD_F	28	364	6614
// OP_NOT_F	6614	0	6615
// OP_IFNOT	6615	3	0
// OP_ADDRESS	28	364	6616
// OP_STOREP_F	574	6616	0
// OP_LOAD_F	28	413	6617
// OP_NOT_F	6617	0	6618
// OP_IFNOT	6618	3	0
// OP_ADDRESS	28	413	6619
// OP_STOREP_F	228	6619	0
// OP_LOAD_F	28	432	6620
// OP_NOT_F	6620	0	6621
// OP_IFNOT	6621	3	0
// OP_ADDRESS	28	432	6622
// OP_STOREP_F	217	6622	0
// OP_LOAD_F	28	420	6623
// OP_NOT_F	6623	0	6624
// OP_IFNOT	6624	3	0
// OP_ADDRESS	28	420	6625
// OP_STOREP_F	216	6625	0
// OP_ADDRESS	28	434	6626
// OP_LOAD_V	28	105	6629
// OP_STOREP_V	6629	6626	0
// OP_ADDRESS	28	438	6632
// OP_LOAD_V	28	434	6635
// OP_LOAD_V	28	202	6638
// OP_LOAD_V	28	202	6641
// OP_LOAD_V	28	142	6644
// OP_MUL_V	6641	6644	6647
// OP_STORE_V	6647	4	0
// OP_CALL1	485	0	0
// OP_LOAD_F	28	432	6648
// OP_SUB_F	1	6648	6649
// OP_MUL_VF	6638	6649	6650
// OP_ADD_V	6635	6650	6653
// OP_STOREP_V	6653	6632	0
// OP_LOAD_F	28	195	6656
// OP_BITAND	6656	6270	6657
// OP_IFNOT	6657	11	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	438	6658
// OP_STORE_V	6658	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	438	6661
// OP_LOAD_V	28	434	6664
// OP_STOREP_V	6664	6661	0
// OP_ADDRESS	28	434	6667
// OP_LOAD_V	28	105	6670
// OP_STOREP_V	6670	6667	0
// OP_ADDRESS	28	433	6673
// OP_STOREP_F	283	6673	0
// OP_LOAD_F	28	152	6674
// OP_IFNOT	6674	5	0
// OP_ADDRESS	28	163	6675
// OP_STOREP_F	251	6675	0
// OP_ADDRESS	28	362	6676
// OP_STOREP_FNC	6363	6676	0
// OP_LOAD_F	28	162	6677
// OP_IFNOT	6677	3	0
// OP_ADDRESS	28	413	6678
// OP_STOREP_F	276	6678	0
// OP_ADDRESS	28	146	6679
// OP_STOREP_FNC	6370	6679	0
// OP_ADDRESS	28	523	6680
// OP_STOREP_FNC	636	6680	0
// OP_ADDRESS	28	148	6681
// OP_STOREP_FNC	6486	6681	0
// OP_ADDRESS	28	150	6682
// OP_LOAD_F	28	102	6683
// OP_ADD_F	6683	993	6684
// OP_STOREP_F	6684	6682	0
// OP_DONE	0	0	0
void () func_door = 
{
    if(world.worldtype == FALSE)
    {
        precache_sound("doors/medtry.wav");
        precache_sound("doors/meduse.wav");
        self.noise3 = "doors/medtry.wav";
        self.noise4 = "doors/meduse.wav";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_sound("doors/runetry.wav");
            precache_sound("doors/runeuse.wav");
            self.noise3 = "doors/runetry.wav";
            self.noise4 = "doors/runeuse.wav";
        }
        else
        {
            if(world.worldtype == FL_SWIM)
            {
                precache_sound("doors/basetry.wav");
                precache_sound("doors/baseuse.wav");
                self.noise3 = "doors/basetry.wav";
                self.noise4 = "doors/baseuse.wav";
            }
            else
            {
                dprint("no worldtype set!\n");
            }
            
        }
        
    }
    
    
    if(self.sounds == FALSE)
    {
        precache_sound("misc/null.wav");
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        self.noise2 = "misc/null.wav";
    }
    
    
    if(self.sounds == TRUE)
    {
        precache_sound("doors/drclos4.wav");
        precache_sound("doors/doormv1.wav");
        self.noise1 = "doors/drclos4.wav";
        self.noise2 = "doors/doormv1.wav";
    }
    
    
    if(self.sounds == FL_SWIM)
    {
        precache_sound("doors/hydro1.wav");
        precache_sound("doors/hydro2.wav");
        self.noise2 = "doors/hydro1.wav";
        self.noise1 = "doors/hydro2.wav";
    }
    
    
    if(self.sounds == MOVETYPE_WALK)
    {
        precache_sound("doors/stndr1.wav");
        precache_sound("doors/stndr2.wav");
        self.noise2 = "doors/stndr1.wav";
        self.noise1 = "doors/stndr2.wav";
    }
    
    
    if(self.sounds == MOVETYPE_STEP)
    {
        precache_sound("doors/ddoor1.wav");
        precache_sound("doors/ddoor2.wav");
        self.noise1 = "doors/ddoor2.wav";
        self.noise2 = "doors/ddoor1.wav";
    }
    
    SetMovedir();
    self.max_health = self.health;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    self.classname = "door";
    self.blocked = door_blocked;
    self.use = door_use;
    
    if(self.spawnflags & DOOR_SILVER_KEY)
    {
        self.items = IT_KEY1;
    }
    
    
    if(self.spawnflags & DOOR_GOLD_KEY)
    {
        self.items = IT_KEY2;
    }
    
    
    if(!self.speed)
    {
        self.speed = MUST_HAVE;
    }
    
    
    if(!self.wait)
    {
        self.wait = MOVETYPE_WALK;
    }
    
    
    if(!self.lip)
    {
        self.lip = FL_CLIENT;
    }
    
    
    if(!self.dmg)
    {
        self.dmg = FL_SWIM;
    }
    
    self.pos1 = self.origin;
    self.pos2 = self.pos1 + (self.movedir * ((fabs(self.movedir * self.size)) - self.lip));
    
    if(self.spawnflags & DOOR_START_OPEN)
    {
        setorigin(self, self.pos2);
        self.pos2 = self.pos1;
        self.pos1 = self.origin;
    }
    
    self.state = STATE_BOTTOM;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
        self.th_die = door_killed;
    }
    
    
    if(self.items)
    {
        self.wait = CONTENT_EMPTY;
    }
    
    self.touch = door_touch;
    self.th_weight = doorweight;
    self.think = LinkDoors;
    self.nextthink = self.ltime + 0.1;
};

void () fd_secret_move1;
void () fd_secret_move2;
void () fd_secret_move3;
void () fd_secret_move4;
void () fd_secret_move5;
void () fd_secret_move6;
void () fd_secret_done;
float SECRET_OPEN_ONCE = 1;
float SECRET_1ST_LEFT = 2;
float SECRET_1ST_DOWN = 4;
float SECRET_NO_SHOOT = 8;
float SECRET_YES_SHOOT = 16;
// fd_secret_use
// function begins at statement 10203, parm_start=6698
// OP_ADDRESS	28	152	6699
// OP_STOREP_F	3711	6699	0
// OP_LOAD_V	28	105	6700
// OP_LOAD_V	28	109	6703
// OP_NE_V	6700	6703	6706
// OP_IFNOT	6706	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	6707
// OP_STOREP_S	343	6707	0
// OP_CALL0	518	0	0
// OP_LOAD_F	28	195	6708
// OP_BITAND	6708	6695	6709
// OP_NOT_F	6709	0	6710
// OP_IFNOT	6710	5	0
// OP_ADDRESS	28	361	6711
// OP_STOREP_FNC	517	6711	0
// OP_ADDRESS	28	163	6712
// OP_STOREP_F	250	6712	0
// OP_ADDRESS	28	113	6713
// OP_STOREP_V	286	6713	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	209	6716
// OP_STORE_V	6716	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	150	6717
// OP_LOAD_F	28	102	6718
// OP_ADD_F	6718	993	6719
// OP_STOREP_F	6719	6717	0
// OP_LOAD_F	28	195	6720
// OP_BITAND	6720	6693	6721
// OP_SUB_F	214	6721	6722
// OP_STORE_F	6722	6698	0
// OP_LOAD_V	28	395	6723
// OP_STORE_V	6723	4	0
// OP_CALL1	447	0	0
// OP_LOAD_F	28	400	6726
// OP_NOT_F	6726	0	6727
// OP_IFNOT	6727	17	0
// OP_LOAD_F	28	195	6728
// OP_BITAND	6728	6694	6729
// OP_IFNOT	6729	8	0
// OP_ADDRESS	28	400	6730
// OP_LOAD_V	28	142	6731
// OP_MUL_V	62	6731	6734
// OP_STORE_V	6734	4	0
// OP_CALL1	485	0	0
// OP_STOREP_F	1	6730	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	400	6735
// OP_LOAD_V	28	142	6736
// OP_MUL_V	65	6736	6739
// OP_STORE_V	6739	4	0
// OP_CALL1	485	0	0
// OP_STOREP_F	1	6735	0
// OP_LOAD_F	28	399	6740
// OP_NOT_F	6740	0	6741
// OP_IFNOT	6741	7	0
// OP_ADDRESS	28	399	6742
// OP_LOAD_V	28	142	6743
// OP_MUL_V	59	6743	6746
// OP_STORE_V	6746	4	0
// OP_CALL1	485	0	0
// OP_STOREP_F	1	6742	0
// OP_LOAD_F	28	195	6747
// OP_BITAND	6747	6694	6748
// OP_IFNOT	6748	8	0
// OP_ADDRESS	28	405	6749
// OP_LOAD_V	28	105	6752
// OP_LOAD_F	28	400	6755
// OP_MUL_VF	62	6755	6756
// OP_SUB_V	6752	6756	6759
// OP_STOREP_V	6759	6749	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	405	6762
// OP_LOAD_V	28	105	6765
// OP_LOAD_F	28	400	6768
// OP_MUL_F	6768	6698	6769
// OP_MUL_VF	65	6769	6770
// OP_ADD_V	6765	6770	6773
// OP_STOREP_V	6773	6762	0
// OP_ADDRESS	28	409	6776
// OP_LOAD_V	28	405	6779
// OP_LOAD_F	28	399	6782
// OP_MUL_VF	59	6782	6783
// OP_ADD_V	6779	6783	6786
// OP_STOREP_V	6786	6776	0
// OP_LOAD_V	28	405	6789
// OP_STORE_V	6789	4	0
// OP_LOAD_F	28	364	6792
// OP_STORE_V	6792	7	0
// OP_STORE_V	6685	10	0
// OP_CALL3	512	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	210	6793
// OP_STORE_V	6793	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_use = 
{
    local float temp;
    self.health = 10000;
    
    if(self.origin != self.oldorigin)
    {
        return;
    }
    
    self.message = string_null;
    SUB_UseTargets();
    
    if(!(self.spawnflags & SECRET_NO_SHOOT))
    {
        self.th_pain = SUB_Null;
        self.takedamage = DAMAGE_NO;
    }
    
    self.velocity = VEC_ORIGIN;
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.nextthink = self.ltime + 0.1;
    temp = TRUE - (self.spawnflags & SECRET_1ST_LEFT);
    makevectors(self.mangle);
    
    if(!self.t_width)
    {
        if(self.spawnflags & SECRET_1ST_DOWN)
        {
            self.t_width = fabs(v_up * self.size);
        }
        else
        {
            self.t_width = fabs(v_right * self.size);
        }
        
    }
    
    
    if(!self.t_length)
    {
        self.t_length = fabs(v_forward * self.size);
    }
    
    if(self.spawnflags & SECRET_1ST_DOWN)
    {
        self.dest1 = self.origin - (v_up * self.t_width);
    }
    else
    {
        self.dest1 = self.origin + (v_right * (self.t_width * temp));
    }
    
    self.dest2 = self.dest1 + (v_forward * self.t_length);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move1);
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
};

// fd_secret_move1
// function begins at statement 10306, parm_start=6794
// OP_ADDRESS	28	150	6794
// OP_LOAD_F	28	102	6795
// OP_ADD_F	6795	214	6796
// OP_STOREP_F	6796	6794	0
// OP_ADDRESS	28	148	6797
// OP_STOREP_FNC	6686	6797	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6798
// OP_STORE_V	6798	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_move1 = 
{
    self.nextthink = self.ltime + TRUE;
    self.think = fd_secret_move2;
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
};

// fd_secret_move2
// function begins at statement 10320, parm_start=6799
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	210	6799
// OP_STORE_V	6799	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	409	6800
// OP_STORE_V	6800	4	0
// OP_LOAD_F	28	364	6803
// OP_STORE_V	6803	7	0
// OP_STORE_V	6687	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () fd_secret_move2 = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    SUB_CalcMove(self.dest2, self.speed, fd_secret_move3);
};

// fd_secret_move3
// function begins at statement 10334, parm_start=6804
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6804
// OP_STORE_V	6804	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	28	549	6805
// OP_LOAD_ENT	6805	194	6806
// OP_LOAD_ENT	6806	194	6807
// OP_EQ_E	6807	28	6808
// OP_IFNOT	6808	4	0
// OP_LOAD_ENT	28	549	6809
// OP_ADDRESS	6809	366	6810
// OP_STOREP_F	31	6810	0
// OP_LOAD_F	28	195	6811
// OP_BITAND	6811	6692	6812
// OP_NOT_F	6812	0	6813
// OP_IFNOT	6813	8	0
// OP_ADDRESS	28	150	6814
// OP_LOAD_F	28	102	6815
// OP_LOAD_F	28	413	6816
// OP_ADD_F	6815	6816	6817
// OP_STOREP_F	6817	6814	0
// OP_ADDRESS	28	148	6818
// OP_STOREP_FNC	6688	6818	0
// OP_DONE	0	0	0
void () fd_secret_move3 = 
{
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
    
    if(self.lastbot.goalentity.goalentity == self)
    {
        self.lastbot.search_time = time;
    }
    
    
    if(!(self.spawnflags & SECRET_OPEN_ONCE))
    {
        self.nextthink = self.ltime + self.wait;
        self.think = fd_secret_move4;
    }
    
};

// fd_secret_move4
// function begins at statement 10361, parm_start=6819
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	210	6819
// OP_STORE_V	6819	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	405	6820
// OP_STORE_V	6820	4	0
// OP_LOAD_F	28	364	6823
// OP_STORE_V	6823	7	0
// OP_STORE_V	6689	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () fd_secret_move4 = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move5);
};

// fd_secret_move5
// function begins at statement 10375, parm_start=6824
// OP_ADDRESS	28	150	6824
// OP_LOAD_F	28	102	6825
// OP_ADD_F	6825	214	6826
// OP_STOREP_F	6826	6824	0
// OP_ADDRESS	28	148	6827
// OP_STOREP_FNC	6690	6827	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6828
// OP_STORE_V	6828	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_move5 = 
{
    self.nextthink = self.ltime + TRUE;
    self.think = fd_secret_move6;
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
};

// fd_secret_move6
// function begins at statement 10389, parm_start=6829
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	210	6829
// OP_STORE_V	6829	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	109	6830
// OP_STORE_V	6830	4	0
// OP_LOAD_F	28	364	6833
// OP_STORE_V	6833	7	0
// OP_STORE_V	6691	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () fd_secret_move6 = 
{
    sound(self, CHAN_VOICE, self.noise2, TRUE, ATTN_NORM);
    SUB_CalcMove(self.oldorigin, self.speed, fd_secret_done);
};

// fd_secret_done
// function begins at statement 10403, parm_start=6834
// OP_LOAD_S	28	197	6834
// OP_NOT_S	6834	0	6835
// OP_LOAD_F	28	195	6836
// OP_BITAND	6836	6696	6837
// OP_OR	6835	6837	6838
// OP_IFNOT	6838	7	0
// OP_ADDRESS	28	152	6839
// OP_STOREP_F	3711	6839	0
// OP_ADDRESS	28	163	6840
// OP_STOREP_F	251	6840	0
// OP_ADDRESS	28	361	6841
// OP_STOREP_FNC	6697	6841	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	211	6842
// OP_STORE_V	6842	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () fd_secret_done = 
{
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
    }
    
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
};

// secret_blocked
// function begins at statement 10423, parm_start=6844
// OP_LOAD_F	28	373	6844
// OP_LT	31	6844	6845
// OP_IFNOT	6845	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	6846
// OP_ADD_F	31	677	6847
// OP_STOREP_F	6847	6846	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	420	6848
// OP_STORE_V	6848	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
void () secret_blocked = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 0.5;
    T_Damage(other, self, self, self.dmg);
};

// secret_touch
// function begins at statement 10437, parm_start=6849
// OP_LOAD_S	29	129	6849
// OP_NE_S	6849	1102	6850
// OP_IFNOT	6850	5	0
// OP_LOAD_S	29	129	6851
// OP_NE_S	6851	2056	6852
// OP_IFNOT	6852	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	6853
// OP_GT	6853	31	6854
// OP_IFNOT	6854	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	6855
// OP_ADD_F	31	216	6856
// OP_STOREP_F	6856	6855	0
// OP_LOAD_S	28	206	6857
// OP_IFNOT	6857	14	0
// OP_LOAD_S	29	129	6858
// OP_EQ_S	6858	1102	6859
// OP_IFNOT	6859	5	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	6860
// OP_STORE_V	6860	7	0
// OP_CALL2	506	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	1110	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () secret_touch = 
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
    
    if(self.message)
    {
        
        if(other.classname == "player")
        {
            centerprint(other, self.message);
        }
        
        sound(other, CHAN_BODY, "misc/talk.wav", TRUE, ATTN_NORM);
    }
    
};

// func_door_secret
// function begins at statement 10467, parm_start=6862
// OP_LOAD_F	28	207	6862
// OP_EQ_F	6862	213	6863
// OP_IFNOT	6863	3	0
// OP_ADDRESS	28	207	6864
// OP_STOREP_F	228	6864	0
// OP_LOAD_F	28	207	6865
// OP_EQ_F	6865	214	6866
// OP_IFNOT	6866	13	0
// OP_STORE_V	6867	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6868	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6574	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	6869
// OP_STOREP_S	6867	6869	0
// OP_ADDRESS	28	210	6870
// OP_STOREP_S	6868	6870	0
// OP_ADDRESS	28	211	6871
// OP_STOREP_S	6574	6871	0
// OP_LOAD_F	28	207	6872
// OP_EQ_F	6872	216	6873
// OP_IFNOT	6873	11	0
// OP_STORE_V	6874	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6875	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	6876
// OP_STOREP_S	6874	6876	0
// OP_ADDRESS	28	209	6877
// OP_STOREP_S	6875	6877	0
// OP_ADDRESS	28	211	6878
// OP_STOREP_S	6875	6878	0
// OP_LOAD_F	28	207	6879
// OP_EQ_F	6879	228	6880
// OP_IFNOT	6880	11	0
// OP_STORE_V	6881	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	6882	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	210	6883
// OP_STOREP_S	6881	6883	0
// OP_ADDRESS	28	209	6884
// OP_STOREP_S	6882	6884	0
// OP_ADDRESS	28	211	6885
// OP_STOREP_S	6882	6885	0
// OP_LOAD_F	28	420	6886
// OP_NOT_F	6886	0	6887
// OP_IFNOT	6887	3	0
// OP_ADDRESS	28	420	6888
// OP_STOREP_F	216	6888	0
// OP_ADDRESS	28	395	6889
// OP_LOAD_V	28	117	6892
// OP_STOREP_V	6892	6889	0
// OP_ADDRESS	28	117	6895
// OP_STOREP_V	286	6895	0
// OP_ADDRESS	28	104	6898
// OP_STOREP_F	241	6898	0
// OP_ADDRESS	28	103	6899
// OP_STOREP_F	232	6899	0
// OP_ADDRESS	28	129	6900
// OP_STOREP_S	6605	6900	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6901
// OP_STORE_V	6901	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6902
// OP_STORE_V	6902	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	146	6905
// OP_STOREP_FNC	635	6905	0
// OP_ADDRESS	28	523	6906
// OP_STOREP_FNC	636	6906	0
// OP_ADDRESS	28	149	6907
// OP_STOREP_FNC	6843	6907	0
// OP_ADDRESS	28	364	6908
// OP_STOREP_F	756	6908	0
// OP_ADDRESS	28	147	6909
// OP_STOREP_FNC	6697	6909	0
// OP_LOAD_S	28	197	6910
// OP_NOT_S	6910	0	6911
// OP_LOAD_F	28	195	6912
// OP_BITAND	6912	6696	6913
// OP_OR	6911	6913	6914
// OP_IFNOT	6914	7	0
// OP_ADDRESS	28	152	6915
// OP_STOREP_F	3711	6915	0
// OP_ADDRESS	28	163	6916
// OP_STOREP_F	251	6916	0
// OP_ADDRESS	28	361	6917
// OP_STOREP_FNC	6697	6917	0
// OP_ADDRESS	28	109	6918
// OP_LOAD_V	28	105	6921
// OP_STOREP_V	6921	6918	0
// OP_LOAD_F	28	413	6924
// OP_NOT_F	6924	0	6925
// OP_IFNOT	6925	3	0
// OP_ADDRESS	28	413	6926
// OP_STOREP_F	230	6926	0
// OP_DONE	0	0	0
void () func_door_secret = 
{
    
    if(self.sounds == FALSE)
    {
        self.sounds = MOVETYPE_WALK;
    }
    
    
    if(self.sounds == TRUE)
    {
        precache_sound("doors/latch2.wav");
        precache_sound("doors/winch2.wav");
        precache_sound("doors/drclos4.wav");
        self.noise1 = "doors/latch2.wav";
        self.noise2 = "doors/winch2.wav";
        self.noise3 = "doors/drclos4.wav";
    }
    
    
    if(self.sounds == FL_SWIM)
    {
        precache_sound("doors/airdoor1.wav");
        precache_sound("doors/airdoor2.wav");
        self.noise2 = "doors/airdoor1.wav";
        self.noise1 = "doors/airdoor2.wav";
        self.noise3 = "doors/airdoor2.wav";
    }
    
    
    if(self.sounds == MOVETYPE_WALK)
    {
        precache_sound("doors/basesec1.wav");
        precache_sound("doors/basesec2.wav");
        self.noise2 = "doors/basesec1.wav";
        self.noise1 = "doors/basesec2.wav";
        self.noise3 = "doors/basesec2.wav";
    }
    
    
    if(!self.dmg)
    {
        self.dmg = FL_SWIM;
    }
    
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.classname = "door";
    setmodel(self, self.model);
    setorigin(self, self.origin);
    self.touch = secret_touch;
    self.th_weight = doorweight;
    self.blocked = secret_blocked;
    self.speed = 50;
    self.use = fd_secret_use;
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.wait)
    {
        self.wait = MOVETYPE_FLY;
    }
    
};

