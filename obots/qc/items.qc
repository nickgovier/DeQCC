void () W_SetCurrentAmmo;

// SUB_regen
// function begins at statement 4222, parm_start=4297
// OP_ADDRESS	28	130	4297
// OP_LOAD_S	28	399	4298
// OP_STOREP_S	4298	4297	0
// OP_ADDRESS	28	104	4299
// OP_STOREP_F	238	4299	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	4300	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	4301
// OP_STORE_V	4301	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void () SUB_regen = 
{
    self.model = self.mdl;
    self.solid = SOLID_TRIGGER;
    sound(self, CHAN_VOICE, "items/itembk2.wav", TRUE, ATTN_NORM);
    setorigin(self, self.origin);
};


// noclass
// function begins at statement 4238, parm_start=4305
// OP_STORE_V	4305	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	4306
// OP_STORE_V	4306	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () noclass = 
{
    dprint("noclass spawned at");
    dprint(vtos(self.origin));
    dprint("\n");
    remove(self);
};


// PlaceItem
// function begins at statement 4250, parm_start=4310
// OP_ADDRESS	28	399	4311
// OP_LOAD_S	28	130	4312
// OP_STOREP_S	4312	4311	0
// OP_ADDRESS	28	182	4313
// OP_STOREP_F	222	4313	0
// OP_ADDRESS	28	104	4314
// OP_STOREP_F	238	4314	0
// OP_ADDRESS	28	103	4315
// OP_STOREP_F	231	4315	0
// OP_ADDRESS	28	113	4316
// OP_STOREP_V	286	4316	0
// OP_ADDRESS	28	108	4319
// OP_LOAD_F	28	108	4320
// OP_ADD_F	4320	231	4321
// OP_STOREP_F	4321	4319	0
// OP_LOAD_F	28	108	4322
// OP_STORE_F	4322	4310	0
// OP_CALL0	481	0	0
// OP_NOT_F	1	0	4323
// OP_IFNOT	4323	13	0
// OP_STORE_V	4324	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	4325
// OP_STORE_V	4325	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PlaceItem = 
{
    local float oldz;
    self.mdl = self.model;
    self.flags = FL_ITEM;
    self.solid = SOLID_TRIGGER;
    self.movetype = MOVETYPE_TOSS;
    self.velocity = VEC_ORIGIN;
    self.origin_z = self.origin_z + MOVETYPE_TOSS;
    oldz = self.origin_z;
    
    if(!droptofloor())
    {
        dprint("Bonus item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
        return;
    }
    
};


// StartItem
// function begins at statement 4283, parm_start=4329
// OP_ADDRESS	28	150	4329
// OP_ADD_F	31	3267	4330
// OP_STOREP_F	4330	4329	0
// OP_ADDRESS	28	148	4331
// OP_STOREP_FNC	4309	4331	0
// OP_DONE	0	0	0
void () StartItem = 
{
    self.nextthink = time + 0.2;
    self.think = PlaceItem;
};


// T_Heal
// function begins at statement 4289, parm_start=4332
// OP_LOAD_F	4332	152	4335
// OP_LE	4335	213	4336
// OP_IFNOT	4336	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	4334	0	4337
// OP_LOAD_F	4332	152	4338
// OP_LOAD_F	29	185	4339
// OP_GE	4338	4339	4340
// OP_AND	4337	4340	4341
// OP_IFNOT	4341	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	4333	4	0
// OP_CALL1	485	0	0
// OP_STORE_F	1	4333	0
// OP_ADDRESS	4332	152	4342
// OP_LOAD_F	4332	152	4343
// OP_ADD_F	4343	4333	4344
// OP_STOREP_F	4344	4342	0
// OP_NOT_F	4334	0	4345
// OP_LOAD_F	4332	152	4346
// OP_LOAD_F	29	185	4347
// OP_GE	4346	4347	4348
// OP_AND	4345	4348	4349
// OP_IFNOT	4349	4	0
// OP_ADDRESS	4332	152	4350
// OP_LOAD_F	29	185	4351
// OP_STOREP_F	4351	4350	0
// OP_LOAD_F	4332	152	4352
// OP_GT	4352	738	4353
// OP_IFNOT	4353	3	0
// OP_ADDRESS	4332	152	4354
// OP_STOREP_F	738	4354	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity e, float healamount, float ignore) T_Heal = 
{
    
    if(e.health <= FALSE)
    {
        return FALSE;
    }
    
    
    if(!ignore && (e.health >= other.max_health))
    {
        return FALSE;
    }
    
    healamount = ceil(healamount);
    e.health = e.health + healamount;
    
    if(!ignore && (e.health >= other.max_health))
    {
        e.health = other.max_health;
    }
    
    
    if(e.health > GLOBALDEFSEVENTWOONE)
    {
        e.health = GLOBALDEFSEVENTWOONE;
    }
    
    return TRUE;
};

float H_ROTTEN = 1;
float H_MEGA = 2;
.float healamount;
.float healtype;
void () health_touch;
void () item_megahealth_rot;

// item_health
// function begins at statement 4323, parm_start=4362
// OP_ADDRESS	28	146	4362
// OP_STOREP_FNC	4359	4362	0
// OP_LOAD_F	28	195	4363
// OP_BITAND	4363	4355	4364
// OP_IFNOT	4364	17	0
// OP_STORE_V	4365	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	4366	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4365	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	208	4367
// OP_STOREP_S	4366	4367	0
// OP_ADDRESS	28	4357	4368
// OP_STOREP_F	765	4368	0
// OP_ADDRESS	28	4358	4369
// OP_STOREP_F	213	4369	0
// OP_ADDRESS	28	548	4370
// OP_STOREP_FNC	1008	4370	0
// OP_GOTO	39	0	0
// OP_LOAD_F	28	195	4371
// OP_BITAND	4371	4356	4372
// OP_IFNOT	4372	21	0
// OP_STORE_V	4373	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	4374	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4373	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	208	4375
// OP_STOREP_S	4374	4375	0
// OP_ADDRESS	28	4357	4376
// OP_STOREP_F	1997	4376	0
// OP_ADDRESS	28	4358	4377
// OP_STOREP_F	216	4377	0
// OP_ADDRESS	28	548	4378
// OP_STOREP_FNC	1010	4378	0
// OP_ADDRESS	28	549	4379
// OP_STOREP_FNC	1028	4379	0
// OP_ADDRESS	28	547	4380
// OP_STOREP_FNC	1186	4380	0
// OP_GOTO	16	0	0
// OP_STORE_V	4381	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	4382	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4381	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	208	4383
// OP_STOREP_S	4382	4383	0
// OP_ADDRESS	28	4357	4384
// OP_STOREP_F	305	4384	0
// OP_ADDRESS	28	4358	4385
// OP_STOREP_F	214	4385	0
// OP_ADDRESS	28	548	4386
// OP_STOREP_FNC	1009	4386	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_health = 
{
    self.touch = health_touch;
    if(self.spawnflags & H_ROTTEN)
    {
        precache_model("maps/b_bh10.bsp");
        precache_sound("items/r_item1.wav");
        setmodel(self, "maps/b_bh10.bsp");
        self.noise = "items/r_item1.wav";
        self.healamount = GLOBALDEFSEVENFOUREIGHT;
        self.healtype = FALSE;
        self.field000225 = func002299;
    }
    else
    {
        if(self.spawnflags & H_MEGA)
        {
            precache_model("maps/b_bh100.bsp");
            precache_sound("items/r_item2.wav");
            setmodel(self, "maps/b_bh100.bsp");
            self.noise = "items/r_item2.wav";
            self.healamount = 100;
            self.healtype = FL_SWIM;
            self.field000225 = func002298;
            self.field000226 = func002318;
            self.field000224 = func002647;
        }
        else
        {
            precache_model("maps/b_bh25.bsp");
            precache_sound("items/health1.wav");
            setmodel(self, "maps/b_bh25.bsp");
            self.noise = "items/health1.wav";
            self.healamount = SVC_SIGNONNUM;
            self.healtype = TRUE;
            self.field000225 = func002300;
        }
        
    }
    
    setsize(self, VEC_ORIGIN, '32 32 56');
    StartItem();
};


// health_touch
// function begins at statement 4388, parm_start=4390
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4392
// OP_NE_S	4392	1236	4393
// OP_IFNOT	4393	5	0
// OP_LOAD_S	29	129	4394
// OP_NE_S	4394	1241	4395
// OP_IFNOT	4395	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4396
// OP_BITAND	4396	703	4397
// OP_IFNOT	4397	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4398
// OP_EQ_S	4398	1241	4399
// OP_IFNOT	4399	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_F	28	4358	4400
// OP_EQ_F	4400	216	4401
// OP_IFNOT	4401	14	0
// OP_LOAD_F	29	152	4402
// OP_GE	4402	738	4403
// OP_IFNOT	4403	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	4357	4404
// OP_STORE_V	4404	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	523	0	0
// OP_NOT_F	1	0	4405
// OP_IFNOT	4405	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	4357	4406
// OP_STORE_V	4406	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	523	0	0
// OP_NOT_F	1	0	4407
// OP_IFNOT	4407	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4408
// OP_EQ_S	4408	1236	4409
// OP_IFNOT	4409	14	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4410	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28	4357	4411
// OP_STORE_V	4411	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	4391	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4391	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4412	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_LOAD_S	28	208	4413
// OP_STORE_V	4413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	4414
// OP_EQ_S	4414	1236	4415
// OP_IFNOT	4415	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	28	130	4417
// OP_STOREP_S	348	4417	0
// OP_ADDRESS	28	104	4418
// OP_STOREP_F	237	4418	0
// OP_LOAD_F	28	4358	4419
// OP_EQ_F	4419	216	4420
// OP_IFNOT	4420	13	0
// OP_ADDRESS	29	162	4421
// OP_LOAD_F	29	162	4422
// OP_BITOR	4422	269	4423
// OP_STOREP_F	4423	4421	0
// OP_ADDRESS	28	150	4424
// OP_ADD_F	31	230	4425
// OP_STOREP_F	4425	4424	0
// OP_ADDRESS	28	148	4426
// OP_STOREP_FNC	4360	4426	0
// OP_ADDRESS	28	201	4427
// OP_STOREP_ENT	29	4427	0
// OP_GOTO	9	0	0
// OP_NE_F	35	216	4428
// OP_IFNOT	4428	7	0
// OP_IFNOT	35	4	0
// OP_ADDRESS	28	150	4429
// OP_ADD_F	31	2323	4430
// OP_STOREP_F	4430	4429	0
// OP_ADDRESS	28	148	4431
// OP_STOREP_FNC	4296	4431	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () health_touch = 
{
    local float amount;
    local string s;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    if(self.healtype == FL_SWIM)
    {
        
        if(other.health >= GLOBALDEFSEVENTWOONE)
        {
            return;
        }
        
        
        if(!T_Heal(other, self.healamount, TRUE))
        {
            return;
        }
        
    }
    else
    {
        
        if(!T_Heal(other, self.healamount, FALSE))
        {
            return;
        }
        
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You receive ");
        s = ftos(self.healamount);
        sprint(other, s);
        sprint(other, " health\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    if(self.healtype == FL_SWIM)
    {
        other.items = other.items | IT_SUPERHEALTH;
        self.nextthink = time + MOVETYPE_FLY;
        self.think = item_megahealth_rot;
        self.owner = other;
    }
    else
    {
        
        if(deathmatch != FL_SWIM)
        {
            
            if(deathmatch)
            {
                self.nextthink = time + 20;
            }
            
            self.think = SUB_regen;
        }
        
    }
    
    activator = other;
    SUB_UseTargets();
};


// item_megahealth_rot
// function begins at statement 4492, parm_start=4432
// OP_LOAD_ENT	28	201	4432
// OP_STORE_ENT	4432	29	0
// OP_LOAD_F	29	152	4433
// OP_LOAD_F	29	185	4434
// OP_GT	4433	4434	4435
// OP_IFNOT	4435	9	0
// OP_ADDRESS	29	152	4436
// OP_LOAD_F	29	152	4437
// OP_SUB_F	4437	214	4438
// OP_STOREP_F	4438	4436	0
// OP_ADDRESS	28	150	4439
// OP_ADD_F	31	214	4440
// OP_STOREP_F	4440	4439	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	4441
// OP_LOAD_F	29	162	4442
// OP_LOAD_F	29	162	4443
// OP_BITAND	4443	269	4444
// OP_SUB_F	4442	4444	4445
// OP_STOREP_F	4445	4441	0
// OP_EQ_F	35	214	4446
// OP_IFNOT	4446	6	0
// OP_ADDRESS	28	150	4447
// OP_ADD_F	31	2323	4448
// OP_STOREP_F	4448	4447	0
// OP_ADDRESS	28	148	4449
// OP_STOREP_FNC	4296	4449	0
// OP_EQ_F	35	228	4450
// OP_IFNOT	4450	6	0
// OP_ADDRESS	28	150	4451
// OP_ADD_F	31	2323	4452
// OP_STOREP_F	4452	4451	0
// OP_ADDRESS	28	148	4453
// OP_STOREP_FNC	4296	4453	0
// OP_DONE	0	0	0
void () item_megahealth_rot = 
{
    other = self.owner;
    
    if(other.health > other.max_health)
    {
        other.health = other.health - TRUE;
        self.nextthink = time + TRUE;
        return;
    }
    
    other.items = other.items - (other.items & IT_SUPERHEALTH);
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + 20;
        self.think = SUB_regen;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        self.nextthink = time + 20;
        self.think = SUB_regen;
    }
    
};


// armor_touch
// function begins at statement 4527, parm_start=4455
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4458
// OP_LE	4458	213	4459
// OP_IFNOT	4459	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4460
// OP_NE_S	4460	1236	4461
// OP_IFNOT	4461	5	0
// OP_LOAD_S	29	129	4462
// OP_NE_S	4462	1241	4463
// OP_IFNOT	4463	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4464
// OP_BITAND	4464	703	4465
// OP_IFNOT	4465	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4466
// OP_EQ_S	4466	1241	4467
// OP_IFNOT	4467	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_S	28	129	4468
// OP_EQ_S	4468	4469	4470
// OP_IFNOT	4470	4	0
// OP_STORE_F	3409	4455	0
// OP_STORE_F	1997	4456	0
// OP_STORE_F	266	4457	0
// OP_LOAD_S	28	129	4471
// OP_EQ_S	4471	4472	4473
// OP_IFNOT	4473	4	0
// OP_STORE_F	4474	4455	0
// OP_STORE_F	2003	4456	0
// OP_STORE_F	267	4457	0
// OP_LOAD_S	28	129	4475
// OP_EQ_S	4475	4476	4477
// OP_IFNOT	4477	4	0
// OP_STORE_F	4478	4455	0
// OP_STORE_F	2044	4456	0
// OP_STORE_F	268	4457	0
// OP_LOAD_F	29	187	4479
// OP_LOAD_F	29	188	4480
// OP_MUL_F	4479	4480	4481
// OP_MUL_F	4455	4456	4482
// OP_GE	4481	4482	4483
// OP_IFNOT	4483	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	187	4484
// OP_STOREP_F	4455	4484	0
// OP_ADDRESS	29	188	4485
// OP_STOREP_F	4456	4485	0
// OP_ADDRESS	29	162	4486
// OP_LOAD_F	29	162	4487
// OP_LOAD_F	29	162	4488
// OP_BITOR	266	267	4489
// OP_BITOR	4489	268	4490
// OP_BITAND	4488	4490	4491
// OP_SUB_F	4487	4491	4492
// OP_ADD_F	4492	4457	4493
// OP_STOREP_F	4493	4486	0
// OP_ADDRESS	28	104	4494
// OP_STOREP_F	237	4494	0
// OP_ADDRESS	28	130	4495
// OP_STOREP_S	348	4495	0
// OP_EQ_F	35	214	4496
// OP_IFNOT	4496	4	0
// OP_ADDRESS	28	150	4497
// OP_ADD_F	31	2323	4498
// OP_STOREP_F	4498	4497	0
// OP_EQ_F	35	228	4499
// OP_IFNOT	4499	4	0
// OP_ADDRESS	28	150	4500
// OP_ADD_F	31	2323	4501
// OP_STOREP_F	4501	4500	0
// OP_ADDRESS	28	148	4502
// OP_STOREP_FNC	4296	4502	0
// OP_LOAD_S	29	129	4503
// OP_EQ_S	4503	1236	4504
// OP_IFNOT	4504	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4505	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4506	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	28	105	4507
// OP_STORE_V	4507	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	760	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	4510
// OP_EQ_S	4510	1236	4511
// OP_IFNOT	4511	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () armor_touch = 
{
    local float type;
    local float value;
    local float bit;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    
    if(self.classname == "item_armor1")
    {
        type = 0.3;
        value = 100;
        bit = IT_ARMOR1;
    }
    
    
    if(self.classname == "item_armor2")
    {
        type = 0.6;
        value = 150;
        bit = IT_ARMOR2;
    }
    
    
    if(self.classname == "item_armorInv")
    {
        type = 0.8;
        value = 200;
        bit = IT_ARMOR3;
    }
    
    
    if((other.armortype * other.armorvalue) >= (type * value))
    {
        return;
    }
    
    other.armortype = type;
    other.armorvalue = value;
    other.items = (other.items - (other.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + bit;
    self.solid = SOLID_NOT;
    self.model = string_null;
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + 20;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        self.nextthink = time + 20;
    }
    
    self.think = SUB_regen;
    
    if(other.classname == "player")
    {
        sprint(other, "You got armor\n");
    }
    
    sound(other, CHAN_ITEM, "items/armor1.wav", TRUE, ATTN_NORM);
    func002453(other, self.origin, TRUE, globaldef000743);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    activator = other;
    SUB_UseTargets();
};


// item_armor1
// function begins at statement 4633, parm_start=4513
// OP_ADDRESS	28	146	4513
// OP_STOREP_FNC	4454	4513	0
// OP_STORE_V	4514	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4514	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	132	4515
// OP_STOREP_F	213	4515	0
// OP_ADDRESS	28	188	4516
// OP_STOREP_F	1997	4516	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4523
// OP_STOREP_FNC	1021	4523	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_armor1 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = FALSE;
    self.armorvalue = 100;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002311;
    StartItem();
};


// item_armor2
// function begins at statement 4652, parm_start=4525
// OP_ADDRESS	28	146	4525
// OP_STOREP_FNC	4454	4525	0
// OP_STORE_V	4514	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4514	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	132	4526
// OP_STOREP_F	214	4526	0
// OP_ADDRESS	28	188	4527
// OP_STOREP_F	2003	4527	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4528
// OP_STOREP_FNC	1022	4528	0
// OP_ADDRESS	28	549	4529
// OP_STOREP_FNC	1035	4529	0
// OP_ADDRESS	28	547	4530
// OP_STOREP_FNC	1185	4530	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_armor2 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = TRUE;
    self.armorvalue = 150;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002312;
    self.field000226 = func002325;
    self.field000224 = func002646;
    StartItem();
};


// item_armorInv
// function begins at statement 4675, parm_start=4532
// OP_ADDRESS	28	146	4532
// OP_STOREP_FNC	4454	4532	0
// OP_STORE_V	4514	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4514	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	132	4533
// OP_STOREP_F	216	4533	0
// OP_ADDRESS	28	188	4534
// OP_STOREP_F	2044	4534	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4535
// OP_STOREP_FNC	1023	4535	0
// OP_ADDRESS	28	549	4536
// OP_STOREP_FNC	1036	4536	0
// OP_ADDRESS	28	547	4537
// OP_STOREP_FNC	1185	4537	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_armorInv = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = FL_SWIM;
    self.armorvalue = 200;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002313;
    self.field000226 = func002326;
    self.field000224 = func002646;
    StartItem();
};


// bound_other_ammo
// function begins at statement 4698, parm_start=4539
// OP_LOAD_F	29	158	4539
// OP_GT	4539	1997	4540
// OP_IFNOT	4540	3	0
// OP_ADDRESS	29	158	4541
// OP_STOREP_F	1997	4541	0
// OP_LOAD_F	29	159	4542
// OP_GT	4542	2044	4543
// OP_IFNOT	4543	3	0
// OP_ADDRESS	29	159	4544
// OP_STOREP_F	2044	4544	0
// OP_LOAD_F	29	160	4545
// OP_GT	4545	1997	4546
// OP_IFNOT	4546	3	0
// OP_ADDRESS	29	160	4547
// OP_STOREP_F	1997	4547	0
// OP_LOAD_F	29	161	4548
// OP_GT	4548	1997	4549
// OP_IFNOT	4549	3	0
// OP_ADDRESS	29	161	4550
// OP_STOREP_F	1997	4550	0
// OP_DONE	0	0	0
void () bound_other_ammo = 
{
    
    if(other.ammo_shells > 100)
    {
        other.ammo_shells = 100;
    }
    
    
    if(other.ammo_nails > 200)
    {
        other.ammo_nails = 200;
    }
    
    
    if(other.ammo_rockets > 100)
    {
        other.ammo_rockets = 100;
    }
    
    
    if(other.ammo_cells > 100)
    {
        other.ammo_cells = 100;
    }
    
};


// RankForWeapon
// function begins at statement 4719, parm_start=4552
// OP_EQ_F	4552	260	4553
// OP_IFNOT	4553	2	0
// OP_RETURN	214	0	0
// OP_EQ_F	4552	259	4554
// OP_IFNOT	4554	2	0
// OP_RETURN	216	0	0
// OP_EQ_F	4552	257	4555
// OP_IFNOT	4555	2	0
// OP_RETURN	228	0	0
// OP_EQ_F	4552	258	4556
// OP_IFNOT	4556	2	0
// OP_RETURN	229	0	0
// OP_EQ_F	4552	255	4557
// OP_IFNOT	4557	2	0
// OP_RETURN	230	0	0
// OP_EQ_F	4552	256	4558
// OP_IFNOT	4558	2	0
// OP_RETURN	231	0	0
// OP_RETURN	232	0	0
// OP_DONE	0	0	0
float (float w) RankForWeapon = 
{
    
    if(w == IT_LIGHTNING)
    {
        return TRUE;
    }
    
    
    if(w == IT_ROCKET_LAUNCHER)
    {
        return FL_SWIM;
    }
    
    
    if(w == IT_SUPER_NAILGUN)
    {
        return MOVETYPE_WALK;
    }
    
    
    if(w == IT_GRENADE_LAUNCHER)
    {
        return MOVETYPE_STEP;
    }
    
    
    if(w == IT_SUPER_SHOTGUN)
    {
        return MOVETYPE_FLY;
    }
    
    
    if(w == IT_NAILGUN)
    {
        return MOVETYPE_TOSS;
    }
    
    return MOVETYPE_PUSH;
};


// Deathmatch_Weapon
// function begins at statement 4739, parm_start=4560
// OP_LOAD_F	28	154	4564
// OP_STORE_V	4564	4	0
// OP_CALL1	4551	0	0
// OP_STORE_F	1	4562	0
// OP_STORE_V	4561	4	0
// OP_CALL1	4551	0	0
// OP_STORE_F	1	4563	0
// OP_LT	4563	4562	4565
// OP_IFNOT	4565	3	0
// OP_ADDRESS	28	154	4566
// OP_STOREP_F	4561	4566	0
// OP_DONE	0	0	0
void (float old, float new) Deathmatch_Weapon = 
{
    local float or;
    local float nr;
    or = RankForWeapon(self.weapon);
    nr = RankForWeapon(new);
    
    if(nr < or)
    {
        self.weapon = new;
    }
    
};

float () W_BestWeapon;

// weapon_touch
// function begins at statement 4751, parm_start=4569
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4575
// OP_NE_S	4575	1236	4576
// OP_IFNOT	4576	5	0
// OP_LOAD_S	29	129	4577
// OP_NE_S	4577	1241	4578
// OP_IFNOT	4578	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4579
// OP_BITAND	4579	703	4580
// OP_IFNOT	4580	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4581
// OP_EQ_S	4581	1241	4582
// OP_IFNOT	4582	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_STORE_ENT	28	4573	0
// OP_STORE_ENT	29	28	0
// OP_LOAD_S	28	129	4583
// OP_EQ_S	4583	1236	4584
// OP_IFNOT	4584	3	0
// OP_CALL0	4567	0	0
// OP_STORE_F	1	4570	0
// OP_STORE_ENT	4573	28	0
// OP_EQ_F	35	216	4585
// OP_OR	4585	36	4586
// OP_IFNOT	4586	3	0
// OP_STORE_F	214	4574	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	4574	0
// OP_EQ_F	35	228	4587
// OP_IFNOT	4587	2	0
// OP_STORE_F	214	4574	0
// OP_LOAD_S	28	129	4588
// OP_EQ_S	4588	4589	4590
// OP_IFNOT	4590	14	0
// OP_LOAD_F	29	162	4591
// OP_BITAND	4591	256	4592
// OP_AND	4574	4592	4593
// OP_IFNOT	4593	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	159	4594
// OP_STORE_F	4594	4569	0
// OP_STORE_F	256	4571	0
// OP_ADDRESS	29	159	4595
// OP_LOAD_F	29	159	4596
// OP_ADD_F	4596	309	4597
// OP_STOREP_F	4597	4595	0
// OP_GOTO	83	0	0
// OP_LOAD_S	28	129	4598
// OP_EQ_S	4598	4599	4600
// OP_IFNOT	4600	14	0
// OP_LOAD_F	29	162	4601
// OP_BITAND	4601	257	4602
// OP_AND	4574	4602	4603
// OP_IFNOT	4603	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4604
// OP_STORE_F	4604	4569	0
// OP_STORE_F	257	4571	0
// OP_ADDRESS	29	159	4605
// OP_LOAD_F	29	159	4606
// OP_ADD_F	4606	309	4607
// OP_STOREP_F	4607	4605	0
// OP_GOTO	67	0	0
// OP_LOAD_S	28	129	4608
// OP_EQ_S	4608	4609	4610
// OP_IFNOT	4610	14	0
// OP_LOAD_F	29	162	4611
// OP_BITAND	4611	255	4612
// OP_AND	4574	4612	4613
// OP_IFNOT	4613	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4614
// OP_STORE_F	4614	4569	0
// OP_STORE_F	255	4571	0
// OP_ADDRESS	29	158	4615
// OP_LOAD_F	29	158	4616
// OP_ADD_F	4616	230	4617
// OP_STOREP_F	4617	4615	0
// OP_GOTO	51	0	0
// OP_LOAD_S	28	129	4618
// OP_EQ_S	4618	4619	4620
// OP_IFNOT	4620	14	0
// OP_LOAD_F	29	162	4621
// OP_BITAND	4621	259	4622
// OP_AND	4574	4622	4623
// OP_IFNOT	4623	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4624
// OP_STORE_F	4624	4569	0
// OP_STORE_F	259	4571	0
// OP_ADDRESS	29	160	4625
// OP_LOAD_F	29	160	4626
// OP_ADD_F	4626	230	4627
// OP_STOREP_F	4627	4625	0
// OP_GOTO	35	0	0
// OP_LOAD_S	28	129	4628
// OP_EQ_S	4628	4629	4630
// OP_IFNOT	4630	14	0
// OP_LOAD_F	29	162	4631
// OP_BITAND	4631	258	4632
// OP_AND	4574	4632	4633
// OP_IFNOT	4633	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4634
// OP_STORE_F	4634	4569	0
// OP_STORE_F	258	4571	0
// OP_ADDRESS	29	160	4635
// OP_LOAD_F	29	160	4636
// OP_ADD_F	4636	230	4637
// OP_STOREP_F	4637	4635	0
// OP_GOTO	19	0	0
// OP_LOAD_S	28	129	4638
// OP_EQ_S	4638	4639	4640
// OP_IFNOT	4640	14	0
// OP_LOAD_F	29	162	4641
// OP_BITAND	4641	260	4642
// OP_AND	4574	4642	4643
// OP_IFNOT	4643	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	4644
// OP_STORE_F	4644	4569	0
// OP_STORE_F	260	4571	0
// OP_ADDRESS	29	161	4645
// OP_LOAD_F	29	161	4646
// OP_ADD_F	4646	765	4647
// OP_STOREP_F	4647	4645	0
// OP_GOTO	3	0	0
// OP_STORE_V	4648	4	0
// OP_CALL1	461	0	0
// OP_LOAD_S	29	129	4649
// OP_EQ_S	4649	1236	4650
// OP_IFNOT	4650	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4652
// OP_STORE_V	4652	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	28	105	4654
// OP_STORE_V	4654	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	759	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	4657
// OP_EQ_S	4657	1236	4658
// OP_IFNOT	4658	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_CALL0	4538	0	0
// OP_LOAD_F	29	162	4659
// OP_STORE_F	4659	4572	0
// OP_ADDRESS	29	162	4660
// OP_LOAD_F	29	162	4661
// OP_BITOR	4661	4571	4662
// OP_STOREP_F	4662	4660	0
// OP_STORE_ENT	28	4573	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	4663
// OP_IFNOT	4663	4	0
// OP_ADDRESS	28	154	4664
// OP_STOREP_F	4571	4664	0
// OP_GOTO	4	0	0
// OP_STORE_V	4572	4	0
// OP_STORE_V	4571	7	0
// OP_CALL2	4559	0	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	4573	28	0
// OP_IFNOT	4574	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	130	4665
// OP_STOREP_S	348	4665	0
// OP_ADDRESS	28	104	4666
// OP_STOREP_F	237	4666	0
// OP_EQ_F	35	214	4667
// OP_IFNOT	4667	4	0
// OP_ADDRESS	28	150	4668
// OP_ADD_F	31	309	4669
// OP_STOREP_F	4669	4668	0
// OP_ADDRESS	28	148	4670
// OP_STOREP_FNC	4296	4670	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () weapon_touch = 
{
    local float hadammo;
    local float best;
    local float new;
    local float old;
    local entity stemp;
    local float leave;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    stemp = self;
    self = other;
    
    if(self.classname == "player")
    {
        best = W_BestWeapon();
    }
    
    self = stemp;
    if((deathmatch == FL_SWIM) || coop)
    {
        leave = TRUE;
    }
    else
    {
        leave = FALSE;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        leave = TRUE;
    }
    
    if(self.classname == "weapon_nailgun")
    {
        
        if(leave && (other.items & IT_NAILGUN))
        {
            return;
        }
        
        hadammo = other.ammo_nails;
        new = IT_NAILGUN;
        other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
    }
    else
    {
        if(self.classname == "weapon_supernailgun")
        {
            
            if(leave && (other.items & IT_SUPER_NAILGUN))
            {
                return;
            }
            
            hadammo = other.ammo_rockets;
            new = IT_SUPER_NAILGUN;
            other.ammo_nails = other.ammo_nails + SVC_INTERMISSION;
        }
        else
        {
            if(self.classname == "weapon_supershotgun")
            {
                
                if(leave && (other.items & IT_SUPER_SHOTGUN))
                {
                    return;
                }
                
                hadammo = other.ammo_rockets;
                new = IT_SUPER_SHOTGUN;
                other.ammo_shells = other.ammo_shells + MOVETYPE_FLY;
            }
            else
            {
                if(self.classname == "weapon_rocketlauncher")
                {
                    
                    if(leave && (other.items & IT_ROCKET_LAUNCHER))
                    {
                        return;
                    }
                    
                    hadammo = other.ammo_rockets;
                    new = IT_ROCKET_LAUNCHER;
                    other.ammo_rockets = other.ammo_rockets + MOVETYPE_FLY;
                }
                else
                {
                    if(self.classname == "weapon_grenadelauncher")
                    {
                        
                        if(leave && (other.items & IT_GRENADE_LAUNCHER))
                        {
                            return;
                        }
                        
                        hadammo = other.ammo_rockets;
                        new = IT_GRENADE_LAUNCHER;
                        other.ammo_rockets = other.ammo_rockets + MOVETYPE_FLY;
                    }
                    else
                    {
                        if(self.classname == "weapon_lightning")
                        {
                            
                            if(leave && (other.items & IT_LIGHTNING))
                            {
                                return;
                            }
                            
                            hadammo = other.ammo_rockets;
                            new = IT_LIGHTNING;
                            other.ammo_cells = other.ammo_cells + GLOBALDEFSEVENFOUREIGHT;
                        }
                        else
                        {
                            objerror("weapon_touch: unknown classname");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, "weapons/pkup.wav", TRUE, ATTN_NORM);
    func002453(other, self.origin, GLOBALDEFFIVETWOTWO, globaldef000742);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    bound_other_ammo();
    old = other.items;
    other.items = other.items | new;
    stemp = self;
    self = other;
    if(!deathmatch)
    {
        self.weapon = new;
    }
    else
    {
        Deathmatch_Weapon(old, new);
    }
    
    W_SetCurrentAmmo();
    self = stemp;
    
    if(leave)
    {
        return;
    }
    
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};


// weapon_supershotgun
// function begins at statement 4953, parm_start=4672
// OP_STORE_V	4672	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4672	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4673
// OP_STOREP_F	255	4673	0
// OP_ADDRESS	28	180	4674
// OP_STOREP_S	4675	4674	0
// OP_ADDRESS	28	146	4676
// OP_STOREP_FNC	4568	4676	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4677
// OP_STOREP_FNC	1020	4677	0
// OP_ADDRESS	28	549	4678
// OP_STOREP_FNC	1029	4678	0
// OP_ADDRESS	28	547	4679
// OP_STOREP_FNC	1179	4679	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_supershotgun = 
{
    precache_model("progs/g_shot.mdl");
    setmodel(self, "progs/g_shot.mdl");
    self.weapon = IT_SUPER_SHOTGUN;
    self.netname = "Double-barrelled Shotgun";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002310;
    self.field000226 = func002319;
    self.field000224 = func002640;
    StartItem();
};


// weapon_nailgun
// function begins at statement 4976, parm_start=4681
// OP_STORE_V	4681	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4681	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4682
// OP_STOREP_F	256	4682	0
// OP_ADDRESS	28	180	4683
// OP_STOREP_S	4684	4683	0
// OP_ADDRESS	28	146	4685
// OP_STOREP_FNC	4568	4685	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4686
// OP_STOREP_FNC	1018	4686	0
// OP_ADDRESS	28	549	4687
// OP_STOREP_FNC	1030	4687	0
// OP_ADDRESS	28	547	4688
// OP_STOREP_FNC	1180	4688	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_nailgun = 
{
    precache_model("progs/g_nail.mdl");
    setmodel(self, "progs/g_nail.mdl");
    self.weapon = IT_NAILGUN;
    self.netname = "nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002308;
    self.field000226 = func002320;
    self.field000224 = func002641;
    StartItem();
};


// weapon_supernailgun
// function begins at statement 4999, parm_start=4690
// OP_STORE_V	4690	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4690	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4691
// OP_STOREP_F	257	4691	0
// OP_ADDRESS	28	180	4692
// OP_STOREP_S	4693	4692	0
// OP_ADDRESS	28	146	4694
// OP_STOREP_FNC	4568	4694	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4695
// OP_STOREP_FNC	1019	4695	0
// OP_ADDRESS	28	549	4696
// OP_STOREP_FNC	1031	4696	0
// OP_ADDRESS	28	547	4697
// OP_STOREP_FNC	1181	4697	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_supernailgun = 
{
    precache_model("progs/g_nail2.mdl");
    setmodel(self, "progs/g_nail2.mdl");
    self.weapon = IT_SUPER_NAILGUN;
    self.netname = "Super Nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002309;
    self.field000226 = func002321;
    self.field000224 = func002642;
    StartItem();
};


// weapon_grenadelauncher
// function begins at statement 5022, parm_start=4699
// OP_STORE_V	4699	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4699	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4700
// OP_STOREP_F	228	4700	0
// OP_ADDRESS	28	180	4701
// OP_STOREP_S	4702	4701	0
// OP_ADDRESS	28	146	4703
// OP_STOREP_FNC	4568	4703	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4704
// OP_STOREP_FNC	1017	4704	0
// OP_ADDRESS	28	549	4705
// OP_STOREP_FNC	1032	4705	0
// OP_ADDRESS	28	547	4706
// OP_STOREP_FNC	1182	4706	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_grenadelauncher = 
{
    precache_model("progs/g_rock.mdl");
    setmodel(self, "progs/g_rock.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Grenade Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002307;
    self.field000226 = func002322;
    self.field000224 = func002643;
    StartItem();
};


// weapon_rocketlauncher
// function begins at statement 5045, parm_start=4708
// OP_STORE_V	4708	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4708	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4709
// OP_STOREP_F	228	4709	0
// OP_ADDRESS	28	180	4710
// OP_STOREP_S	4711	4710	0
// OP_ADDRESS	28	146	4712
// OP_STOREP_FNC	4568	4712	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4713
// OP_STOREP_FNC	1015	4713	0
// OP_ADDRESS	28	549	4714
// OP_STOREP_FNC	1033	4714	0
// OP_ADDRESS	28	547	4715
// OP_STOREP_FNC	1183	4715	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_rocketlauncher = 
{
    precache_model("progs/g_rock2.mdl");
    setmodel(self, "progs/g_rock2.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Rocket Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002305;
    self.field000226 = func002323;
    self.field000224 = func002644;
    StartItem();
};


// weapon_lightning
// function begins at statement 5068, parm_start=4717
// OP_STORE_V	4717	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4717	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	154	4718
// OP_STOREP_F	228	4718	0
// OP_ADDRESS	28	180	4719
// OP_STOREP_S	4720	4719	0
// OP_ADDRESS	28	146	4721
// OP_STOREP_FNC	4568	4721	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4722
// OP_STOREP_FNC	1016	4722	0
// OP_ADDRESS	28	549	4723
// OP_STOREP_FNC	1034	4723	0
// OP_ADDRESS	28	547	4724
// OP_STOREP_FNC	1184	4724	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () weapon_lightning = 
{
    precache_model("progs/g_light.mdl");
    setmodel(self, "progs/g_light.mdl");
    self.weapon = MOVETYPE_WALK;
    self.netname = "Thunderbolt";
    self.touch = weapon_touch;
    setsize(self, '-16 -16 0', '16 16 56');
    self.field000225 = func002306;
    self.field000226 = func002324;
    self.field000224 = func002645;
    StartItem();
};


// ammo_touch
// function begins at statement 5091, parm_start=4726
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4728
// OP_NE_S	4728	1236	4729
// OP_IFNOT	4729	5	0
// OP_LOAD_S	29	129	4730
// OP_NE_S	4730	1241	4731
// OP_IFNOT	4731	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4732
// OP_EQ_S	4732	1241	4733
// OP_IFNOT	4733	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_F	29	152	4734
// OP_LE	4734	213	4735
// OP_IFNOT	4735	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	4726	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	4567	0	0
// OP_STORE_F	1	4727	0
// OP_STORE_ENT	4726	28	0
// OP_LOAD_F	28	154	4736
// OP_EQ_F	4736	214	4737
// OP_IFNOT	4737	10	0
// OP_LOAD_F	29	158	4738
// OP_GE	4738	1997	4739
// OP_IFNOT	4739	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	158	4740
// OP_LOAD_F	29	158	4741
// OP_LOAD_F	28	424	4742
// OP_ADD_F	4741	4742	4743
// OP_STOREP_F	4743	4740	0
// OP_LOAD_F	28	154	4744
// OP_EQ_F	4744	216	4745
// OP_IFNOT	4745	10	0
// OP_LOAD_F	29	159	4746
// OP_GE	4746	2044	4747
// OP_IFNOT	4747	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	159	4748
// OP_LOAD_F	29	159	4749
// OP_LOAD_F	28	424	4750
// OP_ADD_F	4749	4750	4751
// OP_STOREP_F	4751	4748	0
// OP_LOAD_F	28	154	4752
// OP_EQ_F	4752	228	4753
// OP_IFNOT	4753	10	0
// OP_LOAD_F	29	160	4754
// OP_GE	4754	1997	4755
// OP_IFNOT	4755	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	160	4756
// OP_LOAD_F	29	160	4757
// OP_LOAD_F	28	424	4758
// OP_ADD_F	4757	4758	4759
// OP_STOREP_F	4759	4756	0
// OP_LOAD_F	28	154	4760
// OP_EQ_F	4760	229	4761
// OP_IFNOT	4761	10	0
// OP_LOAD_F	29	161	4762
// OP_GE	4762	1997	4763
// OP_IFNOT	4763	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	161	4764
// OP_LOAD_F	29	161	4765
// OP_LOAD_F	28	424	4766
// OP_ADD_F	4765	4766	4767
// OP_STOREP_F	4767	4764	0
// OP_CALL0	4538	0	0
// OP_LOAD_S	29	129	4768
// OP_EQ_S	4768	1236	4769
// OP_IFNOT	4769	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4770
// OP_STORE_V	4770	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4771	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	28	105	4772
// OP_STORE_V	4772	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	759	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	4775
// OP_EQ_S	4775	1236	4776
// OP_IFNOT	4776	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_LOAD_F	29	154	4777
// OP_EQ_F	4777	4727	4778
// OP_IFNOT	4778	8	0
// OP_STORE_ENT	28	4726	0
// OP_STORE_ENT	29	28	0
// OP_ADDRESS	28	154	4779
// OP_CALL0	4567	0	0
// OP_STOREP_F	1	4779	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	4726	28	0
// OP_STORE_ENT	28	4726	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	4726	28	0
// OP_ADDRESS	28	130	4780
// OP_STOREP_S	348	4780	0
// OP_ADDRESS	28	104	4781
// OP_STOREP_F	237	4781	0
// OP_EQ_F	35	214	4782
// OP_IFNOT	4782	4	0
// OP_ADDRESS	28	150	4783
// OP_ADD_F	31	309	4784
// OP_STOREP_F	4784	4783	0
// OP_EQ_F	35	228	4785
// OP_IFNOT	4785	4	0
// OP_ADDRESS	28	150	4786
// OP_ADD_F	31	309	4787
// OP_STOREP_F	4787	4786	0
// OP_ADDRESS	28	148	4788
// OP_STOREP_FNC	4296	4788	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () ammo_touch = 
{
    local entity stemp;
    local float best;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    
    if(self.weapon == TRUE)
    {
        
        if(other.ammo_shells >= 100)
        {
            return;
        }
        
        other.ammo_shells = other.ammo_shells + self.aflag;
    }
    
    
    if(self.weapon == FL_SWIM)
    {
        
        if(other.ammo_nails >= 200)
        {
            return;
        }
        
        other.ammo_nails = other.ammo_nails + self.aflag;
    }
    
    
    if(self.weapon == MOVETYPE_WALK)
    {
        
        if(other.ammo_rockets >= 100)
        {
            return;
        }
        
        other.ammo_rockets = other.ammo_rockets + self.aflag;
    }
    
    
    if(self.weapon == MOVETYPE_STEP)
    {
        
        if(other.ammo_cells >= 100)
        {
            return;
        }
        
        other.ammo_cells = other.ammo_cells + self.aflag;
    }
    
    bound_other_ammo();
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, "weapons/lock4.wav", TRUE, ATTN_NORM);
    func002453(other, self.origin, GLOBALDEFFIVETWOTWO, globaldef000742);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    
    if(other.weapon == best)
    {
        stemp = self;
        self = other;
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        self = stemp;
    }
    
    stemp = self;
    self = other;
    W_SetCurrentAmmo();
    self = stemp;
    self.model = string_null;
    self.solid = SOLID_NOT;
    
    if(deathmatch == TRUE)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    
    if(deathmatch == MOVETYPE_WALK)
    {
        self.nextthink = time + SVC_INTERMISSION;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

float WEAPON_BIG2 = 1;

// item_shells
// function begins at statement 5228, parm_start=4791
// OP_ADDRESS	28	146	4791
// OP_STOREP_FNC	4725	4791	0
// OP_LOAD_F	28	195	4792
// OP_BITAND	4792	4789	4793
// OP_IFNOT	4793	9	0
// OP_STORE_V	4794	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4794	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4795
// OP_STOREP_F	746	4795	0
// OP_GOTO	8	0	0
// OP_STORE_V	4796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4796	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4797
// OP_STOREP_F	2323	4797	0
// OP_ADDRESS	28	154	4798
// OP_STOREP_F	214	4798	0
// OP_ADDRESS	28	180	4799
// OP_STOREP_S	4800	4799	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4801
// OP_STOREP_FNC	1012	4801	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_shells = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_shell1.bsp");
        setmodel(self, "maps/b_shell1.bsp");
        self.aflag = GLOBALDEFSEVENTWONINE;
    }
    else
    {
        precache_model("maps/b_shell0.bsp");
        setmodel(self, "maps/b_shell0.bsp");
        self.aflag = 20;
    }
    
    self.weapon = TRUE;
    self.netname = "shells";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002302;
    StartItem();
};


// item_spikes
// function begins at statement 5260, parm_start=4803
// OP_ADDRESS	28	146	4803
// OP_STOREP_FNC	4725	4803	0
// OP_LOAD_F	28	195	4804
// OP_BITAND	4804	4789	4805
// OP_IFNOT	4805	9	0
// OP_STORE_V	4806	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4806	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4807
// OP_STOREP_F	1470	4807	0
// OP_GOTO	8	0	0
// OP_STORE_V	4808	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4808	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4809
// OP_STOREP_F	305	4809	0
// OP_ADDRESS	28	154	4810
// OP_STOREP_F	216	4810	0
// OP_ADDRESS	28	180	4811
// OP_STOREP_S	4812	4811	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4813
// OP_STOREP_FNC	1011	4813	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_spikes = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_nail1.bsp");
        setmodel(self, "maps/b_nail1.bsp");
        self.aflag = 50;
    }
    else
    {
        precache_model("maps/b_nail0.bsp");
        setmodel(self, "maps/b_nail0.bsp");
        self.aflag = SVC_SIGNONNUM;
    }
    
    self.weapon = FL_SWIM;
    self.netname = "nails";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002301;
    StartItem();
};


// item_rockets
// function begins at statement 5292, parm_start=4815
// OP_ADDRESS	28	146	4815
// OP_STOREP_FNC	4725	4815	0
// OP_LOAD_F	28	195	4816
// OP_BITAND	4816	4789	4817
// OP_IFNOT	4817	9	0
// OP_STORE_V	4818	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4818	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4819
// OP_STOREP_F	235	4819	0
// OP_GOTO	8	0	0
// OP_STORE_V	4820	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4820	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4821
// OP_STOREP_F	230	4821	0
// OP_ADDRESS	28	154	4822
// OP_STOREP_F	228	4822	0
// OP_ADDRESS	28	180	4823
// OP_STOREP_S	4824	4823	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4825
// OP_STOREP_FNC	1014	4825	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_rockets = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_rock1.bsp");
        setmodel(self, "maps/b_rock1.bsp");
        self.aflag = MOVETYPE_BOUNCE;
    }
    else
    {
        precache_model("maps/b_rock0.bsp");
        setmodel(self, "maps/b_rock0.bsp");
        self.aflag = MOVETYPE_FLY;
    }
    
    self.weapon = MOVETYPE_WALK;
    self.netname = "rockets";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002304;
    StartItem();
};


// item_cells
// function begins at statement 5324, parm_start=4827
// OP_ADDRESS	28	146	4827
// OP_STOREP_FNC	4725	4827	0
// OP_LOAD_F	28	195	4828
// OP_BITAND	4828	4789	4829
// OP_IFNOT	4829	9	0
// OP_STORE_V	4830	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4830	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4831
// OP_STOREP_F	791	4831	0
// OP_GOTO	8	0	0
// OP_STORE_V	4832	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4832	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4833
// OP_STOREP_F	231	4833	0
// OP_ADDRESS	28	154	4834
// OP_STOREP_F	229	4834	0
// OP_ADDRESS	28	180	4835
// OP_STOREP_S	4836	4835	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	4837
// OP_STOREP_FNC	1013	4837	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_cells = 
{
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_batt1.bsp");
        setmodel(self, "maps/b_batt1.bsp");
        self.aflag = GLOBALDEFSEVENSEVENFOUR;
    }
    else
    {
        precache_model("maps/b_batt0.bsp");
        setmodel(self, "maps/b_batt0.bsp");
        self.aflag = MOVETYPE_TOSS;
    }
    
    self.weapon = MOVETYPE_STEP;
    self.netname = "cells";
    setsize(self, VEC_ORIGIN, '32 32 56');
    self.field000225 = func002303;
    StartItem();
};

float WEAPON_SHOTGUN = 1;
float WEAPON_ROCKET = 2;
float WEAPON_SPIKES = 4;
float WEAPON_BIG = 8;

// item_weapon
// function begins at statement 5356, parm_start=4843
// OP_ADDRESS	28	146	4843
// OP_STOREP_FNC	4725	4843	0
// OP_LOAD_F	28	195	4844
// OP_BITAND	4844	4838	4845
// OP_IFNOT	4845	23	0
// OP_LOAD_F	28	195	4846
// OP_BITAND	4846	4841	4847
// OP_IFNOT	4847	9	0
// OP_STORE_V	4794	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4794	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4848
// OP_STOREP_F	746	4848	0
// OP_GOTO	8	0	0
// OP_STORE_V	4796	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4796	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4849
// OP_STOREP_F	2323	4849	0
// OP_ADDRESS	28	154	4850
// OP_STOREP_F	214	4850	0
// OP_ADDRESS	28	180	4851
// OP_STOREP_S	4800	4851	0
// OP_LOAD_F	28	195	4852
// OP_BITAND	4852	4840	4853
// OP_IFNOT	4853	23	0
// OP_LOAD_F	28	195	4854
// OP_BITAND	4854	4841	4855
// OP_IFNOT	4855	9	0
// OP_STORE_V	4806	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4806	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4856
// OP_STOREP_F	746	4856	0
// OP_GOTO	8	0	0
// OP_STORE_V	4808	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4808	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4857
// OP_STOREP_F	2323	4857	0
// OP_ADDRESS	28	154	4858
// OP_STOREP_F	216	4858	0
// OP_ADDRESS	28	180	4859
// OP_STOREP_S	4860	4859	0
// OP_LOAD_F	28	195	4861
// OP_BITAND	4861	4839	4862
// OP_IFNOT	4862	23	0
// OP_LOAD_F	28	195	4863
// OP_BITAND	4863	4841	4864
// OP_IFNOT	4864	9	0
// OP_STORE_V	4818	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4818	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4865
// OP_STOREP_F	235	4865	0
// OP_GOTO	8	0	0
// OP_STORE_V	4820	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4820	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	424	4866
// OP_STOREP_F	230	4866	0
// OP_ADDRESS	28	154	4867
// OP_STOREP_F	228	4867	0
// OP_ADDRESS	28	180	4868
// OP_STOREP_S	4824	4868	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	4387	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_weapon = 
{
    self.touch = ammo_touch;
    
    if(self.spawnflags & WEAPON_SHOTGUN)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_shell1.bsp");
            setmodel(self, "maps/b_shell1.bsp");
            self.aflag = GLOBALDEFSEVENTWONINE;
        }
        else
        {
            precache_model("maps/b_shell0.bsp");
            setmodel(self, "maps/b_shell0.bsp");
            self.aflag = 20;
        }
        
        self.weapon = TRUE;
        self.netname = "shells";
    }
    
    
    if(self.spawnflags & WEAPON_SPIKES)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_nail1.bsp");
            setmodel(self, "maps/b_nail1.bsp");
            self.aflag = GLOBALDEFSEVENTWONINE;
        }
        else
        {
            precache_model("maps/b_nail0.bsp");
            setmodel(self, "maps/b_nail0.bsp");
            self.aflag = 20;
        }
        
        self.weapon = FL_SWIM;
        self.netname = "spikes";
    }
    
    
    if(self.spawnflags & WEAPON_ROCKET)
    {
        if(self.spawnflags & WEAPON_BIG)
        {
            precache_model("maps/b_rock1.bsp");
            setmodel(self, "maps/b_rock1.bsp");
            self.aflag = MOVETYPE_BOUNCE;
        }
        else
        {
            precache_model("maps/b_rock0.bsp");
            setmodel(self, "maps/b_rock0.bsp");
            self.aflag = MOVETYPE_FLY;
        }
        
        self.weapon = MOVETYPE_WALK;
        self.netname = "rockets";
    }
    
    setsize(self, VEC_ORIGIN, '32 32 56');
    StartItem();
};


// key_touch
// function begins at statement 5439, parm_start=4870
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4872
// OP_NE_S	4872	1236	4873
// OP_IFNOT	4873	5	0
// OP_LOAD_S	29	129	4874
// OP_NE_S	4874	1241	4875
// OP_IFNOT	4875	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4876
// OP_LE	4876	213	4877
// OP_IFNOT	4877	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	4878
// OP_LOAD_F	28	162	4879
// OP_BITAND	4878	4879	4880
// OP_IFNOT	4880	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4881
// OP_EQ_S	4881	1236	4882
// OP_IFNOT	4882	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4883
// OP_STORE_V	4883	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_LOAD_S	28	208	4884
// OP_STORE_V	4884	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	4885
// OP_EQ_S	4885	1236	4886
// OP_IFNOT	4886	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	29	162	4887
// OP_LOAD_F	29	162	4888
// OP_LOAD_F	28	162	4889
// OP_BITOR	4888	4889	4890
// OP_STOREP_F	4890	4887	0
// OP_NOT_F	36	0	4891
// OP_IFNOT	4891	5	0
// OP_ADDRESS	28	104	4892
// OP_STOREP_F	237	4892	0
// OP_ADDRESS	28	130	4893
// OP_STOREP_S	348	4893	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () key_touch = 
{
    local entity stemp;
    local float best;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.items & self.items)
    {
        return;
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    other.items = other.items | self.items;
    
    if(!coop)
    {
        self.solid = SOLID_NOT;
        self.model = string_null;
    }
    
    activator = other;
    SUB_UseTargets();
};


// key_setsounds
// function begins at statement 5497, parm_start=4895
// OP_LOAD_F	30	357	4895
// OP_EQ_F	4895	213	4896
// OP_IFNOT	4896	6	0
// OP_STORE_V	4897	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	4898
// OP_STOREP_S	4897	4898	0
// OP_GOTO	16	0	0
// OP_LOAD_F	30	357	4899
// OP_EQ_F	4899	214	4900
// OP_IFNOT	4900	6	0
// OP_STORE_V	4901	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	4902
// OP_STOREP_S	4901	4902	0
// OP_GOTO	8	0	0
// OP_LOAD_F	30	357	4903
// OP_EQ_F	4903	216	4904
// OP_IFNOT	4904	5	0
// OP_STORE_V	4905	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	208	4906
// OP_STOREP_S	4905	4906	0
// OP_DONE	0	0	0
void () key_setsounds = 
{
    if(world.worldtype == FALSE)
    {
        precache_sound("misc/medkey.wav");
        self.noise = "misc/medkey.wav";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_sound("misc/runekey.wav");
            self.noise = "misc/runekey.wav";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
            {
                precache_sound2("misc/basekey.wav");
                self.noise = "misc/basekey.wav";
            }
            
        }
        
    }
    
};


// item_key1
// function begins at statement 5521, parm_start=4908
// OP_LOAD_F	30	357	4908
// OP_EQ_F	4908	213	4909
// OP_IFNOT	4909	9	0
// OP_STORE_V	4910	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4910	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4911
// OP_STOREP_S	4912	4911	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	357	4913
// OP_EQ_F	4913	214	4914
// OP_IFNOT	4914	9	0
// OP_STORE_V	4915	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4915	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4916
// OP_STOREP_S	4917	4916	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	357	4918
// OP_EQ_F	4918	216	4919
// OP_IFNOT	4919	8	0
// OP_STORE_V	4920	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4920	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4921
// OP_STOREP_S	4922	4921	0
// OP_CALL0	4894	0	0
// OP_ADDRESS	28	146	4923
// OP_STOREP_FNC	4869	4923	0
// OP_ADDRESS	28	162	4924
// OP_STOREP_F	270	4924	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_key1 = 
{
    if(world.worldtype == FALSE)
    {
        precache_model("progs/w_s_key.mdl");
        setmodel(self, "progs/w_s_key.mdl");
        self.netname = "silver key";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_model("progs/m_s_key.mdl");
            setmodel(self, "progs/m_s_key.mdl");
            self.netname = "silver runekey";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
            {
                precache_model2("progs/b_s_key.mdl");
                setmodel(self, "progs/b_s_key.mdl");
                self.netname = "silver keycard";
            }
            
        }
        
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY1;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};


// item_key2
// function begins at statement 5564, parm_start=4926
// OP_LOAD_F	30	357	4926
// OP_EQ_F	4926	213	4927
// OP_IFNOT	4927	9	0
// OP_STORE_V	4928	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4928	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4929
// OP_STOREP_S	4930	4929	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	357	4931
// OP_EQ_F	4931	214	4932
// OP_IFNOT	4932	9	0
// OP_STORE_V	4933	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4933	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4934
// OP_STOREP_S	4935	4934	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	357	4936
// OP_EQ_F	4936	216	4937
// OP_IFNOT	4937	8	0
// OP_STORE_V	4938	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4938	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	4939
// OP_STOREP_S	4940	4939	0
// OP_CALL0	4894	0	0
// OP_ADDRESS	28	146	4941
// OP_STOREP_FNC	4869	4941	0
// OP_ADDRESS	28	162	4942
// OP_STOREP_F	271	4942	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_key2 = 
{
    if(world.worldtype == FALSE)
    {
        precache_model("progs/w_g_key.mdl");
        setmodel(self, "progs/w_g_key.mdl");
        self.netname = "gold key";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_model("progs/m_g_key.mdl");
            setmodel(self, "progs/m_g_key.mdl");
            self.netname = "gold runekey";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
            {
                precache_model2("progs/b_g_key.mdl");
                setmodel(self, "progs/b_g_key.mdl");
                self.netname = "gold keycard";
            }
            
        }
        
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY2;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};


// sigil_touch
// function begins at statement 5607, parm_start=4944
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4946
// OP_NE_S	4946	1236	4947
// OP_IFNOT	4947	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4948
// OP_LE	4948	213	4949
// OP_IFNOT	4949	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4950	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_LOAD_S	28	208	4951
// OP_STORE_V	4951	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	28	104	4952
// OP_STOREP_F	237	4952	0
// OP_ADDRESS	28	130	4953
// OP_STOREP_S	348	4953	0
// OP_LOAD_F	28	195	4954
// OP_BITAND	4954	765	4955
// OP_BITOR	38	4955	4956
// OP_STORE_F	4956	38	0
// OP_ADDRESS	28	129	4957
// OP_STOREP_S	3002	4957	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () sigil_touch = 
{
    local entity stemp;
    local float best;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    centerprint(other, "You got the rune!");
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    self.model = string_null;
    serverflags = serverflags | (self.spawnflags & GLOBALDEFSEVENFOUREIGHT);
    self.classname = "";
    activator = other;
    SUB_UseTargets();
};


// item_sigil
// function begins at statement 5643, parm_start=4959
// OP_LOAD_F	28	195	4959
// OP_NOT_F	4959	0	4960
// OP_IFNOT	4960	3	0
// OP_STORE_V	4961	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	4901	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	4962
// OP_STOREP_S	4901	4962	0
// OP_LOAD_F	28	195	4963
// OP_BITAND	4963	214	4964
// OP_IFNOT	4964	6	0
// OP_STORE_V	4965	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4965	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	195	4966
// OP_BITAND	4966	216	4967
// OP_IFNOT	4967	6	0
// OP_STORE_V	4968	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4968	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	195	4969
// OP_BITAND	4969	229	4970
// OP_IFNOT	4970	6	0
// OP_STORE_V	4971	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4971	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	195	4972
// OP_BITAND	4972	217	4973
// OP_IFNOT	4973	6	0
// OP_STORE_V	4974	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4974	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	146	4975
// OP_STOREP_FNC	4943	4975	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_sigil = 
{
    
    if(!self.spawnflags)
    {
        objerror("no spawnflags");
    }
    
    precache_sound("misc/runekey.wav");
    self.noise = "misc/runekey.wav";
    
    if(self.spawnflags & TRUE)
    {
        precache_model("progs/end1.mdl");
        setmodel(self, "progs/end1.mdl");
    }
    
    
    if(self.spawnflags & FL_SWIM)
    {
        precache_model2("progs/end2.mdl");
        setmodel(self, "progs/end2.mdl");
    }
    
    
    if(self.spawnflags & MOVETYPE_STEP)
    {
        precache_model2("progs/end3.mdl");
        setmodel(self, "progs/end3.mdl");
    }
    
    
    if(self.spawnflags & FL_CLIENT)
    {
        precache_model2("progs/end4.mdl");
        setmodel(self, "progs/end4.mdl");
    }
    
    self.touch = sigil_touch;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    StartItem();
};


// powerup_touch
// function begins at statement 5692, parm_start=4977
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4979
// OP_NE_S	4979	1236	4980
// OP_IFNOT	4980	5	0
// OP_LOAD_S	29	129	4981
// OP_NE_S	4981	1241	4982
// OP_IFNOT	4982	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4983
// OP_LE	4983	213	4984
// OP_IFNOT	4984	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4985
// OP_BITAND	4985	703	4986
// OP_IFNOT	4986	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4987
// OP_EQ_S	4987	1241	4988
// OP_IFNOT	4988	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_S	29	129	4989
// OP_EQ_S	4989	1236	4990
// OP_IFNOT	4990	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4991
// OP_STORE_V	4991	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_IFNOT	35	20	0
// OP_ADDRESS	28	399	4992
// OP_LOAD_S	28	130	4993
// OP_STOREP_S	4993	4992	0
// OP_LOAD_S	28	129	4994
// OP_EQ_S	4994	4995	4996
// OP_LOAD_S	28	129	4997
// OP_EQ_S	4997	4998	4999
// OP_OR	4996	4999	5000
// OP_IFNOT	5000	6	0
// OP_ADDRESS	28	150	5001
// OP_MUL_F	2019	230	5002
// OP_ADD_F	31	5002	5003
// OP_STOREP_F	5003	5001	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	5004
// OP_ADD_F	31	2019	5005
// OP_STOREP_F	5005	5004	0
// OP_ADDRESS	28	148	5006
// OP_STOREP_FNC	4296	5006	0
// OP_STORE_V	29	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	5007
// OP_STORE_V	5007	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	5008
// OP_EQ_S	5008	1236	5009
// OP_IFNOT	5009	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	28	104	5010
// OP_STOREP_F	237	5010	0
// OP_ADDRESS	29	162	5011
// OP_LOAD_F	29	162	5012
// OP_LOAD_F	28	162	5013
// OP_BITOR	5012	5013	5014
// OP_STOREP_F	5014	5011	0
// OP_ADDRESS	28	130	5015
// OP_STOREP_S	348	5015	0
// OP_LOAD_S	28	129	5016
// OP_EQ_S	5016	5017	5018
// OP_IFNOT	5018	6	0
// OP_ADDRESS	29	390	5019
// OP_STOREP_F	214	5019	0
// OP_ADDRESS	29	383	5020
// OP_ADD_F	31	309	5021
// OP_STOREP_F	5021	5020	0
// OP_LOAD_S	28	129	5022
// OP_EQ_S	5022	4995	5023
// OP_IFNOT	5023	6	0
// OP_ADDRESS	29	384	5024
// OP_STOREP_F	214	5024	0
// OP_ADDRESS	29	380	5025
// OP_ADD_F	31	309	5026
// OP_STOREP_F	5026	5025	0
// OP_LOAD_S	28	129	5027
// OP_EQ_S	5027	4998	5028
// OP_IFNOT	5028	6	0
// OP_ADDRESS	29	386	5029
// OP_STOREP_F	214	5029	0
// OP_ADDRESS	29	381	5030
// OP_ADD_F	31	309	5031
// OP_STOREP_F	5031	5030	0
// OP_LOAD_S	28	129	5032
// OP_EQ_S	5032	5033	5034
// OP_IFNOT	5034	6	0
// OP_ADDRESS	29	388	5035
// OP_STOREP_F	214	5035	0
// OP_ADDRESS	29	382	5036
// OP_ADD_F	31	309	5037
// OP_STOREP_F	5037	5036	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () powerup_touch = 
{
    local entity stemp;
    local float best;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    
    if(other.classname == "player")
    {
        sprint(other, "You got the ");
        sprint(other, self.netname);
        sprint(other, "\n");
    }
    
    
    if(deathmatch)
    {
        self.mdl = self.model;
        if((self.classname == "item_artifact_invulnerability") || (self.classname == "item_artifact_invisibility"))
        {
            self.nextthink = time + (60 * MOVETYPE_FLY);
        }
        else
        {
            self.nextthink = time + 60;
        }
        
        self.think = SUB_regen;
    }
    
    sound(other, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    self.solid = SOLID_NOT;
    other.items = other.items | self.items;
    self.model = string_null;
    
    if(self.classname == "item_artifact_envirosuit")
    {
        other.rad_time = TRUE;
        other.radsuit_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invulnerability")
    {
        other.invincible_time = TRUE;
        other.invincible_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invisibility")
    {
        other.invisible_time = TRUE;
        other.invisible_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_super_damage")
    {
        other.super_time = TRUE;
        other.super_damage_finished = time + SVC_INTERMISSION;
    }
    
    activator = other;
    SUB_UseTargets();
};


// item_artifact_invulnerability
// function begins at statement 5807, parm_start=5039
// OP_ADDRESS	28	146	5039
// OP_STOREP_FNC	4976	5039	0
// OP_STORE_V	5040	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5041	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5042	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	4183	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5043
// OP_STOREP_S	5041	5043	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5040	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5044
// OP_STOREP_S	5045	5044	0
// OP_ADDRESS	28	162	5046
// OP_STOREP_F	273	5046	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5047
// OP_STOREP_FNC	1027	5047	0
// OP_ADDRESS	28	549	5048
// OP_STOREP_FNC	1039	5048	0
// OP_ADDRESS	28	547	5049
// OP_STOREP_FNC	1186	5049	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_invulnerability = 
{
    self.touch = powerup_touch;
    precache_model("progs/invulner.mdl");
    precache_sound("items/protect.wav");
    precache_sound("items/protect2.wav");
    precache_sound("items/protect3.wav");
    self.noise = "items/protect.wav";
    setmodel(self, "progs/invulner.mdl");
    self.netname = "Pentagram of Protection";
    self.items = IT_INVULNERABILITY;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002317;
    self.field000226 = func002329;
    self.field000224 = func002647;
    StartItem();
};


// item_artifact_envirosuit
// function begins at statement 5838, parm_start=5051
// OP_ADDRESS	28	146	5051
// OP_STOREP_FNC	4976	5051	0
// OP_STORE_V	5052	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5053	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5054	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5055
// OP_STOREP_S	5053	5055	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5052	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5056
// OP_STOREP_S	5057	5056	0
// OP_ADDRESS	28	162	5058
// OP_STOREP_F	274	5058	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5059
// OP_STOREP_FNC	1024	5059	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_envirosuit = 
{
    self.touch = powerup_touch;
    precache_model("progs/suit.mdl");
    precache_sound("items/suit.wav");
    precache_sound("items/suit2.wav");
    self.noise = "items/suit.wav";
    setmodel(self, "progs/suit.mdl");
    self.netname = "Biosuit";
    self.items = IT_SUIT;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002314;
    StartItem();
};


// item_artifact_invisibility
// function begins at statement 5863, parm_start=5061
// OP_ADDRESS	28	146	5061
// OP_STOREP_FNC	4976	5061	0
// OP_STORE_V	5062	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5063	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5064	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5065	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5066
// OP_STOREP_S	5063	5066	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5062	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5067
// OP_STOREP_S	5068	5067	0
// OP_ADDRESS	28	162	5069
// OP_STOREP_F	272	5069	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5070
// OP_STOREP_FNC	1025	5070	0
// OP_ADDRESS	28	549	5071
// OP_STOREP_FNC	1037	5071	0
// OP_ADDRESS	28	547	5072
// OP_STOREP_FNC	1186	5072	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_invisibility = 
{
    self.touch = powerup_touch;
    precache_model("progs/invisibl.mdl");
    precache_sound("items/inv1.wav");
    precache_sound("items/inv2.wav");
    precache_sound("items/inv3.wav");
    self.noise = "items/inv1.wav";
    setmodel(self, "progs/invisibl.mdl");
    self.netname = "Ring of Shadows";
    self.items = IT_INVISIBILITY;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002315;
    self.field000226 = func002327;
    self.field000224 = func002647;
    StartItem();
};


// item_artifact_super_damage
// function begins at statement 5894, parm_start=5074
// OP_ADDRESS	28	146	5074
// OP_STOREP_FNC	4976	5074	0
// OP_STORE_V	5075	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5076	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5077	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5078	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	5079
// OP_STOREP_S	5076	5079	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5075	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	180	5080
// OP_STOREP_S	5081	5080	0
// OP_ADDRESS	28	162	5082
// OP_STOREP_F	275	5082	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	548	5083
// OP_STOREP_FNC	1026	5083	0
// OP_ADDRESS	28	549	5084
// OP_STOREP_FNC	1038	5084	0
// OP_ADDRESS	28	547	5085
// OP_STOREP_FNC	1186	5085	0
// OP_CALL0	4328	0	0
// OP_DONE	0	0	0
void () item_artifact_super_damage = 
{
    self.touch = powerup_touch;
    precache_model("progs/quaddama.mdl");
    precache_sound("items/damage.wav");
    precache_sound("items/damage2.wav");
    precache_sound("items/damage3.wav");
    self.noise = "items/damage.wav";
    setmodel(self, "progs/quaddama.mdl");
    self.netname = "Quad Damage";
    self.items = IT_QUAD;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.field000225 = func002316;
    self.field000226 = func002328;
    self.field000224 = func002647;
    StartItem();
};


// BackpackTouch
// function begins at statement 5925, parm_start=5087
// OP_BITAND	821	767	5093
// OP_NOT_F	5093	0	5094
// OP_IFNOT	5094	3	0
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	5095
// OP_NE_S	5095	1236	5096
// OP_IFNOT	5096	5	0
// OP_LOAD_S	29	129	5097
// OP_NE_S	5097	1241	5098
// OP_IFNOT	5098	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	5099
// OP_EQ_S	5099	1241	5100
// OP_IFNOT	5100	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_F	29	152	5101
// OP_LE	5101	213	5102
// OP_IFNOT	5102	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	5092	0
// OP_LOAD_S	29	129	5103
// OP_EQ_S	5103	1236	5104
// OP_IFNOT	5104	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5105	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28	162	5106
// OP_IFNOT	5106	17	0
// OP_LOAD_F	29	162	5107
// OP_LOAD_F	28	162	5108
// OP_BITAND	5107	5108	5109
// OP_EQ_F	5109	213	5110
// OP_IFNOT	5110	12	0
// OP_STORE_F	214	5092	0
// OP_LOAD_S	29	129	5111
// OP_EQ_S	5111	1236	5112
// OP_IFNOT	5112	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5113	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	5114
// OP_STORE_V	5114	7	0
// OP_CALL2	928	0	0
// OP_STORE_ENT	28	5091	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	4567	0	0
// OP_STORE_F	1	5088	0
// OP_STORE_ENT	5091	28	0
// OP_EQ_F	35	229	5115
// OP_IFNOT	5115	28	0
// OP_ADDRESS	29	152	5116
// OP_LOAD_F	29	152	5117
// OP_ADD_F	5117	235	5118
// OP_STOREP_F	5118	5116	0
// OP_LOAD_F	29	152	5119
// OP_GE	5119	540	5120
// OP_IFNOT	5120	21	0
// OP_ADDRESS	29	152	5121
// OP_STOREP_F	1997	5121	0
// OP_ADDRESS	29	388	5122
// OP_STOREP_F	214	5122	0
// OP_ADDRESS	29	382	5123
// OP_ADD_F	31	309	5124
// OP_STOREP_F	5124	5123	0
// OP_ADDRESS	29	162	5125
// OP_LOAD_F	29	162	5126
// OP_BITOR	5126	275	5127
// OP_STOREP_F	5127	5125	0
// OP_ADDRESS	29	384	5128
// OP_STOREP_F	214	5128	0
// OP_ADDRESS	29	380	5129
// OP_ADD_F	31	309	5130
// OP_STOREP_F	5130	5129	0
// OP_ADDRESS	29	162	5131
// OP_LOAD_F	29	162	5132
// OP_BITOR	5132	273	5133
// OP_STOREP_F	5133	5131	0
// OP_ADDRESS	29	158	5134
// OP_LOAD_F	29	158	5135
// OP_LOAD_F	28	158	5136
// OP_ADD_F	5135	5136	5137
// OP_STOREP_F	5137	5134	0
// OP_ADDRESS	29	159	5138
// OP_LOAD_F	29	159	5139
// OP_LOAD_F	28	159	5140
// OP_ADD_F	5139	5140	5141
// OP_STOREP_F	5141	5138	0
// OP_ADDRESS	29	160	5142
// OP_LOAD_F	29	160	5143
// OP_LOAD_F	28	160	5144
// OP_ADD_F	5143	5144	5145
// OP_STOREP_F	5145	5142	0
// OP_ADDRESS	29	161	5146
// OP_LOAD_F	29	161	5147
// OP_LOAD_F	28	161	5148
// OP_ADD_F	5147	5148	5149
// OP_STOREP_F	5149	5146	0
// OP_LOAD_F	28	162	5150
// OP_STORE_F	5150	5090	0
// OP_NOT_F	5090	0	5151
// OP_IFNOT	5151	3	0
// OP_LOAD_F	29	154	5152
// OP_STORE_F	5152	5090	0
// OP_LOAD_F	29	162	5153
// OP_STORE_F	5153	5089	0
// OP_ADDRESS	29	162	5154
// OP_LOAD_F	29	162	5155
// OP_LOAD_F	28	162	5156
// OP_BITOR	5155	5156	5157
// OP_STOREP_F	5157	5154	0
// OP_CALL0	4538	0	0
// OP_LOAD_S	29	129	5158
// OP_EQ_S	5158	1236	5159
// OP_IFNOT	5159	72	0
// OP_LOAD_F	28	158	5160
// OP_IFNOT	5160	16	0
// OP_IFNOT	5092	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5161	7	0
// OP_CALL2	928	0	0
// OP_STORE_F	214	5092	0
// OP_LOAD_F	28	158	5162
// OP_STORE_V	5162	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	5087	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5087	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5163	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28	159	5164
// OP_IFNOT	5164	16	0
// OP_IFNOT	5092	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5161	7	0
// OP_CALL2	928	0	0
// OP_STORE_F	214	5092	0
// OP_LOAD_F	28	159	5165
// OP_STORE_V	5165	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	5087	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5087	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5166	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28	160	5167
// OP_IFNOT	5167	16	0
// OP_IFNOT	5092	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5161	7	0
// OP_CALL2	928	0	0
// OP_STORE_F	214	5092	0
// OP_LOAD_F	28	160	5168
// OP_STORE_V	5168	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	5087	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5087	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5169	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28	161	5170
// OP_IFNOT	5170	16	0
// OP_IFNOT	5092	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5161	7	0
// OP_CALL2	928	0	0
// OP_STORE_F	214	5092	0
// OP_LOAD_F	28	161	5171
// OP_STORE_V	5171	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	5087	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5087	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	5172	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4771	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	5173
// OP_EQ_S	5173	1236	5174
// OP_IFNOT	5174	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	5175
// OP_IFNOT	5175	4	0
// OP_ADDRESS	28	154	5176
// OP_STOREP_F	5090	5176	0
// OP_GOTO	4	0	0
// OP_STORE_V	5089	4	0
// OP_STORE_V	5090	7	0
// OP_CALL2	4559	0	0
// OP_CALL0	4295	0	0
// OP_DONE	0	0	0
void () BackpackTouch = 
{
    local string s;
    local float best;
    local float old;
    local float new;
    local entity stemp;
    local float acount;
    
    if(!(globaldef000804 & globaldef000750))
    {
        
        if(globaldef000799)
        {
            return;
        }
        
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    acount = FALSE;
    
    if(other.classname == "player")
    {
        sprint(other, "You get ");
    }
    
    
    if(self.items)
    {
        
        if((other.items & self.items) == FALSE)
        {
            acount = TRUE;
            
            if(other.classname == "player")
            {
                sprint(other, "the ");
                sprint(other, self.netname);
            }
            
        }
        
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    
    if(deathmatch == MOVETYPE_STEP)
    {
        other.health = other.health + MOVETYPE_BOUNCE;
        
        if(other.health >= GLOBALDEFFIVETWOTHREE)
        {
            other.health = 100;
            other.super_time = TRUE;
            other.super_damage_finished = time + SVC_INTERMISSION;
            other.items = other.items | IT_QUAD;
            other.invincible_time = TRUE;
            other.invincible_finished = time + SVC_INTERMISSION;
            other.items = other.items | IT_INVULNERABILITY;
        }
        
    }
    
    other.ammo_shells = other.ammo_shells + self.ammo_shells;
    other.ammo_nails = other.ammo_nails + self.ammo_nails;
    other.ammo_rockets = other.ammo_rockets + self.ammo_rockets;
    other.ammo_cells = other.ammo_cells + self.ammo_cells;
    new = self.items;
    
    if(!new)
    {
        new = other.weapon;
    }
    
    old = other.items;
    other.items = other.items | self.items;
    bound_other_ammo();
    
    if(other.classname == "player")
    {
        
        if(self.ammo_shells)
        {
            
            if(acount)
            {
                sprint(other, ", ");
            }
            
            acount = TRUE;
            s = ftos(self.ammo_shells);
            sprint(other, s);
            sprint(other, " shells");
        }
        
        
        if(self.ammo_nails)
        {
            
            if(acount)
            {
                sprint(other, ", ");
            }
            
            acount = TRUE;
            s = ftos(self.ammo_nails);
            sprint(other, s);
            sprint(other, " nails");
        }
        
        
        if(self.ammo_rockets)
        {
            
            if(acount)
            {
                sprint(other, ", ");
            }
            
            acount = TRUE;
            s = ftos(self.ammo_rockets);
            sprint(other, s);
            sprint(other, " rockets");
        }
        
        
        if(self.ammo_cells)
        {
            
            if(acount)
            {
                sprint(other, ", ");
            }
            
            acount = TRUE;
            s = ftos(self.ammo_cells);
            sprint(other, s);
            sprint(other, " cells");
        }
        
        sprint(other, "\n");
    }
    
    sound(other, CHAN_ITEM, "weapons/lock4.wav", TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        stuffcmd(other, "bf\n");
    }
    
    remove(self);
    self = other;
    if(!deathmatch)
    {
        self.weapon = new;
    }
    else
    {
        Deathmatch_Weapon(old, new);
    }
    
    W_SetCurrentAmmo();
};


// DropBackpack
// function begins at statement 6139, parm_start=5178
// OP_LOAD_F	28	158	5179
// OP_LOAD_F	28	159	5180
// OP_ADD_F	5179	5180	5181
// OP_LOAD_F	28	160	5182
// OP_ADD_F	5181	5182	5183
// OP_LOAD_F	28	161	5184
// OP_ADD_F	5183	5184	5185
// OP_NOT_F	5185	0	5186
// OP_IFNOT	5186	2	0
// OP_RETURN	0	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5178	0
// OP_ADDRESS	5178	105	5187
// OP_LOAD_V	28	105	5190
// OP_SUB_V	5190	5193	5196
// OP_STOREP_V	5196	5187	0
// OP_ADDRESS	5178	162	5199
// OP_LOAD_F	28	154	5200
// OP_STOREP_F	5200	5199	0
// OP_LOAD_F	5178	162	5201
// OP_EQ_F	5201	253	5202
// OP_IFNOT	5202	4	0
// OP_ADDRESS	5178	180	5203
// OP_STOREP_S	5204	5203	0
// OP_GOTO	45	0	0
// OP_LOAD_F	5178	162	5205
// OP_EQ_F	5205	254	5206
// OP_IFNOT	5206	4	0
// OP_ADDRESS	5178	180	5207
// OP_STOREP_S	5208	5207	0
// OP_GOTO	39	0	0
// OP_LOAD_F	5178	162	5209
// OP_EQ_F	5209	255	5210
// OP_IFNOT	5210	4	0
// OP_ADDRESS	5178	180	5211
// OP_STOREP_S	4675	5211	0
// OP_GOTO	33	0	0
// OP_LOAD_F	5178	162	5212
// OP_EQ_F	5212	256	5213
// OP_IFNOT	5213	4	0
// OP_ADDRESS	5178	180	5214
// OP_STOREP_S	5215	5214	0
// OP_GOTO	27	0	0
// OP_LOAD_F	5178	162	5216
// OP_EQ_F	5216	257	5217
// OP_IFNOT	5217	4	0
// OP_ADDRESS	5178	180	5218
// OP_STOREP_S	4693	5218	0
// OP_GOTO	21	0	0
// OP_LOAD_F	5178	162	5219
// OP_EQ_F	5219	258	5220
// OP_IFNOT	5220	4	0
// OP_ADDRESS	5178	180	5221
// OP_STOREP_S	4702	5221	0
// OP_GOTO	15	0	0
// OP_LOAD_F	5178	162	5222
// OP_EQ_F	5222	259	5223
// OP_IFNOT	5223	4	0
// OP_ADDRESS	5178	180	5224
// OP_STOREP_S	4711	5224	0
// OP_GOTO	9	0	0
// OP_LOAD_F	5178	162	5225
// OP_EQ_F	5225	260	5226
// OP_IFNOT	5226	4	0
// OP_ADDRESS	5178	180	5227
// OP_STOREP_S	4720	5227	0
// OP_GOTO	3	0	0
// OP_ADDRESS	5178	180	5228
// OP_STOREP_S	3002	5228	0
// OP_ADDRESS	5178	158	5229
// OP_LOAD_F	28	158	5230
// OP_STOREP_F	5230	5229	0
// OP_ADDRESS	5178	159	5231
// OP_LOAD_F	28	159	5232
// OP_STOREP_F	5232	5231	0
// OP_ADDRESS	5178	160	5233
// OP_LOAD_F	28	160	5234
// OP_STOREP_F	5234	5233	0
// OP_ADDRESS	5178	161	5235
// OP_LOAD_F	28	161	5236
// OP_STOREP_F	5236	5235	0
// OP_ADDRESS	5178	116	5237
// OP_STOREP_F	540	5237	0
// OP_ADDRESS	5178	114	5238
// OP_CALL0	457	0	0
// OP_MUL_F	1	2044	5239
// OP_ADD_F	1867	5239	5240
// OP_STOREP_F	5240	5238	0
// OP_ADDRESS	5178	115	5241
// OP_CALL0	457	0	0
// OP_MUL_F	1	2044	5242
// OP_ADD_F	1867	5242	5243
// OP_STOREP_F	5243	5241	0
// OP_ADDRESS	5178	182	5244
// OP_STOREP_F	222	5244	0
// OP_ADDRESS	5178	104	5245
// OP_STOREP_F	238	5245	0
// OP_ADDRESS	5178	103	5246
// OP_STOREP_F	231	5246	0
// OP_STORE_V	5178	4	0
// OP_STORE_V	5247	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5178	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	5178	146	5248
// OP_STOREP_FNC	5086	5248	0
// OP_ADDRESS	5178	548	5249
// OP_STOREP_FNC	1007	5249	0
// OP_ADDRESS	5178	150	5250
// OP_ADD_F	31	3584	5251
// OP_STOREP_F	5251	5250	0
// OP_ADDRESS	5178	148	5252
// OP_STOREP_FNC	521	5252	0
// OP_DONE	0	0	0
void () DropBackpack = 
{
    local entity item;
    
    if(!(((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells))
    {
        return;
    }
    
    item = spawn();
    item.origin = self.origin - '0 0 24';
    item.items = self.weapon;
    if(item.items == IT_AXE)
    {
        item.netname = "Axe";
    }
    else
    {
        if(item.items == IT_SHOTGUN)
        {
            item.netname = "Shotgun";
        }
        else
        {
            if(item.items == IT_SUPER_SHOTGUN)
            {
                item.netname = "Double-barrelled Shotgun";
            }
            else
            {
                if(item.items == IT_NAILGUN)
                {
                    item.netname = "Nailgun";
                }
                else
                {
                    if(item.items == IT_SUPER_NAILGUN)
                    {
                        item.netname = "Super Nailgun";
                    }
                    else
                    {
                        if(item.items == IT_GRENADE_LAUNCHER)
                        {
                            item.netname = "Grenade Launcher";
                        }
                        else
                        {
                            if(item.items == IT_ROCKET_LAUNCHER)
                            {
                                item.netname = "Rocket Launcher";
                            }
                            else
                            {
                                if(item.items == IT_LIGHTNING)
                                {
                                    item.netname = "Thunderbolt";
                                }
                                else
                                {
                                    item.netname = "";
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    item.ammo_shells = self.ammo_shells;
    item.ammo_nails = self.ammo_nails;
    item.ammo_rockets = self.ammo_rockets;
    item.ammo_cells = self.ammo_cells;
    item.velocity_z = GLOBALDEFFIVETWOTHREE;
    item.velocity_x = -100 + (random() * 200);
    item.velocity_y = -100 + (random() * 200);
    item.flags = FL_ITEM;
    item.solid = SOLID_TRIGGER;
    item.movetype = MOVETYPE_TOSS;
    setmodel(item, "progs/backpack.mdl");
    setsize(item, '-16 -16 0', '16 16 56');
    item.touch = BackpackTouch;
    item.field000225 = func002297;
    item.nextthink = time + 120;
    item.think = SUB_Remove;
};

