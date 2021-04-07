void () shalrath_pain;
void () ShalMissile;
// shal_stand
// function begins at statement 20017, parm_start=11528
// OP_STATE	8442	11527	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () shal_stand = [23, shal_stand]
{
    ai_stand();
};

// shal_walk1
// function begins at statement 20020, parm_start=11529
// OP_STATE	4969	11529	0
// OP_CALL0	453	0	0
// OP_LT	1	922	11530
// OP_IFNOT	11530	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11531	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk1 = [24, shal_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "shalrath/idle.wav", 1, ATTN_IDLE);
    }
    
    ai_walk(6);
};

// shal_walk2
// function begins at statement 20033, parm_start=11532
// OP_STATE	2171	11532	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk2 = [25, shal_walk3]
{
    ai_walk(4);
};

// shal_walk3
// function begins at statement 20037, parm_start=11533
// OP_STATE	8446	11533	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk3 = [26, shal_walk4]
{
    ai_walk(0);
};

// shal_walk4
// function begins at statement 20041, parm_start=11534
// OP_STATE	8448	11534	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk4 = [27, shal_walk5]
{
    ai_walk(0);
};

// shal_walk5
// function begins at statement 20045, parm_start=11535
// OP_STATE	8450	11535	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk5 = [28, shal_walk6]
{
    ai_walk(0);
};

// shal_walk6
// function begins at statement 20049, parm_start=11536
// OP_STATE	5829	11536	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk6 = [29, shal_walk7]
{
    ai_walk(0);
};

// shal_walk7
// function begins at statement 20053, parm_start=11537
// OP_STATE	1004	11537	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk7 = [30, shal_walk8]
{
    ai_walk(5);
};

// shal_walk8
// function begins at statement 20057, parm_start=11538
// OP_STATE	3950	11538	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk8 = [31, shal_walk9]
{
    ai_walk(6);
};

// shal_walk9
// function begins at statement 20061, parm_start=11539
// OP_STATE	959	11539	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk9 = [32, shal_walk10]
{
    ai_walk(5);
};

// shal_walk10
// function begins at statement 20065, parm_start=11540
// OP_STATE	5835	11540	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk10 = [33, shal_walk11]
{
    ai_walk(0);
};

// shal_walk11
// function begins at statement 20069, parm_start=11541
// OP_STATE	5837	11541	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk11 = [34, shal_walk12]
{
    ai_walk(4);
};

// shal_walk12
// function begins at statement 20073, parm_start=11542
// OP_STATE	8442	11528	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () shal_walk12 = [23, shal_walk1]
{
    ai_walk(5);
};

// shal_run1
// function begins at statement 20077, parm_start=11543
// OP_STATE	4969	11543	0
// OP_CALL0	453	0	0
// OP_LT	1	922	11544
// OP_IFNOT	11544	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11531	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run1 = [24, shal_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "shalrath/idle.wav", 1, ATTN_IDLE);
    }
    
    ai_run(6);
};

// shal_run2
// function begins at statement 20090, parm_start=11545
// OP_STATE	2171	11545	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run2 = [25, shal_run3]
{
    ai_run(4);
};

// shal_run3
// function begins at statement 20094, parm_start=11546
// OP_STATE	8446	11546	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run3 = [26, shal_run4]
{
    ai_run(0);
};

// shal_run4
// function begins at statement 20098, parm_start=11547
// OP_STATE	8448	11547	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run4 = [27, shal_run5]
{
    ai_run(0);
};

// shal_run5
// function begins at statement 20102, parm_start=11548
// OP_STATE	8450	11548	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run5 = [28, shal_run6]
{
    ai_run(0);
};

// shal_run6
// function begins at statement 20106, parm_start=11549
// OP_STATE	5829	11549	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run6 = [29, shal_run7]
{
    ai_run(0);
};

// shal_run7
// function begins at statement 20110, parm_start=11550
// OP_STATE	1004	11550	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run7 = [30, shal_run8]
{
    ai_run(5);
};

// shal_run8
// function begins at statement 20114, parm_start=11551
// OP_STATE	3950	11551	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run8 = [31, shal_run9]
{
    ai_run(6);
};

// shal_run9
// function begins at statement 20118, parm_start=11552
// OP_STATE	959	11552	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run9 = [32, shal_run10]
{
    ai_run(5);
};

// shal_run10
// function begins at statement 20122, parm_start=11553
// OP_STATE	5835	11553	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run10 = [33, shal_run11]
{
    ai_run(0);
};

// shal_run11
// function begins at statement 20126, parm_start=11554
// OP_STATE	5837	11554	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run11 = [34, shal_run12]
{
    ai_run(4);
};

// shal_run12
// function begins at statement 20130, parm_start=11555
// OP_STATE	8442	11542	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () shal_run12 = [23, shal_run1]
{
    ai_run(5);
};

// shal_attack1
// function begins at statement 20134, parm_start=11556
// OP_STATE	650	11556	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11557	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack1 = [0, shal_attack2]
{
    sound(self, CHAN_VOICE, "shalrath/attack.wav", 1, ATTN_NORM);
    ai_face();
};

// shal_attack2
// function begins at statement 20143, parm_start=11558
// OP_STATE	708	11558	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack2 = [1, shal_attack3]
{
    ai_face();
};

// shal_attack3
// function begins at statement 20146, parm_start=11559
// OP_STATE	929	11559	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack3 = [2, shal_attack4]
{
    ai_face();
};

// shal_attack4
// function begins at statement 20149, parm_start=11560
// OP_STATE	819	11560	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack4 = [3, shal_attack5]
{
    ai_face();
};

// shal_attack5
// function begins at statement 20152, parm_start=11561
// OP_STATE	1835	11561	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack5 = [4, shal_attack6]
{
    ai_face();
};

// shal_attack6
// function begins at statement 20155, parm_start=11562
// OP_STATE	1660	11562	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack6 = [5, shal_attack7]
{
    ai_face();
};

// shal_attack7
// function begins at statement 20158, parm_start=11563
// OP_STATE	2107	11563	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack7 = [6, shal_attack8]
{
    ai_face();
};

// shal_attack8
// function begins at statement 20161, parm_start=11564
// OP_STATE	2307	11564	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack8 = [7, shal_attack9]
{
    ai_face();
};

// shal_attack9
// function begins at statement 20164, parm_start=11565
// OP_STATE	1502	11565	0
// OP_CALL0	11526	0	0
// OP_DONE	0	0	0
void () shal_attack9 = [8, shal_attack10]
{
    ShalMissile();
};

// shal_attack10
// function begins at statement 20167, parm_start=11566
// OP_STATE	3556	11566	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () shal_attack10 = [9, shal_attack11]
{
    ai_face();
};

// shal_attack11
// function begins at statement 20170, parm_start=11567
// OP_STATE	1931	11542	0
// OP_DONE	0	0	0
void () shal_attack11 = [10, shal_run1]
{
};

// shal_pain1
// function begins at statement 20172, parm_start=11568
// OP_STATE	3931	11568	0
// OP_DONE	0	0	0
void () shal_pain1 = [11, shal_pain2]
{
};

// shal_pain2
// function begins at statement 20174, parm_start=11569
// OP_STATE	2532	11569	0
// OP_DONE	0	0	0
void () shal_pain2 = [12, shal_pain3]
{
};

// shal_pain3
// function begins at statement 20176, parm_start=11570
// OP_STATE	8427	11570	0
// OP_DONE	0	0	0
void () shal_pain3 = [13, shal_pain4]
{
};

// shal_pain4
// function begins at statement 20178, parm_start=11571
// OP_STATE	3153	11571	0
// OP_DONE	0	0	0
void () shal_pain4 = [14, shal_pain5]
{
};

// shal_pain5
// function begins at statement 20180, parm_start=11572
// OP_STATE	2157	11542	0
// OP_DONE	0	0	0
void () shal_pain5 = [15, shal_run1]
{
};

// shal_death1
// function begins at statement 20182, parm_start=11573
// OP_STATE	3273	11573	0
// OP_DONE	0	0	0
void () shal_death1 = [16, shal_death2]
{
};

// shal_death2
// function begins at statement 20184, parm_start=11574
// OP_STATE	5588	11574	0
// OP_DONE	0	0	0
void () shal_death2 = [17, shal_death3]
{
};

// shal_death3
// function begins at statement 20186, parm_start=11575
// OP_STATE	3576	11575	0
// OP_DONE	0	0	0
void () shal_death3 = [18, shal_death4]
{
};

// shal_death4
// function begins at statement 20188, parm_start=11576
// OP_STATE	8435	11576	0
// OP_DONE	0	0	0
void () shal_death4 = [19, shal_death5]
{
};

// shal_death5
// function begins at statement 20190, parm_start=11577
// OP_STATE	1017	11577	0
// OP_DONE	0	0	0
void () shal_death5 = [20, shal_death6]
{
};

// shal_death6
// function begins at statement 20192, parm_start=11578
// OP_STATE	8438	11578	0
// OP_DONE	0	0	0
void () shal_death6 = [21, shal_death7]
{
};

// shal_death7
// function begins at statement 20194, parm_start=11579
// OP_STATE	8440	11578	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () shal_death7 = [22, shal_death7]
{
    SUB_Remove();
};

// shalrath_pain
// function begins at statement 20197, parm_start=11579
// OP_LOAD_F	28	375	11579
// OP_GT	11579	31	11580
// OP_IFNOT	11580	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11581	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	11567	0	0
// OP_ADDRESS	28	375	11582
// OP_ADD_F	31	819	11583
// OP_STOREP_F	11583	11582	0
// OP_DONE	0	0	0
void () shalrath_pain = 
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "shalrath/pain.wav", 1, ATTN_NORM);
    shal_pain1();
    self.pain_finished = time + 3;
};

// shalrath_die
// function begins at statement 20212, parm_start=11585
// OP_LOAD_F	28	152	11585
// OP_LT	11585	1609	11586
// OP_IFNOT	11586	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	11587	4	0
// OP_LOAD_F	28	152	11588
// OP_STORE_V	11588	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	11589
// OP_STORE_V	11589	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	11590
// OP_STORE_V	11590	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	11591
// OP_STORE_V	11591	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11592	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	11572	0	0
// OP_ADDRESS	28	104	11593
// OP_STOREP_F	238	11593	0
// OP_DONE	0	0	0
void () shalrath_die = 
{
    
    if(self.health < -90)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowHead("progs/h_shal.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "shalrath/death.wav", 1, ATTN_NORM);
    shal_death1();
    self.solid = SOLID_NOT;
};

void () ShalMissileTouch;
void () ShalHome;
// ShalMissile
// function begins at statement 20248, parm_start=11596
// OP_LOAD_ENT	28	181	11602
// OP_LOAD_V	11602	105	11603
// OP_ADD_V	11603	6293	11606
// OP_LOAD_V	28	105	11609
// OP_SUB_V	11606	11609	11612
// OP_STORE_V	11612	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	11597	0
// OP_LOAD_ENT	28	181	11615
// OP_LOAD_V	11615	105	11616
// OP_LOAD_V	28	105	11619
// OP_SUB_V	11616	11619	11622
// OP_STORE_V	11622	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	11600	0
// OP_MUL_F	11600	11625	11626
// OP_STORE_F	11626	11601	0
// OP_LT	11601	686	11627
// OP_IFNOT	11627	2	0
// OP_STORE_F	686	11601	0
// OP_ADDRESS	28	133	11628
// OP_LOAD_F	28	133	11629
// OP_BITOR	11629	335	11630
// OP_STOREP_F	11630	11628	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	11631	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	11596	0
// OP_ADDRESS	11596	201	11632
// OP_STOREP_ENT	28	11632	0
// OP_ADDRESS	11596	104	11633
// OP_STOREP_F	240	11633	0
// OP_ADDRESS	11596	103	11634
// OP_STOREP_F	235	11634	0
// OP_STORE_V	11596	4	0
// OP_STORE_V	11635	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	11596	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	11596	105	11636
// OP_LOAD_V	28	105	11639
// OP_ADD_V	11639	6293	11642
// OP_STOREP_V	11642	11636	0
// OP_ADDRESS	11596	113	11645
// OP_MUL_VF	11597	3289	11648
// OP_STOREP_V	11648	11645	0
// OP_ADDRESS	11596	121	11651
// OP_STOREP_V	3440	11651	0
// OP_ADDRESS	11596	150	11654
// OP_ADD_F	11601	31	11655
// OP_STOREP_F	11655	11654	0
// OP_ADDRESS	11596	148	11656
// OP_STOREP_FNC	11595	11656	0
// OP_ADDRESS	11596	181	11657
// OP_LOAD_ENT	28	181	11658
// OP_STOREP_ENT	11658	11657	0
// OP_ADDRESS	11596	146	11659
// OP_STOREP_FNC	11594	11659	0
// OP_DONE	0	0	0
void () ShalMissile = 
{
    local entity missile;
    local vector dir;
    local float dist;
    local float flytime;
    dir = normalize((self.enemy.origin + '0 0 10') - self.origin);
    dist = vlen(self.enemy.origin - self.origin);
    flytime = dist * 0.002;
    
    if(flytime < 0.1)
    {
        flytime = 0.1;
    }
    
    self.effects = self.effects | EF_MUZZLEFLASH;
    sound(self, CHAN_WEAPON, "shalrath/attack2.wav", 1, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.solid = SOLID_BBOX;
    missile.movetype = MOVETYPE_FLYMISSILE;
    setmodel(missile, "progs/v_spike.mdl");
    setsize(missile, '0 0 0', '0 0 0');
    missile.origin = self.origin + '0 0 10';
    missile.velocity = dir * 400;
    missile.avelocity = '300 300 300';
    missile.nextthink = flytime + time;
    missile.think = ShalHome;
    missile.enemy = self.enemy;
    missile.touch = ShalMissileTouch;
};

// ShalHome
// function begins at statement 20313, parm_start=11660
// OP_LOAD_ENT	28	181	11666
// OP_LOAD_V	11666	105	11667
// OP_ADD_V	11667	6293	11670
// OP_STORE_V	11670	11663	0
// OP_LOAD_ENT	28	181	11673
// OP_LOAD_F	11673	152	11674
// OP_LT	11674	708	11675
// OP_IFNOT	11675	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	11676
// OP_SUB_V	11663	11676	11679
// OP_STORE_V	11679	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	11660	0
// OP_EQ_F	350	819	11682
// OP_IFNOT	11682	5	0
// OP_ADDRESS	28	113	11683
// OP_MUL_VF	11660	11686	11687
// OP_STOREP_V	11687	11683	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	113	11690
// OP_MUL_VF	11660	2140	11693
// OP_STOREP_V	11693	11690	0
// OP_ADDRESS	28	150	11696
// OP_ADD_F	31	922	11697
// OP_STOREP_F	11697	11696	0
// OP_ADDRESS	28	148	11698
// OP_STOREP_FNC	11595	11698	0
// OP_DONE	0	0	0
void () ShalHome = 
{
    local vector dir;
    local vector vtemp;
    vtemp = self.enemy.origin + '0 0 10';
    
    if(self.enemy.health < 1)
    {
        remove(self);
        return;
    }
    
    dir = normalize(vtemp - self.origin);
    if(skill == 3)
    {
        self.velocity = dir * 350;
    }
    else
    {
        self.velocity = dir * 250;
    }
    
    self.nextthink = time + 0.2;
    self.think = ShalHome;
};

// ShalMissileTouch
// function begins at statement 20344, parm_start=11699
// OP_LOAD_ENT	28	201	11699
// OP_EQ_E	29	11699	11700
// OP_IFNOT	11700	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	11701
// OP_EQ_S	11701	1346	11702
// OP_IFNOT	11702	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	5767	13	0
// OP_CALL4	521	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	11703
// OP_STORE_V	11703	7	0
// OP_STORE_V	2007	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1994	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2865	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	312	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	11704
// OP_STORE_V	11704	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	11705
// OP_STORE_V	11705	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	11706
// OP_STORE_V	11706	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	113	11707
// OP_STOREP_V	638	11707	0
// OP_ADDRESS	28	146	11710
// OP_STOREP_FNC	518	11710	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3169	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	104	11711
// OP_STOREP_F	238	11711	0
// OP_CALL0	3157	0	0
// OP_DONE	0	0	0
void () ShalMissileTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.classname == "monster_zombie")
    {
        T_Damage(other, self, self, 110);
    }
    
    T_RadiusDamage(self, self.owner, 40, world);
    sound(self, CHAN_WEAPON, "weapons/r_exp3.wav", 1, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.velocity = '0 0 0';
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// monster_shalrath
// function begins at statement 20397, parm_start=11713
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	526	549	11713
// OP_BITAND	11713	571	11714
// OP_NOT_F	11714	0	11715
// OP_IFNOT	11715	19	0
// OP_STORE_V	11716	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11587	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11635	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11557	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11631	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11592	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11531	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11581	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1383	4	0
// OP_CALL1	510	0	0
// OP_ADDRESS	28	104	11717
// OP_STOREP_F	241	11717	0
// OP_ADDRESS	28	103	11718
// OP_STOREP_F	230	11718	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11716	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	296	7	0
// OP_STORE_V	299	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	11719
// OP_STOREP_F	3289	11719	0
// OP_ADDRESS	28	357	11720
// OP_STOREP_FNC	11527	11720	0
// OP_ADDRESS	28	358	11721
// OP_STOREP_FNC	11528	11721	0
// OP_ADDRESS	28	359	11722
// OP_STOREP_FNC	11542	11722	0
// OP_ADDRESS	28	363	11723
// OP_STOREP_FNC	11584	11723	0
// OP_ADDRESS	28	362	11724
// OP_STOREP_FNC	11525	11724	0
// OP_ADDRESS	28	360	11725
// OP_STOREP_FNC	11555	11725	0
// OP_ADDRESS	28	148	11726
// OP_STOREP_FNC	6238	11726	0
// OP_ADDRESS	28	150	11727
// OP_ADD_F	31	686	11728
// OP_CALL0	453	0	0
// OP_MUL_F	1	686	11729
// OP_ADD_F	11728	11729	11730
// OP_STOREP_F	11730	11727	0
// OP_DONE	0	0	0
void () monster_shalrath = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    
    if(!(current_selected.chess_flags & CF_HAS_MOVED))
    {
        precache_model2("progs/shalrath.mdl");
        precache_model2("progs/h_shal.mdl");
        precache_model2("progs/v_spike.mdl");
        precache_sound2("shalrath/attack.wav");
        precache_sound2("shalrath/attack2.wav");
        precache_sound2("shalrath/death.wav");
        precache_sound2("shalrath/idle.wav");
        precache_sound2("shalrath/pain.wav");
        precache_sound2("shalrath/sight.wav");
    }
    
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shalrath.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 400;
    self.th_stand = shal_stand;
    self.th_walk = shal_walk1;
    self.th_run = shal_run1;
    self.th_die = shalrath_die;
    self.th_pain = shalrath_pain;
    self.th_missile = shal_attack1;
    self.think = walkmonster_start;
    self.nextthink = (time + 0.1) + (random() * 0.1);
};

