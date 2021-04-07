void () Demon_JumpTouch;
// demon1_stand1
// function begins at statement 12985, parm_start=8400
// OP_STATE	213	8400	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand1 = [0, demon1_stand2]
{
    ai_stand();
};

// demon1_stand2
// function begins at statement 12988, parm_start=8401
// OP_STATE	214	8401	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand2 = [1, demon1_stand3]
{
    ai_stand();
};

// demon1_stand3
// function begins at statement 12991, parm_start=8402
// OP_STATE	216	8402	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand3 = [2, demon1_stand4]
{
    ai_stand();
};

// demon1_stand4
// function begins at statement 12994, parm_start=8403
// OP_STATE	228	8403	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand4 = [3, demon1_stand5]
{
    ai_stand();
};

// demon1_stand5
// function begins at statement 12997, parm_start=8404
// OP_STATE	229	8404	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand5 = [4, demon1_stand6]
{
    ai_stand();
};

// demon1_stand6
// function begins at statement 13000, parm_start=8405
// OP_STATE	230	8405	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand6 = [5, demon1_stand7]
{
    ai_stand();
};

// demon1_stand7
// function begins at statement 13003, parm_start=8406
// OP_STATE	231	8406	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand7 = [6, demon1_stand8]
{
    ai_stand();
};

// demon1_stand8
// function begins at statement 13006, parm_start=8407
// OP_STATE	232	8407	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand8 = [7, demon1_stand9]
{
    ai_stand();
};

// demon1_stand9
// function begins at statement 13009, parm_start=8408
// OP_STATE	217	8408	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand9 = [8, demon1_stand10]
{
    ai_stand();
};

// demon1_stand10
// function begins at statement 13012, parm_start=8409
// OP_STATE	234	8409	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand10 = [9, demon1_stand11]
{
    ai_stand();
};

// demon1_stand11
// function begins at statement 13015, parm_start=8410
// OP_STATE	235	8410	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand11 = [10, demon1_stand12]
{
    ai_stand();
};

// demon1_stand12
// function begins at statement 13018, parm_start=8411
// OP_STATE	236	8411	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand12 = [11, demon1_stand13]
{
    ai_stand();
};

// demon1_stand13
// function begins at statement 13021, parm_start=8412
// OP_STATE	2717	8399	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () demon1_stand13 = [12, demon1_stand1]
{
    ai_stand();
};

// demon1_walk1
// function begins at statement 13024, parm_start=8413
// OP_STATE	8413	8414	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	8415
// OP_IFNOT	8415	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8416	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk1 = [13, demon1_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "demon/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(FL_CLIENT);
};

// demon1_walk2
// function begins at statement 13037, parm_start=8417
// OP_STATE	3382	8417	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk2 = [14, demon1_walk3]
{
    ai_walk(MOVETYPE_TOSS);
};

// demon1_walk3
// function begins at statement 13041, parm_start=8418
// OP_STATE	2246	8418	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk3 = [15, demon1_walk4]
{
    ai_walk(MOVETYPE_TOSS);
};

// demon1_walk4
// function begins at statement 13045, parm_start=8419
// OP_STATE	218	8419	0
// OP_STORE_V	232	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk4 = [16, demon1_walk5]
{
    ai_walk(MOVETYPE_PUSH);
};

// demon1_walk5
// function begins at statement 13049, parm_start=8420
// OP_STATE	5450	8420	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk5 = [17, demon1_walk6]
{
    ai_walk(MOVETYPE_STEP);
};

// demon1_walk6
// function begins at statement 13053, parm_start=8421
// OP_STATE	3866	8421	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk6 = [18, demon1_walk7]
{
    ai_walk(MOVETYPE_TOSS);
};

// demon1_walk7
// function begins at statement 13057, parm_start=8422
// OP_STATE	8422	8423	0
// OP_STORE_V	235	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk7 = [19, demon1_walk8]
{
    ai_walk(MOVETYPE_BOUNCE);
};

// demon1_walk8
// function begins at statement 13061, parm_start=8424
// OP_STATE	576	8412	0
// OP_STORE_V	235	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () demon1_walk8 = [20, demon1_walk1]
{
    ai_walk(MOVETYPE_BOUNCE);
};

// demon1_run1
// function begins at statement 13065, parm_start=8425
// OP_STATE	8425	8426	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	8427
// OP_IFNOT	8427	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8416	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () demon1_run1 = [21, demon1_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "demon/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(KINDA_WANT);
};

// demon1_run2
// function begins at statement 13078, parm_start=8428
// OP_STATE	8428	8429	0
// OP_STORE_V	2246	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () demon1_run2 = [22, demon1_run3]
{
    ai_run(15);
};

// demon1_run3
// function begins at statement 13082, parm_start=8430
// OP_STATE	301	8430	0
// OP_STORE_V	5683	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () demon1_run3 = [23, demon1_run4]
{
    ai_run(36);
};

// demon1_run4
// function begins at statement 13086, parm_start=8431
// OP_STATE	5005	8431	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () demon1_run4 = [24, demon1_run5]
{
    ai_run(KINDA_WANT);
};

// demon1_run5
// function begins at statement 13090, parm_start=8432
// OP_STATE	2261	8432	0
// OP_STORE_V	2246	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () demon1_run5 = [25, demon1_run6]
{
    ai_run(15);
};

// demon1_run6
// function begins at statement 13094, parm_start=8433
// OP_STATE	8433	8424	0
// OP_STORE_V	5683	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () demon1_run6 = [26, demon1_run1]
{
    ai_run(36);
};

// demon1_jump1
// function begins at statement 13098, parm_start=8435
// OP_STATE	302	8435	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () demon1_jump1 = [27, demon1_jump2]
{
    ai_face();
};

// demon1_jump2
// function begins at statement 13101, parm_start=8436
// OP_STATE	303	8436	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () demon1_jump2 = [28, demon1_jump3]
{
    ai_face();
};

// demon1_jump3
// function begins at statement 13104, parm_start=8437
// OP_STATE	5692	8437	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () demon1_jump3 = [29, demon1_jump4]
{
    ai_face();
};

// demon1_jump4
// function begins at statement 13107, parm_start=8438
// OP_STATE	304	8438	0
// OP_CALL0	1148	0	0
// OP_ADDRESS	28	146	8439
// OP_STOREP_FNC	8398	8439	0
// OP_LOAD_V	28	117	8440
// OP_STORE_V	8440	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	108	8443
// OP_LOAD_F	28	108	8444
// OP_ADD_F	8444	214	8445
// OP_STOREP_F	8445	8443	0
// OP_ADDRESS	28	113	8446
// OP_MUL_VF	59	580	8449
// OP_ADD_V	8449	8452	8455
// OP_STOREP_V	8455	8446	0
// OP_LOAD_F	28	182	8458
// OP_BITAND	8458	223	8459
// OP_IFNOT	8459	5	0
// OP_ADDRESS	28	182	8460
// OP_LOAD_F	28	182	8461
// OP_SUB_F	8461	223	8462
// OP_STOREP_F	8462	8460	0
// OP_DONE	0	0	0
void () demon1_jump4 = [30, demon1_jump5]
{
    ai_face();
    self.touch = Demon_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + TRUE;
    self.velocity = (v_forward * SEARCH_RADIUS) + '0 0 250';
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
};

// demon1_jump5
// function begins at statement 13130, parm_start=8463
// OP_STATE	305	8463	0
// OP_DONE	0	0	0
void () demon1_jump5 = [31, demon1_jump6]
{
};

// demon1_jump6
// function begins at statement 13132, parm_start=8464
// OP_STATE	219	8464	0
// OP_DONE	0	0	0
void () demon1_jump6 = [32, demon1_jump7]
{
};

// demon1_jump7
// function begins at statement 13134, parm_start=8465
// OP_STATE	307	8465	0
// OP_DONE	0	0	0
void () demon1_jump7 = [33, demon1_jump8]
{
};

// demon1_jump8
// function begins at statement 13136, parm_start=8466
// OP_STATE	5699	8466	0
// OP_DONE	0	0	0
void () demon1_jump8 = [34, demon1_jump9]
{
};

// demon1_jump9
// function begins at statement 13138, parm_start=8467
// OP_STATE	575	8467	0
// OP_DONE	0	0	0
void () demon1_jump9 = [35, demon1_jump10]
{
};

// demon1_jump10
// function begins at statement 13140, parm_start=8468
// OP_STATE	5683	8434	0
// OP_ADDRESS	28	150	8468
// OP_ADD_F	31	228	8469
// OP_STOREP_F	8469	8468	0
// OP_DONE	0	0	0
void () demon1_jump10 = [36, demon1_jump1]
{
    self.nextthink = time + MOVETYPE_WALK;
};

// demon1_jump11
// function begins at statement 13145, parm_start=8471
// OP_STATE	5685	8471	0
// OP_DONE	0	0	0
void () demon1_jump11 = [37, demon1_jump12]
{
};

// demon1_jump12
// function begins at statement 13147, parm_start=8472
// OP_STATE	5687	8424	0
// OP_DONE	0	0	0
void () demon1_jump12 = [38, demon1_run1]
{
};

// demon1_atta1
// function begins at statement 13149, parm_start=8473
// OP_STATE	5957	8473	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta1 = [54, demon1_atta2]
{
    ai_charge(MOVETYPE_STEP);
};

// demon1_atta2
// function begins at statement 13153, parm_start=8474
// OP_STATE	5959	8474	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta2 = [55, demon1_atta3]
{
    ai_charge(FALSE);
};

// demon1_atta3
// function begins at statement 13157, parm_start=8475
// OP_STATE	5961	8475	0
// OP_STORE_V	213	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta3 = [56, demon1_atta4]
{
    ai_charge(FALSE);
};

// demon1_atta4
// function begins at statement 13161, parm_start=8476
// OP_STATE	5963	8476	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta4 = [57, demon1_atta5]
{
    ai_charge(TRUE);
};

// demon1_atta5
// function begins at statement 13165, parm_start=8477
// OP_STATE	5965	8477	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_STORE_V	2356	4	0
// OP_CALL1	1146	0	0
// OP_DONE	0	0	0
void () demon1_atta5 = [58, demon1_atta6]
{
    ai_charge(FL_SWIM);
    Demon_Melee(200);
};

// demon1_atta6
// function begins at statement 13171, parm_start=8478
// OP_STATE	5967	8478	0
// OP_STORE_V	214	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta6 = [59, demon1_atta7]
{
    ai_charge(TRUE);
};

// demon1_atta7
// function begins at statement 13175, parm_start=8479
// OP_STATE	730	8479	0
// OP_STORE_V	231	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta7 = [60, demon1_atta8]
{
    ai_charge(MOVETYPE_TOSS);
};

// demon1_atta8
// function begins at statement 13179, parm_start=8480
// OP_STATE	5969	8480	0
// OP_STORE_V	217	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta8 = [61, demon1_atta9]
{
    ai_charge(FL_CLIENT);
};

// demon1_atta9
// function begins at statement 13183, parm_start=8481
// OP_STATE	5971	8481	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta9 = [62, demon1_atta10]
{
    ai_charge(MOVETYPE_STEP);
};

// demon1_atta10
// function begins at statement 13187, parm_start=8482
// OP_STATE	4366	8482	0
// OP_STORE_V	216	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta10 = [63, demon1_atta11]
{
    ai_charge(FL_SWIM);
};

// demon1_atta11
// function begins at statement 13191, parm_start=8483
// OP_STATE	220	8483	0
// OP_STORE_V	5793	4	0
// OP_CALL1	1146	0	0
// OP_DONE	0	0	0
void () demon1_atta11 = [64, demon1_atta12]
{
    Demon_Melee(-200);
};

// demon1_atta12
// function begins at statement 13195, parm_start=8484
// OP_STATE	5975	8484	0
// OP_STORE_V	230	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta12 = [65, demon1_atta13]
{
    ai_charge(MOVETYPE_FLY);
};

// demon1_atta13
// function begins at statement 13199, parm_start=8485
// OP_STATE	5977	8485	0
// OP_STORE_V	217	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta13 = [66, demon1_atta14]
{
    ai_charge(FL_CLIENT);
};

// demon1_atta14
// function begins at statement 13203, parm_start=8486
// OP_STATE	5979	8486	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta14 = [67, demon1_atta15]
{
    ai_charge(MOVETYPE_STEP);
};

// demon1_atta15
// function begins at statement 13207, parm_start=8487
// OP_STATE	5981	8424	0
// OP_STORE_V	229	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () demon1_atta15 = [68, demon1_run1]
{
    ai_charge(MOVETYPE_STEP);
};

// demon1_pain1
// function begins at statement 13211, parm_start=8488
// OP_STATE	5689	8488	0
// OP_DONE	0	0	0
void () demon1_pain1 = [39, demon1_pain2]
{
};

// demon1_pain2
// function begins at statement 13213, parm_start=8489
// OP_STATE	2101	8489	0
// OP_DONE	0	0	0
void () demon1_pain2 = [40, demon1_pain3]
{
};

// demon1_pain3
// function begins at statement 13215, parm_start=8490
// OP_STATE	6042	8490	0
// OP_DONE	0	0	0
void () demon1_pain3 = [41, demon1_pain4]
{
};

// demon1_pain4
// function begins at statement 13217, parm_start=8491
// OP_STATE	6044	8491	0
// OP_DONE	0	0	0
void () demon1_pain4 = [42, demon1_pain5]
{
};

// demon1_pain5
// function begins at statement 13219, parm_start=8492
// OP_STATE	6046	8492	0
// OP_DONE	0	0	0
void () demon1_pain5 = [43, demon1_pain6]
{
};

// demon1_pain6
// function begins at statement 13221, parm_start=8493
// OP_STATE	6048	8424	0
// OP_DONE	0	0	0
void () demon1_pain6 = [44, demon1_run1]
{
};

// demon1_pain
// function begins at statement 13223, parm_start=8494
// OP_LOAD_FNC	28	146	8496
// OP_EQ_FNC	8496	8398	8497
// OP_IFNOT	8497	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	8498
// OP_GT	8498	31	8499
// OP_IFNOT	8499	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	8500
// OP_ADD_F	31	214	8501
// OP_STOREP_F	8501	8500	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8502	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	2356	8503
// OP_GT	8503	8495	8504
// OP_IFNOT	8504	2	0
// OP_RETURN	0	0	0
// OP_CALL0	8487	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) demon1_pain = 
{
    
    if(self.touch == Demon_JumpTouch)
    {
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    self.pain_finished = time + TRUE;
    sound(self, CHAN_VOICE, "demon/dpain1.wav", TRUE, ATTN_NORM);
    
    if((random() * 200) > damage)
    {
        return;
    }
    
    demon1_pain1();
};

// demon1_die1
// function begins at statement 13247, parm_start=8506
// OP_STATE	1770	8506	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8507	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () demon1_die1 = [45, demon1_die2]
{
    sound(self, CHAN_VOICE, "demon/ddeath.wav", TRUE, ATTN_NORM);
};

// demon1_die2
// function begins at statement 13255, parm_start=8508
// OP_STATE	6051	8508	0
// OP_DONE	0	0	0
void () demon1_die2 = [46, demon1_die3]
{
};

// demon1_die3
// function begins at statement 13257, parm_start=8509
// OP_STATE	6053	8509	0
// OP_DONE	0	0	0
void () demon1_die3 = [47, demon1_die4]
{
};

// demon1_die4
// function begins at statement 13259, parm_start=8510
// OP_STATE	6055	8510	0
// OP_DONE	0	0	0
void () demon1_die4 = [48, demon1_die5]
{
};

// demon1_die5
// function begins at statement 13261, parm_start=8511
// OP_STATE	6057	8511	0
// OP_DONE	0	0	0
void () demon1_die5 = [49, demon1_die6]
{
};

// demon1_die6
// function begins at statement 13263, parm_start=8512
// OP_STATE	756	8512	0
// OP_ADDRESS	28	104	8513
// OP_STOREP_F	237	8513	0
// OP_DONE	0	0	0
void () demon1_die6 = [50, demon1_die7]
{
    self.solid = SOLID_NOT;
};

// demon1_die7
// function begins at statement 13267, parm_start=8514
// OP_STATE	5951	8514	0
// OP_DONE	0	0	0
void () demon1_die7 = [51, demon1_die8]
{
};

// demon1_die8
// function begins at statement 13269, parm_start=8515
// OP_STATE	5953	8515	0
// OP_DONE	0	0	0
void () demon1_die8 = [52, demon1_die9]
{
};

// demon1_die9
// function begins at statement 13271, parm_start=8516
// OP_STATE	5955	8515	0
// OP_DONE	0	0	0
void () demon1_die9 = [53, demon1_die9]
{
};

// demon_die
// function begins at statement 13273, parm_start=8517
// OP_LOAD_F	28	152	8517
// OP_LT	8517	8518	8519
// OP_IFNOT	8519	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	8520	4	0
// OP_LOAD_F	28	152	8521
// OP_STORE_V	8521	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	8522
// OP_STORE_V	8522	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	8523
// OP_STORE_V	8523	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	8524
// OP_STORE_V	8524	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_CALL0	8505	0	0
// OP_DONE	0	0	0
void () demon_die = 
{
    
    if(self.health < -80)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_demon.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        return;
    }
    
    demon1_die1();
};

// Demon_MeleeAttack
// function begins at statement 13301, parm_start=8526
// OP_CALL0	8472	0	0
// OP_DONE	0	0	0
void () Demon_MeleeAttack = 
{
    demon1_atta1();
};

// monster_demon1
// function begins at statement 13303, parm_start=8527
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	8527	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8520	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8507	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8528	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8529	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8502	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8416	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1629	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	8530
// OP_STOREP_F	240	8530	0
// OP_ADDRESS	28	103	8531
// OP_STOREP_F	229	8531	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8527	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	8532
// OP_STOREP_F	3070	8532	0
// OP_ADDRESS	28	356	8533
// OP_STOREP_FNC	8399	8533	0
// OP_ADDRESS	28	357	8534
// OP_STOREP_FNC	8412	8534	0
// OP_ADDRESS	28	358	8535
// OP_STOREP_FNC	8424	8535	0
// OP_ADDRESS	28	362	8536
// OP_STOREP_FNC	8516	8536	0
// OP_ADDRESS	28	360	8537
// OP_STOREP_FNC	8525	8537	0
// OP_ADDRESS	28	359	8538
// OP_STOREP_FNC	8434	8538	0
// OP_ADDRESS	28	361	8539
// OP_STOREP_FNC	8493	8539	0
// OP_CALL0	6156	0	0
// OP_DONE	0	0	0
void () monster_demon1 = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/demon.mdl");
    precache_model("progs/h_demon.mdl");
    precache_sound("demon/ddeath.wav");
    precache_sound("demon/dhit2.wav");
    precache_sound("demon/djump.wav");
    precache_sound("demon/dpain1.wav");
    precache_sound("demon/idle1.wav");
    precache_sound("demon/sight2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/demon.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 300;
    self.th_stand = demon1_stand1;
    self.th_walk = demon1_walk1;
    self.th_run = demon1_run1;
    self.th_die = demon_die;
    self.th_melee = Demon_MeleeAttack;
    self.th_missile = demon1_jump1;
    self.th_pain = demon1_pain;
    walkmonster_start();
};

// CheckDemonMelee
// function begins at statement 13352, parm_start=8541
// OP_EQ_F	1151	242	8541
// OP_IFNOT	8541	4	0
// OP_ADDRESS	28	367	8542
// OP_STOREP_F	370	8542	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckDemonMelee = 
{
    
    if(enemy_range == RANGE_MELEE)
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};

// CheckDemonJump
// function begins at statement 13359, parm_start=8544
// OP_LOAD_F	28	108	8548
// OP_LOAD_F	28	137	8549
// OP_ADD_F	8548	8549	8550
// OP_LOAD_ENT	28	181	8551
// OP_LOAD_F	8551	108	8552
// OP_LOAD_ENT	28	181	8553
// OP_LOAD_F	8553	137	8554
// OP_ADD_F	8552	8554	8555
// OP_LOAD_ENT	28	181	8556
// OP_LOAD_F	8556	145	8557
// OP_MUL_F	4009	8557	8558
// OP_ADD_F	8555	8558	8559
// OP_GT	8550	8559	8560
// OP_IFNOT	8560	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	8561
// OP_LOAD_F	28	141	8562
// OP_ADD_F	8561	8562	8563
// OP_LOAD_ENT	28	181	8564
// OP_LOAD_F	8564	108	8565
// OP_LOAD_ENT	28	181	8566
// OP_LOAD_F	8566	137	8567
// OP_ADD_F	8565	8567	8568
// OP_LOAD_ENT	28	181	8569
// OP_LOAD_F	8569	145	8570
// OP_MUL_F	703	8570	8571
// OP_ADD_F	8568	8571	8572
// OP_LT	8563	8572	8573
// OP_IFNOT	8573	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	8574
// OP_LOAD_V	8574	105	8575
// OP_LOAD_V	28	105	8578
// OP_SUB_V	8575	8578	8581
// OP_STORE_V	8581	8544	0
// OP_STORE_F	213	8546	0
// OP_STORE_V	8544	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	8547	0
// OP_LT	8547	574	8584
// OP_IFNOT	8584	2	0
// OP_RETURN	213	0	0
// OP_GT	8547	2356	8585
// OP_IFNOT	8585	5	0
// OP_CALL0	452	0	0
// OP_LT	1	1222	8586
// OP_IFNOT	8586	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CheckDemonJump = 
{
    local vector dist;
    local float d;
    
    if((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.75 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.25 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    dist = self.enemy.origin - self.origin;
    dist_z = FALSE;
    d = vlen(dist);
    
    if(d < MUST_HAVE)
    {
        return FALSE;
    }
    
    
    if(d > 200)
    {
        
        if(random() < 0.9)
        {
            return FALSE;
        }
        
    }
    
    return TRUE;
};

// DemonCheckAttack
// function begins at statement 13409, parm_start=8587
// OP_CALL0	8540	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	8590
// OP_STOREP_F	370	8590	0
// OP_RETURN	214	0	0
// OP_CALL0	8543	0	0
// OP_IFNOT	1	10	0
// OP_ADDRESS	28	367	8591
// OP_STOREP_F	371	8591	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8529	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () DemonCheckAttack = 
{
    local vector vec;
    
    if(CheckDemonMelee())
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    
    if(CheckDemonJump())
    {
        self.attack_state = AS_MISSILE;
        sound(self, CHAN_VOICE, "demon/djump.wav", TRUE, ATTN_NORM);
        return TRUE;
    }
    
    return FALSE;
};

// Demon_Melee
// function begins at statement 13427, parm_start=8592
// OP_CALL0	1148	0	0
// OP_LOAD_F	28	191	8597
// OP_STORE_V	8597	4	0
// OP_STORE_V	2717	7	0
// OP_CALL2	477	0	0
// OP_LOAD_ENT	28	181	8598
// OP_LOAD_V	8598	105	8599
// OP_LOAD_V	28	105	8602
// OP_SUB_V	8599	8602	8605
// OP_STORE_V	8605	8594	0
// OP_STORE_V	8594	4	0
// OP_CALL1	457	0	0
// OP_GT	1	574	8608
// OP_IFNOT	8608	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	8609
// OP_STORE_V	8609	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_NOT_F	1	0	8610
// OP_IFNOT	8610	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8528	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	230	1	8611
// OP_ADD_F	235	8611	8612
// OP_STORE_F	8612	8593	0
// OP_LOAD_ENT	28	181	8613
// OP_STORE_V	8613	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8593	13	0
// OP_CALL4	520	0	0
// OP_LOAD_V	28	117	8614
// OP_STORE_V	8614	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	8617
// OP_MUL_VF	59	218	8620
// OP_ADD_V	8617	8620	8623
// OP_STORE_V	8623	4	0
// OP_MUL_FV	8592	65	8626
// OP_STORE_V	8626	7	0
// OP_CALL2	3173	0	0
// OP_DONE	0	0	0
void (float side) Demon_Melee = 
{
    local float ldmg;
    local vector delta;
    ai_face();
    walkmove(self.ideal_yaw, 12);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > MUST_HAVE)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    sound(self, CHAN_WEAPON, "demon/dhit2.wav", TRUE, ATTN_NORM);
    ldmg = MOVETYPE_BOUNCE + (MOVETYPE_FLY * random());
    T_Damage(self.enemy, self, self, ldmg);
    makevectors(self.angles);
    SpawnMeatSpray(self.origin + (v_forward * FL_INWATER), side * v_right);
};

// Demon_JumpTouch
// function begins at statement 13476, parm_start=8629
// OP_LOAD_F	28	152	8630
// OP_LE	8630	213	8631
// OP_IFNOT	8631	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	8632
// OP_IFNOT	8632	15	0
// OP_LOAD_V	28	113	8633
// OP_STORE_V	8633	4	0
// OP_CALL1	457	0	0
// OP_GT	1	3543	8636
// OP_IFNOT	8636	10	0
// OP_CALL0	452	0	0
// OP_MUL_F	235	1	8637
// OP_ADD_F	2101	8637	8638
// OP_STORE_F	8638	8629	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8629	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	483	0	0
// OP_NOT_F	1	0	8639
// OP_IFNOT	8639	12	0
// OP_LOAD_F	28	182	8640
// OP_BITAND	8640	223	8641
// OP_IFNOT	8641	8	0
// OP_ADDRESS	28	146	8642
// OP_STOREP_FNC	517	8642	0
// OP_ADDRESS	28	148	8643
// OP_STOREP_FNC	8434	8643	0
// OP_ADDRESS	28	150	8644
// OP_ADD_F	31	993	8645
// OP_STOREP_F	8645	8644	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8646
// OP_STOREP_FNC	517	8646	0
// OP_ADDRESS	28	148	8647
// OP_STOREP_FNC	8470	8647	0
// OP_ADDRESS	28	150	8648
// OP_ADD_F	31	993	8649
// OP_STOREP_F	8649	8648	0
// OP_DONE	0	0	0
void () Demon_JumpTouch = 
{
    local float ldmg;
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > 400)
        {
            ldmg = 40 + (MOVETYPE_BOUNCE * random());
            T_Damage(other, self, self, ldmg);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = demon1_jump1;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = demon1_jump11;
    self.nextthink = time + 0.1;
};

