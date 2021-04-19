
// func002400
// function begins at statement 37619, parm_start=20774
// OP_LOAD_V	28	113	20783
// OP_STORE_V	20783	4	0
// OP_CALL1	462	0	0
// OP_LT	1	309	20786
// OP_IFNOT	20786	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	186	20787
// OP_GT	20787	31	20788
// OP_IFNOT	20788	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	20774	117	20789
// OP_STORE_V	20789	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	65	20778	0
// OP_STORE_F	213	20780	0
// OP_STORE_V	20778	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20778	0
// OP_LOAD_V	20774	105	20792
// OP_LOAD_V	20774	580	20795
// OP_SUB_V	20792	20795	20798
// OP_STORE_V	20798	20775	0
// OP_STORE_F	213	20777	0
// OP_STORE_V	20775	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	20775	0
// OP_MUL_V	20778	20775	20801
// OP_STORE_F	20801	20781	0
// OP_STORE_V	20781	4	0
// OP_CALL1	488	0	0
// OP_LT	1	1644	20802
// OP_IFNOT	20802	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	20774	120	20803
// OP_LOAD_F	20774	120	20804
// OP_MUL_F	20781	228	20805
// OP_ADD_F	20804	20805	20806
// OP_STOREP_F	20806	20803	0
// OP_LOAD_F	20774	120	20807
// OP_LT	20807	281	20808
// OP_IFNOT	20808	4	0
// OP_ADDRESS	20774	120	20809
// OP_STOREP_F	281	20809	0
// OP_GOTO	6	0	0
// OP_LOAD_F	20774	120	20810
// OP_GT	20810	231	20811
// OP_IFNOT	20811	3	0
// OP_ADDRESS	20774	120	20812
// OP_STOREP_F	231	20812	0
// OP_ADDRESS	20774	178	20813
// OP_LOAD_F	20774	178	20814
// OP_MUL_F	20781	231	20815
// OP_ADD_F	20814	20815	20816
// OP_STOREP_F	20816	20813	0
// OP_LOAD_F	20774	178	20817
// OP_LT	20817	281	20818
// OP_IFNOT	20818	4	0
// OP_ADDRESS	20774	178	20819
// OP_STOREP_F	281	20819	0
// OP_GOTO	6	0	0
// OP_LOAD_F	20774	178	20820
// OP_GT	20820	231	20821
// OP_IFNOT	20821	3	0
// OP_ADDRESS	20774	178	20822
// OP_STOREP_F	231	20822	0
// OP_DONE	0	0	0
void (entity globaldef007053) func002400 = 
{
    local vector globaldef007054;
    local vector globaldef007058;
    local float globaldef007062;
    local float globaldef007063;
    
    if(vlen(self.velocity) < SVC_INTERMISSION)
    {
        return;
    }
    
    
    if(self.teleport_time > time)
    {
        return;
    }
    
    makevectors(globaldef007053.angles);
    globaldef007058 = v_right;
    globaldef007058_z = FALSE;
    globaldef007058 = normalize(globaldef007058);
    globaldef007054 = globaldef007053.origin - globaldef007053.old_origin;
    globaldef007054_z = FALSE;
    globaldef007054 = normalize(globaldef007054);
    globaldef007062 = globaldef007058 * globaldef007054;
    
    if(fabs(globaldef007062) < 0.4)
    {
        return;
    }
    
    globaldef007053.angles_z = globaldef007053.angles_z + (globaldef007062 * MOVETYPE_WALK);
    if(globaldef007053.angles_z < CONTENT_SKY)
    {
        globaldef007053.angles_z = CONTENT_SKY;
    }
    else
    {
        
        if(globaldef007053.angles_z > MOVETYPE_TOSS)
        {
            globaldef007053.angles_z = MOVETYPE_TOSS;
        }
        
    }
    
    globaldef007053.v_angle_z = globaldef007053.v_angle_z + (globaldef007062 * MOVETYPE_TOSS);
    if(globaldef007053.v_angle_z < CONTENT_SKY)
    {
        globaldef007053.v_angle_z = CONTENT_SKY;
    }
    else
    {
        
        if(globaldef007053.v_angle_z > MOVETYPE_TOSS)
        {
            globaldef007053.v_angle_z = MOVETYPE_TOSS;
        }
        
    }
    
};


// func002401
// function begins at statement 37685, parm_start=20824
// OP_LOAD_F	28	118	20827
// OP_STORE_F	20827	20826	0
// OP_LOAD_F	28	611	20828
// OP_STORE_F	20828	20824	0
// OP_GT	20824	2805	20829
// OP_IFNOT	20829	3	0
// OP_STORE_F	2805	20824	0
// OP_GOTO	4	0	0
// OP_LT	20824	12648	20830
// OP_IFNOT	20830	2	0
// OP_STORE_F	12648	20824	0
// OP_MUL_F	20824	539	20831
// OP_STORE_F	20831	20824	0
// OP_EQ_F	20826	20824	20832
// OP_IFNOT	20832	2	0
// OP_RETURN	0	0	0
// OP_SUB_F	20824	20826	20833
// OP_STORE_F	20833	20825	0
// OP_GT	20825	213	20834
// OP_IFNOT	20834	9	0
// OP_LOAD_F	28	612	20835
// OP_MUL_F	20835	539	20836
// OP_GT	20825	20836	20837
// OP_IFNOT	20837	4	0
// OP_LOAD_F	28	612	20838
// OP_MUL_F	20838	539	20839
// OP_STORE_F	20839	20825	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	612	20840
// OP_MUL_F	20840	539	20841
// OP_SUB_F	213	20841	20842
// OP_LT	20825	20842	20843
// OP_IFNOT	20843	5	0
// OP_LOAD_F	28	612	20844
// OP_MUL_F	20844	539	20845
// OP_SUB_F	213	20845	20846
// OP_STORE_F	20846	20825	0
// OP_ADDRESS	28	118	20847
// OP_ADD_F	20826	20825	20848
// OP_STOREP_F	20848	20847	0
// OP_DONE	0	0	0
void () func002401 = 
{
    local float globaldef007065;
    local float globaldef007066;
    local float globaldef007067;
    globaldef007067 = self.angles_x;
    globaldef007065 = self.field000288;
    if(globaldef007065 > 80)
    {
        globaldef007065 = 80;
    }
    else
    {
        
        if(globaldef007065 < -80)
        {
            globaldef007065 = -80;
        }
        
    }
    
    globaldef007065 = globaldef007065 * RA_PLAYERSTATTIME;
    
    if(globaldef007067 == globaldef007065)
    {
        return;
    }
    
    globaldef007066 = globaldef007065 - globaldef007067;
    if(globaldef007066 > FALSE)
    {
        
        if(globaldef007066 > (self.field000289 * RA_PLAYERSTATTIME))
        {
            globaldef007066 = self.field000289 * RA_PLAYERSTATTIME;
        }
        
    }
    else
    {
        
        if(globaldef007066 < (FALSE - (self.field000289 * RA_PLAYERSTATTIME)))
        {
            globaldef007066 = FALSE - (self.field000289 * RA_PLAYERSTATTIME);
        }
        
    }
    
    self.angles_x = globaldef007067 + globaldef007066;
};


// func002402
// function begins at statement 37726, parm_start=20850
// OP_LOAD_F	28	120	20853
// OP_STORE_F	20853	20852	0
// OP_STORE_F	213	20850	0
// OP_EQ_F	20852	20850	20854
// OP_IFNOT	20854	2	0
// OP_RETURN	0	0	0
// OP_SUB_F	20850	20852	20855
// OP_STORE_F	20855	20851	0
// OP_GT	20851	213	20856
// OP_IFNOT	20856	5	0
// OP_GT	20851	216	20857
// OP_IFNOT	20857	2	0
// OP_STORE_F	216	20851	0
// OP_GOTO	4	0	0
// OP_LT	20851	277	20858
// OP_IFNOT	20858	2	0
// OP_STORE_F	277	20851	0
// OP_ADDRESS	28	120	20859
// OP_ADD_F	20852	20851	20860
// OP_STOREP_F	20860	20859	0
// OP_DONE	0	0	0
void () func002402 = 
{
    local float globaldef007069;
    local float globaldef007070;
    local float globaldef007071;
    globaldef007071 = self.angles_z;
    globaldef007069 = FALSE;
    
    if(globaldef007071 == globaldef007069)
    {
        return;
    }
    
    globaldef007070 = globaldef007069 - globaldef007071;
    if(globaldef007070 > FALSE)
    {
        
        if(globaldef007070 > FL_SWIM)
        {
            globaldef007070 = FL_SWIM;
        }
        
    }
    else
    {
        
        if(globaldef007070 < CONTENT_SOLID)
        {
            globaldef007070 = CONTENT_SOLID;
        }
        
    }
    
    self.angles_z = globaldef007071 + globaldef007070;
};


// func002403
// function begins at statement 37747, parm_start=20862
// OP_LOAD_F	28	177	20864
// OP_STORE_V	20864	4	0
// OP_CALL1	3179	0	0
// OP_STORE_F	1	3507	0
// OP_LOAD_F	28	191	20865
// OP_STORE_F	20865	20862	0
// OP_EQ_F	3507	20862	20866
// OP_IFNOT	20866	2	0
// OP_RETURN	0	0	0
// OP_SUB_F	20862	3507	20867
// OP_STORE_F	20867	20863	0
// OP_GT	20862	3507	20868
// OP_IFNOT	20868	6	0
// OP_GT	20863	1296	20869
// OP_IFNOT	20869	3	0
// OP_SUB_F	20863	1298	20870
// OP_STORE_F	20870	20863	0
// OP_GOTO	5	0	0
// OP_LT	20863	1300	20871
// OP_IFNOT	20871	3	0
// OP_ADD_F	20863	1298	20872
// OP_STORE_F	20872	20863	0
// OP_GT	20863	213	20873
// OP_IFNOT	20873	7	0
// OP_LOAD_F	28	192	20874
// OP_GT	20863	20874	20875
// OP_IFNOT	20875	3	0
// OP_LOAD_F	28	192	20876
// OP_STORE_F	20876	20863	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	192	20877
// OP_SUB_F	213	20877	20878
// OP_LT	20863	20878	20879
// OP_IFNOT	20879	4	0
// OP_LOAD_F	28	192	20880
// OP_SUB_F	213	20880	20881
// OP_STORE_F	20881	20863	0
// OP_ADDRESS	28	177	20882
// OP_ADD_F	3507	20863	20883
// OP_STORE_V	20883	4	0
// OP_CALL1	3179	0	0
// OP_STOREP_F	1	20882	0
// OP_DONE	0	0	0
void () func002403 = 
{
    local float globaldef007073;
    local float globaldef007074;
    current_yaw = anglemod(self.v_angle_y);
    globaldef007073 = self.ideal_yaw;
    
    if(current_yaw == globaldef007073)
    {
        return;
    }
    
    globaldef007074 = globaldef007073 - current_yaw;
    if(globaldef007073 > current_yaw)
    {
        
        if(globaldef007074 > 180)
        {
            globaldef007074 = globaldef007074 - 360;
        }
        
    }
    else
    {
        
        if(globaldef007074 < -180)
        {
            globaldef007074 = globaldef007074 + 360;
        }
        
    }
    
    if(globaldef007074 > FALSE)
    {
        
        if(globaldef007074 > self.yaw_speed)
        {
            globaldef007074 = self.yaw_speed;
        }
        
    }
    else
    {
        
        if(globaldef007074 < (FALSE - self.yaw_speed))
        {
            globaldef007074 = FALSE - self.yaw_speed;
        }
        
    }
    
    self.v_angle_y = anglemod(current_yaw + globaldef007074);
};


// func002404
// function begins at statement 37790, parm_start=20885
// OP_LOAD_F	28	176	20889
// OP_STORE_F	20889	20887	0
// OP_LOAD_F	28	611	20890
// OP_MUL_F	20890	276	20891
// OP_STORE_F	20891	20885	0
// OP_GT	20885	2805	20892
// OP_IFNOT	20892	3	0
// OP_STORE_F	2805	20885	0
// OP_GOTO	4	0	0
// OP_LT	20885	12648	20893
// OP_IFNOT	20893	2	0
// OP_STORE_F	12648	20885	0
// OP_EQ_F	20887	20885	20894
// OP_IFNOT	20894	2	0
// OP_RETURN	0	0	0
// OP_SUB_F	20885	20887	20895
// OP_STORE_F	20895	20886	0
// OP_GT	20886	213	20896
// OP_IFNOT	20896	7	0
// OP_LOAD_F	28	612	20897
// OP_GT	20886	20897	20898
// OP_IFNOT	20898	3	0
// OP_LOAD_F	28	612	20899
// OP_STORE_F	20899	20886	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	612	20900
// OP_SUB_F	213	20900	20901
// OP_LT	20886	20901	20902
// OP_IFNOT	20902	4	0
// OP_LOAD_F	28	612	20903
// OP_SUB_F	213	20903	20904
// OP_STORE_F	20904	20886	0
// OP_ADDRESS	28	176	20905
// OP_ADD_F	20887	20886	20906
// OP_STOREP_F	20906	20905	0
// OP_DONE	0	0	0
void () func002404 = 
{
    local float globaldef007076;
    local float globaldef007077;
    local float globaldef007078;
    local float globaldef007079;
    globaldef007078 = self.v_angle_x;
    globaldef007076 = self.field000288 * CONTENT_EMPTY;
    if(globaldef007076 > 80)
    {
        globaldef007076 = 80;
    }
    else
    {
        
        if(globaldef007076 < -80)
        {
            globaldef007076 = -80;
        }
        
    }
    
    
    if(globaldef007078 == globaldef007076)
    {
        return;
    }
    
    globaldef007077 = globaldef007076 - globaldef007078;
    if(globaldef007077 > FALSE)
    {
        
        if(globaldef007077 > self.field000289)
        {
            globaldef007077 = self.field000289;
        }
        
    }
    else
    {
        
        if(globaldef007077 < (FALSE - self.field000289))
        {
            globaldef007077 = FALSE - self.field000289;
        }
        
    }
    
    self.v_angle_x = globaldef007078 + globaldef007077;
};


// func002405
// function begins at statement 37826, parm_start=20908
// OP_LOAD_F	28	178	20911
// OP_STORE_F	20911	20910	0
// OP_STORE_F	213	20908	0
// OP_EQ_F	20910	20908	20912
// OP_IFNOT	20912	2	0
// OP_RETURN	0	0	0
// OP_SUB_F	20908	20910	20913
// OP_STORE_F	20913	20909	0
// OP_GT	20909	213	20914
// OP_IFNOT	20914	5	0
// OP_GT	20909	216	20915
// OP_IFNOT	20915	2	0
// OP_STORE_F	216	20909	0
// OP_GOTO	4	0	0
// OP_LT	20909	277	20916
// OP_IFNOT	20916	2	0
// OP_STORE_F	277	20909	0
// OP_ADDRESS	28	178	20917
// OP_ADD_F	20910	20909	20918
// OP_STOREP_F	20918	20917	0
// OP_DONE	0	0	0
void () func002405 = 
{
    local float globaldef007081;
    local float globaldef007082;
    local float globaldef007083;
    globaldef007083 = self.v_angle_z;
    globaldef007081 = FALSE;
    
    if(globaldef007083 == globaldef007081)
    {
        return;
    }
    
    globaldef007082 = globaldef007081 - globaldef007083;
    if(globaldef007082 > FALSE)
    {
        
        if(globaldef007082 > FL_SWIM)
        {
            globaldef007082 = FL_SWIM;
        }
        
    }
    else
    {
        
        if(globaldef007082 < CONTENT_SOLID)
        {
            globaldef007082 = CONTENT_SOLID;
        }
        
    }
    
    self.v_angle_z = globaldef007083 + globaldef007082;
};


// func002406
// function begins at statement 37847, parm_start=20920
// OP_CALL0	20849	0	0
// OP_CALL0	20907	0	0
// OP_LOAD_F	28	186	20920
// OP_GT	20920	31	20921
// OP_IFNOT	20921	2	0
// OP_RETURN	0	0	0
// OP_CALL0	494	0	0
// OP_CALL0	20823	0	0
// OP_CALL0	20861	0	0
// OP_CALL0	20884	0	0
// OP_DONE	0	0	0
void () func002406 = 
{
    func002402();
    func002405();
    
    if(self.teleport_time > time)
    {
        return;
    }
    
    ChangeYaw();
    func002401();
    func002403();
    func002404();
};


// func002407
// function begins at statement 37858, parm_start=20923
// OP_LOAD_F	28	394	20923
// OP_LT	20923	8982	20924
// OP_LOAD_F	28	116	20925
// OP_GE	20925	213	20926
// OP_AND	20924	20926	20927
// OP_LOAD_F	28	152	20928
// OP_GT	20928	213	20929
// OP_AND	20927	20929	20930
// OP_IFNOT	20930	26	0
// OP_LOAD_F	28	394	20931
// OP_LT	20931	8993	20932
// OP_IFNOT	20932	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6647	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	398	20933
// OP_STOREP_S	8996	20933	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6646	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	394	20934
// OP_STOREP_F	213	20934	0
// OP_LOAD_F	28	575	20935
// OP_BITAND	20935	700	20936
// OP_NOT_F	20936	0	20937
// OP_IFNOT	20937	4	0
// OP_ADDRESS	28	394	20938
// OP_LOAD_F	28	116	20939
// OP_STOREP_F	20939	20938	0
// OP_DONE	0	0	0
void () func002407 = 
{
    
    if(((self.jump_flag < -300) && (self.velocity_z >= FALSE)) && (self.health > FALSE))
    {
        if(self.jump_flag < -650)
        {
            T_Damage(self, world, world, MOVETYPE_FLY);
            sound(self, CHAN_VOICE, "player/land2.wav", TRUE, ATTN_NORM);
            self.deathtype = "falling";
        }
        else
        {
            sound(self, CHAN_VOICE, "player/land.wav", TRUE, ATTN_NORM);
        }
        
        self.jump_flag = FALSE;
    }
    
    
    if(!(self.botflags & globaldef000683))
    {
        self.jump_flag = self.velocity_z;
    }
    
};


// func002408
// function begins at statement 37900, parm_start=20941
// OP_STORE_V	28	4	0
// OP_CALL1	20773	0	0
// OP_CALL0	20919	0	0
// OP_CALL0	8832	0	0
// OP_CALL0	20922	0	0
// OP_CALL0	8559	0	0
// OP_ADDRESS	28	580	20941
// OP_LOAD_V	28	105	20944
// OP_STOREP_V	20944	20941	0
// OP_ADDRESS	28	576	20947
// OP_LOAD_V	28	113	20950
// OP_STOREP_V	20950	20947	0
// OP_ADDRESS	28	584	20953
// OP_LOAD_F	28	182	20954
// OP_STOREP_F	20954	20953	0
// OP_ADDRESS	28	585	20955
// OP_LOAD_F	28	575	20956
// OP_STOREP_F	20956	20955	0
// OP_ADDRESS	28	182	20957
// OP_LOAD_F	28	182	20958
// OP_LOAD_F	28	182	20959
// OP_BITAND	20959	223	20960
// OP_SUB_F	20958	20960	20961
// OP_STOREP_F	20961	20957	0
// OP_ADDRESS	28	586	20962
// OP_STOREP_ENT	30	20962	0
// OP_DONE	0	0	0
void () func002408 = 
{
    func002400(self);
    func002406();
    CheckPowerups();
    func002407();
    CheckRules();
    self.old_origin = self.origin;
    self.old_velocity = self.velocity;
    self.old_flags = self.flags;
    self.old_botflags = self.botflags;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.field000263 = world;
};


// func002409
// function begins at statement 37927, parm_start=20964
// OP_LOAD_F	28	575	20964
// OP_BITAND	20964	703	20965
// OP_IFNOT	20965	2	0
// OP_CALL0	1196	0	0
// OP_BITAND	821	767	20966
// OP_IFNOT	20966	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1216	0	0
// OP_DONE	0	0	0
void () func002409 = 
{
    
    if(self.botflags & globaldef000686)
    {
        func002680();
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_prethink(self);
    }
    
};


// func002410
// function begins at statement 37936, parm_start=20967
// OP_CALL0	20963	0	0
// OP_LOAD_F	28	588	20968
// OP_GT	20968	20967	20969
// OP_IFNOT	20969	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1141	0	0
// OP_CALL0	20940	0	0
// OP_DONE	0	0	0
void (float globaldef007088) func002410 = 
{
    func002409();
    
    if(self.field000265 > globaldef007088)
    {
        func002499(self);
    }
    
    func002408();
};


// func002411
// function begins at statement 37944, parm_start=20971
// OP_STORE_F	214	20972	0
// OP_ADD_F	20971	214	20973
// OP_STORE_F	20973	20971	0
// OP_GT	20971	214	20974
// OP_IFNOT	20974	6	0
// OP_MUL_F	20972	216	20975
// OP_STORE_F	20975	20972	0
// OP_SUB_F	20971	214	20976
// OP_STORE_F	20976	20971	0
// OP_GOTO	-6	0	0
// OP_RETURN	20972	0	0
// OP_DONE	0	0	0
float (float globaldef007090) func002411 = 
{
    local float globaldef007091;
    globaldef007091 = TRUE;
    globaldef007090 = globaldef007090 + TRUE;
    
    while(globaldef007090 > TRUE)
    {
        globaldef007091 = globaldef007091 * FL_SWIM;
        globaldef007090 = globaldef007090 - TRUE;
    }
    
    return globaldef007091;
};


// func002412
// function begins at statement 37956, parm_start=20978
// OP_STORE_V	20978	4	0
// OP_CALL1	20970	0	0
// OP_BITAND	811	1	20979
// OP_IFNOT	20979	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float globaldef007093) func002412 = 
{
    
    if(globaldef000794 & func002411(globaldef007093))
    {
        return TRUE;
    }
    
    return FALSE;
};


// func002413
// function begins at statement 37963, parm_start=20981
// OP_STORE_V	20981	4	0
// OP_CALL1	20970	0	0
// OP_BITOR	811	1	20982
// OP_STORE_F	20982	811	0
// OP_DONE	0	0	0
void (float globaldef007095) func002413 = 
{
    globaldef000794 = globaldef000794 | func002411(globaldef007095);
};


// func002414
// function begins at statement 37968, parm_start=20984
// OP_STORE_V	20984	4	0
// OP_CALL1	20970	0	0
// OP_BITAND	811	1	20985
// OP_SUB_F	811	20985	20986
// OP_STORE_F	20986	811	0
// OP_DONE	0	0	0
void (float globaldef007097) func002414 = 
{
    globaldef000794 = globaldef000794 - (globaldef000794 & func002411(globaldef007097));
};


// func002415
// function begins at statement 37974, parm_start=20988
// OP_STORE_F	213	20988	0
// OP_LT	20988	736	20989
// OP_IFNOT	20989	9	0
// OP_STORE_V	20988	4	0
// OP_CALL1	20977	0	0
// OP_NOT_F	1	0	20990
// OP_IFNOT	20990	2	0
// OP_RETURN	20988	0	0
// OP_ADD_F	20988	214	20991
// OP_STORE_F	20991	20988	0
// OP_GOTO	-9	0	0
// OP_RETURN	276	0	0
// OP_DONE	0	0	0
float () func002415 = 
{
    local float globaldef007099;
    globaldef007099 = FALSE;
    
    while(globaldef007099 < OBOT_MAXBOTS)
    {
        
        if(!func002412(globaldef007099))
        {
            return globaldef007099;
        }
        
        globaldef007099 = globaldef007099 + TRUE;
    }
    
    return CONTENT_EMPTY;
};


// func002416
// function begins at statement 37987, parm_start=20993
// OP_CALL0	457	0	0
// OP_SUB_F	736	214	20994
// OP_MUL_F	1	20994	20995
// OP_ADD_F	20995	539	20996
// OP_STORE_V	20996	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	20993	0
// OP_EQ_F	20993	213	20997
// OP_IFNOT	20997	8	0
// OP_CALL0	457	0	0
// OP_SUB_F	736	214	20998
// OP_MUL_F	1	20998	20999
// OP_ADD_F	20999	539	21000
// OP_STORE_V	21000	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	20993	0
// OP_STORE_V	20993	4	0
// OP_CALL1	20977	0	0
// OP_IF	1	-18	0
// OP_RETURN	20993	0	0
// OP_DONE	0	0	0
float () func002416 = 
{
    local float globaldef007101;
    do
    {
        globaldef007101 = floor((random() * (OBOT_MAXBOTS - TRUE)) + RA_PLAYERSTATTIME);
        
        if(globaldef007101 == FALSE)
        {
            globaldef007101 = floor((random() * (OBOT_MAXBOTS - TRUE)) + RA_PLAYERSTATTIME);
        }
        
    } while (func002412(globaldef007101));
    return globaldef007101;
};

