float DOOR_START_OPEN = 1;
float DOOR_DONT_LINK = 4;
float DOOR_GOLD_KEY = 8;
float DOOR_SILVER_KEY = 16;
float DOOR_TOGGLE = 32;
void () door_go_down;
void () door_go_up;
// door_blocked
// function begins at statement 21436, parm_start=15327
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	434	15327
// OP_STORE_V	15327	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	28	427	15328
// OP_GE	15328	817	15329
// OP_IFNOT	15329	7	0
// OP_LOAD_F	28	447	15330
// OP_EQ_F	15330	299	15331
// OP_IFNOT	15331	3	0
// OP_CALL0	15325	0	0
// OP_GOTO	2	0	0
// OP_CALL0	15324	0	0
// OP_DONE	0	0	0
void () door_blocked = 
{
    T_Damage(other, self, self, self.dmg);
    
    if(self.wait >= 0)
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
// function begins at statement 21452, parm_start=15333
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	209	15333
// OP_STORE_V	15333	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	15334
// OP_STOREP_F	296	15334	0
// OP_LOAD_F	28	195	15335
// OP_BITAND	15335	15323	15336
// OP_IFNOT	15336	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	148	15337
// OP_STOREP_FNC	15324	15337	0
// OP_ADDRESS	28	150	15338
// OP_LOAD_F	28	102	15339
// OP_LOAD_F	28	427	15340
// OP_ADD_F	15339	15340	15341
// OP_STOREP_F	15341	15338	0
// OP_DONE	0	0	0
void () door_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, 1, ATTN_NORM);
    self.state = STATE_TOP;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        return;
    }
    
    self.think = door_go_down;
    self.nextthink = self.ltime + self.wait;
};

// door_hit_bottom
// function begins at statement 21473, parm_start=15343
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	209	15343
// OP_STORE_V	15343	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	15344
// OP_STOREP_F	297	15344	0
// OP_DONE	0	0	0
void () door_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, 1, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// door_go_down
// function begins at statement 21483, parm_start=15345
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	210	15345
// OP_STORE_V	15345	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	185	15346
// OP_IFNOT	15346	6	0
// OP_ADDRESS	28	163	15347
// OP_STOREP_F	257	15347	0
// OP_ADDRESS	28	152	15348
// OP_LOAD_F	28	185	15349
// OP_STOREP_F	15349	15348	0
// OP_ADDRESS	28	447	15350
// OP_STOREP_F	299	15350	0
// OP_LOAD_V	28	448	15351
// OP_STORE_V	15351	4	0
// OP_LOAD_F	28	378	15354
// OP_STORE_V	15354	7	0
// OP_STORE_V	15342	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () door_go_down = 
{
    sound(self, CHAN_VOICE, self.noise2, 1, ATTN_NORM);
    
    if(self.max_health)
    {
        self.takedamage = DAMAGE_YES;
        self.health = self.max_health;
    }
    
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, door_hit_bottom);
};

// door_go_up
// function begins at statement 21506, parm_start=15355
// OP_LOAD_F	28	447	15355
// OP_EQ_F	15355	298	15356
// OP_IFNOT	15356	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	447	15357
// OP_EQ_F	15357	296	15358
// OP_IFNOT	15358	7	0
// OP_ADDRESS	28	150	15359
// OP_LOAD_F	28	102	15360
// OP_LOAD_F	28	427	15361
// OP_ADD_F	15360	15361	15362
// OP_STOREP_F	15362	15359	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	210	15363
// OP_STORE_V	15363	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	15364
// OP_STOREP_F	298	15364	0
// OP_LOAD_V	28	452	15365
// OP_STORE_V	15365	4	0
// OP_LOAD_F	28	378	15368
// OP_STORE_V	15368	7	0
// OP_STORE_V	15332	10	0
// OP_CALL3	526	0	0
// OP_CALL0	532	0	0
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
    
    sound(self, CHAN_VOICE, self.noise2, 1, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, door_hit_top);
    SUB_UseTargets();
};

// door_fire
// function begins at statement 21536, parm_start=15370
// OP_LOAD_ENT	28	201	15372
// OP_NE_E	15372	28	15373
// OP_IFNOT	15373	3	0
// OP_STORE_V	15374	4	0
// OP_CALL1	470	0	0
// OP_LOAD_F	28	162	15375
// OP_IFNOT	15375	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	430	15376
// OP_STORE_V	15376	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	206	15377
// OP_STOREP_S	357	15377	0
// OP_STORE_ENT	28	15370	0
// OP_LOAD_F	28	195	15378
// OP_BITAND	15378	15323	15379
// OP_IFNOT	15379	17	0
// OP_LOAD_F	28	447	15380
// OP_EQ_F	15380	298	15381
// OP_LOAD_F	28	447	15382
// OP_EQ_F	15382	296	15383
// OP_OR	15381	15383	15384
// OP_IFNOT	15384	11	0
// OP_STORE_ENT	28	15371	0
// OP_CALL0	15324	0	0
// OP_LOAD_ENT	28	181	15385
// OP_STORE_ENT	15385	28	0
// OP_NE_E	28	15371	15386
// OP_NE_E	28	30	15387
// OP_AND	15386	15387	15388
// OP_IF	15388	-6	0
// OP_STORE_ENT	15370	28	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	15371	0
// OP_CALL0	15325	0	0
// OP_LOAD_ENT	28	181	15389
// OP_STORE_ENT	15389	28	0
// OP_NE_E	28	15371	15390
// OP_NE_E	28	30	15391
// OP_AND	15390	15391	15392
// OP_IF	15392	-6	0
// OP_STORE_ENT	15370	28	0
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
        sound(self, CHAN_VOICE, self.noise4, 1, ATTN_NORM);
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
// function begins at statement 21582, parm_start=15394
// OP_ADDRESS	28	206	15395
// OP_STOREP_S	4128	15395	0
// OP_LOAD_ENT	28	201	15396
// OP_ADDRESS	15396	206	15397
// OP_STOREP_S	4128	15397	0
// OP_LOAD_ENT	28	181	15398
// OP_ADDRESS	15398	206	15399
// OP_STOREP_S	4128	15399	0
// OP_STORE_ENT	28	15394	0
// OP_LOAD_ENT	28	201	15400
// OP_STORE_ENT	15400	28	0
// OP_CALL0	15369	0	0
// OP_STORE_ENT	15394	28	0
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
// function begins at statement 21596, parm_start=15402
// OP_LOAD_F	29	152	15402
// OP_LE	15402	817	15403
// OP_IFNOT	15403	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	387	15404
// OP_LT	31	15404	15405
// OP_IFNOT	15405	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	387	15406
// OP_ADD_F	31	819	15407
// OP_STOREP_F	15407	15406	0
// OP_STORE_ENT	29	360	0
// OP_LOAD_ENT	28	201	15408
// OP_STORE_ENT	15408	28	0
// OP_CALL0	15393	0	0
// OP_DONE	0	0	0
void () door_trigger_touch = 
{
    
    if(other.health <= 0)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 1;
    activator = other;
    self = self.owner;
    door_use();
};

// door_killed
// function begins at statement 21612, parm_start=15410
// OP_STORE_ENT	28	15410	0
// OP_LOAD_ENT	28	201	15411
// OP_STORE_ENT	15411	28	0
// OP_ADDRESS	28	152	15412
// OP_LOAD_F	28	185	15413
// OP_STOREP_F	15413	15412	0
// OP_ADDRESS	28	163	15414
// OP_STOREP_F	256	15414	0
// OP_CALL0	15393	0	0
// OP_STORE_ENT	15410	28	0
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
// function begins at statement 21623, parm_start=15416
// OP_LOAD_S	29	129	15416
// OP_NE_S	15416	880	15417
// OP_IFNOT	15417	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	15418
// OP_LOAD_F	15418	387	15419
// OP_GT	15419	31	15420
// OP_IFNOT	15420	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	15421
// OP_ADDRESS	15421	387	15422
// OP_ADD_F	31	821	15423
// OP_STOREP_F	15423	15422	0
// OP_LOAD_ENT	28	201	15424
// OP_LOAD_S	15424	206	15425
// OP_NE_S	15425	4128	15426
// OP_IFNOT	15426	12	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	201	15427
// OP_LOAD_S	15427	206	15428
// OP_STORE_V	15428	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	7562	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	162	15429
// OP_NOT_F	15429	0	15430
// OP_IFNOT	15430	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	15431
// OP_LOAD_F	29	162	15432
// OP_BITAND	15431	15432	15433
// OP_LOAD_F	28	162	15434
// OP_NE_F	15433	15434	15435
// OP_IFNOT	15435	89	0
// OP_LOAD_ENT	28	201	15436
// OP_LOAD_F	15436	162	15437
// OP_EQ_F	15437	284	15438
// OP_IFNOT	15438	43	0
// OP_LOAD_F	30	366	15439
// OP_EQ_F	15439	821	15440
// OP_IFNOT	15440	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	15441	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15442
// OP_STORE_V	15442	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	366	15443
// OP_EQ_F	15443	819	15444
// OP_IFNOT	15444	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	15445	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15446
// OP_STORE_V	15446	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	366	15447
// OP_EQ_F	15447	817	15448
// OP_IFNOT	15448	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	15449	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15450
// OP_STORE_V	15450	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	42	0	0
// OP_LOAD_F	30	366	15451
// OP_EQ_F	15451	821	15452
// OP_IFNOT	15452	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	15453	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15454
// OP_STORE_V	15454	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	366	15455
// OP_EQ_F	15455	819	15456
// OP_IFNOT	15456	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	15457	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15458
// OP_STORE_V	15458	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	366	15459
// OP_EQ_F	15459	817	15460
// OP_IFNOT	15460	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	15461	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15462
// OP_STORE_V	15462	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	15463
// OP_LOAD_F	29	162	15464
// OP_LOAD_F	28	162	15465
// OP_SUB_F	15464	15465	15466
// OP_STOREP_F	15466	15463	0
// OP_ADDRESS	28	146	15467
// OP_STOREP_FNC	531	15467	0
// OP_LOAD_ENT	28	181	15468
// OP_IFNOT	15468	4	0
// OP_LOAD_ENT	28	181	15469
// OP_ADDRESS	15469	146	15470
// OP_STOREP_FNC	531	15470	0
// OP_CALL0	15393	0	0
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
    
    self.owner.attack_finished = time + 2;
    
    if(self.owner.message != "")
    {
        centerprint(other, self.owner.message);
        sound(other, CHAN_VOICE, "misc/talk.wav", 1, ATTN_NORM);
    }
    
    
    if(!self.items)
    {
        return;
    }
    
    
    if((self.items & other.items) != self.items)
    {
        if(self.owner.items == IT_KEY1)
        {
            if(world.worldtype == 2)
            {
                centerprint(other, "You need the silver keycard");
                sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == 1)
                {
                    centerprint(other, "You need the silver runekey");
                    sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == 0)
                    {
                        centerprint(other, "You need the silver key");
                        sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        else
        {
            if(world.worldtype == 2)
            {
                centerprint(other, "You need the gold keycard");
                sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == 1)
                {
                    centerprint(other, "You need the gold runekey");
                    sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == 0)
                    {
                        centerprint(other, "You need the gold key");
                        sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
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
// function begins at statement 21763, parm_start=15472
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	15478	0
// OP_ADDRESS	15478	103	15485
// OP_STOREP_F	233	15485	0
// OP_ADDRESS	15478	104	15486
// OP_STOREP_F	244	15486	0
// OP_ADDRESS	15478	201	15487
// OP_STOREP_ENT	28	15487	0
// OP_ADDRESS	15478	146	15488
// OP_STOREP_FNC	15401	15488	0
// OP_STORE_V	15472	15479	0
// OP_STORE_V	15475	15482	0
// OP_STORE_V	15478	4	0
// OP_SUB_V	15479	15489	15492
// OP_STORE_V	15492	7	0
// OP_ADD_V	15482	15489	15495
// OP_STORE_V	15495	10	0
// OP_CALL3	464	0	0
// OP_RETURN	15478	0	0
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
// function begins at statement 21783, parm_start=15499
// OP_LOAD_F	15499	135	15501
// OP_LOAD_F	15500	139	15502
// OP_GT	15501	15502	15503
// OP_IFNOT	15503	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	15499	136	15504
// OP_LOAD_F	15500	140	15505
// OP_GT	15504	15505	15506
// OP_IFNOT	15506	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	15499	137	15507
// OP_LOAD_F	15500	141	15508
// OP_GT	15507	15508	15509
// OP_IFNOT	15509	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	15499	139	15510
// OP_LOAD_F	15500	135	15511
// OP_LT	15510	15511	15512
// OP_IFNOT	15512	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	15499	140	15513
// OP_LOAD_F	15500	136	15514
// OP_LT	15513	15514	15515
// OP_IFNOT	15515	2	0
// OP_RETURN	218	0	0
// OP_LOAD_F	15499	141	15516
// OP_LOAD_F	15500	137	15517
// OP_LT	15516	15517	15518
// OP_IFNOT	15518	2	0
// OP_RETURN	218	0	0
// OP_RETURN	219	0	0
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
// function begins at statement 21815, parm_start=15520
// OP_LOAD_ENT	28	181	15528
// OP_IFNOT	15528	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	15529
// OP_BITAND	15529	825	15530
// OP_IFNOT	15530	6	0
// OP_ADDRESS	28	201	15531
// OP_ADDRESS	28	181	15532
// OP_STOREP_ENT	28	15532	0
// OP_STOREP_ENT	28	15531	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	134	15533
// OP_STORE_V	15533	15522	0
// OP_LOAD_V	28	138	15536
// OP_STORE_V	15536	15525	0
// OP_STORE_ENT	28	15521	0
// OP_STORE_ENT	28	15520	0
// OP_ADDRESS	28	201	15539
// OP_STOREP_ENT	15521	15539	0
// OP_LOAD_F	28	152	15540
// OP_IFNOT	15540	4	0
// OP_ADDRESS	15521	152	15541
// OP_LOAD_F	28	152	15542
// OP_STOREP_F	15542	15541	0
// OP_LOAD_S	28	197	15543
// OP_IFNOT	15543	4	0
// OP_ADDRESS	15521	197	15544
// OP_LOAD_S	28	197	15545
// OP_STOREP_S	15545	15544	0
// OP_LOAD_S	28	206	15546
// OP_NE_S	15546	4128	15547
// OP_IFNOT	15547	4	0
// OP_ADDRESS	15521	206	15548
// OP_LOAD_S	28	206	15549
// OP_STOREP_S	15549	15548	0
// OP_STORE_V	15520	4	0
// OP_STORE_V	129	7	0
// OP_LOAD_S	28	129	15550
// OP_STORE_V	15550	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	15520	0
// OP_NOT_ENT	15520	0	15551
// OP_IFNOT	15551	21	0
// OP_ADDRESS	28	181	15552
// OP_STOREP_ENT	15521	15552	0
// OP_LOAD_ENT	28	201	15553
// OP_STORE_ENT	15553	28	0
// OP_LOAD_F	28	152	15554
// OP_IFNOT	15554	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	197	15555
// OP_IFNOT	15555	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	15556
// OP_IFNOT	15556	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	15557
// OP_ADDRESS	15557	429	15558
// OP_STORE_V	15522	4	0
// OP_STORE_V	15525	7	0
// OP_CALL2	15471	0	0
// OP_STOREP_ENT	1	15558	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15520	7	0
// OP_CALL2	15498	0	0
// OP_IFNOT	1	38	0
// OP_LOAD_ENT	15520	181	15559
// OP_IFNOT	15559	3	0
// OP_STORE_V	15560	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	181	15561
// OP_STOREP_ENT	15520	15561	0
// OP_STORE_ENT	15520	28	0
// OP_LOAD_F	15520	135	15562
// OP_LT	15562	15522	15563
// OP_IFNOT	15563	3	0
// OP_LOAD_F	15520	135	15564
// OP_STORE_F	15564	15522	0
// OP_LOAD_F	15520	136	15565
// OP_LT	15565	15523	15566
// OP_IFNOT	15566	3	0
// OP_LOAD_F	15520	136	15567
// OP_STORE_F	15567	15523	0
// OP_LOAD_F	15520	137	15568
// OP_LT	15568	15524	15569
// OP_IFNOT	15569	3	0
// OP_LOAD_F	15520	137	15570
// OP_STORE_F	15570	15524	0
// OP_LOAD_F	15520	139	15571
// OP_GT	15571	15525	15572
// OP_IFNOT	15572	3	0
// OP_LOAD_F	15520	139	15573
// OP_STORE_F	15573	15525	0
// OP_LOAD_F	15520	140	15574
// OP_GT	15574	15526	15575
// OP_IFNOT	15575	3	0
// OP_LOAD_F	15520	140	15576
// OP_STORE_F	15576	15526	0
// OP_LOAD_F	15520	141	15577
// OP_GT	15577	15527	15578
// OP_IFNOT	15578	3	0
// OP_LOAD_F	15520	141	15579
// OP_STORE_F	15579	15527	0
// OP_IF	819	-87	0
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
    
    
    if(self.spawnflags & 4)
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
        
    } while (1);
};

// func_door
// function begins at statement 21921, parm_start=15581
// OP_LOAD_F	30	366	15581
// OP_EQ_F	15581	817	15582
// OP_IFNOT	15582	10	0
// OP_STORE_V	15583	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15584	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	211	15585
// OP_STOREP_S	15583	15585	0
// OP_ADDRESS	28	430	15586
// OP_STOREP_S	15584	15586	0
// OP_GOTO	27	0	0
// OP_LOAD_F	30	366	15587
// OP_EQ_F	15587	819	15588
// OP_IFNOT	15588	10	0
// OP_STORE_V	15589	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15590	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	211	15591
// OP_STOREP_S	15589	15591	0
// OP_ADDRESS	28	430	15592
// OP_STOREP_S	15590	15592	0
// OP_GOTO	15	0	0
// OP_LOAD_F	30	366	15593
// OP_EQ_F	15593	821	15594
// OP_IFNOT	15594	10	0
// OP_STORE_V	15595	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15596	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	211	15597
// OP_STOREP_S	15595	15597	0
// OP_ADDRESS	28	430	15598
// OP_STOREP_S	15596	15598	0
// OP_GOTO	3	0	0
// OP_STORE_V	15599	4	0
// OP_CALL1	484	0	0
// OP_LOAD_F	28	207	15600
// OP_EQ_F	15600	817	15601
// OP_IFNOT	15601	9	0
// OP_STORE_V	15602	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15602	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	15603
// OP_STOREP_S	15602	15603	0
// OP_ADDRESS	28	210	15604
// OP_STOREP_S	15602	15604	0
// OP_LOAD_F	28	207	15605
// OP_EQ_F	15605	819	15606
// OP_IFNOT	15606	9	0
// OP_STORE_V	15607	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15608	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	15609
// OP_STOREP_S	15607	15609	0
// OP_ADDRESS	28	210	15610
// OP_STOREP_S	15608	15610	0
// OP_LOAD_F	28	207	15611
// OP_EQ_F	15611	821	15612
// OP_IFNOT	15612	9	0
// OP_STORE_V	15613	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15614	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	210	15615
// OP_STOREP_S	15613	15615	0
// OP_ADDRESS	28	209	15616
// OP_STOREP_S	15614	15616	0
// OP_LOAD_F	28	207	15617
// OP_EQ_F	15617	823	15618
// OP_IFNOT	15618	9	0
// OP_STORE_V	15619	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15620	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	210	15621
// OP_STOREP_S	15619	15621	0
// OP_ADDRESS	28	209	15622
// OP_STOREP_S	15620	15622	0
// OP_LOAD_F	28	207	15623
// OP_EQ_F	15623	825	15624
// OP_IFNOT	15624	9	0
// OP_STORE_V	15625	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15626	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	15627
// OP_STOREP_S	15626	15627	0
// OP_ADDRESS	28	210	15628
// OP_STOREP_S	15625	15628	0
// OP_CALL0	7371	0	0
// OP_ADDRESS	28	185	15629
// OP_LOAD_F	28	152	15630
// OP_STOREP_F	15630	15629	0
// OP_ADDRESS	28	104	15631
// OP_STOREP_F	247	15631	0
// OP_ADDRESS	28	103	15632
// OP_STOREP_F	238	15632	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	15633
// OP_STORE_V	15633	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	15636
// OP_STORE_V	15636	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	129	15637
// OP_STOREP_S	15638	15637	0
// OP_ADDRESS	28	149	15639
// OP_STOREP_FNC	15326	15639	0
// OP_ADDRESS	28	147	15640
// OP_STOREP_FNC	15393	15640	0
// OP_LOAD_F	28	195	15641
// OP_BITAND	15641	15322	15642
// OP_IFNOT	15642	3	0
// OP_ADDRESS	28	162	15643
// OP_STOREP_F	284	15643	0
// OP_LOAD_F	28	195	15644
// OP_BITAND	15644	15321	15645
// OP_IFNOT	15645	3	0
// OP_ADDRESS	28	162	15646
// OP_STOREP_F	285	15646	0
// OP_LOAD_F	28	378	15647
// OP_NOT_F	15647	0	15648
// OP_IFNOT	15648	3	0
// OP_ADDRESS	28	378	15649
// OP_STOREP_F	1957	15649	0
// OP_LOAD_F	28	427	15650
// OP_NOT_F	15650	0	15651
// OP_IFNOT	15651	3	0
// OP_ADDRESS	28	427	15652
// OP_STOREP_F	823	15652	0
// OP_LOAD_F	28	446	15653
// OP_NOT_F	15653	0	15654
// OP_IFNOT	15654	3	0
// OP_ADDRESS	28	446	15655
// OP_STOREP_F	843	15655	0
// OP_LOAD_F	28	434	15656
// OP_NOT_F	15656	0	15657
// OP_IFNOT	15657	3	0
// OP_ADDRESS	28	434	15658
// OP_STOREP_F	821	15658	0
// OP_ADDRESS	28	448	15659
// OP_LOAD_V	28	105	15662
// OP_STOREP_V	15662	15659	0
// OP_ADDRESS	28	452	15665
// OP_LOAD_V	28	448	15668
// OP_LOAD_V	28	202	15671
// OP_LOAD_V	28	202	15674
// OP_LOAD_V	28	142	15677
// OP_MUL_V	15674	15677	15680
// OP_STORE_V	15680	4	0
// OP_CALL1	499	0	0
// OP_LOAD_F	28	446	15681
// OP_SUB_F	1	15681	15682
// OP_MUL_VF	15671	15682	15683
// OP_ADD_V	15668	15683	15686
// OP_STOREP_V	15686	15665	0
// OP_LOAD_F	28	195	15689
// OP_BITAND	15689	15319	15690
// OP_IFNOT	15690	11	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	452	15691
// OP_STORE_V	15691	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	452	15694
// OP_LOAD_V	28	448	15697
// OP_STOREP_V	15697	15694	0
// OP_ADDRESS	28	448	15700
// OP_LOAD_V	28	105	15703
// OP_STOREP_V	15703	15700	0
// OP_ADDRESS	28	447	15706
// OP_STOREP_F	297	15706	0
// OP_LOAD_F	28	152	15707
// OP_IFNOT	15707	5	0
// OP_ADDRESS	28	163	15708
// OP_STOREP_F	257	15708	0
// OP_ADDRESS	28	376	15709
// OP_STOREP_FNC	15409	15709	0
// OP_LOAD_F	28	162	15710
// OP_IFNOT	15710	3	0
// OP_ADDRESS	28	427	15711
// OP_STOREP_F	1228	15711	0
// OP_ADDRESS	28	146	15712
// OP_STOREP_FNC	15415	15712	0
// OP_ADDRESS	28	148	15713
// OP_STOREP_FNC	15519	15713	0
// OP_ADDRESS	28	150	15714
// OP_LOAD_F	28	102	15715
// OP_ADD_F	15715	2869	15716
// OP_STOREP_F	15716	15714	0
// OP_DONE	0	0	0
void () func_door = 
{
    if(world.worldtype == 0)
    {
        precache_sound("doors/medtry.wav");
        precache_sound("doors/meduse.wav");
        self.noise3 = "doors/medtry.wav";
        self.noise4 = "doors/meduse.wav";
    }
    else
    {
        if(world.worldtype == 1)
        {
            precache_sound("doors/runetry.wav");
            precache_sound("doors/runeuse.wav");
            self.noise3 = "doors/runetry.wav";
            self.noise4 = "doors/runeuse.wav";
        }
        else
        {
            if(world.worldtype == 2)
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
    
    
    if(self.sounds == 0)
    {
        precache_sound("misc/null.wav");
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        self.noise2 = "misc/null.wav";
    }
    
    
    if(self.sounds == 1)
    {
        precache_sound("doors/drclos4.wav");
        precache_sound("doors/doormv1.wav");
        self.noise1 = "doors/drclos4.wav";
        self.noise2 = "doors/doormv1.wav";
    }
    
    
    if(self.sounds == 2)
    {
        precache_sound("doors/hydro1.wav");
        precache_sound("doors/hydro2.wav");
        self.noise2 = "doors/hydro1.wav";
        self.noise1 = "doors/hydro2.wav";
    }
    
    
    if(self.sounds == 3)
    {
        precache_sound("doors/stndr1.wav");
        precache_sound("doors/stndr2.wav");
        self.noise2 = "doors/stndr1.wav";
        self.noise1 = "doors/stndr2.wav";
    }
    
    
    if(self.sounds == 4)
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
        self.speed = 100;
    }
    
    
    if(!self.wait)
    {
        self.wait = 3;
    }
    
    
    if(!self.lip)
    {
        self.lip = 8;
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2;
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
        self.wait = -1;
    }
    
    self.touch = door_touch;
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
// function begins at statement 22116, parm_start=15730
// OP_ADDRESS	28	152	15731
// OP_STOREP_F	15732	15731	0
// OP_LOAD_V	28	105	15733
// OP_LOAD_V	28	109	15736
// OP_NE_V	15733	15736	15739
// OP_IFNOT	15739	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	15740
// OP_STOREP_S	357	15740	0
// OP_CALL0	532	0	0
// OP_LOAD_F	28	195	15741
// OP_BITAND	15741	15727	15742
// OP_NOT_F	15742	0	15743
// OP_IFNOT	15743	5	0
// OP_ADDRESS	28	375	15744
// OP_STOREP_FNC	531	15744	0
// OP_ADDRESS	28	163	15745
// OP_STOREP_F	256	15745	0
// OP_ADDRESS	28	113	15746
// OP_STOREP_V	926	15746	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	209	15749
// OP_STORE_V	15749	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	150	15750
// OP_LOAD_F	28	102	15751
// OP_ADD_F	15751	2869	15752
// OP_STOREP_F	15752	15750	0
// OP_LOAD_F	28	195	15753
// OP_BITAND	15753	15725	15754
// OP_SUB_F	819	15754	15755
// OP_STORE_F	15755	15730	0
// OP_LOAD_V	28	409	15756
// OP_STORE_V	15756	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	28	414	15759
// OP_NOT_F	15759	0	15760
// OP_IFNOT	15760	17	0
// OP_LOAD_F	28	195	15761
// OP_BITAND	15761	15726	15762
// OP_IFNOT	15762	8	0
// OP_ADDRESS	28	414	15763
// OP_LOAD_V	28	142	15764
// OP_MUL_V	62	15764	15767
// OP_STORE_V	15767	4	0
// OP_CALL1	499	0	0
// OP_STOREP_F	1	15763	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	414	15768
// OP_LOAD_V	28	142	15769
// OP_MUL_V	65	15769	15772
// OP_STORE_V	15772	4	0
// OP_CALL1	499	0	0
// OP_STOREP_F	1	15768	0
// OP_LOAD_F	28	413	15773
// OP_NOT_F	15773	0	15774
// OP_IFNOT	15774	7	0
// OP_ADDRESS	28	413	15775
// OP_LOAD_V	28	142	15776
// OP_MUL_V	59	15776	15779
// OP_STORE_V	15779	4	0
// OP_CALL1	499	0	0
// OP_STOREP_F	1	15775	0
// OP_LOAD_F	28	195	15780
// OP_BITAND	15780	15726	15781
// OP_IFNOT	15781	8	0
// OP_ADDRESS	28	419	15782
// OP_LOAD_V	28	105	15785
// OP_LOAD_F	28	414	15788
// OP_MUL_VF	62	15788	15789
// OP_SUB_V	15785	15789	15792
// OP_STOREP_V	15792	15782	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	419	15795
// OP_LOAD_V	28	105	15798
// OP_LOAD_F	28	414	15801
// OP_MUL_F	15801	15730	15802
// OP_MUL_VF	65	15802	15803
// OP_ADD_V	15798	15803	15806
// OP_STOREP_V	15806	15795	0
// OP_ADDRESS	28	423	15809
// OP_LOAD_V	28	419	15812
// OP_LOAD_F	28	413	15815
// OP_MUL_VF	59	15815	15816
// OP_ADD_V	15812	15816	15819
// OP_STOREP_V	15819	15809	0
// OP_LOAD_V	28	419	15822
// OP_STORE_V	15822	4	0
// OP_LOAD_F	28	378	15825
// OP_STORE_V	15825	7	0
// OP_STORE_V	15717	10	0
// OP_CALL3	526	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	210	15826
// OP_STORE_V	15826	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
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
    
    self.velocity = '0.000 0.000 0.000';
    sound(self, CHAN_VOICE, self.noise1, 1, ATTN_NORM);
    self.nextthink = self.ltime + 0.1;
    temp = 1 - (self.spawnflags & SECRET_1ST_LEFT);
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
    sound(self, CHAN_VOICE, self.noise2, 1, ATTN_NORM);
};

// fd_secret_move1
// function begins at statement 22219, parm_start=15827
// OP_ADDRESS	28	150	15827
// OP_LOAD_F	28	102	15828
// OP_ADD_F	15828	819	15829
// OP_STOREP_F	15829	15827	0
// OP_ADDRESS	28	148	15830
// OP_STOREP_FNC	15718	15830	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15831
// OP_STORE_V	15831	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () fd_secret_move1 = 
{
    self.nextthink = self.ltime + 1;
    self.think = fd_secret_move2;
    sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
};

// fd_secret_move2
// function begins at statement 22233, parm_start=15832
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	210	15832
// OP_STORE_V	15832	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	423	15833
// OP_STORE_V	15833	4	0
// OP_LOAD_F	28	378	15836
// OP_STORE_V	15836	7	0
// OP_STORE_V	15719	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () fd_secret_move2 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1, ATTN_NORM);
    SUB_CalcMove(self.dest2, self.speed, fd_secret_move3);
};

// fd_secret_move3
// function begins at statement 22247, parm_start=15837
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15837
// OP_STORE_V	15837	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	195	15838
// OP_BITAND	15838	15724	15839
// OP_NOT_F	15839	0	15840
// OP_IFNOT	15840	8	0
// OP_ADDRESS	28	150	15841
// OP_LOAD_F	28	102	15842
// OP_LOAD_F	28	427	15843
// OP_ADD_F	15842	15843	15844
// OP_STOREP_F	15844	15841	0
// OP_ADDRESS	28	148	15845
// OP_STOREP_FNC	15720	15845	0
// OP_DONE	0	0	0
void () fd_secret_move3 = 
{
    sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
    
    if(!(self.spawnflags & SECRET_OPEN_ONCE))
    {
        self.nextthink = self.ltime + self.wait;
        self.think = fd_secret_move4;
    }
    
};

// fd_secret_move4
// function begins at statement 22266, parm_start=15846
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	210	15846
// OP_STORE_V	15846	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	419	15847
// OP_STORE_V	15847	4	0
// OP_LOAD_F	28	378	15850
// OP_STORE_V	15850	7	0
// OP_STORE_V	15721	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () fd_secret_move4 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1, ATTN_NORM);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move5);
};

// fd_secret_move5
// function begins at statement 22280, parm_start=15851
// OP_ADDRESS	28	150	15851
// OP_LOAD_F	28	102	15852
// OP_ADD_F	15852	819	15853
// OP_STOREP_F	15853	15851	0
// OP_ADDRESS	28	148	15854
// OP_STOREP_FNC	15722	15854	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15855
// OP_STORE_V	15855	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () fd_secret_move5 = 
{
    self.nextthink = self.ltime + 1;
    self.think = fd_secret_move6;
    sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
};

// fd_secret_move6
// function begins at statement 22294, parm_start=15856
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	210	15856
// OP_STORE_V	15856	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	109	15857
// OP_STORE_V	15857	4	0
// OP_LOAD_F	28	378	15860
// OP_STORE_V	15860	7	0
// OP_STORE_V	15723	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () fd_secret_move6 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1, ATTN_NORM);
    SUB_CalcMove(self.oldorigin, self.speed, fd_secret_done);
};

// fd_secret_done
// function begins at statement 22308, parm_start=15861
// OP_LOAD_S	28	197	15861
// OP_NOT_S	15861	0	15862
// OP_LOAD_F	28	195	15863
// OP_BITAND	15863	15728	15864
// OP_OR	15862	15864	15865
// OP_IFNOT	15865	7	0
// OP_ADDRESS	28	152	15866
// OP_STOREP_F	15732	15866	0
// OP_ADDRESS	28	163	15867
// OP_STOREP_F	257	15867	0
// OP_ADDRESS	28	375	15868
// OP_STOREP_FNC	15729	15868	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	211	15869
// OP_STORE_V	15869	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () fd_secret_done = 
{
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
    }
    
    sound(self, CHAN_VOICE, self.noise3, 1, ATTN_NORM);
};

// secret_blocked
// function begins at statement 22328, parm_start=15871
// OP_LOAD_F	28	387	15871
// OP_LT	31	15871	15872
// OP_IFNOT	15872	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	387	15873
// OP_ADD_F	31	1182	15874
// OP_STOREP_F	15874	15873	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	434	15875
// OP_STORE_V	15875	13	0
// OP_CALL4	534	0	0
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
// function begins at statement 22342, parm_start=15877
// OP_LOAD_S	29	129	15877
// OP_NE_S	15877	880	15878
// OP_IFNOT	15878	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	387	15879
// OP_GT	15879	31	15880
// OP_IFNOT	15880	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	387	15881
// OP_ADD_F	31	821	15882
// OP_STOREP_F	15882	15881	0
// OP_LOAD_S	28	206	15883
// OP_IFNOT	15883	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	15884
// OP_STORE_V	15884	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	7562	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
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
    
    self.attack_finished = time + 2;
    
    if(self.message)
    {
        centerprint(other, self.message);
        sound(other, CHAN_BODY, "misc/talk.wav", 1, ATTN_NORM);
    }
    
};

// func_door_secret
// function begins at statement 22366, parm_start=15886
// OP_LOAD_F	28	207	15886
// OP_EQ_F	15886	817	15887
// OP_IFNOT	15887	3	0
// OP_ADDRESS	28	207	15888
// OP_STOREP_F	823	15888	0
// OP_LOAD_F	28	207	15889
// OP_EQ_F	15889	819	15890
// OP_IFNOT	15890	13	0
// OP_STORE_V	15891	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15892	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15607	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	15893
// OP_STOREP_S	15891	15893	0
// OP_ADDRESS	28	210	15894
// OP_STOREP_S	15892	15894	0
// OP_ADDRESS	28	211	15895
// OP_STOREP_S	15607	15895	0
// OP_LOAD_F	28	207	15896
// OP_EQ_F	15896	821	15897
// OP_IFNOT	15897	11	0
// OP_STORE_V	15898	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15899	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	210	15900
// OP_STOREP_S	15898	15900	0
// OP_ADDRESS	28	209	15901
// OP_STOREP_S	15899	15901	0
// OP_ADDRESS	28	211	15902
// OP_STOREP_S	15899	15902	0
// OP_LOAD_F	28	207	15903
// OP_EQ_F	15903	823	15904
// OP_IFNOT	15904	11	0
// OP_STORE_V	15905	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	15906	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	210	15907
// OP_STOREP_S	15905	15907	0
// OP_ADDRESS	28	209	15908
// OP_STOREP_S	15906	15908	0
// OP_ADDRESS	28	211	15909
// OP_STOREP_S	15906	15909	0
// OP_LOAD_F	28	434	15910
// OP_NOT_F	15910	0	15911
// OP_IFNOT	15911	3	0
// OP_ADDRESS	28	434	15912
// OP_STOREP_F	821	15912	0
// OP_ADDRESS	28	409	15913
// OP_LOAD_V	28	117	15916
// OP_STOREP_V	15916	15913	0
// OP_ADDRESS	28	117	15919
// OP_STOREP_V	926	15919	0
// OP_ADDRESS	28	104	15922
// OP_STOREP_F	247	15922	0
// OP_ADDRESS	28	103	15923
// OP_STOREP_F	238	15923	0
// OP_ADDRESS	28	129	15924
// OP_STOREP_S	15638	15924	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	15925
// OP_STORE_V	15925	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	15926
// OP_STORE_V	15926	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	146	15929
// OP_STOREP_FNC	15876	15929	0
// OP_ADDRESS	28	149	15930
// OP_STOREP_FNC	15870	15930	0
// OP_ADDRESS	28	378	15931
// OP_STOREP_F	2611	15931	0
// OP_ADDRESS	28	147	15932
// OP_STOREP_FNC	15729	15932	0
// OP_LOAD_S	28	197	15933
// OP_NOT_S	15933	0	15934
// OP_LOAD_F	28	195	15935
// OP_BITAND	15935	15728	15936
// OP_OR	15934	15936	15937
// OP_IFNOT	15937	9	0
// OP_ADDRESS	28	152	15938
// OP_STOREP_F	15732	15938	0
// OP_ADDRESS	28	163	15939
// OP_STOREP_F	257	15939	0
// OP_ADDRESS	28	375	15940
// OP_STOREP_FNC	15729	15940	0
// OP_ADDRESS	28	376	15941
// OP_STOREP_FNC	15729	15941	0
// OP_ADDRESS	28	109	15942
// OP_LOAD_V	28	105	15945
// OP_STOREP_V	15945	15942	0
// OP_LOAD_F	28	427	15948
// OP_NOT_F	15948	0	15949
// OP_IFNOT	15949	3	0
// OP_ADDRESS	28	427	15950
// OP_STOREP_F	827	15950	0
// OP_DONE	0	0	0
void () func_door_secret = 
{
    
    if(self.sounds == 0)
    {
        self.sounds = 3;
    }
    
    
    if(self.sounds == 1)
    {
        precache_sound("doors/latch2.wav");
        precache_sound("doors/winch2.wav");
        precache_sound("doors/drclos4.wav");
        self.noise1 = "doors/latch2.wav";
        self.noise2 = "doors/winch2.wav";
        self.noise3 = "doors/drclos4.wav";
    }
    
    
    if(self.sounds == 2)
    {
        precache_sound("doors/airdoor1.wav");
        precache_sound("doors/airdoor2.wav");
        self.noise2 = "doors/airdoor1.wav";
        self.noise1 = "doors/airdoor2.wav";
        self.noise3 = "doors/airdoor2.wav";
    }
    
    
    if(self.sounds == 3)
    {
        precache_sound("doors/basesec1.wav");
        precache_sound("doors/basesec2.wav");
        self.noise2 = "doors/basesec1.wav";
        self.noise1 = "doors/basesec2.wav";
        self.noise3 = "doors/basesec2.wav";
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2;
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
    self.speed = 50;
    self.use = fd_secret_use;
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
        self.th_die = fd_secret_use;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.wait)
    {
        self.wait = 5;
    }
    
};

