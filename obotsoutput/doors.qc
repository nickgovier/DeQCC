float globaldef3316 /* = 1.000 */;
float globaldef3317 /* = 4.000 */;
float globaldef3318 /* = 8.000 */;
float globaldef3319 /* = 16.000 */;
float globaldef3320 /* = 32.000 */;

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

   globaldef505 (other,self,self,self.globaldef408);
   if ( (self.globaldef401 >= FALSE) ) {

      if ( (self.globaldef421 == STATE_DOWN) ) {

         globaldef3322 ();

      } else {

         globaldef3321 ();

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

   sound (self,CHAN_VOICE,self.globaldef187,TRUE,ATTN_NORM);
   self.globaldef421 = STATE_TOP;
   if ( (self.globaldef173 & globaldef3320) ) {

      return ;

   }
   self.think = globaldef3321;
   self.nextthink = (self.ltime + self.globaldef401);

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

   sound (self,CHAN_VOICE,self.globaldef187,TRUE,ATTN_NORM);
   self.globaldef421 = STATE_BOTTOM;

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

   sound (self,CHAN_VOICE,self.globaldef188,TRUE,ATTN_NORM);
   if ( self.globaldef163 ) {

      self.globaldef141 = DAMAGE_YES;
      self.globaldef130 = self.globaldef163;

   }
   self.globaldef421 = STATE_DOWN;
   SUB_CalcMove (self.globaldef422,self.globaldef352,globaldef3325);

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

   if ( (self.globaldef421 == STATE_UP) ) {

      return ;

   }
   if ( (self.globaldef421 == STATE_TOP) ) {

      self.nextthink = (self.ltime + self.globaldef401);
      return ;

   }
   sound (self,CHAN_VOICE,self.globaldef188,TRUE,ATTN_NORM);
   self.globaldef421 = STATE_UP;
   SUB_CalcMove (self.globaldef426,self.globaldef352,globaldef3324);
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

   local entity globaldef3327;
   local entity globaldef3328;

   if ( (self.globaldef179 != self) ) {

      objerror (globaldef3329);

   }
   if ( self.globaldef140 ) {

      sound (self,CHAN_VOICE,self.globaldef404,TRUE,ATTN_NORM);

   }
   self.message = string_null;
   globaldef3327 = self;
   if ( (self.globaldef173 & globaldef3320) ) {

      if ( ((self.globaldef421 == STATE_UP) || (self.globaldef421 == STATE_TOP)) ) {

         globaldef3328 = self;
         do {

            globaldef3321 ();
            self = self.enemy;

         } while ( ((self != globaldef3328) && (self != world)) );
         self = globaldef3327;
         return ;

      }

   }
   globaldef3328 = self;
   do {

      globaldef3322 ();
      self = self.enemy;

   } while ( ((self != globaldef3328) && (self != world)) );
   self = globaldef3327;

};
string globaldef3329 /* = "door_fire: self.owner != self" */;

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

   local entity globaldef3331;

   globaldef1058 (other,other.origin,TRUE,globaldef739);
   if ( (other.classname == globaldef1171) ) {

      globaldef1071 (other);

   }
   self.message = "";
   self.globaldef179.message = "";
   self.enemy.message = "";
   globaldef3331 = self;
   self = self.globaldef179;
   globaldef3326 ();
   self = globaldef3331;

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

   if ( (other.globaldef130 <= FALSE) ) {

      return ;

   }
   if ( (time < self.attack_finished) ) {

      return ;

   }
   self.attack_finished = (time + TRUE);
   activator = other;
   self = self.globaldef179;
   globaldef3330 ();

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

   local entity globaldef3334;

   globaldef3334 = self;
   self = self.globaldef179;
   self.globaldef130 = self.globaldef163;
   self.globaldef141 = DAMAGE_NO;
   globaldef3330 ();
   self = globaldef3334;

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

   local vector globaldef3336;

   if ( (other.classname != "player") ) {

      if ( (other.classname != globaldef1171) ) {

         return ;

      }

   }
   if ( (self.globaldef179.attack_finished > time) ) {

      return ;

   }
   self.globaldef179.attack_finished = (time + FL_SWIM);
   if ( (self.globaldef179.message != "") ) {

      if ( (other.classname == "player") ) {

         centerprint (other,self.globaldef179.message);

      }
      sound (other,CHAN_VOICE,"misc/talk.wav",TRUE,ATTN_NORM);

   }
   if ( !self.globaldef140 ) {

      return ;

   }
   if ( ((self.globaldef140 & other.globaldef140) != self.globaldef140) ) {

      if ( ((self.globaldef179.globaldef140 == IT_KEY1) && (other.classname == "player")) ) {

         if ( (world.globaldef340 == FL_SWIM) ) {

            centerprint (other,globaldef3340);
            sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

         } else {

            if ( (world.globaldef340 == TRUE) ) {

               centerprint (other,globaldef3341);
               sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

            } else {

               if ( (world.globaldef340 == FALSE) ) {

                  centerprint (other,globaldef3342);
                  sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

               }

            }

         }

      } else {

         if ( (other.classname == "player") ) {

            if ( (world.globaldef340 == FL_SWIM) ) {

               centerprint (other,globaldef3343);
               sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

            } else {

               if ( (world.globaldef340 == TRUE) ) {

                  centerprint (other,globaldef3344);
                  sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

               } else {

                  if ( (world.globaldef340 == FALSE) ) {

                     centerprint (other,globaldef3345);
                     sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

                  }

               }

            }

         }

      }
      return ;

   }
   other.globaldef140 = (other.globaldef140 - self.globaldef140);
   self.globaldef124 = SUB_Null;
   if ( self.enemy ) {

      self.enemy.globaldef124 = SUB_Null;

   }
   globaldef3330 ();

};
string globaldef3340 /* = "You need the silver keycard" */;
string globaldef3341 /* = "You need the silver runekey" */;
string globaldef3342 /* = "You need the silver key" */;
string globaldef3343 /* = "You need the gold keycard" */;
string globaldef3344 /* = "You need the gold runekey" */;
string globaldef3345 /* = "You need the gold key" */;
entity (vector globaldef3347, vector globaldef3351) spawn_field;

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
entity (vector globaldef3347, vector globaldef3351) spawn_field = {

   local entity globaldef3355;
   local vector globaldef3356;
   local vector globaldef3360;

   globaldef3355 = spawn ();
   globaldef3355.movetype = MOVETYPE_NONE;
   globaldef3355.solid = SOLID_TRIGGER;
   globaldef3355.globaldef179 = self;
   globaldef3355.globaldef124 = globaldef3332;
   globaldef3356 = globaldef3347;
   globaldef3360 = globaldef3351;
   globaldef438 (globaldef3355,(globaldef3356 - globaldef3364),(globaldef3360 + globaldef3364));
   return ( globaldef3355 );

};
float (entity globaldef3366, entity globaldef3367) EntitiesTouching;

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
float (entity globaldef3366, entity globaldef3367) EntitiesTouching = {

   if ( (globaldef3366.globaldef113 > globaldef3367.globaldef117) ) {

      return ( FALSE );

   }
   if ( (globaldef3366.globaldef114 > globaldef3367.globaldef118) ) {

      return ( FALSE );

   }
   if ( (globaldef3366.globaldef115 > globaldef3367.globaldef119) ) {

      return ( FALSE );

   }
   if ( (globaldef3366.globaldef117 < globaldef3367.globaldef113) ) {

      return ( FALSE );

   }
   if ( (globaldef3366.globaldef118 < globaldef3367.globaldef114) ) {

      return ( FALSE );

   }
   if ( (globaldef3366.globaldef119 < globaldef3367.globaldef115) ) {

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

   local entity globaldef3369;
   local entity globaldef3370;
   local vector globaldef3371;
   local vector globaldef3375;

   if ( self.enemy ) {

      return ;

   }
   if ( (self.globaldef173 & MOVETYPE_STEP) ) {

      self.enemy = self;
      self.globaldef179 = self;
      return ;

   }
   globaldef3371 = self.globaldef112;
   globaldef3375 = self.globaldef116;
   globaldef3370 = self;
   globaldef3369 = self;
   do {

      self.globaldef179 = globaldef3370;
      if ( self.globaldef130 ) {

         globaldef3370.globaldef130 = self.globaldef130;

      }
      if ( self.targetname ) {

         globaldef3370.targetname = self.targetname;

      }
      if ( (self.message != "") ) {

         globaldef3370.message = self.message;

      }
      globaldef3369 = find (globaldef3369,classname,self.classname);
      if ( !globaldef3369 ) {

         self.enemy = globaldef3370;
         self = self.globaldef179;
         if ( self.globaldef130 ) {

            return ;

         }
         if ( self.targetname ) {

            return ;

         }
         if ( self.globaldef140 ) {

            return ;

         }
         self.globaldef179.globaldef403 = globaldef3346 (globaldef3371,globaldef3375);
         return ;

      }
      if ( globaldef3365 (self,globaldef3369) ) {

         if ( globaldef3369.enemy ) {

            objerror (globaldef3379);

         }
         self.enemy = globaldef3369;
         self = globaldef3369;
         if ( (globaldef3369.globaldef113 < globaldef3371_x) ) {

            globaldef3371_x = globaldef3369.globaldef113;

         }
         if ( (globaldef3369.globaldef114 < globaldef3373) ) {

            globaldef3373 = globaldef3369.globaldef114;

         }
         if ( (globaldef3369.globaldef115 < globaldef3374) ) {

            globaldef3374 = globaldef3369.globaldef115;

         }
         if ( (globaldef3369.globaldef117 > globaldef3375_x) ) {

            globaldef3375_x = globaldef3369.globaldef117;

         }
         if ( (globaldef3369.globaldef118 > globaldef3377) ) {

            globaldef3377 = globaldef3369.globaldef118;

         }
         if ( (globaldef3369.globaldef119 > globaldef3378) ) {

            globaldef3378 = globaldef3369.globaldef119;

         }

      }

   } while ( TRUE );

};
string globaldef3379 /* = "cross connected doors" */;

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

   if ( (world.globaldef340 == FALSE) ) {

      globaldef452 (globaldef3381);
      globaldef452 (globaldef3382);
      self.globaldef189 = globaldef3381;
      self.globaldef404 = globaldef3382;

   } else {

      if ( (world.globaldef340 == TRUE) ) {

         globaldef452 (globaldef3383);
         globaldef452 (globaldef3384);
         self.globaldef189 = globaldef3383;
         self.globaldef404 = globaldef3384;

      } else {

         if ( (world.globaldef340 == FL_SWIM) ) {

            globaldef452 (globaldef3385);
            globaldef452 (globaldef3386);
            self.globaldef189 = globaldef3385;
            self.globaldef404 = globaldef3386;

         } else {

            globaldef456 (globaldef3387);

         }

      }

   }
   if ( (self.globaldef185 == FALSE) ) {

      globaldef452 (globaldef3388);
      globaldef452 (globaldef3388);
      self.globaldef187 = globaldef3388;
      self.globaldef188 = globaldef3388;

   }
   if ( (self.globaldef185 == TRUE) ) {

      globaldef452 (globaldef3389);
      globaldef452 (globaldef3390);
      self.globaldef187 = globaldef3389;
      self.globaldef188 = globaldef3390;

   }
   if ( (self.globaldef185 == FL_SWIM) ) {

      globaldef452 (globaldef3391);
      globaldef452 (globaldef3392);
      self.globaldef188 = globaldef3391;
      self.globaldef187 = globaldef3392;

   }
   if ( (self.globaldef185 == MOVETYPE_WALK) ) {

      globaldef452 (globaldef3393);
      globaldef452 (globaldef3394);
      self.globaldef188 = globaldef3393;
      self.globaldef187 = globaldef3394;

   }
   if ( (self.globaldef185 == MOVETYPE_STEP) ) {

      globaldef452 (globaldef3395);
      globaldef452 (globaldef3396);
      self.globaldef187 = globaldef3396;
      self.globaldef188 = globaldef3395;

   }
   SetMovedir ();
   self.globaldef163 = self.globaldef130;
   self.solid = SOLID_BSP;
   self.movetype = MOVETYPE_PUSH;
   setorigin (self,self.origin);
   setmodel (self,self.model);
   self.classname = globaldef1991;
   self.globaldef127 = globaldef3323;
   self.use = globaldef3330;
   if ( (self.globaldef173 & globaldef3319) ) {

      self.globaldef140 = IT_KEY1;

   }
   if ( (self.globaldef173 & globaldef3318) ) {

      self.globaldef140 = IT_KEY2;

   }
   if ( !self.globaldef352 ) {

      self.globaldef352 = globaldef1335;

   }
   if ( !self.globaldef401 ) {

      self.globaldef401 = MOVETYPE_WALK;

   }
   if ( !self.globaldef420 ) {

      self.globaldef420 = FL_CLIENT;

   }
   if ( !self.globaldef408 ) {

      self.globaldef408 = FL_SWIM;

   }
   self.globaldef422 = self.origin;
   self.globaldef426 = (self.globaldef422 + (self.movedir * (globaldef471 ((self.movedir * self.globaldef120)) - self.globaldef420)));
   if ( (self.globaldef173 & globaldef3316) ) {

      setorigin (self,self.globaldef426);
      self.globaldef426 = self.globaldef422;
      self.globaldef422 = self.origin;

   }
   self.globaldef421 = STATE_BOTTOM;
   if ( self.globaldef130 ) {

      self.globaldef141 = DAMAGE_YES;
      self.globaldef350 = globaldef3333;

   }
   if ( self.globaldef140 ) {

      self.globaldef401 = CONTENT_EMPTY;

   }
   self.globaldef124 = globaldef3335;
   self.globaldef531 = globaldef937;
   self.think = globaldef3368;
   self.nextthink = (self.ltime + 0.100);

};
string globaldef3381 /* = "doors/medtry.wav" */;
string globaldef3382 /* = "doors/meduse.wav" */;
string globaldef3383 /* = "doors/runetry.wav" */;
string globaldef3384 /* = "doors/runeuse.wav" */;
string globaldef3385 /* = "doors/basetry.wav" */;
string globaldef3386 /* = "doors/baseuse.wav" */;
string globaldef3387 /* = "no worldtype set!\n" */;
string globaldef3388 /* = "misc/null.wav" */;
string globaldef3389 /* = "doors/drclos4.wav" */;
string globaldef3390 /* = "doors/doormv1.wav" */;
string globaldef3391 /* = "doors/hydro1.wav" */;
string globaldef3392 /* = "doors/hydro2.wav" */;
string globaldef3393 /* = "doors/stndr1.wav" */;
string globaldef3394 /* = "doors/stndr2.wav" */;
string globaldef3395 /* = "doors/ddoor1.wav" */;
string globaldef3396 /* = "doors/ddoor2.wav" */;

void () fd_secret_move1;

void () fd_secret_move2;

void () fd_secret_move3;

void () fd_secret_move4;

void () fd_secret_move5;

void () fd_secret_move6;

void () fd_secret_done;
float globaldef3404 /* = 1.000 */;
float globaldef3405 /* = 2.000 */;
float globaldef3406 /* = 4.000 */;
float globaldef3407 /* = 8.000 */;
float globaldef3408 /* = 16.000 */;

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

   local float globaldef3410;

   self.globaldef130 = globaldef2185;
   if ( (self.origin != self.globaldef87) ) {

      return ;

   }
   self.message = string_null;
   SUB_UseTargets ();
   if ( !(self.globaldef173 & globaldef3407) ) {

      self.globaldef349 = SUB_Null;
      self.globaldef141 = DAMAGE_NO;

   }
   self.velocity = VEC_ORIGIN;
   sound (self,CHAN_VOICE,self.globaldef187,TRUE,ATTN_NORM);
   self.nextthink = (self.ltime + 0.100);
   globaldef3410 = (TRUE - (self.globaldef173 & globaldef3405));
   makevectors (self.globaldef383);
   if ( !self.globaldef388 ) {

      if ( (self.globaldef173 & globaldef3406) ) {

         self.globaldef388 = globaldef471 ((v_up * self.globaldef120));

      } else {

         self.globaldef388 = globaldef471 ((v_right * self.globaldef120));

      }

   }
   if ( !self.globaldef387 ) {

      self.globaldef387 = globaldef471 ((v_forward * self.globaldef120));

   }
   if ( (self.globaldef173 & globaldef3406) ) {

      self.globaldef393 = (self.origin - (v_up * self.globaldef388));

   } else {

      self.globaldef393 = (self.origin + (v_right * (self.globaldef388 * globaldef3410)));

   }
   self.globaldef397 = (self.globaldef393 + (v_forward * self.globaldef387));
   SUB_CalcMove (self.globaldef393,self.globaldef352,globaldef3397);
   sound (self,CHAN_VOICE,self.globaldef188,TRUE,ATTN_NORM);

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

   self.nextthink = (self.ltime + TRUE);
   self.think = globaldef3398;
   sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

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

   sound (self,CHAN_VOICE,self.globaldef188,TRUE,ATTN_NORM);
   SUB_CalcMove (self.globaldef397,self.globaldef352,globaldef3399);

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

   sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);
   if ( !(self.globaldef173 & globaldef3404) ) {

      self.nextthink = (self.ltime + self.globaldef401);
      self.think = globaldef3400;

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

   sound (self,CHAN_VOICE,self.globaldef188,TRUE,ATTN_NORM);
   SUB_CalcMove (self.globaldef393,self.globaldef352,globaldef3401);

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

   self.nextthink = (self.ltime + TRUE);
   self.think = globaldef3402;
   sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

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

   sound (self,CHAN_VOICE,self.globaldef188,TRUE,ATTN_NORM);
   SUB_CalcMove (self.globaldef87,self.globaldef352,globaldef3403);

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

   if ( (!self.targetname || (self.globaldef173 & globaldef3408)) ) {

      self.globaldef130 = globaldef2185;
      self.globaldef141 = DAMAGE_YES;
      self.globaldef349 = globaldef3409;

   }
   sound (self,CHAN_VOICE,self.globaldef189,TRUE,ATTN_NORM);

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

   if ( (time < self.attack_finished) ) {

      return ;

   }
   self.attack_finished = (time + globaldef522);
   globaldef505 (other,self,self,self.globaldef408);

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

   if ( (other.classname != "player") ) {

      if ( (other.classname != globaldef1171) ) {

         return ;

      }

   }
   if ( (self.attack_finished > time) ) {

      return ;

   }
   self.attack_finished = (time + FL_SWIM);
   if ( self.message ) {

      if ( (other.classname == "player") ) {

         centerprint (other,self.message);

      }
      sound (other,CHAN_BODY,"misc/talk.wav",TRUE,ATTN_NORM);

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

   if ( (self.globaldef185 == FALSE) ) {

      self.globaldef185 = MOVETYPE_WALK;

   }
   if ( (self.globaldef185 == TRUE) ) {

      globaldef452 (globaldef3414);
      globaldef452 (globaldef3415);
      globaldef452 (globaldef3389);
      self.globaldef187 = globaldef3414;
      self.globaldef188 = globaldef3415;
      self.globaldef189 = globaldef3389;

   }
   if ( (self.globaldef185 == FL_SWIM) ) {

      globaldef452 (globaldef3416);
      globaldef452 (globaldef3417);
      self.globaldef188 = globaldef3416;
      self.globaldef187 = globaldef3417;
      self.globaldef189 = globaldef3417;

   }
   if ( (self.globaldef185 == MOVETYPE_WALK) ) {

      globaldef452 (globaldef3418);
      globaldef452 (globaldef3419);
      self.globaldef188 = globaldef3418;
      self.globaldef187 = globaldef3419;
      self.globaldef189 = globaldef3419;

   }
   if ( !self.globaldef408 ) {

      self.globaldef408 = FL_SWIM;

   }
   self.globaldef383 = self.angles;
   self.angles = VEC_ORIGIN;
   self.solid = SOLID_BSP;
   self.movetype = MOVETYPE_PUSH;
   self.classname = globaldef1991;
   setmodel (self,self.model);
   setorigin (self,self.origin);
   self.globaldef124 = globaldef3412;
   self.globaldef531 = globaldef938;
   self.globaldef127 = globaldef3411;
   self.globaldef352 = globaldef1257;
   self.use = globaldef3409;
   if ( (!self.targetname || (self.globaldef173 & globaldef3408)) ) {

      self.globaldef130 = globaldef2185;
      self.globaldef141 = DAMAGE_YES;
      self.globaldef349 = globaldef3409;

   }
   self.globaldef87 = self.origin;
   if ( !self.globaldef401 ) {

      self.globaldef401 = MOVETYPE_FLY;

   }

};
