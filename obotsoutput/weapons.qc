float globaldef2073 /* = 0.010 */;

void (vector globaldef2075, vector globaldef2079) SpawnChunk;

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

void (vector globaldef2075, vector globaldef2079) SpawnChunk = {

   globaldef476 (globaldef2075,(globaldef2079 * globaldef2083),FALSE,MOVETYPE_BOUNCE);

};
float globaldef2083 /* = 0.020 */;
entity globaldef2084;
float globaldef2085 /* = 0.000 */;

void () ClearMultiDamage;

// function ClearMultiDamage
// function number 257 begins at statement 6584
/*
 * OP_STORE_ENT	30	5518	0
 * OP_STORE_F	213	5519	0
 * OP_DONE	0	0	0
 */

void () ClearMultiDamage = {

   globaldef2084 = world;
   globaldef2085 = FALSE;

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

   if ( !globaldef2084 ) {

      return ;

   }
   globaldef505 (globaldef2084,self,self,globaldef2085);

};

void (entity globaldef2089, float globaldef2090) AddMultiDamage;

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

void (entity globaldef2089, float globaldef2090) AddMultiDamage = {

   if ( !globaldef2089 ) {

      return ;

   }
   if ( (globaldef2089 != globaldef2084) ) {

      globaldef2087 ();
      globaldef2085 = globaldef2090;
      globaldef2084 = globaldef2089;

   } else {

      globaldef2085 = (globaldef2085 + globaldef2090);

   }

};

void (float globaldef2092, vector globaldef2093) TraceAttack;

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

void (float globaldef2092, vector globaldef2093) TraceAttack = {

   local vector globaldef2097;
   local vector globaldef2101;

   globaldef2097 = globaldef442 (((globaldef2093 + (v_up * globaldef2024 ())) + (v_right * globaldef2024 ())));
   globaldef2097 = (globaldef2097 + (FL_SWIM * trace_plane_normal));
   globaldef2097 = (globaldef2097 * globaldef1343);
   globaldef2101 = (trace_endpos - (globaldef2093 * MOVETYPE_STEP));
   if ( trace_ent.globaldef141 ) {

      globaldef2009 (globaldef2101,(globaldef2097 * globaldef1553),globaldef2092);
      globaldef2088 (trace_ent,globaldef2092);

   } else {

      globaldef479 (MSG_BROADCAST,SVC_TEMP);
      globaldef479 (MSG_BROADCAST,TE_GUNSHOT);
      globaldef483 (MSG_BROADCAST,globaldef2101);
      globaldef483 (MSG_BROADCAST,globaldef2103);
      globaldef483 (MSG_BROADCAST,globaldef2104);

   }

};

void (float globaldef2106, vector globaldef2107, vector globaldef2111) FireBullets;

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

void (float globaldef2106, vector globaldef2107, vector globaldef2111) FireBullets = {

   local vector globaldef2115;
   local vector globaldef2119;

   makevectors (self.globaldef153);
   globaldef2119 = (self.origin + (v_forward * MOVETYPE_BOUNCE));
   globaldef2122 = (self.globaldef75 + (self.globaldef123 * globaldef2123));
   globaldef2086 ();
   while ( (globaldef2106 > FALSE) ) {

      globaldef2115 = ((globaldef2107 + ((globaldef2024 () * globaldef2111_x) * v_right)) + ((globaldef2024 () * globaldef2113) * v_up));
      globaldef449 (globaldef2119,(globaldef2119 + (globaldef2115 * FL_WATERJUMP)),FALSE,self);
      if ( (trace_fraction != TRUE) ) {

         globaldef2091 (MOVETYPE_STEP,globaldef2115);

      }
      globaldef2106 = (globaldef2106 - TRUE);

   }
   globaldef2087 ();

};
float globaldef2123 /* = 0.700 */;

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

   local vector globaldef2125;

   sound (self,CHAN_WEAPON,globaldef2015,TRUE,ATTN_NORM);
   globaldef1058 (self,self.origin,TRUE,globaldef741);
   self.globaldef104 = CONTENT_SOLID;
   self.globaldef136 = (self.globaldef136 - TRUE);
   self.globaldef135 = (self.globaldef136 - TRUE);
   globaldef2125 = globaldef2025 (self,globaldef1350);
   globaldef1994 (((self.origin + globaldef2129) + (v_forward * FL_INWATER)),globaldef2125);
   globaldef2105 (MOVETYPE_TOSS,globaldef2125,globaldef2130);

};
vector globaldef2129 /* = '0.000 0.000 12.000' */;
vector globaldef2130 /* = '0.040 0.040 0.000' */;

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

   local vector globaldef2132;

   if ( (self.globaldef135 == TRUE) ) {

      globaldef2124 ();
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef2023,TRUE,ATTN_NORM);
   globaldef1058 (self,self.origin,TRUE,globaldef741);
   self.globaldef104 = CONTENT_SLIME;
   self.globaldef136 = (self.globaldef136 - FL_SWIM);
   self.globaldef135 = (self.globaldef136 - FL_SWIM);
   globaldef2132 = globaldef2025 (self,globaldef1350);
   globaldef1994 (((self.origin + globaldef2129) + (v_forward * FL_INWATER)),globaldef2132);
   globaldef1994 (((self.origin + globaldef2129) + (v_forward * FL_INWATER)),globaldef2132);
   globaldef2105 (globaldef2136,globaldef2132,globaldef2137);

};
float globaldef2136 /* = 14.000 */;
vector globaldef2137 /* = '0.140 0.080 0.000' */;

void () s_explode1;

// function s_explode1
// function number 264 begins at statement 6777
/*
 * OP_STATE	213	5698	0
 * OP_DONE	0	0	0
 */

void () s_explode1 = [ 0.000, globaldef2139 ] {


};

void () s_explode2;

// function s_explode2
// function number 265 begins at statement 6779
/*
 * OP_STATE	214	5699	0
 * OP_DONE	0	0	0
 */

void () s_explode2 = [ 1.000, globaldef2140 ] {


};

void () s_explode3;

// function s_explode3
// function number 266 begins at statement 6781
/*
 * OP_STATE	216	5700	0
 * OP_DONE	0	0	0
 */

void () s_explode3 = [ 2.000, globaldef2141 ] {


};

void () s_explode4;

// function s_explode4
// function number 267 begins at statement 6783
/*
 * OP_STATE	228	5701	0
 * OP_DONE	0	0	0
 */

void () s_explode4 = [ 3.000, globaldef2142 ] {


};

void () s_explode5;

// function s_explode5
// function number 268 begins at statement 6785
/*
 * OP_STATE	229	5702	0
 * OP_DONE	0	0	0
 */

void () s_explode5 = [ 4.000, globaldef2143 ] {


};

void () s_explode6;

// function s_explode6
// function number 269 begins at statement 6787
/*
 * OP_STATE	230	521	0
 * OP_DONE	0	0	0
 */

void () s_explode6 = [ 5.000, globaldef504 ] {


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

   self.movetype = MOVETYPE_NONE;
   self.velocity = VEC_ORIGIN;
   self.globaldef124 = SUB_Null;
   setmodel (self,globaldef2145);
   self.solid = SOLID_NOT;
   globaldef2138 ();

};
string globaldef2145 /* = "progs/s_explod.spr" */;

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

   local float globaldef2146;

   if ( (other == self.globaldef179) ) {

      return ;

   }
   if ( (globaldef470 (self.origin) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   globaldef2146 = (globaldef1335 + (globaldef440 () * globaldef1384));
   if ( other.globaldef130 ) {

      if ( (other.classname == "monster_shambler") ) {

         globaldef2146 = (globaldef2146 * globaldef522);

      }
      globaldef505 (other,self,self.globaldef179,globaldef2146);

   }
   globaldef1772 (self,self.globaldef179,globaldef1638,other);
   globaldef1058 (self.globaldef179,self.origin,TRUE,globaldef741);
   self.origin = (self.origin - (FL_CLIENT * globaldef442 (self.velocity)));
   globaldef479 (MSG_BROADCAST,SVC_TEMP);
   globaldef479 (MSG_BROADCAST,TE_EXPLOSION);
   globaldef483 (MSG_BROADCAST,self.globaldef84);
   globaldef483 (MSG_BROADCAST,self.globaldef85);
   globaldef483 (MSG_BROADCAST,self.globaldef86);
   globaldef2144 ();

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

   local entity globaldef2148;
   local entity globaldef2149;

   self.globaldef138 = (self.globaldef138 - TRUE);
   self.globaldef135 = (self.globaldef138 - TRUE);
   sound (self,CHAN_WEAPON,globaldef2014,TRUE,ATTN_NORM);
   globaldef1058 (self,self.origin,TRUE,globaldef741);
   self.globaldef104 = CONTENT_SOLID;
   globaldef2148 = spawn ();
   globaldef2148.globaldef179 = self;
   globaldef2148.movetype = MOVETYPE_FLYMISSILE;
   globaldef2148.solid = SOLID_BBOX;
   globaldef2148.classname = globaldef2150;
   makevectors (self.globaldef153);
   globaldef2148.velocity = globaldef2025 (self,globaldef1302);
   globaldef2148.velocity = (globaldef2148.velocity * globaldef1302);
   globaldef2148.angles = globaldef478 (globaldef2148.velocity);
   globaldef2148.globaldef124 = globaldef1745;
   globaldef2148.nextthink = (time + MOVETYPE_FLY);
   globaldef2148.think = globaldef504;
   setmodel (globaldef2148,globaldef2151);
   globaldef438 (globaldef2148,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef2148,((self.origin + (v_forward * FL_CLIENT)) + globaldef2037));

};
string globaldef2150 /* = "missile" */;
string globaldef2151 /* = "progs/missile.mdl" */;

void (vector globaldef2153, vector globaldef2157, entity globaldef2161, float globaldef2162) LightningDamage;

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

void (vector globaldef2153, vector globaldef2157, entity globaldef2161, float globaldef2162) LightningDamage = {

   local entity globaldef2163;
   local entity globaldef2164;
   local vector globaldef2165;

   globaldef2165 = (globaldef2157 - globaldef2153);
   globaldef442 (globaldef2165);
   globaldef2165_x = (FALSE - globaldef2167);
   globaldef2167 = globaldef2165_x;
   globaldef2168 = FALSE;
   globaldef2165 = (globaldef2165 * FL_INWATER);
   globaldef2163 = world;
   globaldef2164 = world;
   globaldef449 (globaldef2153,globaldef2157,FALSE,self);
   if ( trace_ent.globaldef141 ) {

      globaldef476 (trace_endpos,globaldef2169,globaldef2170,(globaldef2162 * MOVETYPE_STEP));
      globaldef505 (trace_ent,globaldef2161,globaldef2161,globaldef2162);
      if ( ((self.classname == "player") || (self.classname == globaldef1171)) ) {

         if ( ((other.classname == "player") || (other.classname == globaldef1171)) ) {

            trace_ent.globaldef94 = (trace_ent.globaldef94 + globaldef2007);

         }

      }

   }
   globaldef2163 = trace_ent;
   globaldef449 ((globaldef2153 + globaldef2165),(globaldef2157 + globaldef2165),FALSE,self);
   if ( ((trace_ent != globaldef2163) && trace_ent.globaldef141) ) {

      globaldef476 (trace_endpos,globaldef2169,globaldef2170,(globaldef2162 * MOVETYPE_STEP));
      globaldef505 (trace_ent,globaldef2161,globaldef2161,globaldef2162);

   }
   globaldef2164 = trace_ent;
   globaldef449 ((globaldef2153 - globaldef2165),(globaldef2157 - globaldef2165),FALSE,self);
   if ( (((trace_ent != globaldef2163) && (trace_ent != globaldef2164)) && trace_ent.globaldef141) ) {

      globaldef476 (trace_endpos,globaldef2169,globaldef2170,(globaldef2162 * MOVETYPE_STEP));
      globaldef505 (trace_ent,globaldef2161,globaldef2161,globaldef2162);

   }

};
vector globaldef2169 /* = '0.000 0.000 100.000' */;
float globaldef2170 /* = 225.000 */;

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

   local vector globaldef2172;
   local float globaldef2176;

   if ( (self.globaldef139 < TRUE) ) {

      self.globaldef132 = globaldef1844 ();
      globaldef1788 ();
      return ;

   }
   if ( (self.globaldef167 > TRUE) ) {

      if ( (globaldef804 & globaldef750) ) {

         self.globaldef139 = FALSE;
         return ;

      }
      globaldef2176 = self.globaldef139;
      self.globaldef139 = FALSE;
      globaldef1788 ();
      globaldef1772 (self,self,(globaldef2177 * globaldef2176),world);
      return ;

   }
   if ( (self.globaldef388 < time) ) {

      sound (self,CHAN_WEAPON,globaldef2178,TRUE,ATTN_NORM);
      globaldef1058 (self,self.origin,0.100,globaldef741);
      self.globaldef388 = (time + globaldef1825);

   }
   self.globaldef104 = CONTENT_SOLID;
   self.globaldef139 = (self.globaldef139 - TRUE);
   self.globaldef135 = (self.globaldef139 - TRUE);
   globaldef2172 = (self.origin + globaldef2037);
   globaldef449 (globaldef2172,(globaldef2172 + (v_forward * globaldef723)),TRUE,self);
   globaldef479 (MSG_BROADCAST,SVC_TEMP);
   globaldef479 (MSG_BROADCAST,TE_LIGHTNING2);
   globaldef486 (MSG_BROADCAST,self);
   globaldef483 (MSG_BROADCAST,globaldef2172);
   globaldef483 (MSG_BROADCAST,globaldef2174);
   globaldef483 (MSG_BROADCAST,globaldef2175);
   globaldef483 (MSG_BROADCAST,trace_endpos);
   globaldef483 (MSG_BROADCAST,globaldef49);
   globaldef483 (MSG_BROADCAST,globaldef50);
   globaldef2152 (self.origin,(trace_endpos + (v_forward * MOVETYPE_STEP)),self,SVC_INTERMISSION);

};
float globaldef2177 /* = 35.000 */;
string globaldef2178 /* = "weapons/lhit.wav" */;

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

   globaldef1772 (self,self.globaldef179,globaldef1638,world);
   globaldef479 (MSG_BROADCAST,SVC_TEMP);
   globaldef479 (MSG_BROADCAST,TE_EXPLOSION);
   globaldef483 (MSG_BROADCAST,self.globaldef84);
   globaldef483 (MSG_BROADCAST,self.globaldef85);
   globaldef483 (MSG_BROADCAST,self.globaldef86);
   globaldef2144 ();

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

   if ( (other == self.globaldef179) ) {

      return ;

   }
   if ( (other.globaldef141 == DAMAGE_AIM) ) {

      globaldef2179 ();
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef2022,TRUE,ATTN_NORM);
   if ( (self.velocity == VEC_ORIGIN) ) {

      self.avelocity = VEC_ORIGIN;

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

   local entity globaldef2182;
   local entity globaldef2183;

   self.globaldef138 = (self.globaldef138 - TRUE);
   self.globaldef135 = (self.globaldef138 - TRUE);
   sound (self,CHAN_WEAPON,globaldef2021,TRUE,ATTN_NORM);
   globaldef1058 (self,self.origin,TRUE,globaldef741);
   self.globaldef104 = CONTENT_SOLID;
   globaldef2182 = spawn ();
   globaldef2182.globaldef179 = self;
   globaldef2182.movetype = MOVETYPE_BOUNCE;
   globaldef2182.solid = SOLID_BBOX;
   globaldef2182.classname = globaldef2184;
   makevectors (self.globaldef153);
   if ( self.globaldef154 ) {

      globaldef2182.velocity = ((((v_forward * globaldef723) + (v_up * globaldef1343)) + ((globaldef2024 () * v_right) * MOVETYPE_BOUNCE)) + ((globaldef2024 () * v_up) * MOVETYPE_BOUNCE));

   } else {

      globaldef2182.velocity = globaldef2025 (self,globaldef2185);
      globaldef2182.velocity = (globaldef2182.velocity * globaldef723);
      globaldef2182.globaldef94 = globaldef1343;

   }
   globaldef2182.avelocity = globaldef2186;
   globaldef2182.angles = globaldef478 (globaldef2182.velocity);
   globaldef2182.globaldef124 = globaldef2180;
   globaldef2182.nextthink = (time + globaldef2187);
   globaldef2182.think = globaldef2179;
   setmodel (globaldef2182,globaldef2188);
   globaldef438 (globaldef2182,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef2182,self.origin);

};
string globaldef2184 /* = "grenade" */;
float globaldef2185 /* = 10000.000 */;
vector globaldef2186 /* = '300.000 300.000 300.000' */;
float globaldef2187 /* = 2.500 */;
string globaldef2188 /* = "progs/grenade.mdl" */;

void () spike_touch;

void () superspike_touch;

void (vector globaldef2192, vector globaldef2196) launch_spike;

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

void (vector globaldef2192, vector globaldef2196) launch_spike = {

   newmis = spawn ();
   newmis.globaldef179 = self;
   newmis.movetype = MOVETYPE_FLYMISSILE;
   newmis.solid = SOLID_BBOX;
   newmis.angles = globaldef478 (globaldef2196);
   newmis.globaldef124 = globaldef2189;
   newmis.classname = globaldef2200;
   newmis.think = globaldef504;
   newmis.nextthink = (time + MOVETYPE_TOSS);
   setmodel (newmis,globaldef2201);
   globaldef438 (newmis,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (newmis,globaldef2192);
   newmis.velocity = (globaldef2196 * globaldef1302);

};
string globaldef2200 /* = "spike" */;
string globaldef2201 /* = "progs/spike.mdl" */;

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

   local vector globaldef2203;
   local entity globaldef2207;

   sound (self,CHAN_WEAPON,globaldef2019,TRUE,ATTN_NORM);
   globaldef1058 (self,self.origin,0.100,globaldef741);
   self.globaldef137 = (self.globaldef137 - FL_SWIM);
   self.globaldef135 = (self.globaldef137 - FL_SWIM);
   globaldef2203 = globaldef2025 (self,globaldef1302);
   globaldef2191 ((self.origin + globaldef2037),globaldef2203);
   newmis.globaldef124 = globaldef2190;
   setmodel (newmis,globaldef2208);
   globaldef438 (newmis,VEC_ORIGIN,VEC_ORIGIN);
   self.globaldef104 = CONTENT_SOLID;

};
string globaldef2208 /* = "progs/s_spike.mdl" */;

void (float globaldef2210) W_FireSpikes;

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

void (float globaldef2210) W_FireSpikes = {

   local vector globaldef2211;
   local entity globaldef2215;

   makevectors (self.globaldef153);
   if ( ((self.globaldef137 >= FL_SWIM) && (self.globaldef132 == IT_SUPER_NAILGUN)) ) {

      globaldef2202 ();
      return ;

   }
   if ( (self.globaldef137 < TRUE) ) {

      self.globaldef132 = globaldef1844 ();
      globaldef1788 ();
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef2013,TRUE,ATTN_NORM);
   globaldef1058 (self,self.origin,0.100,globaldef741);
   self.globaldef137 = (self.globaldef137 - TRUE);
   self.globaldef135 = (self.globaldef137 - TRUE);
   globaldef2211 = globaldef2025 (self,globaldef1302);
   globaldef2191 (((self.origin + globaldef2037) + (v_right * globaldef2210)),globaldef2211);
   self.globaldef104 = CONTENT_SOLID;

};
.float field342;

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

   local float globaldef2217;

   if ( (other == self.globaldef179) ) {

      return ;

   }
   if ( (other.solid == SOLID_TRIGGER) ) {

      return ;

   }
   if ( (globaldef470 (self.origin) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   if ( other.globaldef141 ) {

      globaldef2067 (MOVETYPE_FLYMISSILE);
      globaldef505 (other,self,self.globaldef179,MOVETYPE_FLYMISSILE);

   } else {

      globaldef479 (MSG_BROADCAST,SVC_TEMP);
      if ( (self.classname == globaldef2218) ) {

         globaldef479 (MSG_BROADCAST,TE_WIZSPIKE);

      } else {

         if ( (self.classname == globaldef2219) ) {

            globaldef479 (MSG_BROADCAST,TE_KNIGHTSPIKE);

         } else {

            globaldef479 (MSG_BROADCAST,TE_SPIKE);

         }

      }
      globaldef483 (MSG_BROADCAST,self.globaldef84);
      globaldef483 (MSG_BROADCAST,self.globaldef85);
      globaldef483 (MSG_BROADCAST,self.globaldef86);

   }
   remove (self);

};
string globaldef2218 /* = "wizspike" */;
string globaldef2219 /* = "knightspike" */;

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

   local float globaldef2220;

   if ( (other == self.globaldef179) ) {

      return ;

   }
   if ( (other.solid == SOLID_TRIGGER) ) {

      return ;

   }
   if ( (globaldef470 (self.origin) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   if ( other.globaldef141 ) {

      globaldef2067 (globaldef2221);
      globaldef505 (other,self,self.globaldef179,globaldef2221);

   } else {

      globaldef479 (MSG_BROADCAST,SVC_TEMP);
      globaldef479 (MSG_BROADCAST,TE_SUPERSPIKE);
      globaldef483 (MSG_BROADCAST,self.globaldef84);
      globaldef483 (MSG_BROADCAST,self.globaldef85);
      globaldef483 (MSG_BROADCAST,self.globaldef86);

   }
   remove (self);

};
float globaldef2221 /* = 18.000 */;

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

   if ( (self.classname == "player") ) {

      globaldef2008 ();

   }
   self.globaldef140 = (self.globaldef140 - (self.globaldef140 & (((IT_SHELLS | IT_NAILS) | IT_ROCKETS) | IT_CELLS)));
   if ( (self.globaldef132 == IT_AXE) ) {

      self.globaldef135 = FALSE;
      self.globaldef133 = globaldef2222;
      self.globaldef134 = FALSE;

   } else {

      if ( (self.globaldef132 == IT_SHOTGUN) ) {

         self.globaldef135 = self.globaldef136;
         self.globaldef133 = globaldef2223;
         self.globaldef134 = FALSE;
         self.globaldef140 = (self.globaldef140 | IT_SHELLS);

      } else {

         if ( (self.globaldef132 == IT_SUPER_SHOTGUN) ) {

            self.globaldef135 = self.globaldef136;
            self.globaldef133 = globaldef2224;
            self.globaldef134 = FALSE;
            self.globaldef140 = (self.globaldef140 | IT_SHELLS);

         } else {

            if ( (self.globaldef132 == IT_NAILGUN) ) {

               self.globaldef135 = self.globaldef137;
               self.globaldef133 = globaldef2225;
               self.globaldef134 = FALSE;
               self.globaldef140 = (self.globaldef140 | IT_NAILS);

            } else {

               if ( (self.globaldef132 == IT_SUPER_NAILGUN) ) {

                  self.globaldef135 = self.globaldef137;
                  self.globaldef133 = globaldef2226;
                  self.globaldef134 = FALSE;
                  self.globaldef140 = (self.globaldef140 | IT_NAILS);

               } else {

                  if ( (self.globaldef132 == IT_GRENADE_LAUNCHER) ) {

                     self.globaldef135 = self.globaldef138;
                     self.globaldef133 = globaldef2227;
                     self.globaldef134 = FALSE;
                     self.globaldef140 = (self.globaldef140 | IT_ROCKETS);

                  } else {

                     if ( (self.globaldef132 == IT_ROCKET_LAUNCHER) ) {

                        self.globaldef135 = self.globaldef138;
                        self.globaldef133 = globaldef2228;
                        self.globaldef134 = FALSE;
                        self.globaldef140 = (self.globaldef140 | IT_ROCKETS);

                     } else {

                        if ( (self.globaldef132 == IT_LIGHTNING) ) {

                           self.globaldef135 = self.globaldef139;
                           self.globaldef133 = globaldef2229;
                           self.globaldef134 = FALSE;
                           self.globaldef140 = (self.globaldef140 | IT_CELLS);

                        } else {

                           self.globaldef135 = FALSE;
                           self.globaldef133 = "";
                           self.globaldef134 = FALSE;

                        }

                     }

                  }

               }

            }

         }

      }

   }

};
string globaldef2222 /* = "progs/v_axe.mdl" */;
string globaldef2223 /* = "progs/v_shot.mdl" */;
string globaldef2224 /* = "progs/v_shot2.mdl" */;
string globaldef2225 /* = "progs/v_nail.mdl" */;
string globaldef2226 /* = "progs/v_nail2.mdl" */;
string globaldef2227 /* = "progs/v_rock.mdl" */;
string globaldef2228 /* = "progs/v_rock2.mdl" */;
string globaldef2229 /* = "progs/v_light.mdl" */;

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

   local float globaldef2230;

   globaldef2230 = self.globaldef140;
   if ( (((self.globaldef167 <= TRUE) && (self.globaldef139 >= TRUE)) && (globaldef2230 & IT_LIGHTNING)) ) {

      return ( IT_LIGHTNING );

   }
   if ( ((self.globaldef137 >= FL_SWIM) && (globaldef2230 & IT_SUPER_NAILGUN)) ) {

      return ( IT_SUPER_NAILGUN );

   }
   if ( ((self.globaldef136 >= FL_SWIM) && (globaldef2230 & IT_SUPER_SHOTGUN)) ) {

      return ( IT_SUPER_SHOTGUN );

   }
   if ( ((self.globaldef137 >= TRUE) && (globaldef2230 & IT_NAILGUN)) ) {

      return ( IT_NAILGUN );

   }
   if ( ((self.globaldef136 >= TRUE) && (globaldef2230 & IT_SHOTGUN)) ) {

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

   if ( (self.globaldef135 > FALSE) ) {

      return ( TRUE );

   }
   if ( (self.globaldef132 == IT_AXE) ) {

      return ( TRUE );

   }
   self.globaldef132 = globaldef1844 ();
   globaldef1788 ();
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

   local float globaldef2241;

   if ( !globaldef2231 () ) {

      return ;

   }
   makevectors (self.globaldef153);
   self.globaldef376 = (time + TRUE);
   if ( (self.globaldef132 == IT_AXE) ) {

      sound (self,CHAN_WEAPON,globaldef2242,TRUE,ATTN_NORM);
      globaldef2241 = globaldef440 ();
      if ( (globaldef2241 < globaldef2243) ) {

         globaldef2232 ();

      } else {

         if ( (globaldef2241 < globaldef522) ) {

            globaldef2233 ();

         } else {

            if ( (globaldef2241 < globaldef2244) ) {

               globaldef2234 ();

            } else {

               globaldef2235 ();

            }

         }

      }
      self.attack_finished = (time + globaldef522);

   } else {

      if ( (self.globaldef132 == IT_SHOTGUN) ) {

         globaldef2236 ();
         globaldef2124 ();
         self.attack_finished = (time + globaldef522);

      } else {

         if ( (self.globaldef132 == IT_SUPER_SHOTGUN) ) {

            globaldef2236 ();
            globaldef2131 ();
            self.attack_finished = (time + globaldef2123);

         } else {

            if ( (self.globaldef132 == IT_NAILGUN) ) {

               globaldef2237 ();

            } else {

               if ( (self.globaldef132 == IT_SUPER_NAILGUN) ) {

                  globaldef2237 ();

               } else {

                  if ( (self.globaldef132 == IT_GRENADE_LAUNCHER) ) {

                     globaldef2239 ();
                     globaldef2181 ();
                     self.attack_finished = (time + globaldef1825);

                  } else {

                     if ( (self.globaldef132 == IT_ROCKET_LAUNCHER) ) {

                        globaldef2239 ();
                        globaldef2147 ();
                        self.attack_finished = (time + globaldef1827);

                     } else {

                        if ( (self.globaldef132 == IT_LIGHTNING) ) {

                           globaldef2238 ();
                           self.attack_finished = (time + 0.100);
                           sound (self,CHAN_AUTO,globaldef2245,TRUE,ATTN_NORM);

                        }

                     }

                  }

               }

            }

         }

      }

   }

};
string globaldef2242 /* = "weapons/ax1.wav" */;
float globaldef2243 /* = 0.250 */;
float globaldef2244 /* = 0.750 */;
string globaldef2245 /* = "weapons/lstart.wav" */;

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

   local float globaldef2247;
   local float globaldef2248;
   local float globaldef2249;

   globaldef2247 = self.globaldef140;
   globaldef2248 = FALSE;
   if ( (self.globaldef151 == TRUE) ) {

      globaldef2249 = IT_AXE;

   } else {

      if ( (self.globaldef151 == FL_SWIM) ) {

         globaldef2249 = IT_SHOTGUN;
         if ( (self.globaldef136 < TRUE) ) {

            globaldef2248 = TRUE;

         }

      } else {

         if ( (self.globaldef151 == MOVETYPE_WALK) ) {

            globaldef2249 = IT_SUPER_SHOTGUN;
            if ( (self.globaldef136 < FL_SWIM) ) {

               globaldef2248 = TRUE;

            }

         } else {

            if ( (self.globaldef151 == MOVETYPE_STEP) ) {

               globaldef2249 = IT_NAILGUN;
               if ( (self.globaldef137 < TRUE) ) {

                  globaldef2248 = TRUE;

               }

            } else {

               if ( (self.globaldef151 == MOVETYPE_FLY) ) {

                  globaldef2249 = IT_SUPER_NAILGUN;
                  if ( (self.globaldef137 < FL_SWIM) ) {

                     globaldef2248 = TRUE;

                  }

               } else {

                  if ( (self.globaldef151 == MOVETYPE_TOSS) ) {

                     globaldef2249 = IT_GRENADE_LAUNCHER;
                     if ( (self.globaldef138 < TRUE) ) {

                        globaldef2248 = TRUE;

                     }

                  } else {

                     if ( (self.globaldef151 == MOVETYPE_PUSH) ) {

                        globaldef2249 = IT_ROCKET_LAUNCHER;
                        if ( (self.globaldef138 < TRUE) ) {

                           globaldef2248 = TRUE;

                        }

                     } else {

                        if ( (self.globaldef151 == FL_CLIENT) ) {

                           globaldef2249 = IT_LIGHTNING;
                           if ( (self.globaldef139 < TRUE) ) {

                              globaldef2248 = TRUE;

                           }

                        }

                     }

                  }

               }

            }

         }

      }

   }
   self.globaldef151 = FALSE;
   if ( !(self.globaldef140 & globaldef2249) ) {

      globaldef887 (self,globaldef2250);
      return ;

   }
   if ( globaldef2248 ) {

      globaldef887 (self,globaldef2251);
      return ;

   }
   self.globaldef132 = globaldef2249;
   globaldef1788 ();

};
string globaldef2250 /* = "no weapon.\n" */;
string globaldef2251 /* = "not enough ammo.\n" */;

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
   self.globaldef138 = globaldef1335;
   self.globaldef137 = globaldef1343;
   self.globaldef136 = globaldef1335;
   self.globaldef140 = (((((((((self.globaldef140 | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_KEY1) | IT_KEY2);
   self.globaldef139 = globaldef1343;
   self.globaldef140 = (self.globaldef140 | IT_LIGHTNING);
   self.globaldef132 = IT_ROCKET_LAUNCHER;
   self.globaldef151 = FALSE;
   globaldef1788 ();

};

void () func289;

// function func289
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

void () func289 = {

   local float globaldef2254;

   self.globaldef151 = FALSE;
   while ( TRUE ) {

      globaldef2254 = FALSE;
      if ( (self.globaldef132 == IT_LIGHTNING) ) {

         self.globaldef132 = IT_AXE;

      } else {

         if ( (self.globaldef132 == IT_AXE) ) {

            self.globaldef132 = IT_SHOTGUN;
            if ( (self.globaldef136 < TRUE) ) {

               globaldef2254 = TRUE;

            }

         } else {

            if ( (self.globaldef132 == IT_SHOTGUN) ) {

               self.globaldef132 = IT_SUPER_SHOTGUN;
               if ( (self.globaldef136 < FL_SWIM) ) {

                  globaldef2254 = TRUE;

               }

            } else {

               if ( (self.globaldef132 == IT_SUPER_SHOTGUN) ) {

                  self.globaldef132 = IT_NAILGUN;
                  if ( (self.globaldef137 < TRUE) ) {

                     globaldef2254 = TRUE;

                  }

               } else {

                  if ( (self.globaldef132 == IT_NAILGUN) ) {

                     self.globaldef132 = IT_SUPER_NAILGUN;
                     if ( (self.globaldef137 < FL_SWIM) ) {

                        globaldef2254 = TRUE;

                     }

                  } else {

                     if ( (self.globaldef132 == IT_SUPER_NAILGUN) ) {

                        self.globaldef132 = IT_GRENADE_LAUNCHER;
                        if ( (self.globaldef138 < TRUE) ) {

                           globaldef2254 = TRUE;

                        }

                     } else {

                        if ( (self.globaldef132 == IT_GRENADE_LAUNCHER) ) {

                           self.globaldef132 = IT_ROCKET_LAUNCHER;
                           if ( (self.globaldef138 < TRUE) ) {

                              globaldef2254 = TRUE;

                           }

                        } else {

                           if ( (self.globaldef132 == IT_ROCKET_LAUNCHER) ) {

                              self.globaldef132 = IT_LIGHTNING;
                              if ( (self.globaldef139 < TRUE) ) {

                                 globaldef2254 = TRUE;

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }
      if ( ((self.globaldef140 & self.globaldef132) && (globaldef2254 == FALSE)) ) {

         globaldef1788 ();
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

   local float globaldef2256;
   local float globaldef2257;

   self.globaldef151 = FALSE;
   while ( TRUE ) {

      globaldef2257 = FALSE;
      if ( (self.globaldef132 == IT_LIGHTNING) ) {

         self.globaldef132 = IT_ROCKET_LAUNCHER;
         if ( (self.globaldef138 < TRUE) ) {

            globaldef2257 = TRUE;

         }

      } else {

         if ( (self.globaldef132 == IT_ROCKET_LAUNCHER) ) {

            self.globaldef132 = IT_GRENADE_LAUNCHER;
            if ( (self.globaldef138 < TRUE) ) {

               globaldef2257 = TRUE;

            }

         } else {

            if ( (self.globaldef132 == IT_GRENADE_LAUNCHER) ) {

               self.globaldef132 = IT_SUPER_NAILGUN;
               if ( (self.globaldef137 < FL_SWIM) ) {

                  globaldef2257 = TRUE;

               }

            } else {

               if ( (self.globaldef132 == IT_SUPER_NAILGUN) ) {

                  self.globaldef132 = IT_NAILGUN;
                  if ( (self.globaldef137 < TRUE) ) {

                     globaldef2257 = TRUE;

                  }

               } else {

                  if ( (self.globaldef132 == IT_NAILGUN) ) {

                     self.globaldef132 = IT_SUPER_SHOTGUN;
                     if ( (self.globaldef136 < FL_SWIM) ) {

                        globaldef2257 = TRUE;

                     }

                  } else {

                     if ( (self.globaldef132 == IT_SUPER_SHOTGUN) ) {

                        self.globaldef132 = IT_SHOTGUN;
                        if ( (self.globaldef136 < TRUE) ) {

                           globaldef2257 = TRUE;

                        }

                     } else {

                        if ( (self.globaldef132 == IT_SHOTGUN) ) {

                           self.globaldef132 = IT_AXE;

                        } else {

                           if ( (self.globaldef132 == IT_AXE) ) {

                              self.globaldef132 = IT_LIGHTNING;
                              if ( (self.globaldef139 < TRUE) ) {

                                 globaldef2257 = TRUE;

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }
      if ( ((self.globaldef140 & self.globaldef132) && (globaldef2257 == FALSE)) ) {

         globaldef1788 ();
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
   self.globaldef371 = TRUE;
   self.globaldef365 = (time + SVC_INTERMISSION);
   self.globaldef140 = (self.globaldef140 | IT_QUAD);
   globaldef456 (globaldef2260);

};
string globaldef2260 /* = "quad cheat\n" */;

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

   if ( ((self.globaldef151 >= TRUE) && (self.globaldef151 <= FL_CLIENT)) ) {

      globaldef2246 ();

   } else {

      if ( (self.globaldef151 == MOVETYPE_FLYMISSILE) ) {

         globaldef2252 ();

      } else {

         if ( (self.globaldef151 == MOVETYPE_BOUNCE) ) {

            globaldef2253 ();

         } else {

            if ( (self.globaldef151 == globaldef774) ) {

               globaldef2255 ();

            } else {

               if ( (self.globaldef151 == globaldef2262) ) {

                  globaldef2259 ();

               }

            }

         }

      }

   }
   if ( (self.globaldef151 == globaldef721) ) {

      globaldef1441 ();

   }
   globaldef1159 ();
   self.globaldef151 = FALSE;

};
float globaldef2262 /* = 255.000 */;

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

   if ( (time < self.attack_finished) ) {

      return ;

   }
   globaldef2261 ();
   if ( (globaldef804 & globaldef750) ) {

      if ( globaldef799 ) {

         return ;

      }
      if ( ((self != globaldef524) && (self != globaldef525)) ) {

         return ;

      }

   }
   if ( self.globaldef148 ) {

      globaldef2010 ();
      globaldef2240 ();

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

   if ( (self.globaldef365 > time) ) {

      if ( (self.globaldef372 < time) ) {

         self.globaldef372 = (time + TRUE);
         sound (self,CHAN_BODY,globaldef1964,TRUE,ATTN_NORM);

      }

   }
   return ;

};
