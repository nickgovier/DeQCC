string globaldef004522 /* = "progs/dog.mdl" */;
vector globaldef004523 /* = '32.000 32.000 40.000' */;
float globaldef004524 /* = 1.000 */;
.vector field000353;

// function zombie_stand1
// function number 1359 begins at statement 22490
/*
 * OP_STATE	213	14168	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand1 = [ 0.000, zombie_stand2 ] {

   ai_stand ();

};

void () zombie_stand2;

// function zombie_stand2
// function number 1360 begins at statement 22493
/*
 * OP_STATE	214	14169	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand2 = [ 1.000, zombie_stand3 ] {

   ai_stand ();

};

void () zombie_stand3;

// function zombie_stand3
// function number 1361 begins at statement 22496
/*
 * OP_STATE	216	14170	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand3 = [ 2.000, zombie_stand4 ] {

   ai_stand ();

};

void () zombie_stand4;

// function zombie_stand4
// function number 1362 begins at statement 22499
/*
 * OP_STATE	228	14171	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand4 = [ 3.000, zombie_stand5 ] {

   ai_stand ();

};

void () zombie_stand5;

// function zombie_stand5
// function number 1363 begins at statement 22502
/*
 * OP_STATE	229	14172	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand5 = [ 4.000, zombie_stand6 ] {

   ai_stand ();

};

void () zombie_stand6;

// function zombie_stand6
// function number 1364 begins at statement 22505
/*
 * OP_STATE	230	14173	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand6 = [ 5.000, zombie_stand7 ] {

   ai_stand ();

};

void () zombie_stand7;

// function zombie_stand7
// function number 1365 begins at statement 22508
/*
 * OP_STATE	231	14174	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand7 = [ 6.000, zombie_stand8 ] {

   ai_stand ();

};

void () zombie_stand8;

// function zombie_stand8
// function number 1366 begins at statement 22511
/*
 * OP_STATE	232	14175	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand8 = [ 7.000, zombie_stand9 ] {

   ai_stand ();

};

void () zombie_stand9;

// function zombie_stand9
// function number 1367 begins at statement 22514
/*
 * OP_STATE	217	14176	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand9 = [ 8.000, zombie_stand10 ] {

   ai_stand ();

};

void () zombie_stand10;

// function zombie_stand10
// function number 1368 begins at statement 22517
/*
 * OP_STATE	234	14177	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand10 = [ 9.000, zombie_stand11 ] {

   ai_stand ();

};

void () zombie_stand11;

// function zombie_stand11
// function number 1369 begins at statement 22520
/*
 * OP_STATE	235	14178	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand11 = [ 10.000, zombie_stand12 ] {

   ai_stand ();

};

void () zombie_stand12;

// function zombie_stand12
// function number 1370 begins at statement 22523
/*
 * OP_STATE	236	14179	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand12 = [ 11.000, zombie_stand13 ] {

   ai_stand ();

};

void () zombie_stand13;

// function zombie_stand13
// function number 1371 begins at statement 22526
/*
 * OP_STATE	791	14180	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand13 = [ 12.000, zombie_stand14 ] {

   ai_stand ();

};

void () zombie_stand14;

// function zombie_stand14
// function number 1372 begins at statement 22529
/*
 * OP_STATE	792	14181	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand14 = [ 13.000, zombie_stand15 ] {

   ai_stand ();

};

void () zombie_stand15;

// function zombie_stand15
// function number 1373 begins at statement 22532
/*
 * OP_STATE	5693	14167	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () zombie_stand15 = [ 14.000, zombie_stand1 ] {

   ai_stand ();

};

void () zombie_cruc1;

// function zombie_cruc1
// function number 1374 begins at statement 22535
/*
 * OP_STATE	14183	14184	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3036	14185
 * OP_IFNOT	14185	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14186	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	333	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_cruc1 = [ 192.000, zombie_cruc2 ] {

   if ( (random () < globaldef001488) ) {

      sound (self,CHAN_VOICE,globaldef004544,TRUE,ATTN_STATIC);

   }

};
float globaldef004542 /* = 192.000 */;

void () zombie_cruc2;
string globaldef004544 /* = "zombie/idle_w2.wav" */;

// function zombie_cruc2
// function number 1375 begins at statement 22546
/*
 * OP_STATE	14187	14188	0
 * OP_ADDRESS	28	150	14189
 * OP_ADD_F	31	3036	14190
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3036	14191
 * OP_ADD_F	14190	14191	14192
 * OP_STOREP_F	14192	14189	0
 * OP_DONE	0	0	0
 */

void () zombie_cruc2 = [ 193.000, zombie_cruc3 ] {

   self.globaldef000128 = ((time + globaldef001488) + (random () * globaldef001488));

};
float globaldef004545 /* = 193.000 */;

void () zombie_cruc3;

// function zombie_cruc3
// function number 1376 begins at statement 22554
/*
 * OP_STATE	14193	14194	0
 * OP_ADDRESS	28	150	14195
 * OP_ADD_F	31	3036	14196
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3036	14197
 * OP_ADD_F	14196	14197	14198
 * OP_STOREP_F	14198	14195	0
 * OP_DONE	0	0	0
 */

void () zombie_cruc3 = [ 194.000, zombie_cruc4 ] {

   self.globaldef000128 = ((time + globaldef001488) + (random () * globaldef001488));

};
float globaldef004547 /* = 194.000 */;

void () zombie_cruc4;

// function zombie_cruc4
// function number 1377 begins at statement 22562
/*
 * OP_STATE	14199	14200	0
 * OP_ADDRESS	28	150	14201
 * OP_ADD_F	31	3036	14202
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3036	14203
 * OP_ADD_F	14202	14203	14204
 * OP_STOREP_F	14204	14201	0
 * OP_DONE	0	0	0
 */

void () zombie_cruc4 = [ 195.000, zombie_cruc5 ] {

   self.globaldef000128 = ((time + globaldef001488) + (random () * globaldef001488));

};
float globaldef004549 /* = 195.000 */;

void () zombie_cruc5;

// function zombie_cruc5
// function number 1378 begins at statement 22570
/*
 * OP_STATE	14205	14206	0
 * OP_ADDRESS	28	150	14207
 * OP_ADD_F	31	3036	14208
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3036	14209
 * OP_ADD_F	14208	14209	14210
 * OP_STOREP_F	14210	14207	0
 * OP_DONE	0	0	0
 */

void () zombie_cruc5 = [ 196.000, zombie_cruc6 ] {

   self.globaldef000128 = ((time + globaldef001488) + (random () * globaldef001488));

};
float globaldef004551 /* = 196.000 */;

void () zombie_cruc6;

// function zombie_cruc6
// function number 1379 begins at statement 22578
/*
 * OP_STATE	14211	14182	0
 * OP_ADDRESS	28	150	14212
 * OP_ADD_F	31	3036	14213
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3036	14214
 * OP_ADD_F	14213	14214	14215
 * OP_STOREP_F	14215	14212	0
 * OP_DONE	0	0	0
 */

void () zombie_cruc6 = [ 197.000, zombie_cruc1 ] {

   self.globaldef000128 = ((time + globaldef001488) + (random () * globaldef001488));

};
float globaldef004553 /* = 197.000 */;

void () zombie_walk1;

// function zombie_walk1
// function number 1380 begins at statement 22586
/*
 * OP_STATE	765	14217	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk1 = [ 15.000, zombie_walk2 ] {

   ai_walk (FALSE);

};

void () zombie_walk2;

// function zombie_walk2
// function number 1381 begins at statement 22590
/*
 * OP_STATE	218	14218	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk2 = [ 16.000, zombie_walk3 ] {

   ai_walk (FL_SWIM);

};

void () zombie_walk3;

// function zombie_walk3
// function number 1382 begins at statement 22594
/*
 * OP_STATE	6892	14219	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk3 = [ 17.000, zombie_walk4 ] {

   ai_walk (MOVETYPE_WALK);

};

void () zombie_walk4;

// function zombie_walk4
// function number 1383 begins at statement 22598
/*
 * OP_STATE	6133	14220	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk4 = [ 18.000, zombie_walk5 ] {

   ai_walk (FL_SWIM);

};

void () zombie_walk5;

// function zombie_walk5
// function number 1384 begins at statement 22602
/*
 * OP_STATE	6895	14221	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk5 = [ 19.000, zombie_walk6 ] {

   ai_walk (TRUE);

};

void () zombie_walk6;

// function zombie_walk6
// function number 1385 begins at statement 22606
/*
 * OP_STATE	2323	14222	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk6 = [ 20.000, zombie_walk7 ] {

   ai_walk (FALSE);

};

void () zombie_walk7;

// function zombie_walk7
// function number 1386 begins at statement 22610
/*
 * OP_STATE	12465	14223	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk7 = [ 21.000, zombie_walk8 ] {

   ai_walk (FALSE);

};

void () zombie_walk8;

// function zombie_walk8
// function number 1387 begins at statement 22614
/*
 * OP_STATE	12467	14224	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk8 = [ 22.000, zombie_walk9 ] {

   ai_walk (FALSE);

};

void () zombie_walk9;

// function zombie_walk9
// function number 1388 begins at statement 22618
/*
 * OP_STATE	304	14225	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk9 = [ 23.000, zombie_walk10 ] {

   ai_walk (FALSE);

};

void () zombie_walk10;

// function zombie_walk10
// function number 1389 begins at statement 22622
/*
 * OP_STATE	736	14226	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk10 = [ 24.000, zombie_walk11 ] {

   ai_walk (FALSE);

};

void () zombie_walk11;

// function zombie_walk11
// function number 1390 begins at statement 22626
/*
 * OP_STATE	305	14227	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk11 = [ 25.000, zombie_walk12 ] {

   ai_walk (FL_SWIM);

};

void () zombie_walk12;

// function zombie_walk12
// function number 1391 begins at statement 22630
/*
 * OP_STATE	306	14228	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk12 = [ 26.000, zombie_walk13 ] {

   ai_walk (FL_SWIM);

};

void () zombie_walk13;

// function zombie_walk13
// function number 1392 begins at statement 22634
/*
 * OP_STATE	307	14229	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk13 = [ 27.000, zombie_walk14 ] {

   ai_walk (TRUE);

};

void () zombie_walk14;

// function zombie_walk14
// function number 1393 begins at statement 22638
/*
 * OP_STATE	308	14230	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk14 = [ 28.000, zombie_walk15 ] {

   ai_walk (FALSE);

};

void () zombie_walk15;

// function zombie_walk15
// function number 1394 begins at statement 22642
/*
 * OP_STATE	9664	14231	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk15 = [ 29.000, zombie_walk16 ] {

   ai_walk (FALSE);

};

void () zombie_walk16;

// function zombie_walk16
// function number 1395 begins at statement 22646
/*
 * OP_STATE	309	14232	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk16 = [ 30.000, zombie_walk17 ] {

   ai_walk (FALSE);

};

void () zombie_walk17;

// function zombie_walk17
// function number 1396 begins at statement 22650
/*
 * OP_STATE	310	14233	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk17 = [ 31.000, zombie_walk18 ] {

   ai_walk (FALSE);

};

void () zombie_walk18;

// function zombie_walk18
// function number 1397 begins at statement 22654
/*
 * OP_STATE	219	14234	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk18 = [ 32.000, zombie_walk19 ] {

   ai_walk (FALSE);

};

void () zombie_walk19;

// function zombie_walk19
// function number 1398 begins at statement 22658
/*
 * OP_STATE	312	14216	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	14235
 * OP_IFNOT	14235	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3675	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_walk19 = [ 33.000, zombie_walk1 ] {

   ai_walk (FALSE);
   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef001666,TRUE,ATTN_IDLE);

   }

};

void () zombie_run1;

// function zombie_run1
// function number 1399 begins at statement 22671
/*
 * OP_STATE	9671	14237	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3873	0	0
 * OP_ADDRESS	28	14166	14238
 * OP_STOREP_F	213	14238	0
 * OP_DONE	0	0	0
 */

void () zombie_run1 = [ 34.000, zombie_run2 ] {

   ai_run (TRUE);
   self.globaldef004525 = FALSE;

};

void () zombie_run2;

// function zombie_run2
// function number 1400 begins at statement 22677
/*
 * OP_STATE	5878	14239	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run2 = [ 35.000, zombie_run3 ] {

   ai_run (TRUE);

};

void () zombie_run3;

// function zombie_run3
// function number 1401 begins at statement 22681
/*
 * OP_STATE	9655	14240	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run3 = [ 36.000, zombie_run4 ] {

   ai_run (FALSE);

};

void () zombie_run4;

// function zombie_run4
// function number 1402 begins at statement 22685
/*
 * OP_STATE	9657	14241	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run4 = [ 37.000, zombie_run5 ] {

   ai_run (TRUE);

};

void () zombie_run5;

// function zombie_run5
// function number 1403 begins at statement 22689
/*
 * OP_STATE	9659	14242	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run5 = [ 38.000, zombie_run6 ] {

   ai_run (FL_SWIM);

};

void () zombie_run6;

// function zombie_run6
// function number 1404 begins at statement 22693
/*
 * OP_STATE	9661	14243	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run6 = [ 39.000, zombie_run7 ] {

   ai_run (MOVETYPE_WALK);

};

void () zombie_run7;

// function zombie_run7
// function number 1405 begins at statement 22697
/*
 * OP_STATE	746	14244	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run7 = [ 40.000, zombie_run8 ] {

   ai_run (MOVETYPE_STEP);

};

void () zombie_run8;

// function zombie_run8
// function number 1406 begins at statement 22701
/*
 * OP_STATE	9993	14245	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run8 = [ 41.000, zombie_run9 ] {

   ai_run (MOVETYPE_STEP);

};

void () zombie_run9;

// function zombie_run9
// function number 1407 begins at statement 22705
/*
 * OP_STATE	9995	14246	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run9 = [ 42.000, zombie_run10 ] {

   ai_run (FL_SWIM);

};

void () zombie_run10;

// function zombie_run10
// function number 1408 begins at statement 22709
/*
 * OP_STATE	9997	14247	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run10 = [ 43.000, zombie_run11 ] {

   ai_run (FALSE);

};

void () zombie_run11;

// function zombie_run11
// function number 1409 begins at statement 22713
/*
 * OP_STATE	9999	14248	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run11 = [ 44.000, zombie_run12 ] {

   ai_run (FALSE);

};

void () zombie_run12;

// function zombie_run12
// function number 1410 begins at statement 22717
/*
 * OP_STATE	2598	14249	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run12 = [ 45.000, zombie_run13 ] {

   ai_run (FALSE);

};

void () zombie_run13;

// function zombie_run13
// function number 1411 begins at statement 22721
/*
 * OP_STATE	10002	14250	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run13 = [ 46.000, zombie_run14 ] {

   ai_run (FL_SWIM);

};

void () zombie_run14;

// function zombie_run14
// function number 1412 begins at statement 22725
/*
 * OP_STATE	10004	14251	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run14 = [ 47.000, zombie_run15 ] {

   ai_run (MOVETYPE_STEP);

};

void () zombie_run15;

// function zombie_run15
// function number 1413 begins at statement 22729
/*
 * OP_STATE	10006	14252	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run15 = [ 48.000, zombie_run16 ] {

   ai_run (MOVETYPE_TOSS);

};

void () zombie_run16;

// function zombie_run16
// function number 1414 begins at statement 22733
/*
 * OP_STATE	10008	14253	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run16 = [ 49.000, zombie_run17 ] {

   ai_run (MOVETYPE_PUSH);

};

void () zombie_run17;

// function zombie_run17
// function number 1415 begins at statement 22737
/*
 * OP_STATE	1470	14254	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run17 = [ 50.000, zombie_run18 ] {

   ai_run (MOVETYPE_WALK);

};

void () zombie_run18;

// function zombie_run18
// function number 1416 begins at statement 22741
/*
 * OP_STATE	9911	14236	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	14255
 * OP_IFNOT	14255	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3675	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_GT	1	4478	14256
 * OP_IFNOT	14256	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14257	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_run18 = [ 51.000, zombie_run1 ] {

   ai_run (FL_CLIENT);
   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef001666,TRUE,ATTN_IDLE);

   }
   if ( (random () > globaldef001827) ) {

      sound (self,CHAN_VOICE,globaldef004591,TRUE,ATTN_IDLE);

   }

};
string globaldef004591 /* = "zombie/z_idle1.wav" */;

void () ZombieGrenadeTouch;

// function ZombieGrenadeTouch
// function number 1417 begins at statement 22763
/*
 * OP_LOAD_ENT	28	201	14259
 * OP_EQ_E	29	14259	14260
 * OP_IFNOT	14260	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	14261
 * OP_IFNOT	14261	16	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_LOAD_ENT	28	201	14262
 * OP_STORE_V	14262	10	0
 * OP_STORE_V	235	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	14263	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	14264	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	113	14265
 * OP_STOREP_V	286	14265	0
 * OP_ADDRESS	28	121	14268
 * OP_STOREP_V	286	14268	0
 * OP_ADDRESS	28	146	14271
 * OP_STOREP_FNC	521	14271	0
 * OP_DONE	0	0	0
 */

void () ZombieGrenadeTouch = {

   if ( (other == self.globaldef000179) ) {

      return ;

   }
   if ( other.globaldef000141 ) {

      T_Damage (other,self,self.globaldef000179,MOVETYPE_BOUNCE);
      sound (self,CHAN_WEAPON,globaldef004593,TRUE,ATTN_NORM);
      remove (self);
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef004594,TRUE,ATTN_NORM);
   self.globaldef000091 = VEC_ORIGIN;
   self.globaldef000099 = VEC_ORIGIN;
   self.globaldef000124 = SUB_Remove;

};
string globaldef004593 /* = "zombie/z_hit.wav" */;
string globaldef004594 /* = "zombie/z_miss.wav" */;

void (vector globaldef004596) ZombieFireGrenade;

// function ZombieFireGrenade
// function number 1418 begins at statement 22797
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	14281	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	14276	0
 * OP_ADDRESS	14276	201	14282
 * OP_STOREP_ENT	28	14282	0
 * OP_ADDRESS	14276	103	14283
 * OP_STOREP_F	235	14283	0
 * OP_ADDRESS	14276	104	14284
 * OP_STOREP_F	239	14284	0
 * OP_LOAD_V	28	105	14285
 * OP_MUL_FV	14273	59	14288
 * OP_ADD_V	14285	14288	14291
 * OP_MUL_FV	14274	65	14294
 * OP_ADD_V	14291	14294	14297
 * OP_SUB_F	14275	736	14300
 * OP_MUL_FV	14300	62	14301
 * OP_ADD_V	14297	14301	14304
 * OP_STORE_V	14304	14278	0
 * OP_LOAD_V	28	117	14307
 * OP_STORE_V	14307	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	14276	113	14310
 * OP_LOAD_ENT	28	181	14313
 * OP_LOAD_V	14313	105	14314
 * OP_SUB_V	14314	14278	14317
 * OP_STORE_V	14317	4	0
 * OP_CALL1	459	0	0
 * OP_STOREP_V	1	14310	0
 * OP_ADDRESS	14276	113	14320
 * OP_LOAD_V	14276	113	14323
 * OP_MUL_VF	14323	740	14326
 * OP_STOREP_V	14326	14320	0
 * OP_ADDRESS	14276	116	14329
 * OP_STOREP_F	2044	14329	0
 * OP_ADDRESS	14276	121	14330
 * OP_STOREP_V	5470	14330	0
 * OP_ADDRESS	14276	146	14333
 * OP_STOREP_FNC	14258	14333	0
 * OP_ADDRESS	14276	150	14334
 * OP_ADD_F	31	6009	14335
 * OP_STOREP_F	14335	14334	0
 * OP_ADDRESS	14276	148	14336
 * OP_STOREP_FNC	521	14336	0
 * OP_STORE_V	14276	4	0
 * OP_STORE_V	5476	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	14276	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	14276	4	0
 * OP_STORE_V	14278	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef004596) ZombieFireGrenade = {

   local entity missile;
   local entity mpuff;
   local vector org;

   sound (self,CHAN_WEAPON,globaldef004606,TRUE,ATTN_NORM);
   missile = spawn ();
   missile.globaldef000179 = self;
   missile.globaldef000081 = MOVETYPE_BOUNCE;
   missile.globaldef000082 = SOLID_BBOX;
   org = (((self.globaldef000083 + (globaldef004596_x * v_forward)) + (globaldef004598 * v_right)) + ((globaldef004599 - globaldef000719) * v_up));
   makevectors (self.globaldef000095);
   missile.globaldef000091 = normalize ((self.globaldef000159.globaldef000083 - org));
   missile.globaldef000091 = (missile.globaldef000091 * globaldef000723);
   missile.globaldef000094 = globaldef001343;
   missile.globaldef000099 = globaldef002055;
   missile.globaldef000124 = ZombieGrenadeTouch;
   missile.globaldef000128 = (time + globaldef002187);
   missile.globaldef000126 = SUB_Remove;
   setmodel (missile,globaldef002056);
   setsize (missile,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (missile,org);

};

void () zombie_atta1;

// function zombie_atta1
// function number 1419 begins at statement 22856
/*
 * OP_STATE	9913	14338	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta1 = [ 52.000, zombie_atta2 ] {

   ai_face ();

};

void () zombie_atta2;

// function zombie_atta2
// function number 1420 begins at statement 22859
/*
 * OP_STATE	9915	14339	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta2 = [ 53.000, zombie_atta3 ] {

   ai_face ();

};

void () zombie_atta3;

// function zombie_atta3
// function number 1421 begins at statement 22862
/*
 * OP_STATE	9917	14340	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta3 = [ 54.000, zombie_atta4 ] {

   ai_face ();

};

void () zombie_atta4;

// function zombie_atta4
// function number 1422 begins at statement 22865
/*
 * OP_STATE	9919	14341	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta4 = [ 55.000, zombie_atta5 ] {

   ai_face ();

};

void () zombie_atta5;

// function zombie_atta5
// function number 1423 begins at statement 22868
/*
 * OP_STATE	9921	14342	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta5 = [ 56.000, zombie_atta6 ] {

   ai_face ();

};

void () zombie_atta6;

// function zombie_atta6
// function number 1424 begins at statement 22871
/*
 * OP_STATE	9923	14343	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta6 = [ 57.000, zombie_atta7 ] {

   ai_face ();

};

void () zombie_atta7;

// function zombie_atta7
// function number 1425 begins at statement 22874
/*
 * OP_STATE	9925	14344	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta7 = [ 58.000, zombie_atta8 ] {

   ai_face ();

};

void () zombie_atta8;

// function zombie_atta8
// function number 1426 begins at statement 22877
/*
 * OP_STATE	2783	14345	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta8 = [ 59.000, zombie_atta9 ] {

   ai_face ();

};

void () zombie_atta9;

// function zombie_atta9
// function number 1427 begins at statement 22880
/*
 * OP_STATE	2019	14346	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta9 = [ 60.000, zombie_atta10 ] {

   ai_face ();

};

void () zombie_atta10;

// function zombie_atta10
// function number 1428 begins at statement 22883
/*
 * OP_STATE	9928	14347	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta10 = [ 61.000, zombie_atta11 ] {

   ai_face ();

};

void () zombie_atta11;

// function zombie_atta11
// function number 1429 begins at statement 22886
/*
 * OP_STATE	9930	14348	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta11 = [ 62.000, zombie_atta12 ] {

   ai_face ();

};

void () zombie_atta12;

// function zombie_atta12
// function number 1430 begins at statement 22889
/*
 * OP_STATE	6707	14349	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta12 = [ 63.000, zombie_atta13 ] {

   ai_face ();

};

void () zombie_atta13;

// function zombie_atta13
// function number 1431 begins at statement 22892
/*
 * OP_STATE	220	14236	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	14350	4	0
 * OP_CALL1	14272	0	0
 * OP_DONE	0	0	0
 */

void () zombie_atta13 = [ 64.000, zombie_run1 ] {

   ai_face ();
   ZombieFireGrenade (globaldef004620);

};
vector globaldef004620 /* = '-10.000 -22.000 30.000' */;

void () zombie_attb1;

// function zombie_attb1
// function number 1432 begins at statement 22897
/*
 * OP_STATE	9934	14354	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb1 = [ 65.000, zombie_attb2 ] {

   ai_face ();

};

void () zombie_attb2;

// function zombie_attb2
// function number 1433 begins at statement 22900
/*
 * OP_STATE	9936	14355	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb2 = [ 66.000, zombie_attb3 ] {

   ai_face ();

};

void () zombie_attb3;

// function zombie_attb3
// function number 1434 begins at statement 22903
/*
 * OP_STATE	9938	14356	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb3 = [ 67.000, zombie_attb4 ] {

   ai_face ();

};

void () zombie_attb4;

// function zombie_attb4
// function number 1435 begins at statement 22906
/*
 * OP_STATE	8193	14357	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb4 = [ 68.000, zombie_attb5 ] {

   ai_face ();

};

void () zombie_attb5;

// function zombie_attb5
// function number 1436 begins at statement 22909
/*
 * OP_STATE	8196	14358	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb5 = [ 69.000, zombie_attb6 ] {

   ai_face ();

};

void () zombie_attb6;

// function zombie_attb6
// function number 1437 begins at statement 22912
/*
 * OP_STATE	1536	14359	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb6 = [ 70.000, zombie_attb7 ] {

   ai_face ();

};

void () zombie_attb7;

// function zombie_attb7
// function number 1438 begins at statement 22915
/*
 * OP_STATE	8201	14360	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb7 = [ 71.000, zombie_attb8 ] {

   ai_face ();

};

void () zombie_attb8;

// function zombie_attb8
// function number 1439 begins at statement 22918
/*
 * OP_STATE	9943	14361	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb8 = [ 72.000, zombie_attb9 ] {

   ai_face ();

};

void () zombie_attb9;

// function zombie_attb9
// function number 1440 begins at statement 22921
/*
 * OP_STATE	5487	14362	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb9 = [ 73.000, zombie_attb10 ] {

   ai_face ();

};

void () zombie_attb10;

// function zombie_attb10
// function number 1441 begins at statement 22924
/*
 * OP_STATE	9946	14363	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb10 = [ 74.000, zombie_attb11 ] {

   ai_face ();

};

void () zombie_attb11;

// function zombie_attb11
// function number 1442 begins at statement 22927
/*
 * OP_STATE	9173	14364	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb11 = [ 75.000, zombie_attb12 ] {

   ai_face ();

};

void () zombie_attb12;

// function zombie_attb12
// function number 1443 begins at statement 22930
/*
 * OP_STATE	9949	14365	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb12 = [ 76.000, zombie_attb13 ] {

   ai_face ();

};

void () zombie_attb13;

// function zombie_attb13
// function number 1444 begins at statement 22933
/*
 * OP_STATE	9951	14366	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb13 = [ 77.000, zombie_attb14 ] {

   ai_face ();

};

void () zombie_attb14;

// function zombie_attb14
// function number 1445 begins at statement 22936
/*
 * OP_STATE	9951	14236	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	14367	4	0
 * OP_CALL1	14272	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attb14 = [ 77.000, zombie_run1 ] {

   ai_face ();
   ZombieFireGrenade (globaldef004635);

};
vector globaldef004635 /* = '-10.000 -24.000 29.000' */;

void () zombie_attc1;

// function zombie_attc1
// function number 1446 begins at statement 22941
/*
 * OP_STATE	9955	14371	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc1 = [ 79.000, zombie_attc2 ] {

   ai_face ();

};

void () zombie_attc2;

// function zombie_attc2
// function number 1447 begins at statement 22944
/*
 * OP_STATE	2805	14372	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc2 = [ 80.000, zombie_attc3 ] {

   ai_face ();

};

void () zombie_attc3;

// function zombie_attc3
// function number 1448 begins at statement 22947
/*
 * OP_STATE	8204	14373	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc3 = [ 81.000, zombie_attc4 ] {

   ai_face ();

};

void () zombie_attc4;

// function zombie_attc4
// function number 1449 begins at statement 22950
/*
 * OP_STATE	9959	14374	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc4 = [ 82.000, zombie_attc5 ] {

   ai_face ();

};

void () zombie_attc5;

// function zombie_attc5
// function number 1450 begins at statement 22953
/*
 * OP_STATE	9961	14375	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc5 = [ 83.000, zombie_attc6 ] {

   ai_face ();

};

void () zombie_attc6;

// function zombie_attc6
// function number 1451 begins at statement 22956
/*
 * OP_STATE	7694	14376	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc6 = [ 84.000, zombie_attc7 ] {

   ai_face ();

};

void () zombie_attc7;

// function zombie_attc7
// function number 1452 begins at statement 22959
/*
 * OP_STATE	9963	14377	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc7 = [ 85.000, zombie_attc8 ] {

   ai_face ();

};

void () zombie_attc8;

// function zombie_attc8
// function number 1453 begins at statement 22962
/*
 * OP_STATE	9965	14378	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc8 = [ 86.000, zombie_attc9 ] {

   ai_face ();

};

void () zombie_attc9;

// function zombie_attc9
// function number 1454 begins at statement 22965
/*
 * OP_STATE	9967	14379	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc9 = [ 87.000, zombie_attc10 ] {

   ai_face ();

};

void () zombie_attc10;

// function zombie_attc10
// function number 1455 begins at statement 22968
/*
 * OP_STATE	9969	14380	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc10 = [ 88.000, zombie_attc11 ] {

   ai_face ();

};

void () zombie_attc11;

// function zombie_attc11
// function number 1456 begins at statement 22971
/*
 * OP_STATE	9971	14381	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc11 = [ 89.000, zombie_attc12 ] {

   ai_face ();

};

void () zombie_attc12;

// function zombie_attc12
// function number 1457 begins at statement 22974
/*
 * OP_STATE	2658	14236	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	14382	4	0
 * OP_CALL1	14272	0	0
 * OP_DONE	0	0	0
 */

void () zombie_attc12 = [ 90.000, zombie_run1 ] {

   ai_face ();
   ZombieFireGrenade (globaldef004648);

};
vector globaldef004648 /* = '-12.000 -19.000 29.000' */;

void () zombie_missile;

// function zombie_missile
// function number 1458 begins at statement 22979
/*
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	14386	0
 * OP_LT	14386	3409	14387
 * OP_IFNOT	14387	3	0
 * OP_CALL0	14337	0	0
 * OP_GOTO	6	0	0
 * OP_LT	14386	4474	14388
 * OP_IFNOT	14388	3	0
 * OP_CALL0	14353	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	14370	0	0
 * OP_DONE	0	0	0
 */

void () zombie_missile = {

   local float r;

   r = random ();
   if ( (r < globaldef001588) ) {

      zombie_atta1 ();

   } else {

      if ( (r < globaldef001825) ) {

         zombie_attb1 ();

      } else {

         zombie_attc1 ();

      }

   }

};

void () zombie_paina1;

// function zombie_paina1
// function number 1459 begins at statement 22991
/*
 * OP_STATE	9974	14390	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14391	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paina1 = [ 91.000, zombie_paina2 ] {

   sound (self,CHAN_VOICE,globaldef004653,TRUE,ATTN_NORM);

};

void () zombie_paina2;
string globaldef004653 /* = "zombie/z_pain.wav" */;

// function zombie_paina2
// function number 1460 begins at statement 22999
/*
 * OP_STATE	9976	14392	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paina2 = [ 92.000, zombie_paina3 ] {

   ai_painforward (MOVETYPE_WALK);

};

void () zombie_paina3;

// function zombie_paina3
// function number 1461 begins at statement 23003
/*
 * OP_STATE	9978	14393	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paina3 = [ 93.000, zombie_paina4 ] {

   ai_painforward (TRUE);

};

void () zombie_paina4;

// function zombie_paina4
// function number 1462 begins at statement 23007
/*
 * OP_STATE	9979	14394	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paina4 = [ 94.000, zombie_paina5 ] {

   ai_pain (TRUE);

};

void () zombie_paina5;

// function zombie_paina5
// function number 1463 begins at statement 23011
/*
 * OP_STATE	9981	14395	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paina5 = [ 95.000, zombie_paina6 ] {

   ai_pain (MOVETYPE_WALK);

};

void () zombie_paina6;

// function zombie_paina6
// function number 1464 begins at statement 23015
/*
 * OP_STATE	9983	14396	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paina6 = [ 96.000, zombie_paina7 ] {

   ai_pain (TRUE);

};

void () zombie_paina7;

// function zombie_paina7
// function number 1465 begins at statement 23019
/*
 * OP_STATE	9985	14397	0
 * OP_DONE	0	0	0
 */

void () zombie_paina7 = [ 97.000, zombie_paina8 ] {


};

void () zombie_paina8;

// function zombie_paina8
// function number 1466 begins at statement 23021
/*
 * OP_STATE	9987	14398	0
 * OP_DONE	0	0	0
 */

void () zombie_paina8 = [ 98.000, zombie_paina9 ] {


};

void () zombie_paina9;

// function zombie_paina9
// function number 1467 begins at statement 23023
/*
 * OP_STATE	9989	14399	0
 * OP_DONE	0	0	0
 */

void () zombie_paina9 = [ 99.000, zombie_paina10 ] {


};

void () zombie_paina10;

// function zombie_paina10
// function number 1468 begins at statement 23025
/*
 * OP_STATE	1997	14400	0
 * OP_DONE	0	0	0
 */

void () zombie_paina10 = [ 100.000, zombie_paina11 ] {


};

void () zombie_paina11;

// function zombie_paina11
// function number 1469 begins at statement 23027
/*
 * OP_STATE	8107	14401	0
 * OP_DONE	0	0	0
 */

void () zombie_paina11 = [ 101.000, zombie_paina12 ] {


};

void () zombie_paina12;

// function zombie_paina12
// function number 1470 begins at statement 23029
/*
 * OP_STATE	8109	14236	0
 * OP_DONE	0	0	0
 */

void () zombie_paina12 = [ 102.000, zombie_run1 ] {


};

void () zombie_painb1;

// function zombie_painb1
// function number 1471 begins at statement 23031
/*
 * OP_STATE	8111	14403	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14404	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb1 = [ 103.000, zombie_painb2 ] {

   sound (self,CHAN_VOICE,globaldef004666,TRUE,ATTN_NORM);

};

void () zombie_painb2;
string globaldef004666 /* = "zombie/z_pain1.wav" */;

// function zombie_painb2
// function number 1472 begins at statement 23039
/*
 * OP_STATE	8114	14405	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb2 = [ 104.000, zombie_painb3 ] {

   ai_pain (FL_SWIM);

};

void () zombie_painb3;

// function zombie_painb3
// function number 1473 begins at statement 23043
/*
 * OP_STATE	9562	14406	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb3 = [ 105.000, zombie_painb4 ] {

   ai_pain (FL_CLIENT);

};

void () zombie_painb4;

// function zombie_painb4
// function number 1474 begins at statement 23047
/*
 * OP_STATE	9577	14407	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb4 = [ 106.000, zombie_painb5 ] {

   ai_pain (MOVETYPE_TOSS);

};

void () zombie_painb5;

// function zombie_painb5
// function number 1475 begins at statement 23051
/*
 * OP_STATE	9591	14408	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb5 = [ 107.000, zombie_painb6 ] {

   ai_pain (FL_SWIM);

};

void () zombie_painb6;

// function zombie_painb6
// function number 1476 begins at statement 23055
/*
 * OP_STATE	9597	14409	0
 * OP_DONE	0	0	0
 */

void () zombie_painb6 = [ 108.000, zombie_painb7 ] {


};

void () zombie_painb7;

// function zombie_painb7
// function number 1477 begins at statement 23057
/*
 * OP_STATE	9600	14410	0
 * OP_DONE	0	0	0
 */

void () zombie_painb7 = [ 109.000, zombie_painb8 ] {


};

void () zombie_painb8;

// function zombie_painb8
// function number 1478 begins at statement 23059
/*
 * OP_STATE	9603	14411	0
 * OP_DONE	0	0	0
 */

void () zombie_painb8 = [ 110.000, zombie_painb9 ] {


};

void () zombie_painb9;

// function zombie_painb9
// function number 1479 begins at statement 23061
/*
 * OP_STATE	2224	14412	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	14413	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb9 = [ 111.000, zombie_painb10 ] {

   sound (self,CHAN_BODY,globaldef004675,TRUE,ATTN_NORM);

};

void () zombie_painb10;
string globaldef004675 /* = "zombie/z_fall.wav" */;

// function zombie_painb10
// function number 1480 begins at statement 23069
/*
 * OP_STATE	9608	14414	0
 * OP_DONE	0	0	0
 */

void () zombie_painb10 = [ 112.000, zombie_painb11 ] {


};

void () zombie_painb11;

// function zombie_painb11
// function number 1481 begins at statement 23071
/*
 * OP_STATE	9473	14415	0
 * OP_DONE	0	0	0
 */

void () zombie_painb11 = [ 113.000, zombie_painb12 ] {


};

void () zombie_painb12;

// function zombie_painb12
// function number 1482 begins at statement 23073
/*
 * OP_STATE	9479	14416	0
 * OP_DONE	0	0	0
 */

void () zombie_painb12 = [ 114.000, zombie_painb13 ] {


};

void () zombie_painb13;

// function zombie_painb13
// function number 1483 begins at statement 23075
/*
 * OP_STATE	9482	14417	0
 * OP_DONE	0	0	0
 */

void () zombie_painb13 = [ 115.000, zombie_painb14 ] {


};

void () zombie_painb14;

// function zombie_painb14
// function number 1484 begins at statement 23077
/*
 * OP_STATE	9485	14418	0
 * OP_DONE	0	0	0
 */

void () zombie_painb14 = [ 116.000, zombie_painb15 ] {


};

void () zombie_painb15;

// function zombie_painb15
// function number 1485 begins at statement 23079
/*
 * OP_STATE	9488	14419	0
 * OP_DONE	0	0	0
 */

void () zombie_painb15 = [ 117.000, zombie_painb16 ] {


};

void () zombie_painb16;

// function zombie_painb16
// function number 1486 begins at statement 23081
/*
 * OP_STATE	9491	14420	0
 * OP_DONE	0	0	0
 */

void () zombie_painb16 = [ 118.000, zombie_painb17 ] {


};

void () zombie_painb17;

// function zombie_painb17
// function number 1487 begins at statement 23083
/*
 * OP_STATE	9493	14421	0
 * OP_DONE	0	0	0
 */

void () zombie_painb17 = [ 119.000, zombie_painb18 ] {


};

void () zombie_painb18;

// function zombie_painb18
// function number 1488 begins at statement 23085
/*
 * OP_STATE	3584	14422	0
 * OP_DONE	0	0	0
 */

void () zombie_painb18 = [ 120.000, zombie_painb19 ] {


};

void () zombie_painb19;

// function zombie_painb19
// function number 1489 begins at statement 23087
/*
 * OP_STATE	9498	14423	0
 * OP_DONE	0	0	0
 */

void () zombie_painb19 = [ 121.000, zombie_painb20 ] {


};

void () zombie_painb20;

// function zombie_painb20
// function number 1490 begins at statement 23089
/*
 * OP_STATE	9501	14424	0
 * OP_DONE	0	0	0
 */

void () zombie_painb20 = [ 122.000, zombie_painb21 ] {


};

void () zombie_painb21;

// function zombie_painb21
// function number 1491 begins at statement 23091
/*
 * OP_STATE	12627	14425	0
 * OP_DONE	0	0	0
 */

void () zombie_painb21 = [ 123.000, zombie_painb22 ] {


};

void () zombie_painb22;

// function zombie_painb22
// function number 1492 begins at statement 23093
/*
 * OP_STATE	12629	14426	0
 * OP_DONE	0	0	0
 */

void () zombie_painb22 = [ 124.000, zombie_painb23 ] {


};

void () zombie_painb23;

// function zombie_painb23
// function number 1493 begins at statement 23095
/*
 * OP_STATE	9503	14427	0
 * OP_DONE	0	0	0
 */

void () zombie_painb23 = [ 125.000, zombie_painb24 ] {


};

void () zombie_painb24;

// function zombie_painb24
// function number 1494 begins at statement 23097
/*
 * OP_STATE	9506	14428	0
 * OP_DONE	0	0	0
 */

void () zombie_painb24 = [ 126.000, zombie_painb25 ] {


};

void () zombie_painb25;

// function zombie_painb25
// function number 1495 begins at statement 23099
/*
 * OP_STATE	9509	14429	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painb25 = [ 127.000, zombie_painb26 ] {

   ai_painforward (TRUE);

};

void () zombie_painb26;

// function zombie_painb26
// function number 1496 begins at statement 23103
/*
 * OP_STATE	221	14430	0
 * OP_DONE	0	0	0
 */

void () zombie_painb26 = [ 128.000, zombie_painb27 ] {


};

void () zombie_painb27;

// function zombie_painb27
// function number 1497 begins at statement 23105
/*
 * OP_STATE	12637	14431	0
 * OP_DONE	0	0	0
 */

void () zombie_painb27 = [ 129.000, zombie_painb28 ] {


};

void () zombie_painb28;

// function zombie_painb28
// function number 1498 begins at statement 23107
/*
 * OP_STATE	12639	14236	0
 * OP_DONE	0	0	0
 */

void () zombie_painb28 = [ 130.000, zombie_run1 ] {


};

void () zombie_painc1;

// function zombie_painc1
// function number 1499 begins at statement 23109
/*
 * OP_STATE	9513	14433	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14404	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painc1 = [ 131.000, zombie_painc2 ] {

   sound (self,CHAN_VOICE,globaldef004666,TRUE,ATTN_NORM);

};

void () zombie_painc2;

// function zombie_painc2
// function number 1500 begins at statement 23117
/*
 * OP_STATE	9516	14434	0
 * OP_DONE	0	0	0
 */

void () zombie_painc2 = [ 132.000, zombie_painc3 ] {


};

void () zombie_painc3;

// function zombie_painc3
// function number 1501 begins at statement 23119
/*
 * OP_STATE	9519	14435	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painc3 = [ 133.000, zombie_painc4 ] {

   ai_pain (MOVETYPE_WALK);

};

void () zombie_painc4;

// function zombie_painc4
// function number 1502 begins at statement 23123
/*
 * OP_STATE	9522	14436	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painc4 = [ 134.000, zombie_painc5 ] {

   ai_pain (TRUE);

};

void () zombie_painc5;

// function zombie_painc5
// function number 1503 begins at statement 23127
/*
 * OP_STATE	12645	14437	0
 * OP_DONE	0	0	0
 */

void () zombie_painc5 = [ 135.000, zombie_painc6 ] {


};

void () zombie_painc6;

// function zombie_painc6
// function number 1504 begins at statement 23129
/*
 * OP_STATE	14438	14439	0
 * OP_DONE	0	0	0
 */

void () zombie_painc6 = [ 136.000, zombie_painc7 ] {


};
float globaldef004700 /* = 136.000 */;

void () zombie_painc7;

// function zombie_painc7
// function number 1505 begins at statement 23131
/*
 * OP_STATE	9524	14440	0
 * OP_DONE	0	0	0
 */

void () zombie_painc7 = [ 137.000, zombie_painc8 ] {


};

void () zombie_painc8;

// function zombie_painc8
// function number 1506 begins at statement 23133
/*
 * OP_STATE	9527	14441	0
 * OP_DONE	0	0	0
 */

void () zombie_painc8 = [ 138.000, zombie_painc9 ] {


};

void () zombie_painc9;

// function zombie_painc9
// function number 1507 begins at statement 23135
/*
 * OP_STATE	9530	14442	0
 * OP_DONE	0	0	0
 */

void () zombie_painc9 = [ 139.000, zombie_painc10 ] {


};

void () zombie_painc10;

// function zombie_painc10
// function number 1508 begins at statement 23137
/*
 * OP_STATE	9533	14443	0
 * OP_DONE	0	0	0
 */

void () zombie_painc10 = [ 140.000, zombie_painc11 ] {


};

void () zombie_painc11;

// function zombie_painc11
// function number 1509 begins at statement 23139
/*
 * OP_STATE	14444	14445	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painc11 = [ 141.000, zombie_painc12 ] {

   ai_painforward (TRUE);

};
float globaldef004706 /* = 141.000 */;

void () zombie_painc12;

// function zombie_painc12
// function number 1510 begins at statement 23143
/*
 * OP_STATE	14446	14447	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_painc12 = [ 142.000, zombie_painc13 ] {

   ai_painforward (TRUE);

};
float globaldef004708 /* = 142.000 */;

void () zombie_painc13;

// function zombie_painc13
// function number 1511 begins at statement 23147
/*
 * OP_STATE	14448	14449	0
 * OP_DONE	0	0	0
 */

void () zombie_painc13 = [ 143.000, zombie_painc14 ] {


};
float globaldef004710 /* = 143.000 */;

void () zombie_painc14;

// function zombie_painc14
// function number 1512 begins at statement 23149
/*
 * OP_STATE	14450	14451	0
 * OP_DONE	0	0	0
 */

void () zombie_painc14 = [ 144.000, zombie_painc15 ] {


};
float globaldef004712 /* = 144.000 */;

void () zombie_painc15;

// function zombie_painc15
// function number 1513 begins at statement 23151
/*
 * OP_STATE	14452	14453	0
 * OP_DONE	0	0	0
 */

void () zombie_painc15 = [ 145.000, zombie_painc16 ] {


};
float globaldef004714 /* = 145.000 */;

void () zombie_painc16;

// function zombie_painc16
// function number 1514 begins at statement 23153
/*
 * OP_STATE	14454	14455	0
 * OP_DONE	0	0	0
 */

void () zombie_painc16 = [ 146.000, zombie_painc17 ] {


};
float globaldef004716 /* = 146.000 */;

void () zombie_painc17;

// function zombie_painc17
// function number 1515 begins at statement 23155
/*
 * OP_STATE	14456	14457	0
 * OP_DONE	0	0	0
 */

void () zombie_painc17 = [ 147.000, zombie_painc18 ] {


};
float globaldef004718 /* = 147.000 */;

void () zombie_painc18;

// function zombie_painc18
// function number 1516 begins at statement 23157
/*
 * OP_STATE	14458	14236	0
 * OP_DONE	0	0	0
 */

void () zombie_painc18 = [ 148.000, zombie_run1 ] {


};
float globaldef004720 /* = 148.000 */;

void () zombie_paind1;

// function zombie_paind1
// function number 1517 begins at statement 23159
/*
 * OP_STATE	14460	14461	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14391	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paind1 = [ 149.000, zombie_paind2 ] {

   sound (self,CHAN_VOICE,globaldef004653,TRUE,ATTN_NORM);

};
float globaldef004722 /* = 149.000 */;

void () zombie_paind2;

// function zombie_paind2
// function number 1518 begins at statement 23167
/*
 * OP_STATE	2003	14462	0
 * OP_DONE	0	0	0
 */

void () zombie_paind2 = [ 150.000, zombie_paind3 ] {


};

void () zombie_paind3;

// function zombie_paind3
// function number 1519 begins at statement 23169
/*
 * OP_STATE	14463	14464	0
 * OP_DONE	0	0	0
 */

void () zombie_paind3 = [ 151.000, zombie_paind4 ] {


};
float globaldef004725 /* = 151.000 */;

void () zombie_paind4;

// function zombie_paind4
// function number 1520 begins at statement 23171
/*
 * OP_STATE	14465	14466	0
 * OP_DONE	0	0	0
 */

void () zombie_paind4 = [ 152.000, zombie_paind5 ] {


};
float globaldef004727 /* = 152.000 */;

void () zombie_paind5;

// function zombie_paind5
// function number 1521 begins at statement 23173
/*
 * OP_STATE	14467	14468	0
 * OP_DONE	0	0	0
 */

void () zombie_paind5 = [ 153.000, zombie_paind6 ] {


};
float globaldef004729 /* = 153.000 */;

void () zombie_paind6;

// function zombie_paind6
// function number 1522 begins at statement 23175
/*
 * OP_STATE	14469	14470	0
 * OP_DONE	0	0	0
 */

void () zombie_paind6 = [ 154.000, zombie_paind7 ] {


};
float globaldef004731 /* = 154.000 */;

void () zombie_paind7;

// function zombie_paind7
// function number 1523 begins at statement 23177
/*
 * OP_STATE	14471	14472	0
 * OP_DONE	0	0	0
 */

void () zombie_paind7 = [ 155.000, zombie_paind8 ] {


};
float globaldef004733 /* = 155.000 */;

void () zombie_paind8;

// function zombie_paind8
// function number 1524 begins at statement 23179
/*
 * OP_STATE	14473	14474	0
 * OP_DONE	0	0	0
 */

void () zombie_paind8 = [ 156.000, zombie_paind9 ] {


};
float globaldef004735 /* = 156.000 */;

void () zombie_paind9;

// function zombie_paind9
// function number 1525 begins at statement 23181
/*
 * OP_STATE	14475	14476	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paind9 = [ 157.000, zombie_paind10 ] {

   ai_pain (TRUE);

};
float globaldef004737 /* = 157.000 */;

void () zombie_paind10;

// function zombie_paind10
// function number 1526 begins at statement 23185
/*
 * OP_STATE	14477	14478	0
 * OP_DONE	0	0	0
 */

void () zombie_paind10 = [ 158.000, zombie_paind11 ] {


};
float globaldef004739 /* = 158.000 */;

void () zombie_paind11;

// function zombie_paind11
// function number 1527 begins at statement 23187
/*
 * OP_STATE	14479	14480	0
 * OP_DONE	0	0	0
 */

void () zombie_paind11 = [ 159.000, zombie_paind12 ] {


};
float globaldef004741 /* = 159.000 */;

void () zombie_paind12;

// function zombie_paind12
// function number 1528 begins at statement 23189
/*
 * OP_STATE	12014	14481	0
 * OP_DONE	0	0	0
 */

void () zombie_paind12 = [ 160.000, zombie_paind13 ] {


};

void () zombie_paind13;

// function zombie_paind13
// function number 1529 begins at statement 23191
/*
 * OP_STATE	2155	14236	0
 * OP_DONE	0	0	0
 */

void () zombie_paind13 = [ 161.000, zombie_run1 ] {


};

void () zombie_paine1;

// function zombie_paine1
// function number 1530 begins at statement 23193
/*
 * OP_STATE	14483	14484	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14391	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	152	14485
 * OP_STOREP_F	2019	14485	0
 * OP_DONE	0	0	0
 */

void () zombie_paine1 = [ 162.000, zombie_paine2 ] {

   sound (self,CHAN_VOICE,globaldef004653,TRUE,ATTN_NORM);
   self.globaldef000130 = globaldef001337;

};
float globaldef004745 /* = 162.000 */;

void () zombie_paine2;

// function zombie_paine2
// function number 1531 begins at statement 23203
/*
 * OP_STATE	14486	14487	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine2 = [ 163.000, zombie_paine3 ] {

   ai_pain (FL_CLIENT);

};
float globaldef004747 /* = 163.000 */;

void () zombie_paine3;

// function zombie_paine3
// function number 1532 begins at statement 23207
/*
 * OP_STATE	14488	14489	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine3 = [ 164.000, zombie_paine4 ] {

   ai_pain (MOVETYPE_FLY);

};
float globaldef004749 /* = 164.000 */;

void () zombie_paine4;

// function zombie_paine4
// function number 1533 begins at statement 23211
/*
 * OP_STATE	14490	14491	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine4 = [ 165.000, zombie_paine5 ] {

   ai_pain (MOVETYPE_WALK);

};
float globaldef004751 /* = 165.000 */;

void () zombie_paine5;

// function zombie_paine5
// function number 1534 begins at statement 23215
/*
 * OP_STATE	2022	14492	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine5 = [ 166.000, zombie_paine6 ] {

   ai_pain (TRUE);

};

void () zombie_paine6;

// function zombie_paine6
// function number 1535 begins at statement 23219
/*
 * OP_STATE	14493	14494	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine6 = [ 167.000, zombie_paine7 ] {

   ai_pain (FL_SWIM);

};
float globaldef004754 /* = 167.000 */;

void () zombie_paine7;

// function zombie_paine7
// function number 1536 begins at statement 23223
/*
 * OP_STATE	14495	14496	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine7 = [ 168.000, zombie_paine8 ] {

   ai_pain (TRUE);

};
float globaldef004756 /* = 168.000 */;

void () zombie_paine8;

// function zombie_paine8
// function number 1537 begins at statement 23227
/*
 * OP_STATE	14497	14498	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine8 = [ 169.000, zombie_paine9 ] {

   ai_pain (TRUE);

};
float globaldef004758 /* = 169.000 */;

void () zombie_paine9;

// function zombie_paine9
// function number 1538 begins at statement 23231
/*
 * OP_STATE	2505	14499	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine9 = [ 170.000, zombie_paine10 ] {

   ai_pain (FL_SWIM);

};

void () zombie_paine10;

// function zombie_paine10
// function number 1539 begins at statement 23235
/*
 * OP_STATE	14500	14501	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	14413	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	104	14502
 * OP_STOREP_F	237	14502	0
 * OP_DONE	0	0	0
 */

void () zombie_paine10 = [ 171.000, zombie_paine11 ] {

   sound (self,CHAN_BODY,globaldef004675,TRUE,ATTN_NORM);
   self.globaldef000082 = SOLID_NOT;

};
float globaldef004761 /* = 171.000 */;

void () zombie_paine11;

// function zombie_paine11
// function number 1540 begins at statement 23245
/*
 * OP_STATE	14503	14504	0
 * OP_ADDRESS	28	150	14505
 * OP_LOAD_F	28	150	14506
 * OP_ADD_F	14506	230	14507
 * OP_STOREP_F	14507	14505	0
 * OP_ADDRESS	28	152	14508
 * OP_STOREP_F	2019	14508	0
 * OP_DONE	0	0	0
 */

void () zombie_paine11 = [ 172.000, zombie_paine12 ] {

   self.globaldef000128 = (self.globaldef000128 + MOVETYPE_FLY);
   self.globaldef000130 = globaldef001337;

};
float globaldef004763 /* = 172.000 */;

void () zombie_paine12;

// function zombie_paine12
// function number 1541 begins at statement 23253
/*
 * OP_STATE	14509	14510	0
 * OP_ADDRESS	28	152	14511
 * OP_STOREP_F	2019	14511	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3675	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	104	14512
 * OP_STOREP_F	240	14512	0
 * OP_STORE_V	213	4	0
 * OP_STORE_V	213	7	0
 * OP_CALL2	480	0	0
 * OP_NOT_F	1	0	14513
 * OP_IFNOT	14513	6	0
 * OP_ADDRESS	28	148	14514
 * OP_STOREP_FNC	14501	14514	0
 * OP_ADDRESS	28	104	14515
 * OP_STOREP_F	237	14515	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine12 = [ 173.000, zombie_paine13 ] {

   self.globaldef000130 = globaldef001337;
   sound (self,CHAN_VOICE,globaldef001666,TRUE,ATTN_IDLE);
   self.globaldef000082 = SOLID_SLIDEBOX;
   if ( !walkmove (FALSE,FALSE) ) {

      self.globaldef000126 = zombie_paine11;
      self.globaldef000082 = SOLID_NOT;
      return ;

   }

};
float globaldef004765 /* = 173.000 */;

void () zombie_paine13;

// function zombie_paine13
// function number 1542 begins at statement 23275
/*
 * OP_STATE	14516	14517	0
 * OP_DONE	0	0	0
 */

void () zombie_paine13 = [ 174.000, zombie_paine14 ] {


};
float globaldef004767 /* = 174.000 */;

void () zombie_paine14;

// function zombie_paine14
// function number 1543 begins at statement 23277
/*
 * OP_STATE	14518	14519	0
 * OP_DONE	0	0	0
 */

void () zombie_paine14 = [ 175.000, zombie_paine15 ] {


};
float globaldef004769 /* = 175.000 */;

void () zombie_paine15;

// function zombie_paine15
// function number 1544 begins at statement 23279
/*
 * OP_STATE	14520	14521	0
 * OP_DONE	0	0	0
 */

void () zombie_paine15 = [ 176.000, zombie_paine16 ] {


};
float globaldef004771 /* = 176.000 */;

void () zombie_paine16;

// function zombie_paine16
// function number 1545 begins at statement 23281
/*
 * OP_STATE	14522	14523	0
 * OP_DONE	0	0	0
 */

void () zombie_paine16 = [ 177.000, zombie_paine17 ] {


};
float globaldef004773 /* = 177.000 */;

void () zombie_paine17;

// function zombie_paine17
// function number 1546 begins at statement 23283
/*
 * OP_STATE	14524	14525	0
 * OP_DONE	0	0	0
 */

void () zombie_paine17 = [ 178.000, zombie_paine18 ] {


};
float globaldef004775 /* = 178.000 */;

void () zombie_paine18;

// function zombie_paine18
// function number 1547 begins at statement 23285
/*
 * OP_STATE	14526	14527	0
 * OP_DONE	0	0	0
 */

void () zombie_paine18 = [ 179.000, zombie_paine19 ] {


};
float globaldef004777 /* = 179.000 */;

void () zombie_paine19;

// function zombie_paine19
// function number 1548 begins at statement 23287
/*
 * OP_STATE	1296	14528	0
 * OP_DONE	0	0	0
 */

void () zombie_paine19 = [ 180.000, zombie_paine20 ] {


};

void () zombie_paine20;

// function zombie_paine20
// function number 1549 begins at statement 23289
/*
 * OP_STATE	2600	14529	0
 * OP_DONE	0	0	0
 */

void () zombie_paine20 = [ 181.000, zombie_paine21 ] {


};

void () zombie_paine21;

// function zombie_paine21
// function number 1550 begins at statement 23291
/*
 * OP_STATE	14530	14531	0
 * OP_DONE	0	0	0
 */

void () zombie_paine21 = [ 182.000, zombie_paine22 ] {


};
float globaldef004781 /* = 182.000 */;

void () zombie_paine22;

// function zombie_paine22
// function number 1551 begins at statement 23293
/*
 * OP_STATE	14532	14533	0
 * OP_DONE	0	0	0
 */

void () zombie_paine22 = [ 183.000, zombie_paine23 ] {


};
float globaldef004783 /* = 183.000 */;

void () zombie_paine23;

// function zombie_paine23
// function number 1552 begins at statement 23295
/*
 * OP_STATE	14534	14535	0
 * OP_DONE	0	0	0
 */

void () zombie_paine23 = [ 184.000, zombie_paine24 ] {


};
float globaldef004785 /* = 184.000 */;

void () zombie_paine24;

// function zombie_paine24
// function number 1553 begins at statement 23297
/*
 * OP_STATE	14536	14537	0
 * OP_DONE	0	0	0
 */

void () zombie_paine24 = [ 185.000, zombie_paine25 ] {


};
float globaldef004787 /* = 185.000 */;

void () zombie_paine25;

// function zombie_paine25
// function number 1554 begins at statement 23299
/*
 * OP_STATE	14538	14539	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine25 = [ 186.000, zombie_paine26 ] {

   ai_painforward (MOVETYPE_FLY);

};
float globaldef004789 /* = 186.000 */;

void () zombie_paine26;

// function zombie_paine26
// function number 1555 begins at statement 23303
/*
 * OP_STATE	14540	14541	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine26 = [ 187.000, zombie_paine27 ] {

   ai_painforward (MOVETYPE_WALK);

};
float globaldef004791 /* = 187.000 */;

void () zombie_paine27;

// function zombie_paine27
// function number 1556 begins at statement 23307
/*
 * OP_STATE	14542	14543	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine27 = [ 188.000, zombie_paine28 ] {

   ai_painforward (TRUE);

};
float globaldef004793 /* = 188.000 */;

void () zombie_paine28;

// function zombie_paine28
// function number 1557 begins at statement 23311
/*
 * OP_STATE	2029	14544	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () zombie_paine28 = [ 189.000, zombie_paine29 ] {

   ai_pain (TRUE);

};

void () zombie_paine29;

// function zombie_paine29
// function number 1558 begins at statement 23315
/*
 * OP_STATE	2035	14545	0
 * OP_DONE	0	0	0
 */

void () zombie_paine29 = [ 190.000, zombie_paine30 ] {


};

void () zombie_paine30;

// function zombie_paine30
// function number 1559 begins at statement 23317
/*
 * OP_STATE	14546	14236	0
 * OP_DONE	0	0	0
 */

void () zombie_paine30 = [ 191.000, zombie_run1 ] {


};
float globaldef004797 /* = 191.000 */;

void () zombie_die;

// function zombie_die
// function number 1560 begins at statement 23319
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14548	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	14549	4	0
 * OP_LOAD_F	28	152	14550
 * OP_STORE_V	14550	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	14551
 * OP_STORE_V	14551	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	14552
 * OP_STORE_V	14552	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	14553
 * OP_STORE_V	14553	7	0
 * OP_CALL2	9771	0	0
 * OP_DONE	0	0	0
 */

void () zombie_die = {

   sound (self,CHAN_VOICE,globaldef004799,TRUE,ATTN_NORM);
   ThrowHead (globaldef004800,self.globaldef000130);
   ThrowGib (globaldef002432,self.globaldef000130);
   ThrowGib (globaldef002433,self.globaldef000130);
   ThrowGib (globaldef002434,self.globaldef000130);

};
string globaldef004799 /* = "zombie/z_gib.wav" */;
string globaldef004800 /* = "progs/h_zombie.mdl" */;

void (entity globaldef004802, float globaldef004803) zombie_pain;

// function zombie_pain
// function number 1561 begins at statement 23342
/*
 * OP_ADDRESS	28	152	14558
 * OP_STOREP_F	2019	14558	0
 * OP_LT	14556	234	14559
 * OP_IFNOT	14559	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	14166	14560
 * OP_EQ_F	14560	216	14561
 * OP_IFNOT	14561	2	0
 * OP_RETURN	0	0	0
 * OP_GE	14556	305	14562
 * OP_IFNOT	14562	5	0
 * OP_ADDRESS	28	14166	14563
 * OP_STOREP_F	216	14563	0
 * OP_CALL0	14482	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	14166	14564
 * OP_IFNOT	14564	5	0
 * OP_ADDRESS	28	379	14565
 * OP_ADD_F	31	228	14566
 * OP_STOREP_F	14566	14565	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	379	14567
 * OP_GT	14567	31	14568
 * OP_IFNOT	14568	5	0
 * OP_ADDRESS	28	14166	14569
 * OP_STOREP_F	216	14569	0
 * OP_CALL0	14482	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	14166	14570
 * OP_STOREP_F	214	14570	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	14557	0
 * OP_LT	14557	6277	14571
 * OP_IFNOT	14571	3	0
 * OP_CALL0	14389	0	0
 * OP_GOTO	10	0	0
 * OP_LT	14557	539	14572
 * OP_IFNOT	14572	3	0
 * OP_CALL0	14402	0	0
 * OP_GOTO	6	0	0
 * OP_LT	14557	6280	14573
 * OP_IFNOT	14573	3	0
 * OP_CALL0	14432	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	14459	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef004802, float globaldef004803) zombie_pain = {

   local float r;

   self.globaldef000130 = globaldef001337;
   if ( (globaldef004803 < MOVETYPE_FLYMISSILE) ) {

      return ;

   }
   if ( (self.globaldef004525 == FL_SWIM) ) {

      return ;

   }
   if ( (globaldef004803 >= globaldef000288) ) {

      self.globaldef004525 = FL_SWIM;
      zombie_paine1 ();
      return ;

   }
   if ( self.globaldef004525 ) {

      self.globaldef000362 = (time + MOVETYPE_WALK);
      return ;

   }
   if ( (self.globaldef000362 > time) ) {

      self.globaldef004525 = FL_SWIM;
      zombie_paine1 ();
      return ;

   }
   self.globaldef004525 = TRUE;
   r = random ();
   if ( (r < globaldef002243) ) {

      zombie_paina1 ();

   } else {

      if ( (r < globaldef000522) ) {

         zombie_painb1 ();

      } else {

         if ( (r < globaldef002244) ) {

            zombie_painc1 ();

         } else {

            zombie_paind1 ();

         }

      }

   }

};

void () monster_zombie;

// function monster_zombie
// function number 1562 begins at statement 23388
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	14575	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	14549	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	5476	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	3675	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14257	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14281	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14548	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14391	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14404	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14413	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14264	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14263	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14186	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	14576
 * OP_STOREP_F	240	14576	0
 * OP_ADDRESS	28	103	14577
 * OP_STOREP_F	229	14577	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	14575	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	14578
 * OP_STOREP_F	2019	14578	0
 * OP_ADDRESS	28	361	14579
 * OP_STOREP_FNC	14167	14579	0
 * OP_ADDRESS	28	362	14580
 * OP_STOREP_FNC	14216	14580	0
 * OP_ADDRESS	28	363	14581
 * OP_STOREP_FNC	14236	14581	0
 * OP_ADDRESS	28	366	14582
 * OP_STOREP_FNC	14554	14582	0
 * OP_ADDRESS	28	367	14583
 * OP_STOREP_FNC	14547	14583	0
 * OP_ADDRESS	28	364	14584
 * OP_STOREP_FNC	14385	14584	0
 * OP_LOAD_F	28	195	14585
 * OP_BITAND	14585	14165	14586
 * OP_IFNOT	14586	5	0
 * OP_ADDRESS	28	103	14587
 * OP_STOREP_F	227	14587	0
 * OP_CALL0	14182	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_zombie = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model (globaldef004806);
   precache_model (globaldef004800);
   precache_model (globaldef002056);
   precache_sound (globaldef001666);
   precache_sound (globaldef004591);
   precache_sound (globaldef004606);
   precache_sound (globaldef004799);
   precache_sound (globaldef004653);
   precache_sound (globaldef004666);
   precache_sound (globaldef004675);
   precache_sound (globaldef004594);
   precache_sound (globaldef004593);
   precache_sound (globaldef004544);
   self.globaldef000082 = SOLID_SLIDEBOX;
   self.globaldef000081 = MOVETYPE_STEP;
   setmodel (self,globaldef004806);
   setsize (self,VEC_HULL_MIN,globaldef004167);
   self.globaldef000130 = globaldef001337;
   self.globaldef000344 = zombie_stand1;
   self.globaldef000345 = zombie_walk1;
   self.globaldef000346 = zombie_run1;
   self.globaldef000349 = zombie_pain;
   self.globaldef000350 = zombie_die;
   self.globaldef000347 = zombie_missile;
   if ( (self.globaldef000173 & globaldef004524) ) {

      self.globaldef000081 = MOVETYPE_NONE;
      zombie_cruc1 ();

   } else {

      walkmonster_start ();

   }

};
