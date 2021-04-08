
// func000988
// function begins at statement 20341, parm_start=13220
// OP_STATE	213	13220	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000988 = [0, func000989]
{
    ai_stand();
};


// func000989
// function begins at statement 20344, parm_start=13221
// OP_STATE	214	13221	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000989 = [1, func000990]
{
    ai_stand();
};


// func000990
// function begins at statement 20347, parm_start=13222
// OP_STATE	216	13222	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000990 = [2, func000991]
{
    ai_stand();
};


// func000991
// function begins at statement 20350, parm_start=13223
// OP_STATE	228	13223	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000991 = [3, func000992]
{
    ai_stand();
};


// func000992
// function begins at statement 20353, parm_start=13224
// OP_STATE	229	13224	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000992 = [4, func000993]
{
    ai_stand();
};


// func000993
// function begins at statement 20356, parm_start=13225
// OP_STATE	230	13225	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000993 = [5, func000994]
{
    ai_stand();
};


// func000994
// function begins at statement 20359, parm_start=13226
// OP_STATE	231	13226	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000994 = [6, func000995]
{
    ai_stand();
};


// func000995
// function begins at statement 20362, parm_start=13227
// OP_STATE	232	13227	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000995 = [7, func000996]
{
    ai_stand();
};


// func000996
// function begins at statement 20365, parm_start=13228
// OP_STATE	217	13219	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000996 = [8, func000988]
{
    ai_stand();
};


// knight_walk1
// function begins at statement 20368, parm_start=13228
// OP_STATE	9915	13228	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	13229
// OP_IFNOT	13229	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13230	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () knight_walk1 = [53, func000998]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(MOVETYPE_WALK);
};


// func000998
// function begins at statement 20381, parm_start=13231
// OP_STATE	9917	13231	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000998 = [54, func000999]
{
    ai_walk(FL_SWIM);
};


// func000999
// function begins at statement 20385, parm_start=13232
// OP_STATE	9919	13232	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000999 = [55, func001000]
{
    ai_walk(MOVETYPE_WALK);
};


// func001000
// function begins at statement 20389, parm_start=13233
// OP_STATE	9921	13233	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001000 = [56, func001001]
{
    ai_walk(MOVETYPE_STEP);
};


// func001001
// function begins at statement 20393, parm_start=13234
// OP_STATE	9923	13234	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001001 = [57, func001002]
{
    ai_walk(MOVETYPE_WALK);
};


// func001002
// function begins at statement 20397, parm_start=13235
// OP_STATE	9925	13235	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001002 = [58, func001003]
{
    ai_walk(MOVETYPE_WALK);
};


// func001003
// function begins at statement 20401, parm_start=13236
// OP_STATE	2783	13236	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001003 = [59, func001004]
{
    ai_walk(MOVETYPE_WALK);
};


// func001004
// function begins at statement 20405, parm_start=13237
// OP_STATE	2019	13237	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001004 = [60, func001005]
{
    ai_walk(MOVETYPE_STEP);
};


// func001005
// function begins at statement 20409, parm_start=13238
// OP_STATE	9928	13238	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001005 = [61, func001006]
{
    ai_walk(MOVETYPE_WALK);
};


// func001006
// function begins at statement 20413, parm_start=13239
// OP_STATE	9930	13239	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001006 = [62, func001007]
{
    ai_walk(MOVETYPE_WALK);
};


// func001007
// function begins at statement 20417, parm_start=13240
// OP_STATE	6707	13240	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001007 = [63, func001008]
{
    ai_walk(FL_SWIM);
};


// func001008
// function begins at statement 20421, parm_start=13241
// OP_STATE	220	13241	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001008 = [64, func001009]
{
    ai_walk(MOVETYPE_WALK);
};


// func001009
// function begins at statement 20425, parm_start=13242
// OP_STATE	9934	13242	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001009 = [65, func001010]
{
    ai_walk(MOVETYPE_STEP);
};


// func001010
// function begins at statement 20429, parm_start=13243
// OP_STATE	9936	3504	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001010 = [66, knight_walk1]
{
    ai_walk(MOVETYPE_WALK);
};


// func001011
// function begins at statement 20433, parm_start=13244
// OP_STATE	234	13244	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	13245
// OP_IFNOT	13245	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13230	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001011 = [9, func001012]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(FL_INWATER);
};


// func001012
// function begins at statement 20446, parm_start=13246
// OP_STATE	235	13246	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001012 = [10, func001013]
{
    ai_run(20);
};


// func001013
// function begins at statement 20450, parm_start=13247
// OP_STATE	236	13247	0
// OP_STORE_V	792	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001013 = [11, func001014]
{
    ai_run(globaldef000775);
};


// func001014
// function begins at statement 20454, parm_start=13248
// OP_STATE	791	13248	0
// OP_STORE_V	232	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001014 = [12, func001015]
{
    ai_run(MOVETYPE_PUSH);
};


// func001015
// function begins at statement 20458, parm_start=13249
// OP_STATE	792	13249	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001015 = [13, func001016]
{
    ai_run(FL_INWATER);
};


// func001016
// function begins at statement 20462, parm_start=13250
// OP_STATE	5693	13250	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001016 = [14, func001017]
{
    ai_run(20);
};


// func001017
// function begins at statement 20466, parm_start=13251
// OP_STATE	765	13251	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001017 = [15, func001018]
{
    ai_run(14);
};


// func001018
// function begins at statement 20470, parm_start=13252
// OP_STATE	218	13243	0
// OP_STORE_V	231	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001018 = [16, func001011]
{
    ai_run(MOVETYPE_TOSS);
};


// knight_runatk1
// function begins at statement 20474, parm_start=13252
// OP_STATE	6892	13252	0
// OP_CALL0	457	0	0
// OP_GT	1	539	13253
// OP_IFNOT	13253	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13254	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13255	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () knight_runatk1 = [17, func001020]
{
    if(random() > GLOBALDEFFIVETWOTWO)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", TRUE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", TRUE, ATTN_NORM);
    }
    
    ai_charge(20);
};


// func001020
// function begins at statement 20494, parm_start=13256
// OP_STATE	6133	13256	0
// OP_CALL0	3289	0	0
// OP_DONE	0	0	0
void () func001020 = [18, func001021]
{
    ai_charge_side();
};


// func001021
// function begins at statement 20497, parm_start=13257
// OP_STATE	6895	13257	0
// OP_CALL0	3289	0	0
// OP_DONE	0	0	0
void () func001021 = [19, func001022]
{
    ai_charge_side();
};


// func001022
// function begins at statement 20500, parm_start=13258
// OP_STATE	2323	13258	0
// OP_CALL0	3289	0	0
// OP_DONE	0	0	0
void () func001022 = [20, func001023]
{
    ai_charge_side();
};


// func001023
// function begins at statement 20503, parm_start=13259
// OP_STATE	12465	13259	0
// OP_CALL0	3346	0	0
// OP_DONE	0	0	0
void () func001023 = [21, func001024]
{
    ai_melee_side();
};


// func001024
// function begins at statement 20506, parm_start=13260
// OP_STATE	12467	13260	0
// OP_CALL0	3346	0	0
// OP_DONE	0	0	0
void () func001024 = [22, func001025]
{
    ai_melee_side();
};


// func001025
// function begins at statement 20509, parm_start=13261
// OP_STATE	304	13261	0
// OP_CALL0	3346	0	0
// OP_DONE	0	0	0
void () func001025 = [23, func001026]
{
    ai_melee_side();
};


// func001026
// function begins at statement 20512, parm_start=13262
// OP_STATE	736	13262	0
// OP_CALL0	3346	0	0
// OP_DONE	0	0	0
void () func001026 = [24, func001027]
{
    ai_melee_side();
};


// func001027
// function begins at statement 20515, parm_start=13263
// OP_STATE	305	13263	0
// OP_CALL0	3346	0	0
// OP_DONE	0	0	0
void () func001027 = [25, func001028]
{
    ai_melee_side();
};


// func001028
// function begins at statement 20518, parm_start=13264
// OP_STATE	306	13264	0
// OP_CALL0	3289	0	0
// OP_DONE	0	0	0
void () func001028 = [26, func001029]
{
    ai_charge_side();
};


// func001029
// function begins at statement 20521, parm_start=13265
// OP_STATE	307	13243	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001029 = [27, func001011]
{
    ai_charge(MOVETYPE_BOUNCE);
};


// knight_atk1
// function begins at statement 20525, parm_start=13265
// OP_STATE	9995	13265	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13255	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () knight_atk1 = [42, func001031]
{
    sound(self, CHAN_WEAPON, "knight/sword1.wav", TRUE, ATTN_NORM);
    ai_charge(FALSE);
};


// func001031
// function begins at statement 20535, parm_start=13266
// OP_STATE	9999	13266	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001031 = [44, func001032]
{
    ai_charge(MOVETYPE_PUSH);
};


// func001032
// function begins at statement 20539, parm_start=13267
// OP_STATE	2598	13267	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001032 = [45, func001033]
{
    ai_charge(MOVETYPE_STEP);
};


// func001033
// function begins at statement 20543, parm_start=13268
// OP_STATE	10002	13268	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001033 = [46, func001034]
{
    ai_charge(FALSE);
};


// func001034
// function begins at statement 20547, parm_start=13269
// OP_STATE	10004	13269	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001034 = [47, func001035]
{
    ai_charge(MOVETYPE_WALK);
};


// func001035
// function begins at statement 20551, parm_start=13270
// OP_STATE	10006	13270	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001035 = [48, func001036]
{
    ai_charge(MOVETYPE_STEP);
    ai_melee();
};


// func001036
// function begins at statement 20556, parm_start=13271
// OP_STATE	10008	13271	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001036 = [49, func001037]
{
    ai_charge(TRUE);
    ai_melee();
};


// func001037
// function begins at statement 20561, parm_start=13272
// OP_STATE	1470	13272	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001037 = [50, func001038]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};


// func001038
// function begins at statement 20566, parm_start=13273
// OP_STATE	9911	13273	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001038 = [51, func001039]
{
    ai_charge(TRUE);
};


// func001039
// function begins at statement 20570, parm_start=13274
// OP_STATE	9913	13243	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001039 = [52, func001011]
{
    ai_charge(MOVETYPE_FLY);
};


// func001040
// function begins at statement 20574, parm_start=13275
// OP_STATE	308	13275	0
// OP_DONE	0	0	0
void () func001040 = [28, func001041]
{
};


// func001041
// function begins at statement 20576, parm_start=13276
// OP_STATE	9664	13276	0
// OP_DONE	0	0	0
void () func001041 = [29, func001042]
{
};


// func001042
// function begins at statement 20578, parm_start=13277
// OP_STATE	309	13243	0
// OP_DONE	0	0	0
void () func001042 = [30, func001011]
{
};


// func001043
// function begins at statement 20580, parm_start=13278
// OP_STATE	310	13278	0
// OP_STORE_V	213	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001043 = [31, func001044]
{
    ai_painforward(FALSE);
};


// func001044
// function begins at statement 20584, parm_start=13279
// OP_STATE	219	13279	0
// OP_STORE_V	228	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001044 = [32, func001045]
{
    ai_painforward(MOVETYPE_WALK);
};


// func001045
// function begins at statement 20588, parm_start=13280
// OP_STATE	312	13280	0
// OP_DONE	0	0	0
void () func001045 = [33, func001046]
{
};


// func001046
// function begins at statement 20590, parm_start=13281
// OP_STATE	9671	13281	0
// OP_DONE	0	0	0
void () func001046 = [34, func001047]
{
};


// func001047
// function begins at statement 20592, parm_start=13282
// OP_STATE	5878	13282	0
// OP_STORE_V	216	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001047 = [35, func001048]
{
    ai_painforward(FL_SWIM);
};


// func001048
// function begins at statement 20596, parm_start=13283
// OP_STATE	9655	13283	0
// OP_STORE_V	229	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001048 = [36, func001049]
{
    ai_painforward(MOVETYPE_STEP);
};


// func001049
// function begins at statement 20600, parm_start=13284
// OP_STATE	9657	13284	0
// OP_STORE_V	216	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001049 = [37, func001050]
{
    ai_painforward(FL_SWIM);
};


// func001050
// function begins at statement 20604, parm_start=13285
// OP_STATE	9659	13285	0
// OP_STORE_V	230	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001050 = [38, func001051]
{
    ai_painforward(MOVETYPE_FLY);
};


// func001051
// function begins at statement 20608, parm_start=13286
// OP_STATE	9661	13286	0
// OP_STORE_V	230	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001051 = [39, func001052]
{
    ai_painforward(MOVETYPE_FLY);
};


// func001052
// function begins at statement 20612, parm_start=13287
// OP_STATE	746	13287	0
// OP_STORE_V	213	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001052 = [40, func001053]
{
    ai_painforward(FALSE);
};


// func001053
// function begins at statement 20616, parm_start=13288
// OP_STATE	9993	13243	0
// OP_DONE	0	0	0
void () func001053 = [41, func001011]
{
};


// func001054
// function begins at statement 20618, parm_start=13289
// OP_LOAD_F	28	379	13292
// OP_GT	13292	31	13293
// OP_IFNOT	13293	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	13291	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13294	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LT	13291	13295	13296
// OP_IFNOT	13296	6	0
// OP_CALL0	13274	0	0
// OP_ADDRESS	28	379	13297
// OP_ADD_F	31	214	13298
// OP_STOREP_F	13298	13297	0
// OP_GOTO	5	0	0
// OP_CALL0	13277	0	0
// OP_ADDRESS	28	379	13299
// OP_ADD_F	31	214	13300
// OP_STOREP_F	13300	13299	0
// OP_DONE	0	0	0
void (entity globaldef004128, float globaldef004129) func001054 = 
{
    local float globaldef004130;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    globaldef004130 = random();
    sound(self, CHAN_VOICE, "knight/khurt.wav", TRUE, ATTN_NORM);
    if(globaldef004130 < 0.85)
    {
        func001040();
        self.pain_finished = time + TRUE;
    }
    else
    {
        func001043();
        self.pain_finished = time + TRUE;
    }
    
};

