string globaldef003653 /* = "enforcer/pain2.wav" */;
string globaldef003654 /* = "enforcer/death1.wav" */;
string globaldef003655 /* = "enforcer/idle1.wav" */;

// function OgreGrenadeExplode
// function number 665 begins at statement 18229
/*
 * OP_STORE_V	28	4	0
 * OP_LOAD_ENT	28	201	12313
 * OP_STORE_V	12313	7	0
 * OP_STORE_V	746	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	4216	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	5358	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	316	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	12314
 * OP_STORE_V	12314	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	12315
 * OP_STORE_V	12315	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	12316
 * OP_STORE_V	12316	7	0
 * OP_CALL2	500	0	0
 * OP_ADDRESS	28	113	12317
 * OP_STOREP_V	286	12317	0
 * OP_ADDRESS	28	146	12320
 * OP_STOREP_FNC	519	12320	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	5709	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	104	12321
 * OP_STOREP_F	237	12321	0
 * OP_CALL0	5697	0	0
 * OP_DONE	0	0	0
 */

void () OgreGrenadeExplode = {

   T_RadiusDamage (self,self.owner,globaldef000729,world);
   sound (self,CHAN_VOICE,globaldef002012,TRUE,ATTN_NORM);
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_EXPLOSION);
   WriteCoord (MSG_BROADCAST,self.origin);
   WriteCoord (MSG_BROADCAST,self.origin_y);
   WriteCoord (MSG_BROADCAST,self.origin_z);
   self.velocity = VEC_ORIGIN;
   self.touch = SUB_Null;
   setmodel (self,globaldef002145);
   self.solid = SOLID_NOT;
   s_explode1 ();

};

// function OgreGrenadeTouch
// function number 666 begins at statement 18270
/*
 * OP_LOAD_ENT	28	201	12323
 * OP_EQ_E	29	12323	12324
 * OP_IFNOT	12324	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	12325
 * OP_EQ_F	12325	252	12326
 * OP_IFNOT	12326	3	0
 * OP_CALL0	12312	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	5368	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	113	12327
 * OP_EQ_V	12327	286	12330
 * OP_IFNOT	12330	3	0
 * OP_ADDRESS	28	121	12331
 * OP_STOREP_V	286	12331	0
 * OP_DONE	0	0	0
 */

void () OgreGrenadeTouch = {

   if ( (other == self.owner) ) {

      return ;

   }
   if ( (other.takedamage == DAMAGE_AIM) ) {

      OgreGrenadeExplode ();
      return ;

   }
   sound (self,CHAN_VOICE,globaldef002022,TRUE,ATTN_NORM);
   if ( (self.velocity == VEC_ORIGIN) ) {

      self.avelocity = VEC_ORIGIN;

   }

};

// function OgreFireGrenade
// function number 667 begins at statement 18291
/*
 * OP_ADDRESS	28	133	12337
 * OP_LOAD_F	28	133	12338
 * OP_BITOR	12338	339	12339
 * OP_STOREP_F	12339	12337	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5367	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	12335	0
 * OP_ADDRESS	12335	201	12340
 * OP_STOREP_ENT	28	12340	0
 * OP_ADDRESS	12335	103	12341
 * OP_STOREP_F	235	12341	0
 * OP_ADDRESS	12335	104	12342
 * OP_STOREP_F	239	12342	0
 * OP_LOAD_V	28	117	12343
 * OP_STORE_V	12343	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	12335	113	12346
 * OP_LOAD_ENT	28	181	12349
 * OP_LOAD_V	12349	105	12350
 * OP_LOAD_V	28	105	12353
 * OP_SUB_V	12350	12353	12356
 * OP_STORE_V	12356	4	0
 * OP_CALL1	459	0	0
 * OP_STOREP_V	1	12346	0
 * OP_ADDRESS	12335	113	12359
 * OP_LOAD_V	12335	113	12362
 * OP_MUL_VF	12362	740	12365
 * OP_STOREP_V	12365	12359	0
 * OP_ADDRESS	12335	116	12368
 * OP_STOREP_F	2044	12368	0
 * OP_ADDRESS	12335	121	12369
 * OP_STOREP_V	5998	12369	0
 * OP_ADDRESS	12335	117	12372
 * OP_LOAD_V	12335	113	12375
 * OP_STORE_V	12375	4	0
 * OP_CALL1	495	0	0
 * OP_STOREP_V	1	12372	0
 * OP_ADDRESS	12335	146	12378
 * OP_STOREP_FNC	12322	12378	0
 * OP_ADDRESS	12335	150	12379
 * OP_ADD_F	31	6009	12380
 * OP_STOREP_F	12380	12379	0
 * OP_ADDRESS	12335	148	12381
 * OP_STOREP_FNC	12312	12381	0
 * OP_STORE_V	12335	4	0
 * OP_STORE_V	6012	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	12335	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	12335	4	0
 * OP_LOAD_V	28	105	12382
 * OP_STORE_V	12382	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void () OgreFireGrenade = {

   local entity missile;
   local entity mpuff;

   self.effects = (self.effects | EF_MUZZLEFLASH);
   sound (self,CHAN_WEAPON,globaldef002021,TRUE,ATTN_NORM);
   missile = spawn ();
   missile.owner = self;
   missile.movetype = MOVETYPE_BOUNCE;
   missile.solid = SOLID_BBOX;
   makevectors (self.angles);
   missile.velocity = normalize ((self.enemy.origin - self.origin));
   missile.velocity = (missile.velocity * globaldef000723);
   missile.velocity_z = globaldef001343;
   missile.avelocity = globaldef002186;
   missile.angles = vectoangles (missile.velocity);
   missile.touch = OgreGrenadeTouch;
   missile.nextthink = (time + globaldef002187);
   missile.think = OgreGrenadeExplode;
   setmodel (missile,globaldef002188);
   setsize (missile,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (missile,self.origin);

};

// function chainsaw
// function number 668 begins at statement 18352
/*
 * OP_LOAD_ENT	28	181	12391
 * OP_NOT_ENT	12391	0	12392
 * OP_IFNOT	12392	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	12393
 * OP_STORE_V	12393	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	524	0	0
 * OP_NOT_F	1	0	12394
 * OP_IFNOT	12394	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_LOAD_ENT	28	181	12395
 * OP_LOAD_V	12395	105	12396
 * OP_LOAD_V	28	105	12399
 * OP_SUB_V	12396	12399	12402
 * OP_STORE_V	12402	12387	0
 * OP_STORE_V	12387	4	0
 * OP_CALL1	462	0	0
 * OP_GT	1	1997	12405
 * OP_IFNOT	12405	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_CALL0	457	0	0
 * OP_ADD_F	1	1	12406
 * OP_CALL0	457	0	0
 * OP_ADD_F	12406	1	12407
 * OP_MUL_F	12407	229	12408
 * OP_STORE_F	12408	12390	0
 * OP_LOAD_ENT	28	181	12409
 * OP_STORE_V	12409	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	12390	13	0
 * OP_CALL4	522	0	0
 * OP_IFNOT	12386	23	0
 * OP_LOAD_V	28	117	12410
 * OP_STORE_V	12410	4	0
 * OP_CALL1	452	0	0
 * OP_EQ_F	12386	214	12413
 * OP_IFNOT	12413	11	0
 * OP_LOAD_V	28	105	12414
 * OP_MUL_VF	59	218	12417
 * OP_ADD_V	12414	12417	12420
 * OP_STORE_V	12420	4	0
 * OP_CALL0	5370	0	0
 * OP_MUL_F	1	1997	12423
 * OP_MUL_FV	12423	65	12424
 * OP_STORE_V	12424	7	0
 * OP_CALL2	5444	0	0
 * OP_GOTO	8	0	0
 * OP_LOAD_V	28	105	12427
 * OP_MUL_VF	59	218	12430
 * OP_ADD_V	12427	12430	12433
 * OP_STORE_V	12433	4	0
 * OP_MUL_FV	12386	65	12436
 * OP_STORE_V	12436	7	0
 * OP_CALL2	5444	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef003662) chainsaw = {

   local vector delta;
   local float ldmg;

   if ( !self.enemy ) {

      return ;

   }
   if ( !CanDamage (self.enemy,self) ) {

      return ;

   }
   ai_charge (MOVETYPE_BOUNCE);
   delta = (self.enemy.origin - self.origin);
   if ( (vlen (delta) > globaldef001335) ) {

      return ;

   }
   ldmg = (((random () + random ()) + random ()) * MOVETYPE_STEP);
   T_Damage (self.enemy,self,self,ldmg);
   if ( globaldef003662 ) {

      makevectors (self.angles);
      if ( (globaldef003662 == TRUE) ) {

         func000253 ((self.origin + (v_forward * FL_INWATER)),((func000249 () * globaldef001335) * v_right));

      } else {

         func000253 ((self.origin + (v_forward * FL_INWATER)),(globaldef003662 * v_right));

      }

   }

};

// function ogre_stand1
// function number 669 begins at statement 18412
/*
 * OP_STATE	213	12440	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand1 = [ 0.000, ogre_stand2 ] {

   ai_stand ();

};

// function ogre_stand2
// function number 670 begins at statement 18415
/*
 * OP_STATE	214	12441	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand2 = [ 1.000, ogre_stand3 ] {

   ai_stand ();

};

// function ogre_stand3
// function number 671 begins at statement 18418
/*
 * OP_STATE	216	12442	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand3 = [ 2.000, ogre_stand4 ] {

   ai_stand ();

};

// function ogre_stand4
// function number 672 begins at statement 18421
/*
 * OP_STATE	228	12443	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand4 = [ 3.000, ogre_stand5 ] {

   ai_stand ();

};

// function ogre_stand5
// function number 673 begins at statement 18424
/*
 * OP_STATE	229	12444	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	12445
 * OP_IFNOT	12445	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12446	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand5 = [ 4.000, ogre_stand6 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef003674,TRUE,ATTN_IDLE);

   }
   ai_stand ();

};
string globaldef003674 /* = "ogre/ogidle.wav" */;

// function ogre_stand6
// function number 674 begins at statement 18436
/*
 * OP_STATE	230	12447	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand6 = [ 5.000, ogre_stand7 ] {

   ai_stand ();

};

// function ogre_stand7
// function number 675 begins at statement 18439
/*
 * OP_STATE	231	12448	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand7 = [ 6.000, ogre_stand8 ] {

   ai_stand ();

};

// function ogre_stand8
// function number 676 begins at statement 18442
/*
 * OP_STATE	232	12449	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand8 = [ 7.000, ogre_stand9 ] {

   ai_stand ();

};

// function ogre_stand9
// function number 677 begins at statement 18445
/*
 * OP_STATE	217	12439	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand9 = [ 8.000, ogre_stand1 ] {

   ai_stand ();

};

// function ogre_walk1
// function number 678 begins at statement 18448
/*
 * OP_STATE	234	12451	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk1 = [ 9.000, ogre_walk2 ] {

   ai_walk (MOVETYPE_WALK);

};

// function ogre_walk2
// function number 679 begins at statement 18452
/*
 * OP_STATE	235	12452	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk2 = [ 10.000, ogre_walk3 ] {

   ai_walk (FL_SWIM);

};

// function ogre_walk3
// function number 680 begins at statement 18456
/*
 * OP_STATE	236	12453	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	12454
 * OP_IFNOT	12454	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12446	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk3 = [ 11.000, ogre_walk4 ] {

   ai_walk (FL_SWIM);
   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef003674,TRUE,ATTN_IDLE);

   }

};

// function ogre_walk4
// function number 681 begins at statement 18469
/*
 * OP_STATE	791	12455	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk4 = [ 12.000, ogre_walk5 ] {

   ai_walk (FL_SWIM);

};

// function ogre_walk5
// function number 682 begins at statement 18473
/*
 * OP_STATE	792	12456	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk5 = [ 13.000, ogre_walk6 ] {

   ai_walk (FL_SWIM);

};

// function ogre_walk6
// function number 683 begins at statement 18477
/*
 * OP_STATE	5693	12457	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3794	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3036	12458
 * OP_IFNOT	12458	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3534	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk6 = [ 14.000, ogre_walk7 ] {

   ai_walk (MOVETYPE_FLY);
   if ( (random () < globaldef001488) ) {

      sound (self,CHAN_VOICE,globaldef001626,TRUE,ATTN_IDLE);

   }

};

// function ogre_walk7
// function number 684 begins at statement 18490
/*
 * OP_STATE	765	12459	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk7 = [ 15.000, ogre_walk8 ] {

   ai_walk (MOVETYPE_WALK);

};

// function ogre_walk8
// function number 685 begins at statement 18494
/*
 * OP_STATE	218	12460	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk8 = [ 16.000, ogre_walk9 ] {

   ai_walk (FL_SWIM);

};

// function ogre_walk9
// function number 686 begins at statement 18498
/*
 * OP_STATE	6892	12461	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk9 = [ 17.000, ogre_walk10 ] {

   ai_walk (MOVETYPE_WALK);

};

// function ogre_walk10
// function number 687 begins at statement 18502
/*
 * OP_STATE	6133	12462	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk10 = [ 18.000, ogre_walk11 ] {

   ai_walk (TRUE);

};

// function ogre_walk11
// function number 688 begins at statement 18506
/*
 * OP_STATE	6895	12463	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk11 = [ 19.000, ogre_walk12 ] {

   ai_walk (FL_SWIM);

};

// function ogre_walk12
// function number 689 begins at statement 18510
/*
 * OP_STATE	2323	12464	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk12 = [ 20.000, ogre_walk13 ] {

   ai_walk (MOVETYPE_WALK);

};

// function ogre_walk13
// function number 690 begins at statement 18514
/*
 * OP_STATE	12465	12466	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk13 = [ 21.000, ogre_walk14 ] {

   ai_walk (MOVETYPE_WALK);

};
float globaldef003691 /* = 21.000 */;

// function ogre_walk14
// function number 691 begins at statement 18518
/*
 * OP_STATE	12467	12468	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk14 = [ 22.000, ogre_walk15 ] {

   ai_walk (MOVETYPE_WALK);

};
float globaldef003693 /* = 22.000 */;

// function ogre_walk15
// function number 692 begins at statement 18522
/*
 * OP_STATE	304	12469	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk15 = [ 23.000, ogre_walk16 ] {

   ai_walk (MOVETYPE_WALK);

};

// function ogre_walk16
// function number 693 begins at statement 18526
/*
 * OP_STATE	736	12450	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk16 = [ 24.000, ogre_walk1 ] {

   ai_walk (MOVETYPE_STEP);

};

// function ogre_run1
// function number 694 begins at statement 18530
/*
 * OP_STATE	305	12471	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3873	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	12472
 * OP_IFNOT	12472	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12473	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run1 = [ 25.000, ogre_run2 ] {

   ai_run (MOVETYPE_FLYMISSILE);
   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef003698,TRUE,ATTN_IDLE);

   }

};
string globaldef003698 /* = "ogre/ogidle2.wav" */;

// function ogre_run2
// function number 695 begins at statement 18543
/*
 * OP_STATE	306	12474	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run2 = [ 26.000, ogre_run3 ] {

   ai_run (globaldef000774);

};

// function ogre_run3
// function number 696 begins at statement 18547
/*
 * OP_STATE	307	12475	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run3 = [ 27.000, ogre_run4 ] {

   ai_run (FL_CLIENT);

};

// function ogre_run4
// function number 697 begins at statement 18551
/*
 * OP_STATE	308	12476	0
 * OP_STORE_V	12467	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run4 = [ 28.000, ogre_run5 ] {

   ai_run (globaldef003693);

};

// function ogre_run5
// function number 698 begins at statement 18555
/*
 * OP_STATE	9664	12477	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run5 = [ 29.000, ogre_run6 ] {

   ai_run (FL_INWATER);

};

// function ogre_run6
// function number 699 begins at statement 18559
/*
 * OP_STATE	309	12478	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run6 = [ 30.000, ogre_run7 ] {

   ai_run (MOVETYPE_STEP);

};

// function ogre_run7
// function number 700 begins at statement 18563
/*
 * OP_STATE	310	12479	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run7 = [ 31.000, ogre_run8 ] {

   ai_run (globaldef000775);

};

// function ogre_run8
// function number 701 begins at statement 18567
/*
 * OP_STATE	219	12470	0
 * OP_STORE_V	736	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run8 = [ 32.000, ogre_run1 ] {

   ai_run (globaldef000719);

};

// function ogre_swing1
// function number 702 begins at statement 18571
/*
 * OP_STATE	312	12480	0
 * OP_STORE_V	236	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	12481	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing1 = [ 33.000, ogre_swing2 ] {

   ai_charge (MOVETYPE_BOUNCEMISSILE);
   sound (self,CHAN_WEAPON,globaldef003706,TRUE,ATTN_NORM);

};
string globaldef003706 /* = "ogre/ogsawatk.wav" */;

// function ogre_swing2
// function number 703 begins at statement 18581
/*
 * OP_STATE	9671	12482	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing2 = [ 34.000, ogre_swing3 ] {

   ai_charge (TRUE);

};

// function ogre_swing3
// function number 704 begins at statement 18585
/*
 * OP_STATE	5878	12483	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing3 = [ 35.000, ogre_swing4 ] {

   ai_charge (MOVETYPE_STEP);

};

// function ogre_swing4
// function number 705 begins at statement 18589
/*
 * OP_STATE	9655	12484	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing4 = [ 36.000, ogre_swing5 ] {

   ai_charge (globaldef000775);

};

// function ogre_swing5
// function number 706 begins at statement 18593
/*
 * OP_STATE	9657	12485	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12486
 * OP_LOAD_F	28	119	12487
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12488
 * OP_ADD_F	12487	12488	12489
 * OP_STOREP_F	12489	12486	0
 * OP_DONE	0	0	0
 */

void () ogre_swing5 = [ 37.000, ogre_swing6 ] {

   ai_charge (MOVETYPE_FLYMISSILE);
   chainsaw (FALSE);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing6
// function number 707 begins at statement 18605
/*
 * OP_STATE	9659	12490	0
 * OP_STORE_V	2044	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12491
 * OP_LOAD_F	28	119	12492
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12493
 * OP_ADD_F	12492	12493	12494
 * OP_STOREP_F	12494	12491	0
 * OP_DONE	0	0	0
 */

void () ogre_swing6 = [ 38.000, ogre_swing7 ] {

   chainsaw (globaldef001343);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing7
// function number 708 begins at statement 18615
/*
 * OP_STATE	9661	12495	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12496
 * OP_LOAD_F	28	119	12497
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12498
 * OP_ADD_F	12497	12498	12499
 * OP_STOREP_F	12499	12496	0
 * OP_DONE	0	0	0
 */

void () ogre_swing7 = [ 39.000, ogre_swing8 ] {

   chainsaw (FALSE);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing8
// function number 709 begins at statement 18625
/*
 * OP_STATE	746	12500	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12501
 * OP_LOAD_F	28	119	12502
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12503
 * OP_ADD_F	12502	12503	12504
 * OP_STOREP_F	12504	12501	0
 * OP_DONE	0	0	0
 */

void () ogre_swing8 = [ 40.000, ogre_swing9 ] {

   chainsaw (FALSE);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing9
// function number 710 begins at statement 18635
/*
 * OP_STATE	9993	12505	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12506
 * OP_LOAD_F	28	119	12507
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12508
 * OP_ADD_F	12507	12508	12509
 * OP_STOREP_F	12509	12506	0
 * OP_DONE	0	0	0
 */

void () ogre_swing9 = [ 41.000, ogre_swing10 ] {

   chainsaw (FALSE);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing10
// function number 711 begins at statement 18645
/*
 * OP_STATE	9995	12510	0
 * OP_STORE_V	9761	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12511
 * OP_LOAD_F	28	119	12512
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12513
 * OP_ADD_F	12512	12513	12514
 * OP_STOREP_F	12514	12511	0
 * OP_DONE	0	0	0
 */

void () ogre_swing10 = [ 42.000, ogre_swing11 ] {

   chainsaw (globaldef003183);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing11
// function number 712 begins at statement 18655
/*
 * OP_STATE	9997	12515	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	119	12516
 * OP_LOAD_F	28	119	12517
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	305	12518
 * OP_ADD_F	12517	12518	12519
 * OP_STOREP_F	12519	12516	0
 * OP_DONE	0	0	0
 */

void () ogre_swing11 = [ 43.000, ogre_swing12 ] {

   chainsaw (FALSE);
   self.angles_y = (self.angles_y + (random () * globaldef000288));

};

// function ogre_swing12
// function number 713 begins at statement 18665
/*
 * OP_STATE	9999	12520	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing12 = [ 44.000, ogre_swing13 ] {

   ai_charge (MOVETYPE_WALK);

};

// function ogre_swing13
// function number 714 begins at statement 18669
/*
 * OP_STATE	2598	12521	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing13 = [ 45.000, ogre_swing14 ] {

   ai_charge (FL_CLIENT);

};

// function ogre_swing14
// function number 715 begins at statement 18673
/*
 * OP_STATE	10002	12470	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing14 = [ 46.000, ogre_run1 ] {

   ai_charge (MOVETYPE_FLYMISSILE);

};

// function ogre_smash1
// function number 716 begins at statement 18677
/*
 * OP_STATE	10004	12522	0
 * OP_STORE_V	231	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	12481	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash1 = [ 47.000, ogre_smash2 ] {

   ai_charge (MOVETYPE_TOSS);
   sound (self,CHAN_WEAPON,globaldef003706,TRUE,ATTN_NORM);

};

// function ogre_smash2
// function number 717 begins at statement 18687
/*
 * OP_STATE	10006	12523	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash2 = [ 48.000, ogre_smash3 ] {

   ai_charge (FALSE);

};

// function ogre_smash3
// function number 718 begins at statement 18691
/*
 * OP_STATE	10008	12524	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash3 = [ 49.000, ogre_smash4 ] {

   ai_charge (FALSE);

};

// function ogre_smash4
// function number 719 begins at statement 18695
/*
 * OP_STATE	1470	12525	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash4 = [ 50.000, ogre_smash5 ] {

   ai_charge (TRUE);

};

// function ogre_smash5
// function number 720 begins at statement 18699
/*
 * OP_STATE	9911	12526	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash5 = [ 51.000, ogre_smash6 ] {

   ai_charge (MOVETYPE_STEP);

};

// function ogre_smash6
// function number 721 begins at statement 18703
/*
 * OP_STATE	9913	12527	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash6 = [ 52.000, ogre_smash7 ] {

   ai_charge (MOVETYPE_STEP);
   chainsaw (FALSE);

};

// function ogre_smash7
// function number 722 begins at statement 18709
/*
 * OP_STATE	9915	12528	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash7 = [ 53.000, ogre_smash8 ] {

   ai_charge (MOVETYPE_STEP);
   chainsaw (FALSE);

};

// function ogre_smash8
// function number 723 begins at statement 18715
/*
 * OP_STATE	9917	12529	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash8 = [ 54.000, ogre_smash9 ] {

   ai_charge (MOVETYPE_BOUNCE);
   chainsaw (FALSE);

};

// function ogre_smash9
// function number 724 begins at statement 18721
/*
 * OP_STATE	9919	12530	0
 * OP_STORE_V	792	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash9 = [ 55.000, ogre_smash10 ] {

   ai_charge (globaldef000775);
   chainsaw (FALSE);

};

// function ogre_smash10
// function number 725 begins at statement 18727
/*
 * OP_STATE	9921	12531	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	12385	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash10 = [ 56.000, ogre_smash11 ] {

   chainsaw (TRUE);

};

// function ogre_smash11
// function number 726 begins at statement 18731
/*
 * OP_STATE	9923	12532	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3287	0	0
 * OP_STORE_V	213	4	0
 * OP_CALL1	12385	0	0
 * OP_ADDRESS	28	150	12533
 * OP_LOAD_F	28	150	12534
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	3267	12535
 * OP_ADD_F	12534	12535	12536
 * OP_STOREP_F	12536	12533	0
 * OP_DONE	0	0	0
 */

void () ogre_smash11 = [ 57.000, ogre_smash12 ] {

   ai_charge (FL_SWIM);
   chainsaw (FALSE);
   self.nextthink = (self.nextthink + (random () * globaldef001553));

};

// function ogre_smash12
// function number 727 begins at statement 18743
/*
 * OP_STATE	9925	12537	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash12 = [ 58.000, ogre_smash13 ] {

   ai_charge (MOVETYPE_WALK);

};

// function ogre_smash13
// function number 728 begins at statement 18747
/*
 * OP_STATE	2783	12538	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash13 = [ 59.000, ogre_smash14 ] {

   ai_charge (MOVETYPE_STEP);

};

// function ogre_smash14
// function number 729 begins at statement 18751
/*
 * OP_STATE	2019	12470	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3287	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash14 = [ 60.000, ogre_run1 ] {

   ai_charge (globaldef000774);

};

// function ogre_nail1
// function number 730 begins at statement 18755
/*
 * OP_STATE	9928	12540	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail1 = [ 61.000, ogre_nail2 ] {

   ai_face ();

};

// function ogre_nail2
// function number 731 begins at statement 18758
/*
 * OP_STATE	9930	12541	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail2 = [ 62.000, ogre_nail3 ] {

   ai_face ();

};

// function ogre_nail3
// function number 732 begins at statement 18761
/*
 * OP_STATE	9930	12542	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail3 = [ 62.000, ogre_nail4 ] {

   ai_face ();

};

// function ogre_nail4
// function number 733 begins at statement 18764
/*
 * OP_STATE	6707	12543	0
 * OP_CALL0	3190	0	0
 * OP_CALL0	12334	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail4 = [ 63.000, ogre_nail5 ] {

   ai_face ();
   OgreFireGrenade ();

};

// function ogre_nail5
// function number 734 begins at statement 18768
/*
 * OP_STATE	220	12544	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail5 = [ 64.000, ogre_nail6 ] {

   ai_face ();

};

// function ogre_nail6
// function number 735 begins at statement 18771
/*
 * OP_STATE	9934	12545	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail6 = [ 65.000, ogre_nail7 ] {

   ai_face ();

};

// function ogre_nail7
// function number 736 begins at statement 18774
/*
 * OP_STATE	9936	12470	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail7 = [ 66.000, ogre_run1 ] {

   ai_face ();

};

// function ogre_pain1
// function number 737 begins at statement 18777
/*
 * OP_STATE	9938	12547	0
 * OP_DONE	0	0	0
 */

void () ogre_pain1 = [ 67.000, ogre_pain2 ] {


};

// function ogre_pain2
// function number 738 begins at statement 18779
/*
 * OP_STATE	8193	12548	0
 * OP_DONE	0	0	0
 */

void () ogre_pain2 = [ 68.000, ogre_pain3 ] {


};

// function ogre_pain3
// function number 739 begins at statement 18781
/*
 * OP_STATE	8196	12549	0
 * OP_DONE	0	0	0
 */

void () ogre_pain3 = [ 69.000, ogre_pain4 ] {


};

// function ogre_pain4
// function number 740 begins at statement 18783
/*
 * OP_STATE	1536	12550	0
 * OP_DONE	0	0	0
 */

void () ogre_pain4 = [ 70.000, ogre_pain5 ] {


};

// function ogre_pain5
// function number 741 begins at statement 18785
/*
 * OP_STATE	8201	12470	0
 * OP_DONE	0	0	0
 */

void () ogre_pain5 = [ 71.000, ogre_run1 ] {


};

// function ogre_painb1
// function number 742 begins at statement 18787
/*
 * OP_STATE	9943	12552	0
 * OP_DONE	0	0	0
 */

void () ogre_painb1 = [ 72.000, ogre_painb2 ] {


};

// function ogre_painb2
// function number 743 begins at statement 18789
/*
 * OP_STATE	5487	12553	0
 * OP_DONE	0	0	0
 */

void () ogre_painb2 = [ 73.000, ogre_painb3 ] {


};

// function ogre_painb3
// function number 744 begins at statement 18791
/*
 * OP_STATE	9946	12470	0
 * OP_DONE	0	0	0
 */

void () ogre_painb3 = [ 74.000, ogre_run1 ] {


};

// function ogre_painc1
// function number 745 begins at statement 18793
/*
 * OP_STATE	9173	12555	0
 * OP_DONE	0	0	0
 */

void () ogre_painc1 = [ 75.000, ogre_painc2 ] {


};

// function ogre_painc2
// function number 746 begins at statement 18795
/*
 * OP_STATE	9949	12556	0
 * OP_DONE	0	0	0
 */

void () ogre_painc2 = [ 76.000, ogre_painc3 ] {


};

// function ogre_painc3
// function number 747 begins at statement 18797
/*
 * OP_STATE	9951	12557	0
 * OP_DONE	0	0	0
 */

void () ogre_painc3 = [ 77.000, ogre_painc4 ] {


};

// function ogre_painc4
// function number 748 begins at statement 18799
/*
 * OP_STATE	9953	12558	0
 * OP_DONE	0	0	0
 */

void () ogre_painc4 = [ 78.000, ogre_painc5 ] {


};

// function ogre_painc5
// function number 749 begins at statement 18801
/*
 * OP_STATE	9955	12559	0
 * OP_DONE	0	0	0
 */

void () ogre_painc5 = [ 79.000, ogre_painc6 ] {


};

// function ogre_painc6
// function number 750 begins at statement 18803
/*
 * OP_STATE	2805	12470	0
 * OP_DONE	0	0	0
 */

void () ogre_painc6 = [ 80.000, ogre_run1 ] {


};

// function ogre_paind1
// function number 751 begins at statement 18805
/*
 * OP_STATE	8204	12561	0
 * OP_DONE	0	0	0
 */

void () ogre_paind1 = [ 81.000, ogre_paind2 ] {


};

// function ogre_paind2
// function number 752 begins at statement 18807
/*
 * OP_STATE	9959	12562	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paind2 = [ 82.000, ogre_paind3 ] {

   ai_pain (MOVETYPE_BOUNCE);

};

// function ogre_paind3
// function number 753 begins at statement 18811
/*
 * OP_STATE	9961	12563	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paind3 = [ 83.000, ogre_paind4 ] {

   ai_pain (MOVETYPE_FLYMISSILE);

};

// function ogre_paind4
// function number 754 begins at statement 18815
/*
 * OP_STATE	7694	12564	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paind4 = [ 84.000, ogre_paind5 ] {

   ai_pain (MOVETYPE_STEP);

};

// function ogre_paind5
// function number 755 begins at statement 18819
/*
 * OP_STATE	9963	12565	0
 * OP_DONE	0	0	0
 */

void () ogre_paind5 = [ 85.000, ogre_paind6 ] {


};

// function ogre_paind6
// function number 756 begins at statement 18821
/*
 * OP_STATE	9965	12566	0
 * OP_DONE	0	0	0
 */

void () ogre_paind6 = [ 86.000, ogre_paind7 ] {


};

// function ogre_paind7
// function number 757 begins at statement 18823
/*
 * OP_STATE	9967	12567	0
 * OP_DONE	0	0	0
 */

void () ogre_paind7 = [ 87.000, ogre_paind8 ] {


};

// function ogre_paind8
// function number 758 begins at statement 18825
/*
 * OP_STATE	9969	12568	0
 * OP_DONE	0	0	0
 */

void () ogre_paind8 = [ 88.000, ogre_paind9 ] {


};

// function ogre_paind9
// function number 759 begins at statement 18827
/*
 * OP_STATE	9971	12569	0
 * OP_DONE	0	0	0
 */

void () ogre_paind9 = [ 89.000, ogre_paind10 ] {


};

// function ogre_paind10
// function number 760 begins at statement 18829
/*
 * OP_STATE	2658	12570	0
 * OP_DONE	0	0	0
 */

void () ogre_paind10 = [ 90.000, ogre_paind11 ] {


};

// function ogre_paind11
// function number 761 begins at statement 18831
/*
 * OP_STATE	9974	12571	0
 * OP_DONE	0	0	0
 */

void () ogre_paind11 = [ 91.000, ogre_paind12 ] {


};

// function ogre_paind12
// function number 762 begins at statement 18833
/*
 * OP_STATE	9976	12572	0
 * OP_DONE	0	0	0
 */

void () ogre_paind12 = [ 92.000, ogre_paind13 ] {


};

// function ogre_paind13
// function number 763 begins at statement 18835
/*
 * OP_STATE	9978	12573	0
 * OP_DONE	0	0	0
 */

void () ogre_paind13 = [ 93.000, ogre_paind14 ] {


};

// function ogre_paind14
// function number 764 begins at statement 18837
/*
 * OP_STATE	9979	12574	0
 * OP_DONE	0	0	0
 */

void () ogre_paind14 = [ 94.000, ogre_paind15 ] {


};

// function ogre_paind15
// function number 765 begins at statement 18839
/*
 * OP_STATE	9981	12575	0
 * OP_DONE	0	0	0
 */

void () ogre_paind15 = [ 95.000, ogre_paind16 ] {


};

// function ogre_paind16
// function number 766 begins at statement 18841
/*
 * OP_STATE	9983	12470	0
 * OP_DONE	0	0	0
 */

void () ogre_paind16 = [ 96.000, ogre_run1 ] {


};

// function ogre_paine1
// function number 767 begins at statement 18843
/*
 * OP_STATE	9985	12577	0
 * OP_DONE	0	0	0
 */

void () ogre_paine1 = [ 97.000, ogre_paine2 ] {


};

// function ogre_paine2
// function number 768 begins at statement 18845
/*
 * OP_STATE	9987	12578	0
 * OP_STORE_V	235	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paine2 = [ 98.000, ogre_paine3 ] {

   ai_pain (MOVETYPE_BOUNCE);

};

// function ogre_paine3
// function number 769 begins at statement 18849
/*
 * OP_STATE	9989	12579	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paine3 = [ 99.000, ogre_paine4 ] {

   ai_pain (MOVETYPE_FLYMISSILE);

};

// function ogre_paine4
// function number 770 begins at statement 18853
/*
 * OP_STATE	1997	12580	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paine4 = [ 100.000, ogre_paine5 ] {

   ai_pain (MOVETYPE_STEP);

};

// function ogre_paine5
// function number 771 begins at statement 18857
/*
 * OP_STATE	8107	12581	0
 * OP_DONE	0	0	0
 */

void () ogre_paine5 = [ 101.000, ogre_paine6 ] {


};

// function ogre_paine6
// function number 772 begins at statement 18859
/*
 * OP_STATE	8109	12582	0
 * OP_DONE	0	0	0
 */

void () ogre_paine6 = [ 102.000, ogre_paine7 ] {


};

// function ogre_paine7
// function number 773 begins at statement 18861
/*
 * OP_STATE	8111	12583	0
 * OP_DONE	0	0	0
 */

void () ogre_paine7 = [ 103.000, ogre_paine8 ] {


};

// function ogre_paine8
// function number 774 begins at statement 18863
/*
 * OP_STATE	8114	12584	0
 * OP_DONE	0	0	0
 */

void () ogre_paine8 = [ 104.000, ogre_paine9 ] {


};

// function ogre_paine9
// function number 775 begins at statement 18865
/*
 * OP_STATE	9562	12585	0
 * OP_DONE	0	0	0
 */

void () ogre_paine9 = [ 105.000, ogre_paine10 ] {


};

// function ogre_paine10
// function number 776 begins at statement 18867
/*
 * OP_STATE	9577	12586	0
 * OP_DONE	0	0	0
 */

void () ogre_paine10 = [ 106.000, ogre_paine11 ] {


};

// function ogre_paine11
// function number 777 begins at statement 18869
/*
 * OP_STATE	9591	12587	0
 * OP_DONE	0	0	0
 */

void () ogre_paine11 = [ 107.000, ogre_paine12 ] {


};

// function ogre_paine12
// function number 778 begins at statement 18871
/*
 * OP_STATE	9597	12588	0
 * OP_DONE	0	0	0
 */

void () ogre_paine12 = [ 108.000, ogre_paine13 ] {


};

// function ogre_paine13
// function number 779 begins at statement 18873
/*
 * OP_STATE	9600	12589	0
 * OP_DONE	0	0	0
 */

void () ogre_paine13 = [ 109.000, ogre_paine14 ] {


};

// function ogre_paine14
// function number 780 begins at statement 18875
/*
 * OP_STATE	9603	12590	0
 * OP_DONE	0	0	0
 */

void () ogre_paine14 = [ 110.000, ogre_paine15 ] {


};

// function ogre_paine15
// function number 781 begins at statement 18877
/*
 * OP_STATE	2224	12470	0
 * OP_DONE	0	0	0
 */

void () ogre_paine15 = [ 111.000, ogre_run1 ] {


};

// function ogre_pain
// function number 782 begins at statement 18879
/*
 * OP_LOAD_F	28	379	12595
 * OP_GT	12595	31	12596
 * OP_IFNOT	12596	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12597	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	12594	0
 * OP_LT	12594	6277	12598
 * OP_IFNOT	12598	6	0
 * OP_CALL0	12546	0	0
 * OP_ADDRESS	28	379	12599
 * OP_ADD_F	31	214	12600
 * OP_STOREP_F	12600	12599	0
 * OP_GOTO	26	0	0
 * OP_LT	12594	539	12601
 * OP_IFNOT	12601	6	0
 * OP_CALL0	12551	0	0
 * OP_ADDRESS	28	379	12602
 * OP_ADD_F	31	214	12603
 * OP_STOREP_F	12603	12602	0
 * OP_GOTO	19	0	0
 * OP_LT	12594	6280	12604
 * OP_IFNOT	12604	6	0
 * OP_CALL0	12554	0	0
 * OP_ADDRESS	28	379	12605
 * OP_ADD_F	31	214	12606
 * OP_STOREP_F	12606	12605	0
 * OP_GOTO	12	0	0
 * OP_LT	12594	12607	12608
 * OP_IFNOT	12608	6	0
 * OP_CALL0	12560	0	0
 * OP_ADDRESS	28	379	12609
 * OP_ADD_F	31	216	12610
 * OP_STOREP_F	12610	12609	0
 * OP_GOTO	5	0	0
 * OP_CALL0	12576	0	0
 * OP_ADDRESS	28	379	12611
 * OP_ADD_F	31	216	12612
 * OP_STOREP_F	12612	12611	0
 * OP_DONE	0	0	0
 */

void (entity globaldef003785, float globaldef003786) ogre_pain = {

   local float r;

   if ( (self.pain_finished > time) ) {

      return ;

   }
   sound (self,CHAN_VOICE,globaldef003788,TRUE,ATTN_NORM);
   r = random ();
   if ( (r < globaldef002243) ) {

      ogre_pain1 ();
      self.pain_finished = (time + TRUE);

   } else {

      if ( (r < globaldef000522) ) {

         ogre_painb1 ();
         self.pain_finished = (time + TRUE);

      } else {

         if ( (r < globaldef002244) ) {

            ogre_painc1 ();
            self.pain_finished = (time + TRUE);

         } else {

            if ( (r < globaldef003789) ) {

               ogre_paind1 ();
               self.pain_finished = (time + FL_SWIM);

            } else {

               ogre_paine1 ();
               self.pain_finished = (time + FL_SWIM);

            }

         }

      }

   }

};
string globaldef003788 /* = "ogre/ogpain1.wav" */;
float globaldef003789 /* = 0.880 */;

// function func000783
// function number 783 begins at statement 18924
/*
 * OP_STATE	9608	12614	0
 * OP_DONE	0	0	0
 */

void () func000783 = [ 112.000, func000784 ] {


};

// function func000784
// function number 784 begins at statement 18926
/*
 * OP_STATE	9473	12615	0
 * OP_DONE	0	0	0
 */

void () func000784 = [ 113.000, func000785 ] {


};

// function func000785
// function number 785 begins at statement 18928
/*
 * OP_STATE	9479	12616	0
 * OP_ADDRESS	28	104	12617
 * OP_STOREP_F	237	12617	0
 * OP_ADDRESS	28	160	12618
 * OP_STOREP_F	216	12618	0
 * OP_CALL0	5177	0	0
 * OP_DONE	0	0	0
 */

void () func000785 = [ 114.000, func000786 ] {

   self.solid = SOLID_NOT;
   self.ammo_rockets = FL_SWIM;
   func000244 ();

};

// function func000786
// function number 786 begins at statement 18935
/*
 * OP_STATE	9482	12619	0
 * OP_DONE	0	0	0
 */

void () func000786 = [ 115.000, func000787 ] {


};

// function func000787
// function number 787 begins at statement 18937
/*
 * OP_STATE	9485	12620	0
 * OP_DONE	0	0	0
 */

void () func000787 = [ 116.000, func000788 ] {


};

// function func000788
// function number 788 begins at statement 18939
/*
 * OP_STATE	9488	12621	0
 * OP_DONE	0	0	0
 */

void () func000788 = [ 117.000, func000789 ] {


};

// function func000789
// function number 789 begins at statement 18941
/*
 * OP_STATE	9491	12622	0
 * OP_DONE	0	0	0
 */

void () func000789 = [ 118.000, func000790 ] {


};

// function func000790
// function number 790 begins at statement 18943
/*
 * OP_STATE	9493	12623	0
 * OP_DONE	0	0	0
 */

void () func000790 = [ 119.000, func000791 ] {


};

// function func000791
// function number 791 begins at statement 18945
/*
 * OP_STATE	3584	12624	0
 * OP_DONE	0	0	0
 */

void () func000791 = [ 120.000, func000792 ] {


};

// function func000792
// function number 792 begins at statement 18947
/*
 * OP_STATE	9498	12625	0
 * OP_DONE	0	0	0
 */

void () func000792 = [ 121.000, func000793 ] {


};

// function func000793
// function number 793 begins at statement 18949
/*
 * OP_STATE	9501	12626	0
 * OP_DONE	0	0	0
 */

void () func000793 = [ 122.000, func000794 ] {


};

// function func000794
// function number 794 begins at statement 18951
/*
 * OP_STATE	12627	12628	0
 * OP_DONE	0	0	0
 */

void () func000794 = [ 123.000, func000795 ] {


};
float globaldef003802 /* = 123.000 */;

// function func000795
// function number 795 begins at statement 18953
/*
 * OP_STATE	12629	12630	0
 * OP_DONE	0	0	0
 */

void () func000795 = [ 124.000, func000796 ] {


};
float globaldef003804 /* = 124.000 */;

// function func000796
// function number 796 begins at statement 18955
/*
 * OP_STATE	9503	12630	0
 * OP_DONE	0	0	0
 */

void () func000796 = [ 125.000, func000796 ] {


};

// function func000797
// function number 797 begins at statement 18957
/*
 * OP_STATE	9506	12632	0
 * OP_DONE	0	0	0
 */

void () func000797 = [ 126.000, func000798 ] {


};

// function func000798
// function number 798 begins at statement 18959
/*
 * OP_STATE	9509	12633	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () func000798 = [ 127.000, func000799 ] {

   ai_forward (MOVETYPE_FLY);

};

// function func000799
// function number 799 begins at statement 18963
/*
 * OP_STATE	221	12634	0
 * OP_ADDRESS	28	104	12635
 * OP_STOREP_F	237	12635	0
 * OP_ADDRESS	28	160	12636
 * OP_STOREP_F	216	12636	0
 * OP_CALL0	5177	0	0
 * OP_DONE	0	0	0
 */

void () func000799 = [ 128.000, func000800 ] {

   self.solid = SOLID_NOT;
   self.ammo_rockets = FL_SWIM;
   func000244 ();

};

// function func000800
// function number 800 begins at statement 18970
/*
 * OP_STATE	12637	12638	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () func000800 = [ 129.000, func000801 ] {

   ai_forward (TRUE);

};
float globaldef003810 /* = 129.000 */;

// function func000801
// function number 801 begins at statement 18974
/*
 * OP_STATE	12639	12640	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () func000801 = [ 130.000, func000802 ] {

   ai_forward (MOVETYPE_WALK);

};
float globaldef003812 /* = 130.000 */;

// function func000802
// function number 802 begins at statement 18978
/*
 * OP_STATE	9513	12641	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () func000802 = [ 131.000, func000803 ] {

   ai_forward (MOVETYPE_PUSH);

};

// function func000803
// function number 803 begins at statement 18982
/*
 * OP_STATE	9516	12642	0
 * OP_STORE_V	305	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () func000803 = [ 132.000, func000804 ] {

   ai_forward (globaldef000288);

};

// function func000804
// function number 804 begins at statement 18986
/*
 * OP_STATE	9519	12643	0
 * OP_DONE	0	0	0
 */

void () func000804 = [ 133.000, func000805 ] {


};

// function func000805
// function number 805 begins at statement 18988
/*
 * OP_STATE	9522	12644	0
 * OP_DONE	0	0	0
 */

void () func000805 = [ 134.000, func000806 ] {


};

// function func000806
// function number 806 begins at statement 18990
/*
 * OP_STATE	12645	12644	0
 * OP_DONE	0	0	0
 */

void () func000806 = [ 135.000, func000806 ] {


};
float globaldef003818 /* = 135.000 */;

// function func000807
// function number 807 begins at statement 18992
/*
 * OP_LOAD_F	28	152	12647
 * OP_LT	12647	12648	12649
 * OP_IFNOT	12649	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	12650	4	0
 * OP_LOAD_F	28	152	12651
 * OP_STORE_V	12651	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	12652
 * OP_STORE_V	12652	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	12653
 * OP_STORE_V	12653	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	12654
 * OP_STORE_V	12654	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12655	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	12656
 * OP_IFNOT	12656	3	0
 * OP_CALL0	12613	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	12631	0	0
 * OP_DONE	0	0	0
 */

void () func000807 = {

   if ( (self.health < globaldef003820) ) {

      sound (self,CHAN_VOICE,globaldef002406,TRUE,ATTN_NORM);
      ThrowHead (globaldef003821,self.health);
      ThrowGib (globaldef002434,self.health);
      ThrowGib (globaldef002434,self.health);
      ThrowGib (globaldef002434,self.health);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef003822,TRUE,ATTN_NORM);
   if ( (random () < globaldef000522) ) {

      func000783 ();

   } else {

      func000797 ();

   }

};
float globaldef003820 /* = -80.000 */;
string globaldef003821 /* = "progs/h_ogre.mdl" */;
string globaldef003822 /* = "ogre/ogdth.wav" */;

// function func000808
// function number 808 begins at statement 19031
/*
 * OP_CALL0	457	0	0
 * OP_GT	1	539	12658
 * OP_IFNOT	12658	3	0
 * OP_CALL0	3182	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	3183	0	0
 * OP_DONE	0	0	0
 */

void () func000808 = {

   if ( (random () > globaldef000522) ) {

      ogre_smash1 ();

   } else {

      ogre_swing1 ();

   }

};

// function func000809
// function number 809 begins at statement 19038
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	12660	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	12650	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	6012	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	3534	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12655	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12446	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12473	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12597	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	12481	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	3656	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	12661
 * OP_STOREP_F	240	12661	0
 * OP_ADDRESS	28	103	12662
 * OP_STOREP_F	229	12662	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	12660	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	295	7	0
 * OP_STORE_V	298	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	12663
 * OP_STOREP_F	2044	12663	0
 * OP_ADDRESS	28	361	12664
 * OP_STOREP_FNC	12439	12664	0
 * OP_ADDRESS	28	362	12665
 * OP_STOREP_FNC	12450	12665	0
 * OP_ADDRESS	28	363	12666
 * OP_STOREP_FNC	12470	12666	0
 * OP_ADDRESS	28	367	12667
 * OP_STOREP_FNC	12646	12667	0
 * OP_ADDRESS	28	365	12668
 * OP_STOREP_FNC	12657	12668	0
 * OP_ADDRESS	28	364	12669
 * OP_STOREP_FNC	12539	12669	0
 * OP_ADDRESS	28	366	12670
 * OP_STOREP_FNC	12591	12670	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () func000809 = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model (globaldef003825);
   precache_model (globaldef003821);
   precache_model (globaldef002188);
   precache_sound (globaldef001626);
   precache_sound (globaldef003822);
   precache_sound (globaldef003674);
   precache_sound (globaldef003698);
   precache_sound (globaldef003788);
   precache_sound (globaldef003706);
   precache_sound (globaldef001657);
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef003825);
   setsize (self,VEC_HULL2_MIN,VEC_HULL2_MAX);
   self.health = globaldef001343;
   self.th_stand = ogre_stand1;
   self.th_walk = ogre_walk1;
   self.th_run = ogre_run1;
   self.th_die = func000807;
   self.th_melee = func000808;
   self.th_missile = ogre_nail1;
   self.th_pain = ogre_pain;
   walkmonster_start ();

};
string globaldef003825 /* = "progs/ogre.mdl" */;

// function monster_ogre
// function number 810 begins at statement 19091
/*
 * OP_CALL0	12659	0	0
 * OP_DONE	0	0	0
 */

void () monster_ogre = {

   func000809 ();

};

// function monster_ogre_marksman
// function number 811 begins at statement 19093
/*
 * OP_CALL0	12659	0	0
 * OP_DONE	0	0	0
 */

void () monster_ogre_marksman = {

   func000809 ();

};
