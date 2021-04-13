
// player_run
// function begins at statement 13478, parm_start=9448
// OP_STATE	231	5354	0
// OP_ADDRESS	28	156	9448
// OP_STOREP_F	213	9448	0
// OP_LOAD_F	28	114	9449
// OP_NOT_F	9449	0	9450
// OP_LOAD_F	28	115	9451
// OP_NOT_F	9451	0	9452
// OP_AND	9450	9452	9453
// OP_IFNOT	9453	5	0
// OP_ADDRESS	28	377	9454
// OP_STOREP_F	213	9454	0
// OP_CALL0	8212	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	9455
// OP_EQ_F	9455	253	9456
// OP_IFNOT	9456	11	0
// OP_LOAD_F	28	377	9457
// OP_EQ_F	9457	231	9458
// OP_IFNOT	9458	3	0
// OP_ADDRESS	28	377	9459
// OP_STOREP_F	213	9459	0
// OP_ADDRESS	28	131	9460
// OP_LOAD_F	28	377	9461
// OP_ADD_F	213	9461	9462
// OP_STOREP_F	9462	9460	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	377	9463
// OP_EQ_F	9463	231	9464
// OP_IFNOT	9464	3	0
// OP_ADDRESS	28	377	9465
// OP_STOREP_F	213	9465	0
// OP_ADDRESS	28	131	9466
// OP_LOAD_F	28	131	9467
// OP_LOAD_F	28	377	9468
// OP_ADD_F	9467	9468	9469
// OP_STOREP_F	9469	9466	0
// OP_ADDRESS	28	377	9470
// OP_LOAD_F	28	377	9471
// OP_ADD_F	9471	214	9472
// OP_STOREP_F	9472	9470	0
// OP_DONE	0	0	0
void () player_run = [6, player_run]
{
    self.weaponframe = FALSE;
    
    if(!self.velocity_x && !self.velocity_y)
    {
        self.walkframe = FALSE;
        func000407();
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
// function begins at statement 13519, parm_start=9473
// OP_STATE	9473	9474	0
// OP_ADDRESS	28	156	9475
// OP_STOREP_F	214	9475	0
// OP_ADDRESS	28	133	9476
// OP_LOAD_F	28	133	9477
// OP_BITOR	9477	339	9478
// OP_STOREP_F	9478	9476	0
// OP_DONE	0	0	0
void () player_shot1 = [113, func000410]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};


// func000410
// function begins at statement 13527, parm_start=9479
// OP_STATE	9479	9480	0
// OP_ADDRESS	28	156	9481
// OP_STOREP_F	216	9481	0
// OP_DONE	0	0	0
void () func000410 = [114, func000411]
{
    self.weaponframe = FL_SWIM;
};


// func000411
// function begins at statement 13531, parm_start=9482
// OP_STATE	9482	9483	0
// OP_ADDRESS	28	156	9484
// OP_STOREP_F	228	9484	0
// OP_DONE	0	0	0
void () func000411 = [115, func000412]
{
    self.weaponframe = MOVETYPE_WALK;
};


// func000412
// function begins at statement 13535, parm_start=9485
// OP_STATE	9485	9486	0
// OP_ADDRESS	28	156	9487
// OP_STOREP_F	229	9487	0
// OP_DONE	0	0	0
void () func000412 = [116, func000413]
{
    self.weaponframe = MOVETYPE_STEP;
};


// func000413
// function begins at statement 13539, parm_start=9488
// OP_STATE	9488	9489	0
// OP_ADDRESS	28	156	9490
// OP_STOREP_F	230	9490	0
// OP_DONE	0	0	0
void () func000413 = [117, func000414]
{
    self.weaponframe = MOVETYPE_FLY;
};


// func000414
// function begins at statement 13543, parm_start=9491
// OP_STATE	9491	5354	0
// OP_ADDRESS	28	156	9492
// OP_STOREP_F	231	9492	0
// OP_DONE	0	0	0
void () func000414 = [118, player_run]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// player_axe1
// function begins at statement 13547, parm_start=9493
// OP_STATE	9493	9494	0
// OP_ADDRESS	28	156	9495
// OP_STOREP_F	214	9495	0
// OP_DONE	0	0	0
void () player_axe1 = [119, func000416]
{
    self.weaponframe = TRUE;
};


// func000416
// function begins at statement 13551, parm_start=9496
// OP_STATE	3584	9496	0
// OP_ADDRESS	28	156	9497
// OP_STOREP_F	216	9497	0
// OP_DONE	0	0	0
void () func000416 = [120, func000417]
{
    self.weaponframe = FL_SWIM;
};


// func000417
// function begins at statement 13555, parm_start=9498
// OP_STATE	9498	9499	0
// OP_ADDRESS	28	156	9500
// OP_STOREP_F	228	9500	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () func000417 = [121, func000418]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
};


// func000418
// function begins at statement 13560, parm_start=9501
// OP_STATE	9501	5354	0
// OP_ADDRESS	28	156	9502
// OP_STOREP_F	229	9502	0
// OP_DONE	0	0	0
void () func000418 = [122, player_run]
{
    self.weaponframe = MOVETYPE_STEP;
};


// player_axeb1
// function begins at statement 13564, parm_start=9503
// OP_STATE	9503	9504	0
// OP_ADDRESS	28	156	9505
// OP_STOREP_F	230	9505	0
// OP_DONE	0	0	0
void () player_axeb1 = [125, func000420]
{
    self.weaponframe = MOVETYPE_FLY;
};


// func000420
// function begins at statement 13568, parm_start=9506
// OP_STATE	9506	9507	0
// OP_ADDRESS	28	156	9508
// OP_STOREP_F	231	9508	0
// OP_DONE	0	0	0
void () func000420 = [126, func000421]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// func000421
// function begins at statement 13572, parm_start=9509
// OP_STATE	9509	9510	0
// OP_ADDRESS	28	156	9511
// OP_STOREP_F	232	9511	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () func000421 = [127, func000422]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
};


// func000422
// function begins at statement 13577, parm_start=9512
// OP_STATE	221	5354	0
// OP_ADDRESS	28	156	9512
// OP_STOREP_F	217	9512	0
// OP_DONE	0	0	0
void () func000422 = [128, player_run]
{
    self.weaponframe = FL_CLIENT;
};


// player_axec1
// function begins at statement 13581, parm_start=9513
// OP_STATE	9513	9514	0
// OP_ADDRESS	28	156	9515
// OP_STOREP_F	214	9515	0
// OP_DONE	0	0	0
void () player_axec1 = [131, func000424]
{
    self.weaponframe = TRUE;
};


// func000424
// function begins at statement 13585, parm_start=9516
// OP_STATE	9516	9517	0
// OP_ADDRESS	28	156	9518
// OP_STOREP_F	216	9518	0
// OP_DONE	0	0	0
void () func000424 = [132, func000425]
{
    self.weaponframe = FL_SWIM;
};


// func000425
// function begins at statement 13589, parm_start=9519
// OP_STATE	9519	9520	0
// OP_ADDRESS	28	156	9521
// OP_STOREP_F	228	9521	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () func000425 = [133, func000426]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
};


// func000426
// function begins at statement 13594, parm_start=9522
// OP_STATE	9522	5354	0
// OP_ADDRESS	28	156	9523
// OP_STOREP_F	229	9523	0
// OP_DONE	0	0	0
void () func000426 = [134, player_run]
{
    self.weaponframe = MOVETYPE_STEP;
};


// player_axed1
// function begins at statement 13598, parm_start=9524
// OP_STATE	9524	9525	0
// OP_ADDRESS	28	156	9526
// OP_STOREP_F	230	9526	0
// OP_DONE	0	0	0
void () player_axed1 = [137, func000428]
{
    self.weaponframe = MOVETYPE_FLY;
};


// func000428
// function begins at statement 13602, parm_start=9527
// OP_STATE	9527	9528	0
// OP_ADDRESS	28	156	9529
// OP_STOREP_F	231	9529	0
// OP_DONE	0	0	0
void () func000428 = [138, func000429]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// func000429
// function begins at statement 13606, parm_start=9530
// OP_STATE	9530	9531	0
// OP_ADDRESS	28	156	9532
// OP_STOREP_F	232	9532	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () func000429 = [139, func000430]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
};


// func000430
// function begins at statement 13611, parm_start=9533
// OP_STATE	9533	5354	0
// OP_ADDRESS	28	156	9534
// OP_STOREP_F	217	9534	0
// OP_DONE	0	0	0
void () func000430 = [140, player_run]
{
    self.weaponframe = FL_CLIENT;
};


// player_nail1
// function begins at statement 13615, parm_start=9535
// OP_STATE	8111	9535	0
// OP_ADDRESS	28	133	9536
// OP_LOAD_F	28	133	9537
// OP_BITOR	9537	339	9538
// OP_STOREP_F	9538	9536	0
// OP_LOAD_F	28	170	9539
// OP_NOT_F	9539	0	9540
// OP_IFNOT	9540	3	0
// OP_CALL0	5354	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	9541
// OP_LOAD_F	28	156	9542
// OP_ADD_F	9542	214	9543
// OP_STOREP_F	9543	9541	0
// OP_LOAD_F	28	156	9544
// OP_EQ_F	9544	234	9545
// OP_IFNOT	9545	3	0
// OP_ADDRESS	28	156	9546
// OP_STOREP_F	214	9546	0
// OP_CALL0	5356	0	0
// OP_STORE_V	229	4	0
// OP_CALL1	6065	0	0
// OP_ADDRESS	28	378	9547
// OP_ADD_F	31	3267	9548
// OP_STOREP_F	9548	9547	0
// OP_DONE	0	0	0
void () player_nail1 = [103, func000432]
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


// func000432
// function begins at statement 13641, parm_start=9549
// OP_STATE	8114	6263	0
// OP_ADDRESS	28	133	9549
// OP_LOAD_F	28	133	9550
// OP_BITOR	9550	339	9551
// OP_STOREP_F	9551	9549	0
// OP_LOAD_F	28	170	9552
// OP_NOT_F	9552	0	9553
// OP_IFNOT	9553	3	0
// OP_CALL0	5354	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	9554
// OP_LOAD_F	28	156	9555
// OP_ADD_F	9555	214	9556
// OP_STOREP_F	9556	9554	0
// OP_LOAD_F	28	156	9557
// OP_EQ_F	9557	234	9558
// OP_IFNOT	9558	3	0
// OP_ADDRESS	28	156	9559
// OP_STOREP_F	214	9559	0
// OP_CALL0	5356	0	0
// OP_STORE_V	279	4	0
// OP_CALL1	6065	0	0
// OP_ADDRESS	28	378	9560
// OP_ADD_F	31	3267	9561
// OP_STOREP_F	9561	9560	0
// OP_DONE	0	0	0
void () func000432 = [104, player_nail1]
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
// function begins at statement 13667, parm_start=9562
// OP_STATE	9562	9563	0
// OP_ADDRESS	28	133	9564
// OP_LOAD_F	28	133	9565
// OP_BITOR	9565	339	9566
// OP_STOREP_F	9566	9564	0
// OP_LOAD_F	28	170	9567
// OP_NOT_F	9567	0	9568
// OP_IFNOT	9568	3	0
// OP_CALL0	5354	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	9569
// OP_LOAD_F	28	156	9570
// OP_ADD_F	9570	214	9571
// OP_STOREP_F	9571	9569	0
// OP_LOAD_F	28	156	9572
// OP_EQ_F	9572	230	9573
// OP_IFNOT	9573	3	0
// OP_ADDRESS	28	156	9574
// OP_STOREP_F	214	9574	0
// OP_CALL0	5356	0	0
// OP_CALL0	5864	0	0
// OP_ADDRESS	28	378	9575
// OP_ADD_F	31	3267	9576
// OP_STOREP_F	9576	9575	0
// OP_DONE	0	0	0
void () player_light1 = [105, func000434]
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


// func000434
// function begins at statement 13692, parm_start=9577
// OP_STATE	9577	6264	0
// OP_ADDRESS	28	133	9578
// OP_LOAD_F	28	133	9579
// OP_BITOR	9579	339	9580
// OP_STOREP_F	9580	9578	0
// OP_LOAD_F	28	170	9581
// OP_NOT_F	9581	0	9582
// OP_IFNOT	9582	3	0
// OP_CALL0	5354	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	156	9583
// OP_LOAD_F	28	156	9584
// OP_ADD_F	9584	214	9585
// OP_STOREP_F	9585	9583	0
// OP_LOAD_F	28	156	9586
// OP_EQ_F	9586	230	9587
// OP_IFNOT	9587	3	0
// OP_ADDRESS	28	156	9588
// OP_STOREP_F	214	9588	0
// OP_CALL0	5356	0	0
// OP_CALL0	5864	0	0
// OP_ADDRESS	28	378	9589
// OP_ADD_F	31	3267	9590
// OP_STOREP_F	9590	9589	0
// OP_DONE	0	0	0
void () func000434 = [106, player_light1]
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
// function begins at statement 13717, parm_start=9591
// OP_STATE	9591	9592	0
// OP_ADDRESS	28	156	9593
// OP_STOREP_F	214	9593	0
// OP_ADDRESS	28	133	9594
// OP_LOAD_F	28	133	9595
// OP_BITOR	9595	339	9596
// OP_STOREP_F	9596	9594	0
// OP_DONE	0	0	0
void () player_rocket1 = [107, func000436]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};


// func000436
// function begins at statement 13725, parm_start=9597
// OP_STATE	9597	9598	0
// OP_ADDRESS	28	156	9599
// OP_STOREP_F	216	9599	0
// OP_DONE	0	0	0
void () func000436 = [108, func000437]
{
    self.weaponframe = FL_SWIM;
};


// func000437
// function begins at statement 13729, parm_start=9600
// OP_STATE	9600	9601	0
// OP_ADDRESS	28	156	9602
// OP_STOREP_F	228	9602	0
// OP_DONE	0	0	0
void () func000437 = [109, func000438]
{
    self.weaponframe = MOVETYPE_WALK;
};


// func000438
// function begins at statement 13733, parm_start=9603
// OP_STATE	9603	9604	0
// OP_ADDRESS	28	156	9605
// OP_STOREP_F	229	9605	0
// OP_DONE	0	0	0
void () func000438 = [110, func000439]
{
    self.weaponframe = MOVETYPE_STEP;
};


// func000439
// function begins at statement 13737, parm_start=9606
// OP_STATE	2224	9606	0
// OP_ADDRESS	28	156	9607
// OP_STOREP_F	230	9607	0
// OP_DONE	0	0	0
void () func000439 = [111, func000440]
{
    self.weaponframe = MOVETYPE_FLY;
};


// func000440
// function begins at statement 13741, parm_start=9608
// OP_STATE	9608	5354	0
// OP_ADDRESS	28	156	9609
// OP_STOREP_F	231	9609	0
// OP_DONE	0	0	0
void () func000440 = [112, player_run]
{
    self.weaponframe = MOVETYPE_TOSS;
};

void (float globaldef003172) func000456;

// func000441
// function begins at statement 13745, parm_start=9612
// OP_LOAD_F	28	152	9613
// OP_LT	9613	213	9614
// OP_IFNOT	9614	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	352	129	9615
// OP_EQ_S	9615	9182	9616
// OP_IFNOT	9616	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	9617
// OP_EQ_F	9617	278	9618
// OP_LOAD_F	28	189	9619
// OP_EQ_F	9619	228	9620
// OP_AND	9618	9620	9621
// OP_IFNOT	9621	20	0
// OP_STORE_V	214	4	0
// OP_CALL1	9610	0	0
// OP_CALL0	457	0	0
// OP_GT	1	539	9622
// OP_IFNOT	9622	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6648	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6649	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	9623
// OP_EQ_F	9623	279	9624
// OP_IFNOT	9624	18	0
// OP_CALL0	457	0	0
// OP_GT	1	539	9625
// OP_IFNOT	9625	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6680	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6681	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	9626
// OP_EQ_F	9626	280	9627
// OP_IFNOT	9627	18	0
// OP_CALL0	457	0	0
// OP_GT	1	539	9628
// OP_IFNOT	9628	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6680	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6681	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	379	9629
// OP_GT	9629	31	9630
// OP_IFNOT	9630	4	0
// OP_ADDRESS	28	392	9631
// OP_STOREP_F	213	9631	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	9632
// OP_ADD_F	31	539	9633
// OP_STOREP_F	9633	9632	0
// OP_LOAD_F	28	392	9634
// OP_EQ_F	9634	214	9635
// OP_IFNOT	9635	10	0
// OP_ADDRESS	28	392	9636
// OP_STOREP_F	213	9636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6674	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	9637
// OP_ADD_F	9637	214	9638
// OP_STORE_V	9638	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	9612	0
// OP_ADDRESS	28	208	9639
// OP_STOREP_S	3002	9639	0
// OP_EQ_F	9612	214	9640
// OP_IFNOT	9640	4	0
// OP_ADDRESS	28	208	9641
// OP_STOREP_S	6663	9641	0
// OP_GOTO	23	0	0
// OP_EQ_F	9612	216	9642
// OP_IFNOT	9642	4	0
// OP_ADDRESS	28	208	9643
// OP_STOREP_S	6664	9643	0
// OP_GOTO	18	0	0
// OP_EQ_F	9612	228	9644
// OP_IFNOT	9644	4	0
// OP_ADDRESS	28	208	9645
// OP_STOREP_S	6665	9645	0
// OP_GOTO	13	0	0
// OP_EQ_F	9612	229	9646
// OP_IFNOT	9646	4	0
// OP_ADDRESS	28	208	9647
// OP_STOREP_S	6666	9647	0
// OP_GOTO	8	0	0
// OP_EQ_F	9612	230	9648
// OP_IFNOT	9648	4	0
// OP_ADDRESS	28	208	9649
// OP_STOREP_S	6667	9649	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	208	9650
// OP_STOREP_S	6668	9650	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	9651
// OP_STORE_V	9651	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000441 = 
{
    local float globaldef003143;
    
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
        func000456(TRUE);
        if(random() > RA_PLAYERSTATTIME)
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
        if(random() > RA_PLAYERSTATTIME)
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
        if(random() > RA_PLAYERSTATTIME)
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
    
    self.pain_finished = time + RA_PLAYERSTATTIME;
    
    if(self.axhitme == TRUE)
    {
        self.axhitme = FALSE;
        sound(self, CHAN_VOICE, "player/axhit1.wav", TRUE, ATTN_NORM);
        return;
    }
    
    globaldef003143 = rint((random() * MOVETYPE_FLY) + TRUE);
    self.noise = "";
    if(globaldef003143 == TRUE)
    {
        self.noise = "player/pain1.wav";
    }
    else
    {
        if(globaldef003143 == FL_SWIM)
        {
            self.noise = "player/pain2.wav";
        }
        else
        {
            if(globaldef003143 == MOVETYPE_WALK)
            {
                self.noise = "player/pain3.wav";
            }
            else
            {
                if(globaldef003143 == MOVETYPE_STEP)
                {
                    self.noise = "player/pain4.wav";
                }
                else
                {
                    if(globaldef003143 == MOVETYPE_FLY)
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


// func000442
// function begins at statement 13889, parm_start=9653
// OP_STATE	5878	9653	0
// OP_CALL0	9611	0	0
// OP_ADDRESS	28	156	9654
// OP_STOREP_F	213	9654	0
// OP_DONE	0	0	0
void () func000442 = [35, func000443]
{
    func000441();
    self.weaponframe = FALSE;
};


// func000443
// function begins at statement 13894, parm_start=9655
// OP_STATE	9655	9656	0
// OP_DONE	0	0	0
void () func000443 = [36, func000444]
{
};


// func000444
// function begins at statement 13896, parm_start=9657
// OP_STATE	9657	9658	0
// OP_DONE	0	0	0
void () func000444 = [37, func000445]
{
};


// func000445
// function begins at statement 13898, parm_start=9659
// OP_STATE	9659	9660	0
// OP_DONE	0	0	0
void () func000445 = [38, func000446]
{
};


// func000446
// function begins at statement 13900, parm_start=9661
// OP_STATE	9661	9662	0
// OP_DONE	0	0	0
void () func000446 = [39, func000447]
{
};


// func000447
// function begins at statement 13902, parm_start=9663
// OP_STATE	746	5354	0
// OP_DONE	0	0	0
void () func000447 = [40, player_run]
{
};


// func000448
// function begins at statement 13904, parm_start=9664
// OP_STATE	9664	9665	0
// OP_CALL0	9611	0	0
// OP_ADDRESS	28	156	9666
// OP_STOREP_F	213	9666	0
// OP_DONE	0	0	0
void () func000448 = [29, func000449]
{
    func000441();
    self.weaponframe = FALSE;
};


// func000449
// function begins at statement 13909, parm_start=9667
// OP_STATE	309	9667	0
// OP_DONE	0	0	0
void () func000449 = [30, func000450]
{
};


// func000450
// function begins at statement 13911, parm_start=9668
// OP_STATE	310	9668	0
// OP_DONE	0	0	0
void () func000450 = [31, func000451]
{
};


// func000451
// function begins at statement 13913, parm_start=9669
// OP_STATE	219	9669	0
// OP_DONE	0	0	0
void () func000451 = [32, func000452]
{
};


// func000452
// function begins at statement 13915, parm_start=9670
// OP_STATE	312	9670	0
// OP_DONE	0	0	0
void () func000452 = [33, func000453]
{
};


// func000453
// function begins at statement 13917, parm_start=9671
// OP_STATE	9671	5354	0
// OP_DONE	0	0	0
void () func000453 = [34, player_run]
{
};


// func000454
// function begins at statement 13919, parm_start=9672
// OP_LOAD_F	28	156	9672
// OP_IFNOT	9672	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	381	9673
// OP_GT	9673	31	9674
// OP_IFNOT	9674	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	9675
// OP_EQ_F	9675	253	9676
// OP_IFNOT	9676	3	0
// OP_CALL0	9663	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9652	0	0
// OP_DONE	0	0	0
void () func000454 = 
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
        func000448();
    }
    else
    {
        func000442();
    }
    
};

void () func000466;
void () func000477;
void () func000486;
void () func000501;
void () func000510;
void () func000519;

// func000455
// function begins at statement 13933, parm_start=9684
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	9684	0
// OP_STORE_V	9684	4	0
// OP_STORE_V	6690	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	9684	4	0
// OP_LOAD_V	28	105	9685
// OP_ADD_V	9685	5193	9688
// OP_STORE_V	9688	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	9684	103	9691
// OP_STOREP_F	233	9691	0
// OP_ADDRESS	9684	104	9692
// OP_STOREP_F	237	9692	0
// OP_ADDRESS	9684	113	9693
// OP_STOREP_V	9696	9693	0
// OP_ADDRESS	9684	150	9699
// OP_ADD_F	31	539	9700
// OP_STOREP_F	9700	9699	0
// OP_ADDRESS	9684	148	9701
// OP_STOREP_FNC	9425	9701	0
// OP_ADDRESS	9684	129	9702
// OP_STOREP_S	9703	9702	0
// OP_ADDRESS	9684	131	9704
// OP_STOREP_F	213	9704	0
// OP_ADDRESS	9684	426	9705
// OP_STOREP_F	213	9705	0
// OP_STORE_V	9684	4	0
// OP_STORE_V	3520	7	0
// OP_STORE_V	3523	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	150	9706
// OP_ADD_F	31	3036	9707
// OP_STOREP_F	9707	9706	0
// OP_ADDRESS	28	148	9708
// OP_STOREP_FNC	9683	9708	0
// OP_ADDRESS	28	396	9709
// OP_LOAD_F	28	396	9710
// OP_ADD_F	9710	214	9711
// OP_STOREP_F	9711	9709	0
// OP_LOAD_F	28	396	9712
// OP_LOAD_F	28	397	9713
// OP_GE	9712	9713	9714
// OP_IFNOT	9714	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000455 = 
{
    local entity globaldef003169;
    globaldef003169 = spawn();
    setmodel(globaldef003169, "progs/s_bubble.spr");
    setorigin(globaldef003169, self.origin + '0 0 24');
    globaldef003169.movetype = MOVETYPE_NOCLIP;
    globaldef003169.solid = SOLID_NOT;
    globaldef003169.velocity = '0 0 15';
    globaldef003169.nextthink = time + RA_PLAYERSTATTIME;
    globaldef003169.think = func000647;
    globaldef003169.classname = "bubble";
    globaldef003169.frame = FALSE;
    globaldef003169.cnt = FALSE;
    setsize(globaldef003169, '-8 -8 -8', '8 8 8');
    self.nextthink = time + 0.1;
    self.think = func000455;
    self.air_finished = self.air_finished + TRUE;
    
    if(self.air_finished >= self.bubble_count)
    {
        remove(self);
    }
    
};


// func000456
// function begins at statement 13980, parm_start=9715
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	9716	0
// OP_STORE_V	9716	4	0
// OP_LOAD_V	28	105	9717
// OP_STORE_V	9717	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	9716	103	9720
// OP_STOREP_F	227	9720	0
// OP_ADDRESS	9716	104	9721
// OP_STOREP_F	237	9721	0
// OP_ADDRESS	9716	150	9722
// OP_ADD_F	31	3036	9723
// OP_STOREP_F	9723	9722	0
// OP_ADDRESS	9716	148	9724
// OP_STOREP_FNC	9683	9724	0
// OP_ADDRESS	9716	396	9725
// OP_STOREP_F	213	9725	0
// OP_ADDRESS	9716	201	9726
// OP_STOREP_ENT	28	9726	0
// OP_ADDRESS	9716	397	9727
// OP_STOREP_F	9715	9727	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float globaldef003172) func000456 = 
{
    local entity globaldef003173;
    globaldef003173 = spawn();
    setorigin(globaldef003173, self.origin);
    globaldef003173.movetype = MOVETYPE_NONE;
    globaldef003173.solid = SOLID_NOT;
    globaldef003173.nextthink = time + 0.1;
    globaldef003173.think = func000455;
    globaldef003173.air_finished = FALSE;
    globaldef003173.owner = self;
    globaldef003173.bubble_count = globaldef003172;
    return;
};


// func000457
// function begins at statement 14003, parm_start=9729
// OP_LOAD_F	28	189	9730
// OP_EQ_F	9730	228	9731
// OP_IFNOT	9731	10	0
// OP_STORE_V	2323	4	0
// OP_CALL1	9610	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6652	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	229	9732
// OP_ADD_F	9732	214	9733
// OP_STORE_V	9733	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	9729	0
// OP_EQ_F	9729	214	9734
// OP_IFNOT	9734	3	0
// OP_ADDRESS	28	208	9735
// OP_STOREP_S	6669	9735	0
// OP_EQ_F	9729	216	9736
// OP_IFNOT	9736	3	0
// OP_ADDRESS	28	208	9737
// OP_STOREP_S	6670	9737	0
// OP_EQ_F	9729	228	9738
// OP_IFNOT	9738	3	0
// OP_ADDRESS	28	208	9739
// OP_STOREP_S	6671	9739	0
// OP_EQ_F	9729	229	9740
// OP_IFNOT	9740	3	0
// OP_ADDRESS	28	208	9741
// OP_STOREP_S	6672	9741	0
// OP_EQ_F	9729	230	9742
// OP_IFNOT	9742	3	0
// OP_ADDRESS	28	208	9743
// OP_STOREP_S	6673	9743	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	9744
// OP_STORE_V	9744	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000457 = 
{
    local float globaldef003175;
    
    if(self.waterlevel == MOVETYPE_WALK)
    {
        func000456(20);
        sound(self, CHAN_VOICE, "player/h2odeath.wav", TRUE, ATTN_NONE);
        return;
    }
    
    globaldef003175 = rint((random() * MOVETYPE_STEP) + TRUE);
    
    if(globaldef003175 == TRUE)
    {
        self.noise = "player/death1.wav";
    }
    
    
    if(globaldef003175 == FL_SWIM)
    {
        self.noise = "player/death2.wav";
    }
    
    
    if(globaldef003175 == MOVETYPE_WALK)
    {
        self.noise = "player/death3.wav";
    }
    
    
    if(globaldef003175 == MOVETYPE_STEP)
    {
        self.noise = "player/death4.wav";
    }
    
    
    if(globaldef003175 == MOVETYPE_FLY)
    {
        self.noise = "player/death5.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NONE);
    return;
};


// func000458
// function begins at statement 14050, parm_start=9746
// OP_ADDRESS	28	150	9746
// OP_STOREP_F	276	9746	0
// OP_ADDRESS	28	165	9747
// OP_STOREP_F	248	9747	0
// OP_DONE	0	0	0
void () func000458 = 
{
    self.nextthink = CONTENT_EMPTY;
    self.deadflag = DEAD_DEAD;
};


// func000459
// function begins at statement 14055, parm_start=9749
// OP_CALL0	5370	0	0
// OP_MUL_F	1997	1	9753
// OP_STORE_F	9753	9750	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1997	1	9754
// OP_STORE_F	9754	9751	0
// OP_CALL0	457	0	0
// OP_MUL_F	1997	1	9755
// OP_ADD_F	2044	9755	9756
// OP_STORE_F	9756	9752	0
// OP_GT	9749	8782	9757
// OP_IFNOT	9757	4	0
// OP_MUL_VF	9750	5599	9758
// OP_STORE_V	9758	9750	0
// OP_GOTO	8	0	0
// OP_GT	9749	9761	9762
// OP_IFNOT	9762	4	0
// OP_MUL_VF	9750	216	9763
// OP_STORE_V	9763	9750	0
// OP_GOTO	3	0	0
// OP_MUL_VF	9750	235	9766
// OP_STORE_V	9766	9750	0
// OP_RETURN	9750	0	0
// OP_DONE	0	0	0
vector (float globaldef003178) func000459 = 
{
    local vector globaldef003179;
    globaldef003179_x = 100 * crandom();
    globaldef003179_y = 100 * crandom();
    globaldef003179_z = 200 + (100 * random());
    if(globaldef003178 > -50)
    {
        globaldef003179 = globaldef003179 * 0.7;
    }
    else
    {
        if(globaldef003178 > -200)
        {
            globaldef003179 = globaldef003179 * FL_SWIM;
        }
        else
        {
            globaldef003179 = globaldef003179 * MOVETYPE_BOUNCE;
        }
        
    }
    
    return globaldef003179;
};


// func000460
// function begins at statement 14079, parm_start=9770
// OP_SUB_F	801	214	9770
// OP_STORE_F	9770	801	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000460 = 
{
    globaldef000784 = globaldef000784 - TRUE;
    remove(self);
};


// ThrowGib
// function begins at statement 14084, parm_start=9772
// OP_GT	801	742	9775
// OP_IFNOT	9775	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	801	214	9776
// OP_STORE_F	9776	801	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	9774	0
// OP_ADDRESS	9774	105	9777
// OP_LOAD_V	28	105	9780
// OP_STOREP_V	9780	9777	0
// OP_STORE_V	9774	4	0
// OP_STORE_V	9772	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	9774	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	9774	113	9783
// OP_STORE_V	9773	4	0
// OP_CALL1	9748	0	0
// OP_STOREP_V	1	9783	0
// OP_ADDRESS	9774	103	9786
// OP_STOREP_F	235	9786	0
// OP_ADDRESS	9774	104	9787
// OP_STOREP_F	237	9787	0
// OP_ADDRESS	9774	122	9788
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	9789
// OP_STOREP_F	9789	9788	0
// OP_ADDRESS	9774	123	9790
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	9791
// OP_STOREP_F	9791	9790	0
// OP_ADDRESS	9774	124	9792
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	9793
// OP_STOREP_F	9793	9792	0
// OP_ADDRESS	9774	148	9794
// OP_STOREP_FNC	9769	9794	0
// OP_ADDRESS	9774	102	9795
// OP_STOREP_F	31	9795	0
// OP_ADDRESS	9774	150	9796
// OP_ADD_F	31	235	9797
// OP_CALL0	457	0	0
// OP_MUL_F	1	235	9798
// OP_ADD_F	9797	9798	9799
// OP_STOREP_F	9799	9796	0
// OP_ADDRESS	9774	131	9800
// OP_STOREP_F	213	9800	0
// OP_ADDRESS	9774	182	9801
// OP_STOREP_F	213	9801	0
// OP_DONE	0	0	0
void (string globaldef003186, float globaldef003187) ThrowGib = 
{
    local entity globaldef003188;
    
    if(globaldef000784 > globaldef000725)
    {
        return;
    }
    
    globaldef000784 = globaldef000784 + TRUE;
    globaldef003188 = spawn();
    globaldef003188.origin = self.origin;
    setmodel(globaldef003188, globaldef003186);
    setsize(globaldef003188, VEC_ORIGIN, VEC_ORIGIN);
    globaldef003188.velocity = func000459(globaldef003187);
    globaldef003188.movetype = MOVETYPE_BOUNCE;
    globaldef003188.solid = SOLID_NOT;
    globaldef003188.avelocity_x = random() * GLOBALDEFSEVENTWOTHREE;
    globaldef003188.avelocity_y = random() * GLOBALDEFSEVENTWOTHREE;
    globaldef003188.avelocity_z = random() * GLOBALDEFSEVENTWOTHREE;
    globaldef003188.think = func000460;
    globaldef003188.ltime = time;
    globaldef003188.nextthink = (time + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    globaldef003188.frame = FALSE;
    globaldef003188.flags = FALSE;
};

