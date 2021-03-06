
void () movetarget_f;

void () t_movetarget;

void () knight_walk1;

void () knight_bow6;

void () knight_bow1;
float current_yaw /* = 0.000 */;
entity sight_entity;
float sight_entity_time /* = 0.000 */;

// function anglemod
// function number 90 begins at statement 658
/*
 * OP_GE	1089	1090	1091
 * OP_IFNOT	1091	4	0
 * OP_SUB_F	1089	1090	1092
 * OP_STORE_F	1092	1089	0
 * OP_GOTO	-4	0	0
 * OP_LT	1089	337	1093
 * OP_IFNOT	1093	4	0
 * OP_ADD_F	1089	1090	1094
 * OP_STORE_F	1094	1089	0
 * OP_GOTO	-4	0	0
 * OP_RETURN	1089	0	0
 * OP_DONE	0	0	0
 */
float (float v) anglemod = {

   while ( (v >= 360.000) ) {

      v = (v - 360.000);

   }
   while ( (v < MSG_BROADCAST) ) {

      v = (v + 360.000);

   }
   return ( v );

};

// function movetarget_f
// function number 91 begins at statement 670
/*
 * OP_LOAD_S	28	197	1095
 * OP_NOT_S	1095	0	1096
 * OP_IFNOT	1096	3	0
 * OP_STORE_V	1097	4	0
 * OP_CALL1	456	0	0
 * 130	28	104	1098
 * OP_STOREP_F	238	1098	0
 * OP_ADDRESS	28	146	1099
 * OP_STOREP_FNC	1082	1099	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1100	7	0
 * OP_STORE_V	1103	10	0
 * OP_CALL3	450	0	0
 * OP_DONE	0	0	0
 */

void () movetarget_f = {

   if ( !self.targetname ) {

      objerror ("monster_movetarget: no targetname");

   }
   self.solid = SOLID_TRIGGER;
   self.touch = t_movetarget;
   setsize (self,'-8.000 -8.000 -8.000','8.000 8.000 8.000');

};

// function path_corner
// function number 92 begins at statement 684
/*
 * OP_CALL0	1081	0	0
 * OP_DONE	0	0	0
 */

void () path_corner = {

   movetarget_f ();

};

// function t_movetarget
// function number 93 begins at statement 686
/*
 * OP_LOAD_ENT	29	418	1108
 * OP_NE_E	1108	28	1109
 * OP_IFNOT	1109	2	0
 * OP_RETURN	0	0	0
 * 127	29	181	1110
 * OP_IFNOT	1110	2	0
 * OP_RETURN	0	0	0
 * 134	28	1107	0
 * OP_STORE_ENT	29	28	0
 * OP_STORE_ENT	1107	29	0
 * OP_LOAD_S	28	129	1111
 * OP_EQ_S	1111	1112	1113
 * OP_IFNOT	1113	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1114	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * 130	28	194	1115
 * OP_ADDRESS	28	418	1116
 * OP_LOAD_S	29	196	1117
 * OP_STORE_V	30	4	0
 * OP_STORE_V	197	7	0
 * OP_STORE_V	1117	10	0
 * OP_CALL3	463	0	0
 * OP_STOREP_ENT	1	1116	0
 * OP_STOREP_ENT	1	1115	0
 * OP_ADDRESS	28	191	1118
 * OP_LOAD_ENT	28	194	1119
 * OP_LOAD_V	1119	105	1120
 * OP_LOAD_V	28	105	1123
 * OP_SUB_V	1120	1123	1126
 * OP_STORE_V	1126	4	0
 * OP_CALL1	458	0	0
 * OP_STOREP_F	1	1118	0
 * OP_LOAD_ENT	28	418	1129
 * OP_NOT_ENT	1129	0	1130
 * OP_IFNOT	1130	7	0
 * OP_ADDRESS	28	417	1131
 * OP_ADD_F	31	1132	1133
 * OP_STOREP_F	1133	1131	0
 * OP_LOAD_FNC	28	356	1134
 * OP_CALL0	1134	0	0
 * OP_RETURN	0	0	0
 * 100	0	0	0
 * OP_LOAD_V	28	105	1143
 * OP_LOAD_V	28	166	1146
 * OP_ADD_V	1143	1146	1149
 * OP_STORE_V	1149	1136	0
 * OP_LOAD_V	1135	105	1152
 * OP_LOAD_V	1135	166	1155
 * OP_ADD_V	1152	1155	1158
 * OP_STORE_V	1158	1139	0
 * OP_SUB_V	1136	1139	1161
 * OP_STORE_V	1161	4	0
 * OP_CALL1	457	0	0
 * OP_STORE_F	1	1142	0
 * OP_LT	1142	1164	1165
 * OP_IFNOT	1165	2	0
 * OP_RETURN	242	0	0
 * OP_LT	1142	1166	1167
 * OP_IFNOT	1167	2	0
 * OP_RETURN	243	0	0
 * OP_LT	1142	1168	1169
 * OP_IFNOT	1169	2	0
 * OP_RETURN	244	0	0
 * OP_RETURN	245	0	0
 * OP_DONE	0	0	0
 */

void () t_movetarget = {

   local entity temp;

   if ( (other.movetarget != self) ) {

      return ;

   }
   if ( other.enemy ) {

      return ;

   }
   temp = self;
   self = other;
   other = temp;
   if ( (self.classname == "monster_ogre") ) {

      sound (self,CHAN_VOICE,"ogre/ogdrag.wav",AS_STRAIGHT,ATTN_IDLE);

   }
   self.movetarget = find (world,targetname,other.target);
   self.goalentity = find (world,targetname,other.target);
   self.ideal_yaw = vectoyaw ((self.goalentity.origin - self.origin));
   if ( !self.movetarget ) {

      self.pausetime = (time + 999999.000);
      self.th_stand ();
      return ;

   }

};

// function range
// function number 94 begins at statement 732
/*
 * OP_LOAD_V	28	105	1143
 * OP_LOAD_V	28	166	1146
 * OP_ADD_V	1143	1146	1149
 * OP_STORE_V	1149	1136	0
 * OP_LOAD_V	1135	105	1152
 * OP_LOAD_V	1135	166	1155
 * OP_ADD_V	1152	1155	1158
 * OP_STORE_V	1158	1139	0
 * OP_SUB_V	1136	1139	1161
 * OP_STORE_V	1161	4	0
 * OP_CALL1	457	0	0
 * OP_STORE_F	1	1142	0
 * OP_LT	1142	1164	1165
 * OP_IFNOT	1165	2	0
 * OP_RETURN	242	0	0
 * 122	1142	1166	1167
 * OP_IFNOT	1167	2	0
 * OP_RETURN	243	0	0
 * 122	1142	1168	1169
 * OP_IFNOT	1169	2	0
 * OP_RETURN	244	0	0
 * 143	245	0	0
 * OP_DONE	0	0	0
 */
float (entity targ) range = {

   local vector spot1;
   local vector spot2;
   local float r;

   spot1 = (self.origin + self.view_ofs);
   spot2 = (targ.origin + targ.view_ofs);
   r = vlen ((spot1 - spot2));
   if ( (r < 120.000) ) {

      return ( RANGE_MELEE );

   }
   if ( (r < 500.000) ) {

      return ( RANGE_NEAR );

   }
   if ( (r < 1000.000) ) {

      return ( RANGE_MID );

   }
   return ( RANGE_FAR );

};

// function visible
// function number 95 begins at statement 755
/*
 * OP_LOAD_V	28	105	1177
 * OP_LOAD_V	28	166	1180
 * OP_ADD_V	1177	1180	1183
 * OP_STORE_V	1183	1171	0
 * OP_LOAD_V	1170	105	1186
 * OP_LOAD_V	1170	166	1189
 * OP_ADD_V	1186	1189	1192
 * OP_STORE_V	1192	1174	0
 * OP_STORE_V	1171	4	0
 * OP_STORE_V	1174	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	461	0	0
 * OP_AND	79	80	1195
 * OP_IFNOT	1195	2	0
 * OP_RETURN	213	0	0
 * 110	70	368	1196
 * OP_IFNOT	1196	2	0
 * OP_RETURN	214	0	0
 * 143	213	0	0
 * OP_DONE	0	0	0
 */
float (entity targ) visible = {

   local vector spot1;
   local vector spot2;

   spot1 = (self.origin + self.view_ofs);
   spot2 = (targ.origin + targ.view_ofs);
   traceline (spot1,spot2,TRUE,self);
   if ( (trace_inopen && trace_inwater) ) {

      return ( FALSE );

   }
   if ( (trace_fraction == AS_STRAIGHT) ) {

      return ( TRUE );

   }
   return ( FALSE );

};

// function infront
// function number 96 begins at statement 776
/*
 * OP_LOAD_V	28	117	1202
 * OP_STORE_V	1202	4	0
 * OP_CALL1	447	0	0
 * OP_LOAD_V	1197	105	1205
 * OP_LOAD_V	28	105	1208
 * OP_SUB_V	1205	1208	1211
 * OP_STORE_V	1211	4	0
 * OP_CALL1	454	0	0
 * OP_STORE_V	1	1198	0
 * OP_MUL_V	1198	59	1214
 * OP_STORE_F	1214	1201	0
 * OP_GT	1201	987	1215
 * OP_IFNOT	1215	2	0
 * OP_RETURN	214	0	0
 * 143	213	0	0
 * OP_DONE	0	0	0
 */
float (entity targ) infront = {

   local vector vec;
   local float dot;

   makevectors (self.angles);
   vec = normalize ((targ.origin - self.origin));
   dot = (vec * v_forward);
   if ( (dot > 0.300) ) {

      return ( TRUE );

   }
   return ( FALSE );

};

// function HuntTarget
// function number 97 begins at statement 792
/*
 * OP_ADDRESS	28	194	1217
 * OP_LOAD_ENT	28	181	1218
 * OP_STOREP_ENT	1218	1217	0
 * OP_ADDRESS	28	148	1219
 * OP_LOAD_FNC	28	358	1220
 * OP_STOREP_FNC	1220	1219	0
 * OP_ADDRESS	28	191	1221
 * OP_LOAD_ENT	28	181	1222
 * OP_LOAD_V	1222	105	1223
 * OP_LOAD_V	28	105	1226
 * OP_SUB_V	1223	1226	1229
 * OP_STORE_V	1229	4	0
 * OP_CALL1	458	0	0
 * OP_STOREP_F	1	1221	0
 * OP_ADDRESS	28	150	1232
 * OP_ADD_F	31	603	1233
 * OP_STOREP_F	1233	1232	0
 * OP_STORE_V	368	4	0
 * OP_CALL1	731	0	0
 * OP_DONE	0	0	0
 */

void () HuntTarget = {

   self.goalentity = self.enemy;
   self.think = self.th_run;
   self.ideal_yaw = vectoyaw ((self.enemy.origin - self.origin));
   self.nextthink = (time + 0.100);
   SUB_AttackFinished (AS_STRAIGHT);

};

// function SightSound
// function number 98 begins at statement 812
/*
 * OP_LOAD_S	28	129	1236
 * OP_EQ_S	1236	1112	1237
 * OP_IFNOT	1237	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1238	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	152	0	0
 * OP_LOAD_S	28	129	1239
 * OP_EQ_S	1239	823	1240
 * OP_IFNOT	1240	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1241	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	142	0	0
 * OP_LOAD_S	28	129	1242
 * OP_EQ_S	1242	1243	1244
 * OP_IFNOT	1244	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1245	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	132	0	0
 * OP_LOAD_S	28	129	1246
 * OP_EQ_S	1246	1247	1248
 * OP_IFNOT	1248	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1249	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	122	0	0
 * OP_LOAD_S	28	129	1250
 * OP_EQ_S	1250	1251	1252
 * OP_IFNOT	1252	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1253	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	112	0	0
 * OP_LOAD_S	28	129	1254
 * OP_EQ_S	1254	1255	1256
 * OP_IFNOT	1256	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1257	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	102	0	0
 * OP_LOAD_S	28	129	1258
 * OP_EQ_S	1258	1259	1260
 * OP_IFNOT	1260	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1261	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	92	0	0
 * OP_LOAD_S	28	129	1262
 * OP_EQ_S	1262	1263	1264
 * OP_IFNOT	1264	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1265	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	82	0	0
 * OP_LOAD_S	28	129	1266
 * OP_EQ_S	1266	1267	1268
 * OP_IFNOT	1268	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1269	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	72	0	0
 * OP_LOAD_S	28	129	1270
 * OP_EQ_S	1270	1271	1272
 * OP_IFNOT	1272	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1273	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	62	0	0
 * OP_LOAD_S	28	129	1274
 * OP_EQ_S	1274	1275	1276
 * OP_IFNOT	1276	40	0
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	370	1277
 * OP_STORE_V	1277	4	0
 * OP_CALL1	480	0	0
 * OP_STORE_F	1	1235	0
 * OP_EQ_F	1235	368	1278
 * OP_IFNOT	1278	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1279	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	25	0	0
 * OP_EQ_F	1235	369	1280
 * OP_IFNOT	1280	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1281	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	16	0	0
 * OP_EQ_F	1235	337	1282
 * OP_IFNOT	1282	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1283	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1284	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * 361	20	0	0
 * OP_LOAD_S	28	129	1285
 * OP_EQ_S	1285	1286	1287
 * OP_IFNOT	1287	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1288	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	10	0	0
 * OP_LOAD_S	28	129	1289
 * OP_EQ_S	1289	1290	1291
 * OP_IFNOT	1291	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1292	10	0
 * OP_STORE_V	368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * 1300	0	0	0
 * OP_LOAD_ENT	28	181	1294
 * OP_LOAD_S	1294	129	1295
 * OP_EQ_S	1295	712	1296
 * OP_IFNOT	1296	3	0
 * OP_STORE_ENT	28	1087	0
 * OP_STORE_F	31	1088	0
 * OP_ADDRESS	28	388	1297
 * OP_ADD_F	31	368	1298
 * OP_STOREP_F	1298	1297	0
 * OP_CALL0	1234	0	0
 * OP_CALL0	1216	0	0
 * OP_DONE	0	0	0
 */

void () SightSound = {

   local float rsnd;

   if ( (self.classname == "monster_ogre") ) {

      sound (self,CHAN_VOICE,"ogre/ogwake.wav",AS_STRAIGHT,ATTN_NORM);

   } else {

      if ( (self.classname == "monster_knight") ) {

         sound (self,CHAN_VOICE,"knight/ksight.wav",AS_STRAIGHT,ATTN_NORM);

      } else {

         if ( (self.classname == "monster_shambler") ) {

            sound (self,CHAN_VOICE,"shambler/ssight.wav",AS_STRAIGHT,ATTN_NORM);

         } else {

            if ( (self.classname == "monster_demon1") ) {

               sound (self,CHAN_VOICE,"demon/sight2.wav",AS_STRAIGHT,ATTN_NORM);

            } else {

               if ( (self.classname == "monster_wizard") ) {

                  sound (self,CHAN_VOICE,"wizard/wsight.wav",AS_STRAIGHT,ATTN_NORM);

               } else {

                  if ( (self.classname == "monster_zombie") ) {

                     sound (self,CHAN_VOICE,"zombie/z_idle.wav",AS_STRAIGHT,ATTN_NORM);

                  } else {

                     if ( (self.classname == "monster_dog") ) {

                        sound (self,CHAN_VOICE,"dog/dsight.wav",AS_STRAIGHT,ATTN_NORM);

                     } else {

                        if ( (self.classname == "monster_hell_knight") ) {

                           sound (self,CHAN_VOICE,"hknight/sight1.wav",AS_STRAIGHT,ATTN_NORM);

                        } else {

                           if ( (self.classname == "monster_tarbaby") ) {

                              sound (self,CHAN_VOICE,"blob/sight1.wav",AS_STRAIGHT,ATTN_NORM);

                           } else {

                              if ( (self.classname == "monster_vomit") ) {

                                 sound (self,CHAN_VOICE,"vomitus/v_sight1.wav",AS_STRAIGHT,ATTN_NORM);

                              } else {

                                 if ( (self.classname == "monster_enforcer") ) {

                                    rsnd = rint ((random () * AS_MELEE));
                                    if ( (rsnd == AS_STRAIGHT) ) {

                                       sound (self,CHAN_VOICE,"enforcer/sight1.wav",AS_STRAIGHT,ATTN_NORM);

                                    } else {

                                       if ( (rsnd == AS_SLIDING) ) {

                                          sound (self,CHAN_VOICE,"enforcer/sight2.wav",AS_STRAIGHT,ATTN_NORM);

                                       } else {

                                          if ( (rsnd == MSG_BROADCAST) ) {

                                             sound (self,CHAN_VOICE,"enforcer/sight3.wav",AS_STRAIGHT,ATTN_NORM);

                                          } else {

                                             sound (self,CHAN_VOICE,"enforcer/sight4.wav",AS_STRAIGHT,ATTN_NORM);

                                          }

                                       }

                                    }

                                 } else {

                                    if ( (self.classname == "monster_army") ) {

                                       sound (self,CHAN_VOICE,"soldier/sight1.wav",AS_STRAIGHT,ATTN_NORM);

                                    } else {

                                       if ( (self.classname == "monster_shalrath") ) {

                                          sound (self,CHAN_VOICE,"shalrath/sight.wav",AS_STRAIGHT,ATTN_NORM);

                                       }

                                    }

                                 }

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }

   }

};

// function FoundTarget
// function number 99 begins at statement 974
/*
 * OP_LOAD_ENT	28	181	1294
 * OP_LOAD_S	1294	129	1295
 * OP_EQ_S	1295	712	1296
 * OP_IFNOT	1296	3	0
 * OP_STORE_ENT	28	1087	0
 * OP_STORE_F	31	1088	0
 * 130	28	388	1297
 * OP_ADD_F	31	368	1298
 * OP_STOREP_F	1298	1297	0
 * OP_CALL0	1234	0	0
 * OP_CALL0	1216	0	0
 * OP_DONE	0	0	0
 */

void () FoundTarget = {

   if ( (self.enemy.classname == "player") ) {

      sight_entity = self;
      sight_entity_time = time;

   }
   self.show_hostile = (time + AS_STRAIGHT);
   SightSound ();
   HuntTarget ();

};

// function FindTarget
// function number 100 begins at statement 986
/*
 * OP_SUB_F	31	603	1302
 * OP_GE	1088	1302	1303
 * OP_LOAD_F	28	195	1304
 * OP_BITAND	1304	370	1305
 * OP_NOT_F	1305	0	1306
 * OP_AND	1303	1306	1307
 * OP_IFNOT	1307	8	0
 * OP_STORE_ENT	1087	1300	0
 * OP_LOAD_ENT	1300	181	1308
 * OP_LOAD_ENT	28	181	1309
 * OP_EQ_E	1308	1309	1310
 * OP_IFNOT	1310	2	0
 * OP_RETURN	214	0	0
 * 161	6	0	0
 * OP_CALL0	462	0	0
 * OP_STORE_ENT	1	1300	0
 * OP_NOT_ENT	1300	0	1311
 * OP_IFNOT	1311	2	0
 * OP_RETURN	213	0	0
 * 227	28	181	1312
 * OP_EQ_E	1300	1312	1313
 * OP_IFNOT	1313	2	0
 * OP_RETURN	213	0	0
 * 124	1300	182	1314
 * OP_BITAND	1314	221	1315
 * OP_IFNOT	1315	2	0
 * OP_RETURN	213	0	0
 * 124	1300	162	1316
 * OP_BITAND	1316	272	1317
 * OP_IFNOT	1317	2	0
 * OP_RETURN	213	0	0
 * 132	1300	4	0
 * OP_CALL1	856	0	0
 * OP_STORE_F	1	1301	0
 * OP_EQ_F	1301	245	1318
 * OP_IFNOT	1318	2	0
 * OP_RETURN	213	0	0
 * 132	1300	4	0
 * OP_CALL1	737	0	0
 * OP_NOT_F	1	0	1319
 * OP_IFNOT	1319	2	0
 * OP_RETURN	213	0	0
 * 110	1301	243	1320
 * OP_IFNOT	1320	10	0
 * OP_LOAD_F	1300	388	1321
 * OP_LT	1321	31	1322
 * OP_STORE_V	1300	4	0
 * OP_CALL1	855	0	0
 * OP_NOT_F	1	0	1323
 * OP_AND	1322	1323	1324
 * OP_IFNOT	1324	2	0
 * OP_RETURN	213	0	0
 * 161	8	0	0
 * OP_EQ_F	1301	244	1325
 * OP_IFNOT	1325	6	0
 * OP_STORE_V	1300	4	0
 * OP_CALL1	855	0	0
 * OP_NOT_F	1	0	1326
 * OP_IFNOT	1326	2	0
 * OP_RETURN	213	0	0
 * 330	28	181	1327
 * OP_STOREP_ENT	1300	1327	0
 * OP_LOAD_ENT	28	181	1328
 * OP_LOAD_S	1328	129	1329
 * OP_NE_S	1329	712	1330
 * OP_IFNOT	1330	12	0
 * OP_ADDRESS	28	181	1331
 * OP_LOAD_ENT	28	181	1332
 * OP_LOAD_ENT	1332	181	1333
 * OP_STOREP_ENT	1333	1331	0
 * OP_LOAD_ENT	28	181	1334
 * OP_LOAD_S	1334	129	1335
 * OP_NE_S	1335	712	1336
 * OP_IFNOT	1336	4	0
 * OP_ADDRESS	28	181	1337
 * OP_STOREP_ENT	30	1337	0
 * OP_RETURN	213	0	0
 * 251	1293	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () FindTarget = {

   local entity client;
   local float r;

   if ( ((sight_entity_time >= (time - 0.100)) && !(self.spawnflags & AS_MELEE)) ) {

      client = sight_entity;
      if ( (client.enemy == self.enemy) ) {

         return ( TRUE );

      }

   } else {

      client = checkclient ();
      if ( !client ) {

         return ( FALSE );

      }

   }
   if ( (client == self.enemy) ) {

      return ( FALSE );

   }
   if ( (client.flags & FL_NOTARGET) ) {

      return ( FALSE );

   }
   if ( (client.items & IT_INVISIBILITY) ) {

      return ( FALSE );

   }
   r = range (client);
   if ( (r == RANGE_FAR) ) {

      return ( FALSE );

   }
   if ( !visible (client) ) {

      return ( FALSE );

   }
   if ( (r == RANGE_NEAR) ) {

      if ( ((client.show_hostile < time) && !infront (client)) ) {

         return ( FALSE );

      }

   } else {

      if ( (r == RANGE_MID) ) {

         if ( !infront (client) ) {

            return ( FALSE );

         }

      }

   }
   self.enemy = client;
   if ( (self.enemy.classname != "player") ) {

      self.enemy = self.enemy.enemy;
      if ( (self.enemy.classname != "player") ) {

         self.enemy = world;
         return ( FALSE );

      }

   }
   FoundTarget ();
   return ( TRUE );

};

// function ai_forward
// function number 101 begins at statement 1066
/*
 * OP_LOAD_F	28	119	1340
 * OP_STORE_V	1340	4	0
 * OP_STORE_V	1339	7	0
 * OP_CALL2	477	0	0
 * OP_DONE	0	0	0
 */

void (float dist) ai_forward = {

   walkmove (self.angles_y,dist);

};

// function ai_back
// function number 102 begins at statement 1071
/*
 * OP_LOAD_F	28	119	1343
 * OP_ADD_F	1343	1344	1345
 * OP_STORE_V	1345	4	0
 * OP_STORE_V	1342	7	0
 * OP_CALL2	477	0	0
 * OP_DONE	0	0	0
 */

void (float dist) ai_back = {

   walkmove ((self.angles_y + 180.000),dist);

};

// function ai_pain
// function number 103 begins at statement 1077
/*
 * OP_STORE_V	1347	4	0
 * OP_CALL1	1341	0	0
 * OP_DONE	0	0	0
 */

void (float dist) ai_pain = {

   ai_back (dist);

};

// function ai_painforward
// function number 104 begins at statement 1080
/*
 * OP_LOAD_F	28	191	1350
 * OP_STORE_V	1350	4	0
 * OP_STORE_V	1349	7	0
 * OP_CALL2	477	0	0
 * OP_DONE	0	0	0
 */

void (float dist) ai_painforward = {

   walkmove (self.ideal_yaw,dist);

};

// function ai_walk
// function number 105 begins at statement 1085
/*
 * OP_STORE_F	1352	341	0
 * OP_LOAD_S	28	129	1356
 * OP_EQ_S	1356	1357	1358
 * OP_IFNOT	1358	4	0
 * OP_STORE_V	1352	4	0
 * OP_CALL1	501	0	0
 * OP_RETURN	0	0	0
 * 151	1299	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * 132	1352	4	0
 * OP_CALL1	501	0	0
 * OP_DONE	0	0	0
 */

void (float dist) ai_walk = {

   local vector mtemp;

   movedist = dist;
   if ( (self.classname == "monster_dragon") ) {

      movetogoal (dist);
      return ;

   }
   if ( FindTarget () ) {

      return ;

   }
   movetogoal (dist);

};

// function ai_stand
// function number 106 begins at statement 1098
/*
 * OP_CALL0	1299	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * 124	28	417	1360
 * OP_GT	31	1360	1361
 * OP_IFNOT	1361	4	0
 * OP_LOAD_FNC	28	357	1362
 * OP_CALL0	1362	0	0
 * OP_RETURN	0	0	0
 * 100	0	0	0
 * OP_CALL0	1299	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	491	0	0
 * OP_DONE	0	0	0
 */

void () ai_stand = {

   if ( FindTarget () ) {

      return ;

   }
   if ( (time > self.pausetime) ) {

      self.th_walk ();
      return ;

   }

};

// function ai_turn
// function number 107 begins at statement 1108
/*
 * OP_CALL0	1299	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * 151	491	0	0
 * OP_DONE	0	0	0
 */

void () ai_turn = {

   if ( FindTarget () ) {

      return ;

   }
   ChangeYaw ();

};

// function ChooseTurn
// function number 108 begins at statement 1113
/*
 * OP_LOAD_V	28	105	1373
 * OP_SUB_V	1373	1364	1376
 * OP_STORE_V	1376	1367	0
 * OP_STORE_F	75	1370	0
 * OP_SUB_F	337	74	1379
 * OP_STORE_F	1379	1371	0
 * OP_STORE_F	337	1372	0
 * OP_MUL_V	1367	1370	1380
 * OP_GT	1380	337	1381
 * OP_IFNOT	1381	5	0
 * OP_SUB_F	337	75	1382
 * OP_STORE_F	1382	1367	0
 * OP_STORE_F	74	1368	0
 * OP_GOTO	4	0	0
 * OP_STORE_F	75	1367	0
 * OP_SUB_F	337	74	1383
 * OP_STORE_F	1383	1368	0
 * 131	337	1369	0
 * OP_ADDRESS	28	191	1384
 * OP_STORE_V	1367	4	0
 * OP_CALL1	458	0	0
 * OP_STOREP_F	1	1384	0
 * OP_DONE	0	0	0
 */

void (vector dest3) ChooseTurn = {

   local vector dir;
   local vector newdir;

   dir = (self.origin - dest3);
   newdir_x = trace_plane_normal_y;
   newdir_y = (MSG_BROADCAST - trace_plane_normal_x);
   newdir_z = MSG_BROADCAST;
   if ( ((dir * newdir) > MSG_BROADCAST) ) {

      dir_x = (MSG_BROADCAST - trace_plane_normal_y);
      dir_y = trace_plane_normal_x;

   } else {

      dir_x = trace_plane_normal_y;
      dir_y = (MSG_BROADCAST - trace_plane_normal_x);

   }
   dir_z = MSG_BROADCAST;
   self.ideal_yaw = vectoyaw (dir);

};

// function FacingIdeal
// function number 109 begins at statement 1136
/*
 * OP_LOAD_F	28	119	1387
 * OP_LOAD_F	28	191	1388
 * OP_SUB_F	1387	1388	1389
 * OP_STORE_V	1389	4	0
 * OP_CALL1	747	0	0
 * OP_STORE_F	1	1386	0
 * OP_GT	1386	1390	1391
 * OP_LT	1386	1392	1393
 * OP_AND	1391	1393	1394
 * OP_IFNOT	1394	2	0
 * OP_RETURN	213	0	0
 * 143	214	0	0
 * OP_DONE	0	0	0
 */
float () FacingIdeal = {

   local float delta;

   delta = anglemod ((self.angles_y - self.ideal_yaw));
   if ( ((delta > 45.000) && (delta < 315.000)) ) {

      return ( FALSE );

   }
   return ( TRUE );

};
float () WizardCheckAttack;
float () DogCheckAttack;

// function CheckAnyAttack
// function number 110 begins at statement 1149
/*
 * OP_NOT_F	759	0	1398
 * OP_IFNOT	1398	2	0
 * OP_RETURN	213	0	0
 * 126	28	129	1399
 * OP_EQ_S	1399	1286	1400
 * OP_IFNOT	1400	3	0
 * OP_CALL0	948	0	0
 * OP_RETURN	1	0	0
 * 126	28	129	1401
 * OP_EQ_S	1401	1112	1402
 * OP_IFNOT	1402	3	0
 * OP_CALL0	1037	0	0
 * OP_RETURN	1	0	0
 * 126	28	129	1403
 * OP_EQ_S	1403	1243	1404
 * OP_IFNOT	1404	3	0
 * OP_CALL0	992	0	0
 * OP_RETURN	1	0	0
 * 126	28	129	1405
 * OP_EQ_S	1405	1247	1406
 * OP_IFNOT	1406	3	0
 * OP_CALL0	755	0	0
 * OP_RETURN	1	0	0
 * 126	28	129	1407
 * OP_EQ_S	1407	1259	1408
 * OP_IFNOT	1408	3	0
 * OP_CALL0	1396	0	0
 * OP_RETURN	1	0	0
 * 126	28	129	1409
 * OP_EQ_S	1409	1251	1410
 * OP_IFNOT	1410	3	0
 * OP_CALL0	1395	0	0
 * OP_RETURN	1	0	0
 * 151	790	0	0
 * OP_RETURN	1	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ () CheckAnyAttack = {

   if ( !enemy_vis ) {

      return ( FALSE );

   }
   if ( (self.classname == "monster_army") ) {

      return ( SoldierCheckAttack () );

   }
   if ( (self.classname == "monster_ogre") ) {

      return ( OgreCheckAttack () );

   }
   if ( (self.classname == "monster_shambler") ) {

      return ( ShamCheckAttack () );

   }
   if ( (self.classname == "monster_demon1") ) {

      return ( DemonCheckAttack () );

   }
   if ( (self.classname == "monster_dog") ) {

      return ( DogCheckAttack () );

   }
   if ( (self.classname == "monster_wizard") ) {

      return ( WizardCheckAttack () );

   }
   return ( CheckAttack () );

};

// function ai_run_melee
// function number 111 begins at statement 1185
/*
 * OP_ADDRESS	28	191	1412
 * OP_STOREP_F	762	1412	0
 * OP_CALL0	491	0	0
 * OP_CALL0	1385	0	0
 * OP_IFNOT	1	5	0
 * OP_LOAD_FNC	28	360	1413
 * OP_CALL0	1413	0	0
 * OP_ADDRESS	28	367	1414
 * OP_STOREP_F	368	1414	0
 * 100	0	0	0
 * OP_ADDRESS	28	191	1416
 * OP_STOREP_F	762	1416	0
 * OP_CALL0	491	0	0
 * OP_CALL0	1385	0	0
 * OP_IFNOT	1	5	0
 * OP_LOAD_FNC	28	359	1417
 * OP_CALL0	1417	0	0
 * OP_ADDRESS	28	367	1418
 * OP_STOREP_F	368	1418	0
 * OP_DONE	0	0	0
 */

void () ai_run_melee = {

   self.ideal_yaw = enemy_yaw;
   ChangeYaw ();
   if ( FacingIdeal () ) {

      self.th_melee ();
      self.attack_state = AS_STRAIGHT;

   }

};

// function ai_run_missile
// function number 112 begins at statement 1195
/*
 * OP_ADDRESS	28	191	1416
 * OP_STOREP_F	762	1416	0
 * OP_CALL0	491	0	0
 * OP_CALL0	1385	0	0
 * OP_IFNOT	1	5	0
 * OP_LOAD_FNC	28	359	1417
 * OP_CALL0	1417	0	0
 * OP_ADDRESS	28	367	1418
 * OP_STOREP_F	368	1418	0
 * 100	0	0	0
 * OP_ADDRESS	28	191	1421
 * OP_STOREP_F	762	1421	0
 * OP_CALL0	491	0	0
 * OP_LOAD_F	28	365	1422
 * OP_IFNOT	1422	3	0
 * OP_STORE_F	1423	1420	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	1424	1420	0
 * OP_LOAD_F	28	191	1425
 * OP_ADD_F	1425	1420	1426
 * OP_STORE_V	1426	4	0
 * OP_STORE_V	341	7	0
 * OP_CALL2	477	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	365	1427
 * OP_LOAD_F	28	365	1428
 * OP_SUB_F	368	1428	1429
 * OP_STOREP_F	1429	1427	0
 * OP_LOAD_F	28	191	1430
 * OP_SUB_F	1430	1420	1431
 * OP_STORE_V	1431	4	0
 * OP_STORE_V	341	7	0
 * OP_CALL2	477	0	0
 * OP_DONE	0	0	0
 */

void () ai_run_missile = {

   self.ideal_yaw = enemy_yaw;
   ChangeYaw ();
   if ( FacingIdeal () ) {

      self.th_missile ();
      self.attack_state = AS_STRAIGHT;

   }

};

// function ai_run_slide
// function number 113 begins at statement 1205
/*
 * OP_ADDRESS	28	191	1421
 * OP_STOREP_F	762	1421	0
 * OP_CALL0	491	0	0
 * OP_LOAD_F	28	365	1422
 * OP_IFNOT	1422	3	0
 * OP_STORE_F	1423	1420	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	1424	1420	0
 * 124	28	191	1425
 * OP_ADD_F	1425	1420	1426
 * OP_STORE_V	1426	4	0
 * OP_STORE_V	341	7	0
 * OP_CALL2	477	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * 130	28	365	1427
 * OP_LOAD_F	28	365	1428
 * OP_SUB_F	368	1428	1429
 * OP_STOREP_F	1429	1427	0
 * OP_LOAD_F	28	191	1430
 * OP_SUB_F	1430	1420	1431
 * OP_STORE_V	1431	4	0
 * OP_STORE_V	341	7	0
 * OP_CALL2	477	0	0
 * OP_DONE	0	0	0
 */

void () ai_run_slide = {

   local float ofs;

   self.ideal_yaw = enemy_yaw;
   ChangeYaw ();
   if ( self.lefty ) {

      ofs = 90.000;

   } else {

      ofs = -90.000;

   }
   if ( walkmove ((self.ideal_yaw + ofs),movedist) ) {

      return ;

   }
   self.lefty = (AS_STRAIGHT - self.lefty);
   walkmove ((self.ideal_yaw - ofs),movedist);

};

// function ai_run
// function number 114 begins at statement 1230
/*
 * OP_STORE_F	1433	341	0
 * OP_LOAD_ENT	28	181	1442
 * OP_LOAD_F	1442	152	1443
 * OP_LE	1443	337	1444
 * OP_IFNOT	1444	20	0
 * OP_ADDRESS	28	181	1445
 * OP_STOREP_ENT	30	1445	0
 * OP_LOAD_ENT	28	363	1446
 * OP_LOAD_F	1446	152	1447
 * OP_GT	1447	337	1448
 * OP_IFNOT	1448	6	0
 * OP_ADDRESS	28	181	1449
 * OP_LOAD_ENT	28	363	1450
 * OP_STOREP_ENT	1450	1449	0
 * OP_CALL0	1216	0	0
 * OP_GOTO	9	0	0
 * OP_LOAD_ENT	28	418	1451
 * OP_IFNOT	1451	4	0
 * OP_LOAD_FNC	28	357	1452
 * OP_CALL0	1452	0	0
 * OP_GOTO	3	0	0
 * OP_LOAD_FNC	28	356	1453
 * OP_CALL0	1453	0	0
 * 143	0	0	0
 * 230	28	388	1454
 * OP_ADD_F	31	368	1455
 * OP_STOREP_F	1455	1454	0
 * OP_LOAD_ENT	28	181	1456
 * OP_STORE_V	1456	4	0
 * OP_CALL1	737	0	0
 * OP_STORE_F	1	759	0
 * OP_IFNOT	759	4	0
 * OP_ADDRESS	28	366	1457
 * OP_ADD_F	31	313	1458
 * OP_STOREP_F	1458	1457	0
 * 124	28	366	1459
 * OP_LT	1459	31	1460
 * OP_AND	36	1460	1461
 * OP_IFNOT	1461	4	0
 * OP_CALL0	1299	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * 227	28	181	1462
 * OP_STORE_V	1462	4	0
 * OP_CALL1	855	0	0
 * OP_STORE_F	1	760	0
 * OP_LOAD_ENT	28	181	1463
 * OP_STORE_V	1463	4	0
 * OP_CALL1	856	0	0
 * OP_STORE_F	1	761	0
 * OP_LOAD_ENT	28	181	1464
 * OP_LOAD_V	1464	105	1465
 * OP_LOAD_V	28	105	1468
 * OP_SUB_V	1465	1468	1471
 * OP_STORE_V	1471	4	0
 * OP_CALL1	458	0	0
 * OP_STORE_F	1	762	0
 * OP_LOAD_F	28	367	1474
 * OP_EQ_F	1474	371	1475
 * OP_IFNOT	1475	3	0
 * OP_CALL0	1415	0	0
 * OP_RETURN	0	0	0
 * 124	28	367	1476
 * OP_EQ_F	1476	370	1477
 * OP_IFNOT	1477	3	0
 * OP_CALL0	1411	0	0
 * OP_RETURN	0	0	0
 * 151	1397	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * 124	28	367	1478
 * OP_EQ_F	1478	369	1479
 * OP_IFNOT	1479	3	0
 * OP_CALL0	1419	0	0
 * OP_RETURN	0	0	0
 * 132	1433	4	0
 * OP_CALL1	501	0	0
 * OP_DONE	0	0	0
 */

void (float dist) ai_run = {

   local vector delta;
   local float axis;
   local float direct;
   local float ang_rint;
   local float ang_floor;
   local float ang_ceil;

   movedist = dist;
   if ( (self.enemy.health <= MSG_BROADCAST) ) {

      self.enemy = world;
      if ( (self.oldenemy.health > MSG_BROADCAST) ) {

         self.enemy = self.oldenemy;
         HuntTarget ();

      } else {

         if ( self.movetarget ) {

            self.th_walk ();

         } else {

            self.th_stand ();

         }
         return ;

      }

   }
   self.show_hostile = (time + AS_STRAIGHT);
   enemy_vis = visible (self.enemy);
   if ( enemy_vis ) {

      self.search_time = (time + TE_LIGHTNING1);

   }
   if ( (coop && (self.search_time < time)) ) {

      if ( FindTarget () ) {

         return ;

      }

   }
   enemy_infront = infront (self.enemy);
   enemy_range = range (self.enemy);
   enemy_yaw = vectoyaw ((self.enemy.origin - self.origin));
   if ( (self.attack_state == AS_MISSILE) ) {

      ai_run_missile ();
      return ;

   }
   if ( (self.attack_state == AS_MELEE) ) {

      ai_run_melee ();
      return ;

   }
   if ( CheckAnyAttack () ) {

      return ;

   }
   if ( (self.attack_state == AS_SLIDING) ) {

      ai_run_slide ();
      return ;

   }
   movetogoal (dist);

};
