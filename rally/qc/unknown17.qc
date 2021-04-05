void () plat_center_touch;
void () plat_outside_touch;
void () plat_trigger_use;
void () plat_go_up;
void () plat_go_down;
void () plat_crush;
float PLAT_LOW_TRIGGER = 1;
// plat_spawn_inside_trigger
// function begins at statement 23325, parm_start=16550
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	16550	0
// OP_ADDRESS	16550	146	16557
// OP_STOREP_FNC	16542	16557	0
// OP_ADDRESS	16550	103	16558
// OP_STOREP_F	233	16558	0
// OP_ADDRESS	16550	104	16559
// OP_STOREP_F	244	16559	0
// OP_ADDRESS	16550	181	16560
// OP_STOREP_ENT	28	16560	0
// OP_LOAD_V	28	134	16561
// OP_ADD_V	16561	16564	16567
// OP_STORE_V	16567	16551	0
// OP_LOAD_V	28	138	16570
// OP_SUB_V	16570	16573	16576
// OP_STORE_V	16576	16554	0
// OP_LOAD_F	28	451	16579
// OP_LOAD_F	28	455	16580
// OP_SUB_F	16579	16580	16581
// OP_ADD_F	16581	843	16582
// OP_SUB_F	16556	16582	16583
// OP_STORE_F	16583	16553	0
// OP_LOAD_F	28	195	16584
// OP_BITAND	16584	16548	16585
// OP_IFNOT	16585	3	0
// OP_ADD_F	16553	843	16586
// OP_STORE_F	16586	16556	0
// OP_LOAD_F	28	143	16587
// OP_LE	16587	2611	16588
// OP_IFNOT	16588	8	0
// OP_LOAD_F	28	135	16589
// OP_LOAD_F	28	139	16590
// OP_ADD_F	16589	16590	16591
// OP_DIV_F	16591	821	16592
// OP_STORE_F	16592	16551	0
// OP_ADD_F	16551	819	16593
// OP_STORE_F	16593	16554	0
// OP_LOAD_F	28	144	16594
// OP_LE	16594	2611	16595
// OP_IFNOT	16595	8	0
// OP_LOAD_F	28	136	16596
// OP_LOAD_F	28	140	16597
// OP_ADD_F	16596	16597	16598
// OP_DIV_F	16598	821	16599
// OP_STORE_F	16599	16552	0
// OP_ADD_F	16552	819	16600
// OP_STORE_F	16600	16555	0
// OP_STORE_V	16550	4	0
// OP_STORE_V	16551	7	0
// OP_STORE_V	16554	10	0
// OP_CALL3	464	0	0
// OP_DONE	0	0	0
void () plat_spawn_inside_trigger = 
{
    local entity trigger;
    local vector tmin;
    local vector tmax;
    trigger = spawn();
    trigger.touch = plat_center_touch;
    trigger.movetype = MOVETYPE_NONE;
    trigger.solid = SOLID_TRIGGER;
    trigger.enemy = self;
    tmin = self.mins + '25.000 25.000 0.000';
    tmax = self.maxs - '25.000 25.000 -8.000';
    tmin_z = 0 - ((self.pos1_z - self.pos2_z) + 8);
    
    if(self.spawnflags & PLAT_LOW_TRIGGER)
    {
        tmax_z = 0 + 8;
    }
    
    
    if(self.size_x <= 50)
    {
        tmin_x = (self.mins_x + self.maxs_x) / 2;
        tmax_x = tmin_x + 1;
    }
    
    
    if(self.size_y <= 50)
    {
        tmin_y = (self.mins_y + self.maxs_y) / 2;
        tmax_y = 0 + 1;
    }
    
    setsize(trigger, tmin, tmax);
};

// plat_hit_top
// function begins at statement 23377, parm_start=16602
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	209	16602
// OP_STORE_V	16602	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	16603
// OP_STOREP_F	296	16603	0
// OP_ADDRESS	28	148	16604
// OP_STOREP_FNC	16546	16604	0
// OP_ADDRESS	28	150	16605
// OP_LOAD_F	28	102	16606
// OP_ADD_F	16606	823	16607
// OP_STOREP_F	16607	16605	0
// OP_DONE	0	0	0
void () plat_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, 1, ATTN_NORM);
    self.state = STATE_TOP;
    self.think = plat_go_down;
    self.nextthink = self.ltime + 3;
};

// plat_hit_bottom
// function begins at statement 23393, parm_start=16609
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	209	16609
// OP_STORE_V	16609	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	16610
// OP_STOREP_F	297	16610	0
// OP_DONE	0	0	0
void () plat_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, 1, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// plat_go_down
// function begins at statement 23403, parm_start=16611
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	16611
// OP_STORE_V	16611	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	16612
// OP_STOREP_F	299	16612	0
// OP_LOAD_V	28	452	16613
// OP_STORE_V	16613	4	0
// OP_LOAD_F	28	378	16616
// OP_STORE_V	16616	7	0
// OP_STORE_V	16608	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () plat_go_down = 
{
    sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};

// plat_go_up
// function begins at statement 23419, parm_start=16617
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	16617
// OP_STORE_V	16617	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	16618
// OP_STOREP_F	298	16618	0
// OP_LOAD_V	28	448	16619
// OP_STORE_V	16619	4	0
// OP_LOAD_F	28	378	16622
// OP_STORE_V	16622	7	0
// OP_STORE_V	16601	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () plat_go_up = 
{
    sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};

// plat_center_touch
// function begins at statement 23435, parm_start=16623
// OP_LOAD_S	29	129	16623
// OP_NE_S	16623	880	16624
// OP_IFNOT	16624	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	16625
// OP_LE	16625	817	16626
// OP_IFNOT	16626	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	16627
// OP_STORE_ENT	16627	28	0
// OP_LOAD_F	28	447	16628
// OP_EQ_F	16628	297	16629
// OP_IFNOT	16629	3	0
// OP_CALL0	16545	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	447	16630
// OP_EQ_F	16630	296	16631
// OP_IFNOT	16631	5	0
// OP_ADDRESS	28	150	16632
// OP_LOAD_F	28	102	16633
// OP_ADD_F	16633	819	16634
// OP_STOREP_F	16634	16632	0
// OP_DONE	0	0	0
void () plat_center_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    self = self.enemy;
    if(self.state == STATE_BOTTOM)
    {
        plat_go_up();
    }
    else
    {
        
        if(self.state == STATE_TOP)
        {
            self.nextthink = self.ltime + 1;
        }
        
    }
    
};

// plat_outside_touch
// function begins at statement 23458, parm_start=16635
// OP_LOAD_S	29	129	16635
// OP_NE_S	16635	880	16636
// OP_IFNOT	16636	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	16637
// OP_LE	16637	817	16638
// OP_IFNOT	16638	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	16639
// OP_STORE_ENT	16639	28	0
// OP_LOAD_F	28	447	16640
// OP_EQ_F	16640	296	16641
// OP_IFNOT	16641	2	0
// OP_CALL0	16546	0	0
// OP_DONE	0	0	0
void () plat_outside_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0)
    {
        return;
    }
    
    self = self.enemy;
    
    if(self.state == STATE_TOP)
    {
        plat_go_down();
    }
    
};

// plat_trigger_use
// function begins at statement 23473, parm_start=16642
// OP_LOAD_FNC	28	148	16642
// OP_IFNOT	16642	2	0
// OP_RETURN	0	0	0
// OP_CALL0	16546	0	0
// OP_DONE	0	0	0
void () plat_trigger_use = 
{
    
    if(self.think)
    {
        return;
    }
    
    plat_go_down();
};

// plat_crush
// function begins at statement 23478, parm_start=16643
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	819	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	28	447	16643
// OP_EQ_F	16643	298	16644
// OP_IFNOT	16644	3	0
// OP_CALL0	16546	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	447	16645
// OP_EQ_F	16645	299	16646
// OP_IFNOT	16646	3	0
// OP_CALL0	16545	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	16647	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () plat_crush = 
{
    T_Damage(other, self, self, 1);
    if(self.state == STATE_UP)
    {
        plat_go_down();
    }
    else
    {
        if(self.state == STATE_DOWN)
        {
            plat_go_up();
        }
        else
        {
            objerror("plat_crush: bad self.state\n");
        }
        
    }
    
};

// plat_use
// function begins at statement 23496, parm_start=16649
// OP_ADDRESS	28	147	16649
// OP_STOREP_FNC	531	16649	0
// OP_LOAD_F	28	447	16650
// OP_NE_F	16650	298	16651
// OP_IFNOT	16651	3	0
// OP_STORE_V	16652	4	0
// OP_CALL1	470	0	0
// OP_CALL0	16546	0	0
// OP_DONE	0	0	0
void () plat_use = 
{
    self.use = SUB_Null;
    
    if(self.state != STATE_UP)
    {
        objerror("plat_use: not in up state");
    }
    
    plat_go_down();
};

// func_plat
// function begins at statement 23505, parm_start=16654
// OP_LOAD_F	28	413	16655
// OP_NOT_F	16655	0	16656
// OP_IFNOT	16656	3	0
// OP_ADDRESS	28	413	16657
// OP_STOREP_F	2677	16657	0
// OP_LOAD_F	28	414	16658
// OP_NOT_F	16658	0	16659
// OP_IFNOT	16659	3	0
// OP_ADDRESS	28	414	16660
// OP_STOREP_F	855	16660	0
// OP_LOAD_F	28	207	16661
// OP_EQ_F	16661	817	16662
// OP_IFNOT	16662	3	0
// OP_ADDRESS	28	207	16663
// OP_STOREP_F	821	16663	0
// OP_LOAD_F	28	207	16664
// OP_EQ_F	16664	819	16665
// OP_IFNOT	16665	9	0
// OP_STORE_V	16666	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	16667	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16668
// OP_STOREP_S	16666	16668	0
// OP_ADDRESS	28	209	16669
// OP_STOREP_S	16667	16669	0
// OP_LOAD_F	28	207	16670
// OP_EQ_F	16670	821	16671
// OP_IFNOT	16671	9	0
// OP_STORE_V	16672	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	16673	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16674
// OP_STOREP_S	16672	16674	0
// OP_ADDRESS	28	209	16675
// OP_STOREP_S	16673	16675	0
// OP_ADDRESS	28	409	16676
// OP_LOAD_V	28	117	16679
// OP_STOREP_V	16679	16676	0
// OP_ADDRESS	28	117	16682
// OP_STOREP_V	926	16682	0
// OP_ADDRESS	28	129	16685
// OP_STOREP_S	16686	16685	0
// OP_ADDRESS	28	104	16687
// OP_STOREP_F	247	16687	0
// OP_ADDRESS	28	103	16688
// OP_STOREP_F	238	16688	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	16689
// OP_STORE_V	16689	7	0
// OP_CALL2	462	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	16692
// OP_STORE_V	16692	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	16693
// OP_STORE_V	16693	7	0
// OP_LOAD_V	28	138	16696
// OP_STORE_V	16696	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	149	16699
// OP_STOREP_FNC	16547	16699	0
// OP_LOAD_F	28	378	16700
// OP_NOT_F	16700	0	16701
// OP_IFNOT	16701	3	0
// OP_ADDRESS	28	378	16702
// OP_STOREP_F	1885	16702	0
// OP_ADDRESS	28	448	16703
// OP_LOAD_V	28	105	16706
// OP_STOREP_V	16706	16703	0
// OP_ADDRESS	28	452	16709
// OP_LOAD_V	28	105	16712
// OP_STOREP_V	16712	16709	0
// OP_LOAD_F	28	456	16715
// OP_IFNOT	16715	7	0
// OP_ADDRESS	28	455	16716
// OP_LOAD_F	28	108	16717
// OP_LOAD_F	28	456	16718
// OP_SUB_F	16717	16718	16719
// OP_STOREP_F	16719	16716	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	455	16720
// OP_LOAD_F	28	108	16721
// OP_LOAD_F	28	145	16722
// OP_SUB_F	16721	16722	16723
// OP_ADD_F	16723	843	16724
// OP_STOREP_F	16724	16720	0
// OP_ADDRESS	28	147	16725
// OP_STOREP_FNC	16544	16725	0
// OP_CALL0	16549	0	0
// OP_LOAD_S	28	197	16726
// OP_IFNOT	16726	6	0
// OP_ADDRESS	28	447	16727
// OP_STOREP_F	298	16727	0
// OP_ADDRESS	28	147	16728
// OP_STOREP_FNC	16648	16728	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	452	16729
// OP_STORE_V	16729	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	447	16732
// OP_STOREP_F	297	16732	0
// OP_DONE	0	0	0
void () func_plat = 
{
    local entity t;
    
    if(!self.t_length)
    {
        self.t_length = 80;
    }
    
    
    if(!self.t_width)
    {
        self.t_width = 10;
    }
    
    
    if(self.sounds == 0)
    {
        self.sounds = 2;
    }
    
    
    if(self.sounds == 1)
    {
        precache_sound("plats/plat1.wav");
        precache_sound("plats/plat2.wav");
        self.noise = "plats/plat1.wav";
        self.noise1 = "plats/plat2.wav";
    }
    
    
    if(self.sounds == 2)
    {
        precache_sound("plats/medplat1.wav");
        precache_sound("plats/medplat2.wav");
        self.noise = "plats/medplat1.wav";
        self.noise1 = "plats/medplat2.wav";
    }
    
    self.mangle = self.angles;
    self.angles = '0.000 0.000 0.000';
    self.classname = "plat";
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    self.blocked = plat_crush;
    
    if(!self.speed)
    {
        self.speed = 150;
    }
    
    self.pos1 = self.origin;
    self.pos2 = self.origin;
    if(self.height)
    {
        self.pos2_z = self.origin_z - self.height;
    }
    else
    {
        self.pos2_z = (self.origin_z - self.size_z) + 8;
    }
    
    self.use = plat_trigger_use;
    plat_spawn_inside_trigger();
    if(self.targetname)
    {
        self.state = STATE_UP;
        self.use = plat_use;
    }
    else
    {
        setorigin(self, self.pos2);
        self.state = STATE_BOTTOM;
    }
    
};

void () train_next;
void () func_train_find;
// train_blocked
// function begins at statement 23611, parm_start=16736
// OP_LOAD_F	28	387	16736
// OP_LT	31	16736	16737
// OP_IFNOT	16737	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	387	16738
// OP_ADD_F	31	1182	16739
// OP_STOREP_F	16739	16738	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	434	16740
// OP_STORE_V	16740	13	0
// OP_CALL4	534	0	0
// OP_DONE	0	0	0
void () train_blocked = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 0.5;
    T_Damage(other, self, self, self.dmg);
};

// train_use
// function begins at statement 23625, parm_start=16742
// OP_LOAD_FNC	28	148	16742
// OP_NE_FNC	16742	16734	16743
// OP_IFNOT	16743	2	0
// OP_RETURN	0	0	0
// OP_CALL0	16733	0	0
// OP_DONE	0	0	0
void () train_use = 
{
    
    if(self.think != func_train_find)
    {
        return;
    }
    
    train_next();
};

// train_wait
// function begins at statement 23631, parm_start=16745
// OP_LOAD_F	28	427	16745
// OP_IFNOT	16745	14	0
// OP_ADDRESS	28	150	16746
// OP_LOAD_F	28	102	16747
// OP_LOAD_F	28	427	16748
// OP_ADD_F	16747	16748	16749
// OP_STOREP_F	16749	16746	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	16750
// OP_STORE_V	16750	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	150	16751
// OP_LOAD_F	28	102	16752
// OP_ADD_F	16752	2869	16753
// OP_STOREP_F	16753	16751	0
// OP_ADDRESS	28	148	16754
// OP_STOREP_FNC	16733	16754	0
// OP_DONE	0	0	0
void () train_wait = 
{
    if(self.wait)
    {
        self.nextthink = self.ltime + self.wait;
        sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    }
    else
    {
        self.nextthink = self.ltime + 0.1;
    }
    
    self.think = train_next;
};

// train_next
// function begins at statement 23653, parm_start=16755
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	16756
// OP_STORE_V	16756	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	16755	0
// OP_ADDRESS	28	196	16757
// OP_LOAD_S	16755	196	16758
// OP_STOREP_S	16758	16757	0
// OP_LOAD_S	28	196	16759
// OP_NOT_S	16759	0	16760
// OP_IFNOT	16760	3	0
// OP_STORE_V	16761	4	0
// OP_CALL1	470	0	0
// OP_LOAD_F	16755	427	16762
// OP_IFNOT	16762	5	0
// OP_ADDRESS	28	427	16763
// OP_LOAD_F	16755	427	16764
// OP_STOREP_F	16764	16763	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	427	16765
// OP_STOREP_F	817	16765	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	209	16766
// OP_STORE_V	16766	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	16755	105	16767
// OP_LOAD_V	28	134	16770
// OP_SUB_V	16767	16770	16773
// OP_STORE_V	16773	4	0
// OP_LOAD_F	28	378	16776
// OP_STORE_V	16776	7	0
// OP_STORE_V	16744	10	0
// OP_CALL3	526	0	0
// OP_DONE	0	0	0
void () train_next = 
{
    local entity targ;
    targ = find(world, targetname, self.target);
    self.target = targ.target;
    
    if(!self.target)
    {
        objerror("train_next: no next target");
    }
    
    if(targ.wait)
    {
        self.wait = targ.wait;
    }
    else
    {
        self.wait = 0;
    }
    
    sound(self, CHAN_VOICE, self.noise1, 1, ATTN_NORM);
    SUB_CalcMove(targ.origin - self.mins, self.speed, train_wait);
};

// func_train_find
// function begins at statement 23691, parm_start=16777
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	16778
// OP_STORE_V	16778	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	16777	0
// OP_ADDRESS	28	196	16779
// OP_LOAD_S	16777	196	16780
// OP_STOREP_S	16780	16779	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	16777	105	16781
// OP_LOAD_V	28	134	16784
// OP_SUB_V	16781	16784	16787
// OP_STORE_V	16787	7	0
// OP_CALL2	462	0	0
// OP_LOAD_S	28	197	16790
// OP_NOT_S	16790	0	16791
// OP_IFNOT	16791	7	0
// OP_ADDRESS	28	150	16792
// OP_LOAD_F	28	102	16793
// OP_ADD_F	16793	2869	16794
// OP_STOREP_F	16794	16792	0
// OP_ADDRESS	28	148	16795
// OP_STOREP_FNC	16733	16795	0
// OP_DONE	0	0	0
void () func_train_find = 
{
    local entity targ;
    targ = find(world, targetname, self.target);
    self.target = targ.target;
    setorigin(self, targ.origin - self.mins);
    
    if(!self.targetname)
    {
        self.nextthink = self.ltime + 0.1;
        self.think = train_next;
    }
    
};

// func_train
// function begins at statement 23716, parm_start=16797
// OP_LOAD_F	28	378	16797
// OP_NOT_F	16797	0	16798
// OP_IFNOT	16798	3	0
// OP_ADDRESS	28	378	16799
// OP_STOREP_F	1957	16799	0
// OP_LOAD_S	28	196	16800
// OP_NOT_S	16800	0	16801
// OP_IFNOT	16801	3	0
// OP_STORE_V	16802	4	0
// OP_CALL1	470	0	0
// OP_LOAD_F	28	434	16803
// OP_NOT_F	16803	0	16804
// OP_IFNOT	16804	3	0
// OP_ADDRESS	28	434	16805
// OP_STOREP_F	821	16805	0
// OP_LOAD_F	28	207	16806
// OP_EQ_F	16806	817	16807
// OP_IFNOT	16807	9	0
// OP_ADDRESS	28	208	16808
// OP_STOREP_S	15602	16808	0
// OP_STORE_V	15602	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	16809
// OP_STOREP_S	15602	16809	0
// OP_STORE_V	15602	4	0
// OP_CALL1	478	0	0
// OP_LOAD_F	28	207	16810
// OP_EQ_F	16810	819	16811
// OP_IFNOT	16811	9	0
// OP_ADDRESS	28	208	16812
// OP_STOREP_S	16813	16812	0
// OP_STORE_V	16813	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	16814
// OP_STOREP_S	16815	16814	0
// OP_STORE_V	16815	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	435	16816
// OP_STOREP_F	819	16816	0
// OP_ADDRESS	28	104	16817
// OP_STOREP_F	247	16817	0
// OP_ADDRESS	28	103	16818
// OP_STOREP_F	238	16818	0
// OP_ADDRESS	28	149	16819
// OP_STOREP_FNC	16735	16819	0
// OP_ADDRESS	28	147	16820
// OP_STOREP_FNC	16741	16820	0
// OP_ADDRESS	28	129	16821
// OP_STOREP_S	16822	16821	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	16823
// OP_STORE_V	16823	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	16824
// OP_STORE_V	16824	7	0
// OP_LOAD_V	28	138	16827
// OP_STORE_V	16827	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	16830
// OP_STORE_V	16830	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	150	16833
// OP_LOAD_F	28	102	16834
// OP_ADD_F	16834	2869	16835
// OP_STOREP_F	16835	16833	0
// OP_ADDRESS	28	148	16836
// OP_STOREP_FNC	16734	16836	0
// OP_DONE	0	0	0
void () func_train = 
{
    
    if(!self.speed)
    {
        self.speed = 100;
    }
    
    
    if(!self.target)
    {
        objerror("func_train without a target");
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2;
    }
    
    
    if(self.sounds == 0)
    {
        self.noise = "misc/null.wav";
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        precache_sound("misc/null.wav");
    }
    
    
    if(self.sounds == 1)
    {
        self.noise = "plats/train2.wav";
        precache_sound("plats/train2.wav");
        self.noise1 = "plats/train1.wav";
        precache_sound("plats/train1.wav");
    }
    
    self.cnt = 1;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = train_blocked;
    self.use = train_use;
    self.classname = "train";
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.1;
    self.think = func_train_find;
};

// misc_teleporttrain
// function begins at statement 23786, parm_start=16838
// OP_LOAD_F	28	378	16838
// OP_NOT_F	16838	0	16839
// OP_IFNOT	16839	3	0
// OP_ADDRESS	28	378	16840
// OP_STOREP_F	1957	16840	0
// OP_LOAD_S	28	196	16841
// OP_NOT_S	16841	0	16842
// OP_IFNOT	16842	3	0
// OP_STORE_V	16802	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	435	16843
// OP_STOREP_F	819	16843	0
// OP_ADDRESS	28	104	16844
// OP_STOREP_F	243	16844	0
// OP_ADDRESS	28	103	16845
// OP_STOREP_F	238	16845	0
// OP_ADDRESS	28	149	16846
// OP_STOREP_FNC	16735	16846	0
// OP_ADDRESS	28	147	16847
// OP_STOREP_FNC	16741	16847	0
// OP_ADDRESS	28	121	16848
// OP_STOREP_V	16851	16848	0
// OP_ADDRESS	28	208	16854
// OP_STOREP_S	15602	16854	0
// OP_STORE_V	15602	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	209	16855
// OP_STOREP_S	15602	16855	0
// OP_STORE_V	15602	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	16856	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16856	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	16857
// OP_STORE_V	16857	7	0
// OP_LOAD_V	28	138	16860
// OP_STORE_V	16860	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	16863
// OP_STORE_V	16863	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	150	16866
// OP_LOAD_F	28	102	16867
// OP_ADD_F	16867	2869	16868
// OP_STOREP_F	16868	16866	0
// OP_ADDRESS	28	148	16869
// OP_STOREP_FNC	16734	16869	0
// OP_DONE	0	0	0
void () misc_teleporttrain = 
{
    
    if(!self.speed)
    {
        self.speed = 100;
    }
    
    
    if(!self.target)
    {
        objerror("func_train without a target");
    }
    
    self.cnt = 1;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = train_blocked;
    self.use = train_use;
    self.avelocity = '100.000 200.000 300.000';
    self.noise = "misc/null.wav";
    precache_sound("misc/null.wav");
    self.noise1 = "misc/null.wav";
    precache_sound("misc/null.wav");
    precache_model2("progs/teleport.mdl");
    setmodel(self, "progs/teleport.mdl");
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.1;
    self.think = func_train_find;
};

