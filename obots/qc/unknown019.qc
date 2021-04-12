
// func002071
// function begins at statement 26221, parm_start=15733
// OP_LOAD_ENT	28	201	15736
// OP_EQ_E	29	15736	15737
// OP_IFNOT	15737	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	15738
// OP_STORE_V	15738	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	281	15741
// OP_IFNOT	15741	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	12107	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	333	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	15742
// OP_LOAD_V	28	113	15745
// OP_STORE_V	15745	4	0
// OP_CALL1	459	0	0
// OP_MUL_FV	217	1	15748
// OP_SUB_V	15742	15748	15751
// OP_STORE_V	15751	15733	0
// OP_LOAD_F	29	152	15754
// OP_IFNOT	15754	14	0
// OP_STORE_V	15733	4	0
// OP_LOAD_V	28	113	15755
// OP_MUL_VF	15755	3267	15758
// OP_STORE_V	15758	7	0
// OP_STORE_V	765	10	0
// OP_CALL3	5355	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	15761
// OP_STORE_V	15761	10	0
// OP_STORE_V	765	13	0
// OP_CALL4	522	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	15733	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	15734	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	15735	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func002071 = 
{
    local vector globaldef005430;
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    sound(self, CHAN_WEAPON, "enforcer/enfstop.wav", TRUE, ATTN_STATIC);
    globaldef005430 = self.origin - (FL_CLIENT * normalize(self.velocity));
    if(other.health)
    {
        SpawnBlood(globaldef005430, self.velocity * 0.2, GLOBALDEFSEVENFOUREIGHT);
        T_Damage(other, self, self.owner, GLOBALDEFSEVENFOUREIGHT);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, globaldef005430_x);
        WriteCoord(MSG_BROADCAST, globaldef005430_y);
        WriteCoord(MSG_BROADCAST, globaldef005430_z);
    }
    
    remove(self);
};


// func002072
// function begins at statement 26279, parm_start=15762
// OP_LOAD_S	28	129	15768
// OP_EQ_S	15768	3693	15769
// OP_IFNOT	15769	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	12064	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	15765	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	15765	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	350	0
// OP_ADDRESS	350	201	15770
// OP_STOREP_ENT	28	15770	0
// OP_ADDRESS	350	103	15771
// OP_STOREP_F	230	15771	0
// OP_ADDRESS	350	104	15772
// OP_STOREP_F	239	15772	0
// OP_ADDRESS	350	133	15773
// OP_STOREP_F	341	15773	0
// OP_STORE_V	350	4	0
// OP_STORE_V	12106	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	15762	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	350	113	15774
// OP_MUL_VF	15765	740	15777
// OP_STOREP_V	15777	15774	0
// OP_ADDRESS	350	117	15780
// OP_LOAD_V	350	113	15783
// OP_STORE_V	15783	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	15780	0
// OP_ADDRESS	350	150	15786
// OP_ADD_F	31	230	15787
// OP_STOREP_F	15787	15786	0
// OP_ADDRESS	350	148	15788
// OP_STOREP_FNC	521	15788	0
// OP_ADDRESS	350	146	15789
// OP_STOREP_FNC	15732	15789	0
// OP_DONE	0	0	0
void (vector globaldef005434, vector globaldef005438) func002072 = 
{
    
    if(self.classname == "monster_enforcer")
    {
        sound(self, CHAN_WEAPON, "enforcer/enfire.wav", TRUE, ATTN_NORM);
    }
    
    globaldef005438 = normalize(globaldef005438);
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_FLY;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/laser.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, globaldef005434);
    newmis.velocity = globaldef005438 * GLOBALDEFSEVENTWOTHREE;
    newmis.angles = vectoangles(newmis.velocity);
    newmis.nextthink = time + MOVETYPE_FLY;
    newmis.think = SUB_Remove;
    newmis.touch = func002071;
};


// func002073
// function begins at statement 26327, parm_start=15791
// OP_ADDRESS	28	133	15794
// OP_LOAD_F	28	133	15795
// OP_BITOR	15795	339	15796
// OP_STOREP_F	15796	15794	0
// OP_LOAD_V	28	117	15797
// OP_STORE_V	15797	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	15800
// OP_MUL_VF	59	309	15803
// OP_ADD_V	15800	15803	15806
// OP_MUL_VF	65	15809	15810
// OP_ADD_V	15806	15810	15813
// OP_ADD_V	15813	5392	15816
// OP_STORE_V	15816	15791	0
// OP_STORE_V	15791	4	0
// OP_LOAD_ENT	28	181	15819
// OP_LOAD_V	15819	105	15820
// OP_LOAD_V	28	105	15823
// OP_SUB_V	15820	15823	15826
// OP_STORE_V	15826	7	0
// OP_CALL2	12060	0	0
// OP_DONE	0	0	0
void () func002073 = 
{
    local vector globaldef005443;
    self.effects = self.effects | EF_MUZZLEFLASH;
    makevectors(self.angles);
    globaldef005443 = ((self.origin + (v_forward * SVC_INTERMISSION)) + (v_right * 8.5)) + '0 0 16';
    func002072(globaldef005443, self.enemy.origin - self.origin);
};


// func002074
// function begins at statement 26349, parm_start=15830
// OP_STATE	213	15830	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002074 = [0, func002075]
{
    ai_stand();
};


// func002075
// function begins at statement 26352, parm_start=15831
// OP_STATE	214	15831	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002075 = [1, func002076]
{
    ai_stand();
};


// func002076
// function begins at statement 26355, parm_start=15832
// OP_STATE	216	15832	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002076 = [2, func002077]
{
    ai_stand();
};


// func002077
// function begins at statement 26358, parm_start=15833
// OP_STATE	228	15833	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002077 = [3, func002078]
{
    ai_stand();
};


// func002078
// function begins at statement 26361, parm_start=15834
// OP_STATE	229	15834	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002078 = [4, func002079]
{
    ai_stand();
};


// func002079
// function begins at statement 26364, parm_start=15835
// OP_STATE	230	15835	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002079 = [5, func002080]
{
    ai_stand();
};


// func002080
// function begins at statement 26367, parm_start=15836
// OP_STATE	231	15829	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func002080 = [6, func002074]
{
    ai_stand();
};


// func002081
// function begins at statement 26370, parm_start=15837
// OP_STATE	232	15837	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	15838
// OP_IFNOT	15838	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12307	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002081 = [7, func002082]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(FL_SWIM);
};


// func002082
// function begins at statement 26383, parm_start=15839
// OP_STATE	217	15839	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002082 = [8, func002083]
{
    ai_walk(MOVETYPE_STEP);
};


// func002083
// function begins at statement 26387, parm_start=15840
// OP_STATE	234	15840	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002083 = [9, func002084]
{
    ai_walk(MOVETYPE_STEP);
};


// func002084
// function begins at statement 26391, parm_start=15841
// OP_STATE	235	15841	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002084 = [10, func002085]
{
    ai_walk(MOVETYPE_WALK);
};


// func002085
// function begins at statement 26395, parm_start=15842
// OP_STATE	236	15842	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002085 = [11, func002086]
{
    ai_walk(TRUE);
};


// func002086
// function begins at statement 26399, parm_start=15843
// OP_STATE	791	15843	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002086 = [12, func002087]
{
    ai_walk(FL_SWIM);
};


// func002087
// function begins at statement 26403, parm_start=15844
// OP_STATE	792	15844	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002087 = [13, func002088]
{
    ai_walk(FL_SWIM);
};


// func002088
// function begins at statement 26407, parm_start=15845
// OP_STATE	5693	15845	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002088 = [14, func002089]
{
    ai_walk(TRUE);
};


// func002089
// function begins at statement 26411, parm_start=15846
// OP_STATE	765	15846	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002089 = [15, func002090]
{
    ai_walk(FL_SWIM);
};


// func002090
// function begins at statement 26415, parm_start=15847
// OP_STATE	218	15847	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002090 = [16, func002091]
{
    ai_walk(MOVETYPE_STEP);
};


// func002091
// function begins at statement 26419, parm_start=15848
// OP_STATE	6892	15848	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002091 = [17, func002092]
{
    ai_walk(MOVETYPE_STEP);
};


// func002092
// function begins at statement 26423, parm_start=15849
// OP_STATE	6133	15849	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002092 = [18, func002093]
{
    ai_walk(TRUE);
};


// func002093
// function begins at statement 26427, parm_start=15850
// OP_STATE	6895	15850	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002093 = [19, func002094]
{
    ai_walk(FL_SWIM);
};


// func002094
// function begins at statement 26431, parm_start=15851
// OP_STATE	2323	15851	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002094 = [20, func002095]
{
    ai_walk(MOVETYPE_WALK);
};


// func002095
// function begins at statement 26435, parm_start=15852
// OP_STATE	12465	15852	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002095 = [21, func002096]
{
    ai_walk(MOVETYPE_STEP);
};


// func002096
// function begins at statement 26439, parm_start=15853
// OP_STATE	12467	15836	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func002096 = [22, func002081]
{
    ai_walk(FL_SWIM);
};


// func002097
// function begins at statement 26443, parm_start=15854
// OP_STATE	304	15854	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	15855
// OP_IFNOT	15855	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12307	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002097 = [23, func002098]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(18);
};


// func002098
// function begins at statement 26456, parm_start=15856
// OP_STATE	736	15856	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002098 = [24, func002099]
{
    ai_run(14);
};


// func002099
// function begins at statement 26460, parm_start=15857
// OP_STATE	305	15857	0
// OP_STORE_V	232	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002099 = [25, func002100]
{
    ai_run(MOVETYPE_PUSH);
};


// func002100
// function begins at statement 26464, parm_start=15858
// OP_STATE	306	15858	0
// OP_STORE_V	791	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002100 = [26, func002101]
{
    ai_run(GLOBALDEFSEVENSEVENFOUR);
};


// func002101
// function begins at statement 26468, parm_start=15859
// OP_STATE	307	15859	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002101 = [27, func002102]
{
    ai_run(14);
};


// func002102
// function begins at statement 26472, parm_start=15860
// OP_STATE	308	15860	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002102 = [28, func002103]
{
    ai_run(14);
};


// func002103
// function begins at statement 26476, parm_start=15861
// OP_STATE	9664	15861	0
// OP_STORE_V	232	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002103 = [29, func002104]
{
    ai_run(MOVETYPE_PUSH);
};


// func002104
// function begins at statement 26480, parm_start=15862
// OP_STATE	309	15853	0
// OP_STORE_V	236	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func002104 = [30, func002097]
{
    ai_run(MOVETYPE_BOUNCEMISSILE);
};


// func002105
// function begins at statement 26484, parm_start=15863
// OP_STATE	310	15863	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002105 = [31, func002106]
{
    ai_face();
};


// func002106
// function begins at statement 26487, parm_start=15864
// OP_STATE	219	15864	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002106 = [32, func002107]
{
    ai_face();
};


// func002107
// function begins at statement 26490, parm_start=15865
// OP_STATE	312	15865	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002107 = [33, func002108]
{
    ai_face();
};


// func002108
// function begins at statement 26493, parm_start=15866
// OP_STATE	9671	15866	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002108 = [34, func002109]
{
    ai_face();
};


// func002109
// function begins at statement 26496, parm_start=15867
// OP_STATE	5878	15867	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002109 = [35, func002110]
{
    ai_face();
};


// func002110
// function begins at statement 26499, parm_start=15868
// OP_STATE	9655	15868	0
// OP_CALL0	15790	0	0
// OP_DONE	0	0	0
void () func002110 = [36, func002111]
{
    func002073();
};


// func002111
// function begins at statement 26502, parm_start=15869
// OP_STATE	9657	15869	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002111 = [37, func002112]
{
    ai_face();
};


// func002112
// function begins at statement 26505, parm_start=15870
// OP_STATE	9659	15870	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002112 = [38, func002113]
{
    ai_face();
};


// func002113
// function begins at statement 26508, parm_start=15871
// OP_STATE	5878	15871	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002113 = [35, func002114]
{
    ai_face();
};


// func002114
// function begins at statement 26511, parm_start=15872
// OP_STATE	9655	15872	0
// OP_CALL0	15790	0	0
// OP_DONE	0	0	0
void () func002114 = [36, func002115]
{
    func002073();
};


// func002115
// function begins at statement 26514, parm_start=15873
// OP_STATE	9657	15873	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002115 = [37, func002116]
{
    ai_face();
};


// func002116
// function begins at statement 26517, parm_start=15874
// OP_STATE	9659	15874	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002116 = [38, func002117]
{
    ai_face();
};


// func002117
// function begins at statement 26520, parm_start=15875
// OP_STATE	9661	15875	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func002117 = [39, func002118]
{
    ai_face();
};


// func002118
// function begins at statement 26523, parm_start=15876
// OP_STATE	746	15853	0
// OP_CALL0	3190	0	0
// OP_STORE_V	15862	4	0
// OP_CALL1	3170	0	0
// OP_DONE	0	0	0
void () func002118 = [40, func002097]
{
    ai_face();
    SUB_CheckRefire(func002105);
};


// func002119
// function begins at statement 26528, parm_start=15877
// OP_STATE	9936	15877	0
// OP_DONE	0	0	0
void () func002119 = [66, func002120]
{
};


// func002120
// function begins at statement 26530, parm_start=15878
// OP_STATE	9938	15878	0
// OP_DONE	0	0	0
void () func002120 = [67, func002121]
{
};


// func002121
// function begins at statement 26532, parm_start=15879
// OP_STATE	8193	15879	0
// OP_DONE	0	0	0
void () func002121 = [68, func002122]
{
};


// func002122
// function begins at statement 26534, parm_start=15880
// OP_STATE	8196	15853	0
// OP_DONE	0	0	0
void () func002122 = [69, func002097]
{
};


// func002123
// function begins at statement 26536, parm_start=15881
// OP_STATE	1536	15881	0
// OP_DONE	0	0	0
void () func002123 = [70, func002124]
{
};


// func002124
// function begins at statement 26538, parm_start=15882
// OP_STATE	8201	15882	0
// OP_DONE	0	0	0
void () func002124 = [71, func002125]
{
};


// func002125
// function begins at statement 26540, parm_start=15883
// OP_STATE	9943	15883	0
// OP_DONE	0	0	0
void () func002125 = [72, func002126]
{
};


// func002126
// function begins at statement 26542, parm_start=15884
// OP_STATE	5487	15884	0
// OP_DONE	0	0	0
void () func002126 = [73, func002127]
{
};


// func002127
// function begins at statement 26544, parm_start=15885
// OP_STATE	9946	15853	0
// OP_DONE	0	0	0
void () func002127 = [74, func002097]
{
};


// func002128
// function begins at statement 26546, parm_start=15886
// OP_STATE	9173	15886	0
// OP_DONE	0	0	0
void () func002128 = [75, func002129]
{
};


// func002129
// function begins at statement 26548, parm_start=15887
// OP_STATE	9949	15887	0
// OP_DONE	0	0	0
void () func002129 = [76, func002130]
{
};


// func002130
// function begins at statement 26550, parm_start=15888
// OP_STATE	9951	15888	0
// OP_DONE	0	0	0
void () func002130 = [77, func002131]
{
};


// func002131
// function begins at statement 26552, parm_start=15889
// OP_STATE	9953	15889	0
// OP_DONE	0	0	0
void () func002131 = [78, func002132]
{
};


// func002132
// function begins at statement 26554, parm_start=15890
// OP_STATE	9955	15890	0
// OP_DONE	0	0	0
void () func002132 = [79, func002133]
{
};


// func002133
// function begins at statement 26556, parm_start=15891
// OP_STATE	2805	15891	0
// OP_DONE	0	0	0
void () func002133 = [80, func002134]
{
};


// func002134
// function begins at statement 26558, parm_start=15892
// OP_STATE	8204	15892	0
// OP_DONE	0	0	0
void () func002134 = [81, func002135]
{
};


// func002135
// function begins at statement 26560, parm_start=15893
// OP_STATE	9959	15853	0
// OP_DONE	0	0	0
void () func002135 = [82, func002097]
{
};


// func002136
// function begins at statement 26562, parm_start=15894
// OP_STATE	9961	15894	0
// OP_DONE	0	0	0
void () func002136 = [83, func002137]
{
};


// func002137
// function begins at statement 26564, parm_start=15895
// OP_STATE	7694	15895	0
// OP_DONE	0	0	0
void () func002137 = [84, func002138]
{
};


// func002138
// function begins at statement 26566, parm_start=15896
// OP_STATE	9963	15896	0
// OP_DONE	0	0	0
void () func002138 = [85, func002139]
{
};


// func002139
// function begins at statement 26568, parm_start=15897
// OP_STATE	9965	15897	0
// OP_STORE_V	216	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func002139 = [86, func002140]
{
    ai_painforward(FL_SWIM);
};


// func002140
// function begins at statement 26572, parm_start=15898
// OP_STATE	9967	15898	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func002140 = [87, func002141]
{
    ai_painforward(TRUE);
};


// func002141
// function begins at statement 26576, parm_start=15899
// OP_STATE	9969	15899	0
// OP_DONE	0	0	0
void () func002141 = [88, func002142]
{
};


// func002142
// function begins at statement 26578, parm_start=15900
// OP_STATE	9971	15900	0
// OP_DONE	0	0	0
void () func002142 = [89, func002143]
{
};


// func002143
// function begins at statement 26580, parm_start=15901
// OP_STATE	2658	15901	0
// OP_DONE	0	0	0
void () func002143 = [90, func002144]
{
};


// func002144
// function begins at statement 26582, parm_start=15902
// OP_STATE	9974	15902	0
// OP_DONE	0	0	0
void () func002144 = [91, func002145]
{
};


// func002145
// function begins at statement 26584, parm_start=15903
// OP_STATE	9976	15903	0
// OP_DONE	0	0	0
void () func002145 = [92, func002146]
{
};


// func002146
// function begins at statement 26586, parm_start=15904
// OP_STATE	9978	15904	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func002146 = [93, func002147]
{
    ai_painforward(TRUE);
};


// func002147
// function begins at statement 26590, parm_start=15905
// OP_STATE	9979	15905	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func002147 = [94, func002148]
{
    ai_painforward(TRUE);
};


// func002148
// function begins at statement 26594, parm_start=15906
// OP_STATE	9981	15906	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func002148 = [95, func002149]
{
    ai_painforward(TRUE);
};


// func002149
// function begins at statement 26598, parm_start=15907
// OP_STATE	9983	15907	0
// OP_DONE	0	0	0
void () func002149 = [96, func002150]
{
};


// func002150
// function begins at statement 26600, parm_start=15908
// OP_STATE	9985	15908	0
// OP_DONE	0	0	0
void () func002150 = [97, func002151]
{
};


// func002151
// function begins at statement 26602, parm_start=15909
// OP_STATE	9987	15909	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func002151 = [98, func002152]
{
    ai_pain(TRUE);
};


// func002152
// function begins at statement 26606, parm_start=15910
// OP_STATE	9989	15910	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func002152 = [99, func002153]
{
    ai_pain(TRUE);
};


// func002153
// function begins at statement 26610, parm_start=15911
// OP_STATE	1997	15911	0
// OP_DONE	0	0	0
void () func002153 = [100, func002154]
{
};


// func002154
// function begins at statement 26612, parm_start=15912
// OP_STATE	8107	15853	0
// OP_DONE	0	0	0
void () func002154 = [101, func002097]
{
};


// func002155
// function begins at statement 26614, parm_start=15913
// OP_CALL0	457	0	0
// OP_STORE_F	1	15915	0
// OP_LOAD_F	28	379	15916
// OP_GT	15916	31	15917
// OP_IFNOT	15917	2	0
// OP_RETURN	0	0	0
// OP_LT	15915	539	15918
// OP_IFNOT	15918	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12303	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12305	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LT	15915	3267	15919
// OP_IFNOT	15919	6	0
// OP_ADDRESS	28	379	15920
// OP_ADD_F	31	214	15921
// OP_STOREP_F	15921	15920	0
// OP_CALL0	15876	0	0
// OP_GOTO	19	0	0
// OP_LT	15915	1644	15922
// OP_IFNOT	15922	6	0
// OP_ADDRESS	28	379	15923
// OP_ADD_F	31	214	15924
// OP_STOREP_F	15924	15923	0
// OP_CALL0	15880	0	0
// OP_GOTO	12	0	0
// OP_LT	15915	5599	15925
// OP_IFNOT	15925	6	0
// OP_ADDRESS	28	379	15926
// OP_ADD_F	31	214	15927
// OP_STOREP_F	15927	15926	0
// OP_CALL0	15885	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	379	15928
// OP_ADD_F	31	216	15929
// OP_STOREP_F	15929	15928	0
// OP_CALL0	15893	0	0
// OP_DONE	0	0	0
void (entity globaldef005530, float globaldef005531) func002155 = 
{
    local float globaldef005532;
    globaldef005532 = random();
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    if(globaldef005532 < RA_PLAYERSTATTIME)
    {
        sound(self, CHAN_VOICE, "enforcer/pain1.wav", TRUE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_VOICE, "enforcer/pain2.wav", TRUE, ATTN_NORM);
    }
    
    if(globaldef005532 < 0.2)
    {
        self.pain_finished = time + TRUE;
        func002119();
    }
    else
    {
        if(globaldef005532 < 0.4)
        {
            self.pain_finished = time + TRUE;
            func002123();
        }
        else
        {
            if(globaldef005532 < 0.7)
            {
                self.pain_finished = time + TRUE;
                func002128();
            }
            else
            {
                self.pain_finished = time + FL_SWIM;
                func002136();
            }
            
        }
        
    }
    
};


// func002156
// function begins at statement 26661, parm_start=15931
// OP_STATE	9993	15931	0
// OP_DONE	0	0	0
void () func002156 = [41, func002157]
{
};


// func002157
// function begins at statement 26663, parm_start=15932
// OP_STATE	9995	15932	0
// OP_DONE	0	0	0
void () func002157 = [42, func002158]
{
};


// func002158
// function begins at statement 26665, parm_start=15933
// OP_STATE	9997	15933	0
// OP_ADDRESS	28	104	15934
// OP_STOREP_F	237	15934	0
// OP_ADDRESS	28	161	15935
// OP_STOREP_F	230	15935	0
// OP_CALL0	5177	0	0
// OP_DONE	0	0	0
void () func002158 = [43, func002159]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = MOVETYPE_FLY;
    DropBackpack();
};


// func002159
// function begins at statement 26672, parm_start=15936
// OP_STATE	9999	15936	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func002159 = [44, func002160]
{
    ai_forward(14);
};


// func002160
// function begins at statement 26676, parm_start=15937
// OP_STATE	2598	15937	0
// OP_STORE_V	216	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func002160 = [45, func002161]
{
    ai_forward(FL_SWIM);
};


// func002161
// function begins at statement 26680, parm_start=15938
// OP_STATE	10002	15938	0
// OP_DONE	0	0	0
void () func002161 = [46, func002162]
{
};


// func002162
// function begins at statement 26682, parm_start=15939
// OP_STATE	10004	15939	0
// OP_DONE	0	0	0
void () func002162 = [47, func002163]
{
};


// func002163
// function begins at statement 26684, parm_start=15940
// OP_STATE	10006	15940	0
// OP_DONE	0	0	0
void () func002163 = [48, func002164]
{
};


// func002164
// function begins at statement 26686, parm_start=15941
// OP_STATE	10008	15941	0
// OP_STORE_V	228	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func002164 = [49, func002165]
{
    ai_forward(MOVETYPE_WALK);
};


// func002165
// function begins at statement 26690, parm_start=15942
// OP_STATE	1470	15942	0
// OP_STORE_V	230	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func002165 = [50, func002166]
{
    ai_forward(MOVETYPE_FLY);
};


// func002166
// function begins at statement 26694, parm_start=15943
// OP_STATE	9911	15943	0
// OP_STORE_V	230	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func002166 = [51, func002167]
{
    ai_forward(MOVETYPE_FLY);
};


// func002167
// function begins at statement 26698, parm_start=15944
// OP_STATE	9913	15944	0
// OP_STORE_V	230	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func002167 = [52, func002168]
{
    ai_forward(MOVETYPE_FLY);
};


// func002168
// function begins at statement 26702, parm_start=15945
// OP_STATE	9915	15945	0
// OP_DONE	0	0	0
void () func002168 = [53, func002169]
{
};


// func002169
// function begins at statement 26704, parm_start=15946
// OP_STATE	9917	15945	0
// OP_DONE	0	0	0
void () func002169 = [54, func002169]
{
};


// func002170
// function begins at statement 26706, parm_start=15947
// OP_STATE	9919	15947	0
// OP_DONE	0	0	0
void () func002170 = [55, func002171]
{
};


// func002171
// function begins at statement 26708, parm_start=15948
// OP_STATE	9921	15948	0
// OP_DONE	0	0	0
void () func002171 = [56, func002172]
{
};


// func002172
// function begins at statement 26710, parm_start=15949
// OP_STATE	9923	15949	0
// OP_ADDRESS	28	104	15950
// OP_STOREP_F	237	15950	0
// OP_ADDRESS	28	161	15951
// OP_STOREP_F	230	15951	0
// OP_CALL0	5177	0	0
// OP_DONE	0	0	0
void () func002172 = [57, func002173]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = MOVETYPE_FLY;
    DropBackpack();
};


// func002173
// function begins at statement 26717, parm_start=15952
// OP_STATE	9925	15952	0
// OP_DONE	0	0	0
void () func002173 = [58, func002174]
{
};


// func002174
// function begins at statement 26719, parm_start=15953
// OP_STATE	2783	15953	0
// OP_DONE	0	0	0
void () func002174 = [59, func002175]
{
};


// func002175
// function begins at statement 26721, parm_start=15954
// OP_STATE	2019	15954	0
// OP_DONE	0	0	0
void () func002175 = [60, func002176]
{
};


// func002176
// function begins at statement 26723, parm_start=15955
// OP_STATE	9928	15955	0
// OP_DONE	0	0	0
void () func002176 = [61, func002177]
{
};


// func002177
// function begins at statement 26725, parm_start=15956
// OP_STATE	9930	15956	0
// OP_DONE	0	0	0
void () func002177 = [62, func002178]
{
};


// func002178
// function begins at statement 26727, parm_start=15957
// OP_STATE	6707	15957	0
// OP_DONE	0	0	0
void () func002178 = [63, func002179]
{
};


// func002179
// function begins at statement 26729, parm_start=15958
// OP_STATE	220	15958	0
// OP_DONE	0	0	0
void () func002179 = [64, func002180]
{
};


// func002180
// function begins at statement 26731, parm_start=15959
// OP_STATE	9934	15958	0
// OP_DONE	0	0	0
void () func002180 = [65, func002180]
{
};


// func002181
// function begins at statement 26733, parm_start=15960
// OP_LOAD_F	28	152	15960
// OP_LT	15960	13516	15961
// OP_IFNOT	15961	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	15962	4	0
// OP_LOAD_F	28	152	15963
// OP_STORE_V	15963	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	15964
// OP_STORE_V	15964	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	15965
// OP_STORE_V	15965	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	15966
// OP_STORE_V	15966	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12306	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_GT	1	539	15967
// OP_IFNOT	15967	3	0
// OP_CALL0	15930	0	0
// OP_GOTO	2	0	0
// OP_CALL0	15946	0	0
// OP_DONE	0	0	0
void () func002181 = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_mega.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "enforcer/death1.wav", TRUE, ATTN_NORM);
    if(random() > RA_PLAYERSTATTIME)
    {
        func002156();
    }
    else
    {
        func002170();
    }
    
};

