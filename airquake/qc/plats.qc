void () plat_center_touch;
void () plat_outside_touch;
void () plat_trigger_use;
void () plat_go_up;
void () plat_go_down;
void () plat_crush;
float PLAT_LOW_TRIGGER = 1.000;
// plat_spawn_inside_trigger
// function begins at statement 24324, parm_start=16797
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16797	0
// OP_ADDRESS	16797	171	16804
// OP_STOREP_FNC	16789	16804	0
// OP_ADDRESS	16797	128	16805
// OP_STOREP_F	281	16805	0
// OP_ADDRESS	16797	129	16806
// OP_STOREP_F	292	16806	0
// OP_ADDRESS	16797	206	16807
// OP_STOREP_ENT	28	16807	0
// OP_LOAD_V	28	159	16808
// OP_ADD_V	16808	16811	16814
// OP_STORE_V	16814	16798	0
// OP_LOAD_V	28	163	16817
// OP_SUB_V	16817	16820	16823
// OP_STORE_V	16823	16801	0
// OP_LOAD_F	28	486	16826
// OP_LOAD_F	28	490	16827
// OP_SUB_F	16826	16827	16828
// OP_ADD_F	16828	810	16829
// OP_SUB_F	16803	16829	16830
// OP_STORE_F	16830	16800	0
// OP_LOAD_F	28	220	16831
// OP_BITAND	16831	16795	16832
// OP_IFNOT	16832	3	0
// OP_ADD_F	16800	810	16833
// OP_STORE_F	16833	16803	0
// OP_LOAD_F	28	168	16834
// OP_LE	16834	856	16835
// OP_IFNOT	16835	8	0
// OP_LOAD_F	28	160	16836
// OP_LOAD_F	28	164	16837
// OP_ADD_F	16836	16837	16838
// OP_DIV_F	16838	806	16839
// OP_STORE_F	16839	16798	0
// OP_ADD_F	16798	677	16840
// OP_STORE_F	16840	16801	0
// OP_LOAD_F	28	169	16841
// OP_LE	16841	856	16842
// OP_IFNOT	16842	8	0
// OP_LOAD_F	28	161	16843
// OP_LOAD_F	28	165	16844
// OP_ADD_F	16843	16844	16845
// OP_DIV_F	16845	806	16846
// OP_STORE_F	16846	16799	0
// OP_ADD_F	16799	677	16847
// OP_STORE_F	16847	16802	0
// OP_STORE_V	16797	4	0
// OP_STORE_V	16798	7	0
// OP_STORE_V	16801	10	0
// OP_CALL3	499	0	0
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
    tmin_z = 0.000 - ((self.pos1_z - self.pos2_z) + 8.000);
    
    if(self.spawnflags & PLAT_LOW_TRIGGER)
    {
        tmax_z = 0.000 + 8.000;
    }
    
    
    if(self.size_x <= 50.000)
    {
        tmin_x = (self.mins_x + self.maxs_x) / 2.000;
        tmax_x = tmin_x + 1.000;
    }
    
    
    if(self.size_y <= 50.000)
    {
        tmin_y = (self.mins_y + self.maxs_y) / 2.000;
        tmax_y = 0.000 + 1.000;
    }
    
    setsize(trigger, tmin, tmax);
};

// plat_hit_top
// function begins at statement 24376, parm_start=16849
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	234	16849
// OP_STORE_V	16849	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	16850
// OP_STOREP_F	331	16850	0
// OP_ADDRESS	28	173	16851
// OP_STOREP_FNC	16793	16851	0
// OP_ADDRESS	28	175	16852
// OP_LOAD_F	28	127	16853
// OP_ADD_F	16853	788	16854
// OP_STOREP_F	16854	16852	0
// OP_DONE	0	0	0
void () plat_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_TOP;
    self.think = plat_go_down;
    self.nextthink = self.ltime + 3.000;
};

// plat_hit_bottom
// function begins at statement 24392, parm_start=16856
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	234	16856
// OP_STORE_V	16856	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	16857
// OP_STOREP_F	332	16857	0
// OP_DONE	0	0	0
void () plat_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// plat_go_down
// function begins at statement 24402, parm_start=16858
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	16858
// OP_STORE_V	16858	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	16859
// OP_STOREP_F	334	16859	0
// OP_LOAD_V	28	487	16860
// OP_STORE_V	16860	4	0
// OP_LOAD_F	28	413	16863
// OP_STORE_V	16863	7	0
// OP_STORE_V	16855	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () plat_go_down = 
{
    sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};

// plat_go_up
// function begins at statement 24418, parm_start=16864
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	16864
// OP_STORE_V	16864	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	16865
// OP_STOREP_F	333	16865	0
// OP_LOAD_V	28	483	16866
// OP_STORE_V	16866	4	0
// OP_LOAD_F	28	413	16869
// OP_STORE_V	16869	7	0
// OP_STORE_V	16848	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () plat_go_up = 
{
    sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};

// plat_center_touch
// function begins at statement 24434, parm_start=16870
// OP_LOAD_ENT	29	226	16870
// OP_LOAD_S	16870	154	16871
// OP_NE_S	16871	766	16872
// OP_IFNOT	16872	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	177	16873
// OP_LE	16873	619	16874
// OP_IFNOT	16874	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	16875
// OP_STORE_ENT	16875	28	0
// OP_LOAD_F	28	482	16876
// OP_EQ_F	16876	332	16877
// OP_IFNOT	16877	3	0
// OP_CALL0	16792	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	482	16878
// OP_EQ_F	16878	331	16879
// OP_IFNOT	16879	5	0
// OP_ADDRESS	28	175	16880
// OP_LOAD_F	28	127	16881
// OP_ADD_F	16881	677	16882
// OP_STOREP_F	16882	16880	0
// OP_DONE	0	0	0
void () plat_center_touch = 
{
    
    if(other.owner.classname != "player")
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
// function begins at statement 24458, parm_start=16883
// OP_LOAD_ENT	29	226	16883
// OP_LOAD_S	16883	154	16884
// OP_NE_S	16884	766	16885
// OP_IFNOT	16885	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	177	16886
// OP_LE	16886	619	16887
// OP_IFNOT	16887	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	16888
// OP_STORE_ENT	16888	28	0
// OP_LOAD_F	28	482	16889
// OP_EQ_F	16889	331	16890
// OP_IFNOT	16890	2	0
// OP_CALL0	16793	0	0
// OP_DONE	0	0	0
void () plat_outside_touch = 
{
    
    if(other.owner.classname != "player")
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
// function begins at statement 24474, parm_start=16891
// OP_LOAD_FNC	28	173	16891
// OP_IFNOT	16891	2	0
// OP_RETURN	0	0	0
// OP_CALL0	16793	0	0
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
// function begins at statement 24479, parm_start=16892
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	677	13	0
// OP_CALL4	569	0	0
// OP_LOAD_F	28	482	16892
// OP_EQ_F	16892	333	16893
// OP_IFNOT	16893	3	0
// OP_CALL0	16793	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	482	16894
// OP_EQ_F	16894	334	16895
// OP_IFNOT	16895	3	0
// OP_CALL0	16792	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	16896	4	0
// OP_CALL1	505	0	0
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
// function begins at statement 24497, parm_start=16898
// OP_ADDRESS	28	172	16898
// OP_STOREP_FNC	566	16898	0
// OP_LOAD_F	28	482	16899
// OP_NE_F	16899	333	16900
// OP_IFNOT	16900	3	0
// OP_STORE_V	16901	4	0
// OP_CALL1	505	0	0
// OP_CALL0	16793	0	0
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
// function begins at statement 24506, parm_start=16903
// OP_LOAD_F	28	448	16904
// OP_NOT_F	16904	0	16905
// OP_IFNOT	16905	3	0
// OP_ADDRESS	28	448	16906
// OP_STOREP_F	1252	16906	0
// OP_LOAD_F	28	449	16907
// OP_NOT_F	16907	0	16908
// OP_IFNOT	16908	3	0
// OP_ADDRESS	28	449	16909
// OP_STOREP_F	827	16909	0
// OP_LOAD_F	28	232	16910
// OP_EQ_F	16910	619	16911
// OP_IFNOT	16911	3	0
// OP_ADDRESS	28	232	16912
// OP_STOREP_F	806	16912	0
// OP_LOAD_F	28	232	16913
// OP_EQ_F	16913	677	16914
// OP_IFNOT	16914	9	0
// OP_STORE_V	16915	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	16916	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16917
// OP_STOREP_S	16915	16917	0
// OP_ADDRESS	28	234	16918
// OP_STOREP_S	16916	16918	0
// OP_LOAD_F	28	232	16919
// OP_EQ_F	16919	806	16920
// OP_IFNOT	16920	9	0
// OP_STORE_V	16921	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	16922	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16923
// OP_STOREP_S	16921	16923	0
// OP_ADDRESS	28	234	16924
// OP_STOREP_S	16922	16924	0
// OP_ADDRESS	28	444	16925
// OP_LOAD_V	28	142	16928
// OP_STOREP_V	16928	16925	0
// OP_ADDRESS	28	142	16931
// OP_STOREP_V	607	16931	0
// OP_ADDRESS	28	154	16934
// OP_STOREP_S	16935	16934	0
// OP_ADDRESS	28	129	16936
// OP_STOREP_F	295	16936	0
// OP_ADDRESS	28	128	16937
// OP_STOREP_F	286	16937	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	16938
// OP_STORE_V	16938	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	16941
// OP_STORE_V	16941	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	159	16942
// OP_STORE_V	16942	7	0
// OP_LOAD_V	28	163	16945
// OP_STORE_V	16945	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	174	16948
// OP_STOREP_FNC	16794	16948	0
// OP_LOAD_F	28	413	16949
// OP_NOT_F	16949	0	16950
// OP_IFNOT	16950	3	0
// OP_ADDRESS	28	413	16951
// OP_STOREP_F	3338	16951	0
// OP_ADDRESS	28	483	16952
// OP_LOAD_V	28	130	16955
// OP_STOREP_V	16955	16952	0
// OP_ADDRESS	28	487	16958
// OP_LOAD_V	28	130	16961
// OP_STOREP_V	16961	16958	0
// OP_LOAD_F	28	491	16964
// OP_IFNOT	16964	7	0
// OP_ADDRESS	28	490	16965
// OP_LOAD_F	28	133	16966
// OP_LOAD_F	28	491	16967
// OP_SUB_F	16966	16967	16968
// OP_STOREP_F	16968	16965	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	490	16969
// OP_LOAD_F	28	133	16970
// OP_LOAD_F	28	170	16971
// OP_SUB_F	16970	16971	16972
// OP_ADD_F	16972	810	16973
// OP_STOREP_F	16973	16969	0
// OP_ADDRESS	28	172	16974
// OP_STOREP_FNC	16791	16974	0
// OP_CALL0	16796	0	0
// OP_LOAD_S	28	222	16975
// OP_IFNOT	16975	6	0
// OP_ADDRESS	28	482	16976
// OP_STOREP_F	333	16976	0
// OP_ADDRESS	28	172	16977
// OP_STOREP_FNC	16897	16977	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	487	16978
// OP_STORE_V	16978	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	482	16981
// OP_STOREP_F	332	16981	0
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
// function begins at statement 24612, parm_start=16985
// OP_LOAD_F	28	422	16985
// OP_LT	31	16985	16986
// OP_IFNOT	16986	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	422	16987
// OP_ADD_F	31	972	16988
// OP_STOREP_F	16988	16987	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	469	16989
// OP_STORE_V	16989	13	0
// OP_CALL4	569	0	0
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
// function begins at statement 24626, parm_start=16991
// OP_LOAD_FNC	28	173	16991
// OP_NE_FNC	16991	16983	16992
// OP_IFNOT	16992	2	0
// OP_RETURN	0	0	0
// OP_CALL0	16982	0	0
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
// function begins at statement 24632, parm_start=16994
// OP_LOAD_F	28	462	16994
// OP_IFNOT	16994	14	0
// OP_ADDRESS	28	175	16995
// OP_LOAD_F	28	127	16996
// OP_LOAD_F	28	462	16997
// OP_ADD_F	16996	16997	16998
// OP_STOREP_F	16998	16995	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	16999
// OP_STORE_V	16999	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	175	17000
// OP_LOAD_F	28	127	17001
// OP_ADD_F	17001	655	17002
// OP_STOREP_F	17002	17000	0
// OP_ADDRESS	28	173	17003
// OP_STOREP_FNC	16982	17003	0
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
// function begins at statement 24654, parm_start=17004
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	17005
// OP_STORE_V	17005	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	17004	0
// OP_ADDRESS	28	221	17006
// OP_LOAD_S	17004	221	17007
// OP_STOREP_S	17007	17006	0
// OP_LOAD_S	28	221	17008
// OP_NOT_S	17008	0	17009
// OP_IFNOT	17009	3	0
// OP_STORE_V	17010	4	0
// OP_CALL1	505	0	0
// OP_LOAD_F	17004	462	17011
// OP_IFNOT	17011	5	0
// OP_ADDRESS	28	462	17012
// OP_LOAD_F	17004	462	17013
// OP_STOREP_F	17013	17012	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	462	17014
// OP_STOREP_F	619	17014	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	234	17015
// OP_STORE_V	17015	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	17004	130	17016
// OP_LOAD_V	28	159	17019
// OP_SUB_V	17016	17019	17022
// OP_STORE_V	17022	4	0
// OP_LOAD_F	28	413	17025
// OP_STORE_V	17025	7	0
// OP_STORE_V	16993	10	0
// OP_CALL3	561	0	0
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
// function begins at statement 24692, parm_start=17026
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	17027
// OP_STORE_V	17027	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	17026	0
// OP_ADDRESS	28	221	17028
// OP_LOAD_S	17026	221	17029
// OP_STOREP_S	17029	17028	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	17026	130	17030
// OP_LOAD_V	28	159	17033
// OP_SUB_V	17030	17033	17036
// OP_STORE_V	17036	7	0
// OP_CALL2	497	0	0
// OP_LOAD_S	28	222	17039
// OP_NOT_S	17039	0	17040
// OP_IFNOT	17040	7	0
// OP_ADDRESS	28	175	17041
// OP_LOAD_F	28	127	17042
// OP_ADD_F	17042	655	17043
// OP_STOREP_F	17043	17041	0
// OP_ADDRESS	28	173	17044
// OP_STOREP_FNC	16982	17044	0
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
// function begins at statement 24717, parm_start=17046
// OP_LOAD_F	28	413	17046
// OP_NOT_F	17046	0	17047
// OP_IFNOT	17047	3	0
// OP_ADDRESS	28	413	17048
// OP_STOREP_F	2618	17048	0
// OP_LOAD_S	28	221	17049
// OP_NOT_S	17049	0	17050
// OP_IFNOT	17050	3	0
// OP_STORE_V	17051	4	0
// OP_CALL1	505	0	0
// OP_LOAD_F	28	469	17052
// OP_NOT_F	17052	0	17053
// OP_IFNOT	17053	3	0
// OP_ADDRESS	28	469	17054
// OP_STOREP_F	806	17054	0
// OP_LOAD_F	28	232	17055
// OP_EQ_F	17055	619	17056
// OP_IFNOT	17056	9	0
// OP_ADDRESS	28	233	17057
// OP_STOREP_S	15719	17057	0
// OP_STORE_V	15719	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	17058
// OP_STOREP_S	15719	17058	0
// OP_STORE_V	15719	4	0
// OP_CALL1	513	0	0
// OP_LOAD_F	28	232	17059
// OP_EQ_F	17059	677	17060
// OP_IFNOT	17060	9	0
// OP_ADDRESS	28	233	17061
// OP_STOREP_S	17062	17061	0
// OP_STORE_V	17062	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	17063
// OP_STOREP_S	17064	17063	0
// OP_STORE_V	17064	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	470	17065
// OP_STOREP_F	677	17065	0
// OP_ADDRESS	28	129	17066
// OP_STOREP_F	295	17066	0
// OP_ADDRESS	28	128	17067
// OP_STOREP_F	286	17067	0
// OP_ADDRESS	28	174	17068
// OP_STOREP_FNC	16984	17068	0
// OP_ADDRESS	28	172	17069
// OP_STOREP_FNC	16990	17069	0
// OP_ADDRESS	28	154	17070
// OP_STOREP_S	17071	17070	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	17072
// OP_STORE_V	17072	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	159	17073
// OP_STORE_V	17073	7	0
// OP_LOAD_V	28	163	17076
// OP_STORE_V	17076	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	17079
// OP_STORE_V	17079	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	175	17082
// OP_LOAD_F	28	127	17083
// OP_ADD_F	17083	655	17084
// OP_STOREP_F	17084	17082	0
// OP_ADDRESS	28	173	17085
// OP_STOREP_FNC	16983	17085	0
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
// function begins at statement 24787, parm_start=17087
// OP_LOAD_F	28	413	17087
// OP_NOT_F	17087	0	17088
// OP_IFNOT	17088	3	0
// OP_ADDRESS	28	413	17089
// OP_STOREP_F	2618	17089	0
// OP_LOAD_S	28	221	17090
// OP_NOT_S	17090	0	17091
// OP_IFNOT	17091	3	0
// OP_STORE_V	17051	4	0
// OP_CALL1	505	0	0
// OP_ADDRESS	28	470	17092
// OP_STOREP_F	677	17092	0
// OP_ADDRESS	28	129	17093
// OP_STOREP_F	291	17093	0
// OP_ADDRESS	28	128	17094
// OP_STOREP_F	286	17094	0
// OP_ADDRESS	28	174	17095
// OP_STOREP_FNC	16984	17095	0
// OP_ADDRESS	28	172	17096
// OP_STOREP_FNC	16990	17096	0
// OP_ADDRESS	28	146	17097
// OP_STOREP_V	17100	17097	0
// OP_ADDRESS	28	233	17103
// OP_STOREP_S	15719	17103	0
// OP_STORE_V	15719	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	17104
// OP_STOREP_S	15719	17104	0
// OP_STORE_V	15719	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	17105	4	0
// OP_CALL1	557	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17105	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	159	17106
// OP_STORE_V	17106	7	0
// OP_LOAD_V	28	163	17109
// OP_STORE_V	17109	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	17112
// OP_STORE_V	17112	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	175	17115
// OP_LOAD_F	28	127	17116
// OP_ADD_F	17116	655	17117
// OP_STOREP_F	17117	17115	0
// OP_ADDRESS	28	173	17118
// OP_STOREP_FNC	16983	17118	0
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

