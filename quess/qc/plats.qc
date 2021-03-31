void () plat_center_touch;
void () plat_outside_touch;
void () plat_trigger_use;
void () plat_go_up;
void () plat_go_down;
void () plat_crush;
float PLAT_LOW_TRIGGER = 1.000;
// plat_spawn_inside_trigger
// function begins at statement 11210, parm_start=7564
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	7564	0
// OP_ADDRESS	7564	146	7571
// OP_STOREP_FNC	7556	7571	0
// OP_ADDRESS	7564	103	7572
// OP_STOREP_F	228	7572	0
// OP_ADDRESS	7564	104	7573
// OP_STOREP_F	239	7573	0
// OP_ADDRESS	7564	181	7574
// OP_STOREP_ENT	28	7574	0
// OP_LOAD_V	28	134	7575
// OP_ADD_V	7575	7578	7581
// OP_STORE_V	7581	7565	0
// OP_LOAD_V	28	138	7584
// OP_SUB_V	7584	7587	7590
// OP_STORE_V	7590	7568	0
// OP_LOAD_F	28	438	7593
// OP_LOAD_F	28	442	7594
// OP_SUB_F	7593	7594	7595
// OP_ADD_F	7595	1502	7596
// OP_SUB_F	7570	7596	7597
// OP_STORE_F	7597	7567	0
// OP_LOAD_F	28	195	7598
// OP_BITAND	7598	7562	7599
// OP_IFNOT	7599	3	0
// OP_ADD_F	7567	1502	7600
// OP_STORE_F	7600	7570	0
// OP_LOAD_F	28	143	7601
// OP_LE	7601	2509	7602
// OP_IFNOT	7602	8	0
// OP_LOAD_F	28	135	7603
// OP_LOAD_F	28	139	7604
// OP_ADD_F	7603	7604	7605
// OP_DIV_F	7605	929	7606
// OP_STORE_F	7606	7565	0
// OP_ADD_F	7565	708	7607
// OP_STORE_F	7607	7568	0
// OP_LOAD_F	28	144	7608
// OP_LE	7608	2509	7609
// OP_IFNOT	7609	8	0
// OP_LOAD_F	28	136	7610
// OP_LOAD_F	28	140	7611
// OP_ADD_F	7610	7611	7612
// OP_DIV_F	7612	929	7613
// OP_STORE_F	7613	7566	0
// OP_ADD_F	7566	708	7614
// OP_STORE_F	7614	7569	0
// OP_STORE_V	7564	4	0
// OP_STORE_V	7565	7	0
// OP_STORE_V	7568	10	0
// OP_CALL3	451	0	0
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
    tmin_z = tmax_z - ((self.pos1_z - self.pos2_z) + 8.000);
    
    if(self.spawnflags & PLAT_LOW_TRIGGER)
    {
        tmax_z = tmin_z + 8.000;
    }
    
    
    if(self.size_x <= 50.000)
    {
        tmin_x = (self.mins_x + self.maxs_x) / 2.000;
        tmax_x = tmin_x + 1.000;
    }
    
    
    if(self.size_y <= 50.000)
    {
        tmin_y = (self.mins_y + self.maxs_y) / 2.000;
        tmax_y = tmin_y + 1.000;
    }
    
    setsize(trigger, tmin, tmax);
};

// plat_hit_top
// function begins at statement 11262, parm_start=7616
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	209	7616
// OP_STORE_V	7616	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	7617
// OP_STOREP_F	283	7617	0
// OP_ADDRESS	28	148	7618
// OP_STOREP_FNC	7560	7618	0
// OP_ADDRESS	28	150	7619
// OP_LOAD_F	28	102	7620
// OP_ADD_F	7620	819	7621
// OP_STOREP_F	7621	7619	0
// OP_DONE	0	0	0
void () plat_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_TOP;
    self.think = plat_go_down;
    self.nextthink = self.ltime + 3.000;
};

// plat_hit_bottom
// function begins at statement 11278, parm_start=7623
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	209	7623
// OP_STORE_V	7623	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	7624
// OP_STOREP_F	284	7624	0
// OP_DONE	0	0	0
void () plat_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// plat_go_down
// function begins at statement 11288, parm_start=7625
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	7625
// OP_STORE_V	7625	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	7626
// OP_STOREP_F	286	7626	0
// OP_LOAD_V	28	439	7627
// OP_STORE_V	7627	4	0
// OP_LOAD_F	28	365	7630
// OP_STORE_V	7630	7	0
// OP_STORE_V	7622	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () plat_go_down = 
{
    sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};

// plat_go_up
// function begins at statement 11304, parm_start=7631
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	7631
// OP_STORE_V	7631	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	7632
// OP_STOREP_F	285	7632	0
// OP_LOAD_V	28	435	7633
// OP_STORE_V	7633	4	0
// OP_LOAD_F	28	365	7636
// OP_STORE_V	7636	7	0
// OP_STORE_V	7615	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () plat_go_up = 
{
    sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};

// plat_center_touch
// function begins at statement 11320, parm_start=7637
// OP_LOAD_S	29	129	7637
// OP_NE_S	7637	797	7638
// OP_IFNOT	7638	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7639
// OP_LE	7639	650	7640
// OP_IFNOT	7640	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7641
// OP_STORE_ENT	7641	28	0
// OP_LOAD_F	28	434	7642
// OP_EQ_F	7642	284	7643
// OP_IFNOT	7643	3	0
// OP_CALL0	7559	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	434	7644
// OP_EQ_F	7644	283	7645
// OP_IFNOT	7645	5	0
// OP_ADDRESS	28	150	7646
// OP_LOAD_F	28	102	7647
// OP_ADD_F	7647	708	7648
// OP_STOREP_F	7648	7646	0
// OP_DONE	0	0	0
void () plat_center_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0.000)
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
            self.nextthink = self.ltime + 1.000;
        }
        
    }
    
};

// plat_outside_touch
// function begins at statement 11343, parm_start=7649
// OP_LOAD_S	29	129	7649
// OP_NE_S	7649	797	7650
// OP_IFNOT	7650	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7651
// OP_LE	7651	650	7652
// OP_IFNOT	7652	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7653
// OP_STORE_ENT	7653	28	0
// OP_LOAD_F	28	434	7654
// OP_EQ_F	7654	283	7655
// OP_IFNOT	7655	2	0
// OP_CALL0	7560	0	0
// OP_DONE	0	0	0
void () plat_outside_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= 0.000)
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
// function begins at statement 11358, parm_start=7656
// OP_LOAD_FNC	28	148	7656
// OP_IFNOT	7656	2	0
// OP_RETURN	0	0	0
// OP_CALL0	7560	0	0
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
// function begins at statement 11363, parm_start=7657
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	708	13	0
// OP_CALL4	521	0	0
// OP_LOAD_F	28	434	7657
// OP_EQ_F	7657	285	7658
// OP_IFNOT	7658	3	0
// OP_CALL0	7560	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	434	7659
// OP_EQ_F	7659	286	7660
// OP_IFNOT	7660	3	0
// OP_CALL0	7559	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	7661	4	0
// OP_CALL1	457	0	0
// OP_DONE	0	0	0
void () plat_crush = 
{
    T_Damage(other, self, self, 1.000);
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
// function begins at statement 11381, parm_start=7663
// OP_ADDRESS	28	147	7663
// OP_STOREP_FNC	518	7663	0
// OP_LOAD_F	28	434	7664
// OP_NE_F	7664	285	7665
// OP_IFNOT	7665	3	0
// OP_STORE_V	7666	4	0
// OP_CALL1	457	0	0
// OP_CALL0	7560	0	0
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
// function begins at statement 11390, parm_start=7668
// OP_LOAD_F	28	400	7669
// OP_NOT_F	7669	0	7670
// OP_IFNOT	7670	3	0
// OP_ADDRESS	28	400	7671
// OP_STOREP_F	874	7671	0
// OP_LOAD_F	28	401	7672
// OP_NOT_F	7672	0	7673
// OP_IFNOT	7673	3	0
// OP_ADDRESS	28	401	7674
// OP_STOREP_F	1931	7674	0
// OP_LOAD_F	28	207	7675
// OP_EQ_F	7675	650	7676
// OP_IFNOT	7676	3	0
// OP_ADDRESS	28	207	7677
// OP_STOREP_F	929	7677	0
// OP_LOAD_F	28	207	7678
// OP_EQ_F	7678	708	7679
// OP_IFNOT	7679	9	0
// OP_STORE_V	7680	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	7681	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7682
// OP_STOREP_S	7680	7682	0
// OP_ADDRESS	28	209	7683
// OP_STOREP_S	7681	7683	0
// OP_LOAD_F	28	207	7684
// OP_EQ_F	7684	929	7685
// OP_IFNOT	7685	9	0
// OP_STORE_V	7686	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	7687	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7688
// OP_STOREP_S	7686	7688	0
// OP_ADDRESS	28	209	7689
// OP_STOREP_S	7687	7689	0
// OP_ADDRESS	28	396	7690
// OP_LOAD_V	28	117	7693
// OP_STOREP_V	7693	7690	0
// OP_ADDRESS	28	117	7696
// OP_STOREP_V	638	7696	0
// OP_ADDRESS	28	129	7699
// OP_STOREP_S	7700	7699	0
// OP_ADDRESS	28	104	7701
// OP_STOREP_F	242	7701	0
// OP_ADDRESS	28	103	7702
// OP_STOREP_F	233	7702	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7703
// OP_STORE_V	7703	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7706
// OP_STORE_V	7706	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	7707
// OP_STORE_V	7707	7	0
// OP_LOAD_V	28	138	7710
// OP_STORE_V	7710	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	149	7713
// OP_STOREP_FNC	7561	7713	0
// OP_LOAD_F	28	365	7714
// OP_NOT_F	7714	0	7715
// OP_IFNOT	7715	3	0
// OP_ADDRESS	28	365	7716
// OP_STOREP_F	2241	7716	0
// OP_ADDRESS	28	435	7717
// OP_LOAD_V	28	105	7720
// OP_STOREP_V	7720	7717	0
// OP_ADDRESS	28	439	7723
// OP_LOAD_V	28	105	7726
// OP_STOREP_V	7726	7723	0
// OP_LOAD_F	28	443	7729
// OP_IFNOT	7729	7	0
// OP_ADDRESS	28	442	7730
// OP_LOAD_F	28	108	7731
// OP_LOAD_F	28	443	7732
// OP_SUB_F	7731	7732	7733
// OP_STOREP_F	7733	7730	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	442	7734
// OP_LOAD_F	28	108	7735
// OP_LOAD_F	28	145	7736
// OP_SUB_F	7735	7736	7737
// OP_ADD_F	7737	1502	7738
// OP_STOREP_F	7738	7734	0
// OP_ADDRESS	28	147	7739
// OP_STOREP_FNC	7558	7739	0
// OP_CALL0	7563	0	0
// OP_LOAD_S	28	197	7740
// OP_IFNOT	7740	6	0
// OP_ADDRESS	28	434	7741
// OP_STOREP_F	285	7741	0
// OP_ADDRESS	28	147	7742
// OP_STOREP_FNC	7662	7742	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	439	7743
// OP_STORE_V	7743	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	434	7746
// OP_STOREP_F	284	7746	0
// OP_DONE	0	0	0
void () func_plat = 
{
    local entity t;
    
    if(!self.t_length)
    {
        self.t_length = 80.000;
    }
    
    
    if(!self.t_width)
    {
        self.t_width = 10.000;
    }
    
    
    if(self.sounds == 0.000)
    {
        self.sounds = 2.000;
    }
    
    
    if(self.sounds == 1.000)
    {
        precache_sound("plats/plat1.wav");
        precache_sound("plats/plat2.wav");
        self.noise = "plats/plat1.wav";
        self.noise1 = "plats/plat2.wav";
    }
    
    
    if(self.sounds == 2.000)
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
        self.speed = 150.000;
    }
    
    self.pos1 = self.origin;
    self.pos2 = self.origin;
    if(self.height)
    {
        self.pos2_z = self.origin_z - self.height;
    }
    else
    {
        self.pos2_z = (self.origin_z - self.size_z) + 8.000;
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
// function begins at statement 11496, parm_start=7750
// OP_LOAD_F	28	374	7750
// OP_LT	31	7750	7751
// OP_IFNOT	7751	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	7752
// OP_ADD_F	31	1727	7753
// OP_STOREP_F	7753	7752	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	421	7754
// OP_STORE_V	7754	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () train_blocked = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 0.500;
    T_Damage(other, self, self, self.dmg);
};

// train_use
// function begins at statement 11510, parm_start=7756
// OP_LOAD_FNC	28	148	7756
// OP_NE_FNC	7756	7748	7757
// OP_IFNOT	7757	2	0
// OP_RETURN	0	0	0
// OP_CALL0	7747	0	0
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
// function begins at statement 11516, parm_start=7759
// OP_LOAD_F	28	414	7759
// OP_IFNOT	7759	14	0
// OP_ADDRESS	28	150	7760
// OP_LOAD_F	28	102	7761
// OP_LOAD_F	28	414	7762
// OP_ADD_F	7761	7762	7763
// OP_STOREP_F	7763	7760	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	7764
// OP_STORE_V	7764	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	150	7765
// OP_LOAD_F	28	102	7766
// OP_ADD_F	7766	686	7767
// OP_STOREP_F	7767	7765	0
// OP_ADDRESS	28	148	7768
// OP_STOREP_FNC	7747	7768	0
// OP_DONE	0	0	0
void () train_wait = 
{
    if(self.wait)
    {
        self.nextthink = self.ltime + self.wait;
        sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    }
    else
    {
        self.nextthink = self.ltime + 0.100;
    }
    
    self.think = train_next;
};

// train_next
// function begins at statement 11538, parm_start=7769
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7770
// OP_STORE_V	7770	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	7769	0
// OP_ADDRESS	28	196	7771
// OP_LOAD_S	7769	196	7772
// OP_STOREP_S	7772	7771	0
// OP_LOAD_S	28	196	7773
// OP_NOT_S	7773	0	7774
// OP_IFNOT	7774	3	0
// OP_STORE_V	7775	4	0
// OP_CALL1	457	0	0
// OP_LOAD_F	7769	414	7776
// OP_IFNOT	7776	5	0
// OP_ADDRESS	28	414	7777
// OP_LOAD_F	7769	414	7778
// OP_STOREP_F	7778	7777	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	414	7779
// OP_STOREP_F	650	7779	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	209	7780
// OP_STORE_V	7780	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	7769	105	7781
// OP_LOAD_V	28	134	7784
// OP_SUB_V	7781	7784	7787
// OP_STORE_V	7787	4	0
// OP_LOAD_F	28	365	7790
// OP_STORE_V	7790	7	0
// OP_STORE_V	7758	10	0
// OP_CALL3	513	0	0
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
        self.wait = 0.000;
    }
    
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    SUB_CalcMove(targ.origin - self.mins, self.speed, train_wait);
};

// func_train_find
// function begins at statement 11576, parm_start=7791
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7792
// OP_STORE_V	7792	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	7791	0
// OP_ADDRESS	28	196	7793
// OP_LOAD_S	7791	196	7794
// OP_STOREP_S	7794	7793	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	7791	105	7795
// OP_LOAD_V	28	134	7798
// OP_SUB_V	7795	7798	7801
// OP_STORE_V	7801	7	0
// OP_CALL2	449	0	0
// OP_LOAD_S	28	197	7804
// OP_NOT_S	7804	0	7805
// OP_IFNOT	7805	7	0
// OP_ADDRESS	28	150	7806
// OP_LOAD_F	28	102	7807
// OP_ADD_F	7807	686	7808
// OP_STOREP_F	7808	7806	0
// OP_ADDRESS	28	148	7809
// OP_STOREP_FNC	7747	7809	0
// OP_DONE	0	0	0
void () func_train_find = 
{
    local entity targ;
    targ = find(world, targetname, self.target);
    self.target = targ.target;
    setorigin(self, targ.origin - self.mins);
    
    if(!self.targetname)
    {
        self.nextthink = self.ltime + 0.100;
        self.think = train_next;
    }
    
};

// func_train
// function begins at statement 11601, parm_start=7811
// OP_LOAD_F	28	365	7811
// OP_NOT_F	7811	0	7812
// OP_IFNOT	7812	3	0
// OP_ADDRESS	28	365	7813
// OP_STOREP_F	2165	7813	0
// OP_LOAD_S	28	196	7814
// OP_NOT_S	7814	0	7815
// OP_IFNOT	7815	3	0
// OP_STORE_V	7816	4	0
// OP_CALL1	457	0	0
// OP_LOAD_F	28	421	7817
// OP_NOT_F	7817	0	7818
// OP_IFNOT	7818	3	0
// OP_ADDRESS	28	421	7819
// OP_STOREP_F	929	7819	0
// OP_LOAD_F	28	207	7820
// OP_EQ_F	7820	650	7821
// OP_IFNOT	7821	9	0
// OP_ADDRESS	28	208	7822
// OP_STOREP_S	6621	7822	0
// OP_STORE_V	6621	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	7823
// OP_STOREP_S	6621	7823	0
// OP_STORE_V	6621	4	0
// OP_CALL1	465	0	0
// OP_LOAD_F	28	207	7824
// OP_EQ_F	7824	708	7825
// OP_IFNOT	7825	9	0
// OP_ADDRESS	28	208	7826
// OP_STOREP_S	7827	7826	0
// OP_STORE_V	7827	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	7828
// OP_STOREP_S	7829	7828	0
// OP_STORE_V	7829	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	422	7830
// OP_STOREP_F	708	7830	0
// OP_ADDRESS	28	104	7831
// OP_STOREP_F	242	7831	0
// OP_ADDRESS	28	103	7832
// OP_STOREP_F	233	7832	0
// OP_ADDRESS	28	149	7833
// OP_STOREP_FNC	7749	7833	0
// OP_ADDRESS	28	147	7834
// OP_STOREP_FNC	7755	7834	0
// OP_ADDRESS	28	129	7835
// OP_STOREP_S	7836	7835	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7837
// OP_STORE_V	7837	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	7838
// OP_STORE_V	7838	7	0
// OP_LOAD_V	28	138	7841
// OP_STORE_V	7841	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7844
// OP_STORE_V	7844	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	150	7847
// OP_LOAD_F	28	102	7848
// OP_ADD_F	7848	686	7849
// OP_STOREP_F	7849	7847	0
// OP_ADDRESS	28	148	7850
// OP_STOREP_FNC	7748	7850	0
// OP_DONE	0	0	0
void () func_train = 
{
    
    if(!self.speed)
    {
        self.speed = 100.000;
    }
    
    
    if(!self.target)
    {
        objerror("func_train without a target");
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2.000;
    }
    
    
    if(self.sounds == 0.000)
    {
        self.noise = "misc/null.wav";
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        precache_sound("misc/null.wav");
    }
    
    
    if(self.sounds == 1.000)
    {
        self.noise = "plats/train2.wav";
        precache_sound("plats/train2.wav");
        self.noise1 = "plats/train1.wav";
        precache_sound("plats/train1.wav");
    }
    
    self.cnt = 1.000;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = train_blocked;
    self.use = train_use;
    self.classname = "train";
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.100;
    self.think = func_train_find;
};

// misc_teleporttrain
// function begins at statement 11671, parm_start=7852
// OP_LOAD_F	28	365	7852
// OP_NOT_F	7852	0	7853
// OP_IFNOT	7853	3	0
// OP_ADDRESS	28	365	7854
// OP_STOREP_F	2165	7854	0
// OP_LOAD_S	28	196	7855
// OP_NOT_S	7855	0	7856
// OP_IFNOT	7856	3	0
// OP_STORE_V	7816	4	0
// OP_CALL1	457	0	0
// OP_ADDRESS	28	422	7857
// OP_STOREP_F	708	7857	0
// OP_ADDRESS	28	104	7858
// OP_STOREP_F	238	7858	0
// OP_ADDRESS	28	103	7859
// OP_STOREP_F	233	7859	0
// OP_ADDRESS	28	149	7860
// OP_STOREP_FNC	7749	7860	0
// OP_ADDRESS	28	147	7861
// OP_STOREP_FNC	7755	7861	0
// OP_ADDRESS	28	121	7862
// OP_STOREP_V	7865	7862	0
// OP_ADDRESS	28	208	7868
// OP_STOREP_S	6621	7868	0
// OP_STORE_V	6621	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	209	7869
// OP_STOREP_S	6621	7869	0
// OP_STORE_V	6621	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	7870	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7870	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	7871
// OP_STORE_V	7871	7	0
// OP_LOAD_V	28	138	7874
// OP_STORE_V	7874	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7877
// OP_STORE_V	7877	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	150	7880
// OP_LOAD_F	28	102	7881
// OP_ADD_F	7881	686	7882
// OP_STOREP_F	7882	7880	0
// OP_ADDRESS	28	148	7883
// OP_STOREP_FNC	7748	7883	0
// OP_DONE	0	0	0
void () misc_teleporttrain = 
{
    
    if(!self.speed)
    {
        self.speed = 100.000;
    }
    
    
    if(!self.target)
    {
        objerror("func_train without a target");
    }
    
    self.cnt = 1.000;
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
    self.nextthink = self.ltime + 0.100;
    self.think = func_train_find;
};

