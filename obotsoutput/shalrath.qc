string globaldef5348 /* = "progs/fish.mdl" */;
vector globaldef5349 /* = '16.000 16.000 24.000' */;

void () shalrath_pain;

void () ShalMissile;

void () shal_stand;

// function shal_stand
// function number 2017 begins at statement 25786
/*
 * OP_STATE	304	15531	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () shal_stand = [ 23.000, globaldef5352 ] {

   globaldef1709 ();

};

void () shal_walk1;

// function shal_walk1
// function number 2018 begins at statement 25789
/*
 * OP_STATE	736	15533	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	15534
 * OP_IFNOT	15534	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15535	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk1 = [ 24.000, globaldef5354 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef5355,TRUE,ATTN_IDLE);

   }
   globaldef1702 (MOVETYPE_TOSS);

};

void () shal_walk2;
string globaldef5355 /* = "shalrath/idle.wav" */;

// function shal_walk2
// function number 2019 begins at statement 25802
/*
 * OP_STATE	305	15536	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk2 = [ 25.000, globaldef5356 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () shal_walk3;

// function shal_walk3
// function number 2020 begins at statement 25806
/*
 * OP_STATE	306	15537	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk3 = [ 26.000, globaldef5357 ] {

   globaldef1702 (FALSE);

};

void () shal_walk4;

// function shal_walk4
// function number 2021 begins at statement 25810
/*
 * OP_STATE	307	15538	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk4 = [ 27.000, globaldef5358 ] {

   globaldef1702 (FALSE);

};

void () shal_walk5;

// function shal_walk5
// function number 2022 begins at statement 25814
/*
 * OP_STATE	308	15539	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk5 = [ 28.000, globaldef5359 ] {

   globaldef1702 (FALSE);

};

void () shal_walk6;

// function shal_walk6
// function number 2023 begins at statement 25818
/*
 * OP_STATE	9664	15540	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk6 = [ 29.000, globaldef5360 ] {

   globaldef1702 (FALSE);

};

void () shal_walk7;

// function shal_walk7
// function number 2024 begins at statement 25822
/*
 * OP_STATE	309	15541	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk7 = [ 30.000, globaldef5361 ] {

   globaldef1702 (MOVETYPE_FLY);

};

void () shal_walk8;

// function shal_walk8
// function number 2025 begins at statement 25826
/*
 * OP_STATE	310	15542	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk8 = [ 31.000, globaldef5362 ] {

   globaldef1702 (MOVETYPE_TOSS);

};

void () shal_walk9;

// function shal_walk9
// function number 2026 begins at statement 25830
/*
 * OP_STATE	219	15543	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk9 = [ 32.000, globaldef5363 ] {

   globaldef1702 (MOVETYPE_FLY);

};

void () shal_walk10;

// function shal_walk10
// function number 2027 begins at statement 25834
/*
 * OP_STATE	312	15544	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk10 = [ 33.000, globaldef5364 ] {

   globaldef1702 (FALSE);

};

void () shal_walk11;

// function shal_walk11
// function number 2028 begins at statement 25838
/*
 * OP_STATE	9671	15545	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk11 = [ 34.000, globaldef5365 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () shal_walk12;

// function shal_walk12
// function number 2029 begins at statement 25842
/*
 * OP_STATE	304	15532	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () shal_walk12 = [ 23.000, globaldef5353 ] {

   globaldef1702 (MOVETYPE_FLY);

};

void () shal_run1;

// function shal_run1
// function number 2030 begins at statement 25846
/*
 * OP_STATE	736	15547	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	15548
 * OP_IFNOT	15548	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15535	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run1 = [ 24.000, globaldef5367 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef5355,TRUE,ATTN_IDLE);

   }
   globaldef1734 (MOVETYPE_TOSS);

};

void () shal_run2;

// function shal_run2
// function number 2031 begins at statement 25859
/*
 * OP_STATE	305	15549	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run2 = [ 25.000, globaldef5368 ] {

   globaldef1734 (MOVETYPE_STEP);

};

void () shal_run3;

// function shal_run3
// function number 2032 begins at statement 25863
/*
 * OP_STATE	306	15550	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run3 = [ 26.000, globaldef5369 ] {

   globaldef1734 (FALSE);

};

void () shal_run4;

// function shal_run4
// function number 2033 begins at statement 25867
/*
 * OP_STATE	307	15551	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run4 = [ 27.000, globaldef5370 ] {

   globaldef1734 (FALSE);

};

void () shal_run5;

// function shal_run5
// function number 2034 begins at statement 25871
/*
 * OP_STATE	308	15552	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run5 = [ 28.000, globaldef5371 ] {

   globaldef1734 (FALSE);

};

void () shal_run6;

// function shal_run6
// function number 2035 begins at statement 25875
/*
 * OP_STATE	9664	15553	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run6 = [ 29.000, globaldef5372 ] {

   globaldef1734 (FALSE);

};

void () shal_run7;

// function shal_run7
// function number 2036 begins at statement 25879
/*
 * OP_STATE	309	15554	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run7 = [ 30.000, globaldef5373 ] {

   globaldef1734 (MOVETYPE_FLY);

};

void () shal_run8;

// function shal_run8
// function number 2037 begins at statement 25883
/*
 * OP_STATE	310	15555	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run8 = [ 31.000, globaldef5374 ] {

   globaldef1734 (MOVETYPE_TOSS);

};

void () shal_run9;

// function shal_run9
// function number 2038 begins at statement 25887
/*
 * OP_STATE	219	15556	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run9 = [ 32.000, globaldef5375 ] {

   globaldef1734 (MOVETYPE_FLY);

};

void () shal_run10;

// function shal_run10
// function number 2039 begins at statement 25891
/*
 * OP_STATE	312	15557	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run10 = [ 33.000, globaldef5376 ] {

   globaldef1734 (FALSE);

};

void () shal_run11;

// function shal_run11
// function number 2040 begins at statement 25895
/*
 * OP_STATE	9671	15558	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run11 = [ 34.000, globaldef5377 ] {

   globaldef1734 (MOVETYPE_STEP);

};

void () shal_run12;

// function shal_run12
// function number 2041 begins at statement 25899
/*
 * OP_STATE	304	15546	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () shal_run12 = [ 23.000, globaldef5366 ] {

   globaldef1734 (MOVETYPE_FLY);

};

void () shal_attack1;

// function shal_attack1
// function number 2042 begins at statement 25903
/*
 * OP_STATE	213	15560	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15561	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack1 = [ 0.000, globaldef5379 ] {

   sound (self,CHAN_VOICE,globaldef5380,TRUE,ATTN_NORM);
   globaldef1533 ();

};

void () shal_attack2;
string globaldef5380 /* = "shalrath/attack.wav" */;

// function shal_attack2
// function number 2043 begins at statement 25912
/*
 * OP_STATE	214	15562	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack2 = [ 1.000, globaldef5381 ] {

   globaldef1533 ();

};

void () shal_attack3;

// function shal_attack3
// function number 2044 begins at statement 25915
/*
 * OP_STATE	216	15563	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack3 = [ 2.000, globaldef5382 ] {

   globaldef1533 ();

};

void () shal_attack4;

// function shal_attack4
// function number 2045 begins at statement 25918
/*
 * OP_STATE	228	15564	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack4 = [ 3.000, globaldef5383 ] {

   globaldef1533 ();

};

void () shal_attack5;

// function shal_attack5
// function number 2046 begins at statement 25921
/*
 * OP_STATE	229	15565	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack5 = [ 4.000, globaldef5384 ] {

   globaldef1533 ();

};

void () shal_attack6;

// function shal_attack6
// function number 2047 begins at statement 25924
/*
 * OP_STATE	230	15566	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack6 = [ 5.000, globaldef5385 ] {

   globaldef1533 ();

};

void () shal_attack7;

// function shal_attack7
// function number 2048 begins at statement 25927
/*
 * OP_STATE	231	15567	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack7 = [ 6.000, globaldef5386 ] {

   globaldef1533 ();

};

void () shal_attack8;

// function shal_attack8
// function number 2049 begins at statement 25930
/*
 * OP_STATE	232	15568	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack8 = [ 7.000, globaldef5387 ] {

   globaldef1533 ();

};

void () shal_attack9;

// function shal_attack9
// function number 2050 begins at statement 25933
/*
 * OP_STATE	217	15569	0
 * OP_CALL0	15530	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack9 = [ 8.000, globaldef5388 ] {

   globaldef5351 ();

};

void () shal_attack10;

// function shal_attack10
// function number 2051 begins at statement 25936
/*
 * OP_STATE	234	15570	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () shal_attack10 = [ 9.000, globaldef5389 ] {

   globaldef1533 ();

};

void () shal_attack11;

// function shal_attack11
// function number 2052 begins at statement 25939
/*
 * OP_STATE	235	15546	0
 * OP_DONE	0	0	0
 */

void () shal_attack11 = [ 10.000, globaldef5366 ] {


};

void () shal_pain1;

// function shal_pain1
// function number 2053 begins at statement 25941
/*
 * OP_STATE	236	15572	0
 * OP_DONE	0	0	0
 */

void () shal_pain1 = [ 11.000, globaldef5391 ] {


};

void () shal_pain2;

// function shal_pain2
// function number 2054 begins at statement 25943
/*
 * OP_STATE	791	15573	0
 * OP_DONE	0	0	0
 */

void () shal_pain2 = [ 12.000, globaldef5392 ] {


};

void () shal_pain3;

// function shal_pain3
// function number 2055 begins at statement 25945
/*
 * OP_STATE	792	15574	0
 * OP_DONE	0	0	0
 */

void () shal_pain3 = [ 13.000, globaldef5393 ] {


};

void () shal_pain4;

// function shal_pain4
// function number 2056 begins at statement 25947
/*
 * OP_STATE	5693	15575	0
 * OP_DONE	0	0	0
 */

void () shal_pain4 = [ 14.000, globaldef5394 ] {


};

void () shal_pain5;

// function shal_pain5
// function number 2057 begins at statement 25949
/*
 * OP_STATE	765	15546	0
 * OP_DONE	0	0	0
 */

void () shal_pain5 = [ 15.000, globaldef5366 ] {


};

void () shal_death1;

// function shal_death1
// function number 2058 begins at statement 25951
/*
 * OP_STATE	218	15577	0
 * OP_DONE	0	0	0
 */

void () shal_death1 = [ 16.000, globaldef5396 ] {


};

void () shal_death2;

// function shal_death2
// function number 2059 begins at statement 25953
/*
 * OP_STATE	6892	15578	0
 * OP_DONE	0	0	0
 */

void () shal_death2 = [ 17.000, globaldef5397 ] {


};

void () shal_death3;

// function shal_death3
// function number 2060 begins at statement 25955
/*
 * OP_STATE	6133	15579	0
 * OP_DONE	0	0	0
 */

void () shal_death3 = [ 18.000, globaldef5398 ] {


};

void () shal_death4;

// function shal_death4
// function number 2061 begins at statement 25957
/*
 * OP_STATE	6895	15580	0
 * OP_DONE	0	0	0
 */

void () shal_death4 = [ 19.000, globaldef5399 ] {


};

void () shal_death5;

// function shal_death5
// function number 2062 begins at statement 25959
/*
 * OP_STATE	2323	15581	0
 * OP_DONE	0	0	0
 */

void () shal_death5 = [ 20.000, globaldef5400 ] {


};

void () shal_death6;

// function shal_death6
// function number 2063 begins at statement 25961
/*
 * OP_STATE	12465	15582	0
 * OP_DONE	0	0	0
 */

void () shal_death6 = [ 21.000, globaldef5401 ] {


};

void () shal_death7;

// function shal_death7
// function number 2064 begins at statement 25963
/*
 * OP_STATE	12467	15582	0
 * OP_DONE	0	0	0
 */

void () shal_death7 = [ 22.000, globaldef5401 ] {


};

// function shalrath_pain
// function number 2065 begins at statement 25965
/*
 * OP_LOAD_F	28	379	15583
 * OP_GT	15583	31	15584
 * OP_IFNOT	15584	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15585	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	15571	0	0
 * OP_ADDRESS	28	379	15586
 * OP_ADD_F	31	228	15587
 * OP_STOREP_F	15587	15586	0
 * OP_DONE	0	0	0
 */

void () shalrath_pain = {

   if ( (self.globaldef362 > time) ) {

      return ;

   }
   sound (self,CHAN_VOICE,globaldef5402,TRUE,ATTN_NORM);
   globaldef5390 ();
   self.globaldef362 = (time + MOVETYPE_WALK);

};
string globaldef5402 /* = "shalrath/pain.wav" */;

void () shalrath_die;

// function shalrath_die
// function number 2066 begins at statement 25980
/*
 * OP_LOAD_F	28	152	15589
 * OP_LT	15589	3865	15590
 * OP_IFNOT	15590	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	15591	4	0
 * OP_LOAD_F	28	152	15592
 * OP_STORE_V	15592	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	15593
 * OP_STORE_V	15593	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	15594
 * OP_STORE_V	15594	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	15595
 * OP_STORE_V	15595	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	15596	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	15576	0	0
 * OP_ADDRESS	28	104	15597
 * OP_STOREP_F	237	15597	0
 * OP_DONE	0	0	0
 */

void () shalrath_die = {

   if ( (self.globaldef130 < globaldef1733) ) {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NORM);
      globaldef3189 (globaldef5404,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      globaldef3185 (globaldef2434,self.globaldef130);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef5405,TRUE,ATTN_NORM);
   globaldef5395 ();
   self.solid = SOLID_NOT;

};
string globaldef5404 /* = "progs/h_shal.mdl" */;
string globaldef5405 /* = "shalrath/death.wav" */;

void () ShalMissileTouch;

void () ShalHome;

// function ShalMissile
// function number 2067 begins at statement 26016
/*
 * OP_LOAD_ENT	28	181	15606
 * OP_LOAD_V	15606	105	15607
 * OP_ADD_V	15607	10177	15610
 * OP_LOAD_V	28	105	15613
 * OP_SUB_V	15610	15613	15616
 * OP_STORE_V	15616	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	15601	0
 * OP_LOAD_ENT	28	181	15619
 * OP_LOAD_V	15619	105	15620
 * OP_LOAD_V	28	105	15623
 * OP_SUB_V	15620	15623	15626
 * OP_STORE_V	15626	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	15604	0
 * OP_MUL_F	15604	15629	15630
 * OP_STORE_F	15630	15605	0
 * OP_LT	15605	3036	15631
 * OP_IFNOT	15631	2	0
 * OP_STORE_F	3036	15605	0
 * OP_ADDRESS	28	133	15632
 * OP_LOAD_F	28	133	15633
 * OP_BITOR	15633	339	15634
 * OP_STOREP_F	15634	15632	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	15635	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	15600	0
 * OP_ADDRESS	15600	201	15636
 * OP_STOREP_ENT	28	15636	0
 * OP_ADDRESS	15600	104	15637
 * OP_STOREP_F	239	15637	0
 * OP_ADDRESS	15600	103	15638
 * OP_STOREP_F	234	15638	0
 * OP_STORE_V	15600	4	0
 * OP_STORE_V	15639	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	15600	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	15600	105	15640
 * OP_LOAD_V	28	105	15643
 * OP_ADD_V	15643	10177	15646
 * OP_STOREP_V	15646	15640	0
 * OP_ADDRESS	15600	113	15649
 * OP_MUL_VF	15601	5347	15652
 * OP_STOREP_V	15652	15649	0
 * OP_ADDRESS	15600	121	15655
 * OP_STOREP_V	5998	15655	0
 * OP_ADDRESS	15600	150	15658
 * OP_ADD_F	15605	31	15659
 * OP_STOREP_F	15659	15658	0
 * OP_ADDRESS	15600	148	15660
 * OP_STOREP_FNC	15599	15660	0
 * OP_ADDRESS	15600	181	15661
 * OP_LOAD_ENT	28	181	15662
 * OP_STOREP_ENT	15662	15661	0
 * OP_ADDRESS	15600	146	15663
 * OP_STOREP_FNC	15598	15663	0
 * OP_DONE	0	0	0
 */

void () ShalMissile = {

   local entity globaldef5408;
   local vector globaldef5409;
   local float globaldef5413;
   local float globaldef5414;

   globaldef5409 = globaldef442 (((self.enemy.origin + globaldef3314) - self.origin));
   globaldef5413 = vlen ((self.enemy.origin - self.origin));
   globaldef5414 = (globaldef5413 * globaldef5415);
   if ( (globaldef5414 < 0.100) ) {

      globaldef5414 = 0.100;

   }
   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);
   sound (self,CHAN_WEAPON,globaldef5416,TRUE,ATTN_NORM);
   globaldef5408 = spawn ();
   globaldef5408.globaldef179 = self;
   globaldef5408.solid = SOLID_BBOX;
   globaldef5408.movetype = MOVETYPE_FLYMISSILE;
   setmodel (globaldef5408,globaldef5417);
   globaldef438 (globaldef5408,VEC_ORIGIN,VEC_ORIGIN);
   globaldef5408.origin = (self.origin + globaldef3314);
   globaldef5408.velocity = (globaldef5409 * globaldef2007);
   globaldef5408.avelocity = globaldef2186;
   globaldef5408.nextthink = (globaldef5414 + time);
   globaldef5408.think = globaldef5407;
   globaldef5408.enemy = self.enemy;
   globaldef5408.globaldef124 = globaldef5406;

};
float globaldef5415 /* = 0.002 */;
string globaldef5416 /* = "shalrath/attack2.wav" */;
string globaldef5417 /* = "progs/v_spike.mdl" */;

// function ShalHome
// function number 2068 begins at statement 26081
/*
 * OP_LOAD_ENT	28	181	15670
 * OP_LOAD_V	15670	105	15671
 * OP_ADD_V	15671	10177	15674
 * OP_STORE_V	15674	15667	0
 * OP_LOAD_ENT	28	181	15677
 * OP_LOAD_F	15677	152	15678
 * OP_LT	15678	214	15679
 * OP_IFNOT	15679	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	15680
 * OP_SUB_V	15667	15680	15683
 * OP_STORE_V	15683	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	15664	0
 * OP_EQ_F	354	228	15686
 * OP_IFNOT	15686	5	0
 * OP_ADDRESS	28	113	15687
 * OP_MUL_VF	15664	15690	15691
 * OP_STOREP_V	15691	15687	0
 * OP_GOTO	4	0	0
 * OP_ADDRESS	28	113	15694
 * OP_MUL_VF	15664	738	15697
 * OP_STOREP_V	15697	15694	0
 * OP_ADDRESS	28	150	15700
 * OP_ADD_F	31	3267	15701
 * OP_STOREP_F	15701	15700	0
 * OP_ADDRESS	28	148	15702
 * OP_STOREP_FNC	15599	15702	0
 * OP_DONE	0	0	0
 */

void () ShalHome = {

   local vector globaldef5418;
   local vector globaldef5422;

   globaldef5422 = (self.enemy.origin + globaldef3314);
   if ( (self.enemy.globaldef130 < TRUE) ) {

      remove (self);
      return ;

   }
   globaldef5418 = globaldef442 ((globaldef5422 - self.origin));
   if ( (skill == MOVETYPE_WALK) ) {

      self.velocity = (globaldef5418 * globaldef5426);

   } else {

      self.velocity = (globaldef5418 * globaldef721);

   }
   self.nextthink = (time + globaldef1553);
   self.think = globaldef5407;

};
float globaldef5426 /* = 350.000 */;

// function ShalMissileTouch
// function number 2069 begins at statement 26112
/*
 * OP_LOAD_ENT	28	201	15703
 * OP_EQ_E	29	15703	15704
 * OP_IFNOT	15704	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	29	129	15705
 * OP_EQ_S	15705	3673	15706
 * OP_IFNOT	15706	6	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	9603	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_ENT	28	201	15707
 * OP_STORE_V	15707	7	0
 * OP_STORE_V	746	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	4216	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5358	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	316	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	15708
 * OP_STORE_V	15708	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	15709
 * OP_STORE_V	15709	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	15710
 * OP_STORE_V	15710	7	0
 * OP_CALL2	500	0	0
 * OP_ADDRESS	28	113	15711
 * OP_STOREP_V	286	15711	0
 * OP_ADDRESS	28	146	15714
 * OP_STOREP_FNC	519	15714	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	5709	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	104	15715
 * OP_STOREP_F	237	15715	0
 * OP_CALL0	5697	0	0
 * OP_DONE	0	0	0
 */

void () ShalMissileTouch = {

   if ( (other == self.globaldef179) ) {

      return ;

   }
   if ( (other.classname == "monster_zombie") ) {

      globaldef505 (other,self,self,globaldef3137);

   }
   globaldef1772 (self,self.globaldef179,globaldef729,world);
   sound (self,CHAN_WEAPON,globaldef2012,TRUE,ATTN_NORM);
   globaldef479 (MSG_BROADCAST,SVC_TEMP);
   globaldef479 (MSG_BROADCAST,TE_EXPLOSION);
   globaldef483 (MSG_BROADCAST,self.globaldef84);
   globaldef483 (MSG_BROADCAST,self.globaldef85);
   globaldef483 (MSG_BROADCAST,self.globaldef86);
   self.velocity = VEC_ORIGIN;
   self.globaldef124 = SUB_Null;
   setmodel (self,globaldef2145);
   self.solid = SOLID_NOT;
   globaldef2138 ();

};

void () monster_shalrath;

// function monster_shalrath
// function number 2070 begins at statement 26165
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	15717	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15591	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15639	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15561	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15635	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15596	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15535	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	15585	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3710	4	0
 * OP_CALL1	511	0	0
 * OP_ADDRESS	28	104	15718
 * OP_STOREP_F	240	15718	0
 * OP_ADDRESS	28	103	15719
 * OP_STOREP_F	229	15719	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	15717	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	295	7	0
 * OP_STORE_V	298	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	15720
 * OP_STOREP_F	5347	15720	0
 * OP_ADDRESS	28	361	15721
 * OP_STOREP_FNC	15531	15721	0
 * OP_ADDRESS	28	362	15722
 * OP_STOREP_FNC	15532	15722	0
 * OP_ADDRESS	28	363	15723
 * OP_STOREP_FNC	15546	15723	0
 * OP_ADDRESS	28	367	15724
 * OP_STOREP_FNC	15588	15724	0
 * OP_ADDRESS	28	366	15725
 * OP_STOREP_FNC	15529	15725	0
 * OP_ADDRESS	28	364	15726
 * OP_STOREP_FNC	15559	15726	0
 * OP_ADDRESS	28	148	15727
 * OP_STOREP_FNC	10107	15727	0
 * OP_ADDRESS	28	150	15728
 * OP_ADD_F	31	3036	15729
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3036	15730
 * OP_ADD_F	15729	15730	15731
 * OP_STOREP_F	15731	15728	0
 * OP_DONE	0	0	0
 */

void () monster_shalrath = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef493 (globaldef5428);
   globaldef493 (globaldef5404);
   globaldef493 (globaldef5417);
   globaldef494 (globaldef5380);
   globaldef494 (globaldef5416);
   globaldef494 (globaldef5405);
   globaldef494 (globaldef5355);
   globaldef494 (globaldef5402);
   globaldef494 ("shalrath/sight.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef5428);
   globaldef438 (self,VEC_HULL2_MIN,VEC_HULL2_MAX);
   self.globaldef130 = globaldef2007;
   self.globaldef344 = globaldef5352;
   self.globaldef345 = globaldef5353;
   self.globaldef346 = globaldef5366;
   self.globaldef350 = globaldef5403;
   self.globaldef349 = globaldef5350;
   self.globaldef347 = globaldef5378;
   self.think = globaldef3309;
   self.nextthink = ((time + 0.100) + (globaldef440 () * 0.100));

};
