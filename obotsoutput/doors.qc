float globaldef003316 /* = 1.000 */;
float globaldef003317 /* = 4.000 */;
float globaldef003318 /* = 8.000 */;
float globaldef003319 /* = 16.000 */;
float globaldef003320 /* = 32.000 */;

void () door_go_down;

void () door_go_up;

void () door_blocked;

// function door_blocked
// function number 536 begins at statement 14806
/*
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_LOAD_F	28	425	10229
 * OP_STORE_V	10229	13	0
 * OP_CALL4	522	0	0
 * OP_LOAD_F	28	418	10230
 * OP_GE	10230	213	10231
 * OP_IFNOT	10231	7	0
 * OP_LOAD_F	28	438	10232
 * OP_EQ_F	10232	285	10233
 * OP_IFNOT	10233	3	0
 * OP_CALL0	10227	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	10226	0	0
 * OP_DONE	0	0	0
 */

void () door_blocked = {

   T_Damage (other,self,self,self.globaldef000408);
   if ( (self.globaldef000401 >= FALSE) ) {

      if ( (self.globaldef000421 == STATE_DOWN) ) {

         door_go_up ();

      } else {

         door_go_down ();

      }

   }

};

void () door_hit_top;

// function door_hit_top
// function number 537 begins at statement 14822
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	209	10235
 * OP_STORE_V	10235	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	438	10236
 * OP_STOREP_F	282	10236	0
 * OP_LOAD_F	28	195	10237
 * OP_BITAND	10237	10225	10238
 * OP_IFNOT	10238	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	148	10239
 * OP_STOREP_FNC	10226	10239	0
 * OP_ADDRESS	28	150	10240
 * OP_LOAD_F	28	102	10241
 * OP_LOAD_F	28	418	10242
 * OP_ADD_F	10241	10242	10243
 * OP_STOREP_F	10243	10240	0
 * OP_DONE	0	0	0
 */

void () door_hit_top = {

   sound (self,CHAN_VOICE,self.globaldef000187,TRUE,ATTN_NORM);
   self.globaldef000421 = STATE_TOP;
   if ( (self.globaldef000173 & globaldef003320) ) {

      return ;

   }
   self.globaldef000126 = door_go_down;
   self.globaldef000128 = (self.globaldef000080 + self.globaldef000401);

};

void () door_hit_bottom;

// function door_hit_bottom
// function number 538 begins at statement 14843
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	209	10245
 * OP_STORE_V	10245	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	438	10246
 * OP_STOREP_F	283	10246	0
 * OP_DONE	0	0	0
 */

void () door_hit_bottom = {

   sound (self,CHAN_VOICE,self.globaldef000187,TRUE,ATTN_NORM);
   self.globaldef000421 = STATE_BOTTOM;

};

// function door_go_down
// function number 539 begins at statement 14853
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	210	10247
 * OP_STORE_V	10247	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_F	28	185	10248
 * OP_IFNOT	10248	6	0
 * OP_ADDRESS	28	163	10249
 * OP_STOREP_F	251	10249	0
 * OP_ADDRESS	28	152	10250
 * OP_LOAD_F	28	185	10251
 * OP_STOREP_F	10251	10250	0
 * OP_ADDRESS	28	438	10252
 * OP_STOREP_F	285	10252	0
 * OP_LOAD_V	28	439	10253
 * OP_STORE_V	10253	4	0
 * OP_LOAD_F	28	369	10256
 * OP_STORE_V	10256	7	0
 * OP_STORE_V	10244	10	0
 * OP_CALL3	514	0	0
 * OP_DONE	0	0	0
 */

void () door_go_down = {

   sound (self,CHAN_VOICE,self.globaldef000188,TRUE,ATTN_NORM);
   if ( self.globaldef000163 ) {

      self.globaldef000141 = DAMAGE_YES;
      self.globaldef000130 = self.globaldef000163;

   }
   self.globaldef000421 = STATE_DOWN;
   SUB_CalcMove (self.globaldef000422,self.globaldef000352,door_hit_bottom);

};

// function door_go_up
// function number 540 begins at statement 14876
/*
 * OP_LOAD_F	28	438	10257
 * OP_EQ_F	10257	284	10258
 * OP_IFNOT	10258	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	438	10259
 * OP_EQ_F	10259	282	10260
 * OP_IFNOT	10260	7	0
 * OP_ADDRESS	28	150	10261
 * OP_LOAD_F	28	102	10262
 * OP_LOAD_F	28	418	10263
 * OP_ADD_F	10262	10263	10264
 * OP_STOREP_F	10264	10261	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	210	10265
 * OP_STORE_V	10265	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	438	10266
 * OP_STOREP_F	284	10266	0
 * OP_LOAD_V	28	443	10267
 * OP_STORE_V	10267	4	0
 * OP_LOAD_F	28	369	10270
 * OP_STORE_V	10270	7	0
 * OP_STORE_V	10234	10	0
 * OP_CALL3	514	0	0
 * OP_CALL0	520	0	0
 * OP_DONE	0	0	0
 */

void () door_go_up = {

   if ( (self.globaldef000421 == STATE_UP) ) {

      return ;

   }
   if ( (self.globaldef000421 == STATE_TOP) ) {

      self.globaldef000128 = (self.globaldef000080 + self.globaldef000401);
      return ;

   }
   sound (self,CHAN_VOICE,self.globaldef000188,TRUE,ATTN_NORM);
   self.globaldef000421 = STATE_UP;
   SUB_CalcMove (self.globaldef000426,self.globaldef000352,door_hit_top);
   SUB_UseTargets ();

};

void () door_fire;

// function door_fire
// function number 541 begins at statement 14906
/*
 * OP_LOAD_ENT	28	201	10274
 * OP_NE_E	10274	28	10275
 * OP_IFNOT	10275	3	0
 * OP_STORE_V	10276	4	0
 * OP_CALL1	461	0	0
 * OP_LOAD_F	28	162	10277
 * OP_IFNOT	10277	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	421	10278
 * OP_STORE_V	10278	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	206	10279
 * OP_STOREP_S	348	10279	0
 * OP_STORE_ENT	28	10272	0
 * OP_LOAD_F	28	195	10280
 * OP_BITAND	10280	10225	10281
 * OP_IFNOT	10281	17	0
 * OP_LOAD_F	28	438	10282
 * OP_EQ_F	10282	284	10283
 * OP_LOAD_F	28	438	10284
 * OP_EQ_F	10284	282	10285
 * OP_OR	10283	10285	10286
 * OP_IFNOT	10286	11	0
 * OP_STORE_ENT	28	10273	0
 * OP_CALL0	10226	0	0
 * OP_LOAD_ENT	28	181	10287
 * OP_STORE_ENT	10287	28	0
 * OP_NE_E	28	10273	10288
 * OP_NE_E	28	30	10289
 * OP_AND	10288	10289	10290
 * OP_IF	10290	-6	0
 * OP_STORE_ENT	10272	28	0
 * OP_RETURN	0	0	0
 * OP_STORE_ENT	28	10273	0
 * OP_CALL0	10227	0	0
 * OP_LOAD_ENT	28	181	10291
 * OP_STORE_ENT	10291	28	0
 * OP_NE_E	28	10273	10292
 * OP_NE_E	28	30	10293
 * OP_AND	10292	10293	10294
 * OP_IF	10294	-6	0
 * OP_STORE_ENT	10272	28	0
 * OP_DONE	0	0	0
 */

void () door_fire = {

   local entity oself;
   local entity starte;

   if ( (self.globaldef000179 != self) ) {

      objerror (globaldef003329);

   }
   if ( self.globaldef000140 ) {

      sound (self,CHAN_VOICE,self.globaldef000404,TRUE,ATTN_NORM);

   }
   self.globaldef000184 = string_null;
   oself = self;
   if ( (self.globaldef000173 & globaldef003320) ) {

      if ( ((self.globaldef000421 == STATE_UP) || (self.globaldef000421 == STATE_TOP)) ) {

         starte = self;
         do {

            door_go_down ();
            self = self.globaldef000159;

         } while ( ((self != starte) && (self != world)) );
         self = oself;
         return ;

      }

   }
   starte = self;
   do {

      door_go_up ();
      self = self.globaldef000159;

   } while ( ((self != starte) && (self != world)) );
   self = oself;

};
string globaldef003329 /* = "door_fire: self.owner != self" */;

void () door_use;

// function door_use
// function number 542 begins at statement 14952
/*
 * OP_STORE_V	29	4	0
 * OP_LOAD_V	29	105	10297
 * OP_STORE_V	10297	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	756	13	0
 * OP_CALL4	1120	0	0
 * OP_LOAD_S	29	129	10300
 * OP_EQ_S	10300	1241	10301
 * OP_IFNOT	10301	3	0
 * OP_STORE_V	29	4	0
 * OP_CALL1	1133	0	0
 * OP_ADDRESS	28	206	10302
 * OP_STOREP_S	3002	10302	0
 * OP_LOAD_ENT	28	201	10303
 * OP_ADDRESS	10303	206	10304
 * OP_STOREP_S	3002	10304	0
 * OP_LOAD_ENT	28	181	10305
 * OP_ADDRESS	10305	206	10306
 * OP_STOREP_S	3002	10306	0
 * OP_STORE_ENT	28	10296	0
 * OP_LOAD_ENT	28	201	10307
 * OP_STORE_ENT	10307	28	0
 * OP_CALL0	10271	0	0
 * OP_STORE_ENT	10296	28	0
 * OP_DONE	0	0	0
 */

void () door_use = {

   local entity oself;

   func002453 (other,other.globaldef000083,TRUE,globaldef000739);
   if ( (other.globaldef000107 == globaldef001171) ) {

      func002473 (other);

   }
   self.globaldef000184 = globaldef001466;
   self.globaldef000179.globaldef000184 = globaldef001466;
   self.globaldef000159.globaldef000184 = globaldef001466;
   oself = self;
   self = self.globaldef000179;
   door_fire ();
   self = oself;

};

void () door_trigger_touch;

// function door_trigger_touch
// function number 543 begins at statement 14977
/*
 * OP_LOAD_F	29	152	10309
 * OP_LE	10309	213	10310
 * OP_IFNOT	10310	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	378	10311
 * OP_LT	31	10311	10312
 * OP_IFNOT	10312	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	378	10313
 * OP_ADD_F	31	214	10314
 * OP_STOREP_F	10314	10313	0
 * OP_STORE_ENT	29	351	0
 * OP_LOAD_ENT	28	201	10315
 * OP_STORE_ENT	10315	28	0
 * OP_CALL0	10295	0	0
 * OP_DONE	0	0	0
 */

void () door_trigger_touch = {

   if ( (other.globaldef000130 <= FALSE) ) {

      return ;

   }
   if ( (time < self.globaldef000361) ) {

      return ;

   }
   self.globaldef000361 = (time + TRUE);
   activator = other;
   self = self.globaldef000179;
   door_use ();

};

void () door_killed;

// function door_killed
// function number 544 begins at statement 14993
/*
 * OP_STORE_ENT	28	10317	0
 * OP_LOAD_ENT	28	201	10318
 * OP_STORE_ENT	10318	28	0
 * OP_ADDRESS	28	152	10319
 * OP_LOAD_F	28	185	10320
 * OP_STOREP_F	10320	10319	0
 * OP_ADDRESS	28	163	10321
 * OP_STOREP_F	250	10321	0
 * OP_CALL0	10295	0	0
 * OP_STORE_ENT	10317	28	0
 * OP_DONE	0	0	0
 */

void () door_killed = {

   local entity oself;

   oself = self;
   self = self.globaldef000179;
   self.globaldef000130 = self.globaldef000163;
   self.globaldef000141 = DAMAGE_NO;
   door_use ();
   self = oself;

};

void () door_touch;

// function door_touch
// function number 545 begins at statement 15004
/*
 * OP_LOAD_S	29	129	10326
 * OP_NE_S	10326	1236	10327
 * OP_IFNOT	10327	5	0
 * OP_LOAD_S	29	129	10328
 * OP_NE_S	10328	1241	10329
 * OP_IFNOT	10329	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	201	10330
 * OP_LOAD_F	10330	378	10331
 * OP_GT	10331	31	10332
 * OP_IFNOT	10332	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	201	10333
 * OP_ADDRESS	10333	378	10334
 * OP_ADD_F	31	216	10335
 * OP_STOREP_F	10335	10334	0
 * OP_LOAD_ENT	28	201	10336
 * OP_LOAD_S	10336	206	10337
 * OP_NE_S	10337	3002	10338
 * OP_IFNOT	10338	15	0
 * OP_LOAD_S	29	129	10339
 * OP_EQ_S	10339	1236	10340
 * OP_IFNOT	10340	6	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_ENT	28	201	10341
 * OP_LOAD_S	10341	206	10342
 * OP_STORE_V	10342	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3152	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_F	28	162	10343
 * OP_NOT_F	10343	0	10344
 * OP_IFNOT	10344	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	162	10345
 * OP_LOAD_F	29	162	10346
 * OP_BITAND	10345	10346	10347
 * OP_LOAD_F	28	162	10348
 * OP_NE_F	10347	10348	10349
 * OP_IFNOT	10349	95	0
 * OP_LOAD_ENT	28	201	10350
 * OP_LOAD_F	10350	162	10351
 * OP_EQ_F	10351	270	10352
 * OP_LOAD_S	29	129	10353
 * OP_EQ_S	10353	1236	10354
 * OP_AND	10352	10354	10355
 * OP_IFNOT	10355	43	0
 * OP_LOAD_F	30	357	10356
 * OP_EQ_F	10356	216	10357
 * OP_IFNOT	10357	12	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	10358	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10359
 * OP_STORE_V	10359	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	28	0	0
 * OP_LOAD_F	30	357	10360
 * OP_EQ_F	10360	214	10361
 * OP_IFNOT	10361	12	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	10362	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10363
 * OP_STORE_V	10363	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	14	0	0
 * OP_LOAD_F	30	357	10364
 * OP_EQ_F	10364	213	10365
 * OP_IFNOT	10365	11	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	10366	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10367
 * OP_STORE_V	10367	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	45	0	0
 * OP_LOAD_S	29	129	10368
 * OP_EQ_S	10368	1236	10369
 * OP_IFNOT	10369	42	0
 * OP_LOAD_F	30	357	10370
 * OP_EQ_F	10370	216	10371
 * OP_IFNOT	10371	12	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	10372	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10373
 * OP_STORE_V	10373	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	28	0	0
 * OP_LOAD_F	30	357	10374
 * OP_EQ_F	10374	214	10375
 * OP_IFNOT	10375	12	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	10376	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10377
 * OP_STORE_V	10377	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	14	0	0
 * OP_LOAD_F	30	357	10378
 * OP_EQ_F	10378	213	10379
 * OP_IFNOT	10379	11	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	10380	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10381
 * OP_STORE_V	10381	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	29	162	10382
 * OP_LOAD_F	29	162	10383
 * OP_LOAD_F	28	162	10384
 * OP_SUB_F	10383	10384	10385
 * OP_STOREP_F	10385	10382	0
 * OP_ADDRESS	28	146	10386
 * OP_STOREP_FNC	519	10386	0
 * OP_LOAD_ENT	28	181	10387
 * OP_IFNOT	10387	4	0
 * OP_LOAD_ENT	28	181	10388
 * OP_ADDRESS	10388	146	10389
 * OP_STOREP_FNC	519	10389	0
 * OP_CALL0	10295	0	0
 * OP_DONE	0	0	0
 */

void () door_touch = {

   local vector globaldef003336;

   if ( (other.globaldef000107 != globaldef001170) ) {

      if ( (other.globaldef000107 != globaldef001171) ) {

         return ;

      }

   }
   if ( (self.globaldef000179.globaldef000361 > time) ) {

      return ;

   }
   self.globaldef000179.globaldef000361 = (time + FL_SWIM);
   if ( (self.globaldef000179.globaldef000184 != globaldef001466) ) {

      if ( (other.globaldef000107 == globaldef001170) ) {

         func000072 (other,self.globaldef000179.globaldef000184);

      }
      sound (other,CHAN_VOICE,globaldef001516,TRUE,ATTN_NORM);

   }
   if ( !self.globaldef000140 ) {

      return ;

   }
   if ( ((self.globaldef000140 & other.globaldef000140) != self.globaldef000140) ) {

      if ( ((self.globaldef000179.globaldef000140 == IT_KEY1) && (other.globaldef000107 == globaldef001170)) ) {

         if ( (world.globaldef000340 == FL_SWIM) ) {

            func000072 (other,globaldef003340);
            sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

         } else {

            if ( (world.globaldef000340 == TRUE) ) {

               func000072 (other,globaldef003341);
               sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

            } else {

               if ( (world.globaldef000340 == FALSE) ) {

                  func000072 (other,globaldef003342);
                  sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

               }

            }

         }

      } else {

         if ( (other.globaldef000107 == globaldef001170) ) {

            if ( (world.globaldef000340 == FL_SWIM) ) {

               func000072 (other,globaldef003343);
               sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

            } else {

               if ( (world.globaldef000340 == TRUE) ) {

                  func000072 (other,globaldef003344);
                  sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

               } else {

                  if ( (world.globaldef000340 == FALSE) ) {

                     func000072 (other,globaldef003345);
                     sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

                  }

               }

            }

         }

      }
      return ;

   }
   other.globaldef000140 = (other.globaldef000140 - self.globaldef000140);
   self.globaldef000124 = SUB_Null;
   if ( self.globaldef000159 ) {

      self.globaldef000159.globaldef000124 = SUB_Null;

   }
   door_use ();

};
string globaldef003340 /* = "You need the silver keycard" */;
string globaldef003341 /* = "You need the silver runekey" */;
string globaldef003342 /* = "You need the silver key" */;
string globaldef003343 /* = "You need the gold keycard" */;
string globaldef003344 /* = "You need the gold runekey" */;
string globaldef003345 /* = "You need the gold key" */;
entity (vector globaldef003347, vector globaldef003351) spawn_field;

// function spawn_field
// function number 546 begins at statement 15156
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	10397	0
 * OP_ADDRESS	10397	103	10404
 * OP_STOREP_F	227	10404	0
 * OP_ADDRESS	10397	104	10405
 * OP_STOREP_F	238	10405	0
 * OP_ADDRESS	10397	201	10406
 * OP_STOREP_ENT	28	10406	0
 * OP_ADDRESS	10397	146	10407
 * OP_STOREP_FNC	10308	10407	0
 * OP_STORE_V	10391	10398	0
 * OP_STORE_V	10394	10401	0
 * OP_STORE_V	10397	4	0
 * OP_SUB_V	10398	10408	10411
 * OP_STORE_V	10411	7	0
 * OP_ADD_V	10401	10408	10414
 * OP_STORE_V	10414	10	0
 * OP_CALL3	455	0	0
 * OP_RETURN	10397	0	0
 * OP_DONE	0	0	0
 */
entity (vector globaldef003347, vector globaldef003351) spawn_field = {

   local entity trigger;
   local vector t1;
   local vector t2;

   trigger = spawn ();
   trigger.globaldef000081 = MOVETYPE_NONE;
   trigger.globaldef000082 = SOLID_TRIGGER;
   trigger.globaldef000179 = self;
   trigger.globaldef000124 = door_trigger_touch;
   t1 = globaldef003347;
   t2 = globaldef003351;
   setsize (trigger,(t1 - globaldef003364),(t2 + globaldef003364));
   return ( trigger );

};
float (entity globaldef003366, entity globaldef003367) EntitiesTouching;

// function EntitiesTouching
// function number 547 begins at statement 15176
/*
 * OP_LOAD_F	10418	135	10420
 * OP_LOAD_F	10419	139	10421
 * OP_GT	10420	10421	10422
 * OP_IFNOT	10422	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	10418	136	10423
 * OP_LOAD_F	10419	140	10424
 * OP_GT	10423	10424	10425
 * OP_IFNOT	10425	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	10418	137	10426
 * OP_LOAD_F	10419	141	10427
 * OP_GT	10426	10427	10428
 * OP_IFNOT	10428	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	10418	139	10429
 * OP_LOAD_F	10419	135	10430
 * OP_LT	10429	10430	10431
 * OP_IFNOT	10431	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	10418	140	10432
 * OP_LOAD_F	10419	136	10433
 * OP_LT	10432	10433	10434
 * OP_IFNOT	10434	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	10418	141	10435
 * OP_LOAD_F	10419	137	10436
 * OP_LT	10435	10436	10437
 * OP_IFNOT	10437	2	0
 * OP_RETURN	213	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef003366, entity globaldef003367) EntitiesTouching = {

   if ( (globaldef003366.globaldef000113 > globaldef003367.globaldef000117) ) {

      return ( FALSE );

   }
   if ( (globaldef003366.globaldef000114 > globaldef003367.globaldef000118) ) {

      return ( FALSE );

   }
   if ( (globaldef003366.globaldef000115 > globaldef003367.globaldef000119) ) {

      return ( FALSE );

   }
   if ( (globaldef003366.globaldef000117 < globaldef003367.globaldef000113) ) {

      return ( FALSE );

   }
   if ( (globaldef003366.globaldef000118 < globaldef003367.globaldef000114) ) {

      return ( FALSE );

   }
   if ( (globaldef003366.globaldef000119 < globaldef003367.globaldef000115) ) {

      return ( FALSE );

   }
   return ( TRUE );

};

void () LinkDoors;

// function LinkDoors
// function number 548 begins at statement 15208
/*
 * OP_LOAD_ENT	28	181	10447
 * OP_IFNOT	10447	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	195	10448
 * OP_BITAND	10448	229	10449
 * OP_IFNOT	10449	6	0
 * OP_ADDRESS	28	201	10450
 * OP_ADDRESS	28	181	10451
 * OP_STOREP_ENT	28	10451	0
 * OP_STOREP_ENT	28	10450	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	134	10452
 * OP_STORE_V	10452	10441	0
 * OP_LOAD_V	28	138	10455
 * OP_STORE_V	10455	10444	0
 * OP_STORE_ENT	28	10440	0
 * OP_STORE_ENT	28	10439	0
 * OP_ADDRESS	28	201	10458
 * OP_STOREP_ENT	10440	10458	0
 * OP_LOAD_F	28	152	10459
 * OP_IFNOT	10459	4	0
 * OP_ADDRESS	10440	152	10460
 * OP_LOAD_F	28	152	10461
 * OP_STOREP_F	10461	10460	0
 * OP_LOAD_S	28	197	10462
 * OP_IFNOT	10462	4	0
 * OP_ADDRESS	10440	197	10463
 * OP_LOAD_S	28	197	10464
 * OP_STOREP_S	10464	10463	0
 * OP_LOAD_S	28	206	10465
 * OP_NE_S	10465	3002	10466
 * OP_IFNOT	10466	4	0
 * OP_ADDRESS	10440	206	10467
 * OP_LOAD_S	28	206	10468
 * OP_STOREP_S	10468	10467	0
 * OP_STORE_V	10439	4	0
 * OP_STORE_V	129	7	0
 * OP_LOAD_S	28	129	10469
 * OP_STORE_V	10469	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	10439	0
 * OP_NOT_ENT	10439	0	10470
 * OP_IFNOT	10470	21	0
 * OP_ADDRESS	28	181	10471
 * OP_STOREP_ENT	10440	10471	0
 * OP_LOAD_ENT	28	201	10472
 * OP_STORE_ENT	10472	28	0
 * OP_LOAD_F	28	152	10473
 * OP_IFNOT	10473	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	197	10474
 * OP_IFNOT	10474	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	162	10475
 * OP_IFNOT	10475	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	201	10476
 * OP_ADDRESS	10476	420	10477
 * OP_STORE_V	10441	4	0
 * OP_STORE_V	10444	7	0
 * OP_CALL2	10390	0	0
 * OP_STOREP_ENT	1	10477	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	10439	7	0
 * OP_CALL2	10417	0	0
 * OP_IFNOT	1	38	0
 * OP_LOAD_ENT	10439	181	10478
 * OP_IFNOT	10478	3	0
 * OP_STORE_V	10479	4	0
 * OP_CALL1	461	0	0
 * OP_ADDRESS	28	181	10480
 * OP_STOREP_ENT	10439	10480	0
 * OP_STORE_ENT	10439	28	0
 * OP_LOAD_F	10439	135	10481
 * OP_LT	10481	10441	10482
 * OP_IFNOT	10482	3	0
 * OP_LOAD_F	10439	135	10483
 * OP_STORE_F	10483	10441	0
 * OP_LOAD_F	10439	136	10484
 * OP_LT	10484	10442	10485
 * OP_IFNOT	10485	3	0
 * OP_LOAD_F	10439	136	10486
 * OP_STORE_F	10486	10442	0
 * OP_LOAD_F	10439	137	10487
 * OP_LT	10487	10443	10488
 * OP_IFNOT	10488	3	0
 * OP_LOAD_F	10439	137	10489
 * OP_STORE_F	10489	10443	0
 * OP_LOAD_F	10439	139	10490
 * OP_GT	10490	10444	10491
 * OP_IFNOT	10491	3	0
 * OP_LOAD_F	10439	139	10492
 * OP_STORE_F	10492	10444	0
 * OP_LOAD_F	10439	140	10493
 * OP_GT	10493	10445	10494
 * OP_IFNOT	10494	3	0
 * OP_LOAD_F	10439	140	10495
 * OP_STORE_F	10495	10445	0
 * OP_LOAD_F	10439	141	10496
 * OP_GT	10496	10446	10497
 * OP_IFNOT	10497	3	0
 * OP_LOAD_F	10439	141	10498
 * OP_STORE_F	10498	10446	0
 * OP_IF	214	-87	0
 * OP_DONE	0	0	0
 */

void () LinkDoors = {

   local entity t;
   local entity starte;
   local vector cmins;
   local vector cmaxs;

   if ( self.globaldef000159 ) {

      return ;

   }
   if ( (self.globaldef000173 & MOVETYPE_STEP) ) {

      self.globaldef000159 = self;
      self.globaldef000179 = self;
      return ;

   }
   cmins = self.globaldef000112;
   cmaxs = self.globaldef000116;
   starte = self;
   t = self;
   do {

      self.globaldef000179 = starte;
      if ( self.globaldef000130 ) {

         starte.globaldef000130 = self.globaldef000130;

      }
      if ( self.globaldef000175 ) {

         starte.globaldef000175 = self.globaldef000175;

      }
      if ( (self.globaldef000184 != globaldef001466) ) {

         starte.globaldef000184 = self.globaldef000184;

      }
      t = find (t,globaldef000107,self.globaldef000107);
      if ( !t ) {

         self.globaldef000159 = starte;
         self = self.globaldef000179;
         if ( self.globaldef000130 ) {

            return ;

         }
         if ( self.globaldef000175 ) {

            return ;

         }
         if ( self.globaldef000140 ) {

            return ;

         }
         self.globaldef000179.globaldef000403 = spawn_field (cmins,cmaxs);
         return ;

      }
      if ( EntitiesTouching (self,t) ) {

         if ( t.globaldef000159 ) {

            objerror (globaldef003379);

         }
         self.globaldef000159 = t;
         self = t;
         if ( (t.globaldef000113 < cmins_x) ) {

            cmins_x = t.globaldef000113;

         }
         if ( (t.globaldef000114 < globaldef003373) ) {

            globaldef003373 = t.globaldef000114;

         }
         if ( (t.globaldef000115 < globaldef003374) ) {

            globaldef003374 = t.globaldef000115;

         }
         if ( (t.globaldef000117 > cmaxs_x) ) {

            cmaxs_x = t.globaldef000117;

         }
         if ( (t.globaldef000118 > globaldef003377) ) {

            globaldef003377 = t.globaldef000118;

         }
         if ( (t.globaldef000119 > globaldef003378) ) {

            globaldef003378 = t.globaldef000119;

         }

      }

   } while ( TRUE );

};
string globaldef003379 /* = "cross connected doors" */;

void () func_door;

// function func_door
// function number 549 begins at statement 15314
/*
 * OP_LOAD_F	30	357	10500
 * OP_EQ_F	10500	213	10501
 * OP_IFNOT	10501	10	0
 * OP_STORE_V	10502	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10503	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	211	10504
 * OP_STOREP_S	10502	10504	0
 * OP_ADDRESS	28	421	10505
 * OP_STOREP_S	10503	10505	0
 * OP_GOTO	27	0	0
 * OP_LOAD_F	30	357	10506
 * OP_EQ_F	10506	214	10507
 * OP_IFNOT	10507	10	0
 * OP_STORE_V	10508	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10509	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	211	10510
 * OP_STOREP_S	10508	10510	0
 * OP_ADDRESS	28	421	10511
 * OP_STOREP_S	10509	10511	0
 * OP_GOTO	15	0	0
 * OP_LOAD_F	30	357	10512
 * OP_EQ_F	10512	216	10513
 * OP_IFNOT	10513	10	0
 * OP_STORE_V	10514	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10515	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	211	10516
 * OP_STOREP_S	10514	10516	0
 * OP_ADDRESS	28	421	10517
 * OP_STOREP_S	10515	10517	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	10518	4	0
 * OP_CALL1	473	0	0
 * OP_LOAD_F	28	207	10519
 * OP_EQ_F	10519	213	10520
 * OP_IFNOT	10520	9	0
 * OP_STORE_V	10521	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10521	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	209	10522
 * OP_STOREP_S	10521	10522	0
 * OP_ADDRESS	28	210	10523
 * OP_STOREP_S	10521	10523	0
 * OP_LOAD_F	28	207	10524
 * OP_EQ_F	10524	214	10525
 * OP_IFNOT	10525	9	0
 * OP_STORE_V	10526	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10527	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	209	10528
 * OP_STOREP_S	10526	10528	0
 * OP_ADDRESS	28	210	10529
 * OP_STOREP_S	10527	10529	0
 * OP_LOAD_F	28	207	10530
 * OP_EQ_F	10530	216	10531
 * OP_IFNOT	10531	9	0
 * OP_STORE_V	10532	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10533	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	210	10534
 * OP_STOREP_S	10532	10534	0
 * OP_ADDRESS	28	209	10535
 * OP_STOREP_S	10533	10535	0
 * OP_LOAD_F	28	207	10536
 * OP_EQ_F	10536	228	10537
 * OP_IFNOT	10537	9	0
 * OP_STORE_V	10538	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10539	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	210	10540
 * OP_STOREP_S	10538	10540	0
 * OP_ADDRESS	28	209	10541
 * OP_STOREP_S	10539	10541	0
 * OP_LOAD_F	28	207	10542
 * OP_EQ_F	10542	229	10543
 * OP_IFNOT	10543	9	0
 * OP_STORE_V	10544	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10545	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	209	10546
 * OP_STOREP_S	10545	10546	0
 * OP_ADDRESS	28	210	10547
 * OP_STOREP_S	10544	10547	0
 * OP_CALL0	2956	0	0
 * OP_ADDRESS	28	185	10548
 * OP_LOAD_F	28	152	10549
 * OP_STOREP_F	10549	10548	0
 * OP_ADDRESS	28	104	10550
 * OP_STOREP_F	241	10550	0
 * OP_ADDRESS	28	103	10551
 * OP_STOREP_F	232	10551	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	10552
 * OP_STORE_V	10552	7	0
 * OP_CALL2	453	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	10555
 * OP_STORE_V	10555	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	129	10556
 * OP_STOREP_S	5259	10556	0
 * OP_ADDRESS	28	149	10557
 * OP_STOREP_FNC	10228	10557	0
 * OP_ADDRESS	28	147	10558
 * OP_STOREP_FNC	10295	10558	0
 * OP_LOAD_F	28	195	10559
 * OP_BITAND	10559	10224	10560
 * OP_IFNOT	10560	3	0
 * OP_ADDRESS	28	162	10561
 * OP_STOREP_F	270	10561	0
 * OP_LOAD_F	28	195	10562
 * OP_BITAND	10562	10223	10563
 * OP_IFNOT	10563	3	0
 * OP_ADDRESS	28	162	10564
 * OP_STOREP_F	271	10564	0
 * OP_LOAD_F	28	369	10565
 * OP_NOT_F	10565	0	10566
 * OP_IFNOT	10566	3	0
 * OP_ADDRESS	28	369	10567
 * OP_STOREP_F	1997	10567	0
 * OP_LOAD_F	28	418	10568
 * OP_NOT_F	10568	0	10569
 * OP_IFNOT	10569	3	0
 * OP_ADDRESS	28	418	10570
 * OP_STOREP_F	228	10570	0
 * OP_LOAD_F	28	437	10571
 * OP_NOT_F	10571	0	10572
 * OP_IFNOT	10572	3	0
 * OP_ADDRESS	28	437	10573
 * OP_STOREP_F	217	10573	0
 * OP_LOAD_F	28	425	10574
 * OP_NOT_F	10574	0	10575
 * OP_IFNOT	10575	3	0
 * OP_ADDRESS	28	425	10576
 * OP_STOREP_F	216	10576	0
 * OP_ADDRESS	28	439	10577
 * OP_LOAD_V	28	105	10580
 * OP_STOREP_V	10580	10577	0
 * OP_ADDRESS	28	443	10583
 * OP_LOAD_V	28	439	10586
 * OP_LOAD_V	28	202	10589
 * OP_LOAD_V	28	202	10592
 * OP_LOAD_V	28	142	10595
 * OP_MUL_V	10592	10595	10598
 * OP_STORE_V	10598	4	0
 * OP_CALL1	488	0	0
 * OP_LOAD_F	28	437	10599
 * OP_SUB_F	1	10599	10600
 * OP_MUL_VF	10589	10600	10601
 * OP_ADD_V	10586	10601	10604
 * OP_STOREP_V	10604	10583	0
 * OP_LOAD_F	28	195	10607
 * OP_BITAND	10607	10221	10608
 * OP_IFNOT	10608	11	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	443	10609
 * OP_STORE_V	10609	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	28	443	10612
 * OP_LOAD_V	28	439	10615
 * OP_STOREP_V	10615	10612	0
 * OP_ADDRESS	28	439	10618
 * OP_LOAD_V	28	105	10621
 * OP_STOREP_V	10621	10618	0
 * OP_ADDRESS	28	438	10624
 * OP_STOREP_F	283	10624	0
 * OP_LOAD_F	28	152	10625
 * OP_IFNOT	10625	5	0
 * OP_ADDRESS	28	163	10626
 * OP_STOREP_F	251	10626	0
 * OP_ADDRESS	28	367	10627
 * OP_STOREP_FNC	10316	10627	0
 * OP_LOAD_F	28	162	10628
 * OP_IFNOT	10628	3	0
 * OP_ADDRESS	28	418	10629
 * OP_STOREP_F	276	10629	0
 * OP_ADDRESS	28	146	10630
 * OP_STOREP_FNC	10322	10630	0
 * OP_ADDRESS	28	548	10631
 * OP_STOREP_FNC	999	10631	0
 * OP_ADDRESS	28	148	10632
 * OP_STOREP_FNC	10438	10632	0
 * OP_ADDRESS	28	150	10633
 * OP_LOAD_F	28	102	10634
 * OP_ADD_F	10634	3036	10635
 * OP_STOREP_F	10635	10633	0
 * OP_DONE	0	0	0
 */

void () func_door = {

   if ( (world.globaldef000340 == FALSE) ) {

      precache_sound (globaldef003381);
      precache_sound (globaldef003382);
      self.globaldef000189 = globaldef003381;
      self.globaldef000404 = globaldef003382;

   } else {

      if ( (world.globaldef000340 == TRUE) ) {

         precache_sound (globaldef003383);
         precache_sound (globaldef003384);
         self.globaldef000189 = globaldef003383;
         self.globaldef000404 = globaldef003384;

      } else {

         if ( (world.globaldef000340 == FL_SWIM) ) {

            precache_sound (globaldef003385);
            precache_sound (globaldef003386);
            self.globaldef000189 = globaldef003385;
            self.globaldef000404 = globaldef003386;

         } else {

            dprint (globaldef003387);

         }

      }

   }
   if ( (self.globaldef000185 == FALSE) ) {

      precache_sound (globaldef003388);
      precache_sound (globaldef003388);
      self.globaldef000187 = globaldef003388;
      self.globaldef000188 = globaldef003388;

   }
   if ( (self.globaldef000185 == TRUE) ) {

      precache_sound (globaldef003389);
      precache_sound (globaldef003390);
      self.globaldef000187 = globaldef003389;
      self.globaldef000188 = globaldef003390;

   }
   if ( (self.globaldef000185 == FL_SWIM) ) {

      precache_sound (globaldef003391);
      precache_sound (globaldef003392);
      self.globaldef000188 = globaldef003391;
      self.globaldef000187 = globaldef003392;

   }
   if ( (self.globaldef000185 == MOVETYPE_WALK) ) {

      precache_sound (globaldef003393);
      precache_sound (globaldef003394);
      self.globaldef000188 = globaldef003393;
      self.globaldef000187 = globaldef003394;

   }
   if ( (self.globaldef000185 == MOVETYPE_STEP) ) {

      precache_sound (globaldef003395);
      precache_sound (globaldef003396);
      self.globaldef000187 = globaldef003396;
      self.globaldef000188 = globaldef003395;

   }
   SetMovedir ();
   self.globaldef000163 = self.globaldef000130;
   self.globaldef000082 = SOLID_BSP;
   self.globaldef000081 = MOVETYPE_PUSH;
   setorigin (self,self.globaldef000083);
   setmodel (self,self.globaldef000108);
   self.globaldef000107 = globaldef001991;
   self.globaldef000127 = door_blocked;
   self.globaldef000125 = door_use;
   if ( (self.globaldef000173 & globaldef003319) ) {

      self.globaldef000140 = IT_KEY1;

   }
   if ( (self.globaldef000173 & globaldef003318) ) {

      self.globaldef000140 = IT_KEY2;

   }
   if ( !self.globaldef000352 ) {

      self.globaldef000352 = globaldef001335;

   }
   if ( !self.globaldef000401 ) {

      self.globaldef000401 = MOVETYPE_WALK;

   }
   if ( !self.globaldef000420 ) {

      self.globaldef000420 = FL_CLIENT;

   }
   if ( !self.globaldef000408 ) {

      self.globaldef000408 = FL_SWIM;

   }
   self.globaldef000422 = self.globaldef000083;
   self.globaldef000426 = (self.globaldef000422 + (self.globaldef000180 * (fabs ((self.globaldef000180 * self.globaldef000120)) - self.globaldef000420)));
   if ( (self.globaldef000173 & globaldef003316) ) {

      setorigin (self,self.globaldef000426);
      self.globaldef000426 = self.globaldef000422;
      self.globaldef000422 = self.globaldef000083;

   }
   self.globaldef000421 = STATE_BOTTOM;
   if ( self.globaldef000130 ) {

      self.globaldef000141 = DAMAGE_YES;
      self.globaldef000350 = door_killed;

   }
   if ( self.globaldef000140 ) {

      self.globaldef000401 = CONTENT_EMPTY;

   }
   self.globaldef000124 = door_touch;
   self.globaldef000531 = func002289;
   self.globaldef000126 = LinkDoors;
   self.globaldef000128 = (self.globaldef000080 + globaldef001488);

};
string globaldef003381 /* = "doors/medtry.wav" */;
string globaldef003382 /* = "doors/meduse.wav" */;
string globaldef003383 /* = "doors/runetry.wav" */;
string globaldef003384 /* = "doors/runeuse.wav" */;
string globaldef003385 /* = "doors/basetry.wav" */;
string globaldef003386 /* = "doors/baseuse.wav" */;
string globaldef003387 /* = "no worldtype set!\n" */;
string globaldef003388 /* = "misc/null.wav" */;
string globaldef003389 /* = "doors/drclos4.wav" */;
string globaldef003390 /* = "doors/doormv1.wav" */;
string globaldef003391 /* = "doors/hydro1.wav" */;
string globaldef003392 /* = "doors/hydro2.wav" */;
string globaldef003393 /* = "doors/stndr1.wav" */;
string globaldef003394 /* = "doors/stndr2.wav" */;
string globaldef003395 /* = "doors/ddoor1.wav" */;
string globaldef003396 /* = "doors/ddoor2.wav" */;

void () fd_secret_move1;

void () fd_secret_move2;

void () fd_secret_move3;

void () fd_secret_move4;

void () fd_secret_move5;

void () fd_secret_move6;

void () fd_secret_done;
float globaldef003404 /* = 1.000 */;
float globaldef003405 /* = 2.000 */;
float globaldef003406 /* = 4.000 */;
float globaldef003407 /* = 8.000 */;
float globaldef003408 /* = 16.000 */;

void () fd_secret_use;

// function fd_secret_use
// function number 550 begins at statement 15511
/*
 * OP_ADDRESS	28	152	10650
 * OP_STOREP_F	5984	10650	0
 * OP_LOAD_V	28	105	10651
 * OP_LOAD_V	28	109	10654
 * OP_NE_V	10651	10654	10657
 * OP_IFNOT	10657	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	206	10658
 * OP_STOREP_S	348	10658	0
 * OP_CALL0	520	0	0
 * OP_LOAD_F	28	195	10659
 * OP_BITAND	10659	10646	10660
 * OP_NOT_F	10660	0	10661
 * OP_IFNOT	10661	5	0
 * OP_ADDRESS	28	366	10662
 * OP_STOREP_FNC	519	10662	0
 * OP_ADDRESS	28	163	10663
 * OP_STOREP_F	250	10663	0
 * OP_ADDRESS	28	113	10664
 * OP_STOREP_V	286	10664	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	209	10667
 * OP_STORE_V	10667	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	150	10668
 * OP_LOAD_F	28	102	10669
 * OP_ADD_F	10669	3036	10670
 * OP_STOREP_F	10670	10668	0
 * OP_LOAD_F	28	195	10671
 * OP_BITAND	10671	10644	10672
 * OP_SUB_F	214	10672	10673
 * OP_STORE_F	10673	10649	0
 * OP_LOAD_V	28	400	10674
 * OP_STORE_V	10674	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_F	28	405	10677
 * OP_NOT_F	10677	0	10678
 * OP_IFNOT	10678	17	0
 * OP_LOAD_F	28	195	10679
 * OP_BITAND	10679	10645	10680
 * OP_IFNOT	10680	8	0
 * OP_ADDRESS	28	405	10681
 * OP_LOAD_V	28	142	10682
 * OP_MUL_V	62	10682	10685
 * OP_STORE_V	10685	4	0
 * OP_CALL1	488	0	0
 * OP_STOREP_F	1	10681	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	405	10686
 * OP_LOAD_V	28	142	10687
 * OP_MUL_V	65	10687	10690
 * OP_STORE_V	10690	4	0
 * OP_CALL1	488	0	0
 * OP_STOREP_F	1	10686	0
 * OP_LOAD_F	28	404	10691
 * OP_NOT_F	10691	0	10692
 * OP_IFNOT	10692	7	0
 * OP_ADDRESS	28	404	10693
 * OP_LOAD_V	28	142	10694
 * OP_MUL_V	59	10694	10697
 * OP_STORE_V	10697	4	0
 * OP_CALL1	488	0	0
 * OP_STOREP_F	1	10693	0
 * OP_LOAD_F	28	195	10698
 * OP_BITAND	10698	10645	10699
 * OP_IFNOT	10699	8	0
 * OP_ADDRESS	28	410	10700
 * OP_LOAD_V	28	105	10703
 * OP_LOAD_F	28	405	10706
 * OP_MUL_VF	62	10706	10707
 * OP_SUB_V	10703	10707	10710
 * OP_STOREP_V	10710	10700	0
 * OP_GOTO	8	0	0
 * OP_ADDRESS	28	410	10713
 * OP_LOAD_V	28	105	10716
 * OP_LOAD_F	28	405	10719
 * OP_MUL_F	10719	10649	10720
 * OP_MUL_VF	65	10720	10721
 * OP_ADD_V	10716	10721	10724
 * OP_STOREP_V	10724	10713	0
 * OP_ADDRESS	28	414	10727
 * OP_LOAD_V	28	410	10730
 * OP_LOAD_F	28	404	10733
 * OP_MUL_VF	59	10733	10734
 * OP_ADD_V	10730	10734	10737
 * OP_STOREP_V	10737	10727	0
 * OP_LOAD_V	28	410	10740
 * OP_STORE_V	10740	4	0
 * OP_LOAD_F	28	369	10743
 * OP_STORE_V	10743	7	0
 * OP_STORE_V	10636	10	0
 * OP_CALL3	514	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	210	10744
 * OP_STORE_V	10744	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_use = {

   local float temp;

   self.globaldef000130 = globaldef002185;
   if ( (self.globaldef000083 != self.globaldef000087) ) {

      return ;

   }
   self.globaldef000184 = string_null;
   SUB_UseTargets ();
   if ( !(self.globaldef000173 & globaldef003407) ) {

      self.globaldef000349 = SUB_Null;
      self.globaldef000141 = DAMAGE_NO;

   }
   self.globaldef000091 = VEC_ORIGIN;
   sound (self,CHAN_VOICE,self.globaldef000187,TRUE,ATTN_NORM);
   self.globaldef000128 = (self.globaldef000080 + globaldef001488);
   temp = (TRUE - (self.globaldef000173 & globaldef003405));
   makevectors (self.globaldef000383);
   if ( !self.globaldef000388 ) {

      if ( (self.globaldef000173 & globaldef003406) ) {

         self.globaldef000388 = fabs ((v_up * self.globaldef000120));

      } else {

         self.globaldef000388 = fabs ((v_right * self.globaldef000120));

      }

   }
   if ( !self.globaldef000387 ) {

      self.globaldef000387 = fabs ((v_forward * self.globaldef000120));

   }
   if ( (self.globaldef000173 & globaldef003406) ) {

      self.globaldef000393 = (self.globaldef000083 - (v_up * self.globaldef000388));

   } else {

      self.globaldef000393 = (self.globaldef000083 + (v_right * (self.globaldef000388 * temp)));

   }
   self.globaldef000397 = (self.globaldef000393 + (v_forward * self.globaldef000387));
   SUB_CalcMove (self.globaldef000393,self.globaldef000352,fd_secret_move1);
   sound (self,CHAN_VOICE,self.globaldef000188,TRUE,ATTN_NORM);

};

// function fd_secret_move1
// function number 551 begins at statement 15614
/*
 * OP_ADDRESS	28	150	10745
 * OP_LOAD_F	28	102	10746
 * OP_ADD_F	10746	214	10747
 * OP_STOREP_F	10747	10745	0
 * OP_ADDRESS	28	148	10748
 * OP_STOREP_FNC	10637	10748	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10749
 * OP_STORE_V	10749	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_move1 = {

   self.globaldef000128 = (self.globaldef000080 + TRUE);
   self.globaldef000126 = fd_secret_move2;
   sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

};

// function fd_secret_move2
// function number 552 begins at statement 15628
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	210	10750
 * OP_STORE_V	10750	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	414	10751
 * OP_STORE_V	10751	4	0
 * OP_LOAD_F	28	369	10754
 * OP_STORE_V	10754	7	0
 * OP_STORE_V	10638	10	0
 * OP_CALL3	514	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_move2 = {

   sound (self,CHAN_VOICE,self.globaldef000188,TRUE,ATTN_NORM);
   SUB_CalcMove (self.globaldef000397,self.globaldef000352,fd_secret_move3);

};

// function fd_secret_move3
// function number 553 begins at statement 15642
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10755
 * OP_STORE_V	10755	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_F	28	195	10756
 * OP_BITAND	10756	10643	10757
 * OP_NOT_F	10757	0	10758
 * OP_IFNOT	10758	8	0
 * OP_ADDRESS	28	150	10759
 * OP_LOAD_F	28	102	10760
 * OP_LOAD_F	28	418	10761
 * OP_ADD_F	10760	10761	10762
 * OP_STOREP_F	10762	10759	0
 * OP_ADDRESS	28	148	10763
 * OP_STOREP_FNC	10639	10763	0
 * OP_DONE	0	0	0
 */

void () fd_secret_move3 = {

   sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);
   if ( !(self.globaldef000173 & globaldef003404) ) {

      self.globaldef000128 = (self.globaldef000080 + self.globaldef000401);
      self.globaldef000126 = fd_secret_move4;

   }

};

// function fd_secret_move4
// function number 554 begins at statement 15661
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	210	10764
 * OP_STORE_V	10764	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	410	10765
 * OP_STORE_V	10765	4	0
 * OP_LOAD_F	28	369	10768
 * OP_STORE_V	10768	7	0
 * OP_STORE_V	10640	10	0
 * OP_CALL3	514	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_move4 = {

   sound (self,CHAN_VOICE,self.globaldef000188,TRUE,ATTN_NORM);
   SUB_CalcMove (self.globaldef000393,self.globaldef000352,fd_secret_move5);

};

// function fd_secret_move5
// function number 555 begins at statement 15675
/*
 * OP_ADDRESS	28	150	10769
 * OP_LOAD_F	28	102	10770
 * OP_ADD_F	10770	214	10771
 * OP_STOREP_F	10771	10769	0
 * OP_ADDRESS	28	148	10772
 * OP_STOREP_FNC	10641	10772	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10773
 * OP_STORE_V	10773	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_move5 = {

   self.globaldef000128 = (self.globaldef000080 + TRUE);
   self.globaldef000126 = fd_secret_move6;
   sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

};

// function fd_secret_move6
// function number 556 begins at statement 15689
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	210	10774
 * OP_STORE_V	10774	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	109	10775
 * OP_STORE_V	10775	4	0
 * OP_LOAD_F	28	369	10778
 * OP_STORE_V	10778	7	0
 * OP_STORE_V	10642	10	0
 * OP_CALL3	514	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_move6 = {

   sound (self,CHAN_VOICE,self.globaldef000188,TRUE,ATTN_NORM);
   SUB_CalcMove (self.globaldef000087,self.globaldef000352,fd_secret_done);

};

// function fd_secret_done
// function number 557 begins at statement 15703
/*
 * OP_LOAD_S	28	197	10779
 * OP_NOT_S	10779	0	10780
 * OP_LOAD_F	28	195	10781
 * OP_BITAND	10781	10647	10782
 * OP_OR	10780	10782	10783
 * OP_IFNOT	10783	7	0
 * OP_ADDRESS	28	152	10784
 * OP_STOREP_F	5984	10784	0
 * OP_ADDRESS	28	163	10785
 * OP_STOREP_F	251	10785	0
 * OP_ADDRESS	28	366	10786
 * OP_STOREP_FNC	10648	10786	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	211	10787
 * OP_STORE_V	10787	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () fd_secret_done = {

   if ( (!self.globaldef000175 || (self.globaldef000173 & globaldef003408)) ) {

      self.globaldef000130 = globaldef002185;
      self.globaldef000141 = DAMAGE_YES;
      self.globaldef000349 = fd_secret_use;

   }
   sound (self,CHAN_VOICE,self.globaldef000189,TRUE,ATTN_NORM);

};

void () secret_blocked;

// function secret_blocked
// function number 558 begins at statement 15723
/*
 * OP_LOAD_F	28	378	10789
 * OP_LT	31	10789	10790
 * OP_IFNOT	10790	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	378	10791
 * OP_ADD_F	31	539	10792
 * OP_STOREP_F	10792	10791	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_LOAD_F	28	425	10793
 * OP_STORE_V	10793	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void () secret_blocked = {

   if ( (time < self.globaldef000361) ) {

      return ;

   }
   self.globaldef000361 = (time + globaldef000522);
   T_Damage (other,self,self,self.globaldef000408);

};

void () secret_touch;

// function secret_touch
// function number 559 begins at statement 15737
/*
 * OP_LOAD_S	29	129	10795
 * OP_NE_S	10795	1236	10796
 * OP_IFNOT	10796	5	0
 * OP_LOAD_S	29	129	10797
 * OP_NE_S	10797	1241	10798
 * OP_IFNOT	10798	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	378	10799
 * OP_GT	10799	31	10800
 * OP_IFNOT	10800	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	378	10801
 * OP_ADD_F	31	216	10802
 * OP_STOREP_F	10802	10801	0
 * OP_LOAD_S	28	206	10803
 * OP_IFNOT	10803	14	0
 * OP_LOAD_S	29	129	10804
 * OP_EQ_S	10804	1236	10805
 * OP_IFNOT	10805	5	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_S	28	206	10806
 * OP_STORE_V	10806	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	3152	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () secret_touch = {

   if ( (other.globaldef000107 != globaldef001170) ) {

      if ( (other.globaldef000107 != globaldef001171) ) {

         return ;

      }

   }
   if ( (self.globaldef000361 > time) ) {

      return ;

   }
   self.globaldef000361 = (time + FL_SWIM);
   if ( self.globaldef000184 ) {

      if ( (other.globaldef000107 == globaldef001170) ) {

         func000072 (other,self.globaldef000184);

      }
      sound (other,CHAN_BODY,globaldef001516,TRUE,ATTN_NORM);

   }

};

void () func_door_secret;

// function func_door_secret
// function number 560 begins at statement 15767
/*
 * OP_LOAD_F	28	207	10808
 * OP_EQ_F	10808	213	10809
 * OP_IFNOT	10809	3	0
 * OP_ADDRESS	28	207	10810
 * OP_STOREP_F	228	10810	0
 * OP_LOAD_F	28	207	10811
 * OP_EQ_F	10811	214	10812
 * OP_IFNOT	10812	13	0
 * OP_STORE_V	10813	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10814	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10526	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	209	10815
 * OP_STOREP_S	10813	10815	0
 * OP_ADDRESS	28	210	10816
 * OP_STOREP_S	10814	10816	0
 * OP_ADDRESS	28	211	10817
 * OP_STOREP_S	10526	10817	0
 * OP_LOAD_F	28	207	10818
 * OP_EQ_F	10818	216	10819
 * OP_IFNOT	10819	11	0
 * OP_STORE_V	10820	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10821	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	210	10822
 * OP_STOREP_S	10820	10822	0
 * OP_ADDRESS	28	209	10823
 * OP_STOREP_S	10821	10823	0
 * OP_ADDRESS	28	211	10824
 * OP_STOREP_S	10821	10824	0
 * OP_LOAD_F	28	207	10825
 * OP_EQ_F	10825	228	10826
 * OP_IFNOT	10826	11	0
 * OP_STORE_V	10827	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	10828	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	210	10829
 * OP_STOREP_S	10827	10829	0
 * OP_ADDRESS	28	209	10830
 * OP_STOREP_S	10828	10830	0
 * OP_ADDRESS	28	211	10831
 * OP_STOREP_S	10828	10831	0
 * OP_LOAD_F	28	425	10832
 * OP_NOT_F	10832	0	10833
 * OP_IFNOT	10833	3	0
 * OP_ADDRESS	28	425	10834
 * OP_STOREP_F	216	10834	0
 * OP_ADDRESS	28	400	10835
 * OP_LOAD_V	28	117	10838
 * OP_STOREP_V	10838	10835	0
 * OP_ADDRESS	28	117	10841
 * OP_STOREP_V	286	10841	0
 * OP_ADDRESS	28	104	10844
 * OP_STOREP_F	241	10844	0
 * OP_ADDRESS	28	103	10845
 * OP_STOREP_F	232	10845	0
 * OP_ADDRESS	28	129	10846
 * OP_STOREP_S	5259	10846	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	10847
 * OP_STORE_V	10847	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	10848
 * OP_STORE_V	10848	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	28	146	10851
 * OP_STOREP_FNC	10794	10851	0
 * OP_ADDRESS	28	548	10852
 * OP_STOREP_FNC	1000	10852	0
 * OP_ADDRESS	28	149	10853
 * OP_STOREP_FNC	10788	10853	0
 * OP_ADDRESS	28	369	10854
 * OP_STOREP_F	1470	10854	0
 * OP_ADDRESS	28	147	10855
 * OP_STOREP_FNC	10648	10855	0
 * OP_LOAD_S	28	197	10856
 * OP_NOT_S	10856	0	10857
 * OP_LOAD_F	28	195	10858
 * OP_BITAND	10858	10647	10859
 * OP_OR	10857	10859	10860
 * OP_IFNOT	10860	7	0
 * OP_ADDRESS	28	152	10861
 * OP_STOREP_F	5984	10861	0
 * OP_ADDRESS	28	163	10862
 * OP_STOREP_F	251	10862	0
 * OP_ADDRESS	28	366	10863
 * OP_STOREP_FNC	10648	10863	0
 * OP_ADDRESS	28	109	10864
 * OP_LOAD_V	28	105	10867
 * OP_STOREP_V	10867	10864	0
 * OP_LOAD_F	28	418	10870
 * OP_NOT_F	10870	0	10871
 * OP_IFNOT	10871	3	0
 * OP_ADDRESS	28	418	10872
 * OP_STOREP_F	230	10872	0
 * OP_DONE	0	0	0
 */

void () func_door_secret = {

   if ( (self.globaldef000185 == FALSE) ) {

      self.globaldef000185 = MOVETYPE_WALK;

   }
   if ( (self.globaldef000185 == TRUE) ) {

      precache_sound (globaldef003414);
      precache_sound (globaldef003415);
      precache_sound (globaldef003389);
      self.globaldef000187 = globaldef003414;
      self.globaldef000188 = globaldef003415;
      self.globaldef000189 = globaldef003389;

   }
   if ( (self.globaldef000185 == FL_SWIM) ) {

      precache_sound (globaldef003416);
      precache_sound (globaldef003417);
      self.globaldef000188 = globaldef003416;
      self.globaldef000187 = globaldef003417;
      self.globaldef000189 = globaldef003417;

   }
   if ( (self.globaldef000185 == MOVETYPE_WALK) ) {

      precache_sound (globaldef003418);
      precache_sound (globaldef003419);
      self.globaldef000188 = globaldef003418;
      self.globaldef000187 = globaldef003419;
      self.globaldef000189 = globaldef003419;

   }
   if ( !self.globaldef000408 ) {

      self.globaldef000408 = FL_SWIM;

   }
   self.globaldef000383 = self.globaldef000095;
   self.globaldef000095 = VEC_ORIGIN;
   self.globaldef000082 = SOLID_BSP;
   self.globaldef000081 = MOVETYPE_PUSH;
   self.globaldef000107 = globaldef001991;
   setmodel (self,self.globaldef000108);
   setorigin (self,self.globaldef000083);
   self.globaldef000124 = secret_touch;
   self.globaldef000531 = func002290;
   self.globaldef000127 = secret_blocked;
   self.globaldef000352 = globaldef001257;
   self.globaldef000125 = fd_secret_use;
   if ( (!self.globaldef000175 || (self.globaldef000173 & globaldef003408)) ) {

      self.globaldef000130 = globaldef002185;
      self.globaldef000141 = DAMAGE_YES;
      self.globaldef000349 = fd_secret_use;

   }
   self.globaldef000087 = self.globaldef000083;
   if ( !self.globaldef000401 ) {

      self.globaldef000401 = MOVETYPE_FLY;

   }

};
