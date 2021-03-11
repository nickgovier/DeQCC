float globaldef002856 /* = 68.000 */;
float globaldef002857 /* = 69.000 */;
float globaldef002858 /* = 71.000 */;
float globaldef002859 /* = 81.000 */;
string globaldef002860 /* = "Status bar set\n" */;

void () player_pain;

void () player_stand1;
float globaldef002863 /* = 0.000 */;
float globaldef002864 /* = 0.000 */;

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

   self.globaldef000140 = (self.globaldef000140 - (self.globaldef000140 & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD)));
   if ( (self.globaldef000130 > globaldef001335) ) {

      self.globaldef000130 = globaldef001335;

   }
   if ( (self.globaldef000130 < globaldef001257) ) {

      self.globaldef000130 = globaldef001257;

   }
   parm1 = self.globaldef000140;
   parm2 = self.globaldef000130;
   parm3 = self.globaldef000166;
   if ( (self.globaldef000136 < globaldef000288) ) {

      parm4 = globaldef000288;

   } else {

      parm4 = self.globaldef000136;

   }
   parm5 = self.globaldef000137;
   parm6 = self.globaldef000138;
   parm7 = self.globaldef000139;
   parm8 = self.globaldef000132;
   parm9 = (self.globaldef000165 * globaldef001335);
   parm10 = self.globaldef000555;

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
   parm2 = globaldef001335;
   parm3 = FALSE;
   parm4 = globaldef000288;
   parm5 = FALSE;
   parm6 = FALSE;
   parm7 = FALSE;
   parm8 = globaldef001900;
   parm9 = FALSE;
   parm10 = self.globaldef000555;

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

      if ( (world.globaldef000108 == globaldef002337) ) {

         SetNewParms ();

      }

   }
   self.globaldef000140 = parm1;
   self.globaldef000130 = parm2;
   self.globaldef000166 = parm3;
   self.globaldef000136 = parm4;
   self.globaldef000137 = parm5;
   self.globaldef000138 = parm6;
   self.globaldef000139 = parm7;
   self.globaldef000132 = parm8;
   self.globaldef000165 = (parm9 * globaldef002073);
   self.globaldef000555 = parm10;

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

   local entity spot;
   local float cyc;

   spot = find (world,globaldef000107,globaldef002869);
   if ( spot ) {

      cyc = (random () * MOVETYPE_STEP);
      while ( (cyc > TRUE) ) {

         spot = find (spot,globaldef000107,globaldef002869);
         if ( !spot ) {

            spot = find (spot,globaldef000107,globaldef002869);

         }
         cyc = (cyc - TRUE);

      }
      return ( spot );

   }
   spot = find (world,globaldef000107,globaldef001451);
   if ( spot ) {

      return ( spot );

   }
   spot = find (world,globaldef000107,globaldef002739);
   if ( spot ) {

      return ( spot );

   }
   objerror (globaldef002870);

};
string globaldef002869 /* = "info_intermission" */;
string globaldef002870 /* = "FindIntermission: no spot" */;
string globaldef002871 /* = "" */;

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

   func000348 (mapname,globaldef002871);

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

      GotoNextMap ();
      return ;

   }
   globaldef002864 = (time + TRUE);
   globaldef002863 = (globaldef002863 + TRUE);
   if ( (globaldef002863 == FL_SWIM) ) {

      if ( (world.globaldef000108 == globaldef002344) ) {

         WriteByte (MSG_ALL,SVC_CDTRACK);
         WriteByte (MSG_ALL,FL_SWIM);
         WriteByte (MSG_ALL,MOVETYPE_WALK);
         if ( !cvar (globaldef002383) ) {

            WriteByte (MSG_ALL,SVC_FINALE);
            WriteString (MSG_ALL,globaldef002874);

         } else {

            WriteByte (MSG_ALL,SVC_FINALE);
            WriteString (MSG_ALL,globaldef002875);

         }
         return ;

      } else {

         if ( (world.globaldef000108 == globaldef002351) ) {

            WriteByte (MSG_ALL,SVC_CDTRACK);
            WriteByte (MSG_ALL,FL_SWIM);
            WriteByte (MSG_ALL,MOVETYPE_WALK);
            WriteByte (MSG_ALL,SVC_FINALE);
            WriteString (MSG_ALL,globaldef002876);
            return ;

         } else {

            if ( (world.globaldef000108 == globaldef002358) ) {

               WriteByte (MSG_ALL,SVC_CDTRACK);
               WriteByte (MSG_ALL,FL_SWIM);
               WriteByte (MSG_ALL,MOVETYPE_WALK);
               WriteByte (MSG_ALL,SVC_FINALE);
               WriteString (MSG_ALL,globaldef002877);
               return ;

            } else {

               if ( (world.globaldef000108 == globaldef002366) ) {

                  WriteByte (MSG_ALL,SVC_CDTRACK);
                  WriteByte (MSG_ALL,FL_SWIM);
                  WriteByte (MSG_ALL,MOVETYPE_WALK);
                  WriteByte (MSG_ALL,SVC_FINALE);
                  WriteString (MSG_ALL,globaldef002878);
                  return ;

               }

            }

         }

      }
      GotoNextMap ();

   }
   if ( (globaldef002863 == MOVETYPE_WALK) ) {

      if ( !cvar (globaldef002383) ) {

         WriteByte (MSG_ALL,SVC_SELLSCREEN);
         return ;

      }
      if ( ((serverflags & globaldef000748) == globaldef000748) ) {

         WriteByte (MSG_ALL,SVC_FINALE);
         WriteString (MSG_ALL,globaldef002879);
         return ;

      }

   }
   GotoNextMap ();

};
string globaldef002874 /* = "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task in..." */;
string globaldef002875 /* = "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task. A..." */;
string globaldef002876 /* = "The Rune of Black Magic throbs evilly in\nyour hand and whispers dark thoughts\ninto your brain. You learn the inmost\nlore of the Hell-Mother; Shub-Niggurath!\nYou now know that she is behind all the\nterrible plotting which has led to so\nmuch death..." */;
string globaldef002877 /* = "The charred viscera of diabolic horrors\nbubble viscously as you seize the Rune\nof Hell Magic. Its heat scorches your\nhand, and its terrible secrets blight\nyour mind. Gathering the shreds of your\ncourage, you shake the devil's shackles\nfrom your ..." */;
string globaldef002878 /* = "Despite the awful might of the Elder\nWorld, you have achieved the Rune of\nElder Magic, capstone of all types of\narcane wisdom. Beyond good and evil,\nbeyond life and death, the Rune\npulsates, heavy with import. Patient and\npotent, the Elder Being..." */;
string globaldef002879 /* = "Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront he..." */;

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

   if ( (time < globaldef002864) ) {

      return ;

   }
   if ( ((!self.globaldef000148 && !self.globaldef000149) && !self.globaldef000150) ) {

      return ;

   }
   ExitIntermission ();

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

   local entity pos;

   globaldef002863 = TRUE;
   func002704 ();
   func002523 ();
   if ( deathmatch ) {

      globaldef002864 = (time + MOVETYPE_FLY);

   } else {

      globaldef002864 = (time + FL_SWIM);

   }
   WriteByte (MSG_ALL,SVC_CDTRACK);
   WriteByte (MSG_ALL,MOVETYPE_WALK);
   WriteByte (MSG_ALL,MOVETYPE_WALK);
   pos = FindIntermission ();
   other = find (world,globaldef000107,globaldef001170);
   while ( (other != world) ) {

      other.globaldef000144 = VEC_ORIGIN;
      other.globaldef000153 = pos.globaldef000383;
      other.globaldef000095 = pos.globaldef000383;
      other.globaldef000152 = TRUE;
      other.globaldef000128 = (time + globaldef000522);
      other.globaldef000141 = DAMAGE_NO;
      other.globaldef000082 = SOLID_NOT;
      other.globaldef000081 = MOVETYPE_NONE;
      other.globaldef000071 = FALSE;
      setorigin (other,pos.globaldef000083);
      other = find (other,globaldef000107,globaldef001170);

   }
   WriteByte (MSG_ALL,SVC_INTERMISSION);

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

   local entity pos;

   if ( (other.globaldef000107 != globaldef001170) ) {

      return ;

   }
   if ( cvar (globaldef002885) ) {

      T_Damage (other,self,self,globaldef002886);
      return ;

   }
   bprint (other.globaldef000589);
   bprint (other.globaldef000158);
   bprint (globaldef002887);
   globaldef002871 = self.globaldef000339;
   SUB_UseTargets ();
   if ( ((self.globaldef000173 & TRUE) && (deathmatch == FALSE)) ) {

      GotoNextMap ();
      return ;

   }
   self.globaldef000124 = SUB_Null;
   self.globaldef000126 = execute_changelevel;
   self.globaldef000128 = (time + globaldef001488);

};
string globaldef002885 /* = "noexit" */;
float globaldef002886 /* = 50000.000 */;
string globaldef002887 /* = " exited the level\n" */;

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

   if ( !self.globaldef000339 ) {

      objerror (globaldef002889);

   }
   InitTrigger ();
   self.globaldef000124 = changelevel_touch;

};
string globaldef002889 /* = "changelevel trigger doesn't have map" */;

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

      CopyToBodyQue (self);
      setspawnparms (self);
      parm10 = self.globaldef000555;
      PutClientInServer ();

   } else {

      if ( deathmatch ) {

         CopyToBodyQue (self);
         SetNewParms ();
         PutClientInServer ();

      } else {

         localcmd (globaldef002892);

      }

   }

};
string globaldef002892 /* = "restart\n" */;

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

   if ( (globaldef000804 & globaldef000750) ) {

      return ;

   }
   if ( (self.globaldef000107 != globaldef001170) ) {

      return ;

   }
   bprint (self.globaldef000158);
   bprint (globaldef002893);
   set_suicide_frame ();
   self.globaldef000071 = globaldef000509;
   self.globaldef000131 = (self.globaldef000131 - FL_SWIM);
   respawn ();

};
string globaldef002893 /* = " suicides\n" */;
float (vector globaldef002895) CheckSpawnPoint;

// function CheckSpawnPoint
// function number 386 begins at statement 11527
/*
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (vector globaldef002895) CheckSpawnPoint = {

   return ( FALSE );

};

// function func000387
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
entity () func000387 = {

   local entity globaldef002899;
   local float globaldef002900;

   globaldef002899 = find (world,globaldef000107,globaldef002739);
   if ( globaldef002899 ) {

      return ( globaldef002899 );

   }
   if ( coop ) {

      globaldef002375 = find (globaldef002375,globaldef000107,globaldef002901);
      if ( (globaldef002375 == world) ) {

         globaldef002375 = find (globaldef002375,globaldef000107,globaldef001451);

      }
      if ( (globaldef002375 != world) ) {

         return ( globaldef002375 );

      }

   } else {

      if ( deathmatch ) {

         globaldef002375 = find (globaldef002375,globaldef000107,globaldef002902);
         globaldef002900 = random ();
         if ( (globaldef002900 > globaldef002903) ) {

            globaldef002375 = find (globaldef002375,globaldef000107,globaldef002902);

         }
         if ( (globaldef002900 > globaldef002904) ) {

            globaldef002375 = find (globaldef002375,globaldef000107,globaldef002902);

         }
         if ( (globaldef002375 == world) ) {

            globaldef002375 = find (globaldef002375,globaldef000107,globaldef002902);

         }
         if ( (globaldef002375 != world) ) {

            return ( globaldef002375 );

         }

      }

   }
   if ( (serverflags & globaldef000748) ) {

      globaldef002899 = find (world,globaldef000107,globaldef002905);
      if ( globaldef002899 ) {

         return ( globaldef002899 );

      }

   }
   globaldef002899 = find (world,globaldef000107,globaldef001451);
   if ( !globaldef002899 ) {

      error (globaldef002906);

   }
   return ( globaldef002899 );

};
string globaldef002901 /* = "info_player_coop" */;
string globaldef002902 /* = "info_player_deathmatch" */;
float globaldef002903 /* = 0.330 */;
float globaldef002904 /* = 0.660 */;
string globaldef002905 /* = "info_player_start2" */;
string globaldef002906 /* = "PutClientInServer: no info_player_start on level" */;

void (entity globaldef002908) func000388;

// function func000388
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

void (entity globaldef002908) func000388 = {

   globaldef002908.globaldef000130 = globaldef000721;
   globaldef002908.globaldef000166 = globaldef001343;
   globaldef002908.globaldef000165 = globaldef001827;
   globaldef002908.globaldef000136 = globaldef001335;
   globaldef002908.globaldef000137 = globaldef001343;
   globaldef002908.globaldef000138 = globaldef001335;
   globaldef002908.globaldef000139 = globaldef001335;
   globaldef002908.globaldef000140 = ((((((((((globaldef002908.globaldef000140 | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_LIGHTNING) | IT_ARMOR3) | IT_INVULNERABILITY);
   globaldef002908.globaldef000132 = IT_LIGHTNING;
   globaldef002908.globaldef000367 = (time + TRUE);
   globaldef002908.globaldef000363 = (time + MOVETYPE_WALK);

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

   local entity globaldef002910;
   local float globaldef002911;

   self.globaldef000107 = globaldef001170;
   self.globaldef000130 = globaldef001335;
   self.globaldef000141 = DAMAGE_AIM;
   self.globaldef000082 = SOLID_SLIDEBOX;
   self.globaldef000081 = MOVETYPE_WALK;
   self.globaldef000376 = FALSE;
   self.globaldef000163 = globaldef001335;
   self.globaldef000160 = FL_CLIENT;
   self.globaldef000379 = (time + globaldef000774);
   self.globaldef000408 = FL_SWIM;
   self.globaldef000365 = FALSE;
   self.globaldef000366 = FALSE;
   self.globaldef000364 = FALSE;
   self.globaldef000363 = FALSE;
   self.globaldef000111 = FALSE;
   self.globaldef000367 = FALSE;
   DecodeLevelParms ();
   if ( (deathmatch == MOVETYPE_STEP) ) {

      func000388 (self);

   }
   W_SetCurrentAmmo ();
   self.globaldef000361 = time;
   self.globaldef000349 = player_pain;
   self.globaldef000350 = PlayerDie;
   self.globaldef000143 = DEAD_NO;
   self.globaldef000405 = FALSE;
   if ( !globaldef000510 ) {

      setmodel (self,globaldef002431);
      globaldef000510 = self.globaldef000071;

   }
   if ( !globaldef000508 ) {

      setmodel (self,globaldef002430);
      globaldef000508 = self.globaldef000071;

   }
   setmodel (self,globaldef002429);
   globaldef000509 = self.globaldef000071;
   setsize (self,VEC_HULL_MIN,VEC_HULL_MAX);
   self.globaldef000144 = globaldef002912;
   globaldef002910 = func000350 (self);
   if ( (globaldef000804 & globaldef000750) ) {

      globaldef002910 = func000353 (globaldef002902);

   }
   self.globaldef000083 = (globaldef002910.globaldef000083 + globaldef001444);
   self.globaldef000095 = globaldef002910.globaldef000095;
   self.globaldef000152 = TRUE;
   self.globaldef000110 = self.globaldef000555;
   self.globaldef000091 = globaldef002913;
   self.globaldef000559 = globaldef002913;
   self.globaldef000563 = self.globaldef000083;
   self.globaldef000567 = FALSE;
   self.globaldef000605 = world;
   self.globaldef000671 = globaldef000699;
   if ( (self.globaldef000558 & globaldef000686) ) {

      globaldef000785 = (globaldef000785 - TRUE);
      self.globaldef000558 = (self.globaldef000558 - globaldef000686);

   }
   if ( (!(globaldef000804 & globaldef000752) && ((globaldef000786 < globaldef000787) || (globaldef000788 != globaldef000710))) ) {

      self.globaldef000558 = (self.globaldef000558 | globaldef000686);
      globaldef000785 = (globaldef000785 + TRUE);

   }
   self.globaldef000571 = skill;
   self.globaldef000650 = self;
   player_stand1 ();
   if ( (deathmatch || coop) ) {

      makevectors (self.globaldef000095);
      spawn_tfog ((self.globaldef000083 + (v_forward * globaldef001384)));

   }
   spawn_tdeath (self.globaldef000083,self);
   func000338 (self);
   if ( (globaldef000804 & globaldef000750) ) {

      func000364 (self);

   }

};
vector globaldef002912 /* = '0.000 0.000 22.000' */;
vector globaldef002913 /* = '0.000 0.000 40.000' */;

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

   local entity o;

   if ( (mapname == globaldef002919) ) {

      if ( !cvar (globaldef002383) ) {

         mapname = globaldef002920;

      } else {

         if ( !(serverflags & TRUE) ) {

            mapname = globaldef002920;
            serverflags = (serverflags | TRUE);

         } else {

            if ( !(serverflags & FL_SWIM) ) {

               mapname = globaldef002921;
               serverflags = (serverflags | FL_SWIM);

            } else {

               if ( !(serverflags & MOVETYPE_STEP) ) {

                  mapname = globaldef002922;
                  serverflags = (serverflags | MOVETYPE_STEP);

               } else {

                  if ( !(serverflags & FL_CLIENT) ) {

                     mapname = globaldef002923;
                     serverflags = (serverflags - MOVETYPE_PUSH);

                  }

               }

            }

         }

      }
      o = spawn ();
      o.globaldef000339 = mapname;

   } else {

      o = find (world,globaldef000107,globaldef002924);
      if ( !o ) {

         mapname = globaldef002919;
         o = spawn ();
         o.globaldef000339 = mapname;

      }

   }
   globaldef002871 = o.globaldef000339;
   gameover = TRUE;
   if ( (o.globaldef000128 < time) ) {

      o.globaldef000126 = execute_changelevel;
      o.globaldef000128 = (time + globaldef001488);

   }

};
string globaldef002919 /* = "start" */;
string globaldef002920 /* = "e1m1" */;
string globaldef002921 /* = "e2m1" */;
string globaldef002922 /* = "e3m1" */;
string globaldef002923 /* = "e4m1" */;
string globaldef002924 /* = "trigger_changelevel" */;

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

   local float timelimit;
   local float fraglimit;

   if ( gameover ) {

      return ;

   }
   fraglimit = cvar (globaldef002928);
   if ( (fraglimit && (self.globaldef000131 >= fraglimit)) ) {

      NextLevel ();
      return ;

   }

};
string globaldef002928 /* = "fraglimit" */;

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

   local entity old_self;
   local float forward;

   if ( (self.globaldef000160 & FL_ONGROUND) ) {

      forward = vlen (self.globaldef000091);
      forward = (forward - globaldef001384);
      if ( (forward <= FALSE) ) {

         self.globaldef000091 = VEC_ORIGIN;

      } else {

         self.globaldef000091 = (forward * normalize (self.globaldef000091));

      }

   }
   if ( (self.globaldef000143 == DEAD_DEAD) ) {

      if ( ((self.globaldef000150 || self.globaldef000149) || self.globaldef000148) ) {

         return ;

      }
      self.globaldef000143 = DEAD_RESPAWNABLE;
      return ;

   }
   if ( !(globaldef000804 & globaldef000750) ) {

      if ( ((!self.globaldef000150 && !self.globaldef000149) && !self.globaldef000148) ) {

         return ;

      }

   }
   self.globaldef000148 = FALSE;
   self.globaldef000149 = FALSE;
   self.globaldef000150 = FALSE;
   respawn ();

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

   local vector start;
   local vector end;

   if ( (self.globaldef000160 & FL_WATERJUMP) ) {

      return ;

   }
   if ( (self.globaldef000167 >= FL_SWIM) ) {

      if ( (self.globaldef000168 == CONTENT_WATER) ) {

         self.globaldef000094 = globaldef001335;
         if ( (globaldef000804 & globaldef000750) ) {

            self.globaldef000094 = globaldef000523;

         }

      } else {

         if ( (self.globaldef000168 == CONTENT_SLIME) ) {

            self.globaldef000094 = globaldef001439;

         } else {

            self.globaldef000094 = globaldef001257;

         }

      }
      if ( (self.globaldef000107 == globaldef001170) ) {

         if ( (self.globaldef000378 < time) ) {

            self.globaldef000378 = (time + TRUE);
            if ( (random () < globaldef000522) ) {

               sound (self,CHAN_BODY,globaldef002427,TRUE,ATTN_NORM);

            } else {

               sound (self,CHAN_BODY,globaldef002428,TRUE,ATTN_NORM);

            }

         }

      }
      return ;

   }
   if ( !(self.globaldef000160 & FL_ONGROUND) ) {

      return ;

   }
   if ( !(self.globaldef000160 & FL_JUMPRELEASED) ) {

      return ;

   }
   self.globaldef000160 = (self.globaldef000160 - (self.globaldef000160 & FL_JUMPRELEASED));
   self.globaldef000160 = (self.globaldef000160 - FL_ONGROUND);
   self.globaldef000150 = FALSE;
   if ( (self.globaldef000107 == globaldef001170) ) {

      sound (self,CHAN_BODY,globaldef002390,TRUE,ATTN_NORM);

   }
   self.globaldef000094 = (self.globaldef000094 + globaldef000717);

};
.float field000352;

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

   if ( (self.globaldef000081 == MOVETYPE_NOCLIP) ) {

      return ;

   }
   if ( (self.globaldef000130 < FALSE) ) {

      return ;

   }
   if ( (self.globaldef000167 != MOVETYPE_WALK) ) {

      if ( (self.globaldef000379 < time) ) {

         sound (self,CHAN_VOICE,globaldef002396,TRUE,ATTN_NORM);

      } else {

         if ( (self.globaldef000379 < (time + MOVETYPE_FLYMISSILE)) ) {

            sound (self,CHAN_VOICE,globaldef002395,TRUE,ATTN_NORM);

         }

      }
      self.globaldef000379 = (time + globaldef000774);
      self.globaldef000408 = FL_SWIM;

   } else {

      if ( (self.globaldef000379 < time) ) {

         if ( (self.globaldef000362 < time) ) {

            self.globaldef000408 = (self.globaldef000408 + FL_SWIM);
            if ( (self.globaldef000408 > globaldef000748) ) {

               self.globaldef000408 = MOVETYPE_BOUNCE;

            }
            T_Damage (self,world,world,self.globaldef000408);
            self.globaldef000362 = (time + TRUE);

         }

      }

   }
   if ( !self.globaldef000167 ) {

      if ( (self.globaldef000160 & FL_INWATER) ) {

         sound (self,CHAN_BODY,globaldef002424,TRUE,ATTN_NORM);
         self.globaldef000160 = (self.globaldef000160 - FL_INWATER);

      }
      return ;

   }
   if ( (self.globaldef000168 == CONTENT_LAVA) ) {

      if ( (self.globaldef002941 < time) ) {

         if ( (self.globaldef000366 > time) ) {

            self.globaldef002941 = (time + TRUE);

         } else {

            self.globaldef002941 = (time + globaldef001553);

         }
         T_Damage (self,world,world,(MOVETYPE_BOUNCE * self.globaldef000167));

      }

   } else {

      if ( (self.globaldef000168 == CONTENT_SLIME) ) {

         if ( ((self.globaldef002941 < time) && (self.globaldef000366 < time)) ) {

            self.globaldef002941 = (time + TRUE);
            T_Damage (self,world,world,(MOVETYPE_STEP * self.globaldef000167));

         }

      }

   }
   if ( !(self.globaldef000160 & FL_INWATER) ) {

      if ( (self.globaldef000168 == CONTENT_LAVA) ) {

         sound (self,CHAN_BODY,globaldef002423,TRUE,ATTN_NORM);

      }
      if ( (self.globaldef000168 == CONTENT_WATER) ) {

         sound (self,CHAN_BODY,globaldef002422,TRUE,ATTN_NORM);

      }
      if ( (self.globaldef000168 == CONTENT_SLIME) ) {

         sound (self,CHAN_BODY,globaldef002421,TRUE,ATTN_NORM);

      }
      self.globaldef000160 = (self.globaldef000160 + FL_INWATER);
      self.globaldef002941 = FALSE;

   }
   if ( !(self.globaldef000160 & FL_WATERJUMP) ) {

      self.globaldef000091 = (self.globaldef000091 - (((globaldef001827 * self.globaldef000167) * frametime) * self.globaldef000091));

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

   local vector start;
   local vector end;

   makevectors (self.globaldef000095);
   start = self.globaldef000083;
   globaldef002947 = (globaldef002947 + FL_CLIENT);
   globaldef000035 = FALSE;
   normalize (v_forward);
   end = (start + (v_forward * globaldef000719));
   traceline (start,end,TRUE,self);
   if ( (trace_fraction < TRUE) ) {

      globaldef002947 = ((globaldef002947 + self.globaldef000119) - FL_CLIENT);
      end = (start + (v_forward * globaldef000719));
      self.globaldef000180 = (trace_plane_normal * globaldef002952);
      traceline (start,end,TRUE,self);
      if ( (trace_fraction == TRUE) ) {

         self.globaldef000160 = (self.globaldef000160 | FL_WATERJUMP);
         self.globaldef000094 = globaldef002170;
         self.globaldef000160 = (self.globaldef000160 - (self.globaldef000160 & FL_JUMPRELEASED));
         self.globaldef000164 = (time + FL_SWIM);
         return ;

      }

   }

};
float globaldef002952 /* = -50.000 */;

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

   local float globaldef002953;
   local float globaldef002954;

   if ( globaldef002863 ) {

      IntermissionThink ();
      return ;

   }
   if ( (self.globaldef000144 == VEC_ORIGIN) ) {

      return ;

   }
   if ( (globaldef000804 & globaldef000750) ) {

      func000365 (self);

   }
   makevectors (self.globaldef000153);
   CheckRules ();
   WaterMove ();
   if ( (self.globaldef000167 == FL_SWIM) ) {

      CheckWaterJump ();

   }
   if ( (self.globaldef000143 >= DEAD_DEAD) ) {

      PlayerDeathThink ();
      return ;

   }
   if ( (self.globaldef000143 == DEAD_DYING) ) {

      return ;

   }
   if ( self.globaldef000150 ) {

      PlayerJump ();

   } else {

      self.globaldef000160 = (self.globaldef000160 | FL_JUMPRELEASED);

   }
   if ( (time < self.globaldef000405) ) {

      self.globaldef000091 = VEC_ORIGIN;

   }
   if ( (((time > self.globaldef000361) && (self.globaldef000135 == FALSE)) && (self.globaldef000132 != IT_AXE)) ) {

      self.globaldef000132 = W_BestWeapon ();
      W_SetCurrentAmmo ();

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

   if ( (self.globaldef000130 <= FALSE) ) {

      return ;

   }
   if ( self.globaldef000364 ) {

      if ( (self.globaldef000370 < time) ) {

         sound (self,CHAN_AUTO,globaldef001958,globaldef000522,ATTN_IDLE);
         self.globaldef000370 = ((time + (random () * MOVETYPE_WALK)) + TRUE);

      }
      if ( (self.globaldef000364 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef000369 == TRUE) ) {

            func000092 (self,globaldef002956);
            func000064 (self,globaldef001818);
            sound (self,CHAN_AUTO,globaldef001957,TRUE,ATTN_NORM);
            self.globaldef000369 = (time + TRUE);

         }
         if ( (self.globaldef000369 < time) ) {

            self.globaldef000369 = (time + TRUE);
            func000064 (self,globaldef001818);

         }

      }
      if ( (self.globaldef000364 < time) ) {

         self.globaldef000140 = (self.globaldef000140 - IT_INVISIBILITY);
         self.globaldef000364 = FALSE;
         self.globaldef000369 = FALSE;

      }
      self.globaldef000109 = FALSE;
      if ( (globaldef000804 & globaldef000760) ) {

         self.globaldef000557 = FALSE;
         self.globaldef000556 = globaldef000508;

      } else {

         self.globaldef000110 = FALSE;
         self.globaldef000071 = globaldef000508;

      }

   } else {

      if ( (globaldef000804 & globaldef000760) ) {

         self.globaldef000557 = self.globaldef000555;
         self.globaldef000556 = globaldef000509;

      } else {

         self.globaldef000110 = self.globaldef000555;
         self.globaldef000071 = globaldef000509;

      }

   }
   if ( self.globaldef000363 ) {

      if ( (self.globaldef000363 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef000367 == TRUE) ) {

            func000092 (self,globaldef002957);
            func000064 (self,globaldef001818);
            sound (self,CHAN_AUTO,globaldef001947,TRUE,ATTN_NORM);
            self.globaldef000367 = (time + TRUE);

         }
         if ( (self.globaldef000367 < time) ) {

            self.globaldef000367 = (time + TRUE);
            func000064 (self,globaldef001818);

         }

      }
      if ( (self.globaldef000363 < time) ) {

         self.globaldef000140 = (self.globaldef000140 - IT_INVULNERABILITY);
         self.globaldef000367 = FALSE;
         self.globaldef000363 = FALSE;

      }
      if ( (self.globaldef000363 > time) ) {

         self.globaldef000111 = (self.globaldef000111 | EF_DIMLIGHT);

      } else {

         self.globaldef000111 = (self.globaldef000111 - (self.globaldef000111 & EF_DIMLIGHT));

      }

   }
   if ( self.globaldef000365 ) {

      if ( (self.globaldef000365 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef000371 == TRUE) ) {

            func000092 (self,globaldef002958);
            func000064 (self,globaldef001818);
            sound (self,CHAN_AUTO,globaldef001963,TRUE,ATTN_NORM);
            self.globaldef000371 = (time + TRUE);

         }
         if ( (self.globaldef000371 < time) ) {

            self.globaldef000371 = (time + TRUE);
            func000064 (self,globaldef001818);

         }

      }
      if ( (self.globaldef000365 < time) ) {

         self.globaldef000140 = (self.globaldef000140 - IT_QUAD);
         self.globaldef000365 = FALSE;
         self.globaldef000371 = FALSE;

      }
      if ( (self.globaldef000365 > time) ) {

         self.globaldef000111 = (self.globaldef000111 | EF_DIMLIGHT);

      } else {

         self.globaldef000111 = (self.globaldef000111 - (self.globaldef000111 & EF_DIMLIGHT));

      }

   }
   if ( self.globaldef000366 ) {

      self.globaldef000379 = (time + globaldef000774);
      if ( (self.globaldef000366 < (time + MOVETYPE_WALK)) ) {

         if ( (self.globaldef000373 == TRUE) ) {

            func000092 (self,globaldef002959);
            func000064 (self,globaldef001818);
            sound (self,CHAN_AUTO,globaldef001952,TRUE,ATTN_NORM);
            self.globaldef000373 = (time + TRUE);

         }
         if ( (self.globaldef000373 < time) ) {

            self.globaldef000373 = (time + TRUE);
            func000064 (self,globaldef001818);

         }

      }
      if ( (self.globaldef000366 < time) ) {

         self.globaldef000140 = (self.globaldef000140 - IT_SUIT);
         self.globaldef000373 = FALSE;
         self.globaldef000366 = FALSE;

      }

   }

};
string globaldef002956 /* = "Ring of Shadows magic is fading\n" */;
string globaldef002957 /* = "Protection is almost burned out\n" */;
string globaldef002958 /* = "Quad Damage is wearing off\n" */;
string globaldef002959 /* = "Air supply in Biosuit expiring\n" */;

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

   local float mspeed;
   local float aspeed;
   local float r;

   if ( ((self.globaldef000107 == globaldef001445) && !globaldef002863) ) {

      func000144 ();
      return ;

   }
   if ( (self.globaldef000144 == VEC_ORIGIN) ) {

      return ;

   }
   if ( (self.globaldef000107 == globaldef001170) ) {

      func002267 (self,self);

   }
   func002356 (self);
   if ( ((self.globaldef000107 == globaldef001170) || (self.globaldef000107 == globaldef001339)) ) {

      func002748 ();

   }
   if ( self.globaldef000143 ) {

      self.globaldef000151 = FALSE;
      return ;

   }
   if ( (self.globaldef000107 == globaldef001339) ) {

      self.globaldef000151 = FALSE;
      return ;

   }
   func002273 (self);
   if ( (self.globaldef000558 & globaldef000686) ) {

      func002680 ();

   }
   if ( deathmatch ) {

      func000347 (self);

   }
   W_WeaponFrame ();
   if ( (((self.globaldef000377 < globaldef002963) && (self.globaldef000160 & FL_ONGROUND)) && (self.globaldef000130 > FALSE)) ) {

      if ( (self.globaldef000168 == CONTENT_WATER) ) {

         sound (self,CHAN_BODY,globaldef002420,TRUE,ATTN_NORM);

      } else {

         if ( (self.globaldef000377 < globaldef002964) ) {

            T_Damage (self,world,world,MOVETYPE_FLY);
            sound (self,CHAN_VOICE,globaldef002392,TRUE,ATTN_NORM);
            self.globaldef000381 = globaldef002965;

         } else {

            sound (self,CHAN_VOICE,globaldef002391,TRUE,ATTN_NORM);

         }

      }
      self.globaldef000377 = FALSE;

   }
   if ( !(self.globaldef000160 & FL_ONGROUND) ) {

      self.globaldef000377 = self.globaldef000094;

   }
   CheckPowerups ();
   func002380 ();
   self.globaldef000559 = self.globaldef000091;
   self.globaldef000563 = self.globaldef000083;
   self.globaldef000567 = self.globaldef000160;
   self.globaldef000568 = self.globaldef000558;

};
float globaldef002963 /* = -300.000 */;
float globaldef002964 /* = -650.000 */;
string globaldef002965 /* = "falling" */;

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

   local entity globaldef002966;
   local float globaldef002967;

   self.globaldef000592 = CONTENT_EMPTY;
   self.globaldef000591 = (self.globaldef000161 - TRUE);
   self.globaldef000593 = ((FALSE * FL_INWATER) + self.globaldef000162);
   self.globaldef000555 = FALSE;
   if ( globaldef000816 ) {

      globaldef000816.globaldef000604 = self;

   }
   self.globaldef000603 = globaldef000816;
   self.globaldef000604 = world;
   globaldef000816 = self;
   if ( func002257 (self.globaldef000591) ) {

      globaldef002966 = globaldef000817;
      while ( globaldef002966 ) {

         if ( (globaldef002966.globaldef000591 == self.globaldef000591) ) {

            globaldef002967 = func002261 ();
            if ( (globaldef002967 == CONTENT_EMPTY) ) {

               func002417 (globaldef002966);

            } else {

               globaldef002966.globaldef000591 = globaldef002967;
               func002259 (globaldef002966.globaldef000591);
               func002262 (globaldef002966.globaldef000591,globaldef002966.globaldef000158);
               func002263 (globaldef002966.globaldef000591,globaldef002966.globaldef000131);
               func002264 (globaldef002966.globaldef000591,globaldef002966.globaldef000593);

            }

         }
         globaldef002966 = globaldef002966.globaldef000603;

      }
      func002262 (self.globaldef000591,self.globaldef000158);
      func002263 (self.globaldef000591,FALSE);

   }
   func002259 (self.globaldef000591);
   self.globaldef000151 = globaldef001341;
   if ( (self.globaldef000591 == FALSE) ) {

      func002738 (self);

   }
   if ( (teamplay || !globaldef000799) ) {

      func002365 (self);

   }
   if ( ((self.globaldef000158 == globaldef002968) || (self.globaldef000158 == globaldef001466)) ) {

      self.globaldef000151 = globaldef000721;

   } else {

      bprint (self.globaldef000158);
      bprint (globaldef002969);

   }
   if ( (globaldef000804 & globaldef000750) ) {

      self.globaldef000521 = TRUE;

   }
   if ( globaldef002863 ) {

      ExitIntermission ();

   }

};
string globaldef002968 /* = "CamClient" */;
string globaldef002969 /* = " entered the game\n" */;

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

   local float globaldef002970;
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
   local float globaldef002971;

   func000334 (self);
   func002364 (self);
   func002262 (self.globaldef000591,globaldef001466);
   func002260 (self.globaldef000591);
   func002739 (self);
   if ( self.globaldef000603 ) {

      self.globaldef000603.globaldef000604 = self.globaldef000604;

   }
   if ( self.globaldef000604 ) {

      self.globaldef000604.globaldef000603 = self.globaldef000603;

   } else {

      globaldef000816 = self.globaldef000603;

   }
   if ( (self.globaldef000558 & globaldef000686) ) {

      globaldef000785 = (globaldef000785 - TRUE);

   }
   if ( gameover ) {

      return ;

   }
   if ( (self.globaldef000143 == DEAD_NO) ) {

      globaldef002971 = FALSE;

   } else {

      globaldef002971 = TRUE;

   }
   if ( func000147 () ) {

      bprint (self.globaldef000589);
      bprint (self.globaldef000158);
      bprint (globaldef002972);
      bprint (ftos (self.globaldef000131));
      bprint (globaldef002973);
      sound (self,CHAN_BODY,globaldef002407,TRUE,ATTN_NONE);
      self.globaldef000107 = globaldef002974;
      set_suicide_frame ();

   }
   if ( (globaldef000804 & globaldef000750) ) {

      func000366 (self,globaldef002971);

   }

};
string globaldef002972 /* = " left the game with " */;
string globaldef002973 /* = " frags\n" */;
string globaldef002974 /* = "nobody" */;

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

void (entity globaldef002975, entity globaldef002976) ClientObituary = {

   local float globaldef002977;
   local string globaldef002978;
   local string globaldef002979;
   local float globaldef002980;
   local float globaldef002981;
   local string globaldef002982;
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
   local string globaldef002983;
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
   local string globaldef002984;
   /* Warning: No local name with offset 9133 */
   local string globaldef002985;
   /* Warning: No local name with offset 9135 */
   local string globaldef002986;
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
   local string globaldef002987;
   /* Warning: No local name with offset 9151 */
   local string globaldef002988;
   /* Warning: No local name with offset 9153 */
   local string globaldef002989;
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
   local string globaldef002990;
   local string globaldef002991;
   /* Warning: No local name with offset 9169 */
   local string globaldef002992;
   local string globaldef002993;
   local string globaldef002994;
   local float globaldef002995;
   /* Warning: No local name with offset 9174 */
   /* Warning: No local name with offset 9175 */
   /* Warning: No local name with offset 9176 */
   local string globaldef002996;
   /* Warning: No local name with offset 9178 */
   /* Warning: No local name with offset 9179 */
   /* Warning: No local name with offset 9180 */
   /* Warning: No local name with offset 9181 */
   local string globaldef002997;
   /* Warning: No local name with offset 9183 */
   /* Warning: No local name with offset 9184 */
   local string globaldef002998;
   /* Warning: No local name with offset 9186 */
   /* Warning: No local name with offset 9187 */
   local string globaldef002999;
   /* Warning: No local name with offset 9189 */
   /* Warning: No local name with offset 9190 */
   /* Warning: No local name with offset 9191 */
   /* Warning: No local name with offset 9192 */
   /* Warning: No local name with offset 9193 */
   /* Warning: No local name with offset 9194 */
   /* Warning: No local name with offset 9195 */
   /* Warning: No local name with offset 9196 */
   local string globaldef003000;
   /* Warning: No local name with offset 9198 */
   local string globaldef003001;
   /* Warning: No local name with offset 9200 */
   /* Warning: No local name with offset 9201 */
   local string globaldef003002;
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
   local string globaldef003003;
   /* Warning: No local name with offset 9222 */
   /* Warning: No local name with offset 9223 */
   local string globaldef003004;
   local string globaldef003005;
   local string globaldef003006;
   /* Warning: No local name with offset 9227 */
   /* Warning: No local name with offset 9228 */
   /* Warning: No local name with offset 9229 */
   /* Warning: No local name with offset 9230 */
   local float globaldef003007;

   globaldef002977 = random ();
   if ( ((globaldef002975.globaldef000107 == globaldef001170) || (globaldef002975.globaldef000107 == globaldef001171)) ) {

      if ( (globaldef000804 & globaldef000750) ) {

         if ( ((globaldef000525.globaldef000107 == globaldef001170) || (globaldef000525.globaldef000107 == globaldef001171)) ) {

            globaldef000525.globaldef000141 = DAMAGE_NO;
            func000064 (globaldef000525,globaldef002983);
            globaldef000525.globaldef000159 = world;

         }
         if ( ((globaldef000524.globaldef000107 == globaldef001170) || (globaldef000524.globaldef000107 == globaldef001171)) ) {

            globaldef000524.globaldef000141 = DAMAGE_NO;
            func000064 (globaldef000524,globaldef002983);
            globaldef000524.globaldef000159 = world;

         }
         if ( (globaldef002976 != globaldef002975) ) {

            globaldef002980 = globaldef002976.globaldef000130;
            globaldef002981 = globaldef002976.globaldef000166;

         }
         if ( (globaldef002975 == globaldef000524) ) {

            globaldef000524.globaldef000519 = (globaldef000524.globaldef000519 + TRUE);
            globaldef000525.globaldef000518 = (globaldef000525.globaldef000518 + TRUE);
            bprint (globaldef002984);
            bprint (globaldef000524.globaldef000158);
            bprint (globaldef002985);
            if ( (globaldef002975 == globaldef002976) ) {

               bprint (globaldef002986);
               globaldef002976.globaldef000131 = (globaldef002976.globaldef000131 - TRUE);

            }
            globaldef000524 = globaldef000525;
            if ( (globaldef000524.globaldef000107 == globaldef001170) ) {

               bprint (globaldef002824);
               bprint (globaldef000524.globaldef000158);
               bprint (globaldef001354);

            }
            func000362 ();

         }
         if ( (globaldef002975 == globaldef000525) ) {

            globaldef000525.globaldef000519 = (globaldef000525.globaldef000519 + TRUE);
            globaldef000524.globaldef000518 = (globaldef000524.globaldef000518 + TRUE);
            bprint (globaldef002987);
            bprint (globaldef000525.globaldef000158);
            bprint (globaldef002988);
            if ( (globaldef002975 == globaldef002976) ) {

               bprint (globaldef002989);
               globaldef002976.globaldef000131 = (globaldef002976.globaldef000131 - TRUE);

            }
            func000362 ();

         }
         if ( ((globaldef002976.globaldef000107 == globaldef001170) || (globaldef002976.globaldef000107 == globaldef001171)) ) {

            if ( (globaldef002976 != globaldef002975) ) {

               if ( ((globaldef002980 == globaldef001335) && (globaldef002981 == globaldef001343)) ) {

                  bprint (globaldef002990);
                  func000356 (globaldef002991);

               } else {

                  bprint (globaldef002976.globaldef000158);
                  bprint (globaldef002992);
                  globaldef002982 = ftos (globaldef002980);
                  bprint (globaldef002982);
                  bprint (globaldef002993);
                  globaldef002982 = ftos (globaldef002981);
                  bprint (globaldef002982);
                  bprint (globaldef002994);
                  if ( ((globaldef002980 >= globaldef002995) && (globaldef002981 >= globaldef001335)) ) {

                     func000356 (globaldef002996);

                  }

               }
               globaldef002976.globaldef000131 = (globaldef002976.globaldef000131 + TRUE);

            }

         }
         return ;

      }
      if ( (globaldef002976.globaldef000107 == globaldef002997) ) {

         bprint (globaldef002975.globaldef000158);
         bprint (globaldef002998);
         bprint (globaldef002976.globaldef000179.globaldef000158);
         if ( teamplay ) {

            bprint (globaldef002999);
            bprint (globaldef002976.globaldef000179.globaldef000589);

         }
         bprint (globaldef001354);
         globaldef002976.globaldef000179.globaldef000131 = (globaldef002976.globaldef000179.globaldef000131 + TRUE);
         return ;

      }
      if ( (globaldef002976.globaldef000107 == globaldef003000) ) {

         bprint (globaldef003001);
         bprint (globaldef002975.globaldef000158);
         if ( teamplay ) {

            bprint (globaldef002999);
            bprint (globaldef002975.globaldef000589);

         }
         bprint (globaldef003002);
         globaldef002975.globaldef000131 = (globaldef002975.globaldef000131 - TRUE);
         return ;

      }
      if ( ((globaldef002976.globaldef000107 == globaldef001170) || (globaldef002976.globaldef000107 == globaldef001171)) ) {

         if ( (globaldef002975 == globaldef002976) ) {

            globaldef002976.globaldef000131 = (globaldef002976.globaldef000131 - TRUE);
            bprint (globaldef002975.globaldef000158);
            if ( ((globaldef002975.globaldef000132 == FL_GODMODE) && (globaldef002975.globaldef000167 > TRUE)) ) {

               bprint (globaldef003003);
               return ;

            }
            if ( (globaldef002975.globaldef000132 == FL_INWATER) ) {

               bprint (globaldef003004);

            } else {

               if ( globaldef002977 ) {

                  bprint (globaldef003005);

               } else {

                  bprint (globaldef003006);

               }

            }
            return ;

         } else {

            if ( (teamplay && (globaldef002976.globaldef000590 == globaldef002975.globaldef000590)) ) {

               globaldef002976.globaldef000131 = (globaldef002976.globaldef000131 - TRUE);
               globaldef003007 = random ();
               if ( (globaldef002975.globaldef000130 < globaldef003008) ) {

                  if ( (globaldef003007 < globaldef000522) ) {

                     globaldef002978 = globaldef003009;
                     globaldef002979 = globaldef003010;

                  } else {

                     globaldef002978 = globaldef003011;
                     globaldef002979 = globaldef003012;

                  }

               } else {

                  globaldef002977 = globaldef002976.globaldef000132;
                  if ( (globaldef002977 == IT_AXE) ) {

                     if ( (globaldef003007 < globaldef000522) ) {

                        globaldef002978 = globaldef003013;
                        globaldef002979 = globaldef001354;

                     } else {

                        globaldef002978 = globaldef003014;
                        globaldef002979 = globaldef001354;

                     }

                  } else {

                     globaldef002977 = IT_SUPER_SHOTGUN;
                     if ( ((globaldef002977 == IT_SHOTGUN) || IT_SUPER_SHOTGUN) ) {

                        if ( (globaldef003007 < globaldef000522) ) {

                           globaldef002978 = globaldef003015;
                           globaldef002979 = globaldef003016;

                        } else {

                           globaldef002978 = globaldef003017;
                           globaldef002979 = globaldef003018;

                        }

                     } else {

                        if ( ((globaldef002977 == IT_NAILGUN) || (globaldef002977 == IT_SUPER_NAILGUN)) ) {

                           globaldef002978 = globaldef003019;
                           globaldef002979 = globaldef001354;

                        } else {

                           if ( (globaldef002977 == IT_GRENADE_LAUNCHER) ) {

                              globaldef002978 = globaldef003020;
                              globaldef002979 = globaldef003021;

                           } else {

                              if ( (globaldef002977 == IT_ROCKET_LAUNCHER) ) {

                                 if ( (globaldef003007 < globaldef003022) ) {

                                    globaldef002978 = globaldef003023;
                                    globaldef002979 = globaldef003024;

                                 } else {

                                    if ( (globaldef003007 < globaldef002903) ) {

                                       globaldef002978 = globaldef003025;
                                       globaldef002979 = globaldef003026;

                                    } else {

                                       if ( (globaldef003007 < globaldef000522) ) {

                                          globaldef002978 = globaldef003027;
                                          globaldef002979 = globaldef001354;

                                       } else {

                                          if ( (globaldef003007 < globaldef002904) ) {

                                             globaldef002978 = globaldef003028;
                                             globaldef002979 = globaldef001354;

                                          } else {

                                             if ( (globaldef003007 < globaldef003029) ) {

                                                globaldef002978 = globaldef003030;
                                                globaldef002979 = globaldef003031;

                                             } else {

                                                if ( (globaldef003007 < TRUE) ) {

                                                   globaldef002978 = globaldef003032;
                                                   globaldef002979 = globaldef001354;

                                                }

                                             }

                                          }

                                       }

                                    }

                                 }

                              } else {

                                 if ( (globaldef002977 == IT_LIGHTNING) ) {

                                    if ( (globaldef003007 < globaldef000522) ) {

                                       globaldef002978 = globaldef003033;
                                       globaldef002979 = globaldef001354;

                                    } else {

                                       globaldef002978 = globaldef003034;
                                       globaldef002979 = globaldef001354;

                                    }

                                 }

                              }

                           }

                        }

                     }

                  }

               }
               bprint (globaldef002976.globaldef000158);
               bprint (globaldef002978);
               bprint (globaldef002975.globaldef000158);
               bprint (globaldef002979);

            } else {

               globaldef002976.globaldef000131 = (globaldef002976.globaldef000131 + TRUE);
               globaldef002977 = globaldef002976.globaldef000132;
               if ( (globaldef002977 == IT_AXE) ) {

                  globaldef002978 = globaldef003035;
                  globaldef002979 = globaldef001354;

               }
               if ( (globaldef002977 == IT_SHOTGUN) ) {

                  globaldef002978 = globaldef003036;
                  globaldef002979 = globaldef003037;

               }
               if ( (globaldef002977 == IT_SUPER_SHOTGUN) ) {

                  globaldef002978 = globaldef003038;
                  globaldef002979 = globaldef003039;

               }
               if ( (globaldef002977 == IT_NAILGUN) ) {

                  globaldef002978 = globaldef003040;
                  globaldef002979 = globaldef001354;

               }
               if ( (globaldef002977 == IT_SUPER_NAILGUN) ) {

                  globaldef002978 = globaldef003041;
                  globaldef002979 = globaldef001354;

               }
               if ( (globaldef002977 == IT_GRENADE_LAUNCHER) ) {

                  globaldef002978 = globaldef003042;
                  globaldef002979 = globaldef003043;
                  if ( (globaldef002975.globaldef000130 < globaldef003008) ) {

                     globaldef002978 = globaldef003044;
                     globaldef002979 = globaldef003045;

                  }

               }
               if ( (globaldef002977 == IT_ROCKET_LAUNCHER) ) {

                  globaldef002978 = globaldef003046;
                  globaldef002979 = globaldef003047;
                  if ( (globaldef002975.globaldef000130 < globaldef003008) ) {

                     globaldef002978 = globaldef003048;
                     globaldef002979 = globaldef003047;

                  }

               }
               if ( (globaldef002977 == IT_LIGHTNING) ) {

                  globaldef002978 = globaldef003049;
                  if ( (globaldef002976.globaldef000167 > TRUE) ) {

                     globaldef002979 = globaldef003050;

                  } else {

                     globaldef002979 = globaldef003051;

                  }

               }
               bprint (globaldef002975.globaldef000158);
               bprint (globaldef002978);
               bprint (globaldef002976.globaldef000158);
               bprint (globaldef002979);

            }

         }
         return ;

      } else {

         globaldef002975.globaldef000131 = (globaldef002975.globaldef000131 - TRUE);
         globaldef002977 = globaldef002975.globaldef000168;
         bprint (globaldef002975.globaldef000158);
         if ( (globaldef002977 == CONTENT_WATER) ) {

            if ( (random () < globaldef000522) ) {

               bprint (globaldef003052);

            } else {

               bprint (globaldef003053);

            }
            return ;

         } else {

            if ( (globaldef002977 == CONTENT_SLIME) ) {

               if ( (random () < globaldef000522) ) {

                  bprint (globaldef003054);

               } else {

                  bprint (globaldef003055);

               }
               return ;

            } else {

               if ( (globaldef002977 == CONTENT_LAVA) ) {

                  if ( (globaldef002975.globaldef000130 < globaldef003056) ) {

                     bprint (globaldef003057);
                     return ;

                  }
                  if ( (random () < globaldef000522) ) {

                     bprint (globaldef003058);

                  } else {

                     bprint (globaldef003059);

                  }
                  return ;

               }

            }

         }
         if ( (globaldef002976.globaldef000160 & FL_MONSTER) ) {

            if ( (globaldef002976.globaldef000107 == globaldef001680) ) {

               bprint (globaldef003060);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001661) ) {

               bprint (globaldef003061);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001667) ) {

               bprint (globaldef003062);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001708) ) {

               bprint (globaldef003063);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001675) ) {

               bprint (globaldef003064);

            }
            if ( (globaldef002976.globaldef000107 == globaldef003065) ) {

               bprint (globaldef003066);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001669) ) {

               bprint (globaldef003067);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001551) ) {

               bprint (globaldef003068);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001625) ) {

               bprint (globaldef003069);

            }
            if ( (globaldef002976.globaldef000107 == globaldef003070) ) {

               bprint (globaldef003071);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001682) ) {

               bprint (globaldef003072);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001659) ) {

               bprint (globaldef003073);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001671) ) {

               bprint (globaldef003074);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001673) ) {

               bprint (globaldef003075);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001663) ) {

               bprint (globaldef003076);

            }
            if ( (globaldef002976.globaldef000107 == globaldef001665) ) {

               bprint (globaldef003077);

            }
            return ;

         }
         if ( (globaldef002976.globaldef000107 == globaldef003078) ) {

            bprint (globaldef003079);
            return ;

         }
         if ( ((globaldef002976.globaldef000082 == SOLID_BSP) && (globaldef002976 != world)) ) {

            bprint (globaldef003080);
            return ;

         }
         if ( (globaldef002975.globaldef000381 == globaldef002965) ) {

            globaldef002975.globaldef000381 = globaldef001466;
            bprint (globaldef003081);
            return ;

         }
         if ( ((globaldef002976.globaldef000107 == globaldef003082) || (globaldef002976.globaldef000107 == globaldef003083)) ) {

            bprint (globaldef003084);
            return ;

         }
         if ( (globaldef002976.globaldef000107 == globaldef003085) ) {

            bprint (globaldef003086);
            return ;

         }
         if ( (globaldef002976.globaldef000107 == globaldef002924) ) {

            bprint (globaldef003087);
            return ;

         }
         bprint (globaldef003088);

      }

   }

};
