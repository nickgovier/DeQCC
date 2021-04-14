void () bubble_bob;

// player_stand1
// function begins at statement 13440, parm_start=9426
// OP_STATE	6892	8212	0
// OP_ADDRESS	28	156	9426
// OP_STOREP_F	213	9426	0
// OP_LOAD_F	28	114	9427
// OP_LOAD_F	28	115	9428
// OP_OR	9427	9428	9429
// OP_IFNOT	9429	5	0
// OP_ADDRESS	28	377	9430
// OP_STOREP_F	213	9430	0
// OP_CALL0	5354	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	9431
// OP_EQ_F	9431	253	9432
// OP_IFNOT	9432	11	0
// OP_LOAD_F	28	377	9433
// OP_GE	9433	791	9434
// OP_IFNOT	9434	3	0
// OP_ADDRESS	28	377	9435
// OP_STOREP_F	213	9435	0
// OP_ADDRESS	28	131	9436
// OP_LOAD_F	28	377	9437
// OP_ADD_F	6892	9437	9438
// OP_STOREP_F	9438	9436	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	377	9439
// OP_GE	9439	230	9440
// OP_IFNOT	9440	3	0
// OP_ADDRESS	28	377	9441
// OP_STOREP_F	213	9441	0
// OP_ADDRESS	28	131	9442
// OP_LOAD_F	28	377	9443
// OP_ADD_F	791	9443	9444
// OP_STOREP_F	9444	9442	0
// OP_ADDRESS	28	377	9445
// OP_LOAD_F	28	377	9446
// OP_ADD_F	9446	214	9447
// OP_STOREP_F	9447	9445	0
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
        
        if(self.walkframe >= GLOBALDEF774_12)
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
        
        self.frame = GLOBALDEF774_12 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
};


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
// function begins at statement 13519, parm_start=9473
// OP_STATE	9473	9474	0
// OP_ADDRESS	28	156	9475
// OP_STOREP_F	214	9475	0
// OP_ADDRESS	28	133	9476
// OP_LOAD_F	28	133	9477
// OP_BITOR	9477	339	9478
// OP_STOREP_F	9478	9476	0
// OP_DONE	0	0	0
void () player_shot1 = [113, player_shot2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};


// player_shot2
// function begins at statement 13527, parm_start=9479
// OP_STATE	9479	9480	0
// OP_ADDRESS	28	156	9481
// OP_STOREP_F	216	9481	0
// OP_DONE	0	0	0
void () player_shot2 = [114, player_shot3]
{
    self.weaponframe = FL_SWIM;
};


// player_shot3
// function begins at statement 13531, parm_start=9482
// OP_STATE	9482	9483	0
// OP_ADDRESS	28	156	9484
// OP_STOREP_F	228	9484	0
// OP_DONE	0	0	0
void () player_shot3 = [115, player_shot4]
{
    self.weaponframe = MOVETYPE_WALK;
};


// player_shot4
// function begins at statement 13535, parm_start=9485
// OP_STATE	9485	9486	0
// OP_ADDRESS	28	156	9487
// OP_STOREP_F	229	9487	0
// OP_DONE	0	0	0
void () player_shot4 = [116, player_shot5]
{
    self.weaponframe = MOVETYPE_STEP;
};


// player_shot5
// function begins at statement 13539, parm_start=9488
// OP_STATE	9488	9489	0
// OP_ADDRESS	28	156	9490
// OP_STOREP_F	230	9490	0
// OP_DONE	0	0	0
void () player_shot5 = [117, player_shot6]
{
    self.weaponframe = MOVETYPE_FLY;
};


// player_shot6
// function begins at statement 13543, parm_start=9491
// OP_STATE	9491	5354	0
// OP_ADDRESS	28	156	9492
// OP_STOREP_F	231	9492	0
// OP_DONE	0	0	0
void () player_shot6 = [118, player_run]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// player_axe1
// function begins at statement 13547, parm_start=9493
// OP_STATE	9493	9494	0
// OP_ADDRESS	28	156	9495
// OP_STOREP_F	214	9495	0
// OP_DONE	0	0	0
void () player_axe1 = [119, player_axe2]
{
    self.weaponframe = TRUE;
};


// player_axe2
// function begins at statement 13551, parm_start=9496
// OP_STATE	3584	9496	0
// OP_ADDRESS	28	156	9497
// OP_STOREP_F	216	9497	0
// OP_DONE	0	0	0
void () player_axe2 = [120, player_axe3]
{
    self.weaponframe = FL_SWIM;
};


// player_axe3
// function begins at statement 13555, parm_start=9498
// OP_STATE	9498	9499	0
// OP_ADDRESS	28	156	9500
// OP_STOREP_F	228	9500	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () player_axe3 = [121, player_axe4]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
};


// player_axe4
// function begins at statement 13560, parm_start=9501
// OP_STATE	9501	5354	0
// OP_ADDRESS	28	156	9502
// OP_STOREP_F	229	9502	0
// OP_DONE	0	0	0
void () player_axe4 = [122, player_run]
{
    self.weaponframe = MOVETYPE_STEP;
};


// player_axeb1
// function begins at statement 13564, parm_start=9503
// OP_STATE	9503	9504	0
// OP_ADDRESS	28	156	9505
// OP_STOREP_F	230	9505	0
// OP_DONE	0	0	0
void () player_axeb1 = [125, player_axeb2]
{
    self.weaponframe = MOVETYPE_FLY;
};


// player_axeb2
// function begins at statement 13568, parm_start=9506
// OP_STATE	9506	9507	0
// OP_ADDRESS	28	156	9508
// OP_STOREP_F	231	9508	0
// OP_DONE	0	0	0
void () player_axeb2 = [126, player_axeb3]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// player_axeb3
// function begins at statement 13572, parm_start=9509
// OP_STATE	9509	9510	0
// OP_ADDRESS	28	156	9511
// OP_STOREP_F	232	9511	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () player_axeb3 = [127, player_axeb4]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
};


// player_axeb4
// function begins at statement 13577, parm_start=9512
// OP_STATE	221	5354	0
// OP_ADDRESS	28	156	9512
// OP_STOREP_F	217	9512	0
// OP_DONE	0	0	0
void () player_axeb4 = [128, player_run]
{
    self.weaponframe = FL_CLIENT;
};


// player_axec1
// function begins at statement 13581, parm_start=9513
// OP_STATE	9513	9514	0
// OP_ADDRESS	28	156	9515
// OP_STOREP_F	214	9515	0
// OP_DONE	0	0	0
void () player_axec1 = [131, player_axec2]
{
    self.weaponframe = TRUE;
};


// player_axec2
// function begins at statement 13585, parm_start=9516
// OP_STATE	9516	9517	0
// OP_ADDRESS	28	156	9518
// OP_STOREP_F	216	9518	0
// OP_DONE	0	0	0
void () player_axec2 = [132, player_axec3]
{
    self.weaponframe = FL_SWIM;
};


// player_axec3
// function begins at statement 13589, parm_start=9519
// OP_STATE	9519	9520	0
// OP_ADDRESS	28	156	9521
// OP_STOREP_F	228	9521	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () player_axec3 = [133, player_axec4]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
};


// player_axec4
// function begins at statement 13594, parm_start=9522
// OP_STATE	9522	5354	0
// OP_ADDRESS	28	156	9523
// OP_STOREP_F	229	9523	0
// OP_DONE	0	0	0
void () player_axec4 = [134, player_run]
{
    self.weaponframe = MOVETYPE_STEP;
};


// player_axed1
// function begins at statement 13598, parm_start=9524
// OP_STATE	9524	9525	0
// OP_ADDRESS	28	156	9526
// OP_STOREP_F	230	9526	0
// OP_DONE	0	0	0
void () player_axed1 = [137, player_axed2]
{
    self.weaponframe = MOVETYPE_FLY;
};


// player_axed2
// function begins at statement 13602, parm_start=9527
// OP_STATE	9527	9528	0
// OP_ADDRESS	28	156	9529
// OP_STOREP_F	231	9529	0
// OP_DONE	0	0	0
void () player_axed2 = [138, player_axed3]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// player_axed3
// function begins at statement 13606, parm_start=9530
// OP_STATE	9530	9531	0
// OP_ADDRESS	28	156	9532
// OP_STOREP_F	232	9532	0
// OP_CALL0	5379	0	0
// OP_DONE	0	0	0
void () player_axed3 = [139, player_axed4]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
};


// player_axed4
// function begins at statement 13611, parm_start=9533
// OP_STATE	9533	5354	0
// OP_ADDRESS	28	156	9534
// OP_STOREP_F	217	9534	0
// OP_DONE	0	0	0
void () player_axed4 = [140, player_run]
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
// function begins at statement 13717, parm_start=9591
// OP_STATE	9591	9592	0
// OP_ADDRESS	28	156	9593
// OP_STOREP_F	214	9593	0
// OP_ADDRESS	28	133	9594
// OP_LOAD_F	28	133	9595
// OP_BITOR	9595	339	9596
// OP_STOREP_F	9596	9594	0
// OP_DONE	0	0	0
void () player_rocket1 = [107, player_rocket2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};


// player_rocket2
// function begins at statement 13725, parm_start=9597
// OP_STATE	9597	9598	0
// OP_ADDRESS	28	156	9599
// OP_STOREP_F	216	9599	0
// OP_DONE	0	0	0
void () player_rocket2 = [108, player_rocket3]
{
    self.weaponframe = FL_SWIM;
};


// player_rocket3
// function begins at statement 13729, parm_start=9600
// OP_STATE	9600	9601	0
// OP_ADDRESS	28	156	9602
// OP_STOREP_F	228	9602	0
// OP_DONE	0	0	0
void () player_rocket3 = [109, player_rocket4]
{
    self.weaponframe = MOVETYPE_WALK;
};


// player_rocket4
// function begins at statement 13733, parm_start=9603
// OP_STATE	9603	9604	0
// OP_ADDRESS	28	156	9605
// OP_STOREP_F	229	9605	0
// OP_DONE	0	0	0
void () player_rocket4 = [110, player_rocket5]
{
    self.weaponframe = MOVETYPE_STEP;
};


// player_rocket5
// function begins at statement 13737, parm_start=9606
// OP_STATE	2224	9606	0
// OP_ADDRESS	28	156	9607
// OP_STOREP_F	230	9607	0
// OP_DONE	0	0	0
void () player_rocket5 = [111, player_rocket6]
{
    self.weaponframe = MOVETYPE_FLY;
};


// player_rocket6
// function begins at statement 13741, parm_start=9608
// OP_STATE	9608	5354	0
// OP_ADDRESS	28	156	9609
// OP_STOREP_F	231	9609	0
// OP_DONE	0	0	0
void () player_rocket6 = [112, player_run]
{
    self.weaponframe = MOVETYPE_TOSS;
};

void (float num_bubbles) DeathBubbles;

// PainSound
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
// function begins at statement 13889, parm_start=9653
// OP_STATE	5878	9653	0
// OP_CALL0	9611	0	0
// OP_ADDRESS	28	156	9654
// OP_STOREP_F	213	9654	0
// OP_DONE	0	0	0
void () player_pain1 = [35, player_pain2]
{
    PainSound();
    self.weaponframe = FALSE;
};


// player_pain2
// function begins at statement 13894, parm_start=9655
// OP_STATE	9655	9656	0
// OP_DONE	0	0	0
void () player_pain2 = [36, player_pain3]
{
};


// player_pain3
// function begins at statement 13896, parm_start=9657
// OP_STATE	9657	9658	0
// OP_DONE	0	0	0
void () player_pain3 = [37, player_pain4]
{
};


// player_pain4
// function begins at statement 13898, parm_start=9659
// OP_STATE	9659	9660	0
// OP_DONE	0	0	0
void () player_pain4 = [38, player_pain5]
{
};


// player_pain5
// function begins at statement 13900, parm_start=9661
// OP_STATE	9661	9662	0
// OP_DONE	0	0	0
void () player_pain5 = [39, player_pain6]
{
};


// player_pain6
// function begins at statement 13902, parm_start=9663
// OP_STATE	746	5354	0
// OP_DONE	0	0	0
void () player_pain6 = [40, player_run]
{
};


// player_axpain1
// function begins at statement 13904, parm_start=9664
// OP_STATE	9664	9665	0
// OP_CALL0	9611	0	0
// OP_ADDRESS	28	156	9666
// OP_STOREP_F	213	9666	0
// OP_DONE	0	0	0
void () player_axpain1 = [29, player_axpain2]
{
    PainSound();
    self.weaponframe = FALSE;
};


// player_axpain2
// function begins at statement 13909, parm_start=9667
// OP_STATE	309	9667	0
// OP_DONE	0	0	0
void () player_axpain2 = [30, player_axpain3]
{
};


// player_axpain3
// function begins at statement 13911, parm_start=9668
// OP_STATE	310	9668	0
// OP_DONE	0	0	0
void () player_axpain3 = [31, player_axpain4]
{
};


// player_axpain4
// function begins at statement 13913, parm_start=9669
// OP_STATE	219	9669	0
// OP_DONE	0	0	0
void () player_axpain4 = [32, player_axpain5]
{
};


// player_axpain5
// function begins at statement 13915, parm_start=9670
// OP_STATE	312	9670	0
// OP_DONE	0	0	0
void () player_axpain5 = [33, player_axpain6]
{
};


// player_axpain6
// function begins at statement 13917, parm_start=9671
// OP_STATE	9671	5354	0
// OP_DONE	0	0	0
void () player_axpain6 = [34, player_run]
{
};


// player_pain
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
void () DeathBubblesSpawn = 
{
    local entity bubble;
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.origin + '0 0 24');
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0 0 15';
    bubble.nextthink = time + RA_PLAYERSTATTIME;
    bubble.think = bubble_bob;
    bubble.classname = "bubble";
    bubble.frame = FALSE;
    bubble.cnt = FALSE;
    setsize(bubble, '-8 -8 -8', '8 8 8');
    self.nextthink = time + 0.1;
    self.think = DeathBubblesSpawn;
    self.air_finished = self.air_finished + TRUE;
    
    if(self.air_finished >= self.bubble_count)
    {
        remove(self);
    }
    
};


// DeathBubbles
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
void () DeathSound = 
{
    local float rs;
    
    if(self.waterlevel == MOVETYPE_WALK)
    {
        DeathBubbles(20);
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
// function begins at statement 14050, parm_start=9746
// OP_ADDRESS	28	150	9746
// OP_STOREP_F	276	9746	0
// OP_ADDRESS	28	165	9747
// OP_STOREP_F	248	9747	0
// OP_DONE	0	0	0
void () PlayerDead = 
{
    self.nextthink = CONTENT_EMPTY;
    self.deadflag = DEAD_DEAD;
};


// VelocityForDamage
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
vector (float dm) VelocityForDamage = 
{
    local vector v;
    v_x = 100 * crandom();
    v_y = 100 * crandom();
    v_z = 200 + (100 * random());
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
// function begins at statement 14079, parm_start=9770
// OP_SUB_F	801	214	9770
// OP_STORE_F	9770	801	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () RemoveGib = 
{
    num_gibs = num_gibs - TRUE;
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
void (string gibname, float dm) ThrowGib = 
{
    local entity new;
    
    if(num_gibs > OBOT_MAXGIBS)
    {
        return;
    }
    
    num_gibs = num_gibs + TRUE;
    new = spawn();
    new.origin = self.origin;
    setmodel(new, gibname);
    setsize(new, VEC_ORIGIN, VEC_ORIGIN);
    new.velocity = VelocityForDamage(dm);
    new.movetype = MOVETYPE_BOUNCE;
    new.solid = SOLID_NOT;
    new.avelocity_x = random() * GLOBALDEF723_600;
    new.avelocity_y = random() * GLOBALDEF723_600;
    new.avelocity_z = random() * GLOBALDEF723_600;
    new.think = RemoveGib;
    new.ltime = time;
    new.nextthink = (time + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    new.frame = FALSE;
    new.flags = FALSE;
};


// ThrowHead
// function begins at statement 14136, parm_start=9803
// OP_EQ_S	9803	6686	9805
// OP_BITAND	821	777	9806
// OP_AND	9805	9806	9807
// OP_IFNOT	9807	6	0
// OP_ADDRESS	28	574	9808
// OP_STOREP_F	213	9808	0
// OP_ADDRESS	28	573	9809
// OP_STOREP_F	527	9809	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9803	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	131	9810
// OP_STOREP_F	213	9810	0
// OP_ADDRESS	28	150	9811
// OP_STOREP_F	276	9811	0
// OP_ADDRESS	28	103	9812
// OP_STOREP_F	235	9812	0
// OP_ADDRESS	28	163	9813
// OP_STOREP_F	250	9813	0
// OP_ADDRESS	28	104	9814
// OP_STOREP_F	237	9814	0
// OP_ADDRESS	28	166	9815
// OP_STOREP_V	9818	9815	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4517	7	0
// OP_STORE_V	4520	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	113	9821
// OP_STORE_V	9804	4	0
// OP_CALL1	9748	0	0
// OP_STOREP_V	1	9821	0
// OP_ADDRESS	28	108	9824
// OP_LOAD_F	28	108	9825
// OP_SUB_F	9825	736	9826
// OP_STOREP_F	9826	9824	0
// OP_ADDRESS	28	182	9827
// OP_LOAD_F	28	182	9828
// OP_LOAD_F	28	182	9829
// OP_BITAND	9829	223	9830
// OP_SUB_F	9828	9830	9831
// OP_STOREP_F	9831	9827	0
// OP_ADDRESS	28	121	9832
// OP_CALL0	5370	0	0
// OP_MUL_FV	1	9835	9838
// OP_STOREP_V	9838	9832	0
// OP_DONE	0	0	0
void (string gibname, float dm) ThrowHead = 
{
    if((gibname == "progs/h_player.mdl") && (globaldef000804 & globaldef000760))
    {
        self.field000251 = FALSE;
        self.field000250 = globaldef000510;
    }
    else
    {
        setmodel(self, gibname);
    }
    
    self.frame = FALSE;
    self.nextthink = CONTENT_EMPTY;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0 0 8';
    setsize(self, '-16 -16 0', '16 16 56');
    self.velocity = VelocityForDamage(dm);
    self.origin_z = self.origin_z - OBOT_MAXBOTS;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = crandom() * '0 600 0';
};


// GibPlayer
// function begins at statement 14183, parm_start=9842
// OP_STORE_V	6686	4	0
// OP_LOAD_F	28	152	9842
// OP_STORE_V	9842	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	9843
// OP_STORE_V	9843	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	9844
// OP_STORE_V	9844	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	9845
// OP_STORE_V	9845	7	0
// OP_CALL2	9771	0	0
// OP_ADDRESS	28	165	9846
// OP_STOREP_F	248	9846	0
// OP_LOAD_S	352	129	9847
// OP_EQ_S	9847	9182	9848
// OP_IFNOT	9848	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	352	129	9849
// OP_EQ_S	9849	9197	9850
// OP_IFNOT	9850	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6653	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	9851
// OP_IFNOT	9851	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6660	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () GibPlayer = 
{
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
    
    if(random() < RA_PLAYERSTATTIME)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", TRUE, ATTN_NONE);
    }
    else
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NONE);
    }
    
};


// PlayerDie
// function begins at statement 14238, parm_start=9852
// OP_ADDRESS	28	162	9853
// OP_LOAD_F	28	162	9854
// OP_LOAD_F	28	162	9855
// OP_BITAND	9855	272	9856
// OP_SUB_F	9854	9856	9857
// OP_STOREP_F	9857	9853	0
// OP_ADDRESS	28	381	9858
// OP_STOREP_F	213	9858	0
// OP_ADDRESS	28	380	9859
// OP_STOREP_F	213	9859	0
// OP_ADDRESS	28	382	9860
// OP_STOREP_F	213	9860	0
// OP_ADDRESS	28	383	9861
// OP_STOREP_F	213	9861	0
// OP_BITAND	821	777	9862
// OP_IFNOT	9862	7	0
// OP_ADDRESS	28	574	9863
// OP_LOAD_F	28	572	9864
// OP_STOREP_F	9864	9863	0
// OP_ADDRESS	28	573	9865
// OP_STOREP_F	526	9865	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	9866
// OP_STOREP_F	526	9866	0
// OP_OR	35	36	9867
// OP_IFNOT	9867	2	0
// OP_CALL0	5177	0	0
// OP_ADDRESS	28	155	9868
// OP_STOREP_S	3002	9868	0
// OP_ADDRESS	28	166	9869
// OP_STOREP_V	9872	9869	0
// OP_ADDRESS	28	165	9875
// OP_STOREP_F	247	9875	0
// OP_ADDRESS	28	104	9876
// OP_STOREP_F	237	9876	0
// OP_ADDRESS	28	182	9877
// OP_LOAD_F	28	182	9878
// OP_LOAD_F	28	182	9879
// OP_BITAND	9879	223	9880
// OP_SUB_F	9878	9880	9881
// OP_STOREP_F	9881	9877	0
// OP_ADDRESS	28	103	9882
// OP_STOREP_F	231	9882	0
// OP_LOAD_F	28	116	9883
// OP_LT	9883	235	9884
// OP_IFNOT	9884	7	0
// OP_ADDRESS	28	116	9885
// OP_LOAD_F	28	116	9886
// OP_CALL0	457	0	0
// OP_MUL_F	1	540	9887
// OP_ADD_F	9886	9887	9888
// OP_STOREP_F	9888	9885	0
// OP_LOAD_F	28	152	9889
// OP_LT	9889	9236	9890
// OP_IFNOT	9890	3	0
// OP_CALL0	9841	0	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	9891
// OP_IFNOT	9891	3	0
// OP_CALL0	9841	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9728	0	0
// OP_ADDRESS	28	118	9892
// OP_STOREP_F	213	9892	0
// OP_ADDRESS	28	120	9893
// OP_STOREP_F	213	9893	0
// OP_LOAD_F	28	154	9894
// OP_EQ_F	9894	253	9895
// OP_IFNOT	9895	3	0
// OP_CALL0	9682	0	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	9852	0
// OP_NOT_F	9852	0	9896
// OP_IFNOT	9896	7	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	231	9897
// OP_STORE_V	9897	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	214	1	9898
// OP_STORE_F	9898	9852	0
// OP_EQ_F	9852	214	9899
// OP_IFNOT	9899	3	0
// OP_CALL0	9677	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	9852	216	9900
// OP_IFNOT	9900	3	0
// OP_CALL0	9678	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	9852	228	9901
// OP_IFNOT	9901	3	0
// OP_CALL0	9679	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	9852	229	9902
// OP_IFNOT	9902	3	0
// OP_CALL0	9680	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9681	0	0
// OP_DONE	0	0	0
void () PlayerDie = 
{
    local float i;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    if(globaldef000804 & globaldef000760)
    {
        self.field000251 = self.field000249;
        self.field000250 = modelindex_player;
    }
    else
    {
        self.modelindex = modelindex_player;
    }
    
    
    if(deathmatch || coop)
    {
        DropBackpack();
    }
    
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < MOVETYPE_BOUNCE)
    {
        self.velocity_z = self.velocity_z + (random() * RA_MAXIDLETIME);
    }
    
    
    if(self.health < -40)
    {
        GibPlayer();
        return;
    }
    
    
    if(globaldef000804 & OBOT_ROCKETARENA)
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
    
    i = FALSE;
    
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
// function begins at statement 14336, parm_start=9903
// OP_LOAD_S	28	130	9903
// OP_NE_S	9903	6684	9904
// OP_IFNOT	9904	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	131	9905
// OP_STOREP_F	2019	9905	0
// OP_ADDRESS	28	104	9906
// OP_STOREP_F	237	9906	0
// OP_ADDRESS	28	103	9907
// OP_STOREP_F	231	9907	0
// OP_ADDRESS	28	165	9908
// OP_STOREP_F	248	9908	0
// OP_ADDRESS	28	150	9909
// OP_STOREP_F	276	9909	0
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
// function begins at statement 14351, parm_start=9910
// OP_STATE	1470	9910	0
// OP_DONE	0	0	0
void () player_diea1 = [50, player_diea2]
{
};


// player_diea2
// function begins at statement 14353, parm_start=9911
// OP_STATE	9911	9912	0
// OP_DONE	0	0	0
void () player_diea2 = [51, player_diea3]
{
};


// player_diea3
// function begins at statement 14355, parm_start=9913
// OP_STATE	9913	9914	0
// OP_DONE	0	0	0
void () player_diea3 = [52, player_diea4]
{
};


// player_diea4
// function begins at statement 14357, parm_start=9915
// OP_STATE	9915	9916	0
// OP_DONE	0	0	0
void () player_diea4 = [53, player_diea5]
{
};


// player_diea5
// function begins at statement 14359, parm_start=9917
// OP_STATE	9917	9918	0
// OP_DONE	0	0	0
void () player_diea5 = [54, player_diea6]
{
};


// player_diea6
// function begins at statement 14361, parm_start=9919
// OP_STATE	9919	9920	0
// OP_DONE	0	0	0
void () player_diea6 = [55, player_diea7]
{
};


// player_diea7
// function begins at statement 14363, parm_start=9921
// OP_STATE	9921	9922	0
// OP_DONE	0	0	0
void () player_diea7 = [56, player_diea8]
{
};


// player_diea8
// function begins at statement 14365, parm_start=9923
// OP_STATE	9923	9924	0
// OP_DONE	0	0	0
void () player_diea8 = [57, player_diea9]
{
};


// player_diea9
// function begins at statement 14367, parm_start=9925
// OP_STATE	9925	9926	0
// OP_DONE	0	0	0
void () player_diea9 = [58, player_diea10]
{
};


// player_diea10
// function begins at statement 14369, parm_start=9927
// OP_STATE	2783	9927	0
// OP_DONE	0	0	0
void () player_diea10 = [59, player_diea11]
{
};


// player_diea11
// function begins at statement 14371, parm_start=9928
// OP_STATE	2019	9927	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () player_diea11 = [60, player_diea11]
{
    PlayerDead();
};


// player_dieb1
// function begins at statement 14374, parm_start=9928
// OP_STATE	9928	9929	0
// OP_DONE	0	0	0
void () player_dieb1 = [61, player_dieb2]
{
};


// player_dieb2
// function begins at statement 14376, parm_start=9930
// OP_STATE	9930	9931	0
// OP_DONE	0	0	0
void () player_dieb2 = [62, player_dieb3]
{
};


// player_dieb3
// function begins at statement 14378, parm_start=9932
// OP_STATE	6707	9932	0
// OP_DONE	0	0	0
void () player_dieb3 = [63, player_dieb4]
{
};


// player_dieb4
// function begins at statement 14380, parm_start=9933
// OP_STATE	220	9933	0
// OP_DONE	0	0	0
void () player_dieb4 = [64, player_dieb5]
{
};


// player_dieb5
// function begins at statement 14382, parm_start=9934
// OP_STATE	9934	9935	0
// OP_DONE	0	0	0
void () player_dieb5 = [65, player_dieb6]
{
};


// player_dieb6
// function begins at statement 14384, parm_start=9936
// OP_STATE	9936	9937	0
// OP_DONE	0	0	0
void () player_dieb6 = [66, player_dieb7]
{
};


// player_dieb7
// function begins at statement 14386, parm_start=9938
// OP_STATE	9938	9939	0
// OP_DONE	0	0	0
void () player_dieb7 = [67, player_dieb8]
{
};


// player_dieb8
// function begins at statement 14388, parm_start=9940
// OP_STATE	8193	9940	0
// OP_DONE	0	0	0
void () player_dieb8 = [68, player_dieb9]
{
};


// player_dieb9
// function begins at statement 14390, parm_start=9941
// OP_STATE	8196	9940	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () player_dieb9 = [69, player_dieb9]
{
    PlayerDead();
};


// player_diec1
// function begins at statement 14393, parm_start=9941
// OP_STATE	1536	9941	0
// OP_DONE	0	0	0
void () player_diec1 = [70, player_diec2]
{
};


// player_diec2
// function begins at statement 14395, parm_start=9942
// OP_STATE	8201	9942	0
// OP_DONE	0	0	0
void () player_diec2 = [71, player_diec3]
{
};


// player_diec3
// function begins at statement 14397, parm_start=9943
// OP_STATE	9943	9944	0
// OP_DONE	0	0	0
void () player_diec3 = [72, player_diec4]
{
};


// player_diec4
// function begins at statement 14399, parm_start=9945
// OP_STATE	5487	9945	0
// OP_DONE	0	0	0
void () player_diec4 = [73, player_diec5]
{
};


// player_diec5
// function begins at statement 14401, parm_start=9946
// OP_STATE	9946	9947	0
// OP_DONE	0	0	0
void () player_diec5 = [74, player_diec6]
{
};


// player_diec6
// function begins at statement 14403, parm_start=9948
// OP_STATE	9173	9948	0
// OP_DONE	0	0	0
void () player_diec6 = [75, player_diec7]
{
};


// player_diec7
// function begins at statement 14405, parm_start=9949
// OP_STATE	9949	9950	0
// OP_DONE	0	0	0
void () player_diec7 = [76, player_diec8]
{
};


// player_diec8
// function begins at statement 14407, parm_start=9951
// OP_STATE	9951	9952	0
// OP_DONE	0	0	0
void () player_diec8 = [77, player_diec9]
{
};


// player_diec9
// function begins at statement 14409, parm_start=9953
// OP_STATE	9953	9954	0
// OP_DONE	0	0	0
void () player_diec9 = [78, player_diec10]
{
};


// player_diec10
// function begins at statement 14411, parm_start=9955
// OP_STATE	9955	9956	0
// OP_DONE	0	0	0
void () player_diec10 = [79, player_diec11]
{
};


// player_diec11
// function begins at statement 14413, parm_start=9957
// OP_STATE	2805	9957	0
// OP_DONE	0	0	0
void () player_diec11 = [80, player_diec12]
{
};


// player_diec12
// function begins at statement 14415, parm_start=9958
// OP_STATE	8204	9958	0
// OP_DONE	0	0	0
void () player_diec12 = [81, player_diec13]
{
};


// player_diec13
// function begins at statement 14417, parm_start=9959
// OP_STATE	9959	9960	0
// OP_DONE	0	0	0
void () player_diec13 = [82, player_diec14]
{
};


// player_diec14
// function begins at statement 14419, parm_start=9961
// OP_STATE	9961	9962	0
// OP_DONE	0	0	0
void () player_diec14 = [83, player_diec15]
{
};


// player_diec15
// function begins at statement 14421, parm_start=9963
// OP_STATE	7694	9962	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () player_diec15 = [84, player_diec15]
{
    PlayerDead();
};


// player_died1
// function begins at statement 14424, parm_start=9963
// OP_STATE	9963	9964	0
// OP_DONE	0	0	0
void () player_died1 = [85, player_died2]
{
};


// player_died2
// function begins at statement 14426, parm_start=9965
// OP_STATE	9965	9966	0
// OP_DONE	0	0	0
void () player_died2 = [86, player_died3]
{
};


// player_died3
// function begins at statement 14428, parm_start=9967
// OP_STATE	9967	9968	0
// OP_DONE	0	0	0
void () player_died3 = [87, player_died4]
{
};


// player_died4
// function begins at statement 14430, parm_start=9969
// OP_STATE	9969	9970	0
// OP_DONE	0	0	0
void () player_died4 = [88, player_died5]
{
};


// player_died5
// function begins at statement 14432, parm_start=9971
// OP_STATE	9971	9972	0
// OP_DONE	0	0	0
void () player_died5 = [89, player_died6]
{
};


// player_died6
// function begins at statement 14434, parm_start=9973
// OP_STATE	2658	9973	0
// OP_DONE	0	0	0
void () player_died6 = [90, player_died7]
{
};


// player_died7
// function begins at statement 14436, parm_start=9974
// OP_STATE	9974	9975	0
// OP_DONE	0	0	0
void () player_died7 = [91, player_died8]
{
};


// player_died8
// function begins at statement 14438, parm_start=9976
// OP_STATE	9976	9977	0
// OP_DONE	0	0	0
void () player_died8 = [92, player_died9]
{
};


// player_died9
// function begins at statement 14440, parm_start=9978
// OP_STATE	9978	9977	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () player_died9 = [93, player_died9]
{
    PlayerDead();
};


// player_diee1
// function begins at statement 14443, parm_start=9979
// OP_STATE	9979	9980	0
// OP_DONE	0	0	0
void () player_diee1 = [94, player_diee2]
{
};


// player_diee2
// function begins at statement 14445, parm_start=9981
// OP_STATE	9981	9982	0
// OP_DONE	0	0	0
void () player_diee2 = [95, player_diee3]
{
};


// player_diee3
// function begins at statement 14447, parm_start=9983
// OP_STATE	9983	9984	0
// OP_DONE	0	0	0
void () player_diee3 = [96, player_diee4]
{
};


// player_diee4
// function begins at statement 14449, parm_start=9985
// OP_STATE	9985	9986	0
// OP_DONE	0	0	0
void () player_diee4 = [97, player_diee5]
{
};


// player_diee5
// function begins at statement 14451, parm_start=9987
// OP_STATE	9987	9988	0
// OP_DONE	0	0	0
void () player_diee5 = [98, player_diee6]
{
};


// player_diee6
// function begins at statement 14453, parm_start=9989
// OP_STATE	9989	9990	0
// OP_DONE	0	0	0
void () player_diee6 = [99, player_diee7]
{
};


// player_diee7
// function begins at statement 14455, parm_start=9991
// OP_STATE	1997	9991	0
// OP_DONE	0	0	0
void () player_diee7 = [100, player_diee8]
{
};


// player_diee8
// function begins at statement 14457, parm_start=9992
// OP_STATE	8107	9992	0
// OP_DONE	0	0	0
void () player_diee8 = [101, player_diee9]
{
};


// player_diee9
// function begins at statement 14459, parm_start=9993
// OP_STATE	8109	9992	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () player_diee9 = [102, player_diee9]
{
    PlayerDead();
};


// player_die_ax1
// function begins at statement 14462, parm_start=9993
// OP_STATE	9993	9994	0
// OP_DONE	0	0	0
void () player_die_ax1 = [41, player_die_ax2]
{
};


// player_die_ax2
// function begins at statement 14464, parm_start=9995
// OP_STATE	9995	9996	0
// OP_DONE	0	0	0
void () player_die_ax2 = [42, player_die_ax3]
{
};


// player_die_ax3
// function begins at statement 14466, parm_start=9997
// OP_STATE	9997	9998	0
// OP_DONE	0	0	0
void () player_die_ax3 = [43, player_die_ax4]
{
};


// player_die_ax4
// function begins at statement 14468, parm_start=9999
// OP_STATE	9999	10000	0
// OP_DONE	0	0	0
void () player_die_ax4 = [44, player_die_ax5]
{
};


// player_die_ax5
// function begins at statement 14470, parm_start=10001
// OP_STATE	2598	10001	0
// OP_DONE	0	0	0
void () player_die_ax5 = [45, player_die_ax6]
{
};


// player_die_ax6
// function begins at statement 14472, parm_start=10002
// OP_STATE	10002	10003	0
// OP_DONE	0	0	0
void () player_die_ax6 = [46, player_die_ax7]
{
};


// player_die_ax7
// function begins at statement 14474, parm_start=10004
// OP_STATE	10004	10005	0
// OP_DONE	0	0	0
void () player_die_ax7 = [47, player_die_ax8]
{
};


// player_die_ax8
// function begins at statement 14476, parm_start=10006
// OP_STATE	10006	10007	0
// OP_DONE	0	0	0
void () player_die_ax8 = [48, player_die_ax9]
{
};


// player_die_ax9
// function begins at statement 14478, parm_start=10008
// OP_STATE	10008	10007	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () player_die_ax9 = [49, player_die_ax9]
{
    PlayerDead();
};

