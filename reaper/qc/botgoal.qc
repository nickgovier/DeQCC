void (float dist) ai_botrun;
void () bot_chase;
void () bot_trigger1;
void () aibot_chooseGoal;
void () BotFindTarget;
// shoottarget
// function begins at statement 23167, parm_start=13608
// OP_LOAD_ENT	28	194	13612
// OP_STORE_ENT	13612	13611	0
// OP_CALL0	13604	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3094	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	13611	194	13613
// OP_LOAD_V	13613	94	13614
// OP_LOAD_ENT	13611	194	13617
// OP_LOAD_V	13617	98	13618
// OP_ADD_V	13614	13618	13621
// OP_MUL_VF	13621	677	13624
// OP_STORE_V	13624	13608	0
// OP_LOAD_V	28	105	13627
// OP_SUB_V	13608	13627	13630
// OP_STORE_V	13630	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	13608	0
// OP_STORE_V	231	4	0
// OP_STORE_V	13608	7	0
// OP_STORE_V	3366	10	0
// OP_CALL3	3300	0	0
// OP_ADDRESS	28	373	13633
// OP_ADD_F	31	677	13634
// OP_STOREP_F	13634	13633	0
// OP_ADDRESS	28	181	13635
// OP_STOREP_ENT	30	13635	0
// OP_LOAD_ENT	13611	194	13636
// OP_LOAD_S	13636	129	13637
// OP_EQ_S	13637	6605	13638
// OP_IFNOT	13638	4	0
// OP_ADDRESS	28	366	13639
// OP_ADD_F	31	217	13640
// OP_STOREP_F	13640	13639	0
// OP_DONE	0	0	0
void () shoottarget = 
{
    local vector dir;
    local entity botTarget;
    botTarget = self.goalentity;
    bot_trigger1();
    sound(self, CHAN_WEAPON, "weapons/guncock.wav", TRUE, ATTN_NORM);
    dir = (botTarget.goalentity.absmin + botTarget.goalentity.absmax) * 0.500;
    dir = normalize(dir - self.origin);
    FireBullets(MOVETYPE_TOSS, dir, '0.040 0.040 0.000');
    self.attack_finished = time + 0.500;
    self.enemy = world;
    
    if(botTarget.goalentity.classname == "door")
    {
        self.search_time = time + FL_CLIENT;
    }
    
};

// ai_botseek
// function begins at statement 23205, parm_start=13642
// OP_LOAD_ENT	28	181	13649
// OP_IFNOT	13649	2	0
// OP_CALL0	12286	0	0
// OP_CALL0	13606	0	0
// OP_IFNOT	1	6	0
// OP_ADDRESS	28	365	13650
// OP_LOAD_F	28	365	13651
// OP_BITOR	13651	597	13652
// OP_STOREP_F	13652	13650	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	13653
// OP_STORE_ENT	13653	13643	0
// OP_LOAD_F	28	366	13654
// OP_LT	31	13654	13655
// OP_IFNOT	13655	49	0
// OP_LOAD_ENT	13643	194	13656
// OP_LOAD_S	13656	129	13657
// OP_EQ_S	13657	7946	13658
// OP_IFNOT	13658	15	0
// OP_LOAD_ENT	13643	194	13659
// OP_LOAD_V	13659	94	13660
// OP_LOAD_ENT	13643	194	13663
// OP_LOAD_V	13663	98	13664
// OP_ADD_V	13660	13664	13667
// OP_MUL_VF	13667	677	13670
// OP_STORE_V	13670	13644	0
// OP_LOAD_ENT	13643	194	13673
// OP_LOAD_F	13673	101	13674
// OP_ADD_F	13674	214	13675
// OP_STORE_F	13675	13646	0
// OP_STORE_V	13643	4	0
// OP_STORE_V	13644	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	13643	194	13676
// OP_LOAD_F	13676	104	13677
// OP_NE_F	13677	237	13678
// OP_IFNOT	13678	27	0
// OP_LOAD_V	13643	105	13679
// OP_LOAD_V	28	105	13682
// OP_SUB_V	13679	13682	13685
// OP_STORE_V	13685	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13648	0
// OP_STORE_V	13642	4	0
// OP_CALL1	13081	0	0
// OP_LOAD_V	13643	105	13688
// OP_LOAD_V	28	105	13691
// OP_SUB_V	13688	13691	13694
// OP_STORE_V	13694	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13647	0
// OP_GE	13647	13648	13697
// OP_IFNOT	13697	10	0
// OP_ADDRESS	28	366	13698
// OP_LOAD_F	28	366	13699
// OP_SUB_F	13699	1227	13700
// OP_STOREP_F	13700	13698	0
// OP_LOAD_ENT	13643	194	13701
// OP_EQ_E	13701	13643	13702
// OP_IFNOT	13702	3	0
// OP_LOAD_F	28	366	13703
// OP_EQ_F	13703	31	13704
// OP_RETURN	0	0	0
// OP_CALL0	13605	0	0
// OP_LOAD_ENT	13643	194	13705
// OP_LOAD_F	13705	163	13706
// OP_EQ_F	13706	251	13707
// OP_IFNOT	13707	2	0
// OP_CALL0	13607	0	0
// OP_STORE_V	13642	4	0
// OP_CALL1	13081	0	0
// OP_DONE	0	0	0
void (float dist) ai_botseek = 
{
    local entity botTarget;
    local vector dir;
    local float rng;
    local float oldrng;
    
    if(self.enemy)
    {
        aibot_setupchase();
    }
    
    
    if(BotFindTarget())
    {
        self.lefty = self.lefty | FAR_SEEK;
        return;
    }
    
    botTarget = self.goalentity;
    
    if(time < self.search_time)
    {
        
        if(botTarget.goalentity.classname == "train")
        {
            dir = (botTarget.goalentity.absmin + botTarget.goalentity.absmax) * 0.500;
            dir_z = botTarget.goalentity.absmax_z + TRUE;
            setorigin(botTarget, dir);
        }
        
        
        if(botTarget.goalentity.solid != SOLID_NOT)
        {
            oldrng = vlen(botTarget.origin - self.origin);
            Botmovetogoal(dist);
            rng = vlen(botTarget.origin - self.origin);
            
            if(rng >= oldrng)
            {
                self.search_time = self.search_time - 0.400;
                
                if(botTarget.goalentity == botTarget)
                {
                    self.search_time == time; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?
                }
                
            }
            
            return;
        }
        
    }
    
    aibot_chooseGoal();
    
    if(botTarget.goalentity.takedamage == DAMAGE_YES)
    {
        shoottarget();
    }
    
    Botmovetogoal(dist);
};

// thingweight
// function begins at statement 23277, parm_start=13709
// OP_STORE_F	577	13710	0
// OP_STORE_F	213	13711	0
// OP_LOAD_F	28	182	13714
// OP_BITAND	13714	216	13715
// OP_IFNOT	13715	4	0
// OP_STORE_V	13709	4	0
// OP_CALL1	12505	0	0
// OP_STORE_F	1	13711	0
// OP_LOAD_ENT	13709	549	13716
// OP_EQ_E	13716	28	13717
// OP_IFNOT	13717	16	0
// OP_LOAD_F	13709	550	13718
// OP_SUB_F	31	217	13719
// OP_GT	13718	13719	13720
// OP_STORE_F	13720	13712	0
// OP_NOT_F	13712	0	13721
// OP_IFNOT	13721	8	0
// OP_CALL0	452	0	0
// OP_MUL_F	581	1	13722
// OP_SUB_F	31	13722	13723
// OP_STORE_F	13723	13713	0
// OP_LOAD_F	13709	550	13724
// OP_GT	13724	13713	13725
// OP_STORE_F	13725	13712	0
// OP_IFNOT	13712	2	0
// OP_RETURN	577	0	0
// OP_LOAD_FNC	13709	523	13726
// OP_IFNOT	13726	6	0
// OP_LOAD_FNC	13709	523	13727
// OP_STORE_V	13709	4	0
// OP_CALL1	13727	0	0
// OP_STORE_F	1	13710	0
// OP_GOTO	3	0	0
// OP_ADDRESS	13709	552	13728
// OP_STOREP_F	585	13728	0
// OP_GT	13710	577	13729
// OP_IFNOT	13729	9	0
// OP_NOT_F	13711	0	13730
// OP_IFNOT	13730	7	0
// OP_LOAD_F	13709	97	13731
// OP_LOAD_F	28	108	13732
// OP_ADD_F	13732	608	13733
// OP_GT	13731	13733	13734
// OP_IFNOT	13734	2	0
// OP_STORE_F	577	13710	0
// OP_RETURN	13710	0	0
// OP_DONE	0	0	0
float (entity e) thingweight = 
{
    local float weight;
    local float OK_HIGH;
    local float recent;
    local float waittime;
    weight = DONT_WANT;
    OK_HIGH = FALSE;
    
    if(self.flags & FL_SWIM)
    {
        OK_HIGH = Swimto(e);
    }
    
    
    if(e.lastbot == self)
    {
        recent = e.lasttime > (time - FL_CLIENT);
        
        if(!recent)
        {
            waittime = time - (LOOPTIME * random());
            recent = e.lasttime > waittime;
        }
        
        
        if(recent)
        {
            return DONT_WANT;
        }
        
    }
    
    if(e.th_weight)
    {
        weight = e.th_weight(e);
    }
    else
    {
        e.pathtype = NEVERTARGET;
    }
    
    
    if(weight > DONT_WANT)
    {
        
        if(!OK_HIGH)
        {
            
            if(e.absmin_z > (self.origin_z + MAXJUMP))
            {
                weight = DONT_WANT;
            }
            
        }
        
    }
    
    return weight;
};

// trigweight
// function begins at statement 23324, parm_start=13736
// OP_STORE_F	577	13737	0
// OP_LOAD_ENT	13736	549	13738
// OP_EQ_E	13738	28	13739
// OP_IFNOT	13739	6	0
// OP_LOAD_F	13736	550	13740
// OP_SUB_F	31	217	13741
// OP_GT	13740	13741	13742
// OP_IFNOT	13742	2	0
// OP_RETURN	577	0	0
// OP_LOAD_FNC	13736	523	13743
// OP_IFNOT	13743	6	0
// OP_LOAD_FNC	13736	523	13744
// OP_STORE_V	13736	4	0
// OP_CALL1	13744	0	0
// OP_STORE_F	1	13737	0
// OP_GOTO	3	0	0
// OP_ADDRESS	13736	552	13745
// OP_STOREP_F	585	13745	0
// OP_RETURN	13737	0	0
// OP_DONE	0	0	0
float (entity e) trigweight = 
{
    local float weight;
    weight = DONT_WANT;
    
    if(e.lastbot == self)
    {
        
        if(e.lasttime > (time - FL_CLIENT))
        {
            return DONT_WANT;
        }
        
    }
    
    if(e.th_weight)
    {
        weight = e.th_weight(e);
    }
    else
    {
        e.pathtype = NEVERTARGET;
    }
    
    return weight;
};

// itemweight
// function begins at statement 23344, parm_start=13747
// OP_STORE_F	577	13748	0
// OP_STORE_F	213	13749	0
// OP_LOAD_F	28	182	13750
// OP_BITAND	13750	216	13751
// OP_IFNOT	13751	4	0
// OP_STORE_V	13747	4	0
// OP_CALL1	12505	0	0
// OP_STORE_F	1	13749	0
// OP_LOAD_ENT	13747	549	13752
// OP_EQ_E	13752	28	13753
// OP_IFNOT	13753	6	0
// OP_LOAD_F	13747	550	13754
// OP_SUB_F	31	230	13755
// OP_GT	13754	13755	13756
// OP_IFNOT	13756	2	0
// OP_RETURN	577	0	0
// OP_LOAD_FNC	13747	523	13757
// OP_IFNOT	13757	6	0
// OP_LOAD_FNC	13747	523	13758
// OP_STORE_V	13747	4	0
// OP_CALL1	13758	0	0
// OP_STORE_F	1	13748	0
// OP_GOTO	3	0	0
// OP_ADDRESS	13747	552	13759
// OP_STOREP_F	585	13759	0
// OP_GT	13748	577	13760
// OP_IFNOT	13760	9	0
// OP_NOT_F	13749	0	13761
// OP_IFNOT	13761	7	0
// OP_LOAD_F	13747	97	13762
// OP_LOAD_F	28	108	13763
// OP_ADD_F	13763	608	13764
// OP_GT	13762	13764	13765
// OP_IFNOT	13765	2	0
// OP_STORE_F	577	13748	0
// OP_GT	13748	577	13766
// OP_IFNOT	13766	6	0
// OP_STORE_V	13747	4	0
// OP_CALL1	13600	0	0
// OP_NOT_F	1	0	13767
// OP_IFNOT	13767	2	0
// OP_STORE_F	577	13748	0
// OP_RETURN	13748	0	0
// OP_DONE	0	0	0
float (entity e) itemweight = 
{
    local float weight;
    local float OK_HIGH;
    weight = DONT_WANT;
    OK_HIGH = FALSE;
    
    if(self.flags & FL_SWIM)
    {
        OK_HIGH = Swimto(e);
    }
    
    
    if(e.lastbot == self)
    {
        
        if(e.lasttime > (time - MOVETYPE_FLY))
        {
            return DONT_WANT;
        }
        
    }
    
    if(e.th_weight)
    {
        weight = e.th_weight(e);
    }
    else
    {
        e.pathtype = NEVERTARGET;
    }
    
    
    if(weight > DONT_WANT)
    {
        
        if(!OK_HIGH)
        {
            
            if(e.absmin_z > (self.origin_z + MAXJUMP))
            {
                weight = DONT_WANT;
            }
            
        }
        
    }
    
    
    if(weight > DONT_WANT)
    {
        
        if(!TrueReachable(e))
        {
            weight = DONT_WANT;
        }
        
    }
    
    return weight;
};

// chooseRoamTarget
// function begins at statement 23388, parm_start=13769
// OP_LOAD_V	28	105	13784
// OP_STORE_V	13784	13781	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	13772	0
// OP_LT	13772	2355	13787
// OP_IFNOT	13787	13	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	13771	0
// OP_STORE_F	214	13773	0
// OP_LT	13771	677	13788
// OP_IFNOT	13788	2	0
// OP_STORE_F	276	13773	0
// OP_CALL0	452	0	0
// OP_MUL_F	13789	1	13790
// OP_ADD_F	13790	756	13791
// OP_MUL_F	13773	13791	13792
// OP_ADD_F	13781	13792	13793
// OP_STORE_F	13793	13781	0
// OP_GT	13772	1226	13794
// OP_IFNOT	13794	13	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	13771	0
// OP_STORE_F	214	13773	0
// OP_LT	13771	677	13795
// OP_IFNOT	13795	2	0
// OP_STORE_F	276	13773	0
// OP_CALL0	452	0	0
// OP_MUL_F	13789	1	13796
// OP_ADD_F	13796	756	13797
// OP_MUL_F	13773	13797	13798
// OP_ADD_F	13782	13798	13799
// OP_STORE_F	13799	13782	0
// OP_MUL_F	228	608	13800
// OP_CALL0	452	0	0
// OP_MUL_F	13800	1	13801
// OP_ADD_F	13783	13801	13802
// OP_MUL_F	216	608	13803
// OP_SUB_F	13802	13803	13804
// OP_SUB_F	13804	214	13805
// OP_STORE_F	13805	13783	0
// OP_LOAD_V	28	105	13806
// OP_STORE_V	13806	4	0
// OP_STORE_V	13781	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LOAD_V	28	105	13809
// OP_SUB_V	13781	13809	13812
// OP_STORE_V	13812	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	13775	0
// OP_LOAD_V	28	105	13815
// OP_SUB_V	13781	13815	13818
// OP_STORE_V	13818	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13770	0
// OP_LOAD_V	28	105	13821
// OP_MUL_F	13770	70	13824
// OP_SUB_F	13824	576	13825
// OP_MUL_VF	13775	13825	13826
// OP_ADD_V	13821	13826	13829
// OP_STORE_V	13829	13781	0
// OP_STORE_V	13781	13778	0
// OP_STORE_V	13778	4	0
// OP_CALL1	634	0	0
// OP_ADD_F	1	214	13832
// OP_STORE_F	13832	13780	0
// OP_STORE_V	13778	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	13774	0
// OP_NE_F	13774	276	13833
// OP_IFNOT	13833	9	0
// OP_NE_F	13774	278	13834
// OP_IFNOT	13834	7	0
// OP_LT	13769	232	13835
// OP_IFNOT	13835	5	0
// OP_ADD_F	13769	214	13836
// OP_STORE_V	13836	4	0
// OP_CALL1	13768	0	0
// OP_RETURN	1	0	0
// OP_MUL_FV	304	13775	13837
// OP_SUB_V	13781	13837	13840
// OP_STORE_V	13840	13778	0
// OP_STORE_V	13778	4	0
// OP_CALL1	634	0	0
// OP_ADD_F	1	214	13843
// OP_STORE_F	13843	13780	0
// OP_STORE_V	13778	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	13774	0
// OP_NE_F	13774	276	13844
// OP_IFNOT	13844	9	0
// OP_NE_F	13774	278	13845
// OP_IFNOT	13845	7	0
// OP_LT	13769	232	13846
// OP_IFNOT	13846	5	0
// OP_ADD_F	13769	214	13847
// OP_STORE_V	13847	4	0
// OP_CALL1	13768	0	0
// OP_RETURN	1	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	228	13848
// OP_ADD_F	13769	13848	13849
// OP_STORE_F	13849	13771	0
// OP_LOAD_F	28	108	13850
// OP_GT	13783	13850	13851
// OP_GT	13771	230	13852
// OP_OR	13851	13852	13853
// OP_IFNOT	13853	4	0
// OP_LOAD_F	28	137	13854
// OP_SUB_F	13780	13854	13855
// OP_STORE_F	13855	13783	0
// OP_LOAD_V	28	105	13856
// OP_SUB_V	13781	13856	13859
// OP_STORE_V	13859	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13770	0
// OP_LT	13770	576	13862
// OP_IFNOT	13862	7	0
// OP_LT	13769	232	13863
// OP_IFNOT	13863	5	0
// OP_ADD_F	13769	214	13864
// OP_STORE_V	13864	4	0
// OP_CALL1	13768	0	0
// OP_RETURN	1	0	0
// OP_RETURN	13781	0	0
// OP_DONE	0	0	0
vector (float n) chooseRoamTarget = 
{
    local float len;
    local float r;
    local float d;
    local float m;
    local float lnd;
    local vector dir;
    local vector below;
    local vector bestorg;
    bestorg = self.origin;
    d = random();
    
    if(d < 0.800)
    {
        r = random();
        m = TRUE;
        
        if(r < 0.500)
        {
            m = CONTENT_EMPTY;
        }
        
        bestorg_x = bestorg_x + (m * ((700.000 * random()) + 50.000));
    }
    
    
    if(d > 0.200)
    {
        r = random();
        m = TRUE;
        
        if(r < 0.500)
        {
            m = CONTENT_EMPTY;
        }
        
        bestorg_y = 0.000 + (m * ((700.000 * random()) + 50.000));
    }
    
    bestorg_z = ((0.000 + ((MOVETYPE_WALK * MAXJUMP) * random())) - (FL_SWIM * MAXJUMP)) - TRUE;
    traceline(self.origin, bestorg, TRUE, self);
    dir = normalize(bestorg - self.origin);
    len = vlen(bestorg - self.origin);
    bestorg = self.origin + (dir * ((len * trace_fraction) - KINDA_WANT));
    below = bestorg;
    below_z = dropline(below) + TRUE;
    lnd = pointcontents(below);
    
    if(lnd != CONTENT_EMPTY)
    {
        
        if(lnd != CONTENT_WATER)
        {
            
            if(n < MOVETYPE_PUSH)
            {
                return chooseRoamTarget(n + TRUE);
            }
            
        }
        
    }
    
    below = bestorg - (SVC_INTERMISSION * dir);
    below_z = dropline(below) + TRUE;
    lnd = pointcontents(below);
    
    if(lnd != CONTENT_EMPTY)
    {
        
        if(lnd != CONTENT_WATER)
        {
            
            if(n < MOVETYPE_PUSH)
            {
                return chooseRoamTarget(n + TRUE);
            }
            
        }
        
    }
    
    r = n + (random() * MOVETYPE_WALK);
    
    if((0.000 > self.origin_z) || (r > MOVETYPE_FLY))
    {
        bestorg_z = 0.000 - self.mins_z;
    }
    
    len = vlen(bestorg - self.origin);
    
    if(len < KINDA_WANT)
    {
        
        if(n < MOVETYPE_PUSH)
        {
            return chooseRoamTarget(n + TRUE);
        }
        
    }
    
    return bestorg;
};

// cacheweight
// function begins at statement 23515, parm_start=13866
// OP_STORE_F	213	13867	0
// OP_LOAD_ENT	13866	549	13871
// OP_EQ_E	13871	28	13872
// OP_IFNOT	13872	6	0
// OP_LOAD_F	13866	550	13873
// OP_SUB_F	31	216	13874
// OP_GT	13873	13874	13875
// OP_IFNOT	13875	2	0
// OP_RETURN	13867	0	0
// OP_LOAD_V	28	105	13876
// OP_LOAD_V	13866	105	13879
// OP_SUB_V	13876	13879	13882
// OP_STORE_V	13882	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13869	0
// OP_LOAD_F	28	162	13885
// OP_STORE_F	13885	13870	0
// OP_ADDRESS	13866	561	13886
// OP_STOREP_ENT	30	13886	0
// OP_ADDRESS	13866	560	13887
// OP_STOREP_F	213	13887	0
// OP_LOAD_ENT	13866	555	13888
// OP_IFNOT	13888	33	0
// OP_LOAD_ENT	13866	555	13889
// OP_LOAD_F	13889	104	13890
// OP_EQ_F	13890	238	13891
// OP_LOAD_ENT	13866	555	13892
// OP_LOAD_F	13892	150	13893
// OP_ADD_F	31	229	13894
// OP_LT	13893	13894	13895
// OP_OR	13891	13895	13896
// OP_IFNOT	13896	24	0
// OP_LOAD_ENT	28	555	13897
// OP_LOAD_ENT	13866	555	13898
// OP_NE_E	13897	13898	13899
// OP_LOAD_F	28	554	13900
// OP_LOAD_F	13866	554	13901
// OP_GT	13900	13901	13902
// OP_OR	13899	13902	13903
// OP_IFNOT	13903	16	0
// OP_LOAD_F	13866	554	13905
// OP_SUB_F	13904	13905	13906
// OP_MUL_F	216	13869	13907
// OP_SUB_F	13906	13907	13908
// OP_STORE_F	13908	13867	0
// OP_BITAND	13870	259	13909
// OP_IFNOT	13909	3	0
// OP_MUL_F	13867	677	13910
// OP_STORE_F	13910	13867	0
// OP_ADDRESS	13866	561	13911
// OP_LOAD_ENT	13866	555	13912
// OP_STOREP_ENT	13912	13911	0
// OP_ADDRESS	13866	560	13913
// OP_LOAD_F	13866	554	13914
// OP_STOREP_F	13914	13913	0
// OP_LOAD_ENT	13866	557	13915
// OP_IFNOT	13915	36	0
// OP_LOAD_ENT	13866	557	13916
// OP_LOAD_F	13916	104	13917
// OP_EQ_F	13917	238	13918
// OP_LOAD_ENT	13866	557	13919
// OP_LOAD_F	13919	150	13920
// OP_ADD_F	31	229	13921
// OP_LT	13920	13921	13922
// OP_OR	13918	13922	13923
// OP_IFNOT	13923	27	0
// OP_LOAD_ENT	28	557	13924
// OP_LOAD_ENT	13866	557	13925
// OP_NE_E	13924	13925	13926
// OP_LOAD_F	28	556	13927
// OP_LOAD_F	13866	556	13928
// OP_GT	13927	13928	13929
// OP_OR	13926	13929	13930
// OP_IFNOT	13930	19	0
// OP_LOAD_F	13866	556	13931
// OP_SUB_F	13904	13931	13932
// OP_MUL_F	216	13869	13933
// OP_SUB_F	13932	13933	13934
// OP_STORE_F	13934	13868	0
// OP_BITAND	13870	260	13935
// OP_IFNOT	13935	3	0
// OP_MUL_F	13868	677	13936
// OP_STORE_F	13936	13868	0
// OP_GT	13868	13867	13937
// OP_IFNOT	13937	8	0
// OP_STORE_F	13868	13867	0
// OP_ADDRESS	13866	561	13938
// OP_LOAD_ENT	13866	557	13939
// OP_STOREP_ENT	13939	13938	0
// OP_ADDRESS	13866	560	13940
// OP_LOAD_F	13866	556	13941
// OP_STOREP_F	13941	13940	0
// OP_LOAD_F	28	188	13942
// OP_LT	13942	6039	13943
// OP_IFNOT	13943	34	0
// OP_LOAD_ENT	13866	559	13944
// OP_IFNOT	13944	32	0
// OP_LOAD_ENT	13866	559	13945
// OP_LOAD_F	13945	104	13946
// OP_EQ_F	13946	238	13947
// OP_LOAD_ENT	13866	559	13948
// OP_LOAD_F	13948	150	13949
// OP_ADD_F	31	229	13950
// OP_LT	13949	13950	13951
// OP_OR	13947	13951	13952
// OP_IFNOT	13952	23	0
// OP_LOAD_ENT	28	559	13953
// OP_LOAD_ENT	13866	559	13954
// OP_NE_E	13953	13954	13955
// OP_LOAD_F	28	558	13956
// OP_LOAD_F	13866	558	13957
// OP_GT	13956	13957	13958
// OP_OR	13955	13958	13959
// OP_IFNOT	13959	15	0
// OP_LOAD_F	13866	558	13960
// OP_SUB_F	13904	13960	13961
// OP_MUL_F	216	13869	13962
// OP_SUB_F	13961	13962	13963
// OP_STORE_F	13963	13868	0
// OP_GT	13868	13867	13964
// OP_IFNOT	13964	8	0
// OP_STORE_F	13868	13867	0
// OP_ADDRESS	13866	561	13965
// OP_LOAD_ENT	13866	559	13966
// OP_STOREP_ENT	13966	13965	0
// OP_ADDRESS	13866	560	13967
// OP_LOAD_F	13866	558	13968
// OP_STOREP_F	13968	13967	0
// OP_LOAD_ENT	13866	563	13969
// OP_IFNOT	13969	37	0
// OP_LOAD_ENT	13866	563	13970
// OP_LOAD_F	13970	104	13971
// OP_EQ_F	13971	238	13972
// OP_LOAD_ENT	13866	563	13973
// OP_LOAD_F	13973	150	13974
// OP_ADD_F	31	216	13975
// OP_LT	13974	13975	13976
// OP_OR	13972	13976	13977
// OP_IFNOT	13977	28	0
// OP_LOAD_ENT	28	563	13978
// OP_LOAD_ENT	13866	563	13979
// OP_NE_E	13978	13979	13980
// OP_LOAD_F	28	562	13981
// OP_LOAD_F	13866	562	13982
// OP_GT	13981	13982	13983
// OP_OR	13980	13983	13984
// OP_IFNOT	13984	20	0
// OP_LOAD_F	13866	562	13985
// OP_SUB_F	13904	13985	13986
// OP_MUL_F	216	13869	13987
// OP_SUB_F	13986	13987	13988
// OP_STORE_F	13988	13868	0
// OP_BITAND	13870	257	13989
// OP_IFNOT	13989	3	0
// OP_MUL_F	13868	677	13990
// OP_STORE_F	13990	13868	0
// OP_ADD_F	13867	13991	13992
// OP_GT	13868	13992	13993
// OP_IFNOT	13993	8	0
// OP_STORE_F	13868	13867	0
// OP_ADDRESS	13866	561	13994
// OP_LOAD_ENT	13866	563	13995
// OP_STOREP_ENT	13995	13994	0
// OP_ADDRESS	13866	560	13996
// OP_LOAD_F	13866	562	13997
// OP_STOREP_F	13997	13996	0
// OP_LOAD_ENT	13866	565	13998
// OP_IFNOT	13998	37	0
// OP_LOAD_ENT	13866	565	13999
// OP_LOAD_F	13999	104	14000
// OP_EQ_F	14000	238	14001
// OP_LOAD_ENT	13866	565	14002
// OP_LOAD_F	14002	150	14003
// OP_ADD_F	31	216	14004
// OP_LT	14003	14004	14005
// OP_OR	14001	14005	14006
// OP_IFNOT	14006	28	0
// OP_LOAD_ENT	28	565	14007
// OP_LOAD_ENT	13866	565	14008
// OP_NE_E	14007	14008	14009
// OP_LOAD_F	28	564	14010
// OP_LOAD_F	13866	564	14011
// OP_GT	14010	14011	14012
// OP_OR	14009	14012	14013
// OP_IFNOT	14013	20	0
// OP_LOAD_F	13866	564	14014
// OP_SUB_F	13904	14014	14015
// OP_MUL_F	216	13869	14016
// OP_SUB_F	14015	14016	14017
// OP_STORE_F	14017	13868	0
// OP_BITAND	13870	258	14018
// OP_IFNOT	14018	3	0
// OP_MUL_F	13868	677	14019
// OP_STORE_F	14019	13868	0
// OP_ADD_F	13867	13991	14020
// OP_GT	13868	14020	14021
// OP_IFNOT	14021	8	0
// OP_STORE_F	13868	13867	0
// OP_ADDRESS	13866	561	14022
// OP_LOAD_ENT	13866	565	14023
// OP_STOREP_ENT	14023	14022	0
// OP_ADDRESS	13866	560	14024
// OP_LOAD_F	13866	564	14025
// OP_STOREP_F	14025	14024	0
// OP_LOAD_ENT	13866	567	14026
// OP_IFNOT	14026	27	0
// OP_LOAD_ENT	13866	567	14027
// OP_LOAD_F	14027	104	14028
// OP_EQ_F	14028	238	14029
// OP_IFNOT	14029	23	0
// OP_LOAD_ENT	28	567	14030
// OP_LOAD_ENT	13866	567	14031
// OP_NE_E	14030	14031	14032
// OP_LOAD_F	28	566	14033
// OP_LOAD_F	13866	566	14034
// OP_GT	14033	14034	14035
// OP_OR	14032	14035	14036
// OP_IFNOT	14036	15	0
// OP_LOAD_F	13866	566	14037
// OP_SUB_F	13904	14037	14038
// OP_MUL_F	216	13869	14039
// OP_SUB_F	14038	14039	14040
// OP_STORE_F	14040	13868	0
// OP_GT	13868	13867	14041
// OP_IFNOT	14041	8	0
// OP_STORE_F	13868	13867	0
// OP_ADDRESS	13866	561	14042
// OP_LOAD_ENT	13866	567	14043
// OP_STOREP_ENT	14043	14042	0
// OP_ADDRESS	13866	560	14044
// OP_LOAD_F	13866	566	14045
// OP_STOREP_F	14045	14044	0
// OP_RETURN	13867	0	0
// OP_DONE	0	0	0
float (entity e) cacheweight = 
{
    local float weight;
    local float tw;
    local float dis;
    local float it;
    weight = FALSE;
    
    if(e.lastbot == self)
    {
        
        if(e.lasttime > (time - FL_SWIM))
        {
            return weight;
        }
        
    }
    
    dis = vlen(self.origin - e.origin);
    it = self.items;
    e.pendingcache = world;
    e.pendinglen = FALSE;
    
    if(e.rocketcache)
    {
        
        if((e.rocketcache.solid == SOLID_TRIGGER) || (e.rocketcache.nextthink < (time + MOVETYPE_STEP)))
        {
            
            if((self.rocketcache != e.rocketcache) || (self.rocketlen > e.rocketlen))
            {
                weight = (1000000.000 - e.rocketlen) - (FL_SWIM * dis);
                
                if(it & IT_ROCKET_LAUNCHER)
                {
                    weight = weight * 0.500;
                }
                
                e.pendingcache = e.rocketcache;
                e.pendinglen = e.rocketlen;
            }
            
        }
        
    }
    
    
    if(e.lightningcache)
    {
        
        if((e.lightningcache.solid == SOLID_TRIGGER) || (e.lightningcache.nextthink < (time + MOVETYPE_STEP)))
        {
            
            if((self.lightningcache != e.lightningcache) || (self.lightninglen > e.lightninglen))
            {
                tw = (1000000.000 - e.lightninglen) - (FL_SWIM * dis);
                
                if(it & IT_LIGHTNING)
                {
                    tw = tw * 0.500;
                }
                
                
                if(tw > weight)
                {
                    weight = tw;
                    e.pendingcache = e.lightningcache;
                    e.pendinglen = e.lightninglen;
                }
                
            }
            
        }
        
    }
    
    
    if(self.armorvalue < 101.000)
    {
        
        if(e.armorcache)
        {
            
            if((e.armorcache.solid == SOLID_TRIGGER) || (e.armorcache.nextthink < (time + MOVETYPE_STEP)))
            {
                
                if((self.armorcache != e.armorcache) || (self.armorlen > e.armorlen))
                {
                    tw = (1000000.000 - e.armorlen) - (FL_SWIM * dis);
                    
                    if(tw > weight)
                    {
                        weight = tw;
                        e.pendingcache = e.armorcache;
                        e.pendinglen = e.armorlen;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(e.nailcache)
    {
        
        if((e.nailcache.solid == SOLID_TRIGGER) || (e.nailcache.nextthink < (time + FL_SWIM)))
        {
            
            if((self.nailcache != e.nailcache) || (self.naillen > e.naillen))
            {
                tw = (1000000.000 - e.naillen) - (FL_SWIM * dis);
                
                if(it & IT_SUPER_NAILGUN)
                {
                    tw = tw * 0.500;
                }
                
                
                if(tw > (weight + 2500.000))
                {
                    weight = tw;
                    e.pendingcache = e.nailcache;
                    e.pendinglen = e.naillen;
                }
                
            }
            
        }
        
    }
    
    
    if(e.grenadecache)
    {
        
        if((e.grenadecache.solid == SOLID_TRIGGER) || (e.grenadecache.nextthink < (time + FL_SWIM)))
        {
            
            if((self.grenadecache != e.grenadecache) || (self.grenadelen > e.grenadelen))
            {
                tw = (1000000.000 - e.grenadelen) - (FL_SWIM * dis);
                
                if(it & IT_GRENADE_LAUNCHER)
                {
                    tw = tw * 0.500;
                }
                
                
                if(tw > (weight + 2500.000))
                {
                    weight = tw;
                    e.pendingcache = e.grenadecache;
                    e.pendinglen = e.grenadelen;
                }
                
            }
            
        }
        
    }
    
    
    if(e.powerupcache)
    {
        
        if(e.powerupcache.solid == SOLID_TRIGGER)
        {
            
            if((self.powerupcache != e.powerupcache) || (self.poweruplen > e.poweruplen))
            {
                tw = (1000000.000 - e.poweruplen) - (FL_SWIM * dis);
                
                if(tw > weight)
                {
                    weight = tw;
                    e.pendingcache = e.powerupcache;
                    e.pendinglen = e.poweruplen;
                }
                
            }
            
        }
        
    }
    
    return weight;
};

// pathweight
// function begins at statement 23749, parm_start=14047
// OP_STORE_F	577	14049	0
// OP_STORE_V	14047	4	0
// OP_CALL1	13600	0	0
// OP_IFNOT	1	57	0
// OP_STORE_V	14047	4	0
// OP_CALL1	13865	0	0
// OP_STORE_F	1	14049	0
// OP_GT	14049	213	14053
// OP_IFNOT	14053	2	0
// OP_RETURN	14049	0	0
// OP_LOAD_V	28	105	14054
// OP_SUB_V	14054	14050	14057
// OP_STORE_V	14057	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14049	0
// OP_MUL_F	756	580	14060
// OP_SUB_F	14060	14049	14061
// OP_STORE_F	14061	14049	0
// OP_LOAD_ENT	14047	549	14062
// OP_EQ_E	14062	28	14063
// OP_IFNOT	14063	22	0
// OP_LOAD_F	14047	550	14064
// OP_SUB_F	31	231	14065
// OP_GT	14064	14065	14066
// OP_IFNOT	14066	3	0
// OP_STORE_F	577	14049	0
// OP_GOTO	15	0	0
// OP_LOAD_F	14047	550	14067
// OP_SUB_F	31	581	14068
// OP_GT	14067	14068	14069
// OP_IFNOT	14069	11	0
// OP_MUL_F	216	580	14070
// OP_SUB_F	14049	14070	14071
// OP_MUL_F	1770	580	14072
// OP_LOAD_F	14047	550	14073
// OP_ADD_F	581	14073	14074
// OP_SUB_F	14074	31	14075
// OP_MUL_F	14072	14075	14076
// OP_DIV_F	14076	581	14077
// OP_SUB_F	14071	14077	14078
// OP_STORE_F	14078	14049	0
// OP_GOTO	19	0	0
// OP_IFNOT	37	18	0
// OP_LOAD_ENT	14047	549	14079
// OP_LOAD_F	14079	184	14080
// OP_LOAD_F	28	184	14081
// OP_EQ_F	14080	14081	14082
// OP_IFNOT	14082	13	0
// OP_LOAD_F	14047	550	14083
// OP_SUB_F	31	14084	14085
// OP_GT	14083	14085	14086
// OP_IFNOT	14086	3	0
// OP_STORE_F	577	14049	0
// OP_GOTO	7	0	0
// OP_LOAD_F	14047	550	14087
// OP_SUB_F	31	216	14088
// OP_GT	14087	14088	14089
// OP_IFNOT	14089	3	0
// OP_SUB_F	14049	580	14090
// OP_STORE_F	14090	14049	0
// OP_RETURN	14049	0	0
// OP_DONE	0	0	0
float (entity e) pathweight = 
{
    local float OK_HIGH;
    local float weight;
    local vector org;
    weight = DONT_WANT;
    
    if(TrueReachable(e))
    {
        weight = cacheweight(e);
        
        if(weight > FALSE)
        {
            return weight;
        }
        
        weight = vlen(self.origin - org);
        weight = (50.000 * SEARCH_RADIUS) - weight;
        if(e.lastbot == self)
        {
            if(e.lasttime > (time - MOVETYPE_TOSS))
            {
                weight = DONT_WANT;
            }
            else
            {
                
                if(e.lasttime > (time - LOOPTIME))
                {
                    weight = (weight - (FL_SWIM * SEARCH_RADIUS)) - (((45.000 * SEARCH_RADIUS) * ((LOOPTIME + e.lasttime) - time)) / LOOPTIME);
                }
                
            }
            
        }
        else
        {
            
            if(teamplay)
            {
                
                if(e.lastbot.team == self.team)
                {
                    if(e.lasttime > (time - 1.200))
                    {
                        weight = DONT_WANT;
                    }
                    else
                    {
                        
                        if(e.lasttime > (time - FL_SWIM))
                        {
                            weight = weight - SEARCH_RADIUS;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return weight;
};

// goForAir
// function begins at statement 23811, parm_start=14092
// OP_IFNOT	604	9	0
// OP_LOAD_S	28	571	14096
// OP_STORE_V	14096	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	180	14097
// OP_STORE_V	14097	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14098	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	14099
// OP_STORE_V	14099	14092	0
// OP_ADD_F	14094	14102	14103
// OP_STORE_F	14103	14094	0
// OP_LOAD_V	28	105	14104
// OP_STORE_V	14104	4	0
// OP_STORE_V	14092	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NOT_F	79	0	14107
// OP_IFNOT	14107	6	0
// OP_STORE_V	214	4	0
// OP_CALL1	13768	0	0
// OP_STORE_V	1	14092	0
// OP_ADD_F	14094	2356	14108
// OP_STORE_F	14108	14094	0
// OP_LOAD_ENT	28	194	14109
// OP_STORE_ENT	14109	14095	0
// OP_ADDRESS	14095	194	14110
// OP_STOREP_ENT	14095	14110	0
// OP_LOAD_ENT	28	194	14111
// OP_LOAD_S	14111	129	14112
// OP_NE_S	14112	12122	14113
// OP_IFNOT	14113	3	0
// OP_STORE_V	14114	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	14095	4	0
// OP_STORE_V	14092	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () goForAir = 
{
    local vector bestorg;
    local entity botTarget;
    
    if(VERBOSEBOT)
    {
        dprint(self.teamname);
        dprint(self.netname);
        dprint(" needs air!\n");
    }
    
    bestorg = self.origin;
    bestorg_z = 0.000 + 800.000;
    traceline(self.origin, bestorg, TRUE, self);
    
    if(!trace_inopen)
    {
        bestorg = chooseRoamTarget(TRUE);
        bestorg_z = 0.000 + 200.000;
    }
    
    botTarget = self.goalentity;
    botTarget.goalentity = botTarget;
    
    if(self.goalentity.classname != "BotTarget")
    {
        objerror("bad bot target in botgoal! 1\n");
    }
    
    setorigin(botTarget, bestorg);
};

// ageCache
// function begins at statement 23851, parm_start=14116
// OP_LOAD_ENT	28	555	14117
// OP_IFNOT	14117	5	0
// OP_ADDRESS	28	554	14118
// OP_LOAD_F	28	554	14119
// OP_ADD_F	14119	214	14120
// OP_STOREP_F	14120	14118	0
// OP_LOAD_ENT	28	557	14121
// OP_IFNOT	14121	5	0
// OP_ADDRESS	28	556	14122
// OP_LOAD_F	28	556	14123
// OP_ADD_F	14123	214	14124
// OP_STOREP_F	14124	14122	0
// OP_LOAD_ENT	28	559	14125
// OP_IFNOT	14125	5	0
// OP_ADDRESS	28	558	14126
// OP_LOAD_F	28	558	14127
// OP_ADD_F	14127	214	14128
// OP_STOREP_F	14128	14126	0
// OP_LOAD_ENT	28	567	14129
// OP_IFNOT	14129	5	0
// OP_ADDRESS	28	566	14130
// OP_LOAD_F	28	566	14131
// OP_ADD_F	14131	214	14132
// OP_STOREP_F	14132	14130	0
// OP_LOAD_ENT	28	563	14133
// OP_IFNOT	14133	5	0
// OP_ADDRESS	28	562	14134
// OP_LOAD_F	28	562	14135
// OP_ADD_F	14135	214	14136
// OP_STOREP_F	14136	14134	0
// OP_LOAD_ENT	28	565	14137
// OP_IFNOT	14137	5	0
// OP_ADDRESS	28	564	14138
// OP_LOAD_F	28	564	14139
// OP_ADD_F	14139	214	14140
// OP_STOREP_F	14140	14138	0
// OP_LOAD_F	14116	104	14141
// OP_EQ_F	14141	238	14142
// OP_IFNOT	14142	36	0
// OP_LOAD_ENT	28	555	14143
// OP_EQ_E	14143	14116	14144
// OP_IFNOT	14144	4	0
// OP_ADDRESS	28	554	14145
// OP_STOREP_F	214	14145	0
// OP_GOTO	30	0	0
// OP_LOAD_ENT	28	557	14146
// OP_EQ_E	14146	14116	14147
// OP_IFNOT	14147	4	0
// OP_ADDRESS	28	556	14148
// OP_STOREP_F	214	14148	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	28	559	14149
// OP_EQ_E	14149	14116	14150
// OP_IFNOT	14150	4	0
// OP_ADDRESS	28	558	14151
// OP_STOREP_F	214	14151	0
// OP_GOTO	18	0	0
// OP_LOAD_ENT	28	567	14152
// OP_EQ_E	14152	14116	14153
// OP_IFNOT	14153	4	0
// OP_ADDRESS	28	566	14154
// OP_STOREP_F	214	14154	0
// OP_GOTO	12	0	0
// OP_LOAD_ENT	28	563	14155
// OP_EQ_E	14155	14116	14156
// OP_IFNOT	14156	4	0
// OP_ADDRESS	28	562	14157
// OP_STOREP_F	214	14157	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	28	565	14158
// OP_EQ_E	14158	14116	14159
// OP_IFNOT	14159	3	0
// OP_ADDRESS	28	564	14160
// OP_STOREP_F	214	14160	0
// OP_DONE	0	0	0
void (entity item) ageCache = 
{
    
    if(self.rocketcache)
    {
        self.rocketlen = self.rocketlen + TRUE;
    }
    
    
    if(self.lightningcache)
    {
        self.lightninglen = self.lightninglen + TRUE;
    }
    
    
    if(self.armorcache)
    {
        self.armorlen = self.armorlen + TRUE;
    }
    
    
    if(self.powerupcache)
    {
        self.poweruplen = self.poweruplen + TRUE;
    }
    
    
    if(self.nailcache)
    {
        self.naillen = self.naillen + TRUE;
    }
    
    
    if(self.grenadecache)
    {
        self.grenadelen = self.grenadelen + TRUE;
    }
    
    
    if(item.solid == SOLID_TRIGGER)
    {
        if(self.rocketcache == item)
        {
            self.rocketlen = TRUE;
        }
        else
        {
            if(self.lightningcache == item)
            {
                self.lightninglen = TRUE;
            }
            else
            {
                if(self.armorcache == item)
                {
                    self.armorlen = TRUE;
                }
                else
                {
                    if(self.powerupcache == item)
                    {
                        self.poweruplen = TRUE;
                    }
                    else
                    {
                        if(self.nailcache == item)
                        {
                            self.naillen = TRUE;
                        }
                        else
                        {
                            
                            if(self.grenadecache == item)
                            {
                                self.grenadelen = TRUE;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// resetCache
// function begins at statement 23926, parm_start=14162
// OP_ADDRESS	28	561	14162
// OP_STOREP_ENT	30	14162	0
// OP_ADDRESS	28	560	14163
// OP_STOREP_F	213	14163	0
// OP_LOAD_ENT	28	555	14164
// OP_IFNOT	14164	9	0
// OP_LOAD_ENT	28	555	14165
// OP_LOAD_F	14165	104	14166
// OP_EQ_F	14166	237	14167
// OP_IFNOT	14167	5	0
// OP_ADDRESS	28	555	14168
// OP_STOREP_ENT	30	14168	0
// OP_ADDRESS	28	554	14169
// OP_STOREP_F	213	14169	0
// OP_LOAD_ENT	28	557	14170
// OP_IFNOT	14170	9	0
// OP_LOAD_ENT	28	557	14171
// OP_LOAD_F	14171	104	14172
// OP_EQ_F	14172	237	14173
// OP_IFNOT	14173	5	0
// OP_ADDRESS	28	557	14174
// OP_STOREP_ENT	30	14174	0
// OP_ADDRESS	28	556	14175
// OP_STOREP_F	213	14175	0
// OP_LOAD_ENT	28	559	14176
// OP_IFNOT	14176	9	0
// OP_LOAD_ENT	28	559	14177
// OP_LOAD_F	14177	104	14178
// OP_EQ_F	14178	237	14179
// OP_IFNOT	14179	5	0
// OP_ADDRESS	28	559	14180
// OP_STOREP_ENT	30	14180	0
// OP_ADDRESS	28	558	14181
// OP_STOREP_F	213	14181	0
// OP_LOAD_ENT	28	567	14182
// OP_IFNOT	14182	9	0
// OP_LOAD_ENT	28	567	14183
// OP_LOAD_F	14183	104	14184
// OP_EQ_F	14184	237	14185
// OP_IFNOT	14185	5	0
// OP_ADDRESS	28	567	14186
// OP_STOREP_ENT	30	14186	0
// OP_ADDRESS	28	566	14187
// OP_STOREP_F	213	14187	0
// OP_LOAD_ENT	28	563	14188
// OP_IFNOT	14188	9	0
// OP_LOAD_ENT	28	563	14189
// OP_LOAD_F	14189	104	14190
// OP_EQ_F	14190	237	14191
// OP_IFNOT	14191	5	0
// OP_ADDRESS	28	563	14192
// OP_STOREP_ENT	30	14192	0
// OP_ADDRESS	28	562	14193
// OP_STOREP_F	213	14193	0
// OP_LOAD_ENT	28	565	14194
// OP_IFNOT	14194	9	0
// OP_LOAD_ENT	28	565	14195
// OP_LOAD_F	14195	104	14196
// OP_EQ_F	14196	237	14197
// OP_IFNOT	14197	5	0
// OP_ADDRESS	28	565	14198
// OP_STOREP_ENT	30	14198	0
// OP_ADDRESS	28	564	14199
// OP_STOREP_F	213	14199	0
// OP_DONE	0	0	0
void () resetCache = 
{
    self.pendingcache = world;
    self.pendinglen = FALSE;
    
    if(self.rocketcache)
    {
        
        if(self.rocketcache.solid == SOLID_NOT)
        {
            self.rocketcache = world;
            self.rocketlen = FALSE;
        }
        
    }
    
    
    if(self.lightningcache)
    {
        
        if(self.lightningcache.solid == SOLID_NOT)
        {
            self.lightningcache = world;
            self.lightninglen = FALSE;
        }
        
    }
    
    
    if(self.armorcache)
    {
        
        if(self.armorcache.solid == SOLID_NOT)
        {
            self.armorcache = world;
            self.armorlen = FALSE;
        }
        
    }
    
    
    if(self.powerupcache)
    {
        
        if(self.powerupcache.solid == SOLID_NOT)
        {
            self.powerupcache = world;
            self.poweruplen = FALSE;
        }
        
    }
    
    
    if(self.nailcache)
    {
        
        if(self.nailcache.solid == SOLID_NOT)
        {
            self.nailcache = world;
            self.naillen = FALSE;
        }
        
    }
    
    
    if(self.grenadecache)
    {
        
        if(self.grenadecache.solid == SOLID_NOT)
        {
            self.grenadecache = world;
            self.grenadelen = FALSE;
        }
        
    }
    
};

// updateBotCache
// function begins at statement 23991, parm_start=14201
// OP_LOAD_ENT	28	561	14201
// OP_LOAD_FNC	14201	525	14202
// OP_IFNOT	14202	5	0
// OP_LOAD_ENT	28	561	14203
// OP_LOAD_FNC	14203	525	14204
// OP_CALL0	14204	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	14205	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	561	14206
// OP_LOAD_S	14206	129	14207
// OP_STORE_V	14207	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	561	14208
// OP_STOREP_ENT	30	14208	0
// OP_ADDRESS	28	560	14209
// OP_STOREP_F	213	14209	0
// OP_DONE	0	0	0
void () updateBotCache = 
{
    if(self.pendingcache.th_update)
    {
        self.pendingcache.th_update();
    }
    else
    {
        dprint("Error - no think update for ");
        dprint(self.pendingcache.classname);
        dprint("\n");
    }
    
    self.pendingcache = world;
    self.pendinglen = FALSE;
};

// aibot_chooseGoal
// function begins at statement 24011, parm_start=14210
// OP_LOAD_ENT	28	194	14225
// OP_STORE_ENT	14225	14223	0
// OP_LOAD_F	28	365	14226
// OP_BITAND	14226	597	14227
// OP_IFNOT	14227	8	0
// OP_ADDRESS	28	365	14228
// OP_LOAD_F	28	365	14229
// OP_LOAD_F	28	365	14230
// OP_BITAND	14230	595	14231
// OP_SUB_F	14229	14231	14232
// OP_SUB_F	14232	597	14233
// OP_STOREP_F	14233	14228	0
// OP_LOAD_F	28	365	14234
// OP_BITAND	14234	602	14235
// OP_IFNOT	14235	5	0
// OP_ADDRESS	28	365	14236
// OP_LOAD_F	28	365	14237
// OP_SUB_F	14237	602	14238
// OP_STOREP_F	14238	14236	0
// OP_ADDRESS	28	365	14239
// OP_LOAD_F	28	365	14240
// OP_ADD_F	14240	214	14241
// OP_STOREP_F	14241	14239	0
// OP_LOAD_ENT	14223	194	14242
// OP_STORE_ENT	14242	14222	0
// OP_ADDRESS	28	366	14243
// OP_ADD_F	31	229	14244
// OP_STOREP_F	14244	14243	0
// OP_STORE_F	577	14216	0
// OP_STORE_F	213	14220	0
// OP_LOAD_F	28	391	14245
// OP_ADD_F	31	234	14246
// OP_LT	14245	14246	14247
// OP_IFNOT	14247	3	0
// OP_CALL0	14091	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	365	14248
// OP_BITAND	14248	595	14249
// OP_LT	14249	230	14250
// OP_IFNOT	14250	107	0
// OP_LOAD_V	28	105	14251
// OP_STORE_V	14251	4	0
// OP_STORE_V	580	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	14221	0
// OP_IFNOT	14221	101	0
// OP_STORE_F	577	14217	0
// OP_EQ_E	14221	14222	14254
// OP_IFNOT	14254	3	0
// OP_STORE_F	577	14217	0
// OP_GOTO	26	0	0
// OP_LOAD_F	14221	552	14255
// OP_IFNOT	14255	3	0
// OP_STORE_F	577	14217	0
// OP_GOTO	22	0	0
// OP_LOAD_F	14221	104	14256
// OP_EQ_F	14256	237	14257
// OP_IFNOT	14257	3	0
// OP_STORE_F	577	14217	0
// OP_GOTO	17	0	0
// OP_LOAD_F	14221	104	14258
// OP_EQ_F	14258	238	14259
// OP_IFNOT	14259	11	0
// OP_LOAD_F	14221	526	14260
// OP_IFNOT	14260	5	0
// OP_STORE_V	14221	4	0
// OP_CALL1	13735	0	0
// OP_STORE_F	1	14217	0
// OP_GOTO	4	0	0
// OP_STORE_V	14221	4	0
// OP_CALL1	13746	0	0
// OP_STORE_F	1	14217	0
// OP_GOTO	4	0	0
// OP_STORE_V	14221	4	0
// OP_CALL1	13708	0	0
// OP_STORE_F	1	14217	0
// OP_SUB_F	576	230	14261
// OP_GT	14217	14261	14262
// OP_IFNOT	14262	11	0
// OP_ADD_F	575	216	14263
// OP_LT	14217	14263	14264
// OP_IFNOT	14264	8	0
// OP_LOAD_F	14221	97	14265
// OP_ADD_F	14265	608	14266
// OP_LOAD_F	28	97	14267
// OP_LT	14266	14267	14268
// OP_IFNOT	14268	3	0
// OP_SUB_F	576	230	14269
// OP_STORE_F	14269	14217	0
// OP_GT	14217	577	14270
// OP_IFNOT	14270	53	0
// OP_LOAD_V	14221	94	14271
// OP_LOAD_V	14221	98	14274
// OP_ADD_V	14271	14274	14277
// OP_MUL_VF	14277	677	14280
// OP_STORE_V	14280	14210	0
// OP_LOAD_F	14221	97	14283
// OP_ADD_F	14283	214	14284
// OP_STORE_F	14284	14212	0
// OP_LOAD_S	14221	129	14285
// OP_EQ_S	14285	7808	14286
// OP_LOAD_S	14221	129	14287
// OP_EQ_S	14287	14288	14289
// OP_OR	14286	14289	14290
// OP_LOAD_S	14221	129	14291
// OP_EQ_S	14291	7946	14292
// OP_OR	14290	14292	14293
// OP_IFNOT	14293	4	0
// OP_LOAD_F	14221	101	14294
// OP_ADD_F	14294	214	14295
// OP_STORE_F	14295	14212	0
// OP_EQ_F	14217	14216	14296
// OP_IFNOT	14296	25	0
// OP_LOAD_V	28	105	14297
// OP_SUB_V	14297	14213	14300
// OP_STORE_V	14300	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14218	0
// OP_LOAD_V	28	105	14303
// OP_SUB_V	14303	14210	14306
// OP_STORE_V	14306	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	14219	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	230	14309
// OP_ADD_F	14217	14309	14310
// OP_SUB_F	14310	216	14311
// OP_STORE_F	14311	14217	0
// OP_LT	14218	14219	14312
// OP_IFNOT	14312	3	0
// OP_SUB_F	14217	214	14313
// OP_STORE_F	14313	14217	0
// OP_GT	14217	14216	14314
// OP_IFNOT	14314	4	0
// OP_STORE_F	14216	14217	0
// OP_SUB_F	14216	214	14315
// OP_STORE_F	14315	14216	0
// OP_GT	14217	14216	14316
// OP_IFNOT	14316	5	0
// OP_ADDRESS	14223	194	14317
// OP_STOREP_ENT	14221	14317	0
// OP_STORE_F	14217	14216	0
// OP_STORE_V	14210	14213	0
// OP_LOAD_ENT	14221	164	14318
// OP_STORE_ENT	14318	14221	0
// OP_GOTO	-100	0	0
// OP_CALL0	14161	0	0
// OP_SUB_F	576	228	14319
// OP_LT	14216	14319	14320
// OP_IFNOT	14320	55	0
// OP_GT	14216	577	14321
// OP_IFNOT	14321	3	0
// OP_SUB_F	13904	14322	14323
// OP_STORE_F	14323	14216	0
// OP_LOAD_V	28	105	14324
// OP_STORE_V	14324	4	0
// OP_STORE_V	580	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	14221	0
// OP_STORE_F	577	14216	0
// OP_IFNOT	14221	44	0
// OP_LOAD_F	14221	552	14327
// OP_EQ_F	14327	583	14328
// OP_LOAD_F	14221	552	14329
// OP_EQ_F	14329	587	14330
// OP_OR	14328	14330	14331
// OP_IFNOT	14331	35	0
// OP_EQ_E	14221	14222	14332
// OP_IFNOT	14332	3	0
// OP_STORE_F	577	14217	0
// OP_GOTO	4	0	0
// OP_STORE_V	14221	4	0
// OP_CALL1	14046	0	0
// OP_STORE_F	1	14217	0
// OP_GT	14217	14216	14333
// OP_IFNOT	14333	26	0
// OP_STORE_F	14217	14216	0
// OP_ADDRESS	14223	194	14334
// OP_STOREP_ENT	14221	14334	0
// OP_ADDRESS	28	561	14335
// OP_LOAD_ENT	14221	561	14336
// OP_STOREP_ENT	14336	14335	0
// OP_ADDRESS	28	560	14337
// OP_LOAD_F	14221	560	14338
// OP_STOREP_F	14338	14337	0
// OP_LOAD_V	14221	105	14339
// OP_STORE_V	14339	14213	0
// OP_NOT_V	14213	0	14342
// OP_IFNOT	14342	9	0
// OP_LOAD_V	14221	94	14343
// OP_LOAD_V	14221	98	14346
// OP_ADD_V	14343	14346	14349
// OP_MUL_VF	14349	677	14352
// OP_STORE_V	14352	14213	0
// OP_LOAD_F	14221	97	14355
// OP_ADD_F	14355	214	14356
// OP_STORE_F	14356	14215	0
// OP_ADDRESS	28	365	14357
// OP_LOAD_F	28	365	14358
// OP_BITOR	14358	597	14359
// OP_STOREP_F	14359	14357	0
// OP_LOAD_ENT	14221	164	14360
// OP_STORE_ENT	14360	14221	0
// OP_GOTO	-43	0	0
// OP_GT	14216	577	14361
// OP_IFNOT	14361	12	0
// OP_LOAD_ENT	28	561	14362
// OP_IFNOT	14362	3	0
// OP_CALL0	14200	0	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	14223	194	14363
// OP_LOAD_S	14363	129	14364
// OP_NE_S	14364	5883	14365
// OP_IFNOT	14365	4	0
// OP_LOAD_ENT	14223	194	14366
// OP_STORE_V	14366	4	0
// OP_CALL1	14115	0	0
// OP_LE	14216	577	14367
// OP_IFNOT	14367	13	0
// OP_ADDRESS	14223	194	14368
// OP_STOREP_ENT	14223	14368	0
// OP_STORE_V	213	4	0
// OP_CALL1	13768	0	0
// OP_STORE_V	1	14213	0
// OP_ADDRESS	28	365	14369
// OP_LOAD_F	28	365	14370
// OP_BITOR	14370	597	14371
// OP_STOREP_F	14371	14369	0
// OP_ADDRESS	28	366	14372
// OP_ADD_F	31	216	14373
// OP_STOREP_F	14373	14372	0
// OP_IFNOT	604	15	0
// OP_LOAD_S	28	571	14374
// OP_STORE_V	14374	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	180	14375
// OP_STORE_V	14375	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14376	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	14223	194	14377
// OP_LOAD_S	14377	129	14378
// OP_STORE_V	14378	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	14223	194	14379
// OP_IFNOT	14379	10	0
// OP_LOAD_ENT	14223	194	14380
// OP_NE_E	14380	14223	14381
// OP_IFNOT	14381	7	0
// OP_LOAD_ENT	14223	194	14382
// OP_ADDRESS	14382	549	14383
// OP_STOREP_ENT	28	14383	0
// OP_LOAD_ENT	14223	194	14384
// OP_ADDRESS	14384	550	14385
// OP_STOREP_F	31	14385	0
// OP_LOAD_ENT	14223	194	14386
// OP_LOAD_S	14386	129	14387
// OP_EQ_S	14387	12175	14388
// OP_IFNOT	14388	11	0
// OP_LOAD_ENT	14223	194	14389
// OP_LOAD_V	14389	438	14390
// OP_SUB_V	14213	14390	14393
// OP_LOAD_ENT	14223	194	14396
// OP_LOAD_V	14396	438	14397
// OP_STORE_V	14397	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	219	1	14400
// OP_SUB_V	14393	14400	14403
// OP_STORE_V	14403	14213	0
// OP_LOAD_S	14223	129	14406
// OP_NE_S	14406	12122	14407
// OP_IFNOT	14407	3	0
// OP_STORE_V	14408	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	14223	4	0
// OP_STORE_V	14213	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () aibot_chooseGoal = 
{
    local vector org;
    local vector bestorg;
    local float best;
    local float weight;
    local float d1;
    local float d2;
    local float OK_NOTVIS;
    local entity e;
    local entity current;
    local entity botTarget;
    local string tmp;
    botTarget = self.goalentity;
    
    if(self.lefty & FAR_SEEK)
    {
        self.lefty = (self.lefty - (self.lefty & LOCAL_TIME)) - FAR_SEEK;
    }
    
    
    if(self.lefty & ONTRAIN)
    {
        self.lefty = self.lefty - ONTRAIN;
    }
    
    self.lefty = self.lefty + TRUE;
    current = botTarget.goalentity;
    self.search_time = time + MOVETYPE_STEP;
    best = DONT_WANT;
    OK_NOTVIS = FALSE;
    
    if(self.air_finished < (time + MOVETYPE_FLYMISSILE))
    {
        goForAir();
        return;
    }
    
    
    if((self.lefty & LOCAL_TIME) < MOVETYPE_FLY)
    {
        e = findradius(self.origin, SEARCH_RADIUS);
        
        while(e)
        {
            weight = DONT_WANT;
            if(e == current)
            {
                weight = DONT_WANT;
            }
            else
            {
                if(e.pathtype)
                {
                    weight = DONT_WANT;
                }
                else
                {
                    if(e.solid == SOLID_NOT)
                    {
                        weight = DONT_WANT;
                    }
                    else
                    {
                        if(e.solid == SOLID_TRIGGER)
                        {
                            if(e.istrigger)
                            {
                                weight = trigweight(e);
                            }
                            else
                            {
                                weight = itemweight(e);
                            }
                            
                        }
                        else
                        {
                            weight = thingweight(e);
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(weight > (KINDA_WANT - MOVETYPE_FLY))
            {
                
                if(weight < (WANT + FL_SWIM))
                {
                    
                    if((e.absmin_z + MAXJUMP) < self.absmin_z)
                    {
                        weight = KINDA_WANT - MOVETYPE_FLY;
                    }
                    
                }
                
            }
            
            
            if(weight > DONT_WANT)
            {
                org = (e.absmin + e.absmax) * 0.500;
                org_z = e.absmin_z + TRUE;
                
                if(((e.classname == "plat") || (e.classname == "func_plat")) || (e.classname == "train"))
                {
                    org_z = e.absmax_z + TRUE;
                }
                
                
                if(weight == best)
                {
                    d1 = vlen(self.origin - bestorg);
                    d2 = vlen(self.origin - org);
                    weight = (weight + (random() * MOVETYPE_FLY)) - FL_SWIM;
                    
                    if(d1 < d2)
                    {
                        weight = weight - TRUE;
                    }
                    
                    
                    if(weight > best)
                    {
                        weight = best;
                        best = best - TRUE;
                    }
                    
                }
                
                
                if(weight > best)
                {
                    botTarget.goalentity = e;
                    best = weight;
                    bestorg = org;
                }
                
            }
            
            e = e.chain;
        }
        
    }
    
    resetCache();
    
    if(best < (KINDA_WANT - MOVETYPE_WALK))
    {
        
        if(best > DONT_WANT)
        {
            best = 1000000.000 - 900.000;
        }
        
        e = findradius(self.origin, SEARCH_RADIUS);
        best = DONT_WANT;
        
        while(e)
        {
            
            if((e.pathtype == DROPPED) || (e.pathtype == TELEPORT))
            {
                if(e == current)
                {
                    weight = DONT_WANT;
                }
                else
                {
                    weight = pathweight(e);
                }
                
                
                if(weight > best)
                {
                    best = weight;
                    botTarget.goalentity = e;
                    self.pendingcache = e.pendingcache;
                    self.pendinglen = e.pendinglen;
                    bestorg = e.origin;
                    
                    if(!bestorg)
                    {
                        bestorg = (e.absmin + e.absmax) * 0.500;
                        bestorg_z = e.absmin_z + TRUE;
                    }
                    
                    self.lefty = self.lefty | FAR_SEEK;
                }
                
            }
            
            e = e.chain;
        }
        
    }
    
    
    if(best > DONT_WANT)
    {
        if(self.pendingcache)
        {
            updateBotCache();
        }
        else
        {
            
            if(botTarget.goalentity.classname != "BotPath")
            {
                ageCache(botTarget.goalentity);
            }
            
        }
        
    }
    
    
    if(best <= DONT_WANT)
    {
        botTarget.goalentity = botTarget;
        bestorg = chooseRoamTarget(FALSE);
        self.lefty = self.lefty | FAR_SEEK;
        self.search_time = time + FL_SWIM;
    }
    
    
    if(VERBOSEBOT)
    {
        dprint(self.teamname);
        dprint(self.netname);
        dprint(" going after ");
        dprint(botTarget.goalentity.classname);
        dprint("\n");
    }
    
    
    if(botTarget.goalentity)
    {
        
        if(botTarget.goalentity != botTarget)
        {
            botTarget.goalentity.lastbot = self;
            botTarget.goalentity.lasttime = time;
        }
        
    }
    
    
    if(botTarget.goalentity.classname == "func_button")
    {
        bestorg = (bestorg - botTarget.goalentity.pos2) - (FL_MONSTER * normalize(botTarget.goalentity.pos2));
    }
    
    
    if(botTarget.classname != "BotTarget")
    {
        objerror("bad bot target in botgoal! 2\n");
    }
    
    setorigin(botTarget, bestorg);
};

// RunAwayWeight
// function begins at statement 24291, parm_start=14410
// OP_STORE_V	14410	4	0
// OP_CALL1	13600	0	0
// OP_NOT_F	1	0	14412
// OP_IFNOT	14412	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	14413
// OP_LOAD_V	14413	105	14414
// OP_LOAD_ENT	28	181	14417
// OP_LOAD_V	14417	166	14418
// OP_ADD_V	14414	14418	14421
// OP_STORE_V	14421	4	0
// OP_LOAD_V	14410	105	14424
// OP_STORE_V	14424	7	0
// OP_STORE_V	214	10	0
// OP_LOAD_ENT	28	181	14427
// OP_STORE_V	14427	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	14428
// OP_IFNOT	14428	2	0
// OP_STORE_F	575	14411	0
// OP_AND	79	80	14429
// OP_IFNOT	14429	3	0
// OP_SUB_F	575	230	14430
// OP_STORE_F	14430	14411	0
// OP_LOAD_ENT	28	181	14431
// OP_LOAD_V	14431	105	14432
// OP_LOAD_V	14410	105	14435
// OP_SUB_V	14432	14435	14438
// OP_STORE_V	14438	4	0
// OP_CALL1	457	0	0
// OP_MUL_F	993	1	14441
// OP_ADD_F	14411	14441	14442
// OP_STORE_F	14442	14411	0
// OP_CALL0	452	0	0
// OP_MUL_F	576	1	14443
// OP_ADD_F	14411	14443	14444
// OP_STORE_F	14444	14411	0
// OP_RETURN	14411	0	0
// OP_DONE	0	0	0
float (entity e) RunAwayWeight = 
{
    local float weight;
    
    if(!TrueReachable(e))
    {
        return FALSE;
    }
    
    traceline(self.enemy.origin + self.enemy.view_ofs, e.origin, TRUE, self.enemy);
    
    if(trace_fraction != TRUE)
    {
        weight = WANT;
    }
    
    
    if(trace_inopen && trace_inwater)
    {
        weight = WANT - MOVETYPE_FLY;
    }
    
    weight = weight + (0.100 * (vlen(self.enemy.origin - e.origin)));
    weight = weight + (KINDA_WANT * random());
    return weight;
};

void (entity en) RouteToEnemy;
// BestChaseRoute
// function begins at statement 24330, parm_start=14446
// OP_STORE_V	14447	4	0
// OP_CALL1	14445	0	0
// OP_LOAD_V	14446	105	14454
// OP_STORE_V	14454	4	0
// OP_STORE_V	580	7	0
// OP_CALL2	467	0	0
// OP_STORE_ENT	1	14448	0
// OP_STORE_F	13904	14452	0
// OP_STORE_ENT	14447	14449	0
// OP_STORE_ENT	28	14450	0
// OP_STORE_ENT	14446	28	0
// OP_IFNOT	14448	30	0
// OP_LOAD_F	14448	552	14457
// OP_EQ_F	14457	583	14458
// OP_LOAD_F	14448	552	14459
// OP_EQ_F	14459	587	14460
// OP_OR	14458	14460	14461
// OP_IFNOT	14461	21	0
// OP_STORE_F	13904	14451	0
// OP_LOAD_ENT	14448	569	14462
// OP_EQ_E	14462	14447	14463
// OP_IFNOT	14463	13	0
// OP_STORE_V	14448	4	0
// OP_CALL1	13600	0	0
// OP_IFNOT	1	10	0
// OP_LOAD_F	14448	568	14464
// OP_LOAD_V	28	105	14465
// OP_LOAD_V	14448	105	14468
// OP_SUB_V	14465	14468	14471
// OP_STORE_V	14471	4	0
// OP_CALL1	457	0	0
// OP_MUL_F	1	677	14474
// OP_ADD_F	14464	14474	14475
// OP_STORE_F	14475	14451	0
// OP_LT	14451	14452	14476
// OP_IFNOT	14476	3	0
// OP_STORE_F	14451	14452	0
// OP_STORE_ENT	14448	14449	0
// OP_LOAD_ENT	14448	164	14477
// OP_STORE_ENT	14477	14448	0
// OP_GOTO	-29	0	0
// OP_STORE_ENT	14450	28	0
// OP_RETURN	14449	0	0
// OP_DONE	0	0	0
entity (entity chaser, entity en) BestChaseRoute = 
{
    local entity e;
    local entity p;
    local entity tmp;
    local float weight;
    local float best;
    local string ts;
    RouteToEnemy(en);
    e = findradius(chaser.origin, SEARCH_RADIUS);
    best = 1000000.000;
    p = en;
    tmp = self;
    self = chaser;
    
    while(e)
    {
        
        if((e.pathtype == DROPPED) || (e.pathtype == TELEPORT))
        {
            weight = 1000000.000;
            
            if(e.enemycache == en)
            {
                
                if(TrueReachable(e))
                {
                    weight = e.enemylen + ((vlen(self.origin - e.origin)) * 0.500);
                }
                
            }
            
            
            if(weight < best)
            {
                best = weight;
                p = e;
            }
            
        }
        
        e = e.chain;
    }
    
    self = tmp;
    return p;
};

