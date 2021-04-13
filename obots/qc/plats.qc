
// plat_hit_top
// function begins at statement 16928, parm_start=11617
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	11617
// OP_STORE_V	11617	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	11618
// OP_STOREP_F	282	11618	0
// OP_ADDRESS	28	148	11619
// OP_STOREP_FNC	11561	11619	0
// OP_ADDRESS	28	150	11620
// OP_LOAD_F	28	102	11621
// OP_ADD_F	11621	228	11622
// OP_STOREP_F	11622	11620	0
// OP_DONE	0	0	0
void () plat_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_TOP;
    self.think = func000605;
    self.nextthink = self.ltime + MOVETYPE_WALK;
};


// plat_hit_bottom
// function begins at statement 16944, parm_start=11624
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	11624
// OP_STORE_V	11624	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	11625
// OP_STOREP_F	283	11625	0
// OP_DONE	0	0	0
void () plat_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    self.state = STATE_BOTTOM;
};


// func000605
// function begins at statement 16954, parm_start=11626
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	11626
// OP_STORE_V	11626	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	11627
// OP_STOREP_F	285	11627	0
// OP_LOAD_V	28	443	11628
// OP_STORE_V	11628	4	0
// OP_LOAD_F	28	369	11631
// OP_STORE_V	11631	7	0
// OP_STORE_V	11623	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000605 = 
{
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};


// func000606
// function begins at statement 16970, parm_start=11632
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	11632
// OP_STORE_V	11632	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	11633
// OP_STOREP_F	284	11633	0
// OP_LOAD_V	28	439	11634
// OP_STORE_V	11634	4	0
// OP_LOAD_F	28	369	11637
// OP_STORE_V	11637	7	0
// OP_STORE_V	11616	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000606 = 
{
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};


// func000607
// function begins at statement 16986, parm_start=11638
// OP_LOAD_S	29	129	11638
// OP_NE_S	11638	1236	11639
// OP_IFNOT	11639	5	0
// OP_LOAD_S	29	129	11640
// OP_NE_S	11640	1241	11641
// OP_IFNOT	11641	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	11642
// OP_LE	11642	213	11643
// OP_IFNOT	11643	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	11644
// OP_STORE_ENT	11644	28	0
// OP_LOAD_F	28	438	11645
// OP_EQ_F	11645	283	11646
// OP_IFNOT	11646	3	0
// OP_CALL0	11560	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	438	11647
// OP_EQ_F	11647	282	11648
// OP_IFNOT	11648	5	0
// OP_ADDRESS	28	150	11649
// OP_LOAD_F	28	102	11650
// OP_ADD_F	11650	214	11651
// OP_STOREP_F	11651	11649	0
// OP_LOAD_F	29	575	11652
// OP_BITAND	11652	703	11653
// OP_IFNOT	11653	7	0
// OP_LOAD_ENT	28	622	11654
// OP_NOT_ENT	11654	0	11655
// OP_IFNOT	11655	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1200	0	0
// OP_LOAD_ENT	29	194	11656
// OP_LOAD_ENT	11656	194	11657
// OP_EQ_E	11657	28	11658
// OP_LOAD_ENT	29	194	11659
// OP_LOAD_ENT	11659	194	11660
// OP_LOAD_ENT	28	622	11661
// OP_EQ_E	11660	11661	11662
// OP_OR	11658	11662	11663
// OP_IFNOT	11663	9	0
// OP_ADDRESS	29	371	11664
// OP_SUB_F	31	214	11665
// OP_STOREP_F	11665	11664	0
// OP_LOAD_ENT	28	622	11666
// OP_IFNOT	11666	4	0
// OP_ADDRESS	29	586	11667
// OP_LOAD_ENT	28	622	11668
// OP_STOREP_ENT	11668	11667	0
// OP_DONE	0	0	0
void () func000607 = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    self = self.enemy;
    if(self.state == STATE_BOTTOM)
    {
        func000606();
    }
    else
    {
        
        if(self.state == STATE_TOP)
        {
            self.nextthink = self.ltime + TRUE;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        
        if(!self.field000299)
        {
            func002677(other, self);
        }
        
    }
    
    
    if((other.goalentity.goalentity == self) || (other.goalentity.goalentity == self.field000299))
    {
        other.search_time = time - TRUE;
        
        if(self.field000299)
        {
            other.field000263 = self.field000299;
        }
        
    }
    
};


// plat_outside_touch
// function begins at statement 17038, parm_start=11669
// OP_LOAD_S	29	129	11669
// OP_NE_S	11669	1236	11670
// OP_IFNOT	11670	5	0
// OP_LOAD_S	29	129	11671
// OP_NE_S	11671	1241	11672
// OP_IFNOT	11672	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	11673
// OP_LE	11673	213	11674
// OP_IFNOT	11674	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	11675
// OP_STORE_ENT	11675	28	0
// OP_LOAD_F	28	438	11676
// OP_EQ_F	11676	282	11677
// OP_IFNOT	11677	2	0
// OP_CALL0	11561	0	0
// OP_DONE	0	0	0
void () plat_outside_touch = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    self = self.enemy;
    
    if(self.state == STATE_TOP)
    {
        func000605();
    }
    
};


// func000609
// function begins at statement 17056, parm_start=11678
// OP_LOAD_FNC	28	148	11678
// OP_IFNOT	11678	2	0
// OP_RETURN	0	0	0
// OP_CALL0	11561	0	0
// OP_DONE	0	0	0
void () func000609 = 
{
    
    if(self.think)
    {
        return;
    }
    
    func000605();
};


// func000610
// function begins at statement 17061, parm_start=11679
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	522	0	0
// OP_LOAD_F	28	438	11679
// OP_EQ_F	11679	284	11680
// OP_IFNOT	11680	3	0
// OP_CALL0	11561	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	438	11681
// OP_EQ_F	11681	285	11682
// OP_IFNOT	11682	3	0
// OP_CALL0	11560	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	11683	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () func000610 = 
{
    T_Damage(other, self, self, TRUE);
    if(self.state == STATE_UP)
    {
        func000605();
    }
    else
    {
        if(self.state == STATE_DOWN)
        {
            func000606();
        }
        else
        {
            objerror("plat_crush: bad self.state\n");
        }
        
    }
    
};


// func000611
// function begins at statement 17079, parm_start=11685
// OP_ADDRESS	28	147	11685
// OP_STOREP_FNC	519	11685	0
// OP_LOAD_F	28	438	11686
// OP_NE_F	11686	284	11687
// OP_IFNOT	11687	3	0
// OP_STORE_V	11688	4	0
// OP_CALL1	461	0	0
// OP_CALL0	11561	0	0
// OP_DONE	0	0	0
void () func000611 = 
{
    self.use = SUB_Null;
    
    if(self.state != STATE_UP)
    {
        objerror("plat_use: not in up state");
    }
    
    func000605();
};


// func_plat
// function begins at statement 17088, parm_start=11690
// OP_LOAD_F	28	404	11691
// OP_NOT_F	11691	0	11692
// OP_IFNOT	11692	3	0
// OP_ADDRESS	28	404	11693
// OP_STOREP_F	2805	11693	0
// OP_LOAD_F	28	405	11694
// OP_NOT_F	11694	0	11695
// OP_IFNOT	11695	3	0
// OP_ADDRESS	28	405	11696
// OP_STOREP_F	235	11696	0
// OP_LOAD_F	28	207	11697
// OP_EQ_F	11697	213	11698
// OP_IFNOT	11698	3	0
// OP_ADDRESS	28	207	11699
// OP_STOREP_F	216	11699	0
// OP_LOAD_F	28	207	11700
// OP_EQ_F	11700	214	11701
// OP_IFNOT	11701	9	0
// OP_STORE_V	11702	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	11703	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11704
// OP_STOREP_S	11702	11704	0
// OP_ADDRESS	28	209	11705
// OP_STOREP_S	11703	11705	0
// OP_LOAD_F	28	207	11706
// OP_EQ_F	11706	216	11707
// OP_IFNOT	11707	9	0
// OP_STORE_V	11708	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	11709	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11710
// OP_STOREP_S	11708	11710	0
// OP_ADDRESS	28	209	11711
// OP_STOREP_S	11709	11711	0
// OP_ADDRESS	28	400	11712
// OP_LOAD_V	28	117	11715
// OP_STOREP_V	11715	11712	0
// OP_ADDRESS	28	117	11718
// OP_STOREP_V	286	11718	0
// OP_ADDRESS	28	129	11721
// OP_STOREP_S	11722	11721	0
// OP_ADDRESS	28	104	11723
// OP_STOREP_F	241	11723	0
// OP_ADDRESS	28	103	11724
// OP_STOREP_F	232	11724	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11725
// OP_STORE_V	11725	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	11728
// OP_STORE_V	11728	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	11729
// OP_STORE_V	11729	7	0
// OP_LOAD_V	28	138	11732
// OP_STORE_V	11732	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	149	11735
// OP_STOREP_FNC	11562	11735	0
// OP_LOAD_F	28	369	11736
// OP_NOT_F	11736	0	11737
// OP_IFNOT	11737	3	0
// OP_ADDRESS	28	369	11738
// OP_STOREP_F	2003	11738	0
// OP_ADDRESS	28	548	11739
// OP_STOREP_FNC	1002	11739	0
// OP_ADDRESS	28	439	11740
// OP_LOAD_V	28	105	11743
// OP_STOREP_V	11743	11740	0
// OP_ADDRESS	28	443	11746
// OP_LOAD_V	28	105	11749
// OP_STOREP_V	11749	11746	0
// OP_LOAD_F	28	447	11752
// OP_IFNOT	11752	7	0
// OP_ADDRESS	28	446	11753
// OP_LOAD_F	28	108	11754
// OP_LOAD_F	28	447	11755
// OP_SUB_F	11754	11755	11756
// OP_STOREP_F	11756	11753	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	446	11757
// OP_LOAD_F	28	108	11758
// OP_LOAD_F	28	145	11759
// OP_SUB_F	11758	11759	11760
// OP_ADD_F	11760	217	11761
// OP_STOREP_F	11761	11757	0
// OP_ADDRESS	28	147	11762
// OP_STOREP_FNC	11559	11762	0
// OP_CALL0	11564	0	0
// OP_LOAD_S	28	197	11763
// OP_IFNOT	11763	6	0
// OP_ADDRESS	28	438	11764
// OP_STOREP_F	284	11764	0
// OP_ADDRESS	28	147	11765
// OP_STOREP_FNC	11684	11765	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	443	11766
// OP_STORE_V	11766	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	438	11769
// OP_STOREP_F	283	11769	0
// OP_DONE	0	0	0
void () func_plat = 
{
    local entity globaldef003543;
    
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
    self.blocked = func000610;
    
    if(!self.speed)
    {
        self.speed = 150;
    }
    
    self.f_goalweight = goalweight_plat;
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
    
    self.use = func000609;
    func000602();
    if(self.targetname)
    {
        self.state = STATE_UP;
        self.use = func000611;
    }
    else
    {
        setorigin(self, self.pos2);
        self.state = STATE_BOTTOM;
    }
    
};

void () func000616;
void () func000617;

// func000613
// function begins at statement 17196, parm_start=11773
// OP_LOAD_F	28	378	11773
// OP_LT	31	11773	11774
// OP_IFNOT	11774	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	378	11775
// OP_ADD_F	31	539	11776
// OP_STOREP_F	11776	11775	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	425	11777
// OP_STORE_V	11777	13	0
// OP_CALL4	522	0	0
// OP_DONE	0	0	0
void () func000613 = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + RA_PLAYERSTATTIME;
    T_Damage(other, self, self, self.dmg);
};


// func000614
// function begins at statement 17210, parm_start=11779
// OP_LOAD_FNC	28	148	11779
// OP_NE_FNC	11779	11771	11780
// OP_IFNOT	11780	2	0
// OP_RETURN	0	0	0
// OP_CALL0	11770	0	0
// OP_DONE	0	0	0
void () func000614 = 
{
    
    if(self.think != func000617)
    {
        return;
    }
    
    func000616();
};


// train_wait
// function begins at statement 17216, parm_start=11782
// OP_LOAD_F	28	418	11782
// OP_IFNOT	11782	14	0
// OP_ADDRESS	28	150	11783
// OP_LOAD_F	28	102	11784
// OP_LOAD_F	28	418	11785
// OP_ADD_F	11784	11785	11786
// OP_STOREP_F	11786	11783	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	11787
// OP_STORE_V	11787	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	150	11788
// OP_LOAD_F	28	102	11789
// OP_ADD_F	11789	3036	11790
// OP_STOREP_F	11790	11788	0
// OP_ADDRESS	28	148	11791
// OP_STOREP_FNC	11770	11791	0
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
    
    self.think = func000616;
};


// func000616
// function begins at statement 17238, parm_start=11792
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	11794
// OP_STORE_V	11794	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	11792	0
// OP_ADDRESS	28	196	11795
// OP_LOAD_S	11792	196	11796
// OP_STOREP_S	11796	11795	0
// OP_LOAD_S	28	196	11797
// OP_NOT_S	11797	0	11798
// OP_IFNOT	11798	3	0
// OP_STORE_V	11799	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	11792	418	11800
// OP_IFNOT	11800	5	0
// OP_ADDRESS	28	418	11801
// OP_LOAD_F	11792	418	11802
// OP_STOREP_F	11802	11801	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	418	11803
// OP_STOREP_F	213	11803	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	11804
// OP_STORE_V	11804	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	11792	105	11805
// OP_LOAD_V	28	134	11808
// OP_SUB_V	11805	11808	11811
// OP_STORE_V	11811	4	0
// OP_LOAD_F	28	369	11814
// OP_STORE_V	11814	7	0
// OP_STORE_V	11781	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000616 = 
{
    local entity globaldef003554;
    local float globaldef003555;
    globaldef003554 = find(world, targetname, self.target);
    self.target = globaldef003554.target;
    
    if(!self.target)
    {
        objerror("train_next: no next target");
    }
    
    if(globaldef003554.wait)
    {
        self.wait = globaldef003554.wait;
    }
    else
    {
        self.wait = FALSE;
    }
    
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    SUB_CalcMove(globaldef003554.origin - self.mins, self.speed, train_wait);
};


// func000617
// function begins at statement 17276, parm_start=11815
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	11816
// OP_STORE_V	11816	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	11815	0
// OP_ADDRESS	28	196	11817
// OP_LOAD_S	11815	196	11818
// OP_STOREP_S	11818	11817	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	11815	105	11819
// OP_LOAD_V	28	134	11822
// OP_SUB_V	11819	11822	11825
// OP_STORE_V	11825	7	0
// OP_CALL2	453	0	0
// OP_LOAD_S	28	197	11828
// OP_NOT_S	11828	0	11829
// OP_IFNOT	11829	7	0
// OP_ADDRESS	28	150	11830
// OP_LOAD_F	28	102	11831
// OP_ADD_F	11831	3036	11832
// OP_STOREP_F	11832	11830	0
// OP_ADDRESS	28	148	11833
// OP_STOREP_FNC	11770	11833	0
// OP_DONE	0	0	0
void () func000617 = 
{
    local entity globaldef003557;
    globaldef003557 = find(world, targetname, self.target);
    self.target = globaldef003557.target;
    setorigin(self, globaldef003557.origin - self.mins);
    
    if(!self.targetname)
    {
        self.nextthink = self.ltime + 0.1;
        self.think = func000616;
    }
    
};


// func_train
// function begins at statement 17301, parm_start=11835
// OP_LOAD_F	28	369	11835
// OP_NOT_F	11835	0	11836
// OP_IFNOT	11836	3	0
// OP_ADDRESS	28	369	11837
// OP_STOREP_F	1997	11837	0
// OP_LOAD_S	28	196	11838
// OP_NOT_S	11838	0	11839
// OP_IFNOT	11839	3	0
// OP_STORE_V	11840	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	28	425	11841
// OP_NOT_F	11841	0	11842
// OP_IFNOT	11842	3	0
// OP_ADDRESS	28	425	11843
// OP_STOREP_F	216	11843	0
// OP_LOAD_F	28	207	11844
// OP_EQ_F	11844	213	11845
// OP_IFNOT	11845	9	0
// OP_ADDRESS	28	208	11846
// OP_STOREP_S	10521	11846	0
// OP_STORE_V	10521	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	11847
// OP_STOREP_S	10521	11847	0
// OP_STORE_V	10521	4	0
// OP_CALL1	469	0	0
// OP_LOAD_F	28	207	11848
// OP_EQ_F	11848	214	11849
// OP_IFNOT	11849	9	0
// OP_ADDRESS	28	208	11850
// OP_STOREP_S	11851	11850	0
// OP_STORE_V	11851	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	11852
// OP_STOREP_S	11853	11852	0
// OP_STORE_V	11853	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	426	11854
// OP_STOREP_F	214	11854	0
// OP_ADDRESS	28	104	11855
// OP_STOREP_F	241	11855	0
// OP_ADDRESS	28	103	11856
// OP_STOREP_F	232	11856	0
// OP_ADDRESS	28	149	11857
// OP_STOREP_FNC	11772	11857	0
// OP_ADDRESS	28	147	11858
// OP_STOREP_FNC	11778	11858	0
// OP_ADDRESS	28	129	11859
// OP_STOREP_S	11860	11859	0
// OP_ADDRESS	28	548	11861
// OP_STOREP_FNC	1003	11861	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	11862
// OP_STORE_V	11862	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	11863
// OP_STORE_V	11863	7	0
// OP_LOAD_V	28	138	11866
// OP_STORE_V	11866	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11869
// OP_STORE_V	11869	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	150	11872
// OP_LOAD_F	28	102	11873
// OP_ADD_F	11873	3036	11874
// OP_STOREP_F	11874	11872	0
// OP_ADDRESS	28	148	11875
// OP_STOREP_FNC	11771	11875	0
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
    self.blocked = func000613;
    self.use = func000614;
    self.classname = "train";
    self.f_goalweight = goalweight_train;
    setmodel(self, self.model);
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.1;
    self.think = func000617;
};


// misc_teleporttrain
// function begins at statement 17373, parm_start=11877
// OP_LOAD_F	28	369	11877
// OP_NOT_F	11877	0	11878
// OP_IFNOT	11878	3	0
// OP_ADDRESS	28	369	11879
// OP_STOREP_F	1997	11879	0
// OP_LOAD_S	28	196	11880
// OP_NOT_S	11880	0	11881
// OP_IFNOT	11881	3	0
// OP_STORE_V	11840	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	426	11882
// OP_STOREP_F	214	11882	0
// OP_ADDRESS	28	104	11883
// OP_STOREP_F	237	11883	0
// OP_ADDRESS	28	103	11884
// OP_STOREP_F	232	11884	0
// OP_ADDRESS	28	149	11885
// OP_STOREP_FNC	11772	11885	0
// OP_ADDRESS	28	147	11886
// OP_STOREP_FNC	11778	11886	0
// OP_ADDRESS	28	121	11887
// OP_STOREP_V	11890	11887	0
// OP_ADDRESS	28	208	11893
// OP_STOREP_S	10521	11893	0
// OP_STORE_V	10521	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	209	11894
// OP_STOREP_S	10521	11894	0
// OP_STORE_V	10521	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	11895	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11895	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	11896
// OP_STORE_V	11896	7	0
// OP_LOAD_V	28	138	11899
// OP_STORE_V	11899	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11902
// OP_STORE_V	11902	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	150	11905
// OP_LOAD_F	28	102	11906
// OP_ADD_F	11906	3036	11907
// OP_STOREP_F	11907	11905	0
// OP_ADDRESS	28	148	11908
// OP_STOREP_FNC	11771	11908	0
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
    
    self.cnt = TRUE;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_PUSH;
    self.blocked = func000613;
    self.use = func000614;
    self.avelocity = '100 200 300';
    self.noise = "misc/null.wav";
    precache_sound("misc/null.wav");
    self.noise1 = "misc/null.wav";
    precache_sound("misc/null.wav");
    precache_model2("progs/teleport.mdl");
    setmodel(self, "progs/teleport.mdl");
    setsize(self, self.mins, self.maxs);
    setorigin(self, self.origin);
    self.nextthink = self.ltime + 0.1;
    self.think = func000617;
};

