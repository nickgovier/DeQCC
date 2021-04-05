void () bubble_bob;
// player_stand1
// function begins at statement 8120, parm_start=5450
// OP_STATE	5450	4433	0
// OP_ADDRESS	28	156	5451
// OP_STOREP_F	213	5451	0
// OP_LOAD_F	28	114	5452
// OP_LOAD_F	28	115	5453
// OP_OR	5452	5453	5454
// OP_IFNOT	5454	5	0
// OP_ADDRESS	28	372	5455
// OP_STOREP_F	213	5455	0
// OP_CALL0	3086	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5456
// OP_EQ_F	5456	253	5457
// OP_IFNOT	5457	11	0
// OP_LOAD_F	28	372	5458
// OP_GE	5458	2717	5459
// OP_IFNOT	5459	3	0
// OP_ADDRESS	28	372	5460
// OP_STOREP_F	213	5460	0
// OP_ADDRESS	28	131	5461
// OP_LOAD_F	28	372	5462
// OP_ADD_F	5450	5462	5463
// OP_STOREP_F	5463	5461	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	372	5464
// OP_GE	5464	230	5465
// OP_IFNOT	5465	3	0
// OP_ADDRESS	28	372	5466
// OP_STOREP_F	213	5466	0
// OP_ADDRESS	28	131	5467
// OP_LOAD_F	28	372	5468
// OP_ADD_F	2717	5468	5469
// OP_STOREP_F	5469	5467	0
// OP_ADDRESS	28	372	5470
// OP_LOAD_F	28	372	5471
// OP_ADD_F	5471	214	5472
// OP_STOREP_F	5472	5470	0
// OP_DONE	0	0	0
void () player_stand1 = [17, player_stand1]
{
    self.weaponframe = FALSE;
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = FALSE;
        player_run();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe >= 12)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = 17 + self.walkframe;
    }
    else
    {
        
        if(self.walkframe >= MOVETYPE_FLY)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = 12 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
};

// player_run
// function begins at statement 8158, parm_start=5473
// OP_STATE	231	3086	0
// OP_ADDRESS	28	156	5473
// OP_STOREP_F	213	5473	0
// OP_LOAD_F	28	114	5474
// OP_NOT_F	5474	0	5475
// OP_LOAD_F	28	115	5476
// OP_NOT_F	5476	0	5477
// OP_AND	5475	5477	5478
// OP_IFNOT	5478	5	0
// OP_ADDRESS	28	372	5479
// OP_STOREP_F	213	5479	0
// OP_CALL0	4433	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5480
// OP_EQ_F	5480	253	5481
// OP_IFNOT	5481	11	0
// OP_LOAD_F	28	372	5482
// OP_EQ_F	5482	231	5483
// OP_IFNOT	5483	3	0
// OP_ADDRESS	28	372	5484
// OP_STOREP_F	213	5484	0
// OP_ADDRESS	28	131	5485
// OP_LOAD_F	28	372	5486
// OP_ADD_F	213	5486	5487
// OP_STOREP_F	5487	5485	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	372	5488
// OP_EQ_F	5488	231	5489
// OP_IFNOT	5489	3	0
// OP_ADDRESS	28	372	5490
// OP_STOREP_F	213	5490	0
// OP_ADDRESS	28	131	5491
// OP_LOAD_F	28	131	5492
// OP_LOAD_F	28	372	5493
// OP_ADD_F	5492	5493	5494
// OP_STOREP_F	5494	5491	0
// OP_ADDRESS	28	372	5495
// OP_LOAD_F	28	372	5496
// OP_ADD_F	5496	214	5497
// OP_STOREP_F	5497	5495	0
// OP_DONE	0	0	0
void () player_run = [6, player_run]
{
    self.weaponframe = FALSE;
    
    if(!self.velocity_x && !self.velocity_y)
    {
        self.walkframe = FALSE;
        player_stand1();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = FALSE + self.walkframe;
    }
    else
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
};

// player_shot1
// function begins at statement 8199, parm_start=5498
// OP_STATE	5498	5499	0
// OP_ADDRESS	28	156	5500
// OP_STOREP_F	214	5500	0
// OP_ADDRESS	28	133	5501
// OP_LOAD_F	28	133	5502
// OP_BITOR	5502	334	5503
// OP_STOREP_F	5503	5501	0
// OP_DONE	0	0	0
void () player_shot1 = [113, player_shot2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_shot2
// function begins at statement 8207, parm_start=5504
// OP_STATE	5504	5505	0
// OP_ADDRESS	28	156	5506
// OP_STOREP_F	216	5506	0
// OP_DONE	0	0	0
void () player_shot2 = [114, player_shot3]
{
    self.weaponframe = FL_SWIM;
};

// player_shot3
// function begins at statement 8211, parm_start=5507
// OP_STATE	5507	5508	0
// OP_ADDRESS	28	156	5509
// OP_STOREP_F	228	5509	0
// OP_DONE	0	0	0
void () player_shot3 = [115, player_shot4]
{
    self.weaponframe = MOVETYPE_WALK;
};

// player_shot4
// function begins at statement 8215, parm_start=5510
// OP_STATE	5510	5511	0
// OP_ADDRESS	28	156	5512
// OP_STOREP_F	229	5512	0
// OP_DONE	0	0	0
void () player_shot4 = [116, player_shot5]
{
    self.weaponframe = MOVETYPE_STEP;
};

// player_shot5
// function begins at statement 8219, parm_start=5513
// OP_STATE	5513	5514	0
// OP_ADDRESS	28	156	5515
// OP_STOREP_F	230	5515	0
// OP_DONE	0	0	0
void () player_shot5 = [117, player_shot6]
{
    self.weaponframe = MOVETYPE_FLY;
};

// player_shot6
// function begins at statement 8223, parm_start=5516
// OP_STATE	5516	3086	0
// OP_ADDRESS	28	156	5517
// OP_STOREP_F	231	5517	0
// OP_DONE	0	0	0
void () player_shot6 = [118, player_run]
{
    self.weaponframe = MOVETYPE_TOSS;
};

// player_axe1
// function begins at statement 8227, parm_start=5518
// OP_STATE	5518	5519	0
// OP_ADDRESS	28	156	5520
// OP_STOREP_F	214	5520	0
// OP_DONE	0	0	0
void () player_axe1 = [119, player_axe2]
{
    self.weaponframe = TRUE;
};

// player_axe2
// function begins at statement 8231, parm_start=5521
// OP_STATE	746	5521	0
// OP_ADDRESS	28	156	5522
// OP_STOREP_F	216	5522	0
// OP_DONE	0	0	0
void () player_axe2 = [120, player_axe3]
{
    self.weaponframe = FL_SWIM;
};

// player_axe3
// function begins at statement 8235, parm_start=5523
// OP_STATE	5523	5524	0
// OP_ADDRESS	28	156	5525
// OP_STOREP_F	228	5525	0
// OP_CALL0	3106	0	0
// OP_DONE	0	0	0
void () player_axe3 = [121, player_axe4]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
};

// player_axe4
// function begins at statement 8240, parm_start=5526
// OP_STATE	5526	3086	0
// OP_ADDRESS	28	156	5527
// OP_STOREP_F	229	5527	0
// OP_DONE	0	0	0
void () player_axe4 = [122, player_run]
{
    self.weaponframe = MOVETYPE_STEP;
};

// player_axeb1
// function begins at statement 8244, parm_start=5528
// OP_STATE	5528	5529	0
// OP_ADDRESS	28	156	5530
// OP_STOREP_F	230	5530	0
// OP_DONE	0	0	0
void () player_axeb1 = [125, player_axeb2]
{
    self.weaponframe = MOVETYPE_FLY;
};

// player_axeb2
// function begins at statement 8248, parm_start=5531
// OP_STATE	5531	5532	0
// OP_ADDRESS	28	156	5533
// OP_STOREP_F	231	5533	0
// OP_DONE	0	0	0
void () player_axeb2 = [126, player_axeb3]
{
    self.weaponframe = MOVETYPE_TOSS;
};

// player_axeb3
// function begins at statement 8252, parm_start=5534
// OP_STATE	5534	5535	0
// OP_ADDRESS	28	156	5536
// OP_STOREP_F	232	5536	0
// OP_CALL0	3106	0	0
// OP_DONE	0	0	0
void () player_axeb3 = [127, player_axeb4]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
};

// player_axeb4
// function begins at statement 8257, parm_start=5537
// OP_STATE	221	3086	0
// OP_ADDRESS	28	156	5537
// OP_STOREP_F	217	5537	0
// OP_DONE	0	0	0
void () player_axeb4 = [128, player_run]
{
    self.weaponframe = FL_CLIENT;
};

// player_axec1
// function begins at statement 8261, parm_start=5538
// OP_STATE	5538	5539	0
// OP_ADDRESS	28	156	5540
// OP_STOREP_F	214	5540	0
// OP_DONE	0	0	0
void () player_axec1 = [131, player_axec2]
{
    self.weaponframe = TRUE;
};

// player_axec2
// function begins at statement 8265, parm_start=5541
// OP_STATE	5541	5542	0
// OP_ADDRESS	28	156	5543
// OP_STOREP_F	216	5543	0
// OP_DONE	0	0	0
void () player_axec2 = [132, player_axec3]
{
    self.weaponframe = FL_SWIM;
};

// player_axec3
// function begins at statement 8269, parm_start=5544
// OP_STATE	5544	5545	0
// OP_ADDRESS	28	156	5546
// OP_STOREP_F	228	5546	0
// OP_CALL0	3106	0	0
// OP_DONE	0	0	0
void () player_axec3 = [133, player_axec4]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
};

// player_axec4
// function begins at statement 8274, parm_start=5547
// OP_STATE	5547	3086	0
// OP_ADDRESS	28	156	5548
// OP_STOREP_F	229	5548	0
// OP_DONE	0	0	0
void () player_axec4 = [134, player_run]
{
    self.weaponframe = MOVETYPE_STEP;
};

// player_axed1
// function begins at statement 8278, parm_start=5549
// OP_STATE	5549	5550	0
// OP_ADDRESS	28	156	5551
// OP_STOREP_F	230	5551	0
// OP_DONE	0	0	0
void () player_axed1 = [137, player_axed2]
{
    self.weaponframe = MOVETYPE_FLY;
};

// player_axed2
// function begins at statement 8282, parm_start=5552
// OP_STATE	5552	5553	0
// OP_ADDRESS	28	156	5554
// OP_STOREP_F	231	5554	0
// OP_DONE	0	0	0
void () player_axed2 = [138, player_axed3]
{
    self.weaponframe = MOVETYPE_TOSS;
};

// player_axed3
// function begins at statement 8286, parm_start=5555
// OP_STATE	5555	5556	0
// OP_ADDRESS	28	156	5557
// OP_STOREP_F	232	5557	0
// OP_CALL0	3106	0	0
// OP_DONE	0	0	0
void () player_axed3 = [139, player_axed4]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
};

// player_axed4
// function begins at statement 8291, parm_start=5558
// OP_STATE	5558	3086	0
// OP_ADDRESS	28	156	5559
// OP_STOREP_F	217	5559	0
// OP_DONE	0	0	0
void () player_axed4 = [140, player_run]
{
    self.weaponframe = FL_CLIENT;
};

// player_nail1
// function begins at statement 8295, parm_start=5560
// OP_STATE	5560	5561	0
// OP_ADDRESS	28	133	5562
// OP_LOAD_F	28	133	5563
// OP_BITOR	5563	334	5564
// OP_STOREP_F	5564	5562	0
// OP_LOAD_F	28	170	5565
// OP_NOT_F	5565	0	5566
// OP_IFNOT	5566	3	0
// OP_CALL0	3086	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5567
// OP_LOAD_F	28	156	5568
// OP_ADD_F	5568	214	5569
// OP_STOREP_F	5569	5567	0
// OP_LOAD_F	28	156	5570
// OP_EQ_F	5570	234	5571
// OP_IFNOT	5571	3	0
// OP_ADDRESS	28	156	5572
// OP_STOREP_F	214	5572	0
// OP_CALL0	3088	0	0
// OP_STORE_V	229	4	0
// OP_CALL1	3793	0	0
// OP_ADDRESS	28	373	5573
// OP_ADD_F	31	1226	5574
// OP_STOREP_F	5574	5573	0
// OP_DONE	0	0	0
void () player_nail1 = [103, player_nail2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireSpikes(MOVETYPE_STEP);
    self.attack_finished = time + 0.2;
};

// player_nail2
// function begins at statement 8321, parm_start=5575
// OP_STATE	5575	3993	0
// OP_ADDRESS	28	133	5576
// OP_LOAD_F	28	133	5577
// OP_BITOR	5577	334	5578
// OP_STOREP_F	5578	5576	0
// OP_LOAD_F	28	170	5579
// OP_NOT_F	5579	0	5580
// OP_IFNOT	5580	3	0
// OP_CALL0	3086	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5581
// OP_LOAD_F	28	156	5582
// OP_ADD_F	5582	214	5583
// OP_STOREP_F	5583	5581	0
// OP_LOAD_F	28	156	5584
// OP_EQ_F	5584	234	5585
// OP_IFNOT	5585	3	0
// OP_ADDRESS	28	156	5586
// OP_STOREP_F	214	5586	0
// OP_CALL0	3088	0	0
// OP_STORE_V	279	4	0
// OP_CALL1	3793	0	0
// OP_ADDRESS	28	373	5587
// OP_ADD_F	31	1226	5588
// OP_STOREP_F	5588	5587	0
// OP_DONE	0	0	0
void () player_nail2 = [104, player_nail1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireSpikes(CONTENT_SLIME);
    self.attack_finished = time + 0.2;
};

// player_light1
// function begins at statement 8347, parm_start=5589
// OP_STATE	5589	5590	0
// OP_ADDRESS	28	133	5591
// OP_LOAD_F	28	133	5592
// OP_BITOR	5592	334	5593
// OP_STOREP_F	5593	5591	0
// OP_LOAD_F	28	170	5594
// OP_NOT_F	5594	0	5595
// OP_IFNOT	5595	3	0
// OP_CALL0	3086	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5596
// OP_LOAD_F	28	156	5597
// OP_ADD_F	5597	214	5598
// OP_STOREP_F	5598	5596	0
// OP_LOAD_F	28	156	5599
// OP_EQ_F	5599	230	5600
// OP_IFNOT	5600	3	0
// OP_ADDRESS	28	156	5601
// OP_STOREP_F	214	5601	0
// OP_CALL0	3088	0	0
// OP_CALL0	3568	0	0
// OP_ADDRESS	28	373	5602
// OP_ADD_F	31	1226	5603
// OP_STOREP_F	5603	5602	0
// OP_DONE	0	0	0
void () player_light1 = [105, player_light2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.2;
};

// player_light2
// function begins at statement 8372, parm_start=5604
// OP_STATE	5604	3994	0
// OP_ADDRESS	28	133	5605
// OP_LOAD_F	28	133	5606
// OP_BITOR	5606	334	5607
// OP_STOREP_F	5607	5605	0
// OP_LOAD_F	28	170	5608
// OP_NOT_F	5608	0	5609
// OP_IFNOT	5609	3	0
// OP_CALL0	3086	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	5610
// OP_LOAD_F	28	156	5611
// OP_ADD_F	5611	214	5612
// OP_STOREP_F	5612	5610	0
// OP_LOAD_F	28	156	5613
// OP_EQ_F	5613	230	5614
// OP_IFNOT	5614	3	0
// OP_ADDRESS	28	156	5615
// OP_STOREP_F	214	5615	0
// OP_CALL0	3088	0	0
// OP_CALL0	3568	0	0
// OP_ADDRESS	28	373	5616
// OP_ADD_F	31	1226	5617
// OP_STOREP_F	5617	5616	0
// OP_DONE	0	0	0
void () player_light2 = [106, player_light1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        player_run();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireLightning();
    self.attack_finished = time + 0.2;
};

// player_rocket1
// function begins at statement 8397, parm_start=5618
// OP_STATE	5618	5619	0
// OP_ADDRESS	28	156	5620
// OP_STOREP_F	214	5620	0
// OP_ADDRESS	28	133	5621
// OP_LOAD_F	28	133	5622
// OP_BITOR	5622	334	5623
// OP_STOREP_F	5623	5621	0
// OP_DONE	0	0	0
void () player_rocket1 = [107, player_rocket2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// player_rocket2
// function begins at statement 8405, parm_start=5624
// OP_STATE	5624	5625	0
// OP_ADDRESS	28	156	5626
// OP_STOREP_F	216	5626	0
// OP_DONE	0	0	0
void () player_rocket2 = [108, player_rocket3]
{
    self.weaponframe = FL_SWIM;
};

// player_rocket3
// function begins at statement 8409, parm_start=5627
// OP_STATE	5627	5628	0
// OP_ADDRESS	28	156	5629
// OP_STOREP_F	228	5629	0
// OP_DONE	0	0	0
void () player_rocket3 = [109, player_rocket4]
{
    self.weaponframe = MOVETYPE_WALK;
};

// player_rocket4
// function begins at statement 8413, parm_start=5630
// OP_STATE	5630	5631	0
// OP_ADDRESS	28	156	5632
// OP_STOREP_F	229	5632	0
// OP_DONE	0	0	0
void () player_rocket4 = [110, player_rocket5]
{
    self.weaponframe = MOVETYPE_STEP;
};

// player_rocket5
// function begins at statement 8417, parm_start=5633
// OP_STATE	5633	5634	0
// OP_ADDRESS	28	156	5635
// OP_STOREP_F	230	5635	0
// OP_DONE	0	0	0
void () player_rocket5 = [111, player_rocket6]
{
    self.weaponframe = MOVETYPE_FLY;
};

// player_rocket6
// function begins at statement 8421, parm_start=5636
// OP_STATE	5636	3086	0
// OP_ADDRESS	28	156	5637
// OP_STOREP_F	231	5637	0
// OP_DONE	0	0	0
void () player_rocket6 = [112, player_run]
{
    self.weaponframe = MOVETYPE_TOSS;
};

void (float num_bubbles) DeathBubbles;
// PainSound
// function begins at statement 8425, parm_start=5640
// OP_LOAD_F	28	152	5641
// OP_LT	5641	213	5642
// OP_IFNOT	5642	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	5643
// OP_EQ_S	5643	5257	5644
// OP_IFNOT	5644	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4311	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5645
// OP_EQ_F	5645	278	5646
// OP_LOAD_F	28	189	5647
// OP_EQ_F	5647	228	5648
// OP_AND	5646	5648	5649
// OP_IFNOT	5649	20	0
// OP_STORE_V	214	4	0
// OP_CALL1	5638	0	0
// OP_CALL0	452	0	0
// OP_GT	1	677	5650
// OP_IFNOT	5650	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4306	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4307	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5651
// OP_EQ_F	5651	279	5652
// OP_IFNOT	5652	18	0
// OP_CALL0	452	0	0
// OP_GT	1	677	5653
// OP_IFNOT	5653	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4338	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4339	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	5654
// OP_EQ_F	5654	280	5655
// OP_IFNOT	5655	18	0
// OP_CALL0	452	0	0
// OP_GT	1	677	5656
// OP_IFNOT	5656	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4338	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4339	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	5657
// OP_GT	5657	31	5658
// OP_IFNOT	5658	4	0
// OP_ADDRESS	28	387	5659
// OP_STOREP_F	213	5659	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	5660
// OP_ADD_F	31	677	5661
// OP_STOREP_F	5661	5660	0
// OP_LOAD_F	28	387	5662
// OP_EQ_F	5662	214	5663
// OP_IFNOT	5663	10	0
// OP_ADDRESS	28	387	5664
// OP_STOREP_F	213	5664	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4332	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	230	5665
// OP_ADD_F	5665	214	5666
// OP_STORE_V	5666	4	0
// OP_CALL1	480	0	0
// OP_STORE_F	1	5640	0
// OP_ADDRESS	28	208	5667
// OP_STOREP_S	959	5667	0
// OP_EQ_F	5640	214	5668
// OP_IFNOT	5668	4	0
// OP_ADDRESS	28	208	5669
// OP_STOREP_S	4321	5669	0
// OP_GOTO	23	0	0
// OP_EQ_F	5640	216	5670
// OP_IFNOT	5670	4	0
// OP_ADDRESS	28	208	5671
// OP_STOREP_S	4322	5671	0
// OP_GOTO	18	0	0
// OP_EQ_F	5640	228	5672
// OP_IFNOT	5672	4	0
// OP_ADDRESS	28	208	5673
// OP_STOREP_S	4323	5673	0
// OP_GOTO	13	0	0
// OP_EQ_F	5640	229	5674
// OP_IFNOT	5674	4	0
// OP_ADDRESS	28	208	5675
// OP_STOREP_S	4324	5675	0
// OP_GOTO	8	0	0
// OP_EQ_F	5640	230	5676
// OP_IFNOT	5676	4	0
// OP_ADDRESS	28	208	5677
// OP_STOREP_S	4325	5677	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	208	5678
// OP_STOREP_S	4326	5678	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	5679
// OP_STORE_V	5679	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PainSound = 
{
    local float rs;
    
    if(self.health < FALSE)
    {
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", TRUE, ATTN_NONE);
        return;
    }
    
    
    if((self.watertype == CONTENT_WATER) && (self.waterlevel == MOVETYPE_WALK))
    {
        DeathBubbles(TRUE);
        if(random() > 0.5)
        {
            sound(self, CHAN_VOICE, "player/drown1.wav", TRUE, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/drown2.wav", TRUE, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_SLIME)
    {
        if(random() > 0.5)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", TRUE, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", TRUE, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.watertype == CONTENT_LAVA)
    {
        if(random() > 0.5)
        {
            sound(self, CHAN_VOICE, "player/lburn1.wav", TRUE, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, "player/lburn2.wav", TRUE, ATTN_NORM);
        }
        
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        self.axhitme = FALSE;
        return;
    }
    
    self.pain_finished = time + 0.5;
    
    if(self.axhitme == TRUE)
    {
        self.axhitme = FALSE;
        sound(self, CHAN_VOICE, "player/axhit1.wav", TRUE, ATTN_NORM);
        return;
    }
    
    rs = rint((random() * MOVETYPE_FLY) + TRUE);
    self.noise = "";
    if(rs == TRUE)
    {
        self.noise = "player/pain1.wav";
    }
    else
    {
        if(rs == FL_SWIM)
        {
            self.noise = "player/pain2.wav";
        }
        else
        {
            if(rs == MOVETYPE_WALK)
            {
                self.noise = "player/pain3.wav";
            }
            else
            {
                if(rs == MOVETYPE_STEP)
                {
                    self.noise = "player/pain4.wav";
                }
                else
                {
                    if(rs == MOVETYPE_FLY)
                    {
                        self.noise = "player/pain5.wav";
                    }
                    else
                    {
                        self.noise = "player/pain6.wav";
                    }
                    
                }
                
            }
            
        }
        
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    return;
};

// player_pain1
// function begins at statement 8569, parm_start=5681
// OP_STATE	575	5681	0
// OP_CALL0	5639	0	0
// OP_ADDRESS	28	156	5682
// OP_STOREP_F	213	5682	0
// OP_DONE	0	0	0
void () player_pain1 = [35, player_pain2]
{
    PainSound();
    self.weaponframe = FALSE;
};

// player_pain2
// function begins at statement 8574, parm_start=5683
// OP_STATE	5683	5684	0
// OP_DONE	0	0	0
void () player_pain2 = [36, player_pain3]
{
};

// player_pain3
// function begins at statement 8576, parm_start=5685
// OP_STATE	5685	5686	0
// OP_DONE	0	0	0
void () player_pain3 = [37, player_pain4]
{
};

// player_pain4
// function begins at statement 8578, parm_start=5687
// OP_STATE	5687	5688	0
// OP_DONE	0	0	0
void () player_pain4 = [38, player_pain5]
{
};

// player_pain5
// function begins at statement 8580, parm_start=5689
// OP_STATE	5689	5690	0
// OP_DONE	0	0	0
void () player_pain5 = [39, player_pain6]
{
};

// player_pain6
// function begins at statement 8582, parm_start=5691
// OP_STATE	2101	3086	0
// OP_DONE	0	0	0
void () player_pain6 = [40, player_run]
{
};

// player_axpain1
// function begins at statement 8584, parm_start=5692
// OP_STATE	5692	5693	0
// OP_CALL0	5639	0	0
// OP_ADDRESS	28	156	5694
// OP_STOREP_F	213	5694	0
// OP_DONE	0	0	0
void () player_axpain1 = [29, player_axpain2]
{
    PainSound();
    self.weaponframe = FALSE;
};

// player_axpain2
// function begins at statement 8589, parm_start=5695
// OP_STATE	304	5695	0
// OP_DONE	0	0	0
void () player_axpain2 = [30, player_axpain3]
{
};

// player_axpain3
// function begins at statement 8591, parm_start=5696
// OP_STATE	305	5696	0
// OP_DONE	0	0	0
void () player_axpain3 = [31, player_axpain4]
{
};

// player_axpain4
// function begins at statement 8593, parm_start=5697
// OP_STATE	219	5697	0
// OP_DONE	0	0	0
void () player_axpain4 = [32, player_axpain5]
{
};

// player_axpain5
// function begins at statement 8595, parm_start=5698
// OP_STATE	307	5698	0
// OP_DONE	0	0	0
void () player_axpain5 = [33, player_axpain6]
{
};

// player_axpain6
// function begins at statement 8597, parm_start=5699
// OP_STATE	5699	3086	0
// OP_DONE	0	0	0
void () player_axpain6 = [34, player_run]
{
};

// player_pain
// function begins at statement 8599, parm_start=5700
// OP_LOAD_F	28	156	5700
// OP_IFNOT	5700	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	376	5701
// OP_GT	5701	31	5702
// OP_IFNOT	5702	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	5703
// OP_EQ_F	5703	253	5704
// OP_IFNOT	5704	3	0
// OP_CALL0	5691	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5680	0	0
// OP_DONE	0	0	0
void () player_pain = 
{
    
    if(self.weaponframe)
    {
        return;
    }
    
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        player_axpain1();
    }
    else
    {
        player_pain1();
    }
    
};

void () player_diea1;
void () player_dieb1;
void () player_diec1;
void () player_died1;
void () player_diee1;
void () player_die_ax1;
// DeathBubblesSpawn
// function begins at statement 8613, parm_start=5712
// OP_LOAD_ENT	28	201	5713
// OP_LOAD_F	5713	189	5714
// OP_NE_F	5714	228	5715
// OP_IFNOT	5715	2	0
// OP_RETURN	0	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5712	0
// OP_STORE_V	5712	4	0
// OP_STORE_V	4348	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	5712	4	0
// OP_LOAD_ENT	28	201	5716
// OP_LOAD_V	5716	105	5717
// OP_ADD_V	5717	3050	5720
// OP_STORE_V	5720	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	5712	103	5723
// OP_STOREP_F	233	5723	0
// OP_ADDRESS	5712	104	5724
// OP_STOREP_F	237	5724	0
// OP_ADDRESS	5712	113	5725
// OP_STOREP_V	5728	5725	0
// OP_ADDRESS	5712	150	5731
// OP_ADD_F	31	677	5732
// OP_STOREP_F	5732	5731	0
// OP_ADDRESS	5712	148	5733
// OP_STOREP_FNC	5449	5733	0
// OP_ADDRESS	5712	129	5734
// OP_STOREP_S	5735	5734	0
// OP_ADDRESS	5712	131	5736
// OP_STOREP_F	213	5736	0
// OP_ADDRESS	5712	421	5737
// OP_STOREP_F	213	5737	0
// OP_STORE_V	5712	4	0
// OP_STORE_V	1481	7	0
// OP_STORE_V	1484	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	150	5738
// OP_ADD_F	31	993	5739
// OP_STOREP_F	5739	5738	0
// OP_ADDRESS	28	148	5740
// OP_STOREP_FNC	5711	5740	0
// OP_ADDRESS	28	391	5741
// OP_LOAD_F	28	391	5742
// OP_ADD_F	5742	214	5743
// OP_STOREP_F	5743	5741	0
// OP_LOAD_F	28	391	5744
// OP_LOAD_F	28	392	5745
// OP_GE	5744	5745	5746
// OP_IFNOT	5746	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () DeathBubblesSpawn = 
{
    local entity bubble;
    
    if(self.owner.waterlevel != MOVETYPE_WALK)
    {
        return;
    }
    
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.owner.origin + '0.000 0.000 24.000');
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0.000 0.000 15.000';
    bubble.nextthink = time + 0.5;
    bubble.think = bubble_bob;
    bubble.classname = "bubble";
    bubble.frame = FALSE;
    bubble.cnt = FALSE;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.nextthink = time + 0.1;
    self.think = DeathBubblesSpawn;
    self.air_finished = self.air_finished + TRUE;
    
    if(self.air_finished >= self.bubble_count)
    {
        remove(self);
    }
    
};

// DeathBubbles
// function begins at statement 8666, parm_start=5747
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5748	0
// OP_STORE_V	5748	4	0
// OP_LOAD_V	28	105	5749
// OP_STORE_V	5749	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	5748	103	5752
// OP_STOREP_F	227	5752	0
// OP_ADDRESS	5748	104	5753
// OP_STOREP_F	237	5753	0
// OP_ADDRESS	5748	150	5754
// OP_ADD_F	31	993	5755
// OP_STOREP_F	5755	5754	0
// OP_ADDRESS	5748	148	5756
// OP_STOREP_FNC	5711	5756	0
// OP_ADDRESS	5748	391	5757
// OP_STOREP_F	213	5757	0
// OP_ADDRESS	5748	201	5758
// OP_STOREP_ENT	28	5758	0
// OP_ADDRESS	5748	392	5759
// OP_STOREP_F	5747	5759	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float num_bubbles) DeathBubbles = 
{
    local entity bubble_spawner;
    bubble_spawner = spawn();
    setorigin(bubble_spawner, self.origin);
    bubble_spawner.movetype = MOVETYPE_NONE;
    bubble_spawner.solid = SOLID_NOT;
    bubble_spawner.nextthink = time + 0.1;
    bubble_spawner.think = DeathBubblesSpawn;
    bubble_spawner.air_finished = FALSE;
    bubble_spawner.owner = self;
    bubble_spawner.bubble_count = num_bubbles;
    return;
};

// DeathSound
// function begins at statement 8689, parm_start=5761
// OP_LOAD_F	28	189	5762
// OP_EQ_F	5762	228	5763
// OP_IFNOT	5763	10	0
// OP_STORE_V	576	4	0
// OP_CALL1	5638	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4310	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	229	5764
// OP_ADD_F	5764	214	5765
// OP_STORE_V	5765	4	0
// OP_CALL1	480	0	0
// OP_STORE_F	1	5761	0
// OP_EQ_F	5761	214	5766
// OP_IFNOT	5766	3	0
// OP_ADDRESS	28	208	5767
// OP_STOREP_S	4327	5767	0
// OP_EQ_F	5761	216	5768
// OP_IFNOT	5768	3	0
// OP_ADDRESS	28	208	5769
// OP_STOREP_S	4328	5769	0
// OP_EQ_F	5761	228	5770
// OP_IFNOT	5770	3	0
// OP_ADDRESS	28	208	5771
// OP_STOREP_S	4329	5771	0
// OP_EQ_F	5761	229	5772
// OP_IFNOT	5772	3	0
// OP_ADDRESS	28	208	5773
// OP_STOREP_S	4330	5773	0
// OP_EQ_F	5761	230	5774
// OP_IFNOT	5774	3	0
// OP_ADDRESS	28	208	5775
// OP_STOREP_S	4331	5775	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	5776
// OP_STORE_V	5776	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () DeathSound = 
{
    local float rs;
    
    if(self.waterlevel == MOVETYPE_WALK)
    {
        DeathBubbles(KINDA_WANT);
        sound(self, CHAN_VOICE, "player/h2odeath.wav", TRUE, ATTN_NONE);
        return;
    }
    
    rs = rint((random() * MOVETYPE_STEP) + TRUE);
    
    if(rs == TRUE)
    {
        self.noise = "player/death1.wav";
    }
    
    
    if(rs == FL_SWIM)
    {
        self.noise = "player/death2.wav";
    }
    
    
    if(rs == MOVETYPE_WALK)
    {
        self.noise = "player/death3.wav";
    }
    
    
    if(rs == MOVETYPE_STEP)
    {
        self.noise = "player/death4.wav";
    }
    
    
    if(rs == MOVETYPE_FLY)
    {
        self.noise = "player/death5.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NONE);
    return;
};

// PlayerDead
// function begins at statement 8736, parm_start=5778
// OP_ADDRESS	28	150	5778
// OP_STOREP_F	276	5778	0
// OP_ADDRESS	28	165	5779
// OP_STOREP_F	248	5779	0
// OP_DONE	0	0	0
void () PlayerDead = 
{
    self.nextthink = CONTENT_EMPTY;
    self.deadflag = DEAD_DEAD;
};

// VelocityForDamage
// function begins at statement 8741, parm_start=5781
// OP_CALL0	3103	0	0
// OP_MUL_F	574	1	5785
// OP_STORE_F	5785	5782	0
// OP_CALL0	3103	0	0
// OP_MUL_F	574	1	5786
// OP_STORE_F	5786	5783	0
// OP_CALL0	452	0	0
// OP_MUL_F	574	1	5787
// OP_ADD_F	2356	5787	5788
// OP_STORE_F	5788	5784	0
// OP_GT	5781	5025	5789
// OP_IFNOT	5789	4	0
// OP_MUL_VF	5782	3328	5790
// OP_STORE_V	5790	5782	0
// OP_GOTO	8	0	0
// OP_GT	5781	5793	5794
// OP_IFNOT	5794	4	0
// OP_MUL_VF	5782	216	5795
// OP_STORE_V	5795	5782	0
// OP_GOTO	3	0	0
// OP_MUL_VF	5782	235	5798
// OP_STORE_V	5798	5782	0
// OP_RETURN	5782	0	0
// OP_DONE	0	0	0
vector (float dm) VelocityForDamage = 
{
    local vector v;
    v_x = MUST_HAVE * crandom();
    v_y = MUST_HAVE * crandom();
    v_z = 200 + (MUST_HAVE * random());
    if(dm > -50)
    {
        v = v * 0.7;
    }
    else
    {
        if(dm > -200)
        {
            v = v * FL_SWIM;
        }
        else
        {
            v = v * MOVETYPE_BOUNCE;
        }
        
    }
    
    return v;
};

// RemoveGib
// function begins at statement 8765, parm_start=5802
// OP_SUB_F	613	214	5802
// OP_STORE_F	5802	613	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () RemoveGib = 
{
    NUMGIBS = NUMGIBS - TRUE;
    remove(self);
};

// ThrowGib
// function begins at statement 8770, parm_start=5804
// OP_ADD_F	613	612	5807
// OP_GT	5807	5808	5809
// OP_IFNOT	5809	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	613	214	5810
// OP_STORE_F	5810	613	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	5806	0
// OP_ADDRESS	5806	105	5811
// OP_LOAD_V	28	105	5814
// OP_STOREP_V	5814	5811	0
// OP_STORE_V	5806	4	0
// OP_STORE_V	5804	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	5806	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	5806	113	5817
// OP_STORE_V	5805	4	0
// OP_CALL1	5780	0	0
// OP_STOREP_V	1	5817	0
// OP_ADDRESS	5806	103	5820
// OP_STOREP_F	235	5820	0
// OP_ADDRESS	5806	104	5821
// OP_STOREP_F	237	5821	0
// OP_ADDRESS	5806	122	5822
// OP_CALL0	452	0	0
// OP_MUL_F	1	580	5823
// OP_STOREP_F	5823	5822	0
// OP_ADDRESS	5806	123	5824
// OP_CALL0	452	0	0
// OP_MUL_F	1	580	5825
// OP_STOREP_F	5825	5824	0
// OP_ADDRESS	5806	124	5826
// OP_CALL0	452	0	0
// OP_MUL_F	1	580	5827
// OP_STOREP_F	5827	5826	0
// OP_ADDRESS	5806	148	5828
// OP_STOREP_FNC	5801	5828	0
// OP_ADDRESS	5806	102	5829
// OP_STOREP_F	31	5829	0
// OP_ADD_F	613	612	5830
// OP_LT	5830	5831	5832
// OP_IFNOT	5832	8	0
// OP_ADDRESS	5806	150	5833
// OP_ADD_F	31	235	5834
// OP_CALL0	452	0	0
// OP_MUL_F	1	235	5835
// OP_ADD_F	5834	5835	5836
// OP_STOREP_F	5836	5833	0
// OP_GOTO	6	0	0
// OP_ADDRESS	5806	150	5837
// OP_CALL0	452	0	0
// OP_MUL_F	1	216	5838
// OP_ADD_F	230	5838	5839
// OP_STOREP_F	5839	5837	0
// OP_ADDRESS	5806	131	5840
// OP_STOREP_F	213	5840	0
// OP_ADDRESS	5806	182	5841
// OP_STOREP_F	213	5841	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowGib = 
{
    local entity new;
    
    if((NUMGIBS + NUMPATHS) > 436)
    {
        return;
    }
    
    NUMGIBS = NUMGIBS + TRUE;
    new = spawn();
    new.origin = self.origin;
    setmodel(new, gibname);
    setsize(new, VEC_ORIGIN, VEC_ORIGIN);
    new.velocity = VelocityForDamage(dm);
    new.movetype = MOVETYPE_BOUNCE;
    new.solid = SOLID_NOT;
    new.avelocity_x = random() * SEARCH_RADIUS;
    new.avelocity_y = random() * SEARCH_RADIUS;
    new.avelocity_z = random() * SEARCH_RADIUS;
    new.think = RemoveGib;
    new.ltime = time;
    if((NUMGIBS + NUMPATHS) < 410)
    {
        new.nextthink = (time + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    }
    else
    {
        new.nextthink = MOVETYPE_FLY + (random() * FL_SWIM);
    }
    
    new.frame = FALSE;
    new.flags = FALSE;
};

// ThrowHead
// function begins at statement 8832, parm_start=5843
// OP_STORE_V	28	4	0
// OP_STORE_V	5843	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	131	5845
// OP_STOREP_F	213	5845	0
// OP_ADDRESS	28	150	5846
// OP_STOREP_F	276	5846	0
// OP_ADDRESS	28	103	5847
// OP_STOREP_F	235	5847	0
// OP_ADDRESS	28	163	5848
// OP_STOREP_F	250	5848	0
// OP_ADDRESS	28	104	5849
// OP_STOREP_F	237	5849	0
// OP_ADDRESS	28	166	5850
// OP_STOREP_V	5853	5850	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2396	7	0
// OP_STORE_V	2399	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	113	5856
// OP_STORE_V	5844	4	0
// OP_CALL1	5780	0	0
// OP_STOREP_V	1	5856	0
// OP_ADDRESS	28	108	5859
// OP_LOAD_F	28	108	5860
// OP_SUB_F	5860	5005	5861
// OP_STOREP_F	5861	5859	0
// OP_ADDRESS	28	182	5862
// OP_LOAD_F	28	182	5863
// OP_LOAD_F	28	182	5864
// OP_BITAND	5864	223	5865
// OP_SUB_F	5863	5865	5866
// OP_STOREP_F	5866	5862	0
// OP_ADDRESS	28	121	5867
// OP_CALL0	3103	0	0
// OP_MUL_FV	1	5870	5873
// OP_STOREP_V	5873	5867	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowHead = 
{
    setmodel(self, gibname);
    self.frame = FALSE;
    self.nextthink = CONTENT_EMPTY;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0.000 0.000 8.000';
    setsize(self, '-16.000 -16.000 0.000', '16.000 16.000 56.000');
    self.velocity = VelocityForDamage(dm);
    self.origin_z = self.origin_z - 24;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0.000 600.000 0.000';
};

// GibPlayer
// function begins at statement 8870, parm_start=5877
// OP_EQ_F	613	213	5878
// OP_IFNOT	5878	15	0
// OP_LOAD_V	28	105	5879
// OP_STORE_V	5879	4	0
// OP_STORE_V	3365	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	5877	0
// OP_IFNOT	5877	9	0
// OP_LOAD_S	5877	129	5882
// OP_NE_S	5882	5883	5884
// OP_IFNOT	5884	3	0
// OP_ADD_F	613	214	5885
// OP_STORE_F	5885	613	0
// OP_LOAD_ENT	5877	164	5886
// OP_STORE_ENT	5886	5877	0
// OP_GOTO	-8	0	0
// OP_STORE_V	4344	4	0
// OP_LOAD_F	28	152	5887
// OP_STORE_V	5887	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	5888
// OP_STORE_V	5888	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	5889
// OP_STORE_V	5889	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	5890
// OP_STORE_V	5890	7	0
// OP_CALL2	5803	0	0
// OP_ADDRESS	28	165	5891
// OP_STOREP_F	248	5891	0
// OP_LOAD_S	347	129	5892
// OP_EQ_S	5892	5257	5893
// OP_IFNOT	5893	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4311	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	347	129	5894
// OP_EQ_S	5894	5276	5895
// OP_IFNOT	5895	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4311	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_LT	1	677	5896
// OP_IFNOT	5896	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4318	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () GibPlayer = 
{
    local entity e;
    
    if(NUMGIBS == FALSE)
    {
        e = findradius(self.origin, 100000);
        
        while(e)
        {
            
            if(e.classname != "BotPath")
            {
                NUMGIBS = NUMGIBS + TRUE;
            }
            
            e = e.chain;
        }
        
    }
    
    ThrowHead("progs/h_player.mdl", self.health);
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
    self.deadflag = DEAD_DEAD;
    
    if(damage_attacker.classname == "teledeath")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", TRUE, ATTN_NONE);
        return;
    }
    
    
    if(damage_attacker.classname == "teledeath2")
    {
        sound(self, CHAN_VOICE, "player/teledth1.wav", TRUE, ATTN_NONE);
        return;
    }
    
    if(random() < 0.5)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", TRUE, ATTN_NONE);
    }
    else
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NONE);
    }
    
};

// PlayerDie
// function begins at statement 8941, parm_start=5897
// OP_ADDRESS	28	162	5898
// OP_LOAD_F	28	162	5899
// OP_LOAD_F	28	162	5900
// OP_BITAND	5900	272	5901
// OP_SUB_F	5899	5901	5902
// OP_STOREP_F	5902	5898	0
// OP_ADDRESS	28	376	5903
// OP_STOREP_F	213	5903	0
// OP_ADDRESS	28	375	5904
// OP_STOREP_F	213	5904	0
// OP_ADDRESS	28	377	5905
// OP_STOREP_F	213	5905	0
// OP_ADDRESS	28	378	5906
// OP_STOREP_F	213	5906	0
// OP_ADDRESS	28	93	5907
// OP_STOREP_F	4441	5907	0
// OP_OR	35	36	5908
// OP_IFNOT	5908	2	0
// OP_CALL0	3034	0	0
// OP_ADDRESS	28	155	5909
// OP_STOREP_S	959	5909	0
// OP_ADDRESS	28	166	5910
// OP_STOREP_V	5913	5910	0
// OP_ADDRESS	28	165	5916
// OP_STOREP_F	247	5916	0
// OP_ADDRESS	28	104	5917
// OP_STOREP_F	237	5917	0
// OP_ADDRESS	28	182	5918
// OP_LOAD_F	28	182	5919
// OP_LOAD_F	28	182	5920
// OP_BITAND	5920	223	5921
// OP_SUB_F	5919	5921	5922
// OP_STOREP_F	5922	5918	0
// OP_ADDRESS	28	103	5923
// OP_STOREP_F	231	5923	0
// OP_LOAD_F	28	116	5924
// OP_LT	5924	235	5925
// OP_IFNOT	5925	7	0
// OP_ADDRESS	28	116	5926
// OP_LOAD_F	28	116	5927
// OP_CALL0	452	0	0
// OP_MUL_F	1	3070	5928
// OP_ADD_F	5927	5928	5929
// OP_STOREP_F	5929	5926	0
// OP_LOAD_F	28	152	5930
// OP_LT	5930	5327	5931
// OP_IFNOT	5931	3	0
// OP_CALL0	5876	0	0
// OP_RETURN	0	0	0
// OP_CALL0	5760	0	0
// OP_ADDRESS	28	118	5932
// OP_STOREP_F	213	5932	0
// OP_ADDRESS	28	120	5933
// OP_STOREP_F	213	5933	0
// OP_LOAD_F	28	154	5934
// OP_EQ_F	5934	253	5935
// OP_IFNOT	5935	3	0
// OP_CALL0	5710	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	4739	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	5897	0
// OP_NOT_F	5897	0	5936
// OP_IFNOT	5936	7	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	231	5937
// OP_STORE_V	5937	4	0
// OP_CALL1	481	0	0
// OP_ADD_F	214	1	5938
// OP_STORE_F	5938	5897	0
// OP_EQ_F	5897	214	5939
// OP_IFNOT	5939	3	0
// OP_CALL0	5705	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	5897	216	5940
// OP_IFNOT	5940	3	0
// OP_CALL0	5706	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	5897	228	5941
// OP_IFNOT	5941	3	0
// OP_CALL0	5707	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	5897	229	5942
// OP_IFNOT	5942	3	0
// OP_CALL0	5708	0	0
// OP_GOTO	2	0	0
// OP_CALL0	5709	0	0
// OP_DONE	0	0	0
void () PlayerDie = 
{
    local float i;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    self.modelindex = modelindex_player;
    
    if(deathmatch || coop)
    {
        DropBackpack();
    }
    
    self.weaponmodel = "";
    self.view_ofs = '0.000 0.000 -8.000';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < MOVETYPE_BOUNCE)
    {
        self.velocity_z = self.velocity_z + (random() * 300);
    }
    
    
    if(self.health < -40)
    {
        GibPlayer();
        return;
    }
    
    DeathSound();
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    
    if(self.weapon == IT_AXE)
    {
        player_die_ax1();
        return;
    }
    
    i = cvar("temp1");
    
    if(!i)
    {
        i = TRUE + (floor(random() * MOVETYPE_TOSS));
    }
    
    if(i == TRUE)
    {
        player_diea1();
    }
    else
    {
        if(i == FL_SWIM)
        {
            player_dieb1();
        }
        else
        {
            if(i == MOVETYPE_WALK)
            {
                player_diec1();
            }
            else
            {
                if(i == MOVETYPE_STEP)
                {
                    player_died1();
                }
                else
                {
                    player_diee1();
                }
                
            }
            
        }
        
    }
    
};

// set_suicide_frame
// function begins at statement 9029, parm_start=5943
// OP_LOAD_S	28	130	5943
// OP_NE_S	5943	4342	5944
// OP_IFNOT	5944	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	131	5945
// OP_STOREP_F	730	5945	0
// OP_ADDRESS	28	104	5946
// OP_STOREP_F	237	5946	0
// OP_ADDRESS	28	103	5947
// OP_STOREP_F	231	5947	0
// OP_ADDRESS	28	165	5948
// OP_STOREP_F	248	5948	0
// OP_ADDRESS	28	150	5949
// OP_STOREP_F	276	5949	0
// OP_DONE	0	0	0
void () set_suicide_frame = 
{
    
    if(self.model != "progs/player.mdl")
    {
        return;
    }
    
    self.frame = 60;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_TOSS;
    self.deadflag = DEAD_DEAD;
    self.nextthink = CONTENT_EMPTY;
};

// player_diea1
// function begins at statement 9044, parm_start=5950
// OP_STATE	756	5950	0
// OP_DONE	0	0	0
void () player_diea1 = [50, player_diea2]
{
};

// player_diea2
// function begins at statement 9046, parm_start=5951
// OP_STATE	5951	5952	0
// OP_DONE	0	0	0
void () player_diea2 = [51, player_diea3]
{
};

// player_diea3
// function begins at statement 9048, parm_start=5953
// OP_STATE	5953	5954	0
// OP_DONE	0	0	0
void () player_diea3 = [52, player_diea4]
{
};

// player_diea4
// function begins at statement 9050, parm_start=5955
// OP_STATE	5955	5956	0
// OP_DONE	0	0	0
void () player_diea4 = [53, player_diea5]
{
};

// player_diea5
// function begins at statement 9052, parm_start=5957
// OP_STATE	5957	5958	0
// OP_DONE	0	0	0
void () player_diea5 = [54, player_diea6]
{
};

// player_diea6
// function begins at statement 9054, parm_start=5959
// OP_STATE	5959	5960	0
// OP_DONE	0	0	0
void () player_diea6 = [55, player_diea7]
{
};

// player_diea7
// function begins at statement 9056, parm_start=5961
// OP_STATE	5961	5962	0
// OP_DONE	0	0	0
void () player_diea7 = [56, player_diea8]
{
};

// player_diea8
// function begins at statement 9058, parm_start=5963
// OP_STATE	5963	5964	0
// OP_DONE	0	0	0
void () player_diea8 = [57, player_diea9]
{
};

// player_diea9
// function begins at statement 9060, parm_start=5965
// OP_STATE	5965	5966	0
// OP_DONE	0	0	0
void () player_diea9 = [58, player_diea10]
{
};

// player_diea10
// function begins at statement 9062, parm_start=5967
// OP_STATE	5967	5968	0
// OP_DONE	0	0	0
void () player_diea10 = [59, player_diea11]
{
};

// player_diea11
// function begins at statement 9064, parm_start=5969
// OP_STATE	730	5968	0
// OP_CALL0	5777	0	0
// OP_DONE	0	0	0
void () player_diea11 = [60, player_diea11]
{
    PlayerDead();
};

// player_dieb1
// function begins at statement 9067, parm_start=5969
// OP_STATE	5969	5970	0
// OP_DONE	0	0	0
void () player_dieb1 = [61, player_dieb2]
{
};

// player_dieb2
// function begins at statement 9069, parm_start=5971
// OP_STATE	5971	5972	0
// OP_DONE	0	0	0
void () player_dieb2 = [62, player_dieb3]
{
};

// player_dieb3
// function begins at statement 9071, parm_start=5973
// OP_STATE	4366	5973	0
// OP_DONE	0	0	0
void () player_dieb3 = [63, player_dieb4]
{
};

// player_dieb4
// function begins at statement 9073, parm_start=5974
// OP_STATE	220	5974	0
// OP_DONE	0	0	0
void () player_dieb4 = [64, player_dieb5]
{
};

// player_dieb5
// function begins at statement 9075, parm_start=5975
// OP_STATE	5975	5976	0
// OP_DONE	0	0	0
void () player_dieb5 = [65, player_dieb6]
{
};

// player_dieb6
// function begins at statement 9077, parm_start=5977
// OP_STATE	5977	5978	0
// OP_DONE	0	0	0
void () player_dieb6 = [66, player_dieb7]
{
};

// player_dieb7
// function begins at statement 9079, parm_start=5979
// OP_STATE	5979	5980	0
// OP_DONE	0	0	0
void () player_dieb7 = [67, player_dieb8]
{
};

// player_dieb8
// function begins at statement 9081, parm_start=5981
// OP_STATE	5981	5982	0
// OP_DONE	0	0	0
void () player_dieb8 = [68, player_dieb9]
{
};

// player_dieb9
// function begins at statement 9083, parm_start=5983
// OP_STATE	5983	5982	0
// OP_CALL0	5777	0	0
// OP_DONE	0	0	0
void () player_dieb9 = [69, player_dieb9]
{
    PlayerDead();
};

// player_diec1
// function begins at statement 9086, parm_start=5984
// OP_STATE	5984	5985	0
// OP_DONE	0	0	0
void () player_diec1 = [70, player_diec2]
{
};

// player_diec2
// function begins at statement 9088, parm_start=5986
// OP_STATE	5986	5987	0
// OP_DONE	0	0	0
void () player_diec2 = [71, player_diec3]
{
};

// player_diec3
// function begins at statement 9090, parm_start=5988
// OP_STATE	5988	5989	0
// OP_DONE	0	0	0
void () player_diec3 = [72, player_diec4]
{
};

// player_diec4
// function begins at statement 9092, parm_start=5990
// OP_STATE	3216	5990	0
// OP_DONE	0	0	0
void () player_diec4 = [73, player_diec5]
{
};

// player_diec5
// function begins at statement 9094, parm_start=5991
// OP_STATE	5991	5992	0
// OP_DONE	0	0	0
void () player_diec5 = [74, player_diec6]
{
};

// player_diec6
// function begins at statement 9096, parm_start=5993
// OP_STATE	5993	5994	0
// OP_DONE	0	0	0
void () player_diec6 = [75, player_diec7]
{
};

// player_diec7
// function begins at statement 9098, parm_start=5995
// OP_STATE	5995	5996	0
// OP_DONE	0	0	0
void () player_diec7 = [76, player_diec8]
{
};

// player_diec8
// function begins at statement 9100, parm_start=5997
// OP_STATE	5997	5998	0
// OP_DONE	0	0	0
void () player_diec8 = [77, player_diec9]
{
};

// player_diec9
// function begins at statement 9102, parm_start=5999
// OP_STATE	5999	6000	0
// OP_DONE	0	0	0
void () player_diec9 = [78, player_diec10]
{
};

// player_diec10
// function begins at statement 9104, parm_start=6001
// OP_STATE	6001	6002	0
// OP_DONE	0	0	0
void () player_diec10 = [79, player_diec11]
{
};

// player_diec11
// function begins at statement 9106, parm_start=6003
// OP_STATE	1178	6003	0
// OP_DONE	0	0	0
void () player_diec11 = [80, player_diec12]
{
};

// player_diec12
// function begins at statement 9108, parm_start=6004
// OP_STATE	6004	6005	0
// OP_DONE	0	0	0
void () player_diec12 = [81, player_diec13]
{
};

// player_diec13
// function begins at statement 9110, parm_start=6006
// OP_STATE	6006	6007	0
// OP_DONE	0	0	0
void () player_diec13 = [82, player_diec14]
{
};

// player_diec14
// function begins at statement 9112, parm_start=6008
// OP_STATE	6008	6009	0
// OP_DONE	0	0	0
void () player_diec14 = [83, player_diec15]
{
};

// player_diec15
// function begins at statement 9114, parm_start=6010
// OP_STATE	6010	6009	0
// OP_CALL0	5777	0	0
// OP_DONE	0	0	0
void () player_diec15 = [84, player_diec15]
{
    PlayerDead();
};

// player_died1
// function begins at statement 9117, parm_start=6011
// OP_STATE	6011	6012	0
// OP_DONE	0	0	0
void () player_died1 = [85, player_died2]
{
};

// player_died2
// function begins at statement 9119, parm_start=6013
// OP_STATE	6013	6014	0
// OP_DONE	0	0	0
void () player_died2 = [86, player_died3]
{
};

// player_died3
// function begins at statement 9121, parm_start=6015
// OP_STATE	6015	6016	0
// OP_DONE	0	0	0
void () player_died3 = [87, player_died4]
{
};

// player_died4
// function begins at statement 9123, parm_start=6017
// OP_STATE	6017	6018	0
// OP_DONE	0	0	0
void () player_died4 = [88, player_died5]
{
};

// player_died5
// function begins at statement 9125, parm_start=6019
// OP_STATE	6019	6020	0
// OP_DONE	0	0	0
void () player_died5 = [89, player_died6]
{
};

// player_died6
// function begins at statement 9127, parm_start=6021
// OP_STATE	1789	6021	0
// OP_DONE	0	0	0
void () player_died6 = [90, player_died7]
{
};

// player_died7
// function begins at statement 9129, parm_start=6022
// OP_STATE	6022	6023	0
// OP_DONE	0	0	0
void () player_died7 = [91, player_died8]
{
};

// player_died8
// function begins at statement 9131, parm_start=6024
// OP_STATE	6024	6025	0
// OP_DONE	0	0	0
void () player_died8 = [92, player_died9]
{
};

// player_died9
// function begins at statement 9133, parm_start=6026
// OP_STATE	6026	6025	0
// OP_CALL0	5777	0	0
// OP_DONE	0	0	0
void () player_died9 = [93, player_died9]
{
    PlayerDead();
};

// player_diee1
// function begins at statement 9136, parm_start=6027
// OP_STATE	6027	6028	0
// OP_DONE	0	0	0
void () player_diee1 = [94, player_diee2]
{
};

// player_diee2
// function begins at statement 9138, parm_start=6029
// OP_STATE	6029	6030	0
// OP_DONE	0	0	0
void () player_diee2 = [95, player_diee3]
{
};

// player_diee3
// function begins at statement 9140, parm_start=6031
// OP_STATE	6031	6032	0
// OP_DONE	0	0	0
void () player_diee3 = [96, player_diee4]
{
};

// player_diee4
// function begins at statement 9142, parm_start=6033
// OP_STATE	6033	6034	0
// OP_DONE	0	0	0
void () player_diee4 = [97, player_diee5]
{
};

// player_diee5
// function begins at statement 9144, parm_start=6035
// OP_STATE	6035	6036	0
// OP_DONE	0	0	0
void () player_diee5 = [98, player_diee6]
{
};

// player_diee6
// function begins at statement 9146, parm_start=6037
// OP_STATE	736	6037	0
// OP_DONE	0	0	0
void () player_diee6 = [99, player_diee7]
{
};

// player_diee7
// function begins at statement 9148, parm_start=6038
// OP_STATE	574	6038	0
// OP_DONE	0	0	0
void () player_diee7 = [100, player_diee8]
{
};

// player_diee8
// function begins at statement 9150, parm_start=6039
// OP_STATE	6039	6040	0
// OP_DONE	0	0	0
void () player_diee8 = [101, player_diee9]
{
};

// player_diee9
// function begins at statement 9152, parm_start=6041
// OP_STATE	6041	6040	0
// OP_CALL0	5777	0	0
// OP_DONE	0	0	0
void () player_diee9 = [102, player_diee9]
{
    PlayerDead();
};

// player_die_ax1
// function begins at statement 9155, parm_start=6042
// OP_STATE	6042	6043	0
// OP_DONE	0	0	0
void () player_die_ax1 = [41, player_die_ax2]
{
};

// player_die_ax2
// function begins at statement 9157, parm_start=6044
// OP_STATE	6044	6045	0
// OP_DONE	0	0	0
void () player_die_ax2 = [42, player_die_ax3]
{
};

// player_die_ax3
// function begins at statement 9159, parm_start=6046
// OP_STATE	6046	6047	0
// OP_DONE	0	0	0
void () player_die_ax3 = [43, player_die_ax4]
{
};

// player_die_ax4
// function begins at statement 9161, parm_start=6048
// OP_STATE	6048	6049	0
// OP_DONE	0	0	0
void () player_die_ax4 = [44, player_die_ax5]
{
};

// player_die_ax5
// function begins at statement 9163, parm_start=6050
// OP_STATE	1770	6050	0
// OP_DONE	0	0	0
void () player_die_ax5 = [45, player_die_ax6]
{
};

// player_die_ax6
// function begins at statement 9165, parm_start=6051
// OP_STATE	6051	6052	0
// OP_DONE	0	0	0
void () player_die_ax6 = [46, player_die_ax7]
{
};

// player_die_ax7
// function begins at statement 9167, parm_start=6053
// OP_STATE	6053	6054	0
// OP_DONE	0	0	0
void () player_die_ax7 = [47, player_die_ax8]
{
};

// player_die_ax8
// function begins at statement 9169, parm_start=6055
// OP_STATE	6055	6056	0
// OP_DONE	0	0	0
void () player_die_ax8 = [48, player_die_ax9]
{
};

// player_die_ax9
// function begins at statement 9171, parm_start=6057
// OP_STATE	6057	6056	0
// OP_CALL0	5777	0	0
// OP_DONE	0	0	0
void () player_die_ax9 = [49, player_die_ax9]
{
    PlayerDead();
};

