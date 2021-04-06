// func000539
// function begins at statement 14853, parm_start=10247
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	210	10247
// OP_STORE_V	10247	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	185	10248
// OP_IFNOT	10248	6	0
// OP_ADDRESS	28	163	10249
// OP_STOREP_F	251	10249	0
// OP_ADDRESS	28	152	10250
// OP_LOAD_F	28	185	10251
// OP_STOREP_F	10251	10250	0
// OP_ADDRESS	28	438	10252
// OP_STOREP_F	285	10252	0
// OP_LOAD_V	28	439	10253
// OP_STORE_V	10253	4	0
// OP_LOAD_F	28	369	10256
// OP_STORE_V	10256	7	0
// OP_STORE_V	10244	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000539 = 
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

// func000540
// function begins at statement 14876, parm_start=10257
// OP_LOAD_F	28	438	10257
// OP_EQ_F	10257	284	10258
// OP_IFNOT	10258	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	438	10259
// OP_EQ_F	10259	282	10260
// OP_IFNOT	10260	7	0
// OP_ADDRESS	28	150	10261
// OP_LOAD_F	28	102	10262
// OP_LOAD_F	28	418	10263
// OP_ADD_F	10262	10263	10264
// OP_STOREP_F	10264	10261	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	210	10265
// OP_STORE_V	10265	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	10266
// OP_STOREP_F	284	10266	0
// OP_LOAD_V	28	443	10267
// OP_STORE_V	10267	4	0
// OP_LOAD_F	28	369	10270
// OP_STORE_V	10270	7	0
// OP_STORE_V	10234	10	0
// OP_CALL3	514	0	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000540 = 
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

// func000541
// function begins at statement 14906, parm_start=10272
// OP_LOAD_ENT	28	201	10274
// OP_NE_E	10274	28	10275
// OP_IFNOT	10275	3	0
// OP_STORE_V	10276	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	28	162	10277
// OP_IFNOT	10277	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	421	10278
// OP_STORE_V	10278	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	206	10279
// OP_STOREP_S	348	10279	0
// OP_STORE_ENT	28	10272	0
// OP_LOAD_F	28	195	10280
// OP_BITAND	10280	10225	10281
// OP_IFNOT	10281	17	0
// OP_LOAD_F	28	438	10282
// OP_EQ_F	10282	284	10283
// OP_LOAD_F	28	438	10284
// OP_EQ_F	10284	282	10285
// OP_OR	10283	10285	10286
// OP_IFNOT	10286	11	0
// OP_STORE_ENT	28	10273	0
// OP_CALL0	10226	0	0
// OP_LOAD_ENT	28	181	10287
// OP_STORE_ENT	10287	28	0
// OP_NE_E	28	10273	10288
// OP_NE_E	28	30	10289
// OP_AND	10288	10289	10290
// OP_IF	10290	-6	0
// OP_STORE_ENT	10272	28	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	10273	0
// OP_CALL0	10227	0	0
// OP_LOAD_ENT	28	181	10291
// OP_STORE_ENT	10291	28	0
// OP_NE_E	28	10273	10292
// OP_NE_E	28	30	10293
// OP_AND	10292	10293	10294
// OP_IF	10294	-6	0
// OP_STORE_ENT	10272	28	0
// OP_DONE	0	0	0
void () func000541 = 
{
    local entity globaldef003327;
    local entity globaldef003328;
    
    if(self.owner != self)
    {
        objerror("door_fire: self.owner != self");
    }
    
    
    if(self.items)
    {
        sound(self, CHAN_VOICE, self.noise4, TRUE, ATTN_NORM);
    }
    
    self.message = string_null;
    globaldef003327 = self;
    
    if(self.spawnflags & globaldef003320)
    {
        
        if((self.state == STATE_UP) || (self.state == STATE_TOP))
        {
            globaldef003328 = self;
            do
            {
                func000539();
                self = self.enemy;
            } while ((self != globaldef003328) && (self != world));
            self = globaldef003327;
            return;
        }
        
    }
    
    globaldef003328 = self;
    do
    {
        func000540();
        self = self.enemy;
    } while ((self != globaldef003328) && (self != world));
    self = globaldef003327;
};

// func000542
// function begins at statement 14952, parm_start=10296
// OP_STORE_V	29	4	0
// OP_LOAD_V	29	105	10297
// OP_STORE_V	10297	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	756	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	10300
// OP_EQ_S	10300	1241	10301
// OP_IFNOT	10301	3	0
// OP_STORE_V	29	4	0
// OP_CALL1	1133	0	0
// OP_ADDRESS	28	206	10302
// OP_STOREP_S	3002	10302	0
// OP_LOAD_ENT	28	201	10303
// OP_ADDRESS	10303	206	10304
// OP_STOREP_S	3002	10304	0
// OP_LOAD_ENT	28	181	10305
// OP_ADDRESS	10305	206	10306
// OP_STOREP_S	3002	10306	0
// OP_STORE_ENT	28	10296	0
// OP_LOAD_ENT	28	201	10307
// OP_STORE_ENT	10307	28	0
// OP_CALL0	10271	0	0
// OP_STORE_ENT	10296	28	0
// OP_DONE	0	0	0
void () func000542 = 
{
    local entity globaldef003331;
    func002453(other, other.origin, TRUE, globaldef000739);
    
    if(other.classname == "bot")
    {
        func002473(other);
    }
    
    self.message = "";
    self.owner.message = "";
    self.enemy.message = "";
    globaldef003331 = self;
    self = self.owner;
    func000541();
    self = globaldef003331;
};

// func000543
// function begins at statement 14977, parm_start=10309
// OP_LOAD_F	29	152	10309
// OP_LE	10309	213	10310
// OP_IFNOT	10310	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	378	10311
// OP_LT	31	10311	10312
// OP_IFNOT	10312	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	378	10313
// OP_ADD_F	31	214	10314
// OP_STOREP_F	10314	10313	0
// OP_STORE_ENT	29	351	0
// OP_LOAD_ENT	28	201	10315
// OP_STORE_ENT	10315	28	0
// OP_CALL0	10295	0	0
// OP_DONE	0	0	0
void () func000543 = 
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
    func000542();
};

// func000544
// function begins at statement 14993, parm_start=10317
// OP_STORE_ENT	28	10317	0
// OP_LOAD_ENT	28	201	10318
// OP_STORE_ENT	10318	28	0
// OP_ADDRESS	28	152	10319
// OP_LOAD_F	28	185	10320
// OP_STOREP_F	10320	10319	0
// OP_ADDRESS	28	163	10321
// OP_STOREP_F	250	10321	0
// OP_CALL0	10295	0	0
// OP_STORE_ENT	10317	28	0
// OP_DONE	0	0	0
void () func000544 = 
{
    local entity globaldef003334;
    globaldef003334 = self;
    self = self.owner;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    func000542();
    self = globaldef003334;
};

// func000545
// function begins at statement 15004, parm_start=10323
// OP_LOAD_S	29	129	10326
// OP_NE_S	10326	1236	10327
// OP_IFNOT	10327	5	0
// OP_LOAD_S	29	129	10328
// OP_NE_S	10328	1241	10329
// OP_IFNOT	10329	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	10330
// OP_LOAD_F	10330	378	10331
// OP_GT	10331	31	10332
// OP_IFNOT	10332	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	10333
// OP_ADDRESS	10333	378	10334
// OP_ADD_F	31	216	10335
// OP_STOREP_F	10335	10334	0
// OP_LOAD_ENT	28	201	10336
// OP_LOAD_S	10336	206	10337
// OP_NE_S	10337	3002	10338
// OP_IFNOT	10338	15	0
// OP_LOAD_S	29	129	10339
// OP_EQ_S	10339	1236	10340
// OP_IFNOT	10340	6	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	201	10341
// OP_LOAD_S	10341	206	10342
// OP_STORE_V	10342	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3152	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	162	10343
// OP_NOT_F	10343	0	10344
// OP_IFNOT	10344	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	10345
// OP_LOAD_F	29	162	10346
// OP_BITAND	10345	10346	10347
// OP_LOAD_F	28	162	10348
// OP_NE_F	10347	10348	10349
// OP_IFNOT	10349	95	0
// OP_LOAD_ENT	28	201	10350
// OP_LOAD_F	10350	162	10351
// OP_EQ_F	10351	270	10352
// OP_LOAD_S	29	129	10353
// OP_EQ_S	10353	1236	10354
// OP_AND	10352	10354	10355
// OP_IFNOT	10355	43	0
// OP_LOAD_F	30	357	10356
// OP_EQ_F	10356	216	10357
// OP_IFNOT	10357	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	10358	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10359
// OP_STORE_V	10359	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	357	10360
// OP_EQ_F	10360	214	10361
// OP_IFNOT	10361	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	10362	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10363
// OP_STORE_V	10363	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	357	10364
// OP_EQ_F	10364	213	10365
// OP_IFNOT	10365	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	10366	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10367
// OP_STORE_V	10367	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	45	0	0
// OP_LOAD_S	29	129	10368
// OP_EQ_S	10368	1236	10369
// OP_IFNOT	10369	42	0
// OP_LOAD_F	30	357	10370
// OP_EQ_F	10370	216	10371
// OP_IFNOT	10371	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	10372	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10373
// OP_STORE_V	10373	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	30	357	10374
// OP_EQ_F	10374	214	10375
// OP_IFNOT	10375	12	0
// OP_STORE_V	29	4	0
// OP_STORE_V	10376	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10377
// OP_STORE_V	10377	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	30	357	10378
// OP_EQ_F	10378	213	10379
// OP_IFNOT	10379	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	10380	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10381
// OP_STORE_V	10381	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	10382
// OP_LOAD_F	29	162	10383
// OP_LOAD_F	28	162	10384
// OP_SUB_F	10383	10384	10385
// OP_STOREP_F	10385	10382	0
// OP_ADDRESS	28	146	10386
// OP_STOREP_FNC	519	10386	0
// OP_LOAD_ENT	28	181	10387
// OP_IFNOT	10387	4	0
// OP_LOAD_ENT	28	181	10388
// OP_ADDRESS	10388	146	10389
// OP_STOREP_FNC	519	10389	0
// OP_CALL0	10295	0	0
// OP_DONE	0	0	0
void () func000545 = 
{
    local vector globaldef003336;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
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
            func000072(other, self.owner.message);
        }
        
        sound(other, CHAN_VOICE, "misc/talk.wav", TRUE, ATTN_NORM);
    }
    
    
    if(!self.items)
    {
        return;
    }
    
    
    if((self.items & other.items) != self.items)
    {
        if((self.owner.items == IT_KEY1) && (other.classname == "player"))
        {
            if(world.worldtype == FL_SWIM)
            {
                func000072(other, "You need the silver keycard");
                sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
            }
            else
            {
                if(world.worldtype == TRUE)
                {
                    func000072(other, "You need the silver runekey");
                    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                }
                else
                {
                    
                    if(world.worldtype == FALSE)
                    {
                        func000072(other, "You need the silver key");
                        sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                    }
                    
                }
                
            }
            
        }
        else
        {
            
            if(other.classname == "player")
            {
                if(world.worldtype == FL_SWIM)
                {
                    func000072(other, "You need the gold keycard");
                    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                }
                else
                {
                    if(world.worldtype == TRUE)
                    {
                        func000072(other, "You need the gold runekey");
                        sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                    }
                    else
                    {
                        
                        if(world.worldtype == FALSE)
                        {
                            func000072(other, "You need the gold key");
                            sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
                        }
                        
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
    
    func000542();
};

// func000546
// function begins at statement 15156, parm_start=10391
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	10397	0
// OP_ADDRESS	10397	103	10404
// OP_STOREP_F	227	10404	0
// OP_ADDRESS	10397	104	10405
// OP_STOREP_F	238	10405	0
// OP_ADDRESS	10397	201	10406
// OP_STOREP_ENT	28	10406	0
// OP_ADDRESS	10397	146	10407
// OP_STOREP_FNC	10308	10407	0
// OP_STORE_V	10391	10398	0
// OP_STORE_V	10394	10401	0
// OP_STORE_V	10397	4	0
// OP_SUB_V	10398	10408	10411
// OP_STORE_V	10411	7	0
// OP_ADD_V	10401	10408	10414
// OP_STORE_V	10414	10	0
// OP_CALL3	455	0	0
// OP_RETURN	10397	0	0
// OP_DONE	0	0	0
entity (vector globaldef003347, vector globaldef003351) func000546 = 
{
    local entity globaldef003355;
    local vector globaldef003356;
    local vector globaldef003360;
    globaldef003355 = spawn();
    globaldef003355.movetype = MOVETYPE_NONE;
    globaldef003355.solid = SOLID_TRIGGER;
    globaldef003355.owner = self;
    globaldef003355.touch = func000543;
    globaldef003356 = globaldef003347;
    globaldef003360 = globaldef003351;
    setsize(globaldef003355, globaldef003356 - '60 60 8', globaldef003360 + '60 60 8');
    return globaldef003355;
};

// func000547
// function begins at statement 15176, parm_start=10418
// OP_LOAD_F	10418	135	10420
// OP_LOAD_F	10419	139	10421
// OP_GT	10420	10421	10422
// OP_IFNOT	10422	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	10418	136	10423
// OP_LOAD_F	10419	140	10424
// OP_GT	10423	10424	10425
// OP_IFNOT	10425	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	10418	137	10426
// OP_LOAD_F	10419	141	10427
// OP_GT	10426	10427	10428
// OP_IFNOT	10428	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	10418	139	10429
// OP_LOAD_F	10419	135	10430
// OP_LT	10429	10430	10431
// OP_IFNOT	10431	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	10418	140	10432
// OP_LOAD_F	10419	136	10433
// OP_LT	10432	10433	10434
// OP_IFNOT	10434	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	10418	141	10435
// OP_LOAD_F	10419	137	10436
// OP_LT	10435	10436	10437
// OP_IFNOT	10437	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef003366, entity globaldef003367) func000547 = 
{
    
    if(globaldef003366.mins_x > globaldef003367.maxs_x)
    {
        return FALSE;
    }
    
    
    if(globaldef003366.mins_y > globaldef003367.maxs_y)
    {
        return FALSE;
    }
    
    
    if(globaldef003366.mins_z > globaldef003367.maxs_z)
    {
        return FALSE;
    }
    
    
    if(globaldef003366.maxs_x < globaldef003367.mins_x)
    {
        return FALSE;
    }
    
    
    if(globaldef003366.maxs_y < globaldef003367.mins_y)
    {
        return FALSE;
    }
    
    
    if(globaldef003366.maxs_z < globaldef003367.mins_z)
    {
        return FALSE;
    }
    
    return TRUE;
};

// func000548
// function begins at statement 15208, parm_start=10439
// OP_LOAD_ENT	28	181	10447
// OP_IFNOT	10447	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	10448
// OP_BITAND	10448	229	10449
// OP_IFNOT	10449	6	0
// OP_ADDRESS	28	201	10450
// OP_ADDRESS	28	181	10451
// OP_STOREP_ENT	28	10451	0
// OP_STOREP_ENT	28	10450	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	134	10452
// OP_STORE_V	10452	10441	0
// OP_LOAD_V	28	138	10455
// OP_STORE_V	10455	10444	0
// OP_STORE_ENT	28	10440	0
// OP_STORE_ENT	28	10439	0
// OP_ADDRESS	28	201	10458
// OP_STOREP_ENT	10440	10458	0
// OP_LOAD_F	28	152	10459
// OP_IFNOT	10459	4	0
// OP_ADDRESS	10440	152	10460
// OP_LOAD_F	28	152	10461
// OP_STOREP_F	10461	10460	0
// OP_LOAD_S	28	197	10462
// OP_IFNOT	10462	4	0
// OP_ADDRESS	10440	197	10463
// OP_LOAD_S	28	197	10464
// OP_STOREP_S	10464	10463	0
// OP_LOAD_S	28	206	10465
// OP_NE_S	10465	3002	10466
// OP_IFNOT	10466	4	0
// OP_ADDRESS	10440	206	10467
// OP_LOAD_S	28	206	10468
// OP_STOREP_S	10468	10467	0
// OP_STORE_V	10439	4	0
// OP_STORE_V	129	7	0
// OP_LOAD_S	28	129	10469
// OP_STORE_V	10469	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	10439	0
// OP_NOT_ENT	10439	0	10470
// OP_IFNOT	10470	21	0
// OP_ADDRESS	28	181	10471
// OP_STOREP_ENT	10440	10471	0
// OP_LOAD_ENT	28	201	10472
// OP_STORE_ENT	10472	28	0
// OP_LOAD_F	28	152	10473
// OP_IFNOT	10473	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	197	10474
// OP_IFNOT	10474	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	10475
// OP_IFNOT	10475	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	10476
// OP_ADDRESS	10476	420	10477
// OP_STORE_V	10441	4	0
// OP_STORE_V	10444	7	0
// OP_CALL2	10390	0	0
// OP_STOREP_ENT	1	10477	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10439	7	0
// OP_CALL2	10417	0	0
// OP_IFNOT	1	38	0
// OP_LOAD_ENT	10439	181	10478
// OP_IFNOT	10478	3	0
// OP_STORE_V	10479	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	181	10480
// OP_STOREP_ENT	10439	10480	0
// OP_STORE_ENT	10439	28	0
// OP_LOAD_F	10439	135	10481
// OP_LT	10481	10441	10482
// OP_IFNOT	10482	3	0
// OP_LOAD_F	10439	135	10483
// OP_STORE_F	10483	10441	0
// OP_LOAD_F	10439	136	10484
// OP_LT	10484	10442	10485
// OP_IFNOT	10485	3	0
// OP_LOAD_F	10439	136	10486
// OP_STORE_F	10486	10442	0
// OP_LOAD_F	10439	137	10487
// OP_LT	10487	10443	10488
// OP_IFNOT	10488	3	0
// OP_LOAD_F	10439	137	10489
// OP_STORE_F	10489	10443	0
// OP_LOAD_F	10439	139	10490
// OP_GT	10490	10444	10491
// OP_IFNOT	10491	3	0
// OP_LOAD_F	10439	139	10492
// OP_STORE_F	10492	10444	0
// OP_LOAD_F	10439	140	10493
// OP_GT	10493	10445	10494
// OP_IFNOT	10494	3	0
// OP_LOAD_F	10439	140	10495
// OP_STORE_F	10495	10445	0
// OP_LOAD_F	10439	141	10496
// OP_GT	10496	10446	10497
// OP_IFNOT	10497	3	0
// OP_LOAD_F	10439	141	10498
// OP_STORE_F	10498	10446	0
// OP_IF	214	-87	0
// OP_DONE	0	0	0
void () func000548 = 
{
    local entity globaldef003369;
    local entity globaldef003370;
    local vector globaldef003371;
    local vector globaldef003375;
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.spawnflags & MOVETYPE_STEP)
    {
        self.owner = self.enemy = self;
        return;
    }
    
    globaldef003371 = self.mins;
    globaldef003375 = self.maxs;
    globaldef003369 = globaldef003370 = self;
    do
    {
        self.owner = globaldef003370;
        
        if(self.health)
        {
            globaldef003370.health = self.health;
        }
        
        
        if(self.targetname)
        {
            globaldef003370.targetname = self.targetname;
        }
        
        
        if(self.message != "")
        {
            globaldef003370.message = self.message;
        }
        
        globaldef003369 = find(globaldef003369, classname, self.classname);
        
        if(!globaldef003369)
        {
            self.enemy = globaldef003370;
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
            
            self.owner.trigger_field = func000546(globaldef003371, globaldef003375);
            return;
        }
        
        
        if(func000547(self, globaldef003369))
        {
            
            if(globaldef003369.enemy)
            {
                objerror("cross connected doors");
            }
            
            self = self.enemy = globaldef003369;
            
            if(globaldef003369.mins_x < globaldef003371_x)
            {
                globaldef003371_x = globaldef003369.mins_x;
            }
            
            
            if(globaldef003369.mins_y < 0)
            {
                globaldef003373 = globaldef003369.mins_y;
            }
            
            
            if(globaldef003369.mins_z < 0)
            {
                globaldef003374 = globaldef003369.mins_z;
            }
            
            
            if(globaldef003369.maxs_x > globaldef003375_x)
            {
                globaldef003375_x = globaldef003369.maxs_x;
            }
            
            
            if(globaldef003369.maxs_y > 0)
            {
                globaldef003377 = globaldef003369.maxs_y;
            }
            
            
            if(globaldef003369.maxs_z > 0)
            {
                globaldef003378 = globaldef003369.maxs_z;
            }
            
        }
        
    } while (TRUE);
};

