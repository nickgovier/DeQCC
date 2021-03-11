float globaldef002073 /* = 0.010 */;

void (vector globaldef002075, vector globaldef002079) SpawnChunk;

// function SpawnChunk
// function number 256 begins at statement 6577
/*
 * OP_STORE_V	5508	4	0
 * OP_MUL_VF	5511	5514	5515
 * OP_STORE_V	5515	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	235	13	0
 * OP_CALL4	493	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef002075, vector globaldef002079) SpawnChunk = {

   particle (globaldef002075,(globaldef002079 * globaldef002083),FALSE,MOVETYPE_BOUNCE);

};
float globaldef002083 /* = 0.020 */;
entity globaldef002084;
float globaldef002085 /* = 0.000 */;

void () ClearMultiDamage;

// function ClearMultiDamage
// function number 257 begins at statement 6584
/*
 * OP_STORE_ENT	30	5518	0
 * OP_STORE_F	213	5519	0
 * OP_DONE	0	0	0
 */

void () ClearMultiDamage = {

   globaldef002084 = world;
   globaldef002085 = FALSE;

};

void () ApplyMultiDamage;

// function ApplyMultiDamage
// function number 258 begins at statement 6587
/*
 * OP_NOT_ENT	5518	0	5522
 * OP_IFNOT	5522	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	5518	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	5519	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void () ApplyMultiDamage = {

   if ( !globaldef002084 ) {

      return ;

   }
   T_Damage (globaldef002084,self,self,globaldef002085);

};

void (entity globaldef002089, float globaldef002090) AddMultiDamage;

// function AddMultiDamage
// function number 259 begins at statement 6596
/*
 * OP_NOT_ENT	5524	0	5526
 * OP_IFNOT	5526	2	0
 * OP_RETURN	0	0	0
 * OP_NE_E	5524	5518	5527
 * OP_IFNOT	5527	5	0
 * OP_CALL0	5521	0	0
 * OP_STORE_F	5525	5519	0
 * OP_STORE_ENT	5524	5518	0
 * OP_GOTO	3	0	0
 * OP_ADD_F	5519	5525	5528
 * OP_STORE_F	5528	5519	0
 * OP_DONE	0	0	0
 */

void (entity globaldef002089, float globaldef002090) AddMultiDamage = {

   if ( !globaldef002089 ) {

      return ;

   }
   if ( (globaldef002089 != globaldef002084) ) {

      ApplyMultiDamage ();
      globaldef002085 = globaldef002090;
      globaldef002084 = globaldef002089;

   } else {

      globaldef002085 = (globaldef002085 + globaldef002090);

   }

};

void (float globaldef002092, vector globaldef002093) TraceAttack;

// function TraceAttack
// function number 260 begins at statement 6608
/*
 * OP_CALL0	5370	0	0
 * OP_MUL_VF	62	1	5540
 * OP_ADD_V	5531	5540	5543
 * OP_CALL0	5370	0	0
 * OP_MUL_VF	65	1	5546
 * OP_ADD_V	5543	5546	5549
 * OP_STORE_V	5549	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	5534	0
 * OP_MUL_FV	216	74	5552
 * OP_ADD_V	5534	5552	5555
 * OP_STORE_V	5555	5534	0
 * OP_MUL_VF	5534	2044	5558
 * OP_STORE_V	5558	5534	0
 * OP_MUL_VF	5531	229	5561
 * OP_SUB_V	71	5561	5564
 * OP_STORE_V	5564	5537	0
 * OP_LOAD_F	78	163	5567
 * OP_IFNOT	5567	10	0
 * OP_STORE_V	5537	4	0
 * OP_MUL_VF	5534	3267	5568
 * OP_STORE_V	5568	7	0
 * OP_STORE_V	5530	10	0
 * OP_CALL3	5355	0	0
 * OP_STORE_V	78	4	0
 * OP_STORE_V	5530	7	0
 * OP_CALL2	5523	0	0
 * OP_GOTO	16	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	315	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5537	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5538	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5539	7	0
 * OP_CALL2	500	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef002092, vector globaldef002093) TraceAttack = {

   local vector vel;
   local vector org;

   vel = normalize (((globaldef002093 + (v_up * func000249 ())) + (v_right * func000249 ())));
   vel = (vel + (FL_SWIM * trace_plane_normal));
   vel = (vel * globaldef001343);
   org = (trace_endpos - (globaldef002093 * MOVETYPE_STEP));
   if ( trace_ent.globaldef000141 ) {

      func000254 (org,(vel * globaldef001553),globaldef002092);
      AddMultiDamage (trace_ent,globaldef002092);

   } else {

      WriteByte (MSG_BROADCAST,globaldef000287);
      WriteByte (MSG_BROADCAST,TE_GUNSHOT);
      WriteCoord (MSG_BROADCAST,org);
      WriteCoord (MSG_BROADCAST,globaldef002103);
      WriteCoord (MSG_BROADCAST,globaldef002104);

   }

};

void (float globaldef002106, vector globaldef002107, vector globaldef002111) FireBullets;

// function FireBullets
// function number 261 begins at statement 6652
/*
 * OP_LOAD_V	28	175	5585
 * OP_STORE_V	5585	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	5588
 * OP_MUL_VF	59	235	5591
 * OP_ADD_V	5588	5591	5594
 * OP_STORE_V	5594	5582	0
 * OP_LOAD_F	28	97	5597
 * OP_LOAD_F	28	145	5598
 * OP_MUL_F	5598	5599	5600
 * OP_ADD_F	5597	5600	5601
 * OP_STORE_F	5601	5584	0
 * OP_CALL0	5520	0	0
 * OP_GT	5572	213	5602
 * OP_IFNOT	5602	25	0
 * OP_CALL0	5370	0	0
 * OP_MUL_F	1	5576	5603
 * OP_MUL_FV	5603	65	5604
 * OP_ADD_V	5573	5604	5607
 * OP_CALL0	5370	0	0
 * OP_MUL_F	1	5577	5610
 * OP_MUL_FV	5610	62	5611
 * OP_ADD_V	5607	5611	5614
 * OP_STORE_V	5614	5579	0
 * OP_STORE_V	5582	4	0
 * OP_MUL_VF	5579	225	5617
 * OP_ADD_V	5582	5617	5620
 * OP_STORE_V	5620	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_F	70	214	5623
 * OP_IFNOT	5623	4	0
 * OP_STORE_V	229	4	0
 * OP_STORE_V	5579	7	0
 * OP_CALL2	5529	0	0
 * OP_SUB_F	5572	214	5624
 * OP_STORE_F	5624	5572	0
 * OP_GOTO	-25	0	0
 * OP_CALL0	5521	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef002106, vector globaldef002107, vector globaldef002111) FireBullets = {

   local vector direction;
   local vector src;

   makevectors (self.globaldef000153);
   src = (self.globaldef000083 + (v_forward * MOVETYPE_BOUNCE));
   globaldef002122 = (self.globaldef000075 + (self.globaldef000123 * globaldef002123));
   ClearMultiDamage ();
   while ( (globaldef002106 > FALSE) ) {

      direction = ((globaldef002107 + ((func000249 () * globaldef002111_x) * v_right)) + ((func000249 () * globaldef002113) * v_up));
      traceline (src,(src + (direction * FL_WATERJUMP)),FALSE,self);
      if ( (trace_fraction != TRUE) ) {

         TraceAttack (MOVETYPE_STEP,direction);

      }
      globaldef002106 = (globaldef002106 - TRUE);

   }
   ApplyMultiDamage ();

};
float globaldef002123 /* = 0.700 */;

void () W_FireShotgun;

// function W_FireShotgun
// function number 262 begins at statement 6693
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5361	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5629
 * OP_STORE_V	5629	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	126	5632
 * OP_STOREP_F	277	5632	0
 * OP_ADDRESS	28	157	5633
 * OP_ADDRESS	28	158	5634
 * OP_LOAD_F	28	158	5635
 * OP_SUB_F	5635	214	5636
 * OP_STOREP_F	5636	5634	0
 * OP_STOREP_F	5636	5633	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	2110	7	0
 * OP_CALL2	5373	0	0
 * OP_STORE_V	1	5626	0
 * OP_LOAD_V	28	105	5637
 * OP_ADD_V	5637	5640	5643
 * OP_MUL_VF	59	218	5646
 * OP_ADD_V	5643	5646	5649
 * OP_STORE_V	5649	4	0
 * OP_STORE_V	5626	7	0
 * OP_CALL2	5297	0	0
 * OP_STORE_V	231	4	0
 * OP_STORE_V	5626	7	0
 * OP_STORE_V	5652	10	0
 * OP_CALL3	5571	0	0
 * OP_DONE	0	0	0
 */

void () W_FireShotgun = {

   local vector dir;

   sound (self,CHAN_WEAPON,globaldef002015,TRUE,ATTN_NORM);
   func002453 (self,self.globaldef000083,TRUE,globaldef000741);
   self.globaldef000104 = CONTENT_SOLID;
   self.globaldef000136 = (self.globaldef000136 - TRUE);
   self.globaldef000135 = (self.globaldef000136 - TRUE);
   dir = func000250 (self,globaldef001350);
   func000247 (((self.globaldef000083 + globaldef002129) + (v_forward * FL_INWATER)),dir);
   FireBullets (MOVETYPE_TOSS,dir,globaldef002130);

};
vector globaldef002129 /* = '0.000 0.000 12.000' */;
vector globaldef002130 /* = '0.040 0.040 0.000' */;

void () W_FireSuperShotgun;

// function W_FireSuperShotgun
// function number 263 begins at statement 6729
/*
 * OP_LOAD_F	28	157	5659
 * OP_EQ_F	5659	214	5660
 * OP_IFNOT	5660	3	0
 * OP_CALL0	5625	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5369	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5661
 * OP_STORE_V	5661	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	126	5664
 * OP_STOREP_F	279	5664	0
 * OP_ADDRESS	28	157	5665
 * OP_ADDRESS	28	158	5666
 * OP_LOAD_F	28	158	5667
 * OP_SUB_F	5667	216	5668
 * OP_STOREP_F	5668	5666	0
 * OP_STOREP_F	5668	5665	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	2110	7	0
 * OP_CALL2	5373	0	0
 * OP_STORE_V	1	5656	0
 * OP_LOAD_V	28	105	5669
 * OP_ADD_V	5669	5640	5672
 * OP_MUL_VF	59	218	5675
 * OP_ADD_V	5672	5675	5678
 * OP_STORE_V	5678	4	0
 * OP_STORE_V	5656	7	0
 * OP_CALL2	5297	0	0
 * OP_LOAD_V	28	105	5681
 * OP_ADD_V	5681	5640	5684
 * OP_MUL_VF	59	218	5687
 * OP_ADD_V	5684	5687	5690
 * OP_STORE_V	5690	4	0
 * OP_STORE_V	5656	7	0
 * OP_CALL2	5297	0	0
 * OP_STORE_V	5693	4	0
 * OP_STORE_V	5656	7	0
 * OP_STORE_V	5694	10	0
 * OP_CALL3	5571	0	0
 * OP_DONE	0	0	0
 */

void () W_FireSuperShotgun = {

   local vector dir;

   if ( (self.globaldef000135 == TRUE) ) {

      W_FireShotgun ();
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef002023,TRUE,ATTN_NORM);
   func002453 (self,self.globaldef000083,TRUE,globaldef000741);
   self.globaldef000104 = CONTENT_SLIME;
   self.globaldef000136 = (self.globaldef000136 - FL_SWIM);
   self.globaldef000135 = (self.globaldef000136 - FL_SWIM);
   dir = func000250 (self,globaldef001350);
   func000247 (((self.globaldef000083 + globaldef002129) + (v_forward * FL_INWATER)),dir);
   func000247 (((self.globaldef000083 + globaldef002129) + (v_forward * FL_INWATER)),dir);
   FireBullets (globaldef002136,dir,globaldef002137);

};
float globaldef002136 /* = 14.000 */;
vector globaldef002137 /* = '0.140 0.080 0.000' */;

void () s_explode1;

// function s_explode1
// function number 264 begins at statement 6777
/*
 * OP_STATE	213	5698	0
 * OP_DONE	0	0	0
 */

void () s_explode1 = [ 0.000, s_explode2 ] {


};

void () s_explode2;

// function s_explode2
// function number 265 begins at statement 6779
/*
 * OP_STATE	214	5699	0
 * OP_DONE	0	0	0
 */

void () s_explode2 = [ 1.000, s_explode3 ] {


};

void () s_explode3;

// function s_explode3
// function number 266 begins at statement 6781
/*
 * OP_STATE	216	5700	0
 * OP_DONE	0	0	0
 */

void () s_explode3 = [ 2.000, s_explode4 ] {


};

void () s_explode4;

// function s_explode4
// function number 267 begins at statement 6783
/*
 * OP_STATE	228	5701	0
 * OP_DONE	0	0	0
 */

void () s_explode4 = [ 3.000, s_explode5 ] {


};

void () s_explode5;

// function s_explode5
// function number 268 begins at statement 6785
/*
 * OP_STATE	229	5702	0
 * OP_DONE	0	0	0
 */

void () s_explode5 = [ 4.000, s_explode6 ] {


};

void () s_explode6;

// function s_explode6
// function number 269 begins at statement 6787
/*
 * OP_STATE	230	521	0
 * OP_DONE	0	0	0
 */

void () s_explode6 = [ 5.000, SUB_Remove ] {


};

void () BecomeExplosion;

// function BecomeExplosion
// function number 270 begins at statement 6789
/*
 * OP_ADDRESS	28	103	5704
 * OP_STOREP_F	227	5704	0
 * OP_ADDRESS	28	113	5705
 * OP_STOREP_V	286	5705	0
 * OP_ADDRESS	28	146	5708
 * OP_STOREP_FNC	519	5708	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	5709	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	104	5710
 * OP_STOREP_F	237	5710	0
 * OP_CALL0	5697	0	0
 * OP_DONE	0	0	0
 */

void () BecomeExplosion = {

   self.globaldef000081 = MOVETYPE_NONE;
   self.globaldef000091 = VEC_ORIGIN;
   self.globaldef000124 = SUB_Null;
   setmodel (self,globaldef002145);
   self.globaldef000082 = SOLID_NOT;
   s_explode1 ();

};
string globaldef002145 /* = "progs/s_explod.spr" */;

// function T_MissileTouch
// function number 271 begins at statement 6802
/*
 * OP_LOAD_ENT	28	201	5712
 * OP_EQ_E	29	5712	5713
 * OP_IFNOT	5713	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	5714
 * OP_STORE_V	5714	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	281	5717
 * OP_IFNOT	5717	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2323	5718
 * OP_ADD_F	1997	5718	5719
 * OP_STORE_F	5719	5711	0
 * OP_LOAD_F	29	152	5720
 * OP_IFNOT	5720	12	0
 * OP_LOAD_S	29	129	5721
 * OP_EQ_S	5721	3661	5722
 * OP_IFNOT	5722	3	0
 * OP_MUL_F	5711	539	5723
 * OP_STORE_F	5723	5711	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_LOAD_ENT	28	201	5724
 * OP_STORE_V	5724	10	0
 * OP_STORE_V	5711	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_ENT	28	201	5725
 * OP_STORE_V	5725	7	0
 * OP_STORE_V	3584	10	0
 * OP_STORE_V	29	13	0
 * OP_CALL4	4216	0	0
 * OP_LOAD_ENT	28	201	5726
 * OP_STORE_V	5726	4	0
 * OP_LOAD_V	28	105	5727
 * OP_STORE_V	5727	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	105	5730
 * OP_LOAD_V	28	105	5733
 * OP_LOAD_V	28	113	5736
 * OP_STORE_V	5736	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_FV	217	1	5739
 * OP_SUB_V	5733	5739	5742
 * OP_STOREP_V	5742	5730	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	316	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	5745
 * OP_STORE_V	5745	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	5746
 * OP_STORE_V	5746	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	5747
 * OP_STORE_V	5747	7	0
 * OP_CALL2	500	0	0
 * OP_CALL0	5703	0	0
 * OP_DONE	0	0	0
 */

void () T_MissileTouch = {

   local float damg;

   if ( (other == self.globaldef000179) ) {

      return ;

   }
   if ( (pointcontents (self.globaldef000083) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   damg = (globaldef001335 + (random () * globaldef001384));
   if ( other.globaldef000130 ) {

      if ( (other.globaldef000107 == globaldef001659) ) {

         damg = (damg * globaldef000522);

      }
      T_Damage (other,self,self.globaldef000179,damg);

   }
   T_RadiusDamage (self,self.globaldef000179,globaldef001638,other);
   func002453 (self.globaldef000179,self.globaldef000083,TRUE,globaldef000741);
   self.globaldef000083 = (self.globaldef000083 - (FL_CLIENT * normalize (self.globaldef000091)));
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_EXPLOSION);
   WriteCoord (MSG_BROADCAST,self.globaldef000084);
   WriteCoord (MSG_BROADCAST,self.globaldef000085);
   WriteCoord (MSG_BROADCAST,self.globaldef000086);
   BecomeExplosion ();

};

void () W_FireRocket;

// function W_FireRocket
// function number 272 begins at statement 6872
/*
 * OP_ADDRESS	28	157	5751
 * OP_ADDRESS	28	160	5752
 * OP_LOAD_F	28	160	5753
 * OP_SUB_F	5753	214	5754
 * OP_STOREP_F	5754	5752	0
 * OP_STOREP_F	5754	5751	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5360	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5755
 * OP_STORE_V	5755	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	126	5758
 * OP_STOREP_F	277	5758	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	5749	0
 * OP_ADDRESS	5749	201	5759
 * OP_STOREP_ENT	28	5759	0
 * OP_ADDRESS	5749	103	5760
 * OP_STOREP_F	234	5760	0
 * OP_ADDRESS	5749	104	5761
 * OP_STOREP_F	239	5761	0
 * OP_ADDRESS	5749	129	5762
 * OP_STOREP_S	5763	5762	0
 * OP_LOAD_V	28	175	5764
 * OP_STORE_V	5764	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	5749	113	5767
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1663	7	0
 * OP_CALL2	5373	0	0
 * OP_STOREP_V	1	5767	0
 * OP_ADDRESS	5749	113	5770
 * OP_LOAD_V	5749	113	5773
 * OP_MUL_VF	5773	1663	5776
 * OP_STOREP_V	5776	5770	0
 * OP_ADDRESS	5749	117	5779
 * OP_LOAD_V	5749	113	5782
 * OP_STORE_V	5782	4	0
 * OP_CALL1	495	0	0
 * OP_STOREP_V	1	5779	0
 * OP_ADDRESS	5749	146	5785
 * OP_STOREP_FNC	3922	5785	0
 * OP_ADDRESS	5749	150	5786
 * OP_ADD_F	31	230	5787
 * OP_STOREP_F	5787	5786	0
 * OP_ADDRESS	5749	148	5788
 * OP_STOREP_FNC	521	5788	0
 * OP_STORE_V	5749	4	0
 * OP_STORE_V	5789	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5749	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	5749	4	0
 * OP_LOAD_V	28	105	5790
 * OP_MUL_VF	59	217	5793
 * OP_ADD_V	5790	5793	5796
 * OP_ADD_V	5796	5392	5799
 * OP_STORE_V	5799	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void () W_FireRocket = {

   local entity missile;
   local entity mpuff;

   self.globaldef000138 = (self.globaldef000138 - TRUE);
   self.globaldef000135 = (self.globaldef000138 - TRUE);
   sound (self,CHAN_WEAPON,globaldef002014,TRUE,ATTN_NORM);
   func002453 (self,self.globaldef000083,TRUE,globaldef000741);
   self.globaldef000104 = CONTENT_SOLID;
   missile = spawn ();
   missile.globaldef000179 = self;
   missile.globaldef000081 = MOVETYPE_FLYMISSILE;
   missile.globaldef000082 = SOLID_BBOX;
   missile.globaldef000107 = globaldef002150;
   makevectors (self.globaldef000153);
   missile.globaldef000091 = func000250 (self,globaldef001302);
   missile.globaldef000091 = (missile.globaldef000091 * globaldef001302);
   missile.globaldef000095 = vectoangles (missile.globaldef000091);
   missile.globaldef000124 = T_MissileTouch;
   missile.globaldef000128 = (time + MOVETYPE_FLY);
   missile.globaldef000126 = SUB_Remove;
   setmodel (missile,globaldef002151);
   setsize (missile,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (missile,((self.globaldef000083 + (v_forward * FL_CLIENT)) + globaldef002037));

};
string globaldef002150 /* = "missile" */;
string globaldef002151 /* = "progs/missile.mdl" */;

void (vector globaldef002153, vector globaldef002157, entity globaldef002161, float globaldef002162) LightningDamage;

// function LightningDamage
// function number 273 begins at statement 6941
/*
 * OP_SUB_V	5806	5803	5816
 * OP_STORE_V	5816	5813	0
 * OP_STORE_V	5813	4	0
 * OP_CALL1	459	0	0
 * OP_SUB_F	213	5814	5819
 * OP_STORE_F	5819	5813	0
 * OP_STORE_F	5813	5814	0
 * OP_STORE_F	213	5815	0
 * OP_MUL_VF	5813	218	5820
 * OP_STORE_V	5820	5813	0
 * OP_STORE_ENT	30	5811	0
 * OP_STORE_ENT	30	5812	0
 * OP_STORE_V	5803	4	0
 * OP_STORE_V	5806	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_LOAD_F	78	163	5823
 * OP_IFNOT	5823	28	0
 * OP_STORE_V	71	4	0
 * OP_STORE_V	5824	7	0
 * OP_STORE_V	5827	10	0
 * OP_MUL_F	5810	229	5828
 * OP_STORE_V	5828	13	0
 * OP_CALL4	493	0	0
 * OP_STORE_V	78	4	0
 * OP_STORE_V	5809	7	0
 * OP_STORE_V	5809	10	0
 * OP_STORE_V	5810	13	0
 * OP_CALL4	522	0	0
 * OP_LOAD_S	28	129	5829
 * OP_EQ_S	5829	1236	5830
 * OP_LOAD_S	28	129	5831
 * OP_EQ_S	5831	1241	5832
 * OP_OR	5830	5832	5833
 * OP_IFNOT	5833	11	0
 * OP_LOAD_S	29	129	5834
 * OP_EQ_S	5834	1236	5835
 * OP_LOAD_S	29	129	5836
 * OP_EQ_S	5836	1241	5837
 * OP_OR	5835	5837	5838
 * OP_IFNOT	5838	5	0
 * OP_ADDRESS	78	116	5839
 * OP_LOAD_F	78	116	5840
 * OP_ADD_F	5840	5347	5841
 * OP_STOREP_F	5841	5839	0
 * OP_STORE_ENT	78	5811	0
 * OP_ADD_V	5803	5813	5842
 * OP_STORE_V	5842	4	0
 * OP_ADD_V	5806	5813	5845
 * OP_STORE_V	5845	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_E	78	5811	5848
 * OP_LOAD_F	78	163	5849
 * OP_AND	5848	5849	5850
 * OP_IFNOT	5850	12	0
 * OP_STORE_V	71	4	0
 * OP_STORE_V	5824	7	0
 * OP_STORE_V	5827	10	0
 * OP_MUL_F	5810	229	5851
 * OP_STORE_V	5851	13	0
 * OP_CALL4	493	0	0
 * OP_STORE_V	78	4	0
 * OP_STORE_V	5809	7	0
 * OP_STORE_V	5809	10	0
 * OP_STORE_V	5810	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_ENT	78	5812	0
 * OP_SUB_V	5803	5813	5852
 * OP_STORE_V	5852	4	0
 * OP_SUB_V	5806	5813	5855
 * OP_STORE_V	5855	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_E	78	5811	5858
 * OP_NE_E	78	5812	5859
 * OP_AND	5858	5859	5860
 * OP_LOAD_F	78	163	5861
 * OP_AND	5860	5861	5862
 * OP_IFNOT	5862	12	0
 * OP_STORE_V	71	4	0
 * OP_STORE_V	5824	7	0
 * OP_STORE_V	5827	10	0
 * OP_MUL_F	5810	229	5863
 * OP_STORE_V	5863	13	0
 * OP_CALL4	493	0	0
 * OP_STORE_V	78	4	0
 * OP_STORE_V	5809	7	0
 * OP_STORE_V	5809	10	0
 * OP_STORE_V	5810	13	0
 * OP_CALL4	522	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef002153, vector globaldef002157, entity globaldef002161, float globaldef002162) LightningDamage = {

   local entity e1;
   local entity e2;
   local vector f;

   f = (globaldef002157 - globaldef002153);
   normalize (f);
   f_x = (FALSE - globaldef002167);
   globaldef002167 = f_x;
   globaldef002168 = FALSE;
   f = (f * FL_INWATER);
   e1 = world;
   e2 = world;
   traceline (globaldef002153,globaldef002157,FALSE,self);
   if ( trace_ent.globaldef000141 ) {

      particle (trace_endpos,globaldef002169,globaldef002170,(globaldef002162 * MOVETYPE_STEP));
      T_Damage (trace_ent,globaldef002161,globaldef002161,globaldef002162);
      if ( ((self.globaldef000107 == globaldef001170) || (self.globaldef000107 == globaldef001171)) ) {

         if ( ((other.globaldef000107 == globaldef001170) || (other.globaldef000107 == globaldef001171)) ) {

            trace_ent.globaldef000094 = (trace_ent.globaldef000094 + globaldef002007);

         }

      }

   }
   e1 = trace_ent;
   traceline ((globaldef002153 + f),(globaldef002157 + f),FALSE,self);
   if ( ((trace_ent != e1) && trace_ent.globaldef000141) ) {

      particle (trace_endpos,globaldef002169,globaldef002170,(globaldef002162 * MOVETYPE_STEP));
      T_Damage (trace_ent,globaldef002161,globaldef002161,globaldef002162);

   }
   e2 = trace_ent;
   traceline ((globaldef002153 - f),(globaldef002157 - f),FALSE,self);
   if ( (((trace_ent != e1) && (trace_ent != e2)) && trace_ent.globaldef000141) ) {

      particle (trace_endpos,globaldef002169,globaldef002170,(globaldef002162 * MOVETYPE_STEP));
      T_Damage (trace_ent,globaldef002161,globaldef002161,globaldef002162);

   }

};
vector globaldef002169 /* = '0.000 0.000 100.000' */;
float globaldef002170 /* = 225.000 */;

void () W_FireLightning;

// function W_FireLightning
// function number 274 begins at statement 7036
/*
 * OP_LOAD_F	28	161	5869
 * OP_LT	5869	214	5870
 * OP_IFNOT	5870	6	0
 * OP_ADDRESS	28	154	5871
 * OP_CALL0	4567	0	0
 * OP_STOREP_F	1	5871	0
 * OP_CALL0	4295	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	189	5872
 * OP_GT	5872	214	5873
 * OP_IFNOT	5873	18	0
 * OP_BITAND	821	767	5874
 * OP_IFNOT	5874	4	0
 * OP_ADDRESS	28	161	5875
 * OP_STOREP_F	213	5875	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	161	5876
 * OP_STORE_F	5876	5868	0
 * OP_ADDRESS	28	161	5877
 * OP_STOREP_F	213	5877	0
 * OP_CALL0	4295	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	28	7	0
 * OP_MUL_F	5878	5868	5879
 * OP_STORE_V	5879	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	4216	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	405	5880
 * OP_LT	5880	31	5881
 * OP_IFNOT	5881	16	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5882	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5883
 * OP_STORE_V	5883	7	0
 * OP_STORE_V	3036	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	405	5886
 * OP_ADD_F	31	4474	5887
 * OP_STOREP_F	5887	5886	0
 * OP_ADDRESS	28	126	5888
 * OP_STOREP_F	277	5888	0
 * OP_ADDRESS	28	157	5889
 * OP_ADDRESS	28	161	5890
 * OP_LOAD_F	28	161	5891
 * OP_SUB_F	5891	214	5892
 * OP_STOREP_F	5892	5890	0
 * OP_STOREP_F	5892	5889	0
 * OP_LOAD_V	28	105	5893
 * OP_ADD_V	5893	5392	5896
 * OP_STORE_V	5896	5865	0
 * OP_STORE_V	5865	4	0
 * OP_MUL_VF	59	740	5899
 * OP_ADD_V	5865	5899	5902
 * OP_STORE_V	5902	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	319	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	503	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5865	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5866	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	5867	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	71	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	72	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	73	7	0
 * OP_CALL2	500	0	0
 * OP_LOAD_V	28	105	5905
 * OP_STORE_V	5905	4	0
 * OP_MUL_VF	59	229	5908
 * OP_ADD_V	71	5908	5911
 * OP_STORE_V	5911	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	309	13	0
 * OP_CALL4	5802	0	0
 * OP_DONE	0	0	0
 */

void () W_FireLightning = {

   local vector org;
   local float cells;

   if ( (self.globaldef000139 < TRUE) ) {

      self.globaldef000132 = W_BestWeapon ();
      W_SetCurrentAmmo ();
      return ;

   }
   if ( (self.globaldef000167 > TRUE) ) {

      if ( (globaldef000804 & globaldef000750) ) {

         self.globaldef000139 = FALSE;
         return ;

      }
      cells = self.globaldef000139;
      self.globaldef000139 = FALSE;
      W_SetCurrentAmmo ();
      T_RadiusDamage (self,self,(globaldef002177 * cells),world);
      return ;

   }
   if ( (self.globaldef000388 < time) ) {

      sound (self,CHAN_WEAPON,globaldef002178,TRUE,ATTN_NORM);
      func002453 (self,self.globaldef000083,globaldef001488,globaldef000741);
      self.globaldef000388 = (time + globaldef001825);

   }
   self.globaldef000104 = CONTENT_SOLID;
   self.globaldef000139 = (self.globaldef000139 - TRUE);
   self.globaldef000135 = (self.globaldef000139 - TRUE);
   org = (self.globaldef000083 + globaldef002037);
   traceline (org,(org + (v_forward * globaldef000723)),TRUE,self);
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_LIGHTNING2);
   WriteEntity (MSG_BROADCAST,self);
   WriteCoord (MSG_BROADCAST,org);
   WriteCoord (MSG_BROADCAST,globaldef002174);
   WriteCoord (MSG_BROADCAST,globaldef002175);
   WriteCoord (MSG_BROADCAST,trace_endpos);
   WriteCoord (MSG_BROADCAST,globaldef000049);
   WriteCoord (MSG_BROADCAST,globaldef000050);
   LightningDamage (self.globaldef000083,(trace_endpos + (v_forward * MOVETYPE_STEP)),self,SVC_INTERMISSION);

};
float globaldef002177 /* = 35.000 */;
string globaldef002178 /* = "weapons/lhit.wav" */;

void () GrenadeExplode;

// function GrenadeExplode
// function number 275 begins at statement 7136
/*
 * OP_STORE_V	28	4	0
 * OP_LOAD_ENT	28	201	5915
 * OP_STORE_V	5915	7	0
 * OP_STORE_V	3584	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	4216	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	316	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	5916
 * OP_STORE_V	5916	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	5917
 * OP_STORE_V	5917	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	5918
 * OP_STORE_V	5918	7	0
 * OP_CALL2	500	0	0
 * OP_CALL0	5703	0	0
 * OP_DONE	0	0	0
 */

void () GrenadeExplode = {

   T_RadiusDamage (self,self.globaldef000179,globaldef001638,world);
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_EXPLOSION);
   WriteCoord (MSG_BROADCAST,self.globaldef000084);
   WriteCoord (MSG_BROADCAST,self.globaldef000085);
   WriteCoord (MSG_BROADCAST,self.globaldef000086);
   BecomeExplosion ();

};

void () GrenadeTouch;

// function GrenadeTouch
// function number 276 begins at statement 7162
/*
 * OP_LOAD_ENT	28	201	5920
 * OP_EQ_E	29	5920	5921
 * OP_IFNOT	5921	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	5922
 * OP_EQ_F	5922	252	5923
 * OP_IFNOT	5923	3	0
 * OP_CALL0	5914	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5368	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	113	5924
 * OP_EQ_V	5924	286	5927
 * OP_IFNOT	5927	3	0
 * OP_ADDRESS	28	121	5928
 * OP_STOREP_V	286	5928	0
 * OP_DONE	0	0	0
 */

void () GrenadeTouch = {

   if ( (other == self.globaldef000179) ) {

      return ;

   }
   if ( (other.globaldef000141 == DAMAGE_AIM) ) {

      GrenadeExplode ();
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef002022,TRUE,ATTN_NORM);
   if ( (self.globaldef000091 == VEC_ORIGIN) ) {

      self.globaldef000099 = VEC_ORIGIN;

   }

};

void () W_FireGrenade;

// function W_FireGrenade
// function number 277 begins at statement 7183
/*
 * OP_ADDRESS	28	157	5934
 * OP_ADDRESS	28	160	5935
 * OP_LOAD_F	28	160	5936
 * OP_SUB_F	5936	214	5937
 * OP_STOREP_F	5937	5935	0
 * OP_STOREP_F	5937	5934	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5367	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	5938
 * OP_STORE_V	5938	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	126	5941
 * OP_STOREP_F	277	5941	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	5932	0
 * OP_ADDRESS	5932	201	5942
 * OP_STOREP_ENT	28	5942	0
 * OP_ADDRESS	5932	103	5943
 * OP_STOREP_F	235	5943	0
 * OP_ADDRESS	5932	104	5944
 * OP_STOREP_F	239	5944	0
 * OP_ADDRESS	5932	129	5945
 * OP_STOREP_S	5946	5945	0
 * OP_LOAD_V	28	175	5947
 * OP_STORE_V	5947	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_F	28	176	5950
 * OP_IFNOT	5950	15	0
 * OP_ADDRESS	5932	113	5951
 * OP_MUL_VF	59	740	5954
 * OP_MUL_VF	62	2044	5957
 * OP_ADD_V	5954	5957	5960
 * OP_CALL0	5370	0	0
 * OP_MUL_FV	1	65	5963
 * OP_MUL_VF	5963	235	5966
 * OP_ADD_V	5960	5966	5969
 * OP_CALL0	5370	0	0
 * OP_MUL_FV	1	62	5972
 * OP_MUL_VF	5972	235	5975
 * OP_ADD_V	5969	5975	5978
 * OP_STOREP_V	5978	5951	0
 * OP_GOTO	12	0	0
 * OP_ADDRESS	5932	113	5981
 * OP_STORE_V	28	4	0
 * OP_STORE_V	5984	7	0
 * OP_CALL2	5373	0	0
 * OP_STOREP_V	1	5981	0
 * OP_ADDRESS	5932	113	5985
 * OP_LOAD_V	5932	113	5988
 * OP_MUL_VF	5988	740	5991
 * OP_STOREP_V	5991	5985	0
 * OP_ADDRESS	5932	116	5994
 * OP_STOREP_F	2044	5994	0
 * OP_ADDRESS	5932	121	5995
 * OP_STOREP_V	5998	5995	0
 * OP_ADDRESS	5932	117	6001
 * OP_LOAD_V	5932	113	6004
 * OP_STORE_V	6004	4	0
 * OP_CALL1	495	0	0
 * OP_STOREP_V	1	6001	0
 * OP_ADDRESS	5932	146	6007
 * OP_STOREP_FNC	5919	6007	0
 * OP_ADDRESS	5932	150	6008
 * OP_ADD_F	31	6009	6010
 * OP_STOREP_F	6010	6008	0
 * OP_ADDRESS	5932	148	6011
 * OP_STOREP_FNC	5914	6011	0
 * OP_STORE_V	5932	4	0
 * OP_STORE_V	6012	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5932	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	5932	4	0
 * OP_LOAD_V	28	105	6013
 * OP_STORE_V	6013	7	0
 * OP_CALL2	453	0	0
 * OP_DONE	0	0	0
 */

void () W_FireGrenade = {

   local entity missile;
   local entity mpuff;

   self.globaldef000138 = (self.globaldef000138 - TRUE);
   self.globaldef000135 = (self.globaldef000138 - TRUE);
   sound (self,CHAN_WEAPON,globaldef002021,TRUE,ATTN_NORM);
   func002453 (self,self.globaldef000083,TRUE,globaldef000741);
   self.globaldef000104 = CONTENT_SOLID;
   missile = spawn ();
   missile.globaldef000179 = self;
   missile.globaldef000081 = MOVETYPE_BOUNCE;
   missile.globaldef000082 = SOLID_BBOX;
   missile.globaldef000107 = globaldef002184;
   makevectors (self.globaldef000153);
   if ( self.globaldef000154 ) {

      missile.globaldef000091 = ((((v_forward * globaldef000723) + (v_up * globaldef001343)) + ((func000249 () * v_right) * MOVETYPE_BOUNCE)) + ((func000249 () * v_up) * MOVETYPE_BOUNCE));

   } else {

      missile.globaldef000091 = func000250 (self,globaldef002185);
      missile.globaldef000091 = (missile.globaldef000091 * globaldef000723);
      missile.globaldef000094 = globaldef001343;

   }
   missile.globaldef000099 = globaldef002186;
   missile.globaldef000095 = vectoangles (missile.globaldef000091);
   missile.globaldef000124 = GrenadeTouch;
   missile.globaldef000128 = (time + globaldef002187);
   missile.globaldef000126 = GrenadeExplode;
   setmodel (missile,globaldef002188);
   setsize (missile,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (missile,self.globaldef000083);

};
string globaldef002184 /* = "grenade" */;
float globaldef002185 /* = 10000.000 */;
vector globaldef002186 /* = '300.000 300.000 300.000' */;
float globaldef002187 /* = 2.500 */;
string globaldef002188 /* = "progs/grenade.mdl" */;

void () spike_touch;

void () superspike_touch;

void (vector globaldef002192, vector globaldef002196) launch_spike;

// function launch_spike
// function number 278 begins at statement 7269
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	350	0
 * OP_ADDRESS	350	201	6025
 * OP_STOREP_ENT	28	6025	0
 * OP_ADDRESS	350	103	6026
 * OP_STOREP_F	234	6026	0
 * OP_ADDRESS	350	104	6027
 * OP_STOREP_F	239	6027	0
 * OP_ADDRESS	350	117	6028
 * OP_STORE_V	6022	4	0
 * OP_CALL1	495	0	0
 * OP_STOREP_V	1	6028	0
 * OP_ADDRESS	350	146	6031
 * OP_STOREP_FNC	6016	6031	0
 * OP_ADDRESS	350	129	6032
 * OP_STOREP_S	6033	6032	0
 * OP_ADDRESS	350	148	6034
 * OP_STOREP_FNC	521	6034	0
 * OP_ADDRESS	350	150	6035
 * OP_ADD_F	31	231	6036
 * OP_STOREP_F	6036	6035	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	6037	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	6019	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	350	113	6038
 * OP_MUL_VF	6022	1663	6041
 * OP_STOREP_V	6041	6038	0
 * OP_DONE	0	0	0
 */

void (vector globaldef002192, vector globaldef002196) launch_spike = {

   newmis = spawn ();
   newmis.globaldef000179 = self;
   newmis.globaldef000081 = MOVETYPE_FLYMISSILE;
   newmis.globaldef000082 = SOLID_BBOX;
   newmis.globaldef000095 = vectoangles (globaldef002196);
   newmis.globaldef000124 = spike_touch;
   newmis.globaldef000107 = globaldef002200;
   newmis.globaldef000126 = SUB_Remove;
   newmis.globaldef000128 = (time + MOVETYPE_TOSS);
   setmodel (newmis,globaldef002201);
   setsize (newmis,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (newmis,globaldef002192);
   newmis.globaldef000091 = (globaldef002196 * globaldef001302);

};
string globaldef002200 /* = "spike" */;
string globaldef002201 /* = "progs/spike.mdl" */;

void () W_FireSuperSpikes;

// function W_FireSuperSpikes
// function number 279 begins at statement 7304
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5365	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	6049
 * OP_STORE_V	6049	7	0
 * OP_STORE_V	3036	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	157	6052
 * OP_ADDRESS	28	159	6053
 * OP_LOAD_F	28	159	6054
 * OP_SUB_F	6054	216	6055
 * OP_STOREP_F	6055	6053	0
 * OP_STOREP_F	6055	6052	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1663	7	0
 * OP_CALL2	5373	0	0
 * OP_STORE_V	1	6045	0
 * OP_LOAD_V	28	105	6056
 * OP_ADD_V	6056	5392	6059
 * OP_STORE_V	6059	4	0
 * OP_STORE_V	6045	7	0
 * OP_CALL2	6018	0	0
 * OP_ADDRESS	350	146	6062
 * OP_STOREP_FNC	6017	6062	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	6063	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	126	6064
 * OP_STOREP_F	277	6064	0
 * OP_DONE	0	0	0
 */

void () W_FireSuperSpikes = {

   local vector dir;
   local entity old;

   sound (self,CHAN_WEAPON,globaldef002019,TRUE,ATTN_NORM);
   func002453 (self,self.globaldef000083,globaldef001488,globaldef000741);
   self.globaldef000137 = (self.globaldef000137 - FL_SWIM);
   self.globaldef000135 = (self.globaldef000137 - FL_SWIM);
   dir = func000250 (self,globaldef001302);
   launch_spike ((self.globaldef000083 + globaldef002037),dir);
   newmis.globaldef000124 = superspike_touch;
   setmodel (newmis,globaldef002208);
   setsize (newmis,VEC_ORIGIN,VEC_ORIGIN);
   self.globaldef000104 = CONTENT_SOLID;

};
string globaldef002208 /* = "progs/s_spike.mdl" */;

void (float globaldef002210) W_FireSpikes;

// function W_FireSpikes
// function number 280 begins at statement 7343
/*
 * OP_LOAD_V	28	175	6071
 * OP_STORE_V	6071	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_F	28	159	6074
 * OP_GE	6074	216	6075
 * OP_LOAD_F	28	154	6076
 * OP_EQ_F	6076	257	6077
 * OP_AND	6075	6077	6078
 * OP_IFNOT	6078	3	0
 * OP_CALL0	6044	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	159	6079
 * OP_LT	6079	214	6080
 * OP_IFNOT	6080	6	0
 * OP_ADDRESS	28	154	6081
 * OP_CALL0	4567	0	0
 * OP_STOREP_F	1	6081	0
 * OP_CALL0	4295	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	5359	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_V	28	105	6082
 * OP_STORE_V	6082	7	0
 * OP_STORE_V	3036	10	0
 * OP_STORE_V	758	13	0
 * OP_CALL4	1120	0	0
 * OP_ADDRESS	28	157	6085
 * OP_ADDRESS	28	159	6086
 * OP_LOAD_F	28	159	6087
 * OP_SUB_F	6087	214	6088
 * OP_STOREP_F	6088	6086	0
 * OP_STOREP_F	6088	6085	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	1663	7	0
 * OP_CALL2	5373	0	0
 * OP_STORE_V	1	6067	0
 * OP_LOAD_V	28	105	6089
 * OP_ADD_V	6089	5392	6092
 * OP_MUL_VF	65	6066	6095
 * OP_ADD_V	6092	6095	6098
 * OP_STORE_V	6098	4	0
 * OP_STORE_V	6067	7	0
 * OP_CALL2	6018	0	0
 * OP_ADDRESS	28	126	6101
 * OP_STOREP_F	277	6101	0
 * OP_DONE	0	0	0
 */

void (float globaldef002210) W_FireSpikes = {

   local vector dir;
   local entity old;

   makevectors (self.globaldef000153);
   if ( ((self.globaldef000137 >= FL_SWIM) && (self.globaldef000132 == IT_SUPER_NAILGUN)) ) {

      W_FireSuperSpikes ();
      return ;

   }
   if ( (self.globaldef000137 < TRUE) ) {

      self.globaldef000132 = W_BestWeapon ();
      W_SetCurrentAmmo ();
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef002013,TRUE,ATTN_NORM);
   func002453 (self,self.globaldef000083,globaldef001488,globaldef000741);
   self.globaldef000137 = (self.globaldef000137 - TRUE);
   self.globaldef000135 = (self.globaldef000137 - TRUE);
   dir = func000250 (self,globaldef001302);
   launch_spike (((self.globaldef000083 + globaldef002037) + (v_right * globaldef002210)),dir);
   self.globaldef000104 = CONTENT_SOLID;

};
.float field000342;

// function spike_touch
// function number 281 begins at statement 7394
/*
 * OP_LOAD_ENT	28	201	6104
 * OP_EQ_E	29	6104	6105
 * OP_IFNOT	6105	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	104	6106
 * OP_EQ_F	6106	238	6107
 * OP_IFNOT	6107	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	6108
 * OP_STORE_V	6108	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	281	6111
 * OP_IFNOT	6111	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	6112
 * OP_IFNOT	6112	10	0
 * OP_STORE_V	234	4	0
 * OP_CALL1	5489	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_LOAD_ENT	28	201	6113
 * OP_STORE_V	6113	10	0
 * OP_STORE_V	234	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	33	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_LOAD_S	28	129	6114
 * OP_EQ_S	6114	6115	6116
 * OP_IFNOT	6116	5	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	320	7	0
 * OP_CALL2	496	0	0
 * OP_GOTO	11	0	0
 * OP_LOAD_S	28	129	6117
 * OP_EQ_S	6117	6118	6119
 * OP_IFNOT	6119	5	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	321	7	0
 * OP_CALL2	496	0	0
 * OP_GOTO	4	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	313	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	6120
 * OP_STORE_V	6120	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	6121
 * OP_STORE_V	6121	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	6122
 * OP_STORE_V	6122	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () spike_touch = {

   local float rand;

   if ( (other == self.globaldef000179) ) {

      return ;

   }
   if ( (other.globaldef000082 == SOLID_TRIGGER) ) {

      return ;

   }
   if ( (pointcontents (self.globaldef000083) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   if ( other.globaldef000141 ) {

      func000255 (MOVETYPE_FLYMISSILE);
      T_Damage (other,self,self.globaldef000179,MOVETYPE_FLYMISSILE);

   } else {

      WriteByte (MSG_BROADCAST,globaldef000287);
      if ( (self.globaldef000107 == globaldef002218) ) {

         WriteByte (MSG_BROADCAST,TE_WIZSPIKE);

      } else {

         if ( (self.globaldef000107 == globaldef002219) ) {

            WriteByte (MSG_BROADCAST,TE_KNIGHTSPIKE);

         } else {

            WriteByte (MSG_BROADCAST,TE_SPIKE);

         }

      }
      WriteCoord (MSG_BROADCAST,self.globaldef000084);
      WriteCoord (MSG_BROADCAST,self.globaldef000085);
      WriteCoord (MSG_BROADCAST,self.globaldef000086);

   }
   remove (self);

};
string globaldef002218 /* = "wizspike" */;
string globaldef002219 /* = "knightspike" */;

// function superspike_touch
// function number 282 begins at statement 7456
/*
 * OP_LOAD_ENT	28	201	6124
 * OP_EQ_E	29	6124	6125
 * OP_IFNOT	6125	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	104	6126
 * OP_EQ_F	6126	238	6127
 * OP_IFNOT	6127	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	6128
 * OP_STORE_V	6128	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	281	6131
 * OP_IFNOT	6131	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	6132
 * OP_IFNOT	6132	10	0
 * OP_STORE_V	6133	4	0
 * OP_CALL1	5489	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_LOAD_ENT	28	201	6134
 * OP_STORE_V	6134	10	0
 * OP_STORE_V	6133	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	19	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	314	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	6135
 * OP_STORE_V	6135	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	6136
 * OP_STORE_V	6136	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	6137
 * OP_STORE_V	6137	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () superspike_touch = {

   local float rand;

   if ( (other == self.globaldef000179) ) {

      return ;

   }
   if ( (other.globaldef000082 == SOLID_TRIGGER) ) {

      return ;

   }
   if ( (pointcontents (self.globaldef000083) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   if ( other.globaldef000141 ) {

      func000255 (globaldef002221);
      T_Damage (other,self,self.globaldef000179,globaldef002221);

   } else {

      WriteByte (MSG_BROADCAST,globaldef000287);
      WriteByte (MSG_BROADCAST,TE_SUPERSPIKE);
      WriteCoord (MSG_BROADCAST,self.globaldef000084);
      WriteCoord (MSG_BROADCAST,self.globaldef000085);
      WriteCoord (MSG_BROADCAST,self.globaldef000086);

   }
   remove (self);

};
float globaldef002221 /* = 18.000 */;

// function W_SetCurrentAmmo
// function number 283 begins at statement 7504
/*
 * OP_LOAD_S	28	129	6138
 * OP_EQ_S	6138	1236	6139
 * OP_IFNOT	6139	2	0
 * OP_CALL0	5354	0	0
 * OP_ADDRESS	28	162	6140
 * OP_LOAD_F	28	162	6141
 * OP_LOAD_F	28	162	6142
 * OP_BITOR	262	263	6143
 * OP_BITOR	6143	264	6144
 * OP_BITOR	6144	265	6145
 * OP_BITAND	6142	6145	6146
 * OP_SUB_F	6141	6146	6147
 * OP_STOREP_F	6147	6140	0
 * OP_LOAD_F	28	154	6148
 * OP_EQ_F	6148	253	6149
 * OP_IFNOT	6149	8	0
 * OP_ADDRESS	28	157	6150
 * OP_STOREP_F	213	6150	0
 * OP_ADDRESS	28	155	6151
 * OP_STOREP_S	6152	6151	0
 * OP_ADDRESS	28	156	6153
 * OP_STOREP_F	213	6153	0
 * OP_GOTO	112	0	0
 * OP_LOAD_F	28	154	6154
 * OP_EQ_F	6154	254	6155
 * OP_IFNOT	6155	13	0
 * OP_ADDRESS	28	157	6156
 * OP_LOAD_F	28	158	6157
 * OP_STOREP_F	6157	6156	0
 * OP_ADDRESS	28	155	6158
 * OP_STOREP_S	6159	6158	0
 * OP_ADDRESS	28	156	6160
 * OP_STOREP_F	213	6160	0
 * OP_ADDRESS	28	162	6161
 * OP_LOAD_F	28	162	6162
 * OP_BITOR	6162	262	6163
 * OP_STOREP_F	6163	6161	0
 * OP_GOTO	97	0	0
 * OP_LOAD_F	28	154	6164
 * OP_EQ_F	6164	255	6165
 * OP_IFNOT	6165	13	0
 * OP_ADDRESS	28	157	6166
 * OP_LOAD_F	28	158	6167
 * OP_STOREP_F	6167	6166	0
 * OP_ADDRESS	28	155	6168
 * OP_STOREP_S	6169	6168	0
 * OP_ADDRESS	28	156	6170
 * OP_STOREP_F	213	6170	0
 * OP_ADDRESS	28	162	6171
 * OP_LOAD_F	28	162	6172
 * OP_BITOR	6172	262	6173
 * OP_STOREP_F	6173	6171	0
 * OP_GOTO	82	0	0
 * OP_LOAD_F	28	154	6174
 * OP_EQ_F	6174	256	6175
 * OP_IFNOT	6175	13	0
 * OP_ADDRESS	28	157	6176
 * OP_LOAD_F	28	159	6177
 * OP_STOREP_F	6177	6176	0
 * OP_ADDRESS	28	155	6178
 * OP_STOREP_S	6179	6178	0
 * OP_ADDRESS	28	156	6180
 * OP_STOREP_F	213	6180	0
 * OP_ADDRESS	28	162	6181
 * OP_LOAD_F	28	162	6182
 * OP_BITOR	6182	263	6183
 * OP_STOREP_F	6183	6181	0
 * OP_GOTO	67	0	0
 * OP_LOAD_F	28	154	6184
 * OP_EQ_F	6184	257	6185
 * OP_IFNOT	6185	13	0
 * OP_ADDRESS	28	157	6186
 * OP_LOAD_F	28	159	6187
 * OP_STOREP_F	6187	6186	0
 * OP_ADDRESS	28	155	6188
 * OP_STOREP_S	6189	6188	0
 * OP_ADDRESS	28	156	6190
 * OP_STOREP_F	213	6190	0
 * OP_ADDRESS	28	162	6191
 * OP_LOAD_F	28	162	6192
 * OP_BITOR	6192	263	6193
 * OP_STOREP_F	6193	6191	0
 * OP_GOTO	52	0	0
 * OP_LOAD_F	28	154	6194
 * OP_EQ_F	6194	258	6195
 * OP_IFNOT	6195	13	0
 * OP_ADDRESS	28	157	6196
 * OP_LOAD_F	28	160	6197
 * OP_STOREP_F	6197	6196	0
 * OP_ADDRESS	28	155	6198
 * OP_STOREP_S	6199	6198	0
 * OP_ADDRESS	28	156	6200
 * OP_STOREP_F	213	6200	0
 * OP_ADDRESS	28	162	6201
 * OP_LOAD_F	28	162	6202
 * OP_BITOR	6202	264	6203
 * OP_STOREP_F	6203	6201	0
 * OP_GOTO	37	0	0
 * OP_LOAD_F	28	154	6204
 * OP_EQ_F	6204	259	6205
 * OP_IFNOT	6205	13	0
 * OP_ADDRESS	28	157	6206
 * OP_LOAD_F	28	160	6207
 * OP_STOREP_F	6207	6206	0
 * OP_ADDRESS	28	155	6208
 * OP_STOREP_S	6209	6208	0
 * OP_ADDRESS	28	156	6210
 * OP_STOREP_F	213	6210	0
 * OP_ADDRESS	28	162	6211
 * OP_LOAD_F	28	162	6212
 * OP_BITOR	6212	264	6213
 * OP_STOREP_F	6213	6211	0
 * OP_GOTO	22	0	0
 * OP_LOAD_F	28	154	6214
 * OP_EQ_F	6214	260	6215
 * OP_IFNOT	6215	13	0
 * OP_ADDRESS	28	157	6216
 * OP_LOAD_F	28	161	6217
 * OP_STOREP_F	6217	6216	0
 * OP_ADDRESS	28	155	6218
 * OP_STOREP_S	6219	6218	0
 * OP_ADDRESS	28	156	6220
 * OP_STOREP_F	213	6220	0
 * OP_ADDRESS	28	162	6221
 * OP_LOAD_F	28	162	6222
 * OP_BITOR	6222	265	6223
 * OP_STOREP_F	6223	6221	0
 * OP_GOTO	7	0	0
 * OP_ADDRESS	28	157	6224
 * OP_STOREP_F	213	6224	0
 * OP_ADDRESS	28	155	6225
 * OP_STOREP_S	3002	6225	0
 * OP_ADDRESS	28	156	6226
 * OP_STOREP_F	213	6226	0
 * OP_DONE	0	0	0
 */

void () W_SetCurrentAmmo = {

   if ( (self.globaldef000107 == globaldef001170) ) {

      player_run ();

   }
   self.globaldef000140 = (self.globaldef000140 - (self.globaldef000140 & (((IT_SHELLS | IT_NAILS) | IT_ROCKETS) | IT_CELLS)));
   if ( (self.globaldef000132 == IT_AXE) ) {

      self.globaldef000135 = FALSE;
      self.globaldef000133 = globaldef002222;
      self.globaldef000134 = FALSE;

   } else {

      if ( (self.globaldef000132 == IT_SHOTGUN) ) {

         self.globaldef000135 = self.globaldef000136;
         self.globaldef000133 = globaldef002223;
         self.globaldef000134 = FALSE;
         self.globaldef000140 = (self.globaldef000140 | IT_SHELLS);

      } else {

         if ( (self.globaldef000132 == IT_SUPER_SHOTGUN) ) {

            self.globaldef000135 = self.globaldef000136;
            self.globaldef000133 = globaldef002224;
            self.globaldef000134 = FALSE;
            self.globaldef000140 = (self.globaldef000140 | IT_SHELLS);

         } else {

            if ( (self.globaldef000132 == IT_NAILGUN) ) {

               self.globaldef000135 = self.globaldef000137;
               self.globaldef000133 = globaldef002225;
               self.globaldef000134 = FALSE;
               self.globaldef000140 = (self.globaldef000140 | IT_NAILS);

            } else {

               if ( (self.globaldef000132 == IT_SUPER_NAILGUN) ) {

                  self.globaldef000135 = self.globaldef000137;
                  self.globaldef000133 = globaldef002226;
                  self.globaldef000134 = FALSE;
                  self.globaldef000140 = (self.globaldef000140 | IT_NAILS);

               } else {

                  if ( (self.globaldef000132 == IT_GRENADE_LAUNCHER) ) {

                     self.globaldef000135 = self.globaldef000138;
                     self.globaldef000133 = globaldef002227;
                     self.globaldef000134 = FALSE;
                     self.globaldef000140 = (self.globaldef000140 | IT_ROCKETS);

                  } else {

                     if ( (self.globaldef000132 == IT_ROCKET_LAUNCHER) ) {

                        self.globaldef000135 = self.globaldef000138;
                        self.globaldef000133 = globaldef002228;
                        self.globaldef000134 = FALSE;
                        self.globaldef000140 = (self.globaldef000140 | IT_ROCKETS);

                     } else {

                        if ( (self.globaldef000132 == IT_LIGHTNING) ) {

                           self.globaldef000135 = self.globaldef000139;
                           self.globaldef000133 = globaldef002229;
                           self.globaldef000134 = FALSE;
                           self.globaldef000140 = (self.globaldef000140 | IT_CELLS);

                        } else {

                           self.globaldef000135 = FALSE;
                           self.globaldef000133 = globaldef001466;
                           self.globaldef000134 = FALSE;

                        }

                     }

                  }

               }

            }

         }

      }

   }

};
string globaldef002222 /* = "progs/v_axe.mdl" */;
string globaldef002223 /* = "progs/v_shot.mdl" */;
string globaldef002224 /* = "progs/v_shot2.mdl" */;
string globaldef002225 /* = "progs/v_nail.mdl" */;
string globaldef002226 /* = "progs/v_nail2.mdl" */;
string globaldef002227 /* = "progs/v_rock.mdl" */;
string globaldef002228 /* = "progs/v_rock2.mdl" */;
string globaldef002229 /* = "progs/v_light.mdl" */;

// function W_BestWeapon
// function number 284 begins at statement 7639
/*
 * OP_LOAD_F	28	162	6228
 * OP_STORE_F	6228	6227	0
 * OP_LOAD_F	28	189	6229
 * OP_LE	6229	214	6230
 * OP_LOAD_F	28	161	6231
 * OP_GE	6231	214	6232
 * OP_AND	6230	6232	6233
 * OP_BITAND	6227	260	6234
 * OP_AND	6233	6234	6235
 * OP_IFNOT	6235	2	0
 * OP_RETURN	260	0	0
 * OP_LOAD_F	28	159	6236
 * OP_GE	6236	216	6237
 * OP_BITAND	6227	257	6238
 * OP_AND	6237	6238	6239
 * OP_IFNOT	6239	2	0
 * OP_RETURN	257	0	0
 * OP_LOAD_F	28	158	6240
 * OP_GE	6240	216	6241
 * OP_BITAND	6227	255	6242
 * OP_AND	6241	6242	6243
 * OP_IFNOT	6243	2	0
 * OP_RETURN	255	0	0
 * OP_LOAD_F	28	159	6244
 * OP_GE	6244	214	6245
 * OP_BITAND	6227	256	6246
 * OP_AND	6245	6246	6247
 * OP_IFNOT	6247	2	0
 * OP_RETURN	256	0	0
 * OP_LOAD_F	28	158	6248
 * OP_GE	6248	214	6249
 * OP_BITAND	6227	254	6250
 * OP_AND	6249	6250	6251
 * OP_IFNOT	6251	2	0
 * OP_RETURN	254	0	0
 * OP_RETURN	253	0	0
 * OP_DONE	0	0	0
 */
float () W_BestWeapon = {

   local float it;

   it = self.globaldef000140;
   if ( (((self.globaldef000167 <= TRUE) && (self.globaldef000139 >= TRUE)) && (it & IT_LIGHTNING)) ) {

      return ( IT_LIGHTNING );

   }
   if ( ((self.globaldef000137 >= FL_SWIM) && (it & IT_SUPER_NAILGUN)) ) {

      return ( IT_SUPER_NAILGUN );

   }
   if ( ((self.globaldef000136 >= FL_SWIM) && (it & IT_SUPER_SHOTGUN)) ) {

      return ( IT_SUPER_SHOTGUN );

   }
   if ( ((self.globaldef000137 >= TRUE) && (it & IT_NAILGUN)) ) {

      return ( IT_NAILGUN );

   }
   if ( ((self.globaldef000136 >= TRUE) && (it & IT_SHOTGUN)) ) {

      return ( IT_SHOTGUN );

   }
   return ( IT_AXE );

};
float () W_CheckNoAmmo;

// function W_CheckNoAmmo
// function number 285 begins at statement 7676
/*
 * OP_LOAD_F	28	157	6253
 * OP_GT	6253	213	6254
 * OP_IFNOT	6254	2	0
 * OP_RETURN	214	0	0
 * OP_LOAD_F	28	154	6255
 * OP_EQ_F	6255	253	6256
 * OP_IFNOT	6256	2	0
 * OP_RETURN	214	0	0
 * OP_ADDRESS	28	154	6257
 * OP_CALL0	4567	0	0
 * OP_STOREP_F	1	6257	0
 * OP_CALL0	4295	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () W_CheckNoAmmo = {

   if ( (self.globaldef000135 > FALSE) ) {

      return ( TRUE );

   }
   if ( (self.globaldef000132 == IT_AXE) ) {

      return ( TRUE );

   }
   self.globaldef000132 = W_BestWeapon ();
   W_SetCurrentAmmo ();
   return ( FALSE );

};

void () player_axe1;

void () player_axeb1;

void () player_axec1;

void () player_axed1;

void () player_shot1;

void () player_nail1;

void () player_light1;

void () player_rocket1;

void () W_Attack;

// function W_Attack
// function number 286 begins at statement 7690
/*
 * OP_CALL0	6252	0	0
 * OP_NOT_F	1	0	6268
 * OP_IFNOT	6268	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	175	6269
 * OP_STORE_V	6269	4	0
 * OP_CALL1	452	0	0
 * OP_ADDRESS	28	393	6272
 * OP_ADD_F	31	214	6273
 * OP_STOREP_F	6273	6272	0
 * OP_LOAD_F	28	154	6274
 * OP_EQ_F	6274	253	6275
 * OP_IFNOT	6275	26	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	6276	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	6267	0
 * OP_LT	6267	6277	6278
 * OP_IFNOT	6278	3	0
 * OP_CALL0	6258	0	0
 * OP_GOTO	10	0	0
 * OP_LT	6267	539	6279
 * OP_IFNOT	6279	3	0
 * OP_CALL0	6259	0	0
 * OP_GOTO	6	0	0
 * OP_LT	6267	6280	6281
 * OP_IFNOT	6281	3	0
 * OP_CALL0	6260	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	6261	0	0
 * OP_ADDRESS	28	378	6282
 * OP_ADD_F	31	539	6283
 * OP_STOREP_F	6283	6282	0
 * OP_GOTO	60	0	0
 * OP_LOAD_F	28	154	6284
 * OP_EQ_F	6284	254	6285
 * OP_IFNOT	6285	7	0
 * OP_CALL0	6262	0	0
 * OP_CALL0	5625	0	0
 * OP_ADDRESS	28	378	6286
 * OP_ADD_F	31	539	6287
 * OP_STOREP_F	6287	6286	0
 * OP_GOTO	51	0	0
 * OP_LOAD_F	28	154	6288
 * OP_EQ_F	6288	255	6289
 * OP_IFNOT	6289	7	0
 * OP_CALL0	6262	0	0
 * OP_CALL0	5655	0	0
 * OP_ADDRESS	28	378	6290
 * OP_ADD_F	31	5599	6291
 * OP_STOREP_F	6291	6290	0
 * OP_GOTO	42	0	0
 * OP_LOAD_F	28	154	6292
 * OP_EQ_F	6292	256	6293
 * OP_IFNOT	6293	3	0
 * OP_CALL0	6263	0	0
 * OP_GOTO	37	0	0
 * OP_LOAD_F	28	154	6294
 * OP_EQ_F	6294	257	6295
 * OP_IFNOT	6295	3	0
 * OP_CALL0	6263	0	0
 * OP_GOTO	32	0	0
 * OP_LOAD_F	28	154	6296
 * OP_EQ_F	6296	258	6297
 * OP_IFNOT	6297	7	0
 * OP_CALL0	6265	0	0
 * OP_CALL0	5931	0	0
 * OP_ADDRESS	28	378	6298
 * OP_ADD_F	31	4474	6299
 * OP_STOREP_F	6299	6298	0
 * OP_GOTO	23	0	0
 * OP_LOAD_F	28	154	6300
 * OP_EQ_F	6300	259	6301
 * OP_IFNOT	6301	7	0
 * OP_CALL0	6265	0	0
 * OP_CALL0	5748	0	0
 * OP_ADDRESS	28	378	6302
 * OP_ADD_F	31	4478	6303
 * OP_STOREP_F	6303	6302	0
 * OP_GOTO	14	0	0
 * OP_LOAD_F	28	154	6304
 * OP_EQ_F	6304	260	6305
 * OP_IFNOT	6305	11	0
 * OP_CALL0	6264	0	0
 * OP_ADDRESS	28	378	6306
 * OP_ADD_F	31	3036	6307
 * OP_STOREP_F	6307	6306	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	325	7	0
 * OP_STORE_V	6308	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () W_Attack = {

   local float r;

   if ( !W_CheckNoAmmo () ) {

      return ;

   }
   makevectors (self.globaldef000153);
   self.globaldef000376 = (time + TRUE);
   if ( (self.globaldef000132 == IT_AXE) ) {

      sound (self,CHAN_WEAPON,globaldef002242,TRUE,ATTN_NORM);
      r = random ();
      if ( (r < globaldef002243) ) {

         player_axe1 ();

      } else {

         if ( (r < globaldef000522) ) {

            player_axeb1 ();

         } else {

            if ( (r < globaldef002244) ) {

               player_axec1 ();

            } else {

               player_axed1 ();

            }

         }

      }
      self.globaldef000361 = (time + globaldef000522);

   } else {

      if ( (self.globaldef000132 == IT_SHOTGUN) ) {

         player_shot1 ();
         W_FireShotgun ();
         self.globaldef000361 = (time + globaldef000522);

      } else {

         if ( (self.globaldef000132 == IT_SUPER_SHOTGUN) ) {

            player_shot1 ();
            W_FireSuperShotgun ();
            self.globaldef000361 = (time + globaldef002123);

         } else {

            if ( (self.globaldef000132 == IT_NAILGUN) ) {

               player_nail1 ();

            } else {

               if ( (self.globaldef000132 == IT_SUPER_NAILGUN) ) {

                  player_nail1 ();

               } else {

                  if ( (self.globaldef000132 == IT_GRENADE_LAUNCHER) ) {

                     player_rocket1 ();
                     W_FireGrenade ();
                     self.globaldef000361 = (time + globaldef001825);

                  } else {

                     if ( (self.globaldef000132 == IT_ROCKET_LAUNCHER) ) {

                        player_rocket1 ();
                        W_FireRocket ();
                        self.globaldef000361 = (time + globaldef001827);

                     } else {

                        if ( (self.globaldef000132 == IT_LIGHTNING) ) {

                           player_light1 ();
                           self.globaldef000361 = (time + globaldef001488);
                           sound (self,CHAN_AUTO,globaldef002245,TRUE,ATTN_NORM);

                        }

                     }

                  }

               }

            }

         }

      }

   }

};
string globaldef002242 /* = "weapons/ax1.wav" */;
float globaldef002243 /* = 0.250 */;
float globaldef002244 /* = 0.750 */;
string globaldef002245 /* = "weapons/lstart.wav" */;

void () W_ChangeWeapon;

// function W_ChangeWeapon
// function number 287 begins at statement 7788
/*
 * OP_LOAD_F	28	162	6313
 * OP_STORE_F	6313	6310	0
 * OP_STORE_F	213	6311	0
 * OP_LOAD_F	28	173	6314
 * OP_EQ_F	6314	214	6315
 * OP_IFNOT	6315	3	0
 * OP_STORE_F	253	6312	0
 * OP_GOTO	63	0	0
 * OP_LOAD_F	28	173	6316
 * OP_EQ_F	6316	216	6317
 * OP_IFNOT	6317	7	0
 * OP_STORE_F	254	6312	0
 * OP_LOAD_F	28	158	6318
 * OP_LT	6318	214	6319
 * OP_IFNOT	6319	2	0
 * OP_STORE_F	214	6311	0
 * OP_GOTO	54	0	0
 * OP_LOAD_F	28	173	6320
 * OP_EQ_F	6320	228	6321
 * OP_IFNOT	6321	7	0
 * OP_STORE_F	255	6312	0
 * OP_LOAD_F	28	158	6322
 * OP_LT	6322	216	6323
 * OP_IFNOT	6323	2	0
 * OP_STORE_F	214	6311	0
 * OP_GOTO	45	0	0
 * OP_LOAD_F	28	173	6324
 * OP_EQ_F	6324	229	6325
 * OP_IFNOT	6325	7	0
 * OP_STORE_F	256	6312	0
 * OP_LOAD_F	28	159	6326
 * OP_LT	6326	214	6327
 * OP_IFNOT	6327	2	0
 * OP_STORE_F	214	6311	0
 * OP_GOTO	36	0	0
 * OP_LOAD_F	28	173	6328
 * OP_EQ_F	6328	230	6329
 * OP_IFNOT	6329	7	0
 * OP_STORE_F	257	6312	0
 * OP_LOAD_F	28	159	6330
 * OP_LT	6330	216	6331
 * OP_IFNOT	6331	2	0
 * OP_STORE_F	214	6311	0
 * OP_GOTO	27	0	0
 * OP_LOAD_F	28	173	6332
 * OP_EQ_F	6332	231	6333
 * OP_IFNOT	6333	7	0
 * OP_STORE_F	258	6312	0
 * OP_LOAD_F	28	160	6334
 * OP_LT	6334	214	6335
 * OP_IFNOT	6335	2	0
 * OP_STORE_F	214	6311	0
 * OP_GOTO	18	0	0
 * OP_LOAD_F	28	173	6336
 * OP_EQ_F	6336	232	6337
 * OP_IFNOT	6337	7	0
 * OP_STORE_F	259	6312	0
 * OP_LOAD_F	28	160	6338
 * OP_LT	6338	214	6339
 * OP_IFNOT	6339	2	0
 * OP_STORE_F	214	6311	0
 * OP_GOTO	9	0	0
 * OP_LOAD_F	28	173	6340
 * OP_EQ_F	6340	217	6341
 * OP_IFNOT	6341	6	0
 * OP_STORE_F	260	6312	0
 * OP_LOAD_F	28	161	6342
 * OP_LT	6342	214	6343
 * OP_IFNOT	6343	2	0
 * OP_STORE_F	214	6311	0
 * OP_ADDRESS	28	173	6344
 * OP_STOREP_F	213	6344	0
 * OP_LOAD_F	28	162	6345
 * OP_BITAND	6345	6312	6346
 * OP_NOT_F	6346	0	6347
 * OP_IFNOT	6347	5	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6348	7	0
 * OP_CALL2	928	0	0
 * OP_RETURN	0	0	0
 * OP_IFNOT	6311	5	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6349	7	0
 * OP_CALL2	928	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	154	6350
 * OP_STOREP_F	6312	6350	0
 * OP_CALL0	4295	0	0
 * OP_DONE	0	0	0
 */

void () W_ChangeWeapon = {

   local float it;
   local float am;
   local float fl;

   it = self.globaldef000140;
   am = FALSE;
   if ( (self.globaldef000151 == TRUE) ) {

      fl = IT_AXE;

   } else {

      if ( (self.globaldef000151 == FL_SWIM) ) {

         fl = IT_SHOTGUN;
         if ( (self.globaldef000136 < TRUE) ) {

            am = TRUE;

         }

      } else {

         if ( (self.globaldef000151 == MOVETYPE_WALK) ) {

            fl = IT_SUPER_SHOTGUN;
            if ( (self.globaldef000136 < FL_SWIM) ) {

               am = TRUE;

            }

         } else {

            if ( (self.globaldef000151 == MOVETYPE_STEP) ) {

               fl = IT_NAILGUN;
               if ( (self.globaldef000137 < TRUE) ) {

                  am = TRUE;

               }

            } else {

               if ( (self.globaldef000151 == MOVETYPE_FLY) ) {

                  fl = IT_SUPER_NAILGUN;
                  if ( (self.globaldef000137 < FL_SWIM) ) {

                     am = TRUE;

                  }

               } else {

                  if ( (self.globaldef000151 == MOVETYPE_TOSS) ) {

                     fl = IT_GRENADE_LAUNCHER;
                     if ( (self.globaldef000138 < TRUE) ) {

                        am = TRUE;

                     }

                  } else {

                     if ( (self.globaldef000151 == MOVETYPE_PUSH) ) {

                        fl = IT_ROCKET_LAUNCHER;
                        if ( (self.globaldef000138 < TRUE) ) {

                           am = TRUE;

                        }

                     } else {

                        if ( (self.globaldef000151 == FL_CLIENT) ) {

                           fl = IT_LIGHTNING;
                           if ( (self.globaldef000139 < TRUE) ) {

                              am = TRUE;

                           }

                        }

                     }

                  }

               }

            }

         }

      }

   }
   self.globaldef000151 = FALSE;
   if ( !(self.globaldef000140 & fl) ) {

      func000092 (self,globaldef002250);
      return ;

   }
   if ( am ) {

      func000092 (self,globaldef002251);
      return ;

   }
   self.globaldef000132 = fl;
   W_SetCurrentAmmo ();

};
string globaldef002250 /* = "no weapon.\n" */;
string globaldef002251 /* = "not enough ammo.\n" */;

void () CheatCommand;

// function CheatCommand
// function number 288 begins at statement 7877
/*
 * OP_OR	35	36	6352
 * OP_IFNOT	6352	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	160	6353
 * OP_STOREP_F	1997	6353	0
 * OP_ADDRESS	28	159	6354
 * OP_STOREP_F	2044	6354	0
 * OP_ADDRESS	28	158	6355
 * OP_STOREP_F	1997	6355	0
 * OP_ADDRESS	28	162	6356
 * OP_LOAD_F	28	162	6357
 * OP_BITOR	6357	253	6358
 * OP_BITOR	6358	254	6359
 * OP_BITOR	6359	255	6360
 * OP_BITOR	6360	256	6361
 * OP_BITOR	6361	257	6362
 * OP_BITOR	6362	258	6363
 * OP_BITOR	6363	259	6364
 * OP_BITOR	6364	270	6365
 * OP_BITOR	6365	271	6366
 * OP_STOREP_F	6366	6356	0
 * OP_ADDRESS	28	161	6367
 * OP_STOREP_F	2044	6367	0
 * OP_ADDRESS	28	162	6368
 * OP_LOAD_F	28	162	6369
 * OP_BITOR	6369	260	6370
 * OP_STOREP_F	6370	6368	0
 * OP_ADDRESS	28	154	6371
 * OP_STOREP_F	259	6371	0
 * OP_ADDRESS	28	173	6372
 * OP_STOREP_F	213	6372	0
 * OP_CALL0	4295	0	0
 * OP_DONE	0	0	0
 */

void () CheatCommand = {

   if ( (deathmatch || coop) ) {

      return ;

   }
   self.globaldef000138 = globaldef001335;
   self.globaldef000137 = globaldef001343;
   self.globaldef000136 = globaldef001335;
   self.globaldef000140 = (((((((((self.globaldef000140 | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_KEY1) | IT_KEY2);
   self.globaldef000139 = globaldef001343;
   self.globaldef000140 = (self.globaldef000140 | IT_LIGHTNING);
   self.globaldef000132 = IT_ROCKET_LAUNCHER;
   self.globaldef000151 = FALSE;
   W_SetCurrentAmmo ();

};

void () func000289;

// function func000289
// function number 289 begins at statement 7910
/*
 * OP_ADDRESS	28	173	6375
 * OP_STOREP_F	213	6375	0
 * OP_IFNOT	214	86	0
 * OP_STORE_F	213	6374	0
 * OP_LOAD_F	28	154	6376
 * OP_EQ_F	6376	260	6377
 * OP_IFNOT	6377	4	0
 * OP_ADDRESS	28	154	6378
 * OP_STOREP_F	253	6378	0
 * OP_GOTO	70	0	0
 * OP_LOAD_F	28	154	6379
 * OP_EQ_F	6379	253	6380
 * OP_IFNOT	6380	8	0
 * OP_ADDRESS	28	154	6381
 * OP_STOREP_F	254	6381	0
 * OP_LOAD_F	28	158	6382
 * OP_LT	6382	214	6383
 * OP_IFNOT	6383	2	0
 * OP_STORE_F	214	6374	0
 * OP_GOTO	60	0	0
 * OP_LOAD_F	28	154	6384
 * OP_EQ_F	6384	254	6385
 * OP_IFNOT	6385	8	0
 * OP_ADDRESS	28	154	6386
 * OP_STOREP_F	255	6386	0
 * OP_LOAD_F	28	158	6387
 * OP_LT	6387	216	6388
 * OP_IFNOT	6388	2	0
 * OP_STORE_F	214	6374	0
 * OP_GOTO	50	0	0
 * OP_LOAD_F	28	154	6389
 * OP_EQ_F	6389	255	6390
 * OP_IFNOT	6390	8	0
 * OP_ADDRESS	28	154	6391
 * OP_STOREP_F	256	6391	0
 * OP_LOAD_F	28	159	6392
 * OP_LT	6392	214	6393
 * OP_IFNOT	6393	2	0
 * OP_STORE_F	214	6374	0
 * OP_GOTO	40	0	0
 * OP_LOAD_F	28	154	6394
 * OP_EQ_F	6394	256	6395
 * OP_IFNOT	6395	8	0
 * OP_ADDRESS	28	154	6396
 * OP_STOREP_F	257	6396	0
 * OP_LOAD_F	28	159	6397
 * OP_LT	6397	216	6398
 * OP_IFNOT	6398	2	0
 * OP_STORE_F	214	6374	0
 * OP_GOTO	30	0	0
 * OP_LOAD_F	28	154	6399
 * OP_EQ_F	6399	257	6400
 * OP_IFNOT	6400	8	0
 * OP_ADDRESS	28	154	6401
 * OP_STOREP_F	258	6401	0
 * OP_LOAD_F	28	160	6402
 * OP_LT	6402	214	6403
 * OP_IFNOT	6403	2	0
 * OP_STORE_F	214	6374	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	28	154	6404
 * OP_EQ_F	6404	258	6405
 * OP_IFNOT	6405	8	0
 * OP_ADDRESS	28	154	6406
 * OP_STOREP_F	259	6406	0
 * OP_LOAD_F	28	160	6407
 * OP_LT	6407	214	6408
 * OP_IFNOT	6408	2	0
 * OP_STORE_F	214	6374	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	28	154	6409
 * OP_EQ_F	6409	259	6410
 * OP_IFNOT	6410	7	0
 * OP_ADDRESS	28	154	6411
 * OP_STOREP_F	260	6411	0
 * OP_LOAD_F	28	161	6412
 * OP_LT	6412	214	6413
 * OP_IFNOT	6413	2	0
 * OP_STORE_F	214	6374	0
 * OP_LOAD_F	28	162	6414
 * OP_LOAD_F	28	154	6415
 * OP_BITAND	6414	6415	6416
 * OP_EQ_F	6374	213	6417
 * OP_AND	6416	6417	6418
 * OP_IFNOT	6418	3	0
 * OP_CALL0	4295	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	-85	0	0
 * OP_DONE	0	0	0
 */

void () func000289 = {

   local float globaldef002254;

   self.globaldef000151 = FALSE;
   while ( TRUE ) {

      globaldef002254 = FALSE;
      if ( (self.globaldef000132 == IT_LIGHTNING) ) {

         self.globaldef000132 = IT_AXE;

      } else {

         if ( (self.globaldef000132 == IT_AXE) ) {

            self.globaldef000132 = IT_SHOTGUN;
            if ( (self.globaldef000136 < TRUE) ) {

               globaldef002254 = TRUE;

            }

         } else {

            if ( (self.globaldef000132 == IT_SHOTGUN) ) {

               self.globaldef000132 = IT_SUPER_SHOTGUN;
               if ( (self.globaldef000136 < FL_SWIM) ) {

                  globaldef002254 = TRUE;

               }

            } else {

               if ( (self.globaldef000132 == IT_SUPER_SHOTGUN) ) {

                  self.globaldef000132 = IT_NAILGUN;
                  if ( (self.globaldef000137 < TRUE) ) {

                     globaldef002254 = TRUE;

                  }

               } else {

                  if ( (self.globaldef000132 == IT_NAILGUN) ) {

                     self.globaldef000132 = IT_SUPER_NAILGUN;
                     if ( (self.globaldef000137 < FL_SWIM) ) {

                        globaldef002254 = TRUE;

                     }

                  } else {

                     if ( (self.globaldef000132 == IT_SUPER_NAILGUN) ) {

                        self.globaldef000132 = IT_GRENADE_LAUNCHER;
                        if ( (self.globaldef000138 < TRUE) ) {

                           globaldef002254 = TRUE;

                        }

                     } else {

                        if ( (self.globaldef000132 == IT_GRENADE_LAUNCHER) ) {

                           self.globaldef000132 = IT_ROCKET_LAUNCHER;
                           if ( (self.globaldef000138 < TRUE) ) {

                              globaldef002254 = TRUE;

                           }

                        } else {

                           if ( (self.globaldef000132 == IT_ROCKET_LAUNCHER) ) {

                              self.globaldef000132 = IT_LIGHTNING;
                              if ( (self.globaldef000139 < TRUE) ) {

                                 globaldef002254 = TRUE;

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }
      if ( ((self.globaldef000140 & self.globaldef000132) && (globaldef002254 == FALSE)) ) {

         W_SetCurrentAmmo ();
         return ;

      }

   }

};

void () CycleWeaponReverseCommand;

// function CycleWeaponReverseCommand
// function number 290 begins at statement 7999
/*
 * OP_ADDRESS	28	173	6422
 * OP_STOREP_F	213	6422	0
 * OP_IFNOT	214	86	0
 * OP_STORE_F	213	6421	0
 * OP_LOAD_F	28	154	6423
 * OP_EQ_F	6423	260	6424
 * OP_IFNOT	6424	8	0
 * OP_ADDRESS	28	154	6425
 * OP_STOREP_F	259	6425	0
 * OP_LOAD_F	28	160	6426
 * OP_LT	6426	214	6427
 * OP_IFNOT	6427	2	0
 * OP_STORE_F	214	6421	0
 * OP_GOTO	66	0	0
 * OP_LOAD_F	28	154	6428
 * OP_EQ_F	6428	259	6429
 * OP_IFNOT	6429	8	0
 * OP_ADDRESS	28	154	6430
 * OP_STOREP_F	258	6430	0
 * OP_LOAD_F	28	160	6431
 * OP_LT	6431	214	6432
 * OP_IFNOT	6432	2	0
 * OP_STORE_F	214	6421	0
 * OP_GOTO	56	0	0
 * OP_LOAD_F	28	154	6433
 * OP_EQ_F	6433	258	6434
 * OP_IFNOT	6434	8	0
 * OP_ADDRESS	28	154	6435
 * OP_STOREP_F	257	6435	0
 * OP_LOAD_F	28	159	6436
 * OP_LT	6436	216	6437
 * OP_IFNOT	6437	2	0
 * OP_STORE_F	214	6421	0
 * OP_GOTO	46	0	0
 * OP_LOAD_F	28	154	6438
 * OP_EQ_F	6438	257	6439
 * OP_IFNOT	6439	8	0
 * OP_ADDRESS	28	154	6440
 * OP_STOREP_F	256	6440	0
 * OP_LOAD_F	28	159	6441
 * OP_LT	6441	214	6442
 * OP_IFNOT	6442	2	0
 * OP_STORE_F	214	6421	0
 * OP_GOTO	36	0	0
 * OP_LOAD_F	28	154	6443
 * OP_EQ_F	6443	256	6444
 * OP_IFNOT	6444	8	0
 * OP_ADDRESS	28	154	6445
 * OP_STOREP_F	255	6445	0
 * OP_LOAD_F	28	158	6446
 * OP_LT	6446	216	6447
 * OP_IFNOT	6447	2	0
 * OP_STORE_F	214	6421	0
 * OP_GOTO	26	0	0
 * OP_LOAD_F	28	154	6448
 * OP_EQ_F	6448	255	6449
 * OP_IFNOT	6449	8	0
 * OP_ADDRESS	28	154	6450
 * OP_STOREP_F	254	6450	0
 * OP_LOAD_F	28	158	6451
 * OP_LT	6451	214	6452
 * OP_IFNOT	6452	2	0
 * OP_STORE_F	214	6421	0
 * OP_GOTO	16	0	0
 * OP_LOAD_F	28	154	6453
 * OP_EQ_F	6453	254	6454
 * OP_IFNOT	6454	4	0
 * OP_ADDRESS	28	154	6455
 * OP_STOREP_F	253	6455	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	28	154	6456
 * OP_EQ_F	6456	253	6457
 * OP_IFNOT	6457	7	0
 * OP_ADDRESS	28	154	6458
 * OP_STOREP_F	260	6458	0
 * OP_LOAD_F	28	161	6459
 * OP_LT	6459	214	6460
 * OP_IFNOT	6460	2	0
 * OP_STORE_F	214	6421	0
 * OP_LOAD_F	28	162	6461
 * OP_LOAD_F	28	154	6462
 * OP_BITAND	6461	6462	6463
 * OP_EQ_F	6421	213	6464
 * OP_AND	6463	6464	6465
 * OP_IFNOT	6465	3	0
 * OP_CALL0	4295	0	0
 * OP_RETURN	0	0	0
 * OP_GOTO	-85	0	0
 * OP_DONE	0	0	0
 */

void () CycleWeaponReverseCommand = {

   local float it;
   local float am;

   self.globaldef000151 = FALSE;
   while ( TRUE ) {

      am = FALSE;
      if ( (self.globaldef000132 == IT_LIGHTNING) ) {

         self.globaldef000132 = IT_ROCKET_LAUNCHER;
         if ( (self.globaldef000138 < TRUE) ) {

            am = TRUE;

         }

      } else {

         if ( (self.globaldef000132 == IT_ROCKET_LAUNCHER) ) {

            self.globaldef000132 = IT_GRENADE_LAUNCHER;
            if ( (self.globaldef000138 < TRUE) ) {

               am = TRUE;

            }

         } else {

            if ( (self.globaldef000132 == IT_GRENADE_LAUNCHER) ) {

               self.globaldef000132 = IT_SUPER_NAILGUN;
               if ( (self.globaldef000137 < FL_SWIM) ) {

                  am = TRUE;

               }

            } else {

               if ( (self.globaldef000132 == IT_SUPER_NAILGUN) ) {

                  self.globaldef000132 = IT_NAILGUN;
                  if ( (self.globaldef000137 < TRUE) ) {

                     am = TRUE;

                  }

               } else {

                  if ( (self.globaldef000132 == IT_NAILGUN) ) {

                     self.globaldef000132 = IT_SUPER_SHOTGUN;
                     if ( (self.globaldef000136 < FL_SWIM) ) {

                        am = TRUE;

                     }

                  } else {

                     if ( (self.globaldef000132 == IT_SUPER_SHOTGUN) ) {

                        self.globaldef000132 = IT_SHOTGUN;
                        if ( (self.globaldef000136 < TRUE) ) {

                           am = TRUE;

                        }

                     } else {

                        if ( (self.globaldef000132 == IT_SHOTGUN) ) {

                           self.globaldef000132 = IT_AXE;

                        } else {

                           if ( (self.globaldef000132 == IT_AXE) ) {

                              self.globaldef000132 = IT_LIGHTNING;
                              if ( (self.globaldef000139 < TRUE) ) {

                                 am = TRUE;

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }
      if ( ((self.globaldef000140 & self.globaldef000132) && (am == FALSE)) ) {

         W_SetCurrentAmmo ();
         return ;

      }

   }

};

void () ServerflagsCommand;

// function ServerflagsCommand
// function number 291 begins at statement 8088
/*
 * OP_MUL_F	38	216	6467
 * OP_ADD_F	6467	214	6468
 * OP_STORE_F	6468	38	0
 * OP_DONE	0	0	0
 */

void () ServerflagsCommand = {

   serverflags = ((serverflags * FL_SWIM) + TRUE);

};

void () QuadCheat;

// function QuadCheat
// function number 292 begins at statement 8092
/*
 * OP_OR	35	36	6470
 * OP_IFNOT	6470	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	388	6471
 * OP_STOREP_F	214	6471	0
 * OP_ADDRESS	28	382	6472
 * OP_ADD_F	31	309	6473
 * OP_STOREP_F	6473	6472	0
 * OP_ADDRESS	28	162	6474
 * OP_LOAD_F	28	162	6475
 * OP_BITOR	6475	275	6476
 * OP_STOREP_F	6476	6474	0
 * OP_STORE_V	6477	4	0
 * OP_CALL1	473	0	0
 * OP_DONE	0	0	0
 */

void () QuadCheat = {

   if ( (deathmatch || coop) ) {

      return ;

   }
   self.globaldef000371 = TRUE;
   self.globaldef000365 = (time + SVC_INTERMISSION);
   self.globaldef000140 = (self.globaldef000140 | IT_QUAD);
   dprint (globaldef002260);

};
string globaldef002260 /* = "quad cheat\n" */;

void () ImpulseCommands;

// function ImpulseCommands
// function number 293 begins at statement 8107
/*
 * OP_LOAD_F	28	173	6479
 * OP_GE	6479	214	6480
 * OP_LOAD_F	28	173	6481
 * OP_LE	6481	217	6482
 * OP_AND	6480	6482	6483
 * OP_IFNOT	6483	3	0
 * OP_CALL0	6309	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_F	28	173	6484
 * OP_EQ_F	6484	234	6485
 * OP_IFNOT	6485	3	0
 * OP_CALL0	6351	0	0
 * OP_GOTO	15	0	0
 * OP_LOAD_F	28	173	6486
 * OP_EQ_F	6486	235	6487
 * OP_IFNOT	6487	3	0
 * OP_CALL0	6373	0	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	28	173	6488
 * OP_EQ_F	6488	791	6489
 * OP_IFNOT	6489	3	0
 * OP_CALL0	6419	0	0
 * OP_GOTO	5	0	0
 * OP_LOAD_F	28	173	6490
 * OP_EQ_F	6490	6491	6492
 * OP_IFNOT	6492	2	0
 * OP_CALL0	6469	0	0
 * OP_LOAD_F	28	173	6493
 * OP_EQ_F	6493	738	6494
 * OP_IFNOT	6494	2	0
 * OP_CALL0	2815	0	0
 * OP_CALL0	1221	0	0
 * OP_ADDRESS	28	173	6495
 * OP_STOREP_F	213	6495	0
 * OP_DONE	0	0	0
 */

void () ImpulseCommands = {

   if ( ((self.globaldef000151 >= TRUE) && (self.globaldef000151 <= FL_CLIENT)) ) {

      W_ChangeWeapon ();

   } else {

      if ( (self.globaldef000151 == MOVETYPE_FLYMISSILE) ) {

         CheatCommand ();

      } else {

         if ( (self.globaldef000151 == MOVETYPE_BOUNCE) ) {

            func000289 ();

         } else {

            if ( (self.globaldef000151 == globaldef000774) ) {

               CycleWeaponReverseCommand ();

            } else {

               if ( (self.globaldef000151 == globaldef002262) ) {

                  QuadCheat ();

               }

            }

         }

      }

   }
   if ( (self.globaldef000151 == globaldef000721) ) {

      func000145 ();

   }
   func000372 ();
   self.globaldef000151 = FALSE;

};
float globaldef002262 /* = 255.000 */;

void () W_WeaponFrame;

// function W_WeaponFrame
// function number 294 begins at statement 8142
/*
 * OP_LOAD_F	28	378	6497
 * OP_LT	31	6497	6498
 * OP_IFNOT	6498	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	6478	0	0
 * OP_BITAND	821	767	6499
 * OP_IFNOT	6499	8	0
 * OP_IFNOT	816	2	0
 * OP_RETURN	0	0	0
 * OP_NE_E	28	541	6500
 * OP_NE_E	28	542	6501
 * OP_AND	6500	6501	6502
 * OP_IFNOT	6502	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	170	6503
 * OP_IFNOT	6503	3	0
 * OP_CALL0	5356	0	0
 * OP_CALL0	6266	0	0
 * OP_DONE	0	0	0
 */

void () W_WeaponFrame = {

   if ( (time < self.globaldef000361) ) {

      return ;

   }
   ImpulseCommands ();
   if ( (globaldef000804 & globaldef000750) ) {

      if ( globaldef000799 ) {

         return ;

      }
      if ( ((self != globaldef000524) && (self != globaldef000525)) ) {

         return ;

      }

   }
   if ( self.globaldef000148 ) {

      SuperDamageSound ();
      W_Attack ();

   }

};

// function SuperDamageSound
// function number 295 begins at statement 8161
/*
 * OP_LOAD_F	28	382	6504
 * OP_GT	6504	31	6505
 * OP_IFNOT	6505	13	0
 * OP_LOAD_F	28	389	6506
 * OP_LT	6506	31	6507
 * OP_IFNOT	6507	10	0
 * OP_ADDRESS	28	389	6508
 * OP_ADD_F	31	214	6509
 * OP_STOREP_F	6509	6508	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	5078	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () SuperDamageSound = {

   if ( (self.globaldef000365 > time) ) {

      if ( (self.globaldef000372 < time) ) {

         self.globaldef000372 = (time + TRUE);
         sound (self,CHAN_BODY,globaldef001964,TRUE,ATTN_NORM);

      }

   }
   return ;

};
