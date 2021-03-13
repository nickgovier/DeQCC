string globaldef001961 /* = "progs/quaddama.mdl" */;
string globaldef001962 /* = "items/damage.wav" */;
string globaldef001963 /* = "items/damage2.wav" */;
string globaldef001964 /* = "items/damage3.wav" */;
string globaldef001965 /* = "Quad Damage" */;

// function func000243
// function number 243 begins at statement 5925
/*
 * OP_BITAND	821	767	5093
 * OP_NOT_F	5093	0	5094
 * OP_IFNOT	5094	3	0
 * OP_IFNOT	816	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	29	129	5095
 * OP_NE_S	5095	1236	5096
 * OP_IFNOT	5096	5	0
 * OP_LOAD_S	29	129	5097
 * OP_NE_S	5097	1241	5098
 * OP_IFNOT	5098	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	29	129	5099
 * OP_EQ_S	5099	1241	5100
 * OP_IFNOT	5100	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	1131	0	0
 * OP_LOAD_F	29	152	5101
 * OP_LE	5101	213	5102
 * OP_IFNOT	5102	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_F	213	5092	0
 * OP_LOAD_S	29	129	5103
 * OP_EQ_S	5103	1236	5104
 * OP_IFNOT	5104	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5105	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	28	162	5106
 * OP_IFNOT	5106	17	0
 * OP_LOAD_F	29	162	5107
 * OP_LOAD_F	28	162	5108
 * OP_BITAND	5107	5108	5109
 * OP_EQ_F	5109	213	5110
 * OP_IFNOT	5110	12	0
 * OP_STORE_F	214	5092	0
 * OP_LOAD_S	29	129	5111
 * OP_EQ_S	5111	1236	5112
 * OP_IFNOT	5112	8	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5113	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_LOAD_S	28	180	5114
 * OP_STORE_V	5114	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_ENT	28	5091	0
 * OP_STORE_ENT	29	28	0
 * OP_CALL0	4567	0	0
 * OP_STORE_F	1	5088	0
 * OP_STORE_ENT	5091	28	0
 * OP_EQ_F	35	229	5115
 * OP_IFNOT	5115	28	0
 * OP_ADDRESS	29	152	5116
 * OP_LOAD_F	29	152	5117
 * OP_ADD_F	5117	235	5118
 * OP_STOREP_F	5118	5116	0
 * OP_LOAD_F	29	152	5119
 * OP_GE	5119	540	5120
 * OP_IFNOT	5120	21	0
 * OP_ADDRESS	29	152	5121
 * OP_STOREP_F	1997	5121	0
 * OP_ADDRESS	29	388	5122
 * OP_STOREP_F	214	5122	0
 * OP_ADDRESS	29	382	5123
 * OP_ADD_F	31	309	5124
 * OP_STOREP_F	5124	5123	0
 * OP_ADDRESS	29	162	5125
 * OP_LOAD_F	29	162	5126
 * OP_BITOR	5126	275	5127
 * OP_STOREP_F	5127	5125	0
 * OP_ADDRESS	29	384	5128
 * OP_STOREP_F	214	5128	0
 * OP_ADDRESS	29	380	5129
 * OP_ADD_F	31	309	5130
 * OP_STOREP_F	5130	5129	0
 * OP_ADDRESS	29	162	5131
 * OP_LOAD_F	29	162	5132
 * OP_BITOR	5132	273	5133
 * OP_STOREP_F	5133	5131	0
 * OP_ADDRESS	29	158	5134
 * OP_LOAD_F	29	158	5135
 * OP_LOAD_F	28	158	5136
 * OP_ADD_F	5135	5136	5137
 * OP_STOREP_F	5137	5134	0
 * OP_ADDRESS	29	159	5138
 * OP_LOAD_F	29	159	5139
 * OP_LOAD_F	28	159	5140
 * OP_ADD_F	5139	5140	5141
 * OP_STOREP_F	5141	5138	0
 * OP_ADDRESS	29	160	5142
 * OP_LOAD_F	29	160	5143
 * OP_LOAD_F	28	160	5144
 * OP_ADD_F	5143	5144	5145
 * OP_STOREP_F	5145	5142	0
 * OP_ADDRESS	29	161	5146
 * OP_LOAD_F	29	161	5147
 * OP_LOAD_F	28	161	5148
 * OP_ADD_F	5147	5148	5149
 * OP_STOREP_F	5149	5146	0
 * OP_LOAD_F	28	162	5150
 * OP_STORE_F	5150	5090	0
 * OP_NOT_F	5090	0	5151
 * OP_IFNOT	5151	3	0
 * OP_LOAD_F	29	154	5152
 * OP_STORE_F	5152	5090	0
 * OP_LOAD_F	29	162	5153
 * OP_STORE_F	5153	5089	0
 * OP_ADDRESS	29	162	5154
 * OP_LOAD_F	29	162	5155
 * OP_LOAD_F	28	162	5156
 * OP_BITOR	5155	5156	5157
 * OP_STOREP_F	5157	5154	0
 * OP_CALL0	4538	0	0
 * OP_LOAD_S	29	129	5158
 * OP_EQ_S	5158	1236	5159
 * OP_IFNOT	5159	72	0
 * OP_LOAD_F	28	158	5160
 * OP_IFNOT	5160	16	0
 * OP_IFNOT	5092	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5161	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_F	214	5092	0
 * OP_LOAD_F	28	158	5162
 * OP_STORE_V	5162	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	5087	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5087	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5163	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	28	159	5164
 * OP_IFNOT	5164	16	0
 * OP_IFNOT	5092	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5161	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_F	214	5092	0
 * OP_LOAD_F	28	159	5165
 * OP_STORE_V	5165	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	5087	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5087	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5166	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	28	160	5167
 * OP_IFNOT	5167	16	0
 * OP_IFNOT	5092	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5161	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_F	214	5092	0
 * OP_LOAD_F	28	160	5168
 * OP_STORE_V	5168	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	5087	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5087	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5169	7	0
 * OP_CALL2	928	0	0
 * OP_LOAD_F	28	161	5170
 * OP_IFNOT	5170	16	0
 * OP_IFNOT	5092	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5161	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_F	214	5092	0
 * OP_LOAD_F	28	161	5171
 * OP_STORE_V	5171	4	0
 * OP_CALL1	474	0	0
 * OP_STORE_S	1	5087	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5087	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	5172	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	2127	7	0
 * OP_CALL2	928	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	328	7	0
 * OP_STORE_V	4771	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_S	29	129	5173
 * OP_EQ_S	5173	1236	5174
 * OP_IFNOT	5174	4	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	4416	7	0
 * OP_CALL2	839	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_ENT	29	28	0
 * OP_NOT_F	35	0	5175
 * OP_IFNOT	5175	4	0
 * OP_ADDRESS	28	154	5176
 * OP_STOREP_F	5090	5176	0
 * OP_GOTO	4	0	0
 * OP_STORE_V	5089	4	0
 * OP_STORE_V	5090	7	0
 * OP_CALL2	4559	0	0
 * OP_CALL0	4295	0	0
 * OP_DONE	0	0	0
 */

void () func000243 = {

   local string globaldef001967;
   local float globaldef001968;
   local float globaldef001969;
   local float globaldef001970;
   local entity globaldef001971;
   local float globaldef001972;

   if ( !(globaldef000804 & globaldef000750) ) {

      if ( globaldef000799 ) {

         return ;

      }

   }
   if ( (other.classname != globaldef001170) ) {

      if ( (other.classname != globaldef001171) ) {

         return ;

      }

   }
   if ( (other.classname == globaldef001171) ) {

      func002471 (other,self);

   }
   if ( (other.health <= FALSE) ) {

      return ;

   }
   globaldef001972 = FALSE;
   if ( (other.classname == globaldef001170) ) {

      func000092 (other,globaldef001973);

   }
   if ( self.items ) {

      if ( ((other.items & self.items) == FALSE) ) {

         globaldef001972 = TRUE;
         if ( (other.classname == globaldef001170) ) {

            func000092 (other,globaldef001974);
            func000092 (other,self.netname);

         }

      }

   }
   globaldef001971 = self;
   self = other;
   globaldef001968 = W_BestWeapon ();
   self = globaldef001971;
   if ( (deathmatch == MOVETYPE_STEP) ) {

      other.health = (other.health + MOVETYPE_BOUNCE);
      if ( (other.health >= globaldef000523) ) {

         other.health = globaldef001335;
         other.super_time = TRUE;
         other.super_damage_finished = (time + SVC_INTERMISSION);
         other.items = (other.items | IT_QUAD);
         other.invincible_time = TRUE;
         other.invincible_finished = (time + SVC_INTERMISSION);
         other.items = (other.items | IT_INVULNERABILITY);

      }

   }
   other.ammo_shells = (other.ammo_shells + self.ammo_shells);
   other.ammo_nails = (other.ammo_nails + self.ammo_nails);
   other.ammo_rockets = (other.ammo_rockets + self.ammo_rockets);
   other.ammo_cells = (other.ammo_cells + self.ammo_cells);
   globaldef001970 = self.items;
   if ( !globaldef001970 ) {

      globaldef001970 = other.weapon;

   }
   globaldef001969 = other.items;
   other.items = (other.items | self.items);
   bound_other_ammo ();
   if ( (other.classname == globaldef001170) ) {

      if ( self.ammo_shells ) {

         if ( globaldef001972 ) {

            func000092 (other,globaldef001975);

         }
         globaldef001972 = TRUE;
         globaldef001967 = ftos (self.ammo_shells);
         func000092 (other,globaldef001967);
         func000092 (other,globaldef001976);

      }
      if ( self.ammo_nails ) {

         if ( globaldef001972 ) {

            func000092 (other,globaldef001975);

         }
         globaldef001972 = TRUE;
         globaldef001967 = ftos (self.ammo_nails);
         func000092 (other,globaldef001967);
         func000092 (other,globaldef001977);

      }
      if ( self.ammo_rockets ) {

         if ( globaldef001972 ) {

            func000092 (other,globaldef001975);

         }
         globaldef001972 = TRUE;
         globaldef001967 = ftos (self.ammo_rockets);
         func000092 (other,globaldef001967);
         func000092 (other,globaldef001978);

      }
      if ( self.ammo_cells ) {

         if ( globaldef001972 ) {

            func000092 (other,globaldef001975);

         }
         globaldef001972 = TRUE;
         globaldef001967 = ftos (self.ammo_cells);
         func000092 (other,globaldef001967);
         func000092 (other,globaldef001979);

      }
      func000092 (other,globaldef001354);

   }
   sound (other,CHAN_ITEM,globaldef001882,TRUE,ATTN_NORM);
   if ( (other.classname == globaldef001170) ) {

      func000064 (other,globaldef001818);

   }
   remove (self);
   self = other;
   if ( !deathmatch ) {

      self.weapon = globaldef001970;

   } else {

      Deathmatch_Weapon (globaldef001969,globaldef001970);

   }
   W_SetCurrentAmmo ();

};
string globaldef001973 /* = "You get " */;
string globaldef001974 /* = "the " */;
string globaldef001975 /* = ", " */;
string globaldef001976 /* = " shells" */;
string globaldef001977 /* = " nails" */;
string globaldef001978 /* = " rockets" */;
string globaldef001979 /* = " cells" */;

// function func000244
// function number 244 begins at statement 6139
/*
 * OP_LOAD_F	28	158	5179
 * OP_LOAD_F	28	159	5180
 * OP_ADD_F	5179	5180	5181
 * OP_LOAD_F	28	160	5182
 * OP_ADD_F	5181	5182	5183
 * OP_LOAD_F	28	161	5184
 * OP_ADD_F	5183	5184	5185
 * OP_NOT_F	5185	0	5186
 * OP_IFNOT	5186	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	5178	0
 * OP_ADDRESS	5178	105	5187
 * OP_LOAD_V	28	105	5190
 * OP_SUB_V	5190	5193	5196
 * OP_STOREP_V	5196	5187	0
 * OP_ADDRESS	5178	162	5199
 * OP_LOAD_F	28	154	5200
 * OP_STOREP_F	5200	5199	0
 * OP_LOAD_F	5178	162	5201
 * OP_EQ_F	5201	253	5202
 * OP_IFNOT	5202	4	0
 * OP_ADDRESS	5178	180	5203
 * OP_STOREP_S	5204	5203	0
 * OP_GOTO	45	0	0
 * OP_LOAD_F	5178	162	5205
 * OP_EQ_F	5205	254	5206
 * OP_IFNOT	5206	4	0
 * OP_ADDRESS	5178	180	5207
 * OP_STOREP_S	5208	5207	0
 * OP_GOTO	39	0	0
 * OP_LOAD_F	5178	162	5209
 * OP_EQ_F	5209	255	5210
 * OP_IFNOT	5210	4	0
 * OP_ADDRESS	5178	180	5211
 * OP_STOREP_S	4675	5211	0
 * OP_GOTO	33	0	0
 * OP_LOAD_F	5178	162	5212
 * OP_EQ_F	5212	256	5213
 * OP_IFNOT	5213	4	0
 * OP_ADDRESS	5178	180	5214
 * OP_STOREP_S	5215	5214	0
 * OP_GOTO	27	0	0
 * OP_LOAD_F	5178	162	5216
 * OP_EQ_F	5216	257	5217
 * OP_IFNOT	5217	4	0
 * OP_ADDRESS	5178	180	5218
 * OP_STOREP_S	4693	5218	0
 * OP_GOTO	21	0	0
 * OP_LOAD_F	5178	162	5219
 * OP_EQ_F	5219	258	5220
 * OP_IFNOT	5220	4	0
 * OP_ADDRESS	5178	180	5221
 * OP_STOREP_S	4702	5221	0
 * OP_GOTO	15	0	0
 * OP_LOAD_F	5178	162	5222
 * OP_EQ_F	5222	259	5223
 * OP_IFNOT	5223	4	0
 * OP_ADDRESS	5178	180	5224
 * OP_STOREP_S	4711	5224	0
 * OP_GOTO	9	0	0
 * OP_LOAD_F	5178	162	5225
 * OP_EQ_F	5225	260	5226
 * OP_IFNOT	5226	4	0
 * OP_ADDRESS	5178	180	5227
 * OP_STOREP_S	4720	5227	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	5178	180	5228
 * OP_STOREP_S	3002	5228	0
 * OP_ADDRESS	5178	158	5229
 * OP_LOAD_F	28	158	5230
 * OP_STOREP_F	5230	5229	0
 * OP_ADDRESS	5178	159	5231
 * OP_LOAD_F	28	159	5232
 * OP_STOREP_F	5232	5231	0
 * OP_ADDRESS	5178	160	5233
 * OP_LOAD_F	28	160	5234
 * OP_STOREP_F	5234	5233	0
 * OP_ADDRESS	5178	161	5235
 * OP_LOAD_F	28	161	5236
 * OP_STOREP_F	5236	5235	0
 * OP_ADDRESS	5178	116	5237
 * OP_STOREP_F	540	5237	0
 * OP_ADDRESS	5178	114	5238
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2044	5239
 * OP_ADD_F	1867	5239	5240
 * OP_STOREP_F	5240	5238	0
 * OP_ADDRESS	5178	115	5241
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2044	5242
 * OP_ADD_F	1867	5242	5243
 * OP_STOREP_F	5243	5241	0
 * OP_ADDRESS	5178	182	5244
 * OP_STOREP_F	222	5244	0
 * OP_ADDRESS	5178	104	5245
 * OP_STOREP_F	238	5245	0
 * OP_ADDRESS	5178	103	5246
 * OP_STOREP_F	231	5246	0
 * OP_STORE_V	5178	4	0
 * OP_STORE_V	5247	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5178	4	0
 * OP_STORE_V	4517	7	0
 * OP_STORE_V	4520	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	5178	146	5248
 * OP_STOREP_FNC	5086	5248	0
 * OP_ADDRESS	5178	548	5249
 * OP_STOREP_FNC	1007	5249	0
 * OP_ADDRESS	5178	150	5250
 * OP_ADD_F	31	3584	5251
 * OP_STOREP_F	5251	5250	0
 * OP_ADDRESS	5178	148	5252
 * OP_STOREP_FNC	521	5252	0
 * OP_DONE	0	0	0
 */

void () func000244 = {

   local entity globaldef001981;

   if ( !(((self.ammo_shells + self.ammo_nails) + self.ammo_rockets) + self.ammo_cells) ) {

      return ;

   }
   globaldef001981 = spawn ();
   globaldef001981.origin = (self.origin - globaldef001982);
   globaldef001981.items = self.weapon;
   if ( (globaldef001981.items == IT_AXE) ) {

      globaldef001981.netname = globaldef001983;

   } else {

      if ( (globaldef001981.items == IT_SHOTGUN) ) {

         globaldef001981.netname = globaldef001984;

      } else {

         if ( (globaldef001981.items == IT_SUPER_SHOTGUN) ) {

            globaldef001981.netname = globaldef001863;

         } else {

            if ( (globaldef001981.items == IT_NAILGUN) ) {

               globaldef001981.netname = globaldef001985;

            } else {

               if ( (globaldef001981.items == IT_SUPER_NAILGUN) ) {

                  globaldef001981.netname = globaldef001869;

               } else {

                  if ( (globaldef001981.items == IT_GRENADE_LAUNCHER) ) {

                     globaldef001981.netname = globaldef001872;

                  } else {

                     if ( (globaldef001981.items == IT_ROCKET_LAUNCHER) ) {

                        globaldef001981.netname = globaldef001875;

                     } else {

                        if ( (globaldef001981.items == IT_LIGHTNING) ) {

                           globaldef001981.netname = globaldef001878;

                        } else {

                           globaldef001981.netname = globaldef001466;

                        }

                     }

                  }

               }

            }

         }

      }

   }
   globaldef001981.ammo_shells = self.ammo_shells;
   globaldef001981.ammo_nails = self.ammo_nails;
   globaldef001981.ammo_rockets = self.ammo_rockets;
   globaldef001981.ammo_cells = self.ammo_cells;
   globaldef001981.velocity_z = globaldef000523;
   globaldef001981.velocity = (globaldef001313 + (random () * globaldef001343));
   globaldef001981.velocity_y = (globaldef001313 + (random () * globaldef001343));
   globaldef001981.flags = FL_ITEM;
   globaldef001981.solid = SOLID_TRIGGER;
   globaldef001981.movetype = MOVETYPE_TOSS;
   setmodel (globaldef001981,globaldef001986);
   setsize (globaldef001981,globaldef001832,globaldef001833);
   globaldef001981.touch = func000243;
   globaldef001981.field000225 = func002297;
   globaldef001981.nextthink = (time + globaldef001638);
   globaldef001981.think = SUB_Remove;

};
vector globaldef001982 /* = '0.000 0.000 24.000' */;
string globaldef001983 /* = "Axe" */;
string globaldef001984 /* = "Shotgun" */;
string globaldef001985 /* = "Nailgun" */;
string globaldef001986 /* = "progs/backpack.mdl" */;
float globaldef001987 /* = 0.000 */;

// function func000245
// function number 245 begins at statement 6255
/*
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_SUB_F	5253	214	5255
 * OP_STORE_F	5255	5253	0
 * OP_DONE	0	0	0
 */

void () func000245 = {

   remove (self);
   globaldef001987 = (globaldef001987 - TRUE);

};

// function func000246
// function number 246 begins at statement 6260
/*
 * OP_LOAD_S	29	129	5258
 * OP_EQ_S	5258	5259	5260
 * OP_IFNOT	5260	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	121	5261
 * OP_STOREP_V	286	5261	0
 * OP_ADDRESS	28	118	5264
 * OP_STOREP_F	213	5264	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5265
 * OP_ADD_V	5265	2827	5268
 * OP_STORE_V	5268	7	0
 * OP_CALL2	453	0	0
 * OP_LOAD_V	28	105	5271
 * OP_STORE_V	5271	4	0
 * OP_CALL1	487	0	0
 * OP_STORE_F	1	5257	0
 * OP_EQ_F	5257	278	5274
 * OP_EQ_F	5257	279	5275
 * OP_OR	5274	5275	5276
 * OP_EQ_F	5257	280	5277
 * OP_OR	5276	5277	5278
 * OP_IFNOT	5278	4	0
 * OP_ADDRESS	28	113	5279
 * OP_STOREP_V	5282	5279	0
 * OP_GOTO	16	0	0
 * OP_EQ_F	5257	277	5285
 * OP_IFNOT	5285	8	0
 * OP_ADDRESS	28	148	5286
 * OP_STOREP_FNC	5254	5286	0
 * OP_ADDRESS	28	150	5287
 * OP_ADD_F	31	3036	5288
 * OP_STOREP_F	5288	5287	0
 * OP_RETURN	0	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5289	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	113	5290
 * OP_STORE_V	5290	4	0
 * OP_CALL1	462	0	0
 * OP_LT	1	1997	5293
 * OP_IFNOT	5293	7	0
 * OP_ADDRESS	28	103	5294
 * OP_STOREP_F	231	5294	0
 * OP_ADDRESS	28	104	5295
 * OP_STOREP_F	237	5295	0
 * OP_ADDRESS	28	146	5296
 * OP_STOREP_FNC	519	5296	0
 * OP_DONE	0	0	0
 */

void () func000246 = {

   local float globaldef001990;

   if ( (other.classname == globaldef001991) ) {

      return ;

   }
   self.avelocity = VEC_ORIGIN;
   self.angles = FALSE;
   setorigin (self,(self.origin + globaldef001444));
   globaldef001990 = pointcontents (self.origin);
   if ( (((globaldef001990 == CONTENT_WATER) || (globaldef001990 == CONTENT_SLIME)) || (globaldef001990 == CONTENT_LAVA)) ) {

      self.velocity = globaldef001992;

   } else {

      if ( (globaldef001990 == CONTENT_SOLID) ) {

         self.think = func000245;
         self.nextthink = (time + globaldef001488);
         return ;

      } else {

         sound (self,CHAN_WEAPON,globaldef001993,TRUE,ATTN_NORM);

      }

   }
   if ( (vlen (self.velocity) < globaldef001335) ) {

      self.movetype = MOVETYPE_TOSS;
      self.solid = SOLID_NOT;
      self.touch = SUB_Null;

   }

};
string globaldef001991 /* = "door" */;
vector globaldef001992 /* = '0.000 0.000 -100.000' */;
string globaldef001993 /* = "weapons/shellhit.wav" */;

// function func000247
// function number 247 begins at statement 6313
/*
 * OP_IFNOT	822	2	0
 * OP_RETURN	0	0	0
 * OP_BITAND	821	778	5306
 * OP_IFNOT	5306	2	0
 * OP_RETURN	0	0	0
 * OP_GE	5253	744	5307
 * OP_IFNOT	5307	11	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	5308	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	5305	0
 * OP_IFNOT	5305	5	0
 * OP_STORE_V	5305	4	0
 * OP_CALL1	465	0	0
 * OP_SUB_F	5253	214	5309
 * OP_STORE_F	5309	5253	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	5304	0
 * OP_ADDRESS	5304	201	5310
 * OP_STOREP_ENT	28	5310	0
 * OP_ADDRESS	5304	103	5311
 * OP_STOREP_F	235	5311	0
 * OP_ADDRESS	5304	104	5312
 * OP_STOREP_F	239	5312	0
 * OP_ADDRESS	5304	117	5313
 * OP_STORE_V	5301	4	0
 * OP_CALL1	495	0	0
 * OP_STOREP_V	1	5313	0
 * OP_ADDRESS	5304	146	5316
 * OP_STOREP_FNC	5256	5316	0
 * OP_ADDRESS	5304	129	5317
 * OP_STOREP_S	5308	5317	0
 * OP_ADDRESS	5304	148	5318
 * OP_STOREP_FNC	5254	5318	0
 * OP_ADDRESS	5304	150	5319
 * OP_ADD_F	31	765	5320
 * OP_STOREP_F	5320	5319	0
 * OP_STORE_V	5304	4	0
 * OP_STORE_V	5321	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5304	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	5304	4	0
 * OP_STORE_V	5298	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	5304	113	5322
 * OP_MUL_VF	5301	1470	5325
 * OP_STOREP_V	5325	5322	0
 * OP_ADDRESS	5304	114	5328
 * OP_LOAD_F	5304	114	5329
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	1470	5330
 * OP_ADD_F	5329	5330	5331
 * OP_SUB_F	5331	305	5332
 * OP_STOREP_F	5332	5328	0
 * OP_ADDRESS	5304	115	5333
 * OP_LOAD_F	5304	115	5334
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	1470	5335
 * OP_ADD_F	5334	5335	5336
 * OP_SUB_F	5336	305	5337
 * OP_STOREP_F	5337	5333	0
 * OP_ADDRESS	5304	116	5338
 * OP_LOAD_F	5304	116	5339
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2003	5340
 * OP_ADD_F	5339	5340	5341
 * OP_ADD_F	5341	1470	5342
 * OP_STOREP_F	5342	5338	0
 * OP_ADDRESS	5304	122	5343
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	740	5344
 * OP_SUB_F	5344	540	5345
 * OP_STOREP_F	5345	5343	0
 * OP_ADDRESS	5304	123	5346
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	5347	5348
 * OP_SUB_F	5348	2044	5349
 * OP_STOREP_F	5349	5346	0
 * OP_ADDRESS	5304	124	5350
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	540	5351
 * OP_SUB_F	5351	2003	5352
 * OP_STOREP_F	5352	5350	0
 * OP_ADD_F	5253	214	5353
 * OP_STORE_F	5353	5253	0
 * OP_DONE	0	0	0
 */

void (vector globaldef001995, vector globaldef001999) func000247 = {

   local entity globaldef002003;
   local entity globaldef002004;

   if ( globaldef000805 ) {

      return ;

   }
   if ( (globaldef000804 & globaldef000761) ) {

      return ;

   }
   if ( (globaldef001987 >= globaldef000727) ) {

      globaldef002004 = find (world,classname,globaldef002005);
      if ( globaldef002004 ) {

         remove (globaldef002004);
         globaldef001987 = (globaldef001987 - TRUE);

      }

   }
   globaldef002003 = spawn ();
   globaldef002003.owner = self;
   globaldef002003.movetype = MOVETYPE_BOUNCE;
   globaldef002003.solid = SOLID_BBOX;
   globaldef002003.angles = vectoangles (globaldef001999);
   globaldef002003.touch = func000246;
   globaldef002003.classname = globaldef002005;
   globaldef002003.think = func000245;
   globaldef002003.nextthink = (time + globaldef000748);
   setmodel (globaldef002003,globaldef002006);
   setsize (globaldef002003,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef002003,globaldef001995);
   globaldef002003.velocity = (globaldef001999 * globaldef001257);
   globaldef002003.velocity = ((globaldef002003.velocity + (random () * globaldef001257)) - globaldef000288);
   globaldef002003.velocity_y = ((globaldef002003.velocity_y + (random () * globaldef001257)) - globaldef000288);
   globaldef002003.velocity_z = ((globaldef002003.velocity_z + (random () * globaldef001336)) + globaldef001257);
   globaldef002003.avelocity = ((random () * globaldef000723) - globaldef000523);
   globaldef002003.avelocity_y = ((random () * globaldef002007) - globaldef001343);
   globaldef002003.avelocity_z = ((random () * globaldef000523) - globaldef001336);
   globaldef001987 = (globaldef001987 + TRUE);

};
string globaldef002006 /* = "progs/shelcase.mdl" */;
float globaldef002007 /* = 400.000 */;

void () player_run;

void (vector globaldef002057, vector globaldef002061, float globaldef002065) func000254;

void () SuperDamageSound;

// function func000248
// function number 248 begins at statement 6403
/*
 * OP_STORE_V	5358	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5359	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5360	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5361	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5362	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5363	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5364	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5365	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5366	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5367	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5368	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	5369	4	0
 * OP_CALL1	469	0	0
 * OP_DONE	0	0	0
 */

void () func000248 = {

   precache_sound (globaldef002012);
   precache_sound (globaldef002013);
   precache_sound (globaldef002014);
   precache_sound (globaldef002015);
   precache_sound (globaldef002016);
   precache_sound (globaldef002017);
   precache_sound (globaldef002018);
   precache_sound (globaldef002019);
   precache_sound (globaldef002020);
   precache_sound (globaldef002021);
   precache_sound (globaldef002022);
   precache_sound (globaldef002023);

};
string globaldef002012 /* = "weapons/r_exp3.wav" */;
string globaldef002013 /* = "weapons/rocket1i.wav" */;
string globaldef002014 /* = "weapons/sgun1.wav" */;
string globaldef002015 /* = "weapons/guncock.wav" */;
string globaldef002016 /* = "weapons/ric1.wav" */;
string globaldef002017 /* = "weapons/ric2.wav" */;
string globaldef002018 /* = "weapons/ric3.wav" */;
string globaldef002019 /* = "weapons/spike2.wav" */;
string globaldef002020 /* = "weapons/tink1.wav" */;
string globaldef002021 /* = "weapons/grenade.wav" */;
string globaldef002022 /* = "weapons/bounce.wav" */;
string globaldef002023 /* = "weapons/shotgn2.wav" */;

// function func000249
// function number 249 begins at statement 6428
/*
 * OP_CALL0	457	0	0
 * OP_SUB_F	1	539	5371
 * OP_MUL_F	216	5371	5372
 * OP_RETURN	5372	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ () func000249 = {

   return ( (FL_SWIM * (random () - globaldef000522)) );

};

// function func000250
// function number 250 begins at statement 6433
/*
 * OP_LOAD_V	5374	175	5376
 * OP_STORE_V	5376	4	0
 * OP_CALL1	452	0	0
 * OP_STORE_V	59	4	0
 * OP_CALL1	459	0	0
 * OP_RETURN	1	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ (entity globaldef002026, float globaldef002027) func000250 = {

   makevectors (globaldef002026.v_angle);
   return ( normalize (v_forward) );

};

// function func000251
// function number 251 begins at statement 6440
/*
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5386
 * OP_STORE_V	5386	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_LOAD_V	28	105	5389
 * OP_ADD_V	5389	5392	5395
 * OP_STORE_V	5395	5380	0
 * OP_STORE_V	5380	4	0
 * OP_MUL_VF	59	220	5398
 * OP_ADD_V	5380	5398	5401
 * OP_STORE_V	5401	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_EQ_F	70	214	5404
 * OP_IFNOT	5404	2	0
 * OP_RETURN	0	0	0
 * OP_MUL_VF	59	229	5405
 * OP_SUB_V	71	5405	5408
 * OP_STORE_V	5408	5383	0
 * OP_LOAD_F	78	163	5411
 * OP_IFNOT	5411	13	0
 * OP_ADDRESS	78	392	5412
 * OP_STOREP_F	214	5412	0
 * OP_STORE_V	5383	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	2323	10	0
 * OP_CALL3	5355	0	0
 * OP_STORE_V	78	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	2323	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	22	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5413	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	315	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5383	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5384	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5385	7	0
 * OP_CALL2	500	0	0
 * OP_DONE	0	0	0
 */

void () func000251 = {

   local vector globaldef002029;
   local vector globaldef002033;

   func002453 (self,self.origin,TRUE,globaldef000741);
   globaldef002029 = (self.origin + globaldef002037);
   traceline (globaldef002029,(globaldef002029 + (v_forward * FL_GODMODE)),FALSE,self);
   if ( (trace_fraction == TRUE) ) {

      return ;

   }
   globaldef002033 = (trace_endpos - (v_forward * MOVETYPE_STEP));
   if ( trace_ent.takedamage ) {

      trace_ent.axhitme = TRUE;
      func000254 (globaldef002033,VEC_ORIGIN,globaldef001384);
      T_Damage (trace_ent,self,self,globaldef001384);

   } else {

      sound (self,CHAN_WEAPON,globaldef002038,TRUE,ATTN_NORM);
      WriteByte (MSG_BROADCAST,globaldef000287);
      WriteByte (MSG_BROADCAST,TE_GUNSHOT);
      WriteCoord (MSG_BROADCAST,globaldef002033);
      WriteCoord (MSG_BROADCAST,globaldef002035);
      WriteCoord (MSG_BROADCAST,globaldef002036);

   }

};
vector globaldef002037 /* = '0.000 0.000 16.000' */;
string globaldef002038 /* = "player/axhit2.wav" */;

// function func000252
// function number 252 begins at statement 6498
/*
 * OP_LOAD_V	28	113	5418
 * OP_STORE_V	5418	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	5415	0
 * OP_CALL0	457	0	0
 * OP_SUB_F	1	539	5421
 * OP_MUL_VF	62	5421	5422
 * OP_ADD_V	5415	5422	5425
 * OP_CALL0	457	0	0
 * OP_SUB_F	1	539	5428
 * OP_MUL_VF	65	5428	5429
 * OP_ADD_V	5425	5429	5432
 * OP_STORE_V	5432	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	5415	0
 * OP_MUL_FV	216	74	5435
 * OP_ADD_V	5415	5435	5438
 * OP_STORE_V	5438	5415	0
 * OP_MUL_VF	5415	2044	5441
 * OP_STORE_V	5441	5415	0
 * OP_RETURN	5415	0	0
 * OP_DONE	0	0	0
 */
vector () func000252 = {

   local vector globaldef002040;

   globaldef002040 = normalize (self.velocity);
   globaldef002040 = normalize (((globaldef002040 + (v_up * (random () - globaldef000522))) + (v_right * (random () - globaldef000522))));
   globaldef002040 = (globaldef002040 + (FL_SWIM * trace_plane_normal));
   globaldef002040 = (globaldef002040 * globaldef001343);
   return ( globaldef002040 );

};

// function func000253
// function number 253 begins at statement 6520
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	5451	0
 * OP_ADDRESS	5451	201	5453
 * OP_STOREP_ENT	28	5453	0
 * OP_ADDRESS	5451	103	5454
 * OP_STOREP_F	235	5454	0
 * OP_ADDRESS	5451	104	5455
 * OP_STOREP_F	237	5455	0
 * OP_LOAD_V	28	117	5456
 * OP_STORE_V	5456	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	5451	113	5459
 * OP_STOREP_V	5448	5459	0
 * OP_ADDRESS	5451	116	5462
 * OP_LOAD_F	5451	116	5463
 * OP_ADD_F	5463	738	5464
 * OP_CALL0	457	0	0
 * OP_MUL_F	1470	1	5465
 * OP_ADD_F	5464	5465	5466
 * OP_STOREP_F	5466	5462	0
 * OP_ADDRESS	5451	121	5467
 * OP_STOREP_V	5470	5467	0
 * OP_ADDRESS	5451	150	5473
 * OP_ADD_F	31	214	5474
 * OP_STOREP_F	5474	5473	0
 * OP_ADDRESS	5451	148	5475
 * OP_STOREP_FNC	521	5475	0
 * OP_STORE_V	5451	4	0
 * OP_STORE_V	5476	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5451	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	5451	4	0
 * OP_STORE_V	5445	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef002045, vector globaldef002049) func000253 = {

   local entity globaldef002053;
   local entity globaldef002054;

   globaldef002053 = spawn ();
   globaldef002053.owner = self;
   globaldef002053.movetype = MOVETYPE_BOUNCE;
   globaldef002053.solid = SOLID_NOT;
   makevectors (self.angles);
   globaldef002053.velocity = globaldef002049;
   globaldef002053.velocity_z = ((globaldef002053.velocity_z + globaldef000721) + (globaldef001257 * random ()));
   globaldef002053.avelocity = globaldef002055;
   globaldef002053.nextthink = (time + TRUE);
   globaldef002053.think = SUB_Remove;
   setmodel (globaldef002053,globaldef002056);
   setsize (globaldef002053,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef002053,globaldef002045);

};
vector globaldef002055 /* = '3000.000 1000.000 2000.000' */;
string globaldef002056 /* = "progs/zom_gib.mdl" */;

// function func000254
// function number 254 begins at statement 6558
/*
 * OP_STORE_V	5477	4	0
 * OP_MUL_VF	5480	3036	5484
 * OP_STORE_V	5484	7	0
 * OP_STORE_V	5487	10	0
 * OP_MUL_F	5483	216	5488
 * OP_STORE_V	5488	13	0
 * OP_CALL4	493	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef002057, vector globaldef002061, float globaldef002065) func000254 = {

   particle (globaldef002057,(globaldef002061 * globaldef001488),globaldef002066,(globaldef002065 * FL_SWIM));

};
float globaldef002066 /* = 73.000 */;

// function func000255
// function number 255 begins at statement 6566
/*
 * OP_CALL0	5414	0	0
 * OP_MUL_VF	1	3267	5494
 * OP_STORE_V	5494	5491	0
 * OP_LOAD_V	28	105	5497
 * OP_MUL_VF	5491	5500	5501
 * OP_ADD_V	5497	5501	5504
 * OP_STORE_V	5504	4	0
 * OP_STORE_V	5491	7	0
 * OP_STORE_V	5490	10	0
 * OP_CALL3	5355	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef002068) func000255 = {

   local vector globaldef002069;

   globaldef002069 = (func000252 () * globaldef001553);
   func000254 ((self.origin + (globaldef002069 * globaldef002073)),globaldef002069,globaldef002068);

};
