string globaldef005671 /* = "progs/oldone.mdl" */;
string globaldef005672 /* = "boss2/idle.wav" */;
string globaldef005673 /* = "boss2/sight.wav" */;
vector globaldef005674 /* = '-160.000 -128.000 -24.000' */;
vector globaldef005675 /* = '160.000 128.000 256.000' */;
float globaldef005676 /* = 13.000 */;
float globaldef005677 /* = 14.000 */;
float globaldef005678 /* = 17.000 */;

// function func002255
// function number 2255 begins at statement 27279
/*
 * OP_STORE_V	30	4	0
 * OP_CALL1	492	0	0
 * OP_STORE_ENT	1	16186	0
 * OP_LOAD_S	16186	129	16187
 * OP_NE_S	16187	16188	16189
 * OP_IFNOT	16189	7	0
 * OP_ADD_F	813	214	16190
 * OP_STORE_F	16190	813	0
 * OP_STORE_V	16186	4	0
 * OP_CALL1	492	0	0
 * OP_STORE_ENT	1	16186	0
 * OP_GOTO	-8	0	0
 * OP_DONE	0	0	0
 */

void () func002255 = {

   local entity globaldef005679;

   globaldef005679 = nextent (world);
   while ( (globaldef005679.globaldef000107 != globaldef005680) ) {

      globaldef000796 = (globaldef000796 + TRUE);
      globaldef005679 = nextent (globaldef005679);

   }

};
string globaldef005680 /* = "worldspawn" */;
float (float globaldef005682) func002256;

// function func002256
// function number 2256 begins at statement 27292
/*
 * OP_STORE_F	214	16193	0
 * OP_ADD_F	16192	214	16194
 * OP_STORE_F	16194	16192	0
 * OP_GT	16192	214	16195
 * OP_IFNOT	16195	6	0
 * OP_MUL_F	16193	216	16196
 * OP_STORE_F	16196	16193	0
 * OP_SUB_F	16192	214	16197
 * OP_STORE_F	16197	16192	0
 * OP_GOTO	-6	0	0
 * OP_RETURN	16193	0	0
 * OP_DONE	0	0	0
 */
float (float globaldef005682) func002256 = {

   local float globaldef005683;

   globaldef005683 = TRUE;
   globaldef005682 = (globaldef005682 + TRUE);
   while ( (globaldef005682 > TRUE) ) {

      globaldef005683 = (globaldef005683 * FL_SWIM);
      globaldef005682 = (globaldef005682 - TRUE);

   }
   return ( globaldef005683 );

};

// function func002257
// function number 2257 begins at statement 27304
/*
 * OP_STORE_V	16198	4	0
 * OP_CALL1	16191	0	0
 * OP_BITAND	812	1	16199
 * OP_IFNOT	16199	2	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (float globaldef005684) func002257 = {

   if ( (globaldef000795 & func002256 (globaldef005684)) ) {

      return ( TRUE );

   }
   return ( FALSE );

};
float () func002258;

// function func002258
// function number 2258 begins at statement 27311
/*
 * OP_STORE_F	213	16202	0
 * OP_STORE_F	213	16201	0
 * OP_LT	16201	813	16203
 * OP_IFNOT	16203	9	0
 * OP_STORE_V	16201	4	0
 * OP_CALL1	1047	0	0
 * OP_IFNOT	1	3	0
 * OP_ADD_F	16202	214	16204
 * OP_STORE_F	16204	16202	0
 * OP_ADD_F	16201	214	16205
 * OP_STORE_F	16205	16201	0
 * OP_GOTO	-9	0	0
 * OP_RETURN	16202	0	0
 * OP_DONE	0	0	0
 */
float () func002258 = {

   local float globaldef005686;
   local float globaldef005687;

   globaldef005687 = FALSE;
   globaldef005686 = FALSE;
   while ( (globaldef005686 < globaldef000796) ) {

      if ( func002257 (globaldef005686) ) {

         globaldef005687 = (globaldef005687 + TRUE);

      }
      globaldef005686 = (globaldef005686 + TRUE);

   }
   return ( globaldef005687 );

};

// function func002259
// function number 2259 begins at statement 27325
/*
 * OP_STORE_V	16206	4	0
 * OP_CALL1	16191	0	0
 * OP_BITOR	812	1	16207
 * OP_STORE_F	16207	812	0
 * OP_CALL0	16200	0	0
 * OP_STORE_F	1	814	0
 * OP_DONE	0	0	0
 */

void (float globaldef005688) func002259 = {

   globaldef000795 = (globaldef000795 | func002256 (globaldef005688));
   globaldef000797 = func002258 ();

};

// function func002260
// function number 2260 begins at statement 27332
/*
 * OP_STORE_V	16208	4	0
 * OP_CALL1	16191	0	0
 * OP_BITAND	812	1	16209
 * OP_SUB_F	812	16209	16210
 * OP_STORE_F	16210	812	0
 * OP_CALL0	16200	0	0
 * OP_STORE_F	1	814	0
 * OP_DONE	0	0	0
 */

void (float globaldef005689) func002260 = {

   globaldef000795 = (globaldef000795 - (globaldef000795 & func002256 (globaldef005689)));
   globaldef000797 = func002258 ();

};

// function func002261
// function number 2261 begins at statement 27340
/*
 * OP_STORE_F	213	16211	0
 * OP_LT	16211	813	16212
 * OP_IFNOT	16212	9	0
 * OP_STORE_V	16211	4	0
 * OP_CALL1	1047	0	0
 * OP_NOT_F	1	0	16213
 * OP_IFNOT	16213	2	0
 * OP_RETURN	16211	0	0
 * OP_ADD_F	16211	214	16214
 * OP_STORE_F	16214	16211	0
 * OP_GOTO	-9	0	0
 * OP_RETURN	276	0	0
 * OP_DONE	0	0	0
 */
float () func002261 = {

   local float globaldef005690;

   globaldef005690 = FALSE;
   while ( (globaldef005690 < globaldef000796) ) {

      if ( !func002257 (globaldef005690) ) {

         return ( globaldef005690 );

      }
      globaldef005690 = (globaldef005690 + TRUE);

   }
   return ( CONTENT_EMPTY );

};

// function func002262
// function number 2262 begins at statement 27353
/*
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16183	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16215	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16216	7	0
 * OP_CALL2	502	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef005691, string globaldef005692) func002262 = {

   WriteByte (MSG_ALL,globaldef005676);
   WriteByte (MSG_ALL,globaldef005691);
   WriteString (MSG_ALL,globaldef005692);

};

// function func002263
// function number 2263 begins at statement 27363
/*
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16184	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16217	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16218	7	0
 * OP_CALL2	498	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef005693, float globaldef005694) func002263 = {

   WriteByte (MSG_ALL,globaldef005677);
   WriteByte (MSG_ALL,globaldef005693);
   WriteShort (MSG_ALL,globaldef005694);

};

// function func002264
// function number 2264 begins at statement 27373
/*
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16185	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16219	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	16220	7	0
 * OP_CALL2	496	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef005695, float globaldef005696) func002264 = {

   WriteByte (MSG_ALL,globaldef005678);
   WriteByte (MSG_ALL,globaldef005695);
   WriteByte (MSG_ALL,globaldef005696);

};

// function func002265
// function number 2265 begins at statement 27383
/*
 * OP_STORE_F	213	16222	0
 * OP_LT	16222	813	16223
 * OP_IFNOT	16223	11	0
 * OP_STORE_V	16222	4	0
 * OP_CALL1	1047	0	0
 * OP_NOT_F	1	0	16224
 * OP_IFNOT	16224	4	0
 * OP_STORE_V	16222	4	0
 * OP_STORE_V	3002	7	0
 * OP_CALL2	1050	0	0
 * OP_ADD_F	16222	214	16225
 * OP_STORE_F	16225	16222	0
 * OP_GOTO	-11	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1241	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	16221	0
 * OP_IFNOT	16221	22	0
 * OP_LOAD_F	16221	608	16226
 * OP_STORE_V	16226	4	0
 * OP_LOAD_S	16221	180	16227
 * OP_STORE_V	16227	7	0
 * OP_CALL2	1050	0	0
 * OP_LOAD_F	16221	608	16228
 * OP_STORE_V	16228	4	0
 * OP_LOAD_F	16221	153	16229
 * OP_STORE_V	16229	7	0
 * OP_CALL2	1051	0	0
 * OP_LOAD_F	16221	608	16230
 * OP_STORE_V	16230	4	0
 * OP_LOAD_F	16221	610	16231
 * OP_STORE_V	16231	7	0
 * OP_CALL2	1052	0	0
 * OP_STORE_V	16221	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1241	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	16221	0
 * OP_GOTO	-21	0	0
 * OP_DONE	0	0	0
 */

void () func002265 = {

   local entity globaldef005697;
   local float globaldef005698;

   globaldef005698 = FALSE;
   while ( (globaldef005698 < globaldef000796) ) {

      if ( !func002257 (globaldef005698) ) {

         func002262 (globaldef005698,globaldef001466);

      }
      globaldef005698 = (globaldef005698 + TRUE);

   }
   globaldef005697 = find (world,globaldef000107,globaldef001171);
   while ( globaldef005697 ) {

      func002262 (globaldef005697.globaldef000591,globaldef005697.globaldef000158);
      func002263 (globaldef005697.globaldef000591,globaldef005697.globaldef000131);
      func002264 (globaldef005697.globaldef000591,globaldef005697.globaldef000593);
      globaldef005697 = find (globaldef005697,globaldef000107,globaldef001171);

   }

};

// function func002266
// function number 2266 begins at statement 27424
/*
 * OP_STORE_V	30	4	0
 * OP_CALL1	492	0	0
 * OP_STORE_ENT	1	16233	0
 * OP_STORE_F	213	16234	0
 * OP_LT	16234	813	16235
 * OP_IFNOT	16235	10	0
 * OP_EQ_F	16234	16232	16236
 * OP_IFNOT	16236	2	0
 * OP_RETURN	16233	0	0
 * OP_ADD_F	16234	214	16237
 * OP_STORE_F	16237	16234	0
 * OP_STORE_V	16233	4	0
 * OP_CALL1	492	0	0
 * OP_STORE_ENT	1	16233	0
 * OP_GOTO	-10	0	0
 * OP_RETURN	30	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ (float globaldef005699) func002266 = {

   local entity globaldef005700;
   local float globaldef005701;

   globaldef005700 = nextent (world);
   globaldef005701 = FALSE;
   while ( (globaldef005701 < globaldef000796) ) {

      if ( (globaldef005701 == globaldef005699) ) {

         return ( globaldef005700 );

      }
      globaldef005701 = (globaldef005701 + TRUE);
      globaldef005700 = nextent (globaldef005700);

   }
   return ( world );

};

// function func002267
// function number 2267 begins at statement 27441
/*
 * OP_ADDRESS	16238	132	16240
 * OP_LOAD_F	16239	574	16241
 * OP_STOREP_F	16241	16240	0
 * OP_ADDRESS	16238	93	16242
 * OP_LOAD_F	16239	573	16243
 * OP_STOREP_F	16243	16242	0
 * OP_ADDRESS	16238	130	16244
 * OP_STOREP_S	6684	16244	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005702, entity globaldef005703) func002267 = {

   globaldef005702.globaldef000110 = globaldef005703.globaldef000557;
   globaldef005702.globaldef000071 = globaldef005703.globaldef000556;
   globaldef005702.globaldef000108 = globaldef002429;

};

// function func002268
// function number 2268 begins at statement 27450
/*
 * OP_LOAD_F	16245	608	16252
 * OP_STORE_V	16252	4	0
 * OP_CALL1	1054	0	0
 * OP_STORE_ENT	1	16246	0
 * OP_NOT_ENT	16246	0	16253
 * OP_IFNOT	16253	3	0
 * OP_STORE_V	16254	4	0
 * OP_CALL1	461	0	0
 * OP_STORE_V	16246	4	0
 * OP_STORE_V	16245	7	0
 * OP_CALL2	1055	0	0
 * OP_ADDRESS	16245	132	16255
 * OP_STOREP_F	213	16255	0
 * OP_ADDRESS	16245	93	16256
 * OP_STOREP_F	213	16256	0
 * OP_ADDRESS	16246	131	16257
 * OP_LOAD_F	16245	131	16258
 * OP_STOREP_F	16258	16257	0
 * OP_ADDRESS	16246	162	16259
 * OP_LOAD_F	16245	162	16260
 * OP_STOREP_F	16260	16259	0
 * OP_ADDRESS	16246	133	16261
 * OP_LOAD_F	16245	133	16262
 * OP_STOREP_F	16262	16261	0
 * OP_ADDRESS	16246	117	16263
 * OP_LOAD_V	16245	117	16266
 * OP_STOREP_V	16266	16263	0
 * OP_ADDRESS	16246	175	16269
 * OP_LOAD_V	16245	175	16272
 * OP_STOREP_V	16272	16269	0
 * OP_ADDRESS	16246	183	16275
 * OP_LOAD_F	16245	608	16276
 * OP_ADD_F	16276	214	16277
 * OP_STOREP_F	16277	16275	0
 * OP_LOAD_V	16245	105	16278
 * OP_STORE_V	16278	16247	0
 * OP_LOAD_F	16245	575	16281
 * OP_BITAND	16281	712	16282
 * OP_IFNOT	16282	34	0
 * OP_LOAD_F	16246	108	16283
 * OP_LOAD_F	16245	108	16284
 * OP_SUB_F	16284	214	16285
 * OP_GE	16283	16285	16286
 * OP_LOAD_F	16245	575	16287
 * OP_BITAND	16287	700	16288
 * OP_NOT_F	16288	0	16289
 * OP_OR	16286	16289	16290
 * OP_IFNOT	16290	6	0
 * OP_ADDRESS	16245	575	16291
 * OP_LOAD_F	16245	575	16292
 * OP_SUB_F	16292	712	16293
 * OP_STOREP_F	16293	16291	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	16246	108	16294
 * OP_LOAD_F	16245	108	16295
 * OP_SUB_F	16294	16295	16296
 * OP_LOAD_F	16245	137	16297
 * OP_LE	16296	16297	16298
 * OP_IFNOT	16298	6	0
 * OP_ADDRESS	16246	108	16299
 * OP_LOAD_F	16245	108	16300
 * OP_LOAD_F	16245	137	16301
 * OP_ADD_F	16300	16301	16302
 * OP_STOREP_F	16302	16299	0
 * OP_LOAD_F	16246	108	16303
 * OP_LOAD_F	16245	108	16304
 * OP_LOAD_F	16246	108	16305
 * OP_SUB_F	16304	16305	16306
 * OP_MUL_F	16306	32	16307
 * OP_DIV_F	16307	3036	16308
 * OP_ADD_F	16303	16308	16309
 * OP_STORE_F	16309	16249	0
 * OP_STORE_V	16246	4	0
 * OP_STORE_V	16247	7	0
 * OP_CALL2	453	0	0
 * OP_STORE_V	16246	4	0
 * OP_LOAD_V	16245	134	16310
 * OP_STORE_V	16310	7	0
 * OP_LOAD_V	16245	138	16313
 * OP_STORE_V	16313	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	16246	113	16316
 * OP_LOAD_V	16245	113	16319
 * OP_STOREP_V	16319	16316	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005704) func002268 = {

   local entity globaldef005705;
   local vector globaldef005706;
   local float globaldef005710;
   local float globaldef005711;

   globaldef005705 = func002266 (globaldef005704.globaldef000591);
   if ( !globaldef005705 ) {

      objerror (globaldef005712);

   }
   func002267 (globaldef005705,globaldef005704);
   globaldef005704.globaldef000110 = FALSE;
   globaldef005704.globaldef000071 = FALSE;
   globaldef005705.globaldef000109 = globaldef005704.globaldef000109;
   globaldef005705.globaldef000140 = globaldef005704.globaldef000140;
   globaldef005705.globaldef000111 = globaldef005704.globaldef000111;
   globaldef005705.globaldef000095 = globaldef005704.globaldef000095;
   globaldef005705.globaldef000153 = globaldef005704.globaldef000153;
   globaldef005705.globaldef000161 = (globaldef005704.globaldef000591 + TRUE);
   globaldef005706 = globaldef005704.globaldef000083;
   if ( (globaldef005704.globaldef000558 & globaldef000695) ) {

      if ( ((globaldef005705.globaldef000086 >= (globaldef005704.globaldef000086 - TRUE)) || !(globaldef005704.globaldef000558 & globaldef000683)) ) {

         globaldef005704.globaldef000558 = (globaldef005704.globaldef000558 - globaldef000695);

      } else {

         if ( ((globaldef005705.globaldef000086 - globaldef005704.globaldef000086) <= globaldef005704.globaldef000115) ) {

            globaldef005705.globaldef000086 = (globaldef005704.globaldef000086 + globaldef005704.globaldef000115);

         }
         globaldef005709 = (globaldef005705.globaldef000086 + (((globaldef005704.globaldef000086 - globaldef005705.globaldef000086) * frametime) / globaldef001488));

      }

   }
   setorigin (globaldef005705,globaldef005706);
   setsize (globaldef005705,globaldef005704.globaldef000112,globaldef005704.globaldef000116);
   globaldef005705.globaldef000091 = globaldef005704.globaldef000091;

};
string globaldef005712 /* = "bot with invalid client number" */;

void (entity globaldef005714) func002269;

// function func002269
// function number 2269 begins at statement 27535
/*
 * OP_STORE_ENT	28	16324	0
 * OP_STORE_ENT	16323	28	0
 * OP_CALL0	8749	0	0
 * OP_STORE_ENT	16324	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005714) func002269 = {

   local entity globaldef005715;

   globaldef005715 = self;
   self = globaldef005714;
   CheckWaterJump ();
   self = globaldef005715;

};

// function func002270
// function number 2270 begins at statement 27540
/*
 * OP_STORE_ENT	28	16327	0
 * OP_STORE_ENT	16326	28	0
 * OP_CALL0	8657	0	0
 * OP_STORE_ENT	16327	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005717) func002270 = {

   local entity globaldef005718;

   globaldef005718 = self;
   self = globaldef005717;
   WaterMove ();
   self = globaldef005718;

};

// function func002271
// function number 2271 begins at statement 27545
/*
 * OP_LOAD_F	16329	575	16338
 * OP_BITAND	16338	700	16339
 * OP_IFNOT	16339	36	0
 * OP_LOAD_V	16329	113	16340
 * OP_STORE_V	16340	16335	0
 * OP_STORE_F	213	16337	0
 * OP_STORE_V	16335	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	16333	0
 * OP_IFNOT	16333	29	0
 * OP_STORE_V	16343	4	0
 * OP_CALL1	490	0	0
 * OP_STORE_F	1	16330	0
 * OP_STORE_V	16344	4	0
 * OP_CALL1	490	0	0
 * OP_STORE_F	1	16331	0
 * OP_LT	16333	16331	16345
 * OP_IFNOT	16345	3	0
 * OP_STORE_F	16331	16332	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	16333	16332	0
 * OP_MUL_F	3036	16332	16346
 * OP_MUL_F	16346	16330	16347
 * OP_SUB_F	16333	16347	16348
 * OP_STORE_F	16348	16334	0
 * OP_LT	16334	213	16349
 * OP_IFNOT	16349	2	0
 * OP_STORE_F	213	16334	0
 * OP_DIV_F	16334	16333	16350
 * OP_STORE_F	16350	16334	0
 * OP_ADDRESS	16329	114	16351
 * OP_LOAD_F	16329	114	16352
 * OP_MUL_F	16352	16334	16353
 * OP_STOREP_F	16353	16351	0
 * OP_ADDRESS	16329	115	16354
 * OP_LOAD_F	16329	115	16355
 * OP_MUL_F	16355	16334	16356
 * OP_STOREP_F	16356	16354	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005720) func002271 = {

   local float globaldef005721;
   local float globaldef005722;
   local float globaldef005723;
   local float globaldef005724;
   local float globaldef005725;
   local vector globaldef005726;

   if ( (globaldef005720.globaldef000558 & globaldef000683) ) {

      globaldef005726 = globaldef005720.globaldef000091;
      globaldef005729 = FALSE;
      globaldef005724 = vlen (globaldef005726);
      if ( globaldef005724 ) {

         globaldef005721 = cvar (globaldef005730);
         globaldef005722 = cvar (globaldef005731);
         if ( (globaldef005724 < globaldef005722) ) {

            globaldef005723 = globaldef005722;

         } else {

            globaldef005723 = globaldef005724;

         }
         globaldef005725 = (globaldef005724 - ((globaldef001488 * globaldef005723) * globaldef005721));
         if ( (globaldef005725 < FALSE) ) {

            globaldef005725 = FALSE;

         }
         globaldef005725 = (globaldef005725 / globaldef005724);
         globaldef005720.globaldef000092 = (globaldef005720.globaldef000092 * globaldef005725);
         globaldef005720.globaldef000093 = (globaldef005720.globaldef000093 * globaldef005725);

      }

   }

};
string globaldef005730 /* = "sv_friction" */;
string globaldef005731 /* = "sv_stopspeed" */;

void (entity globaldef005733) func002272;

// function func002272
// function number 2272 begins at statement 27584
/*
 * OP_LOAD_V	16358	105	16363
 * OP_STORE_V	16363	16360	0
 * OP_LOAD_F	16358	137	16366
 * OP_ADD_F	16362	16366	16367
 * OP_ADD_F	16367	214	16368
 * OP_STORE_F	16368	16362	0
 * OP_STORE_V	16360	4	0
 * OP_CALL1	487	0	0
 * OP_STORE_F	1	16359	0
 * OP_EQ_F	16359	276	16369
 * OP_IFNOT	16369	6	0
 * OP_ADDRESS	16358	190	16370
 * OP_STOREP_F	276	16370	0
 * OP_ADDRESS	16358	189	16371
 * OP_STOREP_F	213	16371	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	16358	190	16372
 * OP_STOREP_F	16359	16372	0
 * OP_ADDRESS	16358	189	16373
 * OP_STOREP_F	214	16373	0
 * OP_ADD_F	16362	308	16374
 * OP_STORE_F	16374	16362	0
 * OP_STORE_V	16360	4	0
 * OP_CALL1	487	0	0
 * OP_STORE_F	1	16359	0
 * OP_EQ_F	16359	276	16375
 * OP_IFNOT	16375	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	16358	189	16376
 * OP_STOREP_F	216	16376	0
 * OP_ADD_F	16362	6133	16377
 * OP_STORE_F	16377	16362	0
 * OP_STORE_V	16360	4	0
 * OP_CALL1	487	0	0
 * OP_STORE_F	1	16359	0
 * OP_NE_F	16359	276	16378
 * OP_IFNOT	16378	3	0
 * OP_ADDRESS	16358	189	16379
 * OP_STOREP_F	228	16379	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005733) func002272 = {

   local float globaldef005734;
   local vector globaldef005735;

   globaldef005735 = globaldef005733.globaldef000083;
   globaldef005738 = ((globaldef005738 + globaldef005733.globaldef000115) + TRUE);
   globaldef005734 = pointcontents (globaldef005735);
   if ( (globaldef005734 == CONTENT_EMPTY) ) {

      globaldef005733.globaldef000168 = CONTENT_EMPTY;
      globaldef005733.globaldef000167 = FALSE;
      return ;

   }
   globaldef005733.globaldef000168 = globaldef005734;
   globaldef005733.globaldef000167 = TRUE;
   globaldef005738 = (globaldef005738 + SVC_FOUNDSECRET);
   globaldef005734 = pointcontents (globaldef005735);
   if ( (globaldef005734 == CONTENT_EMPTY) ) {

      return ;

   }
   globaldef005733.globaldef000167 = FL_SWIM;
   globaldef005738 = (globaldef005738 + globaldef002221);
   globaldef005734 = pointcontents (globaldef005735);
   if ( (globaldef005734 != CONTENT_EMPTY) ) {

      globaldef005733.globaldef000167 = MOVETYPE_WALK;

   }

};

// function func002273
// function number 2273 begins at statement 27624
/*
 * OP_ADDRESS	16380	575	16387
 * OP_LOAD_F	16380	575	16388
 * OP_LOAD_F	16380	575	16389
 * OP_BITAND	16389	702	16390
 * OP_SUB_F	16388	16390	16391
 * OP_STOREP_F	16391	16387	0
 * OP_ADDRESS	16380	575	16392
 * OP_LOAD_F	16380	575	16393
 * OP_LOAD_F	16380	575	16394
 * OP_BITAND	16394	700	16395
 * OP_SUB_F	16393	16395	16396
 * OP_STOREP_F	16396	16392	0
 * OP_STORE_V	829	4	0
 * OP_LOAD_V	16380	134	16397
 * OP_STORE_V	16397	7	0
 * OP_LOAD_V	16380	138	16400
 * OP_STORE_V	16400	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	829	4	0
 * OP_LOAD_V	16380	105	16403
 * OP_STORE_V	16403	7	0
 * OP_CALL2	453	0	0
 * OP_LOAD_ENT	16380	201	16406
 * OP_STORE_ENT	16406	16386	0
 * OP_ADDRESS	16380	201	16407
 * OP_STOREP_ENT	829	16407	0
 * OP_STORE_ENT	28	16385	0
 * OP_STORE_ENT	829	28	0
 * OP_CALL0	481	0	0
 * OP_STORE_F	1	16381	0
 * OP_STORE_ENT	16385	28	0
 * OP_ADDRESS	16380	201	16408
 * OP_STOREP_ENT	16386	16408	0
 * OP_NOT_F	16381	0	16409
 * OP_IFNOT	16409	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	16380	108	16410
 * OP_LOAD_F	829	108	16411
 * OP_SUB_F	16410	16411	16412
 * OP_STORE_V	16412	4	0
 * OP_CALL1	488	0	0
 * OP_LE	1	539	16413
 * OP_IFNOT	16413	16	0
 * OP_ADDRESS	16380	575	16414
 * OP_LOAD_F	16380	575	16415
 * OP_BITOR	16415	700	16416
 * OP_STOREP_F	16416	16414	0
 * OP_ADDRESS	16380	151	16417
 * OP_LOAD_ENT	829	151	16418
 * OP_STOREP_ENT	16418	16417	0
 * OP_LOAD_ENT	829	151	16419
 * OP_EQ_E	16419	30	16420
 * OP_IFNOT	16420	5	0
 * OP_ADDRESS	16380	575	16421
 * OP_LOAD_F	16380	575	16422
 * OP_BITOR	16422	702	16423
 * OP_STOREP_F	16423	16421	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	16380	151	16424
 * OP_STOREP_ENT	30	16424	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005739) func002273 = {

   local float globaldef005740;
   local vector globaldef005741;
   local entity globaldef005745;
   local entity globaldef005746;

   globaldef005739.globaldef000558 = (globaldef005739.globaldef000558 - (globaldef005739.globaldef000558 & globaldef000685));
   globaldef005739.globaldef000558 = (globaldef005739.globaldef000558 - (globaldef005739.globaldef000558 & globaldef000683));
   setsize (globaldef000812,globaldef005739.globaldef000112,globaldef005739.globaldef000116);
   setorigin (globaldef000812,globaldef005739.globaldef000083);
   globaldef005746 = globaldef005739.globaldef000179;
   globaldef005739.globaldef000179 = globaldef000812;
   globaldef005745 = self;
   self = globaldef000812;
   globaldef005740 = droptofloor ();
   self = globaldef005745;
   globaldef005739.globaldef000179 = globaldef005746;
   if ( !globaldef005740 ) {

      return ;

   }
   if ( (fabs ((globaldef005739.globaldef000086 - globaldef000812.globaldef000086)) <= globaldef000522) ) {

      globaldef005739.globaldef000558 = (globaldef005739.globaldef000558 | globaldef000683);
      globaldef005739.globaldef000129 = globaldef000812.globaldef000129;
      if ( (globaldef000812.globaldef000129 == world) ) {

         globaldef005739.globaldef000558 = (globaldef005739.globaldef000558 | globaldef000685);

      }

   } else {

      globaldef005739.globaldef000129 = world;

   }

};

void (entity globaldef005748) func002274;

// function func002274
// function number 2274 begins at statement 27685
/*
 * OP_LOAD_V	16426	560	16440
 * OP_STORE_V	16440	16427	0
 * OP_STORE_F	213	16429	0
 * OP_STORE_V	16427	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	16427	0
 * OP_STORE_ENT	28	16433	0
 * OP_LOAD_V	28	105	16443
 * OP_STORE_V	16443	16435	0
 * OP_LOAD_F	28	182	16446
 * OP_STORE_F	16446	16439	0
 * OP_STORE_ENT	16426	28	0
 * OP_STORE_V	16427	4	0
 * OP_CALL1	463	0	0
 * OP_STORE_F	1	16438	0
 * OP_ADDRESS	28	182	16447
 * OP_LOAD_F	28	182	16448
 * OP_BITOR	16448	223	16449
 * OP_BITOR	16449	224	16450
 * OP_STOREP_F	16450	16447	0
 * OP_STORE_V	16438	4	0
 * OP_STORE_V	3263	7	0
 * OP_CALL2	480	0	0
 * OP_IFNOT	1	18	0
 * OP_LOAD_F	28	108	16451
 * OP_ADD_F	16437	1283	16452
 * OP_GT	16451	16452	16453
 * OP_IFNOT	16453	11	0
 * OP_ADDRESS	16426	575	16454
 * OP_LOAD_F	16426	575	16455
 * OP_BITOR	16455	711	16456
 * OP_STOREP_F	16456	16454	0
 * OP_ADDRESS	16426	564	16457
 * OP_LOAD_V	16426	105	16460
 * OP_STOREP_V	16460	16457	0
 * OP_ADDRESS	16426	568	16463
 * OP_LOAD_V	28	105	16466
 * OP_STOREP_V	16466	16463	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	16435	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	28	182	16469
 * OP_STOREP_F	16439	16469	0
 * OP_STORE_ENT	16433	28	0
 * OP_DONE	0	0	0
 */

void (entity globaldef005748) func002274 = {

   local vector globaldef005749;
   local vector globaldef005753;
   local entity globaldef005757;
   local entity globaldef005758;
   local vector globaldef005759;
   local float globaldef005763;
   local float globaldef005764;

   globaldef005749 = globaldef005748.globaldef000543;
   globaldef005752 = FALSE;
   globaldef005749 = normalize (globaldef005749);
   globaldef005757 = self;
   globaldef005759 = self.globaldef000083;
   globaldef005764 = self.globaldef000160;
   self = globaldef005748;
   globaldef005763 = vectoyaw (globaldef005749);
   self.globaldef000160 = ((self.globaldef000160 | FL_ONGROUND) | FL_PARTIALGROUND);
   if ( walkmove (globaldef005763,globaldef001552) ) {

      if ( (self.globaldef000086 > (globaldef005762 + globaldef001194)) ) {

         globaldef005748.globaldef000558 = (globaldef005748.globaldef000558 | globaldef000694);
         globaldef005748.globaldef000547 = globaldef005748.globaldef000083;
         globaldef005748.globaldef000551 = self.globaldef000083;

      }
      setorigin (self,globaldef005759);

   }
   self.globaldef000160 = globaldef005764;
   self = globaldef005757;

};

void () func002275;

// function func002275
// function number 2275 begins at statement 27730
/*
 * OP_LOAD_F	28	186	16472
 * OP_LE	16472	31	16473
 * OP_IFNOT	16473	6	0
 * OP_LOAD_F	28	103	16474
 * OP_EQ_F	16474	229	16475
 * OP_IFNOT	16475	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	16425	0	0
 * OP_DONE	0	0	0
 */

void () func002275 = {

   local float globaldef005766;

   if ( (self.globaldef000164 <= time) ) {

      if ( (self.globaldef000081 == MOVETYPE_STEP) ) {

         func002274 (self);

      }

   }

};

void () func002276;

// function func002276
// function number 2276 begins at statement 27739
/*
 * OP_LOAD_F	28	103	16488
 * OP_EQ_F	16488	229	16489
 * OP_IFNOT	16489	105	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1057	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	16357	0	0
 * OP_LOAD_F	28	575	16490
 * OP_BITAND	16490	711	16491
 * OP_IFNOT	16491	9	0
 * OP_STORE_F	214	16487	0
 * OP_ADDRESS	28	575	16492
 * OP_LOAD_F	28	575	16493
 * OP_LOAD_F	28	575	16494
 * OP_BITAND	16494	711	16495
 * OP_SUB_F	16493	16495	16496
 * OP_STOREP_F	16496	16492	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	213	16487	0
 * OP_IFNOT	16487	17	0
 * OP_LOAD_F	28	189	16497
 * OP_NOT_F	16497	0	16498
 * OP_IFNOT	16498	7	0
 * OP_LOAD_F	28	575	16499
 * OP_BITAND	16499	700	16500
 * OP_NOT_F	16500	0	16501
 * OP_IFNOT	16501	2	0
 * OP_STORE_F	213	16487	0
 * OP_GOTO	8	0	0
 * OP_LOAD_F	28	189	16502
 * OP_EQ_F	16502	214	16503
 * OP_IFNOT	16503	5	0
 * OP_LOAD_F	28	182	16504
 * OP_BITAND	16504	225	16505
 * OP_IFNOT	16505	2	0
 * OP_STORE_F	213	16487	0
 * OP_IFNOT	16487	10	0
 * OP_LOAD_F	28	114	16506
 * OP_LOAD_F	28	561	16507
 * OP_EQ_F	16506	16507	16508
 * OP_LOAD_F	28	115	16509
 * OP_LOAD_F	28	562	16510
 * OP_EQ_F	16509	16510	16511
 * OP_AND	16508	16511	16512
 * OP_IFNOT	16512	2	0
 * OP_STORE_F	213	16487	0
 * OP_LOAD_F	28	555	16513
 * OP_SUB_F	31	16513	16514
 * OP_STORE_F	16514	16483	0
 * OP_IFNOT	16487	7	0
 * OP_LOAD_F	28	108	16515
 * OP_LOAD_F	28	559	16516
 * OP_ADD_F	16516	6133	16517
 * OP_GE	16515	16517	16518
 * OP_IFNOT	16518	2	0
 * OP_STORE_F	213	16487	0
 * OP_IFNOT	16487	51	0
 * OP_LOAD_F	28	182	16519
 * OP_STORE_F	16519	16484	0
 * OP_ADDRESS	28	182	16520
 * OP_LOAD_F	28	182	16521
 * OP_BITOR	16521	223	16522
 * OP_BITOR	16522	224	16523
 * OP_STOREP_F	16523	16520	0
 * OP_LOAD_V	28	105	16524
 * OP_STORE_V	16524	16480	0
 * OP_ADDRESS	28	105	16527
 * OP_LOAD_V	28	564	16530
 * OP_STOREP_V	16530	16527	0
 * OP_LOAD_V	28	560	16533
 * OP_MUL_VF	16533	16483	16536
 * OP_LOAD_V	28	564	16539
 * OP_LOAD_V	28	556	16542
 * OP_SUB_V	16539	16542	16545
 * OP_SUB_V	16536	16545	16548
 * OP_STORE_V	16548	16477	0
 * OP_STORE_F	213	16479	0
 * OP_STORE_V	16477	4	0
 * OP_CALL1	463	0	0
 * OP_STORE_F	1	16485	0
 * OP_STORE_V	16477	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	16486	0
 * OP_STORE_V	16485	4	0
 * OP_STORE_V	16486	7	0
 * OP_CALL2	480	0	0
 * OP_NOT_F	1	0	16551
 * OP_IFNOT	16551	4	0
 * OP_ADDRESS	28	105	16552
 * OP_LOAD_V	28	568	16555
 * OP_STOREP_V	16555	16552	0
 * OP_ADDRESS	28	113	16558
 * OP_LOAD_V	28	560	16561
 * OP_STOREP_V	16561	16558	0
 * OP_ADDRESS	28	116	16564
 * OP_STOREP_F	213	16564	0
 * OP_ADDRESS	28	182	16565
 * OP_BITOR	16484	223	16566
 * OP_STOREP_F	16566	16565	0
 * OP_ADDRESS	28	575	16567
 * OP_LOAD_F	28	575	16568
 * OP_BITOR	16568	700	16569
 * OP_STOREP_F	16569	16567	0
 * OP_ADDRESS	28	575	16570
 * OP_LOAD_F	28	575	16571
 * OP_BITOR	16571	712	16572
 * OP_STOREP_F	16572	16570	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1056	0	0
 * OP_ADDRESS	28	555	16573
 * OP_STOREP_F	31	16573	0
 * OP_ADDRESS	28	148	16574
 * OP_LOAD_FNC	28	553	16575
 * OP_STOREP_FNC	16575	16574	0
 * OP_ADDRESS	28	150	16576
 * OP_LOAD_F	28	554	16577
 * OP_STOREP_F	16577	16576	0
 * OP_LOAD_F	28	150	16578
 * OP_GT	31	16578	16579
 * OP_IFNOT	16579	6	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	16328	0	0
 * OP_LOAD_FNC	28	148	16580
 * OP_CALL0	16580	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	28	103	16581
 * OP_EQ_F	16581	229	16582
 * OP_IFNOT	16582	17	0
 * OP_LOAD_F	28	189	16583
 * OP_GE	16583	228	16584
 * OP_IFNOT	16584	5	0
 * OP_ADDRESS	28	113	16585
 * OP_LOAD_V	28	560	16588
 * OP_STOREP_V	16588	16585	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	28	182	16591
 * OP_BITAND	16591	223	16592
 * OP_IFNOT	16592	7	0
 * OP_ADDRESS	28	114	16593
 * OP_LOAD_F	28	561	16594
 * OP_STOREP_F	16594	16593	0
 * OP_ADDRESS	28	115	16595
 * OP_LOAD_F	28	562	16596
 * OP_STOREP_F	16596	16595	0
 * OP_DONE	0	0	0
 */

void () func002276 = {

   local vector globaldef005768;
   local vector globaldef005772;
   local float globaldef005776;
   local float globaldef005777;
   local float globaldef005778;
   local float globaldef005779;
   local float globaldef005780;

   if ( (self.globaldef000081 == MOVETYPE_STEP) ) {

      func002273 (self);
      func002272 (self);
      if ( (self.globaldef000558 & globaldef000694) ) {

         globaldef005780 = TRUE;
         self.globaldef000558 = (self.globaldef000558 - (self.globaldef000558 & globaldef000694));

      } else {

         globaldef005780 = FALSE;

      }
      if ( globaldef005780 ) {

         if ( !self.globaldef000167 ) {

            if ( !(self.globaldef000558 & globaldef000683) ) {

               globaldef005780 = FALSE;

            }

         } else {

            if ( (self.globaldef000167 == TRUE) ) {

               if ( (self.globaldef000160 & FL_WATERJUMP) ) {

                  globaldef005780 = FALSE;

               }

            }

         }

      }
      if ( globaldef005780 ) {

         if ( ((self.globaldef000092 == self.globaldef000544) && (self.globaldef000093 == self.globaldef000545)) ) {

            globaldef005780 = FALSE;

         }

      }
      globaldef005776 = (time - self.globaldef000538);
      if ( globaldef005780 ) {

         if ( (self.globaldef000086 >= (self.globaldef000542 + globaldef002221)) ) {

            globaldef005780 = FALSE;

         }

      }
      if ( globaldef005780 ) {

         globaldef005777 = self.globaldef000160;
         self.globaldef000160 = ((self.globaldef000160 | FL_ONGROUND) | FL_PARTIALGROUND);
         globaldef005772 = self.globaldef000083;
         self.globaldef000083 = self.globaldef000547;
         globaldef005768 = ((self.globaldef000543 * globaldef005776) - (self.globaldef000547 - self.globaldef000539));
         globaldef005771 = FALSE;
         globaldef005778 = vectoyaw (globaldef005768);
         globaldef005779 = vlen (globaldef005768);
         if ( !walkmove (globaldef005778,globaldef005779) ) {

            self.globaldef000083 = self.globaldef000551;

         }
         self.globaldef000091 = self.globaldef000543;
         self.globaldef000094 = FALSE;
         self.globaldef000160 = (globaldef005777 | FL_ONGROUND);
         self.globaldef000558 = (self.globaldef000558 | globaldef000683);
         self.globaldef000558 = (self.globaldef000558 | globaldef000695);

      }

   }
   func002268 (self);
   self.globaldef000538 = time;
   self.globaldef000126 = self.globaldef000536;
   self.globaldef000128 = self.globaldef000537;
   if ( (time > self.globaldef000128) ) {

      func002271 (self);
      self.globaldef000126 ();

   } else {

      if ( (self.globaldef000081 == MOVETYPE_STEP) ) {

         if ( (self.globaldef000167 >= MOVETYPE_WALK) ) {

            self.globaldef000091 = self.globaldef000543;

         } else {

            if ( (self.globaldef000160 & FL_ONGROUND) ) {

               self.globaldef000092 = self.globaldef000544;
               self.globaldef000093 = self.globaldef000545;

            }

         }

      }

   }

};

// function func002277
// function number 2277 begins at statement 27884
/*
 * OP_STORE_ENT	834	16597	0
 * OP_IFNOT	16597	98	0
 * OP_LOAD_F	16597	103	16598
 * OP_EQ_F	16598	229	16599
 * OP_IFNOT	16599	49	0
 * OP_STORE_V	16597	4	0
 * OP_CALL1	16357	0	0
 * OP_LOAD_F	16597	182	16600
 * OP_BITAND	16600	225	16601
 * OP_IFNOT	16601	23	0
 * OP_ADDRESS	16597	114	16602
 * OP_LOAD_F	16597	203	16603
 * OP_STOREP_F	16603	16602	0
 * OP_ADDRESS	16597	115	16604
 * OP_LOAD_F	16597	204	16605
 * OP_STOREP_F	16605	16604	0
 * OP_LOAD_F	16597	575	16606
 * OP_BITAND	16606	700	16607
 * OP_LOAD_F	16597	189	16608
 * OP_GT	16608	216	16609
 * OP_OR	16607	16609	16610
 * OP_LOAD_F	16597	186	16611
 * OP_LT	16611	31	16612
 * OP_OR	16610	16612	16613
 * OP_IFNOT	16613	7	0
 * OP_ADDRESS	16597	182	16614
 * OP_LOAD_F	16597	182	16615
 * OP_SUB_F	16615	225	16616
 * OP_STOREP_F	16616	16614	0
 * OP_ADDRESS	16597	186	16617
 * OP_STOREP_F	213	16617	0
 * OP_GOTO	6	0	0
 * OP_LOAD_F	16597	189	16618
 * OP_EQ_F	16618	216	16619
 * OP_IFNOT	16619	3	0
 * OP_STORE_V	16597	4	0
 * OP_CALL1	16322	0	0
 * OP_LOAD_F	16597	189	16620
 * OP_GE	16620	228	16621
 * OP_LOAD_F	16597	182	16622
 * OP_BITAND	16622	225	16623
 * OP_LOAD_F	16597	189	16624
 * OP_GT	16624	213	16625
 * OP_AND	16623	16625	16626
 * OP_OR	16621	16626	16627
 * OP_IFNOT	16627	6	0
 * OP_ADDRESS	16597	116	16628
 * OP_LOAD_F	16597	116	16629
 * OP_MUL_F	799	32	16630
 * OP_ADD_F	16629	16630	16631
 * OP_STOREP_F	16631	16628	0
 * OP_STORE_V	16597	4	0
 * OP_CALL1	16325	0	0
 * OP_LOAD_FNC	16597	148	16632
 * OP_NE_FNC	16632	16476	16633
 * OP_IFNOT	16633	7	0
 * OP_ADDRESS	16597	553	16634
 * OP_LOAD_FNC	16597	148	16635
 * OP_STOREP_FNC	16635	16634	0
 * OP_ADDRESS	16597	554	16636
 * OP_LOAD_F	16597	150	16637
 * OP_STOREP_F	16637	16636	0
 * OP_ADDRESS	16597	148	16638
 * OP_STOREP_FNC	16476	16638	0
 * OP_ADDRESS	16597	150	16639
 * OP_STOREP_F	31	16639	0
 * OP_ADDRESS	16597	146	16640
 * OP_STOREP_FNC	16470	16640	0
 * OP_ADDRESS	16597	556	16641
 * OP_LOAD_V	16597	105	16644
 * OP_STOREP_V	16644	16641	0
 * OP_ADDRESS	16597	560	16647
 * OP_LOAD_V	16597	113	16650
 * OP_STOREP_V	16650	16647	0
 * OP_ADDRESS	16597	151	16653
 * OP_STOREP_ENT	16597	16653	0
 * OP_LOAD_F	16597	182	16654
 * OP_BITAND	16654	223	16655
 * OP_IFNOT	16655	6	0
 * OP_ADDRESS	16597	182	16656
 * OP_LOAD_F	16597	182	16657
 * OP_BITOR	16657	699	16658
 * OP_STOREP_F	16658	16656	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	16597	182	16659
 * OP_LOAD_F	16597	182	16660
 * OP_LOAD_F	16597	182	16661
 * OP_BITAND	16661	699	16662
 * OP_SUB_F	16660	16662	16663
 * OP_STOREP_F	16663	16659	0
 * OP_ADDRESS	16597	182	16664
 * OP_LOAD_F	16597	182	16665
 * OP_LOAD_F	16597	182	16666
 * OP_BITAND	16666	223	16667
 * OP_SUB_F	16665	16667	16668
 * OP_STOREP_F	16668	16664	0
 * OP_LOAD_ENT	16597	620	16669
 * OP_STORE_ENT	16669	16597	0
 * OP_GOTO	-97	0	0
 * OP_DONE	0	0	0
 */

void () func002277 = {

   local entity globaldef005781;

   globaldef005781 = globaldef000817;
   while ( globaldef005781 ) {

      if ( (globaldef005781.globaldef000081 == MOVETYPE_STEP) ) {

         func002272 (globaldef005781);
         if ( (globaldef005781.globaldef000160 & FL_WATERJUMP) ) {

            globaldef005781.globaldef000092 = globaldef005781.globaldef000181;
            globaldef005781.globaldef000093 = globaldef005781.globaldef000182;
            if ( (((globaldef005781.globaldef000558 & globaldef000683) || (globaldef005781.globaldef000167 > FL_SWIM)) || (globaldef005781.globaldef000164 < time)) ) {

               globaldef005781.globaldef000160 = (globaldef005781.globaldef000160 - FL_WATERJUMP);
               globaldef005781.globaldef000164 = FALSE;

            }

         } else {

            if ( (globaldef005781.globaldef000167 == FL_SWIM) ) {

               func002269 (globaldef005781);

            }

         }
         if ( ((globaldef005781.globaldef000167 >= MOVETYPE_WALK) || ((globaldef005781.globaldef000160 & FL_WATERJUMP) && (globaldef005781.globaldef000167 > FALSE))) ) {

            globaldef005781.globaldef000094 = (globaldef005781.globaldef000094 + (globaldef000782 * frametime));

         }
         func002270 (globaldef005781);

      }
      if ( (globaldef005781.globaldef000126 != func002276) ) {

         globaldef005781.globaldef000536 = globaldef005781.globaldef000126;
         globaldef005781.globaldef000537 = globaldef005781.globaldef000128;

      }
      globaldef005781.globaldef000126 = func002276;
      globaldef005781.globaldef000128 = time;
      globaldef005781.globaldef000124 = func002275;
      globaldef005781.globaldef000539 = globaldef005781.globaldef000083;
      globaldef005781.globaldef000543 = globaldef005781.globaldef000091;
      globaldef005781.globaldef000129 = globaldef005781;
      if ( (globaldef005781.globaldef000160 & FL_ONGROUND) ) {

         globaldef005781.globaldef000160 = (globaldef005781.globaldef000160 | globaldef000682);

      } else {

         globaldef005781.globaldef000160 = (globaldef005781.globaldef000160 - (globaldef005781.globaldef000160 & globaldef000682));

      }
      globaldef005781.globaldef000160 = (globaldef005781.globaldef000160 - (globaldef005781.globaldef000160 & FL_ONGROUND));
      globaldef005781 = globaldef005781.globaldef000603;

   }

};
