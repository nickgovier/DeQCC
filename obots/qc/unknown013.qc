void () func001171;

// func001088
// function begins at statement 20804, parm_start=13358
// OP_STATE	213	13358	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001088 = [0, func001089]
{
    ai_stand();
};


// func001089
// function begins at statement 20807, parm_start=13359
// OP_STATE	214	13359	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001089 = [1, func001090]
{
    ai_stand();
};


// func001090
// function begins at statement 20810, parm_start=13360
// OP_STATE	216	13360	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001090 = [2, func001091]
{
    ai_stand();
};


// func001091
// function begins at statement 20813, parm_start=13361
// OP_STATE	228	13361	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001091 = [3, func001092]
{
    ai_stand();
};


// func001092
// function begins at statement 20816, parm_start=13362
// OP_STATE	229	13362	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001092 = [4, func001093]
{
    ai_stand();
};


// func001093
// function begins at statement 20819, parm_start=13363
// OP_STATE	230	13363	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001093 = [5, func001094]
{
    ai_stand();
};


// func001094
// function begins at statement 20822, parm_start=13364
// OP_STATE	231	13364	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001094 = [6, func001095]
{
    ai_stand();
};


// func001095
// function begins at statement 20825, parm_start=13365
// OP_STATE	232	13357	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001095 = [7, func001088]
{
    ai_stand();
};


// func001096
// function begins at statement 20828, parm_start=13366
// OP_STATE	2658	13366	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	13367
// OP_IFNOT	13367	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13368	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001096 = [90, func001097]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "soldier/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(TRUE);
};


// func001097
// function begins at statement 20841, parm_start=13369
// OP_STATE	9974	13369	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001097 = [91, func001098]
{
    ai_walk(TRUE);
};


// func001098
// function begins at statement 20845, parm_start=13370
// OP_STATE	9976	13370	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001098 = [92, func001099]
{
    ai_walk(TRUE);
};


// func001099
// function begins at statement 20849, parm_start=13371
// OP_STATE	9978	13371	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001099 = [93, func001100]
{
    ai_walk(TRUE);
};


// func001100
// function begins at statement 20853, parm_start=13372
// OP_STATE	9979	13372	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001100 = [94, func001101]
{
    ai_walk(FL_SWIM);
};


// func001101
// function begins at statement 20857, parm_start=13373
// OP_STATE	9981	13373	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001101 = [95, func001102]
{
    ai_walk(MOVETYPE_WALK);
};


// func001102
// function begins at statement 20861, parm_start=13374
// OP_STATE	9983	13374	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001102 = [96, func001103]
{
    ai_walk(MOVETYPE_STEP);
};


// func001103
// function begins at statement 20865, parm_start=13375
// OP_STATE	9985	13375	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001103 = [97, func001104]
{
    ai_walk(MOVETYPE_STEP);
};


// func001104
// function begins at statement 20869, parm_start=13376
// OP_STATE	9987	13376	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001104 = [98, func001105]
{
    ai_walk(FL_SWIM);
};


// func001105
// function begins at statement 20873, parm_start=13377
// OP_STATE	9989	13377	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001105 = [99, func001106]
{
    ai_walk(FL_SWIM);
};


// func001106
// function begins at statement 20877, parm_start=13378
// OP_STATE	1997	13378	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001106 = [100, func001107]
{
    ai_walk(FL_SWIM);
};


// func001107
// function begins at statement 20881, parm_start=13379
// OP_STATE	8107	13379	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001107 = [101, func001108]
{
    ai_walk(TRUE);
};


// func001108
// function begins at statement 20885, parm_start=13380
// OP_STATE	8109	13380	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001108 = [102, func001109]
{
    ai_walk(FALSE);
};


// func001109
// function begins at statement 20889, parm_start=13381
// OP_STATE	8111	13381	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001109 = [103, func001110]
{
    ai_walk(TRUE);
};


// func001110
// function begins at statement 20893, parm_start=13382
// OP_STATE	8114	13382	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001110 = [104, func001111]
{
    ai_walk(TRUE);
};


// func001111
// function begins at statement 20897, parm_start=13383
// OP_STATE	9562	13383	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001111 = [105, func001112]
{
    ai_walk(TRUE);
};


// func001112
// function begins at statement 20901, parm_start=13384
// OP_STATE	9577	13384	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001112 = [106, func001113]
{
    ai_walk(MOVETYPE_WALK);
};


// func001113
// function begins at statement 20905, parm_start=13385
// OP_STATE	9591	13385	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001113 = [107, func001114]
{
    ai_walk(MOVETYPE_WALK);
};


// func001114
// function begins at statement 20909, parm_start=13386
// OP_STATE	9597	13386	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001114 = [108, func001115]
{
    ai_walk(MOVETYPE_WALK);
};


// func001115
// function begins at statement 20913, parm_start=13387
// OP_STATE	9600	13387	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001115 = [109, func001116]
{
    ai_walk(MOVETYPE_WALK);
};


// func001116
// function begins at statement 20917, parm_start=13388
// OP_STATE	9603	13388	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001116 = [110, func001117]
{
    ai_walk(FL_SWIM);
};


// func001117
// function begins at statement 20921, parm_start=13389
// OP_STATE	2224	13389	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001117 = [111, func001118]
{
    ai_walk(TRUE);
};


// func001118
// function begins at statement 20925, parm_start=13390
// OP_STATE	9608	13390	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001118 = [112, func001119]
{
    ai_walk(TRUE);
};


// func001119
// function begins at statement 20929, parm_start=13391
// OP_STATE	9473	13365	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001119 = [113, func001096]
{
    ai_walk(TRUE);
};


// func001120
// function begins at statement 20933, parm_start=13392
// OP_STATE	5487	13392	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	13393
// OP_IFNOT	13393	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13368	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	236	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001120 = [73, func001121]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "soldier/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(MOVETYPE_BOUNCEMISSILE);
};


// func001121
// function begins at statement 20946, parm_start=13394
// OP_STATE	9946	13394	0
// OP_STORE_V	765	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001121 = [74, func001122]
{
    ai_run(GLOBALDEFSEVENFOUREIGHT);
};


// func001122
// function begins at statement 20950, parm_start=13395
// OP_STATE	9173	13395	0
// OP_STORE_V	235	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001122 = [75, func001123]
{
    ai_run(MOVETYPE_BOUNCE);
};


// func001123
// function begins at statement 20954, parm_start=13396
// OP_STATE	9949	13396	0
// OP_STORE_V	235	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001123 = [76, func001124]
{
    ai_run(MOVETYPE_BOUNCE);
};


// func001124
// function begins at statement 20958, parm_start=13397
// OP_STATE	9951	13397	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001124 = [77, func001125]
{
    ai_run(FL_CLIENT);
};


// func001125
// function begins at statement 20962, parm_start=13398
// OP_STATE	9953	13398	0
// OP_STORE_V	765	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001125 = [78, func001126]
{
    ai_run(GLOBALDEFSEVENFOUREIGHT);
};


// func001126
// function begins at statement 20966, parm_start=13399
// OP_STATE	9955	13399	0
// OP_STORE_V	235	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001126 = [79, func001127]
{
    ai_run(MOVETYPE_BOUNCE);
};


// func001127
// function begins at statement 20970, parm_start=13400
// OP_STATE	2805	13391	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001127 = [80, func001120]
{
    ai_run(FL_CLIENT);
};


// func001128
// function begins at statement 20974, parm_start=13401
// OP_STATE	8204	13401	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001128 = [81, func001129]
{
    ai_face();
};


// func001129
// function begins at statement 20977, parm_start=13402
// OP_STATE	9959	13402	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001129 = [82, func001130]
{
    ai_face();
};


// func001130
// function begins at statement 20980, parm_start=13403
// OP_STATE	9961	13403	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001130 = [83, func001131]
{
    ai_face();
};


// func001131
// function begins at statement 20983, parm_start=13404
// OP_STATE	7694	13404	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001131 = [84, func001132]
{
    ai_face();
};


// func001132
// function begins at statement 20986, parm_start=13405
// OP_STATE	9963	13405	0
// OP_CALL0	3190	0	0
// OP_CALL0	13356	0	0
// OP_ADDRESS	28	133	13406
// OP_LOAD_F	28	133	13407
// OP_BITOR	13407	339	13408
// OP_STOREP_F	13408	13406	0
// OP_DONE	0	0	0
void () func001132 = [85, func001133]
{
    ai_face();
    func001171();
    self.effects = self.effects | EF_MUZZLEFLASH;
};


// func001133
// function begins at statement 20994, parm_start=13409
// OP_STATE	9965	13409	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001133 = [86, func001134]
{
    ai_face();
};


// func001134
// function begins at statement 20997, parm_start=13410
// OP_STATE	9967	13410	0
// OP_CALL0	3190	0	0
// OP_STORE_V	13400	4	0
// OP_CALL1	3170	0	0
// OP_DONE	0	0	0
void () func001134 = [87, func001135]
{
    ai_face();
    SUB_CheckRefire(func001128);
};


// func001135
// function begins at statement 21002, parm_start=13411
// OP_STATE	9969	13411	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001135 = [88, func001136]
{
    ai_face();
};


// func001136
// function begins at statement 21005, parm_start=13412
// OP_STATE	9971	13391	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001136 = [89, func001120]
{
    ai_face();
};


// func001137
// function begins at statement 21008, parm_start=13413
// OP_STATE	746	13413	0
// OP_DONE	0	0	0
void () func001137 = [40, func001138]
{
};


// func001138
// function begins at statement 21010, parm_start=13414
// OP_STATE	9993	13414	0
// OP_DONE	0	0	0
void () func001138 = [41, func001139]
{
};


// func001139
// function begins at statement 21012, parm_start=13415
// OP_STATE	9995	13415	0
// OP_DONE	0	0	0
void () func001139 = [42, func001140]
{
};


// func001140
// function begins at statement 21014, parm_start=13416
// OP_STATE	9997	13416	0
// OP_DONE	0	0	0
void () func001140 = [43, func001141]
{
};


// func001141
// function begins at statement 21016, parm_start=13417
// OP_STATE	9999	13417	0
// OP_DONE	0	0	0
void () func001141 = [44, func001142]
{
};


// func001142
// function begins at statement 21018, parm_start=13418
// OP_STATE	2598	13391	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001142 = [45, func001120]
{
    ai_pain(TRUE);
};


// func001143
// function begins at statement 21022, parm_start=13419
// OP_STATE	10002	13419	0
// OP_DONE	0	0	0
void () func001143 = [46, func001144]
{
};


// func001144
// function begins at statement 21024, parm_start=13420
// OP_STATE	10004	13420	0
// OP_STORE_V	792	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001144 = [47, func001145]
{
    ai_painforward(globaldef000775);
};


// func001145
// function begins at statement 21028, parm_start=13421
// OP_STATE	10006	13421	0
// OP_STORE_V	234	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001145 = [48, func001146]
{
    ai_painforward(MOVETYPE_FLYMISSILE);
};


// func001146
// function begins at statement 21032, parm_start=13422
// OP_STATE	10008	13422	0
// OP_DONE	0	0	0
void () func001146 = [49, func001147]
{
};


// func001147
// function begins at statement 21034, parm_start=13423
// OP_STATE	1470	13423	0
// OP_DONE	0	0	0
void () func001147 = [50, func001148]
{
};


// func001148
// function begins at statement 21036, parm_start=13424
// OP_STATE	9911	13424	0
// OP_DONE	0	0	0
void () func001148 = [51, func001149]
{
};


// func001149
// function begins at statement 21038, parm_start=13425
// OP_STATE	9913	13425	0
// OP_DONE	0	0	0
void () func001149 = [52, func001150]
{
};


// func001150
// function begins at statement 21040, parm_start=13426
// OP_STATE	9915	13426	0
// OP_DONE	0	0	0
void () func001150 = [53, func001151]
{
};


// func001151
// function begins at statement 21042, parm_start=13427
// OP_STATE	9917	13427	0
// OP_DONE	0	0	0
void () func001151 = [54, func001152]
{
};


// func001152
// function begins at statement 21044, parm_start=13428
// OP_STATE	9919	13428	0
// OP_DONE	0	0	0
void () func001152 = [55, func001153]
{
};


// func001153
// function begins at statement 21046, parm_start=13429
// OP_STATE	9921	13429	0
// OP_DONE	0	0	0
void () func001153 = [56, func001154]
{
};


// func001154
// function begins at statement 21048, parm_start=13430
// OP_STATE	9923	13430	0
// OP_STORE_V	216	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001154 = [57, func001155]
{
    ai_pain(FL_SWIM);
};


// func001155
// function begins at statement 21052, parm_start=13431
// OP_STATE	9925	13431	0
// OP_DONE	0	0	0
void () func001155 = [58, func001156]
{
};


// func001156
// function begins at statement 21054, parm_start=13432
// OP_STATE	2783	13391	0
// OP_DONE	0	0	0
void () func001156 = [59, func001120]
{
};


// func001157
// function begins at statement 21056, parm_start=13433
// OP_STATE	2019	13433	0
// OP_DONE	0	0	0
void () func001157 = [60, func001158]
{
};


// func001158
// function begins at statement 21058, parm_start=13434
// OP_STATE	9928	13434	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001158 = [61, func001159]
{
    ai_pain(TRUE);
};


// func001159
// function begins at statement 21062, parm_start=13435
// OP_STATE	9930	13435	0
// OP_DONE	0	0	0
void () func001159 = [62, func001160]
{
};


// func001160
// function begins at statement 21064, parm_start=13436
// OP_STATE	6707	13436	0
// OP_DONE	0	0	0
void () func001160 = [63, func001161]
{
};


// func001161
// function begins at statement 21066, parm_start=13437
// OP_STATE	220	13437	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001161 = [64, func001162]
{
    ai_painforward(TRUE);
};


// func001162
// function begins at statement 21070, parm_start=13438
// OP_STATE	9934	13438	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001162 = [65, func001163]
{
    ai_painforward(TRUE);
};


// func001163
// function begins at statement 21074, parm_start=13439
// OP_STATE	9936	13439	0
// OP_DONE	0	0	0
void () func001163 = [66, func001164]
{
};


// func001164
// function begins at statement 21076, parm_start=13440
// OP_STATE	9938	13440	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001164 = [67, func001165]
{
    ai_pain(TRUE);
};


// func001165
// function begins at statement 21080, parm_start=13441
// OP_STATE	8193	13441	0
// OP_STORE_V	229	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001165 = [68, func001166]
{
    ai_painforward(MOVETYPE_STEP);
};


// func001166
// function begins at statement 21084, parm_start=13442
// OP_STATE	8196	13442	0
// OP_STORE_V	228	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001166 = [69, func001167]
{
    ai_painforward(MOVETYPE_WALK);
};


// func001167
// function begins at statement 21088, parm_start=13443
// OP_STATE	1536	13443	0
// OP_STORE_V	231	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001167 = [70, func001168]
{
    ai_painforward(MOVETYPE_TOSS);
};


// func001168
// function begins at statement 21092, parm_start=13444
// OP_STATE	8201	13444	0
// OP_STORE_V	217	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001168 = [71, func001169]
{
    ai_painforward(FL_CLIENT);
};


// func001169
// function begins at statement 21096, parm_start=13445
// OP_STATE	9943	13391	0
// OP_DONE	0	0	0
void () func001169 = [72, func001120]
{
};


// func001170
// function begins at statement 21098, parm_start=13446
// OP_LOAD_F	28	379	13449
// OP_GT	13449	31	13450
// OP_IFNOT	13450	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	13448	0
// OP_LT	13448	3267	13451
// OP_IFNOT	13451	12	0
// OP_ADDRESS	28	379	13452
// OP_ADD_F	31	4474	13453
// OP_STOREP_F	13453	13452	0
// OP_CALL0	13412	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13454	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	24	0	0
// OP_LT	13448	4474	13455
// OP_IFNOT	13455	12	0
// OP_ADDRESS	28	379	13456
// OP_ADD_F	31	13457	13458
// OP_STOREP_F	13458	13456	0
// OP_CALL0	13418	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13459	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	379	13460
// OP_ADD_F	31	13457	13461
// OP_STOREP_F	13461	13460	0
// OP_CALL0	13432	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13459	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void (entity globaldef004253, float globaldef004254) func001170 = 
{
    local float globaldef004255;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    globaldef004255 = random();
    if(globaldef004255 < 0.2)
    {
        self.pain_finished = time + 0.6;
        func001137();
        sound(self, CHAN_VOICE, "soldier/pain1.wav", TRUE, ATTN_NORM);
    }
    else
    {
        if(globaldef004255 < 0.6)
        {
            self.pain_finished = time + 1.1;
            func001143();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", TRUE, ATTN_NORM);
        }
        else
        {
            self.pain_finished = time + 1.1;
            func001157();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", TRUE, ATTN_NORM);
        }
        
    }
    
};


// func001171
// function begins at statement 21141, parm_start=13462
// OP_CALL0	3190	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13466	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_ENT	28	181	13467
// OP_STORE_ENT	13467	13465	0
// OP_LOAD_V	13465	105	13468
// OP_LOAD_V	13465	113	13471
// OP_MUL_VF	13471	3267	13474
// OP_SUB_V	13468	13474	13477
// OP_STORE_V	13477	13462	0
// OP_LOAD_V	28	105	13480
// OP_SUB_V	13462	13480	13483
// OP_STORE_V	13483	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	13462	0
// OP_STORE_V	229	4	0
// OP_STORE_V	13462	7	0
// OP_STORE_V	13486	10	0
// OP_CALL3	5571	0	0
// OP_DONE	0	0	0
void () func001171 = 
{
    local vector globaldef004259;
    local entity globaldef004263;
    ai_face();
    sound(self, CHAN_WEAPON, "soldier/sattck1.wav", TRUE, ATTN_NORM);
    globaldef004263 = self.enemy;
    globaldef004259 = globaldef004263.origin - (globaldef004263.velocity * 0.2);
    globaldef004259 = normalize(globaldef004259 - self.origin);
    func000261(MOVETYPE_STEP, globaldef004259, '0.1 0.1 0');
};


// func001172
// function begins at statement 21165, parm_start=13490
// OP_STATE	217	13490	0
// OP_DONE	0	0	0
void () func001172 = [8, func001173]
{
};


// func001173
// function begins at statement 21167, parm_start=13491
// OP_STATE	234	13491	0
// OP_DONE	0	0	0
void () func001173 = [9, func001174]
{
};


// func001174
// function begins at statement 21169, parm_start=13492
// OP_STATE	235	13492	0
// OP_ADDRESS	28	104	13493
// OP_STOREP_F	237	13493	0
// OP_ADDRESS	28	158	13494
// OP_STOREP_F	230	13494	0
// OP_CALL0	5177	0	0
// OP_DONE	0	0	0
void () func001174 = [10, func001175]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = MOVETYPE_FLY;
    DropBackpack();
};


// func001175
// function begins at statement 21176, parm_start=13495
// OP_STATE	236	13495	0
// OP_DONE	0	0	0
void () func001175 = [11, func001176]
{
};


// func001176
// function begins at statement 21178, parm_start=13496
// OP_STATE	791	13496	0
// OP_DONE	0	0	0
void () func001176 = [12, func001177]
{
};


// func001177
// function begins at statement 21180, parm_start=13497
// OP_STATE	792	13497	0
// OP_DONE	0	0	0
void () func001177 = [13, func001178]
{
};


// func001178
// function begins at statement 21182, parm_start=13498
// OP_STATE	5693	13498	0
// OP_DONE	0	0	0
void () func001178 = [14, func001179]
{
};


// func001179
// function begins at statement 21184, parm_start=13499
// OP_STATE	765	13499	0
// OP_DONE	0	0	0
void () func001179 = [15, func001180]
{
};


// func001180
// function begins at statement 21186, parm_start=13500
// OP_STATE	218	13500	0
// OP_DONE	0	0	0
void () func001180 = [16, func001181]
{
};


// func001181
// function begins at statement 21188, parm_start=13501
// OP_STATE	6892	13500	0
// OP_DONE	0	0	0
void () func001181 = [17, func001181]
{
};


// func001182
// function begins at statement 21190, parm_start=13502
// OP_STATE	6133	13502	0
// OP_DONE	0	0	0
void () func001182 = [18, func001183]
{
};


// func001183
// function begins at statement 21192, parm_start=13503
// OP_STATE	6895	13503	0
// OP_STORE_V	230	4	0
// OP_CALL1	3785	0	0
// OP_DONE	0	0	0
void () func001183 = [19, func001184]
{
    ai_back(MOVETYPE_FLY);
};


// func001184
// function begins at statement 21196, parm_start=13504
// OP_STATE	2323	13504	0
// OP_ADDRESS	28	104	13505
// OP_STOREP_F	237	13505	0
// OP_ADDRESS	28	158	13506
// OP_STOREP_F	230	13506	0
// OP_CALL0	5177	0	0
// OP_STORE_V	229	4	0
// OP_CALL1	3785	0	0
// OP_DONE	0	0	0
void () func001184 = [20, func001185]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = MOVETYPE_FLY;
    DropBackpack();
    ai_back(MOVETYPE_STEP);
};


// func001185
// function begins at statement 21205, parm_start=13507
// OP_STATE	12465	13507	0
// OP_STORE_V	792	4	0
// OP_CALL1	3785	0	0
// OP_DONE	0	0	0
void () func001185 = [21, func001186]
{
    ai_back(globaldef000775);
};


// func001186
// function begins at statement 21209, parm_start=13508
// OP_STATE	12467	13508	0
// OP_STORE_V	228	4	0
// OP_CALL1	3785	0	0
// OP_DONE	0	0	0
void () func001186 = [22, func001187]
{
    ai_back(MOVETYPE_WALK);
};


// func001187
// function begins at statement 21213, parm_start=13509
// OP_STATE	304	13509	0
// OP_STORE_V	229	4	0
// OP_CALL1	3785	0	0
// OP_DONE	0	0	0
void () func001187 = [23, func001188]
{
    ai_back(MOVETYPE_STEP);
};


// func001188
// function begins at statement 21217, parm_start=13510
// OP_STATE	736	13510	0
// OP_DONE	0	0	0
void () func001188 = [24, func001189]
{
};


// func001189
// function begins at statement 21219, parm_start=13511
// OP_STATE	305	13511	0
// OP_DONE	0	0	0
void () func001189 = [25, func001190]
{
};


// func001190
// function begins at statement 21221, parm_start=13512
// OP_STATE	306	13512	0
// OP_DONE	0	0	0
void () func001190 = [26, func001191]
{
};


// func001191
// function begins at statement 21223, parm_start=13513
// OP_STATE	307	13513	0
// OP_DONE	0	0	0
void () func001191 = [27, func001192]
{
};


// func001192
// function begins at statement 21225, parm_start=13514
// OP_STATE	308	13513	0
// OP_DONE	0	0	0
void () func001192 = [28, func001192]
{
};


// func001193
// function begins at statement 21227, parm_start=13515
// OP_LOAD_F	28	152	13515
// OP_LT	13515	13516	13517
// OP_IFNOT	13517	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	13518	4	0
// OP_LOAD_F	28	152	13519
// OP_STORE_V	13519	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	13520
// OP_STORE_V	13520	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	13521
// OP_STORE_V	13521	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	13522
// OP_STORE_V	13522	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	13523	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	13524
// OP_IFNOT	13524	3	0
// OP_CALL0	13489	0	0
// OP_GOTO	2	0	0
// OP_CALL0	13501	0	0
// OP_DONE	0	0	0
void () func001193 = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_guard.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "soldier/death1.wav", TRUE, ATTN_NORM);
    if(random() < GLOBALDEFFIVETWOTWO)
    {
        func001172();
    }
    else
    {
        func001182();
    }
    
};

