void () army_fire;
// army_stand1
// function begins at statement 14694, parm_start=9092
// OP_STATE	213	9092	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand1 = [0, army_stand2]
{
    ai_stand();
};

// army_stand2
// function begins at statement 14697, parm_start=9093
// OP_STATE	214	9093	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand2 = [1, army_stand3]
{
    ai_stand();
};

// army_stand3
// function begins at statement 14700, parm_start=9094
// OP_STATE	216	9094	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand3 = [2, army_stand4]
{
    ai_stand();
};

// army_stand4
// function begins at statement 14703, parm_start=9095
// OP_STATE	228	9095	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand4 = [3, army_stand5]
{
    ai_stand();
};

// army_stand5
// function begins at statement 14706, parm_start=9096
// OP_STATE	229	9096	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand5 = [4, army_stand6]
{
    ai_stand();
};

// army_stand6
// function begins at statement 14709, parm_start=9097
// OP_STATE	230	9097	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand6 = [5, army_stand7]
{
    ai_stand();
};

// army_stand7
// function begins at statement 14712, parm_start=9098
// OP_STATE	231	9098	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand7 = [6, army_stand8]
{
    ai_stand();
};

// army_stand8
// function begins at statement 14715, parm_start=9099
// OP_STATE	232	9091	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () army_stand8 = [7, army_stand1]
{
    ai_stand();
};

// army_walk1
// function begins at statement 14718, parm_start=9100
// OP_STATE	1789	9100	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	9101
// OP_IFNOT	9101	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9102	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk1 = [90, army_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "soldier/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(TRUE);
};

// army_walk2
// function begins at statement 14731, parm_start=9103
// OP_STATE	6022	9103	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk2 = [91, army_walk3]
{
    ai_walk(TRUE);
};

// army_walk3
// function begins at statement 14735, parm_start=9104
// OP_STATE	6024	9104	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk3 = [92, army_walk4]
{
    ai_walk(TRUE);
};

// army_walk4
// function begins at statement 14739, parm_start=9105
// OP_STATE	6026	9105	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk4 = [93, army_walk5]
{
    ai_walk(TRUE);
};

// army_walk5
// function begins at statement 14743, parm_start=9106
// OP_STATE	6027	9106	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk5 = [94, army_walk6]
{
    ai_walk(FL_SWIM);
};

// army_walk6
// function begins at statement 14747, parm_start=9107
// OP_STATE	6029	9107	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk6 = [95, army_walk7]
{
    ai_walk(MOVETYPE_WALK);
};

// army_walk7
// function begins at statement 14751, parm_start=9108
// OP_STATE	6031	9108	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk7 = [96, army_walk8]
{
    ai_walk(MOVETYPE_STEP);
};

// army_walk8
// function begins at statement 14755, parm_start=9109
// OP_STATE	6033	9109	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk8 = [97, army_walk9]
{
    ai_walk(MOVETYPE_STEP);
};

// army_walk9
// function begins at statement 14759, parm_start=9110
// OP_STATE	6035	9110	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk9 = [98, army_walk10]
{
    ai_walk(FL_SWIM);
};

// army_walk10
// function begins at statement 14763, parm_start=9111
// OP_STATE	736	9111	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk10 = [99, army_walk11]
{
    ai_walk(FL_SWIM);
};

// army_walk11
// function begins at statement 14767, parm_start=9112
// OP_STATE	574	9112	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk11 = [100, army_walk12]
{
    ai_walk(FL_SWIM);
};

// army_walk12
// function begins at statement 14771, parm_start=9113
// OP_STATE	6039	9113	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk12 = [101, army_walk13]
{
    ai_walk(TRUE);
};

// army_walk13
// function begins at statement 14775, parm_start=9114
// OP_STATE	6041	9114	0
// OP_STORE_V	213	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk13 = [102, army_walk14]
{
    ai_walk(FALSE);
};

// army_walk14
// function begins at statement 14779, parm_start=9115
// OP_STATE	5560	9115	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk14 = [103, army_walk15]
{
    ai_walk(TRUE);
};

// army_walk15
// function begins at statement 14783, parm_start=9116
// OP_STATE	5575	9116	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk15 = [104, army_walk16]
{
    ai_walk(TRUE);
};

// army_walk16
// function begins at statement 14787, parm_start=9117
// OP_STATE	5589	9117	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk16 = [105, army_walk17]
{
    ai_walk(TRUE);
};

// army_walk17
// function begins at statement 14791, parm_start=9118
// OP_STATE	5604	9118	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk17 = [106, army_walk18]
{
    ai_walk(MOVETYPE_WALK);
};

// army_walk18
// function begins at statement 14795, parm_start=9119
// OP_STATE	5618	9119	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk18 = [107, army_walk19]
{
    ai_walk(MOVETYPE_WALK);
};

// army_walk19
// function begins at statement 14799, parm_start=9120
// OP_STATE	5624	9120	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk19 = [108, army_walk20]
{
    ai_walk(MOVETYPE_WALK);
};

// army_walk20
// function begins at statement 14803, parm_start=9121
// OP_STATE	5627	9121	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk20 = [109, army_walk21]
{
    ai_walk(MOVETYPE_WALK);
};

// army_walk21
// function begins at statement 14807, parm_start=9122
// OP_STATE	5630	9122	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk21 = [110, army_walk22]
{
    ai_walk(FL_SWIM);
};

// army_walk22
// function begins at statement 14811, parm_start=9123
// OP_STATE	5633	9123	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk22 = [111, army_walk23]
{
    ai_walk(TRUE);
};

// army_walk23
// function begins at statement 14815, parm_start=9124
// OP_STATE	5636	9124	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk23 = [112, army_walk24]
{
    ai_walk(TRUE);
};

// army_walk24
// function begins at statement 14819, parm_start=9125
// OP_STATE	5498	9099	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () army_walk24 = [113, army_walk1]
{
    ai_walk(TRUE);
};

// army_run1
// function begins at statement 14823, parm_start=9126
// OP_STATE	3216	9126	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	9127
// OP_IFNOT	9127	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9102	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	236	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run1 = [73, army_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "soldier/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(MOVETYPE_BOUNCEMISSILE);
};

// army_run2
// function begins at statement 14836, parm_start=9128
// OP_STATE	5991	9128	0
// OP_STORE_V	2246	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run2 = [74, army_run3]
{
    ai_run(15);
};

// army_run3
// function begins at statement 14840, parm_start=9129
// OP_STATE	5993	9129	0
// OP_STORE_V	235	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run3 = [75, army_run4]
{
    ai_run(MOVETYPE_BOUNCE);
};

// army_run4
// function begins at statement 14844, parm_start=9130
// OP_STATE	5995	9130	0
// OP_STORE_V	235	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run4 = [76, army_run5]
{
    ai_run(MOVETYPE_BOUNCE);
};

// army_run5
// function begins at statement 14848, parm_start=9131
// OP_STATE	5997	9131	0
// OP_STORE_V	217	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run5 = [77, army_run6]
{
    ai_run(FL_CLIENT);
};

// army_run6
// function begins at statement 14852, parm_start=9132
// OP_STATE	5999	9132	0
// OP_STORE_V	2246	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run6 = [78, army_run7]
{
    ai_run(15);
};

// army_run7
// function begins at statement 14856, parm_start=9133
// OP_STATE	6001	9133	0
// OP_STORE_V	235	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run7 = [79, army_run8]
{
    ai_run(MOVETYPE_BOUNCE);
};

// army_run8
// function begins at statement 14860, parm_start=9134
// OP_STATE	1178	9125	0
// OP_STORE_V	217	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () army_run8 = [80, army_run1]
{
    ai_run(FL_CLIENT);
};

// army_atk1
// function begins at statement 14864, parm_start=9135
// OP_STATE	6004	9135	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk1 = [81, army_atk2]
{
    ai_face();
};

// army_atk2
// function begins at statement 14867, parm_start=9136
// OP_STATE	6006	9136	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk2 = [82, army_atk3]
{
    ai_face();
};

// army_atk3
// function begins at statement 14870, parm_start=9137
// OP_STATE	6008	9137	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk3 = [83, army_atk4]
{
    ai_face();
};

// army_atk4
// function begins at statement 14873, parm_start=9138
// OP_STATE	6010	9138	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk4 = [84, army_atk5]
{
    ai_face();
};

// army_atk5
// function begins at statement 14876, parm_start=9139
// OP_STATE	6011	9139	0
// OP_CALL0	1148	0	0
// OP_CALL0	9090	0	0
// OP_ADDRESS	28	133	9140
// OP_LOAD_F	28	133	9141
// OP_BITOR	9141	334	9142
// OP_STOREP_F	9142	9140	0
// OP_DONE	0	0	0
void () army_atk5 = [85, army_atk6]
{
    ai_face();
    army_fire();
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// army_atk6
// function begins at statement 14884, parm_start=9143
// OP_STATE	6013	9143	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk6 = [86, army_atk7]
{
    ai_face();
};

// army_atk7
// function begins at statement 14887, parm_start=9144
// OP_STATE	6015	9144	0
// OP_CALL0	1148	0	0
// OP_STORE_V	9134	4	0
// OP_CALL1	1128	0	0
// OP_DONE	0	0	0
void () army_atk7 = [87, army_atk8]
{
    ai_face();
    SUB_CheckRefire(army_atk1);
};

// army_atk8
// function begins at statement 14892, parm_start=9145
// OP_STATE	6017	9145	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk8 = [88, army_atk9]
{
    ai_face();
};

// army_atk9
// function begins at statement 14895, parm_start=9146
// OP_STATE	6019	9125	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () army_atk9 = [89, army_run1]
{
    ai_face();
};

// army_pain1
// function begins at statement 14898, parm_start=9147
// OP_STATE	2101	9147	0
// OP_DONE	0	0	0
void () army_pain1 = [40, army_pain2]
{
};

// army_pain2
// function begins at statement 14900, parm_start=9148
// OP_STATE	6042	9148	0
// OP_DONE	0	0	0
void () army_pain2 = [41, army_pain3]
{
};

// army_pain3
// function begins at statement 14902, parm_start=9149
// OP_STATE	6044	9149	0
// OP_DONE	0	0	0
void () army_pain3 = [42, army_pain4]
{
};

// army_pain4
// function begins at statement 14904, parm_start=9150
// OP_STATE	6046	9150	0
// OP_DONE	0	0	0
void () army_pain4 = [43, army_pain5]
{
};

// army_pain5
// function begins at statement 14906, parm_start=9151
// OP_STATE	6048	9151	0
// OP_DONE	0	0	0
void () army_pain5 = [44, army_pain6]
{
};

// army_pain6
// function begins at statement 14908, parm_start=9152
// OP_STATE	1770	9125	0
// OP_STORE_V	214	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () army_pain6 = [45, army_run1]
{
    ai_pain(TRUE);
};

// army_painb1
// function begins at statement 14912, parm_start=9153
// OP_STATE	6051	9153	0
// OP_DONE	0	0	0
void () army_painb1 = [46, army_painb2]
{
};

// army_painb2
// function begins at statement 14914, parm_start=9154
// OP_STATE	6053	9154	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painb2 = [47, army_painb3]
{
    ai_painforward(13);
};

// army_painb3
// function begins at statement 14918, parm_start=9155
// OP_STATE	6055	9155	0
// OP_STORE_V	234	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painb3 = [48, army_painb4]
{
    ai_painforward(MOVETYPE_FLYMISSILE);
};

// army_painb4
// function begins at statement 14922, parm_start=9156
// OP_STATE	6057	9156	0
// OP_DONE	0	0	0
void () army_painb4 = [49, army_painb5]
{
};

// army_painb5
// function begins at statement 14924, parm_start=9157
// OP_STATE	756	9157	0
// OP_DONE	0	0	0
void () army_painb5 = [50, army_painb6]
{
};

// army_painb6
// function begins at statement 14926, parm_start=9158
// OP_STATE	5951	9158	0
// OP_DONE	0	0	0
void () army_painb6 = [51, army_painb7]
{
};

// army_painb7
// function begins at statement 14928, parm_start=9159
// OP_STATE	5953	9159	0
// OP_DONE	0	0	0
void () army_painb7 = [52, army_painb8]
{
};

// army_painb8
// function begins at statement 14930, parm_start=9160
// OP_STATE	5955	9160	0
// OP_DONE	0	0	0
void () army_painb8 = [53, army_painb9]
{
};

// army_painb9
// function begins at statement 14932, parm_start=9161
// OP_STATE	5957	9161	0
// OP_DONE	0	0	0
void () army_painb9 = [54, army_painb10]
{
};

// army_painb10
// function begins at statement 14934, parm_start=9162
// OP_STATE	5959	9162	0
// OP_DONE	0	0	0
void () army_painb10 = [55, army_painb11]
{
};

// army_painb11
// function begins at statement 14936, parm_start=9163
// OP_STATE	5961	9163	0
// OP_DONE	0	0	0
void () army_painb11 = [56, army_painb12]
{
};

// army_painb12
// function begins at statement 14938, parm_start=9164
// OP_STATE	5963	9164	0
// OP_STORE_V	216	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () army_painb12 = [57, army_painb13]
{
    ai_pain(FL_SWIM);
};

// army_painb13
// function begins at statement 14942, parm_start=9165
// OP_STATE	5965	9165	0
// OP_DONE	0	0	0
void () army_painb13 = [58, army_painb14]
{
};

// army_painb14
// function begins at statement 14944, parm_start=9166
// OP_STATE	5967	9125	0
// OP_DONE	0	0	0
void () army_painb14 = [59, army_run1]
{
};

// army_painc1
// function begins at statement 14946, parm_start=9167
// OP_STATE	730	9167	0
// OP_DONE	0	0	0
void () army_painc1 = [60, army_painc2]
{
};

// army_painc2
// function begins at statement 14948, parm_start=9168
// OP_STATE	5969	9168	0
// OP_STORE_V	214	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () army_painc2 = [61, army_painc3]
{
    ai_pain(TRUE);
};

// army_painc3
// function begins at statement 14952, parm_start=9169
// OP_STATE	5971	9169	0
// OP_DONE	0	0	0
void () army_painc3 = [62, army_painc4]
{
};

// army_painc4
// function begins at statement 14954, parm_start=9170
// OP_STATE	4366	9170	0
// OP_DONE	0	0	0
void () army_painc4 = [63, army_painc5]
{
};

// army_painc5
// function begins at statement 14956, parm_start=9171
// OP_STATE	220	9171	0
// OP_STORE_V	214	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painc5 = [64, army_painc6]
{
    ai_painforward(TRUE);
};

// army_painc6
// function begins at statement 14960, parm_start=9172
// OP_STATE	5975	9172	0
// OP_STORE_V	214	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painc6 = [65, army_painc7]
{
    ai_painforward(TRUE);
};

// army_painc7
// function begins at statement 14964, parm_start=9173
// OP_STATE	5977	9173	0
// OP_DONE	0	0	0
void () army_painc7 = [66, army_painc8]
{
};

// army_painc8
// function begins at statement 14966, parm_start=9174
// OP_STATE	5979	9174	0
// OP_STORE_V	214	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () army_painc8 = [67, army_painc9]
{
    ai_pain(TRUE);
};

// army_painc9
// function begins at statement 14970, parm_start=9175
// OP_STATE	5981	9175	0
// OP_STORE_V	229	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painc9 = [68, army_painc10]
{
    ai_painforward(MOVETYPE_STEP);
};

// army_painc10
// function begins at statement 14974, parm_start=9176
// OP_STATE	5983	9176	0
// OP_STORE_V	228	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painc10 = [69, army_painc11]
{
    ai_painforward(MOVETYPE_WALK);
};

// army_painc11
// function begins at statement 14978, parm_start=9177
// OP_STATE	5984	9177	0
// OP_STORE_V	231	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painc11 = [70, army_painc12]
{
    ai_painforward(MOVETYPE_TOSS);
};

// army_painc12
// function begins at statement 14982, parm_start=9178
// OP_STATE	5986	9178	0
// OP_STORE_V	217	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () army_painc12 = [71, army_painc13]
{
    ai_painforward(FL_CLIENT);
};

// army_painc13
// function begins at statement 14986, parm_start=9179
// OP_STATE	5988	9125	0
// OP_DONE	0	0	0
void () army_painc13 = [72, army_run1]
{
};

// army_pain
// function begins at statement 14988, parm_start=9180
// OP_LOAD_F	28	374	9183
// OP_GT	9183	31	9184
// OP_IFNOT	9184	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	9182	0
// OP_LT	9182	1226	9185
// OP_IFNOT	9185	12	0
// OP_ADDRESS	28	374	9186
// OP_ADD_F	31	2345	9187
// OP_STOREP_F	9187	9186	0
// OP_CALL0	9146	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9188	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	24	0	0
// OP_LT	9182	2345	9189
// OP_IFNOT	9189	12	0
// OP_ADDRESS	28	374	9190
// OP_ADD_F	31	9191	9192
// OP_STOREP_F	9192	9190	0
// OP_CALL0	9152	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9193	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	374	9194
// OP_ADD_F	31	9191	9195
// OP_STOREP_F	9195	9194	0
// OP_CALL0	9166	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9193	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) army_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    r = random();
    if(r < 0.2)
    {
        self.pain_finished = time + 0.6;
        army_pain1();
        sound(self, CHAN_VOICE, "soldier/pain1.wav", TRUE, ATTN_NORM);
    }
    else
    {
        if(r < 0.6)
        {
            self.pain_finished = time + 1.1;
            army_painb1();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", TRUE, ATTN_NORM);
        }
        else
        {
            self.pain_finished = time + 1.1;
            army_painc1();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", TRUE, ATTN_NORM);
        }
        
    }
    
};

// army_fire
// function begins at statement 15031, parm_start=9196
// OP_CALL0	1148	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	9200	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_ENT	28	181	9201
// OP_STORE_ENT	9201	9199	0
// OP_LOAD_V	9199	105	9202
// OP_LOAD_V	9199	113	9205
// OP_MUL_VF	9205	1226	9208
// OP_SUB_V	9202	9208	9211
// OP_STORE_V	9211	9196	0
// OP_LOAD_V	28	105	9214
// OP_SUB_V	9196	9214	9217
// OP_STORE_V	9217	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	9196	0
// OP_STORE_V	229	4	0
// OP_STORE_V	9196	7	0
// OP_STORE_V	9220	10	0
// OP_CALL3	3300	0	0
// OP_DONE	0	0	0
void () army_fire = 
{
    local vector dir;
    local entity en;
    ai_face();
    sound(self, CHAN_WEAPON, "soldier/sattck1.wav", TRUE, ATTN_NORM);
    en = self.enemy;
    dir = en.origin - (en.velocity * 0.2);
    dir = normalize(dir - self.origin);
    FireBullets(MOVETYPE_STEP, dir, '0.100 0.100 0.000');
};

// army_die1
// function begins at statement 15055, parm_start=9224
// OP_STATE	217	9224	0
// OP_DONE	0	0	0
void () army_die1 = [8, army_die2]
{
};

// army_die2
// function begins at statement 15057, parm_start=9225
// OP_STATE	234	9225	0
// OP_DONE	0	0	0
void () army_die2 = [9, army_die3]
{
};

// army_die3
// function begins at statement 15059, parm_start=9226
// OP_STATE	235	9226	0
// OP_ADDRESS	28	104	9227
// OP_STOREP_F	237	9227	0
// OP_ADDRESS	28	158	9228
// OP_STOREP_F	230	9228	0
// OP_CALL0	3034	0	0
// OP_DONE	0	0	0
void () army_die3 = [10, army_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = MOVETYPE_FLY;
    DropBackpack();
};

// army_die4
// function begins at statement 15066, parm_start=9229
// OP_STATE	236	9229	0
// OP_DONE	0	0	0
void () army_die4 = [11, army_die5]
{
};

// army_die5
// function begins at statement 15068, parm_start=9230
// OP_STATE	2717	9230	0
// OP_DONE	0	0	0
void () army_die5 = [12, army_die6]
{
};

// army_die6
// function begins at statement 15070, parm_start=9231
// OP_STATE	8413	9231	0
// OP_DONE	0	0	0
void () army_die6 = [13, army_die7]
{
};

// army_die7
// function begins at statement 15072, parm_start=9232
// OP_STATE	3382	9232	0
// OP_DONE	0	0	0
void () army_die7 = [14, army_die8]
{
};

// army_die8
// function begins at statement 15074, parm_start=9233
// OP_STATE	2246	9233	0
// OP_DONE	0	0	0
void () army_die8 = [15, army_die9]
{
};

// army_die9
// function begins at statement 15076, parm_start=9234
// OP_STATE	218	9234	0
// OP_DONE	0	0	0
void () army_die9 = [16, army_die10]
{
};

// army_die10
// function begins at statement 15078, parm_start=9235
// OP_STATE	5450	9234	0
// OP_DONE	0	0	0
void () army_die10 = [17, army_die10]
{
};

// army_cdie1
// function begins at statement 15080, parm_start=9236
// OP_STATE	3866	9236	0
// OP_DONE	0	0	0
void () army_cdie1 = [18, army_cdie2]
{
};

// army_cdie2
// function begins at statement 15082, parm_start=9237
// OP_STATE	8422	9237	0
// OP_STORE_V	230	4	0
// OP_CALL1	1721	0	0
// OP_DONE	0	0	0
void () army_cdie2 = [19, army_cdie3]
{
    ai_back(MOVETYPE_FLY);
};

// army_cdie3
// function begins at statement 15086, parm_start=9238
// OP_STATE	576	9238	0
// OP_ADDRESS	28	104	9239
// OP_STOREP_F	237	9239	0
// OP_ADDRESS	28	158	9240
// OP_STOREP_F	230	9240	0
// OP_CALL0	3034	0	0
// OP_STORE_V	229	4	0
// OP_CALL1	1721	0	0
// OP_DONE	0	0	0
void () army_cdie3 = [20, army_cdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = MOVETYPE_FLY;
    DropBackpack();
    ai_back(MOVETYPE_STEP);
};

// army_cdie4
// function begins at statement 15095, parm_start=9241
// OP_STATE	8425	9241	0
// OP_STORE_V	8413	4	0
// OP_CALL1	1721	0	0
// OP_DONE	0	0	0
void () army_cdie4 = [21, army_cdie5]
{
    ai_back(13);
};

// army_cdie5
// function begins at statement 15099, parm_start=9242
// OP_STATE	8428	9242	0
// OP_STORE_V	228	4	0
// OP_CALL1	1721	0	0
// OP_DONE	0	0	0
void () army_cdie5 = [22, army_cdie6]
{
    ai_back(MOVETYPE_WALK);
};

// army_cdie6
// function begins at statement 15103, parm_start=9243
// OP_STATE	301	9243	0
// OP_STORE_V	229	4	0
// OP_CALL1	1721	0	0
// OP_DONE	0	0	0
void () army_cdie6 = [23, army_cdie7]
{
    ai_back(MOVETYPE_STEP);
};

// army_cdie7
// function begins at statement 15107, parm_start=9244
// OP_STATE	5005	9244	0
// OP_DONE	0	0	0
void () army_cdie7 = [24, army_cdie8]
{
};

// army_cdie8
// function begins at statement 15109, parm_start=9245
// OP_STATE	2261	9245	0
// OP_DONE	0	0	0
void () army_cdie8 = [25, army_cdie9]
{
};

// army_cdie9
// function begins at statement 15111, parm_start=9246
// OP_STATE	8433	9246	0
// OP_DONE	0	0	0
void () army_cdie9 = [26, army_cdie10]
{
};

// army_cdie10
// function begins at statement 15113, parm_start=9247
// OP_STATE	302	9247	0
// OP_DONE	0	0	0
void () army_cdie10 = [27, army_cdie11]
{
};

// army_cdie11
// function begins at statement 15115, parm_start=9248
// OP_STATE	303	9247	0
// OP_DONE	0	0	0
void () army_cdie11 = [28, army_cdie11]
{
};

// army_die
// function begins at statement 15117, parm_start=9249
// OP_LOAD_F	28	152	9249
// OP_LT	9249	9250	9251
// OP_IFNOT	9251	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	9252	4	0
// OP_LOAD_F	28	152	9253
// OP_STORE_V	9253	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	9254
// OP_STORE_V	9254	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	9255
// OP_STORE_V	9255	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	9256
// OP_STORE_V	9256	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9257	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_LT	1	677	9258
// OP_IFNOT	9258	3	0
// OP_CALL0	9223	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9235	0	0
// OP_DONE	0	0	0
void () army_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_guard.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "soldier/death1.wav", TRUE, ATTN_NORM);
    if(random() < 0.5)
    {
        army_die1();
    }
    else
    {
        army_cdie1();
    }
    
};

// monster_army
// function begins at statement 15156, parm_start=9260
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9260	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9252	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4345	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4346	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4347	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9257	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9102	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9188	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9193	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9200	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1668	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	4319	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	9261
// OP_STOREP_F	240	9261	0
// OP_ADDRESS	28	103	9262
// OP_STOREP_F	229	9262	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9260	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	9080	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	9263
// OP_STOREP_F	304	9263	0
// OP_ADDRESS	28	356	9264
// OP_STOREP_FNC	9091	9264	0
// OP_ADDRESS	28	357	9265
// OP_STOREP_FNC	9099	9265	0
// OP_ADDRESS	28	358	9266
// OP_STOREP_FNC	9125	9266	0
// OP_ADDRESS	28	359	9267
// OP_STOREP_FNC	9134	9267	0
// OP_ADDRESS	28	361	9268
// OP_STOREP_FNC	9179	9268	0
// OP_ADDRESS	28	362	9269
// OP_STOREP_FNC	9248	9269	0
// OP_CALL0	6156	0	0
// OP_DONE	0	0	0
void () monster_army = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/soldier.mdl");
    precache_model("progs/h_guard.mdl");
    precache_model("progs/gib1.mdl");
    precache_model("progs/gib2.mdl");
    precache_model("progs/gib3.mdl");
    precache_sound("soldier/death1.wav");
    precache_sound("soldier/idle.wav");
    precache_sound("soldier/pain1.wav");
    precache_sound("soldier/pain2.wav");
    precache_sound("soldier/sattck1.wav");
    precache_sound("soldier/sight1.wav");
    precache_sound("player/udeath.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/soldier.mdl");
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = SVC_INTERMISSION;
    self.th_stand = army_stand1;
    self.th_walk = army_walk1;
    self.th_run = army_run1;
    self.th_missile = army_atk1;
    self.th_pain = army_pain;
    self.th_die = army_die;
    walkmonster_start();
};

