float (float globaldef001619) anglemod;

void () knight_atk1;

void () knight_runatk1;

void () ogre_smash1;

void () ogre_swing1;

void () sham_smash1;

void () sham_swingr1;

void () sham_swingl1;
float () DemonCheckAttack;

void (float globaldef003923) Demon_Melee;

void (vector globaldef001711) ChooseTurn;

void () ai_face;
float globaldef001534 /* = 0.000 */;
float globaldef001535 /* = 0.000 */;
float globaldef001536 /* = 0.000 */;
float globaldef001537 /* = 0.000 */;

// function knight_attack
// function number 163 begins at statement 2712
/*
 * OP_LOAD_ENT	28	181	3197
 * OP_LOAD_V	3197	105	3198
 * OP_LOAD_ENT	28	181	3201
 * OP_LOAD_V	3201	166	3202
 * OP_ADD_V	3198	3202	3205
 * OP_LOAD_V	28	105	3208
 * OP_LOAD_V	28	166	3211
 * OP_ADD_V	3208	3211	3214
 * OP_SUB_V	3205	3214	3217
 * OP_STORE_V	3217	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	3196	0
 * OP_LT	3196	2805	3220
 * OP_IFNOT	3220	3	0
 * OP_CALL0	3180	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	3181	0	0
 * OP_DONE	0	0	0
 */

void () knight_attack = {

   local float len;

   len = vlen (((self.enemy.origin + self.enemy.view_ofs) - (self.origin + self.view_ofs)));
   if ( (len < globaldef001439) ) {

      knight_atk1 ();

   } else {

      knight_runatk1 ();

   }

};

// function CheckAttack
// function number 164 begins at statement 2730
/*
 * OP_LOAD_ENT	28	181	3230
 * OP_STORE_ENT	3230	3228	0
 * OP_LOAD_V	28	105	3231
 * OP_LOAD_V	28	166	3234
 * OP_ADD_V	3231	3234	3237
 * OP_STORE_V	3237	3222	0
 * OP_LOAD_V	3228	105	3240
 * OP_LOAD_V	3228	166	3243
 * OP_ADD_V	3240	3243	3246
 * OP_STORE_V	3246	3225	0
 * OP_STORE_V	3222	4	0
 * OP_STORE_V	3225	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_E	78	3228	3249
 * OP_IFNOT	3249	2	0
 * OP_RETURN	213	0	0
 * OP_AND	79	80	3250
 * OP_IFNOT	3250	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	242	3251
 * OP_IFNOT	3251	11	0
 * OP_LOAD_FNC	28	365	3252
 * OP_IFNOT	3252	9	0
 * OP_LOAD_S	28	129	3253
 * OP_EQ_S	3253	3254	3255
 * OP_IFNOT	3255	3	0
 * OP_CALL0	3195	0	0
 * OP_GOTO	3	0	0
 * OP_LOAD_FNC	28	365	3256
 * OP_CALL0	3256	0	0
 * OP_RETURN	214	0	0
 * OP_LOAD_FNC	28	364	3257
 * OP_NOT_FNC	3257	0	3258
 * OP_IFNOT	3258	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	28	378	3259
 * OP_LT	31	3259	3260
 * OP_IFNOT	3260	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	245	3261
 * OP_IFNOT	3261	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	242	3262
 * OP_IFNOT	3262	5	0
 * OP_STORE_F	3263	3229	0
 * OP_ADDRESS	28	378	3264
 * OP_STOREP_F	213	3264	0
 * OP_GOTO	18	0	0
 * OP_EQ_F	3193	243	3265
 * OP_IFNOT	3265	7	0
 * OP_LOAD_FNC	28	365	3266
 * OP_IFNOT	3266	3	0
 * OP_STORE_F	3267	3229	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	1644	3229	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	3193	244	3268
 * OP_IFNOT	3268	7	0
 * OP_LOAD_FNC	28	365	3269
 * OP_IFNOT	3269	3	0
 * OP_STORE_F	3270	3229	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	3036	3229	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	213	3229	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3229	3271
 * OP_IFNOT	3271	8	0
 * OP_LOAD_FNC	28	364	3272
 * OP_CALL0	3272	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	216	1	3273
 * OP_STORE_V	3273	4	0
 * OP_CALL1	3163	0	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () CheckAttack = {

   local vector spot1;
   local vector spot2;
   local entity targ;
   local float chance;

   targ = self.enemy;
   spot1 = (self.origin + self.view_ofs);
   spot2 = (targ.origin + targ.view_ofs);
   traceline (spot1,spot2,FALSE,self);
   if ( (trace_ent != targ) ) {

      return ( FALSE );

   }
   if ( (trace_inopen && trace_inwater) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_MELEE) ) {

      if ( self.th_melee ) {

         if ( (self.classname == globaldef001551) ) {

            knight_attack ();

         } else {

            self.th_melee ();

         }
         return ( TRUE );

      }

   }
   if ( !self.th_missile ) {

      return ( FALSE );

   }
   if ( (time < self.attack_finished) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_FAR) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_MELEE) ) {

      chance = globaldef001552;
      self.attack_finished = FALSE;

   } else {

      if ( (globaldef001536 == RANGE_NEAR) ) {

         if ( self.th_melee ) {

            chance = globaldef001553;

         } else {

            chance = globaldef001300;

         }

      } else {

         if ( (globaldef001536 == RANGE_MID) ) {

            if ( self.th_melee ) {

               chance = globaldef001554;

            } else {

               chance = globaldef001488;

            }

         } else {

            chance = FALSE;

         }

      }

   }
   if ( (random () < chance) ) {

      self.th_missile ();
      SUB_AttackFinished ((FL_SWIM * random ()));
      return ( TRUE );

   }
   return ( FALSE );

};
string globaldef001551 /* = "monster_knight" */;
float globaldef001552 /* = 0.900 */;
float globaldef001553 /* = 0.200 */;
float globaldef001554 /* = 0.050 */;

// function ai_face
// function number 165 begins at statement 2809
/*
 * OP_ADDRESS	28	191	3274
 * OP_LOAD_ENT	28	181	3275
 * OP_LOAD_V	3275	105	3276
 * OP_LOAD_V	28	105	3279
 * OP_SUB_V	3276	3279	3282
 * OP_STORE_V	3282	4	0
 * OP_CALL1	463	0	0
 * OP_STOREP_F	1	3274	0
 * OP_CALL0	494	0	0
 * OP_DONE	0	0	0
 */

void () ai_face = {

   self.ideal_yaw = vectoyaw ((self.enemy.origin - self.origin));
   ChangeYaw ();

};
float (entity globaldef001648) infront;
float (entity globaldef001628) range;

// function ai_charge
// function number 166 begins at statement 2819
/*
 * OP_CALL0	3190	0	0
 * OP_STORE_V	3288	4	0
 * OP_CALL1	504	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef001558) ai_charge = {

   ai_face ();
   movetogoal (globaldef001558);

};

// function ai_charge_side
// function number 167 begins at statement 2823
/*
 * OP_ADDRESS	28	191	3294
 * OP_LOAD_ENT	28	181	3295
 * OP_LOAD_V	3295	105	3296
 * OP_LOAD_V	28	105	3299
 * OP_SUB_V	3296	3299	3302
 * OP_STORE_V	3302	4	0
 * OP_CALL1	463	0	0
 * OP_STOREP_F	1	3294	0
 * OP_CALL0	494	0	0
 * OP_LOAD_V	28	117	3305
 * OP_STORE_V	3305	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_ENT	28	181	3308
 * OP_LOAD_V	3308	105	3309
 * OP_MUL_FV	309	65	3312
 * OP_SUB_V	3309	3312	3315
 * OP_STORE_V	3315	3290	0
 * OP_LOAD_V	28	105	3318
 * OP_SUB_V	3290	3318	3321
 * OP_STORE_V	3321	4	0
 * OP_CALL1	463	0	0
 * OP_STORE_F	1	3293	0
 * OP_STORE_V	3293	4	0
 * OP_STORE_V	2323	7	0
 * OP_CALL2	480	0	0
 * OP_DONE	0	0	0
 */

void () ai_charge_side = {

   local vector dtemp;
   local float heading;

   self.ideal_yaw = vectoyaw ((self.enemy.origin - self.origin));
   ChangeYaw ();
   makevectors (self.angles);
   dtemp = (self.enemy.origin - (SVC_INTERMISSION * v_right));
   heading = vectoyaw ((dtemp - self.origin));
   walkmove (heading,globaldef001384);

};

// function ai_melee
// function number 168 begins at statement 2849
/*
 * OP_LOAD_ENT	28	181	3329
 * OP_NOT_ENT	3329	0	3330
 * OP_IFNOT	3330	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	3331
 * OP_LOAD_V	3331	105	3332
 * OP_LOAD_V	28	105	3335
 * OP_SUB_V	3332	3335	3338
 * OP_STORE_V	3338	3325	0
 * OP_STORE_V	3325	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	2019	3341
 * OP_IFNOT	3341	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	1	1	3342
 * OP_CALL0	457	0	0
 * OP_ADD_F	3342	1	3343
 * OP_MUL_F	3343	228	3344
 * OP_STORE_F	3344	3328	0
 * OP_LOAD_ENT	28	181	3345
 * OP_STORE_V	3345	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	3328	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void () ai_melee = {

   local vector delta;
   local float ldmg;

   if ( !self.enemy ) {

      return ;

   }
   delta = (self.enemy.origin - self.origin);
   if ( (vlen (delta) > globaldef001337) ) {

      return ;

   }
   ldmg = (((random () + random ()) + random ()) * MOVETYPE_WALK);
   T_Damage (self.enemy,self,self,ldmg);

};

// function ai_melee_side
// function number 169 begins at statement 2877
/*
 * OP_LOAD_ENT	28	181	3351
 * OP_NOT_ENT	3351	0	3352
 * OP_IFNOT	3352	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	3289	0	0
 * OP_LOAD_ENT	28	181	3353
 * OP_LOAD_V	3353	105	3354
 * OP_LOAD_V	28	105	3357
 * OP_SUB_V	3354	3357	3360
 * OP_STORE_V	3360	3347	0
 * OP_STORE_V	3347	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	2019	3363
 * OP_IFNOT	3363	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	3364
 * OP_STORE_V	3364	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	524	0	0
 * OP_NOT_F	1	0	3365
 * OP_IFNOT	3365	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	1	1	3366
 * OP_CALL0	457	0	0
 * OP_ADD_F	3366	1	3367
 * OP_MUL_F	3367	228	3368
 * OP_STORE_F	3368	3350	0
 * OP_LOAD_ENT	28	181	3369
 * OP_STORE_V	3369	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	3350	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void () ai_melee_side = {

   local vector delta;
   local float ldmg;

   if ( !self.enemy ) {

      return ;

   }
   ai_charge_side ();
   delta = (self.enemy.origin - self.origin);
   if ( (vlen (delta) > globaldef001337) ) {

      return ;

   }
   if ( !CanDamage (self.enemy,self) ) {

      return ;

   }
   ldmg = (((random () + random ()) + random ()) * MOVETYPE_WALK);
   T_Damage (self.enemy,self,self,ldmg);

};

// function SoldierCheckAttack
// function number 170 begins at statement 2913
/*
 * OP_LOAD_ENT	28	181	3379
 * OP_STORE_ENT	3379	3377	0
 * OP_LOAD_V	28	105	3380
 * OP_LOAD_V	28	166	3383
 * OP_ADD_V	3380	3383	3386
 * OP_STORE_V	3386	3371	0
 * OP_LOAD_V	3377	105	3389
 * OP_LOAD_V	3377	166	3392
 * OP_ADD_V	3389	3392	3395
 * OP_STORE_V	3395	3374	0
 * OP_STORE_V	3371	4	0
 * OP_STORE_V	3374	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_AND	79	80	3398
 * OP_IFNOT	3398	2	0
 * OP_RETURN	213	0	0
 * OP_NE_E	78	3377	3399
 * OP_IFNOT	3399	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	28	378	3400
 * OP_LT	31	3400	3401
 * OP_IFNOT	3401	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	245	3402
 * OP_IFNOT	3402	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	242	3403
 * OP_IFNOT	3403	3	0
 * OP_STORE_F	3263	3378	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	3193	243	3404
 * OP_IFNOT	3404	3	0
 * OP_STORE_F	1644	3378	0
 * OP_GOTO	6	0	0
 * OP_EQ_F	3193	244	3405
 * OP_IFNOT	3405	3	0
 * OP_STORE_F	3270	3378	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	213	3378	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3378	3406
 * OP_IFNOT	3406	15	0
 * OP_LOAD_FNC	28	364	3407
 * OP_CALL0	3407	0	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	214	1	3408
 * OP_STORE_V	3408	4	0
 * OP_CALL1	3163	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3409	3410
 * OP_IFNOT	3410	5	0
 * OP_ADDRESS	28	370	3411
 * OP_LOAD_F	28	370	3412
 * OP_NOT_F	3412	0	3413
 * OP_STOREP_F	3413	3411	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () SoldierCheckAttack = {

   local vector spot1;
   local vector spot2;
   local entity targ;
   local float chance;

   targ = self.enemy;
   spot1 = (self.origin + self.view_ofs);
   spot2 = (targ.origin + targ.view_ofs);
   traceline (spot1,spot2,FALSE,self);
   if ( (trace_inopen && trace_inwater) ) {

      return ( FALSE );

   }
   if ( (trace_ent != targ) ) {

      return ( FALSE );

   }
   if ( (time < self.attack_finished) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_FAR) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_MELEE) ) {

      chance = globaldef001552;

   } else {

      if ( (globaldef001536 == RANGE_NEAR) ) {

         chance = globaldef001300;

      } else {

         if ( (globaldef001536 == RANGE_MID) ) {

            chance = globaldef001554;

         } else {

            chance = FALSE;

         }

      }

   }
   if ( (random () < chance) ) {

      self.th_missile ();
      SUB_AttackFinished ((TRUE + random ()));
      if ( (random () < globaldef001588) ) {

         self.lefty = !self.lefty;

      }
      return ( TRUE );

   }
   return ( FALSE );

};
float globaldef001588 /* = 0.300 */;

// function ShamCheckAttack
// function number 171 begins at statement 2973
/*
 * OP_EQ_F	3193	242	3423
 * OP_IFNOT	3423	9	0
 * OP_LOAD_ENT	28	181	3424
 * OP_STORE_V	3424	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	524	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	372	3425
 * OP_STOREP_F	375	3425	0
 * OP_RETURN	214	0	0
 * OP_LOAD_F	28	378	3426
 * OP_LT	31	3426	3427
 * OP_IFNOT	3427	2	0
 * OP_RETURN	213	0	0
 * OP_NOT_F	3191	0	3428
 * OP_IFNOT	3428	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_ENT	28	181	3429
 * OP_STORE_ENT	3429	3421	0
 * OP_LOAD_V	28	105	3430
 * OP_LOAD_V	28	166	3433
 * OP_ADD_V	3430	3433	3436
 * OP_STORE_V	3436	3415	0
 * OP_LOAD_V	3421	105	3439
 * OP_LOAD_V	3421	166	3442
 * OP_ADD_V	3439	3442	3445
 * OP_STORE_V	3445	3418	0
 * OP_SUB_V	3415	3418	3448
 * OP_STORE_V	3448	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	740	3451
 * OP_IFNOT	3451	2	0
 * OP_RETURN	213	0	0
 * OP_STORE_V	3415	4	0
 * OP_STORE_V	3418	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_AND	79	80	3452
 * OP_IFNOT	3452	2	0
 * OP_RETURN	213	0	0
 * OP_NE_E	78	3421	3453
 * OP_IFNOT	3453	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	245	3454
 * OP_IFNOT	3454	2	0
 * OP_RETURN	213	0	0
 * OP_ADDRESS	28	372	3455
 * OP_STOREP_F	376	3455	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	216	1	3456
 * OP_ADD_F	216	3456	3457
 * OP_STORE_V	3457	4	0
 * OP_CALL1	3163	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () ShamCheckAttack = {

   local vector spot1;
   local vector spot2;
   local entity targ;
   local float chance;

   if ( (globaldef001536 == RANGE_MELEE) ) {

      if ( CanDamage (self.enemy,self) ) {

         self.attack_state = AS_MELEE;
         return ( TRUE );

      }

   }
   if ( (time < self.attack_finished) ) {

      return ( FALSE );

   }
   if ( !globaldef001534 ) {

      return ( FALSE );

   }
   targ = self.enemy;
   spot1 = (self.origin + self.view_ofs);
   spot2 = (targ.origin + targ.view_ofs);
   if ( (vlen ((spot1 - spot2)) > globaldef000723) ) {

      return ( FALSE );

   }
   traceline (spot1,spot2,FALSE,self);
   if ( (trace_inopen && trace_inwater) ) {

      return ( FALSE );

   }
   if ( (trace_ent != targ) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_FAR) ) {

      return ( FALSE );

   }
   self.attack_state = AS_MISSILE;
   SUB_AttackFinished ((FL_SWIM + (FL_SWIM * random ())));
   return ( TRUE );

};

// function OgreCheckAttack
// function number 172 begins at statement 3029
/*
 * OP_EQ_F	3193	242	3467
 * OP_IFNOT	3467	9	0
 * OP_LOAD_ENT	28	181	3468
 * OP_STORE_V	3468	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	524	0	0
 * OP_IFNOT	1	4	0
 * OP_ADDRESS	28	372	3469
 * OP_STOREP_F	375	3469	0
 * OP_RETURN	214	0	0
 * OP_LOAD_F	28	378	3470
 * OP_LT	31	3470	3471
 * OP_IFNOT	3471	2	0
 * OP_RETURN	213	0	0
 * OP_NOT_F	3191	0	3472
 * OP_IFNOT	3472	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_ENT	28	181	3473
 * OP_STORE_ENT	3473	3465	0
 * OP_LOAD_V	28	105	3474
 * OP_LOAD_V	28	166	3477
 * OP_ADD_V	3474	3477	3480
 * OP_STORE_V	3480	3459	0
 * OP_LOAD_V	3465	105	3483
 * OP_LOAD_V	3465	166	3486
 * OP_ADD_V	3483	3486	3489
 * OP_STORE_V	3489	3462	0
 * OP_STORE_V	3459	4	0
 * OP_STORE_V	3462	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_AND	79	80	3492
 * OP_IFNOT	3492	2	0
 * OP_RETURN	213	0	0
 * OP_NE_E	78	3465	3493
 * OP_IFNOT	3493	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	28	378	3494
 * OP_LT	31	3494	3495
 * OP_IFNOT	3495	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	245	3496
 * OP_IFNOT	3496	3	0
 * OP_RETURN	213	0	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	3193	243	3497
 * OP_IFNOT	3497	3	0
 * OP_STORE_F	3036	3466	0
 * OP_GOTO	6	0	0
 * OP_EQ_F	3193	244	3498
 * OP_IFNOT	3498	3	0
 * OP_STORE_F	3270	3466	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	213	3466	0
 * OP_ADDRESS	28	372	3499
 * OP_STOREP_F	376	3499	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	216	1	3500
 * OP_ADD_F	214	3500	3501
 * OP_STORE_V	3501	4	0
 * OP_CALL1	3163	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () OgreCheckAttack = {

   local vector spot1;
   local vector spot2;
   local entity targ;
   local float chance;

   if ( (globaldef001536 == RANGE_MELEE) ) {

      if ( CanDamage (self.enemy,self) ) {

         self.attack_state = AS_MELEE;
         return ( TRUE );

      }

   }
   if ( (time < self.attack_finished) ) {

      return ( FALSE );

   }
   if ( !globaldef001534 ) {

      return ( FALSE );

   }
   targ = self.enemy;
   spot1 = (self.origin + self.view_ofs);
   spot2 = (targ.origin + targ.view_ofs);
   traceline (spot1,spot2,FALSE,self);
   if ( (trace_inopen && trace_inwater) ) {

      return ( FALSE );

   }
   if ( (trace_ent != targ) ) {

      return ( FALSE );

   }
   if ( (time < self.attack_finished) ) {

      return ( FALSE );

   }
   if ( (globaldef001536 == RANGE_FAR) ) {

      return ( FALSE );

   } else {

      if ( (globaldef001536 == RANGE_NEAR) ) {

         chance = globaldef001488;

      } else {

         if ( (globaldef001536 == RANGE_MID) ) {

            chance = globaldef001554;

         } else {

            chance = FALSE;

         }

      }

   }
   self.attack_state = AS_MISSILE;
   SUB_AttackFinished ((TRUE + (FL_SWIM * random ())));
   return ( TRUE );

};
