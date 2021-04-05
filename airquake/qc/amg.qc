void () amg_aim;
void () amg_launch;
void () amg_run;
void () start_monster_amg;
// amg_stand
// function begins at statement 27271, parm_start=18648
// OP_STATE	619	18647	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	18648
// OP_BITAND	18648	277	18649
// OP_NOT_F	18649	0	18650
// OP_IFNOT	18650	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_LOAD_ENT	28	226	18651
// OP_LOAD_S	18651	154	18652
// OP_EQ_S	18652	766	18653
// OP_IFNOT	18653	5	0
// OP_ADDRESS	28	206	18654
// OP_STOREP_ENT	28	18654	0
// OP_CALL0	18643	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1716	0	0
// OP_NOT_F	1	0	18655
// OP_IFNOT	18655	5	0
// OP_ADDRESS	28	206	18656
// OP_STOREP_ENT	30	18656	0
// OP_CALL0	18643	0	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	173	18657
// OP_STOREP_FNC	18645	18657	0
// OP_ADDRESS	28	175	18658
// OP_ADD_F	31	655	18659
// OP_STOREP_F	18659	18658	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () amg_stand = [0, amg_stand]
{
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000);
    }
    
    
    if(self.owner.classname == "player")
    {
        self.enemy = self;
        amg_aim();
        return;
    }
    
    if(!FindTarget())
    {
        self.enemy = world;
        amg_aim();
    }
    else
    {
        self.think = amg_run;
        self.nextthink = time + 0.1;
        return;
    }
    
};

// amg_walk
// function begins at statement 27304, parm_start=18661
// OP_STATE	619	18647	0
// OP_DONE	0	0	0
void () amg_walk = [0, amg_stand]
{
};

// amg_run
// function begins at statement 27306, parm_start=18661
// OP_STATE	619	18645	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	18661
// OP_BITAND	18661	277	18662
// OP_NOT_F	18662	0	18663
// OP_IFNOT	18663	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_CALL0	1716	0	0
// OP_LOAD_ENT	28	206	18664
// OP_STORE_V	18664	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	570	0	0
// OP_NOT_F	1	0	18665
// OP_LOAD_ENT	28	206	18666
// OP_LOAD_F	18666	188	18667
// OP_NOT_F	18667	0	18668
// OP_OR	18665	18668	18669
// OP_IFNOT	18669	10	0
// OP_ADDRESS	28	206	18670
// OP_STOREP_ENT	30	18670	0
// OP_ADDRESS	28	173	18671
// OP_LOAD_FNC	28	405	18672
// OP_STOREP_FNC	18672	18671	0
// OP_ADDRESS	28	175	18673
// OP_ADD_F	31	655	18674
// OP_STOREP_F	18674	18673	0
// OP_RETURN	0	0	0
// OP_CALL0	18643	0	0
// OP_DONE	0	0	0
void () amg_run = [0, amg_run]
{
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000);
    }
    
    FindTarget();
    
    if(!CanDamage(self.enemy, self) || !self.enemy.takedamage)
    {
        self.enemy = world;
        self.think = self.th_stand;
        self.nextthink = time + 0.1;
        return;
    }
    
    amg_aim();
};

// amg_death
// function begins at statement 27339, parm_start=18676
// OP_LOAD_ENT	28	464	18676
// OP_ADDRESS	18676	173	18677
// OP_STOREP_FNC	2603	18677	0
// OP_LOAD_ENT	28	464	18678
// OP_ADDRESS	18678	175	18679
// OP_ADD_F	31	655	18680
// OP_STOREP_F	18680	18679	0
// OP_NOT_F	35	0	18681
// OP_IFNOT	18681	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_GOTO	12	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	621	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	188	18682
// OP_STOREP_F	619	18682	0
// OP_ADDRESS	28	173	18683
// OP_STOREP_FNC	18646	18683	0
// OP_ADDRESS	28	175	18684
// OP_LOAD_F	28	462	18685
// OP_ADD_F	31	18685	18686
// OP_STOREP_F	18686	18684	0
// OP_DONE	0	0	0
void () amg_death = 
{
    self.trigger_field.think = BecomeExplosion;
    self.trigger_field.nextthink = time + 0.1;
    if(!deathmatch)
    {
        remove(self);
    }
    else
    {
        setmodel(self, "");
        self.takedamage = 0;
        self.think = start_monster_amg;
        self.nextthink = time + self.wait;
    }
    
};

// amg_die
// function begins at statement 27363, parm_start=18688
// OP_LOAD_F	28	177	18688
// OP_LT	18688	1891	18689
// OP_IFNOT	18689	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12926	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_ADDRESS	28	129	18690
// OP_STOREP_F	291	18690	0
// OP_CALL0	18675	0	0
// OP_DONE	0	0	0
void () amg_die = 
{
    
    if(self.health < -90)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
    }
    
    self.solid = SOLID_NOT;
    amg_death();
};

// amg_aim
// function begins at statement 27379, parm_start=18691
// OP_LOAD_V	28	130	18708
// OP_ADD_V	18708	15425	18711
// OP_STORE_V	18711	18703	0
// OP_LOAD_ENT	28	226	18714
// OP_LOAD_S	18714	154	18715
// OP_NE_S	18715	766	18716
// OP_IFNOT	18716	50	0
// OP_LOAD_ENT	28	206	18717
// OP_EQ_E	18717	30	18718
// OP_IFNOT	18718	5	0
// OP_LOAD_V	28	227	18719
// OP_ADD_V	18703	18719	18722
// OP_STORE_V	18722	18697	0
// OP_GOTO	27	0	0
// OP_LOAD_ENT	28	206	18725
// OP_LOAD_V	18725	130	18726
// OP_LOAD_ENT	28	206	18729
// OP_LOAD_V	18729	159	18730
// OP_LOAD_ENT	28	206	18733
// OP_LOAD_V	18733	163	18734
// OP_ADD_V	18730	18734	18737
// OP_MUL_VF	18737	972	18740
// OP_ADD_V	18726	18740	18743
// OP_STORE_V	18743	18697	0
// OP_LOAD_ENT	28	206	18746
// OP_LOAD_S	18746	154	18747
// OP_EQ_S	18747	1550	18748
// OP_IFNOT	18748	6	0
// OP_LOAD_ENT	28	206	18749
// OP_LOAD_ENT	18749	226	18750
// OP_LOAD_V	18750	138	18751
// OP_STORE_V	18751	18700	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	206	18754
// OP_LOAD_V	18754	138	18755
// OP_STORE_V	18755	18700	0
// OP_LOAD_F	28	413	18758
// OP_MUL_VF	18700	18758	18759
// OP_ADD_V	18697	18759	18762
// OP_STORE_V	18762	18694	0
// OP_SUB_V	18694	18703	18765
// OP_STORE_V	18765	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	18706	0
// OP_DIV_F	18706	4035	18768
// OP_STORE_F	18768	18706	0
// OP_ADDRESS	28	413	18769
// OP_STOREP_F	18706	18769	0
// OP_MUL_VF	18700	18706	18770
// OP_ADD_V	18697	18770	18773
// OP_STORE_V	18773	18697	0
// OP_SUB_V	18697	18703	18776
// OP_STORE_V	18776	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	18691	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	28	226	18779
// OP_LOAD_V	18779	200	18780
// OP_STORE_V	18780	18691	0
// OP_SUB_F	619	18691	18783
// OP_STORE_F	18783	18691	0
// OP_LOAD_ENT	28	226	18784
// OP_LOAD_F	18784	195	18785
// OP_STORE_F	18785	18707	0
// OP_LOAD_ENT	28	226	18786
// OP_LOAD_ENT	18786	206	18787
// OP_NE_E	18787	28	18788
// OP_IFNOT	18788	3	0
// OP_ADDRESS	28	226	18789
// OP_STOREP_ENT	30	18789	0
// OP_STORE_V	607	18694	0
// OP_LOAD_F	28	144	18790
// OP_SUB_F	18692	18790	18791
// OP_STORE_F	18791	18695	0
// OP_LOAD_ENT	28	464	18792
// OP_LOAD_F	18792	143	18793
// OP_SUB_F	18691	18793	18794
// OP_STORE_F	18794	18694	0
// OP_STORE_V	607	18691	0
// OP_LT	18694	619	18795
// OP_IFNOT	18795	3	0
// OP_ADD_F	18694	1459	18796
// OP_STORE_F	18796	18694	0
// OP_GT	18694	1827	18797
// OP_IFNOT	18797	3	0
// OP_SUB_F	18694	1459	18798
// OP_STORE_F	18798	18694	0
// OP_LT	18695	619	18799
// OP_IFNOT	18799	3	0
// OP_ADD_F	18695	1459	18800
// OP_STORE_F	18800	18695	0
// OP_GT	18695	1827	18801
// OP_IFNOT	18801	3	0
// OP_SUB_F	18695	1459	18802
// OP_STORE_F	18802	18695	0
// OP_STORE_V	18694	18691	0
// OP_LT	18691	18803	18804
// OP_IFNOT	18804	2	0
// OP_STORE_F	18803	18691	0
// OP_GT	18691	842	18805
// OP_IFNOT	18805	2	0
// OP_STORE_F	842	18691	0
// OP_LT	18692	18803	18806
// OP_IFNOT	18806	2	0
// OP_STORE_F	18803	18692	0
// OP_GT	18692	842	18807
// OP_IFNOT	18807	2	0
// OP_STORE_F	842	18692	0
// OP_LOAD_ENT	28	464	18808
// OP_ADDRESS	18808	143	18809
// OP_LOAD_ENT	28	464	18810
// OP_LOAD_F	18810	143	18811
// OP_ADD_F	18811	18691	18812
// OP_STORE_V	18812	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	18809	0
// OP_ADDRESS	28	144	18813
// OP_LOAD_F	28	144	18814
// OP_ADD_F	18814	18692	18815
// OP_STORE_V	18815	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	18813	0
// OP_LOAD_ENT	28	464	18816
// OP_ADDRESS	18816	144	18817
// OP_LOAD_F	28	144	18818
// OP_STOREP_F	18818	18817	0
// OP_LOAD_ENT	28	226	18819
// OP_LOAD_S	18819	154	18820
// OP_NE_S	18820	766	18821
// OP_IFNOT	18821	30	0
// OP_LOAD_ENT	28	206	18822
// OP_IFNOT	18822	28	0
// OP_LOAD_F	28	422	18823
// OP_GT	31	18823	18824
// OP_IFNOT	18824	25	0
// OP_LOAD_ENT	28	464	18825
// OP_LOAD_V	18825	142	18826
// OP_STORE_V	18826	4	0
// OP_CALL1	496	0	0
// OP_SUB_F	619	61	18829
// OP_STORE_F	18829	61	0
// OP_SUB_V	18697	18703	18830
// OP_STORE_V	18830	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	18691	0
// OP_MUL_V	18691	59	18833
// OP_GT	18833	7765	18834
// OP_IFNOT	18834	12	0
// OP_LOAD_V	28	130	18835
// OP_STORE_V	18835	4	0
// OP_STORE_V	18697	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	18838
// OP_LE	18706	677	18839
// OP_AND	18838	18839	18840
// OP_IFNOT	18840	2	0
// OP_STORE_F	677	18707	0
// OP_LOAD_F	28	422	18841
// OP_GT	31	18841	18842
// OP_EQ_F	18707	677	18843
// OP_AND	18842	18843	18844
// OP_IFNOT	18844	3	0
// OP_LOAD_FNC	28	408	18845
// OP_CALL0	18845	0	0
// OP_DONE	0	0	0
void () amg_aim = 
{
    local vector dir;
    local vector vtemp;
    local vector org;
    local vector vel;
    local vector src;
    local float dist;
    local float ff;
    src = self.origin + '0.000 0.000 10.000';
    if(self.owner.classname != "player")
    {
        if(self.enemy == world)
        {
            org = src + self.movedir;
        }
        else
        {
            org = self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5);
            if(self.enemy.classname == "tank")
            {
                vel = self.enemy.owner.velocity;
            }
            else
            {
                vel = self.enemy.velocity;
            }
            
            vtemp = org + (vel * self.speed);
        }
        
        dist = vlen(vtemp - src);
        dist = dist / 1500;
        self.speed = dist;
        org = org + (vel * dist);
        dir = vectoangles(org - src);
    }
    else
    {
        dir = self.owner.v_angle;
        dir_x = 0 - dir_x;
        ff = self.owner.button0;
        
        if(self.owner.enemy != self)
        {
            self.owner = world;
        }
        
    }
    
    vtemp = '0.000 0.000 0.000';
    vtemp_y = 0 - self.angles_y;
    vtemp_x = dir_x - self.trigger_field.angles_x;
    dir = '0.000 0.000 0.000';
    
    if(vtemp_x < 0)
    {
        vtemp_x = vtemp_x + 360;
    }
    
    
    if(vtemp_x > 180)
    {
        vtemp_x = vtemp_x - 360;
    }
    
    
    if(0 < 0)
    {
        vtemp_y = 0 + 360;
    }
    
    
    if(0 > 180)
    {
        vtemp_y = 0 - 360;
    }
    
    dir = vtemp;
    
    if(dir_x < -15)
    {
        dir_x = -15;
    }
    
    
    if(dir_x > 15)
    {
        dir_x = 15;
    }
    
    
    if(0 < -15)
    {
        dir_y = -15;
    }
    
    
    if(0 > 15)
    {
        dir_y = 15;
    }
    
    self.trigger_field.angles_x = anglemod(self.trigger_field.angles_x + dir_x);
    self.angles_y = anglemod(self.angles_y + 0);
    self.trigger_field.angles_y = self.angles_y;
    
    if(self.owner.classname != "player")
    {
        
        if(self.enemy)
        {
            
            if(time > self.attack_finished)
            {
                makevectors(self.trigger_field.angles);
                v_forward_z = 0 - 0;
                dir = normalize(org - src);
                
                if((dir * v_forward) > 0.97)
                {
                    traceline(self.origin, org, TRUE, world);
                    
                    if((trace_fraction == 1) && (dist <= 1))
                    {
                        ff = 1;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if((time > self.attack_finished) && (ff == 1))
    {
        self.th_missile();
    }
    
};

// amg_launch
// function begins at statement 27546, parm_start=18846
// OP_LOAD_F	28	186	18850
// OP_NOT_F	18850	0	18851
// OP_IFNOT	18851	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	186	18852
// OP_LOAD_F	28	186	18853
// OP_SUB_F	18853	677	18854
// OP_STOREP_F	18854	18852	0
// OP_LOAD_ENT	28	464	18855
// OP_LOAD_V	18855	142	18856
// OP_STORE_V	18856	18846	0
// OP_SUB_F	619	18846	18859
// OP_STORE_F	18859	18846	0
// OP_STORE_V	18846	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	18846	0
// OP_LOAD_F	28	186	18860
// OP_BITAND	18860	788	18861
// OP_STORE_F	18861	18849	0
// OP_ADDRESS	28	158	18862
// OP_LOAD_F	28	158	18863
// OP_BITOR	18863	383	18864
// OP_STOREP_F	18864	18862	0
// OP_CALL0	501	0	0
// OP_LT	1	1687	18865
// OP_IFNOT	18865	61	0
// OP_EQ_F	18849	619	18866
// OP_IFNOT	18866	14	0
// OP_LOAD_V	28	130	18867
// OP_MUL_VF	18846	812	18870
// OP_ADD_V	18867	18870	18873
// OP_MUL_VF	62	816	18876
// OP_ADD_V	18873	18876	18879
// OP_MUL_VF	65	808	18882
// OP_ADD_V	18879	18882	18885
// OP_STORE_V	18885	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	18888
// OP_STORE_V	18888	10	0
// OP_CALL3	4006	0	0
// OP_GOTO	45	0	0
// OP_EQ_F	18849	677	18889
// OP_IFNOT	18889	14	0
// OP_LOAD_V	28	130	18890
// OP_MUL_VF	18846	812	18893
// OP_ADD_V	18890	18893	18896
// OP_MUL_VF	62	816	18899
// OP_ADD_V	18896	18899	18902
// OP_MUL_VF	65	808	18905
// OP_SUB_V	18902	18905	18908
// OP_STORE_V	18908	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	18911
// OP_STORE_V	18911	10	0
// OP_CALL3	4006	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	18849	806	18912
// OP_IFNOT	18912	14	0
// OP_LOAD_V	28	130	18913
// OP_MUL_VF	18846	812	18916
// OP_ADD_V	18913	18916	18919
// OP_MUL_VF	62	839	18922
// OP_ADD_V	18919	18922	18925
// OP_MUL_VF	65	808	18928
// OP_ADD_V	18925	18928	18931
// OP_STORE_V	18931	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	18934
// OP_STORE_V	18934	10	0
// OP_CALL3	4006	0	0
// OP_GOTO	15	0	0
// OP_EQ_F	18849	788	18935
// OP_IFNOT	18935	13	0
// OP_LOAD_V	28	130	18936
// OP_MUL_VF	18846	812	18939
// OP_ADD_V	18936	18939	18942
// OP_MUL_VF	62	839	18945
// OP_ADD_V	18942	18945	18948
// OP_MUL_VF	65	808	18951
// OP_SUB_V	18948	18951	18954
// OP_STORE_V	18954	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	18957
// OP_STORE_V	18957	10	0
// OP_CALL3	4006	0	0
// OP_GOTO	60	0	0
// OP_EQ_F	18849	619	18958
// OP_IFNOT	18958	14	0
// OP_LOAD_V	28	130	18959
// OP_MUL_VF	18846	812	18962
// OP_ADD_V	18959	18962	18965
// OP_MUL_VF	62	816	18968
// OP_ADD_V	18965	18968	18971
// OP_MUL_VF	65	808	18974
// OP_ADD_V	18971	18974	18977
// OP_STORE_V	18977	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	18980
// OP_STORE_V	18980	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	45	0	0
// OP_EQ_F	18849	677	18981
// OP_IFNOT	18981	14	0
// OP_LOAD_V	28	130	18982
// OP_MUL_VF	18846	812	18985
// OP_ADD_V	18982	18985	18988
// OP_MUL_VF	62	816	18991
// OP_ADD_V	18988	18991	18994
// OP_MUL_VF	65	808	18997
// OP_SUB_V	18994	18997	19000
// OP_STORE_V	19000	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	19003
// OP_STORE_V	19003	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	18849	806	19004
// OP_IFNOT	19004	14	0
// OP_LOAD_V	28	130	19005
// OP_MUL_VF	18846	812	19008
// OP_ADD_V	19005	19008	19011
// OP_MUL_VF	62	839	19014
// OP_ADD_V	19011	19014	19017
// OP_MUL_VF	65	808	19020
// OP_ADD_V	19017	19020	19023
// OP_STORE_V	19023	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	19026
// OP_STORE_V	19026	10	0
// OP_CALL3	4039	0	0
// OP_GOTO	15	0	0
// OP_EQ_F	18849	788	19027
// OP_IFNOT	19027	13	0
// OP_LOAD_V	28	130	19028
// OP_MUL_VF	18846	812	19031
// OP_ADD_V	19028	19031	19034
// OP_MUL_VF	62	839	19037
// OP_ADD_V	19034	19037	19040
// OP_MUL_VF	65	808	19043
// OP_SUB_V	19040	19043	19046
// OP_STORE_V	19046	4	0
// OP_STORE_V	18846	7	0
// OP_LOAD_ENT	28	206	19049
// OP_STORE_V	19049	10	0
// OP_CALL3	4039	0	0
// OP_LOAD_F	28	220	19050
// OP_BITAND	19050	806	19051
// OP_IFNOT	19051	12	0
// OP_ADDRESS	394	171	19052
// OP_STOREP_FNC	3892	19052	0
// OP_ADDRESS	394	469	19053
// OP_STOREP_F	856	19053	0
// OP_ADDRESS	394	175	19054
// OP_ADD_F	31	677	19055
// OP_STOREP_F	19055	19054	0
// OP_ADDRESS	28	422	19056
// OP_ADD_F	31	1349	19057
// OP_STOREP_F	19057	19056	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	422	19058
// OP_ADD_F	31	655	19059
// OP_STOREP_F	19059	19058	0
// OP_DONE	0	0	0
void () amg_launch = 
{
    local vector v1;
    local float tmp;
    
    if(!self.ammo_cells)
    {
        return;
    }
    
    self.ammo_cells = self.ammo_cells - 1;
    v1 = self.trigger_field.angles;
    v1_x = 0 - v1_x;
    makevectors(v1);
    v1 = v_forward;
    tmp = self.ammo_cells & 3;
    self.effects = self.effects | EF_MUZZLEFLASH;
    if(random() < 0.3)
    {
        if(tmp == 0)
        {
            AC_spike(((self.origin + (v1 * 16)) + (v_up * 6)) + (v_right * 4), v1, self.enemy);
        }
        else
        {
            if(tmp == 1)
            {
                AC_spike(((self.origin + (v1 * 16)) + (v_up * 6)) - (v_right * 4), v1, self.enemy);
            }
            else
            {
                if(tmp == 2)
                {
                    AC_spike(((self.origin + (v1 * 16)) + (v_up * 14)) + (v_right * 4), v1, self.enemy);
                }
                else
                {
                    
                    if(tmp == 3)
                    {
                        AC_spike(((self.origin + (v1 * 16)) + (v_up * 14)) - (v_right * 4), v1, self.enemy);
                    }
                    
                }
                
            }
            
        }
        
    }
    else
    {
        if(tmp == 0)
        {
            AC_bullet(((self.origin + (v1 * 16)) + (v_up * 6)) + (v_right * 4), v1, self.enemy);
        }
        else
        {
            if(tmp == 1)
            {
                AC_bullet(((self.origin + (v1 * 16)) + (v_up * 6)) - (v_right * 4), v1, self.enemy);
            }
            else
            {
                if(tmp == 2)
                {
                    AC_bullet(((self.origin + (v1 * 16)) + (v_up * 14)) + (v_right * 4), v1, self.enemy);
                }
                else
                {
                    
                    if(tmp == 3)
                    {
                        AC_bullet(((self.origin + (v1 * 16)) + (v_up * 14)) - (v_right * 4), v1, self.enemy);
                    }
                    
                }
                
            }
            
        }
        
    }
    
    if(self.spawnflags & 2)
    {
        newmis.touch = ACprojectile_touchboom;
        newmis.dmg = 50;
        newmis.nextthink = time + 1;
        self.attack_finished = time + 0.2;
    }
    else
    {
        self.attack_finished = time + 0.1;
    }
    
};

// start_monster_amg
// function begins at statement 27709, parm_start=19060
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_STORE_F	1	37	0
// OP_GT	35	619	19060
// OP_IFNOT	19060	9	0
// OP_LOAD_F	28	209	19061
// OP_EQ_F	19061	619	19062
// OP_EQ_F	37	619	19063
// OP_OR	19062	19063	19064
// OP_IFNOT	19064	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	129	19065
// OP_STOREP_F	294	19065	0
// OP_ADDRESS	28	128	19066
// OP_STOREP_F	285	19066	0
// OP_ADDRESS	28	177	19067
// OP_LOAD_F	28	210	19068
// OP_STOREP_F	19068	19067	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19069	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	18179	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	405	19070
// OP_STOREP_FNC	18647	19070	0
// OP_ADDRESS	28	406	19071
// OP_STOREP_FNC	18660	19071	0
// OP_ADDRESS	28	407	19072
// OP_STOREP_FNC	18645	19072	0
// OP_ADDRESS	28	411	19073
// OP_STOREP_FNC	18687	19073	0
// OP_ADDRESS	28	408	19074
// OP_STOREP_FNC	18644	19074	0
// OP_LOAD_S	28	205	19075
// OP_NOT_S	19075	0	19076
// OP_IFNOT	19076	3	0
// OP_ADDRESS	28	205	19077
// OP_STOREP_S	18566	19077	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	19078
// OP_STORE_V	19078	7	0
// OP_CALL2	497	0	0
// OP_CALL0	527	0	0
// OP_ADDRESS	28	188	19081
// OP_STOREP_F	306	19081	0
// OP_ADDRESS	28	216	19082
// OP_LOAD_V	28	142	19083
// OP_MUL_V	19083	6286	19086
// OP_STOREP_F	19086	19082	0
// OP_ADDRESS	28	191	19087
// OP_STOREP_V	582	19087	0
// OP_ADDRESS	28	172	19090
// OP_STOREP_FNC	15260	19090	0
// OP_ADDRESS	28	207	19091
// OP_LOAD_F	28	207	19092
// OP_BITOR	19092	273	19093
// OP_STOREP_F	19093	19091	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16178	0
// OP_ADDRESS	16178	226	19094
// OP_STOREP_ENT	28	19094	0
// OP_ADDRESS	16178	188	19095
// OP_STOREP_F	304	19095	0
// OP_STORE_V	16178	4	0
// OP_STORE_V	19096	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	464	19097
// OP_STOREP_ENT	16178	19097	0
// OP_ADDRESS	16178	142	19098
// OP_LOAD_V	28	142	19101
// OP_STOREP_V	19101	19098	0
// OP_STORE_V	16178	4	0
// OP_LOAD_V	28	130	19104
// OP_STORE_V	19104	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	186	19107
// OP_LOAD_F	28	468	19108
// OP_STOREP_F	19108	19107	0
// OP_LOAD_FNC	28	405	19109
// OP_CALL0	19109	0	0
// OP_DONE	0	0	0
void () start_monster_amg = 
{
    teamplay = cvar("teamplay");
    
    if(deathmatch > 0)
    {
        
        if((self.team == 0) || (teamplay == 0))
        {
            remove(self);
            return;
        }
        
    }
    
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_TOSS;
    self.health = self.max_health;
    setmodel(self, "progs/amgba.mdl");
    setsize(self, '-16.000 -16.000 -20.000', '16.000 16.000 16.000');
    self.th_stand = amg_stand;
    self.th_walk = amg_walk;
    self.th_run = amg_run;
    self.th_die = amg_die;
    self.th_missile = amg_launch;
    
    if(!self.netname)
    {
        self.netname = "Anti-aircraft gun";
    }
    
    setorigin(self, self.oldorigin);
    droptofloor();
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    self.view_ofs = '0.000 0.000 1.000';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    stemp = spawn();
    stemp.owner = self;
    stemp.takedamage = DAMAGE_NO;
    setmodel(stemp, "progs/amgtb.mdl");
    self.trigger_field = stemp;
    stemp.angles = self.angles;
    setorigin(stemp, self.origin);
    self.ammo_cells = self.aflag;
    self.th_stand();
};

// monster_amg
// function begins at statement 27794, parm_start=19111
// OP_STORE_V	19069	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	19096	4	0
// OP_CALL1	514	0	0
// OP_NOT_F	35	0	19114
// OP_IFNOT	19114	3	0
// OP_ADD_F	40	677	19115
// OP_STORE_F	19115	40	0
// OP_ADDRESS	28	134	19116
// OP_LOAD_V	28	130	19119
// OP_STOREP_V	19119	19116	0
// OP_LOAD_F	28	177	19122
// OP_NOT_F	19122	0	19123
// OP_IFNOT	19123	3	0
// OP_ADDRESS	28	177	19124
// OP_STOREP_F	2618	19124	0
// OP_ADDRESS	28	210	19125
// OP_LOAD_F	28	177	19126
// OP_STOREP_F	19126	19125	0
// OP_LOAD_F	28	144	19127
// OP_MUL_FV	19127	6286	19128
// OP_ADD_V	19128	18620	19131
// OP_STORE_V	19131	19111	0
// OP_STORE_V	19111	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	28	227	19134
// OP_STOREP_V	59	19134	0
// OP_CALL0	1068	0	0
// OP_LOAD_F	28	186	19137
// OP_NOT_F	19137	0	19138
// OP_IFNOT	19138	3	0
// OP_ADDRESS	28	186	19139
// OP_STOREP_F	18632	19139	0
// OP_ADDRESS	28	468	19140
// OP_LOAD_F	28	186	19141
// OP_STOREP_F	19141	19140	0
// OP_LOAD_F	28	462	19142
// OP_NOT_F	19142	0	19143
// OP_IFNOT	19143	3	0
// OP_ADDRESS	28	462	19144
// OP_STOREP_F	1130	19144	0
// OP_ADDRESS	28	173	19145
// OP_STOREP_FNC	18646	19145	0
// OP_ADDRESS	28	175	19146
// OP_ADD_F	31	655	19147
// OP_CALL0	501	0	0
// OP_MUL_F	1	1687	19148
// OP_ADD_F	19147	19148	19149
// OP_STOREP_F	19149	19146	0
// OP_DONE	0	0	0
void () monster_amg = 
{
    local vector v1;
    precache_model("progs/amgba.mdl");
    precache_model("progs/amgtb.mdl");
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.health)
    {
        self.health = 100;
    }
    
    self.max_health = self.health;
    v1 = (self.angles_y * '0.000 1.000 0.000') + '-20.000 0.000 0.000';
    makevectors(v1);
    self.movedir = v_forward;
    setup_teament();
    
    if(!self.ammo_cells)
    {
        self.ammo_cells = 5000;
    }
    
    self.aflag = self.ammo_cells;
    
    if(!self.wait)
    {
        self.wait = 30;
    }
    
    self.think = start_monster_amg;
    self.nextthink = (time + 0.1) + (random() * 0.3);
};

