string globaldef2471 /* = "bla" */;

void (vector globaldef2473, vector globaldef2477, float globaldef2481, float globaldef2482) func302;

// function func302
// function number 302 begins at statement 8870
/*
 * OP_STORE_V	6844	4	0
 * OP_STORE_V	6847	7	0
 * OP_STORE_V	6850	10	0
 * OP_STORE_V	6851	13	0
 * OP_CALL4	493	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef2473, vector globaldef2477, float globaldef2481, float globaldef2482) func302 = {

   globaldef476 (globaldef2473,globaldef2477,globaldef2481,globaldef2482);

};

void (vector globaldef2484, vector globaldef2488, entity globaldef2492) func303;

// function func303
// function number 303 begins at statement 8876
/*
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	319	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6859	7	0
 * OP_CALL2	503	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6853	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6854	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6855	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6856	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6857	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	6858	7	0
 * OP_CALL2	500	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef2484, vector globaldef2488, entity globaldef2492) func303 = {

   globaldef479 (MSG_BROADCAST,SVC_TEMP);
   globaldef479 (MSG_BROADCAST,TE_LIGHTNING2);
   globaldef486 (MSG_BROADCAST,globaldef2492);
   globaldef483 (MSG_BROADCAST,globaldef2484);
   globaldef483 (MSG_BROADCAST,globaldef2486);
   globaldef483 (MSG_BROADCAST,globaldef2487);
   globaldef483 (MSG_BROADCAST,globaldef2488);
   globaldef483 (MSG_BROADCAST,globaldef2490);
   globaldef483 (MSG_BROADCAST,globaldef2491);

};

void () func304;

// function func304
// function number 304 begins at statement 8904
/*
 * OP_ADDRESS	28	133	6861
 * OP_LOAD_F	28	133	6862
 * OP_BITOR	6862	339	6863
 * OP_STOREP_F	6863	6861	0
 * OP_DONE	0	0	0
 */

void () func304 = {

   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);

};
float globaldef2494 /* = 1.000 */;
float globaldef2495 /* = 20.000 */;
float globaldef2496 /* = 200.000 */;
float globaldef2497 /* = 200.000 */;

void (float globaldef2529, float globaldef2530, float globaldef2531) func326;

void () func333;

void () func325;

void () func305;

// function func305
// function number 305 begins at statement 8909
/*
 * OP_STATE	213	6872	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	214	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func305 = [ 0.000, globaldef2502 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,TRUE);
   globaldef2499 ();

};

void () func306;

// function func306
// function number 306 begins at statement 8916
/*
 * OP_STATE	214	6873	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func306 = [ 1.000, globaldef2503 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func307;

// function func307
// function number 307 begins at statement 8923
/*
 * OP_STATE	216	6874	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func307 = [ 2.000, globaldef2504 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func308;

// function func308
// function number 308 begins at statement 8930
/*
 * OP_STATE	228	6875	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func308 = [ 3.000, globaldef2505 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func309;

// function func309
// function number 309 begins at statement 8937
/*
 * OP_STATE	229	6876	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func309 = [ 4.000, globaldef2506 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func310;

// function func310
// function number 310 begins at statement 8944
/*
 * OP_STATE	230	6877	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_CALL0	6870	0	0
 * OP_DONE	0	0	0
 */

void () func310 = [ 5.000, globaldef2507 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();
   globaldef2500 ();

};

void () func311;

// function func311
// function number 311 begins at statement 8952
/*
 * OP_STATE	231	6878	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func311 = [ 6.000, globaldef2508 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func312;

// function func312
// function number 312 begins at statement 8959
/*
 * OP_STATE	232	6879	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func312 = [ 7.000, globaldef2509 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func313;

// function func313
// function number 313 begins at statement 8966
/*
 * OP_STATE	217	6880	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func313 = [ 8.000, globaldef2510 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func314;

// function func314
// function number 314 begins at statement 8973
/*
 * OP_STATE	234	6881	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func314 = [ 9.000, globaldef2511 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func315;

// function func315
// function number 315 begins at statement 8980
/*
 * OP_STATE	235	6882	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_DONE	0	0	0
 */

void () func315 = [ 10.000, globaldef2512 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();

};

void () func316;

// function func316
// function number 316 begins at statement 8987
/*
 * OP_STATE	236	6871	0
 * OP_STORE_V	305	4	0
 * OP_STORE_V	235	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_CALL0	6869	0	0
 * OP_CALL0	6870	0	0
 * OP_DONE	0	0	0
 */

void () func316 = [ 11.000, globaldef2501 ] {

   globaldef2498 (globaldef288,MOVETYPE_BOUNCE,FALSE);
   globaldef2499 ();
   globaldef2500 ();

};

void () func317;

// function func317
// function number 317 begins at statement 8995
/*
 * OP_STATE	791	6884	0
 * OP_DONE	0	0	0
 */

void () func317 = [ 12.000, globaldef2514 ] {


};

void () func318;

// function func318
// function number 318 begins at statement 8997
/*
 * OP_STATE	792	6885	0
 * OP_DONE	0	0	0
 */

void () func318 = [ 13.000, globaldef2515 ] {


};

void () func319;

// function func319
// function number 319 begins at statement 8999
/*
 * OP_STATE	5693	6886	0
 * OP_DONE	0	0	0
 */

void () func319 = [ 14.000, globaldef2516 ] {


};

void () func320;

// function func320
// function number 320 begins at statement 9001
/*
 * OP_STATE	765	6871	0
 * OP_DONE	0	0	0
 */

void () func320 = [ 15.000, globaldef2501 ] {


};

void () func321;

// function func321
// function number 321 begins at statement 9003
/*
 * OP_STATE	218	6888	0
 * OP_STORE_V	765	4	0
 * OP_STORE_V	231	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_ADDRESS	28	113	6889
 * OP_STOREP_V	286	6889	0
 * OP_DONE	0	0	0
 */

void () func321 = [ 16.000, globaldef2518 ] {

   globaldef2498 (globaldef748,MOVETYPE_TOSS,FALSE);
   self.velocity = VEC_ORIGIN;

};

void () func322;

// function func322
// function number 322 begins at statement 9011
/*
 * OP_STATE	6892	6893	0
 * OP_STORE_V	235	4	0
 * OP_STORE_V	229	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_DONE	0	0	0
 */

void () func322 = [ 17.000, globaldef2520 ] {

   globaldef2498 (MOVETYPE_BOUNCE,MOVETYPE_STEP,FALSE);

};
float globaldef2519 /* = 17.000 */;

void () func323;

// function func323
// function number 323 begins at statement 9017
/*
 * OP_STATE	6133	6894	0
 * OP_STORE_V	230	4	0
 * OP_STORE_V	216	7	0
 * OP_STORE_V	213	10	0
 * OP_CALL3	6868	0	0
 * OP_DONE	0	0	0
 */

void () func323 = [ 18.000, globaldef2521 ] {

   globaldef2498 (MOVETYPE_FLY,FL_SWIM,FALSE);

};

void () func324;

// function func324
// function number 324 begins at statement 9023
/*
 * OP_STATE	6895	6896	0
 * OP_DONE	0	0	0
 */

void () func324 = [ 19.000, globaldef2523 ] {


};
float globaldef2522 /* = 19.000 */;

void () func332;

// function func325
// function number 325 begins at statement 9025
/*
 * OP_CALL0	457	0	0
 * OP_GT	1	3036	6900
 * OP_IFNOT	6900	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	6901	6897	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	6897	1	6904
 * OP_STORE_F	6904	6897	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	6898	1	6905
 * OP_STORE_F	6905	6898	0
 * OP_LOAD_V	28	105	6906
 * OP_STORE_V	6906	4	0
 * OP_LOAD_V	28	105	6909
 * OP_MUL_VF	6897	6867	6912
 * OP_ADD_V	6909	6912	6915
 * OP_STORE_V	6915	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_LOAD_V	28	105	6918
 * OP_STORE_V	6918	4	0
 * OP_STORE_V	71	7	0
 * OP_STORE_V	28	10	0
 * OP_CALL3	6852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	6641	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	6860	0	0
 * OP_LOAD_V	28	105	6921
 * OP_STORE_V	6921	4	0
 * OP_MUL_VF	6897	229	6924
 * OP_ADD_V	71	6924	6927
 * OP_STORE_V	6927	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	2323	13	0
 * OP_CALL4	5802	0	0
 * OP_DONE	0	0	0
 */

void () func325 = {

   local vector globaldef2524;

   if ( (globaldef440 () > 0.100) ) {

      return ;

   }
   globaldef2524 = globaldef2528;
   globaldef2524_x = (globaldef2524_x + globaldef440 ());
   globaldef2526 = (globaldef2526 + globaldef440 ());
   globaldef449 (self.origin,(self.origin + (globaldef2524 * globaldef2497)),TRUE,self);
   globaldef2483 (self.origin,trace_endpos,self);
   sound (self,CHAN_WEAPON,globaldef2386,TRUE,ATTN_NORM);
   globaldef2493 ();
   globaldef2152 (self.origin,(trace_endpos + (globaldef2524 * MOVETYPE_STEP)),self,globaldef1384);

};
vector globaldef2528 /* = '-0.500 -0.500 -0.700' */;

// function func326
// function number 326 begins at statement 9066
/*
 * OP_STORE_F	235	6936	0
 * OP_GT	6936	213	6937
 * OP_IFNOT	6937	23	0
 * OP_LOAD_V	28	105	6938
 * OP_STORE_V	6938	6933	0
 * OP_SUB_F	6933	6930	6941
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	6930	6942
 * OP_MUL_F	6942	216	6943
 * OP_ADD_F	6941	6943	6944
 * OP_STORE_F	6944	6933	0
 * OP_SUB_F	6934	6930	6945
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	6930	6946
 * OP_MUL_F	6946	216	6947
 * OP_ADD_F	6945	6947	6948
 * OP_STORE_F	6948	6934	0
 * OP_STORE_V	6933	4	0
 * OP_STORE_V	6949	7	0
 * OP_STORE_V	219	10	0
 * OP_STORE_V	6931	13	0
 * OP_CALL4	6843	0	0
 * OP_SUB_F	6936	214	6952
 * OP_STORE_F	6952	6936	0
 * OP_GOTO	-23	0	0
 * OP_IFNOT	6932	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6642	10	0
 * OP_STORE_V	5599	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef2529, float globaldef2530, float globaldef2531) func326 = {

   local vector globaldef2532;
   local float globaldef2536;

   globaldef2536 = MOVETYPE_BOUNCE;
   while ( (globaldef2536 > FALSE) ) {

      globaldef2532 = self.origin;
      globaldef2532_x = ((globaldef2532_x - globaldef2529) + ((globaldef440 () * globaldef2529) * FL_SWIM));
      globaldef2534 = ((globaldef2534 - globaldef2529) + ((globaldef440 () * globaldef2529) * FL_SWIM));
      globaldef2472 (globaldef2532,globaldef2537,FL_MONSTER,globaldef2530);
      globaldef2536 = (globaldef2536 - TRUE);

   }
   if ( globaldef2531 ) {

      sound (self,CHAN_VOICE,globaldef2387,globaldef2123,ATTN_NORM);

   }

};
vector globaldef2537 /* = '0.000 0.000 -300.000' */;
float (entity globaldef2539) func327;

// function func327
// function number 327 begins at statement 9099
/*
 * OP_LOAD_ENT	6954	423	6961
 * OP_LOAD_V	6961	105	6962
 * OP_STORE_V	6962	6958	0
 * OP_ADD_F	6960	219	6965
 * OP_STORE_F	6965	6960	0
 * OP_STORE_V	6958	6955	0
 * OP_ADD_F	6957	6865	6966
 * OP_STORE_F	6966	6957	0
 * OP_STORE_V	6958	4	0
 * OP_STORE_V	6955	7	0
 * OP_STORE_V	214	10	0
 * OP_LOAD_ENT	28	423	6967
 * OP_STORE_V	6967	13	0
 * OP_CALL4	466	0	0
 * OP_IFNOT	80	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	70	214	6968
 * OP_SUB_F	73	6960	6969
 * OP_GT	6969	6864	6970
 * OP_OR	6968	6970	6971
 * OP_IFNOT	6971	5	0
 * OP_LOAD_ENT	6954	423	6972
 * OP_LOAD_F	6972	108	6973
 * OP_SUB_F	73	6973	6974
 * OP_RETURN	6974	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef2539) func327 = {

   local vector globaldef2540;
   local vector globaldef2544;

   globaldef2544 = globaldef2539.globaldef406.origin;
   globaldef2547 = (globaldef2547 + FL_MONSTER);
   globaldef2540 = globaldef2544;
   globaldef2543 = (globaldef2543 + globaldef2495);
   globaldef449 (globaldef2544,globaldef2540,TRUE,self.globaldef406);
   if ( trace_inwater ) {

      return ( FALSE );

   }
   if ( ((trace_fraction == TRUE) || ((globaldef50 - globaldef2547) > globaldef2494)) ) {

      return ( (globaldef50 - globaldef2539.globaldef406.globaldef86) );

   }
   return ( FALSE );

};
float (float globaldef2549) func328;

// function func328
// function number 328 begins at statement 9126
/*
 * OP_GE	6976	1298	6977
 * OP_IFNOT	6977	4	0
 * OP_SUB_F	6976	1298	6978
 * OP_STORE_F	6978	6976	0
 * OP_GOTO	-4	0	0
 * OP_LT	6976	213	6979
 * OP_IFNOT	6979	4	0
 * OP_ADD_F	6976	1298	6980
 * OP_STORE_F	6980	6976	0
 * OP_GOTO	-4	0	0
 * OP_RETURN	6976	0	0
 * OP_DONE	0	0	0
 */
float (float globaldef2549) func328 = {

   while ( (globaldef2549 >= globaldef1198) ) {

      globaldef2549 = (globaldef2549 - globaldef1198);

   }
   while ( (globaldef2549 < FALSE) ) {

      globaldef2549 = (globaldef2549 + globaldef1198);

   }
   return ( globaldef2549 );

};

void (entity globaldef2551) func329;

// function func329
// function number 329 begins at statement 9138
/*
 * OP_LOAD_F	6982	119	6986
 * OP_STORE_V	6986	4	0
 * OP_CALL1	6975	0	0
 * OP_STORE_F	1	6984	0
 * OP_LOAD_ENT	6982	423	6987
 * OP_LOAD_F	6987	119	6988
 * OP_STORE_V	6988	4	0
 * OP_CALL1	6975	0	0
 * OP_STORE_F	1	6985	0
 * OP_GT	6984	6985	6989
 * OP_IFNOT	6989	13	0
 * OP_SUB_F	6984	6985	6990
 * OP_LT	6990	1296	6991
 * OP_IFNOT	6991	5	0
 * OP_SUB_F	6985	6984	6992
 * OP_DIV_F	6992	217	6993
 * OP_STORE_F	6993	6983	0
 * OP_GOTO	5	0	0
 * OP_SUB_F	1298	6984	6994
 * OP_ADD_F	6994	6985	6995
 * OP_DIV_F	6995	217	6996
 * OP_STORE_F	6996	6983	0
 * OP_GOTO	12	0	0
 * OP_SUB_F	6985	6984	6997
 * OP_LT	6997	1296	6998
 * OP_IFNOT	6998	5	0
 * OP_SUB_F	6985	6984	6999
 * OP_DIV_F	6999	217	7000
 * OP_STORE_F	7000	6983	0
 * OP_GOTO	5	0	0
 * OP_ADD_F	7001	6985	7002
 * OP_SUB_F	7002	6984	7003
 * OP_DIV_F	7003	217	7004
 * OP_STORE_F	7004	6983	0
 * OP_ADDRESS	28	118	7005
 * OP_STOREP_F	213	7005	0
 * OP_ADDRESS	28	120	7006
 * OP_STOREP_F	213	7006	0
 * OP_ADDRESS	28	122	7007
 * OP_STOREP_F	213	7007	0
 * OP_ADDRESS	28	123	7008
 * OP_LOAD_F	28	123	7009
 * OP_MUL_F	7009	3263	7010
 * OP_ADD_F	7010	6983	7011
 * OP_STOREP_F	7011	7008	0
 * OP_ADDRESS	28	124	7012
 * OP_STOREP_F	213	7012	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2551) func329 = {

   local float globaldef2552;
   local float globaldef2553;
   local float globaldef2554;

   globaldef2553 = globaldef2548 (globaldef2551.globaldef97);
   globaldef2554 = globaldef2548 (globaldef2551.globaldef406.globaldef97);
   if ( (globaldef2553 > globaldef2554) ) {

      if ( ((globaldef2553 - globaldef2554) < globaldef1197) ) {

         globaldef2552 = ((globaldef2554 - globaldef2553) / FL_CLIENT);

      } else {

         globaldef2552 = (((globaldef1198 - globaldef2553) + globaldef2554) / FL_CLIENT);

      }

   } else {

      if ( ((globaldef2554 - globaldef2553) < globaldef1197) ) {

         globaldef2552 = ((globaldef2554 - globaldef2553) / FL_CLIENT);

      } else {

         globaldef2552 = (((globaldef2555 + globaldef2554) - globaldef2553) / FL_CLIENT);

      }

   }
   self.globaldef96 = FALSE;
   self.globaldef98 = FALSE;
   self.globaldef100 = FALSE;
   self.globaldef101 = ((self.globaldef101 * globaldef1552) + globaldef2552);
   self.globaldef102 = FALSE;

};
float globaldef2555 /* = -360.000 */;

void () func330;

// function func330
// function number 330 begins at statement 9186
/*
 * OP_STORE_V	28	4	0
 * OP_CALL1	6953	0	0
 * OP_STORE_F	1	7014	0
 * OP_IFNOT	7014	23	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	399	7018
 * OP_STORE_V	7018	7	0
 * OP_CALL2	454	0	0
 * OP_LOAD_ENT	28	423	7019
 * OP_LOAD_V	7019	105	7020
 * OP_STORE_V	7020	7015	0
 * OP_ADD_F	7017	7014	7023
 * OP_STORE_F	7023	7017	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	7015	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	28	118	7024
 * OP_STOREP_F	213	7024	0
 * OP_ADDRESS	28	119	7025
 * OP_LOAD_ENT	28	423	7026
 * OP_LOAD_F	7026	119	7027
 * OP_STOREP_F	7027	7025	0
 * OP_ADDRESS	28	120	7028
 * OP_STOREP_F	213	7028	0
 * OP_CALL0	6883	0	0
 * OP_GOTO	6	0	0
 * OP_ADDRESS	28	150	7029
 * OP_ADD_F	31	3036	7030
 * OP_STOREP_F	7030	7029	0
 * OP_ADDRESS	28	148	7031
 * OP_STOREP_FNC	7013	7031	0
 * OP_DONE	0	0	0
 */

void () func330 = {

   local float globaldef2557;
   local vector globaldef2558;

   globaldef2557 = globaldef2538 (self);
   if ( globaldef2557 ) {

      setmodel (self,self.globaldef382);
      globaldef2558 = self.globaldef406.origin;
      globaldef2561 = (globaldef2561 + globaldef2557);
      setorigin (self,globaldef2558);
      self.globaldef96 = FALSE;
      self.globaldef97 = self.globaldef406.globaldef97;
      self.globaldef98 = FALSE;
      globaldef2513 ();

   } else {

      self.nextthink = (time + 0.100);
      self.think = globaldef2556;

   }

};

void () func331;

// function func331
// function number 331 begins at statement 9218
/*
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () func331 = {

   remove (self);

};

// function func332
// function number 332 begins at statement 9221
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	348	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	150	7033
 * OP_ADD_F	31	3036	7034
 * OP_STOREP_F	7034	7033	0
 * OP_LOAD_F	28	426	7035
 * OP_LE	7035	213	7036
 * OP_IFNOT	7036	4	0
 * OP_ADDRESS	28	148	7037
 * OP_STOREP_FNC	7032	7037	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	148	7038
 * OP_STOREP_FNC	7013	7038	0
 * OP_DONE	0	0	0
 */

void () func332 = {

   setmodel (self,string_null);
   self.nextthink = (time + 0.100);
   if ( (self.cnt <= FALSE) ) {

      self.think = globaldef2562;

   } else {

      self.think = globaldef2556;

   }

};

// function func333
// function number 333 begins at statement 9236
/*
 * OP_ADDRESS	28	426	7046
 * OP_LOAD_F	28	426	7047
 * OP_SUB_F	7047	214	7048
 * OP_STOREP_F	7048	7046	0
 * OP_LOAD_F	28	426	7049
 * OP_LE	7049	213	7050
 * OP_IFNOT	7050	3	0
 * OP_CALL0	6887	0	0
 * OP_GOTO	27	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	6953	0	0
 * OP_STORE_F	1	7039	0
 * OP_IFNOT	7039	22	0
 * OP_LOAD_ENT	28	423	7051
 * OP_LOAD_V	7051	105	7052
 * OP_STORE_V	7052	7040	0
 * OP_ADD_F	7042	7039	7055
 * OP_STORE_F	7055	7042	0
 * OP_LOAD_V	28	105	7056
 * OP_SUB_V	7040	7056	7059
 * OP_STORE_V	7059	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	6866	7062
 * OP_IFNOT	7062	3	0
 * OP_CALL0	6887	0	0
 * OP_GOTO	8	0	0
 * OP_ADDRESS	28	113	7063
 * OP_LOAD_V	28	105	7066
 * OP_SUB_V	7040	7066	7069
 * OP_MUL_VF	7069	235	7072
 * OP_STOREP_V	7072	7063	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	6981	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	6887	0	0
 * OP_DONE	0	0	0
 */

void () func333 = {

   local float globaldef2563;
   local vector globaldef2564;
   local vector globaldef2568;

   self.cnt = (self.cnt - TRUE);
   if ( (self.cnt <= FALSE) ) {

      globaldef2517 ();

   } else {

      globaldef2563 = globaldef2538 (self);
      if ( globaldef2563 ) {

         globaldef2564 = self.globaldef406.origin;
         globaldef2567 = (globaldef2567 + globaldef2563);
         if ( (vlen ((globaldef2564 - self.origin)) > globaldef2496) ) {

            globaldef2517 ();

         } else {

            self.velocity = ((globaldef2564 - self.origin) * MOVETYPE_BOUNCE);
            globaldef2550 (self);

         }

      } else {

         globaldef2517 ();

      }

   }

};

void (entity globaldef2573) func334;

// function func334
// function number 334 begins at statement 9272
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7078	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7077	0
 * OP_IFNOT	7077	17	0
 * OP_LOAD_ENT	7077	423	7079
 * OP_EQ_E	7079	7076	7080
 * OP_IFNOT	7080	8	0
 * OP_ADDRESS	7077	426	7081
 * OP_STOREP_F	213	7081	0
 * OP_ADDRESS	7077	150	7082
 * OP_ADD_F	31	3036	7083
 * OP_STOREP_F	7083	7082	0
 * OP_ADDRESS	7077	148	7084
 * OP_STOREP_FNC	6887	7084	0
 * OP_STORE_V	7077	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7078	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7077	0
 * OP_GOTO	-16	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2573) func334 = {

   local entity globaldef2574;

   globaldef2574 = find (world,classname,globaldef2575);
   while ( globaldef2574 ) {

      if ( (globaldef2574.globaldef406 == globaldef2573) ) {

         globaldef2574.cnt = FALSE;
         globaldef2574.nextthink = (time + 0.100);
         globaldef2574.think = globaldef2517;

      }
      globaldef2574 = find (globaldef2574,classname,globaldef2575);

   }

};

void (entity globaldef2577, float globaldef2578) func335;

// function func335
// function number 335 begins at statement 9295
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	7088	0
 * OP_ADDRESS	7088	129	7093
 * OP_STOREP_S	7078	7093	0
 * OP_ADDRESS	7088	103	7094
 * OP_STOREP_F	233	7094	0
 * OP_ADDRESS	7088	104	7095
 * OP_STOREP_F	237	7095	0
 * OP_ADDRESS	7088	423	7096
 * OP_STOREP_ENT	7086	7096	0
 * OP_ADDRESS	7088	448	7097
 * OP_STOREP_F	213	7097	0
 * OP_ADDRESS	7088	399	7098
 * OP_STOREP_S	6639	7098	0
 * OP_STORE_V	7088	4	0
 * OP_STORE_V	348	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	7088	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	7088	150	7099
 * OP_ADD_F	31	3036	7100
 * OP_STOREP_F	7100	7099	0
 * OP_ADDRESS	7088	148	7101
 * OP_STOREP_FNC	7013	7101	0
 * OP_ADDRESS	7088	426	7102
 * OP_MUL_F	7087	235	7103
 * OP_STOREP_F	7103	7102	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2577, float globaldef2578) func335 = {

   local entity globaldef2579;
   local vector globaldef2580;
   local float globaldef2584;

   globaldef2579 = spawn ();
   globaldef2579.classname = globaldef2575;
   globaldef2579.movetype = MOVETYPE_NOCLIP;
   globaldef2579.solid = SOLID_NOT;
   globaldef2579.globaldef406 = globaldef2577;
   globaldef2579.globaldef431 = FALSE;
   globaldef2579.globaldef382 = globaldef2384;
   setmodel (globaldef2579,string_null);
   globaldef438 (globaldef2579,VEC_ORIGIN,VEC_ORIGIN);
   globaldef2579.nextthink = (time + 0.100);
   globaldef2579.think = globaldef2556;
   globaldef2579.cnt = (globaldef2578 * MOVETYPE_BOUNCE);

};

void (string globaldef2586) func336;

// function func336
// function number 336 begins at statement 9325
/*
 * OP_STORE_V	7105	4	0
 * OP_CALL1	472	0	0
 * OP_DONE	0	0	0
 */

void (string globaldef2586) func336 = {

   globaldef455 (globaldef2586);

};
void globaldef2587;
.float field343;
.float field343;
.entity field344;
.vector field345;
.float field348;
.vector field349;
float globaldef2600 /* = 640.000 */;
float globaldef2601 /* = 20.000 */;
float globaldef2602 /* = 25.000 */;
float globaldef2603 /* = 30.000 */;
float globaldef2604 /* = 40.000 */;
float globaldef2605 /* = 0.000 */;
float globaldef2606 /* = 1.000 */;
float globaldef2607 /* = 2.000 */;
float globaldef2608 /* = 3.000 */;
float globaldef2609 /* = 0.000 */;

void () func337;

// function func337
// function number 337 begins at statement 9328
/*
 * OP_STORE_V	7130	4	0
 * OP_CALL1	7104	0	0
 * OP_EQ_F	7128	7124	7131
 * OP_IFNOT	7131	5	0
 * OP_STORE_F	7125	7128	0
 * OP_STORE_V	7132	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	16	0	0
 * OP_EQ_F	7128	7125	7133
 * OP_IFNOT	7133	5	0
 * OP_STORE_F	7126	7128	0
 * OP_STORE_V	7134	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	7128	7126	7135
 * OP_IFNOT	7135	5	0
 * OP_STORE_F	7127	7128	0
 * OP_STORE_V	7136	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	4	0	0
 * OP_STORE_F	7124	7128	0
 * OP_STORE_V	7137	4	0
 * OP_CALL1	7104	0	0
 * OP_DONE	0	0	0
 */

void () func337 = {

   globaldef2585 (globaldef2611);
   if ( (globaldef2609 == globaldef2605) ) {

      globaldef2609 = globaldef2606;
      globaldef2585 (globaldef2612);

   } else {

      if ( (globaldef2609 == globaldef2606) ) {

         globaldef2609 = globaldef2607;
         globaldef2585 (globaldef2613);

      } else {

         if ( (globaldef2609 == globaldef2607) ) {

            globaldef2609 = globaldef2608;
            globaldef2585 (globaldef2614);

         } else {

            globaldef2609 = globaldef2605;
            globaldef2585 (globaldef2615);

         }

      }

   }

};
string globaldef2611 /* = "camping mode = " */;
string globaldef2612 /* = "detect only\n" */;
string globaldef2613 /* = "detect & punish\n" */;
string globaldef2614 /* = "detect & punish severe\n" */;
string globaldef2615 /* = "no detection\n" */;

void (entity globaldef2617) func338;

// function func338
// function number 338 begins at statement 9352
/*
 * OP_ADDRESS	7139	7107	7140
 * OP_LOAD_V	7139	105	7143
 * OP_STOREP_V	7143	7140	0
 * OP_ADDRESS	7139	7111	7146
 * OP_LOAD_V	7139	117	7149
 * OP_STOREP_V	7149	7146	0
 * OP_ADDRESS	7139	7115	7152
 * OP_ADD_F	31	214	7153
 * OP_STOREP_F	7153	7152	0
 * OP_ADDRESS	7139	7116	7154
 * OP_STOREP_F	213	7154	0
 * OP_ADDRESS	7139	7117	7155
 * OP_STOREP_ENT	7139	7155	0
 * OP_ADDRESS	7139	206	7156
 * OP_STOREP_S	348	7156	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2617) func338 = {

   globaldef2617.globaldef2588 = globaldef2617.origin;
   globaldef2617.globaldef2592 = globaldef2617.angles;
   globaldef2617.globaldef2596 = (time + TRUE);
   globaldef2617.globaldef2597 = FALSE;
   globaldef2617.globaldef2598 = globaldef2617;
   globaldef2617.message = string_null;

};
entity (entity globaldef2619, string globaldef2620) func339;

// function func339
// function number 339 begins at statement 9368
/*
 * OP_ADDRESS	7158	450	7163
 * OP_STOREP_F	7119	7163	0
 * OP_STORE_ENT	7158	7161	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7159	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7160	0
 * OP_IFNOT	7160	31	0
 * OP_LOAD_V	7160	105	7164
 * OP_LOAD_V	7158	105	7167
 * OP_SUB_V	7164	7167	7170
 * OP_STORE_V	7170	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	7162	0
 * OP_LOAD_F	7158	450	7173
 * OP_LT	7162	7173	7174
 * OP_IFNOT	7174	16	0
 * OP_LOAD_V	7158	105	7175
 * OP_LOAD_V	7158	166	7178
 * OP_ADD_V	7175	7178	7181
 * OP_STORE_V	7181	4	0
 * OP_LOAD_V	7160	105	7184
 * OP_ADD_V	7184	5392	7187
 * OP_STORE_V	7187	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	7158	13	0
 * OP_CALL4	466	0	0
 * OP_GE	70	214	7190
 * OP_IFNOT	7190	4	0
 * OP_ADDRESS	7158	450	7191
 * OP_STOREP_F	7162	7191	0
 * OP_STORE_ENT	7160	7161	0
 * OP_STORE_V	7160	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7159	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7160	0
 * OP_GOTO	-30	0	0
 * OP_RETURN	7161	0	0
 * OP_DONE	0	0	0
 */
entity (entity globaldef2619, string globaldef2620) func339 = {

   local entity globaldef2621;
   local entity globaldef2622;
   local float globaldef2623;

   globaldef2619.globaldef433 = globaldef2600;
   globaldef2622 = globaldef2619;
   globaldef2621 = find (world,classname,globaldef2620);
   while ( globaldef2621 ) {

      globaldef2623 = vlen ((globaldef2621.origin - globaldef2619.origin));
      if ( (globaldef2623 < globaldef2619.globaldef433) ) {

         globaldef449 ((globaldef2619.origin + globaldef2619.globaldef144),(globaldef2621.origin + globaldef2037),TRUE,globaldef2619);
         if ( (trace_fraction >= TRUE) ) {

            globaldef2619.globaldef433 = globaldef2623;
            globaldef2622 = globaldef2621;

         }

      }
      globaldef2621 = find (globaldef2621,classname,globaldef2620);

   }
   return ( globaldef2622 );

};

void (entity globaldef2625) func340;

// function func340
// function number 340 begins at statement 9409
/*
 * OP_STORE_F	7119	7194	0
 * OP_ADDRESS	7193	206	7196
 * OP_STOREP_S	348	7196	0
 * OP_ADDRESS	7193	7117	7197
 * OP_STOREP_ENT	7193	7197	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4995	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7198
 * OP_LT	7198	7194	7199
 * OP_IFNOT	7199	7	0
 * OP_LOAD_F	7193	450	7200
 * OP_STORE_F	7200	7194	0
 * OP_ADDRESS	7193	206	7201
 * OP_STOREP_S	7202	7201	0
 * OP_ADDRESS	7193	7117	7203
 * OP_STOREP_ENT	7195	7203	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	5033	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7204
 * OP_LT	7204	7194	7205
 * OP_IFNOT	7205	7	0
 * OP_LOAD_F	7193	450	7206
 * OP_STORE_F	7206	7194	0
 * OP_ADDRESS	7193	206	7207
 * OP_STOREP_S	7208	7207	0
 * OP_ADDRESS	7193	7117	7209
 * OP_STOREP_ENT	7195	7209	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4476	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7210
 * OP_LT	7210	7194	7211
 * OP_IFNOT	7211	7	0
 * OP_LOAD_F	7193	450	7212
 * OP_STORE_F	7212	7194	0
 * OP_ADDRESS	7193	206	7213
 * OP_STOREP_S	7214	7213	0
 * OP_ADDRESS	7193	7117	7215
 * OP_STOREP_ENT	7195	7215	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4472	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7216
 * OP_LT	7216	7194	7217
 * OP_IFNOT	7217	7	0
 * OP_LOAD_F	7193	450	7218
 * OP_STORE_F	7218	7194	0
 * OP_ADDRESS	7193	206	7219
 * OP_STOREP_S	7220	7219	0
 * OP_ADDRESS	7193	7117	7221
 * OP_STOREP_ENT	7195	7221	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4619	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7222
 * OP_LT	7222	7194	7223
 * OP_IFNOT	7223	7	0
 * OP_LOAD_F	7193	450	7224
 * OP_STORE_F	7224	7194	0
 * OP_ADDRESS	7193	206	7225
 * OP_STOREP_S	7226	7225	0
 * OP_ADDRESS	7193	7117	7227
 * OP_STOREP_ENT	7195	7227	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4629	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7228
 * OP_LT	7228	7194	7229
 * OP_IFNOT	7229	7	0
 * OP_LOAD_F	7193	450	7230
 * OP_STORE_F	7230	7194	0
 * OP_ADDRESS	7193	206	7231
 * OP_STOREP_S	7232	7231	0
 * OP_ADDRESS	7193	7117	7233
 * OP_STOREP_ENT	7195	7233	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4639	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7234
 * OP_LT	7234	7194	7235
 * OP_IFNOT	7235	7	0
 * OP_LOAD_F	7193	450	7236
 * OP_STORE_F	7236	7194	0
 * OP_ADDRESS	7193	206	7237
 * OP_STOREP_S	7238	7237	0
 * OP_ADDRESS	7193	7117	7239
 * OP_STOREP_ENT	7195	7239	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4599	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7240
 * OP_LT	7240	7194	7241
 * OP_IFNOT	7241	7	0
 * OP_LOAD_F	7193	450	7242
 * OP_STORE_F	7242	7194	0
 * OP_ADDRESS	7193	206	7243
 * OP_STOREP_S	7244	7243	0
 * OP_ADDRESS	7193	7117	7245
 * OP_STOREP_ENT	7195	7245	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	5017	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7246
 * OP_LT	7246	7194	7247
 * OP_IFNOT	7247	7	0
 * OP_LOAD_F	7193	450	7248
 * OP_STORE_F	7248	7194	0
 * OP_ADDRESS	7193	206	7249
 * OP_STOREP_S	7250	7249	0
 * OP_ADDRESS	7193	7117	7251
 * OP_STOREP_ENT	7195	7251	0
 * OP_STORE_V	7193	4	0
 * OP_STORE_V	4998	7	0
 * OP_CALL2	7157	0	0
 * OP_STORE_ENT	1	7195	0
 * OP_LOAD_F	7193	450	7252
 * OP_LT	7252	7194	7253
 * OP_IFNOT	7253	7	0
 * OP_LOAD_F	7193	450	7254
 * OP_STORE_F	7254	7194	0
 * OP_ADDRESS	7193	206	7255
 * OP_STOREP_S	7256	7255	0
 * OP_ADDRESS	7193	7117	7257
 * OP_STOREP_ENT	7195	7257	0
 * OP_ADDRESS	7193	450	7258
 * OP_STOREP_F	7194	7258	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2625) func340 = {

   local float globaldef2626;
   local entity globaldef2627;

   globaldef2626 = globaldef2600;
   globaldef2625.message = string_null;
   globaldef2625.globaldef2598 = globaldef2625;
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1940);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2628;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1943);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2629;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1826);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2630;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1824);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2631;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1855);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2632;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1856);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2633;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1857);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2634;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1853);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2635;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1942);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2636;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2627 = globaldef2618 (globaldef2625,globaldef1941);
   if ( (globaldef2625.globaldef433 < globaldef2626) ) {

      globaldef2626 = globaldef2625.globaldef433;
      globaldef2625.message = globaldef2637;
      globaldef2625.globaldef2598 = globaldef2627;

   }
   globaldef2625.globaldef433 = globaldef2626;

};
string globaldef2628 /* = "Pentagram of Protection" */;
string globaldef2629 /* = "Quad Damage" */;
string globaldef2630 /* = "Red Armor" */;
string globaldef2631 /* = "Yellow Armor" */;
string globaldef2632 /* = "Rocket Launcher" */;
string globaldef2633 /* = "Grenade Launcher" */;
string globaldef2634 /* = "Thunderbolt" */;
string globaldef2635 /* = "Super Nailgun" */;
string globaldef2636 /* = "Biosuit" */;
string globaldef2637 /* = "Ring of Shadows" */;

void (vector globaldef3474) spawn_tfog;

void (vector globaldef3479, entity globaldef3483) spawn_tdeath;

void (entity globaldef2641) func341;

// function func341
// function number 341 begins at statement 9547
/*
 * OP_CALL0	2814	0	0
 * OP_STORE_ENT	1	7263	0
 * OP_STORE_F	213	7264	0
 * OP_LOAD_V	7263	105	7265
 * OP_LOAD_V	7262	7107	7268
 * OP_SUB_V	7265	7268	7271
 * OP_STORE_V	7271	4	0
 * OP_CALL1	462	0	0
 * OP_LT	1	7119	7274
 * OP_LT	7264	230	7275
 * OP_AND	7274	7275	7276
 * OP_IFNOT	7276	6	0
 * OP_CALL0	2814	0	0
 * OP_STORE_ENT	1	7263	0
 * OP_ADD_F	7264	214	7277
 * OP_STORE_F	7277	7264	0
 * OP_GOTO	-13	0	0
 * OP_LOAD_V	7262	105	7278
 * OP_STORE_V	7278	4	0
 * OP_CALL1	7259	0	0
 * OP_STORE_V	7262	4	0
 * OP_LOAD_V	7263	105	7281
 * OP_ADD_V	7281	2967	7284
 * OP_STORE_V	7284	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	7262	117	7287
 * OP_LOAD_V	7263	117	7290
 * OP_STOREP_V	7290	7287	0
 * OP_ADDRESS	7262	174	7293
 * OP_STOREP_F	214	7293	0
 * OP_ADDRESS	7262	113	7294
 * OP_STOREP_V	286	7294	0
 * OP_ADDRESS	7262	182	7297
 * OP_LOAD_F	7262	182	7298
 * OP_LOAD_F	7262	182	7299
 * OP_BITAND	7299	223	7300
 * OP_SUB_F	7298	7300	7301
 * OP_STOREP_F	7301	7297	0
 * OP_LOAD_V	7262	117	7302
 * OP_STORE_V	7302	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	7262	105	7305
 * OP_MUL_VF	59	2323	7308
 * OP_ADD_V	7305	7308	7311
 * OP_STORE_V	7311	4	0
 * OP_CALL1	7259	0	0
 * OP_LOAD_V	7262	105	7314
 * OP_STORE_V	7314	4	0
 * OP_STORE_V	7262	7	0
 * OP_CALL2	7260	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2641) func341 = {

   local entity globaldef2642;
   local float globaldef2643;

   globaldef2642 = globaldef1440 ();
   globaldef2643 = FALSE;
   while ( ((vlen ((globaldef2642.origin - globaldef2641.globaldef2588)) < globaldef2600) && (globaldef2643 < MOVETYPE_FLY)) ) {

      globaldef2642 = globaldef1440 ();
      globaldef2643 = (globaldef2643 + TRUE);

   }
   globaldef2638 (globaldef2641.origin);
   setorigin (globaldef2641,(globaldef2642.origin + '0.000 0.000 1.000'));
   globaldef2641.angles = globaldef2642.angles;
   globaldef2641.globaldef152 = TRUE;
   globaldef2641.velocity = VEC_ORIGIN;
   globaldef2641.globaldef160 = (globaldef2641.globaldef160 - (globaldef2641.globaldef160 & FL_ONGROUND));
   makevectors (globaldef2641.angles);
   globaldef2638 ((globaldef2641.origin + (v_forward * globaldef1384)));
   globaldef2639 (globaldef2641.origin,globaldef2641);

};

void (entity globaldef2645) func342;

// function func342
// function number 342 begins at statement 9598
/*
 * OP_LOAD_F	7318	152	7319
 * OP_GT	7319	235	7320
 * OP_IFNOT	7320	3	0
 * OP_ADDRESS	7318	152	7321
 * OP_STOREP_F	235	7321	0
 * OP_ADDRESS	7318	188	7322
 * OP_STOREP_F	213	7322	0
 * OP_ADDRESS	7318	380	7323
 * OP_STOREP_F	213	7323	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2645) func342 = {

   if ( (globaldef2645.globaldef130 > MOVETYPE_BOUNCE) ) {

      globaldef2645.globaldef130 = MOVETYPE_BOUNCE;

   }
   globaldef2645.globaldef166 = FALSE;
   globaldef2645.globaldef363 = FALSE;

};

void (entity globaldef2647) func343;

// function func343
// function number 343 begins at statement 9608
/*
 * OP_ADDRESS	7325	162	7326
 * OP_LOAD_F	7325	162	7327
 * OP_LOAD_F	7325	162	7328
 * OP_BITOR	255	256	7329
 * OP_BITOR	7329	257	7330
 * OP_BITOR	7330	258	7331
 * OP_BITOR	7331	259	7332
 * OP_BITOR	7332	260	7333
 * OP_BITOR	7333	262	7334
 * OP_BITOR	7334	263	7335
 * OP_BITOR	7335	264	7336
 * OP_BITOR	7336	265	7337
 * OP_BITAND	7328	7337	7338
 * OP_SUB_F	7327	7338	7339
 * OP_STOREP_F	7339	7326	0
 * OP_ADDRESS	7325	154	7340
 * OP_STOREP_F	253	7340	0
 * OP_ADDRESS	7325	157	7341
 * OP_STOREP_F	213	7341	0
 * OP_ADDRESS	7325	155	7342
 * OP_STOREP_S	6152	7342	0
 * OP_ADDRESS	7325	156	7343
 * OP_STOREP_F	213	7343	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2647) func343 = {

   globaldef2647.globaldef140 = (globaldef2647.globaldef140 - (globaldef2647.globaldef140 & (((((((((IT_SUPER_SHOTGUN | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_LIGHTNING) | IT_SHELLS) | IT_NAILS) | IT_ROCKETS) | IT_CELLS)));
   globaldef2647.globaldef132 = IT_AXE;
   globaldef2647.globaldef135 = FALSE;
   globaldef2647.globaldef133 = globaldef2222;
   globaldef2647.globaldef134 = FALSE;

};

void (entity globaldef2649) func344;

// function func344
// function number 344 begins at statement 9632
/*
 * OP_STORE_V	7345	4	0
 * OP_STORE_V	2019	7	0
 * OP_CALL2	7085	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2649) func344 = {

   globaldef2576 (globaldef2649,globaldef1337);

};

void (entity globaldef2651) func345;

// function func345
// function number 345 begins at statement 9636
/*
 * OP_STORE_V	7347	4	0
 * OP_STORE_V	3002	7	0
 * OP_CALL2	852	0	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	7349	0
 * OP_EQ_F	7128	7127	7350
 * OP_IFNOT	7350	23	0
 * OP_NOT_F	822	0	7351
 * OP_LT	7349	6277	7352
 * OP_AND	7351	7352	7353
 * OP_IFNOT	7353	4	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7344	0	0
 * OP_GOTO	15	0	0
 * OP_LT	7349	539	7354
 * OP_IFNOT	7354	4	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7317	0	0
 * OP_GOTO	10	0	0
 * OP_LT	7349	6280	7355
 * OP_IFNOT	7355	4	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7324	0	0
 * OP_GOTO	5	0	0
 * OP_LT	7349	214	7356
 * OP_IFNOT	7356	3	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7261	0	0
 * OP_GOTO	10	0	0
 * OP_NOT_F	822	0	7357
 * OP_LT	7349	539	7358
 * OP_AND	7357	7358	7359
 * OP_IFNOT	7359	4	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7344	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7261	0	0
 * OP_LOAD_S	7347	180	7360
 * OP_STORE_V	7360	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7361	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7362	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7363	4	0
 * OP_CALL1	7104	0	0
 * OP_LOAD_S	7347	206	7364
 * OP_NE_S	7364	348	7365
 * OP_IFNOT	7365	6	0
 * OP_STORE_V	7366	4	0
 * OP_CALL1	7104	0	0
 * OP_LOAD_S	7347	206	7367
 * OP_STORE_V	7367	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7347	4	0
 * OP_CALL1	7138	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2651) func345 = {

   local string globaldef2652;
   local float globaldef2653;

   centerprint (globaldef2651,"");
   globaldef2653 = globaldef440 ();
   if ( (globaldef2609 == globaldef2608) ) {

      if ( (!globaldef805 && (globaldef2653 < globaldef2243)) ) {

         globaldef2648 (globaldef2651);

      } else {

         if ( (globaldef2653 < globaldef522) ) {

            globaldef2644 (globaldef2651);

         } else {

            if ( (globaldef2653 < globaldef2244) ) {

               globaldef2646 (globaldef2651);

            } else {

               if ( (globaldef2653 < TRUE) ) {

                  globaldef2640 (globaldef2651);

               }

            }

         }

      }

   } else {

      if ( (!globaldef805 && (globaldef2653 < globaldef522)) ) {

         globaldef2648 (globaldef2651);

      } else {

         globaldef2640 (globaldef2651);

      }

   }
   globaldef2585 (globaldef2651.globaldef158);
   globaldef2585 (globaldef2654);
   globaldef2585 (globaldef2655);
   globaldef2585 (globaldef2656);
   if ( (globaldef2651.message != string_null) ) {

      globaldef2585 (globaldef2657);
      globaldef2585 (globaldef2651.message);

   }
   globaldef2585 (globaldef1354);
   globaldef2616 (globaldef2651);

};
string globaldef2654 /* = " is " */;
string globaldef2655 /* = "punished" */;
string globaldef2656 /* = " for camping" */;
string globaldef2657 /* = " near the " */;

void (entity globaldef2659) func346;

// function func346
// function number 346 begins at statement 9696
/*
 * OP_LOAD_F	7369	7116	7373
 * OP_EQ_F	7373	7120	7374
 * OP_IFNOT	7374	23	0
 * OP_LOAD_S	7369	180	7375
 * OP_STORE_V	7375	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7361	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7376	4	0
 * OP_CALL1	7104	0	0
 * OP_LOAD_S	7369	206	7377
 * OP_NE_S	7377	348	7378
 * OP_IFNOT	7378	6	0
 * OP_STORE_V	7366	4	0
 * OP_CALL1	7104	0	0
 * OP_LOAD_S	7369	206	7379
 * OP_STORE_V	7379	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	7104	0	0
 * OP_ADDRESS	7369	7116	7380
 * OP_LOAD_F	7369	7116	7381
 * OP_ADD_F	7381	3036	7382
 * OP_STOREP_F	7382	7380	0
 * OP_GOTO	57	0	0
 * OP_LOAD_F	7369	7116	7383
 * OP_EQ_F	7383	7121	7384
 * OP_IFNOT	7384	54	0
 * OP_LOAD_S	7369	180	7385
 * OP_STORE_V	7385	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	7361	4	0
 * OP_CALL1	7104	0	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	7371	0
 * OP_LT	7371	7386	7387
 * OP_IFNOT	7387	4	0
 * OP_STORE_V	7388	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	28	0	0
 * OP_LT	7371	7389	7390
 * OP_IFNOT	7390	4	0
 * OP_STORE_V	7391	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	23	0	0
 * OP_LT	7371	7392	7393
 * OP_IFNOT	7393	4	0
 * OP_STORE_V	7394	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	18	0	0
 * OP_LT	7371	7395	7396
 * OP_IFNOT	7396	4	0
 * OP_STORE_V	7397	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	13	0	0
 * OP_LT	7371	5599	7398
 * OP_IFNOT	7398	4	0
 * OP_STORE_V	7399	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	8	0	0
 * OP_LT	7371	7400	7401
 * OP_IFNOT	7401	4	0
 * OP_STORE_V	7402	4	0
 * OP_CALL1	7104	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	7403	4	0
 * OP_CALL1	7104	0	0
 * OP_LOAD_S	7369	206	7404
 * OP_NE_S	7404	348	7405
 * OP_IFNOT	7405	6	0
 * OP_STORE_V	7366	4	0
 * OP_CALL1	7104	0	0
 * OP_LOAD_S	7369	206	7406
 * OP_STORE_V	7406	4	0
 * OP_CALL1	7104	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	7104	0	0
 * OP_ADDRESS	7369	7116	7407
 * OP_LOAD_F	7369	7116	7408
 * OP_ADD_F	7408	3036	7409
 * OP_STOREP_F	7409	7407	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2659) func346 = {

   local string globaldef2660;
   local float globaldef2661;
   local float globaldef2662;

   if ( (globaldef2659.globaldef2597 == globaldef2601) ) {

      globaldef2585 (globaldef2659.globaldef158);
      globaldef2585 (globaldef2654);
      globaldef2585 (globaldef2663);
      if ( (globaldef2659.message != string_null) ) {

         globaldef2585 (globaldef2657);
         globaldef2585 (globaldef2659.message);

      }
      globaldef2585 (globaldef1354);
      globaldef2659.globaldef2597 = (globaldef2659.globaldef2597 + 0.100);

   } else {

      if ( (globaldef2659.globaldef2597 == globaldef2602) ) {

         globaldef2585 (globaldef2659.globaldef158);
         globaldef2585 (globaldef2654);
         globaldef2661 = globaldef440 ();
         if ( (globaldef2661 < globaldef2664) ) {

            globaldef2585 (globaldef2665);

         } else {

            if ( (globaldef2661 < globaldef2666) ) {

               globaldef2585 (globaldef2667);

            } else {

               if ( (globaldef2661 < globaldef2668) ) {

                  globaldef2585 (globaldef2669);

               } else {

                  if ( (globaldef2661 < globaldef2670) ) {

                     globaldef2585 (globaldef2671);

                  } else {

                     if ( (globaldef2661 < globaldef2123) ) {

                        globaldef2585 (globaldef2672);

                     } else {

                        if ( (globaldef2661 < globaldef2673) ) {

                           globaldef2585 (globaldef2674);

                        } else {

                           globaldef2585 (globaldef2675);

                        }

                     }

                  }

               }

            }

         }
         if ( (globaldef2659.message != string_null) ) {

            globaldef2585 (globaldef2657);
            globaldef2585 (globaldef2659.message);

         }
         globaldef2585 (globaldef1354);
         globaldef2659.globaldef2597 = (globaldef2659.globaldef2597 + 0.100);

      }

   }

};
string globaldef2663 /* = "suspected of camping" */;
float globaldef2664 /* = 0.140 */;
string globaldef2665 /* = "building a house" */;
float globaldef2666 /* = 0.280 */;
string globaldef2667 /* = "taking up permanent residence" */;
float globaldef2668 /* = 0.420 */;
string globaldef2669 /* = "fortifying his position" */;
float globaldef2670 /* = 0.560 */;
string globaldef2671 /* = "not able to break up camp" */;
string globaldef2672 /* = "saying 'hi' from his new home" */;
float globaldef2673 /* = 0.840 */;
string globaldef2674 /* = "holding a garage sale" */;
string globaldef2675 /* = "digging a trench" */;

void (entity globaldef2677) func347;

// function func347
// function number 347 begins at statement 9778
/*
 * OP_LOAD_F	7411	173	7412
 * OP_EQ_F	7412	7413	7414
 * OP_IFNOT	7414	6	0
 * OP_STORE_V	7411	4	0
 * OP_STORE_V	7415	7	0
 * OP_CALL2	852	0	0
 * OP_ADDRESS	7411	173	7416
 * OP_STOREP_F	213	7416	0
 * OP_LOAD_F	7411	7115	7417
 * OP_LT	7417	31	7418
 * OP_IFNOT	7418	73	0
 * OP_ADDRESS	7411	7115	7419
 * OP_ADD_F	31	214	7420
 * OP_STOREP_F	7420	7419	0
 * OP_EQ_F	7128	7124	7421
 * OP_IFNOT	7421	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	152	7422
 * OP_LE	7422	213	7423
 * OP_IFNOT	7423	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	7411	117	7424
 * OP_LOAD_V	7411	7111	7427
 * OP_NE_V	7424	7427	7430
 * OP_IFNOT	7430	27	0
 * OP_LOAD_V	7411	105	7431
 * OP_LOAD_V	7411	7107	7434
 * OP_SUB_V	7431	7434	7437
 * OP_STORE_V	7437	4	0
 * OP_CALL1	462	0	0
 * OP_LT	1	7119	7440
 * OP_IFNOT	7440	8	0
 * OP_ADDRESS	7411	7116	7441
 * OP_LOAD_F	7411	7116	7442
 * OP_STORE_V	7442	4	0
 * OP_CALL1	484	0	0
 * OP_ADD_F	1	214	7443
 * OP_STOREP_F	7443	7441	0
 * OP_GOTO	10	0	0
 * OP_ADDRESS	7411	7107	7444
 * OP_LOAD_V	7411	105	7447
 * OP_STOREP_V	7447	7444	0
 * OP_ADDRESS	7411	7116	7450
 * OP_STOREP_F	213	7450	0
 * OP_ADDRESS	7411	7117	7451
 * OP_STOREP_ENT	7411	7451	0
 * OP_ADDRESS	7411	206	7452
 * OP_STOREP_S	348	7452	0
 * OP_ADDRESS	7411	7111	7453
 * OP_LOAD_V	7411	117	7456
 * OP_STOREP_V	7456	7453	0
 * OP_LOAD_F	7411	7116	7459
 * OP_GE	7459	7120	7460
 * OP_IFNOT	7460	30	0
 * OP_LOAD_ENT	7411	7117	7461
 * OP_EQ_E	7461	7411	7462
 * OP_IFNOT	7462	10	0
 * OP_STORE_V	7411	4	0
 * OP_CALL1	7192	0	0
 * OP_LOAD_ENT	7411	7117	7463
 * OP_NE_E	7463	7411	7464
 * OP_IFNOT	7464	5	0
 * OP_ADDRESS	7411	7107	7465
 * OP_LOAD_ENT	7411	7117	7468
 * OP_LOAD_V	7468	105	7469
 * OP_STOREP_V	7469	7465	0
 * OP_STORE_V	7411	4	0
 * OP_CALL1	7368	0	0
 * OP_EQ_F	7128	7126	7472
 * OP_EQ_F	7128	7127	7473
 * OP_OR	7472	7473	7474
 * OP_IFNOT	7474	12	0
 * OP_LOAD_F	7411	7116	7475
 * OP_GE	7475	7122	7476
 * OP_IFNOT	7476	4	0
 * OP_STORE_V	7411	4	0
 * OP_STORE_V	7477	7	0
 * OP_CALL2	852	0	0
 * OP_LOAD_F	7411	7116	7478
 * OP_EQ_F	7478	7123	7479
 * OP_IFNOT	7479	3	0
 * OP_STORE_V	7411	4	0
 * OP_CALL1	7346	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2677) func347 = {

   if ( (globaldef2677.globaldef151 == globaldef2678) ) {

      centerprint (globaldef2677,globaldef2679);
      globaldef2677.globaldef151 = FALSE;

   }
   if ( (globaldef2677.globaldef2596 < time) ) {

      globaldef2677.globaldef2596 = (time + TRUE);
      if ( (globaldef2609 == globaldef2605) ) {

         return ;

      }
      if ( (self.globaldef130 <= FALSE) ) {

         return ;

      }
      if ( (globaldef2677.angles != globaldef2677.globaldef2592) ) {

         if ( (vlen ((globaldef2677.origin - globaldef2677.globaldef2588)) < globaldef2600) ) {

            globaldef2677.globaldef2597 = (globaldef467 (globaldef2677.globaldef2597) + TRUE);

         } else {

            globaldef2677.globaldef2588 = globaldef2677.origin;
            globaldef2677.globaldef2597 = FALSE;
            globaldef2677.globaldef2598 = globaldef2677;
            globaldef2677.message = string_null;

         }
         globaldef2677.globaldef2592 = globaldef2677.angles;

      }
      if ( (globaldef2677.globaldef2597 >= globaldef2601) ) {

         if ( (globaldef2677.globaldef2598 == globaldef2677) ) {

            globaldef2624 (globaldef2677);
            if ( (globaldef2677.globaldef2598 != globaldef2677) ) {

               globaldef2677.globaldef2588 = globaldef2677.globaldef2598.origin;

            }

         }
         globaldef2658 (globaldef2677);
         if ( ((globaldef2609 == globaldef2607) || (globaldef2609 == globaldef2608)) ) {

            if ( (globaldef2677.globaldef2597 >= globaldef2603) ) {

               centerprint (globaldef2677,globaldef2680);

            }
            if ( (globaldef2677.globaldef2597 == globaldef2604) ) {

               globaldef2650 (globaldef2677);

            }

         }

      }

   }

};
float globaldef2678 /* = 254.000 */;
string globaldef2679 /* = "\n\n\nThis server is running the\n\nOmicron Camper Exterminator" */;
string globaldef2680 /* = "Stop camping or you'll be punished!" */;
float globaldef2681 /* = 63.000 */;

void (string globaldef2683, string globaldef2684) func348;

// function func348
// function number 348 begins at statement 9862
/*
 * OP_STORE_V	7490	4	0
 * OP_CALL1	490	0	0
 * OP_STORE_F	1	7485	0
 * OP_STORE_V	7485	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	7485	0
 * OP_EQ_F	7485	213	7491
 * OP_IFNOT	7491	4	0
 * OP_STORE_V	7483	4	0
 * OP_CALL1	507	0	0
 * OP_GOTO	96	0	0
 * OP_EQ_F	7485	214	7492
 * OP_EQ_F	7485	276	7493
 * OP_OR	7492	7493	7494
 * OP_IFNOT	7494	4	0
 * OP_STORE_V	7482	4	0
 * OP_CALL1	507	0	0
 * OP_GOTO	89	0	0
 * OP_GE	7485	216	7495
 * OP_IFNOT	7495	52	0
 * OP_DIV_F	7485	220	7496
 * OP_BITAND	7496	7480	7497
 * OP_STORE_F	7497	7486	0
 * OP_DIV_F	7485	226	7498
 * OP_BITAND	7498	7480	7499
 * OP_STORE_F	7499	7487	0
 * OP_DIV_F	7485	271	7500
 * OP_BITAND	7500	7480	7501
 * OP_STORE_F	7501	7488	0
 * OP_BITAND	7485	7480	7502
 * OP_STORE_F	7502	7485	0
 * OP_LT	7485	228	7503
 * OP_IFNOT	7503	2	0
 * OP_STORE_F	213	7487	0
 * OP_LT	7485	229	7504
 * OP_IFNOT	7504	2	0
 * OP_STORE_F	213	7488	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	7485	7505
 * OP_STORE_V	7505	4	0
 * OP_CALL1	484	0	0
 * OP_ADD_F	214	1	7506
 * OP_STORE_F	7506	7484	0
 * OP_EQ_F	7484	7486	7507
 * OP_EQ_F	7484	7487	7508
 * OP_OR	7507	7508	7509
 * OP_EQ_F	7484	7488	7510
 * OP_OR	7509	7510	7511
 * OP_IF	7511	-11	0
 * OP_MUL_F	7484	220	7512
 * OP_ADD_F	7485	7512	7513
 * OP_MUL_F	7486	226	7514
 * OP_ADD_F	7513	7514	7515
 * OP_MUL_F	7487	271	7516
 * OP_ADD_F	7515	7516	7517
 * OP_STORE_V	7517	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	7489	0
 * OP_STORE_V	7490	4	0
 * OP_STORE_V	7489	7	0
 * OP_CALL2	508	0	0
 * OP_STORE_V	7484	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	7489	0
 * OP_STORE_V	7518	4	0
 * OP_CALL1	491	0	0
 * OP_STORE_V	7489	4	0
 * OP_CALL1	491	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	491	0	0
 * OP_GOTO	36	0	0
 * OP_STORE_V	7485	4	0
 * OP_CALL1	488	0	0
 * OP_STORE_F	1	7485	0
 * OP_DIV_F	7485	220	7519
 * OP_BITAND	7519	7480	7520
 * OP_STORE_F	7520	7486	0
 * OP_BITAND	7485	7480	7521
 * OP_STORE_F	7521	7485	0
 * OP_EQ_F	7486	213	7522
 * OP_IFNOT	7522	3	0
 * OP_STORE_F	216	7486	0
 * OP_GOTO	6	0	0
 * OP_ADD_F	7486	214	7523
 * OP_STORE_F	7523	7486	0
 * OP_GT	7486	7485	7524
 * OP_IFNOT	7524	2	0
 * OP_STORE_F	214	7486	0
 * OP_MUL_F	7486	220	7525
 * OP_ADD_F	7485	7525	7526
 * OP_MUL_F	276	7526	7527
 * OP_STORE_V	7527	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	7489	0
 * OP_STORE_V	7490	4	0
 * OP_STORE_V	7489	7	0
 * OP_CALL2	508	0	0
 * OP_STORE_V	7486	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	7489	0
 * OP_STORE_V	7518	4	0
 * OP_CALL1	491	0	0
 * OP_STORE_V	7489	4	0
 * OP_CALL1	491	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	491	0	0
 * OP_DONE	0	0	0
 */

void (string globaldef2683, string globaldef2684) func348 = {

   local float globaldef2685;
   local float globaldef2686;
   local float globaldef2687;
   local float globaldef2688;
   local float globaldef2689;
   local string globaldef2690;

   globaldef2686 = globaldef473 (globaldef2691);
   globaldef2686 = globaldef466 (globaldef2686);
   if ( (globaldef2686 == FALSE) ) {

      globaldef490 (globaldef2684);

   } else {

      if ( ((globaldef2686 == TRUE) || (globaldef2686 == CONTENT_EMPTY)) ) {

         globaldef490 (globaldef2683);

      } else {

         if ( (globaldef2686 >= FL_SWIM) ) {

            globaldef2687 = ((globaldef2686 / FL_GODMODE) & globaldef2681);
            globaldef2688 = ((globaldef2686 / FL_JUMPRELEASED) & globaldef2681);
            globaldef2689 = ((globaldef2686 / IT_KEY2) & globaldef2681);
            globaldef2686 = (globaldef2686 & globaldef2681);
            if ( (globaldef2686 < MOVETYPE_WALK) ) {

               globaldef2688 = FALSE;

            }
            if ( (globaldef2686 < MOVETYPE_STEP) ) {

               globaldef2689 = FALSE;

            }
            do {

               globaldef2685 = (TRUE + globaldef467 ((globaldef440 () * globaldef2686)));

            } while ( (((globaldef2685 == globaldef2687) || (globaldef2685 == globaldef2688)) || (globaldef2685 == globaldef2689)) );
            globaldef2690 = globaldef457 ((((globaldef2686 + (globaldef2685 * FL_GODMODE)) + (globaldef2687 * FL_JUMPRELEASED)) + (globaldef2688 * IT_KEY2)));
            globaldef491 (globaldef2691,globaldef2690);
            globaldef2690 = globaldef457 (globaldef2685);
            globaldef474 (globaldef2692);
            globaldef474 (globaldef2690);
            globaldef474 (globaldef1354);

         } else {

            globaldef2686 = globaldef471 (globaldef2686);
            globaldef2687 = ((globaldef2686 / FL_GODMODE) & globaldef2681);
            globaldef2686 = (globaldef2686 & globaldef2681);
            if ( (globaldef2687 == FALSE) ) {

               globaldef2687 = FL_SWIM;

            } else {

               globaldef2687 = (globaldef2687 + TRUE);
               if ( (globaldef2687 > globaldef2686) ) {

                  globaldef2687 = TRUE;

               }

            }
            globaldef2690 = globaldef457 ((CONTENT_EMPTY * (globaldef2686 + (globaldef2687 * FL_GODMODE))));
            globaldef491 (globaldef2691,globaldef2690);
            globaldef2690 = globaldef457 (globaldef2687);
            globaldef474 (globaldef2692);
            globaldef474 (globaldef2690);
            globaldef474 (globaldef1354);

         }

      }

   }

};
string globaldef2692 /* = "map" */;
float (entity globaldef2694, vector globaldef2695) func349;

// function func349
// function number 349 begins at statement 9969
/*
 * OP_LOAD_V	7529	134	7546
 * OP_ADD_V	7530	7546	7549
 * OP_SUB_V	7549	7552	7555
 * OP_STORE_V	7555	7537	0
 * OP_LOAD_V	7529	138	7558
 * OP_ADD_V	7530	7558	7561
 * OP_ADD_V	7561	7552	7564
 * OP_STORE_V	7564	7534	0
 * OP_STORE_ENT	833	7533	0
 * OP_IFNOT	7533	25	0
 * OP_LOAD_V	7533	105	7567
 * OP_LOAD_V	7533	134	7570
 * OP_ADD_V	7567	7570	7573
 * OP_STORE_V	7573	7543	0
 * OP_LOAD_V	7533	105	7576
 * OP_LOAD_V	7533	138	7579
 * OP_ADD_V	7576	7579	7582
 * OP_STORE_V	7582	7540	0
 * OP_LE	7543	7534	7585
 * OP_GE	7540	7537	7586
 * OP_AND	7585	7586	7587
 * OP_IFNOT	7587	10	0
 * OP_LE	7544	7535	7588
 * OP_GE	7541	7538	7589
 * OP_AND	7588	7589	7590
 * OP_IFNOT	7590	6	0
 * OP_LE	7545	7536	7591
 * OP_GE	7542	7539	7592
 * OP_AND	7591	7592	7593
 * OP_IFNOT	7593	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_ENT	7533	620	7594
 * OP_STORE_ENT	7594	7533	0
 * OP_GOTO	-24	0	0
 * OP_STORE_ENT	834	7533	0
 * OP_IFNOT	7533	25	0
 * OP_LOAD_V	7533	105	7595
 * OP_LOAD_V	7533	134	7598
 * OP_ADD_V	7595	7598	7601
 * OP_STORE_V	7601	7543	0
 * OP_LOAD_V	7533	105	7604
 * OP_LOAD_V	7533	138	7607
 * OP_ADD_V	7604	7607	7610
 * OP_STORE_V	7610	7540	0
 * OP_LE	7543	7534	7613
 * OP_GE	7540	7537	7614
 * OP_AND	7613	7614	7615
 * OP_IFNOT	7615	10	0
 * OP_LE	7544	7535	7616
 * OP_GE	7541	7538	7617
 * OP_AND	7616	7617	7618
 * OP_IFNOT	7618	6	0
 * OP_LE	7545	7536	7619
 * OP_GE	7542	7539	7620
 * OP_AND	7619	7620	7621
 * OP_IFNOT	7621	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_ENT	7533	620	7622
 * OP_STORE_ENT	7622	7533	0
 * OP_GOTO	-24	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef2694, vector globaldef2695) func349 = {

   local entity globaldef2699;
   local vector globaldef2700;
   local vector globaldef2704;
   local vector globaldef2708;
   local vector globaldef2712;

   globaldef2704 = ((globaldef2695 + globaldef2694.globaldef112) - globaldef2716);
   globaldef2700 = ((globaldef2695 + globaldef2694.globaldef116) + globaldef2716);
   globaldef2699 = globaldef816;
   while ( globaldef2699 ) {

      globaldef2712 = (globaldef2699.origin + globaldef2699.globaldef112);
      globaldef2708 = (globaldef2699.origin + globaldef2699.globaldef116);
      if ( ((globaldef2712_x <= globaldef2700_x) && (globaldef2708_x >= globaldef2704_x)) ) {

         if ( ((globaldef2714 <= globaldef2702) && (globaldef2710 >= globaldef2706)) ) {

            if ( ((globaldef2715 <= globaldef2703) && (globaldef2711 >= globaldef2707)) ) {

               return ( TRUE );

            }

         }

      }
      globaldef2699 = globaldef2699.globaldef603;

   }
   globaldef2699 = globaldef817;
   while ( globaldef2699 ) {

      globaldef2712 = (globaldef2699.origin + globaldef2699.globaldef112);
      globaldef2708 = (globaldef2699.origin + globaldef2699.globaldef116);
      if ( ((globaldef2712_x <= globaldef2700_x) && (globaldef2708_x >= globaldef2704_x)) ) {

         if ( ((globaldef2714 <= globaldef2702) && (globaldef2710 >= globaldef2706)) ) {

            if ( ((globaldef2715 <= globaldef2703) && (globaldef2711 >= globaldef2707)) ) {

               return ( TRUE );

            }

         }

      }
      globaldef2699 = globaldef2699.globaldef603;

   }
   return ( FALSE );

};
vector globaldef2716 /* = '50.000 50.000 50.000' */;
entity (entity globaldef2718) func350;

// function func350
// function number 350 begins at statement 10031
/*
 * OP_STORE_F	213	7626	0
 * OP_CALL0	2814	0	0
 * OP_STORE_ENT	1	7625	0
 * OP_STORE_V	7624	4	0
 * OP_LOAD_V	7625	105	7627
 * OP_STORE_V	7627	7	0
 * OP_CALL2	7528	0	0
 * OP_NOT_F	1	0	7630
 * OP_IFNOT	7630	2	0
 * OP_RETURN	7625	0	0
 * OP_ADD_F	7626	214	7631
 * OP_STORE_F	7631	7626	0
 * OP_LT	7626	235	7632
 * OP_IF	7632	-12	0
 * OP_RETURN	7625	0	0
 * OP_DONE	0	0	0
 */
entity (entity globaldef2718) func350 = {

   local entity globaldef2719;
   local float globaldef2720;

   globaldef2720 = FALSE;
   do {

      globaldef2719 = globaldef1440 ();
      if ( !globaldef2693 (globaldef2718,globaldef2719.origin) ) {

         return ( globaldef2719 );

      }
      globaldef2720 = (globaldef2720 + TRUE);

   } while ( (globaldef2720 < MOVETYPE_BOUNCE) );
   return ( globaldef2719 );

};

void (entity globaldef2722) func351;

// function func351
// function number 351 begins at statement 10047
/*
 * OP_LOAD_F	7634	371	7638
 * OP_LE	7638	31	7639
 * OP_IFNOT	7639	15	0
 * OP_STORE_V	7634	4	0
 * OP_CALL1	1129	0	0
 * OP_STORE_V	1	7635	0
 * OP_LOAD_ENT	7634	194	7640
 * OP_ADDRESS	7640	194	7641
 * OP_LOAD_ENT	7634	194	7642
 * OP_STOREP_ENT	7642	7641	0
 * OP_LOAD_ENT	7634	194	7643
 * OP_STORE_V	7643	4	0
 * OP_STORE_V	7635	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	7634	371	7644
 * OP_ADD_F	31	228	7645
 * OP_STOREP_F	7645	7644	0
 * OP_STORE_V	7634	4	0
 * OP_CALL1	1128	0	0
 * OP_ADDRESS	7634	113	7646
 * OP_LOAD_ENT	7634	194	7649
 * OP_LOAD_V	7649	105	7650
 * OP_LOAD_V	7634	105	7653
 * OP_SUB_V	7650	7653	7656
 * OP_STOREP_V	7656	7646	0
 * OP_ADDRESS	7634	116	7659
 * OP_STOREP_F	213	7659	0
 * OP_ADDRESS	7634	113	7660
 * OP_LOAD_V	7634	113	7663
 * OP_STORE_V	7663	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_VF	1	800	7666
 * OP_STOREP_V	7666	7660	0
 * OP_STORE_V	7634	4	0
 * OP_CALL1	1127	0	0
 * OP_NOT_F	1	0	7669
 * OP_IFNOT	7669	5	0
 * OP_ADDRESS	7634	371	7670
 * OP_LOAD_F	7634	371	7671
 * OP_SUB_F	7671	214	7672
 * OP_STOREP_F	7672	7670	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2722) func351 = {

   local vector globaldef2723;

   if ( (globaldef2722.globaldef354 <= time) ) {

      globaldef2723 = globaldef1067 (globaldef2722);
      globaldef2722.globaldef172.globaldef172 = globaldef2722.globaldef172;
      setorigin (globaldef2722.globaldef172,globaldef2723);
      globaldef2722.globaldef354 = (time + MOVETYPE_WALK);

   }
   globaldef1066 (globaldef2722);
   globaldef2722.velocity = (globaldef2722.globaldef172.origin - globaldef2722.origin);
   globaldef2722.globaldef94 = FALSE;
   globaldef2722.velocity = (globaldef442 (globaldef2722.velocity) * globaldef783);
   if ( !globaldef1065 (globaldef2722) ) {

      globaldef2722.globaldef354 = (globaldef2722.globaldef354 - TRUE);

   }

};

void (entity globaldef2728) func352;

// function func352
// function number 352 begins at statement 10089
/*
 * OP_ADDRESS	7674	611	7675
 * OP_STOREP_F	213	7675	0
 * OP_ADDRESS	7674	163	7676
 * OP_STOREP_F	250	7676	0
 * OP_ADDRESS	7674	181	7677
 * OP_STOREP_ENT	30	7677	0
 * OP_ADDRESS	7674	551	7678
 * OP_STOREP_FNC	7633	7678	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2728) func352 = {

   globaldef2728.globaldef594 = FALSE;
   globaldef2728.globaldef141 = DAMAGE_NO;
   globaldef2728.enemy = world;
   globaldef2728.globaldef534 = globaldef2721;

};

// function func353
// function number 353 begins at statement 10098
/*
 * OP_STORE_F	213	7683	0
 * OP_STORE_F	213	7684	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7689	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7680	0
 * OP_IFNOT	7680	2	0
 * OP_RETURN	7680	0	0
 * OP_STORE_ENT	30	7688	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7679	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7680	0
 * OP_IFNOT	7680	34	0
 * OP_ADD_F	7684	214	7690
 * OP_STORE_F	7690	7684	0
 * OP_LOAD_V	7680	105	7691
 * OP_STORE_V	7691	4	0
 * OP_STORE_V	7694	7	0
 * OP_CALL2	471	0	0
 * OP_STORE_ENT	1	7682	0
 * OP_STORE_F	213	7686	0
 * OP_IFNOT	7682	12	0
 * OP_LOAD_S	7682	129	7695
 * OP_EQ_S	7695	1236	7696
 * OP_LOAD_S	7682	129	7697
 * OP_EQ_S	7697	1241	7698
 * OP_OR	7696	7698	7699
 * OP_IFNOT	7699	3	0
 * OP_ADD_F	7686	214	7700
 * OP_STORE_F	7700	7686	0
 * OP_LOAD_ENT	7682	164	7701
 * OP_STORE_ENT	7701	7682	0
 * OP_GOTO	-11	0	0
 * OP_EQ_F	7686	213	7702
 * OP_IFNOT	7702	6	0
 * OP_ADDRESS	7680	194	7703
 * OP_STOREP_ENT	7688	7703	0
 * OP_STORE_ENT	7680	7688	0
 * OP_ADD_F	7683	214	7704
 * OP_STORE_F	7704	7683	0
 * OP_STORE_V	7680	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7679	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7680	0
 * OP_GOTO	-33	0	0
 * OP_SUB_F	7684	214	7705
 * OP_STORE_F	7705	7684	0
 * OP_NOT_F	7683	0	7706
 * OP_IFNOT	7706	22	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	7684	7707
 * OP_STORE_V	7707	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	7684	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7679	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7680	0
 * OP_GT	7684	213	7708
 * OP_IFNOT	7708	9	0
 * OP_SUB_F	7684	214	7709
 * OP_STORE_F	7709	7684	0
 * OP_STORE_V	7680	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7679	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	7680	0
 * OP_GOTO	-9	0	0
 * OP_RETURN	7680	0	0
 * OP_SUB_F	7683	214	7710
 * OP_STORE_F	7710	7683	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	7683	7711
 * OP_STORE_V	7711	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	7683	0
 * OP_STORE_ENT	7688	7680	0
 * OP_GT	7683	213	7712
 * OP_IFNOT	7712	6	0
 * OP_LOAD_ENT	7680	194	7713
 * OP_STORE_ENT	7713	7680	0
 * OP_SUB_F	7683	214	7714
 * OP_STORE_F	7714	7683	0
 * OP_GOTO	-6	0	0
 * OP_RETURN	7680	0	0
 * OP_DONE	0	0	0
 */
entity (string globaldef2729) func353 = {

   local entity globaldef2730;
   local entity globaldef2731;
   local entity globaldef2732;
   local float globaldef2733;
   local float globaldef2734;
   local float globaldef2735;
   local float globaldef2736;
   local float globaldef2737;
   local entity globaldef2738;

   globaldef2733 = FALSE;
   globaldef2734 = FALSE;
   globaldef2730 = find (world,classname,globaldef2739);
   if ( globaldef2730 ) {

      return ( globaldef2730 );

   }
   globaldef2738 = world;
   globaldef2730 = find (world,classname,globaldef2729);
   while ( globaldef2730 ) {

      globaldef2734 = (globaldef2734 + TRUE);
      globaldef2732 = globaldef454 (globaldef2730.origin,globaldef2740);
      globaldef2736 = FALSE;
      while ( globaldef2732 ) {

         if ( ((globaldef2732.classname == "player") || (globaldef2732.classname == globaldef1171)) ) {

            globaldef2736 = (globaldef2736 + TRUE);

         }
         globaldef2732 = globaldef2732.globaldef142;

      }
      if ( (globaldef2736 == FALSE) ) {

         globaldef2730.globaldef172 = globaldef2738;
         globaldef2738 = globaldef2730;
         globaldef2733 = (globaldef2733 + TRUE);

      }
      globaldef2730 = find (globaldef2730,classname,globaldef2729);

   }
   globaldef2734 = (globaldef2734 - TRUE);
   if ( !globaldef2733 ) {

      globaldef2734 = globaldef466 ((globaldef440 () * globaldef2734));
      globaldef2730 = find (world,classname,globaldef2729);
      while ( (globaldef2734 > FALSE) ) {

         globaldef2734 = (globaldef2734 - TRUE);
         globaldef2730 = find (globaldef2730,classname,globaldef2729);

      }
      return ( globaldef2730 );

   }
   globaldef2733 = (globaldef2733 - TRUE);
   globaldef2733 = globaldef466 ((globaldef440 () * globaldef2733));
   globaldef2730 = globaldef2738;
   while ( (globaldef2733 > FALSE) ) {

      globaldef2730 = globaldef2730.globaldef172;
      globaldef2733 = (globaldef2733 - TRUE);

   }
   return ( globaldef2730 );

};
float globaldef2740 /* = 84.000 */;
string (entity globaldef2742) func354;

// function func354
// function number 354 begins at statement 10189
/*
 * OP_LOAD_F	7716	533	7717
 * OP_GT	7717	232	7718
 * OP_IFNOT	7718	3	0
 * OP_RETURN	7719	0	0
 * OP_GOTO	35	0	0
 * OP_LOAD_F	7716	533	7720
 * OP_EQ_F	7720	232	7721
 * OP_IFNOT	7721	3	0
 * OP_RETURN	7722	0	0
 * OP_GOTO	30	0	0
 * OP_LOAD_F	7716	533	7723
 * OP_EQ_F	7723	231	7724
 * OP_IFNOT	7724	3	0
 * OP_RETURN	7725	0	0
 * OP_GOTO	25	0	0
 * OP_LOAD_F	7716	533	7726
 * OP_EQ_F	7726	230	7727
 * OP_IFNOT	7727	3	0
 * OP_RETURN	7728	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	7716	533	7729
 * OP_EQ_F	7729	229	7730
 * OP_IFNOT	7730	3	0
 * OP_RETURN	7731	0	0
 * OP_GOTO	15	0	0
 * OP_LOAD_F	7716	533	7732
 * OP_EQ_F	7732	228	7733
 * OP_IFNOT	7733	3	0
 * OP_RETURN	7734	0	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	7716	533	7735
 * OP_EQ_F	7735	216	7736
 * OP_IFNOT	7736	3	0
 * OP_RETURN	7737	0	0
 * OP_GOTO	5	0	0
 * OP_LOAD_F	7716	533	7738
 * OP_EQ_F	7738	214	7739
 * OP_IFNOT	7739	2	0
 * OP_RETURN	7740	0	0
 * OP_RETURN	7741	0	0
 * OP_DONE	0	0	0
 */
string (entity globaldef2742) func354 = {

   if ( (globaldef2742.globaldef516 > MOVETYPE_PUSH) ) {

      return ( globaldef2743 );

   } else {

      if ( (globaldef2742.globaldef516 == MOVETYPE_PUSH) ) {

         return ( globaldef2744 );

      } else {

         if ( (globaldef2742.globaldef516 == MOVETYPE_TOSS) ) {

            return ( globaldef2745 );

         } else {

            if ( (globaldef2742.globaldef516 == MOVETYPE_FLY) ) {

               return ( globaldef2746 );

            } else {

               if ( (globaldef2742.globaldef516 == MOVETYPE_STEP) ) {

                  return ( globaldef2747 );

               } else {

                  if ( (globaldef2742.globaldef516 == MOVETYPE_WALK) ) {

                     return ( globaldef2748 );

                  } else {

                     if ( (globaldef2742.globaldef516 == FL_SWIM) ) {

                        return ( globaldef2749 );

                     } else {

                        if ( (globaldef2742.globaldef516 == TRUE) ) {

                           return ( globaldef2750 );

                        }

                     }

                  }

               }

            }

         }

      }

   }
   return ( globaldef2751 );

};
string globaldef2743 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2744 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2745 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2746 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2747 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2748 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2749 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2750 /* = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" */;
string globaldef2751 /* = "\n\n\n\n\n\n\n\n\n\n\n\n" */;

void (entity globaldef2753) func355;

// function func355
// function number 355 begins at statement 10230
/*
 * OP_ADDRESS	7743	532	7749
 * OP_ADD_F	31	539	7750
 * OP_STOREP_F	7750	7749	0
 * OP_STORE_V	7743	4	0
 * OP_CALL1	7715	0	0
 * OP_STORE_S	1	7748	0
 * OP_STORE_V	7743	4	0
 * OP_STORE_V	7748	7	0
 * OP_LOAD_S	541	180	7751
 * OP_STORE_V	7751	10	0
 * OP_STORE_V	7752	13	0
 * OP_LOAD_S	542	180	7753
 * OP_STORE_V	7753	16	0
 * OP_STORE_V	7754	19	0
 * OP_CALL6	882	0	0
 * OP_LOAD_F	541	152	7755
 * OP_GT	7755	213	7756
 * OP_IFNOT	7756	4	0
 * OP_ADDRESS	28	188	7757
 * OP_LOAD_F	541	152	7758
 * OP_STOREP_F	7758	7757	0
 * OP_LOAD_F	542	152	7759
 * OP_GT	7759	213	7760
 * OP_IFNOT	7760	4	0
 * OP_ADDRESS	28	152	7761
 * OP_LOAD_F	542	152	7762
 * OP_STOREP_F	7762	7761	0
 * OP_ADDRESS	7743	157	7763
 * OP_LOAD_F	7743	534	7764
 * OP_STOREP_F	7764	7763	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2753) func355 = {

   local string globaldef2754;
   local string globaldef2755;
   local string globaldef2756;
   local string globaldef2757;
   local string globaldef2758;

   globaldef2753.globaldef515 = (time + globaldef522);
   globaldef2758 = globaldef2741 (globaldef2753);
   globaldef850 (globaldef2753,globaldef2758,globaldef524.globaldef158,globaldef2759,globaldef525.globaldef158,globaldef2760);
   if ( (globaldef524.globaldef130 > FALSE) ) {

      self.globaldef166 = globaldef524.globaldef130;

   }
   if ( (globaldef525.globaldef130 > FALSE) ) {

      self.globaldef130 = globaldef525.globaldef130;

   }
   globaldef2753.globaldef135 = globaldef2753.globaldef517;

};
string globaldef2759 /* = "          " */;
string globaldef2760 /* = "              " */;

// function func356
// function number 356 begins at statement 10261
/*
 * OP_LOAD_S	541	129	7767
 * OP_EQ_S	7767	1236	7768
 * OP_IFNOT	7768	4	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	7765	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_S	542	129	7769
 * OP_EQ_S	7769	1236	7770
 * OP_IFNOT	7770	4	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	7765	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_S	28	129	7771
 * OP_EQ_S	7771	1236	7772
 * OP_IFNOT	7772	4	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	7765	7	0
 * OP_CALL2	839	0	0
 * OP_IFNOT	543	9	0
 * OP_STORE_ENT	543	7766	0
 * OP_STORE_V	7766	4	0
 * OP_STORE_V	7765	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_ENT	7766	528	7773
 * OP_STORE_ENT	7773	7766	0
 * OP_NE_E	7766	543	7774
 * OP_IF	7774	-6	0
 * OP_DONE	0	0	0
 */

void (string globaldef2761) func356 = {

   local entity globaldef2762;

   if ( (globaldef524.classname == "player") ) {

      globaldef822 (globaldef524,globaldef2761);

   }
   if ( (globaldef525.classname == "player") ) {

      globaldef822 (globaldef525,globaldef2761);

   }
   if ( (self.classname == "player") ) {

      globaldef822 (self,globaldef2761);

   }
   if ( globaldef526 ) {

      globaldef2762 = globaldef526;
      do {

         globaldef822 (globaldef2762,globaldef2761);
         globaldef2762 = globaldef2762.globaldef511;

      } while ( (globaldef2762 != globaldef526) );

   }

};
float () readytostart;

// function readytostart
// function number 357 begins at statement 10289
/*
 * OP_GT	31	544	7776
 * OP_NE_E	541	30	7777
 * OP_AND	7776	7777	7778
 * OP_NE_E	542	30	7779
 * OP_AND	7778	7779	7780
 * OP_IFNOT	7780	3	0
 * OP_RETURN	214	0	0
 * OP_GOTO	2	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () readytostart = {

   if ( (((time > globaldef527) && (globaldef524 != world)) && (globaldef525 != world)) ) {

      return ( TRUE );

   } else {

      return ( FALSE );

   }

};

void (entity globaldef2765) func358;

// function func358
// function number 358 begins at statement 10299
/*
 * OP_ADDRESS	7782	159	7784
 * OP_LOAD_F	7782	159	7785
 * OP_ADD_F	7785	2805	7786
 * OP_STOREP_F	7786	7784	0
 * OP_ADDRESS	7782	158	7787
 * OP_LOAD_F	7782	158	7788
 * OP_ADD_F	7788	309	7789
 * OP_STOREP_F	7789	7787	0
 * OP_ADDRESS	7782	160	7790
 * OP_LOAD_F	7782	160	7791
 * OP_ADD_F	7791	309	7792
 * OP_STOREP_F	7792	7790	0
 * OP_ADDRESS	7782	161	7793
 * OP_LOAD_F	7782	161	7794
 * OP_ADD_F	7794	309	7795
 * OP_STOREP_F	7795	7793	0
 * OP_LOAD_F	7782	158	7796
 * OP_GT	7796	1997	7797
 * OP_IFNOT	7797	3	0
 * OP_ADDRESS	7782	158	7798
 * OP_STOREP_F	1997	7798	0
 * OP_LOAD_F	7782	159	7799
 * OP_GT	7799	2044	7800
 * OP_IFNOT	7800	3	0
 * OP_ADDRESS	7782	159	7801
 * OP_STOREP_F	2044	7801	0
 * OP_LOAD_F	7782	160	7802
 * OP_GT	7802	1997	7803
 * OP_IFNOT	7803	3	0
 * OP_ADDRESS	7782	160	7804
 * OP_STOREP_F	1997	7804	0
 * OP_LOAD_F	7782	161	7805
 * OP_GT	7805	1997	7806
 * OP_IFNOT	7806	3	0
 * OP_ADDRESS	7782	161	7807
 * OP_STOREP_F	1997	7807	0
 * OP_ADDRESS	7782	162	7808
 * OP_BITOR	253	254	7809
 * OP_STOREP_F	7809	7808	0
 * OP_ADDRESS	7782	162	7810
 * OP_LOAD_F	7782	162	7811
 * OP_BITOR	7811	256	7812
 * OP_STOREP_F	7812	7810	0
 * OP_ADDRESS	7782	162	7813
 * OP_LOAD_F	7782	162	7814
 * OP_BITOR	7814	257	7815
 * OP_STOREP_F	7815	7813	0
 * OP_ADDRESS	7782	162	7816
 * OP_LOAD_F	7782	162	7817
 * OP_BITOR	7817	255	7818
 * OP_STOREP_F	7818	7816	0
 * OP_ADDRESS	7782	162	7819
 * OP_LOAD_F	7782	162	7820
 * OP_BITOR	7820	259	7821
 * OP_STOREP_F	7821	7819	0
 * OP_ADDRESS	7782	162	7822
 * OP_LOAD_F	7782	162	7823
 * OP_BITOR	7823	258	7824
 * OP_STOREP_F	7824	7822	0
 * OP_ADDRESS	7782	162	7825
 * OP_LOAD_F	7782	162	7826
 * OP_BITOR	7826	260	7827
 * OP_STOREP_F	7827	7825	0
 * OP_ADDRESS	7782	162	7828
 * OP_LOAD_F	7782	162	7829
 * OP_LOAD_F	7782	162	7830
 * OP_BITOR	266	267	7831
 * OP_BITOR	7831	268	7832
 * OP_BITAND	7830	7832	7833
 * OP_SUB_F	7829	7833	7834
 * OP_ADD_F	7834	268	7835
 * OP_STOREP_F	7835	7828	0
 * OP_ADDRESS	7782	188	7836
 * OP_STOREP_F	2044	7836	0
 * OP_ADDRESS	7782	187	7837
 * OP_STOREP_F	4478	7837	0
 * OP_ADDRESS	7782	152	7838
 * OP_STOREP_F	1997	7838	0
 * OP_ADDRESS	7782	154	7839
 * OP_STOREP_F	219	7839	0
 * OP_ADDRESS	7782	382	7840
 * OP_STOREP_F	213	7840	0
 * OP_ADDRESS	7782	383	7841
 * OP_STOREP_F	213	7841	0
 * OP_ADDRESS	7782	381	7842
 * OP_STOREP_F	213	7842	0
 * OP_ADDRESS	7782	380	7843
 * OP_STOREP_F	213	7843	0
 * OP_ADDRESS	7782	133	7844
 * OP_STOREP_F	213	7844	0
 * OP_ADDRESS	7782	384	7845
 * OP_STOREP_F	213	7845	0
 * OP_STORE_ENT	28	7783	0
 * OP_STORE_ENT	7782	28	0
 * OP_CALL0	4295	0	0
 * OP_STORE_ENT	7783	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2765) func358 = {

   local entity globaldef2766;

   globaldef2765.globaldef137 = (globaldef2765.globaldef137 + globaldef1439);
   globaldef2765.globaldef136 = (globaldef2765.globaldef136 + SVC_INTERMISSION);
   globaldef2765.globaldef138 = (globaldef2765.globaldef138 + SVC_INTERMISSION);
   globaldef2765.globaldef139 = (globaldef2765.globaldef139 + SVC_INTERMISSION);
   if ( (globaldef2765.globaldef136 > globaldef1335) ) {

      globaldef2765.globaldef136 = globaldef1335;

   }
   if ( (globaldef2765.globaldef137 > globaldef1343) ) {

      globaldef2765.globaldef137 = globaldef1343;

   }
   if ( (globaldef2765.globaldef138 > globaldef1335) ) {

      globaldef2765.globaldef138 = globaldef1335;

   }
   if ( (globaldef2765.globaldef139 > globaldef1335) ) {

      globaldef2765.globaldef139 = globaldef1335;

   }
   globaldef2765.globaldef140 = (IT_AXE | IT_SHOTGUN);
   globaldef2765.globaldef140 = (globaldef2765.globaldef140 | IT_NAILGUN);
   globaldef2765.globaldef140 = (globaldef2765.globaldef140 | IT_SUPER_NAILGUN);
   globaldef2765.globaldef140 = (globaldef2765.globaldef140 | IT_SUPER_SHOTGUN);
   globaldef2765.globaldef140 = (globaldef2765.globaldef140 | IT_ROCKET_LAUNCHER);
   globaldef2765.globaldef140 = (globaldef2765.globaldef140 | IT_GRENADE_LAUNCHER);
   globaldef2765.globaldef140 = (globaldef2765.globaldef140 | IT_LIGHTNING);
   globaldef2765.globaldef140 = ((globaldef2765.globaldef140 - (globaldef2765.globaldef140 & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + IT_ARMOR3);
   globaldef2765.globaldef166 = globaldef1343;
   globaldef2765.globaldef165 = globaldef1827;
   globaldef2765.globaldef130 = globaldef1335;
   globaldef2765.globaldef132 = FL_MONSTER;
   globaldef2765.globaldef365 = FALSE;
   globaldef2765.globaldef366 = FALSE;
   globaldef2765.globaldef364 = FALSE;
   globaldef2765.globaldef363 = FALSE;
   globaldef2765.globaldef111 = FALSE;
   globaldef2765.globaldef367 = FALSE;
   globaldef2766 = self;
   self = globaldef2765;
   globaldef1788 ();
   self = globaldef2766;

};

void (entity globaldef2768) setfullhealth;

// function setfullhealth
// function number 359 begins at statement 10396
/*
 * OP_ADDRESS	7847	188	7848
 * OP_STOREP_F	2044	7848	0
 * OP_ADDRESS	7847	187	7849
 * OP_STOREP_F	4478	7849	0
 * OP_ADDRESS	7847	152	7850
 * OP_STOREP_F	1997	7850	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2768) setfullhealth = {

   globaldef2768.globaldef166 = globaldef1343;
   globaldef2768.globaldef165 = globaldef1827;
   globaldef2768.globaldef130 = globaldef1335;

};

void (entity globaldef2770, entity globaldef2771) func360;

// function func360
// function number 360 begins at statement 10403
/*
 * OP_LOAD_V	7852	105	7857
 * OP_STORE_V	7857	4	0
 * OP_CALL1	7259	0	0
 * OP_LOAD_V	7853	400	7860
 * OP_STORE_V	7860	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	7853	105	7863
 * OP_MUL_FV	219	59	7866
 * OP_ADD_V	7863	7866	7869
 * OP_STORE_V	7869	7854	0
 * OP_STORE_V	7854	4	0
 * OP_CALL1	7259	0	0
 * OP_LOAD_V	7853	105	7872
 * OP_STORE_V	7872	4	0
 * OP_STORE_V	7852	7	0
 * OP_CALL2	7260	0	0
 * OP_LOAD_F	7852	152	7875
 * OP_NOT_F	7875	0	7876
 * OP_IFNOT	7876	12	0
 * OP_ADDRESS	7852	105	7877
 * OP_LOAD_V	7853	105	7880
 * OP_STOREP_V	7880	7877	0
 * OP_ADDRESS	7852	113	7883
 * OP_LOAD_F	7852	114	7886
 * OP_MUL_VF	59	7886	7887
 * OP_LOAD_F	7852	115	7890
 * OP_MUL_VF	59	7890	7891
 * OP_ADD_V	7887	7891	7894
 * OP_STOREP_V	7894	7883	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	7852	4	0
 * OP_LOAD_V	7853	105	7897
 * OP_STORE_V	7897	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	7852	117	7900
 * OP_LOAD_V	7853	400	7903
 * OP_STOREP_V	7903	7900	0
 * OP_IFNOT	7852	16	0
 * OP_ADDRESS	7852	174	7906
 * OP_STOREP_F	214	7906	0
 * OP_ADDRESS	7852	186	7907
 * OP_ADD_F	31	5599	7908
 * OP_STOREP_F	7908	7907	0
 * OP_LOAD_F	7852	182	7909
 * OP_BITAND	7909	223	7910
 * OP_IFNOT	7910	5	0
 * OP_ADDRESS	7852	182	7911
 * OP_LOAD_F	7852	182	7912
 * OP_SUB_F	7912	223	7913
 * OP_STOREP_F	7913	7911	0
 * OP_ADDRESS	7852	113	7914
 * OP_MUL_VF	59	540	7917
 * OP_STOREP_V	7917	7914	0
 * OP_ADDRESS	7852	182	7920
 * OP_LOAD_F	7852	182	7921
 * OP_LOAD_F	7852	182	7922
 * OP_BITAND	7922	223	7923
 * OP_SUB_F	7921	7923	7924
 * OP_STOREP_F	7924	7920	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2770, entity globaldef2771) func360 = {

   local vector globaldef2772;

   globaldef2638 (globaldef2770.origin);
   makevectors (globaldef2771.globaldef383);
   globaldef2772 = (globaldef2771.origin + (FL_MONSTER * v_forward));
   globaldef2638 (globaldef2772);
   globaldef2639 (globaldef2771.origin,globaldef2770);
   if ( !globaldef2770.globaldef130 ) {

      globaldef2770.origin = globaldef2771.origin;
      globaldef2770.velocity = ((v_forward * globaldef2770.globaldef92) + (v_forward * globaldef2770.globaldef93));
      return ;

   }
   setorigin (globaldef2770,globaldef2771.origin);
   globaldef2770.angles = globaldef2771.globaldef383;
   if ( globaldef2770 ) {

      globaldef2770.globaldef152 = TRUE;
      globaldef2770.globaldef164 = (time + globaldef2123);
      if ( (globaldef2770.globaldef160 & FL_ONGROUND) ) {

         globaldef2770.globaldef160 = (globaldef2770.globaldef160 - FL_ONGROUND);

      }
      globaldef2770.velocity = (v_forward * globaldef523);

   }
   globaldef2770.globaldef160 = (globaldef2770.globaldef160 - (globaldef2770.globaldef160 & FL_ONGROUND));

};

void (entity globaldef2777) func361;

// function func361
// function number 361 begins at statement 10463
/*
 * OP_LOAD_F	7926	182	7928
 * OP_BITAND	7928	698	7929
 * OP_IFNOT	7929	3	0
 * OP_STORE_V	7926	4	0
 * OP_CALL1	1143	0	0
 * OP_STORE_V	7930	4	0
 * OP_CALL1	1220	0	0
 * OP_STORE_ENT	1	7927	0
 * OP_STORE_V	7926	4	0
 * OP_STORE_V	7927	7	0
 * OP_CALL2	7851	0	0
 * OP_STORE_V	7926	4	0
 * OP_LOAD_V	7927	105	7931
 * OP_STORE_V	7931	7	0
 * OP_CALL2	453	0	0
 * OP_STORE_V	7926	4	0
 * OP_CALL1	7781	0	0
 * OP_STORE_V	7926	4	0
 * OP_STORE_V	7934	7	0
 * OP_CALL2	839	0	0
 * OP_ADDRESS	7926	181	7935
 * OP_STOREP_ENT	30	7935	0
 * OP_NE_E	541	7926	7936
 * OP_IFNOT	7936	5	0
 * OP_STORE_V	541	4	0
 * OP_CALL1	7781	0	0
 * OP_ADD_F	31	235	7937
 * OP_STORE_F	7937	544	0
 * OP_STORE_F	214	816	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2777) func361 = {

   local entity globaldef2778;

   if ( (globaldef2777.globaldef160 & globaldef681) ) {

      globaldef1081 (globaldef2777);

   }
   globaldef2778 = globaldef1158 (globaldef2779);
   globaldef2769 (globaldef2777,globaldef2778);
   setorigin (globaldef2777,globaldef2778.origin);
   globaldef2764 (globaldef2777);
   globaldef822 (globaldef2777,globaldef2780);
   globaldef2777.enemy = world;
   if ( (globaldef524 != globaldef2777) ) {

      globaldef2764 (globaldef524);
      globaldef527 = (time + MOVETYPE_BOUNCE);

   }
   globaldef799 = TRUE;

};
string globaldef2779 /* = "info_teleport_destination" */;
string globaldef2780 /* = "r_drawviewmodel 1\n" */;

// function func362
// function number 362 begins at statement 10493
/*
 * OP_IFNOT	543	36	0
 * OP_STORE_ENT	543	542	0
 * OP_LOAD_ENT	543	529	7940
 * OP_STORE_ENT	7940	7938	0
 * OP_LOAD_ENT	543	528	7941
 * OP_EQ_E	543	7941	7942
 * OP_IFNOT	7942	3	0
 * OP_STORE_ENT	30	543	0
 * OP_GOTO	7	0	0
 * OP_LOAD_ENT	543	528	7943
 * OP_STORE_ENT	7943	543	0
 * OP_ADDRESS	543	529	7944
 * OP_STOREP_ENT	7938	7944	0
 * OP_ADDRESS	7938	528	7945
 * OP_STOREP_ENT	543	7945	0
 * OP_STORE_V	542	4	0
 * OP_CALL1	7925	0	0
 * OP_STORE_V	7946	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	542	180	7947
 * OP_STORE_V	7947	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	472	0	0
 * OP_IFNOT	543	11	0
 * OP_STORE_ENT	543	7938	0
 * OP_STORE_F	213	7939	0
 * OP_ADD_F	7939	214	7948
 * OP_STORE_F	7948	7939	0
 * OP_ADDRESS	7938	534	7949
 * OP_STOREP_F	7939	7949	0
 * OP_LOAD_ENT	7938	528	7950
 * OP_STORE_ENT	7950	7938	0
 * OP_NE_E	7938	543	7951
 * OP_IF	7951	-7	0
 * OP_GOTO	4	0	0
 * OP_STORE_ENT	30	542	0
 * OP_STORE_V	7952	4	0
 * OP_CALL1	472	0	0
 * OP_DONE	0	0	0
 */

void () func362 = {

   local entity globaldef2781;
   local float globaldef2782;

   if ( globaldef526 ) {

      globaldef525 = globaldef526;
      globaldef2781 = globaldef526.globaldef512;
      if ( (globaldef526 == globaldef526.globaldef511) ) {

         globaldef526 = world;

      } else {

         globaldef526 = globaldef526.globaldef511;
         globaldef526.globaldef512 = globaldef2781;
         globaldef2781.globaldef511 = globaldef526;

      }
      globaldef2776 (globaldef525);
      globaldef455 (globaldef2783);
      globaldef455 (globaldef525.globaldef158);
      globaldef455 (globaldef1354);
      if ( globaldef526 ) {

         globaldef2781 = globaldef526;
         globaldef2782 = FALSE;
         do {

            globaldef2782 = (globaldef2782 + TRUE);
            globaldef2781.globaldef517 = globaldef2782;
            globaldef2781 = globaldef2781.globaldef511;

         } while ( (globaldef2781 != globaldef526) );

      }

   } else {

      globaldef525 = world;
      globaldef455 (globaldef2784);

   }

};
string globaldef2783 /* = "The new challenger is " */;
string globaldef2784 /* = "Waiting for opponent\n" */;

void (entity globaldef2786) func363;

// function func363
// function number 363 begins at statement 10533
/*
 * OP_NOT_ENT	543	0	7957
 * OP_IFNOT	7957	12	0
 * OP_STORE_ENT	7954	543	0
 * OP_ADDRESS	543	528	7958
 * OP_STOREP_ENT	543	7958	0
 * OP_ADDRESS	543	529	7959
 * OP_STOREP_ENT	543	7959	0
 * OP_STORE_V	7954	4	0
 * OP_STORE_V	7960	7	0
 * OP_CALL2	928	0	0
 * OP_ADDRESS	7954	534	7961
 * OP_STOREP_F	214	7961	0
 * OP_GOTO	24	0	0
 * OP_LOAD_ENT	543	529	7962
 * OP_STORE_ENT	7962	7955	0
 * OP_ADDRESS	7955	528	7963
 * OP_STOREP_ENT	7954	7963	0
 * OP_ADDRESS	7954	529	7964
 * OP_STOREP_ENT	7955	7964	0
 * OP_ADDRESS	543	529	7965
 * OP_STOREP_ENT	7954	7965	0
 * OP_ADDRESS	7954	528	7966
 * OP_STOREP_ENT	543	7966	0
 * OP_STORE_V	7954	4	0
 * OP_STORE_V	7967	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_ENT	543	7955	0
 * OP_STORE_F	214	7956	0
 * OP_LOAD_ENT	7955	528	7968
 * OP_STORE_ENT	7968	7955	0
 * OP_ADD_F	7956	214	7969
 * OP_STORE_F	7969	7956	0
 * OP_NE_E	7955	7954	7970
 * OP_IF	7970	-5	0
 * OP_ADDRESS	7954	534	7971
 * OP_STOREP_F	7956	7971	0
 * OP_LOAD_F	7954	182	7972
 * OP_BITAND	7972	698	7973
 * OP_IFNOT	7973	3	0
 * OP_STORE_V	7954	4	0
 * OP_CALL1	7673	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2786) func363 = {

   local entity globaldef2787;
   local float globaldef2788;

   if ( !globaldef526 ) {

      globaldef526 = globaldef2786;
      globaldef526.globaldef511 = globaldef526;
      globaldef526.globaldef512 = globaldef526;
      globaldef887 (globaldef2786,globaldef2789);
      globaldef2786.globaldef517 = TRUE;

   } else {

      globaldef2787 = globaldef526.globaldef512;
      globaldef2787.globaldef511 = globaldef2786;
      globaldef2786.globaldef512 = globaldef2787;
      globaldef526.globaldef512 = globaldef2786;
      globaldef2786.globaldef511 = globaldef526;
      globaldef887 (globaldef2786,globaldef2790);
      globaldef2787 = globaldef526;
      globaldef2788 = TRUE;
      do {

         globaldef2787 = globaldef2787.globaldef511;
         globaldef2788 = (globaldef2788 + TRUE);

      } while ( (globaldef2787 != globaldef2786) );
      globaldef2786.globaldef517 = globaldef2788;

   }
   if ( (globaldef2786.globaldef160 & globaldef681) ) {

      globaldef2727 (globaldef2786);

   }

};
string globaldef2789 /* = "You are next in line\n" */;
string globaldef2790 /* = "You are last in line\n" */;

// function func364
// function number 364 begins at statement 10575
/*
 * OP_ADDRESS	7974	158	7976
 * OP_STOREP_F	235	7976	0
 * OP_ADDRESS	7974	159	7977
 * OP_STOREP_F	213	7977	0
 * OP_ADDRESS	7974	158	7978
 * OP_STOREP_F	213	7978	0
 * OP_ADDRESS	7974	160	7979
 * OP_STOREP_F	213	7979	0
 * OP_ADDRESS	7974	161	7980
 * OP_STOREP_F	213	7980	0
 * OP_ADDRESS	7974	163	7981
 * OP_STOREP_F	250	7981	0
 * OP_ADDRESS	7974	162	7982
 * OP_STOREP_F	253	7982	0
 * OP_ADDRESS	7974	188	7983
 * OP_STOREP_F	213	7983	0
 * OP_ADDRESS	7974	187	7984
 * OP_STOREP_F	213	7984	0
 * OP_ADDRESS	7974	152	7985
 * OP_STOREP_F	1997	7985	0
 * OP_ADDRESS	7974	154	7986
 * OP_STOREP_F	226	7986	0
 * OP_ADDRESS	7974	530	7987
 * OP_STOREP_F	213	7987	0
 * OP_ADDRESS	7974	531	7988
 * OP_STOREP_F	213	7988	0
 * OP_ADDRESS	7974	532	7989
 * OP_STOREP_F	213	7989	0
 * OP_LOAD_S	7974	180	7990
 * OP_EQ_S	7990	7991	7992
 * OP_IFNOT	7992	2	0
 * OP_RETURN	0	0	0
 * OP_NOT_ENT	541	0	7993
 * OP_IFNOT	7993	11	0
 * OP_STORE_ENT	7974	541	0
 * OP_STORE_V	7974	4	0
 * OP_CALL1	7925	0	0
 * OP_ADDRESS	7974	528	7994
 * OP_STOREP_ENT	7974	7994	0
 * OP_ADDRESS	7974	529	7995
 * OP_STOREP_ENT	7974	7995	0
 * OP_STORE_V	7952	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	25	0	0
 * OP_NOT_ENT	542	0	7996
 * OP_IFNOT	7996	14	0
 * OP_STORE_ENT	7974	542	0
 * OP_STORE_V	7974	4	0
 * OP_CALL1	7925	0	0
 * OP_ADDRESS	7974	528	7997
 * OP_STOREP_ENT	7974	7997	0
 * OP_ADDRESS	7974	529	7998
 * OP_STOREP_ENT	7974	7998	0
 * OP_LOAD_S	7974	180	7999
 * OP_STORE_V	7999	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	8000	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	10	0	0
 * OP_NE_E	541	7974	8001
 * OP_NE_E	542	7974	8002
 * OP_AND	8001	8002	8003
 * OP_IFNOT	8003	6	0
 * OP_STORE_V	7974	4	0
 * OP_STORE_V	8004	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	7974	4	0
 * OP_CALL1	7953	0	0
 * OP_STORE_ENT	28	7975	0
 * OP_STORE_ENT	7974	28	0
 * OP_CALL0	4295	0	0
 * OP_STORE_ENT	7975	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2791) func364 = {

   local entity globaldef2792;

   globaldef2791.globaldef136 = MOVETYPE_BOUNCE;
   globaldef2791.globaldef137 = FALSE;
   globaldef2791.globaldef136 = FALSE;
   globaldef2791.globaldef138 = FALSE;
   globaldef2791.globaldef139 = FALSE;
   globaldef2791.globaldef141 = DAMAGE_NO;
   globaldef2791.globaldef140 = IT_AXE;
   globaldef2791.globaldef166 = FALSE;
   globaldef2791.globaldef165 = FALSE;
   globaldef2791.globaldef130 = globaldef1335;
   globaldef2791.globaldef132 = FL_JUMPRELEASED;
   globaldef2791.globaldef513 = FALSE;
   globaldef2791.globaldef514 = FALSE;
   globaldef2791.globaldef515 = FALSE;
   if ( (globaldef2791.globaldef158 == globaldef2793) ) {

      return ;

   }
   if ( !globaldef524 ) {

      globaldef524 = globaldef2791;
      globaldef2776 (globaldef2791);
      globaldef2791.globaldef511 = globaldef2791;
      globaldef2791.globaldef512 = globaldef2791;
      globaldef455 (globaldef2784);

   } else {

      if ( !globaldef525 ) {

         globaldef525 = globaldef2791;
         globaldef2776 (globaldef2791);
         globaldef2791.globaldef511 = globaldef2791;
         globaldef2791.globaldef512 = globaldef2791;
         globaldef455 (globaldef2791.globaldef158);
         globaldef455 (globaldef2794);

      } else {

         if ( ((globaldef524 != globaldef2791) && (globaldef525 != globaldef2791)) ) {

            globaldef822 (globaldef2791,globaldef2795);
            globaldef2785 (globaldef2791);

         }

      }

   }
   globaldef2792 = self;
   self = globaldef2791;
   globaldef1788 ();
   self = globaldef2792;

};
string globaldef2793 /* = "unconnected" */;
string globaldef2794 /* = " is the new challenger\n" */;
string globaldef2795 /* = "r_drawviewmodel 0\n" */;
entity () FindIntermission;

// function func365
// function number 365 begins at statement 10648
/*
 * OP_LOAD_F	8006	538	8010
 * OP_EQ_F	8010	214	8011
 * OP_IFNOT	8011	9	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8012	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8013	7	0
 * OP_CALL2	928	0	0
 * OP_ADDRESS	8006	538	8014
 * OP_STOREP_F	213	8014	0
 * OP_SUB_F	544	31	8015
 * OP_STORE_V	8015	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	8009	0
 * OP_GE	8009	213	8016
 * OP_GT	544	213	8017
 * OP_AND	8016	8017	8018
 * OP_NE_F	8009	545	8019
 * OP_AND	8018	8019	8020
 * OP_NE_E	541	30	8021
 * OP_AND	8020	8021	8022
 * OP_NE_E	542	30	8023
 * OP_AND	8022	8023	8024
 * OP_IFNOT	8024	74	0
 * OP_STORE_F	8009	545	0
 * OP_EQ_F	8009	213	8025
 * OP_IFNOT	8025	36	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	8026	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	8026	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_S	541	180	8027
 * OP_STORE_V	8027	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	8028	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	542	180	8029
 * OP_STORE_V	8029	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	472	0	0
 * OP_IFNOT	543	6	0
 * OP_LOAD_S	543	180	8030
 * OP_STORE_V	8030	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	8031	4	0
 * OP_CALL1	472	0	0
 * OP_ADDRESS	541	163	8032
 * OP_STOREP_F	252	8032	0
 * OP_ADDRESS	542	163	8033
 * OP_STOREP_F	252	8033	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	8034	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	8034	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_F	213	816	0
 * OP_STORE_F	213	544	0
 * OP_GOTO	36	0	0
 * OP_STORE_V	8009	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	8007	0
 * OP_LE	8009	228	8035
 * OP_IFNOT	8035	19	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	8036	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	8007	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	8037	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	8036	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	8007	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	8037	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	541	4	0
 * OP_LOAD_S	542	180	8038
 * OP_STORE_V	8038	7	0
 * OP_STORE_V	8039	10	0
 * OP_STORE_V	8007	13	0
 * OP_CALL4	865	0	0
 * OP_STORE_V	542	4	0
 * OP_LOAD_S	541	180	8040
 * OP_STORE_V	8040	7	0
 * OP_STORE_V	8039	10	0
 * OP_STORE_V	8007	13	0
 * OP_CALL4	865	0	0
 * OP_LOAD_S	8006	129	8041
 * OP_NE_S	8041	2025	8042
 * OP_IFNOT	8042	79	0
 * OP_LOAD_F	8006	530	8043
 * OP_NE_F	8043	213	8044
 * OP_IFNOT	8044	63	0
 * OP_LOAD_F	8006	530	8045
 * OP_SUB_F	8045	31	8046
 * OP_STORE_V	8046	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	8009	0
 * OP_LOAD_F	8006	531	8047
 * OP_NE_F	8009	8047	8048
 * OP_IFNOT	8048	53	0
 * OP_EQ_F	8009	2019	8049
 * OP_IFNOT	8049	7	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8050	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8051	7	0
 * OP_CALL2	839	0	0
 * OP_EQ_F	8009	309	8052
 * OP_IFNOT	8052	7	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8053	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8051	7	0
 * OP_CALL2	839	0	0
 * OP_EQ_F	8009	213	8054
 * OP_IFNOT	8054	18	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8055	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_S	8006	180	8056
 * OP_STORE_V	8056	4	0
 * OP_CALL1	472	0	0
 * OP_ADDRESS	8006	530	8057
 * OP_STOREP_F	213	8057	0
 * OP_STORE_V	8058	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8059	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8060	7	0
 * OP_CALL2	839	0	0
 * OP_RETURN	0	0	0
 * OP_LE	8009	235	8061
 * OP_IFNOT	8061	16	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8062	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	8009	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	8007	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8007	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8063	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	8006	4	0
 * OP_STORE_V	8051	7	0
 * OP_CALL2	839	0	0
 * OP_ADDRESS	8006	531	8064
 * OP_STOREP_F	8009	8064	0
 * OP_NE_E	8006	542	8065
 * OP_NE_E	8006	541	8066
 * OP_AND	8065	8066	8067
 * OP_IFNOT	8067	10	0
 * OP_LOAD_F	8006	532	8068
 * OP_LT	8068	31	8069
 * OP_NE_E	541	30	8070
 * OP_AND	8069	8070	8071
 * OP_NE_E	542	30	8072
 * OP_AND	8071	8072	8073
 * OP_IFNOT	8073	3	0
 * OP_STORE_V	8006	4	0
 * OP_CALL1	7742	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2797) func365 = {

   local string globaldef2798;
   local entity globaldef2799;
   local float globaldef2800;

   if ( (globaldef2797.globaldef521 == TRUE) ) {

      globaldef887 (globaldef2797,globaldef2801);
      globaldef887 (globaldef2797,globaldef2802);
      globaldef2797.globaldef521 = FALSE;

   }
   globaldef2800 = globaldef466 ((globaldef527 - time));
   if ( (((((globaldef2800 >= FALSE) && (globaldef527 > FALSE)) && (globaldef2800 != globaldef528)) && (globaldef524 != world)) && (globaldef525 != world)) ) {

      globaldef528 = globaldef2800;
      if ( (globaldef2800 == FALSE) ) {

         globaldef822 (globaldef524,globaldef2803);
         globaldef822 (globaldef525,globaldef2803);
         globaldef455 (globaldef524.globaldef158);
         globaldef455 (globaldef2804);
         globaldef455 (globaldef525.globaldef158);
         globaldef455 (globaldef1354);
         if ( globaldef526 ) {

            globaldef455 (globaldef526.globaldef158);
            globaldef455 (globaldef2805);

         }
         globaldef524.globaldef141 = DAMAGE_AIM;
         globaldef525.globaldef141 = DAMAGE_AIM;
         centerprint (globaldef524,globaldef2806);
         centerprint (globaldef525,globaldef2806);
         globaldef799 = FALSE;
         globaldef527 = FALSE;

      } else {

         globaldef2798 = globaldef457 (globaldef2800);
         if ( (globaldef2800 <= MOVETYPE_WALK) ) {

            globaldef822 (globaldef524,globaldef2807);
            globaldef822 (globaldef524,globaldef2798);
            globaldef822 (globaldef524,globaldef2808);
            globaldef822 (globaldef525,globaldef2807);
            globaldef822 (globaldef525,globaldef2798);
            globaldef822 (globaldef525,globaldef2808);

         }
         globaldef839 (globaldef524,globaldef525.globaldef158,globaldef2809,globaldef2798);
         globaldef839 (globaldef525,globaldef524.globaldef158,globaldef2809,globaldef2798);

      }

   }
   if ( (globaldef2797.classname != globaldef1339) ) {

      if ( (globaldef2797.globaldef513 != FALSE) ) {

         globaldef2800 = globaldef466 ((globaldef2797.globaldef513 - time));
         if ( (globaldef2800 != globaldef2797.globaldef514) ) {

            if ( (globaldef2800 == globaldef1337) ) {

               globaldef887 (globaldef2797,globaldef2810);
               globaldef822 (globaldef2797,globaldef2811);

            }
            if ( (globaldef2800 == SVC_INTERMISSION) ) {

               globaldef887 (globaldef2797,globaldef2812);
               globaldef822 (globaldef2797,globaldef2811);

            }
            if ( (globaldef2800 == FALSE) ) {

               globaldef887 (globaldef2797,globaldef2813);
               globaldef455 (globaldef2797.globaldef158);
               globaldef2797.globaldef513 = FALSE;
               globaldef455 (globaldef2814);
               globaldef822 (globaldef2797,globaldef2815);
               globaldef822 (globaldef2797,globaldef2816);
               return ;

            }
            if ( (globaldef2800 <= MOVETYPE_BOUNCE) ) {

               globaldef887 (globaldef2797,globaldef2817);
               globaldef2798 = globaldef457 (globaldef2800);
               globaldef887 (globaldef2797,globaldef2798);
               globaldef887 (globaldef2797,globaldef2818);
               globaldef822 (globaldef2797,globaldef2811);

            }

         }
         globaldef2797.globaldef514 = globaldef2800;

      }
      if ( ((globaldef2797 != globaldef525) && (globaldef2797 != globaldef524)) ) {

         if ( (((globaldef2797.globaldef515 < time) && (globaldef524 != world)) && (globaldef525 != world)) ) {

            globaldef2752 (globaldef2797);

         }

      }

   }

};
string globaldef2801 /* = "??????? ?? ?????? ????? v1.2\n" */;
string globaldef2802 /* = "by crt - wrightd@stanford.edu\n Port by WhiteFang - matt@lithium.com\n" */;
string globaldef2803 /* = "play ra/fight.wav\n" */;
string globaldef2804 /* = " vs. " */;
string globaldef2805 /* = " is next in line\n" */;
string globaldef2806 /* = "??????" */;
string globaldef2807 /* = "play ra/" */;
string globaldef2808 /* = ".wav\n" */;
string globaldef2809 /* = "\n\n" */;
string globaldef2810 /* = "You have 1 minute left.\n Impulse 70 to get back in line\n" */;
string globaldef2811 /* = "play player/axhit1.wav\n" */;
string globaldef2812 /* = "You have 30 seconds left.\n Impulse 70 to get back in line\n" */;
string globaldef2813 /* = "Sorry, your wait time has expired!\n" */;
string globaldef2814 /* = " stood around too long\n" */;
string globaldef2815 /* = "play player/death1.wav\n" */;
string globaldef2816 /* = "disconnect\n" */;
string globaldef2817 /* = "You have " */;
string globaldef2818 /* = " seconds left to get in line\n" */;

// function func366
// function number 366 begins at statement 10828
/*
 * OP_EQ_E	8074	541	8078
 * OP_IFNOT	8078	19	0
 * OP_STORE_V	8079	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_ENT	542	541	0
 * OP_IFNOT	541	11	0
 * OP_STORE_V	8080	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	541	180	8081
 * OP_STORE_V	8081	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	472	0	0
 * OP_ADDRESS	542	163	8082
 * OP_STOREP_F	250	8082	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	8083	4	0
 * OP_CALL1	472	0	0
 * OP_CALL0	1218	0	0
 * OP_GOTO	41	0	0
 * OP_EQ_E	8074	542	8084
 * OP_IFNOT	8084	7	0
 * OP_STORE_V	8085	4	0
 * OP_CALL1	472	0	0
 * OP_CALL0	1218	0	0
 * OP_ADDRESS	541	163	8086
 * OP_STOREP_F	250	8086	0
 * OP_GOTO	33	0	0
 * OP_EQ_E	8074	543	8087
 * OP_IFNOT	8087	17	0
 * OP_STORE_V	8088	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_ENT	543	528	8089
 * OP_EQ_E	8089	543	8090
 * OP_IFNOT	8090	3	0
 * OP_STORE_ENT	30	543	0
 * OP_GOTO	9	0	0
 * OP_LOAD_ENT	543	529	8091
 * OP_STORE_ENT	8091	8076	0
 * OP_LOAD_ENT	543	528	8092
 * OP_STORE_ENT	8092	543	0
 * OP_ADDRESS	543	529	8093
 * OP_STOREP_ENT	8076	8093	0
 * OP_ADDRESS	8076	528	8094
 * OP_STOREP_ENT	543	8094	0
 * OP_GOTO	15	0	0
 * OP_LOAD_ENT	8074	528	8095
 * OP_EQ_E	8095	30	8096
 * OP_IFNOT	8096	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	8074	528	8097
 * OP_STORE_ENT	8097	8076	0
 * OP_ADDRESS	8076	529	8098
 * OP_LOAD_ENT	8074	529	8099
 * OP_STOREP_ENT	8099	8098	0
 * OP_LOAD_ENT	8074	529	8100
 * OP_STORE_ENT	8100	8076	0
 * OP_ADDRESS	8076	528	8101
 * OP_LOAD_ENT	8074	528	8102
 * OP_STOREP_ENT	8102	8101	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2819, float globaldef2820) func366 = {

   local entity globaldef2821;
   local string globaldef2822;

   if ( (globaldef2819 == globaldef524) ) {

      globaldef455 (globaldef2823);
      globaldef524 = globaldef525;
      if ( globaldef524 ) {

         globaldef455 (globaldef2824);
         globaldef455 (globaldef524.globaldef158);
         globaldef455 (globaldef1354);
         globaldef525.globaldef141 = DAMAGE_NO;

      } else {

         globaldef455 (globaldef2825);

      }
      globaldef1156 ();

   } else {

      if ( (globaldef2819 == globaldef525) ) {

         globaldef455 (globaldef2826);
         globaldef1156 ();
         globaldef524.globaldef141 = DAMAGE_NO;

      } else {

         if ( (globaldef2819 == globaldef526) ) {

            globaldef455 (globaldef2827);
            if ( (globaldef526.globaldef511 == globaldef526) ) {

               globaldef526 = world;

            } else {

               globaldef2821 = globaldef526.globaldef512;
               globaldef526 = globaldef526.globaldef511;
               globaldef526.globaldef512 = globaldef2821;
               globaldef2821.globaldef511 = globaldef526;

            }

         } else {

            if ( (globaldef2819.globaldef511 == world) ) {

               return ;

            }
            globaldef2821 = globaldef2819.globaldef511;
            globaldef2821.globaldef512 = globaldef2819.globaldef512;
            globaldef2821 = globaldef2819.globaldef512;
            globaldef2821.globaldef511 = globaldef2819.globaldef511;

         }

      }

   }

};
string globaldef2824 /* = "The new winner is " */;
string globaldef2825 /* = "Waiting for winner\n" */;
string globaldef2826 /* = "The challenger has left\n" */;
string globaldef2827 /* = "The line leader has left\n" */;

void (float globaldef2829) entinfo;

// function entinfo
// function number 367 begins at statement 10889
/*
 * OP_EQ_F	8104	1997	8106
 * OP_IFNOT	8106	3	0
 * OP_STORE_V	541	4	0
 * OP_CALL1	479	0	0
 * OP_EQ_F	8104	8107	8108
 * OP_IFNOT	8108	3	0
 * OP_STORE_V	542	4	0
 * OP_CALL1	479	0	0
 * OP_EQ_F	8104	8109	8110
 * OP_IFNOT	8110	3	0
 * OP_STORE_V	543	4	0
 * OP_CALL1	479	0	0
 * OP_EQ_F	8104	8111	8112
 * OP_IFNOT	8112	5	0
 * OP_LOAD_ENT	543	528	8113
 * OP_STORE_ENT	8113	8105	0
 * OP_STORE_V	8105	4	0
 * OP_CALL1	479	0	0
 * OP_EQ_F	8104	8114	8115
 * OP_IFNOT	8115	5	0
 * OP_LOAD_ENT	543	529	8116
 * OP_STORE_ENT	8116	8105	0
 * OP_STORE_V	8105	4	0
 * OP_CALL1	479	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef2829) entinfo = {

   local entity globaldef2830;

   if ( (globaldef2829 == globaldef1335) ) {

      globaldef462 (globaldef524);

   }
   if ( (globaldef2829 == globaldef2831) ) {

      globaldef462 (globaldef525);

   }
   if ( (globaldef2829 == globaldef2832) ) {

      globaldef462 (globaldef526);

   }
   if ( (globaldef2829 == globaldef2833) ) {

      globaldef2830 = globaldef526.globaldef511;
      globaldef462 (globaldef2830);

   }
   if ( (globaldef2829 == globaldef2834) ) {

      globaldef2830 = globaldef526.globaldef512;
      globaldef462 (globaldef2830);

   }

};
float globaldef2831 /* = 101.000 */;
float globaldef2832 /* = 102.000 */;
float globaldef2833 /* = 103.000 */;
float globaldef2834 /* = 104.000 */;

void (entity globaldef2836) func368;

// function func368
// function number 368 begins at statement 10914
/*
 * OP_LOAD_S	8118	129	8120
 * OP_NE_S	8120	1236	8121
 * OP_LOAD_S	8118	129	8122
 * OP_NE_S	8122	1241	8123
 * OP_AND	8121	8123	8124
 * OP_IFNOT	8124	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	8118	536	8125
 * OP_LOAD_F	8118	535	8126
 * OP_ADD_F	8125	8126	8127
 * OP_EQ_F	8127	213	8128
 * OP_IFNOT	8128	4	0
 * OP_ADDRESS	8118	537	8129
 * OP_STOREP_F	213	8129	0
 * OP_GOTO	9	0	0
 * OP_ADDRESS	8118	537	8130
 * OP_LOAD_F	8118	535	8131
 * OP_MUL_F	8131	1997	8132
 * OP_LOAD_F	8118	536	8133
 * OP_LOAD_F	8118	535	8134
 * OP_ADD_F	8133	8134	8135
 * OP_DIV_F	8132	8135	8136
 * OP_STOREP_F	8136	8130	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	8118	180	8137
 * OP_STORE_V	8137	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8138	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	8118	535	8139
 * OP_STORE_V	8139	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	8119	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8119	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8140	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	8118	536	8141
 * OP_STORE_V	8141	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	8119	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8119	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8142	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	8118	537	8143
 * OP_STORE_V	8143	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	8119	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8119	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8144	7	0
 * OP_CALL2	928	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2836) func368 = {

   local string globaldef2837;

   if ( ((globaldef2836.classname != "player") && (globaldef2836.classname != globaldef1171)) ) {

      return ;

   }
   if ( ((globaldef2836.globaldef519 + globaldef2836.globaldef518) == FALSE) ) {

      globaldef2836.globaldef520 = FALSE;

   } else {

      globaldef2836.globaldef520 = ((globaldef2836.globaldef518 * globaldef1335) / (globaldef2836.globaldef519 + globaldef2836.globaldef518));

   }
   globaldef887 (self,globaldef2836.globaldef158);
   globaldef887 (self,globaldef2838);
   globaldef2837 = globaldef457 (globaldef2836.globaldef518);
   globaldef887 (self,globaldef2837);
   globaldef887 (self,globaldef2839);
   globaldef2837 = globaldef457 (globaldef2836.globaldef519);
   globaldef887 (self,globaldef2837);
   globaldef887 (self,globaldef2840);
   globaldef2837 = globaldef457 (globaldef2836.globaldef520);
   globaldef887 (self,globaldef2837);
   globaldef887 (self,globaldef2841);

};
string globaldef2838 /* = "  W:" */;
string globaldef2839 /* = "  L:" */;
string globaldef2840 /* = "  SKILL:" */;
string globaldef2841 /* = "%\n" */;

void () func369;

// function func369
// function number 369 begins at statement 10975
/*
 * OP_STORE_V	541	4	0
 * OP_CALL1	8117	0	0
 * OP_STORE_V	542	4	0
 * OP_CALL1	8117	0	0
 * OP_IFNOT	543	8	0
 * OP_STORE_ENT	543	8146	0
 * OP_STORE_V	8146	4	0
 * OP_CALL1	8117	0	0
 * OP_LOAD_ENT	8146	528	8147
 * OP_STORE_ENT	8147	8146	0
 * OP_NE_E	8146	543	8148
 * OP_IF	8148	-5	0
 * OP_DONE	0	0	0
 */

void () func369 = {

   local entity globaldef2843;

   globaldef2835 (globaldef524);
   globaldef2835 (globaldef525);
   if ( globaldef526 ) {

      globaldef2843 = globaldef526;
      do {

         globaldef2835 (globaldef2843);
         globaldef2843 = globaldef2843.globaldef511;

      } while ( (globaldef2843 != globaldef526) );

   }

};

void () func370;

// function func370
// function number 370 begins at statement 10988
/*
 * OP_EQ_E	28	541	8153
 * OP_EQ_E	28	542	8154
 * OP_OR	8153	8154	8155
 * OP_IFNOT	8155	2	0
 * OP_RETURN	0	0	0
 * OP_EQ_E	28	543	8156
 * OP_IFNOT	8156	5	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8157	7	0
 * OP_CALL2	928	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	528	8158
 * OP_EQ_E	8158	30	8159
 * OP_IFNOT	8159	5	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8160	7	0
 * OP_CALL2	928	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_F	213	8150	0
 * OP_STORE_ENT	28	8151	0
 * OP_LOAD_ENT	8151	529	8161
 * OP_STORE_ENT	8161	8151	0
 * OP_ADD_F	8150	214	8162
 * OP_STORE_F	8162	8150	0
 * OP_NE_E	8151	543	8163
 * OP_IF	8163	-5	0
 * OP_STORE_V	8150	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	8152	0
 * OP_NE_F	8150	214	8164
 * OP_IFNOT	8164	11	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8165	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8152	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8166	7	0
 * OP_CALL2	928	0	0
 * OP_GOTO	4	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8167	7	0
 * OP_CALL2	928	0	0
 * OP_DONE	0	0	0
 */

void () func370 = {

   local float globaldef2845;
   local entity globaldef2846;
   local string globaldef2847;

   if ( ((self == globaldef524) || (self == globaldef525)) ) {

      return ;

   }
   if ( (self == globaldef526) ) {

      globaldef887 (self,globaldef2848);
      return ;

   }
   if ( (self.globaldef511 == world) ) {

      globaldef887 (self,globaldef2849);
      return ;

   }
   globaldef2845 = FALSE;
   globaldef2846 = self;
   do {

      globaldef2846 = globaldef2846.globaldef512;
      globaldef2845 = (globaldef2845 + TRUE);

   } while ( (globaldef2846 != globaldef526) );
   globaldef2847 = globaldef457 (globaldef2845);
   if ( (globaldef2845 != TRUE) ) {

      globaldef887 (self,globaldef2850);
      globaldef887 (self,globaldef2847);
      globaldef887 (self,globaldef2851);

   } else {

      globaldef887 (self,globaldef2852);

   }

};
string globaldef2848 /* = "You are next\n" */;
string globaldef2849 /* = "You are out of line\n Impulse 70 to return\n" */;
string globaldef2850 /* = "There are " */;
string globaldef2851 /* = " people ahead of you\n" */;
string globaldef2852 /* = "There is 1 person ahead of you\n" */;

void () func371;

// function func371
// function number 371 begins at statement 11033
/*
 * OP_EQ_E	28	541	8170
 * OP_EQ_E	28	542	8171
 * OP_OR	8170	8171	8172
 * OP_IFNOT	8172	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	528	8173
 * OP_NE_E	8173	30	8174
 * OP_IFNOT	8174	31	0
 * OP_EQ_E	28	543	8175
 * OP_IFNOT	8175	8	0
 * OP_LOAD_ENT	28	528	8176
 * OP_NE_E	28	8176	8177
 * OP_IFNOT	8177	4	0
 * OP_LOAD_ENT	28	528	8178
 * OP_STORE_ENT	8178	543	0
 * OP_GOTO	2	0	0
 * OP_STORE_ENT	30	543	0
 * OP_LOAD_ENT	28	529	8179
 * OP_STORE_ENT	8179	8169	0
 * OP_ADDRESS	8169	528	8180
 * OP_LOAD_ENT	28	528	8181
 * OP_STOREP_ENT	8181	8180	0
 * OP_LOAD_ENT	28	528	8182
 * OP_STORE_ENT	8182	8169	0
 * OP_ADDRESS	8169	529	8183
 * OP_LOAD_ENT	28	529	8184
 * OP_STOREP_ENT	8184	8183	0
 * OP_ADDRESS	28	528	8185
 * OP_STOREP_ENT	30	8185	0
 * OP_ADDRESS	28	529	8186
 * OP_STOREP_ENT	30	8186	0
 * OP_ADDRESS	28	530	8187
 * OP_ADD_F	31	540	8188
 * OP_STOREP_F	8188	8187	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8189	7	0
 * OP_CALL2	928	0	0
 * OP_GOTO	5	0	0
 * OP_ADDRESS	28	530	8190
 * OP_STOREP_F	213	8190	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	7953	0	0
 * OP_DONE	0	0	0
 */

void () func371 = {

   local entity globaldef2854;

   if ( ((self == globaldef524) || (self == globaldef525)) ) {

      return ;

   }
   if ( (self.globaldef511 != world) ) {

      if ( (self == globaldef526) ) {

         if ( (self != self.globaldef511) ) {

            globaldef526 = self.globaldef511;

         } else {

            globaldef526 = world;

         }

      }
      globaldef2854 = self.globaldef512;
      globaldef2854.globaldef511 = self.globaldef511;
      globaldef2854 = self.globaldef511;
      globaldef2854.globaldef512 = self.globaldef512;
      self.globaldef511 = world;
      self.globaldef512 = world;
      self.globaldef513 = (time + globaldef523);
      globaldef887 (self,globaldef2855);

   } else {

      self.globaldef513 = FALSE;
      globaldef2785 (self);

   }

};
string globaldef2855 /* = "You can have up to a 5 minute break.\n Impulse 70 to get back in line\n" */;

// function func372
// function number 372 begins at statement 11076
/*
 * OP_BITAND	821	767	8191
 * OP_IFNOT	8191	26	0
 * OP_LOAD_F	28	173	8192
 * OP_EQ_F	8192	8193	8194
 * OP_IFNOT	8194	2	0
 * OP_CALL0	8145	0	0
 * OP_LOAD_F	28	173	8195
 * OP_EQ_F	8195	8196	8197
 * OP_IFNOT	8197	2	0
 * OP_CALL0	8149	0	0
 * OP_LOAD_F	28	173	8198
 * OP_EQ_F	8198	1536	8199
 * OP_IFNOT	8199	2	0
 * OP_CALL0	8168	0	0
 * OP_LOAD_F	28	173	8200
 * OP_GE	8200	8201	8202
 * OP_LOAD_F	28	173	8203
 * OP_LE	8203	8204	8205
 * OP_AND	8202	8205	8206
 * OP_IFNOT	8206	8	0
 * OP_ADDRESS	28	533	8207
 * OP_LOAD_F	28	173	8208
 * OP_SUB_F	8208	8201	8209
 * OP_STOREP_F	8209	8207	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8210	7	0
 * OP_CALL2	928	0	0
 * OP_DONE	0	0	0
 */

void () func372 = {

   if ( (globaldef804 & globaldef750) ) {

      if ( (self.globaldef151 == globaldef2856) ) {

         globaldef2842 ();

      }
      if ( (self.globaldef151 == globaldef2857) ) {

         globaldef2844 ();

      }
      if ( (self.globaldef151 == globaldef1271) ) {

         globaldef2853 ();

      }
      if ( ((self.globaldef151 >= globaldef2858) && (self.globaldef151 <= globaldef2859)) ) {

         self.globaldef516 = (self.globaldef151 - globaldef2858);
         globaldef887 (self,globaldef2860);

      }

   }

};
