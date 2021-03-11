string globaldef003435 /* = "buttons/airbut1.wav" */;
string globaldef003436 /* = "buttons/switch21.wav" */;
string globaldef003437 /* = "buttons/switch02.wav" */;
string globaldef003438 /* = "buttons/switch04.wav" */;
entity globaldef003439;
entity globaldef003440;
entity globaldef003441;
entity globaldef003442;

void () trigger_reactivate;

// function trigger_reactivate
// function number 570 begins at statement 16056
/*
 * OP_ADDRESS	28	104	11004
 * OP_STOREP_F	238	11004	0
 * OP_DONE	0	0	0
 */

void () trigger_reactivate = {

   self.globaldef000082 = SOLID_TRIGGER;

};
float globaldef003444 /* = 1.000 */;
float globaldef003445 /* = 1.000 */;

void () func000571;

// function func000571
// function number 571 begins at statement 16059
/*
 * OP_LOAD_F	28	185	11008
 * OP_IFNOT	11008	8	0
 * OP_ADDRESS	28	152	11009
 * OP_LOAD_F	28	185	11010
 * OP_STOREP_F	11010	11009	0
 * OP_ADDRESS	28	163	11011
 * OP_STOREP_F	251	11011	0
 * OP_ADDRESS	28	104	11012
 * OP_STOREP_F	239	11012	0
 * OP_DONE	0	0	0
 */

void () func000571 = {

   if ( self.globaldef000163 ) {

      self.globaldef000130 = self.globaldef000163;
      self.globaldef000141 = DAMAGE_YES;
      self.globaldef000082 = SOLID_BBOX;

   }

};

void () func000572;

// function func000572
// function number 572 begins at statement 16069
/*
 * OP_LOAD_F	28	150	11014
 * OP_GT	11014	31	11015
 * OP_IFNOT	11015	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	129	11016
 * OP_EQ_S	11016	11017	11018
 * OP_IFNOT	11018	15	0
 * OP_LOAD_ENT	28	181	11019
 * OP_LOAD_S	11019	129	11020
 * OP_NE_S	11020	1236	11021
 * OP_IFNOT	11021	6	0
 * OP_LOAD_ENT	28	181	11022
 * OP_LOAD_S	11022	129	11023
 * OP_NE_S	11023	1241	11024
 * OP_IFNOT	11024	2	0
 * OP_RETURN	0	0	0
 * OP_ADD_F	41	214	11025
 * OP_STORE_F	11025	41	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	308	7	0
 * OP_CALL2	496	0	0
 * OP_LOAD_S	28	208	11026
 * OP_IFNOT	11026	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	208	11027
 * OP_STORE_V	11027	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	163	11028
 * OP_STOREP_F	250	11028	0
 * OP_LOAD_ENT	28	181	11029
 * OP_STORE_ENT	11029	351	0
 * OP_LOAD_S	351	129	11030
 * OP_EQ_S	11030	1241	11031
 * OP_IFNOT	11031	4	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1132	0	0
 * OP_CALL0	520	0	0
 * OP_LOAD_F	28	418	11032
 * OP_GT	11032	213	11033
 * OP_IFNOT	11033	8	0
 * OP_ADDRESS	28	148	11034
 * OP_STOREP_FNC	11007	11034	0
 * OP_ADDRESS	28	150	11035
 * OP_LOAD_F	28	418	11036
 * OP_ADD_F	31	11036	11037
 * OP_STOREP_F	11037	11035	0
 * OP_GOTO	8	0	0
 * OP_ADDRESS	28	146	11038
 * OP_STOREP_FNC	519	11038	0
 * OP_ADDRESS	28	150	11039
 * OP_ADD_F	31	3036	11040
 * OP_STOREP_F	11040	11039	0
 * OP_ADDRESS	28	148	11041
 * OP_STOREP_FNC	521	11041	0
 * OP_DONE	0	0	0
 */

void () func000572 = {

   if ( (self.globaldef000128 > time) ) {

      return ;

   }
   if ( (self.globaldef000107 == globaldef003448) ) {

      if ( (self.globaldef000159.globaldef000107 != globaldef001170) ) {

         if ( (self.globaldef000159.globaldef000107 != globaldef001171) ) {

            return ;

         }

      }
      found_secrets = (found_secrets + TRUE);
      WriteByte (MSG_ALL,SVC_FOUNDSECRET);

   }
   if ( self.globaldef000186 ) {

      sound (self,CHAN_VOICE,self.globaldef000186,TRUE,ATTN_NORM);

   }
   self.globaldef000141 = DAMAGE_NO;
   activator = self.globaldef000159;
   if ( (activator.globaldef000107 == globaldef001171) ) {

      func002472 (activator,self);

   }
   SUB_UseTargets ();
   if ( (self.globaldef000401 > FALSE) ) {

      self.globaldef000126 = func000571;
      self.globaldef000128 = (time + self.globaldef000401);

   } else {

      self.globaldef000124 = SUB_Null;
      self.globaldef000128 = (time + globaldef001488);
      self.globaldef000126 = SUB_Remove;

   }

};
string globaldef003448 /* = "trigger_secret" */;

void () func000573;

// function func000573
// function number 573 begins at statement 16128
/*
 * OP_ADDRESS	28	181	11043
 * OP_STOREP_ENT	352	11043	0
 * OP_CALL0	11013	0	0
 * OP_DONE	0	0	0
 */

void () func000573 = {

   self.globaldef000159 = damage_attacker;
   func000572 ();

};

void () func000574;

// function func000574
// function number 574 begins at statement 16132
/*
 * OP_ADDRESS	28	181	11045
 * OP_STOREP_ENT	351	11045	0
 * OP_CALL0	11013	0	0
 * OP_DONE	0	0	0
 */

void () func000574 = {

   self.globaldef000159 = activator;
   func000572 ();

};

void () func000575;

// function func000575
// function number 575 begins at statement 16136
/*
 * OP_LOAD_S	29	129	11047
 * OP_NE_S	11047	1236	11048
 * OP_IFNOT	11048	5	0
 * OP_LOAD_S	29	129	11049
 * OP_NE_S	11049	1241	11050
 * OP_IFNOT	11050	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	202	11051
 * OP_NE_V	11051	286	11054
 * OP_IFNOT	11054	9	0
 * OP_LOAD_V	29	117	11055
 * OP_STORE_V	11055	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	202	11058
 * OP_MUL_V	59	11058	11061
 * OP_LT	11061	213	11062
 * OP_IFNOT	11062	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	181	11063
 * OP_STOREP_ENT	29	11063	0
 * OP_CALL0	11013	0	0
 * OP_DONE	0	0	0
 */

void () func000575 = {

   if ( (other.globaldef000107 != globaldef001170) ) {

      if ( (other.globaldef000107 != globaldef001171) ) {

         return ;

      }

   }
   if ( (self.globaldef000180 != VEC_ORIGIN) ) {

      makevectors (other.globaldef000095);
      if ( ((v_forward * self.globaldef000180) < FALSE) ) {

         return ;

      }

   }
   self.globaldef000159 = other;
   func000572 ();

};

void () func000576;

// function func000576
// function number 576 begins at statement 16158
/*
 * OP_LOAD_F	28	207	11065
 * OP_EQ_F	11065	214	11066
 * OP_IFNOT	11066	6	0
 * OP_STORE_V	11067	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	11068
 * OP_STOREP_S	11067	11068	0
 * OP_GOTO	16	0	0
 * OP_LOAD_F	28	207	11069
 * OP_EQ_F	11069	216	11070
 * OP_IFNOT	11070	6	0
 * OP_STORE_V	3152	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	11071
 * OP_STOREP_S	3152	11071	0
 * OP_GOTO	8	0	0
 * OP_LOAD_F	28	207	11072
 * OP_EQ_F	11072	228	11073
 * OP_IFNOT	11073	5	0
 * OP_STORE_V	11074	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	11075
 * OP_STOREP_S	11074	11075	0
 * OP_LOAD_F	28	418	11076
 * OP_NOT_F	11076	0	11077
 * OP_IFNOT	11077	3	0
 * OP_ADDRESS	28	418	11078
 * OP_STOREP_F	3267	11078	0
 * OP_ADDRESS	28	147	11079
 * OP_STOREP_FNC	11044	11079	0
 * OP_CALL0	2992	0	0
 * OP_LOAD_F	28	152	11080
 * OP_IFNOT	11080	20	0
 * OP_LOAD_F	28	195	11081
 * OP_BITAND	11081	11006	11082
 * OP_IFNOT	11082	3	0
 * OP_STORE_V	11083	4	0
 * OP_CALL1	461	0	0
 * OP_ADDRESS	28	185	11084
 * OP_LOAD_F	28	152	11085
 * OP_STOREP_F	11085	11084	0
 * OP_ADDRESS	28	367	11086
 * OP_STOREP_FNC	11042	11086	0
 * OP_ADDRESS	28	163	11087
 * OP_STOREP_F	251	11087	0
 * OP_ADDRESS	28	104	11088
 * OP_STOREP_F	239	11088	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	11089
 * OP_STORE_V	11089	7	0
 * OP_CALL2	453	0	0
 * OP_GOTO	7	0	0
 * OP_LOAD_F	28	195	11092
 * OP_BITAND	11092	11006	11093
 * OP_NOT_F	11093	0	11094
 * OP_IFNOT	11094	3	0
 * OP_ADDRESS	28	146	11095
 * OP_STOREP_FNC	11046	11095	0
 * OP_DONE	0	0	0
 */

void () func000576 = {

   if ( (self.globaldef000185 == TRUE) ) {

      precache_sound (globaldef003453);
      self.globaldef000186 = globaldef003453;

   } else {

      if ( (self.globaldef000185 == FL_SWIM) ) {

         precache_sound (globaldef001516);
         self.globaldef000186 = globaldef001516;

      } else {

         if ( (self.globaldef000185 == MOVETYPE_WALK) ) {

            precache_sound (globaldef003454);
            self.globaldef000186 = globaldef003454;

         }

      }

   }
   if ( !self.globaldef000401 ) {

      self.globaldef000401 = globaldef001553;

   }
   self.globaldef000125 = func000574;
   InitTrigger ();
   if ( self.globaldef000130 ) {

      if ( (self.globaldef000173 & globaldef003445) ) {

         objerror (globaldef003455);

      }
      self.globaldef000163 = self.globaldef000130;
      self.globaldef000350 = func000573;
      self.globaldef000141 = DAMAGE_YES;
      self.globaldef000082 = SOLID_BBOX;
      setorigin (self,self.globaldef000083);

   } else {

      if ( !(self.globaldef000173 & globaldef003445) ) {

         self.globaldef000124 = func000575;

      }

   }

};
string globaldef003453 /* = "misc/secret.wav" */;
string globaldef003454 /* = "misc/trigger1.wav" */;
string globaldef003455 /* = "health and notouch don't make sense\n" */;

void () trigger_multiple;

// function trigger_multiple
// function number 577 begins at statement 16217
/*
 * OP_CALL0	11064	0	0
 * OP_DONE	0	0	0
 */

void () trigger_multiple = {

   func000576 ();

};

void () trigger_once;

// function trigger_once
// function number 578 begins at statement 16219
/*
 * OP_ADDRESS	28	418	11098
 * OP_STOREP_F	276	11098	0
 * OP_CALL0	11064	0	0
 * OP_DONE	0	0	0
 */

void () trigger_once = {

   self.globaldef000401 = CONTENT_EMPTY;
   func000576 ();

};

void () trigger_relay;

// function trigger_relay
// function number 579 begins at statement 16223
/*
 * OP_ADDRESS	28	147	11100
 * OP_STOREP_FNC	520	11100	0
 * OP_DONE	0	0	0
 */

void () trigger_relay = {

   self.globaldef000125 = SUB_UseTargets;

};

void () trigger_secret;

// function trigger_secret
// function number 580 begins at statement 16226
/*
 * OP_NOT_F	35	0	11102
 * OP_IFNOT	11102	3	0
 * OP_ADD_F	39	214	11103
 * OP_STORE_F	11103	39	0
 * OP_ADDRESS	28	418	11104
 * OP_STOREP_F	276	11104	0
 * OP_LOAD_S	28	206	11105
 * OP_NOT_S	11105	0	11106
 * OP_IFNOT	11106	3	0
 * OP_ADDRESS	28	206	11107
 * OP_STOREP_S	11108	11107	0
 * OP_LOAD_F	28	207	11109
 * OP_NOT_F	11109	0	11110
 * OP_IFNOT	11110	3	0
 * OP_ADDRESS	28	207	11111
 * OP_STOREP_F	214	11111	0
 * OP_LOAD_F	28	207	11112
 * OP_EQ_F	11112	214	11113
 * OP_IFNOT	11113	6	0
 * OP_STORE_V	11067	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	11114
 * OP_STOREP_S	11067	11114	0
 * OP_GOTO	8	0	0
 * OP_LOAD_F	28	207	11115
 * OP_EQ_F	11115	216	11116
 * OP_IFNOT	11116	5	0
 * OP_STORE_V	3152	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	208	11117
 * OP_STOREP_S	3152	11117	0
 * OP_CALL0	11064	0	0
 * OP_DONE	0	0	0
 */

void () trigger_secret = {

   if ( !deathmatch ) {

      total_secrets = (total_secrets + TRUE);

   }
   self.globaldef000401 = CONTENT_EMPTY;
   if ( !self.globaldef000184 ) {

      self.globaldef000184 = globaldef003460;

   }
   if ( !self.globaldef000185 ) {

      self.globaldef000185 = TRUE;

   }
   if ( (self.globaldef000185 == TRUE) ) {

      precache_sound (globaldef003453);
      self.globaldef000186 = globaldef003453;

   } else {

      if ( (self.globaldef000185 == FL_SWIM) ) {

         precache_sound (globaldef001516);
         self.globaldef000186 = globaldef001516;

      }

   }
   func000576 ();

};
string globaldef003460 /* = "You found a secret area!" */;

void () counter_use;

// function counter_use
// function number 581 begins at statement 16259
/*
 * OP_ADDRESS	28	436	11120
 * OP_LOAD_F	28	436	11121
 * OP_SUB_F	11121	214	11122
 * OP_STOREP_F	11122	11120	0
 * OP_LOAD_F	28	436	11123
 * OP_LT	11123	213	11124
 * OP_IFNOT	11124	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	436	11125
 * OP_NE_F	11125	213	11126
 * OP_IFNOT	11126	33	0
 * OP_LOAD_S	351	129	11127
 * OP_EQ_S	11127	1236	11128
 * OP_LOAD_F	28	195	11129
 * OP_BITAND	11129	11005	11130
 * OP_EQ_F	11130	213	11131
 * OP_AND	11128	11131	11132
 * OP_IFNOT	11132	25	0
 * OP_LOAD_F	28	436	11133
 * OP_GE	11133	229	11134
 * OP_IFNOT	11134	5	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	11135	7	0
 * OP_CALL2	852	0	0
 * OP_GOTO	18	0	0
 * OP_LOAD_F	28	436	11136
 * OP_EQ_F	11136	228	11137
 * OP_IFNOT	11137	5	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	11138	7	0
 * OP_CALL2	852	0	0
 * OP_GOTO	11	0	0
 * OP_LOAD_F	28	436	11139
 * OP_EQ_F	11139	216	11140
 * OP_IFNOT	11140	5	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	11141	7	0
 * OP_CALL2	852	0	0
 * OP_GOTO	4	0	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	11142	7	0
 * OP_CALL2	852	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	351	129	11143
 * OP_EQ_S	11143	1236	11144
 * OP_LOAD_F	28	195	11145
 * OP_BITAND	11145	11005	11146
 * OP_EQ_F	11146	213	11147
 * OP_AND	11144	11147	11148
 * OP_IFNOT	11148	4	0
 * OP_STORE_V	351	4	0
 * OP_STORE_V	11149	7	0
 * OP_CALL2	852	0	0
 * OP_ADDRESS	28	181	11150
 * OP_STOREP_ENT	351	11150	0
 * OP_CALL0	11013	0	0
 * OP_DONE	0	0	0
 */

void () counter_use = {

   local string junk;

   self.globaldef000419 = (self.globaldef000419 - TRUE);
   if ( (self.globaldef000419 < FALSE) ) {

      return ;

   }
   if ( (self.globaldef000419 != FALSE) ) {

      if ( ((activator.globaldef000107 == globaldef001170) && ((self.globaldef000173 & globaldef003444) == FALSE)) ) {

         if ( (self.globaldef000419 >= MOVETYPE_STEP) ) {

            func000072 (activator,globaldef003463);

         } else {

            if ( (self.globaldef000419 == MOVETYPE_WALK) ) {

               func000072 (activator,globaldef003464);

            } else {

               if ( (self.globaldef000419 == FL_SWIM) ) {

                  func000072 (activator,globaldef003465);

               } else {

                  func000072 (activator,globaldef003466);

               }

            }

         }

      }
      return ;

   }
   if ( ((activator.globaldef000107 == globaldef001170) && ((self.globaldef000173 & globaldef003444) == FALSE)) ) {

      func000072 (activator,globaldef003467);

   }
   self.globaldef000159 = activator;
   func000572 ();

};
string globaldef003463 /* = "There are more to go..." */;
string globaldef003464 /* = "Only 3 more to go..." */;
string globaldef003465 /* = "Only 2 more to go..." */;
string globaldef003466 /* = "Only 1 more to go..." */;
string globaldef003467 /* = "Sequence completed!" */;

void () trigger_counter;

// function trigger_counter
// function number 582 begins at statement 16316
/*
 * OP_ADDRESS	28	418	11152
 * OP_STOREP_F	276	11152	0
 * OP_LOAD_F	28	436	11153
 * OP_NOT_F	11153	0	11154
 * OP_IFNOT	11154	3	0
 * OP_ADDRESS	28	436	11155
 * OP_STOREP_F	216	11155	0
 * OP_ADDRESS	28	147	11156
 * OP_STOREP_FNC	11118	11156	0
 * OP_DONE	0	0	0
 */

void () trigger_counter = {

   self.globaldef000401 = CONTENT_EMPTY;
   if ( !self.globaldef000419 ) {

      self.globaldef000419 = FL_SWIM;

   }
   self.globaldef000125 = counter_use;

};
float globaldef003469 /* = 1.000 */;
float globaldef003470 /* = 2.000 */;

void () play_teleport;

// function play_teleport
// function number 583 begins at statement 16326
/*
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	230	11162
 * OP_STORE_F	11162	11160	0
 * OP_LT	11160	214	11163
 * OP_IFNOT	11163	3	0
 * OP_STORE_S	6654	11161	0
 * OP_GOTO	14	0	0
 * OP_LT	11160	216	11164
 * OP_IFNOT	11164	3	0
 * OP_STORE_S	6655	11161	0
 * OP_GOTO	10	0	0
 * OP_LT	11160	228	11165
 * OP_IFNOT	11165	3	0
 * OP_STORE_S	6656	11161	0
 * OP_GOTO	6	0	0
 * OP_LT	11160	229	11166
 * OP_IFNOT	11166	3	0
 * OP_STORE_S	6657	11161	0
 * OP_GOTO	2	0	0
 * OP_STORE_S	6658	11161	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	11161	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () play_teleport = {

   local float v;
   local string tmpstr;

   v = (random () * MOVETYPE_FLY);
   if ( (v < TRUE) ) {

      tmpstr = globaldef002399;

   } else {

      if ( (v < FL_SWIM) ) {

         tmpstr = globaldef002400;

      } else {

         if ( (v < MOVETYPE_WALK) ) {

            tmpstr = globaldef002401;

         } else {

            if ( (v < MOVETYPE_STEP) ) {

               tmpstr = globaldef002402;

            } else {

               tmpstr = globaldef002403;

            }

         }

      }

   }
   sound (self,CHAN_VOICE,tmpstr,TRUE,ATTN_NORM);
   remove (self);

};

// function spawn_tfog
// function number 584 begins at statement 16355
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	11001	0
 * OP_ADDRESS	11001	105	11170
 * OP_STOREP_V	11167	11170	0
 * OP_ADDRESS	11001	150	11173
 * OP_ADD_F	31	3267	11174
 * OP_STOREP_F	11174	11173	0
 * OP_ADDRESS	11001	148	11175
 * OP_STOREP_FNC	11159	11175	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	324	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	11167	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	11168	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	11169	7	0
 * OP_CALL2	500	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef003474) spawn_tfog = {

   globaldef003441 = spawn ();
   globaldef003441.globaldef000083 = globaldef003474;
   globaldef003441.globaldef000128 = (time + globaldef001553);
   globaldef003441.globaldef000126 = play_teleport;
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_TELEPORT);
   WriteCoord (MSG_BROADCAST,globaldef003474);
   WriteCoord (MSG_BROADCAST,globaldef003476);
   WriteCoord (MSG_BROADCAST,globaldef003477);

};

void () tdeath_touch;

// function tdeath_touch
// function number 585 begins at statement 16380
/*
 * OP_LOAD_ENT	28	201	11177
 * OP_EQ_E	29	11177	11178
 * OP_IFNOT	11178	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	29	129	11179
 * OP_EQ_S	11179	1236	11180
 * OP_LOAD_S	29	129	11181
 * OP_EQ_S	11181	1241	11182
 * OP_OR	11180	11182	11183
 * OP_IFNOT	11183	21	0
 * OP_LOAD_F	29	380	11184
 * OP_GT	11184	31	11185
 * OP_IFNOT	11185	3	0
 * OP_ADDRESS	28	129	11186
 * OP_STOREP_S	9197	11186	0
 * OP_LOAD_ENT	28	201	11187
 * OP_LOAD_S	11187	129	11188
 * OP_NE_S	11188	1236	11189
 * OP_IFNOT	11189	12	0
 * OP_LOAD_ENT	28	201	11190
 * OP_LOAD_S	11190	129	11191
 * OP_NE_S	11191	1241	11192
 * OP_IFNOT	11192	8	0
 * OP_LOAD_ENT	28	201	11193
 * OP_STORE_V	11193	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	8339	13	0
 * OP_CALL4	522	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	152	11194
 * OP_IFNOT	11194	6	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	8339	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void () tdeath_touch = {

   if ( (other == self.globaldef000179) ) {

      return ;

   }
   if ( ((other.globaldef000107 == globaldef001170) || (other.globaldef000107 == globaldef001171)) ) {

      if ( (other.globaldef000363 > time) ) {

         self.globaldef000107 = globaldef003000;

      }
      if ( (self.globaldef000179.globaldef000107 != globaldef001170) ) {

         if ( (self.globaldef000179.globaldef000107 != globaldef001171) ) {

            T_Damage (self.globaldef000179,self,self,globaldef002886);
            return ;

         }

      }

   }
   if ( other.globaldef000130 ) {

      T_Damage (other,self,self,globaldef002886);

   }

};

// function spawn_tdeath
// function number 586 begins at statement 16418
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	11199	0
 * OP_ADDRESS	11199	129	11200
 * OP_STOREP_S	9182	11200	0
 * OP_ADDRESS	11199	103	11201
 * OP_STOREP_F	227	11201	0
 * OP_ADDRESS	11199	104	11202
 * OP_STOREP_F	238	11202	0
 * OP_ADDRESS	11199	117	11203
 * OP_STOREP_V	286	11203	0
 * OP_STORE_V	11199	4	0
 * OP_LOAD_V	11198	134	11206
 * OP_SUB_V	11206	11209	11212
 * OP_STORE_V	11212	7	0
 * OP_LOAD_V	11198	138	11215
 * OP_ADD_V	11215	11209	11218
 * OP_STORE_V	11218	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	11199	4	0
 * OP_STORE_V	11195	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	11199	146	11221
 * OP_STOREP_FNC	11176	11221	0
 * OP_ADDRESS	11199	150	11222
 * OP_ADD_F	31	3267	11223
 * OP_STOREP_F	11223	11222	0
 * OP_ADDRESS	11199	148	11224
 * OP_STOREP_FNC	521	11224	0
 * OP_ADDRESS	11199	201	11225
 * OP_STOREP_ENT	11198	11225	0
 * OP_STORE_F	216	33	0
 * OP_DONE	0	0	0
 */

void (vector globaldef003479, entity globaldef003483) spawn_tdeath = {

   local entity death;

   death = spawn ();
   death.globaldef000107 = globaldef002997;
   death.globaldef000081 = MOVETYPE_NONE;
   death.globaldef000082 = SOLID_TRIGGER;
   death.globaldef000095 = VEC_ORIGIN;
   setsize (death,(globaldef003483.globaldef000112 - globaldef003485),(globaldef003483.globaldef000116 + globaldef003485));
   setorigin (death,globaldef003479);
   death.globaldef000124 = tdeath_touch;
   death.globaldef000128 = (time + globaldef001553);
   death.globaldef000126 = SUB_Remove;
   death.globaldef000179 = globaldef003483;
   force_retouch = FL_SWIM;

};
vector globaldef003485 /* = '1.000 1.000 1.000' */;

void () teleport_touch;

// function teleport_touch
// function number 587 begins at statement 16450
/*
 * OP_BITAND	821	767	11231
 * OP_IFNOT	11231	6	0
 * OP_NE_E	29	541	11232
 * OP_NE_E	29	542	11233
 * OP_AND	11232	11233	11234
 * OP_IFNOT	11234	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	197	11235
 * OP_IFNOT	11235	5	0
 * OP_LOAD_F	28	150	11236
 * OP_LT	11236	31	11237
 * OP_IFNOT	11237	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	195	11238
 * OP_BITAND	11238	11157	11239
 * OP_IFNOT	11239	8	0
 * OP_LOAD_S	29	129	11240
 * OP_NE_S	11240	1236	11241
 * OP_IFNOT	11241	5	0
 * OP_LOAD_S	29	129	11242
 * OP_NE_S	11242	1241	11243
 * OP_IFNOT	11243	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	152	11244
 * OP_LE	11244	213	11245
 * OP_LOAD_F	29	104	11246
 * OP_NE_F	11246	240	11247
 * OP_OR	11245	11247	11248
 * OP_IFNOT	11248	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	520	0	0
 * OP_LOAD_V	29	105	11249
 * OP_STORE_V	11249	4	0
 * OP_CALL1	7259	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	197	7	0
 * OP_LOAD_S	28	196	11252
 * OP_STORE_V	11252	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	11227	0
 * OP_NOT_ENT	11227	0	11253
 * OP_IFNOT	11253	3	0
 * OP_STORE_V	11254	4	0
 * OP_CALL1	461	0	0
 * OP_LOAD_V	11227	400	11255
 * OP_STORE_V	11255	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	11227	105	11258
 * OP_MUL_FV	219	59	11261
 * OP_ADD_V	11258	11261	11264
 * OP_STORE_V	11264	11228	0
 * OP_STORE_V	11228	4	0
 * OP_CALL1	7259	0	0
 * OP_LOAD_V	11227	105	11267
 * OP_STORE_V	11267	4	0
 * OP_STORE_V	29	7	0
 * OP_CALL2	7260	0	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_V	29	105	11270
 * OP_STORE_V	11270	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	757	13	0
 * OP_CALL4	1120	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	11228	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	757	13	0
 * OP_CALL4	1120	0	0
 * OP_LOAD_S	29	129	11273
 * OP_EQ_S	11273	1241	11274
 * OP_IFNOT	11274	25	0
 * OP_ADDRESS	29	598	11275
 * OP_SUB_F	31	214	11276
 * OP_STOREP_F	11276	11275	0
 * OP_ADDRESS	29	371	11277
 * OP_SUB_F	31	214	11278
 * OP_STOREP_F	11278	11277	0
 * OP_ADDRESS	29	175	11279
 * OP_LOAD_V	11227	400	11282
 * OP_STOREP_V	11282	11279	0
 * OP_ADDRESS	29	191	11285
 * OP_LOAD_F	11227	402	11286
 * OP_STOREP_F	11286	11285	0
 * OP_ADDRESS	29	611	11287
 * OP_LOAD_F	11227	401	11288
 * OP_STOREP_F	11288	11287	0
 * OP_ADDRESS	29	113	11289
 * OP_MUL_VF	59	540	11292
 * OP_STOREP_V	11292	11289	0
 * OP_ADDRESS	29	186	11295
 * OP_ADD_F	31	1644	11296
 * OP_STOREP_F	11296	11295	0
 * OP_ADDRESS	29	378	11297
 * OP_ADD_F	31	539	11298
 * OP_STOREP_F	11298	11297	0
 * OP_LOAD_F	29	575	11299
 * OP_BITAND	11299	703	11300
 * OP_IFNOT	11300	15	0
 * OP_LOAD_ENT	28	622	11301
 * OP_NOT_ENT	11301	0	11302
 * OP_IFNOT	11302	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1199	0	0
 * OP_LOAD_ENT	29	622	11303
 * OP_STORE_V	11303	4	0
 * OP_LOAD_ENT	28	622	11304
 * OP_STORE_V	11304	7	0
 * OP_CALL2	1202	0	0
 * OP_ADDRESS	29	622	11305
 * OP_LOAD_ENT	28	622	11306
 * OP_STOREP_ENT	11306	11305	0
 * OP_LOAD_F	29	152	11307
 * OP_NOT_F	11307	0	11308
 * OP_IFNOT	11308	12	0
 * OP_ADDRESS	29	105	11309
 * OP_LOAD_V	11227	105	11312
 * OP_STOREP_V	11312	11309	0
 * OP_ADDRESS	29	113	11315
 * OP_LOAD_F	29	114	11318
 * OP_MUL_VF	59	11318	11319
 * OP_LOAD_F	29	115	11322
 * OP_MUL_VF	59	11322	11323
 * OP_ADD_V	11319	11323	11326
 * OP_STOREP_V	11326	11315	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_V	11227	105	11329
 * OP_STORE_V	11329	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	29	117	11332
 * OP_LOAD_V	11227	400	11335
 * OP_STOREP_V	11335	11332	0
 * OP_LOAD_S	29	129	11338
 * OP_EQ_S	11338	1236	11339
 * OP_IFNOT	11339	16	0
 * OP_ADDRESS	29	174	11340
 * OP_STOREP_F	214	11340	0
 * OP_ADDRESS	29	186	11341
 * OP_ADD_F	31	5599	11342
 * OP_STOREP_F	11342	11341	0
 * OP_LOAD_F	29	182	11343
 * OP_BITAND	11343	223	11344
 * OP_IFNOT	11344	5	0
 * OP_ADDRESS	29	182	11345
 * OP_LOAD_F	29	182	11346
 * OP_SUB_F	11346	223	11347
 * OP_STOREP_F	11347	11345	0
 * OP_ADDRESS	29	113	11348
 * OP_MUL_VF	59	540	11351
 * OP_STOREP_V	11351	11348	0
 * OP_ADDRESS	29	182	11354
 * OP_LOAD_F	29	182	11355
 * OP_LOAD_F	29	182	11356
 * OP_BITAND	11356	223	11357
 * OP_SUB_F	11355	11357	11358
 * OP_STOREP_F	11358	11354	0
 * OP_DONE	0	0	0
 */

void () teleport_touch = {

   local entity t;
   local vector org;

   if ( (globaldef000804 & globaldef000750) ) {

      if ( ((other != globaldef000524) && (other != globaldef000525)) ) {

         return ;

      }

   }
   if ( self.globaldef000175 ) {

      if ( (self.globaldef000128 < time) ) {

         return ;

      }

   }
   if ( (self.globaldef000173 & globaldef003469) ) {

      if ( (other.globaldef000107 != globaldef001170) ) {

         if ( (other.globaldef000107 != globaldef001171) ) {

            return ;

         }

      }

   }
   if ( ((other.globaldef000130 <= FALSE) || (other.globaldef000082 != SOLID_SLIDEBOX)) ) {

      return ;

   }
   SUB_UseTargets ();
   spawn_tfog (other.globaldef000083);
   t = find (world,globaldef000175,self.globaldef000174);
   if ( !t ) {

      objerror (globaldef003492);

   }
   makevectors (t.globaldef000383);
   org = (t.globaldef000083 + (FL_MONSTER * v_forward));
   spawn_tfog (org);
   spawn_tdeath (t.globaldef000083,other);
   func002453 (other,other.globaldef000083,TRUE,globaldef000740);
   func002453 (other,org,TRUE,globaldef000740);
   if ( (other.globaldef000107 == globaldef001171) ) {

      other.globaldef000581 = (time - TRUE);
      other.globaldef000354 = (time - TRUE);
      other.globaldef000153 = t.globaldef000383;
      other.globaldef000169 = t.globaldef000385;
      other.globaldef000594 = t.globaldef000384;
      other.globaldef000091 = (v_forward * globaldef000523);
      other.globaldef000164 = (time + globaldef001300);
      other.globaldef000361 = (time + globaldef000522);

   }
   if ( (other.globaldef000558 & globaldef000686) ) {

      if ( !self.globaldef000605 ) {

         func002676 (other,self);

      }
      func002685 (other.globaldef000605,self.globaldef000605);
      other.globaldef000605 = self.globaldef000605;

   }
   if ( !other.globaldef000130 ) {

      other.globaldef000083 = t.globaldef000083;
      other.globaldef000091 = ((v_forward * other.globaldef000092) + (v_forward * other.globaldef000093));
      return ;

   }
   setorigin (other,t.globaldef000083);
   other.globaldef000095 = t.globaldef000383;
   if ( (other.globaldef000107 == globaldef001170) ) {

      other.globaldef000152 = TRUE;
      other.globaldef000164 = (time + globaldef002123);
      if ( (other.globaldef000160 & FL_ONGROUND) ) {

         other.globaldef000160 = (other.globaldef000160 - FL_ONGROUND);

      }
      other.globaldef000091 = (v_forward * globaldef000523);

   }
   other.globaldef000160 = (other.globaldef000160 - (other.globaldef000160 & FL_ONGROUND));

};
string globaldef003492 /* = "couldn't find teleporter target\n" */;

void () info_teleport_destination;

// function info_teleport_destination
// function number 588 begins at statement 16608
/*
 * OP_ADDRESS	28	400	11360
 * OP_LOAD_V	28	117	11363
 * OP_STOREP_V	11363	11360	0
 * OP_ADDRESS	28	117	11366
 * OP_STOREP_V	286	11366	0
 * OP_ADDRESS	28	130	11369
 * OP_STOREP_S	3002	11369	0
 * OP_ADDRESS	28	105	11370
 * OP_LOAD_V	28	105	11373
 * OP_ADD_V	11373	11376	11379
 * OP_STOREP_V	11379	11370	0
 * OP_LOAD_S	28	197	11382
 * OP_NOT_S	11382	0	11383
 * OP_IFNOT	11383	3	0
 * OP_STORE_V	11384	4	0
 * OP_CALL1	461	0	0
 * OP_DONE	0	0	0
 */

void () info_teleport_destination = {

   self.globaldef000383 = self.globaldef000095;
   self.globaldef000095 = VEC_ORIGIN;
   self.globaldef000108 = globaldef001466;
   self.globaldef000083 = (self.globaldef000083 + globaldef003494);
   if ( !self.globaldef000175 ) {

      objerror (globaldef003495);

   }

};
vector globaldef003494 /* = '0.000 0.000 27.000' */;
string globaldef003495 /* = "no targetname" */;

void () teleport_use;

// function teleport_use
// function number 589 begins at statement 16625
/*
 * OP_ADDRESS	28	150	11386
 * OP_ADD_F	31	3267	11387
 * OP_STOREP_F	11387	11386	0
 * OP_STORE_F	216	33	0
 * OP_ADDRESS	28	148	11388
 * OP_STOREP_FNC	519	11388	0
 * OP_DONE	0	0	0
 */

void () teleport_use = {

   self.globaldef000128 = (time + globaldef001553);
   force_retouch = FL_SWIM;
   self.globaldef000126 = SUB_Null;

};

void () trigger_teleport;

// function trigger_teleport
// function number 590 begins at statement 16632
/*
 * OP_CALL0	2992	0	0
 * OP_ADDRESS	28	146	11393
 * OP_STOREP_FNC	11226	11393	0
 * OP_ADDRESS	28	548	11394
 * OP_STOREP_FNC	1004	11394	0
 * OP_LOAD_S	28	196	11395
 * OP_NOT_S	11395	0	11396
 * OP_IFNOT	11396	3	0
 * OP_STORE_V	11397	4	0
 * OP_CALL1	461	0	0
 * OP_ADDRESS	28	147	11398
 * OP_STOREP_FNC	11385	11398	0
 * OP_LOAD_F	28	195	11399
 * OP_BITAND	11399	11158	11400
 * OP_NOT_F	11400	0	11401
 * OP_IFNOT	11401	13	0
 * OP_STORE_V	11402	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	134	11403
 * OP_LOAD_V	28	138	11406
 * OP_ADD_V	11403	11406	11409
 * OP_MUL_VF	11409	539	11412
 * OP_STORE_V	11412	11390	0
 * OP_STORE_V	11390	4	0
 * OP_STORE_V	11402	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () trigger_teleport = {

   local vector o;

   InitTrigger ();
   self.globaldef000124 = teleport_touch;
   self.globaldef000531 = func002294;
   if ( !self.globaldef000174 ) {

      objerror (globaldef003502);

   }
   self.globaldef000125 = teleport_use;
   if ( !(self.globaldef000173 & globaldef003470) ) {

      precache_sound (globaldef003503);
      o = ((self.globaldef000112 + self.globaldef000116) * globaldef000522);
      ambientsound (o,globaldef003503,globaldef000522,ATTN_STATIC);

   }

};
string globaldef003502 /* = "no target" */;
string globaldef003503 /* = "ambience/hum1.wav" */;

void () trigger_skill_touch;

// function trigger_skill_touch
// function number 591 begins at statement 16661
/*
 * OP_RETURN	0	0	0
 * OP_STORE_V	6713	4	0
 * OP_LOAD_S	28	206	11416
 * OP_STORE_V	11416	7	0
 * OP_CALL2	508	0	0
 * OP_DONE	0	0	0
 */

void () trigger_skill_touch = {

   return ;
   cvar_set (globaldef002458,self.globaldef000184);

};

void () trigger_setskill;

// function trigger_setskill
// function number 592 begins at statement 16667
/*
 * OP_CALL0	2992	0	0
 * OP_ADDRESS	28	146	11418
 * OP_STOREP_FNC	11415	11418	0
 * OP_DONE	0	0	0
 */

void () trigger_setskill = {

   InitTrigger ();
   self.globaldef000124 = trigger_skill_touch;

};

void () trigger_onlyregistered_touch;

// function trigger_onlyregistered_touch
// function number 593 begins at statement 16671
/*
 * OP_LOAD_S	29	129	11420
 * OP_NE_S	11420	1236	11421
 * OP_IFNOT	11421	5	0
 * OP_LOAD_S	29	129	11422
 * OP_NE_S	11422	1241	11423
 * OP_IFNOT	11423	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	378	11424
 * OP_GT	11424	31	11425
 * OP_IFNOT	11425	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	378	11426
 * OP_ADD_F	31	216	11427
 * OP_STOREP_F	11427	11426	0
 * OP_STORE_V	6635	4	0
 * OP_CALL1	490	0	0
 * OP_IFNOT	1	7	0
 * OP_ADDRESS	28	206	11428
 * OP_STOREP_S	3002	11428	0
 * OP_CALL0	520	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_GOTO	17	0	0
 * OP_LOAD_S	29	129	11429
 * OP_NE_S	11429	1241	11430
 * OP_IFNOT	11430	14	0
 * OP_LOAD_S	28	206	11431
 * OP_NE_S	11431	3002	11432
 * OP_IFNOT	11432	11	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_S	28	206	11433
 * OP_STORE_V	11433	7	0
 * OP_CALL2	852	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	3152	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () trigger_onlyregistered_touch = {

   if ( (other.globaldef000107 != globaldef001170) ) {

      if ( (other.globaldef000107 != globaldef001171) ) {

         return ;

      }

   }
   if ( (self.globaldef000361 > time) ) {

      return ;

   }
   self.globaldef000361 = (time + FL_SWIM);
   if ( cvar (globaldef002383) ) {

      self.globaldef000184 = globaldef001466;
      SUB_UseTargets ();
      remove (self);

   } else {

      if ( (other.globaldef000107 != globaldef001171) ) {

         if ( (self.globaldef000184 != globaldef001466) ) {

            func000072 (other,self.globaldef000184);
            sound (other,CHAN_BODY,globaldef001516,TRUE,ATTN_NORM);

         }

      }

   }

};

void () trigger_onlyregistered;

// function trigger_onlyregistered
// function number 594 begins at statement 16711
/*
 * OP_STORE_V	3152	4	0
 * OP_CALL1	469	0	0
 * OP_CALL0	2992	0	0
 * OP_ADDRESS	28	146	11435
 * OP_STOREP_FNC	11419	11435	0
 * OP_ADDRESS	28	548	11436
 * OP_STOREP_FNC	1006	11436	0
 * OP_DONE	0	0	0
 */

void () trigger_onlyregistered = {

   precache_sound (globaldef001516);
   InitTrigger ();
   self.globaldef000124 = trigger_onlyregistered_touch;
   self.globaldef000531 = func002296;

};

void () hurt_on;

// function hurt_on
// function number 595 begins at statement 16719
/*
 * OP_ADDRESS	28	104	11438
 * OP_STOREP_F	238	11438	0
 * OP_ADDRESS	28	150	11439
 * OP_STOREP_F	276	11439	0
 * OP_DONE	0	0	0
 */

void () hurt_on = {

   self.globaldef000082 = SOLID_TRIGGER;
   self.globaldef000128 = CONTENT_EMPTY;

};

void () hurt_touch;

// function hurt_touch
// function number 596 begins at statement 16724
/*
 * OP_LOAD_F	29	163	11441
 * OP_IFNOT	11441	14	0
 * OP_ADDRESS	28	104	11442
 * OP_STOREP_F	237	11442	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_LOAD_F	28	425	11443
 * OP_STORE_V	11443	13	0
 * OP_CALL4	522	0	0
 * OP_ADDRESS	28	148	11444
 * OP_STOREP_FNC	11437	11444	0
 * OP_ADDRESS	28	150	11445
 * OP_ADD_F	31	214	11446
 * OP_STOREP_F	11446	11445	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () hurt_touch = {

   if ( other.globaldef000141 ) {

      self.globaldef000082 = SOLID_NOT;
      T_Damage (other,self,self,self.globaldef000408);
      self.globaldef000126 = hurt_on;
      self.globaldef000128 = (time + TRUE);

   }
   return ;

};

void () trigger_hurt;

// function trigger_hurt
// function number 597 begins at statement 16741
/*
 * OP_CALL0	2992	0	0
 * OP_ADDRESS	28	146	11448
 * OP_STOREP_FNC	11440	11448	0
 * OP_LOAD_F	28	425	11449
 * OP_NOT_F	11449	0	11450
 * OP_IFNOT	11450	3	0
 * OP_ADDRESS	28	425	11451
 * OP_STOREP_F	230	11451	0
 * OP_DONE	0	0	0
 */

void () trigger_hurt = {

   InitTrigger ();
   self.globaldef000124 = hurt_touch;
   if ( !self.globaldef000408 ) {

      self.globaldef000408 = MOVETYPE_FLY;

   }

};
float globaldef003511 /* = 1.000 */;

void () trigger_push_touch;

// function trigger_push_touch
// function number 598 begins at statement 16750
/*
 * OP_LOAD_S	29	129	11454
 * OP_EQ_S	11454	5946	11455
 * OP_IFNOT	11455	8	0
 * OP_ADDRESS	29	113	11456
 * OP_LOAD_F	28	369	11459
 * OP_LOAD_V	28	202	11460
 * OP_MUL_FV	11459	11460	11463
 * OP_MUL_VF	11463	235	11466
 * OP_STOREP_V	11466	11456	0
 * OP_GOTO	49	0	0
 * OP_LOAD_F	29	152	11469
 * OP_GT	11469	213	11470
 * OP_IFNOT	11470	46	0
 * OP_ADDRESS	29	113	11471
 * OP_LOAD_F	28	369	11474
 * OP_LOAD_V	28	202	11475
 * OP_MUL_FV	11474	11475	11478
 * OP_MUL_VF	11478	235	11481
 * OP_STOREP_V	11481	11471	0
 * OP_LOAD_S	29	129	11484
 * OP_EQ_S	11484	1236	11485
 * OP_LOAD_S	29	129	11486
 * OP_EQ_S	11486	1241	11487
 * OP_OR	11485	11487	11488
 * OP_IFNOT	11488	13	0
 * OP_LOAD_F	29	391	11489
 * OP_LT	11489	31	11490
 * OP_IFNOT	11490	10	0
 * OP_ADDRESS	29	391	11491
 * OP_ADD_F	31	1825	11492
 * OP_STOREP_F	11492	11491	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	11493	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_S	29	129	11494
 * OP_EQ_S	11494	1241	11495
 * OP_IFNOT	11495	19	0
 * OP_LOAD_F	28	203	11496
 * OP_LT	11496	3036	11497
 * OP_LOAD_F	28	204	11498
 * OP_LT	11498	3036	11499
 * OP_AND	11497	11499	11500
 * OP_IFNOT	11500	13	0
 * OP_ADDRESS	29	114	11501
 * OP_LOAD_F	29	114	11502
 * OP_CALL0	5370	0	0
 * OP_MUL_F	746	1	11503
 * OP_ADD_F	11502	11503	11504
 * OP_STOREP_F	11504	11501	0
 * OP_ADDRESS	29	115	11505
 * OP_LOAD_F	29	115	11506
 * OP_CALL0	5370	0	0
 * OP_MUL_F	746	1	11507
 * OP_ADD_F	11506	11507	11508
 * OP_STOREP_F	11508	11505	0
 * OP_LOAD_F	28	195	11509
 * OP_BITAND	11509	11452	11510
 * OP_IFNOT	11510	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () trigger_push_touch = {

   if ( (other.globaldef000107 == globaldef002184) ) {

      other.globaldef000091 = ((self.globaldef000352 * self.globaldef000180) * MOVETYPE_BOUNCE);

   } else {

      if ( (other.globaldef000130 > FALSE) ) {

         other.globaldef000091 = ((self.globaldef000352 * self.globaldef000180) * MOVETYPE_BOUNCE);
         if ( ((other.globaldef000107 == globaldef001170) || (other.globaldef000107 == globaldef001171)) ) {

            if ( (other.globaldef000374 < time) ) {

               other.globaldef000374 = (time + globaldef001303);
               sound (other,CHAN_AUTO,globaldef003513,TRUE,ATTN_NORM);

            }

         }
         if ( (other.globaldef000107 == globaldef001171) ) {

            if ( ((self.globaldef000181 < globaldef001488) && (self.globaldef000182 < globaldef001488)) ) {

               other.globaldef000092 = (other.globaldef000092 + (globaldef000729 * func000249 ()));
               other.globaldef000093 = (other.globaldef000093 + (globaldef000729 * func000249 ()));

            }

         }

      }

   }
   if ( (self.globaldef000173 & globaldef003511) ) {

      remove (self);

   }

};
string globaldef003513 /* = "ambience/windfly.wav" */;

void () trigger_push;

// function trigger_push
// function number 599 begins at statement 16814
/*
 * OP_CALL0	2992	0	0
 * OP_STORE_V	11493	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	146	11512
 * OP_STOREP_FNC	11453	11512	0
 * OP_ADDRESS	28	548	11513
 * OP_STOREP_FNC	1005	11513	0
 * OP_LOAD_F	28	369	11514
 * OP_NOT_F	11514	0	11515
 * OP_IFNOT	11515	3	0
 * OP_ADDRESS	28	369	11516
 * OP_STOREP_F	1663	11516	0
 * OP_DONE	0	0	0
 */

void () trigger_push = {

   InitTrigger ();
   precache_sound (globaldef003513);
   self.globaldef000124 = trigger_push_touch;
   self.globaldef000531 = func002295;
   if ( !self.globaldef000352 ) {

      self.globaldef000352 = globaldef001302;

   }

};

void () trigger_monsterjump_touch;

// function trigger_monsterjump_touch
// function number 600 begins at statement 16827
/*
 * OP_LOAD_F	29	182	11518
 * OP_BITOR	219	215	11519
 * OP_BITOR	11519	216	11520
 * OP_BITAND	11518	11520	11521
 * OP_NE_F	11521	219	11522
 * OP_IFNOT	11522	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	29	114	11523
 * OP_LOAD_F	28	203	11524
 * OP_LOAD_F	28	369	11525
 * OP_MUL_F	11524	11525	11526
 * OP_STOREP_F	11526	11523	0
 * OP_ADDRESS	29	115	11527
 * OP_LOAD_F	28	204	11528
 * OP_LOAD_F	28	369	11529
 * OP_MUL_F	11528	11529	11530
 * OP_STOREP_F	11530	11527	0
 * OP_LOAD_F	29	182	11531
 * OP_BITAND	11531	223	11532
 * OP_NOT_F	11532	0	11533
 * OP_IFNOT	11533	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	29	182	11534
 * OP_LOAD_F	29	182	11535
 * OP_SUB_F	11535	223	11536
 * OP_STOREP_F	11536	11534	0
 * OP_ADDRESS	29	116	11537
 * OP_LOAD_F	28	447	11538
 * OP_STOREP_F	11538	11537	0
 * OP_DONE	0	0	0
 */

void () trigger_monsterjump_touch = {

   if ( ((other.globaldef000160 & ((FL_MONSTER | FL_FLY) | FL_SWIM)) != FL_MONSTER) ) {

      return ;

   }
   other.globaldef000092 = (self.globaldef000181 * self.globaldef000352);
   other.globaldef000093 = (self.globaldef000182 * self.globaldef000352);
   if ( !(other.globaldef000160 & FL_ONGROUND) ) {

      return ;

   }
   other.globaldef000160 = (other.globaldef000160 - FL_ONGROUND);
   other.globaldef000094 = self.globaldef000430;

};

void () trigger_monsterjump;

// function trigger_monsterjump
// function number 601 begins at statement 16857
/*
 * OP_LOAD_F	28	369	11540
 * OP_NOT_F	11540	0	11541
 * OP_IFNOT	11541	3	0
 * OP_ADDRESS	28	369	11542
 * OP_STOREP_F	2044	11542	0
 * OP_LOAD_F	28	447	11543
 * OP_NOT_F	11543	0	11544
 * OP_IFNOT	11544	3	0
 * OP_ADDRESS	28	447	11545
 * OP_STOREP_F	2044	11545	0
 * OP_LOAD_V	28	117	11546
 * OP_EQ_V	11546	286	11549
 * OP_IFNOT	11549	3	0
 * OP_ADDRESS	28	117	11550
 * OP_STOREP_V	11553	11550	0
 * OP_CALL0	2992	0	0
 * OP_ADDRESS	28	146	11556
 * OP_STOREP_FNC	11517	11556	0
 * OP_DONE	0	0	0
 */

void () trigger_monsterjump = {

   if ( !self.globaldef000352 ) {

      self.globaldef000352 = globaldef001343;

   }
   if ( !self.globaldef000430 ) {

      self.globaldef000430 = globaldef001343;

   }
   if ( (self.globaldef000095 == VEC_ORIGIN) ) {

      self.globaldef000095 = globaldef003517;

   }
   InitTrigger ();
   self.globaldef000124 = trigger_monsterjump_touch;

};
