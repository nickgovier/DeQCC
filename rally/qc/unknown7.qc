// SUB_regen
// function begins at statement 10068, parm_start=8354
// OP_ADDRESS	28	130	8354
// OP_LOAD_S	28	408	8355
// OP_STOREP_S	8355	8354	0
// OP_ADDRESS	28	104	8356
// OP_STOREP_F	244	8356	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	8357	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	8358
// OP_STORE_V	8358	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () SUB_regen = 
{
    self.model = self.mdl;
    self.solid = SOLID_TRIGGER;
    sound(self, CHAN_VOICE, "items/itembk2.wav", 1, ATTN_NORM);
    setorigin(self, self.origin);
};

// noclass
// function begins at statement 10084, parm_start=8362
// OP_STORE_V	8362	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	8363
// OP_STORE_V	8363	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () noclass = 
{
    dprint("noclass spawned at");
    dprint(vtos(self.origin));
    dprint("\n");
    remove(self);
};

// PlaceItem
// function begins at statement 10096, parm_start=8367
// OP_ADDRESS	28	408	8368
// OP_LOAD_S	28	130	8369
// OP_STOREP_S	8369	8368	0
// OP_ADDRESS	28	182	8370
// OP_STOREP_F	227	8370	0
// OP_LOAD_S	28	129	8371
// OP_NE_S	8371	6023	8372
// OP_IFNOT	8372	3	0
// OP_ADDRESS	28	104	8373
// OP_STOREP_F	244	8373	0
// OP_ADDRESS	28	103	8374
// OP_STOREP_F	237	8374	0
// OP_ADDRESS	28	113	8375
// OP_STOREP_V	926	8375	0
// OP_ADDRESS	28	108	8378
// OP_LOAD_F	28	108	8379
// OP_ADD_F	8379	829	8380
// OP_STOREP_F	8380	8378	0
// OP_LOAD_F	28	108	8381
// OP_STORE_F	8381	8367	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	8382
// OP_IFNOT	8382	13	0
// OP_STORE_V	8383	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	8384
// OP_STORE_V	8384	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PlaceItem = 
{
    local float oldz;
    self.mdl = self.model;
    self.flags = FL_ITEM;
    
    if(self.classname != "rally_flag")
    {
        self.solid = SOLID_TRIGGER;
    }
    
    self.movetype = MOVETYPE_TOSS;
    self.velocity = '0.000 0.000 0.000';
    self.origin_z = self.origin_z + 6;
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
// function begins at statement 10132, parm_start=8388
// OP_ADDRESS	28	150	8388
// OP_ADD_F	31	1152	8389
// OP_STOREP_F	8389	8388	0
// OP_ADDRESS	28	148	8390
// OP_STOREP_FNC	8366	8390	0
// OP_DONE	0	0	0
void () StartItem = 
{
    self.nextthink = time + 0.2;
    self.think = PlaceItem;
};

// T_Heal
// function begins at statement 10138, parm_start=8391
// OP_LOAD_F	8391	152	8394
// OP_LE	8394	817	8395
// OP_IFNOT	8395	2	0
// OP_RETURN	817	0	0
// OP_NOT_F	8393	0	8396
// OP_LOAD_F	8391	152	8397
// OP_LOAD_F	29	185	8398
// OP_GE	8397	8398	8399
// OP_AND	8396	8399	8400
// OP_IFNOT	8400	2	0
// OP_RETURN	817	0	0
// OP_STORE_V	8392	4	0
// OP_CALL1	496	0	0
// OP_STORE_F	1	8392	0
// OP_ADDRESS	8391	152	8401
// OP_LOAD_F	8391	152	8402
// OP_ADD_F	8402	8392	8403
// OP_STOREP_F	8403	8401	0
// OP_NOT_F	8393	0	8404
// OP_LOAD_F	8391	152	8405
// OP_LOAD_F	29	185	8406
// OP_GE	8405	8406	8407
// OP_AND	8404	8407	8408
// OP_IFNOT	8408	4	0
// OP_ADDRESS	8391	152	8409
// OP_LOAD_F	29	185	8410
// OP_STOREP_F	8410	8409	0
// OP_LOAD_F	8391	152	8411
// OP_GT	8411	1135	8412
// OP_IFNOT	8412	3	0
// OP_ADDRESS	8391	152	8413
// OP_STOREP_F	1135	8413	0
// OP_RETURN	819	0	0
// OP_DONE	0	0	0
float (entity e, float healamount, float ignore) T_Heal = 
{
    
    if(e.health <= 0)
    {
        return 0;
    }
    
    
    if(!ignore && (e.health >= other.max_health))
    {
        return 0;
    }
    
    healamount = ceil(healamount);
    e.health = e.health + healamount;
    
    if(!ignore && (e.health >= other.max_health))
    {
        e.health = other.max_health;
    }
    
    
    if(e.health > 250)
    {
        e.health = 250;
    }
    
    return 1;
};

float H_ROTTEN = 1;
float H_MEGA = 2;
.float healamount;
.float healtype;
void () health_touch;
void () item_megahealth_rot;
// item_health
// function begins at statement 10172, parm_start=8421
// OP_ADDRESS	28	146	8421
// OP_STOREP_FNC	8418	8421	0
// OP_LOAD_F	28	195	8422
// OP_BITAND	8422	8414	8423
// OP_IFNOT	8423	15	0
// OP_STORE_V	8424	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	8425	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8424	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	208	8426
// OP_STOREP_S	8425	8426	0
// OP_ADDRESS	28	8416	8427
// OP_STOREP_F	827	8427	0
// OP_ADDRESS	28	8417	8428
// OP_STOREP_F	817	8428	0
// OP_GOTO	31	0	0
// OP_LOAD_F	28	195	8429
// OP_BITAND	8429	8415	8430
// OP_IFNOT	8430	15	0
// OP_STORE_V	8431	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	8432	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8431	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	208	8433
// OP_STOREP_S	8432	8433	0
// OP_ADDRESS	28	8416	8434
// OP_STOREP_F	2611	8434	0
// OP_ADDRESS	28	8417	8435
// OP_STOREP_F	821	8435	0
// OP_GOTO	14	0	0
// OP_STORE_V	8436	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	8437	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8436	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	208	8438
// OP_STOREP_S	8437	8438	0
// OP_ADDRESS	28	8416	8439
// OP_STOREP_F	845	8439	0
// OP_ADDRESS	28	8417	8440
// OP_STOREP_F	819	8440	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	8441	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
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
        self.healamount = 5;
        self.healtype = 0;
    }
    else
    {
        if(self.spawnflags & H_MEGA)
        {
            precache_model("maps/b_bh100.bsp");
            precache_sound("items/r_item2.wav");
            setmodel(self, "maps/b_bh100.bsp");
            self.noise = "items/r_item2.wav";
            self.healamount = 50;
            self.healtype = 2;
        }
        else
        {
            precache_model("maps/b_bh25.bsp");
            precache_sound("items/health1.wav");
            setmodel(self, "maps/b_bh25.bsp");
            self.noise = "items/health1.wav";
            self.healamount = 15;
            self.healtype = 1;
        }
        
    }
    
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// health_touch
// function begins at statement 10227, parm_start=8444
// OP_LOAD_S	29	129	8446
// OP_NE_S	8446	880	8447
// OP_IFNOT	8447	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	8417	8448
// OP_EQ_F	8448	821	8449
// OP_IFNOT	8449	14	0
// OP_LOAD_F	29	152	8450
// OP_GE	8450	1135	8451
// OP_IFNOT	8451	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	8416	8452
// OP_STORE_V	8452	7	0
// OP_STORE_V	819	10	0
// OP_CALL3	535	0	0
// OP_NOT_F	1	0	8453
// OP_IFNOT	8453	2	0
// OP_RETURN	0	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_F	28	8416	8454
// OP_STORE_V	8454	7	0
// OP_STORE_V	817	10	0
// OP_CALL3	535	0	0
// OP_NOT_F	1	0	8455
// OP_IFNOT	8455	2	0
// OP_RETURN	0	0	0
// OP_NE_F	35	855	8456
// OP_IFNOT	8456	14	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8457	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	28	8416	8458
// OP_STORE_V	8458	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	8445	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8445	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8459	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_LOAD_S	28	208	8460
// OP_STORE_V	8460	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	130	8461
// OP_STOREP_S	357	8461	0
// OP_ADDRESS	28	104	8462
// OP_STOREP_F	243	8462	0
// OP_LOAD_F	28	8417	8463
// OP_EQ_F	8463	821	8464
// OP_IFNOT	8464	13	0
// OP_ADDRESS	29	162	8465
// OP_LOAD_F	29	162	8466
// OP_BITOR	8466	275	8467
// OP_STOREP_F	8467	8465	0
// OP_ADDRESS	28	150	8468
// OP_ADD_F	31	827	8469
// OP_STOREP_F	8469	8468	0
// OP_ADDRESS	28	148	8470
// OP_STOREP_FNC	8419	8470	0
// OP_ADDRESS	28	201	8471
// OP_STOREP_ENT	29	8471	0
// OP_GOTO	9	0	0
// OP_EQ_F	738	825	8472
// OP_OR	35	8472	8473
// OP_IFNOT	8473	6	0
// OP_ADDRESS	28	150	8474
// OP_ADD_F	31	1112	8475
// OP_STOREP_F	8475	8474	0
// OP_ADDRESS	28	148	8476
// OP_STOREP_FNC	8353	8476	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_DONE	0	0	0
void () health_touch = 
{
    local float amount;
    local string s;
    
    if(other.classname != "player")
    {
        return;
    }
    
    if(self.healtype == 2)
    {
        
        if(other.health >= 250)
        {
            return;
        }
        
        
        if(!T_Heal(other, self.healamount, 1))
        {
            return;
        }
        
    }
    else
    {
        
        if(!T_Heal(other, self.healamount, 0))
        {
            return;
        }
        
    }
    
    
    if(deathmatch != 10)
    {
        sprint(other, "You receive ");
        s = ftos(self.healamount);
        sprint(other, s);
        sprint(other, " health\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.model = string_null;
    self.solid = SOLID_NOT;
    if(self.healtype == 2)
    {
        other.items = other.items | IT_SUPERHEALTH;
        self.nextthink = time + 5;
        self.think = item_megahealth_rot;
        self.owner = other;
    }
    else
    {
        
        if(deathmatch || (rally_type_index == 4))
        {
            self.nextthink = time + 20;
            self.think = SUB_regen;
        }
        
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_megahealth_rot
// function begins at statement 10310, parm_start=8477
// OP_LOAD_ENT	28	201	8477
// OP_STORE_ENT	8477	29	0
// OP_LOAD_F	29	152	8478
// OP_LOAD_F	29	185	8479
// OP_GT	8478	8479	8480
// OP_IFNOT	8480	9	0
// OP_ADDRESS	29	152	8481
// OP_LOAD_F	29	152	8482
// OP_SUB_F	8482	819	8483
// OP_STOREP_F	8483	8481	0
// OP_ADDRESS	28	150	8484
// OP_ADD_F	31	819	8485
// OP_STOREP_F	8485	8484	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	162	8486
// OP_LOAD_F	29	162	8487
// OP_LOAD_F	29	162	8488
// OP_BITAND	8488	275	8489
// OP_SUB_F	8487	8489	8490
// OP_STOREP_F	8490	8486	0
// OP_EQ_F	35	819	8491
// OP_IFNOT	8491	6	0
// OP_ADDRESS	28	150	8492
// OP_ADD_F	31	1112	8493
// OP_STOREP_F	8493	8492	0
// OP_ADDRESS	28	148	8494
// OP_STOREP_FNC	8353	8494	0
// OP_DONE	0	0	0
void () item_megahealth_rot = 
{
    other = self.owner;
    
    if(other.health > other.max_health)
    {
        other.health = other.health - 1;
        self.nextthink = time + 1;
        return;
    }
    
    other.items = other.items - (other.items & IT_SUPERHEALTH);
    
    if(deathmatch == 1)
    {
        self.nextthink = time + 20;
        self.think = SUB_regen;
    }
    
};

// armor_touch
// function begins at statement 10338, parm_start=8496
// OP_LOAD_F	29	152	8499
// OP_LE	8499	817	8500
// OP_IFNOT	8500	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	8501
// OP_NE_S	8501	880	8502
// OP_IFNOT	8502	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8503
// OP_EQ_S	8503	8504	8505
// OP_IFNOT	8505	4	0
// OP_STORE_F	2575	8496	0
// OP_STORE_F	1957	8497	0
// OP_STORE_F	272	8498	0
// OP_LOAD_S	28	129	8506
// OP_EQ_S	8506	8507	8508
// OP_IFNOT	8508	4	0
// OP_STORE_F	2233	8496	0
// OP_STORE_F	1885	8497	0
// OP_STORE_F	273	8498	0
// OP_LOAD_S	28	129	8509
// OP_EQ_S	8509	8510	8511
// OP_IFNOT	8511	4	0
// OP_STORE_F	2236	8496	0
// OP_STORE_F	4760	8497	0
// OP_STORE_F	274	8498	0
// OP_LOAD_F	29	187	8512
// OP_LOAD_F	29	188	8513
// OP_MUL_F	8512	8513	8514
// OP_MUL_F	8496	8497	8515
// OP_GE	8514	8515	8516
// OP_IFNOT	8516	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	187	8517
// OP_STOREP_F	8496	8517	0
// OP_ADDRESS	29	188	8518
// OP_STOREP_F	8497	8518	0
// OP_ADDRESS	29	162	8519
// OP_LOAD_F	29	162	8520
// OP_LOAD_F	29	162	8521
// OP_BITOR	272	273	8522
// OP_BITOR	8522	274	8523
// OP_BITAND	8521	8523	8524
// OP_SUB_F	8520	8524	8525
// OP_ADD_F	8525	8498	8526
// OP_STOREP_F	8526	8519	0
// OP_ADDRESS	28	104	8527
// OP_STOREP_F	243	8527	0
// OP_ADDRESS	28	130	8528
// OP_STOREP_S	357	8528	0
// OP_EQ_F	35	819	8529
// OP_IFNOT	8529	4	0
// OP_ADDRESS	28	150	8530
// OP_ADD_F	31	1112	8531
// OP_STOREP_F	8531	8530	0
// OP_ADDRESS	28	148	8532
// OP_STOREP_FNC	8353	8532	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8533	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	8534	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_DONE	0	0	0
void () armor_touch = 
{
    local float type;
    local float value;
    local float bit;
    
    if(other.health <= 0)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        return;
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
    
    if(deathmatch == 1)
    {
        self.nextthink = time + 20;
    }
    
    self.think = SUB_regen;
    sprint(other, "You got armor\n");
    sound(other, CHAN_ITEM, "items/armor1.wav", 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    activator = other;
    SUB_UseTargets();
};

// item_armor1
// function begins at statement 10410, parm_start=8536
// OP_ADDRESS	28	146	8536
// OP_STOREP_FNC	8495	8536	0
// OP_STORE_V	8537	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8537	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	132	8538
// OP_STOREP_F	817	8538	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_armor1 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = 0;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// item_armor2
// function begins at statement 10425, parm_start=8543
// OP_ADDRESS	28	146	8543
// OP_STOREP_FNC	8495	8543	0
// OP_STORE_V	8537	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8537	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	132	8544
// OP_STOREP_F	819	8544	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_armor2 = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = 1;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// item_armorInv
// function begins at statement 10440, parm_start=8546
// OP_ADDRESS	28	146	8546
// OP_STOREP_FNC	8495	8546	0
// OP_STORE_V	8537	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8537	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	132	8547
// OP_STOREP_F	821	8547	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_armorInv = 
{
    self.touch = armor_touch;
    precache_model("progs/armor.mdl");
    setmodel(self, "progs/armor.mdl");
    self.skin = 2;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// bound_other_ammo
// function begins at statement 10455, parm_start=8549
// OP_LOAD_F	29	158	8549
// OP_GT	8549	1957	8550
// OP_IFNOT	8550	3	0
// OP_ADDRESS	29	158	8551
// OP_STOREP_F	1957	8551	0
// OP_LOAD_F	29	159	8552
// OP_GT	8552	4760	8553
// OP_IFNOT	8553	3	0
// OP_ADDRESS	29	159	8554
// OP_STOREP_F	4760	8554	0
// OP_LOAD_F	29	160	8555
// OP_GT	8555	1957	8556
// OP_IFNOT	8556	3	0
// OP_ADDRESS	29	160	8557
// OP_STOREP_F	1957	8557	0
// OP_LOAD_F	29	217	8558
// OP_GT	8558	1957	8559
// OP_IFNOT	8559	3	0
// OP_ADDRESS	29	217	8560
// OP_STOREP_F	1957	8560	0
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
    
    
    if(other.ammo_roobar > 100)
    {
        other.ammo_roobar = 100;
    }
    
};

// RankForWeapon
// function begins at statement 10476, parm_start=8562
// OP_EQ_F	8562	265	8563
// OP_IFNOT	8563	2	0
// OP_RETURN	819	0	0
// OP_EQ_F	8562	263	8564
// OP_IFNOT	8564	2	0
// OP_RETURN	821	0	0
// OP_EQ_F	8562	279	8565
// OP_IFNOT	8565	2	0
// OP_RETURN	823	0	0
// OP_EQ_F	8562	278	8566
// OP_IFNOT	8566	2	0
// OP_RETURN	825	0	0
// OP_EQ_F	8562	280	8567
// OP_IFNOT	8567	2	0
// OP_RETURN	825	0	0
// OP_EQ_F	8562	277	8568
// OP_IFNOT	8568	2	0
// OP_RETURN	827	0	0
// OP_RETURN	829	0	0
// OP_DONE	0	0	0
float (float w) RankForWeapon = 
{
    
    if(w == IT_ROCKET_LAUNCHER)
    {
        return 1;
    }
    
    
    if(w == IT_SUPER_NAILGUN)
    {
        return 2;
    }
    
    
    if(w == IT_MINE_LAUNCHER)
    {
        return 3;
    }
    
    
    if(w == IT_DETONATOR)
    {
        return 4;
    }
    
    
    if(w == IT_LASER_GUN)
    {
        return 4;
    }
    
    
    if(w == IT_ROOBAR)
    {
        return 5;
    }
    
    return 6;
};

// Deathmatch_Weapon
// function begins at statement 10496, parm_start=8570
// OP_LOAD_F	28	154	8574
// OP_STORE_V	8574	4	0
// OP_CALL1	8561	0	0
// OP_STORE_F	1	8572	0
// OP_STORE_V	8571	4	0
// OP_CALL1	8561	0	0
// OP_STORE_F	1	8573	0
// OP_LT	8573	8572	8575
// OP_IFNOT	8575	3	0
// OP_ADDRESS	28	154	8576
// OP_STOREP_F	8571	8576	0
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
// function begins at statement 10508, parm_start=8578
// OP_LOAD_F	29	182	8584
// OP_BITAND	8584	222	8585
// OP_NOT_F	8585	0	8586
// OP_LOAD_S	29	129	8587
// OP_EQ_S	8587	3609	8588
// OP_LOAD_S	28	129	8589
// OP_EQ_S	8589	8590	8591
// OP_AND	8588	8591	8592
// OP_NOT_F	8592	0	8593
// OP_AND	8586	8593	8594
// OP_IFNOT	8594	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8595
// OP_EQ_S	8595	8596	8597
// OP_LOAD_S	28	129	8598
// OP_EQ_S	8598	8599	8600
// OP_OR	8597	8600	8601
// OP_LOAD_S	28	129	8602
// OP_EQ_S	8602	8603	8604
// OP_OR	8601	8604	8605
// OP_IFNOT	8605	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	8582	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	8577	0	0
// OP_STORE_F	1	8579	0
// OP_STORE_ENT	8582	28	0
// OP_STORE_F	819	8583	0
// OP_LOAD_S	28	129	8606
// OP_EQ_S	8606	8603	8607
// OP_IFNOT	8607	3	0
// OP_RETURN	0	0	0
// OP_GOTO	147	0	0
// OP_LOAD_S	28	129	8608
// OP_EQ_S	8608	8609	8610
// OP_IFNOT	8610	14	0
// OP_LOAD_F	29	162	8611
// OP_BITAND	8611	263	8612
// OP_AND	8583	8612	8613
// OP_IFNOT	8613	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	8614
// OP_STORE_F	8614	8578	0
// OP_STORE_F	263	8580	0
// OP_ADDRESS	29	159	8615
// OP_LOAD_F	29	159	8616
// OP_ADD_F	8616	2522	8617
// OP_STOREP_F	8617	8615	0
// OP_GOTO	131	0	0
// OP_LOAD_S	28	129	8618
// OP_EQ_S	8618	8596	8619
// OP_IFNOT	8619	15	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	8620
// OP_BITAND	8620	261	8621
// OP_AND	8583	8621	8622
// OP_IFNOT	8622	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	8623
// OP_STORE_F	8623	8578	0
// OP_STORE_F	261	8580	0
// OP_ADDRESS	29	158	8624
// OP_LOAD_F	29	158	8625
// OP_ADD_F	8625	827	8626
// OP_STOREP_F	8626	8624	0
// OP_GOTO	114	0	0
// OP_LOAD_S	28	129	8627
// OP_EQ_S	8627	8590	8628
// OP_IFNOT	8628	30	0
// OP_LOAD_F	29	162	8629
// OP_BITAND	8629	265	8630
// OP_AND	8583	8630	8631
// OP_IFNOT	8631	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	8632
// OP_STORE_F	8632	8578	0
// OP_STORE_F	265	8580	0
// OP_ADDRESS	29	160	8633
// OP_LOAD_F	29	160	8634
// OP_ADD_F	8634	855	8635
// OP_STOREP_F	8635	8633	0
// OP_LOAD_F	29	182	8636
// OP_BITAND	8636	222	8637
// OP_IFNOT	8637	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8638	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	8639	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	82	0	0
// OP_LOAD_S	28	129	8640
// OP_EQ_S	8640	8641	8642
// OP_IFNOT	8642	17	0
// OP_LOAD_F	29	162	8643
// OP_BITAND	8643	280	8644
// OP_AND	8583	8644	8645
// OP_IFNOT	8645	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	217	8646
// OP_STORE_F	8646	8578	0
// OP_STORE_F	280	8580	0
// OP_ADDRESS	29	217	8647
// OP_LOAD_F	29	217	8648
// OP_ADD_F	8648	1380	8649
// OP_STOREP_F	8649	8647	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8650	7	0
// OP_CALL2	483	0	0
// OP_GOTO	63	0	0
// OP_LOAD_S	28	129	8651
// OP_EQ_S	8651	8652	8653
// OP_LOAD_S	28	129	8654
// OP_EQ_S	8654	8655	8656
// OP_OR	8653	8656	8657
// OP_IFNOT	8657	17	0
// OP_LOAD_F	29	162	8658
// OP_BITAND	8658	279	8659
// OP_AND	8583	8659	8660
// OP_IFNOT	8660	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	8661
// OP_STORE_F	8661	8578	0
// OP_STORE_F	279	8580	0
// OP_ADDRESS	29	160	8662
// OP_LOAD_F	29	160	8663
// OP_ADD_F	8663	855	8664
// OP_STOREP_F	8664	8662	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8665	7	0
// OP_CALL2	483	0	0
// OP_GOTO	41	0	0
// OP_LOAD_S	28	129	8666
// OP_EQ_S	8666	8667	8668
// OP_IFNOT	8668	17	0
// OP_LOAD_F	29	162	8669
// OP_BITAND	8669	278	8670
// OP_AND	8583	8670	8671
// OP_IFNOT	8671	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	160	8672
// OP_STORE_F	8672	8578	0
// OP_STORE_F	278	8580	0
// OP_ADDRESS	29	160	8673
// OP_LOAD_F	29	160	8674
// OP_ADD_F	8674	855	8675
// OP_STOREP_F	8675	8673	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8676	7	0
// OP_CALL2	483	0	0
// OP_GOTO	22	0	0
// OP_LOAD_S	28	129	8677
// OP_EQ_S	8677	8678	8679
// OP_IFNOT	8679	17	0
// OP_LOAD_F	29	162	8680
// OP_BITAND	8680	277	8681
// OP_AND	8583	8681	8682
// OP_IFNOT	8682	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	217	8683
// OP_STORE_F	8683	8578	0
// OP_STORE_F	277	8580	0
// OP_ADDRESS	29	217	8684
// OP_LOAD_F	29	217	8685
// OP_ADD_F	8685	2611	8686
// OP_STOREP_F	8686	8684	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8687	7	0
// OP_CALL2	483	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	8688	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	8639	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	29	182	8689
// OP_BITAND	8689	222	8690
// OP_IFNOT	8690	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_CALL0	8548	0	0
// OP_LOAD_F	29	162	8691
// OP_STORE_F	8691	8581	0
// OP_ADDRESS	29	162	8692
// OP_LOAD_F	29	162	8693
// OP_BITOR	8693	8580	8694
// OP_STOREP_F	8694	8692	0
// OP_STORE_ENT	28	8582	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	8695
// OP_IFNOT	8695	4	0
// OP_ADDRESS	28	154	8696
// OP_STOREP_F	8580	8696	0
// OP_GOTO	4	0	0
// OP_STORE_V	8581	4	0
// OP_STORE_V	8580	7	0
// OP_CALL2	8569	0	0
// OP_CALL0	931	0	0
// OP_STORE_ENT	8582	28	0
// OP_IFNOT	8583	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	130	8697
// OP_STOREP_S	357	8697	0
// OP_ADDRESS	28	104	8698
// OP_STOREP_F	243	8698	0
// OP_EQ_F	35	819	8699
// OP_EQ_F	738	825	8700
// OP_OR	8699	8700	8701
// OP_IFNOT	8701	4	0
// OP_ADDRESS	28	150	8702
// OP_ADD_F	31	2522	8703
// OP_STOREP_F	8703	8702	0
// OP_ADDRESS	28	148	8704
// OP_STOREP_FNC	8353	8704	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_DONE	0	0	0
void () weapon_touch = 
{
    local float hadammo;
    local float best;
    local float new;
    local float old;
    local entity stemp;
    local float leave;
    
    if((!(other.flags & FL_CLIENT)) && (!((other.classname == "rally_dude") && (self.classname == "weapon_rocketlauncher"))))
    {
        return;
    }
    
    
    if(((self.classname == "weapon_supershotgun") || (self.classname == "weapon_shotgun")) || (self.classname == "weapon_nailgun"))
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    leave = 1;
    if(self.classname == "weapon_nailgun")
    {
        return;
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
            other.ammo_nails = other.ammo_nails + 30;
        }
        else
        {
            if(self.classname == "weapon_supershotgun")
            {
                return;
                
                if(leave && (other.items & IT_SUPER_SHOTGUN))
                {
                    return;
                }
                
                hadammo = other.ammo_rockets;
                new = IT_SUPER_SHOTGUN;
                other.ammo_shells = other.ammo_shells + 5;
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
                    other.ammo_rockets = other.ammo_rockets + 10;
                    if(other.flags & FL_CLIENT)
                    {
                        sprint(other, "You got the Rocket Launcher");
                        sprint(other, "\n");
                    }
                    else
                    {
                        sound(other, CHAN_ITEM, "weapons/pkup.wav", 1, ATTN_NORM);
                    }
                    
                }
                else
                {
                    if(self.classname == "weapon_lasergun")
                    {
                        
                        if(leave && (other.items & IT_LASER_GUN))
                        {
                            return;
                        }
                        
                        hadammo = other.ammo_roobar;
                        new = IT_LASER_GUN;
                        other.ammo_roobar = other.ammo_roobar + 25;
                        sprint(other, "You got the Laser Gun\n");
                    }
                    else
                    {
                        if((self.classname == "weapon_grenadelauncher") || (self.classname == "weapon_minelauncher"))
                        {
                            
                            if(leave && (other.items & IT_MINE_LAUNCHER))
                            {
                                return;
                            }
                            
                            hadammo = other.ammo_rockets;
                            new = IT_MINE_LAUNCHER;
                            other.ammo_rockets = other.ammo_rockets + 10;
                            sprint(other, "You got the Mine Launcher\n");
                        }
                        else
                        {
                            if(self.classname == "weapon_detonator")
                            {
                                
                                if(leave && (other.items & IT_DETONATOR))
                                {
                                    return;
                                }
                                
                                hadammo = other.ammo_rockets;
                                new = IT_DETONATOR;
                                other.ammo_rockets = other.ammo_rockets + 10;
                                sprint(other, "You got the Detonator\n");
                            }
                            else
                            {
                                if(self.classname == "weapon_repulsor")
                                {
                                    
                                    if(leave && (other.items & IT_ROOBAR))
                                    {
                                        return;
                                    }
                                    
                                    hadammo = other.ammo_roobar;
                                    new = IT_ROOBAR;
                                    other.ammo_roobar = other.ammo_roobar + 50;
                                    sprint(other, "You got the Repulsor\n");
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
            
        }
        
    }
    
    sound(other, CHAN_ITEM, "weapons/pkup.wav", 1, ATTN_NORM);
    
    if(other.flags & FL_CLIENT)
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
    
    if((deathmatch == 1) || (rally_type_index == 4))
    {
        self.nextthink = time + 30;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
};

// weapon_supershotgun
// function begins at statement 10736, parm_start=8706
// OP_EQ_F	738	819	8706
// OP_IFNOT	8706	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8707	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8707	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8708
// OP_STOREP_F	261	8708	0
// OP_ADDRESS	28	180	8709
// OP_STOREP_S	8710	8709	0
// OP_ADDRESS	28	146	8711
// OP_STOREP_FNC	7172	8711	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_supershotgun = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("progs/g_shot.mdl");
    setmodel(self, "progs/g_shot.mdl");
    self.weapon = IT_SUPER_SHOTGUN;
    self.netname = "Double-barrelled Shotgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_nailgun
// function begins at statement 10756, parm_start=8713
// OP_EQ_F	738	819	8713
// OP_IFNOT	8713	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8714	4	0
// OP_CALL1	479	0	0
// OP_DONE	0	0	0
void () weapon_nailgun = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("progs/g_nail.mdl");
};

// weapon_supernailgun
// function begins at statement 10762, parm_start=8716
// OP_EQ_F	738	819	8716
// OP_IFNOT	8716	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8717	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8717	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8718
// OP_STOREP_F	263	8718	0
// OP_ADDRESS	28	180	8719
// OP_STOREP_S	8720	8719	0
// OP_ADDRESS	28	146	8721
// OP_STOREP_FNC	7172	8721	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_supernailgun = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("progs/g_nail2.mdl");
    setmodel(self, "progs/g_nail2.mdl");
    self.weapon = IT_SUPER_NAILGUN;
    self.netname = "Super Nailgun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_rocketlauncher
// function begins at statement 10782, parm_start=8723
// OP_EQ_F	738	819	8723
// OP_IFNOT	8723	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8724	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8724	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8725
// OP_STOREP_F	823	8725	0
// OP_ADDRESS	28	180	8726
// OP_STOREP_S	8727	8726	0
// OP_ADDRESS	28	146	8728
// OP_STOREP_FNC	7172	8728	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_rocketlauncher = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("progs/g_rock2.mdl");
    setmodel(self, "progs/g_rock2.mdl");
    self.weapon = 3;
    self.netname = "Rocket Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_repulsor
// function begins at statement 10802, parm_start=8730
// OP_EQ_F	738	819	8730
// OP_IFNOT	8730	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8731	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8731	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8732
// OP_STOREP_F	277	8732	0
// OP_ADDRESS	28	180	8733
// OP_STOREP_S	8734	8733	0
// OP_ADDRESS	28	146	8735
// OP_STOREP_FNC	7172	8735	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_repulsor = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("models/g_replsr.mdl");
    setmodel(self, "models/g_replsr.mdl");
    self.weapon = IT_ROOBAR;
    self.netname = "Repulsor";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_detonator
// function begins at statement 10822, parm_start=8737
// OP_EQ_F	738	819	8737
// OP_IFNOT	8737	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8738	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8738	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8739
// OP_STOREP_F	278	8739	0
// OP_ADDRESS	28	180	8740
// OP_STOREP_S	8741	8740	0
// OP_ADDRESS	28	146	8742
// OP_STOREP_FNC	7172	8742	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_detonator = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("models/g_detntr.mdl");
    setmodel(self, "models/g_detntr.mdl");
    self.weapon = IT_DETONATOR;
    self.netname = "Detonator";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_grenadelauncher
// function begins at statement 10842, parm_start=8744
// OP_ADDRESS	28	129	8744
// OP_STOREP_S	8667	8744	0
// OP_CALL0	8736	0	0
// OP_RETURN	0	0	0
// OP_EQ_F	738	819	8745
// OP_IFNOT	8745	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8746	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8746	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8747
// OP_STOREP_F	823	8747	0
// OP_ADDRESS	28	180	8748
// OP_STOREP_S	8749	8748	0
// OP_ADDRESS	28	146	8750
// OP_STOREP_FNC	7172	8750	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_grenadelauncher = 
{
    self.classname = "weapon_detonator";
    weapon_detonator();
    return;
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("progs/g_rock.mdl");
    setmodel(self, "progs/g_rock.mdl");
    self.weapon = 3;
    self.netname = "Grenade Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_minelauncher
// function begins at statement 10866, parm_start=8752
// OP_EQ_F	738	819	8752
// OP_IFNOT	8752	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8753	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8753	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8754
// OP_STOREP_F	279	8754	0
// OP_ADDRESS	28	180	8755
// OP_STOREP_S	8756	8755	0
// OP_ADDRESS	28	146	8757
// OP_STOREP_FNC	7172	8757	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_minelauncher = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("models/g_mine.mdl");
    setmodel(self, "models/g_mine.mdl");
    self.weapon = IT_MINE_LAUNCHER;
    self.netname = "Mine Launcher";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// weapon_lasergun
// function begins at statement 10886, parm_start=8759
// OP_EQ_F	738	819	8759
// OP_IFNOT	8759	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8760	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8760	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	154	8761
// OP_STOREP_F	280	8761	0
// OP_ADDRESS	28	180	8762
// OP_STOREP_S	8763	8762	0
// OP_ADDRESS	28	146	8764
// OP_STOREP_FNC	7172	8764	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () weapon_lasergun = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    precache_model("progs/g_light.mdl");
    setmodel(self, "progs/g_light.mdl");
    self.weapon = IT_LASER_GUN;
    self.netname = "Laser Gun";
    self.touch = weapon_touch;
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    StartItem();
};

// ammo_touch
// function begins at statement 10906, parm_start=8765
// OP_LOAD_S	29	129	8767
// OP_NE_S	8767	880	8768
// OP_IFNOT	8768	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	8769
// OP_LE	8769	817	8770
// OP_IFNOT	8770	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	8765	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	8577	0	0
// OP_STORE_F	1	8766	0
// OP_STORE_ENT	8765	28	0
// OP_LOAD_F	28	154	8771
// OP_EQ_F	8771	819	8772
// OP_IFNOT	8772	10	0
// OP_LOAD_F	29	158	8773
// OP_GE	8773	1957	8774
// OP_IFNOT	8774	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	158	8775
// OP_LOAD_F	29	158	8776
// OP_LOAD_F	28	433	8777
// OP_ADD_F	8776	8777	8778
// OP_STOREP_F	8778	8775	0
// OP_LOAD_F	28	154	8779
// OP_EQ_F	8779	821	8780
// OP_IFNOT	8780	10	0
// OP_LOAD_F	29	159	8781
// OP_GE	8781	4760	8782
// OP_IFNOT	8782	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	159	8783
// OP_LOAD_F	29	159	8784
// OP_LOAD_F	28	433	8785
// OP_ADD_F	8784	8785	8786
// OP_STOREP_F	8786	8783	0
// OP_LOAD_F	28	154	8787
// OP_EQ_F	8787	823	8788
// OP_IFNOT	8788	10	0
// OP_LOAD_F	29	160	8789
// OP_GE	8789	1957	8790
// OP_IFNOT	8790	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	160	8791
// OP_LOAD_F	29	160	8792
// OP_LOAD_F	28	433	8793
// OP_ADD_F	8792	8793	8794
// OP_STOREP_F	8794	8791	0
// OP_LOAD_F	28	154	8795
// OP_EQ_F	8795	825	8796
// OP_IFNOT	8796	10	0
// OP_LOAD_F	29	217	8797
// OP_GE	8797	1957	8798
// OP_IFNOT	8798	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	217	8799
// OP_LOAD_F	29	217	8800
// OP_LOAD_F	28	433	8801
// OP_ADD_F	8800	8801	8802
// OP_STOREP_F	8802	8799	0
// OP_CALL0	8548	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8803	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	8804
// OP_STORE_V	8804	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	8805	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	29	154	8806
// OP_EQ_F	8806	8766	8807
// OP_IFNOT	8807	8	0
// OP_STORE_ENT	28	8765	0
// OP_STORE_ENT	29	28	0
// OP_ADDRESS	28	154	8808
// OP_CALL0	8577	0	0
// OP_STOREP_F	1	8808	0
// OP_CALL0	931	0	0
// OP_STORE_ENT	8765	28	0
// OP_STORE_ENT	28	8765	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	931	0	0
// OP_STORE_ENT	8765	28	0
// OP_ADDRESS	28	130	8809
// OP_STOREP_S	357	8809	0
// OP_ADDRESS	28	104	8810
// OP_STOREP_F	243	8810	0
// OP_IFNOT	35	4	0
// OP_ADDRESS	28	150	8811
// OP_ADD_F	31	2522	8812
// OP_STOREP_F	8812	8811	0
// OP_ADDRESS	28	148	8813
// OP_STOREP_FNC	8353	8813	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_EQ_F	738	825	8814
// OP_IFNOT	8814	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () ammo_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    
    if(self.weapon == 1)
    {
        
        if(other.ammo_shells >= 100)
        {
            return;
        }
        
        other.ammo_shells = other.ammo_shells + self.aflag;
    }
    
    
    if(self.weapon == 2)
    {
        
        if(other.ammo_nails >= 200)
        {
            return;
        }
        
        other.ammo_nails = other.ammo_nails + self.aflag;
    }
    
    
    if(self.weapon == 3)
    {
        
        if(other.ammo_rockets >= 100)
        {
            return;
        }
        
        other.ammo_rockets = other.ammo_rockets + self.aflag;
    }
    
    
    if(self.weapon == 4)
    {
        
        if(other.ammo_roobar >= 100)
        {
            return;
        }
        
        other.ammo_roobar = other.ammo_roobar + self.aflag;
    }
    
    bound_other_ammo();
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, "weapons/lock4.wav", 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    
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
    
    if(deathmatch)
    {
        self.nextthink = time + 30;
    }
    
    self.think = SUB_regen;
    activator = other;
    SUB_UseTargets();
    
    if(rally_type_index == 4)
    {
        remove(self);
    }
    
};

float WEAPON_BIG2 = 1;
// item_shells
// function begins at statement 11018, parm_start=8817
// OP_EQ_F	738	819	8817
// OP_IFNOT	8817	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8818
// OP_STOREP_FNC	7171	8818	0
// OP_LOAD_F	28	195	8819
// OP_BITAND	8819	8815	8820
// OP_IFNOT	8820	9	0
// OP_STORE_V	8821	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8821	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8822
// OP_STOREP_F	1632	8822	0
// OP_GOTO	8	0	0
// OP_STORE_V	8823	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8823	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8824
// OP_STOREP_F	1112	8824	0
// OP_ADDRESS	28	154	8825
// OP_STOREP_F	819	8825	0
// OP_ADDRESS	28	180	8826
// OP_STOREP_S	8827	8826	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	8441	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_shells = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_shell1.bsp");
        setmodel(self, "maps/b_shell1.bsp");
        self.aflag = 40;
    }
    else
    {
        precache_model("maps/b_shell0.bsp");
        setmodel(self, "maps/b_shell0.bsp");
        self.aflag = 20;
    }
    
    self.weapon = 1;
    self.netname = "shells";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// item_spikes
// function begins at statement 11051, parm_start=8829
// OP_EQ_F	738	819	8829
// OP_IFNOT	8829	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8830
// OP_STOREP_FNC	7171	8830	0
// OP_LOAD_F	28	195	8831
// OP_BITAND	8831	8815	8832
// OP_IFNOT	8832	9	0
// OP_STORE_V	8833	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8833	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8834
// OP_STOREP_F	2611	8834	0
// OP_GOTO	8	0	0
// OP_STORE_V	8835	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8835	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8836
// OP_STOREP_F	1380	8836	0
// OP_ADDRESS	28	154	8837
// OP_STOREP_F	821	8837	0
// OP_ADDRESS	28	180	8838
// OP_STOREP_S	8839	8838	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	8441	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_spikes = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
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
        self.aflag = 25;
    }
    
    self.weapon = 2;
    self.netname = "nails";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// item_rockets
// function begins at statement 11084, parm_start=8841
// OP_EQ_F	738	819	8841
// OP_IFNOT	8841	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8842
// OP_STOREP_FNC	7171	8842	0
// OP_LOAD_F	28	195	8843
// OP_BITAND	8843	8815	8844
// OP_IFNOT	8844	9	0
// OP_STORE_V	8845	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8845	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8846
// OP_STOREP_F	855	8846	0
// OP_GOTO	8	0	0
// OP_STORE_V	8847	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8847	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8848
// OP_STOREP_F	827	8848	0
// OP_ADDRESS	28	154	8849
// OP_STOREP_F	823	8849	0
// OP_ADDRESS	28	180	8850
// OP_STOREP_S	8851	8850	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	8441	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_rockets = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_rock1.bsp");
        setmodel(self, "maps/b_rock1.bsp");
        self.aflag = 10;
    }
    else
    {
        precache_model("maps/b_rock0.bsp");
        setmodel(self, "maps/b_rock0.bsp");
        self.aflag = 5;
    }
    
    self.weapon = 3;
    self.netname = "rockets";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

// item_cells
// function begins at statement 11117, parm_start=8853
// OP_EQ_F	738	819	8853
// OP_IFNOT	8853	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8854
// OP_STOREP_FNC	7171	8854	0
// OP_LOAD_F	28	195	8855
// OP_BITAND	8855	8815	8856
// OP_IFNOT	8856	9	0
// OP_STORE_V	8857	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8857	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8858
// OP_STOREP_F	834	8858	0
// OP_GOTO	8	0	0
// OP_STORE_V	8859	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8859	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	8860
// OP_STOREP_F	829	8860	0
// OP_ADDRESS	28	154	8861
// OP_STOREP_F	825	8861	0
// OP_ADDRESS	28	180	8862
// OP_STOREP_S	8863	8862	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	8441	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_cells = 
{
    
    if(rally_type_index == 1)
    {
        return;
    }
    
    self.touch = ammo_touch;
    if(self.spawnflags & WEAPON_BIG2)
    {
        precache_model("maps/b_batt1.bsp");
        setmodel(self, "maps/b_batt1.bsp");
        self.aflag = 12;
    }
    else
    {
        precache_model("maps/b_batt0.bsp");
        setmodel(self, "maps/b_batt0.bsp");
        self.aflag = 6;
    }
    
    self.weapon = 4;
    self.netname = "repulsor cells";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    StartItem();
};

float WEAPON_SHOTGUN = 1;
float WEAPON_ROCKET = 2;
float WEAPON_SPIKES = 4;
float WEAPON_BIG = 8;
// item_weapon
// function begins at statement 11150, parm_start=8869
// OP_ADDRESS	28	146	8869
// OP_STOREP_FNC	7171	8869	0
// OP_DONE	0	0	0
void () item_weapon = 
{
    self.touch = ammo_touch;
};

// key_touch
// function begins at statement 11153, parm_start=8871
// OP_LOAD_S	29	129	8873
// OP_NE_S	8873	880	8874
// OP_IFNOT	8874	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	8875
// OP_LE	8875	817	8876
// OP_IFNOT	8876	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	8877
// OP_LOAD_F	28	162	8878
// OP_BITAND	8877	8878	8879
// OP_IFNOT	8879	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8803	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	8880
// OP_STORE_V	8880	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_LOAD_S	28	208	8881
// OP_STORE_V	8881	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	29	162	8882
// OP_LOAD_F	29	162	8883
// OP_LOAD_F	28	162	8884
// OP_BITOR	8883	8884	8885
// OP_STOREP_F	8885	8882	0
// OP_NOT_F	36	0	8886
// OP_IFNOT	8886	5	0
// OP_ADDRESS	28	104	8887
// OP_STOREP_F	243	8887	0
// OP_ADDRESS	28	130	8888
// OP_STOREP_S	357	8888	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_DONE	0	0	0
void () key_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    
    if(other.items & self.items)
    {
        return;
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    sound(other, CHAN_ITEM, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
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
// function begins at statement 11200, parm_start=8890
// OP_LOAD_F	30	366	8890
// OP_EQ_F	8890	817	8891
// OP_IFNOT	8891	5	0
// OP_STORE_V	8892	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	8893
// OP_STOREP_S	8892	8893	0
// OP_LOAD_F	30	366	8894
// OP_EQ_F	8894	819	8895
// OP_IFNOT	8895	5	0
// OP_STORE_V	8896	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	8897
// OP_STOREP_S	8896	8897	0
// OP_LOAD_F	30	366	8898
// OP_EQ_F	8898	821	8899
// OP_IFNOT	8899	5	0
// OP_STORE_V	8900	4	0
// OP_CALL1	523	0	0
// OP_ADDRESS	28	208	8901
// OP_STOREP_S	8900	8901	0
// OP_DONE	0	0	0
void () key_setsounds = 
{
    
    if(world.worldtype == 0)
    {
        precache_sound("misc/medkey.wav");
        self.noise = "misc/medkey.wav";
    }
    
    
    if(world.worldtype == 1)
    {
        precache_sound("misc/runekey.wav");
        self.noise = "misc/runekey.wav";
    }
    
    
    if(world.worldtype == 2)
    {
        precache_sound2("misc/basekey.wav");
        self.noise = "misc/basekey.wav";
    }
    
};

// item_key1
// function begins at statement 11222, parm_start=8903
// OP_LOAD_F	30	366	8903
// OP_EQ_F	8903	817	8904
// OP_IFNOT	8904	9	0
// OP_STORE_V	8905	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8905	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	8906
// OP_STOREP_S	8907	8906	0
// OP_GOTO	22	0	0
// OP_LOAD_F	30	366	8908
// OP_EQ_F	8908	819	8909
// OP_IFNOT	8909	9	0
// OP_STORE_V	8910	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8910	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	8911
// OP_STOREP_S	8912	8911	0
// OP_GOTO	11	0	0
// OP_LOAD_F	30	366	8913
// OP_EQ_F	8913	821	8914
// OP_IFNOT	8914	8	0
// OP_STORE_V	8915	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8915	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	8916
// OP_STOREP_S	8917	8916	0
// OP_CALL0	8889	0	0
// OP_ADDRESS	28	146	8918
// OP_STOREP_FNC	8870	8918	0
// OP_ADDRESS	28	162	8919
// OP_STOREP_F	284	8919	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_key1 = 
{
    if(world.worldtype == 0)
    {
        precache_model("progs/w_s_key.mdl");
        setmodel(self, "progs/w_s_key.mdl");
        self.netname = "silver key";
    }
    else
    {
        if(world.worldtype == 1)
        {
            precache_model("progs/m_s_key.mdl");
            setmodel(self, "progs/m_s_key.mdl");
            self.netname = "silver runekey";
        }
        else
        {
            
            if(world.worldtype == 2)
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
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_key2
// function begins at statement 11265, parm_start=8927
// OP_LOAD_F	30	366	8927
// OP_EQ_F	8927	817	8928
// OP_IFNOT	8928	8	0
// OP_STORE_V	8929	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8929	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	8930
// OP_STOREP_S	8931	8930	0
// OP_LOAD_F	30	366	8932
// OP_EQ_F	8932	819	8933
// OP_IFNOT	8933	8	0
// OP_STORE_V	8934	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8934	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	8935
// OP_STOREP_S	8936	8935	0
// OP_LOAD_F	30	366	8937
// OP_EQ_F	8937	821	8938
// OP_IFNOT	8938	8	0
// OP_STORE_V	8939	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8939	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	8940
// OP_STOREP_S	8941	8940	0
// OP_CALL0	8889	0	0
// OP_ADDRESS	28	146	8942
// OP_STOREP_FNC	8870	8942	0
// OP_ADDRESS	28	162	8943
// OP_STOREP_F	285	8943	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_key2 = 
{
    
    if(world.worldtype == 0)
    {
        precache_model("progs/w_g_key.mdl");
        setmodel(self, "progs/w_g_key.mdl");
        self.netname = "gold key";
    }
    
    
    if(world.worldtype == 1)
    {
        precache_model("progs/m_g_key.mdl");
        setmodel(self, "progs/m_g_key.mdl");
        self.netname = "gold runekey";
    }
    
    
    if(world.worldtype == 2)
    {
        precache_model2("progs/b_g_key.mdl");
        setmodel(self, "progs/b_g_key.mdl");
        self.netname = "gold keycard";
    }
    
    key_setsounds();
    self.touch = key_touch;
    self.items = IT_KEY2;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// sigil_touch
// function begins at statement 11306, parm_start=8945
// OP_LOAD_S	29	129	8947
// OP_NE_S	8947	880	8948
// OP_IFNOT	8948	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	8949
// OP_LE	8949	817	8950
// OP_IFNOT	8950	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8951	7	0
// OP_CALL2	520	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	337	7	0
// OP_LOAD_S	28	208	8952
// OP_STORE_V	8952	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	104	8953
// OP_STOREP_F	243	8953	0
// OP_ADDRESS	28	130	8954
// OP_STOREP_S	357	8954	0
// OP_LOAD_F	28	195	8955
// OP_BITAND	8955	845	8956
// OP_BITOR	38	8956	8957
// OP_STORE_F	8957	38	0
// OP_ADDRESS	28	129	8958
// OP_STOREP_S	4128	8958	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_DONE	0	0	0
void () sigil_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    centerprint(other, "You got the rune!");
    sound(other, CHAN_ITEM, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    self.model = string_null;
    serverflags = serverflags | (self.spawnflags & 15);
    self.classname = "";
    activator = other;
    SUB_UseTargets();
};

// item_sigil
// function begins at statement 11340, parm_start=8960
// OP_LOAD_F	28	195	8960
// OP_NOT_F	8960	0	8961
// OP_IFNOT	8961	3	0
// OP_STORE_V	8962	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	8896	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	8963
// OP_STOREP_S	8896	8963	0
// OP_LOAD_F	28	195	8964
// OP_BITAND	8964	819	8965
// OP_IFNOT	8965	6	0
// OP_STORE_V	8966	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8966	7	0
// OP_CALL2	463	0	0
// OP_LOAD_F	28	195	8967
// OP_BITAND	8967	821	8968
// OP_IFNOT	8968	6	0
// OP_STORE_V	8969	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8969	7	0
// OP_CALL2	463	0	0
// OP_LOAD_F	28	195	8970
// OP_BITAND	8970	825	8971
// OP_IFNOT	8971	6	0
// OP_STORE_V	8972	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8972	7	0
// OP_CALL2	463	0	0
// OP_LOAD_F	28	195	8973
// OP_BITAND	8973	843	8974
// OP_IFNOT	8974	6	0
// OP_STORE_V	8975	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8975	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	146	8976
// OP_STOREP_FNC	8944	8976	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
// OP_DONE	0	0	0
void () item_sigil = 
{
    
    if(!self.spawnflags)
    {
        objerror("no spawnflags");
    }
    
    precache_sound("misc/runekey.wav");
    self.noise = "misc/runekey.wav";
    
    if(self.spawnflags & 1)
    {
        precache_model("progs/end1.mdl");
        setmodel(self, "progs/end1.mdl");
    }
    
    
    if(self.spawnflags & 2)
    {
        precache_model2("progs/end2.mdl");
        setmodel(self, "progs/end2.mdl");
    }
    
    
    if(self.spawnflags & 4)
    {
        precache_model2("progs/end3.mdl");
        setmodel(self, "progs/end3.mdl");
    }
    
    
    if(self.spawnflags & 8)
    {
        precache_model2("progs/end4.mdl");
        setmodel(self, "progs/end4.mdl");
    }
    
    self.touch = sigil_touch;
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// powerup_touch
// function begins at statement 11389, parm_start=8978
// OP_LOAD_S	29	129	8980
// OP_NE_S	8980	880	8981
// OP_IFNOT	8981	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	8982
// OP_LE	8982	817	8983
// OP_IFNOT	8983	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	8803	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	8984
// OP_STORE_V	8984	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_IFNOT	35	20	0
// OP_ADDRESS	28	408	8985
// OP_LOAD_S	28	130	8986
// OP_STOREP_S	8986	8985	0
// OP_LOAD_S	28	129	8987
// OP_EQ_S	8987	8988	8989
// OP_LOAD_S	28	129	8990
// OP_EQ_S	8990	8991	8992
// OP_OR	8989	8992	8993
// OP_IFNOT	8993	6	0
// OP_ADDRESS	28	150	8994
// OP_MUL_F	2228	827	8995
// OP_ADD_F	31	8995	8996
// OP_STOREP_F	8996	8994	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	8997
// OP_ADD_F	31	2228	8998
// OP_STOREP_F	8998	8997	0
// OP_ADDRESS	28	148	8999
// OP_STOREP_FNC	8353	8999	0
// OP_STORE_V	29	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	9000
// OP_STORE_V	9000	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	104	9001
// OP_STOREP_F	243	9001	0
// OP_ADDRESS	29	162	9002
// OP_LOAD_F	29	162	9003
// OP_LOAD_F	28	162	9004
// OP_BITOR	9003	9004	9005
// OP_STOREP_F	9005	9002	0
// OP_ADDRESS	28	130	9006
// OP_STOREP_S	357	9006	0
// OP_LOAD_S	28	129	9007
// OP_EQ_S	9007	9008	9009
// OP_IFNOT	9009	6	0
// OP_ADDRESS	29	399	9010
// OP_STOREP_F	819	9010	0
// OP_ADDRESS	29	392	9011
// OP_ADD_F	31	2522	9012
// OP_STOREP_F	9012	9011	0
// OP_LOAD_S	28	129	9013
// OP_EQ_S	9013	8988	9014
// OP_IFNOT	9014	6	0
// OP_ADDRESS	29	393	9015
// OP_STOREP_F	819	9015	0
// OP_ADDRESS	29	389	9016
// OP_ADD_F	31	2522	9017
// OP_STOREP_F	9017	9016	0
// OP_LOAD_S	28	129	9018
// OP_EQ_S	9018	8991	9019
// OP_IFNOT	9019	6	0
// OP_ADDRESS	29	395	9020
// OP_STOREP_F	819	9020	0
// OP_ADDRESS	29	390	9021
// OP_ADD_F	31	2522	9022
// OP_STOREP_F	9022	9021	0
// OP_LOAD_S	28	129	9023
// OP_EQ_S	9023	9024	9025
// OP_IFNOT	9025	6	0
// OP_ADDRESS	29	397	9026
// OP_STOREP_F	819	9026	0
// OP_ADDRESS	29	391	9027
// OP_ADD_F	31	2522	9028
// OP_STOREP_F	9028	9027	0
// OP_STORE_ENT	29	360	0
// OP_CALL0	532	0	0
// OP_DONE	0	0	0
void () powerup_touch = 
{
    local entity stemp;
    local float best;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    sprint(other, "You got the ");
    sprint(other, self.netname);
    sprint(other, "\n");
    
    if(deathmatch)
    {
        self.mdl = self.model;
        if((self.classname == "item_artifact_invulnerability") || (self.classname == "item_artifact_invisibility"))
        {
            self.nextthink = time + (60 * 5);
        }
        else
        {
            self.nextthink = time + 60;
        }
        
        self.think = SUB_regen;
    }
    
    sound(other, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    stuffcmd(other, "bf\n");
    self.solid = SOLID_NOT;
    other.items = other.items | self.items;
    self.model = string_null;
    
    if(self.classname == "item_artifact_envirosuit")
    {
        other.rad_time = 1;
        other.radsuit_finished = time + 30;
    }
    
    
    if(self.classname == "item_artifact_invulnerability")
    {
        other.invincible_time = 1;
        other.invincible_finished = time + 30;
    }
    
    
    if(self.classname == "item_artifact_invisibility")
    {
        other.invisible_time = 1;
        other.invisible_finished = time + 30;
    }
    
    
    if(self.classname == "item_artifact_super_damage")
    {
        other.super_time = 1;
        other.super_damage_finished = time + 30;
    }
    
    activator = other;
    SUB_UseTargets();
};

// item_artifact_invulnerability
// function begins at statement 11481, parm_start=9030
// OP_ADDRESS	28	146	9030
// OP_STOREP_FNC	8977	9030	0
// OP_STORE_V	9031	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	9032	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9033	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	8241	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	9034
// OP_STOREP_S	9032	9034	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9031	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	9035
// OP_STOREP_S	9036	9035	0
// OP_ADDRESS	28	162	9037
// OP_STOREP_F	287	9037	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
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
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_artifact_envirosuit
// function begins at statement 11506, parm_start=9039
// OP_ADDRESS	28	146	9039
// OP_STOREP_FNC	8977	9039	0
// OP_STORE_V	9040	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	9041	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9042	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	9043
// OP_STOREP_S	9041	9043	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9040	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	9044
// OP_STOREP_S	9045	9044	0
// OP_ADDRESS	28	162	9046
// OP_STOREP_F	288	9046	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
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
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_artifact_invisibility
// function begins at statement 11529, parm_start=9048
// OP_ADDRESS	28	146	9048
// OP_STOREP_FNC	8977	9048	0
// OP_STORE_V	9049	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	9050	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9051	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9052	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	9053
// OP_STOREP_S	9050	9053	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9049	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	9054
// OP_STOREP_S	9055	9054	0
// OP_ADDRESS	28	162	9056
// OP_STOREP_F	286	9056	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
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
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// item_artifact_super_damage
// function begins at statement 11554, parm_start=9058
// OP_ADDRESS	28	146	9058
// OP_STOREP_FNC	8977	9058	0
// OP_STORE_V	9059	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	9060	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9061	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9062	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	9063
// OP_STOREP_S	9060	9063	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9059	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	180	9064
// OP_STOREP_S	9065	9064	0
// OP_ADDRESS	28	162	9066
// OP_STOREP_F	289	9066	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8920	7	0
// OP_STORE_V	8923	10	0
// OP_CALL3	464	0	0
// OP_CALL0	8387	0	0
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
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 32.000');
    StartItem();
};

// BackpackTouch
// function begins at statement 11579, parm_start=9068
// OP_LOAD_S	29	129	9073
// OP_NE_S	9073	880	9074
// OP_IFNOT	9074	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	9075
// OP_LE	9075	817	9076
// OP_IFNOT	9076	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	9072	0
// OP_STORE_ENT	29	28	0
// OP_CALL0	8577	0	0
// OP_STORE_F	1	9069	0
// OP_STORE_ENT	9072	28	0
// OP_ADDRESS	29	158	9077
// OP_LOAD_F	29	158	9078
// OP_LOAD_F	28	158	9079
// OP_ADD_F	9078	9079	9080
// OP_STOREP_F	9080	9077	0
// OP_ADDRESS	29	159	9081
// OP_LOAD_F	29	159	9082
// OP_LOAD_F	28	159	9083
// OP_ADD_F	9082	9083	9084
// OP_STOREP_F	9084	9081	0
// OP_ADDRESS	29	160	9085
// OP_LOAD_F	29	160	9086
// OP_LOAD_F	28	160	9087
// OP_ADD_F	9086	9087	9088
// OP_STOREP_F	9088	9085	0
// OP_ADDRESS	29	161	9089
// OP_LOAD_F	29	161	9090
// OP_LOAD_F	28	161	9091
// OP_ADD_F	9090	9091	9092
// OP_STOREP_F	9092	9089	0
// OP_LOAD_F	29	162	9093
// OP_STORE_F	9093	9070	0
// OP_LOAD_F	28	162	9094
// OP_STORE_F	9094	9071	0
// OP_ADDRESS	29	162	9095
// OP_LOAD_F	29	162	9096
// OP_BITOR	9096	9071	9097
// OP_STOREP_F	9097	9095	0
// OP_CALL0	8548	0	0
// OP_LOAD_F	28	158	9098
// OP_LOAD_F	28	159	9099
// OP_ADD_F	9098	9099	9100
// OP_LOAD_F	28	160	9101
// OP_ADD_F	9100	9101	9102
// OP_LOAD_F	28	161	9103
// OP_ADD_F	9102	9103	9104
// OP_GT	9104	817	9105
// OP_IFNOT	9105	58	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9106	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	28	158	9107
// OP_IFNOT	9107	11	0
// OP_LOAD_F	28	158	9108
// OP_STORE_V	9108	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	9068	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9068	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9109	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	28	159	9110
// OP_IFNOT	9110	11	0
// OP_LOAD_F	28	159	9111
// OP_STORE_V	9111	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	9068	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9068	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9112	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	28	160	9113
// OP_IFNOT	9113	11	0
// OP_LOAD_F	28	160	9114
// OP_STORE_V	9114	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	9068	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9068	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9115	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	28	161	9116
// OP_IFNOT	9116	11	0
// OP_LOAD_F	28	161	9117
// OP_STORE_V	9117	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	9068	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9068	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9118	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_STORE_ENT	29	28	0
// OP_NOT_F	35	0	9119
// OP_IFNOT	9119	4	0
// OP_ADDRESS	28	154	9120
// OP_STOREP_F	9071	9120	0
// OP_GOTO	4	0	0
// OP_STORE_V	9070	4	0
// OP_STORE_V	9071	7	0
// OP_CALL2	8569	0	0
// OP_CALL0	931	0	0
// OP_DONE	0	0	0
void () BackpackTouch = 
{
    local string s;
    local float best;
    local float old;
    local float new;
    local entity stemp;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    stemp = self;
    self = other;
    best = W_BestWeapon();
    self = stemp;
    other.ammo_shells = other.ammo_shells + self.ammo_shells;
    other.ammo_nails = other.ammo_nails + self.ammo_nails;
    other.ammo_rockets = other.ammo_rockets + self.ammo_rockets;
    other.ammo_cells = other.ammo_cells + self.ammo_cells;
    old = other.items;
    new = self.items;
    other.items = other.items | new;
    bound_other_ammo();
    
    if((((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells) > 0)
    {
        sprint(other, "You get ");
        
        if(self.ammo_shells)
        {
            s = ftos(self.ammo_shells);
            sprint(other, s);
            sprint(other, " shells  ");
        }
        
        
        if(self.ammo_nails)
        {
            s = ftos(self.ammo_nails);
            sprint(other, s);
            sprint(other, " nails ");
        }
        
        
        if(self.ammo_rockets)
        {
            s = ftos(self.ammo_rockets);
            sprint(other, s);
            sprint(other, " rockets  ");
        }
        
        
        if(self.ammo_cells)
        {
            s = ftos(self.ammo_cells);
            sprint(other, s);
            sprint(other, " cells  ");
        }
        
        sprint(other, "\n");
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
// function begins at statement 11700, parm_start=9122
// OP_LOAD_F	28	158	9123
// OP_LOAD_F	28	159	9124
// OP_ADD_F	9123	9124	9125
// OP_LOAD_F	28	160	9126
// OP_ADD_F	9125	9126	9127
// OP_LOAD_F	28	161	9128
// OP_ADD_F	9127	9128	9129
// OP_NOT_F	9129	0	9130
// OP_IFNOT	9130	2	0
// OP_RETURN	0	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	9122	0
// OP_ADDRESS	9122	105	9131
// OP_LOAD_V	28	105	9134
// OP_SUB_V	9134	9137	9140
// OP_STOREP_V	9140	9131	0
// OP_ADDRESS	9122	162	9143
// OP_LOAD_F	28	154	9144
// OP_STOREP_F	9144	9143	0
// OP_ADDRESS	9122	158	9145
// OP_LOAD_F	28	158	9146
// OP_STOREP_F	9146	9145	0
// OP_ADDRESS	9122	159	9147
// OP_LOAD_F	28	159	9148
// OP_STOREP_F	9148	9147	0
// OP_ADDRESS	9122	160	9149
// OP_LOAD_F	28	160	9150
// OP_STOREP_F	9150	9149	0
// OP_ADDRESS	9122	161	9151
// OP_LOAD_F	28	161	9152
// OP_STOREP_F	9152	9151	0
// OP_ADDRESS	9122	116	9153
// OP_STOREP_F	2299	9153	0
// OP_ADDRESS	9122	114	9154
// OP_CALL0	466	0	0
// OP_MUL_F	1	4760	9156
// OP_ADD_F	9155	9156	9157
// OP_STOREP_F	9157	9154	0
// OP_ADDRESS	9122	115	9158
// OP_CALL0	466	0	0
// OP_MUL_F	1	4760	9159
// OP_ADD_F	9155	9159	9160
// OP_STOREP_F	9160	9158	0
// OP_ADDRESS	9122	182	9161
// OP_STOREP_F	227	9161	0
// OP_ADDRESS	9122	104	9162
// OP_STOREP_F	244	9162	0
// OP_ADDRESS	9122	103	9163
// OP_STOREP_F	237	9163	0
// OP_STORE_V	9122	4	0
// OP_STORE_V	9164	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9122	4	0
// OP_STORE_V	6849	7	0
// OP_STORE_V	8539	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	9122	146	9165
// OP_STOREP_FNC	9067	9165	0
// OP_ADDRESS	9122	150	9166
// OP_ADD_F	31	5807	9167
// OP_STOREP_F	9167	9166	0
// OP_ADDRESS	9122	148	9168
// OP_STOREP_FNC	533	9168	0
// OP_DONE	0	0	0
void () DropBackpack = 
{
    local entity item;
    
    if(!(((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells))
    {
        return;
    }
    
    item = spawn();
    item.origin = self.origin - '0.000 0.000 24.000';
    item.items = self.weapon;
    item.ammo_shells = self.ammo_shells;
    item.ammo_nails = self.ammo_nails;
    item.ammo_rockets = self.ammo_rockets;
    item.ammo_cells = self.ammo_cells;
    item.velocity_z = 300;
    item.velocity_x = -100 + (random() * 200);
    item.velocity_y = -100 + (random() * 200);
    item.flags = FL_ITEM;
    item.solid = SOLID_TRIGGER;
    item.movetype = MOVETYPE_TOSS;
    setmodel(item, "progs/backpack.mdl");
    setsize(item, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    item.touch = BackpackTouch;
    item.nextthink = time + 120;
    item.think = SUB_Remove;
};

