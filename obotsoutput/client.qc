float globaldef2856 /* = 68.000 */;
float globaldef2857 /* = 69.000 */;
float globaldef2858 /* = 71.000 */;
float globaldef2859 /* = 81.000 */;
string globaldef2860 /* = "Status bar set\n" */;

void () player_pain;

void () player_stand1;
float globaldef2863 /* = 0.000 */;
float globaldef2864 /* = 0.000 */;

void () info_intermission;

// function info_intermission
// function number 373 begins at statement 11104
/*
 * OP_DONE	0	0	0
 */

void () info_intermission = {


};

// function SetChangeParms
// function number 374 begins at statement 11105
/*
 * OP_ADDRESS	28	162	8216
 * OP_LOAD_F	28	162	8217
 * OP_LOAD_F	28	162	8218
 * OP_BITOR	270	271	8219
 * OP_BITOR	8219	272	8220
 * OP_BITOR	8220	273	8221
 * OP_BITOR	8221	274	8222
 * OP_BITOR	8222	275	8223
 * OP_BITAND	8218	8223	8224
 * OP_SUB_F	8217	8224	8225
 * OP_STOREP_F	8225	8216	0
 * OP_LOAD_F	28	152	8226
 * OP_GT	8226	1997	8227
 * OP_IFNOT	8227	3	0
 * OP_ADDRESS	28	152	8228
 * OP_STOREP_F	1997	8228	0
 * OP_LOAD_F	28	152	8229
 * OP_LT	8229	1470	8230
 * OP_IFNOT	8230	3	0
 * OP_ADDRESS	28	152	8231
 * OP_STOREP_F	1470	8231	0
 * OP_LOAD_F	28	162	8232
 * OP_STORE_F	8232	43	0
 * OP_LOAD_F	28	152	8233
 * OP_STORE_F	8233	44	0
 * OP_LOAD_F	28	188	8234
 * OP_STORE_F	8234	45	0
 * OP_LOAD_F	28	158	8235
 * OP_LT	8235	305	8236
 * OP_IFNOT	8236	3	0
 * OP_STORE_F	305	46	0
 * OP_GOTO	3	0	0
 * OP_LOAD_F	28	158	8237
 * OP_STORE_F	8237	46	0
 * OP_LOAD_F	28	159	8238
 * OP_STORE_F	8238	47	0
 * OP_LOAD_F	28	160	8239
 * OP_STORE_F	8239	48	0
 * OP_LOAD_F	28	161	8240
 * OP_STORE_F	8240	49	0
 * OP_LOAD_F	28	154	8241
 * OP_STORE_F	8241	50	0
 * OP_LOAD_F	28	187	8242
 * OP_MUL_F	8242	1997	8243
 * OP_STORE_F	8243	51	0
 * OP_LOAD_F	28	572	8244
 * OP_STORE_F	8244	52	0
 * OP_DONE	0	0	0
 */

void () SetChangeParms = {

   self.globaldef140 = (self.globaldef140 - (self.globaldef140 & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD)));
   if ( (self.globaldef130 > globaldef1335) ) {

      self.globaldef130 = globaldef1335;

   }
   if ( (self.globaldef130 < globaldef1257) ) {

      self.globaldef130 = globaldef1257;

   }
   parm1 = self.globaldef140;
   parm2 = self.globaldef130;
   parm3 = self.globaldef166;
   if ( (self.globaldef136 < globaldef288) ) {

      parm4 = globaldef288;

   } else {

      parm4 = self.globaldef136;

   }
   parm5 = self.globaldef137;
   parm6 = self.globaldef138;
   parm7 = self.globaldef139;
   parm8 = self.globaldef132;
   parm9 = (self.globaldef165 * globaldef1335);
   parm10 = self.globaldef555;

};

// function SetNewParms
// function number 375 begins at statement 11153
/*
 * OP_BITOR	254	253	8245
 * OP_STORE_F	8245	43	0
 * OP_STORE_F	1997	44	0
 * OP_STORE_F	213	45	0
 * OP_STORE_F	305	46	0
 * OP_STORE_F	213	47	0
 * OP_STORE_F	213	48	0
 * OP_STORE_F	213	49	0
 * OP_STORE_F	4838	50	0
 * OP_STORE_F	213	51	0
 * OP_LOAD_F	28	572	8246
 * OP_STORE_F	8246	52	0
 * OP_DONE	0	0	0
 */

void () SetNewParms = {

   parm1 = (IT_SHOTGUN | IT_AXE);
   parm2 = globaldef1335;
   parm3 = FALSE;
   parm4 = globaldef288;
   parm5 = FALSE;
   parm6 = FALSE;
   parm7 = FALSE;
   parm8 = globaldef1900;
   parm9 = FALSE;
   parm10 = self.globaldef555;

};

void () DecodeLevelParms;

// function DecodeLevelParms
// function number 376 begins at statement 11166
/*
 * OP_IFNOT	38	5	0
 * OP_LOAD_S	30	130	8248
 * OP_EQ_S	8248	6583	8249
 * OP_IFNOT	8249	2	0
 * OP_CALL0	90	0	0
 * OP_ADDRESS	28	162	8250
 * OP_STOREP_F	43	8250	0
 * OP_ADDRESS	28	152	8251
 * OP_STOREP_F	44	8251	0
 * OP_ADDRESS	28	188	8252
 * OP_STOREP_F	45	8252	0
 * OP_ADDRESS	28	158	8253
 * OP_STOREP_F	46	8253	0
 * OP_ADDRESS	28	159	8254
 * OP_STOREP_F	47	8254	0
 * OP_ADDRESS	28	160	8255
 * OP_STOREP_F	48	8255	0
 * OP_ADDRESS	28	161	8256
 * OP_STOREP_F	49	8256	0
 * OP_ADDRESS	28	154	8257
 * OP_STOREP_F	50	8257	0
 * OP_ADDRESS	28	187	8258
 * OP_MUL_F	51	5500	8259
 * OP_STOREP_F	8259	8258	0
 * OP_ADDRESS	28	572	8260
 * OP_STOREP_F	52	8260	0
 * OP_DONE	0	0	0
 */

void () DecodeLevelParms = {

   if ( serverflags ) {

      if ( (world.model == globaldef2337) ) {

         globaldef68 ();

      }

   }
   self.globaldef140 = parm1;
   self.globaldef130 = parm2;
   self.globaldef166 = parm3;
   self.globaldef136 = parm4;
   self.globaldef137 = parm5;
   self.globaldef138 = parm6;
   self.globaldef139 = parm7;
   self.globaldef132 = parm8;
   self.globaldef165 = (parm9 * globaldef2073);
   self.globaldef555 = parm10;

};

// function FindIntermission
// function number 377 begins at statement 11193
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8263	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8261	0
 * OP_IFNOT	8261	22	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	229	8264
 * OP_STORE_F	8264	8262	0
 * OP_GT	8262	214	8265
 * OP_IFNOT	8265	16	0
 * OP_STORE_V	8261	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8263	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8261	0
 * OP_NOT_ENT	8261	0	8266
 * OP_IFNOT	8266	6	0
 * OP_STORE_V	8261	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8263	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8261	0
 * OP_SUB_F	8262	214	8267
 * OP_STORE_F	8267	8262	0
 * OP_GOTO	-16	0	0
 * OP_RETURN	8261	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2913	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8261	0
 * OP_IFNOT	8261	2	0
 * OP_RETURN	8261	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7689	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8261	0
 * OP_IFNOT	8261	2	0
 * OP_RETURN	8261	0	0
 * OP_STORE_V	8268	4	0
 * OP_CALL1	461	0	0
 * OP_DONE	0	0	0
 */
entity () FindIntermission = {

   local entity globaldef2867;
   local float globaldef2868;

   globaldef2867 = find (world,classname,globaldef2869);
   if ( globaldef2867 ) {

      globaldef2868 = (globaldef440 () * MOVETYPE_STEP);
      while ( (globaldef2868 > TRUE) ) {

         globaldef2867 = find (globaldef2867,classname,globaldef2869);
         if ( !globaldef2867 ) {

            globaldef2867 = find (globaldef2867,classname,globaldef2869);

         }
         globaldef2868 = (globaldef2868 - TRUE);

      }
      return ( globaldef2867 );

   }
   globaldef2867 = find (world,classname,globaldef1451);
   if ( globaldef2867 ) {

      return ( globaldef2867 );

   }
   globaldef2867 = find (world,classname,globaldef2739);
   if ( globaldef2867 ) {

      return ( globaldef2867 );

   }
   objerror (globaldef2870);

};
string globaldef2869 /* = "info_intermission" */;
string globaldef2870 /* = "FindIntermission: no spot" */;
string globaldef2871 /* = "" */;

void () GotoNextMap;

// function GotoNextMap
// function number 378 begins at statement 11237
/*
 * OP_STORE_V	34	4	0
 * OP_STORE_V	8269	7	0
 * OP_CALL2	7481	0	0
 * OP_DONE	0	0	0
 */

void () GotoNextMap = {

   globaldef2682 (mapname,globaldef2871);

};

void () ExitIntermission;

// function ExitIntermission
// function number 379 begins at statement 11241
/*
 * OP_IFNOT	35	3	0
 * OP_CALL0	8270	0	0
 * OP_RETURN	0	0	0
 * OP_ADD_F	31	214	8272
 * OP_STORE_F	8272	8214	0
 * OP_ADD_F	8213	214	8273
 * OP_STORE_F	8273	8213	0
 * OP_EQ_F	8213	216	8274
 * OP_IFNOT	8274	92	0
 * OP_LOAD_S	30	130	8275
 * OP_EQ_S	8275	6590	8276
 * OP_IFNOT	8276	29	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	311	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	216	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	228	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	6635	4	0
 * OP_CALL1	490	0	0
 * OP_NOT_F	1	0	8277
 * OP_IFNOT	8277	8	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	310	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	8278	7	0
 * OP_CALL2	502	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	310	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	8279	7	0
 * OP_CALL2	502	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	60	0	0
 * OP_LOAD_S	30	130	8280
 * OP_EQ_S	8280	6597	8281
 * OP_IFNOT	8281	18	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	311	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	216	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	228	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	310	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	8282	7	0
 * OP_CALL2	502	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	40	0	0
 * OP_LOAD_S	30	130	8283
 * OP_EQ_S	8283	6604	8284
 * OP_IFNOT	8284	18	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	311	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	216	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	228	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	310	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	8285	7	0
 * OP_CALL2	502	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_S	30	130	8286
 * OP_EQ_S	8286	6612	8287
 * OP_IFNOT	8287	17	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	311	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	216	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	228	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	310	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	8288	7	0
 * OP_CALL2	502	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	8270	0	0
 * OP_EQ_F	8213	228	8289
 * OP_IFNOT	8289	19	0
 * OP_STORE_V	6635	4	0
 * OP_CALL1	490	0	0
 * OP_NOT_F	1	0	8290
 * OP_IFNOT	8290	5	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	312	7	0
 * OP_CALL2	496	0	0
 * OP_RETURN	0	0	0
 * OP_BITAND	38	765	8291
 * OP_EQ_F	8291	765	8292
 * OP_IFNOT	8292	8	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	310	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	8293	7	0
 * OP_CALL2	502	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	8270	0	0
 * OP_DONE	0	0	0
 */

void () ExitIntermission = {

   if ( deathmatch ) {

      globaldef2872 ();
      return ;

   }
   globaldef2864 = (time + TRUE);
   globaldef2863 = (globaldef2863 + TRUE);
   if ( (globaldef2863 == FL_SWIM) ) {

      if ( (world.model == globaldef2344) ) {

         globaldef479 (MSG_ALL,SVC_CDTRACK);
         globaldef479 (MSG_ALL,FL_SWIM);
         globaldef479 (MSG_ALL,MOVETYPE_WALK);
         if ( !globaldef473 (globaldef2383) ) {

            globaldef479 (MSG_ALL,SVC_FINALE);
            globaldef485 (MSG_ALL,globaldef2874);

         } else {

            globaldef479 (MSG_ALL,SVC_FINALE);
            globaldef485 (MSG_ALL,globaldef2875);

         }
         return ;

      } else {

         if ( (world.model == globaldef2351) ) {

            globaldef479 (MSG_ALL,SVC_CDTRACK);
            globaldef479 (MSG_ALL,FL_SWIM);
            globaldef479 (MSG_ALL,MOVETYPE_WALK);
            globaldef479 (MSG_ALL,SVC_FINALE);
            globaldef485 (MSG_ALL,globaldef2876);
            return ;

         } else {

            if ( (world.model == globaldef2358) ) {

               globaldef479 (MSG_ALL,SVC_CDTRACK);
               globaldef479 (MSG_ALL,FL_SWIM);
               globaldef479 (MSG_ALL,MOVETYPE_WALK);
               globaldef479 (MSG_ALL,SVC_FINALE);
               globaldef485 (MSG_ALL,globaldef2877);
               return ;

            } else {

               if ( (world.model == globaldef2366) ) {

                  globaldef479 (MSG_ALL,SVC_CDTRACK);
                  globaldef479 (MSG_ALL,FL_SWIM);
                  globaldef479 (MSG_ALL,MOVETYPE_WALK);
                  globaldef479 (MSG_ALL,SVC_FINALE);
                  globaldef485 (MSG_ALL,globaldef2878);
                  return ;

               }

            }

         }

      }
      globaldef2872 ();

   }
   if ( (globaldef2863 == MOVETYPE_WALK) ) {

      if ( !globaldef473 (globaldef2383) ) {

         globaldef479 (MSG_ALL,SVC_SELLSCREEN);
         return ;

      }
      if ( ((serverflags & globaldef748) == globaldef748) ) {

         globaldef479 (MSG_ALL,SVC_FINALE);
         globaldef485 (MSG_ALL,globaldef2879);
         return ;

      }

   }
   globaldef2872 ();

};
string globaldef2874 /* = "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task in..." */;
string globaldef2875 /* = "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task. A..." */;
string globaldef2876 /* = "The Rune of Black Magic throbs evilly in\nyour hand and whispers dark thoughts\ninto your brain. You learn the inmost\nlore of the Hell-Mother; Shub-Niggurath!\nYou now know that she is behind all the\nterrible plotting which has led to so\nmuch death..." */;
string globaldef2877 /* = "The charred viscera of diabolic horrors\nbubble viscously as you seize the Rune\nof Hell Magic. Its heat scorches your\nhand, and its terrible secrets blight\nyour mind. Gathering the shreds of your\ncourage, you shake the devil's shackles\nfrom your ..." */;
string globaldef2878 /* = "Despite the awful might of the Elder\nWorld, you have achieved the Rune of\nElder Magic, capstone of all types of\narcane wisdom. Beyond good and evil,\nbeyond life and death, the Rune\npulsates, heavy with import. Patient and\npotent, the Elder Being..." */;
string globaldef2879 /* = "Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront he..." */;

void () IntermissionThink;

// function IntermissionThink
// function number 380 begins at statement 11363
/*
 * OP_LT	31	8214	8295
 * OP_IFNOT	8295	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	170	8296
 * OP_NOT_F	8296	0	8297
 * OP_LOAD_F	28	171	8298
 * OP_NOT_F	8298	0	8299
 * OP_AND	8297	8299	8300
 * OP_LOAD_F	28	172	8301
 * OP_NOT_F	8301	0	8302
 * OP_AND	8300	8302	8303
 * OP_IFNOT	8303	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	8271	0	0
 * OP_DONE	0	0	0
 */

void () IntermissionThink = {

   if ( (time < globaldef2864) ) {

      return ;

   }
   if ( ((!self.globaldef148 && !self.globaldef149) && !self.globaldef150) ) {

      return ;

   }
   globaldef2873 ();

};

void () execute_changelevel;

// function execute_changelevel
// function number 381 begins at statement 11378
/*
 * OP_STORE_F	214	8213	0
 * OP_CALL0	1212	0	0
 * OP_CALL0	1165	0	0
 * OP_IFNOT	35	4	0
 * OP_ADD_F	31	230	8306
 * OP_STORE_F	8306	8214	0
 * OP_GOTO	3	0	0
 * OP_ADD_F	31	216	8307
 * OP_STORE_F	8307	8214	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	311	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	228	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	228	7	0
 * OP_CALL2	496	0	0
 * OP_CALL0	8005	0	0
 * OP_STORE_ENT	1	8305	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1236	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	29	0
 * OP_NE_E	29	30	8308
 * OP_IFNOT	8308	32	0
 * OP_ADDRESS	29	166	8309
 * OP_STOREP_V	286	8309	0
 * OP_ADDRESS	29	175	8312
 * OP_LOAD_V	8305	400	8315
 * OP_STOREP_V	8315	8312	0
 * OP_ADDRESS	29	117	8318
 * OP_LOAD_V	8305	400	8321
 * OP_STOREP_V	8321	8318	0
 * OP_ADDRESS	29	174	8324
 * OP_STOREP_F	214	8324	0
 * OP_ADDRESS	29	150	8325
 * OP_ADD_F	31	539	8326
 * OP_STOREP_F	8326	8325	0
 * OP_ADDRESS	29	163	8327
 * OP_STOREP_F	250	8327	0
 * OP_ADDRESS	29	104	8328
 * OP_STOREP_F	237	8328	0
 * OP_ADDRESS	29	103	8329
 * OP_STOREP_F	227	8329	0
 * OP_ADDRESS	29	93	8330
 * OP_STOREP_F	213	8330	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_V	8305	105	8331
 * OP_STORE_V	8331	7	0
 * OP_CALL2	453	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1236	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	29	0
 * OP_GOTO	-32	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	309	7	0
 * OP_CALL2	496	0	0
 * OP_DONE	0	0	0
 */

void () execute_changelevel = {

   local entity globaldef2882;

   globaldef2863 = TRUE;
   globaldef1150 ();
   globaldef1103 ();
   if ( deathmatch ) {

      globaldef2864 = (time + MOVETYPE_FLY);

   } else {

      globaldef2864 = (time + FL_SWIM);

   }
   globaldef479 (MSG_ALL,SVC_CDTRACK);
   globaldef479 (MSG_ALL,MOVETYPE_WALK);
   globaldef479 (MSG_ALL,MOVETYPE_WALK);
   globaldef2882 = globaldef2796 ();
   other = find (world,classname,"player");
   while ( (other != world) ) {

      other.globaldef144 = VEC_ORIGIN;
      other.globaldef153 = globaldef2882.globaldef383;
      other.angles = globaldef2882.globaldef383;
      other.globaldef152 = TRUE;
      other.nextthink = (time + globaldef522);
      other.globaldef141 = DAMAGE_NO;
      other.solid = SOLID_NOT;
      other.movetype = MOVETYPE_NONE;
      other.modelindex = FALSE;
      setorigin (other,globaldef2882.origin);
      other = find (other,classname,"player");

   }
   globaldef479 (MSG_ALL,SVC_INTERMISSION);

};

void () changelevel_touch;

// function changelevel_touch
// function number 382 begins at statement 11440
/*
 * OP_LOAD_S	29	129	8336
 * OP_NE_S	8336	1236	8337
 * OP_IFNOT	8337	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	8338	4	0
 * OP_CALL1	490	0	0
 * OP_IFNOT	1	7	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	8339	13	0
 * OP_CALL4	522	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	29	606	8340
 * OP_STORE_V	8340	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	29	180	8341
 * OP_STORE_V	8341	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	8342	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	28	356	8343
 * OP_STORE_S	8343	8269	0
 * OP_CALL0	520	0	0
 * OP_LOAD_F	28	195	8344
 * OP_BITAND	8344	214	8345
 * OP_EQ_F	35	213	8346
 * OP_AND	8345	8346	8347
 * OP_IFNOT	8347	3	0
 * OP_CALL0	8270	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	146	8348
 * OP_STOREP_FNC	519	8348	0
 * OP_ADDRESS	28	148	8349
 * OP_STOREP_FNC	8304	8349	0
 * OP_ADDRESS	28	150	8350
 * OP_ADD_F	31	3036	8351
 * OP_STOREP_F	8351	8350	0
 * OP_DONE	0	0	0
 */

void () changelevel_touch = {

   local entity globaldef2884;

   if ( (other.classname != "player") ) {

      return ;

   }
   if ( globaldef473 (globaldef2885) ) {

      globaldef505 (other,self,self,globaldef2886);
      return ;

   }
   globaldef455 (other.globaldef589);
   globaldef455 (other.globaldef158);
   globaldef455 (globaldef2887);
   globaldef2871 = self.globaldef339;
   SUB_UseTargets ();
   if ( ((self.globaldef173 & TRUE) && (deathmatch == FALSE)) ) {

      globaldef2872 ();
      return ;

   }
   self.globaldef124 = SUB_Null;
   self.think = globaldef2881;
   self.nextthink = (time + 0.100);

};
string globaldef2885 /* = "noexit" */;
float globaldef2886 /* = 50000.000 */;
string globaldef2887 /* = " exited the level\n" */;

void () trigger_changelevel;

// function trigger_changelevel
// function number 383 begins at statement 11479
/*
 * OP_LOAD_S	28	356	8353
 * OP_NOT_S	8353	0	8354
 * OP_IFNOT	8354	3	0
 * OP_STORE_V	8355	4	0
 * OP_CALL1	461	0	0
 * OP_CALL0	2992	0	0
 * OP_ADDRESS	28	146	8356
 * OP_STOREP_FNC	8334	8356	0
 * OP_DONE	0	0	0
 */

void () trigger_changelevel = {

   if ( !self.globaldef339 ) {

      objerror (globaldef2889);

   }
   globaldef1465 ();
   self.globaldef124 = globaldef2883;

};
string globaldef2889 /* = "changelevel trigger doesn't have map" */;

void () set_suicide_frame;

void () respawn;

// function respawn
// function number 384 begins at statement 11488
/*
 * OP_IFNOT	36	9	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	6795	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	513	0	0
 * OP_LOAD_F	28	572	8359
 * OP_STORE_F	8359	52	0
 * OP_CALL0	88	0	0
 * OP_GOTO	9	0	0
 * OP_IFNOT	35	6	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	6795	0	0
 * OP_CALL0	90	0	0
 * OP_CALL0	88	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	8360	4	0
 * OP_CALL1	491	0	0
 * OP_DONE	0	0	0
 */

void () respawn = {

   if ( coop ) {

      globaldef2469 (self);
      globaldef496 (self);
      parm10 = self.globaldef555;
      globaldef66 ();

   } else {

      if ( deathmatch ) {

         globaldef2469 (self);
         globaldef68 ();
         globaldef66 ();

      } else {

         globaldef474 (globaldef2892);

      }

   }

};
string globaldef2892 /* = "restart\n" */;

// function ClientKill
// function number 385 begins at statement 11506
/*
 * OP_BITAND	821	767	8361
 * OP_IFNOT	8361	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	129	8362
 * OP_NE_S	8362	1236	8363
 * OP_IFNOT	8363	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	180	8364
 * OP_STORE_V	8364	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	8365	4	0
 * OP_CALL1	472	0	0
 * OP_CALL0	8357	0	0
 * OP_ADDRESS	28	93	8366
 * OP_STOREP_F	526	8366	0
 * OP_ADDRESS	28	153	8367
 * OP_LOAD_F	28	153	8368
 * OP_SUB_F	8368	216	8369
 * OP_STOREP_F	8369	8367	0
 * OP_CALL0	8358	0	0
 * OP_DONE	0	0	0
 */

void () ClientKill = {

   if ( (globaldef804 & globaldef750) ) {

      return ;

   }
   if ( (self.classname != "player") ) {

      return ;

   }
   globaldef455 (self.globaldef158);
   globaldef455 (globaldef2893);
   globaldef2890 ();
   self.modelindex = globaldef509;
   self.globaldef131 = (self.globaldef131 - FL_SWIM);
   globaldef2891 ();

};
string globaldef2893 /* = " suicides\n" */;
float (vector globaldef2895) CheckSpawnPoint;

// function CheckSpawnPoint
// function number 386 begins at statement 11527
/*
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (vector globaldef2895) CheckSpawnPoint = {

   return ( FALSE );

};

// function func387
// function number 387 begins at statement 11529
/*
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	7689	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8374	0
 * OP_IFNOT	8374	2	0
 * OP_RETURN	8374	0	0
 * OP_IFNOT	36	17	0
 * OP_STORE_V	6621	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8376	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	6621	0
 * OP_EQ_E	6621	30	8377
 * OP_IFNOT	8377	6	0
 * OP_STORE_V	6621	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2913	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	6621	0
 * OP_NE_E	6621	30	8378
 * OP_IFNOT	8378	2	0
 * OP_RETURN	6621	0	0
 * OP_GOTO	33	0	0
 * OP_IFNOT	35	32	0
 * OP_STORE_V	6621	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8379	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	6621	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	8375	0
 * OP_GT	8375	8380	8381
 * OP_IFNOT	8381	6	0
 * OP_STORE_V	6621	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8379	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	6621	0
 * OP_GT	8375	8382	8383
 * OP_IFNOT	8383	6	0
 * OP_STORE_V	6621	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8379	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	6621	0
 * OP_EQ_E	6621	30	8384
 * OP_IFNOT	8384	6	0
 * OP_STORE_V	6621	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8379	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	6621	0
 * OP_NE_E	6621	30	8385
 * OP_IFNOT	8385	2	0
 * OP_RETURN	6621	0	0
 * OP_BITAND	38	765	8386
 * OP_IFNOT	8386	8	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8387	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8374	0
 * OP_IFNOT	8374	2	0
 * OP_RETURN	8374	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	2913	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8374	0
 * OP_NOT_ENT	8374	0	8388
 * OP_IFNOT	8388	3	0
 * OP_STORE_V	8389	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	8374	0	0
 * OP_DONE	0	0	0
 */
entity () func387 = {

   local entity globaldef2899;
   local float globaldef2900;

   globaldef2899 = find (world,classname,globaldef2739);
   if ( globaldef2899 ) {

      return ( globaldef2899 );

   }
   if ( coop ) {

      globaldef2375 = find (globaldef2375,classname,globaldef2901);
      if ( (globaldef2375 == world) ) {

         globaldef2375 = find (globaldef2375,classname,globaldef1451);

      }
      if ( (globaldef2375 != world) ) {

         return ( globaldef2375 );

      }

   } else {

      if ( deathmatch ) {

         globaldef2375 = find (globaldef2375,classname,globaldef2902);
         globaldef2900 = globaldef440 ();
         if ( (globaldef2900 > globaldef2903) ) {

            globaldef2375 = find (globaldef2375,classname,globaldef2902);

         }
         if ( (globaldef2900 > globaldef2904) ) {

            globaldef2375 = find (globaldef2375,classname,globaldef2902);

         }
         if ( (globaldef2375 == world) ) {

            globaldef2375 = find (globaldef2375,classname,globaldef2902);

         }
         if ( (globaldef2375 != world) ) {

            return ( globaldef2375 );

         }

      }

   }
   if ( (serverflags & globaldef748) ) {

      globaldef2899 = find (world,classname,globaldef2905);
      if ( globaldef2899 ) {

         return ( globaldef2899 );

      }

   }
   globaldef2899 = find (world,classname,globaldef1451);
   if ( !globaldef2899 ) {

      globaldef443 (globaldef2906);

   }
   return ( globaldef2899 );

};
string globaldef2901 /* = "info_player_coop" */;
string globaldef2902 /* = "info_player_deathmatch" */;
float globaldef2903 /* = 0.330 */;
float globaldef2904 /* = 0.660 */;
string globaldef2905 /* = "info_player_start2" */;
string globaldef2906 /* = "PutClientInServer: no info_player_start on level" */;

void (entity globaldef2908) func388;

// function func388
// function number 388 begins at statement 11605
/*
 * OP_ADDRESS	8391	152	8392
 * OP_STOREP_F	738	8392	0
 * OP_ADDRESS	8391	188	8393
 * OP_STOREP_F	2044	8393	0
 * OP_ADDRESS	8391	187	8394
 * OP_STOREP_F	4478	8394	0
 * OP_ADDRESS	8391	158	8395
 * OP_STOREP_F	1997	8395	0
 * OP_ADDRESS	8391	159	8396
 * OP_STOREP_F	2044	8396	0
 * OP_ADDRESS	8391	160	8397
 * OP_STOREP_F	1997	8397	0
 * OP_ADDRESS	8391	161	8398
 * OP_STOREP_F	1997	8398	0
 * OP_ADDRESS	8391	162	8399
 * OP_LOAD_F	8391	162	8400
 * OP_BITOR	8400	253	8401
 * OP_BITOR	8401	254	8402
 * OP_BITOR	8402	255	8403
 * OP_BITOR	8403	256	8404
 * OP_BITOR	8404	257	8405
 * OP_BITOR	8405	258	8406
 * OP_BITOR	8406	259	8407
 * OP_BITOR	8407	260	8408
 * OP_BITOR	8408	268	8409
 * OP_BITOR	8409	273	8410
 * OP_STOREP_F	8410	8399	0
 * OP_ADDRESS	8391	154	8411
 * OP_STOREP_F	260	8411	0
 * OP_ADDRESS	8391	384	8412
 * OP_ADD_F	31	214	8413
 * OP_STOREP_F	8413	8412	0
 * OP_ADDRESS	8391	380	8414
 * OP_ADD_F	31	228	8415
 * OP_STOREP_F	8415	8414	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2908) func388 = {

   globaldef2908.globaldef130 = globaldef721;
   globaldef2908.globaldef166 = globaldef1343;
   globaldef2908.globaldef165 = globaldef1827;
   globaldef2908.globaldef136 = globaldef1335;
   globaldef2908.globaldef137 = globaldef1343;
   globaldef2908.globaldef138 = globaldef1335;
   globaldef2908.globaldef139 = globaldef1335;
   globaldef2908.globaldef140 = ((((((((((globaldef2908.globaldef140 | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_LIGHTNING) | IT_ARMOR3) | IT_INVULNERABILITY);
   globaldef2908.globaldef132 = IT_LIGHTNING;
   globaldef2908.globaldef367 = (time + TRUE);
   globaldef2908.globaldef363 = (time + MOVETYPE_WALK);

};

void () PlayerDie;

// function PutClientInServer
// function number 389 begins at statement 11641
/*
 * OP_ADDRESS	28	129	8419
 * OP_STOREP_S	1236	8419	0
 * OP_ADDRESS	28	152	8420
 * OP_STOREP_F	1997	8420	0
 * OP_ADDRESS	28	163	8421
 * OP_STOREP_F	252	8421	0
 * OP_ADDRESS	28	104	8422
 * OP_STOREP_F	240	8422	0
 * OP_ADDRESS	28	103	8423
 * OP_STOREP_F	228	8423	0
 * OP_ADDRESS	28	393	8424
 * OP_STOREP_F	213	8424	0
 * OP_ADDRESS	28	185	8425
 * OP_STOREP_F	1997	8425	0
 * OP_ADDRESS	28	182	8426
 * OP_STOREP_F	217	8426	0
 * OP_ADDRESS	28	396	8427
 * OP_ADD_F	31	791	8428
 * OP_STOREP_F	8428	8427	0
 * OP_ADDRESS	28	425	8429
 * OP_STOREP_F	216	8429	0
 * OP_ADDRESS	28	382	8430
 * OP_STOREP_F	213	8430	0
 * OP_ADDRESS	28	383	8431
 * OP_STOREP_F	213	8431	0
 * OP_ADDRESS	28	381	8432
 * OP_STOREP_F	213	8432	0
 * OP_ADDRESS	28	380	8433
 * OP_STOREP_F	213	8433	0
 * OP_ADDRESS	28	133	8434
 * OP_STOREP_F	213	8434	0
 * OP_ADDRESS	28	384	8435
 * OP_STOREP_F	213	8435	0
 * OP_CALL0	8247	0	0
 * OP_EQ_F	35	229	8436
 * OP_IFNOT	8436	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	8390	0	0
 * OP_CALL0	4295	0	0
 * OP_ADDRESS	28	378	8437
 * OP_STOREP_F	31	8437	0
 * OP_ADDRESS	28	366	8438
 * OP_STOREP_FNC	8211	8438	0
 * OP_ADDRESS	28	367	8439
 * OP_STOREP_FNC	8416	8439	0
 * OP_ADDRESS	28	165	8440
 * OP_STOREP_F	246	8440	0
 * OP_ADDRESS	28	422	8441
 * OP_STOREP_F	213	8441	0
 * OP_NOT_F	527	0	8442
 * OP_IFNOT	8442	6	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6686	7	0
 * OP_CALL2	454	0	0
 * OP_LOAD_F	28	93	8443
 * OP_STORE_F	8443	527	0
 * OP_NOT_F	525	0	8444
 * OP_IFNOT	8444	6	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6685	7	0
 * OP_CALL2	454	0	0
 * OP_LOAD_F	28	93	8445
 * OP_STORE_F	8445	525	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6684	7	0
 * OP_CALL2	454	0	0
 * OP_LOAD_F	28	93	8446
 * OP_STORE_F	8446	526	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	292	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	166	8447
 * OP_STOREP_V	8450	8447	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	7623	0	0
 * OP_STORE_ENT	1	8417	0
 * OP_BITAND	821	767	8453
 * OP_IFNOT	8453	4	0
 * OP_STORE_V	8379	4	0
 * OP_CALL1	1220	0	0
 * OP_STORE_ENT	1	8417	0
 * OP_ADDRESS	28	105	8454
 * OP_LOAD_V	8417	105	8457
 * OP_ADD_V	8457	2827	8460
 * OP_STOREP_V	8460	8454	0
 * OP_ADDRESS	28	117	8463
 * OP_LOAD_V	8417	117	8466
 * OP_STOREP_V	8466	8463	0
 * OP_ADDRESS	28	174	8469
 * OP_STOREP_F	214	8469	0
 * OP_ADDRESS	28	132	8470
 * OP_LOAD_F	28	572	8471
 * OP_STOREP_F	8471	8470	0
 * OP_ADDRESS	28	113	8472
 * OP_STOREP_V	8475	8472	0
 * OP_ADDRESS	28	576	8478
 * OP_STOREP_V	8475	8478	0
 * OP_ADDRESS	28	580	8481
 * OP_LOAD_V	28	105	8484
 * OP_STOREP_V	8484	8481	0
 * OP_ADDRESS	28	584	8487
 * OP_STOREP_F	213	8487	0
 * OP_ADDRESS	28	622	8488
 * OP_STOREP_ENT	30	8488	0
 * OP_ADDRESS	28	688	8489
 * OP_STOREP_F	716	8489	0
 * OP_LOAD_F	28	575	8490
 * OP_BITAND	8490	703	8491
 * OP_IFNOT	8491	7	0
 * OP_SUB_F	802	214	8492
 * OP_STORE_F	8492	802	0
 * OP_ADDRESS	28	575	8493
 * OP_LOAD_F	28	575	8494
 * OP_SUB_F	8494	703	8495
 * OP_STOREP_F	8495	8493	0
 * OP_BITAND	821	769	8496
 * OP_NOT_F	8496	0	8497
 * OP_LT	803	804	8498
 * OP_NE_F	805	727	8499
 * OP_OR	8498	8499	8500
 * OP_AND	8497	8500	8501
 * OP_IFNOT	8501	7	0
 * OP_ADDRESS	28	575	8502
 * OP_LOAD_F	28	575	8503
 * OP_BITOR	8503	703	8504
 * OP_STOREP_F	8504	8502	0
 * OP_ADD_F	802	214	8505
 * OP_STORE_F	8505	802	0
 * OP_ADDRESS	28	588	8506
 * OP_STOREP_F	354	8506	0
 * OP_ADDRESS	28	667	8507
 * OP_STOREP_ENT	28	8507	0
 * OP_CALL0	8212	0	0
 * OP_OR	35	36	8508
 * OP_IFNOT	8508	9	0
 * OP_LOAD_V	28	117	8509
 * OP_STORE_V	8509	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	8512
 * OP_MUL_VF	59	2323	8515
 * OP_ADD_V	8512	8515	8518
 * OP_STORE_V	8518	4	0
 * OP_CALL1	7259	0	0
 * OP_LOAD_V	28	105	8521
 * OP_STORE_V	8521	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	7260	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	7138	0	0
 * OP_BITAND	821	767	8524
 * OP_IFNOT	8524	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1217	0	0
 * OP_DONE	0	0	0
 */

void () PutClientInServer = {

   local entity globaldef2910;
   local float globaldef2911;

   self.classname = "player";
   self.globaldef130 = globaldef1335;
   self.globaldef141 = DAMAGE_AIM;
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_WALK;
   self.globaldef376 = FALSE;
   self.globaldef163 = globaldef1335;
   self.globaldef160 = FL_CLIENT;
   self.globaldef379 = (time + globaldef774);
   self.globaldef408 = FL_SWIM;
   self.globaldef365 = FALSE;
   self.globaldef366 = FALSE;
   self.globaldef364 = FALSE;
   self.globaldef363 = FALSE;
   self.globaldef111 = FALSE;
   self.globaldef367 = FALSE;
   globaldef2866 ();
   if ( (deathmatch == MOVETYPE_STEP) ) {

      globaldef2907 (self);

   }
   globaldef1788 ();
   self.attack_finished = time;
   self.globaldef349 = globaldef2861;
   self.globaldef350 = globaldef2909;
   self.globaldef143 = DEAD_NO;
   self.globaldef405 = FALSE;
   if ( !globaldef510 ) {

      setmodel (self,globaldef2431);
      globaldef510 = self.modelindex;

   }
   if ( !globaldef508 ) {

      setmodel (self,globaldef2430);
      globaldef508 = self.modelindex;

   }
   setmodel (self,globaldef2429);
   globaldef509 = self.modelindex;
   globaldef438 (self,VEC_HULL_MIN,VEC_HULL_MAX);
   self.globaldef144 = globaldef2912;
   globaldef2910 = globaldef2717 (self);
   if ( (globaldef804 & globaldef750) ) {

      globaldef2910 = globaldef1158 (globaldef2902);

   }
   self.origin = (globaldef2910.origin + globaldef1444);
   self.angles = globaldef2910.angles;
   self.globaldef152 = TRUE;
   self.globaldef110 = self.globaldef555;
   self.velocity = globaldef2913;
   self.globaldef559 = globaldef2913;
   self.globaldef563 = self.origin;
   self.globaldef567 = FALSE;
   self.globaldef605 = world;
   self.globaldef671 = globaldef699;
   if ( (self.globaldef558 & globaldef686) ) {

      globaldef785 = (globaldef785 - TRUE);
      self.globaldef558 = (self.globaldef558 - globaldef686);

   }
   if ( (!(globaldef804 & globaldef752) && ((globaldef786 < globaldef787) || (globaldef788 != globaldef710))) ) {

      self.globaldef558 = (self.globaldef558 | globaldef686);
      globaldef785 = (globaldef785 + TRUE);

   }
   self.globaldef571 = skill;
   self.globaldef650 = self;
   globaldef2862 ();
   if ( (deathmatch || coop) ) {

      makevectors (self.angles);
      globaldef2638 ((self.origin + (v_forward * globaldef1384)));

   }
   globaldef2639 (self.origin,self);
   globaldef2616 (self);
   if ( (globaldef804 & globaldef750) ) {

      globaldef1155 (self);

   }

};
vector globaldef2912 /* = '0.000 0.000 22.000' */;
vector globaldef2913 /* = '0.000 0.000 40.000' */;

// function info_player_start
// function number 390 begins at statement 11796
/*
 * OP_DONE	0	0	0
 */

void () info_player_start = {


};

void () info_player_start2;

// function info_player_start2
// function number 391 begins at statement 11797
/*
 * OP_DONE	0	0	0
 */

void () info_player_start2 = {


};

void () testplayerstart;

// function testplayerstart
// function number 392 begins at statement 11798
/*
 * OP_DONE	0	0	0
 */

void () testplayerstart = {


};

void () info_player_deathmatch;

// function info_player_deathmatch
// function number 393 begins at statement 11799
/*
 * OP_DONE	0	0	0
 */

void () info_player_deathmatch = {


};

void () info_player_coop;

// function info_player_coop
// function number 394 begins at statement 11800
/*
 * OP_DONE	0	0	0
 */

void () info_player_coop = {


};

// function NextLevel
// function number 395 begins at statement 11801
/*
 * OP_EQ_S	34	8530	8531
 * OP_IFNOT	8531	39	0
 * OP_STORE_V	6635	4	0
 * OP_CALL1	490	0	0
 * OP_NOT_F	1	0	8532
 * OP_IFNOT	8532	3	0
 * OP_STORE_S	8533	34	0
 * OP_GOTO	28	0	0
 * OP_BITAND	38	214	8534
 * OP_NOT_F	8534	0	8535
 * OP_IFNOT	8535	5	0
 * OP_STORE_S	8533	34	0
 * OP_BITOR	38	214	8536
 * OP_STORE_F	8536	38	0
 * OP_GOTO	21	0	0
 * OP_BITAND	38	216	8537
 * OP_NOT_F	8537	0	8538
 * OP_IFNOT	8538	5	0
 * OP_STORE_S	8539	34	0
 * OP_BITOR	38	216	8540
 * OP_STORE_F	8540	38	0
 * OP_GOTO	14	0	0
 * OP_BITAND	38	229	8541
 * OP_NOT_F	8541	0	8542
 * OP_IFNOT	8542	5	0
 * OP_STORE_S	8543	34	0
 * OP_BITOR	38	229	8544
 * OP_STORE_F	8544	38	0
 * OP_GOTO	7	0	0
 * OP_BITAND	38	217	8545
 * OP_NOT_F	8545	0	8546
 * OP_IFNOT	8546	4	0
 * OP_STORE_S	8547	34	0
 * OP_SUB_F	38	232	8548
 * OP_STORE_F	8548	38	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	8529	0
 * OP_ADDRESS	8529	356	8549
 * OP_STOREP_S	34	8549	0
 * OP_GOTO	13	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	8550	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	8529	0
 * OP_NOT_ENT	8529	0	8551
 * OP_IFNOT	8551	6	0
 * OP_STORE_S	8530	34	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	8529	0
 * OP_ADDRESS	8529	356	8552
 * OP_STOREP_S	34	8552	0
 * OP_LOAD_S	8529	356	8553
 * OP_STORE_S	8553	8269	0
 * OP_STORE_F	214	347	0
 * OP_LOAD_F	8529	150	8554
 * OP_LT	8554	31	8555
 * OP_IFNOT	8555	6	0
 * OP_ADDRESS	8529	148	8556
 * OP_STOREP_FNC	8304	8556	0
 * OP_ADDRESS	8529	150	8557
 * OP_ADD_F	31	3036	8558
 * OP_STOREP_F	8558	8557	0
 * OP_DONE	0	0	0
 */

void () NextLevel = {

   local entity globaldef2918;

   if ( (mapname == globaldef2919) ) {

      if ( !globaldef473 (globaldef2383) ) {

         mapname = globaldef2920;

      } else {

         if ( !(serverflags & TRUE) ) {

            mapname = globaldef2920;
            serverflags = (serverflags | TRUE);

         } else {

            if ( !(serverflags & FL_SWIM) ) {

               mapname = globaldef2921;
               serverflags = (serverflags | FL_SWIM);

            } else {

               if ( !(serverflags & MOVETYPE_STEP) ) {

                  mapname = globaldef2922;
                  serverflags = (serverflags | MOVETYPE_STEP);

               } else {

                  if ( !(serverflags & FL_CLIENT) ) {

                     mapname = globaldef2923;
                     serverflags = (serverflags - MOVETYPE_PUSH);

                  }

               }

            }

         }

      }
      globaldef2918 = spawn ();
      globaldef2918.globaldef339 = mapname;

   } else {

      globaldef2918 = find (world,classname,globaldef2924);
      if ( !globaldef2918 ) {

         mapname = globaldef2919;
         globaldef2918 = spawn ();
         globaldef2918.globaldef339 = mapname;

      }

   }
   globaldef2871 = globaldef2918.globaldef339;
   gameover = TRUE;
   if ( (globaldef2918.nextthink < time) ) {

      globaldef2918.think = globaldef2881;
      globaldef2918.nextthink = (time + 0.100);

   }

};
string globaldef2919 /* = "start" */;
string globaldef2920 /* = "e1m1" */;
string globaldef2921 /* = "e2m1" */;
string globaldef2922 /* = "e3m1" */;
string globaldef2923 /* = "e4m1" */;
string globaldef2924 /* = "trigger_changelevel" */;

void () CheckRules;

// function CheckRules
// function number 396 begins at statement 11865
/*
 * OP_IFNOT	347	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	8562	4	0
 * OP_CALL1	490	0	0
 * OP_STORE_F	1	8561	0
 * OP_LOAD_F	28	153	8563
 * OP_GE	8563	8561	8564
 * OP_AND	8561	8564	8565
 * OP_IFNOT	8565	3	0
 * OP_CALL0	6709	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () CheckRules = {

   local float globaldef2926;
   local float globaldef2927;

   if ( gameover ) {

      return ;

   }
   globaldef2927 = globaldef473 (globaldef2928);
   if ( (globaldef2927 && (self.globaldef131 >= globaldef2927)) ) {

      globaldef2454 ();
      return ;

   }

};
string globaldef2928 /* = "fraglimit" */;

void () PlayerDeathThink;

// function PlayerDeathThink
// function number 397 begins at statement 11877
/*
 * OP_LOAD_F	28	182	8569
 * OP_BITAND	8569	223	8570
 * OP_IFNOT	8570	18	0
 * OP_LOAD_V	28	113	8571
 * OP_STORE_V	8571	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	8568	0
 * OP_SUB_F	8568	2323	8574
 * OP_STORE_F	8574	8568	0
 * OP_LE	8568	213	8575
 * OP_IFNOT	8575	4	0
 * OP_ADDRESS	28	113	8576
 * OP_STOREP_V	286	8576	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	113	8579
 * OP_LOAD_V	28	113	8582
 * OP_STORE_V	8582	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_FV	8568	1	8585
 * OP_STOREP_V	8585	8579	0
 * OP_LOAD_F	28	165	8588
 * OP_EQ_F	8588	248	8589
 * OP_IFNOT	8589	11	0
 * OP_LOAD_F	28	172	8590
 * OP_LOAD_F	28	171	8591
 * OP_OR	8590	8591	8592
 * OP_LOAD_F	28	170	8593
 * OP_OR	8592	8593	8594
 * OP_IFNOT	8594	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	165	8595
 * OP_STOREP_F	249	8595	0
 * OP_RETURN	0	0	0
 * OP_BITAND	821	767	8596
 * OP_NOT_F	8596	0	8597
 * OP_IFNOT	8597	11	0
 * OP_LOAD_F	28	172	8598
 * OP_NOT_F	8598	0	8599
 * OP_LOAD_F	28	171	8600
 * OP_NOT_F	8600	0	8601
 * OP_AND	8599	8601	8602
 * OP_LOAD_F	28	170	8603
 * OP_NOT_F	8603	0	8604
 * OP_AND	8602	8604	8605
 * OP_IFNOT	8605	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	170	8606
 * OP_STOREP_F	213	8606	0
 * OP_ADDRESS	28	171	8607
 * OP_STOREP_F	213	8607	0
 * OP_ADDRESS	28	172	8608
 * OP_STOREP_F	213	8608	0
 * OP_CALL0	8358	0	0
 * OP_DONE	0	0	0
 */

void () PlayerDeathThink = {

   local entity globaldef2930;
   local float globaldef2931;

   if ( (self.globaldef160 & FL_ONGROUND) ) {

      globaldef2931 = vlen (self.velocity);
      globaldef2931 = (globaldef2931 - globaldef1384);
      if ( (globaldef2931 <= FALSE) ) {

         self.velocity = VEC_ORIGIN;

      } else {

         self.velocity = (globaldef2931 * globaldef442 (self.velocity));

      }

   }
   if ( (self.globaldef143 == DEAD_DEAD) ) {

      if ( ((self.globaldef150 || self.globaldef149) || self.globaldef148) ) {

         return ;

      }
      self.globaldef143 = DEAD_RESPAWNABLE;
      return ;

   }
   if ( !(globaldef804 & globaldef750) ) {

      if ( ((!self.globaldef150 && !self.globaldef149) && !self.globaldef148) ) {

         return ;

      }

   }
   self.globaldef148 = FALSE;
   self.globaldef149 = FALSE;
   self.globaldef150 = FALSE;
   globaldef2891 ();

};

void () PlayerJump;

// function PlayerJump
// function number 398 begins at statement 11931
/*
 * OP_LOAD_F	28	182	8616
 * OP_BITAND	8616	225	8617
 * OP_IFNOT	8617	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	189	8618
 * OP_GE	8618	216	8619
 * OP_IFNOT	8619	45	0
 * OP_LOAD_F	28	190	8620
 * OP_EQ_F	8620	278	8621
 * OP_IFNOT	8621	8	0
 * OP_ADDRESS	28	116	8622
 * OP_STOREP_F	1997	8622	0
 * OP_BITAND	821	767	8623
 * OP_IFNOT	8623	3	0
 * OP_ADDRESS	28	116	8624
 * OP_STOREP_F	540	8624	0
 * OP_GOTO	9	0	0
 * OP_LOAD_F	28	190	8625
 * OP_EQ_F	8625	279	8626
 * OP_IFNOT	8626	4	0
 * OP_ADDRESS	28	116	8627
 * OP_STOREP_F	2805	8627	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	116	8628
 * OP_STOREP_F	1470	8628	0
 * OP_LOAD_S	28	129	8629
 * OP_EQ_S	8629	1236	8630
 * OP_IFNOT	8630	23	0
 * OP_LOAD_F	28	395	8631
 * OP_LT	8631	31	8632
 * OP_IFNOT	8632	20	0
 * OP_ADDRESS	28	395	8633
 * OP_ADD_F	31	214	8634
 * OP_STOREP_F	8634	8633	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	8635
 * OP_IFNOT	8635	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6682	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6683	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	182	8636
 * OP_BITAND	8636	223	8637
 * OP_NOT_F	8637	0	8638
 * OP_IFNOT	8638	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	182	8639
 * OP_BITAND	8639	226	8640
 * OP_NOT_F	8640	0	8641
 * OP_IFNOT	8641	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	182	8642
 * OP_LOAD_F	28	182	8643
 * OP_LOAD_F	28	182	8644
 * OP_BITAND	8644	226	8645
 * OP_SUB_F	8643	8645	8646
 * OP_STOREP_F	8646	8642	0
 * OP_ADDRESS	28	182	8647
 * OP_LOAD_F	28	182	8648
 * OP_SUB_F	8648	223	8649
 * OP_STOREP_F	8649	8647	0
 * OP_ADDRESS	28	172	8650
 * OP_STOREP_F	213	8650	0
 * OP_LOAD_S	28	129	8651
 * OP_EQ_S	8651	1236	8652
 * OP_IFNOT	8652	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6645	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	116	8653
 * OP_LOAD_F	28	116	8654
 * OP_ADD_F	8654	734	8655
 * OP_STOREP_F	8655	8653	0
 * OP_DONE	0	0	0
 */

void () PlayerJump = {

   local vector globaldef2933;
   local vector globaldef2937;

   if ( (self.globaldef160 & FL_WATERJUMP) ) {

      return ;

   }
   if ( (self.globaldef167 >= FL_SWIM) ) {

      if ( (self.globaldef168 == CONTENT_WATER) ) {

         self.globaldef94 = globaldef1335;
         if ( (globaldef804 & globaldef750) ) {

            self.globaldef94 = globaldef523;

         }

      } else {

         if ( (self.globaldef168 == CONTENT_SLIME) ) {

            self.globaldef94 = globaldef1439;

         } else {

            self.globaldef94 = globaldef1257;

         }

      }
      if ( (self.classname == "player") ) {

         if ( (self.globaldef378 < time) ) {

            self.globaldef378 = (time + TRUE);
            if ( (globaldef440 () < globaldef522) ) {

               sound (self,CHAN_BODY,globaldef2427,TRUE,ATTN_NORM);

            } else {

               sound (self,CHAN_BODY,globaldef2428,TRUE,ATTN_NORM);

            }

         }

      }
      return ;

   }
   if ( !(self.globaldef160 & FL_ONGROUND) ) {

      return ;

   }
   if ( !(self.globaldef160 & FL_JUMPRELEASED) ) {

      return ;

   }
   self.globaldef160 = (self.globaldef160 - (self.globaldef160 & FL_JUMPRELEASED));
   self.globaldef160 = (self.globaldef160 - FL_ONGROUND);
   self.globaldef150 = FALSE;
   if ( (self.classname == "player") ) {

      sound (self,CHAN_BODY,globaldef2390,TRUE,ATTN_NORM);

   }
   self.globaldef94 = (self.globaldef94 + globaldef717);

};
.float field352;

void () WaterMove;

// function WaterMove
// function number 399 begins at statement 12018
/*
 * OP_LOAD_F	28	103	8658
 * OP_EQ_F	8658	233	8659
 * OP_IFNOT	8659	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	152	8660
 * OP_LT	8660	213	8661
 * OP_IFNOT	8661	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	189	8662
 * OP_NE_F	8662	228	8663
 * OP_IFNOT	8663	27	0
 * OP_LOAD_F	28	396	8664
 * OP_LT	8664	31	8665
 * OP_IFNOT	8665	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6651	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	11	0	0
 * OP_LOAD_F	28	396	8666
 * OP_ADD_F	31	234	8667
 * OP_LT	8666	8667	8668
 * OP_IFNOT	8668	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6650	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	396	8669
 * OP_ADD_F	31	791	8670
 * OP_STOREP_F	8670	8669	0
 * OP_ADDRESS	28	425	8671
 * OP_STOREP_F	216	8671	0
 * OP_GOTO	25	0	0
 * OP_LOAD_F	28	396	8672
 * OP_LT	8672	31	8673
 * OP_IFNOT	8673	22	0
 * OP_LOAD_F	28	379	8674
 * OP_LT	8674	31	8675
 * OP_IFNOT	8675	19	0
 * OP_ADDRESS	28	425	8676
 * OP_LOAD_F	28	425	8677
 * OP_ADD_F	8677	216	8678
 * OP_STOREP_F	8678	8676	0
 * OP_LOAD_F	28	425	8679
 * OP_GT	8679	765	8680
 * OP_IFNOT	8680	3	0
 * OP_ADDRESS	28	425	8681
 * OP_STOREP_F	235	8681	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_LOAD_F	28	425	8682
 * OP_STORE_V	8682	13	0
 * OP_CALL4	522	0	0
 * OP_ADDRESS	28	379	8683
 * OP_ADD_F	31	214	8684
 * OP_STOREP_F	8684	8683	0
 * OP_LOAD_F	28	189	8685
 * OP_NOT_F	8685	0	8686
 * OP_IFNOT	8686	15	0
 * OP_LOAD_F	28	182	8687
 * OP_BITAND	8687	218	8688
 * OP_IFNOT	8688	11	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6679	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	182	8689
 * OP_LOAD_F	28	182	8690
 * OP_SUB_F	8690	218	8691
 * OP_STOREP_F	8691	8689	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	190	8692
 * OP_EQ_F	8692	280	8693
 * OP_IFNOT	8693	22	0
 * OP_LOAD_F	28	8656	8694
 * OP_LT	8694	31	8695
 * OP_IFNOT	8695	18	0
 * OP_LOAD_F	28	383	8696
 * OP_GT	8696	31	8697
 * OP_IFNOT	8697	5	0
 * OP_ADDRESS	28	8656	8698
 * OP_ADD_F	31	214	8699
 * OP_STOREP_F	8699	8698	0
 * OP_GOTO	4	0	0
 * OP_ADDRESS	28	8656	8700
 * OP_ADD_F	31	3267	8701
 * OP_STOREP_F	8701	8700	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_LOAD_F	28	189	8702
 * OP_MUL_F	235	8702	8703
 * OP_STORE_V	8703	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	28	190	8704
 * OP_EQ_F	8704	279	8705
 * OP_IFNOT	8705	17	0
 * OP_LOAD_F	28	8656	8706
 * OP_LT	8706	31	8707
 * OP_LOAD_F	28	383	8708
 * OP_LT	8708	31	8709
 * OP_AND	8707	8709	8710
 * OP_IFNOT	8710	11	0
 * OP_ADDRESS	28	8656	8711
 * OP_ADD_F	31	214	8712
 * OP_STOREP_F	8712	8711	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_LOAD_F	28	189	8713
 * OP_MUL_F	229	8713	8714
 * OP_STORE_V	8714	13	0
 * OP_CALL4	522	0	0
 * OP_LOAD_F	28	182	8715
 * OP_BITAND	8715	218	8716
 * OP_NOT_F	8716	0	8717
 * OP_IFNOT	8717	34	0
 * OP_LOAD_F	28	190	8718
 * OP_EQ_F	8718	280	8719
 * OP_IFNOT	8719	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6678	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_F	28	190	8720
 * OP_EQ_F	8720	278	8721
 * OP_IFNOT	8721	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6677	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_F	28	190	8722
 * OP_EQ_F	8722	279	8723
 * OP_IFNOT	8723	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6676	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	182	8724
 * OP_LOAD_F	28	182	8725
 * OP_ADD_F	8725	218	8726
 * OP_STOREP_F	8726	8724	0
 * OP_ADDRESS	28	8656	8727
 * OP_STOREP_F	213	8727	0
 * OP_LOAD_F	28	182	8728
 * OP_BITAND	8728	225	8729
 * OP_NOT_F	8729	0	8730
 * OP_IFNOT	8730	10	0
 * OP_ADDRESS	28	113	8731
 * OP_LOAD_V	28	113	8734
 * OP_LOAD_F	28	189	8737
 * OP_MUL_F	4478	8737	8738
 * OP_MUL_F	8738	32	8739
 * OP_LOAD_V	28	113	8740
 * OP_MUL_FV	8739	8740	8743
 * OP_SUB_V	8734	8743	8746
 * OP_STOREP_V	8746	8731	0
 * OP_DONE	0	0	0
 */

void () WaterMove = {

   if ( (self.movetype == MOVETYPE_NOCLIP) ) {

      return ;

   }
   if ( (self.globaldef130 < FALSE) ) {

      return ;

   }
   if ( (self.globaldef167 != MOVETYPE_WALK) ) {

      if ( (self.globaldef379 < time) ) {

         sound (self,CHAN_VOICE,globaldef2396,TRUE,ATTN_NORM);

      } else {

         if ( (self.globaldef379 < (time + MOVETYPE_FLYMISSILE)) ) {

            sound (self,CHAN_VOICE,globaldef2395,TRUE,ATTN_NORM);

         }

      }
      self.globaldef379 = (time + globaldef774);
      self.globaldef408 = FL_SWIM;

   } else {

      if ( (self.globaldef379 < time) ) {

         if ( (self.globaldef362 < time) ) {

            self.globaldef408 = (self.globaldef408 + FL_SWIM);
            if ( (self.globaldef408 > globaldef748) ) {

               self.globaldef408 = MOVETYPE_BOUNCE;

            }
            globaldef505 (self,world,world,self.globaldef408);
            self.globaldef362 = (time + TRUE);

         }

      }

   }
   if ( !self.globaldef167 ) {

      if ( (self.globaldef160 & FL_INWATER) ) {

         sound (self,CHAN_BODY,globaldef2424,TRUE,ATTN_NORM);
         self.globaldef160 = (self.globaldef160 - FL_INWATER);

      }
      return ;

   }
   if ( (self.globaldef168 == CONTENT_LAVA) ) {

      if ( (self.globaldef2941 < time) ) {

         if ( (self.globaldef366 > time) ) {

            self.globaldef2941 = (time + TRUE);

         } else {

            self.globaldef2941 = (time + globaldef1553);

         }
         globaldef505 (self,world,world,(MOVETYPE_BOUNCE * self.globaldef167));

      }

   } else {

      if ( (self.globaldef168 == CONTENT_SLIME) ) {

         if ( ((self.globaldef2941 < time) && (self.globaldef366 < time)) ) {

            self.globaldef2941 = (time + TRUE);
            globaldef505 (self,world,world,(MOVETYPE_STEP * self.globaldef167));

         }

      }

   }
   if ( !(self.globaldef160 & FL_INWATER) ) {

      if ( (self.globaldef168 == CONTENT_LAVA) ) {

         sound (self,CHAN_BODY,globaldef2423,TRUE,ATTN_NORM);

      }
      if ( (self.globaldef168 == CONTENT_WATER) ) {

         sound (self,CHAN_BODY,globaldef2422,TRUE,ATTN_NORM);

      }
      if ( (self.globaldef168 == CONTENT_SLIME) ) {

         sound (self,CHAN_BODY,globaldef2421,TRUE,ATTN_NORM);

      }
      self.globaldef160 = (self.globaldef160 + FL_INWATER);
      self.globaldef2941 = FALSE;

   }
   if ( !(self.globaldef160 & FL_WATERJUMP) ) {

      self.velocity = (self.velocity - (((globaldef1827 * self.globaldef167) * frametime) * self.velocity));

   }

};

void () CheckWaterJump;

// function CheckWaterJump
// function number 400 begins at statement 12190
/*
 * OP_LOAD_V	28	117	8756
 * OP_STORE_V	8756	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	8759
 * OP_STORE_V	8759	8750	0
 * OP_ADD_F	8752	217	8762
 * OP_STORE_F	8762	8752	0
 * OP_STORE_F	213	61	0
 * OP_STORE_V	59	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_VF	59	736	8763
 * OP_ADD_V	8750	8763	8766
 * OP_STORE_V	8766	8753	0
 * OP_STORE_V	8750	4	0
 * OP_STORE_V	8753	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_LT	70	214	8769
 * OP_IFNOT	8769	34	0
 * OP_LOAD_F	28	141	8770
 * OP_ADD_F	8752	8770	8771
 * OP_SUB_F	8771	217	8772
 * OP_STORE_F	8772	8752	0
 * OP_MUL_VF	59	736	8773
 * OP_ADD_V	8750	8773	8776
 * OP_STORE_V	8776	8753	0
 * OP_ADDRESS	28	202	8779
 * OP_MUL_VF	74	8782	8783
 * OP_STOREP_V	8783	8779	0
 * OP_STORE_V	8750	4	0
 * OP_STORE_V	8753	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	8786
 * OP_IFNOT	8786	17	0
 * OP_ADDRESS	28	182	8787
 * OP_LOAD_F	28	182	8788
 * OP_BITOR	8788	225	8789
 * OP_STOREP_F	8789	8787	0
 * OP_ADDRESS	28	116	8790
 * OP_STOREP_F	5827	8790	0
 * OP_ADDRESS	28	182	8791
 * OP_LOAD_F	28	182	8792
 * OP_LOAD_F	28	182	8793
 * OP_BITAND	8793	226	8794
 * OP_SUB_F	8792	8794	8795
 * OP_STOREP_F	8795	8791	0
 * OP_ADDRESS	28	186	8796
 * OP_ADD_F	31	216	8797
 * OP_STOREP_F	8797	8796	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () CheckWaterJump = {

   local vector globaldef2944;
   local vector globaldef2948;

   makevectors (self.angles);
   globaldef2944 = self.origin;
   globaldef2947 = (globaldef2947 + FL_CLIENT);
   globaldef35 = FALSE;
   globaldef442 (v_forward);
   globaldef2948 = (globaldef2944 + (v_forward * globaldef719));
   globaldef449 (globaldef2944,globaldef2948,TRUE,self);
   if ( (trace_fraction < TRUE) ) {

      globaldef2947 = ((globaldef2947 + self.globaldef119) - FL_CLIENT);
      globaldef2948 = (globaldef2944 + (v_forward * globaldef719));
      self.movedir = (trace_plane_normal * globaldef2952);
      globaldef449 (globaldef2944,globaldef2948,TRUE,self);
      if ( (trace_fraction == TRUE) ) {

         self.globaldef160 = (self.globaldef160 | FL_WATERJUMP);
         self.globaldef94 = globaldef2170;
         self.globaldef160 = (self.globaldef160 - (self.globaldef160 & FL_JUMPRELEASED));
         self.globaldef164 = (time + FL_SWIM);
         return ;

      }

   }

};
float globaldef2952 /* = -50.000 */;

// function PlayerPreThink
// function number 401 begins at statement 12244
/*
 * OP_IFNOT	8213	3	0
 * OP_CALL0	8294	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	166	8800
 * OP_EQ_V	8800	286	8803
 * OP_IFNOT	8803	2	0
 * OP_RETURN	0	0	0
 * OP_BITAND	821	767	8804
 * OP_IFNOT	8804	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1216	0	0
 * OP_LOAD_V	28	175	8805
 * OP_STORE_V	8805	4	0
 * OP_CALL1	452	0	0
 * OP_CALL0	8559	0	0
 * OP_CALL0	8657	0	0
 * OP_LOAD_F	28	189	8808
 * OP_EQ_F	8808	216	8809
 * OP_IFNOT	8809	2	0
 * OP_CALL0	8749	0	0
 * OP_LOAD_F	28	165	8810
 * OP_GE	8810	248	8811
 * OP_IFNOT	8811	3	0
 * OP_CALL0	8566	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	165	8812
 * OP_EQ_F	8812	247	8813
 * OP_IFNOT	8813	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	172	8814
 * OP_IFNOT	8814	3	0
 * OP_CALL0	8609	0	0
 * OP_GOTO	5	0	0
 * OP_ADDRESS	28	182	8815
 * OP_LOAD_F	28	182	8816
 * OP_BITOR	8816	226	8817
 * OP_STOREP_F	8817	8815	0
 * OP_LOAD_F	28	422	8818
 * OP_LT	31	8818	8819
 * OP_IFNOT	8819	3	0
 * OP_ADDRESS	28	113	8820
 * OP_STOREP_V	286	8820	0
 * OP_LOAD_F	28	378	8823
 * OP_GT	31	8823	8824
 * OP_LOAD_F	28	157	8825
 * OP_EQ_F	8825	213	8826
 * OP_AND	8824	8826	8827
 * OP_LOAD_F	28	154	8828
 * OP_NE_F	8828	253	8829
 * OP_AND	8827	8829	8830
 * OP_IFNOT	8830	5	0
 * OP_ADDRESS	28	154	8831
 * OP_CALL0	4567	0	0
 * OP_STOREP_F	1	8831	0
 * OP_CALL0	4295	0	0
 * OP_DONE	0	0	0
 */

void () PlayerPreThink = {

   local float globaldef2953;
   local float globaldef2954;

   if ( globaldef2863 ) {

      globaldef2880 ();
      return ;

   }
   if ( (self.globaldef144 == VEC_ORIGIN) ) {

      return ;

   }
   if ( (globaldef804 & globaldef750) ) {

      globaldef1154 (self);

   }
   makevectors (self.globaldef153);
   globaldef2925 ();
   globaldef2942 ();
   if ( (self.globaldef167 == FL_SWIM) ) {

      globaldef2943 ();

   }
   if ( (self.globaldef143 >= DEAD_DEAD) ) {

      globaldef2929 ();
      return ;

   }
   if ( (self.globaldef143 == DEAD_DYING) ) {

      return ;

   }
   if ( self.globaldef150 ) {

      globaldef2932 ();

   } else {

      self.globaldef160 = (self.globaldef160 | FL_JUMPRELEASED);

   }
   if ( (time < self.globaldef405) ) {

      self.velocity = VEC_ORIGIN;

   }
   if ( (((time > self.attack_finished) && (self.globaldef135 == FALSE)) && (self.globaldef132 != IT_AXE)) ) {

      self.globaldef132 = globaldef1844 ();
      globaldef1788 ();

   }

};

void () CheckPowerups;

// function CheckPowerups
// function number 402 begins at statement 12300
/*
 * OP_LOAD_F	28	152	8833
 * OP_LE	8833	213	8834
 * OP_IFNOT	8834	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	381	8835
 * OP_IFNOT	8835	72	0
 * OP_LOAD_F	28	387	8836
 * OP_LT	8836	31	8837
 * OP_IFNOT	8837	13	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	5065	10	0
 * OP_STORE_V	539	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	387	8838
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	228	8839
 * OP_ADD_F	31	8839	8840
 * OP_ADD_F	8840	214	8841
 * OP_STOREP_F	8841	8838	0
 * OP_LOAD_F	28	381	8842
 * OP_ADD_F	31	228	8843
 * OP_LT	8842	8843	8844
 * OP_IFNOT	8844	28	0
 * OP_LOAD_F	28	386	8845
 * OP_EQ_F	8845	214	8846
 * OP_IFNOT	8846	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8847	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	5064	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	386	8848
 * OP_ADD_F	31	214	8849
 * OP_STOREP_F	8849	8848	0
 * OP_LOAD_F	28	386	8850
 * OP_LT	8850	31	8851
 * OP_IFNOT	8851	7	0
 * OP_ADDRESS	28	386	8852
 * OP_ADD_F	31	214	8853
 * OP_STOREP_F	8853	8852	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_F	28	381	8854
 * OP_LT	8854	31	8855
 * OP_IFNOT	8855	9	0
 * OP_ADDRESS	28	162	8856
 * OP_LOAD_F	28	162	8857
 * OP_SUB_F	8857	272	8858
 * OP_STOREP_F	8858	8856	0
 * OP_ADDRESS	28	381	8859
 * OP_STOREP_F	213	8859	0
 * OP_ADDRESS	28	386	8860
 * OP_STOREP_F	213	8860	0
 * OP_ADDRESS	28	131	8861
 * OP_STOREP_F	213	8861	0
 * OP_BITAND	821	777	8862
 * OP_IFNOT	8862	6	0
 * OP_ADDRESS	28	574	8863
 * OP_STOREP_F	213	8863	0
 * OP_ADDRESS	28	573	8864
 * OP_STOREP_F	525	8864	0
 * OP_GOTO	5	0	0
 * OP_ADDRESS	28	132	8865
 * OP_STOREP_F	213	8865	0
 * OP_ADDRESS	28	93	8866
 * OP_STOREP_F	525	8866	0
 * OP_GOTO	14	0	0
 * OP_BITAND	821	777	8867
 * OP_IFNOT	8867	7	0
 * OP_ADDRESS	28	574	8868
 * OP_LOAD_F	28	572	8869
 * OP_STOREP_F	8869	8868	0
 * OP_ADDRESS	28	573	8870
 * OP_STOREP_F	526	8870	0
 * OP_GOTO	6	0	0
 * OP_ADDRESS	28	132	8871
 * OP_LOAD_F	28	572	8872
 * OP_STOREP_F	8872	8871	0
 * OP_ADDRESS	28	93	8873
 * OP_STOREP_F	526	8873	0
 * OP_LOAD_F	28	380	8874
 * OP_IFNOT	8874	57	0
 * OP_LOAD_F	28	380	8875
 * OP_ADD_F	31	228	8876
 * OP_LT	8875	8876	8877
 * OP_IFNOT	8877	28	0
 * OP_LOAD_F	28	384	8878
 * OP_EQ_F	8878	214	8879
 * OP_IFNOT	8879	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8880	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	5042	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	384	8881
 * OP_ADD_F	31	214	8882
 * OP_STOREP_F	8882	8881	0
 * OP_LOAD_F	28	384	8883
 * OP_LT	8883	31	8884
 * OP_IFNOT	8884	7	0
 * OP_ADDRESS	28	384	8885
 * OP_ADD_F	31	214	8886
 * OP_STOREP_F	8886	8885	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_F	28	380	8887
 * OP_LT	8887	31	8888
 * OP_IFNOT	8888	9	0
 * OP_ADDRESS	28	162	8889
 * OP_LOAD_F	28	162	8890
 * OP_SUB_F	8890	273	8891
 * OP_STOREP_F	8891	8889	0
 * OP_ADDRESS	28	384	8892
 * OP_STOREP_F	213	8892	0
 * OP_ADDRESS	28	380	8893
 * OP_STOREP_F	213	8893	0
 * OP_LOAD_F	28	380	8894
 * OP_GT	8894	31	8895
 * OP_IFNOT	8895	6	0
 * OP_ADDRESS	28	133	8896
 * OP_LOAD_F	28	133	8897
 * OP_BITOR	8897	341	8898
 * OP_STOREP_F	8898	8896	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	133	8899
 * OP_LOAD_F	28	133	8900
 * OP_LOAD_F	28	133	8901
 * OP_BITAND	8901	341	8902
 * OP_SUB_F	8900	8902	8903
 * OP_STOREP_F	8903	8899	0
 * OP_LOAD_F	28	382	8904
 * OP_IFNOT	8904	57	0
 * OP_LOAD_F	28	382	8905
 * OP_ADD_F	31	228	8906
 * OP_LT	8905	8906	8907
 * OP_IFNOT	8907	28	0
 * OP_LOAD_F	28	388	8908
 * OP_EQ_F	8908	214	8909
 * OP_IFNOT	8909	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8910	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	5077	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	388	8911
 * OP_ADD_F	31	214	8912
 * OP_STOREP_F	8912	8911	0
 * OP_LOAD_F	28	388	8913
 * OP_LT	8913	31	8914
 * OP_IFNOT	8914	7	0
 * OP_ADDRESS	28	388	8915
 * OP_ADD_F	31	214	8916
 * OP_STOREP_F	8916	8915	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_F	28	382	8917
 * OP_LT	8917	31	8918
 * OP_IFNOT	8918	9	0
 * OP_ADDRESS	28	162	8919
 * OP_LOAD_F	28	162	8920
 * OP_SUB_F	8920	275	8921
 * OP_STOREP_F	8921	8919	0
 * OP_ADDRESS	28	382	8922
 * OP_STOREP_F	213	8922	0
 * OP_ADDRESS	28	388	8923
 * OP_STOREP_F	213	8923	0
 * OP_LOAD_F	28	382	8924
 * OP_GT	8924	31	8925
 * OP_IFNOT	8925	6	0
 * OP_ADDRESS	28	133	8926
 * OP_LOAD_F	28	133	8927
 * OP_BITOR	8927	341	8928
 * OP_STOREP_F	8928	8926	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	133	8929
 * OP_LOAD_F	28	133	8930
 * OP_LOAD_F	28	133	8931
 * OP_BITAND	8931	341	8932
 * OP_SUB_F	8930	8932	8933
 * OP_STOREP_F	8933	8929	0
 * OP_LOAD_F	28	383	8934
 * OP_IFNOT	8934	46	0
 * OP_ADDRESS	28	396	8935
 * OP_ADD_F	31	791	8936
 * OP_STOREP_F	8936	8935	0
 * OP_LOAD_F	28	383	8937
 * OP_ADD_F	31	228	8938
 * OP_LT	8937	8938	8939
 * OP_IFNOT	8939	28	0
 * OP_LOAD_F	28	390	8940
 * OP_EQ_F	8940	214	8941
 * OP_IFNOT	8941	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	8942	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	5054	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	390	8943
 * OP_ADD_F	31	214	8944
 * OP_STOREP_F	8944	8943	0
 * OP_LOAD_F	28	390	8945
 * OP_LT	8945	31	8946
 * OP_IFNOT	8946	7	0
 * OP_ADDRESS	28	390	8947
 * OP_ADD_F	31	214	8948
 * OP_STOREP_F	8948	8947	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_LOAD_F	28	383	8949
 * OP_LT	8949	31	8950
 * OP_IFNOT	8950	9	0
 * OP_ADDRESS	28	162	8951
 * OP_LOAD_F	28	162	8952
 * OP_SUB_F	8952	274	8953
 * OP_STOREP_F	8953	8951	0
 * OP_ADDRESS	28	390	8954
 * OP_STOREP_F	213	8954	0
 * OP_ADDRESS	28	383	8955
 * OP_STOREP_F	213	8955	0
 * OP_DONE	0	0	0
 */

void () CheckPowerups = {

   if ( (self.globaldef130 <= FALSE) ) {

      return ;

   }
   if ( self.globaldef364 ) {

      if ( (self.globaldef370 < time) ) {

         sound (self,CHAN_AUTO,globaldef1958,globaldef522,ATTN_IDLE);
         self.globaldef370 = ((time + (globaldef440 () * MOVETYPE_WALK)) + TRUE);

      }
      if ( (self.globaldef364 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef369 == TRUE) ) {

            globaldef887 (self,globaldef2956);
            globaldef822 (self,globaldef1818);
            sound (self,CHAN_AUTO,globaldef1957,TRUE,ATTN_NORM);
            self.globaldef369 = (time + TRUE);

         }
         if ( (self.globaldef369 < time) ) {

            self.globaldef369 = (time + TRUE);
            globaldef822 (self,globaldef1818);

         }

      }
      if ( (self.globaldef364 < time) ) {

         self.globaldef140 = (self.globaldef140 - IT_INVISIBILITY);
         self.globaldef364 = FALSE;
         self.globaldef369 = FALSE;

      }
      self.globaldef109 = FALSE;
      if ( (globaldef804 & globaldef760) ) {

         self.globaldef557 = FALSE;
         self.globaldef556 = globaldef508;

      } else {

         self.globaldef110 = FALSE;
         self.modelindex = globaldef508;

      }

   } else {

      if ( (globaldef804 & globaldef760) ) {

         self.globaldef557 = self.globaldef555;
         self.globaldef556 = globaldef509;

      } else {

         self.globaldef110 = self.globaldef555;
         self.modelindex = globaldef509;

      }

   }
   if ( self.globaldef363 ) {

      if ( (self.globaldef363 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef367 == TRUE) ) {

            globaldef887 (self,globaldef2957);
            globaldef822 (self,globaldef1818);
            sound (self,CHAN_AUTO,globaldef1947,TRUE,ATTN_NORM);
            self.globaldef367 = (time + TRUE);

         }
         if ( (self.globaldef367 < time) ) {

            self.globaldef367 = (time + TRUE);
            globaldef822 (self,globaldef1818);

         }

      }
      if ( (self.globaldef363 < time) ) {

         self.globaldef140 = (self.globaldef140 - IT_INVULNERABILITY);
         self.globaldef367 = FALSE;
         self.globaldef363 = FALSE;

      }
      if ( (self.globaldef363 > time) ) {

         self.globaldef111 = (self.globaldef111 | EF_DIMLIGHT);

      } else {

         self.globaldef111 = (self.globaldef111 - (self.globaldef111 & EF_DIMLIGHT));

      }

   }
   if ( self.globaldef365 ) {

      if ( (self.globaldef365 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef371 == TRUE) ) {

            globaldef887 (self,globaldef2958);
            globaldef822 (self,globaldef1818);
            sound (self,CHAN_AUTO,globaldef1963,TRUE,ATTN_NORM);
            self.globaldef371 = (time + TRUE);

         }
         if ( (self.globaldef371 < time) ) {

            self.globaldef371 = (time + TRUE);
            globaldef822 (self,globaldef1818);

         }

      }
      if ( (self.globaldef365 < time) ) {

         self.globaldef140 = (self.globaldef140 - IT_QUAD);
         self.globaldef365 = FALSE;
         self.globaldef371 = FALSE;

      }
      if ( (self.globaldef365 > time) ) {

         self.globaldef111 = (self.globaldef111 | EF_DIMLIGHT);

      } else {

         self.globaldef111 = (self.globaldef111 - (self.globaldef111 & EF_DIMLIGHT));

      }

   }
   if ( self.globaldef366 ) {

      self.globaldef379 = (time + globaldef774);
      if ( (self.globaldef366 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef373 == TRUE) ) {

            globaldef887 (self,globaldef2959);
            globaldef822 (self,globaldef1818);
            sound (self,CHAN_AUTO,globaldef1952,TRUE,ATTN_NORM);
            self.globaldef373 = (time + TRUE);

         }
         if ( (self.globaldef373 < time) ) {

            self.globaldef373 = (time + TRUE);
            globaldef822 (self,globaldef1818);

         }

      }
      if ( (self.globaldef366 < time) ) {

         self.globaldef140 = (self.globaldef140 - IT_SUIT);
         self.globaldef373 = FALSE;
         self.globaldef366 = FALSE;

      }

   }

};
string globaldef2956 /* = "Ring of Shadows magic is fading\n" */;
string globaldef2957 /* = "Protection is almost burned out\n" */;
string globaldef2958 /* = "Quad Damage is wearing off\n" */;
string globaldef2959 /* = "Air supply in Biosuit expiring\n" */;

// function PlayerPostThink
// function number 403 begins at statement 12554
/*
 * OP_LOAD_S	28	129	8959
 * OP_EQ_S	8959	2849	8960
 * OP_NOT_F	8213	0	8961
 * OP_AND	8960	8961	8962
 * OP_IFNOT	8962	3	0
 * OP_CALL0	2796	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	166	8963
 * OP_EQ_V	8963	286	8966
 * OP_IFNOT	8966	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	129	8967
 * OP_EQ_S	8967	1236	8968
 * OP_IFNOT	8968	4	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1055	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1069	0	0
 * OP_LOAD_S	28	129	8969
 * OP_EQ_S	8969	1236	8970
 * OP_LOAD_S	28	129	8971
 * OP_EQ_S	8971	2025	8972
 * OP_OR	8970	8972	8973
 * OP_IFNOT	8973	2	0
 * OP_CALL0	1211	0	0
 * OP_LOAD_F	28	165	8974
 * OP_IFNOT	8974	4	0
 * OP_ADDRESS	28	173	8975
 * OP_STOREP_F	213	8975	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	129	8976
 * OP_EQ_S	8976	2025	8977
 * OP_IFNOT	8977	4	0
 * OP_ADDRESS	28	173	8978
 * OP_STOREP_F	213	8978	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1057	0	0
 * OP_LOAD_F	28	575	8979
 * OP_BITAND	8979	703	8980
 * OP_IFNOT	8980	2	0
 * OP_CALL0	1196	0	0
 * OP_IFNOT	35	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	7410	0	0
 * OP_CALL0	6496	0	0
 * OP_LOAD_F	28	394	8981
 * OP_LT	8981	8982	8983
 * OP_LOAD_F	28	182	8984
 * OP_BITAND	8984	223	8985
 * OP_AND	8983	8985	8986
 * OP_LOAD_F	28	152	8987
 * OP_GT	8987	213	8988
 * OP_AND	8986	8988	8989
 * OP_IFNOT	8989	36	0
 * OP_LOAD_F	28	190	8990
 * OP_EQ_F	8990	278	8991
 * OP_IFNOT	8991	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6675	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	24	0	0
 * OP_LOAD_F	28	394	8992
 * OP_LT	8992	8993	8994
 * OP_IFNOT	8994	15	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	30	7	0
 * OP_STORE_V	30	10	0
 * OP_STORE_V	230	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6647	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	398	8995
 * OP_STOREP_S	8996	8995	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6646	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	394	8997
 * OP_STOREP_F	213	8997	0
 * OP_LOAD_F	28	182	8998
 * OP_BITAND	8998	223	8999
 * OP_NOT_F	8999	0	9000
 * OP_IFNOT	9000	4	0
 * OP_ADDRESS	28	394	9001
 * OP_LOAD_F	28	116	9002
 * OP_STOREP_F	9002	9001	0
 * OP_CALL0	8832	0	0
 * OP_CALL0	1084	0	0
 * OP_ADDRESS	28	576	9003
 * OP_LOAD_V	28	113	9006
 * OP_STOREP_V	9006	9003	0
 * OP_ADDRESS	28	580	9009
 * OP_LOAD_V	28	105	9012
 * OP_STOREP_V	9012	9009	0
 * OP_ADDRESS	28	584	9015
 * OP_LOAD_F	28	182	9016
 * OP_STOREP_F	9016	9015	0
 * OP_ADDRESS	28	585	9017
 * OP_LOAD_F	28	575	9018
 * OP_STOREP_F	9018	9017	0
 * OP_DONE	0	0	0
 */

void () PlayerPostThink = {

   local float globaldef2960;
   local float globaldef2961;
   local float globaldef2962;

   if ( ((self.classname == globaldef1445) && !globaldef2863) ) {

      globaldef1438 ();
      return ;

   }
   if ( (self.globaldef144 == VEC_ORIGIN) ) {

      return ;

   }
   if ( (self.classname == "player") ) {

      globaldef993 (self,self);

   }
   globaldef1007 (self);
   if ( ((self.classname == "player") || (self.classname == globaldef1339)) ) {

      globaldef1149 ();

   }
   if ( self.globaldef143 ) {

      self.globaldef151 = FALSE;
      return ;

   }
   if ( (self.classname == globaldef1339) ) {

      self.globaldef151 = FALSE;
      return ;

   }
   globaldef995 (self);
   if ( (self.globaldef558 & globaldef686) ) {

      globaldef1134 ();

   }
   if ( deathmatch ) {

      globaldef2676 (self);

   }
   globaldef2263 ();
   if ( (((self.globaldef377 < globaldef2963) && (self.globaldef160 & FL_ONGROUND)) && (self.globaldef130 > FALSE)) ) {

      if ( (self.globaldef168 == CONTENT_WATER) ) {

         sound (self,CHAN_BODY,globaldef2420,TRUE,ATTN_NORM);

      } else {

         if ( (self.globaldef377 < globaldef2964) ) {

            globaldef505 (self,world,world,MOVETYPE_FLY);
            sound (self,CHAN_VOICE,globaldef2392,TRUE,ATTN_NORM);
            self.globaldef381 = globaldef2965;

         } else {

            sound (self,CHAN_VOICE,globaldef2391,TRUE,ATTN_NORM);

         }

      }
      self.globaldef377 = FALSE;

   }
   if ( !(self.globaldef160 & FL_ONGROUND) ) {

      self.globaldef377 = self.globaldef94;

   }
   globaldef2955 ();
   globaldef1022 ();
   self.globaldef559 = self.velocity;
   self.globaldef563 = self.origin;
   self.globaldef567 = self.globaldef160;
   self.globaldef568 = self.globaldef558;

};
float globaldef2963 /* = -300.000 */;
float globaldef2964 /* = -650.000 */;
string globaldef2965 /* = "falling" */;

// function ClientConnect
// function number 404 begins at statement 12667
/*
 * OP_ADDRESS	28	609	9021
 * OP_STOREP_F	276	9021	0
 * OP_ADDRESS	28	608	9022
 * OP_LOAD_F	28	183	9023
 * OP_SUB_F	9023	214	9024
 * OP_STOREP_F	9024	9022	0
 * OP_ADDRESS	28	610	9025
 * OP_MUL_F	213	218	9026
 * OP_LOAD_F	28	184	9027
 * OP_ADD_F	9026	9027	9028
 * OP_STOREP_F	9028	9025	0
 * OP_ADDRESS	28	572	9029
 * OP_STOREP_F	213	9029	0
 * OP_IFNOT	833	3	0
 * OP_ADDRESS	833	621	9030
 * OP_STOREP_ENT	28	9030	0
 * OP_ADDRESS	28	620	9031
 * OP_STOREP_ENT	833	9031	0
 * OP_ADDRESS	28	621	9032
 * OP_STOREP_ENT	30	9032	0
 * OP_STORE_ENT	28	833	0
 * OP_LOAD_F	28	608	9033
 * OP_STORE_V	9033	4	0
 * OP_CALL1	1047	0	0
 * OP_IFNOT	1	46	0
 * OP_STORE_ENT	834	9019	0
 * OP_IFNOT	9019	35	0
 * OP_LOAD_F	9019	608	9034
 * OP_LOAD_F	28	608	9035
 * OP_EQ_F	9034	9035	9036
 * OP_IFNOT	9036	28	0
 * OP_CALL0	1046	0	0
 * OP_STORE_F	1	9020	0
 * OP_EQ_F	9020	276	9037
 * OP_IFNOT	9037	4	0
 * OP_STORE_V	9019	4	0
 * OP_CALL1	1100	0	0
 * OP_GOTO	21	0	0
 * OP_ADDRESS	9019	608	9038
 * OP_STOREP_F	9020	9038	0
 * OP_LOAD_F	9019	608	9039
 * OP_STORE_V	9039	4	0
 * OP_CALL1	1048	0	0
 * OP_LOAD_F	9019	608	9040
 * OP_STORE_V	9040	4	0
 * OP_LOAD_S	9019	180	9041
 * OP_STORE_V	9041	7	0
 * OP_CALL2	1050	0	0
 * OP_LOAD_F	9019	608	9042
 * OP_STORE_V	9042	4	0
 * OP_LOAD_F	9019	153	9043
 * OP_STORE_V	9043	7	0
 * OP_CALL2	1051	0	0
 * OP_LOAD_F	9019	608	9044
 * OP_STORE_V	9044	4	0
 * OP_LOAD_F	9019	610	9045
 * OP_STORE_V	9045	7	0
 * OP_CALL2	1052	0	0
 * OP_LOAD_ENT	9019	620	9046
 * OP_STORE_ENT	9046	9019	0
 * OP_GOTO	-34	0	0
 * OP_LOAD_F	28	608	9047
 * OP_STORE_V	9047	4	0
 * OP_LOAD_S	28	180	9048
 * OP_STORE_V	9048	7	0
 * OP_CALL2	1050	0	0
 * OP_LOAD_F	28	608	9049
 * OP_STORE_V	9049	4	0
 * OP_STORE_V	213	7	0
 * OP_CALL2	1051	0	0
 * OP_LOAD_F	28	608	9050
 * OP_STORE_V	9050	4	0
 * OP_CALL1	1048	0	0
 * OP_ADDRESS	28	173	9051
 * OP_STOREP_F	2035	9051	0
 * OP_LOAD_F	28	608	9052
 * OP_EQ_F	9052	213	9053
 * OP_IFNOT	9053	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1209	0	0
 * OP_NOT_F	816	0	9054
 * OP_OR	37	9054	9055
 * OP_IFNOT	9055	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1062	0	0
 * OP_LOAD_S	28	180	9056
 * OP_EQ_S	9056	9057	9058
 * OP_LOAD_S	28	180	9059
 * OP_EQ_S	9059	3002	9060
 * OP_OR	9058	9060	9061
 * OP_IFNOT	9061	4	0
 * OP_ADDRESS	28	173	9062
 * OP_STOREP_F	738	9062	0
 * OP_GOTO	6	0	0
 * OP_LOAD_S	28	180	9063
 * OP_STORE_V	9063	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9064	4	0
 * OP_CALL1	472	0	0
 * OP_BITAND	821	767	9065
 * OP_IFNOT	9065	3	0
 * OP_ADDRESS	28	538	9066
 * OP_STOREP_F	214	9066	0
 * OP_IFNOT	8213	2	0
 * OP_CALL0	8271	0	0
 * OP_DONE	0	0	0
 */

void () ClientConnect = {

   local entity globaldef2966;
   local float globaldef2967;

   self.globaldef592 = CONTENT_EMPTY;
   self.globaldef591 = (self.globaldef161 - TRUE);
   self.globaldef593 = ((FALSE * FL_INWATER) + self.globaldef162);
   self.globaldef555 = FALSE;
   if ( globaldef816 ) {

      globaldef816.globaldef604 = self;

   }
   self.globaldef603 = globaldef816;
   self.globaldef604 = world;
   globaldef816 = self;
   if ( globaldef985 (self.globaldef591) ) {

      globaldef2966 = globaldef817;
      while ( globaldef2966 ) {

         if ( (globaldef2966.globaldef591 == self.globaldef591) ) {

            globaldef2967 = globaldef984 ();
            if ( (globaldef2967 == CONTENT_EMPTY) ) {

               globaldef1038 (globaldef2966);

            } else {

               globaldef2966.globaldef591 = globaldef2967;
               globaldef986 (globaldef2966.globaldef591);
               globaldef988 (globaldef2966.globaldef591,globaldef2966.globaldef158);
               globaldef989 (globaldef2966.globaldef591,globaldef2966.globaldef131);
               globaldef990 (globaldef2966.globaldef591,globaldef2966.globaldef593);

            }

         }
         globaldef2966 = globaldef2966.globaldef603;

      }
      globaldef988 (self.globaldef591,self.globaldef158);
      globaldef989 (self.globaldef591,FALSE);

   }
   globaldef986 (self.globaldef591);
   self.globaldef151 = globaldef1341;
   if ( (self.globaldef591 == FALSE) ) {

      globaldef1147 (self);

   }
   if ( (teamplay || !globaldef799) ) {

      globaldef1000 (self);

   }
   if ( ((self.globaldef158 == globaldef2968) || (self.globaldef158 == "")) ) {

      self.globaldef151 = globaldef721;

   } else {

      globaldef455 (self.globaldef158);
      globaldef455 (globaldef2969);

   }
   if ( (globaldef804 & globaldef750) ) {

      self.globaldef521 = TRUE;

   }
   if ( globaldef2863 ) {

      globaldef2873 ();

   }

};
string globaldef2968 /* = "CamClient" */;
string globaldef2969 /* = " entered the game\n" */;

// function ClientDisconnect
// function number 405 begins at statement 12773
/*
 * OP_STORE_V	28	4	0
 * OP_CALL1	7075	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1067	0	0
 * OP_LOAD_F	28	608	9068
 * OP_STORE_V	9068	4	0
 * OP_STORE_V	3002	7	0
 * OP_CALL2	1050	0	0
 * OP_LOAD_F	28	608	9069
 * OP_STORE_V	9069	4	0
 * OP_CALL1	1049	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	1210	0	0
 * OP_LOAD_ENT	28	620	9070
 * OP_IFNOT	9070	5	0
 * OP_LOAD_ENT	28	620	9071
 * OP_ADDRESS	9071	621	9072
 * OP_LOAD_ENT	28	621	9073
 * OP_STOREP_ENT	9073	9072	0
 * OP_LOAD_ENT	28	621	9074
 * OP_IFNOT	9074	6	0
 * OP_LOAD_ENT	28	621	9075
 * OP_ADDRESS	9075	620	9076
 * OP_LOAD_ENT	28	620	9077
 * OP_STOREP_ENT	9077	9076	0
 * OP_GOTO	3	0	0
 * OP_LOAD_ENT	28	620	9078
 * OP_STORE_ENT	9078	833	0
 * OP_LOAD_F	28	575	9079
 * OP_BITAND	9079	703	9080
 * OP_IFNOT	9080	3	0
 * OP_SUB_F	802	214	9081
 * OP_STORE_F	9081	802	0
 * OP_IFNOT	347	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	165	9083
 * OP_EQ_F	9083	246	9084
 * OP_IFNOT	9084	3	0
 * OP_STORE_F	213	9082	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	214	9082	0
 * OP_CALL0	2932	0	0
 * OP_IFNOT	1	25	0
 * OP_LOAD_S	28	606	9085
 * OP_STORE_V	9085	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	28	180	9086
 * OP_STORE_V	9086	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9087	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_F	28	153	9088
 * OP_STORE_V	9088	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9089	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	6662	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	129	9090
 * OP_STOREP_S	9091	9090	0
 * OP_CALL0	8357	0	0
 * OP_BITAND	821	767	9092
 * OP_IFNOT	9092	4	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	9082	7	0
 * OP_CALL2	1215	0	0
 * OP_DONE	0	0	0
 */

void () ClientDisconnect = {

   local float globaldef2970;
   /* Warning: No local name with offset 9068 */
   /* Warning: No local name with offset 9069 */
   /* Warning: No local name with offset 9070 */
   /* Warning: No local name with offset 9071 */
   /* Warning: No local name with offset 9072 */
   /* Warning: No local name with offset 9073 */
   /* Warning: No local name with offset 9074 */
   /* Warning: No local name with offset 9075 */
   /* Warning: No local name with offset 9076 */
   /* Warning: No local name with offset 9077 */
   /* Warning: No local name with offset 9078 */
   /* Warning: No local name with offset 9079 */
   /* Warning: No local name with offset 9080 */
   /* Warning: No local name with offset 9081 */
   local float globaldef2971;

   globaldef2572 (self);
   globaldef1005 (self);
   globaldef988 (self.globaldef591,"");
   globaldef987 (self.globaldef591);
   globaldef1148 (self);
   if ( self.globaldef603 ) {

      self.globaldef603.globaldef604 = self.globaldef604;

   }
   if ( self.globaldef604 ) {

      self.globaldef604.globaldef603 = self.globaldef603;

   } else {

      globaldef816 = self.globaldef603;

   }
   if ( (self.globaldef558 & globaldef686) ) {

      globaldef785 = (globaldef785 - TRUE);

   }
   if ( gameover ) {

      return ;

   }
   if ( (self.globaldef143 == DEAD_NO) ) {

      globaldef2971 = FALSE;

   } else {

      globaldef2971 = TRUE;

   }
   if ( globaldef1452 () ) {

      globaldef455 (self.globaldef589);
      globaldef455 (self.globaldef158);
      globaldef455 (globaldef2972);
      globaldef455 (globaldef457 (self.globaldef131));
      globaldef455 (globaldef2973);
      sound (self,CHAN_BODY,globaldef2407,TRUE,ATTN_NONE);
      self.classname = globaldef2974;
      globaldef2890 ();

   }
   if ( (globaldef804 & globaldef750) ) {

      globaldef1153 (self,globaldef2971);

   }

};
string globaldef2972 /* = " left the game with " */;
string globaldef2973 /* = " frags\n" */;
string globaldef2974 /* = "nobody" */;

// function ClientObituary
// function number 406 begins at statement 12846
/*
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	9095	0
 * OP_LOAD_S	9093	129	9101
 * OP_EQ_S	9101	1236	9102
 * OP_LOAD_S	9093	129	9103
 * OP_EQ_S	9103	1241	9104
 * OP_OR	9102	9104	9105
 * OP_IFNOT	9105	586	0
 * OP_BITAND	821	767	9106
 * OP_IFNOT	9106	143	0
 * OP_LOAD_S	542	129	9107
 * OP_EQ_S	9107	1236	9108
 * OP_LOAD_S	542	129	9109
 * OP_EQ_S	9109	1241	9110
 * OP_OR	9108	9110	9111
 * OP_IFNOT	9111	8	0
 * OP_ADDRESS	542	163	9112
 * OP_STOREP_F	250	9112	0
 * OP_STORE_V	542	4	0
 * OP_STORE_V	9113	7	0
 * OP_CALL2	839	0	0
 * OP_ADDRESS	542	181	9114
 * OP_STOREP_ENT	30	9114	0
 * OP_LOAD_S	541	129	9115
 * OP_EQ_S	9115	1236	9116
 * OP_LOAD_S	541	129	9117
 * OP_EQ_S	9117	1241	9118
 * OP_OR	9116	9118	9119
 * OP_IFNOT	9119	8	0
 * OP_ADDRESS	541	163	9120
 * OP_STOREP_F	250	9120	0
 * OP_STORE_V	541	4	0
 * OP_STORE_V	9113	7	0
 * OP_CALL2	839	0	0
 * OP_ADDRESS	541	181	9121
 * OP_STOREP_ENT	30	9121	0
 * OP_NE_E	9094	9093	9122
 * OP_IFNOT	9122	5	0
 * OP_LOAD_F	9094	152	9123
 * OP_STORE_F	9123	9098	0
 * OP_LOAD_F	9094	188	9124
 * OP_STORE_F	9124	9099	0
 * OP_EQ_E	9093	541	9125
 * OP_IFNOT	9125	36	0
 * OP_ADDRESS	541	536	9126
 * OP_LOAD_F	541	536	9127
 * OP_ADD_F	9127	214	9128
 * OP_STOREP_F	9128	9126	0
 * OP_ADDRESS	542	535	9129
 * OP_LOAD_F	542	535	9130
 * OP_ADD_F	9130	214	9131
 * OP_STOREP_F	9131	9129	0
 * OP_STORE_V	9132	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	541	180	9133
 * OP_STORE_V	9133	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9134	4	0
 * OP_CALL1	472	0	0
 * OP_EQ_E	9093	9094	9135
 * OP_IFNOT	9135	7	0
 * OP_STORE_V	9136	4	0
 * OP_CALL1	472	0	0
 * OP_ADDRESS	9094	153	9137
 * OP_LOAD_F	9094	153	9138
 * OP_SUB_F	9138	214	9139
 * OP_STOREP_F	9139	9137	0
 * OP_STORE_ENT	542	541	0
 * OP_LOAD_S	541	129	9140
 * OP_EQ_S	9140	1236	9141
 * OP_IFNOT	9141	8	0
 * OP_STORE_V	8080	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	541	180	9142
 * OP_STORE_V	9142	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	472	0	0
 * OP_CALL0	1218	0	0
 * OP_EQ_E	9093	542	9143
 * OP_IFNOT	9143	25	0
 * OP_ADDRESS	542	536	9144
 * OP_LOAD_F	542	536	9145
 * OP_ADD_F	9145	214	9146
 * OP_STOREP_F	9146	9144	0
 * OP_ADDRESS	541	535	9147
 * OP_LOAD_F	541	535	9148
 * OP_ADD_F	9148	214	9149
 * OP_STOREP_F	9149	9147	0
 * OP_STORE_V	9150	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	542	180	9151
 * OP_STORE_V	9151	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9152	4	0
 * OP_CALL1	472	0	0
 * OP_EQ_E	9093	9094	9153
 * OP_IFNOT	9153	7	0
 * OP_STORE_V	9154	4	0
 * OP_CALL1	472	0	0
 * OP_ADDRESS	9094	153	9155
 * OP_LOAD_F	9094	153	9156
 * OP_SUB_F	9156	214	9157
 * OP_STOREP_F	9157	9155	0
 * OP_CALL0	1218	0	0
 * OP_LOAD_S	9094	129	9158
 * OP_EQ_S	9158	1236	9159
 * OP_LOAD_S	9094	129	9160
 * OP_EQ_S	9160	1241	9161
 * OP_OR	9159	9161	9162
 * OP_IFNOT	9162	41	0
 * OP_NE_E	9094	9093	9163
 * OP_IFNOT	9163	39	0
 * OP_EQ_F	9098	1997	9164
 * OP_EQ_F	9099	2044	9165
 * OP_AND	9164	9165	9166
 * OP_IFNOT	9166	6	0
 * OP_STORE_V	9167	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9168	4	0
 * OP_CALL1	1219	0	0
 * OP_GOTO	26	0	0
 * OP_LOAD_S	9094	180	9169
 * OP_STORE_V	9169	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9170	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9098	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	9100	0
 * OP_STORE_V	9100	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9171	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9099	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	9100	0
 * OP_STORE_V	9100	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9172	4	0
 * OP_CALL1	472	0	0
 * OP_GE	9098	9173	9174
 * OP_GE	9099	1997	9175
 * OP_AND	9174	9175	9176
 * OP_IFNOT	9176	3	0
 * OP_STORE_V	9177	4	0
 * OP_CALL1	1219	0	0
 * OP_ADDRESS	9094	153	9178
 * OP_LOAD_F	9094	153	9179
 * OP_ADD_F	9179	214	9180
 * OP_STOREP_F	9180	9178	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9181
 * OP_EQ_S	9181	9182	9183
 * OP_IFNOT	9183	26	0
 * OP_LOAD_S	9093	180	9184
 * OP_STORE_V	9184	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9185	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_ENT	9094	201	9186
 * OP_LOAD_S	9186	180	9187
 * OP_STORE_V	9187	4	0
 * OP_CALL1	472	0	0
 * OP_IFNOT	37	7	0
 * OP_STORE_V	9188	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_ENT	9094	201	9189
 * OP_LOAD_S	9189	606	9190
 * OP_STORE_V	9190	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_ENT	9094	201	9191
 * OP_ADDRESS	9191	153	9192
 * OP_LOAD_ENT	9094	201	9193
 * OP_LOAD_F	9193	153	9194
 * OP_ADD_F	9194	214	9195
 * OP_STOREP_F	9195	9192	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9196
 * OP_EQ_S	9196	9197	9198
 * OP_IFNOT	9198	19	0
 * OP_STORE_V	9199	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9093	180	9200
 * OP_STORE_V	9200	4	0
 * OP_CALL1	472	0	0
 * OP_IFNOT	37	6	0
 * OP_STORE_V	9188	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9093	606	9201
 * OP_STORE_V	9201	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9202	4	0
 * OP_CALL1	472	0	0
 * OP_ADDRESS	9093	153	9203
 * OP_LOAD_F	9093	153	9204
 * OP_SUB_F	9204	214	9205
 * OP_STOREP_F	9205	9203	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9206
 * OP_EQ_S	9206	1236	9207
 * OP_LOAD_S	9094	129	9208
 * OP_EQ_S	9208	1241	9209
 * OP_OR	9207	9209	9210
 * OP_IFNOT	9210	208	0
 * OP_EQ_E	9093	9094	9211
 * OP_IFNOT	9211	31	0
 * OP_ADDRESS	9094	153	9212
 * OP_LOAD_F	9094	153	9213
 * OP_SUB_F	9213	214	9214
 * OP_STOREP_F	9214	9212	0
 * OP_LOAD_S	9093	180	9215
 * OP_STORE_V	9215	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_F	9093	154	9216
 * OP_EQ_F	9216	220	9217
 * OP_LOAD_F	9093	189	9218
 * OP_GT	9218	214	9219
 * OP_AND	9217	9219	9220
 * OP_IFNOT	9220	4	0
 * OP_STORE_V	9221	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	9093	154	9222
 * OP_EQ_F	9222	218	9223
 * OP_IFNOT	9223	4	0
 * OP_STORE_V	9224	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	7	0	0
 * OP_IFNOT	9095	4	0
 * OP_STORE_V	9225	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	9226	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	174	0	0
 * OP_LOAD_F	9094	607	9227
 * OP_LOAD_F	9093	607	9228
 * OP_EQ_F	9227	9228	9229
 * OP_AND	37	9229	9230
 * OP_IFNOT	9230	106	0
 * OP_ADDRESS	9094	153	9232
 * OP_LOAD_F	9094	153	9233
 * OP_SUB_F	9233	214	9234
 * OP_STOREP_F	9234	9232	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	9231	0
 * OP_LOAD_F	9093	152	9235
 * OP_LT	9235	9236	9237
 * OP_IFNOT	9237	9	0
 * OP_LT	9231	539	9238
 * OP_IFNOT	9238	4	0
 * OP_STORE_S	9239	9096	0
 * OP_STORE_S	9240	9097	0
 * OP_GOTO	3	0	0
 * OP_STORE_S	9241	9096	0
 * OP_STORE_S	9242	9097	0
 * OP_GOTO	78	0	0
 * OP_LOAD_F	9094	154	9243
 * OP_STORE_F	9243	9095	0
 * OP_EQ_F	9095	253	9244
 * OP_IFNOT	9244	9	0
 * OP_LT	9231	539	9245
 * OP_IFNOT	9245	4	0
 * OP_STORE_S	9246	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	3	0	0
 * OP_STORE_S	9247	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	66	0	0
 * OP_EQ_F	9095	254	9248
 * OP_STORE_F	255	9095	0
 * OP_OR	9248	255	9249
 * OP_IFNOT	9249	9	0
 * OP_LT	9231	539	9250
 * OP_IFNOT	9250	4	0
 * OP_STORE_S	9251	9096	0
 * OP_STORE_S	9252	9097	0
 * OP_GOTO	3	0	0
 * OP_STORE_S	9253	9096	0
 * OP_STORE_S	9254	9097	0
 * OP_GOTO	54	0	0
 * OP_EQ_F	9095	256	9255
 * OP_EQ_F	9095	257	9256
 * OP_OR	9255	9256	9257
 * OP_IFNOT	9257	4	0
 * OP_STORE_S	9258	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	47	0	0
 * OP_EQ_F	9095	258	9259
 * OP_IFNOT	9259	4	0
 * OP_STORE_S	9260	9096	0
 * OP_STORE_S	9261	9097	0
 * OP_GOTO	42	0	0
 * OP_EQ_F	9095	259	9262
 * OP_IFNOT	9262	31	0
 * OP_LT	9231	9263	9264
 * OP_IFNOT	9264	4	0
 * OP_STORE_S	9265	9096	0
 * OP_STORE_S	9266	9097	0
 * OP_GOTO	25	0	0
 * OP_LT	9231	8380	9267
 * OP_IFNOT	9267	4	0
 * OP_STORE_S	9268	9096	0
 * OP_STORE_S	9269	9097	0
 * OP_GOTO	20	0	0
 * OP_LT	9231	539	9270
 * OP_IFNOT	9270	4	0
 * OP_STORE_S	9271	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	15	0	0
 * OP_LT	9231	8382	9272
 * OP_IFNOT	9272	4	0
 * OP_STORE_S	9273	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	10	0	0
 * OP_LT	9231	9274	9275
 * OP_IFNOT	9275	4	0
 * OP_STORE_S	9276	9096	0
 * OP_STORE_S	9277	9097	0
 * OP_GOTO	5	0	0
 * OP_LT	9231	214	9278
 * OP_IFNOT	9278	3	0
 * OP_STORE_S	9279	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	9095	260	9280
 * OP_IFNOT	9280	8	0
 * OP_LT	9231	539	9281
 * OP_IFNOT	9281	4	0
 * OP_STORE_S	9282	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_GOTO	3	0	0
 * OP_STORE_S	9283	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_LOAD_S	9094	180	9284
 * OP_STORE_V	9284	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9096	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9093	180	9285
 * OP_STORE_V	9285	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9097	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	64	0	0
 * OP_ADDRESS	9094	153	9286
 * OP_LOAD_F	9094	153	9287
 * OP_ADD_F	9287	214	9288
 * OP_STOREP_F	9288	9286	0
 * OP_LOAD_F	9094	154	9289
 * OP_STORE_F	9289	9095	0
 * OP_EQ_F	9095	253	9290
 * OP_IFNOT	9290	3	0
 * OP_STORE_S	9291	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_EQ_F	9095	254	9292
 * OP_IFNOT	9292	3	0
 * OP_STORE_S	9293	9096	0
 * OP_STORE_S	9294	9097	0
 * OP_EQ_F	9095	255	9295
 * OP_IFNOT	9295	3	0
 * OP_STORE_S	9296	9096	0
 * OP_STORE_S	9297	9097	0
 * OP_EQ_F	9095	256	9298
 * OP_IFNOT	9298	3	0
 * OP_STORE_S	9299	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_EQ_F	9095	257	9300
 * OP_IFNOT	9300	3	0
 * OP_STORE_S	9301	9096	0
 * OP_STORE_S	2127	9097	0
 * OP_EQ_F	9095	258	9302
 * OP_IFNOT	9302	8	0
 * OP_STORE_S	9303	9096	0
 * OP_STORE_S	9304	9097	0
 * OP_LOAD_F	9093	152	9305
 * OP_LT	9305	9236	9306
 * OP_IFNOT	9306	3	0
 * OP_STORE_S	9307	9096	0
 * OP_STORE_S	9308	9097	0
 * OP_EQ_F	9095	259	9309
 * OP_IFNOT	9309	8	0
 * OP_STORE_S	9310	9096	0
 * OP_STORE_S	9311	9097	0
 * OP_LOAD_F	9093	152	9312
 * OP_LT	9312	9236	9313
 * OP_IFNOT	9313	3	0
 * OP_STORE_S	9314	9096	0
 * OP_STORE_S	9311	9097	0
 * OP_EQ_F	9095	260	9315
 * OP_IFNOT	9315	8	0
 * OP_STORE_S	9316	9096	0
 * OP_LOAD_F	9094	189	9317
 * OP_GT	9317	214	9318
 * OP_IFNOT	9318	3	0
 * OP_STORE_S	9319	9097	0
 * OP_GOTO	2	0	0
 * OP_STORE_S	9320	9097	0
 * OP_LOAD_S	9093	180	9321
 * OP_STORE_V	9321	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9096	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	180	9322
 * OP_STORE_V	9322	4	0
 * OP_CALL1	472	0	0
 * OP_STORE_V	9097	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	180	0	0
 * OP_ADDRESS	9093	153	9323
 * OP_LOAD_F	9093	153	9324
 * OP_SUB_F	9324	214	9325
 * OP_STOREP_F	9325	9323	0
 * OP_LOAD_F	9093	190	9326
 * OP_STORE_F	9326	9095	0
 * OP_LOAD_S	9093	180	9327
 * OP_STORE_V	9327	4	0
 * OP_CALL1	472	0	0
 * OP_EQ_F	9095	278	9328
 * OP_IFNOT	9328	11	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	9329
 * OP_IFNOT	9329	4	0
 * OP_STORE_V	9330	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	9331	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	30	0	0
 * OP_EQ_F	9095	279	9332
 * OP_IFNOT	9332	11	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	9333
 * OP_IFNOT	9333	4	0
 * OP_STORE_V	9334	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	9335	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	18	0	0
 * OP_EQ_F	9095	280	9336
 * OP_IFNOT	9336	16	0
 * OP_LOAD_F	9093	152	9337
 * OP_LT	9337	9338	9339
 * OP_IFNOT	9339	4	0
 * OP_STORE_V	9340	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	9341
 * OP_IFNOT	9341	4	0
 * OP_STORE_V	9342	4	0
 * OP_CALL1	472	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	9343	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	9094	182	9344
 * OP_BITAND	9344	219	9345
 * OP_IFNOT	9345	82	0
 * OP_LOAD_S	9094	129	9346
 * OP_EQ_S	9346	3704	9347
 * OP_IFNOT	9347	3	0
 * OP_STORE_V	9348	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9349
 * OP_EQ_S	9349	3665	9350
 * OP_IFNOT	9350	3	0
 * OP_STORE_V	9351	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9352
 * OP_EQ_S	9352	3677	9353
 * OP_IFNOT	9353	3	0
 * OP_STORE_V	9354	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9355
 * OP_EQ_S	9355	3800	9356
 * OP_IFNOT	9356	3	0
 * OP_STORE_V	9357	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9358
 * OP_EQ_S	9358	3693	9359
 * OP_IFNOT	9359	3	0
 * OP_STORE_V	9360	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9361
 * OP_EQ_S	9361	9362	9363
 * OP_IFNOT	9363	3	0
 * OP_STORE_V	9364	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9365
 * OP_EQ_S	9365	3681	9366
 * OP_IFNOT	9366	3	0
 * OP_STORE_V	9367	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9368
 * OP_EQ_S	9368	3254	9369
 * OP_IFNOT	9369	3	0
 * OP_STORE_V	9370	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9371
 * OP_EQ_S	9371	3532	9372
 * OP_IFNOT	9372	3	0
 * OP_STORE_V	9373	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9374
 * OP_EQ_S	9374	9375	9376
 * OP_IFNOT	9376	3	0
 * OP_STORE_V	9377	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9378
 * OP_EQ_S	9378	3708	9379
 * OP_IFNOT	9379	3	0
 * OP_STORE_V	9380	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9381
 * OP_EQ_S	9381	3661	9382
 * OP_IFNOT	9382	3	0
 * OP_STORE_V	9383	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9384
 * OP_EQ_S	9384	3685	9385
 * OP_IFNOT	9385	3	0
 * OP_STORE_V	9386	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9387
 * OP_EQ_S	9387	3689	9388
 * OP_IFNOT	9388	3	0
 * OP_STORE_V	9389	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9390
 * OP_EQ_S	9390	3669	9391
 * OP_IFNOT	9391	3	0
 * OP_STORE_V	9392	4	0
 * OP_CALL1	472	0	0
 * OP_LOAD_S	9094	129	9393
 * OP_EQ_S	9393	3673	9394
 * OP_IFNOT	9394	3	0
 * OP_STORE_V	9395	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9396
 * OP_EQ_S	9396	9397	9398
 * OP_IFNOT	9398	4	0
 * OP_STORE_V	9399	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	9094	104	9400
 * OP_EQ_F	9400	241	9401
 * OP_NE_E	9094	30	9402
 * OP_AND	9401	9402	9403
 * OP_IFNOT	9403	4	0
 * OP_STORE_V	9404	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9093	398	9405
 * OP_EQ_S	9405	8996	9406
 * OP_IFNOT	9406	6	0
 * OP_ADDRESS	9093	398	9407
 * OP_STOREP_S	3002	9407	0
 * OP_STORE_V	9408	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9409
 * OP_EQ_S	9409	9410	9411
 * OP_LOAD_S	9094	129	9412
 * OP_EQ_S	9412	9413	9414
 * OP_OR	9411	9414	9415
 * OP_IFNOT	9415	4	0
 * OP_STORE_V	9416	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9417
 * OP_EQ_S	9417	9418	9419
 * OP_IFNOT	9419	4	0
 * OP_STORE_V	9420	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	9094	129	9421
 * OP_EQ_S	9421	8550	9422
 * OP_IFNOT	9422	4	0
 * OP_STORE_V	9423	4	0
 * OP_CALL1	472	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	9424	4	0
 * OP_CALL1	472	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef2975, entity globaldef2976) ClientObituary = {

   local float globaldef2977;
   local string globaldef2978;
   local string globaldef2979;
   local float globaldef2980;
   local float globaldef2981;
   local string globaldef2982;
   /* Warning: No local name with offset 9101 */
   /* Warning: No local name with offset 9102 */
   /* Warning: No local name with offset 9103 */
   /* Warning: No local name with offset 9104 */
   /* Warning: No local name with offset 9105 */
   /* Warning: No local name with offset 9106 */
   /* Warning: No local name with offset 9107 */
   /* Warning: No local name with offset 9108 */
   /* Warning: No local name with offset 9109 */
   /* Warning: No local name with offset 9110 */
   /* Warning: No local name with offset 9111 */
   /* Warning: No local name with offset 9112 */
   local string globaldef2983;
   /* Warning: No local name with offset 9114 */
   /* Warning: No local name with offset 9115 */
   /* Warning: No local name with offset 9116 */
   /* Warning: No local name with offset 9117 */
   /* Warning: No local name with offset 9118 */
   /* Warning: No local name with offset 9119 */
   /* Warning: No local name with offset 9120 */
   /* Warning: No local name with offset 9121 */
   /* Warning: No local name with offset 9122 */
   /* Warning: No local name with offset 9123 */
   /* Warning: No local name with offset 9124 */
   /* Warning: No local name with offset 9125 */
   /* Warning: No local name with offset 9126 */
   /* Warning: No local name with offset 9127 */
   /* Warning: No local name with offset 9128 */
   /* Warning: No local name with offset 9129 */
   /* Warning: No local name with offset 9130 */
   /* Warning: No local name with offset 9131 */
   local string globaldef2984;
   /* Warning: No local name with offset 9133 */
   local string globaldef2985;
   /* Warning: No local name with offset 9135 */
   local string globaldef2986;
   /* Warning: No local name with offset 9137 */
   /* Warning: No local name with offset 9138 */
   /* Warning: No local name with offset 9139 */
   /* Warning: No local name with offset 9140 */
   /* Warning: No local name with offset 9141 */
   /* Warning: No local name with offset 9142 */
   /* Warning: No local name with offset 9143 */
   /* Warning: No local name with offset 9144 */
   /* Warning: No local name with offset 9145 */
   /* Warning: No local name with offset 9146 */
   /* Warning: No local name with offset 9147 */
   /* Warning: No local name with offset 9148 */
   /* Warning: No local name with offset 9149 */
   local string globaldef2987;
   /* Warning: No local name with offset 9151 */
   local string globaldef2988;
   /* Warning: No local name with offset 9153 */
   local string globaldef2989;
   /* Warning: No local name with offset 9155 */
   /* Warning: No local name with offset 9156 */
   /* Warning: No local name with offset 9157 */
   /* Warning: No local name with offset 9158 */
   /* Warning: No local name with offset 9159 */
   /* Warning: No local name with offset 9160 */
   /* Warning: No local name with offset 9161 */
   /* Warning: No local name with offset 9162 */
   /* Warning: No local name with offset 9163 */
   /* Warning: No local name with offset 9164 */
   /* Warning: No local name with offset 9165 */
   /* Warning: No local name with offset 9166 */
   local string globaldef2990;
   local string globaldef2991;
   /* Warning: No local name with offset 9169 */
   local string globaldef2992;
   local string globaldef2993;
   local string globaldef2994;
   local float globaldef2995;
   /* Warning: No local name with offset 9174 */
   /* Warning: No local name with offset 9175 */
   /* Warning: No local name with offset 9176 */
   local string globaldef2996;
   /* Warning: No local name with offset 9178 */
   /* Warning: No local name with offset 9179 */
   /* Warning: No local name with offset 9180 */
   /* Warning: No local name with offset 9181 */
   local string globaldef2997;
   /* Warning: No local name with offset 9183 */
   /* Warning: No local name with offset 9184 */
   local string globaldef2998;
   /* Warning: No local name with offset 9186 */
   /* Warning: No local name with offset 9187 */
   local string globaldef2999;
   /* Warning: No local name with offset 9189 */
   /* Warning: No local name with offset 9190 */
   /* Warning: No local name with offset 9191 */
   /* Warning: No local name with offset 9192 */
   /* Warning: No local name with offset 9193 */
   /* Warning: No local name with offset 9194 */
   /* Warning: No local name with offset 9195 */
   /* Warning: No local name with offset 9196 */
   local string globaldef3000;
   /* Warning: No local name with offset 9198 */
   local string globaldef3001;
   /* Warning: No local name with offset 9200 */
   /* Warning: No local name with offset 9201 */
   local string globaldef3002;
   /* Warning: No local name with offset 9203 */
   /* Warning: No local name with offset 9204 */
   /* Warning: No local name with offset 9205 */
   /* Warning: No local name with offset 9206 */
   /* Warning: No local name with offset 9207 */
   /* Warning: No local name with offset 9208 */
   /* Warning: No local name with offset 9209 */
   /* Warning: No local name with offset 9210 */
   /* Warning: No local name with offset 9211 */
   /* Warning: No local name with offset 9212 */
   /* Warning: No local name with offset 9213 */
   /* Warning: No local name with offset 9214 */
   /* Warning: No local name with offset 9215 */
   /* Warning: No local name with offset 9216 */
   /* Warning: No local name with offset 9217 */
   /* Warning: No local name with offset 9218 */
   /* Warning: No local name with offset 9219 */
   /* Warning: No local name with offset 9220 */
   local string globaldef3003;
   /* Warning: No local name with offset 9222 */
   /* Warning: No local name with offset 9223 */
   local string globaldef3004;
   local string globaldef3005;
   local string globaldef3006;
   /* Warning: No local name with offset 9227 */
   /* Warning: No local name with offset 9228 */
   /* Warning: No local name with offset 9229 */
   /* Warning: No local name with offset 9230 */
   local float globaldef3007;

   globaldef2977 = globaldef440 ();
   if ( ((globaldef2975.classname == "player") || (globaldef2975.classname == globaldef1171)) ) {

      if ( (globaldef804 & globaldef750) ) {

         if ( ((globaldef525.classname == "player") || (globaldef525.classname == globaldef1171)) ) {

            globaldef525.globaldef141 = DAMAGE_NO;
            globaldef822 (globaldef525,globaldef2983);
            globaldef525.enemy = world;

         }
         if ( ((globaldef524.classname == "player") || (globaldef524.classname == globaldef1171)) ) {

            globaldef524.globaldef141 = DAMAGE_NO;
            globaldef822 (globaldef524,globaldef2983);
            globaldef524.enemy = world;

         }
         if ( (globaldef2976 != globaldef2975) ) {

            globaldef2980 = globaldef2976.globaldef130;
            globaldef2981 = globaldef2976.globaldef166;

         }
         if ( (globaldef2975 == globaldef524) ) {

            globaldef524.globaldef519 = (globaldef524.globaldef519 + TRUE);
            globaldef525.globaldef518 = (globaldef525.globaldef518 + TRUE);
            globaldef455 (globaldef2984);
            globaldef455 (globaldef524.globaldef158);
            globaldef455 (globaldef2985);
            if ( (globaldef2975 == globaldef2976) ) {

               globaldef455 (globaldef2986);
               globaldef2976.globaldef131 = (globaldef2976.globaldef131 - TRUE);

            }
            globaldef524 = globaldef525;
            if ( (globaldef524.classname == "player") ) {

               globaldef455 (globaldef2824);
               globaldef455 (globaldef524.globaldef158);
               globaldef455 (globaldef1354);

            }
            globaldef1156 ();

         }
         if ( (globaldef2975 == globaldef525) ) {

            globaldef525.globaldef519 = (globaldef525.globaldef519 + TRUE);
            globaldef524.globaldef518 = (globaldef524.globaldef518 + TRUE);
            globaldef455 (globaldef2987);
            globaldef455 (globaldef525.globaldef158);
            globaldef455 (globaldef2988);
            if ( (globaldef2975 == globaldef2976) ) {

               globaldef455 (globaldef2989);
               globaldef2976.globaldef131 = (globaldef2976.globaldef131 - TRUE);

            }
            globaldef1156 ();

         }
         if ( ((globaldef2976.classname == "player") || (globaldef2976.classname == globaldef1171)) ) {

            if ( (globaldef2976 != globaldef2975) ) {

               if ( ((globaldef2980 == globaldef1335) && (globaldef2981 == globaldef1343)) ) {

                  globaldef455 (globaldef2990);
                  globaldef1157 (globaldef2991);

               } else {

                  globaldef455 (globaldef2976.globaldef158);
                  globaldef455 (globaldef2992);
                  globaldef2982 = globaldef457 (globaldef2980);
                  globaldef455 (globaldef2982);
                  globaldef455 (globaldef2993);
                  globaldef2982 = globaldef457 (globaldef2981);
                  globaldef455 (globaldef2982);
                  globaldef455 (globaldef2994);
                  if ( ((globaldef2980 >= globaldef2995) && (globaldef2981 >= globaldef1335)) ) {

                     globaldef1157 (globaldef2996);

                  }

               }
               globaldef2976.globaldef131 = (globaldef2976.globaldef131 + TRUE);

            }

         }
         return ;

      }
      if ( (globaldef2976.classname == globaldef2997) ) {

         globaldef455 (globaldef2975.globaldef158);
         globaldef455 (globaldef2998);
         globaldef455 (globaldef2976.globaldef179.globaldef158);
         if ( teamplay ) {

            globaldef455 (globaldef2999);
            globaldef455 (globaldef2976.globaldef179.globaldef589);

         }
         globaldef455 (globaldef1354);
         globaldef2976.globaldef179.globaldef131 = (globaldef2976.globaldef179.globaldef131 + TRUE);
         return ;

      }
      if ( (globaldef2976.classname == globaldef3000) ) {

         globaldef455 (globaldef3001);
         globaldef455 (globaldef2975.globaldef158);
         if ( teamplay ) {

            globaldef455 (globaldef2999);
            globaldef455 (globaldef2975.globaldef589);

         }
         globaldef455 (globaldef3002);
         globaldef2975.globaldef131 = (globaldef2975.globaldef131 - TRUE);
         return ;

      }
      if ( ((globaldef2976.classname == "player") || (globaldef2976.classname == globaldef1171)) ) {

         if ( (globaldef2975 == globaldef2976) ) {

            globaldef2976.globaldef131 = (globaldef2976.globaldef131 - TRUE);
            globaldef455 (globaldef2975.globaldef158);
            if ( ((globaldef2975.globaldef132 == FL_GODMODE) && (globaldef2975.globaldef167 > TRUE)) ) {

               globaldef455 (globaldef3003);
               return ;

            }
            if ( (globaldef2975.globaldef132 == FL_INWATER) ) {

               globaldef455 (globaldef3004);

            } else {

               if ( globaldef2977 ) {

                  globaldef455 (globaldef3005);

               } else {

                  globaldef455 (globaldef3006);

               }

            }
            return ;

         } else {

            if ( (teamplay && (globaldef2976.globaldef590 == globaldef2975.globaldef590)) ) {

               globaldef2976.globaldef131 = (globaldef2976.globaldef131 - TRUE);
               globaldef3007 = globaldef440 ();
               if ( (globaldef2975.globaldef130 < globaldef3008) ) {

                  if ( (globaldef3007 < globaldef522) ) {

                     globaldef2978 = globaldef3009;
                     globaldef2979 = globaldef3010;

                  } else {

                     globaldef2978 = globaldef3011;
                     globaldef2979 = globaldef3012;

                  }

               } else {

                  globaldef2977 = globaldef2976.globaldef132;
                  if ( (globaldef2977 == IT_AXE) ) {

                     if ( (globaldef3007 < globaldef522) ) {

                        globaldef2978 = globaldef3013;
                        globaldef2979 = globaldef1354;

                     } else {

                        globaldef2978 = globaldef3014;
                        globaldef2979 = globaldef1354;

                     }

                  } else {

                     globaldef2977 = IT_SUPER_SHOTGUN;
                     if ( ((globaldef2977 == IT_SHOTGUN) || IT_SUPER_SHOTGUN) ) {

                        if ( (globaldef3007 < globaldef522) ) {

                           globaldef2978 = globaldef3015;
                           globaldef2979 = globaldef3016;

                        } else {

                           globaldef2978 = globaldef3017;
                           globaldef2979 = globaldef3018;

                        }

                     } else {

                        if ( ((globaldef2977 == IT_NAILGUN) || (globaldef2977 == IT_SUPER_NAILGUN)) ) {

                           globaldef2978 = globaldef3019;
                           globaldef2979 = globaldef1354;

                        } else {

                           if ( (globaldef2977 == IT_GRENADE_LAUNCHER) ) {

                              globaldef2978 = globaldef3020;
                              globaldef2979 = globaldef3021;

                           } else {

                              if ( (globaldef2977 == IT_ROCKET_LAUNCHER) ) {

                                 if ( (globaldef3007 < globaldef3022) ) {

                                    globaldef2978 = globaldef3023;
                                    globaldef2979 = globaldef3024;

                                 } else {

                                    if ( (globaldef3007 < globaldef2903) ) {

                                       globaldef2978 = globaldef3025;
                                       globaldef2979 = globaldef3026;

                                    } else {

                                       if ( (globaldef3007 < globaldef522) ) {

                                          globaldef2978 = globaldef3027;
                                          globaldef2979 = globaldef1354;

                                       } else {

                                          if ( (globaldef3007 < globaldef2904) ) {

                                             globaldef2978 = globaldef3028;
                                             globaldef2979 = globaldef1354;

                                          } else {

                                             if ( (globaldef3007 < globaldef3029) ) {

                                                globaldef2978 = globaldef3030;
                                                globaldef2979 = globaldef3031;

                                             } else {

                                                if ( (globaldef3007 < TRUE) ) {

                                                   globaldef2978 = globaldef3032;
                                                   globaldef2979 = globaldef1354;

                                                }

                                             }

                                          }

                                       }

                                    }

                                 }

                              } else {

                                 if ( (globaldef2977 == IT_LIGHTNING) ) {

                                    if ( (globaldef3007 < globaldef522) ) {

                                       globaldef2978 = globaldef3033;
                                       globaldef2979 = globaldef1354;

                                    } else {

                                       globaldef2978 = globaldef3034;
                                       globaldef2979 = globaldef1354;

                                    }

                                 }

                              }

                           }

                        }

                     }

                  }

               }
               globaldef455 (globaldef2976.globaldef158);
               globaldef455 (globaldef2978);
               globaldef455 (globaldef2975.globaldef158);
               globaldef455 (globaldef2979);

            } else {

               globaldef2976.globaldef131 = (globaldef2976.globaldef131 + TRUE);
               globaldef2977 = globaldef2976.globaldef132;
               if ( (globaldef2977 == IT_AXE) ) {

                  globaldef2978 = globaldef3035;
                  globaldef2979 = globaldef1354;

               }
               if ( (globaldef2977 == IT_SHOTGUN) ) {

                  globaldef2978 = globaldef3036;
                  globaldef2979 = globaldef3037;

               }
               if ( (globaldef2977 == IT_SUPER_SHOTGUN) ) {

                  globaldef2978 = globaldef3038;
                  globaldef2979 = globaldef3039;

               }
               if ( (globaldef2977 == IT_NAILGUN) ) {

                  globaldef2978 = globaldef3040;
                  globaldef2979 = globaldef1354;

               }
               if ( (globaldef2977 == IT_SUPER_NAILGUN) ) {

                  globaldef2978 = globaldef3041;
                  globaldef2979 = globaldef1354;

               }
               if ( (globaldef2977 == IT_GRENADE_LAUNCHER) ) {

                  globaldef2978 = globaldef3042;
                  globaldef2979 = globaldef3043;
                  if ( (globaldef2975.globaldef130 < globaldef3008) ) {

                     globaldef2978 = globaldef3044;
                     globaldef2979 = globaldef3045;

                  }

               }
               if ( (globaldef2977 == IT_ROCKET_LAUNCHER) ) {

                  globaldef2978 = globaldef3046;
                  globaldef2979 = globaldef3047;
                  if ( (globaldef2975.globaldef130 < globaldef3008) ) {

                     globaldef2978 = globaldef3048;
                     globaldef2979 = globaldef3047;

                  }

               }
               if ( (globaldef2977 == IT_LIGHTNING) ) {

                  globaldef2978 = globaldef3049;
                  if ( (globaldef2976.globaldef167 > TRUE) ) {

                     globaldef2979 = globaldef3050;

                  } else {

                     globaldef2979 = globaldef3051;

                  }

               }
               globaldef455 (globaldef2975.globaldef158);
               globaldef455 (globaldef2978);
               globaldef455 (globaldef2976.globaldef158);
               globaldef455 (globaldef2979);

            }

         }
         return ;

      } else {

         globaldef2975.globaldef131 = (globaldef2975.globaldef131 - TRUE);
         globaldef2977 = globaldef2975.globaldef168;
         globaldef455 (globaldef2975.globaldef158);
         if ( (globaldef2977 == CONTENT_WATER) ) {

            if ( (globaldef440 () < globaldef522) ) {

               globaldef455 (globaldef3052);

            } else {

               globaldef455 (globaldef3053);

            }
            return ;

         } else {

            if ( (globaldef2977 == CONTENT_SLIME) ) {

               if ( (globaldef440 () < globaldef522) ) {

                  globaldef455 (globaldef3054);

               } else {

                  globaldef455 (globaldef3055);

               }
               return ;

            } else {

               if ( (globaldef2977 == CONTENT_LAVA) ) {

                  if ( (globaldef2975.globaldef130 < globaldef3056) ) {

                     globaldef455 (globaldef3057);
                     return ;

                  }
                  if ( (globaldef440 () < globaldef522) ) {

                     globaldef455 (globaldef3058);

                  } else {

                     globaldef455 (globaldef3059);

                  }
                  return ;

               }

            }

         }
         if ( (globaldef2976.globaldef160 & FL_MONSTER) ) {

            if ( (globaldef2976.classname == "monster_army") ) {

               globaldef455 (globaldef3060);

            }
            if ( (globaldef2976.classname == "monster_demon1") ) {

               globaldef455 (globaldef3061);

            }
            if ( (globaldef2976.classname == "monster_dog") ) {

               globaldef455 (globaldef3062);

            }
            if ( (globaldef2976.classname == globaldef1708) ) {

               globaldef455 (globaldef3063);

            }
            if ( (globaldef2976.classname == "monster_enforcer") ) {

               globaldef455 (globaldef3064);

            }
            if ( (globaldef2976.classname == globaldef3065) ) {

               globaldef455 (globaldef3066);

            }
            if ( (globaldef2976.classname == "monster_hell_knight") ) {

               globaldef455 (globaldef3067);

            }
            if ( (globaldef2976.classname == globaldef1551) ) {

               globaldef455 (globaldef3068);

            }
            if ( (globaldef2976.classname == globaldef1625) ) {

               globaldef455 (globaldef3069);

            }
            if ( (globaldef2976.classname == globaldef3070) ) {

               globaldef455 (globaldef3071);

            }
            if ( (globaldef2976.classname == "monster_shalrath") ) {

               globaldef455 (globaldef3072);

            }
            if ( (globaldef2976.classname == "monster_shambler") ) {

               globaldef455 (globaldef3073);

            }
            if ( (globaldef2976.classname == "monster_tarbaby") ) {

               globaldef455 (globaldef3074);

            }
            if ( (globaldef2976.classname == "monster_vomit") ) {

               globaldef455 (globaldef3075);

            }
            if ( (globaldef2976.classname == "monster_wizard") ) {

               globaldef455 (globaldef3076);

            }
            if ( (globaldef2976.classname == "monster_zombie") ) {

               globaldef455 (globaldef3077);

            }
            return ;

         }
         if ( (globaldef2976.classname == globaldef3078) ) {

            globaldef455 (globaldef3079);
            return ;

         }
         if ( ((globaldef2976.solid == SOLID_BSP) && (globaldef2976 != world)) ) {

            globaldef455 (globaldef3080);
            return ;

         }
         if ( (globaldef2975.globaldef381 == globaldef2965) ) {

            globaldef2975.globaldef381 = "";
            globaldef455 (globaldef3081);
            return ;

         }
         if ( ((globaldef2976.classname == globaldef3082) || (globaldef2976.classname == globaldef3083)) ) {

            globaldef455 (globaldef3084);
            return ;

         }
         if ( (globaldef2976.classname == globaldef3085) ) {

            globaldef455 (globaldef3086);
            return ;

         }
         if ( (globaldef2976.classname == globaldef2924) ) {

            globaldef455 (globaldef3087);
            return ;

         }
         globaldef455 (globaldef3088);

      }

   }

};
