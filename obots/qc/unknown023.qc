void () func000647;

// func000407
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
void () func000407 = [17, func000407]
{
    self.weaponframe = FALSE;
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = FALSE;
        func000408();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe >= globaldef000774)
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
        
        self.frame = globaldef000774 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
};


// func000408
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
void () func000408 = [6, func000408]
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


// func000409
// function begins at statement 13519, parm_start=9473
// OP_STATE	9473	9474	0
// OP_ADDRESS	28	156	9475
// OP_STOREP_F	214	9475	0
// OP_ADDRESS	28	133	9476
// OP_LOAD_F	28	133	9477
// OP_BITOR	9477	339	9478
// OP_STOREP_F	9478	9476	0
// OP_DONE	0	0	0
void () func000409 = [113, func000410]
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
void () func000414 = [118, func000408]
{
    self.weaponframe = MOVETYPE_TOSS;
};


// func000415
// function begins at statement 13547, parm_start=9493
// OP_STATE	9493	9494	0
// OP_ADDRESS	28	156	9495
// OP_STOREP_F	214	9495	0
// OP_DONE	0	0	0
void () func000415 = [119, func000416]
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
    func000251();
};


// func000418
// function begins at statement 13560, parm_start=9501
// OP_STATE	9501	5354	0
// OP_ADDRESS	28	156	9502
// OP_STOREP_F	229	9502	0
// OP_DONE	0	0	0
void () func000418 = [122, func000408]
{
    self.weaponframe = MOVETYPE_STEP;
};


// func000419
// function begins at statement 13564, parm_start=9503
// OP_STATE	9503	9504	0
// OP_ADDRESS	28	156	9505
// OP_STOREP_F	230	9505	0
// OP_DONE	0	0	0
void () func000419 = [125, func000420]
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
    func000251();
};


// func000422
// function begins at statement 13577, parm_start=9512
// OP_STATE	221	5354	0
// OP_ADDRESS	28	156	9512
// OP_STOREP_F	217	9512	0
// OP_DONE	0	0	0
void () func000422 = [128, func000408]
{
    self.weaponframe = FL_CLIENT;
};


// func000423
// function begins at statement 13581, parm_start=9513
// OP_STATE	9513	9514	0
// OP_ADDRESS	28	156	9515
// OP_STOREP_F	214	9515	0
// OP_DONE	0	0	0
void () func000423 = [131, func000424]
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
    func000251();
};


// func000426
// function begins at statement 13594, parm_start=9522
// OP_STATE	9522	5354	0
// OP_ADDRESS	28	156	9523
// OP_STOREP_F	229	9523	0
// OP_DONE	0	0	0
void () func000426 = [134, func000408]
{
    self.weaponframe = MOVETYPE_STEP;
};


// func000427
// function begins at statement 13598, parm_start=9524
// OP_STATE	9524	9525	0
// OP_ADDRESS	28	156	9526
// OP_STOREP_F	230	9526	0
// OP_DONE	0	0	0
void () func000427 = [137, func000428]
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
    func000251();
};


// func000430
// function begins at statement 13611, parm_start=9533
// OP_STATE	9533	5354	0
// OP_ADDRESS	28	156	9534
// OP_STOREP_F	217	9534	0
// OP_DONE	0	0	0
void () func000430 = [140, func000408]
{
    self.weaponframe = FL_CLIENT;
};


// func000431
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
void () func000431 = [103, func000432]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        func000408();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    func000295();
    func000280(MOVETYPE_STEP);
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
void () func000432 = [104, func000431]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        func000408();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    func000295();
    func000280(CONTENT_SLIME);
    self.attack_finished = time + 0.2;
};


// func000433
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
void () func000433 = [105, func000434]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        func000408();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    func000295();
    func000274();
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
void () func000434 = [106, func000433]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    
    if(!self.button0)
    {
        func000408();
        return;
    }
    
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    func000295();
    func000274();
    self.attack_finished = time + 0.2;
};


// func000435
// function begins at statement 13717, parm_start=9591
// OP_STATE	9591	9592	0
// OP_ADDRESS	28	156	9593
// OP_STOREP_F	214	9593	0
// OP_ADDRESS	28	133	9594
// OP_LOAD_F	28	133	9595
// OP_BITOR	9595	339	9596
// OP_STOREP_F	9596	9594	0
// OP_DONE	0	0	0
void () func000435 = [107, func000436]
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
void () func000440 = [112, func000408]
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
        if(random() > GLOBALDEFFIVETWOTWO)
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
        if(random() > GLOBALDEFFIVETWOTWO)
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
        if(random() > GLOBALDEFFIVETWOTWO)
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
    
    self.pain_finished = time + GLOBALDEFFIVETWOTWO;
    
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
void () func000447 = [40, func000408]
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
void () func000453 = [34, func000408]
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
    globaldef003169.nextthink = time + GLOBALDEFFIVETWOTWO;
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
    globaldef003179_x = 100 * func000249();
    globaldef003179_y = 100 * func000249();
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


// func000462
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
void (string globaldef003190, float globaldef003191) func000462 = 
{
    if((globaldef003190 == "progs/h_player.mdl") && (globaldef000804 & globaldef000760))
    {
        self.field000251 = FALSE;
        self.field000250 = globaldef000510;
    }
    else
    {
        setmodel(self, globaldef003190);
    }
    
    self.frame = FALSE;
    self.nextthink = CONTENT_EMPTY;
    self.movetype = MOVETYPE_BOUNCE;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.view_ofs = '0 0 8';
    setsize(self, '-16 -16 0', '16 16 56');
    self.velocity = func000459(globaldef003191);
    self.origin_z = self.origin_z - globaldef000719;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.avelocity = func000249() * '0 600 0';
};


// func000463
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
void () func000463 = 
{
    func000462("progs/h_player.mdl", self.health);
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
    
    if(random() < GLOBALDEFFIVETWOTWO)
    {
        sound(self, CHAN_VOICE, "player/gib.wav", TRUE, ATTN_NONE);
    }
    else
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NONE);
    }
    
};


// func000464
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
void () func000464 = 
{
    local float globaldef003195;
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    if(globaldef000804 & globaldef000760)
    {
        self.field000251 = self.field000249;
        self.field000250 = globaldef000509;
    }
    else
    {
        self.modelindex = globaldef000509;
    }
    
    
    if(deathmatch || coop)
    {
        func000244();
    }
    
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < MOVETYPE_BOUNCE)
    {
        self.velocity_z = self.velocity_z + (random() * globaldef000523);
    }
    
    
    if(self.health < -40)
    {
        func000463();
        return;
    }
    
    
    if(globaldef000804 & globaldef000750)
    {
        func000463();
        return;
    }
    
    func000457();
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    
    if(self.weapon == IT_AXE)
    {
        func000519();
        return;
    }
    
    globaldef003195 = FALSE;
    
    if(!globaldef003195)
    {
        globaldef003195 = TRUE + (floor(random() * MOVETYPE_TOSS));
    }
    
    if(globaldef003195 == TRUE)
    {
        func000466();
    }
    else
    {
        if(globaldef003195 == FL_SWIM)
        {
            func000477();
        }
        else
        {
            if(globaldef003195 == MOVETYPE_WALK)
            {
                func000486();
            }
            else
            {
                if(globaldef003195 == MOVETYPE_STEP)
                {
                    func000501();
                }
                else
                {
                    func000510();
                }
                
            }
            
        }
        
    }
    
};


// func000465
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
void () func000465 = 
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


// func000466
// function begins at statement 14351, parm_start=9910
// OP_STATE	1470	9910	0
// OP_DONE	0	0	0
void () func000466 = [50, func000467]
{
};


// func000467
// function begins at statement 14353, parm_start=9911
// OP_STATE	9911	9912	0
// OP_DONE	0	0	0
void () func000467 = [51, func000468]
{
};


// func000468
// function begins at statement 14355, parm_start=9913
// OP_STATE	9913	9914	0
// OP_DONE	0	0	0
void () func000468 = [52, func000469]
{
};


// func000469
// function begins at statement 14357, parm_start=9915
// OP_STATE	9915	9916	0
// OP_DONE	0	0	0
void () func000469 = [53, func000470]
{
};


// func000470
// function begins at statement 14359, parm_start=9917
// OP_STATE	9917	9918	0
// OP_DONE	0	0	0
void () func000470 = [54, func000471]
{
};


// func000471
// function begins at statement 14361, parm_start=9919
// OP_STATE	9919	9920	0
// OP_DONE	0	0	0
void () func000471 = [55, func000472]
{
};


// func000472
// function begins at statement 14363, parm_start=9921
// OP_STATE	9921	9922	0
// OP_DONE	0	0	0
void () func000472 = [56, func000473]
{
};


// func000473
// function begins at statement 14365, parm_start=9923
// OP_STATE	9923	9924	0
// OP_DONE	0	0	0
void () func000473 = [57, func000474]
{
};


// func000474
// function begins at statement 14367, parm_start=9925
// OP_STATE	9925	9926	0
// OP_DONE	0	0	0
void () func000474 = [58, func000475]
{
};


// func000475
// function begins at statement 14369, parm_start=9927
// OP_STATE	2783	9927	0
// OP_DONE	0	0	0
void () func000475 = [59, func000476]
{
};


// func000476
// function begins at statement 14371, parm_start=9928
// OP_STATE	2019	9927	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000476 = [60, func000476]
{
    func000458();
};


// func000477
// function begins at statement 14374, parm_start=9928
// OP_STATE	9928	9929	0
// OP_DONE	0	0	0
void () func000477 = [61, func000478]
{
};


// func000478
// function begins at statement 14376, parm_start=9930
// OP_STATE	9930	9931	0
// OP_DONE	0	0	0
void () func000478 = [62, func000479]
{
};


// func000479
// function begins at statement 14378, parm_start=9932
// OP_STATE	6707	9932	0
// OP_DONE	0	0	0
void () func000479 = [63, func000480]
{
};


// func000480
// function begins at statement 14380, parm_start=9933
// OP_STATE	220	9933	0
// OP_DONE	0	0	0
void () func000480 = [64, func000481]
{
};


// func000481
// function begins at statement 14382, parm_start=9934
// OP_STATE	9934	9935	0
// OP_DONE	0	0	0
void () func000481 = [65, func000482]
{
};


// func000482
// function begins at statement 14384, parm_start=9936
// OP_STATE	9936	9937	0
// OP_DONE	0	0	0
void () func000482 = [66, func000483]
{
};


// func000483
// function begins at statement 14386, parm_start=9938
// OP_STATE	9938	9939	0
// OP_DONE	0	0	0
void () func000483 = [67, func000484]
{
};


// func000484
// function begins at statement 14388, parm_start=9940
// OP_STATE	8193	9940	0
// OP_DONE	0	0	0
void () func000484 = [68, func000485]
{
};


// func000485
// function begins at statement 14390, parm_start=9941
// OP_STATE	8196	9940	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000485 = [69, func000485]
{
    func000458();
};


// func000486
// function begins at statement 14393, parm_start=9941
// OP_STATE	1536	9941	0
// OP_DONE	0	0	0
void () func000486 = [70, func000487]
{
};


// func000487
// function begins at statement 14395, parm_start=9942
// OP_STATE	8201	9942	0
// OP_DONE	0	0	0
void () func000487 = [71, func000488]
{
};


// func000488
// function begins at statement 14397, parm_start=9943
// OP_STATE	9943	9944	0
// OP_DONE	0	0	0
void () func000488 = [72, func000489]
{
};


// func000489
// function begins at statement 14399, parm_start=9945
// OP_STATE	5487	9945	0
// OP_DONE	0	0	0
void () func000489 = [73, func000490]
{
};


// func000490
// function begins at statement 14401, parm_start=9946
// OP_STATE	9946	9947	0
// OP_DONE	0	0	0
void () func000490 = [74, func000491]
{
};


// func000491
// function begins at statement 14403, parm_start=9948
// OP_STATE	9173	9948	0
// OP_DONE	0	0	0
void () func000491 = [75, func000492]
{
};


// func000492
// function begins at statement 14405, parm_start=9949
// OP_STATE	9949	9950	0
// OP_DONE	0	0	0
void () func000492 = [76, func000493]
{
};


// func000493
// function begins at statement 14407, parm_start=9951
// OP_STATE	9951	9952	0
// OP_DONE	0	0	0
void () func000493 = [77, func000494]
{
};


// func000494
// function begins at statement 14409, parm_start=9953
// OP_STATE	9953	9954	0
// OP_DONE	0	0	0
void () func000494 = [78, func000495]
{
};


// func000495
// function begins at statement 14411, parm_start=9955
// OP_STATE	9955	9956	0
// OP_DONE	0	0	0
void () func000495 = [79, func000496]
{
};


// func000496
// function begins at statement 14413, parm_start=9957
// OP_STATE	2805	9957	0
// OP_DONE	0	0	0
void () func000496 = [80, func000497]
{
};


// func000497
// function begins at statement 14415, parm_start=9958
// OP_STATE	8204	9958	0
// OP_DONE	0	0	0
void () func000497 = [81, func000498]
{
};


// func000498
// function begins at statement 14417, parm_start=9959
// OP_STATE	9959	9960	0
// OP_DONE	0	0	0
void () func000498 = [82, func000499]
{
};


// func000499
// function begins at statement 14419, parm_start=9961
// OP_STATE	9961	9962	0
// OP_DONE	0	0	0
void () func000499 = [83, func000500]
{
};


// func000500
// function begins at statement 14421, parm_start=9963
// OP_STATE	7694	9962	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000500 = [84, func000500]
{
    func000458();
};


// func000501
// function begins at statement 14424, parm_start=9963
// OP_STATE	9963	9964	0
// OP_DONE	0	0	0
void () func000501 = [85, func000502]
{
};


// func000502
// function begins at statement 14426, parm_start=9965
// OP_STATE	9965	9966	0
// OP_DONE	0	0	0
void () func000502 = [86, func000503]
{
};


// func000503
// function begins at statement 14428, parm_start=9967
// OP_STATE	9967	9968	0
// OP_DONE	0	0	0
void () func000503 = [87, func000504]
{
};


// func000504
// function begins at statement 14430, parm_start=9969
// OP_STATE	9969	9970	0
// OP_DONE	0	0	0
void () func000504 = [88, func000505]
{
};


// func000505
// function begins at statement 14432, parm_start=9971
// OP_STATE	9971	9972	0
// OP_DONE	0	0	0
void () func000505 = [89, func000506]
{
};


// func000506
// function begins at statement 14434, parm_start=9973
// OP_STATE	2658	9973	0
// OP_DONE	0	0	0
void () func000506 = [90, func000507]
{
};


// func000507
// function begins at statement 14436, parm_start=9974
// OP_STATE	9974	9975	0
// OP_DONE	0	0	0
void () func000507 = [91, func000508]
{
};


// func000508
// function begins at statement 14438, parm_start=9976
// OP_STATE	9976	9977	0
// OP_DONE	0	0	0
void () func000508 = [92, func000509]
{
};


// func000509
// function begins at statement 14440, parm_start=9978
// OP_STATE	9978	9977	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000509 = [93, func000509]
{
    func000458();
};


// func000510
// function begins at statement 14443, parm_start=9979
// OP_STATE	9979	9980	0
// OP_DONE	0	0	0
void () func000510 = [94, func000511]
{
};


// func000511
// function begins at statement 14445, parm_start=9981
// OP_STATE	9981	9982	0
// OP_DONE	0	0	0
void () func000511 = [95, func000512]
{
};


// func000512
// function begins at statement 14447, parm_start=9983
// OP_STATE	9983	9984	0
// OP_DONE	0	0	0
void () func000512 = [96, func000513]
{
};


// func000513
// function begins at statement 14449, parm_start=9985
// OP_STATE	9985	9986	0
// OP_DONE	0	0	0
void () func000513 = [97, func000514]
{
};


// func000514
// function begins at statement 14451, parm_start=9987
// OP_STATE	9987	9988	0
// OP_DONE	0	0	0
void () func000514 = [98, func000515]
{
};


// func000515
// function begins at statement 14453, parm_start=9989
// OP_STATE	9989	9990	0
// OP_DONE	0	0	0
void () func000515 = [99, func000516]
{
};


// func000516
// function begins at statement 14455, parm_start=9991
// OP_STATE	1997	9991	0
// OP_DONE	0	0	0
void () func000516 = [100, func000517]
{
};


// func000517
// function begins at statement 14457, parm_start=9992
// OP_STATE	8107	9992	0
// OP_DONE	0	0	0
void () func000517 = [101, func000518]
{
};


// func000518
// function begins at statement 14459, parm_start=9993
// OP_STATE	8109	9992	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000518 = [102, func000518]
{
    func000458();
};


// func000519
// function begins at statement 14462, parm_start=9993
// OP_STATE	9993	9994	0
// OP_DONE	0	0	0
void () func000519 = [41, func000520]
{
};


// func000520
// function begins at statement 14464, parm_start=9995
// OP_STATE	9995	9996	0
// OP_DONE	0	0	0
void () func000520 = [42, func000521]
{
};


// func000521
// function begins at statement 14466, parm_start=9997
// OP_STATE	9997	9998	0
// OP_DONE	0	0	0
void () func000521 = [43, func000522]
{
};


// func000522
// function begins at statement 14468, parm_start=9999
// OP_STATE	9999	10000	0
// OP_DONE	0	0	0
void () func000522 = [44, func000523]
{
};


// func000523
// function begins at statement 14470, parm_start=10001
// OP_STATE	2598	10001	0
// OP_DONE	0	0	0
void () func000523 = [45, func000524]
{
};


// func000524
// function begins at statement 14472, parm_start=10002
// OP_STATE	10002	10003	0
// OP_DONE	0	0	0
void () func000524 = [46, func000525]
{
};


// func000525
// function begins at statement 14474, parm_start=10004
// OP_STATE	10004	10005	0
// OP_DONE	0	0	0
void () func000525 = [47, func000526]
{
};


// func000526
// function begins at statement 14476, parm_start=10006
// OP_STATE	10006	10007	0
// OP_DONE	0	0	0
void () func000526 = [48, func000527]
{
};


// func000527
// function begins at statement 14478, parm_start=10008
// OP_STATE	10008	10007	0
// OP_CALL0	9745	0	0
// OP_DONE	0	0	0
void () func000527 = [49, func000527]
{
    func000458();
};


// func000528
// function begins at statement 14481, parm_start=10010
// OP_LOAD_ENT	28	181	10010
// OP_IFNOT	10010	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	10011
// OP_LE	10011	213	10012
// OP_IFNOT	10012	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	162	10013
// OP_BITAND	10013	272	10014
// OP_IFNOT	10014	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	182	10015
// OP_BITAND	10015	221	10016
// OP_IFNOT	10016	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	351	129	10017
// OP_NE_S	10017	1236	10018
// OP_IFNOT	10018	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10019
// OP_STOREP_ENT	351	10019	0
// OP_ADDRESS	28	150	10020
// OP_ADD_F	31	3036	10021
// OP_STOREP_F	10021	10020	0
// OP_ADDRESS	28	148	10022
// OP_STOREP_FNC	3711	10022	0
// OP_DONE	0	0	0
void () func000528 = 
{
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(activator.items & IT_INVISIBILITY)
    {
        return;
    }
    
    
    if(activator.flags & FL_NOTARGET)
    {
        return;
    }
    
    
    if(activator.classname != "player")
    {
        return;
    }
    
    self.enemy = activator;
    self.nextthink = time + 0.1;
    self.think = FoundTarget;
};


// func000530
// function begins at statement 14530, parm_start=10040
// OP_ADDRESS	28	108	10042
// OP_LOAD_F	28	108	10043
// OP_ADD_F	10043	214	10044
// OP_STOREP_F	10044	10042	0
// OP_CALL0	481	0	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	480	0	0
// OP_NOT_F	1	0	10045
// OP_IFNOT	10045	10	0
// OP_STORE_V	10046	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10047
// OP_STORE_V	10047	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_ADDRESS	28	163	10050
// OP_STOREP_F	252	10050	0
// OP_ADDRESS	28	191	10051
// OP_LOAD_V	28	117	10052
// OP_MUL_V	10052	10055	10058
// OP_STOREP_F	10058	10051	0
// OP_LOAD_F	28	192	10059
// OP_NOT_F	10059	0	10060
// OP_IFNOT	10060	3	0
// OP_ADDRESS	28	192	10061
// OP_STOREP_F	2323	10061	0
// OP_ADDRESS	28	166	10062
// OP_STOREP_V	10065	10062	0
// OP_ADDRESS	28	147	10068
// OP_STOREP_FNC	10009	10068	0
// OP_ADDRESS	28	182	10069
// OP_LOAD_F	28	182	10070
// OP_BITOR	10070	219	10071
// OP_STOREP_F	10071	10069	0
// OP_LOAD_S	28	196	10072
// OP_IFNOT	10072	42	0
// OP_ADDRESS	28	194	10073
// OP_ADDRESS	28	423	10074
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	10075
// OP_STORE_V	10075	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	10074	0
// OP_STOREP_ENT	1	10073	0
// OP_ADDRESS	28	191	10076
// OP_LOAD_ENT	28	194	10077
// OP_LOAD_V	10077	105	10078
// OP_LOAD_V	28	105	10081
// OP_SUB_V	10078	10081	10084
// OP_STORE_V	10084	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	10076	0
// OP_LOAD_ENT	28	423	10087
// OP_NOT_ENT	10087	0	10088
// OP_IFNOT	10088	10	0
// OP_STORE_V	10089	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10090
// OP_STORE_V	10090	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_LOAD_ENT	28	423	10093
// OP_LOAD_S	10093	129	10094
// OP_EQ_S	10094	10095	10096
// OP_IFNOT	10096	4	0
// OP_LOAD_FNC	28	362	10097
// OP_CALL0	10097	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	422	10098
// OP_STOREP_F	10099	10098	0
// OP_LOAD_FNC	28	361	10100
// OP_CALL0	10100	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	422	10101
// OP_STOREP_F	10099	10101	0
// OP_LOAD_FNC	28	361	10102
// OP_CALL0	10102	0	0
// OP_ADDRESS	28	150	10103
// OP_LOAD_F	28	150	10104
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10105
// OP_ADD_F	10104	10105	10106
// OP_STOREP_F	10106	10103	0
// OP_DONE	0	0	0
void () func000530 = 
{
    local string globaldef003301;
    local entity globaldef003302;
    self.origin_z = self.origin_z + TRUE;
    droptofloor();
    
    if(!walkmove(FALSE, FALSE))
    {
        dprint("walkmonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0 1 0';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 20;
    }
    
    self.view_ofs = '0 0 25';
    self.use = func000528;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        if(self.movetarget.classname == "path_corner")
        {
            self.th_walk();
        }
        else
        {
            self.pausetime = 100000000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * GLOBALDEFFIVETWOTWO);
};


// func000531
// function begins at statement 14622, parm_start=10108
// OP_ADDRESS	28	150	10108
// OP_LOAD_F	28	150	10109
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10110
// OP_ADD_F	10109	10110	10111
// OP_STOREP_F	10111	10108	0
// OP_ADDRESS	28	148	10112
// OP_STOREP_FNC	10039	10112	0
// OP_ADD_F	40	214	10113
// OP_STORE_F	10113	40	0
// OP_DONE	0	0	0
void () func000531 = 
{
    self.nextthink = self.nextthink + (random() * GLOBALDEFFIVETWOTWO);
    self.think = func000530;
    total_monsters = total_monsters + TRUE;
};


// func000532
// function begins at statement 14633, parm_start=10115
// OP_ADDRESS	28	163	10115
// OP_STOREP_F	252	10115	0
// OP_ADDRESS	28	191	10116
// OP_LOAD_V	28	117	10117
// OP_MUL_V	10117	10055	10120
// OP_STOREP_F	10120	10116	0
// OP_LOAD_F	28	192	10121
// OP_NOT_F	10121	0	10122
// OP_IFNOT	10122	3	0
// OP_ADDRESS	28	192	10123
// OP_STOREP_F	235	10123	0
// OP_ADDRESS	28	166	10124
// OP_STOREP_V	10065	10124	0
// OP_ADDRESS	28	147	10127
// OP_STOREP_FNC	10009	10127	0
// OP_ADDRESS	28	182	10128
// OP_LOAD_F	28	182	10129
// OP_BITOR	10129	215	10130
// OP_STOREP_F	10130	10128	0
// OP_ADDRESS	28	182	10131
// OP_LOAD_F	28	182	10132
// OP_BITOR	10132	219	10133
// OP_STOREP_F	10133	10131	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	480	0	0
// OP_NOT_F	1	0	10134
// OP_IFNOT	10134	10	0
// OP_STORE_V	10135	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10136
// OP_STORE_V	10136	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_LOAD_S	28	196	10139
// OP_IFNOT	10139	34	0
// OP_ADDRESS	28	194	10140
// OP_ADDRESS	28	423	10141
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	10142
// OP_STORE_V	10142	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	10141	0
// OP_STOREP_ENT	1	10140	0
// OP_LOAD_ENT	28	423	10143
// OP_NOT_ENT	10143	0	10144
// OP_IFNOT	10144	10	0
// OP_STORE_V	10089	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10145
// OP_STORE_V	10145	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_LOAD_ENT	28	423	10148
// OP_LOAD_S	10148	129	10149
// OP_EQ_S	10149	10095	10150
// OP_IFNOT	10150	4	0
// OP_LOAD_FNC	28	362	10151
// OP_CALL0	10151	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	422	10152
// OP_STOREP_F	10099	10152	0
// OP_LOAD_FNC	28	361	10153
// OP_CALL0	10153	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	422	10154
// OP_STOREP_F	10099	10154	0
// OP_LOAD_FNC	28	361	10155
// OP_CALL0	10155	0	0
// OP_DONE	0	0	0
void () func000532 = 
{
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0 1 0';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = MOVETYPE_BOUNCE;
    }
    
    self.view_ofs = '0 0 25';
    self.use = func000528;
    self.flags = self.flags | FL_FLY;
    self.flags = self.flags | FL_MONSTER;
    
    if(!walkmove(FALSE, FALSE))
    {
        dprint("flymonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        if(self.movetarget.classname == "path_corner")
        {
            self.th_walk();
        }
        else
        {
            self.pausetime = 100000000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
};


// func000533
// function begins at statement 14710, parm_start=10157
// OP_ADDRESS	28	150	10157
// OP_LOAD_F	28	150	10158
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10159
// OP_ADD_F	10158	10159	10160
// OP_STOREP_F	10160	10157	0
// OP_ADDRESS	28	148	10161
// OP_STOREP_FNC	10114	10161	0
// OP_ADD_F	40	214	10162
// OP_STORE_F	10162	40	0
// OP_DONE	0	0	0
void () func000533 = 
{
    self.nextthink = self.nextthink + (random() * GLOBALDEFFIVETWOTWO);
    self.think = func000532;
    total_monsters = total_monsters + TRUE;
};


// func000534
// function begins at statement 14721, parm_start=10164
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	163	10164
// OP_STOREP_F	252	10164	0
// OP_ADD_F	40	214	10165
// OP_STORE_F	10165	40	0
// OP_ADDRESS	28	191	10166
// OP_LOAD_V	28	117	10167
// OP_MUL_V	10167	10055	10170
// OP_STOREP_F	10170	10166	0
// OP_LOAD_F	28	192	10171
// OP_NOT_F	10171	0	10172
// OP_IFNOT	10172	3	0
// OP_ADDRESS	28	192	10173
// OP_STOREP_F	235	10173	0
// OP_ADDRESS	28	166	10174
// OP_STOREP_V	10177	10174	0
// OP_ADDRESS	28	147	10180
// OP_STOREP_FNC	10009	10180	0
// OP_ADDRESS	28	182	10181
// OP_LOAD_F	28	182	10182
// OP_BITOR	10182	216	10183
// OP_STOREP_F	10183	10181	0
// OP_ADDRESS	28	182	10184
// OP_LOAD_F	28	182	10185
// OP_BITOR	10185	219	10186
// OP_STOREP_F	10186	10184	0
// OP_LOAD_S	28	196	10187
// OP_IFNOT	10187	33	0
// OP_ADDRESS	28	194	10188
// OP_ADDRESS	28	423	10189
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	10190
// OP_STORE_V	10190	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	10189	0
// OP_STOREP_ENT	1	10188	0
// OP_LOAD_ENT	28	423	10191
// OP_NOT_ENT	10191	0	10192
// OP_IFNOT	10192	10	0
// OP_STORE_V	10089	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	10193
// OP_STORE_V	10193	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_ADDRESS	28	191	10196
// OP_LOAD_ENT	28	194	10197
// OP_LOAD_V	10197	105	10198
// OP_LOAD_V	28	105	10201
// OP_SUB_V	10198	10201	10204
// OP_STORE_V	10204	4	0
// OP_CALL1	463	0	0
// OP_STOREP_F	1	10196	0
// OP_LOAD_FNC	28	362	10207
// OP_CALL0	10207	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	422	10208
// OP_STOREP_F	10099	10208	0
// OP_LOAD_FNC	28	361	10209
// OP_CALL0	10209	0	0
// OP_ADDRESS	28	150	10210
// OP_LOAD_F	28	150	10211
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10212
// OP_ADD_F	10211	10212	10213
// OP_STOREP_F	10213	10210	0
// OP_DONE	0	0	0
void () func000534 = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    total_monsters = total_monsters + TRUE;
    self.ideal_yaw = self.angles * '0 1 0';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = MOVETYPE_BOUNCE;
    }
    
    self.view_ofs = '0 0 10';
    self.use = func000528;
    self.flags = self.flags | FL_SWIM;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        self.th_walk();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * GLOBALDEFFIVETWOTWO);
};


// func000535
// function begins at statement 14795, parm_start=10215
// OP_ADDRESS	28	150	10215
// OP_LOAD_F	28	150	10216
// OP_CALL0	457	0	0
// OP_MUL_F	1	539	10217
// OP_ADD_F	10216	10217	10218
// OP_STOREP_F	10218	10215	0
// OP_ADDRESS	28	148	10219
// OP_STOREP_FNC	10163	10219	0
// OP_ADD_F	40	214	10220
// OP_STORE_F	10220	40	0
// OP_DONE	0	0	0
void () func000535 = 
{
    self.nextthink = self.nextthink + (random() * GLOBALDEFFIVETWOTWO);
    self.think = func000534;
    total_monsters = total_monsters + TRUE;
};

float globaldef003316;
float globaldef003317;
float globaldef003318;
float globaldef003319;
float globaldef003320;
void () func000539;
void () func000540;

// func000536
// function begins at statement 14806, parm_start=10229
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	425	10229
// OP_STORE_V	10229	13	0
// OP_CALL4	522	0	0
// OP_LOAD_F	28	418	10230
// OP_GE	10230	213	10231
// OP_IFNOT	10231	7	0
// OP_LOAD_F	28	438	10232
// OP_EQ_F	10232	285	10233
// OP_IFNOT	10233	3	0
// OP_CALL0	10227	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10226	0	0
// OP_DONE	0	0	0
void () func000536 = 
{
    T_Damage(other, self, self, self.dmg);
    
    if(self.wait >= FALSE)
    {
        if(self.state == STATE_DOWN)
        {
            func000540();
        }
        else
        {
            func000539();
        }
        
    }
    
};

