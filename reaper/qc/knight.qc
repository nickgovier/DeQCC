// knight_stand1
// function begins at statement 14231, parm_start=8954
// OP_STATE	213	8954	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand1 = [0, knight_stand2]
{
    ai_stand();
};

// knight_stand2
// function begins at statement 14234, parm_start=8955
// OP_STATE	214	8955	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand2 = [1, knight_stand3]
{
    ai_stand();
};

// knight_stand3
// function begins at statement 14237, parm_start=8956
// OP_STATE	216	8956	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand3 = [2, knight_stand4]
{
    ai_stand();
};

// knight_stand4
// function begins at statement 14240, parm_start=8957
// OP_STATE	228	8957	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand4 = [3, knight_stand5]
{
    ai_stand();
};

// knight_stand5
// function begins at statement 14243, parm_start=8958
// OP_STATE	229	8958	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand5 = [4, knight_stand6]
{
    ai_stand();
};

// knight_stand6
// function begins at statement 14246, parm_start=8959
// OP_STATE	230	8959	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand6 = [5, knight_stand7]
{
    ai_stand();
};

// knight_stand7
// function begins at statement 14249, parm_start=8960
// OP_STATE	231	8960	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand7 = [6, knight_stand8]
{
    ai_stand();
};

// knight_stand8
// function begins at statement 14252, parm_start=8961
// OP_STATE	232	8961	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand8 = [7, knight_stand9]
{
    ai_stand();
};

// knight_stand9
// function begins at statement 14255, parm_start=8962
// OP_STATE	217	8953	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () knight_stand9 = [8, knight_stand1]
{
    ai_stand();
};

// knight_walk1
// function begins at statement 14258, parm_start=8962
// OP_STATE	5955	8962	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	8963
// OP_IFNOT	8963	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8964	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk1 = [53, knight_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(MOVETYPE_WALK);
};

// knight_walk2
// function begins at statement 14271, parm_start=8965
// OP_STATE	5957	8965	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk2 = [54, knight_walk3]
{
    ai_walk(FL_SWIM);
};

// knight_walk3
// function begins at statement 14275, parm_start=8966
// OP_STATE	5959	8966	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk3 = [55, knight_walk4]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk4
// function begins at statement 14279, parm_start=8967
// OP_STATE	5961	8967	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk4 = [56, knight_walk5]
{
    ai_walk(MOVETYPE_STEP);
};

// knight_walk5
// function begins at statement 14283, parm_start=8968
// OP_STATE	5963	8968	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk5 = [57, knight_walk6]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk6
// function begins at statement 14287, parm_start=8969
// OP_STATE	5965	8969	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk6 = [58, knight_walk7]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk7
// function begins at statement 14291, parm_start=8970
// OP_STATE	5967	8970	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk7 = [59, knight_walk8]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk8
// function begins at statement 14295, parm_start=8971
// OP_STATE	730	8971	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk8 = [60, knight_walk9]
{
    ai_walk(MOVETYPE_STEP);
};

// knight_walk9
// function begins at statement 14299, parm_start=8972
// OP_STATE	5969	8972	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk9 = [61, knight_walk10]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk10
// function begins at statement 14303, parm_start=8973
// OP_STATE	5971	8973	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk10 = [62, knight_walk11]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk11
// function begins at statement 14307, parm_start=8974
// OP_STATE	4366	8974	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk11 = [63, knight_walk12]
{
    ai_walk(FL_SWIM);
};

// knight_walk12
// function begins at statement 14311, parm_start=8975
// OP_STATE	220	8975	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk12 = [64, knight_walk13]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_walk13
// function begins at statement 14315, parm_start=8976
// OP_STATE	5975	8976	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk13 = [65, knight_walk14]
{
    ai_walk(MOVETYPE_STEP);
};

// knight_walk14
// function begins at statement 14319, parm_start=8977
// OP_STATE	5977	1464	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () knight_walk14 = [66, knight_walk1]
{
    ai_walk(MOVETYPE_WALK);
};

// knight_run1
// function begins at statement 14323, parm_start=8978
// OP_STATE	234	8978	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	8979
// OP_IFNOT	8979	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8964	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	218	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run1 = [9, knight_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(FL_INWATER);
};

// knight_run2
// function begins at statement 14336, parm_start=8980
// OP_STATE	235	8980	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run2 = [10, knight_run3]
{
    ai_run(KINDA_WANT);
};

// knight_run3
// function begins at statement 14340, parm_start=8981
// OP_STATE	236	8981	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run3 = [11, knight_run4]
{
    ai_run(13);
};

// knight_run4
// function begins at statement 14344, parm_start=8982
// OP_STATE	2717	8982	0
// OP_STORE_V	232	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run4 = [12, knight_run5]
{
    ai_run(MOVETYPE_PUSH);
};

// knight_run5
// function begins at statement 14348, parm_start=8983
// OP_STATE	8413	8983	0
// OP_STORE_V	218	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run5 = [13, knight_run6]
{
    ai_run(FL_INWATER);
};

// knight_run6
// function begins at statement 14352, parm_start=8984
// OP_STATE	3382	8984	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run6 = [14, knight_run7]
{
    ai_run(KINDA_WANT);
};

// knight_run7
// function begins at statement 14356, parm_start=8985
// OP_STATE	2246	8985	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run7 = [15, knight_run8]
{
    ai_run(14);
};

// knight_run8
// function begins at statement 14360, parm_start=8986
// OP_STATE	218	8977	0
// OP_STORE_V	231	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () knight_run8 = [16, knight_run1]
{
    ai_run(MOVETYPE_TOSS);
};

// knight_runatk1
// function begins at statement 14364, parm_start=8986
// OP_STATE	5450	8986	0
// OP_CALL0	452	0	0
// OP_GT	1	677	8987
// OP_IFNOT	8987	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8988	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8989	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	576	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_runatk1 = [17, knight_runatk2]
{
    if(random() > 0.5)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", TRUE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", TRUE, ATTN_NORM);
    }
    
    ai_charge(KINDA_WANT);
};

// knight_runatk2
// function begins at statement 14384, parm_start=8990
// OP_STATE	3866	8990	0
// OP_CALL0	1249	0	0
// OP_DONE	0	0	0
void () knight_runatk2 = [18, knight_runatk3]
{
    ai_charge_side();
};

// knight_runatk3
// function begins at statement 14387, parm_start=8991
// OP_STATE	8422	8991	0
// OP_CALL0	1249	0	0
// OP_DONE	0	0	0
void () knight_runatk3 = [19, knight_runatk4]
{
    ai_charge_side();
};

// knight_runatk4
// function begins at statement 14390, parm_start=8992
// OP_STATE	576	8992	0
// OP_CALL0	1249	0	0
// OP_DONE	0	0	0
void () knight_runatk4 = [20, knight_runatk5]
{
    ai_charge_side();
};

// knight_runatk5
// function begins at statement 14393, parm_start=8993
// OP_STATE	8425	8993	0
// OP_CALL0	1306	0	0
// OP_DONE	0	0	0
void () knight_runatk5 = [21, knight_runatk6]
{
    ai_melee_side();
};

// knight_runatk6
// function begins at statement 14396, parm_start=8994
// OP_STATE	8428	8994	0
// OP_CALL0	1306	0	0
// OP_DONE	0	0	0
void () knight_runatk6 = [22, knight_runatk7]
{
    ai_melee_side();
};

// knight_runatk7
// function begins at statement 14399, parm_start=8995
// OP_STATE	301	8995	0
// OP_CALL0	1306	0	0
// OP_DONE	0	0	0
void () knight_runatk7 = [23, knight_runatk8]
{
    ai_melee_side();
};

// knight_runatk8
// function begins at statement 14402, parm_start=8996
// OP_STATE	5005	8996	0
// OP_CALL0	1306	0	0
// OP_DONE	0	0	0
void () knight_runatk8 = [24, knight_runatk9]
{
    ai_melee_side();
};

// knight_runatk9
// function begins at statement 14405, parm_start=8997
// OP_STATE	2261	8997	0
// OP_CALL0	1306	0	0
// OP_DONE	0	0	0
void () knight_runatk9 = [25, knight_runatk10]
{
    ai_melee_side();
};

// knight_runatk10
// function begins at statement 14408, parm_start=8998
// OP_STATE	8433	8998	0
// OP_CALL0	1249	0	0
// OP_DONE	0	0	0
void () knight_runatk10 = [26, knight_runatk11]
{
    ai_charge_side();
};

// knight_runatk11
// function begins at statement 14411, parm_start=8999
// OP_STATE	302	8977	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_runatk11 = [27, knight_run1]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// knight_atk1
// function begins at statement 14415, parm_start=8999
// OP_STATE	6044	8999	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8989	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk1 = [42, knight_atk2]
{
    sound(self, CHAN_WEAPON, "knight/sword1.wav", TRUE, ATTN_NORM);
    ai_charge(FALSE);
};

// knight_atk2
// function begins at statement 14425, parm_start=9000
// OP_STATE	6048	9000	0
// OP_STORE_V	232	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk2 = [44, knight_atk3]
{
    ai_charge(MOVETYPE_PUSH);
};

// knight_atk3
// function begins at statement 14429, parm_start=9001
// OP_STATE	1770	9001	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk3 = [45, knight_atk4]
{
    ai_charge(MOVETYPE_STEP);
};

// knight_atk4
// function begins at statement 14433, parm_start=9002
// OP_STATE	6051	9002	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk4 = [46, knight_atk5]
{
    ai_charge(FALSE);
};

// knight_atk5
// function begins at statement 14437, parm_start=9003
// OP_STATE	6053	9003	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk5 = [47, knight_atk6]
{
    ai_charge(MOVETYPE_WALK);
};

// knight_atk6
// function begins at statement 14441, parm_start=9004
// OP_STATE	6055	9004	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () knight_atk6 = [48, knight_atk7]
{
    ai_charge(MOVETYPE_STEP);
    ai_melee();
};

// knight_atk7
// function begins at statement 14446, parm_start=9005
// OP_STATE	6057	9005	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () knight_atk7 = [49, knight_atk8]
{
    ai_charge(TRUE);
    ai_melee();
};

// knight_atk8
// function begins at statement 14451, parm_start=9006
// OP_STATE	756	9006	0
// OP_STORE_V	228	4	0
// OP_CALL1	1247	0	0
// OP_CALL0	1284	0	0
// OP_DONE	0	0	0
void () knight_atk8 = [50, knight_atk9]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};

// knight_atk9
// function begins at statement 14456, parm_start=9007
// OP_STATE	5951	9007	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk9 = [51, knight_atk10]
{
    ai_charge(TRUE);
};

// knight_atk10
// function begins at statement 14460, parm_start=9008
// OP_STATE	5953	8977	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () knight_atk10 = [52, knight_run1]
{
    ai_charge(MOVETYPE_FLY);
};

// knight_pain1
// function begins at statement 14464, parm_start=9009
// OP_STATE	303	9009	0
// OP_DONE	0	0	0
void () knight_pain1 = [28, knight_pain2]
{
};

// knight_pain2
// function begins at statement 14466, parm_start=9010
// OP_STATE	5692	9010	0
// OP_DONE	0	0	0
void () knight_pain2 = [29, knight_pain3]
{
};

// knight_pain3
// function begins at statement 14468, parm_start=9011
// OP_STATE	304	8977	0
// OP_DONE	0	0	0
void () knight_pain3 = [30, knight_run1]
{
};

// knight_painb1
// function begins at statement 14470, parm_start=9012
// OP_STATE	305	9012	0
// OP_STORE_V	213	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb1 = [31, knight_painb2]
{
    ai_painforward(FALSE);
};

// knight_painb2
// function begins at statement 14474, parm_start=9013
// OP_STATE	219	9013	0
// OP_STORE_V	228	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb2 = [32, knight_painb3]
{
    ai_painforward(MOVETYPE_WALK);
};

// knight_painb3
// function begins at statement 14478, parm_start=9014
// OP_STATE	307	9014	0
// OP_DONE	0	0	0
void () knight_painb3 = [33, knight_painb4]
{
};

// knight_painb4
// function begins at statement 14480, parm_start=9015
// OP_STATE	5699	9015	0
// OP_DONE	0	0	0
void () knight_painb4 = [34, knight_painb5]
{
};

// knight_painb5
// function begins at statement 14482, parm_start=9016
// OP_STATE	575	9016	0
// OP_STORE_V	216	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb5 = [35, knight_painb6]
{
    ai_painforward(FL_SWIM);
};

// knight_painb6
// function begins at statement 14486, parm_start=9017
// OP_STATE	5683	9017	0
// OP_STORE_V	229	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb6 = [36, knight_painb7]
{
    ai_painforward(MOVETYPE_STEP);
};

// knight_painb7
// function begins at statement 14490, parm_start=9018
// OP_STATE	5685	9018	0
// OP_STORE_V	216	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb7 = [37, knight_painb8]
{
    ai_painforward(FL_SWIM);
};

// knight_painb8
// function begins at statement 14494, parm_start=9019
// OP_STATE	5687	9019	0
// OP_STORE_V	230	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb8 = [38, knight_painb9]
{
    ai_painforward(MOVETYPE_FLY);
};

// knight_painb9
// function begins at statement 14498, parm_start=9020
// OP_STATE	5689	9020	0
// OP_STORE_V	230	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb9 = [39, knight_painb10]
{
    ai_painforward(MOVETYPE_FLY);
};

// knight_painb10
// function begins at statement 14502, parm_start=9021
// OP_STATE	2101	9021	0
// OP_STORE_V	213	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () knight_painb10 = [40, knight_painb11]
{
    ai_painforward(FALSE);
};

// knight_painb11
// function begins at statement 14506, parm_start=9022
// OP_STATE	6042	8977	0
// OP_DONE	0	0	0
void () knight_painb11 = [41, knight_run1]
{
};

// knight_pain
// function begins at statement 14508, parm_start=9023
// OP_LOAD_F	28	374	9026
// OP_GT	9026	31	9027
// OP_IFNOT	9027	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	9025	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9028	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LT	9025	9029	9030
// OP_IFNOT	9030	6	0
// OP_CALL0	9008	0	0
// OP_ADDRESS	28	374	9031
// OP_ADD_F	31	214	9032
// OP_STOREP_F	9032	9031	0
// OP_GOTO	5	0	0
// OP_CALL0	9011	0	0
// OP_ADDRESS	28	374	9033
// OP_ADD_F	31	214	9034
// OP_STOREP_F	9034	9033	0
// OP_DONE	0	0	0
void (entity attacker, float damage) knight_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    r = random();
    sound(self, CHAN_VOICE, "knight/khurt.wav", TRUE, ATTN_NORM);
    if(r < 0.85)
    {
        knight_pain1();
        self.pain_finished = time + TRUE;
    }
    else
    {
        knight_painb1();
        self.pain_finished = time + TRUE;
    }
    
};

// knight_bow1
// function begins at statement 14532, parm_start=9035
// OP_STATE	5979	9035	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow1 = [67, knight_bow2]
{
    ai_turn();
};

// knight_bow2
// function begins at statement 14535, parm_start=9036
// OP_STATE	5981	9036	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow2 = [68, knight_bow3]
{
    ai_turn();
};

// knight_bow3
// function begins at statement 14538, parm_start=9037
// OP_STATE	5983	9037	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow3 = [69, knight_bow4]
{
    ai_turn();
};

// knight_bow4
// function begins at statement 14541, parm_start=9038
// OP_STATE	5984	9038	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow4 = [70, knight_bow5]
{
    ai_turn();
};

// knight_bow5
// function begins at statement 14544, parm_start=9039
// OP_STATE	5986	9038	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow5 = [71, knight_bow5]
{
    ai_turn();
};

// knight_bow6
// function begins at statement 14547, parm_start=9039
// OP_STATE	5984	9039	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow6 = [70, knight_bow7]
{
    ai_turn();
};

// knight_bow7
// function begins at statement 14550, parm_start=9040
// OP_STATE	5983	9040	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow7 = [69, knight_bow8]
{
    ai_turn();
};

// knight_bow8
// function begins at statement 14553, parm_start=9041
// OP_STATE	5981	9041	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow8 = [68, knight_bow9]
{
    ai_turn();
};

// knight_bow9
// function begins at statement 14556, parm_start=9042
// OP_STATE	5979	9042	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow9 = [67, knight_bow10]
{
    ai_turn();
};

// knight_bow10
// function begins at statement 14559, parm_start=9043
// OP_STATE	5955	1464	0
// OP_CALL0	1743	0	0
// OP_DONE	0	0	0
void () knight_bow10 = [53, knight_walk1]
{
    ai_turn();
};

// knight_die1
// function begins at statement 14562, parm_start=9044
// OP_STATE	5995	9044	0
// OP_DONE	0	0	0
void () knight_die1 = [76, knight_die2]
{
};

// knight_die2
// function begins at statement 14564, parm_start=9045
// OP_STATE	5997	9045	0
// OP_DONE	0	0	0
void () knight_die2 = [77, knight_die3]
{
};

// knight_die3
// function begins at statement 14566, parm_start=9046
// OP_STATE	5999	9046	0
// OP_ADDRESS	28	104	9047
// OP_STOREP_F	237	9047	0
// OP_DONE	0	0	0
void () knight_die3 = [78, knight_die4]
{
    self.solid = SOLID_NOT;
};

// knight_die4
// function begins at statement 14570, parm_start=9048
// OP_STATE	6001	9048	0
// OP_DONE	0	0	0
void () knight_die4 = [79, knight_die5]
{
};

// knight_die5
// function begins at statement 14572, parm_start=9049
// OP_STATE	1178	9049	0
// OP_DONE	0	0	0
void () knight_die5 = [80, knight_die6]
{
};

// knight_die6
// function begins at statement 14574, parm_start=9050
// OP_STATE	6004	9050	0
// OP_DONE	0	0	0
void () knight_die6 = [81, knight_die7]
{
};

// knight_die7
// function begins at statement 14576, parm_start=9051
// OP_STATE	6006	9051	0
// OP_DONE	0	0	0
void () knight_die7 = [82, knight_die8]
{
};

// knight_die8
// function begins at statement 14578, parm_start=9052
// OP_STATE	6008	9052	0
// OP_DONE	0	0	0
void () knight_die8 = [83, knight_die9]
{
};

// knight_die9
// function begins at statement 14580, parm_start=9053
// OP_STATE	6010	9053	0
// OP_DONE	0	0	0
void () knight_die9 = [84, knight_die10]
{
};

// knight_die10
// function begins at statement 14582, parm_start=9054
// OP_STATE	6011	9053	0
// OP_DONE	0	0	0
void () knight_die10 = [85, knight_die10]
{
};

// knight_dieb1
// function begins at statement 14584, parm_start=9055
// OP_STATE	6013	9055	0
// OP_DONE	0	0	0
void () knight_dieb1 = [86, knight_dieb2]
{
};

// knight_dieb2
// function begins at statement 14586, parm_start=9056
// OP_STATE	6015	9056	0
// OP_DONE	0	0	0
void () knight_dieb2 = [87, knight_dieb3]
{
};

// knight_dieb3
// function begins at statement 14588, parm_start=9057
// OP_STATE	6017	9057	0
// OP_ADDRESS	28	104	9058
// OP_STOREP_F	237	9058	0
// OP_DONE	0	0	0
void () knight_dieb3 = [88, knight_dieb4]
{
    self.solid = SOLID_NOT;
};

// knight_dieb4
// function begins at statement 14592, parm_start=9059
// OP_STATE	6019	9059	0
// OP_DONE	0	0	0
void () knight_dieb4 = [89, knight_dieb5]
{
};

// knight_dieb5
// function begins at statement 14594, parm_start=9060
// OP_STATE	1789	9060	0
// OP_DONE	0	0	0
void () knight_dieb5 = [90, knight_dieb6]
{
};

// knight_dieb6
// function begins at statement 14596, parm_start=9061
// OP_STATE	6022	9061	0
// OP_DONE	0	0	0
void () knight_dieb6 = [91, knight_dieb7]
{
};

// knight_dieb7
// function begins at statement 14598, parm_start=9062
// OP_STATE	6024	9062	0
// OP_DONE	0	0	0
void () knight_dieb7 = [92, knight_dieb8]
{
};

// knight_dieb8
// function begins at statement 14600, parm_start=9063
// OP_STATE	6026	9063	0
// OP_DONE	0	0	0
void () knight_dieb8 = [93, knight_dieb9]
{
};

// knight_dieb9
// function begins at statement 14602, parm_start=9064
// OP_STATE	6027	9064	0
// OP_DONE	0	0	0
void () knight_dieb9 = [94, knight_dieb10]
{
};

// knight_dieb10
// function begins at statement 14604, parm_start=9065
// OP_STATE	6029	9065	0
// OP_DONE	0	0	0
void () knight_dieb10 = [95, knight_dieb11]
{
};

// knight_dieb11
// function begins at statement 14606, parm_start=9066
// OP_STATE	6031	9065	0
// OP_DONE	0	0	0
void () knight_dieb11 = [96, knight_dieb11]
{
};

// knight_die
// function begins at statement 14608, parm_start=9067
// OP_LOAD_F	28	152	9067
// OP_LT	9067	5327	9068
// OP_IFNOT	9068	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	9069	4	0
// OP_LOAD_F	28	152	9070
// OP_STORE_V	9070	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	9071
// OP_STORE_V	9071	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	9072
// OP_STORE_V	9072	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	9073
// OP_STORE_V	9073	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9074	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_LT	1	677	9075
// OP_IFNOT	9075	3	0
// OP_CALL0	9043	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9054	0	0
// OP_DONE	0	0	0
void () knight_die = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_knight.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "knight/kdeath.wav", TRUE, ATTN_NORM);
    if(random() < 0.5)
    {
        knight_die1();
    }
    else
    {
        knight_dieb1();
    }
    
};

// monster_knight
// function begins at statement 14647, parm_start=9077
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9077	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9069	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9074	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9028	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1621	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8989	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8988	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8964	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	9078
// OP_STOREP_F	240	9078	0
// OP_ADDRESS	28	103	9079
// OP_STOREP_F	229	9079	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9077	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	9080	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	9083
// OP_STOREP_F	5993	9083	0
// OP_ADDRESS	28	356	9084
// OP_STOREP_FNC	8953	9084	0
// OP_ADDRESS	28	357	9085
// OP_STOREP_FNC	1464	9085	0
// OP_ADDRESS	28	358	9086
// OP_STOREP_FNC	8977	9086	0
// OP_ADDRESS	28	360	9087
// OP_STOREP_FNC	1138	9087	0
// OP_ADDRESS	28	361	9088
// OP_STOREP_FNC	9022	9088	0
// OP_ADDRESS	28	362	9089
// OP_STOREP_FNC	9066	9089	0
// OP_CALL0	6156	0	0
// OP_DONE	0	0	0
void () monster_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/knight.mdl");
    precache_model("progs/h_knight.mdl");
    precache_sound("knight/kdeath.wav");
    precache_sound("knight/khurt.wav");
    precache_sound("knight/ksight.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    precache_sound("knight/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/knight.mdl");
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = 75;
    self.th_stand = knight_stand1;
    self.th_walk = knight_walk1;
    self.th_run = knight_run1;
    self.th_melee = knight_atk1;
    self.th_pain = knight_pain;
    self.th_die = knight_die;
    walkmonster_start();
};

