// endEnemy
// function begins at statement 24374, parm_start=14478
// OP_LOAD_ENT	28	181	14479
// OP_STORE_ENT	14479	14478	0
// OP_LOAD_F	28	365	14480
// OP_BITAND	14480	601	14481
// OP_IFNOT	14481	5	0
// OP_ADDRESS	28	365	14482
// OP_LOAD_F	28	365	14483
// OP_SUB_F	14483	601	14484
// OP_STOREP_F	14484	14482	0
// OP_LOAD_F	28	365	14485
// OP_BITAND	14485	603	14486
// OP_IFNOT	14486	5	0
// OP_ADDRESS	28	365	14487
// OP_LOAD_F	28	365	14488
// OP_SUB_F	14488	603	14489
// OP_STOREP_F	14489	14487	0
// OP_ADDRESS	28	181	14490
// OP_STOREP_ENT	30	14490	0
// OP_ADDRESS	28	148	14491
// OP_LOAD_FNC	28	357	14492
// OP_STOREP_FNC	14492	14491	0
// OP_ADDRESS	28	150	14493
// OP_ADD_F	31	993	14494
// OP_STOREP_F	14494	14493	0
// OP_ADDRESS	28	366	14495
// OP_SUB_F	31	214	14496
// OP_STOREP_F	14496	14495	0
// OP_ADDRESS	28	537	14497
// OP_STOREP_F	213	14497	0
// OP_LOAD_ENT	28	194	14498
// OP_ADDRESS	14498	194	14499
// OP_LOAD_ENT	28	194	14500
// OP_STOREP_ENT	14500	14499	0
// OP_LOAD_S	14478	129	14501
// OP_EQ_S	14501	1102	14502
// OP_IFNOT	14502	6	0
// OP_LOAD_ENT	14478	181	14503
// OP_EQ_E	14503	28	14504
// OP_IFNOT	14504	3	0
// OP_ADDRESS	14478	181	14505
// OP_STOREP_ENT	30	14505	0
// OP_DONE	0	0	0
void () endEnemy = 
{
    local entity olden;
    olden = self.enemy;
    
    if(self.lefty & GETGOODY)
    {
        self.lefty = self.lefty - GETGOODY;
    }
    
    
    if(self.lefty & MULTIENEMY)
    {
        self.lefty = self.lefty - MULTIENEMY;
    }
    
    self.enemy = world;
    self.think = self.th_walk;
    self.nextthink = time + 0.100;
    self.search_time = time - TRUE;
    self.enemyrun = FALSE;
    self.goalentity.goalentity = self.goalentity;
    
    if(olden.classname == "player")
    {
        
        if(olden.enemy == self)
        {
            olden.enemy = world;
        }
        
    }
    
};

// CallForHelp
// function begins at statement 24416, parm_start=14507
// OP_STORE_F	214	623	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	14507	0
// OP_IFNOT	14507	72	0
// OP_NE_E	14507	28	14511
// OP_IFNOT	14511	64	0
// OP_LOAD_F	14507	184	14512
// OP_LOAD_F	28	184	14513
// OP_EQ_F	14512	14513	14514
// OP_IFNOT	14514	60	0
// OP_LOAD_ENT	14507	181	14515
// OP_EQ_E	14515	30	14516
// OP_IFNOT	14516	57	0
// OP_LOAD_F	14507	152	14517
// OP_GT	14517	1178	14518
// OP_IFNOT	14518	54	0
// OP_LOAD_F	14507	162	14519
// OP_ADD_F	259	260	14520
// OP_ADD_F	14520	257	14521
// OP_ADD_F	14521	255	14522
// OP_ADD_F	14522	258	14523
// OP_BITAND	14519	14523	14524
// OP_IFNOT	14524	47	0
// OP_STORE_V	14507	4	0
// OP_LOAD_ENT	28	181	14525
// OP_STORE_V	14525	7	0
// OP_CALL2	12119	0	0
// OP_STORE_ENT	1	14508	0
// OP_LOAD_V	14507	105	14526
// OP_STORE_V	14526	4	0
// OP_LOAD_ENT	28	181	14529
// OP_LOAD_V	14529	105	14530
// OP_STORE_V	14530	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	14507	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	14533
// OP_LOAD_ENT	14508	569	14534
// OP_LOAD_ENT	28	181	14535
// OP_EQ_E	14534	14535	14536
// OP_OR	14533	14536	14537
// OP_IFNOT	14537	28	0
// OP_IFNOT	604	9	0
// OP_LOAD_S	14507	571	14538
// OP_STORE_V	14538	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	14507	180	14539
// OP_STORE_V	14539	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14540	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	14507	181	14541
// OP_LOAD_ENT	28	181	14542
// OP_STOREP_ENT	14542	14541	0
// OP_STORE_ENT	28	14509	0
// OP_STORE_ENT	14507	28	0
// OP_CALL0	1850	0	0
// OP_LOAD_ENT	28	194	14543
// OP_LOAD_S	14543	129	14544
// OP_NE_S	14544	12122	14545
// OP_IFNOT	14545	3	0
// OP_STORE_V	14546	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	14547
// OP_STORE_V	14547	4	0
// OP_LOAD_V	14508	105	14548
// OP_STORE_V	14548	7	0
// OP_CALL2	448	0	0
// OP_STORE_ENT	14509	28	0
// OP_STORE_V	14507	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	14507	0
// OP_GOTO	-71	0	0
// OP_STORE_F	213	623	0
// OP_DONE	0	0	0
void () CallForHelp = 
{
    local entity e;
    local entity p;
    local entity tmp;
    local float d;
    HELPING = TRUE;
    e = find(world, classname, "dmbot");
    
    while(e)
    {
        
        if(e != self)
        {
            
            if(e.team == self.team)
            {
                
                if(e.enemy == world)
                {
                    
                    if(e.health > 80.000)
                    {
                        
                        if(e.items & ((((IT_ROCKET_LAUNCHER + IT_LIGHTNING) + IT_SUPER_NAILGUN) + IT_SUPER_SHOTGUN) + IT_GRENADE_LAUNCHER))
                        {
                            p = BestChaseRoute(e, self.enemy);
                            traceline(e.origin, self.enemy.origin, TRUE, e);
                            
                            if((trace_fraction == TRUE) || (p.enemycache == self.enemy))
                            {
                                
                                if(VERBOSEBOT)
                                {
                                    dprint(e.teamname);
                                    dprint(e.netname);
                                    dprint(" coming to help!\n");
                                }
                                
                                e.enemy = self.enemy;
                                tmp = self;
                                self = e;
                                BotFoundTarget();
                                
                                if(self.goalentity.classname != "BotTarget")
                                {
                                    objerror("bad bot target in bot_ai! 1\n");
                                }
                                
                                setorigin(self.goalentity, p.origin);
                                self = tmp;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        e = find(e, classname, "dmbot");
    }
    
    HELPING = FALSE;
};

// RunAway
// function begins at statement 24496, parm_start=14552
// OP_LOAD_F	28	162	14553
// OP_BITAND	14553	273	14554
// OP_IFNOT	14554	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	14555
// OP_LOAD_F	14555	162	14556
// OP_BITAND	14556	273	14557
// OP_IFNOT	14557	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28	181	14558
// OP_LOAD_F	14558	152	14559
// OP_LT	14559	575	14560
// OP_IFNOT	14560	2	0
// OP_RETURN	213	0	0
// OP_CALL0	11009	0	0
// OP_STORE_F	1	14552	0
// OP_ADD_F	259	260	14561
// OP_BITAND	14552	14561	14562
// OP_IFNOT	14562	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	162	14563
// OP_BITAND	14563	275	14564
// OP_IFNOT	14564	9	0
// OP_LOAD_F	28	152	14565
// OP_LOAD_F	28	188	14566
// OP_LOAD_F	28	187	14567
// OP_MUL_F	14566	14567	14568
// OP_ADD_F	14565	14568	14569
// OP_GT	14569	756	14570
// OP_IFNOT	14570	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	152	14571
// OP_LT	14571	1770	14572
// OP_IFNOT	14572	2	0
// OP_RETURN	214	0	0
// OP_ADD_F	254	253	14573
// OP_ADD_F	14573	256	14574
// OP_BITAND	14552	14574	14575
// OP_IFNOT	14575	13	0
// OP_LOAD_ENT	28	181	14576
// OP_LOAD_F	14576	162	14577
// OP_BITAND	14577	275	14578
// OP_IFNOT	14578	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28	181	14579
// OP_LOAD_F	14579	154	14580
// OP_ADD_F	259	260	14581
// OP_ADD_F	14581	257	14582
// OP_BITAND	14580	14582	14583
// OP_IFNOT	14583	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	365	14584
// OP_BITAND	14584	603	14585
// OP_IFNOT	14585	5	0
// OP_LOAD_F	28	152	14586
// OP_LT	14586	5984	14587
// OP_IFNOT	14587	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () RunAway = 
{
    local float weap;
    
    if(self.items & IT_INVULNERABILITY)
    {
        return FALSE;
    }
    
    
    if(self.enemy.items & IT_INVULNERABILITY)
    {
        return TRUE;
    }
    
    
    if(self.enemy.health < WANT)
    {
        return FALSE;
    }
    
    weap = W_BestHeldWeapon();
    
    if(weap & (IT_ROCKET_LAUNCHER + IT_LIGHTNING))
    {
        return FALSE;
    }
    
    
    if(self.items & IT_QUAD)
    {
        
        if((self.health + (self.armorvalue * self.armortype)) > 50.000)
        {
            return FALSE;
        }
        
    }
    
    
    if(self.health < 45.000)
    {
        return TRUE;
    }
    
    
    if(weap & ((IT_SHOTGUN + IT_AXE) + IT_NAILGUN))
    {
        
        if(self.enemy.items & IT_QUAD)
        {
            return TRUE;
        }
        
        
        if(self.enemy.weapon & ((IT_ROCKET_LAUNCHER + IT_LIGHTNING) + IT_SUPER_NAILGUN))
        {
            return TRUE;
        }
        
    }
    
    
    if(self.lefty & MULTIENEMY)
    {
        
        if(self.health < 70.000)
        {
            return TRUE;
        }
        
    }
    
    return FALSE;
};

// BotHuntTarget
// function begins at statement 24556, parm_start=14589
// OP_IFNOT	604	19	0
// OP_LOAD_S	28	571	14589
// OP_STORE_V	14589	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	180	14590
// OP_STORE_V	14590	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14591	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	181	14592
// OP_LOAD_S	14592	571	14593
// OP_STORE_V	14593	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	181	14594
// OP_LOAD_S	14594	180	14595
// OP_STORE_V	14595	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14596	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	537	14597
// OP_STOREP_F	213	14597	0
// OP_ADDRESS	28	539	14598
// OP_STOREP_F	213	14598	0
// OP_LOAD_F	28	365	14599
// OP_BITAND	14599	602	14600
// OP_IFNOT	14600	5	0
// OP_ADDRESS	28	365	14601
// OP_LOAD_F	28	365	14602
// OP_SUB_F	14602	602	14603
// OP_STOREP_F	14603	14601	0
// OP_LOAD_ENT	28	194	14604
// OP_ADDRESS	14604	194	14605
// OP_LOAD_ENT	28	181	14606
// OP_STOREP_ENT	14606	14605	0
// OP_LOAD_ENT	28	181	14607
// OP_LOAD_ENT	14607	181	14608
// OP_EQ_E	14608	30	14609
// OP_IFNOT	14609	4	0
// OP_LOAD_ENT	28	181	14610
// OP_ADDRESS	14610	181	14611
// OP_STOREP_ENT	28	14611	0
// OP_LOAD_ENT	28	194	14612
// OP_LOAD_S	14612	129	14613
// OP_NE_S	14613	12122	14614
// OP_IFNOT	14614	3	0
// OP_STORE_V	14615	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	14616
// OP_STORE_V	14616	4	0
// OP_LOAD_ENT	28	181	14617
// OP_LOAD_V	14617	105	14618
// OP_STORE_V	14618	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	148	14621
// OP_LOAD_FNC	28	358	14622
// OP_STOREP_FNC	14622	14621	0
// OP_ADDRESS	28	540	14623
// OP_STOREP_F	213	14623	0
// OP_ADDRESS	28	191	14624
// OP_LOAD_ENT	28	181	14625
// OP_LOAD_V	14625	105	14626
// OP_LOAD_V	28	105	14629
// OP_SUB_V	14626	14629	14632
// OP_STORE_V	14632	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	14624	0
// OP_ADDRESS	28	365	14635
// OP_LOAD_F	28	365	14636
// OP_LOAD_F	28	365	14637
// OP_BITAND	14637	595	14638
// OP_SUB_F	14636	14638	14639
// OP_ADD_F	14639	231	14640
// OP_STOREP_F	14640	14635	0
// OP_ADDRESS	28	150	14641
// OP_ADD_F	31	993	14642
// OP_STOREP_F	14642	14641	0
// OP_ADDRESS	28	373	14643
// OP_ADD_F	31	3328	14644
// OP_LOAD_F	28	553	14645
// OP_MUL_F	1226	14645	14646
// OP_SUB_F	14644	14646	14647
// OP_STOREP_F	14647	14643	0
// OP_ADDRESS	28	366	14648
// OP_ADD_F	31	232	14649
// OP_STOREP_F	14649	14648	0
// OP_STORE_V	28	4	0
// OP_CALL1	11242	0	0
// OP_IFNOT	37	4	0
// OP_NOT_F	623	0	14650
// OP_IFNOT	14650	2	0
// OP_CALL0	14506	0	0
// OP_DONE	0	0	0
void () BotHuntTarget = 
{
    
    if(VERBOSEBOT)
    {
        dprint(self.teamname);
        dprint(self.netname);
        dprint(": Go kick ");
        dprint(self.enemy.teamname);
        dprint(self.enemy.netname);
        dprint("'s ass!\n");
    }
    
    self.enemyrun = FALSE;
    self.strafetime = FALSE;
    
    if(self.lefty & ONTRAIN)
    {
        self.lefty = self.lefty - ONTRAIN;
    }
    
    self.goalentity.goalentity = self.enemy;
    
    if(self.enemy.enemy == world)
    {
        self.enemy.enemy = self;
    }
    
    
    if(self.goalentity.classname != "BotTarget")
    {
        objerror("bad bot target in bot_ai! 2\n");
    }
    
    setorigin(self.goalentity, self.enemy.origin);
    self.think = self.th_run;
    self.strafeonly = FALSE;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    self.lefty = (self.lefty - (self.lefty & LOCAL_TIME)) + MOVETYPE_TOSS;
    self.nextthink = time + 0.100;
    self.attack_finished = (time + 0.700) - (0.200 * self.skil);
    self.search_time = time + MOVETYPE_PUSH;
    clearCache(self);
    
    if(teamplay)
    {
        
        if(!HELPING)
        {
            CallForHelp();
        }
        
    }
    
};

// BotFoundTarget
// function begins at statement 24648, parm_start=14651
// OP_LOAD_ENT	28	181	14651
// OP_EQ_E	14651	30	14652
// OP_IFNOT	14652	2	0
// OP_RETURN	213	0	0
// OP_IFNOT	37	9	0
// OP_LOAD_ENT	28	181	14653
// OP_LOAD_F	14653	184	14654
// OP_LOAD_F	28	184	14655
// OP_EQ_F	14654	14655	14656
// OP_IFNOT	14656	4	0
// OP_ADDRESS	28	181	14657
// OP_STOREP_ENT	30	14657	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	165	14658
// OP_NE_F	14658	246	14659
// OP_IFNOT	14659	4	0
// OP_ADDRESS	28	181	14660
// OP_STOREP_ENT	30	14660	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	14661
// OP_LOAD_F	14661	165	14662
// OP_NE_F	14662	246	14663
// OP_IFNOT	14663	4	0
// OP_ADDRESS	28	181	14664
// OP_STOREP_ENT	30	14664	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	14665
// OP_LOAD_S	14665	129	14666
// OP_NE_S	14666	1102	14667
// OP_LOAD_ENT	28	181	14668
// OP_LOAD_S	14668	129	14669
// OP_NE_S	14669	2056	14670
// OP_AND	14667	14670	14671
// OP_IFNOT	14671	4	0
// OP_ADDRESS	28	181	14672
// OP_STOREP_ENT	30	14672	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	14673
// OP_EQ_E	14673	28	14674
// OP_IFNOT	14674	4	0
// OP_ADDRESS	28	181	14675
// OP_STOREP_ENT	30	14675	0
// OP_RETURN	213	0	0
// OP_CALL0	14588	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () BotFoundTarget = 
{
    
    if(self.enemy == world)
    {
        return FALSE;
    }
    
    
    if(teamplay)
    {
        
        if(self.enemy.team == self.team)
        {
            self.enemy = world;
            return FALSE;
        }
        
    }
    
    
    if(self.deadflag != DEAD_NO)
    {
        self.enemy = world;
        return FALSE;
    }
    
    
    if(self.enemy.deadflag != DEAD_NO)
    {
        self.enemy = world;
        return FALSE;
    }
    
    
    if((self.enemy.classname != "player") && (self.enemy.classname != "dmbot"))
    {
        self.enemy = world;
        return FALSE;
    }
    
    
    if(self.enemy == self)
    {
        self.enemy = world;
        return FALSE;
    }
    
    BotHuntTarget();
    return TRUE;
};

// secondEnemy
// function begins at statement 24694, parm_start=14676
// OP_LOAD_ENT	28	181	14677
// OP_LOAD_S	14677	129	14678
// OP_NE_S	14678	1102	14679
// OP_IFNOT	14679	9	0
// OP_LOAD_S	14676	129	14680
// OP_EQ_S	14680	1102	14681
// OP_IFNOT	14681	6	0
// OP_CALL0	1852	0	0
// OP_ADDRESS	28	181	14682
// OP_STOREP_ENT	14676	14682	0
// OP_CALL0	1850	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	14683
// OP_STORE_V	14683	4	0
// OP_CALL1	13319	0	0
// OP_NOT_F	1	0	14684
// OP_IFNOT	14684	5	0
// OP_CALL0	1852	0	0
// OP_ADDRESS	28	181	14685
// OP_STOREP_ENT	14676	14685	0
// OP_CALL0	1850	0	0
// OP_LOAD_F	14676	154	14686
// OP_ADD_F	260	259	14687
// OP_BITAND	14686	14687	14688
// OP_IFNOT	14688	11	0
// OP_LOAD_ENT	28	181	14689
// OP_LOAD_F	14689	154	14690
// OP_ADD_F	260	259	14691
// OP_BITAND	14690	14691	14692
// OP_NOT_F	14692	0	14693
// OP_IFNOT	14693	5	0
// OP_CALL0	1852	0	0
// OP_ADDRESS	28	181	14694
// OP_STOREP_ENT	14676	14694	0
// OP_CALL0	1850	0	0
// OP_DONE	0	0	0
void (entity en2) secondEnemy = 
{
    
    if(self.enemy.classname != "player")
    {
        
        if(en2.classname == "player")
        {
            endEnemy();
            self.enemy = en2;
            BotFoundTarget();
            return;
        }
        
    }
    
    
    if(!enemyvisible(self.enemy))
    {
        endEnemy();
        self.enemy = en2;
        BotFoundTarget();
    }
    
    
    if(en2.weapon & (IT_LIGHTNING + IT_ROCKET_LAUNCHER))
    {
        
        if(!(self.enemy.weapon & (IT_LIGHTNING + IT_ROCKET_LAUNCHER)))
        {
            endEnemy();
            self.enemy = en2;
            BotFoundTarget();
        }
        
    }
    
};

// BotfindBot
// function begins at statement 24730, parm_start=14696
// OP_LOAD_ENT	28	549	14698
// OP_NOT_ENT	14698	0	14699
// OP_IFNOT	14699	7	0
// OP_ADDRESS	28	549	14700
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	14700	0
// OP_STORE_F	229	14696	0
// OP_GT	14696	213	14701
// OP_IFNOT	14701	42	0
// OP_SUB_F	14696	214	14702
// OP_STORE_F	14702	14696	0
// OP_LOAD_ENT	28	549	14703
// OP_STORE_ENT	14703	14697	0
// OP_NOT_F	37	0	14704
// OP_LOAD_F	28	184	14705
// OP_LOAD_F	14697	184	14706
// OP_NE_F	14705	14706	14707
// OP_OR	14704	14707	14708
// OP_IFNOT	14708	16	0
// OP_NE_E	14697	28	14709
// OP_IFNOT	14709	14	0
// OP_LOAD_ENT	28	181	14710
// OP_NE_E	14697	14710	14711
// OP_IFNOT	14711	11	0
// OP_STORE_V	14697	4	0
// OP_CALL1	1127	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_F	14697	152	14712
// OP_GT	14712	213	14713
// OP_IFNOT	14713	5	0
// OP_ADDRESS	28	181	14714
// OP_STOREP_ENT	14697	14714	0
// OP_CALL0	1850	0	0
// OP_RETURN	1	0	0
// OP_ADDRESS	28	549	14715
// OP_STORE_V	14697	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	14715	0
// OP_LOAD_ENT	28	549	14716
// OP_NOT_ENT	14716	0	14717
// OP_IFNOT	14717	7	0
// OP_ADDRESS	28	549	14718
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	14718	0
// OP_GOTO	-42	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () BotfindBot = 
{
    local float n;
    local entity bots;
    
    if(!self.lastbot)
    {
        self.lastbot = find(world, classname, "dmbot");
    }
    
    n = MOVETYPE_STEP;
    
    while(n > FALSE)
    {
        n = n - TRUE;
        bots = self.lastbot;
        
        if(!teamplay || (self.team != bots.team))
        {
            
            if(bots != self)
            {
                
                if(bots != self.enemy)
                {
                    
                    if(visible(bots))
                    {
                        
                        if(bots.health > FALSE)
                        {
                            self.enemy = bots;
                            return BotFoundTarget();
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        self.lastbot = find(bots, classname, "dmbot");
        
        if(!self.lastbot)
        {
            self.lastbot = find(world, classname, "dmbot");
        }
        
    }
    
    return FALSE;
};

// BotFindTarget
// function begins at statement 24785, parm_start=14719
// OP_CALL0	462	0	0
// OP_STORE_ENT	1	14719	0
// OP_NOT_ENT	14719	0	14722
// OP_IFNOT	14722	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_LOAD_S	14719	129	14723
// OP_EQ_S	14723	2455	14724
// OP_IFNOT	14724	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_LOAD_ENT	28	181	14725
// OP_EQ_E	14719	14725	14726
// OP_IFNOT	14726	2	0
// OP_RETURN	213	0	0
// OP_IFNOT	37	7	0
// OP_LOAD_F	28	184	14727
// OP_LOAD_F	14719	184	14728
// OP_EQ_F	14727	14728	14729
// OP_IFNOT	14729	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_LOAD_F	14719	182	14730
// OP_BITAND	14730	221	14731
// OP_IFNOT	14731	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_STORE_V	14719	4	0
// OP_CALL1	13319	0	0
// OP_NOT_F	1	0	14732
// OP_IFNOT	14732	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_STORE_V	14719	4	0
// OP_CALL1	13196	0	0
// OP_NOT_F	1	0	14733
// OP_IFNOT	14733	7	0
// OP_STORE_V	14719	4	0
// OP_CALL1	626	0	0
// OP_NOT_F	1	0	14734
// OP_IFNOT	14734	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_LOAD_F	28	108	14735
// OP_LOAD_F	14719	108	14736
// OP_ADD_F	14736	746	14737
// OP_GT	14735	14737	14738
// OP_LOAD_F	28	108	14739
// OP_ADD_F	14739	746	14740
// OP_LOAD_F	14719	108	14741
// OP_LT	14740	14741	14742
// OP_OR	14738	14742	14743
// OP_IFNOT	14743	9	0
// OP_ADDRESS	28	181	14744
// OP_STOREP_ENT	14719	14744	0
// OP_CALL0	14551	0	0
// OP_IFNOT	1	5	0
// OP_ADDRESS	28	181	14745
// OP_STOREP_ENT	30	14745	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_LOAD_F	14719	162	14746
// OP_BITAND	14746	272	14747
// OP_IFNOT	14747	3	0
// OP_CALL0	14695	0	0
// OP_RETURN	1	0	0
// OP_LOAD_F	28	553	14748
// OP_LT	14748	214	14749
// OP_IFNOT	14749	7	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	574	14750
// OP_STORE_F	14750	14720	0
// OP_GT	14720	2261	14751
// OP_IFNOT	14751	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	181	14752
// OP_STOREP_ENT	14719	14752	0
// OP_CALL0	1850	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
void () BotFindTarget = 
{
    local entity client;
    local float len;
    local float bw;
    client = checkclient();
    
    if(!client)
    {
        return BotfindBot();
    }
    
    
    if(client.classname == "peeper")
    {
        return BotfindBot();
    }
    
    
    if(client == self.enemy)
    {
        return FALSE;
    }
    
    
    if(teamplay)
    {
        
        if(self.team == client.team)
        {
            return BotfindBot();
        }
        
    }
    
    
    if(client.flags & FL_NOTARGET)
    {
        return BotfindBot();
    }
    
    
    if(!enemyvisible(client))
    {
        return BotfindBot();
    }
    
    
    if(!infrontofbot(client))
    {
        
        if(!hearnoise(client))
        {
            return BotfindBot();
        }
        
    }
    
    
    if((self.origin_z > (client.origin_z + 120.000)) || ((self.origin_z + 120.000) < client.origin_z))
    {
        self.enemy = client;
        
        if(RunAway())
        {
            self.enemy = world;
            return BotfindBot();
        }
        
    }
    
    
    if(client.items & IT_INVISIBILITY)
    {
        return BotfindBot();
    }
    
    
    if(self.skil < TRUE)
    {
        len = random() * MUST_HAVE;
        
        if(len > 25.000)
        {
            return FALSE;
        }
        
    }
    
    self.enemy = client;
    return BotFoundTarget();
};

// ai_botstand
// function begins at statement 24865, parm_start=14754
// OP_CALL0	13606	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () ai_botstand = 
{
    
    if(BotFindTarget())
    {
        return;
    }
    
};

// ai_botturn
// function begins at statement 24869, parm_start=14755
// OP_CALL0	13606	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	491	0	0
// OP_DONE	0	0	0
void () ai_botturn = 
{
    
    if(BotFindTarget())
    {
        return;
    }
    
    ChangeYaw();
};

// aibot_run_melee
// function begins at statement 24874, parm_start=14756
// OP_ADDRESS	28	191	14756
// OP_LOAD_ENT	28	181	14757
// OP_LOAD_V	14757	105	14758
// OP_LOAD_V	28	105	14761
// OP_SUB_V	14758	14761	14764
// OP_STORE_V	14764	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	14756	0
// OP_CALL0	491	0	0
// OP_CALL0	1765	0	0
// OP_IFNOT	1	5	0
// OP_ADDRESS	28	367	14767
// OP_STOREP_F	368	14767	0
// OP_LOAD_FNC	28	360	14768
// OP_CALL0	14768	0	0
// OP_DONE	0	0	0
void () aibot_run_melee = 
{
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
    
    if(FacingIdeal())
    {
        self.attack_state = AS_STRAIGHT;
        self.th_melee();
    }
    
};

// aibot_run_slide
// function begins at statement 24890, parm_start=14770
// OP_STORE_F	14771	14777	0
// OP_ADDRESS	28	191	14779
// OP_LOAD_ENT	28	181	14780
// OP_LOAD_V	14780	105	14781
// OP_LOAD_V	28	105	14784
// OP_SUB_V	14781	14784	14787
// OP_STORE_V	14787	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	14779	0
// OP_CALL0	491	0	0
// OP_STORE_F	1789	14772	0
// OP_STORE_F	14770	14776	0
// OP_ADDRESS	28	540	14790
// OP_LOAD_F	28	540	14791
// OP_SUB_F	14791	214	14792
// OP_STOREP_F	14792	14790	0
// OP_LOAD_F	28	540	14793
// OP_GT	14793	213	14794
// OP_IFNOT	14794	2	0
// OP_STORE_F	579	14777	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	228	14795
// OP_STORE_F	14795	14773	0
// OP_LOAD_ENT	28	181	14796
// OP_STORE_V	14796	4	0
// OP_CALL1	10711	0	0
// OP_STORE_F	1	14774	0
// OP_EQ_F	14774	243	14797
// OP_IFNOT	14797	4	0
// OP_ADD_F	14773	2355	14798
// OP_STORE_F	14798	14773	0
// OP_GOTO	57	0	0
// OP_EQ_F	14774	242	14799
// OP_IFNOT	14799	39	0
// OP_ADD_F	14773	14084	14800
// OP_STORE_F	14800	14773	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	14775	0
// OP_CALL0	11009	0	0
// OP_STORE_F	1	14778	0
// OP_EQ_F	14778	259	14801
// OP_IFNOT	14801	3	0
// OP_STORE_F	213	14775	0
// OP_GOTO	19	0	0
// OP_EQ_F	14778	258	14802
// OP_IFNOT	14802	3	0
// OP_STORE_F	213	14775	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	537	14803
// OP_GT	14803	229	14804
// OP_IFNOT	14804	3	0
// OP_STORE_F	214	14775	0
// OP_GOTO	10	0	0
// OP_EQ_F	14778	253	14805
// OP_IFNOT	14805	3	0
// OP_STORE_F	214	14775	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	28	181	14806
// OP_LOAD_F	14806	154	14807
// OP_EQ_F	14807	259	14808
// OP_IFNOT	14808	2	0
// OP_STORE_F	214	14775	0
// OP_LT	14775	1369	14809
// OP_IFNOT	14809	8	0
// OP_LOAD_F	28	191	14810
// OP_ADD_F	14810	1724	14811
// OP_STORE_V	14811	4	0
// OP_STORE_V	14776	7	0
// OP_CALL2	12370	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_GOTO	17	0	0
// OP_EQ_F	14774	244	14812
// OP_IFNOT	14812	11	0
// OP_CALL0	11009	0	0
// OP_STORE_F	1	14778	0
// OP_EQ_F	14778	260	14813
// OP_IFNOT	14813	4	0
// OP_SUB_F	14773	228	14814
// OP_STORE_F	14814	14773	0
// OP_GOTO	3	0	0
// OP_SUB_F	14773	214	14815
// OP_STORE_F	14815	14773	0
// OP_GOTO	5	0	0
// OP_EQ_F	14774	245	14816
// OP_IFNOT	14816	3	0
// OP_SUB_F	14773	3736	14817
// OP_STORE_F	14817	14773	0
// OP_LOAD_F	28	154	14818
// OP_EQ_F	14818	253	14819
// OP_IFNOT	14819	3	0
// OP_STORE_F	213	14773	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	154	14820
// OP_EQ_F	14820	259	14821
// OP_IFNOT	14821	4	0
// OP_ADD_F	14773	7531	14822
// OP_STORE_F	14822	14773	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	154	14823
// OP_EQ_F	14823	258	14824
// OP_IFNOT	14824	3	0
// OP_ADD_F	14773	7531	14825
// OP_STORE_F	14825	14773	0
// OP_LOAD_ENT	28	181	14826
// OP_LOAD_F	14826	154	14827
// OP_EQ_F	14827	259	14828
// OP_IFNOT	14828	4	0
// OP_ADD_F	14773	7531	14829
// OP_STORE_F	14829	14773	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	28	181	14830
// OP_LOAD_F	14830	154	14831
// OP_EQ_F	14831	260	14832
// OP_IFNOT	14832	3	0
// OP_ADD_F	14773	7531	14833
// OP_STORE_F	14833	14773	0
// OP_LOAD_F	28	537	14834
// OP_GT	14834	217	14835
// OP_IFNOT	14835	4	0
// OP_SUB_F	14773	216	14836
// OP_STORE_F	14836	14773	0
// OP_GOTO	19	0	0
// OP_LOAD_F	28	108	14837
// OP_LOAD_ENT	28	181	14838
// OP_LOAD_F	14838	108	14839
// OP_ADD_F	14839	9847	14840
// OP_GT	14837	14840	14841
// OP_IFNOT	14841	13	0
// OP_ADD_F	14773	9191	14842
// OP_CALL0	452	0	0
// OP_ADD_F	14842	1	14843
// OP_STORE_F	14843	14773	0
// OP_GE	14773	7531	14844
// OP_IFNOT	14844	2	0
// OP_STORE_F	579	14777	0
// OP_LOAD_F	28	154	14845
// OP_EQ_F	14845	253	14846
// OP_IFNOT	14846	3	0
// OP_STORE_F	14771	14777	0
// OP_STORE_F	213	14773	0
// OP_LT	14773	7531	14847
// OP_IFNOT	14847	14	0
// OP_EQ_F	14777	578	14848
// OP_IFNOT	14848	4	0
// OP_STORE_V	14776	4	0
// OP_CALL1	13081	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	191	14849
// OP_STORE_V	14849	4	0
// OP_STORE_V	14776	7	0
// OP_CALL2	12370	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	1789	14772	0
// OP_GOTO	4	0	0
// OP_LT	14773	14850	14851
// OP_IFNOT	14851	2	0
// OP_STORE_F	1770	14772	0
// OP_LOAD_F	28	553	14852
// OP_EQ_F	14852	213	14853
// OP_IFNOT	14853	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	539	14854
// OP_LOAD_F	28	539	14855
// OP_ADD_F	14855	993	14856
// OP_STOREP_F	14856	14854	0
// OP_LOAD_F	28	553	14857
// OP_LT	14857	216	14858
// OP_IFNOT	14858	25	0
// OP_LOAD_F	28	553	14859
// OP_LT	14859	214	14860
// OP_IFNOT	14860	3	0
// OP_MUL_F	3328	14776	14861
// OP_STORE_F	14861	14776	0
// OP_LOAD_F	28	539	14862
// OP_EQ_F	14862	993	14863
// OP_IFNOT	14863	17	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	229	14864
// OP_STORE_F	14864	14775	0
// OP_LOAD_F	28	553	14865
// OP_GE	14865	214	14866
// OP_IFNOT	14866	5	0
// OP_LOAD_F	28	553	14867
// OP_SUB_F	14775	14867	14868
// OP_ADD_F	14868	677	14869
// OP_STORE_F	14869	14775	0
// OP_LOAD_F	28	553	14870
// OP_GT	14775	14870	14871
// OP_IFNOT	14871	4	0
// OP_ADDRESS	28	539	14872
// OP_STOREP_F	213	14872	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	539	14873
// OP_GT	14873	1227	14874
// OP_IFNOT	14874	21	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	216	14875
// OP_STORE_F	14875	14775	0
// OP_GT	14775	14876	14877
// OP_IFNOT	14877	16	0
// OP_LOAD_F	28	365	14878
// OP_BITAND	14878	596	14879
// OP_IFNOT	14879	6	0
// OP_ADDRESS	28	365	14880
// OP_LOAD_F	28	365	14881
// OP_SUB_F	14881	596	14882
// OP_STOREP_F	14882	14880	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	365	14883
// OP_LOAD_F	28	365	14884
// OP_ADD_F	14884	596	14885
// OP_STOREP_F	14885	14883	0
// OP_ADDRESS	28	539	14886
// OP_STOREP_F	213	14886	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	14887
// OP_BITAND	14887	596	14888
// OP_IFNOT	14888	3	0
// OP_MUL_F	276	14772	14889
// OP_STORE_F	14889	14772	0
// OP_LOAD_F	28	191	14890
// OP_ADD_F	14890	14772	14891
// OP_STORE_V	14891	4	0
// OP_STORE_V	14776	7	0
// OP_CALL2	12370	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	539	14892
// OP_STOREP_F	213	14892	0
// OP_LOAD_F	28	365	14893
// OP_BITAND	14893	596	14894
// OP_IFNOT	14894	6	0
// OP_ADDRESS	28	365	14895
// OP_LOAD_F	28	365	14896
// OP_SUB_F	14896	596	14897
// OP_STOREP_F	14897	14895	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	365	14898
// OP_LOAD_F	28	365	14899
// OP_ADD_F	14899	596	14900
// OP_STOREP_F	14900	14898	0
// OP_EQ_F	14772	1789	14901
// OP_EQ_F	14772	1790	14902
// OP_OR	14901	14902	14903
// OP_IFNOT	14903	19	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	14775	0
// OP_LT	14775	1230	14904
// OP_IFNOT	14904	6	0
// OP_EQ_F	14777	578	14905
// OP_IFNOT	14905	4	0
// OP_STORE_V	14776	4	0
// OP_CALL1	13081	0	0
// OP_RETURN	0	0	0
// OP_LT	14775	677	14906
// OP_IFNOT	14906	7	0
// OP_LOAD_F	28	191	14907
// OP_ADD_F	14907	1724	14908
// OP_STORE_V	14908	4	0
// OP_MUL_F	14776	677	14909
// OP_STORE_V	14909	7	0
// OP_CALL2	477	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	191	14910
// OP_STORE_V	14910	4	0
// OP_STORE_V	14776	7	0
// OP_CALL2	12370	0	0
// OP_DONE	0	0	0
void (float dist, float turn) aibot_run_slide = 
{
    local float ofs;
    local float rdir;
    local float rng;
    local float rnd;
    local float dis;
    local float trn;
    local float weap;
    trn = turn;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
    ofs = 90.000;
    dis = dist;
    self.strafeonly = self.strafeonly - TRUE;
    
    if(self.strafeonly > FALSE)
    {
        trn = NOTURN;
    }
    
    rdir = random() * MOVETYPE_WALK;
    rng = botrange(self.enemy);
    if(rng == RANGE_NEAR)
    {
        rdir = rdir + 0.800;
    }
    else
    {
        if(rng == RANGE_MELEE)
        {
            rdir = rdir + 1.200;
            rnd = random();
            weap = W_BestHeldWeapon();
            if(weap == IT_ROCKET_LAUNCHER)
            {
                rnd = FALSE;
            }
            else
            {
                if(weap == IT_GRENADE_LAUNCHER)
                {
                    rnd = FALSE;
                }
                else
                {
                    if(self.enemyrun > MOVETYPE_STEP)
                    {
                        rnd = TRUE;
                    }
                    else
                    {
                        if(weap == IT_AXE)
                        {
                            rnd = TRUE;
                        }
                        else
                        {
                            
                            if(self.enemy.weapon == IT_ROCKET_LAUNCHER)
                            {
                                rnd = TRUE;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(rnd < 0.300)
            {
                
                if(botwalkmove(self.ideal_yaw + 180.000, dis))
                {
                    return;
                }
                
            }
            
        }
        else
        {
            if(rng == RANGE_MID)
            {
                weap = W_BestHeldWeapon();
                if(weap == IT_LIGHTNING)
                {
                    rdir = rdir - MOVETYPE_WALK;
                }
                else
                {
                    rdir = rdir - TRUE;
                }
                
            }
            else
            {
                
                if(rng == RANGE_FAR)
                {
                    rdir = rdir - 2.500;
                }
                
            }
            
        }
        
    }
    
    if(self.weapon == IT_AXE)
    {
        rdir = FALSE;
    }
    else
    {
        if(self.weapon == IT_ROCKET_LAUNCHER)
        {
            rdir = rdir + 1.500;
        }
        else
        {
            
            if(self.weapon == IT_GRENADE_LAUNCHER)
            {
                rdir = rdir + 1.500;
            }
            
        }
        
    }
    
    if(self.enemy.weapon == IT_ROCKET_LAUNCHER)
    {
        rdir = rdir + 1.500;
    }
    else
    {
        
        if(self.enemy.weapon == IT_LIGHTNING)
        {
            rdir = rdir + 1.500;
        }
        
    }
    
    if(self.enemyrun > FL_CLIENT)
    {
        rdir = rdir - FL_SWIM;
    }
    else
    {
        
        if(self.origin_z > (self.enemy.origin_z + 130.000))
        {
            rdir = (rdir + 1.100) + random();
            
            if(rdir >= 1.500)
            {
                trn = NOTURN;
            }
            
            
            if(self.weapon == IT_AXE)
            {
                trn = turn;
                rdir = FALSE;
            }
            
        }
        
    }
    
    if(rdir < 1.500)
    {
        
        if(trn == CANTURN)
        {
            Botmovetogoal(dis);
            return;
        }
        
        
        if(botwalkmove(self.ideal_yaw, dis))
        {
            return;
        }
        
        ofs = 90.000;
    }
    else
    {
        
        if(rdir < 2.400)
        {
            ofs = 45.000;
        }
        
    }
    
    
    if(self.skil == FALSE)
    {
        return;
    }
    
    self.strafetime = self.strafetime + 0.100;
    
    if(self.skil < FL_SWIM)
    {
        
        if(self.skil < TRUE)
        {
            dis = 0.700 * dis;
        }
        
        
        if(self.strafetime == 0.100)
        {
            rnd = random() * MOVETYPE_STEP;
            
            if(self.skil >= TRUE)
            {
                rnd = (rnd - self.skil) + 0.500;
            }
            
            
            if(rnd > self.skil)
            {
                self.strafetime = FALSE;
                return;
            }
            
        }
        
    }
    
    
    if(self.strafetime > 0.400)
    {
        rnd = random() * FL_SWIM;
        
        if(rnd > 1.870)
        {
            if(self.lefty & STRAFE_DIR)
            {
                self.lefty = self.lefty - STRAFE_DIR;
            }
            else
            {
                self.lefty = self.lefty + STRAFE_DIR;
            }
            
            self.strafetime = FALSE;
            return;
        }
        
    }
    
    
    if(self.lefty & STRAFE_DIR)
    {
        ofs = CONTENT_EMPTY * ofs;
    }
    
    
    if(botwalkmove(self.ideal_yaw + ofs, dis))
    {
        return;
    }
    
    self.strafetime = FALSE;
    if(self.lefty & STRAFE_DIR)
    {
        self.lefty = self.lefty - STRAFE_DIR;
    }
    else
    {
        self.lefty = self.lefty + STRAFE_DIR;
    }
    
    
    if((ofs == 90.000) || (ofs == -90.000))
    {
        rnd = random();
        
        if(rnd < 0.050)
        {
            
            if(trn == CANTURN)
            {
                Botmovetogoal(dis);
                return;
            }
            
        }
        
        
        if(rnd < 0.500)
        {
            walkmove(self.ideal_yaw + 180.000, dis * 0.500);
        }
        
        return;
    }
    
    botwalkmove(self.ideal_yaw, dis);
};

void (float dist) ai_botgetGoody;
// ai_botcharge
// function begins at statement 25160, parm_start=14913
// OP_LOAD_F	28	365	14916
// OP_BITAND	14916	601	14917
// OP_IFNOT	14917	4	0
// OP_STORE_V	14913	4	0
// OP_CALL1	14911	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	14918
// OP_STORE_V	14918	4	0
// OP_CALL1	13319	0	0
// OP_IFNOT	1	41	0
// OP_LOAD_ENT	28	181	14919
// OP_LOAD_V	14919	105	14920
// OP_LOAD_V	28	105	14923
// OP_SUB_V	14920	14923	14926
// OP_STORE_V	14926	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14914	0
// OP_LOAD_ENT	28	194	14929
// OP_LOAD_V	14929	105	14930
// OP_LOAD_V	28	105	14933
// OP_SUB_V	14930	14933	14936
// OP_STORE_V	14936	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14915	0
// OP_LOAD_ENT	28	194	14939
// OP_LOAD_S	14939	129	14940
// OP_NE_S	14940	12122	14941
// OP_IFNOT	14941	3	0
// OP_STORE_V	14942	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	14943
// OP_STORE_V	14943	4	0
// OP_LOAD_ENT	28	181	14944
// OP_LOAD_V	14944	105	14945
// OP_STORE_V	14945	7	0
// OP_CALL2	448	0	0
// OP_LOAD_F	28	537	14948
// OP_GT	14948	213	14949
// OP_IFNOT	14949	5	0
// OP_ADDRESS	28	537	14950
// OP_LOAD_F	28	537	14951
// OP_SUB_F	14951	214	14952
// OP_STOREP_F	14952	14950	0
// OP_ADD_F	14915	235	14953
// OP_GT	14914	14953	14954
// OP_IFNOT	14954	5	0
// OP_ADDRESS	28	537	14955
// OP_LOAD_F	28	537	14956
// OP_ADD_F	14956	216	14957
// OP_STOREP_F	14957	14955	0
// OP_STORE_V	14913	4	0
// OP_STORE_V	579	7	0
// OP_CALL2	14769	0	0
// OP_DONE	0	0	0
void (float dist) ai_botcharge = 
{
    local float rng;
    local float oldrng;
    
    if(self.lefty & GETGOODY)
    {
        ai_botgetGoody(dist);
        return;
    }
    
    
    if(enemyvisible(self.enemy))
    {
        rng = vlen(self.enemy.origin - self.origin);
        oldrng = vlen(self.goalentity.origin - self.origin);
        
        if(self.goalentity.classname != "BotTarget")
        {
            objerror("bad bot target in bot_ai! 3\n");
        }
        
        setorigin(self.goalentity, self.enemy.origin);
        
        if(self.enemyrun > FALSE)
        {
            self.enemyrun = self.enemyrun - TRUE;
        }
        
        
        if(rng > (oldrng + MOVETYPE_BOUNCE))
        {
            self.enemyrun = self.enemyrun + FL_SWIM;
        }
        
    }
    
    aibot_run_slide(dist, NOTURN);
};

// ai_botnailcharge
// function begins at statement 25214, parm_start=14959
// OP_LOAD_ENT	28	181	14961
// OP_STORE_V	14961	4	0
// OP_CALL1	13319	0	0
// OP_NOT_F	1	0	14962
// OP_IFNOT	14962	4	0
// OP_ADDRESS	28	148	14963
// OP_LOAD_FNC	28	358	14964
// OP_STOREP_FNC	14964	14963	0
// OP_CALL0	1765	0	0
// OP_NOT_F	1	0	14965
// OP_IFNOT	14965	4	0
// OP_ADDRESS	28	148	14966
// OP_LOAD_FNC	28	358	14967
// OP_STOREP_FNC	14967	14966	0
// OP_LOAD_ENT	28	181	14968
// OP_LOAD_F	14968	165	14969
// OP_NE_F	14969	246	14970
// OP_IFNOT	14970	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14959	4	0
// OP_CALL1	14912	0	0
// OP_DONE	0	0	0
void (float dist) ai_botnailcharge = 
{
    local float rnd;
    
    if(!enemyvisible(self.enemy))
    {
        self.think = self.th_run;
    }
    
    
    if(!FacingIdeal())
    {
        self.think = self.th_run;
    }
    
    
    if(self.enemy.deadflag != DEAD_NO)
    {
        endEnemy();
        return;
    }
    
    ai_botcharge(dist);
};

float (float minweight) aibot_checkforGoodies;
// ai_botrun
// function begins at statement 25237, parm_start=14972
// OP_LOAD_ENT	28	181	14983
// OP_LOAD_F	14983	165	14984
// OP_NE_F	14984	246	14985
// OP_IFNOT	14985	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	14986
// OP_NOT_ENT	14986	0	14987
// OP_IFNOT	14987	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	14988
// OP_BITAND	14988	601	14989
// OP_IFNOT	14989	4	0
// OP_STORE_V	14972	4	0
// OP_CALL1	14911	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	14990
// OP_STORE_V	14990	4	0
// OP_CALL1	13319	0	0
// OP_STORE_F	1	1149	0
// OP_LOAD_ENT	28	181	14991
// OP_STORE_V	14991	4	0
// OP_CALL1	632	0	0
// OP_OR	1149	1	14992
// OP_IFNOT	14992	44	0
// OP_LOAD_ENT	28	181	14993
// OP_LOAD_V	14993	105	14994
// OP_LOAD_V	28	105	14997
// OP_SUB_V	14994	14997	15000
// OP_STORE_V	15000	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14977	0
// OP_LOAD_ENT	28	194	15003
// OP_LOAD_V	15003	105	15004
// OP_LOAD_V	28	105	15007
// OP_SUB_V	15004	15007	15010
// OP_STORE_V	15010	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14978	0
// OP_LOAD_F	28	537	15013
// OP_GT	15013	213	15014
// OP_IFNOT	15014	5	0
// OP_ADDRESS	28	537	15015
// OP_LOAD_F	28	537	15016
// OP_SUB_F	15016	214	15017
// OP_STOREP_F	15017	15015	0
// OP_ADD_F	14978	235	15018
// OP_GT	14977	15018	15019
// OP_IFNOT	15019	5	0
// OP_ADDRESS	28	537	15020
// OP_LOAD_F	28	537	15021
// OP_ADD_F	15021	216	15022
// OP_STOREP_F	15022	15020	0
// OP_LOAD_ENT	28	194	15023
// OP_LOAD_S	15023	129	15024
// OP_NE_S	15024	12122	15025
// OP_IFNOT	15025	3	0
// OP_STORE_V	15026	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	15027
// OP_STORE_V	15027	4	0
// OP_LOAD_ENT	28	181	15028
// OP_LOAD_V	15028	105	15029
// OP_STORE_V	15029	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	366	15032
// OP_ADD_F	31	232	15033
// OP_STOREP_F	15033	15032	0
// OP_LOAD_F	28	366	15034
// OP_LT	15034	31	15035
// OP_IFNOT	15035	4	0
// OP_CALL0	1852	0	0
// OP_CALL0	13606	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	15036
// OP_BITAND	15036	595	15037
// OP_GT	15037	230	15038
// OP_IFNOT	15038	17	0
// OP_ADDRESS	28	365	15039
// OP_LOAD_F	28	365	15040
// OP_LOAD_F	28	365	15041
// OP_BITAND	15041	595	15042
// OP_SUB_F	15040	15042	15043
// OP_STOREP_F	15043	15039	0
// OP_ADDRESS	28	533	15044
// OP_LOAD_ENT	28	194	15047
// OP_LOAD_V	15047	105	15048
// OP_STOREP_V	15048	15044	0
// OP_STORE_V	577	4	0
// OP_CALL1	14971	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	14972	4	0
// OP_CALL1	14911	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	365	15051
// OP_LOAD_F	28	365	15052
// OP_ADD_F	15052	214	15053
// OP_STOREP_F	15053	15051	0
// OP_CALL0	14551	0	0
// OP_IFNOT	1	17	0
// OP_ADDRESS	28	365	15054
// OP_LOAD_F	28	365	15055
// OP_LOAD_F	28	365	15056
// OP_BITAND	15056	595	15057
// OP_SUB_F	15055	15057	15058
// OP_STOREP_F	15058	15054	0
// OP_ADDRESS	28	533	15059
// OP_LOAD_ENT	28	194	15062
// OP_LOAD_V	15062	105	15063
// OP_STOREP_V	15063	15059	0
// OP_STORE_V	577	4	0
// OP_CALL1	14971	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	14972	4	0
// OP_CALL1	14911	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	15066
// OP_STORE_V	15066	4	0
// OP_CALL1	13196	0	0
// OP_STORE_F	1	1150	0
// OP_LOAD_ENT	28	181	15067
// OP_LOAD_V	15067	105	15068
// OP_LOAD_V	28	105	15071
// OP_SUB_V	15068	15071	15074
// OP_STORE_V	15074	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	1152	0
// OP_NOT_F	1149	0	15077
// OP_IFNOT	15077	5	0
// OP_CALL0	12286	0	0
// OP_STORE_V	14972	4	0
// OP_CALL1	13081	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	367	15078
// OP_EQ_F	15078	370	15079
// OP_IFNOT	15079	2	0
// OP_CALL0	14755	0	0
// OP_CALL0	10922	0	0
// OP_STORE_V	14972	4	0
// OP_STORE_V	578	7	0
// OP_CALL2	14769	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float dist) ai_botrun = 
{
    local vector delta;
    local float axis;
    local float rng;
    local float oldrng;
    local float direct;
    local float ang_rint;
    local float ang_floor;
    local float ang_ceil;
    
    if(self.enemy.deadflag != DEAD_NO)
    {
        endEnemy();
        return;
    }
    
    
    if(!self.enemy)
    {
        endEnemy();
        return;
    }
    
    
    if(self.lefty & GETGOODY)
    {
        ai_botgetGoody(dist);
        return;
    }
    
    enemy_vis = enemyvisible(self.enemy);
    
    if(enemy_vis || Spotvisible(self.enemy))
    {
        rng = vlen(self.enemy.origin - self.origin);
        oldrng = vlen(self.goalentity.origin - self.origin);
        
        if(self.enemyrun > FALSE)
        {
            self.enemyrun = self.enemyrun - TRUE;
        }
        
        
        if(rng > (oldrng + MOVETYPE_BOUNCE))
        {
            self.enemyrun = self.enemyrun + FL_SWIM;
        }
        
        
        if(self.goalentity.classname != "BotTarget")
        {
            objerror("bad bot target in bot_ai! 4\n");
        }
        
        setorigin(self.goalentity, self.enemy.origin);
        self.search_time = time + MOVETYPE_PUSH;
    }
    
    
    if(self.search_time < time)
    {
        endEnemy();
        BotFindTarget();
        return;
    }
    
    
    if((self.lefty & LOCAL_TIME) > MOVETYPE_FLY)
    {
        self.lefty = self.lefty - (self.lefty & LOCAL_TIME);
        self.lastseenpos = self.goalentity.origin;
        
        if(aibot_checkforGoodies(DONT_WANT))
        {
            ai_botgetGoody(dist);
            return;
        }
        
    }
    
    self.lefty = self.lefty + TRUE;
    
    if(RunAway())
    {
        self.lefty = self.lefty - (self.lefty & LOCAL_TIME);
        self.lastseenpos = self.goalentity.origin;
        
        if(aibot_checkforGoodies(DONT_WANT))
        {
            ai_botgetGoody(dist);
            return;
        }
        
    }
    
    enemy_infront = infrontofbot(self.enemy);
    enemy_yaw = vectoyaw(self.enemy.origin - self.origin);
    
    if(!enemy_vis)
    {
        aibot_setupchase();
        Botmovetogoal(dist);
        return;
    }
    
    
    if(self.attack_state == AS_MELEE)
    {
        aibot_run_melee();
    }
    
    CheckBotAttack();
    aibot_run_slide(dist, CANTURN);
    return;
};

// aibot_setupchase
// function begins at statement 25381, parm_start=15080
// OP_ADDRESS	28	148	15081
// OP_STOREP_FNC	13603	15081	0
// OP_LOAD_ENT	28	194	15082
// OP_STORE_V	15082	4	0
// OP_CALL1	13600	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	14551	0	0
// OP_IFNOT	1	15	0
// OP_ADDRESS	28	365	15083
// OP_LOAD_F	28	365	15084
// OP_LOAD_F	28	365	15085
// OP_BITAND	15085	595	15086
// OP_SUB_F	15084	15086	15087
// OP_STOREP_F	15087	15083	0
// OP_SUB_F	575	214	15088
// OP_STORE_V	15088	4	0
// OP_CALL1	14971	0	0
// OP_ADDRESS	28	533	15089
// OP_LOAD_ENT	28	194	15092
// OP_LOAD_V	15092	105	15093
// OP_STOREP_V	15093	15089	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	181	15096
// OP_STORE_V	15096	7	0
// OP_CALL2	12119	0	0
// OP_STORE_ENT	1	15080	0
// OP_LOAD_ENT	28	194	15097
// OP_LOAD_S	15097	129	15098
// OP_NE_S	15098	12122	15099
// OP_IFNOT	15099	3	0
// OP_STORE_V	14546	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	181	15100
// OP_NE_E	15080	15100	15101
// OP_IFNOT	15101	6	0
// OP_LOAD_ENT	28	194	15102
// OP_STORE_V	15102	4	0
// OP_LOAD_V	15080	105	15103
// OP_STORE_V	15103	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	366	15106
// OP_ADD_F	31	231	15107
// OP_STOREP_F	15107	15106	0
// OP_DONE	0	0	0
void () aibot_setupchase = 
{
    local entity pth;
    self.think = bot_chase;
    
    if(TrueReachable(self.goalentity))
    {
        return;
    }
    
    
    if(RunAway())
    {
        self.lefty = self.lefty - (self.lefty & LOCAL_TIME);
        aibot_checkforGoodies(WANT - TRUE);
        self.lastseenpos = self.goalentity.origin;
        return;
    }
    
    pth = BestChaseRoute(self, self.enemy);
    
    if(self.goalentity.classname != "BotTarget")
    {
        objerror("bad bot target in bot_ai! 1\n");
    }
    
    
    if(pth != self.enemy)
    {
        setorigin(self.goalentity, pth.origin);
    }
    
    self.search_time = time + MOVETYPE_TOSS;
};

// aibot_chase
// function begins at statement 25427, parm_start=15109
// OP_LOAD_ENT	28	181	15113
// OP_LOAD_F	15113	165	15114
// OP_NE_F	15114	246	15115
// OP_IFNOT	15115	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	15116
// OP_BITAND	15116	601	15117
// OP_IFNOT	15117	4	0
// OP_STORE_V	15109	4	0
// OP_CALL1	14911	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	15118
// OP_STORE_V	15118	4	0
// OP_CALL1	13319	0	0
// OP_STORE_F	1	1149	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	15112	0
// OP_LT	15112	1222	15119
// OP_IFNOT	15119	6	0
// OP_STORE_F	1149	1149	0
// OP_LOAD_ENT	28	181	15120
// OP_STORE_V	15120	4	0
// OP_CALL1	13196	0	0
// OP_AND	1149	1	15121
// OP_IFNOT	1149	22	0
// OP_LOAD_ENT	28	194	15122
// OP_LOAD_S	15122	129	15123
// OP_NE_S	15123	12122	15124
// OP_IFNOT	15124	3	0
// OP_STORE_V	14546	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	15125
// OP_STORE_V	15125	4	0
// OP_LOAD_ENT	28	181	15126
// OP_LOAD_V	15126	105	15127
// OP_STORE_V	15127	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	366	15130
// OP_ADD_F	31	230	15131
// OP_STOREP_F	15131	15130	0
// OP_ADDRESS	28	148	15132
// OP_LOAD_FNC	28	358	15133
// OP_STOREP_FNC	15133	15132	0
// OP_STORE_V	15109	4	0
// OP_CALL1	13081	0	0
// OP_RETURN	0	0	0
// OP_CALL0	14551	0	0
// OP_IFNOT	1	23	0
// OP_LOAD_F	28	366	15134
// OP_LT	15134	31	15135
// OP_IFNOT	15135	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	365	15136
// OP_LOAD_F	28	365	15137
// OP_LOAD_F	28	365	15138
// OP_BITAND	15138	595	15139
// OP_SUB_F	15137	15139	15140
// OP_STOREP_F	15140	15136	0
// OP_SUB_F	575	214	15141
// OP_STORE_V	15141	4	0
// OP_CALL1	14971	0	0
// OP_IFNOT	1	8	0
// OP_STORE_V	15109	4	0
// OP_CALL1	14911	0	0
// OP_ADDRESS	28	533	15142
// OP_LOAD_ENT	28	194	15145
// OP_LOAD_V	15145	105	15146
// OP_STOREP_V	15146	15142	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	15149
// OP_LOAD_F	15149	162	15150
// OP_BITAND	15150	272	15151
// OP_IFNOT	15151	6	0
// OP_LOAD_F	28	553	15152
// OP_LT	15152	228	15153
// OP_IFNOT	15153	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	15154
// OP_BITAND	15154	595	15155
// OP_GT	15155	230	15156
// OP_IFNOT	15156	18	0
// OP_ADDRESS	28	533	15157
// OP_LOAD_ENT	28	194	15160
// OP_LOAD_V	15160	105	15161
// OP_STOREP_V	15161	15157	0
// OP_ADDRESS	28	365	15164
// OP_LOAD_F	28	365	15165
// OP_LOAD_F	28	365	15166
// OP_BITAND	15166	595	15167
// OP_SUB_F	15165	15167	15168
// OP_STOREP_F	15168	15164	0
// OP_SUB_F	574	228	15169
// OP_STORE_V	15169	4	0
// OP_CALL1	14971	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	15109	4	0
// OP_CALL1	14911	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	365	15170
// OP_LOAD_F	28	365	15171
// OP_ADD_F	15171	214	15172
// OP_STOREP_F	15172	15170	0
// OP_LOAD_ENT	28	181	15173
// OP_STORE_ENT	15173	15110	0
// OP_CALL0	13606	0	0
// OP_IFNOT	1	7	0
// OP_LOAD_ENT	15110	181	15174
// OP_EQ_E	15174	28	15175
// OP_IFNOT	15175	3	0
// OP_ADDRESS	15110	181	15176
// OP_STOREP_ENT	30	15176	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	366	15177
// OP_LT	15177	31	15178
// OP_IFNOT	15178	3	0
// OP_CALL0	1852	0	0
// OP_RETURN	0	0	0
// OP_CALL0	11119	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	15109	4	0
// OP_CALL1	13081	0	0
// OP_DONE	0	0	0
void (float dist) aibot_chase = 
{
    local entity olden;
    local float weap;
    local float rnd;
    
    if(self.enemy.deadflag != DEAD_NO)
    {
        endEnemy();
        return;
    }
    
    
    if(self.lefty & GETGOODY)
    {
        ai_botgetGoody(dist);
        return;
    }
    
    enemy_vis = enemyvisible(self.enemy);
    rnd = random();
    
    if(rnd < 0.900)
    {
        enemy_vis = enemy_vis;
    }
    
    
    if(enemy_vis)
    {
        
        if(self.goalentity.classname != "BotTarget")
        {
            objerror("bad bot target in bot_ai! 1\n");
        }
        
        setorigin(self.goalentity, self.enemy.origin);
        self.search_time = time + MOVETYPE_FLY;
        self.think = self.th_run;
        Botmovetogoal(dist);
        return;
    }
    
    
    if(RunAway())
    {
        
        if(self.search_time < time)
        {
            endEnemy();
            return;
        }
        
        self.lefty = self.lefty - (self.lefty & LOCAL_TIME);
        
        if(aibot_checkforGoodies(WANT - TRUE))
        {
            ai_botgetGoody(dist);
            self.lastseenpos = self.goalentity.origin;
            return;
        }
        
    }
    
    
    if(self.enemy.items & IT_INVISIBILITY)
    {
        
        if(self.skil < MOVETYPE_WALK)
        {
            endEnemy();
            return;
        }
        
    }
    
    
    if((self.lefty & LOCAL_TIME) > MOVETYPE_FLY)
    {
        self.lastseenpos = self.goalentity.origin;
        self.lefty = self.lefty - (self.lefty & LOCAL_TIME);
        
        if(aibot_checkforGoodies(MUST_HAVE - MOVETYPE_WALK))
        {
            ai_botgetGoody(dist);
            return;
        }
        
    }
    
    self.lefty = self.lefty + TRUE;
    olden = self.enemy;
    
    if(BotFindTarget())
    {
        
        if(olden.enemy == self)
        {
            olden.enemy = world;
        }
        
        return;
    }
    
    
    if(self.search_time < time)
    {
        endEnemy();
        return;
    }
    
    
    if(CheckReboundAttack())
    {
        return;
    }
    
    Botmovetogoal(dist);
};

// aibot_checkforGoodies
// function begins at statement 25553, parm_start=15179
// OP_LOAD_F	28	391	15193
// OP_ADD_F	31	234	15194
// OP_LT	15193	15194	15195
// OP_IFNOT	15195	10	0
// OP_CALL0	14091	0	0
// OP_ADDRESS	28	365	15196
// OP_LOAD_F	28	365	15197
// OP_BITOR	15197	601	15198
// OP_STOREP_F	15198	15196	0
// OP_ADDRESS	28	538	15199
// OP_ADD_F	31	228	15200
// OP_STOREP_F	15200	15199	0
// OP_RETURN	214	0	0
// OP_CALL0	14551	0	0
// OP_STORE_F	1	15182	0
// OP_LOAD_ENT	28	194	15201
// OP_STORE_ENT	15201	15181	0
// OP_LOAD_V	28	105	15202
// OP_STORE_V	15202	4	0
// OP_STORE_V	580	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	15180	0
// OP_STORE_F	577	15184	0
// OP_IFNOT	15180	60	0
// OP_STORE_F	577	15185	0
// OP_LOAD_F	15180	108	15205
// OP_LOAD_F	28	108	15206
// OP_MUL_F	3328	608	15207
// OP_ADD_F	15206	15207	15208
// OP_GT	15205	15208	15209
// OP_IFNOT	15209	3	0
// OP_STORE_F	577	15185	0
// OP_GOTO	43	0	0
// OP_LOAD_F	15180	552	15210
// OP_EQ_F	15210	583	15211
// OP_LOAD_F	15180	552	15212
// OP_EQ_F	15212	587	15213
// OP_OR	15211	15213	15214
// OP_IFNOT	15214	7	0
// OP_STORE_F	577	15185	0
// OP_IFNOT	15182	4	0
// OP_STORE_V	15180	4	0
// OP_CALL1	14409	0	0
// OP_STORE_F	1	15185	0
// OP_GOTO	31	0	0
// OP_LOAD_F	15180	552	15215
// OP_NE_F	15215	586	15216
// OP_IFNOT	15216	3	0
// OP_STORE_F	577	15185	0
// OP_GOTO	26	0	0
// OP_LOAD_F	15180	104	15217
// OP_NE_F	15217	238	15218
// OP_IFNOT	15218	3	0
// OP_STORE_F	577	15185	0
// OP_GOTO	21	0	0
// OP_LOAD_F	15180	526	15219
// OP_NOT_F	15219	0	15220
// OP_IFNOT	15220	18	0
// OP_STORE_V	15180	4	0
// OP_CALL1	13746	0	0
// OP_STORE_F	1	15185	0
// OP_LT	15185	574	15221
// OP_IFNOT	15221	13	0
// OP_LOAD_F	15180	108	15222
// OP_LOAD_ENT	28	181	15223
// OP_LOAD_F	15223	97	15224
// OP_LT	15222	15224	15225
// OP_LOAD_F	15180	108	15226
// OP_LOAD_F	28	97	15227
// OP_LT	15226	15227	15228
// OP_AND	15225	15228	15229
// OP_NOT_F	15182	0	15230
// OP_AND	15229	15230	15231
// OP_IFNOT	15231	2	0
// OP_STORE_F	577	15185	0
// OP_GT	15185	15184	15232
// OP_IFNOT	15232	4	0
// OP_ADDRESS	15181	194	15233
// OP_STOREP_ENT	15180	15233	0
// OP_STORE_F	15185	15184	0
// OP_LOAD_ENT	15180	164	15234
// OP_STORE_ENT	15234	15180	0
// OP_GOTO	-59	0	0
// OP_STORE_F	15179	15189	0
// OP_LOAD_F	28	553	15235
// OP_LT	15235	214	15236
// OP_IFNOT	15236	6	0
// OP_ADD_F	575	216	15237
// OP_LT	15189	15237	15238
// OP_IFNOT	15238	3	0
// OP_ADD_F	575	216	15239
// OP_STORE_F	15239	15189	0
// OP_GT	15184	577	15240
// OP_IFNOT	15240	22	0
// OP_GT	15184	15189	15241
// OP_OR	15241	15182	15242
// OP_IFNOT	15242	19	0
// OP_LOAD_S	15181	129	15243
// OP_NE_S	15243	12122	15244
// OP_IFNOT	15244	3	0
// OP_STORE_V	15245	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	15181	4	0
// OP_LOAD_ENT	15181	194	15246
// OP_LOAD_V	15246	105	15247
// OP_STORE_V	15247	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	365	15250
// OP_LOAD_F	28	365	15251
// OP_BITOR	15251	601	15252
// OP_STOREP_F	15252	15250	0
// OP_ADDRESS	28	538	15253
// OP_ADD_F	31	228	15254
// OP_STOREP_F	15254	15253	0
// OP_RETURN	214	0	0
// OP_ADDRESS	15181	194	15255
// OP_LOAD_ENT	28	181	15256
// OP_STOREP_ENT	15256	15255	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float minweight) aibot_checkforGoodies = 
{
    local entity e;
    local entity botTarget;
    local float AFRAID;
    local float steps;
    local float best;
    local float weight;
    local float goody_yaw;
    local float lnd;
    local float weap;
    local float minimum;
    local vector spot;
    
    if(self.air_finished < (time + MOVETYPE_FLYMISSILE))
    {
        goForAir();
        self.lefty = self.lefty | GETGOODY;
        self.goody_time = time + MOVETYPE_WALK;
        return TRUE;
    }
    
    AFRAID = RunAway();
    botTarget = self.goalentity;
    e = findradius(self.origin, SEARCH_RADIUS);
    best = DONT_WANT;
    
    while(e)
    {
        weight = DONT_WANT;
        if(e.origin_z > (self.origin_z + (0.700 * MAXJUMP)))
        {
            weight = DONT_WANT;
        }
        else
        {
            if((e.pathtype == DROPPED) || (e.pathtype == TELEPORT))
            {
                weight = DONT_WANT;
                
                if(AFRAID)
                {
                    weight = RunAwayWeight(e);
                }
                
            }
            else
            {
                if(e.pathtype != REGULARTARGET)
                {
                    weight = DONT_WANT;
                }
                else
                {
                    if(e.solid != SOLID_TRIGGER)
                    {
                        weight = DONT_WANT;
                    }
                    else
                    {
                        
                        if(!e.istrigger)
                        {
                            weight = itemweight(e);
                            
                            if(weight < MUST_HAVE)
                            {
                                
                                if(((e.origin_z < self.enemy.absmin_z) && (e.origin_z < self.absmin_z)) && !AFRAID)
                                {
                                    weight = DONT_WANT;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if(weight > best)
        {
            botTarget.goalentity = e;
            best = weight;
        }
        
        e = e.chain;
    }
    
    minimum = minweight;
    
    if(self.skil < TRUE)
    {
        
        if(minimum < (WANT + FL_SWIM))
        {
            minimum = WANT + FL_SWIM;
        }
        
    }
    
    
    if(best > DONT_WANT)
    {
        
        if((best > minimum) || AFRAID)
        {
            
            if(botTarget.classname != "BotTarget")
            {
                objerror("bad bot target in bot_ai! 6\n");
            }
            
            setorigin(botTarget, botTarget.goalentity.origin);
            self.lefty = self.lefty | GETGOODY;
            self.goody_time = time + MOVETYPE_WALK;
            return TRUE;
        }
        
    }
    
    botTarget.goalentity = self.enemy;
    return FALSE;
};

// ai_endgetGoody
// function begins at statement 25673, parm_start=15258
// OP_LOAD_F	28	365	15259
// OP_BITAND	15259	601	15260
// OP_IFNOT	15260	5	0
// OP_ADDRESS	28	365	15261
// OP_LOAD_F	28	365	15262
// OP_SUB_F	15262	601	15263
// OP_STOREP_F	15263	15261	0
// OP_LOAD_ENT	28	194	15264
// OP_LOAD_S	15264	129	15265
// OP_NE_S	15265	12122	15266
// OP_IFNOT	15266	3	0
// OP_STORE_V	15267	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	15268
// OP_STORE_V	15268	4	0
// OP_LOAD_V	28	533	15269
// OP_STORE_V	15269	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	28	194	15272
// OP_ADDRESS	15272	194	15273
// OP_LOAD_ENT	28	181	15274
// OP_STOREP_ENT	15274	15273	0
// OP_LOAD_ENT	28	181	15275
// OP_STORE_V	15275	4	0
// OP_CALL1	13319	0	0
// OP_IFNOT	1	13	0
// OP_ADDRESS	28	533	15276
// OP_LOAD_ENT	28	181	15279
// OP_LOAD_V	15279	105	15280
// OP_STOREP_V	15280	15276	0
// OP_LOAD_F	28	373	15283
// OP_LT	15283	31	15284
// OP_IFNOT	15284	6	0
// OP_LOAD_F	28	367	15285
// OP_EQ_F	15285	370	15286
// OP_IFNOT	15286	2	0
// OP_CALL0	14755	0	0
// OP_CALL0	10922	0	0
// OP_STORE_V	15258	4	0
// OP_CALL1	13081	0	0
// OP_DONE	0	0	0
void (float dist) ai_endgetGoody = 
{
    
    if(self.lefty & GETGOODY)
    {
        self.lefty = self.lefty - GETGOODY;
    }
    
    
    if(self.goalentity.classname != "BotTarget")
    {
        objerror("bad bot target in bot_ai! 7\n");
    }
    
    setorigin(self.goalentity, self.lastseenpos);
    self.goalentity.goalentity = self.enemy;
    
    if(enemyvisible(self.enemy))
    {
        self.lastseenpos = self.enemy.origin;
        
        if(self.attack_finished < time)
        {
            
            if(self.attack_state == AS_MELEE)
            {
                aibot_run_melee();
            }
            
            CheckBotAttack();
        }
        
    }
    
    Botmovetogoal(dist);
};

// ai_botgetGoody
// function begins at statement 25714, parm_start=15287
// OP_ADDRESS	28	366	15291
// OP_LOAD_F	28	366	15292
// OP_ADD_F	15292	993	15293
// OP_STOREP_F	15293	15291	0
// OP_LOAD_F	28	538	15294
// OP_GT	31	15294	15295
// OP_IFNOT	15295	4	0
// OP_STORE_V	15287	4	0
// OP_CALL1	15257	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	15296
// OP_LOAD_ENT	15296	194	15297
// OP_LOAD_F	15297	104	15298
// OP_EQ_F	15298	237	15299
// OP_IFNOT	15299	4	0
// OP_STORE_V	15287	4	0
// OP_CALL1	15257	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	15300
// OP_LOAD_ENT	15300	194	15301
// OP_STORE_V	15301	4	0
// OP_CALL1	632	0	0
// OP_NOT_F	1	0	15302
// OP_IFNOT	15302	7	0
// OP_LOAD_F	28	391	15303
// OP_GT	15303	234	15304
// OP_IFNOT	15304	4	0
// OP_STORE_V	15287	4	0
// OP_CALL1	15257	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	15305
// OP_LOAD_V	15305	105	15306
// OP_LOAD_V	28	105	15309
// OP_SUB_V	15306	15309	15312
// OP_STORE_V	15312	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	15288	0
// OP_LOAD_ENT	28	181	15315
// OP_STORE_V	15315	4	0
// OP_CALL1	13319	0	0
// OP_IFNOT	1	37	0
// OP_ADDRESS	28	533	15316
// OP_LOAD_ENT	28	181	15319
// OP_LOAD_V	15319	105	15320
// OP_STOREP_V	15320	15316	0
// OP_CALL0	10958	0	0
// OP_STORE_F	1	15290	0
// OP_LOAD_ENT	28	181	15323
// OP_LOAD_F	15323	162	15324
// OP_BITAND	15324	273	15325
// OP_LOAD_F	28	553	15326
// OP_LT	15326	214	15327
// OP_OR	15325	15327	15328
// OP_EQ_F	15290	253	15329
// OP_OR	15328	15329	15330
// OP_IFNOT	15330	5	0
// OP_ADDRESS	28	191	15331
// OP_STOREP_F	15288	15331	0
// OP_CALL0	491	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	373	15332
// OP_LT	15332	31	15333
// OP_IFNOT	15333	15	0
// OP_ADDRESS	28	191	15334
// OP_LOAD_ENT	28	181	15335
// OP_LOAD_V	15335	105	15336
// OP_LOAD_V	28	105	15339
// OP_SUB_V	15336	15339	15342
// OP_STORE_V	15342	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	15334	0
// OP_CALL0	491	0	0
// OP_LOAD_F	28	367	15345
// OP_EQ_F	15345	370	15346
// OP_IFNOT	15346	2	0
// OP_CALL0	14755	0	0
// OP_CALL0	10922	0	0
// OP_LOAD_F	28	391	15347
// OP_LT	15347	231	15348
// OP_IFNOT	15348	4	0
// OP_STORE_V	301	4	0
// OP_CALL1	12441	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	15349
// OP_BITAND	15349	216	15350
// OP_IFNOT	15350	5	0
// OP_STORE_V	15287	4	0
// OP_CALL1	12893	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	15351
// OP_LOAD_ENT	28	194	15354
// OP_LOAD_V	15354	105	15355
// OP_SUB_V	15351	15355	15358
// OP_STORE_V	15358	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	15289	0
// OP_GT	15289	15287	15361
// OP_IFNOT	15361	3	0
// OP_STORE_F	15287	15289	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	194	15362
// OP_LOAD_ENT	15362	194	15363
// OP_LOAD_F	15363	552	15364
// OP_EQ_F	15364	583	15365
// OP_IFNOT	15365	4	0
// OP_STORE_V	15287	4	0
// OP_CALL1	15257	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15288	4	0
// OP_STORE_V	15289	7	0
// OP_CALL2	12370	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4896	4	0
// OP_STORE_V	15287	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	12613	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	15366
// OP_BITAND	15366	601	15367
// OP_IFNOT	15367	5	0
// OP_ADDRESS	28	365	15368
// OP_LOAD_F	28	365	15369
// OP_SUB_F	15369	601	15370
// OP_STOREP_F	15370	15368	0
// OP_LOAD_ENT	28	194	15371
// OP_LOAD_S	15371	129	15372
// OP_NE_S	15372	12122	15373
// OP_IFNOT	15373	3	0
// OP_STORE_V	15374	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	15375
// OP_STORE_V	15375	4	0
// OP_LOAD_V	28	533	15376
// OP_STORE_V	15376	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	28	194	15379
// OP_ADDRESS	15379	194	15380
// OP_LOAD_ENT	28	181	15381
// OP_STOREP_ENT	15381	15380	0
// OP_DONE	0	0	0
void (float dist) ai_botgetGoody = 
{
    local float goody_yaw;
    local float dis;
    local float weap;
    self.search_time = self.search_time + 0.100;
    
    if(time > self.goody_time)
    {
        ai_endgetGoody(dist);
        return;
    }
    
    
    if(self.goalentity.goalentity.solid == SOLID_NOT)
    {
        ai_endgetGoody(dist);
        return;
    }
    
    
    if(!Spotvisible(self.goalentity.goalentity))
    {
        
        if(self.air_finished > MOVETYPE_FLYMISSILE)
        {
            ai_endgetGoody(dist);
            return;
        }
        
    }
    
    goody_yaw = vectoyaw(self.goalentity.origin - self.origin);
    
    if(enemyvisible(self.enemy))
    {
        self.lastseenpos = self.enemy.origin;
        weap = W_BestBotWeapon();
        if(((self.enemy.items & IT_INVULNERABILITY) || (self.skil < TRUE)) || (weap == IT_AXE))
        {
            self.ideal_yaw = goody_yaw;
            ChangeYaw();
        }
        else
        {
            
            if(self.attack_finished < time)
            {
                self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
                ChangeYaw();
                
                if(self.attack_state == AS_MELEE)
                {
                    aibot_run_melee();
                }
                
                CheckBotAttack();
            }
            
        }
        
    }
    
    
    if(self.air_finished < MOVETYPE_TOSS)
    {
        waterupz(SVC_TEMPENTITY);
        return;
    }
    
    
    if(self.flags & FL_SWIM)
    {
        
        if(waterupdown(dist))
        {
            return;
        }
        
    }
    
    dis = vlen(self.origin - self.goalentity.origin);
    if(dis > dist)
    {
        dis = dist;
    }
    else
    {
        
        if(self.goalentity.goalentity.pathtype == DROPPED)
        {
            ai_endgetGoody(dist);
            return;
        }
        
    }
    
    
    if(botwalkmove(goody_yaw, dis))
    {
        return;
    }
    
    
    if(Bot_tryjump(270.000, dist, FALSE))
    {
        return;
    }
    
    
    if(self.lefty & GETGOODY)
    {
        self.lefty = self.lefty - GETGOODY;
    }
    
    
    if(self.goalentity.classname != "BotTarget")
    {
        objerror("bad bot target in bot_ai! 8\n");
    }
    
    setorigin(self.goalentity, self.lastseenpos);
    self.goalentity.goalentity = self.enemy;
};

