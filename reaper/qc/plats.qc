void () plat_center_touch;
void () plat_outside_touch;
void () plat_trigger_use;
void () plat_go_up;
void () plat_go_down;
void () plat_crush;
float PLAT_LOW_TRIGGER = 1;
// plat_spawn_inside_trigger
// function begins at statement 11579, parm_start=7615
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7615	0
// OP_ADDRESS	7615	146	7622
// OP_STOREP_FNC	7607	7622	0
// OP_ADDRESS	7615	103	7623
// OP_STOREP_F	227	7623	0
// OP_ADDRESS	7615	104	7624
// OP_STOREP_F	238	7624	0
// OP_ADDRESS	7615	181	7625
// OP_STOREP_ENT	28	7625	0
// OP_LOAD_V	28	134	7626
// OP_ADD_V	7626	7629	7632
// OP_STORE_V	7632	7616	0
// OP_LOAD_V	28	138	7635
// OP_SUB_V	7635	7638	7641
// OP_STORE_V	7641	7619	0
// OP_LOAD_F	28	437	7644
// OP_LOAD_F	28	441	7645
// OP_SUB_F	7644	7645	7646
// OP_ADD_F	7646	217	7647
// OP_SUB_F	7621	7647	7648
// OP_STORE_F	7648	7618	0
// OP_LOAD_F	28	195	7649
// OP_BITAND	7649	7613	7650
// OP_IFNOT	7650	3	0
// OP_ADD_F	7618	217	7651
// OP_STORE_F	7651	7621	0
// OP_LOAD_F	28	143	7652
// OP_LE	7652	756	7653
// OP_IFNOT	7653	8	0
// OP_LOAD_F	28	135	7654
// OP_LOAD_F	28	139	7655
// OP_ADD_F	7654	7655	7656
// OP_DIV_F	7656	216	7657
// OP_STORE_F	7657	7616	0
// OP_ADD_F	7616	214	7658
// OP_STORE_F	7658	7619	0
// OP_LOAD_F	28	144	7659
// OP_LE	7659	756	7660
// OP_IFNOT	7660	8	0
// OP_LOAD_F	28	136	7661
// OP_LOAD_F	28	140	7662
// OP_ADD_F	7661	7662	7663
// OP_DIV_F	7663	216	7664
// OP_STORE_F	7664	7617	0
// OP_ADD_F	7617	214	7665
// OP_STORE_F	7665	7620	0
// OP_STORE_V	7615	4	0
// OP_STORE_V	7616	7	0
// OP_STORE_V	7619	10	0
// OP_CALL3	450	0	0
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
    tmin_z = 0 - ((self.pos1_z - self.pos2_z) + FL_CLIENT);
    
    if(self.spawnflags & PLAT_LOW_TRIGGER)
    {
        tmax_z = 0 + FL_CLIENT;
    }
    
    
    if(self.size_x <= 50)
    {
        tmin_x = (self.mins_x + self.maxs_x) / FL_SWIM;
        tmax_x = tmin_x + TRUE;
    }
    
    
    if(self.size_y <= 50)
    {
        tmin_y = (self.mins_y + self.maxs_y) / FL_SWIM;
        tmax_y = 0 + TRUE;
    }
    
    setsize(trigger, tmin, tmax);
};

// plat_hit_top
// function begins at statement 11631, parm_start=7667
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	209	7667
// OP_STORE_V	7667	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	7668
// OP_STOREP_F	282	7668	0
// OP_ADDRESS	28	148	7669
// OP_STOREP_FNC	7611	7669	0
// OP_ADDRESS	28	150	7670
// OP_LOAD_F	28	102	7671
// OP_ADD_F	7671	228	7672
// OP_STOREP_F	7672	7670	0
// OP_LOAD_ENT	28	549	7673
// OP_LOAD_ENT	7673	194	7674
// OP_LOAD_ENT	7674	194	7675
// OP_EQ_E	7675	28	7676
// OP_IFNOT	7676	14	0
// OP_LOAD_F	28	550	7677
// OP_SUB_F	31	235	7678
// OP_GT	7677	7678	7679
// OP_IFNOT	7679	10	0
// OP_LOAD_ENT	28	549	7680
// OP_ADDRESS	7680	366	7681
// OP_STOREP_F	31	7681	0
// OP_LOAD_ENT	28	549	7682
// OP_LOAD_ENT	7682	194	7683
// OP_ADDRESS	7683	194	7684
// OP_LOAD_ENT	28	549	7685
// OP_LOAD_ENT	7685	194	7686
// OP_STOREP_ENT	7686	7684	0
// OP_DONE	0	0	0
void () plat_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_TOP;
    self.think = plat_go_down;
    self.nextthink = self.ltime + MOVETYPE_WALK;
    
    if(self.lastbot.goalentity.goalentity == self)
    {
        
        if(self.lasttime > (time - MOVETYPE_BOUNCE))
        {
            self.lastbot.search_time = time;
            self.lastbot.goalentity.goalentity = self.lastbot.goalentity;
        }
        
    }
    
};

// plat_hit_bottom
// function begins at statement 11665, parm_start=7688
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	209	7688
// OP_STORE_V	7688	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	7689
// OP_STOREP_F	283	7689	0
// OP_LOAD_ENT	28	549	7690
// OP_LOAD_ENT	7690	194	7691
// OP_LOAD_ENT	7691	194	7692
// OP_EQ_E	7692	28	7693
// OP_IFNOT	7693	15	0
// OP_LOAD_F	28	550	7694
// OP_SUB_F	31	235	7695
// OP_GT	7694	7695	7696
// OP_IFNOT	7696	11	0
// OP_LOAD_ENT	28	549	7697
// OP_ADDRESS	7697	366	7698
// OP_ADD_F	31	677	7699
// OP_STOREP_F	7699	7698	0
// OP_LOAD_ENT	28	549	7700
// OP_LOAD_ENT	7700	194	7701
// OP_ADDRESS	7701	194	7702
// OP_LOAD_ENT	28	549	7703
// OP_LOAD_ENT	7703	194	7704
// OP_STOREP_ENT	7704	7702	0
// OP_DONE	0	0	0
void () plat_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_BOTTOM;
    
    if(self.lastbot.goalentity.goalentity == self)
    {
        
        if(self.lasttime > (time - MOVETYPE_BOUNCE))
        {
            self.lastbot.search_time = time + 0.5;
            self.lastbot.goalentity.goalentity = self.lastbot.goalentity;
        }
        
    }
    
};

// plat_go_down
// function begins at statement 11694, parm_start=7705
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	7705
// OP_STORE_V	7705	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	7706
// OP_STOREP_F	285	7706	0
// OP_LOAD_V	28	438	7707
// OP_STORE_V	7707	4	0
// OP_LOAD_F	28	364	7710
// OP_STORE_V	7710	7	0
// OP_STORE_V	7687	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () plat_go_down = 
{
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};

// plat_go_up
// function begins at statement 11710, parm_start=7711
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	7711
// OP_STORE_V	7711	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	7712
// OP_STOREP_F	284	7712	0
// OP_LOAD_V	28	434	7713
// OP_STORE_V	7713	4	0
// OP_LOAD_F	28	364	7716
// OP_STORE_V	7716	7	0
// OP_STORE_V	7666	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () plat_go_up = 
{
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};

// plat_center_touch
// function begins at statement 11726, parm_start=7717
// OP_LOAD_S	29	129	7717
// OP_NE_S	7717	1102	7718
// OP_IFNOT	7718	8	0
// OP_LOAD_S	29	129	7719
// OP_NE_S	7719	2056	7720
// OP_IFNOT	7720	5	0
// OP_LOAD_S	29	129	7721
// OP_NE_S	7721	2455	7722
// OP_IFNOT	7722	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7723
// OP_LE	7723	213	7724
// OP_IFNOT	7724	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7725
// OP_STORE_ENT	7725	28	0
// OP_LOAD_F	28	433	7726
// OP_EQ_F	7726	283	7727
// OP_IFNOT	7727	13	0
// OP_LOAD_S	29	129	7728
// OP_EQ_S	7728	2056	7729
// OP_IFNOT	7729	8	0
// OP_LOAD_ENT	29	194	7730
// OP_LOAD_ENT	7730	194	7731
// OP_EQ_E	7731	28	7732
// OP_IFNOT	7732	4	0
// OP_ADDRESS	29	366	7733
// OP_ADD_F	31	231	7734
// OP_STOREP_F	7734	7733	0
// OP_CALL0	7610	0	0
// OP_GOTO	17	0	0
// OP_LOAD_F	28	433	7735
// OP_EQ_F	7735	282	7736
// OP_IFNOT	7736	14	0
// OP_LOAD_S	29	129	7737
// OP_EQ_S	7737	2056	7738
// OP_IFNOT	7738	7	0
// OP_LOAD_ENT	29	194	7739
// OP_LOAD_ENT	7739	194	7740
// OP_EQ_E	7740	28	7741
// OP_IFNOT	7741	3	0
// OP_ADDRESS	29	366	7742
// OP_STOREP_F	31	7742	0
// OP_ADDRESS	28	150	7743
// OP_LOAD_F	28	102	7744
// OP_ADD_F	7744	214	7745
// OP_STOREP_F	7745	7743	0
// OP_DONE	0	0	0
void () plat_center_touch = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            
            if(other.classname != "peeper")
            {
                return;
            }
            
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    self = self.enemy;
    if(self.state == STATE_BOTTOM)
    {
        
        if(other.classname == "dmbot")
        {
            
            if(other.goalentity.goalentity == self)
            {
                other.search_time = time + MOVETYPE_TOSS;
            }
            
        }
        
        plat_go_up();
    }
    else
    {
        
        if(self.state == STATE_TOP)
        {
            
            if(other.classname == "dmbot")
            {
                
                if(other.goalentity.goalentity == self)
                {
                    other.search_time = time;
                }
                
            }
            
            self.nextthink = self.ltime + TRUE;
        }
        
    }
    
};

// plat_outside_touch
// function begins at statement 11774, parm_start=7746
// OP_LOAD_S	29	129	7746
// OP_NE_S	7746	1102	7747
// OP_IFNOT	7747	8	0
// OP_LOAD_S	29	129	7748
// OP_NE_S	7748	2056	7749
// OP_IFNOT	7749	5	0
// OP_LOAD_S	29	129	7750
// OP_NE_S	7750	2455	7751
// OP_IFNOT	7751	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	7752
// OP_LE	7752	213	7753
// OP_IFNOT	7753	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	7754
// OP_STORE_ENT	7754	28	0
// OP_LOAD_F	28	433	7755
// OP_EQ_F	7755	282	7756
// OP_IFNOT	7756	12	0
// OP_LOAD_S	29	129	7757
// OP_EQ_S	7757	2056	7758
// OP_IFNOT	7758	8	0
// OP_LOAD_ENT	29	194	7759
// OP_LOAD_ENT	7759	194	7760
// OP_EQ_E	7760	28	7761
// OP_IFNOT	7761	4	0
// OP_ADDRESS	29	366	7762
// OP_ADD_F	31	231	7763
// OP_STOREP_F	7763	7762	0
// OP_CALL0	7611	0	0
// OP_DONE	0	0	0
void () plat_outside_touch = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            
            if(other.classname != "peeper")
            {
                return;
            }
            
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    self = self.enemy;
    
    if(self.state == STATE_TOP)
    {
        
        if(other.classname == "dmbot")
        {
            
            if(other.goalentity.goalentity == self)
            {
                other.search_time = time + MOVETYPE_TOSS;
            }
            
        }
        
        plat_go_down();
    }
    
};

// plat_trigger_use
// function begins at statement 11805, parm_start=7764
// OP_LOAD_FNC	28	148	7764
// OP_IFNOT	7764	2	0
// OP_RETURN	0	0	0
// OP_CALL0	7611	0	0
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
// function begins at statement 11810, parm_start=7765
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	520	0	0
// OP_LOAD_F	28	433	7765
// OP_EQ_F	7765	284	7766
// OP_IFNOT	7766	3	0
// OP_CALL0	7611	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	433	7767
// OP_EQ_F	7767	285	7768
// OP_IFNOT	7768	3	0
// OP_CALL0	7610	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	7769	4	0
// OP_CALL1	456	0	0
// OP_DONE	0	0	0
void () plat_crush = 
{
    T_Damage(other, self, self, TRUE);
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
// function begins at statement 11828, parm_start=7771
// OP_ADDRESS	28	147	7771
// OP_STOREP_FNC	517	7771	0
// OP_LOAD_F	28	433	7772
// OP_NE_F	7772	284	7773
// OP_IFNOT	7773	3	0
// OP_STORE_V	7774	4	0
// OP_CALL1	456	0	0
// OP_CALL0	7611	0	0
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
// function begins at statement 11837, parm_start=7776
// OP_LOAD_F	28	399	7777
// OP_NOT_F	7777	0	7778
// OP_IFNOT	7778	3	0
// OP_ADDRESS	28	399	7779
// OP_STOREP_F	1178	7779	0
// OP_LOAD_F	28	400	7780
// OP_NOT_F	7780	0	7781
// OP_IFNOT	7781	3	0
// OP_ADDRESS	28	400	7782
// OP_STOREP_F	235	7782	0
// OP_LOAD_F	28	207	7783
// OP_EQ_F	7783	213	7784
// OP_IFNOT	7784	3	0
// OP_ADDRESS	28	207	7785
// OP_STOREP_F	216	7785	0
// OP_LOAD_F	28	207	7786
// OP_EQ_F	7786	214	7787
// OP_IFNOT	7787	9	0
// OP_STORE_V	7788	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7789	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7790
// OP_STOREP_S	7788	7790	0
// OP_ADDRESS	28	209	7791
// OP_STOREP_S	7789	7791	0
// OP_LOAD_F	28	207	7792
// OP_EQ_F	7792	216	7793
// OP_IFNOT	7793	9	0
// OP_STORE_V	7794	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7795	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7796
// OP_STOREP_S	7794	7796	0
// OP_ADDRESS	28	209	7797
// OP_STOREP_S	7795	7797	0
// OP_ADDRESS	28	395	7798
// OP_LOAD_V	28	117	7801
// OP_STOREP_V	7801	7798	0
// OP_ADDRESS	28	117	7804
// OP_STOREP_V	286	7804	0
// OP_ADDRESS	28	129	7807
// OP_STOREP_S	7808	7807	0
// OP_ADDRESS	28	104	7809
// OP_STOREP_F	241	7809	0
// OP_ADDRESS	28	103	7810
// OP_STOREP_F	232	7810	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7811
// OP_STORE_V	7811	7	0
// OP_CALL2	448	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7814
// OP_STORE_V	7814	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	7815
// OP_STORE_V	7815	7	0
// OP_LOAD_V	28	138	7818
// OP_STORE_V	7818	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	523	7821
// OP_STOREP_FNC	654	7821	0
// OP_ADDRESS	28	149	7822
// OP_STOREP_FNC	7612	7822	0
// OP_LOAD_F	28	364	7823
// OP_NOT_F	7823	0	7824
// OP_IFNOT	7824	3	0
// OP_ADDRESS	28	364	7825
// OP_STOREP_F	2346	7825	0
// OP_ADDRESS	28	434	7826
// OP_LOAD_V	28	105	7829
// OP_STOREP_V	7829	7826	0
// OP_ADDRESS	28	438	7832
// OP_LOAD_V	28	105	7835
// OP_STOREP_V	7835	7832	0
// OP_LOAD_F	28	442	7838
// OP_IFNOT	7838	7	0
// OP_ADDRESS	28	441	7839
// OP_LOAD_F	28	108	7840
// OP_LOAD_F	28	442	7841
// OP_SUB_F	7840	7841	7842
// OP_STOREP_F	7842	7839	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	441	7843
// OP_LOAD_F	28	108	7844
// OP_LOAD_F	28	145	7845
// OP_SUB_F	7844	7845	7846
// OP_ADD_F	7846	217	7847
// OP_STOREP_F	7847	7843	0
// OP_ADDRESS	28	147	7848
// OP_STOREP_FNC	7609	7848	0
// OP_CALL0	7614	0	0
// OP_LOAD_S	28	197	7849
// OP_IFNOT	7849	6	0
// OP_ADDRESS	28	433	7850
// OP_STOREP_F	284	7850	0
// OP_ADDRESS	28	147	7851
// OP_STOREP_FNC	7770	7851	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	438	7852
// OP_STORE_V	7852	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	433	7855
// OP_STOREP_F	283	7855	0
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
        self.t_width = MOVETYPE_BOUNCE;
    }
    
    
    if(self.sounds == FALSE)
    {
        self.sounds = FL_SWIM;
    }
    
    
    if(self.sounds == TRUE)
    {
        precache_sound("plats/plat1.wav");
        precache_sound("plats/plat2.wav");
        self.noise = "plats/plat1.wav";
        self.noise1 = "plats/plat2.wav";
    }
    
    
    if(self.sounds == FL_SWIM)
    {
        precache_sound("plats/medplat1.wav");
        precache_sound("plats/medplat2.wav");
        self.noise = "plats/medplat1.wav";
        self.noise1 = "plats/medplat2.wav";
    }
    
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.classname = "plat";
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    self.th_weight = platweight;
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
        self.pos2_z = (self.origin_z - self.size_z) + FL_CLIENT;
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
// function begins at statement 11945, parm_start=7859
// OP_LOAD_F	28	373	7859
// OP_LT	31	7859	7860
// OP_IFNOT	7860	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	373	7861
// OP_ADD_F	31	677	7862
// OP_STOREP_F	7862	7861	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	420	7863
// OP_STORE_V	7863	13	0
// OP_CALL4	520	0	0
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
// function begins at statement 11959, parm_start=7865
// OP_LOAD_FNC	28	148	7865
// OP_NE_FNC	7865	7857	7866
// OP_IFNOT	7866	2	0
// OP_RETURN	0	0	0
// OP_CALL0	7856	0	0
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
// function begins at statement 11965, parm_start=7868
// OP_LOAD_F	28	413	7868
// OP_IFNOT	7868	14	0
// OP_ADDRESS	28	150	7869
// OP_LOAD_F	28	102	7870
// OP_LOAD_F	28	413	7871
// OP_ADD_F	7870	7871	7872
// OP_STOREP_F	7872	7869	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	7873
// OP_STORE_V	7873	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	150	7874
// OP_LOAD_F	28	102	7875
// OP_ADD_F	7875	993	7876
// OP_STOREP_F	7876	7874	0
// OP_ADDRESS	28	148	7877
// OP_STOREP_FNC	7856	7877	0
// OP_DONE	0	0	0
void () train_wait = 
{
    if(self.wait)
    {
        self.nextthink = self.ltime + self.wait;
        sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    }
    else
    {
        self.nextthink = self.ltime + 0.1;
    }
    
    self.think = train_next;
};

// train_next
// function begins at statement 11987, parm_start=7878
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7880
// OP_STORE_V	7880	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	7878	0
// OP_ADDRESS	28	196	7881
// OP_LOAD_S	7878	196	7882
// OP_STOREP_S	7882	7881	0
// OP_LOAD_S	28	196	7883
// OP_NOT_S	7883	0	7884
// OP_IFNOT	7884	3	0
// OP_STORE_V	7885	4	0
// OP_CALL1	456	0	0
// OP_LOAD_F	7878	413	7886
// OP_IFNOT	7886	5	0
// OP_ADDRESS	28	413	7887
// OP_LOAD_F	7878	413	7888
// OP_STOREP_F	7888	7887	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	413	7889
// OP_STOREP_F	213	7889	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	209	7890
// OP_STORE_V	7890	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	7878	105	7891
// OP_LOAD_V	28	134	7894
// OP_SUB_V	7891	7894	7897
// OP_STORE_V	7897	4	0
// OP_LOAD_F	28	364	7900
// OP_STORE_V	7900	7	0
// OP_STORE_V	7867	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () train_next = 
{
    local entity targ;
    local float rnd;
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
        self.wait = FALSE;
    }
    
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    SUB_CalcMove(targ.origin - self.mins, self.speed, train_wait);
};

// func_train_find
// function begins at statement 12025, parm_start=7901
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	7902
// OP_STORE_V	7902	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	7901	0
// OP_ADDRESS	28	196	7903
// OP_LOAD_S	7901	196	7904
// OP_STOREP_S	7904	7903	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	7901	105	7905
// OP_LOAD_V	28	134	7908
// OP_SUB_V	7905	7908	7911
// OP_STORE_V	7911	7	0
// OP_CALL2	448	0	0
// OP_LOAD_S	28	197	7914
// OP_NOT_S	7914	0	7915
// OP_IFNOT	7915	7	0
// OP_ADDRESS	28	150	7916
// OP_LOAD_F	28	102	7917
// OP_ADD_F	7917	993	7918
// OP_STOREP_F	7918	7916	0
// OP_ADDRESS	28	148	7919
// OP_STOREP_FNC	7856	7919	0
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
// function begins at statement 12050, parm_start=7921
// OP_LOAD_F	28	364	7921
// OP_NOT_F	7921	0	7922
// OP_IFNOT	7922	3	0
// OP_ADDRESS	28	364	7923
// OP_STOREP_F	574	7923	0
// OP_LOAD_S	28	196	7924
// OP_NOT_S	7924	0	7925
// OP_IFNOT	7925	3	0
// OP_STORE_V	7926	4	0
// OP_CALL1	456	0	0
// OP_LOAD_F	28	420	7927
// OP_NOT_F	7927	0	7928
// OP_IFNOT	7928	3	0
// OP_ADDRESS	28	420	7929
// OP_STOREP_F	216	7929	0
// OP_LOAD_F	28	207	7930
// OP_EQ_F	7930	213	7931
// OP_IFNOT	7931	9	0
// OP_ADDRESS	28	208	7932
// OP_STOREP_S	6569	7932	0
// OP_STORE_V	6569	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	7933
// OP_STOREP_S	6569	7933	0
// OP_STORE_V	6569	4	0
// OP_CALL1	464	0	0
// OP_LOAD_F	28	207	7934
// OP_EQ_F	7934	214	7935
// OP_IFNOT	7935	9	0
// OP_ADDRESS	28	208	7936
// OP_STOREP_S	7937	7936	0
// OP_STORE_V	7937	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	7938
// OP_STOREP_S	7939	7938	0
// OP_STORE_V	7939	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	421	7940
// OP_STOREP_F	214	7940	0
// OP_ADDRESS	28	104	7941
// OP_STOREP_F	241	7941	0
// OP_ADDRESS	28	103	7942
// OP_STOREP_F	232	7942	0
// OP_ADDRESS	28	149	7943
// OP_STOREP_FNC	7858	7943	0
// OP_ADDRESS	28	147	7944
// OP_STOREP_FNC	7864	7944	0
// OP_ADDRESS	28	129	7945
// OP_STOREP_S	7946	7945	0
// OP_ADDRESS	28	523	7947
// OP_STOREP_FNC	654	7947	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7948
// OP_STORE_V	7948	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	7949
// OP_STORE_V	7949	7	0
// OP_LOAD_V	28	138	7952
// OP_STORE_V	7952	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7955
// OP_STORE_V	7955	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	150	7958
// OP_LOAD_F	28	102	7959
// OP_ADD_F	7959	993	7960
// OP_STOREP_F	7960	7958	0
// OP_ADDRESS	28	148	7961
// OP_STOREP_FNC	7857	7961	0
// OP_DONE	0	0	0
void () func_train = 
{
    
    if(!self.speed)
    {
        self.speed = MUST_HAVE;
    }
    
    
    if(!self.target)
    {
        objerror("func_train without a target");
    }
    
    
    if(!self.dmg)
    {
        self.dmg = FL_SWIM;
    }
    
    
    if(self.sounds == FALSE)
    {
        self.noise = "misc/null.wav";
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        precache_sound("misc/null.wav");
    }
    
    
    if(self.sounds == TRUE)
    {
        self.noise = "plats/train2.wav";
        precache_sound("plats/train2.wav");
        self.noise1 = "plats/train1.wav";
        precache_sound("plats/train1.wav");
    }
    
    self.cnt = TRUE;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = train_blocked;
    self.use = train_use;
    self.classname = "train";
    self.th_weight = platweight;
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.1;
    self.think = func_train_find;
};

// misc_teleporttrain
// function begins at statement 12122, parm_start=7963
// OP_LOAD_F	28	364	7963
// OP_NOT_F	7963	0	7964
// OP_IFNOT	7964	3	0
// OP_ADDRESS	28	364	7965
// OP_STOREP_F	574	7965	0
// OP_LOAD_S	28	196	7966
// OP_NOT_S	7966	0	7967
// OP_IFNOT	7967	3	0
// OP_STORE_V	7926	4	0
// OP_CALL1	456	0	0
// OP_ADDRESS	28	421	7968
// OP_STOREP_F	214	7968	0
// OP_ADDRESS	28	104	7969
// OP_STOREP_F	237	7969	0
// OP_ADDRESS	28	103	7970
// OP_STOREP_F	232	7970	0
// OP_ADDRESS	28	149	7971
// OP_STOREP_FNC	7858	7971	0
// OP_ADDRESS	28	147	7972
// OP_STOREP_FNC	7864	7972	0
// OP_ADDRESS	28	121	7973
// OP_STOREP_V	7976	7973	0
// OP_ADDRESS	28	208	7979
// OP_STOREP_S	6569	7979	0
// OP_STORE_V	6569	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	209	7980
// OP_STOREP_S	6569	7980	0
// OP_STORE_V	6569	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	7981	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7981	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	7982
// OP_STORE_V	7982	7	0
// OP_LOAD_V	28	138	7985
// OP_STORE_V	7985	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	7988
// OP_STORE_V	7988	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	150	7991
// OP_LOAD_F	28	102	7992
// OP_ADD_F	7992	993	7993
// OP_STOREP_F	7993	7991	0
// OP_ADDRESS	28	148	7994
// OP_STOREP_FNC	7857	7994	0
// OP_DONE	0	0	0
void () misc_teleporttrain = 
{
    
    if(!self.speed)
    {
        self.speed = MUST_HAVE;
    }
    
    
    if(!self.target)
    {
        objerror("func_train without a target");
    }
    
    self.cnt = TRUE;
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

