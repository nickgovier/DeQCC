float DOOR_START_OPEN = 1.000;
float DOOR_DONT_LINK = 4.000;
float DOOR_GOLD_KEY = 8.000;
float DOOR_SILVER_KEY = 16.000;
float DOOR_TOGGLE = 32.000;
void () door_go_down;
void () door_go_up;
// door_blocked
// function begins at statement 9335, parm_start=6346
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	421	6346
// OP_STORE_V	6346	13	0
// OP_CALL4	521	0	0
// OP_LOAD_F	28	414	6347
// OP_GE	6347	650	6348
// OP_IFNOT	6348	7	0
// OP_LOAD_F	28	434	6349
// OP_EQ_F	6349	286	6350
// OP_IFNOT	6350	3	0
// OP_CALL0	6344	0	0
// OP_GOTO	2	0	0
// OP_CALL0	6343	0	0
// OP_DONE	0	0	0
void () door_blocked = 
{
    T_Damage(other, self, self, self.dmg);
    
    if(self.wait >= 0.000)
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
// function begins at statement 9351, parm_start=6352
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	209	6352
// OP_STORE_V	6352	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	6353
// OP_STOREP_F	283	6353	0
// OP_LOAD_F	28	195	6354
// OP_BITAND	6354	6342	6355
// OP_IFNOT	6355	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	148	6356
// OP_STOREP_FNC	6343	6356	0
// OP_ADDRESS	28	150	6357
// OP_LOAD_F	28	102	6358
// OP_LOAD_F	28	414	6359
// OP_ADD_F	6358	6359	6360
// OP_STOREP_F	6360	6357	0
// OP_DONE	0	0	0
void () door_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_TOP;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        return;
    }
    
    self.think = door_go_down;
    self.nextthink = self.ltime + self.wait;
};

// door_hit_bottom
// function begins at statement 9372, parm_start=6362
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	209	6362
// OP_STORE_V	6362	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	6363
// OP_STOREP_F	284	6363	0
// OP_DONE	0	0	0
void () door_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// door_go_down
// function begins at statement 9382, parm_start=6364
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	210	6364
// OP_STORE_V	6364	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	185	6365
// OP_IFNOT	6365	6	0
// OP_ADDRESS	28	163	6366
// OP_STOREP_F	252	6366	0
// OP_ADDRESS	28	152	6367
// OP_LOAD_F	28	185	6368
// OP_STOREP_F	6368	6367	0
// OP_ADDRESS	28	434	6369
// OP_STOREP_F	286	6369	0
// OP_LOAD_V	28	435	6370
// OP_STORE_V	6370	4	0
// OP_LOAD_F	28	365	6373
// OP_STORE_V	6373	7	0
// OP_STORE_V	6361	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () door_go_down = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    
    if(self.max_health)
    {
        self.takedamage = DAMAGE_YES;
        self.health = self.max_health;
    }
    
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, door_hit_bottom);
};

// door_go_up
// function begins at statement 9405, parm_start=6374
// OP_LOAD_F	28	434	6374
// OP_EQ_F	6374	285	6375
// OP_IFNOT	6375	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	434	6376
// OP_EQ_F	6376	283	6377
// OP_IFNOT	6377	7	0
// OP_ADDRESS	28	150	6378
// OP_LOAD_F	28	102	6379
// OP_LOAD_F	28	414	6380
// OP_ADD_F	6379	6380	6381
// OP_STOREP_F	6381	6378	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	210	6382
// OP_STORE_V	6382	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	6383
// OP_STOREP_F	285	6383	0
// OP_LOAD_V	28	439	6384
// OP_STORE_V	6384	4	0
// OP_LOAD_F	28	365	6387
// OP_STORE_V	6387	7	0
// OP_STORE_V	6351	10	0
// OP_CALL3	513	0	0
// OP_CALL0	519	0	0
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
    
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, door_hit_top);
    SUB_UseTargets();
};

// door_fire
// function begins at statement 9435, parm_start=6389
// OP_LOAD_ENT	28	201	6391
// OP_NE_E	6391	28	6392
// OP_IFNOT	6392	3	0
// OP_STORE_V	6393	4	0
// OP_CALL1	457	0	0
// OP_LOAD_F	28	162	6394
// OP_IFNOT	6394	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	417	6395
// OP_STORE_V	6395	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	206	6396
// OP_STOREP_S	344	6396	0
// OP_STORE_ENT	28	6389	0
// OP_LOAD_F	28	195	6397
// OP_BITAND	6397	6342	6398
// OP_IFNOT	6398	17	0
// OP_LOAD_F	28	434	6399
// OP_EQ_F	6399	285	6400
// OP_LOAD_F	28	434	6401
// OP_EQ_F	6401	283	6402
// OP_OR	6400	6402	6403
// OP_IFNOT	6403	11	0
// OP_STORE_ENT	28	6390	0
// OP_CALL0	6343	0	0
// OP_LOAD_ENT	28	181	6404
// OP_STORE_ENT	6404	28	0
// OP_NE_E	28	6390	6405
// OP_NE_E	28	30	6406
// OP_AND	6405	6406	6407
// OP_IF	6407	-6	0
// OP_STORE_ENT	6389	28	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	6390	0
// OP_CALL0	6344	0	0
// OP_LOAD_ENT	28	181	6408
// OP_STORE_ENT	6408	28	0
// OP_NE_E	28	6390	6409
// OP_NE_E	28	30	6410
// OP_AND	6409	6410	6411
// OP_IF	6411	-6	0
// OP_STORE_ENT	6389	28	0
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
        sound(self, CHAN_VOICE, self.noise4, 1.000, ATTN_NORM);
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

// door_use
// function begins at statement 9481, parm_start=6413
// OP_ADDRESS	28	206	6414
// OP_STOREP_S	652	6414	0
// OP_LOAD_ENT	28	201	6415
// OP_ADDRESS	6415	206	6416
// OP_STOREP_S	652	6416	0
// OP_LOAD_ENT	28	181	6417
// OP_ADDRESS	6417	206	6418
// OP_STOREP_S	652	6418	0
// OP_STORE_ENT	28	6413	0
// OP_LOAD_ENT	28	201	6419
// OP_STORE_ENT	6419	28	0
// OP_CALL0	6388	0	0
// OP_STORE_ENT	6413	28	0
// OP_DONE	0	0	0
void () door_use = 
{
    local entity oself;
    self.message = "";
    self.owner.message = "";
    self.enemy.message = "";
    oself = self;
    self = self.owner;
    door_fire();
    self = oself;
};

// door_trigger_touch
// function begins at statement 9495, parm_start=6421
// OP_LOAD_F	29	152	6421
// OP_LE	6421	650	6422
// OP_IFNOT	6422	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	6423
// OP_LT	31	6423	6424
// OP_IFNOT	6424	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	6425
// OP_ADD_F	31	708	6426
// OP_STOREP_F	6426	6425	0
// OP_STORE_ENT	29	347	0
// OP_LOAD_ENT	28	201	6427
// OP_STORE_ENT	6427	28	0
// OP_CALL0	6412	0	0
// OP_DONE	0	0	0
void () door_trigger_touch = 
{
    
    if(other.health <= 0.000)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 1.000;
    activator = other;
    self = self.owner;
    door_use();
};

// door_killed
// function begins at statement 9511, parm_start=6429
// OP_STORE_ENT	28	6429	0
// OP_LOAD_ENT	28	201	6430
// OP_STORE_ENT	6430	28	0
// OP_ADDRESS	28	152	6431
// OP_LOAD_F	28	185	6432
// OP_STOREP_F	6432	6431	0
// OP_ADDRESS	28	163	6433
// OP_STOREP_F	251	6433	0
// OP_CALL0	6412	0	0
// OP_STORE_ENT	6429	28	0
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

// door_touch
// function begins at statement 9522, parm_start=6435
// OP_LOAD_S	29	129	6435
// OP_NE_S	6435	797	6436
// OP_IFNOT	6436	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	6437
// OP_LOAD_F	6437	374	6438
// OP_GT	6438	31	6439
// OP_IFNOT	6439	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	6440
// OP_ADDRESS	6440	374	6441
// OP_ADD_F	31	929	6442
// OP_STOREP_F	6442	6441	0
// OP_LOAD_ENT	28	201	6443
// OP_LOAD_S	6443	206	6444
// OP_NE_S	6444	652	6445
// OP_IFNOT	6445	12	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	201	6446
// OP_LOAD_S	6446	206	6447
// OP_STORE_V	6447	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	805	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	162	6448
// OP_NOT_F	6448	0	6449
// OP_IFNOT	6449	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	6450
// OP_LOAD_F	29	162	6451
// OP_BITAND	6450	6451	6452
// OP_LOAD_F	28	162	6453
// OP_NE_F	6452	6453	6454
// OP_IFNOT	6454	89	0
// OP_LOAD_ENT	28	201	6455
// OP_LOAD_F	6455	162	6456
// OP_EQ_F	6456	271	6457
// OP_IFNOT	6457	43	0
// OP_LOAD_F	30	353	6458
// OP_EQ_F	6458	929	6459
// OP_IFNOT	6459	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6460	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6461
// OP_STORE_V	6461	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	353	6462
// OP_EQ_F	6462	708	6463
// OP_IFNOT	6463	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6464	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6465
// OP_STORE_V	6465	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	353	6466
// OP_EQ_F	6466	650	6467
// OP_IFNOT	6467	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6468	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6469
// OP_STORE_V	6469	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	42	0	0
// OP_LOAD_F	30	353	6470
// OP_EQ_F	6470	929	6471
// OP_IFNOT	6471	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6472	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6473
// OP_STORE_V	6473	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	353	6474
// OP_EQ_F	6474	708	6475
// OP_IFNOT	6475	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6476	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6477
// OP_STORE_V	6477	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	353	6478
// OP_EQ_F	6478	650	6479
// OP_IFNOT	6479	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6480	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6481
// OP_STORE_V	6481	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	6482
// OP_LOAD_F	29	162	6483
// OP_LOAD_F	28	162	6484
// OP_SUB_F	6483	6484	6485
// OP_STOREP_F	6485	6482	0
// OP_ADDRESS	28	146	6486
// OP_STOREP_FNC	518	6486	0
// OP_LOAD_ENT	28	181	6487
// OP_IFNOT	6487	4	0
// OP_LOAD_ENT	28	181	6488
// OP_ADDRESS	6488	146	6489
// OP_STOREP_FNC	518	6489	0
// OP_CALL0	6412	0	0
// OP_DONE	0	0	0
void () door_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.owner.attack_finished > time)
    {
        return;
    }
    
    self.owner.attack_finished = time + 2.000;
    
    if(self.owner.message != "")
    {
        centerprint(other, self.owner.message);
        sound(other, CHAN_VOICE, "misc/talk.wav", 1.000, ATTN_NORM);
    }
    
    
    if(!self.items)
    {
        return;
    }
    
    
    if((self.items & other.items) != self.items)
    {
        if(self.owner.items == IT_KEY1)
        {
            if(world.worldtype == 2.000)
            {
                centerprint(other, "You need the silver keycard");
                sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == 1.000)
                {
                    centerprint(other, "You need the silver runekey");
                    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == 0.000)
                    {
                        centerprint(other, "You need the silver key");
                        sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(world.worldtype == 2.000)
            {
                centerprint(other, "You need the gold keycard");
                sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == 1.000)
                {
                    centerprint(other, "You need the gold runekey");
                    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == 0.000)
                    {
                        centerprint(other, "You need the gold key");
                        sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
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
// function begins at statement 9662, parm_start=6491
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	6497	0
// OP_ADDRESS	6497	103	6504
// OP_STOREP_F	228	6504	0
// OP_ADDRESS	6497	104	6505
// OP_STOREP_F	239	6505	0
// OP_ADDRESS	6497	201	6506
// OP_STOREP_ENT	28	6506	0
// OP_ADDRESS	6497	146	6507
// OP_STOREP_FNC	6420	6507	0
// OP_STORE_V	6491	6498	0
// OP_STORE_V	6494	6501	0
// OP_STORE_V	6497	4	0
// OP_SUB_V	6498	6508	6511
// OP_STORE_V	6511	7	0
// OP_ADD_V	6501	6508	6514
// OP_STORE_V	6514	10	0
// OP_CALL3	451	0	0
// OP_RETURN	6497	0	0
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
// function begins at statement 9682, parm_start=6518
// OP_LOAD_F	6518	135	6520
// OP_LOAD_F	6519	139	6521
// OP_GT	6520	6521	6522
// OP_IFNOT	6522	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6518	136	6523
// OP_LOAD_F	6519	140	6524
// OP_GT	6523	6524	6525
// OP_IFNOT	6525	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6518	137	6526
// OP_LOAD_F	6519	141	6527
// OP_GT	6526	6527	6528
// OP_IFNOT	6528	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6518	139	6529
// OP_LOAD_F	6519	135	6530
// OP_LT	6529	6530	6531
// OP_IFNOT	6531	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6518	140	6532
// OP_LOAD_F	6519	136	6533
// OP_LT	6532	6533	6534
// OP_IFNOT	6534	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	6518	141	6535
// OP_LOAD_F	6519	137	6536
// OP_LT	6535	6536	6537
// OP_IFNOT	6537	2	0
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
// function begins at statement 9714, parm_start=6539
// OP_LOAD_ENT	28	181	6547
// OP_IFNOT	6547	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	6548
// OP_BITAND	6548	1835	6549
// OP_IFNOT	6549	6	0
// OP_ADDRESS	28	201	6550
// OP_ADDRESS	28	181	6551
// OP_STOREP_ENT	28	6551	0
// OP_STOREP_ENT	28	6550	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	134	6552
// OP_STORE_V	6552	6541	0
// OP_LOAD_V	28	138	6555
// OP_STORE_V	6555	6544	0
// OP_STORE_ENT	28	6540	0
// OP_STORE_ENT	28	6539	0
// OP_ADDRESS	28	201	6558
// OP_STOREP_ENT	6540	6558	0
// OP_LOAD_F	28	152	6559
// OP_IFNOT	6559	4	0
// OP_ADDRESS	6540	152	6560
// OP_LOAD_F	28	152	6561
// OP_STOREP_F	6561	6560	0
// OP_LOAD_S	28	197	6562
// OP_IFNOT	6562	4	0
// OP_ADDRESS	6540	197	6563
// OP_LOAD_S	28	197	6564
// OP_STOREP_S	6564	6563	0
// OP_LOAD_S	28	206	6565
// OP_NE_S	6565	652	6566
// OP_IFNOT	6566	4	0
// OP_ADDRESS	6540	206	6567
// OP_LOAD_S	28	206	6568
// OP_STOREP_S	6568	6567	0
// OP_STORE_V	6539	4	0
// OP_STORE_V	129	7	0
// OP_LOAD_S	28	129	6569
// OP_STORE_V	6569	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	6539	0
// OP_NOT_ENT	6539	0	6570
// OP_IFNOT	6570	21	0
// OP_ADDRESS	28	181	6571
// OP_STOREP_ENT	6540	6571	0
// OP_LOAD_ENT	28	201	6572
// OP_STORE_ENT	6572	28	0
// OP_LOAD_F	28	152	6573
// OP_IFNOT	6573	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	197	6574
// OP_IFNOT	6574	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	6575
// OP_IFNOT	6575	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	6576
// OP_ADDRESS	6576	416	6577
// OP_STORE_V	6541	4	0
// OP_STORE_V	6544	7	0
// OP_CALL2	6490	0	0
// OP_STOREP_ENT	1	6577	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6539	7	0
// OP_CALL2	6517	0	0
// OP_IFNOT	1	38	0
// OP_LOAD_ENT	6539	181	6578
// OP_IFNOT	6578	3	0
// OP_STORE_V	6579	4	0
// OP_CALL1	457	0	0
// OP_ADDRESS	28	181	6580
// OP_STOREP_ENT	6539	6580	0
// OP_STORE_ENT	6539	28	0
// OP_LOAD_F	6539	135	6581
// OP_LT	6581	6541	6582
// OP_IFNOT	6582	3	0
// OP_LOAD_F	6539	135	6583
// OP_STORE_F	6583	6541	0
// OP_LOAD_F	6539	136	6584
// OP_LT	6584	6542	6585
// OP_IFNOT	6585	3	0
// OP_LOAD_F	6539	136	6586
// OP_STORE_F	6586	6542	0
// OP_LOAD_F	6539	137	6587
// OP_LT	6587	6543	6588
// OP_IFNOT	6588	3	0
// OP_LOAD_F	6539	137	6589
// OP_STORE_F	6589	6543	0
// OP_LOAD_F	6539	139	6590
// OP_GT	6590	6544	6591
// OP_IFNOT	6591	3	0
// OP_LOAD_F	6539	139	6592
// OP_STORE_F	6592	6544	0
// OP_LOAD_F	6539	140	6593
// OP_GT	6593	6545	6594
// OP_IFNOT	6594	3	0
// OP_LOAD_F	6539	140	6595
// OP_STORE_F	6595	6545	0
// OP_LOAD_F	6539	141	6596
// OP_GT	6596	6546	6597
// OP_IFNOT	6597	3	0
// OP_LOAD_F	6539	141	6598
// OP_STORE_F	6598	6546	0
// OP_IF	708	-87	0
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
    
    
    if(self.spawnflags & 4.000)
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
            
            
            if(t.mins_y < 0.000)
            {
                cmins_y = t.mins_y;
            }
            
            
            if(t.mins_z < 0.000)
            {
                cmins_z = t.mins_z;
            }
            
            
            if(t.maxs_x > cmaxs_x)
            {
                cmaxs_x = t.maxs_x;
            }
            
            
            if(t.maxs_y > 0.000)
            {
                cmaxs_y = t.maxs_y;
            }
            
            
            if(t.maxs_z > 0.000)
            {
                cmaxs_z = t.maxs_z;
            }
            
        }
        
    } while (1.000);
};

// func_door
// function begins at statement 9820, parm_start=6600
// OP_LOAD_F	30	353	6600
// OP_EQ_F	6600	650	6601
// OP_IFNOT	6601	10	0
// OP_STORE_V	6602	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6603	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	211	6604
// OP_STOREP_S	6602	6604	0
// OP_ADDRESS	28	417	6605
// OP_STOREP_S	6603	6605	0
// OP_GOTO	27	0	0
// OP_LOAD_F	30	353	6606
// OP_EQ_F	6606	708	6607
// OP_IFNOT	6607	10	0
// OP_STORE_V	6608	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6609	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	211	6610
// OP_STOREP_S	6608	6610	0
// OP_ADDRESS	28	417	6611
// OP_STOREP_S	6609	6611	0
// OP_GOTO	15	0	0
// OP_LOAD_F	30	353	6612
// OP_EQ_F	6612	929	6613
// OP_IFNOT	6613	10	0
// OP_STORE_V	6614	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6615	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	211	6616
// OP_STOREP_S	6614	6616	0
// OP_ADDRESS	28	417	6617
// OP_STOREP_S	6615	6617	0
// OP_GOTO	3	0	0
// OP_STORE_V	6618	4	0
// OP_CALL1	471	0	0
// OP_LOAD_F	28	207	6619
// OP_EQ_F	6619	650	6620
// OP_IFNOT	6620	9	0
// OP_STORE_V	6621	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6621	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	6622
// OP_STOREP_S	6621	6622	0
// OP_ADDRESS	28	210	6623
// OP_STOREP_S	6621	6623	0
// OP_LOAD_F	28	207	6624
// OP_EQ_F	6624	708	6625
// OP_IFNOT	6625	9	0
// OP_STORE_V	6626	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6627	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	6628
// OP_STOREP_S	6626	6628	0
// OP_ADDRESS	28	210	6629
// OP_STOREP_S	6627	6629	0
// OP_LOAD_F	28	207	6630
// OP_EQ_F	6630	929	6631
// OP_IFNOT	6631	9	0
// OP_STORE_V	6632	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6633	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	210	6634
// OP_STOREP_S	6632	6634	0
// OP_ADDRESS	28	209	6635
// OP_STOREP_S	6633	6635	0
// OP_LOAD_F	28	207	6636
// OP_EQ_F	6636	819	6637
// OP_IFNOT	6637	9	0
// OP_STORE_V	6638	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6639	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	210	6640
// OP_STOREP_S	6638	6640	0
// OP_ADDRESS	28	209	6641
// OP_STOREP_S	6639	6641	0
// OP_LOAD_F	28	207	6642
// OP_EQ_F	6642	1835	6643
// OP_IFNOT	6643	9	0
// OP_STORE_V	6644	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6645	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	6646
// OP_STOREP_S	6645	6646	0
// OP_ADDRESS	28	210	6647
// OP_STOREP_S	6644	6647	0
// OP_CALL0	602	0	0
// OP_ADDRESS	28	185	6648
// OP_LOAD_F	28	152	6649
// OP_STOREP_F	6649	6648	0
// OP_ADDRESS	28	104	6650
// OP_STOREP_F	242	6650	0
// OP_ADDRESS	28	103	6651
// OP_STOREP_F	233	6651	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6652
// OP_STORE_V	6652	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6655
// OP_STORE_V	6655	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	129	6656
// OP_STOREP_S	6657	6656	0
// OP_ADDRESS	28	149	6658
// OP_STOREP_FNC	6345	6658	0
// OP_ADDRESS	28	147	6659
// OP_STOREP_FNC	6412	6659	0
// OP_LOAD_F	28	195	6660
// OP_BITAND	6660	6341	6661
// OP_IFNOT	6661	3	0
// OP_ADDRESS	28	162	6662
// OP_STOREP_F	271	6662	0
// OP_LOAD_F	28	195	6663
// OP_BITAND	6663	6340	6664
// OP_IFNOT	6664	3	0
// OP_ADDRESS	28	162	6665
// OP_STOREP_F	272	6665	0
// OP_LOAD_F	28	365	6666
// OP_NOT_F	6666	0	6667
// OP_IFNOT	6667	3	0
// OP_ADDRESS	28	365	6668
// OP_STOREP_F	2165	6668	0
// OP_LOAD_F	28	414	6669
// OP_NOT_F	6669	0	6670
// OP_IFNOT	6670	3	0
// OP_ADDRESS	28	414	6671
// OP_STOREP_F	819	6671	0
// OP_LOAD_F	28	433	6672
// OP_NOT_F	6672	0	6673
// OP_IFNOT	6673	3	0
// OP_ADDRESS	28	433	6674
// OP_STOREP_F	1502	6674	0
// OP_LOAD_F	28	421	6675
// OP_NOT_F	6675	0	6676
// OP_IFNOT	6676	3	0
// OP_ADDRESS	28	421	6677
// OP_STOREP_F	929	6677	0
// OP_ADDRESS	28	435	6678
// OP_LOAD_V	28	105	6681
// OP_STOREP_V	6681	6678	0
// OP_ADDRESS	28	439	6684
// OP_LOAD_V	28	435	6687
// OP_LOAD_V	28	202	6690
// OP_LOAD_V	28	202	6693
// OP_LOAD_V	28	142	6696
// OP_MUL_V	6693	6696	6699
// OP_STORE_V	6699	4	0
// OP_CALL1	486	0	0
// OP_LOAD_F	28	433	6700
// OP_SUB_F	1	6700	6701
// OP_MUL_VF	6690	6701	6702
// OP_ADD_V	6687	6702	6705
// OP_STOREP_V	6705	6684	0
// OP_LOAD_F	28	195	6708
// OP_BITAND	6708	6338	6709
// OP_IFNOT	6709	11	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	439	6710
// OP_STORE_V	6710	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	439	6713
// OP_LOAD_V	28	435	6716
// OP_STOREP_V	6716	6713	0
// OP_ADDRESS	28	435	6719
// OP_LOAD_V	28	105	6722
// OP_STOREP_V	6722	6719	0
// OP_ADDRESS	28	434	6725
// OP_STOREP_F	284	6725	0
// OP_LOAD_F	28	152	6726
// OP_IFNOT	6726	5	0
// OP_ADDRESS	28	163	6727
// OP_STOREP_F	252	6727	0
// OP_ADDRESS	28	363	6728
// OP_STOREP_FNC	6428	6728	0
// OP_LOAD_F	28	162	6729
// OP_IFNOT	6729	3	0
// OP_ADDRESS	28	414	6730
// OP_STOREP_F	720	6730	0
// OP_ADDRESS	28	146	6731
// OP_STOREP_FNC	6434	6731	0
// OP_ADDRESS	28	148	6732
// OP_STOREP_FNC	6538	6732	0
// OP_ADDRESS	28	150	6733
// OP_LOAD_F	28	102	6734
// OP_ADD_F	6734	686	6735
// OP_STOREP_F	6735	6733	0
// OP_DONE	0	0	0
void () func_door = 
{
    if(world.worldtype == 0.000)
    {
        precache_sound("doors/medtry.wav");
        precache_sound("doors/meduse.wav");
        self.noise3 = "doors/medtry.wav";
        self.noise4 = "doors/meduse.wav";
    }
    else
    {
        if(world.worldtype == 1.000)
        {
            precache_sound("doors/runetry.wav");
            precache_sound("doors/runeuse.wav");
            self.noise3 = "doors/runetry.wav";
            self.noise4 = "doors/runeuse.wav";
        }
        else
        {
            if(world.worldtype == 2.000)
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
    
    
    if(self.sounds == 0.000)
    {
        precache_sound("misc/null.wav");
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        self.noise2 = "misc/null.wav";
    }
    
    
    if(self.sounds == 1.000)
    {
        precache_sound("doors/drclos4.wav");
        precache_sound("doors/doormv1.wav");
        self.noise1 = "doors/drclos4.wav";
        self.noise2 = "doors/doormv1.wav";
    }
    
    
    if(self.sounds == 2.000)
    {
        precache_sound("doors/hydro1.wav");
        precache_sound("doors/hydro2.wav");
        self.noise2 = "doors/hydro1.wav";
        self.noise1 = "doors/hydro2.wav";
    }
    
    
    if(self.sounds == 3.000)
    {
        precache_sound("doors/stndr1.wav");
        precache_sound("doors/stndr2.wav");
        self.noise2 = "doors/stndr1.wav";
        self.noise1 = "doors/stndr2.wav";
    }
    
    
    if(self.sounds == 4.000)
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
        self.speed = 100.000;
    }
    
    
    if(!self.wait)
    {
        self.wait = 3.000;
    }
    
    
    if(!self.lip)
    {
        self.lip = 8.000;
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2.000;
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
        self.wait = -1.000;
    }
    
    self.touch = door_touch;
    self.think = LinkDoors;
    self.nextthink = self.ltime + 0.100;
};

void () fd_secret_move1;
void () fd_secret_move2;
void () fd_secret_move3;
void () fd_secret_move4;
void () fd_secret_move5;
void () fd_secret_move6;
void () fd_secret_done;
float SECRET_OPEN_ONCE = 1.000;
float SECRET_1ST_LEFT = 2.000;
float SECRET_1ST_DOWN = 4.000;
float SECRET_NO_SHOOT = 8.000;
float SECRET_YES_SHOOT = 16.000;
// fd_secret_use
// function begins at statement 10015, parm_start=6749
// OP_ADDRESS	28	152	6750
// OP_STOREP_F	3426	6750	0
// OP_LOAD_V	28	105	6751
// OP_LOAD_V	28	109	6754
// OP_NE_V	6751	6754	6757
// OP_IFNOT	6757	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	6758
// OP_STOREP_S	344	6758	0
// OP_CALL0	519	0	0
// OP_LOAD_F	28	195	6759
// OP_BITAND	6759	6746	6760
// OP_NOT_F	6760	0	6761
// OP_IFNOT	6761	5	0
// OP_ADDRESS	28	362	6762
// OP_STOREP_FNC	518	6762	0
// OP_ADDRESS	28	163	6763
// OP_STOREP_F	251	6763	0
// OP_ADDRESS	28	113	6764
// OP_STOREP_V	638	6764	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	209	6767
// OP_STORE_V	6767	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	150	6768
// OP_LOAD_F	28	102	6769
// OP_ADD_F	6769	686	6770
// OP_STOREP_F	6770	6768	0
// OP_LOAD_F	28	195	6771
// OP_BITAND	6771	6744	6772
// OP_SUB_F	708	6772	6773
// OP_STORE_F	6773	6749	0
// OP_LOAD_V	28	396	6774
// OP_STORE_V	6774	4	0
// OP_CALL1	448	0	0
// OP_LOAD_F	28	401	6777
// OP_NOT_F	6777	0	6778
// OP_IFNOT	6778	17	0
// OP_LOAD_F	28	195	6779
// OP_BITAND	6779	6745	6780
// OP_IFNOT	6780	8	0
// OP_ADDRESS	28	401	6781
// OP_LOAD_V	28	142	6782
// OP_MUL_V	62	6782	6785
// OP_STORE_V	6785	4	0
// OP_CALL1	486	0	0
// OP_STOREP_F	1	6781	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	401	6786
// OP_LOAD_V	28	142	6787
// OP_MUL_V	65	6787	6790
// OP_STORE_V	6790	4	0
// OP_CALL1	486	0	0
// OP_STOREP_F	1	6786	0
// OP_LOAD_F	28	400	6791
// OP_NOT_F	6791	0	6792
// OP_IFNOT	6792	7	0
// OP_ADDRESS	28	400	6793
// OP_LOAD_V	28	142	6794
// OP_MUL_V	59	6794	6797
// OP_STORE_V	6797	4	0
// OP_CALL1	486	0	0
// OP_STOREP_F	1	6793	0
// OP_LOAD_F	28	195	6798
// OP_BITAND	6798	6745	6799
// OP_IFNOT	6799	8	0
// OP_ADDRESS	28	406	6800
// OP_LOAD_V	28	105	6803
// OP_LOAD_F	28	401	6806
// OP_MUL_VF	62	6806	6807
// OP_SUB_V	6803	6807	6810
// OP_STOREP_V	6810	6800	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	406	6813
// OP_LOAD_V	28	105	6816
// OP_LOAD_F	28	401	6819
// OP_MUL_F	6819	6749	6820
// OP_MUL_VF	65	6820	6821
// OP_ADD_V	6816	6821	6824
// OP_STOREP_V	6824	6813	0
// OP_ADDRESS	28	410	6827
// OP_LOAD_V	28	406	6830
// OP_LOAD_F	28	400	6833
// OP_MUL_VF	59	6833	6834
// OP_ADD_V	6830	6834	6837
// OP_STOREP_V	6837	6827	0
// OP_LOAD_V	28	406	6840
// OP_STORE_V	6840	4	0
// OP_LOAD_F	28	365	6843
// OP_STORE_V	6843	7	0
// OP_STORE_V	6736	10	0
// OP_CALL3	513	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	210	6844
// OP_STORE_V	6844	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () fd_secret_use = 
{
    local float temp;
    self.health = 10000.000;
    
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
    
    self.velocity = '0.000 0.000 0.000';
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.nextthink = self.ltime + 0.100;
    temp = 1.000 - (self.spawnflags & SECRET_1ST_LEFT);
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
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
};

// fd_secret_move1
// function begins at statement 10118, parm_start=6845
// OP_ADDRESS	28	150	6845
// OP_LOAD_F	28	102	6846
// OP_ADD_F	6846	708	6847
// OP_STOREP_F	6847	6845	0
// OP_ADDRESS	28	148	6848
// OP_STOREP_FNC	6737	6848	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6849
// OP_STORE_V	6849	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () fd_secret_move1 = 
{
    self.nextthink = self.ltime + 1.000;
    self.think = fd_secret_move2;
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
};

// fd_secret_move2
// function begins at statement 10132, parm_start=6850
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	210	6850
// OP_STORE_V	6850	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	410	6851
// OP_STORE_V	6851	4	0
// OP_LOAD_F	28	365	6854
// OP_STORE_V	6854	7	0
// OP_STORE_V	6738	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () fd_secret_move2 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    SUB_CalcMove(self.dest2, self.speed, fd_secret_move3);
};

// fd_secret_move3
// function begins at statement 10146, parm_start=6855
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6855
// OP_STORE_V	6855	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	195	6856
// OP_BITAND	6856	6743	6857
// OP_NOT_F	6857	0	6858
// OP_IFNOT	6858	8	0
// OP_ADDRESS	28	150	6859
// OP_LOAD_F	28	102	6860
// OP_LOAD_F	28	414	6861
// OP_ADD_F	6860	6861	6862
// OP_STOREP_F	6862	6859	0
// OP_ADDRESS	28	148	6863
// OP_STOREP_FNC	6739	6863	0
// OP_DONE	0	0	0
void () fd_secret_move3 = 
{
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
    
    if(!(self.spawnflags & SECRET_OPEN_ONCE))
    {
        self.nextthink = self.ltime + self.wait;
        self.think = fd_secret_move4;
    }
    
};

// fd_secret_move4
// function begins at statement 10165, parm_start=6864
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	210	6864
// OP_STORE_V	6864	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	406	6865
// OP_STORE_V	6865	4	0
// OP_LOAD_F	28	365	6868
// OP_STORE_V	6868	7	0
// OP_STORE_V	6740	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () fd_secret_move4 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move5);
};

// fd_secret_move5
// function begins at statement 10179, parm_start=6869
// OP_ADDRESS	28	150	6869
// OP_LOAD_F	28	102	6870
// OP_ADD_F	6870	708	6871
// OP_STOREP_F	6871	6869	0
// OP_ADDRESS	28	148	6872
// OP_STOREP_FNC	6741	6872	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6873
// OP_STORE_V	6873	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () fd_secret_move5 = 
{
    self.nextthink = self.ltime + 1.000;
    self.think = fd_secret_move6;
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
};

// fd_secret_move6
// function begins at statement 10193, parm_start=6874
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	210	6874
// OP_STORE_V	6874	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	109	6875
// OP_STORE_V	6875	4	0
// OP_LOAD_F	28	365	6878
// OP_STORE_V	6878	7	0
// OP_STORE_V	6742	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () fd_secret_move6 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    SUB_CalcMove(self.oldorigin, self.speed, fd_secret_done);
};

// fd_secret_done
// function begins at statement 10207, parm_start=6879
// OP_LOAD_S	28	197	6879
// OP_NOT_S	6879	0	6880
// OP_LOAD_F	28	195	6881
// OP_BITAND	6881	6747	6882
// OP_OR	6880	6882	6883
// OP_IFNOT	6883	7	0
// OP_ADDRESS	28	152	6884
// OP_STOREP_F	3426	6884	0
// OP_ADDRESS	28	163	6885
// OP_STOREP_F	252	6885	0
// OP_ADDRESS	28	362	6886
// OP_STOREP_FNC	6748	6886	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	211	6887
// OP_STORE_V	6887	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () fd_secret_done = 
{
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000.000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
    }
    
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
};

// secret_blocked
// function begins at statement 10227, parm_start=6889
// OP_LOAD_F	28	374	6889
// OP_LT	31	6889	6890
// OP_IFNOT	6890	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	6891
// OP_ADD_F	31	1727	6892
// OP_STOREP_F	6892	6891	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	421	6893
// OP_STORE_V	6893	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () secret_blocked = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 0.500;
    T_Damage(other, self, self, self.dmg);
};

// secret_touch
// function begins at statement 10241, parm_start=6895
// OP_LOAD_S	29	129	6895
// OP_NE_S	6895	797	6896
// OP_IFNOT	6896	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	6897
// OP_GT	6897	31	6898
// OP_IFNOT	6898	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	6899
// OP_ADD_F	31	929	6900
// OP_STOREP_F	6900	6899	0
// OP_LOAD_S	28	206	6901
// OP_IFNOT	6901	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	6902
// OP_STORE_V	6902	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	805	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () secret_touch = 
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
    
    if(self.message)
    {
        centerprint(other, self.message);
        sound(other, CHAN_BODY, "misc/talk.wav", 1.000, ATTN_NORM);
    }
    
};

// func_door_secret
// function begins at statement 10265, parm_start=6904
// OP_LOAD_F	28	207	6904
// OP_EQ_F	6904	650	6905
// OP_IFNOT	6905	3	0
// OP_ADDRESS	28	207	6906
// OP_STOREP_F	819	6906	0
// OP_LOAD_F	28	207	6907
// OP_EQ_F	6907	708	6908
// OP_IFNOT	6908	13	0
// OP_STORE_V	6909	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6910	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6626	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	6911
// OP_STOREP_S	6909	6911	0
// OP_ADDRESS	28	210	6912
// OP_STOREP_S	6910	6912	0
// OP_ADDRESS	28	211	6913
// OP_STOREP_S	6626	6913	0
// OP_LOAD_F	28	207	6914
// OP_EQ_F	6914	929	6915
// OP_IFNOT	6915	11	0
// OP_STORE_V	6916	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6917	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	210	6918
// OP_STOREP_S	6916	6918	0
// OP_ADDRESS	28	209	6919
// OP_STOREP_S	6917	6919	0
// OP_ADDRESS	28	211	6920
// OP_STOREP_S	6917	6920	0
// OP_LOAD_F	28	207	6921
// OP_EQ_F	6921	819	6922
// OP_IFNOT	6922	11	0
// OP_STORE_V	6923	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	6924	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	210	6925
// OP_STOREP_S	6923	6925	0
// OP_ADDRESS	28	209	6926
// OP_STOREP_S	6924	6926	0
// OP_ADDRESS	28	211	6927
// OP_STOREP_S	6924	6927	0
// OP_LOAD_F	28	421	6928
// OP_NOT_F	6928	0	6929
// OP_IFNOT	6929	3	0
// OP_ADDRESS	28	421	6930
// OP_STOREP_F	929	6930	0
// OP_ADDRESS	28	396	6931
// OP_LOAD_V	28	117	6934
// OP_STOREP_V	6934	6931	0
// OP_ADDRESS	28	117	6937
// OP_STOREP_V	638	6937	0
// OP_ADDRESS	28	104	6940
// OP_STOREP_F	242	6940	0
// OP_ADDRESS	28	103	6941
// OP_STOREP_F	233	6941	0
// OP_ADDRESS	28	129	6942
// OP_STOREP_S	6657	6942	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	6943
// OP_STORE_V	6943	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6944
// OP_STORE_V	6944	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	146	6947
// OP_STOREP_FNC	6894	6947	0
// OP_ADDRESS	28	149	6948
// OP_STOREP_FNC	6888	6948	0
// OP_ADDRESS	28	365	6949
// OP_STOREP_F	2509	6949	0
// OP_ADDRESS	28	147	6950
// OP_STOREP_FNC	6748	6950	0
// OP_LOAD_S	28	197	6951
// OP_NOT_S	6951	0	6952
// OP_LOAD_F	28	195	6953
// OP_BITAND	6953	6747	6954
// OP_OR	6952	6954	6955
// OP_IFNOT	6955	9	0
// OP_ADDRESS	28	152	6956
// OP_STOREP_F	3426	6956	0
// OP_ADDRESS	28	163	6957
// OP_STOREP_F	252	6957	0
// OP_ADDRESS	28	362	6958
// OP_STOREP_FNC	6748	6958	0
// OP_ADDRESS	28	363	6959
// OP_STOREP_FNC	6748	6959	0
// OP_ADDRESS	28	109	6960
// OP_LOAD_V	28	105	6963
// OP_STOREP_V	6963	6960	0
// OP_LOAD_F	28	414	6966
// OP_NOT_F	6966	0	6967
// OP_IFNOT	6967	3	0
// OP_ADDRESS	28	414	6968
// OP_STOREP_F	1660	6968	0
// OP_DONE	0	0	0
void () func_door_secret = 
{
    
    if(self.sounds == 0.000)
    {
        self.sounds = 3.000;
    }
    
    
    if(self.sounds == 1.000)
    {
        precache_sound("doors/latch2.wav");
        precache_sound("doors/winch2.wav");
        precache_sound("doors/drclos4.wav");
        self.noise1 = "doors/latch2.wav";
        self.noise2 = "doors/winch2.wav";
        self.noise3 = "doors/drclos4.wav";
    }
    
    
    if(self.sounds == 2.000)
    {
        precache_sound("doors/airdoor1.wav");
        precache_sound("doors/airdoor2.wav");
        self.noise2 = "doors/airdoor1.wav";
        self.noise1 = "doors/airdoor2.wav";
        self.noise3 = "doors/airdoor2.wav";
    }
    
    
    if(self.sounds == 3.000)
    {
        precache_sound("doors/basesec1.wav");
        precache_sound("doors/basesec2.wav");
        self.noise2 = "doors/basesec1.wav";
        self.noise1 = "doors/basesec2.wav";
        self.noise3 = "doors/basesec2.wav";
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2.000;
    }
    
    self.mangle = self.angles;
    self.angles = '0.000 0.000 0.000';
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.classname = "door";
    setmodel(self, self.model);
    setorigin(self, self.origin);
    self.touch = secret_touch;
    self.blocked = secret_blocked;
    self.speed = 50.000;
    self.use = fd_secret_use;
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000.000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
        self.th_die = fd_secret_use;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.wait)
    {
        self.wait = 5.000;
    }
    
};

