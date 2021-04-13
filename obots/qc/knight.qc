
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
    if(random() > RA_PLAYERSTATTIME)
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


// knight_bow1
// function begins at statement 20642, parm_start=13301
// OP_STATE	9938	13301	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () knight_bow1 = [67, func001056]
{
    ai_turn();
};


// func001056
// function begins at statement 20645, parm_start=13302
// OP_STATE	8193	13302	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001056 = [68, func001057]
{
    ai_turn();
};


// func001057
// function begins at statement 20648, parm_start=13303
// OP_STATE	8196	13303	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001057 = [69, func001058]
{
    ai_turn();
};


// func001058
// function begins at statement 20651, parm_start=13304
// OP_STATE	1536	13304	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001058 = [70, func001059]
{
    ai_turn();
};


// func001059
// function begins at statement 20654, parm_start=13305
// OP_STATE	8201	13304	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001059 = [71, func001059]
{
    ai_turn();
};


// knight_bow6
// function begins at statement 20657, parm_start=13305
// OP_STATE	1536	13305	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () knight_bow6 = [70, func001061]
{
    ai_turn();
};


// func001061
// function begins at statement 20660, parm_start=13306
// OP_STATE	8196	13306	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001061 = [69, func001062]
{
    ai_turn();
};


// func001062
// function begins at statement 20663, parm_start=13307
// OP_STATE	8193	13307	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001062 = [68, func001063]
{
    ai_turn();
};


// func001063
// function begins at statement 20666, parm_start=13308
// OP_STATE	9938	13308	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001063 = [67, func001064]
{
    ai_turn();
};


// func001064
// function begins at statement 20669, parm_start=13309
// OP_STATE	9915	3504	0
// OP_CALL0	3806	0	0
// OP_DONE	0	0	0
void () func001064 = [53, knight_walk1]
{
    ai_turn();
};


// func001065
// function begins at statement 20672, parm_start=13310
// OP_STATE	9949	13310	0
// OP_DONE	0	0	0
void () func001065 = [76, func001066]
{
};


// func001066
// function begins at statement 20674, parm_start=13311
// OP_STATE	9951	13311	0
// OP_DONE	0	0	0
void () func001066 = [77, func001067]
{
};


// func001067
// function begins at statement 20676, parm_start=13312
// OP_STATE	9953	13312	0
// OP_ADDRESS	28	104	13313
// OP_STOREP_F	237	13313	0
// OP_DONE	0	0	0
void () func001067 = [78, func001068]
{
    self.solid = SOLID_NOT;
};


// func001068
// function begins at statement 20680, parm_start=13314
// OP_STATE	9955	13314	0
// OP_DONE	0	0	0
void () func001068 = [79, func001069]
{
};


// func001069
// function begins at statement 20682, parm_start=13315
// OP_STATE	2805	13315	0
// OP_DONE	0	0	0
void () func001069 = [80, func001070]
{
};


// func001070
// function begins at statement 20684, parm_start=13316
// OP_STATE	8204	13316	0
// OP_DONE	0	0	0
void () func001070 = [81, func001071]
{
};


// func001071
// function begins at statement 20686, parm_start=13317
// OP_STATE	9959	13317	0
// OP_DONE	0	0	0
void () func001071 = [82, func001072]
{
};


// func001072
// function begins at statement 20688, parm_start=13318
// OP_STATE	9961	13318	0
// OP_DONE	0	0	0
void () func001072 = [83, func001073]
{
};


// func001073
// function begins at statement 20690, parm_start=13319
// OP_STATE	7694	13319	0
// OP_DONE	0	0	0
void () func001073 = [84, func001074]
{
};


// func001074
// function begins at statement 20692, parm_start=13320
// OP_STATE	9963	13319	0
// OP_DONE	0	0	0
void () func001074 = [85, func001074]
{
};


// func001075
// function begins at statement 20694, parm_start=13321
// OP_STATE	9965	13321	0
// OP_DONE	0	0	0
void () func001075 = [86, func001076]
{
};


// func001076
// function begins at statement 20696, parm_start=13322
// OP_STATE	9967	13322	0
// OP_DONE	0	0	0
void () func001076 = [87, func001077]
{
};


// func001077
// function begins at statement 20698, parm_start=13323
// OP_STATE	9969	13323	0
// OP_ADDRESS	28	104	13324
// OP_STOREP_F	237	13324	0
// OP_DONE	0	0	0
void () func001077 = [88, func001078]
{
    self.solid = SOLID_NOT;
};


// func001078
// function begins at statement 20702, parm_start=13325
// OP_STATE	9971	13325	0
// OP_DONE	0	0	0
void () func001078 = [89, func001079]
{
};


// func001079
// function begins at statement 20704, parm_start=13326
// OP_STATE	2658	13326	0
// OP_DONE	0	0	0
void () func001079 = [90, func001080]
{
};


// func001080
// function begins at statement 20706, parm_start=13327
// OP_STATE	9974	13327	0
// OP_DONE	0	0	0
void () func001080 = [91, func001081]
{
};


// func001081
// function begins at statement 20708, parm_start=13328
// OP_STATE	9976	13328	0
// OP_DONE	0	0	0
void () func001081 = [92, func001082]
{
};


// func001082
// function begins at statement 20710, parm_start=13329
// OP_STATE	9978	13329	0
// OP_DONE	0	0	0
void () func001082 = [93, func001083]
{
};


// func001083
// function begins at statement 20712, parm_start=13330
// OP_STATE	9979	13330	0
// OP_DONE	0	0	0
void () func001083 = [94, func001084]
{
};


// func001084
// function begins at statement 20714, parm_start=13331
// OP_STATE	9981	13331	0
// OP_DONE	0	0	0
void () func001084 = [95, func001085]
{
};


// func001085
// function begins at statement 20716, parm_start=13332
// OP_STATE	9983	13331	0
// OP_DONE	0	0	0
void () func001085 = [96, func001085]
{
};


// func001086
// function begins at statement 20718, parm_start=13333
// OP_LOAD_F	28	152	13333
// OP_LT	13333	9236	13334
// OP_IFNOT	13334	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	13335	4	0
// OP_LOAD_F	28	152	13336
// OP_STORE_V	13336	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	13337
// OP_STORE_V	13337	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	13338
// OP_STORE_V	13338	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	13339
// OP_STORE_V	13339	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13340	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	13341
// OP_IFNOT	13341	3	0
// OP_CALL0	13309	0	0
// OP_GOTO	2	0	0
// OP_CALL0	13320	0	0
// OP_DONE	0	0	0
void () func001086 = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_knight.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "knight/kdeath.wav", TRUE, ATTN_NORM);
    if(random() < RA_PLAYERSTATTIME)
    {
        func001065();
    }
    else
    {
        func001075();
    }
    
};


// monster_knight
// function begins at statement 20757, parm_start=13343
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13343	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13335	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13340	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13294	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3659	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13255	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13254	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13230	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	13344
// OP_STOREP_F	240	13344	0
// OP_ADDRESS	28	103	13345
// OP_STOREP_F	229	13345	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13343	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	13349
// OP_STOREP_F	9173	13349	0
// OP_ADDRESS	28	361	13350
// OP_STOREP_FNC	13219	13350	0
// OP_ADDRESS	28	362	13351
// OP_STOREP_FNC	3504	13351	0
// OP_ADDRESS	28	363	13352
// OP_STOREP_FNC	13243	13352	0
// OP_ADDRESS	28	365	13353
// OP_STOREP_FNC	3180	13353	0
// OP_ADDRESS	28	366	13354
// OP_STOREP_FNC	13288	13354	0
// OP_ADDRESS	28	367	13355
// OP_STOREP_FNC	13332	13355	0
// OP_CALL0	10107	0	0
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
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 75;
    self.th_stand = func000988;
    self.th_walk = knight_walk1;
    self.th_run = func001011;
    self.th_melee = knight_atk1;
    self.th_pain = func001054;
    self.th_die = func001086;
    func000531();
};

