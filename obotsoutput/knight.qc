string globaldef004060 /* = "progs/shambler.mdl" */;

void () knight_stand1;

// function knight_stand1
// function number 988 begins at statement 20341
/*
 * OP_STATE	213	13220	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand1 = [ 0.000, knight_stand2 ] {

   ai_stand ();

};

void () knight_stand2;

// function knight_stand2
// function number 989 begins at statement 20344
/*
 * OP_STATE	214	13221	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand2 = [ 1.000, knight_stand3 ] {

   ai_stand ();

};

void () knight_stand3;

// function knight_stand3
// function number 990 begins at statement 20347
/*
 * OP_STATE	216	13222	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand3 = [ 2.000, knight_stand4 ] {

   ai_stand ();

};

void () knight_stand4;

// function knight_stand4
// function number 991 begins at statement 20350
/*
 * OP_STATE	228	13223	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand4 = [ 3.000, knight_stand5 ] {

   ai_stand ();

};

void () knight_stand5;

// function knight_stand5
// function number 992 begins at statement 20353
/*
 * OP_STATE	229	13224	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand5 = [ 4.000, knight_stand6 ] {

   ai_stand ();

};

void () knight_stand6;

// function knight_stand6
// function number 993 begins at statement 20356
/*
 * OP_STATE	230	13225	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand6 = [ 5.000, knight_stand7 ] {

   ai_stand ();

};

void () knight_stand7;

// function knight_stand7
// function number 994 begins at statement 20359
/*
 * OP_STATE	231	13226	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand7 = [ 6.000, knight_stand8 ] {

   ai_stand ();

};

void () knight_stand8;

// function knight_stand8
// function number 995 begins at statement 20362
/*
 * OP_STATE	232	13227	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand8 = [ 7.000, knight_stand9 ] {

   ai_stand ();

};

void () knight_stand9;

// function knight_stand9
// function number 996 begins at statement 20365
/*
 * OP_STATE	217	13219	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () knight_stand9 = [ 8.000, knight_stand1 ] {

   ai_stand ();

};

// function knight_walk1
// function number 997 begins at statement 20368
/*
 * OP_STATE	9915	13228	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	13229
 * OP_IFNOT	13229	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13230	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk1 = [ 53.000, knight_walk2 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef004071,TRUE,ATTN_IDLE);

   }
   ai_walk (MOVETYPE_WALK);

};

void () knight_walk2;
string globaldef004071 /* = "knight/idle.wav" */;

// function knight_walk2
// function number 998 begins at statement 20381
/*
 * OP_STATE	9917	13231	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk2 = [ 54.000, knight_walk3 ] {

   ai_walk (FL_SWIM);

};

void () knight_walk3;

// function knight_walk3
// function number 999 begins at statement 20385
/*
 * OP_STATE	9919	13232	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk3 = [ 55.000, knight_walk4 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk4;

// function knight_walk4
// function number 1000 begins at statement 20389
/*
 * OP_STATE	9921	13233	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk4 = [ 56.000, knight_walk5 ] {

   ai_walk (MOVETYPE_STEP);

};

void () knight_walk5;

// function knight_walk5
// function number 1001 begins at statement 20393
/*
 * OP_STATE	9923	13234	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk5 = [ 57.000, knight_walk6 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk6;

// function knight_walk6
// function number 1002 begins at statement 20397
/*
 * OP_STATE	9925	13235	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk6 = [ 58.000, knight_walk7 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk7;

// function knight_walk7
// function number 1003 begins at statement 20401
/*
 * OP_STATE	2783	13236	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk7 = [ 59.000, knight_walk8 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk8;

// function knight_walk8
// function number 1004 begins at statement 20405
/*
 * OP_STATE	2019	13237	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk8 = [ 60.000, knight_walk9 ] {

   ai_walk (MOVETYPE_STEP);

};

void () knight_walk9;

// function knight_walk9
// function number 1005 begins at statement 20409
/*
 * OP_STATE	9928	13238	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk9 = [ 61.000, knight_walk10 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk10;

// function knight_walk10
// function number 1006 begins at statement 20413
/*
 * OP_STATE	9930	13239	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk10 = [ 62.000, knight_walk11 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk11;

// function knight_walk11
// function number 1007 begins at statement 20417
/*
 * OP_STATE	6707	13240	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk11 = [ 63.000, knight_walk12 ] {

   ai_walk (FL_SWIM);

};

void () knight_walk12;

// function knight_walk12
// function number 1008 begins at statement 20421
/*
 * OP_STATE	220	13241	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk12 = [ 64.000, knight_walk13 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_walk13;

// function knight_walk13
// function number 1009 begins at statement 20425
/*
 * OP_STATE	9934	13242	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk13 = [ 65.000, knight_walk14 ] {

   ai_walk (MOVETYPE_STEP);

};

void () knight_walk14;

// function knight_walk14
// function number 1010 begins at statement 20429
/*
 * OP_STATE	9936	3504	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () knight_walk14 = [ 66.000, knight_walk1 ] {

   ai_walk (MOVETYPE_WALK);

};

void () knight_run1;

// function knight_run1
// function number 1011 begins at statement 20433
/*
 * OP_STATE	234	13244	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	13245
 * OP_IFNOT	13245	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13230	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run1 = [ 9.000, knight_run2 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef004071,TRUE,ATTN_IDLE);

   }
   ai_run (FL_INWATER);

};

void () knight_run2;

// function knight_run2
// function number 1012 begins at statement 20446
/*
 * OP_STATE	235	13246	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run2 = [ 10.000, knight_run3 ] {

   ai_run (globaldef001384);

};

void () knight_run3;

// function knight_run3
// function number 1013 begins at statement 20450
/*
 * OP_STATE	236	13247	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run3 = [ 11.000, knight_run4 ] {

   ai_run (globaldef000775);

};

void () knight_run4;

// function knight_run4
// function number 1014 begins at statement 20454
/*
 * OP_STATE	791	13248	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run4 = [ 12.000, knight_run5 ] {

   ai_run (MOVETYPE_PUSH);

};

void () knight_run5;

// function knight_run5
// function number 1015 begins at statement 20458
/*
 * OP_STATE	792	13249	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run5 = [ 13.000, knight_run6 ] {

   ai_run (FL_INWATER);

};

void () knight_run6;

// function knight_run6
// function number 1016 begins at statement 20462
/*
 * OP_STATE	5693	13250	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run6 = [ 14.000, knight_run7 ] {

   ai_run (globaldef001384);

};

void () knight_run7;

// function knight_run7
// function number 1017 begins at statement 20466
/*
 * OP_STATE	765	13251	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run7 = [ 15.000, knight_run8 ] {

   ai_run (globaldef002136);

};

void () knight_run8;

// function knight_run8
// function number 1018 begins at statement 20470
/*
 * OP_STATE	218	13243	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () knight_run8 = [ 16.000, knight_run1 ] {

   ai_run (MOVETYPE_TOSS);

};

// function knight_runatk1
// function number 1019 begins at statement 20474
/*
 * OP_STATE	6892	13252	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	13253
 * OP_IFNOT	13253	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13254	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13255	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk1 = [ 17.000, knight_runatk2 ] {

   if ( (random () > globaldef000522) ) {

      sound (self,CHAN_WEAPON,globaldef004093,TRUE,ATTN_NORM);

   } else {

      sound (self,CHAN_WEAPON,globaldef004094,TRUE,ATTN_NORM);

   }
   ai_charge (globaldef001384);

};

void () knight_runatk2;
string globaldef004093 /* = "knight/sword2.wav" */;
string globaldef004094 /* = "knight/sword1.wav" */;

// function knight_runatk2
// function number 1020 begins at statement 20494
/*
 * OP_STATE	6133	13256	0
 * OP_CALL0	3289	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk2 = [ 18.000, knight_runatk3 ] {

   ai_charge_side ();

};

void () knight_runatk3;

// function knight_runatk3
// function number 1021 begins at statement 20497
/*
 * OP_STATE	6895	13257	0
 * OP_CALL0	3289	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk3 = [ 19.000, knight_runatk4 ] {

   ai_charge_side ();

};

void () knight_runatk4;

// function knight_runatk4
// function number 1022 begins at statement 20500
/*
 * OP_STATE	2323	13258	0
 * OP_CALL0	3289	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk4 = [ 20.000, knight_runatk5 ] {

   ai_charge_side ();

};

void () knight_runatk5;

// function knight_runatk5
// function number 1023 begins at statement 20503
/*
 * OP_STATE	12465	13259	0
 * OP_CALL0	3346	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk5 = [ 21.000, knight_runatk6 ] {

   ai_melee_side ();

};

void () knight_runatk6;

// function knight_runatk6
// function number 1024 begins at statement 20506
/*
 * OP_STATE	12467	13260	0
 * OP_CALL0	3346	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk6 = [ 22.000, knight_runatk7 ] {

   ai_melee_side ();

};

void () knight_runatk7;

// function knight_runatk7
// function number 1025 begins at statement 20509
/*
 * OP_STATE	304	13261	0
 * OP_CALL0	3346	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk7 = [ 23.000, knight_runatk8 ] {

   ai_melee_side ();

};

void () knight_runatk8;

// function knight_runatk8
// function number 1026 begins at statement 20512
/*
 * OP_STATE	736	13262	0
 * OP_CALL0	3346	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk8 = [ 24.000, knight_runatk9 ] {

   ai_melee_side ();

};

void () knight_runatk9;

// function knight_runatk9
// function number 1027 begins at statement 20515
/*
 * OP_STATE	305	13263	0
 * OP_CALL0	3346	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk9 = [ 25.000, knight_runatk10 ] {

   ai_melee_side ();

};

void () knight_runatk10;

// function knight_runatk10
// function number 1028 begins at statement 20518
/*
 * OP_STATE	306	13264	0
 * OP_CALL0	3289	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk10 = [ 26.000, knight_runatk11 ] {

   ai_charge_side ();

};

void () knight_runatk11;

// function knight_runatk11
// function number 1029 begins at statement 20521
/*
 * OP_STATE	307	13243	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_runatk11 = [ 27.000, knight_run1 ] {

   ai_charge (MOVETYPE_BOUNCE);

};

// function knight_atk1
// function number 1030 begins at statement 20525
/*
 * OP_STATE	9995	13265	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13255	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk1 = [ 42.000, knight_atk2 ] {

   sound (self,CHAN_WEAPON,globaldef004094,TRUE,ATTN_NORM);
   ai_charge (FALSE);

};

void () knight_atk2;

// function knight_atk2
// function number 1031 begins at statement 20535
/*
 * OP_STATE	9999	13266	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk2 = [ 44.000, knight_atk3 ] {

   ai_charge (MOVETYPE_PUSH);

};

void () knight_atk3;

// function knight_atk3
// function number 1032 begins at statement 20539
/*
 * OP_STATE	2598	13267	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk3 = [ 45.000, knight_atk4 ] {

   ai_charge (MOVETYPE_STEP);

};

void () knight_atk4;

// function knight_atk4
// function number 1033 begins at statement 20543
/*
 * OP_STATE	10002	13268	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk4 = [ 46.000, knight_atk5 ] {

   ai_charge (FALSE);

};

void () knight_atk5;

// function knight_atk5
// function number 1034 begins at statement 20547
/*
 * OP_STATE	10004	13269	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk5 = [ 47.000, knight_atk6 ] {

   ai_charge (MOVETYPE_WALK);

};

void () knight_atk6;

// function knight_atk6
// function number 1035 begins at statement 20551
/*
 * OP_STATE	10006	13270	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk6 = [ 48.000, knight_atk7 ] {

   ai_charge (MOVETYPE_STEP);
   ai_melee ();

};

void () knight_atk7;

// function knight_atk7
// function number 1036 begins at statement 20556
/*
 * OP_STATE	10008	13271	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk7 = [ 49.000, knight_atk8 ] {

   ai_charge (TRUE);
   ai_melee ();

};

void () knight_atk8;

// function knight_atk8
// function number 1037 begins at statement 20561
/*
 * OP_STATE	1470	13272	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_CALL0	3324	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk8 = [ 50.000, knight_atk9 ] {

   ai_charge (MOVETYPE_WALK);
   ai_melee ();

};

void () knight_atk9;

// function knight_atk9
// function number 1038 begins at statement 20566
/*
 * OP_STATE	9911	13273	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk9 = [ 51.000, knight_atk10 ] {

   ai_charge (TRUE);

};

void () knight_atk10;

// function knight_atk10
// function number 1039 begins at statement 20570
/*
 * OP_STATE	9913	13243	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () knight_atk10 = [ 52.000, knight_run1 ] {

   ai_charge (MOVETYPE_FLY);

};

void () knight_pain1;

// function knight_pain1
// function number 1040 begins at statement 20574
/*
 * OP_STATE	308	13275	0
 * OP_DONE	0	0	0
 */

void () knight_pain1 = [ 28.000, knight_pain2 ] {


};

void () knight_pain2;

// function knight_pain2
// function number 1041 begins at statement 20576
/*
 * OP_STATE	9664	13276	0
 * OP_DONE	0	0	0
 */

void () knight_pain2 = [ 29.000, knight_pain3 ] {


};

void () knight_pain3;

// function knight_pain3
// function number 1042 begins at statement 20578
/*
 * OP_STATE	309	13243	0
 * OP_DONE	0	0	0
 */

void () knight_pain3 = [ 30.000, knight_run1 ] {


};

void () knight_painb1;

// function knight_painb1
// function number 1043 begins at statement 20580
/*
 * OP_STATE	310	13278	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb1 = [ 31.000, knight_painb2 ] {

   ai_painforward (FALSE);

};

void () knight_painb2;

// function knight_painb2
// function number 1044 begins at statement 20584
/*
 * OP_STATE	219	13279	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb2 = [ 32.000, knight_painb3 ] {

   ai_painforward (MOVETYPE_WALK);

};

void () knight_painb3;

// function knight_painb3
// function number 1045 begins at statement 20588
/*
 * OP_STATE	312	13280	0
 * OP_DONE	0	0	0
 */

void () knight_painb3 = [ 33.000, knight_painb4 ] {


};

void () knight_painb4;

// function knight_painb4
// function number 1046 begins at statement 20590
/*
 * OP_STATE	9671	13281	0
 * OP_DONE	0	0	0
 */

void () knight_painb4 = [ 34.000, knight_painb5 ] {


};

void () knight_painb5;

// function knight_painb5
// function number 1047 begins at statement 20592
/*
 * OP_STATE	5878	13282	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb5 = [ 35.000, knight_painb6 ] {

   ai_painforward (FL_SWIM);

};

void () knight_painb6;

// function knight_painb6
// function number 1048 begins at statement 20596
/*
 * OP_STATE	9655	13283	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb6 = [ 36.000, knight_painb7 ] {

   ai_painforward (MOVETYPE_STEP);

};

void () knight_painb7;

// function knight_painb7
// function number 1049 begins at statement 20600
/*
 * OP_STATE	9657	13284	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb7 = [ 37.000, knight_painb8 ] {

   ai_painforward (FL_SWIM);

};

void () knight_painb8;

// function knight_painb8
// function number 1050 begins at statement 20604
/*
 * OP_STATE	9659	13285	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb8 = [ 38.000, knight_painb9 ] {

   ai_painforward (MOVETYPE_FLY);

};

void () knight_painb9;

// function knight_painb9
// function number 1051 begins at statement 20608
/*
 * OP_STATE	9661	13286	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb9 = [ 39.000, knight_painb10 ] {

   ai_painforward (MOVETYPE_FLY);

};

void () knight_painb10;

// function knight_painb10
// function number 1052 begins at statement 20612
/*
 * OP_STATE	746	13287	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () knight_painb10 = [ 40.000, knight_painb11 ] {

   ai_painforward (FALSE);

};

void () knight_painb11;

// function knight_painb11
// function number 1053 begins at statement 20616
/*
 * OP_STATE	9993	13243	0
 * OP_DONE	0	0	0
 */

void () knight_painb11 = [ 41.000, knight_run1 ] {


};

void (entity globaldef004128, float globaldef004129) knight_pain;

// function knight_pain
// function number 1054 begins at statement 20618
/*
 * OP_LOAD_F	28	379	13292
 * OP_GT	13292	31	13293
 * OP_IFNOT	13293	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	13291	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13294	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LT	13291	13295	13296
 * OP_IFNOT	13296	6	0
 * OP_CALL0	13274	0	0
 * OP_ADDRESS	28	379	13297
 * OP_ADD_F	31	214	13298
 * OP_STOREP_F	13298	13297	0
 * OP_GOTO	5	0	0
 * OP_CALL0	13277	0	0
 * OP_ADDRESS	28	379	13299
 * OP_ADD_F	31	214	13300
 * OP_STOREP_F	13300	13299	0
 * OP_DONE	0	0	0
 */

void (entity globaldef004128, float globaldef004129) knight_pain = {

   local float r;

   if ( (self.globaldef000362 > time) ) {

      return ;

   }
   r = random ();
   sound (self,CHAN_VOICE,globaldef004131,TRUE,ATTN_NORM);
   if ( (r < globaldef004132) ) {

      knight_pain1 ();
      self.globaldef000362 = (time + TRUE);

   } else {

      knight_painb1 ();
      self.globaldef000362 = (time + TRUE);

   }

};
string globaldef004131 /* = "knight/khurt.wav" */;
float globaldef004132 /* = 0.850 */;

// function knight_bow1
// function number 1055 begins at statement 20642
/*
 * OP_STATE	9938	13301	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow1 = [ 67.000, knight_bow2 ] {

   ai_turn ();

};

void () knight_bow2;

// function knight_bow2
// function number 1056 begins at statement 20645
/*
 * OP_STATE	8193	13302	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow2 = [ 68.000, knight_bow3 ] {

   ai_turn ();

};

void () knight_bow3;

// function knight_bow3
// function number 1057 begins at statement 20648
/*
 * OP_STATE	8196	13303	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow3 = [ 69.000, knight_bow4 ] {

   ai_turn ();

};

void () knight_bow4;

// function knight_bow4
// function number 1058 begins at statement 20651
/*
 * OP_STATE	1536	13304	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow4 = [ 70.000, knight_bow5 ] {

   ai_turn ();

};

void () knight_bow5;

// function knight_bow5
// function number 1059 begins at statement 20654
/*
 * OP_STATE	8201	13304	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow5 = [ 71.000, knight_bow5 ] {

   ai_turn ();

};

// function knight_bow6
// function number 1060 begins at statement 20657
/*
 * OP_STATE	1536	13305	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow6 = [ 70.000, knight_bow7 ] {

   ai_turn ();

};

void () knight_bow7;

// function knight_bow7
// function number 1061 begins at statement 20660
/*
 * OP_STATE	8196	13306	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow7 = [ 69.000, knight_bow8 ] {

   ai_turn ();

};

void () knight_bow8;

// function knight_bow8
// function number 1062 begins at statement 20663
/*
 * OP_STATE	8193	13307	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow8 = [ 68.000, knight_bow9 ] {

   ai_turn ();

};

void () knight_bow9;

// function knight_bow9
// function number 1063 begins at statement 20666
/*
 * OP_STATE	9938	13308	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow9 = [ 67.000, knight_bow10 ] {

   ai_turn ();

};

void () knight_bow10;

// function knight_bow10
// function number 1064 begins at statement 20669
/*
 * OP_STATE	9915	3504	0
 * OP_CALL0	3806	0	0
 * OP_DONE	0	0	0
 */

void () knight_bow10 = [ 53.000, knight_walk1 ] {

   ai_turn ();

};

void () knight_die1;

// function knight_die1
// function number 1065 begins at statement 20672
/*
 * OP_STATE	9949	13310	0
 * OP_DONE	0	0	0
 */

void () knight_die1 = [ 76.000, knight_die2 ] {


};

void () knight_die2;

// function knight_die2
// function number 1066 begins at statement 20674
/*
 * OP_STATE	9951	13311	0
 * OP_DONE	0	0	0
 */

void () knight_die2 = [ 77.000, knight_die3 ] {


};

void () knight_die3;

// function knight_die3
// function number 1067 begins at statement 20676
/*
 * OP_STATE	9953	13312	0
 * OP_ADDRESS	28	104	13313
 * OP_STOREP_F	237	13313	0
 * OP_DONE	0	0	0
 */

void () knight_die3 = [ 78.000, knight_die4 ] {

   self.globaldef000082 = SOLID_NOT;

};

void () knight_die4;

// function knight_die4
// function number 1068 begins at statement 20680
/*
 * OP_STATE	9955	13314	0
 * OP_DONE	0	0	0
 */

void () knight_die4 = [ 79.000, knight_die5 ] {


};

void () knight_die5;

// function knight_die5
// function number 1069 begins at statement 20682
/*
 * OP_STATE	2805	13315	0
 * OP_DONE	0	0	0
 */

void () knight_die5 = [ 80.000, knight_die6 ] {


};

void () knight_die6;

// function knight_die6
// function number 1070 begins at statement 20684
/*
 * OP_STATE	8204	13316	0
 * OP_DONE	0	0	0
 */

void () knight_die6 = [ 81.000, knight_die7 ] {


};

void () knight_die7;

// function knight_die7
// function number 1071 begins at statement 20686
/*
 * OP_STATE	9959	13317	0
 * OP_DONE	0	0	0
 */

void () knight_die7 = [ 82.000, knight_die8 ] {


};

void () knight_die8;

// function knight_die8
// function number 1072 begins at statement 20688
/*
 * OP_STATE	9961	13318	0
 * OP_DONE	0	0	0
 */

void () knight_die8 = [ 83.000, knight_die9 ] {


};

void () knight_die9;

// function knight_die9
// function number 1073 begins at statement 20690
/*
 * OP_STATE	7694	13319	0
 * OP_DONE	0	0	0
 */

void () knight_die9 = [ 84.000, knight_die10 ] {


};

void () knight_die10;

// function knight_die10
// function number 1074 begins at statement 20692
/*
 * OP_STATE	9963	13319	0
 * OP_DONE	0	0	0
 */

void () knight_die10 = [ 85.000, knight_die10 ] {


};

void () knight_dieb1;

// function knight_dieb1
// function number 1075 begins at statement 20694
/*
 * OP_STATE	9965	13321	0
 * OP_DONE	0	0	0
 */

void () knight_dieb1 = [ 86.000, knight_dieb2 ] {


};

void () knight_dieb2;

// function knight_dieb2
// function number 1076 begins at statement 20696
/*
 * OP_STATE	9967	13322	0
 * OP_DONE	0	0	0
 */

void () knight_dieb2 = [ 87.000, knight_dieb3 ] {


};

void () knight_dieb3;

// function knight_dieb3
// function number 1077 begins at statement 20698
/*
 * OP_STATE	9969	13323	0
 * OP_ADDRESS	28	104	13324
 * OP_STOREP_F	237	13324	0
 * OP_DONE	0	0	0
 */

void () knight_dieb3 = [ 88.000, knight_dieb4 ] {

   self.globaldef000082 = SOLID_NOT;

};

void () knight_dieb4;

// function knight_dieb4
// function number 1078 begins at statement 20702
/*
 * OP_STATE	9971	13325	0
 * OP_DONE	0	0	0
 */

void () knight_dieb4 = [ 89.000, knight_dieb5 ] {


};

void () knight_dieb5;

// function knight_dieb5
// function number 1079 begins at statement 20704
/*
 * OP_STATE	2658	13326	0
 * OP_DONE	0	0	0
 */

void () knight_dieb5 = [ 90.000, knight_dieb6 ] {


};

void () knight_dieb6;

// function knight_dieb6
// function number 1080 begins at statement 20706
/*
 * OP_STATE	9974	13327	0
 * OP_DONE	0	0	0
 */

void () knight_dieb6 = [ 91.000, knight_dieb7 ] {


};

void () knight_dieb7;

// function knight_dieb7
// function number 1081 begins at statement 20708
/*
 * OP_STATE	9976	13328	0
 * OP_DONE	0	0	0
 */

void () knight_dieb7 = [ 92.000, knight_dieb8 ] {


};

void () knight_dieb8;

// function knight_dieb8
// function number 1082 begins at statement 20710
/*
 * OP_STATE	9978	13329	0
 * OP_DONE	0	0	0
 */

void () knight_dieb8 = [ 93.000, knight_dieb9 ] {


};

void () knight_dieb9;

// function knight_dieb9
// function number 1083 begins at statement 20712
/*
 * OP_STATE	9979	13330	0
 * OP_DONE	0	0	0
 */

void () knight_dieb9 = [ 94.000, knight_dieb10 ] {


};

void () knight_dieb10;

// function knight_dieb10
// function number 1084 begins at statement 20714
/*
 * OP_STATE	9981	13331	0
 * OP_DONE	0	0	0
 */

void () knight_dieb10 = [ 95.000, knight_dieb11 ] {


};

void () knight_dieb11;

// function knight_dieb11
// function number 1085 begins at statement 20716
/*
 * OP_STATE	9983	13331	0
 * OP_DONE	0	0	0
 */

void () knight_dieb11 = [ 96.000, knight_dieb11 ] {


};

void () knight_die;

// function knight_die
// function number 1086 begins at statement 20718
/*
 * OP_LOAD_F	28	152	13333
 * OP_LT	13333	9236	13334
 * OP_IFNOT	13334	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	13335	4	0
 * OP_LOAD_F	28	152	13336
 * OP_STORE_V	13336	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	13337
 * OP_STORE_V	13337	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	13338
 * OP_STORE_V	13338	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	13339
 * OP_STORE_V	13339	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13340	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	13341
 * OP_IFNOT	13341	3	0
 * OP_CALL0	13309	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	13320	0	0
 * OP_DONE	0	0	0
 */

void () knight_die = {

   if ( (self.globaldef000130 < globaldef003008) ) {

      sound (self,CHAN_VOICE,globaldef002406,TRUE,ATTN_NORM);
      ThrowHead (globaldef004163,self.globaldef000130);
      ThrowGib (globaldef002432,self.globaldef000130);
      ThrowGib (globaldef002433,self.globaldef000130);
      ThrowGib (globaldef002434,self.globaldef000130);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef004164,TRUE,ATTN_NORM);
   if ( (random () < globaldef000522) ) {

      knight_die1 ();

   } else {

      knight_dieb1 ();

   }

};
string globaldef004163 /* = "progs/h_knight.mdl" */;
string globaldef004164 /* = "knight/kdeath.wav" */;

void () monster_knight;

// function monster_knight
// function number 1087 begins at statement 20757
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	13343	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13335	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13340	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13294	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	3659	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13255	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13254	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13230	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	13344
 * OP_STOREP_F	240	13344	0
 * OP_ADDRESS	28	103	13345
 * OP_STOREP_F	229	13345	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	13343	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	13349
 * OP_STOREP_F	9173	13349	0
 * OP_ADDRESS	28	361	13350
 * OP_STOREP_FNC	13219	13350	0
 * OP_ADDRESS	28	362	13351
 * OP_STOREP_FNC	3504	13351	0
 * OP_ADDRESS	28	363	13352
 * OP_STOREP_FNC	13243	13352	0
 * OP_ADDRESS	28	365	13353
 * OP_STOREP_FNC	3180	13353	0
 * OP_ADDRESS	28	366	13354
 * OP_STOREP_FNC	13288	13354	0
 * OP_ADDRESS	28	367	13355
 * OP_STOREP_FNC	13332	13355	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_knight = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model (globaldef004166);
   precache_model (globaldef004163);
   precache_sound (globaldef004164);
   precache_sound (globaldef004131);
   precache_sound (globaldef001658);
   precache_sound (globaldef004094);
   precache_sound (globaldef004093);
   precache_sound (globaldef004071);
   self.globaldef000082 = SOLID_SLIDEBOX;
   self.globaldef000081 = MOVETYPE_STEP;
   setmodel (self,globaldef004166);
   setsize (self,VEC_HULL_MIN,globaldef004167);
   self.globaldef000130 = globaldef002995;
   self.globaldef000344 = knight_stand1;
   self.globaldef000345 = knight_walk1;
   self.globaldef000346 = knight_run1;
   self.globaldef000348 = knight_atk1;
   self.globaldef000349 = knight_pain;
   self.globaldef000350 = knight_die;
   walkmonster_start ();

};
