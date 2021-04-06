// door_hit_top
// function begins at statement 14822, parm_start=10235
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	10235
// OP_STORE_V	10235	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	10236
// OP_STOREP_F	282	10236	0
// OP_LOAD_F	28	195	10237
// OP_BITAND	10237	10225	10238
// OP_IFNOT	10238	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	148	10239
// OP_STOREP_FNC	10226	10239	0
// OP_ADDRESS	28	150	10240
// OP_LOAD_F	28	102	10241
// OP_LOAD_F	28	418	10242
// OP_ADD_F	10241	10242	10243
// OP_STOREP_F	10243	10240	0
// OP_DONE	0	0	0
void () door_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_TOP;
    
    if(self.spawnflags & globaldef003320)
    {
        return;
    }
    
    self.think = func000539;
    self.nextthink = self.ltime + self.wait;
};

// door_hit_bottom
// function begins at statement 14843, parm_start=10245
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	10245
// OP_STORE_V	10245	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	10246
// OP_STOREP_F	283	10246	0
// OP_DONE	0	0	0
void () door_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// func_door
// function begins at statement 15314, parm_start=10500
// OP_LOAD_F	30	357	10500
// OP_EQ_F	10500	213	10501
// OP_IFNOT	10501	10	0
// OP_STORE_V	10502	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10503	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	211	10504
// OP_STOREP_S	10502	10504	0
// OP_ADDRESS	28	421	10505
// OP_STOREP_S	10503	10505	0
// OP_GOTO	27	0	0
// OP_LOAD_F	30	357	10506
// OP_EQ_F	10506	214	10507
// OP_IFNOT	10507	10	0
// OP_STORE_V	10508	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10509	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	211	10510
// OP_STOREP_S	10508	10510	0
// OP_ADDRESS	28	421	10511
// OP_STOREP_S	10509	10511	0
// OP_GOTO	15	0	0
// OP_LOAD_F	30	357	10512
// OP_EQ_F	10512	216	10513
// OP_IFNOT	10513	10	0
// OP_STORE_V	10514	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10515	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	211	10516
// OP_STOREP_S	10514	10516	0
// OP_ADDRESS	28	421	10517
// OP_STOREP_S	10515	10517	0
// OP_GOTO	3	0	0
// OP_STORE_V	10518	4	0
// OP_CALL1	473	0	0
// OP_LOAD_F	28	207	10519
// OP_EQ_F	10519	213	10520
// OP_IFNOT	10520	9	0
// OP_STORE_V	10521	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10521	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	10522
// OP_STOREP_S	10521	10522	0
// OP_ADDRESS	28	210	10523
// OP_STOREP_S	10521	10523	0
// OP_LOAD_F	28	207	10524
// OP_EQ_F	10524	214	10525
// OP_IFNOT	10525	9	0
// OP_STORE_V	10526	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10527	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	10528
// OP_STOREP_S	10526	10528	0
// OP_ADDRESS	28	210	10529
// OP_STOREP_S	10527	10529	0
// OP_LOAD_F	28	207	10530
// OP_EQ_F	10530	216	10531
// OP_IFNOT	10531	9	0
// OP_STORE_V	10532	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10533	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	210	10534
// OP_STOREP_S	10532	10534	0
// OP_ADDRESS	28	209	10535
// OP_STOREP_S	10533	10535	0
// OP_LOAD_F	28	207	10536
// OP_EQ_F	10536	228	10537
// OP_IFNOT	10537	9	0
// OP_STORE_V	10538	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10539	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	210	10540
// OP_STOREP_S	10538	10540	0
// OP_ADDRESS	28	209	10541
// OP_STOREP_S	10539	10541	0
// OP_LOAD_F	28	207	10542
// OP_EQ_F	10542	229	10543
// OP_IFNOT	10543	9	0
// OP_STORE_V	10544	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10545	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	10546
// OP_STOREP_S	10545	10546	0
// OP_ADDRESS	28	210	10547
// OP_STOREP_S	10544	10547	0
// OP_CALL0	2956	0	0
// OP_ADDRESS	28	185	10548
// OP_LOAD_F	28	152	10549
// OP_STOREP_F	10549	10548	0
// OP_ADDRESS	28	104	10550
// OP_STOREP_F	241	10550	0
// OP_ADDRESS	28	103	10551
// OP_STOREP_F	232	10551	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	10552
// OP_STORE_V	10552	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	10555
// OP_STORE_V	10555	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	129	10556
// OP_STOREP_S	5259	10556	0
// OP_ADDRESS	28	149	10557
// OP_STOREP_FNC	10228	10557	0
// OP_ADDRESS	28	147	10558
// OP_STOREP_FNC	10295	10558	0
// OP_LOAD_F	28	195	10559
// OP_BITAND	10559	10224	10560
// OP_IFNOT	10560	3	0
// OP_ADDRESS	28	162	10561
// OP_STOREP_F	270	10561	0
// OP_LOAD_F	28	195	10562
// OP_BITAND	10562	10223	10563
// OP_IFNOT	10563	3	0
// OP_ADDRESS	28	162	10564
// OP_STOREP_F	271	10564	0
// OP_LOAD_F	28	369	10565
// OP_NOT_F	10565	0	10566
// OP_IFNOT	10566	3	0
// OP_ADDRESS	28	369	10567
// OP_STOREP_F	1997	10567	0
// OP_LOAD_F	28	418	10568
// OP_NOT_F	10568	0	10569
// OP_IFNOT	10569	3	0
// OP_ADDRESS	28	418	10570
// OP_STOREP_F	228	10570	0
// OP_LOAD_F	28	437	10571
// OP_NOT_F	10571	0	10572
// OP_IFNOT	10572	3	0
// OP_ADDRESS	28	437	10573
// OP_STOREP_F	217	10573	0
// OP_LOAD_F	28	425	10574
// OP_NOT_F	10574	0	10575
// OP_IFNOT	10575	3	0
// OP_ADDRESS	28	425	10576
// OP_STOREP_F	216	10576	0
// OP_ADDRESS	28	439	10577
// OP_LOAD_V	28	105	10580
// OP_STOREP_V	10580	10577	0
// OP_ADDRESS	28	443	10583
// OP_LOAD_V	28	439	10586
// OP_LOAD_V	28	202	10589
// OP_LOAD_V	28	202	10592
// OP_LOAD_V	28	142	10595
// OP_MUL_V	10592	10595	10598
// OP_STORE_V	10598	4	0
// OP_CALL1	488	0	0
// OP_LOAD_F	28	437	10599
// OP_SUB_F	1	10599	10600
// OP_MUL_VF	10589	10600	10601
// OP_ADD_V	10586	10601	10604
// OP_STOREP_V	10604	10583	0
// OP_LOAD_F	28	195	10607
// OP_BITAND	10607	10221	10608
// OP_IFNOT	10608	11	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	443	10609
// OP_STORE_V	10609	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	443	10612
// OP_LOAD_V	28	439	10615
// OP_STOREP_V	10615	10612	0
// OP_ADDRESS	28	439	10618
// OP_LOAD_V	28	105	10621
// OP_STOREP_V	10621	10618	0
// OP_ADDRESS	28	438	10624
// OP_STOREP_F	283	10624	0
// OP_LOAD_F	28	152	10625
// OP_IFNOT	10625	5	0
// OP_ADDRESS	28	163	10626
// OP_STOREP_F	251	10626	0
// OP_ADDRESS	28	367	10627
// OP_STOREP_FNC	10316	10627	0
// OP_LOAD_F	28	162	10628
// OP_IFNOT	10628	3	0
// OP_ADDRESS	28	418	10629
// OP_STOREP_F	276	10629	0
// OP_ADDRESS	28	146	10630
// OP_STOREP_FNC	10322	10630	0
// OP_ADDRESS	28	548	10631
// OP_STOREP_FNC	999	10631	0
// OP_ADDRESS	28	148	10632
// OP_STOREP_FNC	10438	10632	0
// OP_ADDRESS	28	150	10633
// OP_LOAD_F	28	102	10634
// OP_ADD_F	10634	3036	10635
// OP_STOREP_F	10635	10633	0
// OP_DONE	0	0	0
void () func_door = 
{
    if(world.worldtype == FALSE)
    {
        precache_sound("doors/medtry.wav");
        precache_sound("doors/meduse.wav");
        self.noise3 = "doors/medtry.wav";
        self.noise4 = "doors/meduse.wav";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_sound("doors/runetry.wav");
            precache_sound("doors/runeuse.wav");
            self.noise3 = "doors/runetry.wav";
            self.noise4 = "doors/runeuse.wav";
        }
        else
        {
            if(world.worldtype == FL_SWIM)
            {
                precache_sound("doors/basetry.wav");
                precache_sound("doors/baseuse.wav");
                self.noise3 = "doors/basetry.wav";
                self.noise4 = "doors/baseuse.wav";
            }
            else
            {
                dprint("no worldtype set!\n");
            }
            
        }
        
    }
    
    
    if(self.sounds == FALSE)
    {
        precache_sound("misc/null.wav");
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        self.noise2 = "misc/null.wav";
    }
    
    
    if(self.sounds == TRUE)
    {
        precache_sound("doors/drclos4.wav");
        precache_sound("doors/doormv1.wav");
        self.noise1 = "doors/drclos4.wav";
        self.noise2 = "doors/doormv1.wav";
    }
    
    
    if(self.sounds == FL_SWIM)
    {
        precache_sound("doors/hydro1.wav");
        precache_sound("doors/hydro2.wav");
        self.noise2 = "doors/hydro1.wav";
        self.noise1 = "doors/hydro2.wav";
    }
    
    
    if(self.sounds == MOVETYPE_WALK)
    {
        precache_sound("doors/stndr1.wav");
        precache_sound("doors/stndr2.wav");
        self.noise2 = "doors/stndr1.wav";
        self.noise1 = "doors/stndr2.wav";
    }
    
    
    if(self.sounds == MOVETYPE_STEP)
    {
        precache_sound("doors/ddoor1.wav");
        precache_sound("doors/ddoor2.wav");
        self.noise1 = "doors/ddoor2.wav";
        self.noise2 = "doors/ddoor1.wav";
    }
    
    SetMovedir();
    self.max_health = self.health;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    self.classname = "door";
    self.blocked = func000536;
    self.use = func000542;
    
    if(self.spawnflags & globaldef003319)
    {
        self.items = IT_KEY1;
    }
    
    
    if(self.spawnflags & globaldef003318)
    {
        self.items = IT_KEY2;
    }
    
    
    if(!self.speed)
    {
        self.speed = 100;
    }
    
    
    if(!self.wait)
    {
        self.wait = MOVETYPE_WALK;
    }
    
    
    if(!self.lip)
    {
        self.lip = FL_CLIENT;
    }
    
    
    if(!self.dmg)
    {
        self.dmg = FL_SWIM;
    }
    
    self.pos1 = self.origin;
    self.pos2 = self.pos1 + (self.movedir * ((fabs(self.movedir * self.size)) - self.lip));
    
    if(self.spawnflags & globaldef003316)
    {
        setorigin(self, self.pos2);
        self.pos2 = self.pos1;
        self.pos1 = self.origin;
    }
    
    self.state = STATE_BOTTOM;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
        self.th_die = func000544;
    }
    
    
    if(self.items)
    {
        self.wait = CONTENT_EMPTY;
    }
    
    self.touch = func000545;
    self.field000225 = func002289;
    self.think = func000548;
    self.nextthink = self.ltime + 0.1;
};

// fd_secret_move1
// function begins at statement 15614, parm_start=10745
// OP_ADDRESS	28	150	10745
// OP_LOAD_F	28	102	10746
// OP_ADD_F	10746	214	10747
// OP_STOREP_F	10747	10745	0
// OP_ADDRESS	28	148	10748
// OP_STOREP_FNC	10637	10748	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10749
// OP_STORE_V	10749	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () fd_secret_move1 = 
{
    self.nextthink = self.ltime + TRUE;
    self.think = func000552;
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
};

// fd_secret_move3
// function begins at statement 15642, parm_start=10755
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10755
// OP_STORE_V	10755	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	195	10756
// OP_BITAND	10756	10643	10757
// OP_NOT_F	10757	0	10758
// OP_IFNOT	10758	8	0
// OP_ADDRESS	28	150	10759
// OP_LOAD_F	28	102	10760
// OP_LOAD_F	28	418	10761
// OP_ADD_F	10760	10761	10762
// OP_STOREP_F	10762	10759	0
// OP_ADDRESS	28	148	10763
// OP_STOREP_FNC	10639	10763	0
// OP_DONE	0	0	0
void () fd_secret_move3 = 
{
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
    
    if(!(self.spawnflags & globaldef003404))
    {
        self.nextthink = self.ltime + self.wait;
        self.think = func000554;
    }
    
};

// fd_secret_move5
// function begins at statement 15675, parm_start=10769
// OP_ADDRESS	28	150	10769
// OP_LOAD_F	28	102	10770
// OP_ADD_F	10770	214	10771
// OP_STOREP_F	10771	10769	0
// OP_ADDRESS	28	148	10772
// OP_STOREP_FNC	10641	10772	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10773
// OP_STORE_V	10773	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () fd_secret_move5 = 
{
    self.nextthink = self.ltime + TRUE;
    self.think = func000556;
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
};

// fd_secret_done
// function begins at statement 15703, parm_start=10779
// OP_LOAD_S	28	197	10779
// OP_NOT_S	10779	0	10780
// OP_LOAD_F	28	195	10781
// OP_BITAND	10781	10647	10782
// OP_OR	10780	10782	10783
// OP_IFNOT	10783	7	0
// OP_ADDRESS	28	152	10784
// OP_STOREP_F	5984	10784	0
// OP_ADDRESS	28	163	10785
// OP_STOREP_F	251	10785	0
// OP_ADDRESS	28	366	10786
// OP_STOREP_FNC	10648	10786	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	211	10787
// OP_STORE_V	10787	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () fd_secret_done = 
{
    
    if(!self.targetname || (self.spawnflags & globaldef003408))
    {
        self.health = 10000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = func000550;
    }
    
    sound(self, CHAN_VOICE, self.noise3, TRUE, ATTN_NORM);
};

// func_door_secret
// function begins at statement 15767, parm_start=10808
// OP_LOAD_F	28	207	10808
// OP_EQ_F	10808	213	10809
// OP_IFNOT	10809	3	0
// OP_ADDRESS	28	207	10810
// OP_STOREP_F	228	10810	0
// OP_LOAD_F	28	207	10811
// OP_EQ_F	10811	214	10812
// OP_IFNOT	10812	13	0
// OP_STORE_V	10813	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10814	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10526	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	10815
// OP_STOREP_S	10813	10815	0
// OP_ADDRESS	28	210	10816
// OP_STOREP_S	10814	10816	0
// OP_ADDRESS	28	211	10817
// OP_STOREP_S	10526	10817	0
// OP_LOAD_F	28	207	10818
// OP_EQ_F	10818	216	10819
// OP_IFNOT	10819	11	0
// OP_STORE_V	10820	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10821	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	210	10822
// OP_STOREP_S	10820	10822	0
// OP_ADDRESS	28	209	10823
// OP_STOREP_S	10821	10823	0
// OP_ADDRESS	28	211	10824
// OP_STOREP_S	10821	10824	0
// OP_LOAD_F	28	207	10825
// OP_EQ_F	10825	228	10826
// OP_IFNOT	10826	11	0
// OP_STORE_V	10827	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	10828	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	210	10829
// OP_STOREP_S	10827	10829	0
// OP_ADDRESS	28	209	10830
// OP_STOREP_S	10828	10830	0
// OP_ADDRESS	28	211	10831
// OP_STOREP_S	10828	10831	0
// OP_LOAD_F	28	425	10832
// OP_NOT_F	10832	0	10833
// OP_IFNOT	10833	3	0
// OP_ADDRESS	28	425	10834
// OP_STOREP_F	216	10834	0
// OP_ADDRESS	28	400	10835
// OP_LOAD_V	28	117	10838
// OP_STOREP_V	10838	10835	0
// OP_ADDRESS	28	117	10841
// OP_STOREP_V	286	10841	0
// OP_ADDRESS	28	104	10844
// OP_STOREP_F	241	10844	0
// OP_ADDRESS	28	103	10845
// OP_STOREP_F	232	10845	0
// OP_ADDRESS	28	129	10846
// OP_STOREP_S	5259	10846	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	10847
// OP_STORE_V	10847	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	10848
// OP_STORE_V	10848	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	146	10851
// OP_STOREP_FNC	10794	10851	0
// OP_ADDRESS	28	548	10852
// OP_STOREP_FNC	1000	10852	0
// OP_ADDRESS	28	149	10853
// OP_STOREP_FNC	10788	10853	0
// OP_ADDRESS	28	369	10854
// OP_STOREP_F	1470	10854	0
// OP_ADDRESS	28	147	10855
// OP_STOREP_FNC	10648	10855	0
// OP_LOAD_S	28	197	10856
// OP_NOT_S	10856	0	10857
// OP_LOAD_F	28	195	10858
// OP_BITAND	10858	10647	10859
// OP_OR	10857	10859	10860
// OP_IFNOT	10860	7	0
// OP_ADDRESS	28	152	10861
// OP_STOREP_F	5984	10861	0
// OP_ADDRESS	28	163	10862
// OP_STOREP_F	251	10862	0
// OP_ADDRESS	28	366	10863
// OP_STOREP_FNC	10648	10863	0
// OP_ADDRESS	28	109	10864
// OP_LOAD_V	28	105	10867
// OP_STOREP_V	10867	10864	0
// OP_LOAD_F	28	418	10870
// OP_NOT_F	10870	0	10871
// OP_IFNOT	10871	3	0
// OP_ADDRESS	28	418	10872
// OP_STOREP_F	230	10872	0
// OP_DONE	0	0	0
void () func_door_secret = 
{
    
    if(self.sounds == FALSE)
    {
        self.sounds = MOVETYPE_WALK;
    }
    
    
    if(self.sounds == TRUE)
    {
        precache_sound("doors/latch2.wav");
        precache_sound("doors/winch2.wav");
        precache_sound("doors/drclos4.wav");
        self.noise1 = "doors/latch2.wav";
        self.noise2 = "doors/winch2.wav";
        self.noise3 = "doors/drclos4.wav";
    }
    
    
    if(self.sounds == FL_SWIM)
    {
        precache_sound("doors/airdoor1.wav");
        precache_sound("doors/airdoor2.wav");
        self.noise2 = "doors/airdoor1.wav";
        self.noise1 = "doors/airdoor2.wav";
        self.noise3 = "doors/airdoor2.wav";
    }
    
    
    if(self.sounds == MOVETYPE_WALK)
    {
        precache_sound("doors/basesec1.wav");
        precache_sound("doors/basesec2.wav");
        self.noise2 = "doors/basesec1.wav";
        self.noise1 = "doors/basesec2.wav";
        self.noise3 = "doors/basesec2.wav";
    }
    
    
    if(!self.dmg)
    {
        self.dmg = FL_SWIM;
    }
    
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.classname = "door";
    setmodel(self, self.model);
    setorigin(self, self.origin);
    self.touch = func000559;
    self.field000225 = func002290;
    self.blocked = func000558;
    self.speed = 50;
    self.use = func000550;
    
    if(!self.targetname || (self.spawnflags & globaldef003408))
    {
        self.health = 10000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = func000550;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.wait)
    {
        self.wait = MOVETYPE_FLY;
    }
    
};

void () func000563;
// button_wait
// function begins at statement 15868, parm_start=10875
// OP_ADDRESS	28	438	10875
// OP_STOREP_F	282	10875	0
// OP_ADDRESS	28	150	10876
// OP_LOAD_F	28	102	10877
// OP_LOAD_F	28	418	10878
// OP_ADD_F	10877	10878	10879
// OP_STOREP_F	10879	10876	0
// OP_ADDRESS	28	148	10880
// OP_STOREP_FNC	10873	10880	0
// OP_LOAD_ENT	28	181	10881
// OP_STORE_ENT	10881	351	0
// OP_CALL0	520	0	0
// OP_ADDRESS	28	131	10882
// OP_STOREP_F	214	10882	0
// OP_DONE	0	0	0
void () button_wait = 
{
    self.state = STATE_TOP;
    self.nextthink = self.ltime + self.wait;
    self.think = func000563;
    activator = self.enemy;
    SUB_UseTargets();
    self.frame = TRUE;
};

// button_done
// function begins at statement 15883, parm_start=10884
// OP_ADDRESS	28	438	10884
// OP_STOREP_F	283	10884	0
// OP_DONE	0	0	0
void () button_done = 
{
    self.state = STATE_BOTTOM;
};

