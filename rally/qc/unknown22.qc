float unspawned_roos;
void () roo_stand;
void (float dist) roo_run;
// roo_stand1
// function begins at statement 26640, parm_start=18411
// OP_STATE	819	18411	0
// OP_CALL0	18408	0	0
// OP_DONE	0	0	0
void () roo_stand1 = [1, roo_stand2]
{
    roo_stand();
};

// roo_stand2
// function begins at statement 26643, parm_start=18412
// OP_STATE	821	18412	0
// OP_DONE	0	0	0
void () roo_stand2 = [2, roo_stand3]
{
};

// roo_stand3
// function begins at statement 26645, parm_start=18413
// OP_STATE	823	18413	0
// OP_DONE	0	0	0
void () roo_stand3 = [3, roo_stand4]
{
};

// roo_stand4
// function begins at statement 26647, parm_start=18414
// OP_STATE	825	18414	0
// OP_DONE	0	0	0
void () roo_stand4 = [4, roo_stand5]
{
};

// roo_stand5
// function begins at statement 26649, parm_start=18415
// OP_STATE	827	18410	0
// OP_DONE	0	0	0
void () roo_stand5 = [5, roo_stand1]
{
};

// roo_run1
// function begins at statement 26651, parm_start=18416
// OP_STATE	829	18416	0
// OP_STORE_V	834	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run1 = [6, roo_run2]
{
    roo_run(12);
};

// roo_run2
// function begins at statement 26655, parm_start=18417
// OP_STATE	839	18417	0
// OP_STORE_V	2670	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run2 = [7, roo_run3]
{
    roo_run(16);
};

// roo_run3
// function begins at statement 26659, parm_start=18418
// OP_STATE	843	18418	0
// OP_STORE_V	3974	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run3 = [8, roo_run4]
{
    roo_run(18);
};

// roo_run4
// function begins at statement 26663, parm_start=18419
// OP_STATE	847	18419	0
// OP_STORE_V	1112	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run4 = [9, roo_run5]
{
    roo_run(20);
};

// roo_run5
// function begins at statement 26667, parm_start=18420
// OP_STATE	855	18420	0
// OP_STORE_V	13015	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run5 = [10, roo_run6]
{
    roo_run(24);
};

// roo_run6
// function begins at statement 26671, parm_start=18421
// OP_STATE	831	18421	0
// OP_STORE_V	17369	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run6 = [11, roo_run7]
{
    roo_run(26);
};

// roo_run7
// function begins at statement 26675, parm_start=18422
// OP_STATE	834	18422	0
// OP_STORE_V	17369	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run7 = [12, roo_run8]
{
    roo_run(26);
};

// roo_run8
// function begins at statement 26679, parm_start=18423
// OP_STATE	834	18423	0
// OP_STORE_V	17363	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run8 = [12, roo_run9]
{
    roo_run(22);
};

// roo_run9
// function begins at statement 26683, parm_start=18424
// OP_STATE	837	18424	0
// OP_STORE_V	3974	4	0
// OP_CALL1	18409	0	0
// OP_DONE	0	0	0
void () roo_run9 = [13, roo_run10]
{
    roo_run(18);
};

// roo_run10
// function begins at statement 26687, parm_start=18425
// OP_STATE	841	18415	0
// OP_STORE_V	2670	4	0
// OP_CALL1	18409	0	0
// OP_LOAD_ENT	28	181	18425
// OP_LOAD_V	18425	105	18426
// OP_LOAD_V	28	105	18429
// OP_SUB_V	18426	18429	18432
// OP_STORE_V	18432	4	0
// OP_CALL1	471	0	0
// OP_LT	1	6067	18435
// OP_IFNOT	18435	16	0
// OP_ADDRESS	28	119	18436
// OP_LOAD_F	28	119	18437
// OP_STORE_V	18437	4	0
// OP_LOAD_F	28	119	18438
// OP_CALL0	466	0	0
// OP_LT	1	1182	18439
// OP_MUL_F	18439	821	18440
// OP_SUB_F	18440	819	18441
// OP_MUL_F	18441	1632	18442
// OP_ADD_F	18438	18442	18443
// OP_STORE_V	18443	7	0
// OP_STORE_V	3337	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	18436	0
// OP_GOTO	13	0	0
// OP_ADDRESS	28	119	18444
// OP_LOAD_F	28	119	18445
// OP_STORE_V	18445	4	0
// OP_LOAD_F	28	119	18446
// OP_CALL0	466	0	0
// OP_MUL_F	1	1632	18447
// OP_ADD_F	18446	18447	18448
// OP_SUB_F	18448	1112	18449
// OP_STORE_V	18449	7	0
// OP_STORE_V	3337	10	0
// OP_CALL3	1453	0	0
// OP_STOREP_F	1	18444	0
// OP_LOAD_V	28	105	18450
// OP_LOAD_ENT	28	181	18453
// OP_LOAD_V	18453	105	18454
// OP_SUB_V	18450	18454	18457
// OP_STORE_V	18457	4	0
// OP_CALL1	471	0	0
// OP_GT	1	4345	18460
// OP_IFNOT	18460	3	0
// OP_ADDRESS	28	148	18461
// OP_STOREP_FNC	18410	18461	0
// OP_ADDRESS	28	378	18462
// OP_CALL0	466	0	0
// OP_MUL_F	1	1182	18463
// OP_STOREP_F	18463	18462	0
// OP_DONE	0	0	0
void () roo_run10 = [14, roo_run1]
{
    roo_run(16);
    if((vlen(self.enemy.origin - self.origin)) < 128)
    {
        self.angles_y = MoveToAngle(self.angles_y, self.angles_y + ((((random() < 0.5) * 2) - 1) * 40), 1000);
    }
    else
    {
        self.angles_y = MoveToAngle(self.angles_y, (self.angles_y + (random() * 40)) - 20, 1000);
    }
    
    
    if((vlen(self.origin - self.enemy.origin)) > 384)
    {
        self.think = roo_stand1;
    }
    
    self.speed = random() * 0.5;
};

// roo_stand
// function begins at statement 26740, parm_start=18464
// OP_LOAD_V	28	105	18465
// OP_STORE_V	18465	4	0
// OP_STORE_V	18468	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	18464	0
// OP_NE_E	18464	30	18469
// OP_IFNOT	18469	13	0
// OP_LOAD_S	18464	129	18470
// OP_EQ_S	18470	880	18471
// OP_IFNOT	18471	7	0
// OP_ADDRESS	28	181	18472
// OP_STOREP_ENT	18464	18472	0
// OP_ADDRESS	28	148	18473
// OP_LOAD_FNC	28	372	18474
// OP_STOREP_FNC	18474	18473	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	18464	164	18475
// OP_STORE_ENT	18475	18464	0
// OP_GOTO	-13	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	855	18476
// OP_GE	18476	839	18477
// OP_IFNOT	18477	15	0
// OP_ADDRESS	28	181	18478
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STOREP_ENT	1	18478	0
// OP_NE_E	1	30	18479
// OP_IFNOT	18479	7	0
// OP_ADDRESS	28	181	18480
// OP_STOREP_ENT	18464	18480	0
// OP_ADDRESS	28	148	18481
// OP_LOAD_FNC	28	372	18482
// OP_STOREP_FNC	18482	18481	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () roo_stand = 
{
    local entity trav;
    trav = findradius(self.origin, 1024);
    
    while(trav != world)
    {
        
        if(trav.classname == "player")
        {
            self.enemy = trav;
            self.think = self.th_run;
            return;
        }
        
        trav = trav.chain;
    }
    
    
    if((random() * 10) >= 7)
    {
        self.enemy = find(world, classname, "player");
        
        if(find(world, classname, "player") != world)
        {
            self.enemy = trav;
            self.think = self.th_run;
            return;
        }
        
    }
    
};

// roo_pain
// function begins at statement 26778, parm_start=18484
// OP_LOAD_V	28	105	18484
// OP_STORE_V	18484	4	0
// OP_STORE_V	18487	7	0
// OP_STORE_V	1957	10	0
// OP_CALL3	9170	0	0
// OP_CALL0	18410	0	0
// OP_DONE	0	0	0
void () roo_pain = 
{
    SpawnBlood(self.origin, '0.000 0.000 -5.000', 100);
    roo_stand1();
};

// roo_run
// function begins at statement 26785, parm_start=18490
// OP_CALL0	492	0	0
// OP_LOAD_F	28	119	18491
// OP_STORE_V	18491	4	0
// OP_STORE_V	18490	7	0
// OP_CALL2	491	0	0
// OP_NOT_F	1	0	18492
// OP_IFNOT	18492	17	0
// OP_ADDRESS	28	119	18493
// OP_LOAD_F	28	119	18494
// OP_CALL0	466	0	0
// OP_GT	1	1182	18495
// OP_MUL_F	18495	821	18496
// OP_SUB_F	18496	819	18497
// OP_MUL_F	18497	17712	18498
// OP_ADD_F	18494	18498	18499
// OP_STOREP_F	18499	18493	0
// OP_ADDRESS	28	119	18500
// OP_LOAD_F	28	119	18501
// OP_STORE_V	18501	4	0
// OP_CALL1	859	0	0
// OP_STOREP_F	1	18500	0
// OP_LOAD_FNC	28	372	18502
// OP_RETURN	0	0	0
// OP_ADDRESS	28	150	18503
// OP_ADD_F	31	1988	18504
// OP_STOREP_F	18504	18503	0
// OP_DONE	0	0	0
void (float dist) roo_run = 
{
    droptofloor();
    
    if(!walkmove(self.angles_y, dist))
    {
        self.angles_y = self.angles_y + ((((random() > 0.5) * 2) - 1) * 135);
        self.angles_y = anglemod(self.angles_y);
        return;
    }
    
    self.nextthink = time + 0.05;
};

void () rally_spawn_kangaroo;
// spawn_roo
// function begins at statement 26812, parm_start=18507
// OP_STORE_F	817	18507	0
// OP_STORE_ENT	739	18510	0
// OP_NOT_F	18507	0	18511
// OP_IFNOT	18511	39	0
// OP_STORE_V	739	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	18512	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	739	0
// OP_EQ_E	739	30	18513
// OP_IFNOT	18513	6	0
// OP_STORE_V	739	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	18512	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	739	0
// OP_STORE_F	819	18507	0
// OP_LOAD_V	739	105	18514
// OP_STORE_V	18514	4	0
// OP_STORE_V	2657	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	18508	0
// OP_NE_E	18508	30	18517
// OP_AND	18517	18507	18518
// OP_IFNOT	18518	12	0
// OP_LOAD_F	18508	104	18519
// OP_EQ_F	18519	243	18520
// OP_LOAD_F	18508	104	18521
// OP_EQ_F	18521	244	18522
// OP_OR	18520	18522	18523
// OP_NOT_F	18523	0	18524
// OP_IFNOT	18524	2	0
// OP_STORE_F	817	18507	0
// OP_LOAD_ENT	18508	164	18525
// OP_STORE_ENT	18525	18508	0
// OP_GOTO	-13	0	0
// OP_NOT_F	18507	0	18526
// OP_EQ_E	18510	739	18527
// OP_AND	18526	18527	18528
// OP_IFNOT	18528	2	0
// OP_RETURN	817	0	0
// OP_GOTO	-39	0	0
// OP_STORE_ENT	28	18509	0
// OP_STORE_ENT	739	28	0
// OP_CALL0	18505	0	0
// OP_STORE_ENT	18509	28	0
// OP_DONE	0	0	0
float () spawn_roo = 
{
    local float clear;
    local entity trav;
    local entity oself;
    local entity first_spawn;
    clear = 0;
    first_spawn = last_roo_spawn;
    
    while(!clear)
    {
        last_roo_spawn = find(last_roo_spawn, classname, "rally_spawn_kangaroo");
        
        if(last_roo_spawn == world)
        {
            last_roo_spawn = find(last_roo_spawn, classname, "rally_spawn_kangaroo");
        }
        
        clear = 1;
        trav = findradius(last_roo_spawn.origin, 32);
        
        while((trav != world) && clear)
        {
            
            if(!((trav.solid == SOLID_NOT) || (trav.solid == SOLID_TRIGGER)))
            {
                clear = 0;
            }
            
            trav = trav.chain;
        }
        
        
        if(!clear && (first_spawn == last_roo_spawn))
        {
            return 0;
        }
        
    }
    
    oself = self;
    self = last_roo_spawn;
    rally_spawn_kangaroo();
    self = oself;
};

// spawn_nailbox
// function begins at statement 26859, parm_start=18530
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	18530	0
// OP_STORE_V	18530	4	0
// OP_LOAD_V	28	105	18532
// OP_ADD_V	18532	7028	18535
// OP_STORE_V	18535	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	18530	117	18538
// OP_STOREP_V	926	18538	0
// OP_STORE_ENT	28	18531	0
// OP_STORE_ENT	18530	28	0
// OP_ADDRESS	28	146	18541
// OP_STOREP_FNC	7171	18541	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8835	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	433	18542
// OP_STOREP_F	1380	18542	0
// OP_ADDRESS	28	154	18543
// OP_STOREP_F	821	18543	0
// OP_ADDRESS	28	180	18544
// OP_STOREP_S	8839	18544	0
// OP_STORE_V	28	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	8441	10	0
// OP_CALL3	464	0	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	18545
// OP_IFNOT	18545	5	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_STORE_ENT	18531	28	0
// OP_RETURN	0	0	0
// OP_CALL0	8366	0	0
// OP_ADDRESS	28	148	18546
// OP_STOREP_FNC	533	18546	0
// OP_ADDRESS	28	150	18547
// OP_ADD_F	31	855	18548
// OP_STOREP_F	18548	18547	0
// OP_STORE_ENT	18531	28	0
// OP_DONE	0	0	0
void () spawn_nailbox = 
{
    local entity nailbox;
    local entity oself;
    nailbox = spawn();
    setorigin(nailbox, self.origin + '0.000 0.000 32.000');
    nailbox.angles = '0.000 0.000 0.000';
    oself = self;
    self = nailbox;
    self.touch = ammo_touch;
    setmodel(self, "maps/b_nail0.bsp");
    self.aflag = 25;
    self.weapon = 2;
    self.netname = "nails";
    setsize(self, '0.000 0.000 0.000', '32.000 32.000 56.000');
    
    if(!droptofloor())
    {
        remove(self);
        self = oself;
        return;
    }
    
    PlaceItem();
    self.think = SUB_Remove;
    self.nextthink = time + 10;
    self = oself;
};

// roo_die
// function begins at statement 26900, parm_start=18550
// OP_LOAD_S	29	129	18554
// OP_EQ_S	18554	880	18555
// OP_IFNOT	18555	4	0
// OP_LOAD_V	29	113	18556
// OP_STORE_V	18556	18550	0
// OP_GOTO	2	0	0
// OP_STORE_V	926	18550	0
// OP_STORE_V	12129	4	0
// OP_STORE_V	18550	7	0
// OP_CALL2	18142	0	0
// OP_STORE_V	12130	4	0
// OP_STORE_V	18550	7	0
// OP_CALL2	18142	0	0
// OP_STORE_V	12130	4	0
// OP_STORE_V	18550	7	0
// OP_CALL2	18142	0	0
// OP_STORE_V	12131	4	0
// OP_STORE_V	18550	7	0
// OP_CALL2	18142	0	0
// OP_STORE_V	12131	4	0
// OP_STORE_V	18550	7	0
// OP_CALL2	18142	0	0
// OP_ADDRESS	28	165	18559
// OP_STOREP_F	254	18559	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12086	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	104	18560
// OP_STOREP_F	243	18560	0
// OP_LOAD_S	29	129	18561
// OP_NE_S	18561	880	18562
// OP_IFNOT	18562	2	0
// OP_CALL0	18529	0	0
// OP_ADD_F	18407	819	18563
// OP_STORE_F	18563	18407	0
// OP_STORE_F	817	18553	0
// OP_GT	18407	817	18564
// OP_NOT_F	18553	0	18565
// OP_AND	18564	18565	18566
// OP_IFNOT	18566	8	0
// OP_CALL0	18506	0	0
// OP_IFNOT	1	4	0
// OP_SUB_F	18407	819	18567
// OP_STORE_F	18567	18407	0
// OP_GOTO	2	0	0
// OP_STORE_F	819	18553	0
// OP_GOTO	-10	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () roo_die = 
{
    local vector impact;
    local float done;
    if(other.classname == "player")
    {
        impact = other.velocity;
    }
    else
    {
        impact = '0.000 0.000 0.000';
    }
    
    ThrowDudeGib("progs/gib1.mdl", impact);
    ThrowDudeGib("progs/gib2.mdl", impact);
    ThrowDudeGib("progs/gib2.mdl", impact);
    ThrowDudeGib("progs/gib3.mdl", impact);
    ThrowDudeGib("progs/gib3.mdl", impact);
    self.deadflag = DEAD_DEAD;
    sound(self, CHAN_VOICE, "player/gib.wav", 1, ATTN_NONE);
    self.solid = SOLID_NOT;
    
    if(other.classname != "player")
    {
        spawn_nailbox();
    }
    
    unspawned_roos = unspawned_roos + 1;
    done = 0;
    
    while((unspawned_roos > 0) && !done)
    {
        if(spawn_roo())
        {
            unspawned_roos = unspawned_roos - 1;
        }
        else
        {
            done = 1;
        }
        
    }
    
    remove(self);
};

// roo_touch
// function begins at statement 26953, parm_start=18569
// OP_LOAD_S	29	129	18570
// OP_NE_S	18570	880	18571
// OP_IFNOT	18571	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	29	113	18572
// OP_STORE_V	18572	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	778	823	18575
// OP_LT	1	18575	18576
// OP_IFNOT	18576	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	18577	7	0
// OP_CALL2	483	0	0
// OP_LOAD_F	29	154	18578
// OP_EQ_F	18578	277	18579
// OP_LOAD_F	29	217	18580
// OP_GT	18580	817	18581
// OP_AND	18579	18581	18582
// OP_IFNOT	18582	21	0
// OP_ADDRESS	29	157	18583
// OP_ADDRESS	29	217	18584
// OP_LOAD_F	29	217	18585
// OP_SUB_F	18585	821	18586
// OP_STOREP_F	18586	18584	0
// OP_STOREP_F	18586	18583	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	3631	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_ENT	29	548	18587
// OP_ADDRESS	18587	133	18588
// OP_LOAD_ENT	29	548	18589
// OP_LOAD_F	18589	133	18590
// OP_BITOR	18590	350	18591
// OP_STOREP_F	18591	18588	0
// OP_ADDRESS	29	656	18592
// OP_STOREP_F	31	18592	0
// OP_CALL0	466	0	0
// OP_STORE_F	1	18569	0
// OP_LT	18569	2869	18593
// OP_IFNOT	18593	20	0
// OP_STORE_V	29	4	0
// OP_STORE_V	18594	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	9032	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	29	162	18595
// OP_LOAD_F	29	162	18596
// OP_BITOR	18596	287	18597
// OP_STOREP_F	18597	18595	0
// OP_ADDRESS	29	393	18598
// OP_STOREP_F	819	18598	0
// OP_ADDRESS	29	389	18599
// OP_ADD_F	31	1112	18600
// OP_STOREP_F	18600	18599	0
// OP_GOTO	22	0	0
// OP_LT	18569	2575	18601
// OP_IFNOT	18601	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	18602	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	29	644	18603
// OP_LOAD_F	29	644	18604
// OP_BITOR	18604	699	18605
// OP_STOREP_F	18605	18603	0
// OP_ADDRESS	29	681	18606
// OP_STOREP_F	31	18606	0
// OP_GOTO	10	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	18607	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	29	157	18608
// OP_ADDRESS	29	160	18609
// OP_LOAD_F	29	160	18610
// OP_ADD_F	18610	823	18611
// OP_STOREP_F	18611	18609	0
// OP_STOREP_F	18611	18608	0
// OP_ADDRESS	28	181	18612
// OP_STOREP_ENT	29	18612	0
// OP_CALL0	18549	0	0
// OP_DONE	0	0	0
void () roo_touch = 
{
    local float rnd;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(vlen(other.velocity) < (MAX_SPEED / 3))
    {
        return;
    }
    
    sprint(other, "Road Kill!\nPouch bonus: ");
    
    if((other.weapon == IT_ROOBAR) && (other.ammo_roobar > 0))
    {
        other.currentammo = other.ammo_roobar = other.ammo_roobar - 2;
        sound(self, CHAN_AUTO, "rally/process/elect02.wav", 1, ATTN_NORM);
        other.veh_body.effects = other.veh_body.effects | EF_DIMLIGHT;
        other.last_crash = time;
    }
    
    rnd = random();
    if(rnd < 0.1)
    {
        sprint(other, "20 seconds of Protection!\n");
        sound(other, CHAN_VOICE, "items/protect.wav", 1, ATTN_NORM);
        other.items = other.items | IT_INVULNERABILITY;
        other.invincible_time = 1;
        other.invincible_finished = time + 20;
    }
    else
    {
        if(rnd < 0.3)
        {
            sprint(other, "Extra Traction!\n");
            other.racing_flags = other.racing_flags | QR_FULL_TRACTION;
            other.full_traction_time = time;
        }
        else
        {
            sprint(other, "3 rockets!\n");
            other.currentammo = other.ammo_rockets = other.ammo_rockets + 3;
        }
        
    }
    
    self.enemy = other;
    roo_die();
};

// rally_spawn_kangaroo
// function begins at statement 27041, parm_start=18613
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	18613	0
// OP_ADDRESS	18613	117	18614
// OP_LOAD_V	28	117	18617
// OP_STOREP_V	18617	18614	0
// OP_STORE_V	18613	4	0
// OP_LOAD_V	28	105	18620
// OP_STORE_V	18620	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	18613	182	18623
// OP_LOAD_F	18613	182	18624
// OP_BITOR	18624	224	18625
// OP_STOREP_F	18625	18623	0
// OP_STORE_ENT	18613	28	0
// OP_ADDRESS	28	129	18626
// OP_STOREP_S	7244	18626	0
// OP_ADDRESS	28	104	18627
// OP_STOREP_F	246	18627	0
// OP_ADDRESS	28	103	18628
// OP_STOREP_F	235	18628	0
// OP_ADDRESS	28	163	18629
// OP_STOREP_F	258	18629	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12146	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	303	7	0
// OP_STORE_V	306	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	152	18630
// OP_STOREP_F	5807	18630	0
// OP_CALL0	492	0	0
// OP_NOT_F	1	0	18631
// OP_IFNOT	18631	10	0
// OP_STORE_V	18632	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	18633
// OP_STORE_V	18633	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_ADDRESS	28	146	18636
// OP_STOREP_FNC	18568	18636	0
// OP_ADDRESS	28	370	18637
// OP_STOREP_FNC	18410	18637	0
// OP_ADDRESS	28	371	18638
// OP_STOREP_FNC	18410	18638	0
// OP_ADDRESS	28	372	18639
// OP_STOREP_FNC	18415	18639	0
// OP_ADDRESS	28	376	18640
// OP_STOREP_FNC	18549	18640	0
// OP_ADDRESS	28	375	18641
// OP_STOREP_FNC	18483	18641	0
// OP_CALL0	15294	0	0
// OP_DONE	0	0	0
void () rally_spawn_kangaroo = 
{
    local entity roo;
    roo = spawn();
    roo.angles = self.angles;
    setorigin(roo, self.origin);
    roo.flags = roo.flags | FL_MONSTER;
    self = roo;
    self.classname = "rally_kangaroo";
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.takedamage = DAMAGE_AIM;
    setmodel(self, "models/kangaroo.mdl");
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.health = 120;
    
    if(!droptofloor())
    {
        dprint("roo fell out of level at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.touch = roo_touch;
    self.th_stand = roo_stand1;
    self.th_walk = roo_stand1;
    self.th_run = roo_run1;
    self.th_die = roo_die;
    self.th_pain = roo_pain;
    walkmonster_start();
};

