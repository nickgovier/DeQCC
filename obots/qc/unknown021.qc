// func000395
// function begins at statement 11801, parm_start=8529
// OP_EQ_S	34	8530	8531
// OP_IFNOT	8531	39	0
// OP_STORE_V	6635	4	0
// OP_CALL1	490	0	0
// OP_NOT_F	1	0	8532
// OP_IFNOT	8532	3	0
// OP_STORE_S	8533	34	0
// OP_GOTO	28	0	0
// OP_BITAND	38	214	8534
// OP_NOT_F	8534	0	8535
// OP_IFNOT	8535	5	0
// OP_STORE_S	8533	34	0
// OP_BITOR	38	214	8536
// OP_STORE_F	8536	38	0
// OP_GOTO	21	0	0
// OP_BITAND	38	216	8537
// OP_NOT_F	8537	0	8538
// OP_IFNOT	8538	5	0
// OP_STORE_S	8539	34	0
// OP_BITOR	38	216	8540
// OP_STORE_F	8540	38	0
// OP_GOTO	14	0	0
// OP_BITAND	38	229	8541
// OP_NOT_F	8541	0	8542
// OP_IFNOT	8542	5	0
// OP_STORE_S	8543	34	0
// OP_BITOR	38	229	8544
// OP_STORE_F	8544	38	0
// OP_GOTO	7	0	0
// OP_BITAND	38	217	8545
// OP_NOT_F	8545	0	8546
// OP_IFNOT	8546	4	0
// OP_STORE_S	8547	34	0
// OP_SUB_F	38	232	8548
// OP_STORE_F	8548	38	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	8529	0
// OP_ADDRESS	8529	356	8549
// OP_STOREP_S	34	8549	0
// OP_GOTO	13	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8550	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8529	0
// OP_NOT_ENT	8529	0	8551
// OP_IFNOT	8551	6	0
// OP_STORE_S	8530	34	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	8529	0
// OP_ADDRESS	8529	356	8552
// OP_STOREP_S	34	8552	0
// OP_LOAD_S	8529	356	8553
// OP_STORE_S	8553	8269	0
// OP_STORE_F	214	347	0
// OP_LOAD_F	8529	150	8554
// OP_LT	8554	31	8555
// OP_IFNOT	8555	6	0
// OP_ADDRESS	8529	148	8556
// OP_STOREP_FNC	8304	8556	0
// OP_ADDRESS	8529	150	8557
// OP_ADD_F	31	3036	8558
// OP_STOREP_F	8558	8557	0
// OP_DONE	0	0	0
void () func000395 = 
{
    local entity globaldef002918;
    if(mapname == "start")
    {
        if(!cvar("registered"))
        {
            mapname = "e1m1";
        }
        else
        {
            if(!(serverflags & TRUE))
            {
                mapname = "e1m1";
                serverflags = serverflags | TRUE;
            }
            else
            {
                if(!(serverflags & FL_SWIM))
                {
                    mapname = "e2m1";
                    serverflags = serverflags | FL_SWIM;
                }
                else
                {
                    if(!(serverflags & MOVETYPE_STEP))
                    {
                        mapname = "e3m1";
                        serverflags = serverflags | MOVETYPE_STEP;
                    }
                    else
                    {
                        
                        if(!(serverflags & FL_CLIENT))
                        {
                            mapname = "e4m1";
                            serverflags = serverflags - MOVETYPE_PUSH;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        globaldef002918 = spawn();
        globaldef002918.map = mapname;
    }
    else
    {
        globaldef002918 = find(world, classname, "trigger_changelevel");
        
        if(!globaldef002918)
        {
            mapname = "start";
            globaldef002918 = spawn();
            globaldef002918.map = mapname;
        }
        
    }
    
    globaldef002871 = globaldef002918.map;
    gameover = TRUE;
    
    if(globaldef002918.nextthink < time)
    {
        globaldef002918.think = func000381;
        globaldef002918.nextthink = time + 0.1;
    }
    
};

// func000396
// function begins at statement 11865, parm_start=8560
// OP_IFNOT	347	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8562	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	8561	0
// OP_LOAD_F	28	153	8563
// OP_GE	8563	8561	8564
// OP_AND	8561	8564	8565
// OP_IFNOT	8565	3	0
// OP_CALL0	6709	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000396 = 
{
    local float globaldef002926;
    local float globaldef002927;
    
    if(gameover)
    {
        return;
    }
    
    globaldef002927 = cvar("fraglimit");
    
    if(globaldef002927 && (self.frags >= globaldef002927))
    {
        func000395();
        return;
    }
    
};

// func000397
// function begins at statement 11877, parm_start=8567
// OP_LOAD_F	28	182	8569
// OP_BITAND	8569	223	8570
// OP_IFNOT	8570	18	0
// OP_LOAD_V	28	113	8571
// OP_STORE_V	8571	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	8568	0
// OP_SUB_F	8568	2323	8574
// OP_STORE_F	8574	8568	0
// OP_LE	8568	213	8575
// OP_IFNOT	8575	4	0
// OP_ADDRESS	28	113	8576
// OP_STOREP_V	286	8576	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	113	8579
// OP_LOAD_V	28	113	8582
// OP_STORE_V	8582	4	0
// OP_CALL1	459	0	0
// OP_MUL_FV	8568	1	8585
// OP_STOREP_V	8585	8579	0
// OP_LOAD_F	28	165	8588
// OP_EQ_F	8588	248	8589
// OP_IFNOT	8589	11	0
// OP_LOAD_F	28	172	8590
// OP_LOAD_F	28	171	8591
// OP_OR	8590	8591	8592
// OP_LOAD_F	28	170	8593
// OP_OR	8592	8593	8594
// OP_IFNOT	8594	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	165	8595
// OP_STOREP_F	249	8595	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	8596
// OP_NOT_F	8596	0	8597
// OP_IFNOT	8597	11	0
// OP_LOAD_F	28	172	8598
// OP_NOT_F	8598	0	8599
// OP_LOAD_F	28	171	8600
// OP_NOT_F	8600	0	8601
// OP_AND	8599	8601	8602
// OP_LOAD_F	28	170	8603
// OP_NOT_F	8603	0	8604
// OP_AND	8602	8604	8605
// OP_IFNOT	8605	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	170	8606
// OP_STOREP_F	213	8606	0
// OP_ADDRESS	28	171	8607
// OP_STOREP_F	213	8607	0
// OP_ADDRESS	28	172	8608
// OP_STOREP_F	213	8608	0
// OP_CALL0	8358	0	0
// OP_DONE	0	0	0
void () func000397 = 
{
    local entity globaldef002930;
    local float globaldef002931;
    
    if(self.flags & FL_ONGROUND)
    {
        globaldef002931 = vlen(self.velocity);
        globaldef002931 = globaldef002931 - 20;
        if(globaldef002931 <= FALSE)
        {
            self.velocity = VEC_ORIGIN;
        }
        else
        {
            self.velocity = globaldef002931 * normalize(self.velocity);
        }
        
    }
    
    
    if(self.deadflag == DEAD_DEAD)
    {
        
        if((self.button2 || self.button1) || self.button0)
        {
            return;
        }
        
        self.deadflag = DEAD_RESPAWNABLE;
        return;
    }
    
    
    if(!(globaldef000804 & globaldef000750))
    {
        
        if((!self.button2 && !self.button1) && !self.button0)
        {
            return;
        }
        
    }
    
    self.button0 = FALSE;
    self.button1 = FALSE;
    self.button2 = FALSE;
    func000384();
};

// func000398
// function begins at statement 11931, parm_start=8610
// OP_LOAD_F	28	182	8616
// OP_BITAND	8616	225	8617
// OP_IFNOT	8617	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	8618
// OP_GE	8618	216	8619
// OP_IFNOT	8619	45	0
// OP_LOAD_F	28	190	8620
// OP_EQ_F	8620	278	8621
// OP_IFNOT	8621	8	0
// OP_ADDRESS	28	116	8622
// OP_STOREP_F	1997	8622	0
// OP_BITAND	821	767	8623
// OP_IFNOT	8623	3	0
// OP_ADDRESS	28	116	8624
// OP_STOREP_F	540	8624	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	190	8625
// OP_EQ_F	8625	279	8626
// OP_IFNOT	8626	4	0
// OP_ADDRESS	28	116	8627
// OP_STOREP_F	2805	8627	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	116	8628
// OP_STOREP_F	1470	8628	0
// OP_LOAD_S	28	129	8629
// OP_EQ_S	8629	1236	8630
// OP_IFNOT	8630	23	0
// OP_LOAD_F	28	395	8631
// OP_LT	8631	31	8632
// OP_IFNOT	8632	20	0
// OP_ADDRESS	28	395	8633
// OP_ADD_F	31	214	8634
// OP_STOREP_F	8634	8633	0
// OP_CALL0	457	0	0
// OP_LT	1	539	8635
// OP_IFNOT	8635	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6682	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6683	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	8636
// OP_BITAND	8636	223	8637
// OP_NOT_F	8637	0	8638
// OP_IFNOT	8638	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	8639
// OP_BITAND	8639	226	8640
// OP_NOT_F	8640	0	8641
// OP_IFNOT	8641	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	182	8642
// OP_LOAD_F	28	182	8643
// OP_LOAD_F	28	182	8644
// OP_BITAND	8644	226	8645
// OP_SUB_F	8643	8645	8646
// OP_STOREP_F	8646	8642	0
// OP_ADDRESS	28	182	8647
// OP_LOAD_F	28	182	8648
// OP_SUB_F	8648	223	8649
// OP_STOREP_F	8649	8647	0
// OP_ADDRESS	28	172	8650
// OP_STOREP_F	213	8650	0
// OP_LOAD_S	28	129	8651
// OP_EQ_S	8651	1236	8652
// OP_IFNOT	8652	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6645	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	116	8653
// OP_LOAD_F	28	116	8654
// OP_ADD_F	8654	734	8655
// OP_STOREP_F	8655	8653	0
// OP_DONE	0	0	0
void () func000398 = 
{
    local vector globaldef002933;
    local vector globaldef002937;
    
    if(self.flags & FL_WATERJUMP)
    {
        return;
    }
    
    
    if(self.waterlevel >= FL_SWIM)
    {
        if(self.watertype == CONTENT_WATER)
        {
            self.velocity_z = 100;
            
            if(globaldef000804 & globaldef000750)
            {
                self.velocity_z = globaldef000523;
            }
            
        }
        else
        {
            if(self.watertype == CONTENT_SLIME)
            {
                self.velocity_z = 80;
            }
            else
            {
                self.velocity_z = 50;
            }
            
        }
        
        
        if(self.classname == "player")
        {
            
            if(self.swim_flag < time)
            {
                self.swim_flag = time + TRUE;
                if(random() < globaldef000522)
                {
                    sound(self, CHAN_BODY, "misc/water1.wav", TRUE, ATTN_NORM);
                }
                else
                {
                    sound(self, CHAN_BODY, "misc/water2.wav", TRUE, ATTN_NORM);
                }
                
            }
            
        }
        
        return;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        return;
    }
    
    
    if(!(self.flags & FL_JUMPRELEASED))
    {
        return;
    }
    
    self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
    self.flags = self.flags - FL_ONGROUND;
    self.button2 = FALSE;
    
    if(self.classname == "player")
    {
        sound(self, CHAN_BODY, "player/plyrjmp8.wav", TRUE, ATTN_NORM);
    }
    
    self.velocity_z = self.velocity_z + globaldef000717;
};

.float dmgtime;
// func000399
// function begins at statement 12018, parm_start=8658
// OP_LOAD_F	28	103	8658
// OP_EQ_F	8658	233	8659
// OP_IFNOT	8659	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	8660
// OP_LT	8660	213	8661
// OP_IFNOT	8661	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	8662
// OP_NE_F	8662	228	8663
// OP_IFNOT	8663	27	0
// OP_LOAD_F	28	396	8664
// OP_LT	8664	31	8665
// OP_IFNOT	8665	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6651	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	396	8666
// OP_ADD_F	31	234	8667
// OP_LT	8666	8667	8668
// OP_IFNOT	8668	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6650	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	396	8669
// OP_ADD_F	31	791	8670
// OP_STOREP_F	8670	8669	0
// OP_ADDRESS	28	425	8671
// OP_STOREP_F	216	8671	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	396	8672
// OP_LT	8672	31	8673
// OP_IFNOT	8673	22	0
// OP_LOAD_F	28	379	8674
// OP_LT	8674	31	8675
// OP_IFNOT	8675	19	0
// OP_ADDRESS	28	425	8676
// OP_LOAD_F	28	425	8677
// OP_ADD_F	8677	216	8678
// OP_STOREP_F	8678	8676	0
// OP_LOAD_F	28	425	8679
// OP_GT	8679	765	8680
// OP_IFNOT	8680	3	0
// OP_ADDRESS	28	425	8681
// OP_STOREP_F	235	8681	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	425	8682
// OP_STORE_V	8682	13	0
// OP_CALL4	522	0	0
// OP_ADDRESS	28	379	8683
// OP_ADD_F	31	214	8684
// OP_STOREP_F	8684	8683	0
// OP_LOAD_F	28	189	8685
// OP_NOT_F	8685	0	8686
// OP_IFNOT	8686	15	0
// OP_LOAD_F	28	182	8687
// OP_BITAND	8687	218	8688
// OP_IFNOT	8688	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6679	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	182	8689
// OP_LOAD_F	28	182	8690
// OP_SUB_F	8690	218	8691
// OP_STOREP_F	8691	8689	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	8692
// OP_EQ_F	8692	280	8693
// OP_IFNOT	8693	22	0
// OP_LOAD_F	28	8656	8694
// OP_LT	8694	31	8695
// OP_IFNOT	8695	18	0
// OP_LOAD_F	28	383	8696
// OP_GT	8696	31	8697
// OP_IFNOT	8697	5	0
// OP_ADDRESS	28	8656	8698
// OP_ADD_F	31	214	8699
// OP_STOREP_F	8699	8698	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	8656	8700
// OP_ADD_F	31	3267	8701
// OP_STOREP_F	8701	8700	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	8702
// OP_MUL_F	235	8702	8703
// OP_STORE_V	8703	13	0
// OP_CALL4	522	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	190	8704
// OP_EQ_F	8704	279	8705
// OP_IFNOT	8705	17	0
// OP_LOAD_F	28	8656	8706
// OP_LT	8706	31	8707
// OP_LOAD_F	28	383	8708
// OP_LT	8708	31	8709
// OP_AND	8707	8709	8710
// OP_IFNOT	8710	11	0
// OP_ADDRESS	28	8656	8711
// OP_ADD_F	31	214	8712
// OP_STOREP_F	8712	8711	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	8713
// OP_MUL_F	229	8713	8714
// OP_STORE_V	8714	13	0
// OP_CALL4	522	0	0
// OP_LOAD_F	28	182	8715
// OP_BITAND	8715	218	8716
// OP_NOT_F	8716	0	8717
// OP_IFNOT	8717	34	0
// OP_LOAD_F	28	190	8718
// OP_EQ_F	8718	280	8719
// OP_IFNOT	8719	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6678	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	190	8720
// OP_EQ_F	8720	278	8721
// OP_IFNOT	8721	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6677	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	190	8722
// OP_EQ_F	8722	279	8723
// OP_IFNOT	8723	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6676	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	182	8724
// OP_LOAD_F	28	182	8725
// OP_ADD_F	8725	218	8726
// OP_STOREP_F	8726	8724	0
// OP_ADDRESS	28	8656	8727
// OP_STOREP_F	213	8727	0
// OP_LOAD_F	28	182	8728
// OP_BITAND	8728	225	8729
// OP_NOT_F	8729	0	8730
// OP_IFNOT	8730	10	0
// OP_ADDRESS	28	113	8731
// OP_LOAD_V	28	113	8734
// OP_LOAD_F	28	189	8737
// OP_MUL_F	4478	8737	8738
// OP_MUL_F	8738	32	8739
// OP_LOAD_V	28	113	8740
// OP_MUL_FV	8739	8740	8743
// OP_SUB_V	8734	8743	8746
// OP_STOREP_V	8746	8731	0
// OP_DONE	0	0	0
void () func000399 = 
{
    
    if(self.movetype == MOVETYPE_NOCLIP)
    {
        return;
    }
    
    
    if(self.health < FALSE)
    {
        return;
    }
    
    if(self.waterlevel != MOVETYPE_WALK)
    {
        if(self.air_finished < time)
        {
            sound(self, CHAN_VOICE, "player/gasp2.wav", TRUE, ATTN_NORM);
        }
        else
        {
            
            if(self.air_finished < (time + MOVETYPE_FLYMISSILE))
            {
                sound(self, CHAN_VOICE, "player/gasp1.wav", TRUE, ATTN_NORM);
            }
            
        }
        
        self.air_finished = time + globaldef000774;
        self.dmg = FL_SWIM;
    }
    else
    {
        
        if(self.air_finished < time)
        {
            
            if(self.pain_finished < time)
            {
                self.dmg = self.dmg + FL_SWIM;
                
                if(self.dmg > globaldef000748)
                {
                    self.dmg = MOVETYPE_BOUNCE;
                }
                
                func000201(self, world, world, self.dmg);
                self.pain_finished = time + TRUE;
            }
            
        }
        
    }
    
    
    if(!self.waterlevel)
    {
        
        if(self.flags & FL_INWATER)
        {
            sound(self, CHAN_BODY, "misc/outwater.wav", TRUE, ATTN_NORM);
            self.flags = self.flags - FL_INWATER;
        }
        
        return;
    }
    
    if(self.watertype == CONTENT_LAVA)
    {
        
        if(self.dmgtime < time)
        {
            if(self.radsuit_finished > time)
            {
                self.dmgtime = time + TRUE;
            }
            else
            {
                self.dmgtime = time + 0.2;
            }
            
            func000201(self, world, world, MOVETYPE_BOUNCE * self.waterlevel);
        }
        
    }
    else
    {
        
        if(self.watertype == CONTENT_SLIME)
        {
            
            if((self.dmgtime < time) && (self.radsuit_finished < time))
            {
                self.dmgtime = time + TRUE;
                func000201(self, world, world, MOVETYPE_STEP * self.waterlevel);
            }
            
        }
        
    }
    
    
    if(!(self.flags & FL_INWATER))
    {
        
        if(self.watertype == CONTENT_LAVA)
        {
            sound(self, CHAN_BODY, "player/inlava.wav", TRUE, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/inh2o.wav", TRUE, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_SLIME)
        {
            sound(self, CHAN_BODY, "player/slimbrn2.wav", TRUE, ATTN_NORM);
        }
        
        self.flags = self.flags + FL_INWATER;
        self.dmgtime = FALSE;
    }
    
    
    if(!(self.flags & FL_WATERJUMP))
    {
        self.velocity = self.velocity - (((0.8 * self.waterlevel) * frametime) * self.velocity);
    }
    
};

// func000400
// function begins at statement 12190, parm_start=8750
// OP_LOAD_V	28	117	8756
// OP_STORE_V	8756	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	8759
// OP_STORE_V	8759	8750	0
// OP_ADD_F	8752	217	8762
// OP_STORE_F	8762	8752	0
// OP_STORE_F	213	61	0
// OP_STORE_V	59	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	59	736	8763
// OP_ADD_V	8750	8763	8766
// OP_STORE_V	8766	8753	0
// OP_STORE_V	8750	4	0
// OP_STORE_V	8753	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LT	70	214	8769
// OP_IFNOT	8769	34	0
// OP_LOAD_F	28	141	8770
// OP_ADD_F	8752	8770	8771
// OP_SUB_F	8771	217	8772
// OP_STORE_F	8772	8752	0
// OP_MUL_VF	59	736	8773
// OP_ADD_V	8750	8773	8776
// OP_STORE_V	8776	8753	0
// OP_ADDRESS	28	202	8779
// OP_MUL_VF	74	8782	8783
// OP_STOREP_V	8783	8779	0
// OP_STORE_V	8750	4	0
// OP_STORE_V	8753	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	8786
// OP_IFNOT	8786	17	0
// OP_ADDRESS	28	182	8787
// OP_LOAD_F	28	182	8788
// OP_BITOR	8788	225	8789
// OP_STOREP_F	8789	8787	0
// OP_ADDRESS	28	116	8790
// OP_STOREP_F	5827	8790	0
// OP_ADDRESS	28	182	8791
// OP_LOAD_F	28	182	8792
// OP_LOAD_F	28	182	8793
// OP_BITAND	8793	226	8794
// OP_SUB_F	8792	8794	8795
// OP_STOREP_F	8795	8791	0
// OP_ADDRESS	28	186	8796
// OP_ADD_F	31	216	8797
// OP_STOREP_F	8797	8796	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000400 = 
{
    local vector globaldef002944;
    local vector globaldef002948;
    makevectors(self.angles);
    globaldef002944 = self.origin;
    globaldef002944_z = globaldef002944_z + FL_CLIENT;
    v_forward_z = FALSE;
    normalize(v_forward);
    globaldef002948 = globaldef002944 + (v_forward * globaldef000719);
    traceline(globaldef002944, globaldef002948, TRUE, self);
    
    if(trace_fraction < TRUE)
    {
        globaldef002944_z = (globaldef002944_z + self.maxs_z) - FL_CLIENT;
        globaldef002948 = globaldef002944 + (v_forward * globaldef000719);
        self.movedir = trace_plane_normal * -50;
        traceline(globaldef002944, globaldef002948, TRUE, self);
        
        if(trace_fraction == TRUE)
        {
            self.flags = self.flags | FL_WATERJUMP;
            self.velocity_z = 225;
            self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
            self.teleport_time = time + FL_SWIM;
            return;
        }
        
    }
    
};

