
// func002274
// function begins at statement 27685, parm_start=16426
// OP_LOAD_V	16426	560	16440
// OP_STORE_V	16440	16427	0
// OP_STORE_F	213	16429	0
// OP_STORE_V	16427	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	16427	0
// OP_STORE_ENT	28	16433	0
// OP_LOAD_V	28	105	16443
// OP_STORE_V	16443	16435	0
// OP_LOAD_F	28	182	16446
// OP_STORE_F	16446	16439	0
// OP_STORE_ENT	16426	28	0
// OP_STORE_V	16427	4	0
// OP_CALL1	463	0	0
// OP_STORE_F	1	16438	0
// OP_ADDRESS	28	182	16447
// OP_LOAD_F	28	182	16448
// OP_BITOR	16448	223	16449
// OP_BITOR	16449	224	16450
// OP_STOREP_F	16450	16447	0
// OP_STORE_V	16438	4	0
// OP_STORE_V	3263	7	0
// OP_CALL2	480	0	0
// OP_IFNOT	1	18	0
// OP_LOAD_F	28	108	16451
// OP_ADD_F	16437	1283	16452
// OP_GT	16451	16452	16453
// OP_IFNOT	16453	11	0
// OP_ADDRESS	16426	575	16454
// OP_LOAD_F	16426	575	16455
// OP_BITOR	16455	711	16456
// OP_STOREP_F	16456	16454	0
// OP_ADDRESS	16426	564	16457
// OP_LOAD_V	16426	105	16460
// OP_STOREP_V	16460	16457	0
// OP_ADDRESS	16426	568	16463
// OP_LOAD_V	28	105	16466
// OP_STOREP_V	16466	16463	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16435	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	182	16469
// OP_STOREP_F	16439	16469	0
// OP_STORE_ENT	16433	28	0
// OP_DONE	0	0	0
void (entity globaldef005748) func002274 = 
{
    local vector globaldef005749;
    local vector globaldef005753;
    local entity globaldef005757;
    local entity globaldef005758;
    local vector globaldef005759;
    local float globaldef005763;
    local float globaldef005764;
    globaldef005749 = globaldef005748.prephysicsvelocity;
    globaldef005749_z = FALSE;
    globaldef005749 = normalize(globaldef005749);
    globaldef005757 = self;
    globaldef005759 = self.origin;
    globaldef005764 = self.flags;
    self = globaldef005748;
    globaldef005763 = vectoyaw(globaldef005749);
    self.flags = (self.flags | FL_ONGROUND) | FL_PARTIALGROUND;
    
    if(walkmove(globaldef005763, 0.9))
    {
        
        if(self.origin_z > (globaldef005759_z + 0.001))
        {
            globaldef005748.botflags = globaldef005748.botflags | globaldef000694;
            globaldef005748.touchorigin = globaldef005748.origin;
            globaldef005748.steporigin = self.origin;
        }
        
        setorigin(self, globaldef005759);
    }
    
    self.flags = globaldef005764;
    self = globaldef005757;
};


// func002275
// function begins at statement 27730, parm_start=16471
// OP_LOAD_F	28	186	16472
// OP_LE	16472	31	16473
// OP_IFNOT	16473	6	0
// OP_LOAD_F	28	103	16474
// OP_EQ_F	16474	229	16475
// OP_IFNOT	16475	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	16425	0	0
// OP_DONE	0	0	0
void () func002275 = 
{
    local float globaldef005766;
    
    if(self.teleport_time <= time)
    {
        
        if(self.movetype == MOVETYPE_STEP)
        {
            func002274(self);
        }
        
    }
    
};


// func002276
// function begins at statement 27739, parm_start=16477
// OP_LOAD_F	28	103	16488
// OP_EQ_F	16488	229	16489
// OP_IFNOT	16489	105	0
// OP_STORE_V	28	4	0
// OP_CALL1	1057	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	16357	0	0
// OP_LOAD_F	28	575	16490
// OP_BITAND	16490	711	16491
// OP_IFNOT	16491	9	0
// OP_STORE_F	214	16487	0
// OP_ADDRESS	28	575	16492
// OP_LOAD_F	28	575	16493
// OP_LOAD_F	28	575	16494
// OP_BITAND	16494	711	16495
// OP_SUB_F	16493	16495	16496
// OP_STOREP_F	16496	16492	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	16487	0
// OP_IFNOT	16487	17	0
// OP_LOAD_F	28	189	16497
// OP_NOT_F	16497	0	16498
// OP_IFNOT	16498	7	0
// OP_LOAD_F	28	575	16499
// OP_BITAND	16499	700	16500
// OP_NOT_F	16500	0	16501
// OP_IFNOT	16501	2	0
// OP_STORE_F	213	16487	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	189	16502
// OP_EQ_F	16502	214	16503
// OP_IFNOT	16503	5	0
// OP_LOAD_F	28	182	16504
// OP_BITAND	16504	225	16505
// OP_IFNOT	16505	2	0
// OP_STORE_F	213	16487	0
// OP_IFNOT	16487	10	0
// OP_LOAD_F	28	114	16506
// OP_LOAD_F	28	561	16507
// OP_EQ_F	16506	16507	16508
// OP_LOAD_F	28	115	16509
// OP_LOAD_F	28	562	16510
// OP_EQ_F	16509	16510	16511
// OP_AND	16508	16511	16512
// OP_IFNOT	16512	2	0
// OP_STORE_F	213	16487	0
// OP_LOAD_F	28	555	16513
// OP_SUB_F	31	16513	16514
// OP_STORE_F	16514	16483	0
// OP_IFNOT	16487	7	0
// OP_LOAD_F	28	108	16515
// OP_LOAD_F	28	559	16516
// OP_ADD_F	16516	6133	16517
// OP_GE	16515	16517	16518
// OP_IFNOT	16518	2	0
// OP_STORE_F	213	16487	0
// OP_IFNOT	16487	51	0
// OP_LOAD_F	28	182	16519
// OP_STORE_F	16519	16484	0
// OP_ADDRESS	28	182	16520
// OP_LOAD_F	28	182	16521
// OP_BITOR	16521	223	16522
// OP_BITOR	16522	224	16523
// OP_STOREP_F	16523	16520	0
// OP_LOAD_V	28	105	16524
// OP_STORE_V	16524	16480	0
// OP_ADDRESS	28	105	16527
// OP_LOAD_V	28	564	16530
// OP_STOREP_V	16530	16527	0
// OP_LOAD_V	28	560	16533
// OP_MUL_VF	16533	16483	16536
// OP_LOAD_V	28	564	16539
// OP_LOAD_V	28	556	16542
// OP_SUB_V	16539	16542	16545
// OP_SUB_V	16536	16545	16548
// OP_STORE_V	16548	16477	0
// OP_STORE_F	213	16479	0
// OP_STORE_V	16477	4	0
// OP_CALL1	463	0	0
// OP_STORE_F	1	16485	0
// OP_STORE_V	16477	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	16486	0
// OP_STORE_V	16485	4	0
// OP_STORE_V	16486	7	0
// OP_CALL2	480	0	0
// OP_NOT_F	1	0	16551
// OP_IFNOT	16551	4	0
// OP_ADDRESS	28	105	16552
// OP_LOAD_V	28	568	16555
// OP_STOREP_V	16555	16552	0
// OP_ADDRESS	28	113	16558
// OP_LOAD_V	28	560	16561
// OP_STOREP_V	16561	16558	0
// OP_ADDRESS	28	116	16564
// OP_STOREP_F	213	16564	0
// OP_ADDRESS	28	182	16565
// OP_BITOR	16484	223	16566
// OP_STOREP_F	16566	16565	0
// OP_ADDRESS	28	575	16567
// OP_LOAD_F	28	575	16568
// OP_BITOR	16568	700	16569
// OP_STOREP_F	16569	16567	0
// OP_ADDRESS	28	575	16570
// OP_LOAD_F	28	575	16571
// OP_BITOR	16571	712	16572
// OP_STOREP_F	16572	16570	0
// OP_STORE_V	28	4	0
// OP_CALL1	1056	0	0
// OP_ADDRESS	28	555	16573
// OP_STOREP_F	31	16573	0
// OP_ADDRESS	28	148	16574
// OP_LOAD_FNC	28	553	16575
// OP_STOREP_FNC	16575	16574	0
// OP_ADDRESS	28	150	16576
// OP_LOAD_F	28	554	16577
// OP_STOREP_F	16577	16576	0
// OP_LOAD_F	28	150	16578
// OP_GT	31	16578	16579
// OP_IFNOT	16579	6	0
// OP_STORE_V	28	4	0
// OP_CALL1	16328	0	0
// OP_LOAD_FNC	28	148	16580
// OP_CALL0	16580	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	103	16581
// OP_EQ_F	16581	229	16582
// OP_IFNOT	16582	17	0
// OP_LOAD_F	28	189	16583
// OP_GE	16583	228	16584
// OP_IFNOT	16584	5	0
// OP_ADDRESS	28	113	16585
// OP_LOAD_V	28	560	16588
// OP_STOREP_V	16588	16585	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	182	16591
// OP_BITAND	16591	223	16592
// OP_IFNOT	16592	7	0
// OP_ADDRESS	28	114	16593
// OP_LOAD_F	28	561	16594
// OP_STOREP_F	16594	16593	0
// OP_ADDRESS	28	115	16595
// OP_LOAD_F	28	562	16596
// OP_STOREP_F	16596	16595	0
// OP_DONE	0	0	0
void () func002276 = 
{
    local vector globaldef005768;
    local vector globaldef005772;
    local float globaldef005776;
    local float globaldef005777;
    local float globaldef005778;
    local float globaldef005779;
    local float globaldef005780;
    
    if(self.movetype == MOVETYPE_STEP)
    {
        func002273(self);
        func002272(self);
        if(self.botflags & globaldef000694)
        {
            globaldef005780 = TRUE;
            self.botflags = self.botflags - (self.botflags & globaldef000694);
        }
        else
        {
            globaldef005780 = FALSE;
        }
        
        
        if(globaldef005780)
        {
            if(!self.waterlevel)
            {
                
                if(!(self.botflags & globaldef000683))
                {
                    globaldef005780 = FALSE;
                }
                
            }
            else
            {
                
                if(self.waterlevel == TRUE)
                {
                    
                    if(self.flags & FL_WATERJUMP)
                    {
                        globaldef005780 = FALSE;
                    }
                    
                }
                
            }
            
        }
        
        
        if(globaldef005780)
        {
            
            if((self.velocity_x == self.prephysicsvelocity_x) && (self.velocity_y == self.prephysicsvelocity_y))
            {
                globaldef005780 = FALSE;
            }
            
        }
        
        globaldef005776 = time - self.lastphysicstime;
        
        if(globaldef005780)
        {
            
            if(self.origin_z >= (self.prephysicsorigin_z + 18))
            {
                globaldef005780 = FALSE;
            }
            
        }
        
        
        if(globaldef005780)
        {
            globaldef005777 = self.flags;
            self.flags = (self.flags | FL_ONGROUND) | FL_PARTIALGROUND;
            globaldef005772 = self.origin;
            self.origin = self.touchorigin;
            globaldef005768 = (self.prephysicsvelocity * globaldef005776) - (self.touchorigin - self.prephysicsorigin);
            globaldef005768_z = FALSE;
            globaldef005778 = vectoyaw(globaldef005768);
            globaldef005779 = vlen(globaldef005768);
            
            if(!walkmove(globaldef005778, globaldef005779))
            {
                self.origin = self.steporigin;
            }
            
            self.velocity = self.prephysicsvelocity;
            self.velocity_z = FALSE;
            self.flags = globaldef005777 | FL_ONGROUND;
            self.botflags = self.botflags | globaldef000683;
            self.botflags = self.botflags | globaldef000695;
        }
        
    }
    
    func002268(self);
    self.lastphysicstime = time;
    self.think = self.think2;
    self.nextthink = self.nextthink2;
    if(time > self.nextthink)
    {
        func002271(self);
        self.think();
    }
    else
    {
        
        if(self.movetype == MOVETYPE_STEP)
        {
            if(self.waterlevel >= MOVETYPE_WALK)
            {
                self.velocity = self.prephysicsvelocity;
            }
            else
            {
                
                if(self.flags & FL_ONGROUND)
                {
                    self.velocity_x = self.prephysicsvelocity_x;
                    self.velocity_y = self.prephysicsvelocity_y;
                }
                
            }
            
        }
        
    }
    
};


// func002277
// function begins at statement 27884, parm_start=16597
// OP_STORE_ENT	834	16597	0
// OP_IFNOT	16597	98	0
// OP_LOAD_F	16597	103	16598
// OP_EQ_F	16598	229	16599
// OP_IFNOT	16599	49	0
// OP_STORE_V	16597	4	0
// OP_CALL1	16357	0	0
// OP_LOAD_F	16597	182	16600
// OP_BITAND	16600	225	16601
// OP_IFNOT	16601	23	0
// OP_ADDRESS	16597	114	16602
// OP_LOAD_F	16597	203	16603
// OP_STOREP_F	16603	16602	0
// OP_ADDRESS	16597	115	16604
// OP_LOAD_F	16597	204	16605
// OP_STOREP_F	16605	16604	0
// OP_LOAD_F	16597	575	16606
// OP_BITAND	16606	700	16607
// OP_LOAD_F	16597	189	16608
// OP_GT	16608	216	16609
// OP_OR	16607	16609	16610
// OP_LOAD_F	16597	186	16611
// OP_LT	16611	31	16612
// OP_OR	16610	16612	16613
// OP_IFNOT	16613	7	0
// OP_ADDRESS	16597	182	16614
// OP_LOAD_F	16597	182	16615
// OP_SUB_F	16615	225	16616
// OP_STOREP_F	16616	16614	0
// OP_ADDRESS	16597	186	16617
// OP_STOREP_F	213	16617	0
// OP_GOTO	6	0	0
// OP_LOAD_F	16597	189	16618
// OP_EQ_F	16618	216	16619
// OP_IFNOT	16619	3	0
// OP_STORE_V	16597	4	0
// OP_CALL1	16322	0	0
// OP_LOAD_F	16597	189	16620
// OP_GE	16620	228	16621
// OP_LOAD_F	16597	182	16622
// OP_BITAND	16622	225	16623
// OP_LOAD_F	16597	189	16624
// OP_GT	16624	213	16625
// OP_AND	16623	16625	16626
// OP_OR	16621	16626	16627
// OP_IFNOT	16627	6	0
// OP_ADDRESS	16597	116	16628
// OP_LOAD_F	16597	116	16629
// OP_MUL_F	799	32	16630
// OP_ADD_F	16629	16630	16631
// OP_STOREP_F	16631	16628	0
// OP_STORE_V	16597	4	0
// OP_CALL1	16325	0	0
// OP_LOAD_FNC	16597	148	16632
// OP_NE_FNC	16632	16476	16633
// OP_IFNOT	16633	7	0
// OP_ADDRESS	16597	553	16634
// OP_LOAD_FNC	16597	148	16635
// OP_STOREP_FNC	16635	16634	0
// OP_ADDRESS	16597	554	16636
// OP_LOAD_F	16597	150	16637
// OP_STOREP_F	16637	16636	0
// OP_ADDRESS	16597	148	16638
// OP_STOREP_FNC	16476	16638	0
// OP_ADDRESS	16597	150	16639
// OP_STOREP_F	31	16639	0
// OP_ADDRESS	16597	146	16640
// OP_STOREP_FNC	16470	16640	0
// OP_ADDRESS	16597	556	16641
// OP_LOAD_V	16597	105	16644
// OP_STOREP_V	16644	16641	0
// OP_ADDRESS	16597	560	16647
// OP_LOAD_V	16597	113	16650
// OP_STOREP_V	16650	16647	0
// OP_ADDRESS	16597	151	16653
// OP_STOREP_ENT	16597	16653	0
// OP_LOAD_F	16597	182	16654
// OP_BITAND	16654	223	16655
// OP_IFNOT	16655	6	0
// OP_ADDRESS	16597	182	16656
// OP_LOAD_F	16597	182	16657
// OP_BITOR	16657	699	16658
// OP_STOREP_F	16658	16656	0
// OP_GOTO	7	0	0
// OP_ADDRESS	16597	182	16659
// OP_LOAD_F	16597	182	16660
// OP_LOAD_F	16597	182	16661
// OP_BITAND	16661	699	16662
// OP_SUB_F	16660	16662	16663
// OP_STOREP_F	16663	16659	0
// OP_ADDRESS	16597	182	16664
// OP_LOAD_F	16597	182	16665
// OP_LOAD_F	16597	182	16666
// OP_BITAND	16666	223	16667
// OP_SUB_F	16665	16667	16668
// OP_STOREP_F	16668	16664	0
// OP_LOAD_ENT	16597	620	16669
// OP_STORE_ENT	16669	16597	0
// OP_GOTO	-97	0	0
// OP_DONE	0	0	0
void () func002277 = 
{
    local entity globaldef005781;
    globaldef005781 = firstBot;
    
    while(globaldef005781)
    {
        
        if(globaldef005781.movetype == MOVETYPE_STEP)
        {
            func002272(globaldef005781);
            if(globaldef005781.flags & FL_WATERJUMP)
            {
                globaldef005781.velocity_x = globaldef005781.movedir_x;
                globaldef005781.velocity_y = globaldef005781.movedir_y;
                
                if(((globaldef005781.botflags & globaldef000683) || (globaldef005781.waterlevel > FL_SWIM)) || (globaldef005781.teleport_time < time))
                {
                    globaldef005781.flags = globaldef005781.flags - FL_WATERJUMP;
                    globaldef005781.teleport_time = FALSE;
                }
                
            }
            else
            {
                
                if(globaldef005781.waterlevel == FL_SWIM)
                {
                    func002269(globaldef005781);
                }
                
            }
            
            
            if((globaldef005781.waterlevel >= MOVETYPE_WALK) || ((globaldef005781.flags & FL_WATERJUMP) && (globaldef005781.waterlevel > FALSE)))
            {
                globaldef005781.velocity_z = globaldef005781.velocity_z + (globaldef000782 * frametime);
            }
            
            func002270(globaldef005781);
        }
        
        
        if(globaldef005781.think != func002276)
        {
            globaldef005781.think2 = globaldef005781.think;
            globaldef005781.nextthink2 = globaldef005781.nextthink;
        }
        
        globaldef005781.think = func002276;
        globaldef005781.nextthink = time;
        globaldef005781.touch = func002275;
        globaldef005781.prephysicsorigin = globaldef005781.origin;
        globaldef005781.prephysicsvelocity = globaldef005781.velocity;
        globaldef005781.groundentity = globaldef005781;
        if(globaldef005781.flags & FL_ONGROUND)
        {
            globaldef005781.flags = globaldef005781.flags | GLOBALDEF682_16384;
        }
        else
        {
            globaldef005781.flags = globaldef005781.flags - (globaldef005781.flags & GLOBALDEF682_16384);
        }
        
        globaldef005781.flags = globaldef005781.flags - (globaldef005781.flags & FL_ONGROUND);
        globaldef005781 = globaldef005781.next;
    }
    
};

