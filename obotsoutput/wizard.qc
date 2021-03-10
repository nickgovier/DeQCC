string globaldef4292 /* = "progs/soldier.mdl" */;

void (entity globaldef4294, float globaldef4295, float globaldef4296) LaunchMissile;

// function LaunchMissile
// function number 1195 begins at statement 21321
/*
 * OP_LOAD_V	28	117	13547
 * OP_STORE_V	13547	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_ENT	28	181	13550
 * OP_LOAD_V	13550	105	13551
 * OP_LOAD_ENT	28	181	13554
 * OP_LOAD_V	13554	134	13555
 * OP_ADD_V	13551	13555	13558
 * OP_LOAD_ENT	28	181	13561
 * OP_LOAD_V	13561	142	13562
 * OP_MUL_VF	13562	5599	13565
 * OP_ADD_V	13558	13565	13568
 * OP_LOAD_V	13537	105	13571
 * OP_SUB_V	13568	13571	13574
 * OP_STORE_V	13574	13540	0
 * OP_STORE_V	13540	4	0
 * OP_CALL1	462	0	0
 * OP_DIV_F	1	13538	13577
 * OP_STORE_F	13577	13546	0
 * OP_LOAD_ENT	28	181	13578
 * OP_LOAD_V	13578	113	13579
 * OP_STORE_V	13579	13543	0
 * OP_STORE_F	213	13545	0
 * OP_MUL_VF	13543	13546	13582
 * OP_ADD_V	13540	13582	13585
 * OP_STORE_V	13585	13540	0
 * OP_STORE_V	13540	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	13540	0
 * OP_MUL_FV	13539	62	13588
 * OP_CALL0	457	0	0
 * OP_SUB_F	1	539	13591
 * OP_MUL_VF	13588	13591	13592
 * OP_ADD_V	13540	13592	13595
 * OP_MUL_FV	13539	65	13598
 * OP_CALL0	457	0	0
 * OP_SUB_F	1	539	13601
 * OP_MUL_VF	13598	13601	13602
 * OP_ADD_V	13595	13602	13605
 * OP_STORE_V	13605	13540	0
 * OP_ADDRESS	13537	113	13608
 * OP_MUL_VF	13540	13538	13611
 * OP_STOREP_V	13611	13608	0
 * OP_ADDRESS	13537	117	13614
 * OP_STOREP_V	286	13614	0
 * OP_ADDRESS	13537	119	13617
 * OP_LOAD_V	13537	113	13618
 * OP_STORE_V	13618	4	0
 * OP_CALL1	463	0	0
 * OP_STOREP_F	1	13617	0
 * OP_ADDRESS	13537	150	13621
 * OP_ADD_F	31	230	13622
 * OP_STOREP_F	13622	13621	0
 * OP_ADDRESS	13537	148	13623
 * OP_STOREP_FNC	521	13623	0
 * OP_DONE	0	0	0
 */

void (entity globaldef4294, float globaldef4295, float globaldef4296) LaunchMissile = {

   local vector globaldef4297;
   local vector globaldef4301;
   local float globaldef4305;

   makevectors (self.angles);
   globaldef4297 = (((self.enemy.origin + self.enemy.globaldef112) + (self.enemy.globaldef120 * globaldef2123)) - globaldef4294.origin);
   globaldef4305 = (vlen (globaldef4297) / globaldef4295);
   globaldef4301 = self.enemy.velocity;
   globaldef4304 = FALSE;
   globaldef4297 = (globaldef4297 + (globaldef4301 * globaldef4305));
   globaldef4297 = globaldef442 (globaldef4297);
   globaldef4297 = ((globaldef4297 + ((globaldef4296 * v_up) * (globaldef440 () - globaldef522))) + ((globaldef4296 * v_right) * (globaldef440 () - globaldef522)));
   globaldef4294.velocity = (globaldef4297 * globaldef4295);
   globaldef4294.angles = VEC_ORIGIN;
   globaldef4294.globaldef97 = globaldef446 (globaldef4294.velocity);
   globaldef4294.nextthink = (time + MOVETYPE_FLY);
   globaldef4294.think = globaldef504;

};

void () wiz_run1;

void () wiz_side1;

// function WizardCheckAttack
// function number 1196 begins at statement 21377
/*
 * OP_LOAD_F	28	378	13634
 * OP_LT	31	13634	13635
 * OP_IFNOT	13635	2	0
 * OP_RETURN	213	0	0
 * OP_NOT_F	3191	0	13636
 * OP_IFNOT	13636	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	245	13637
 * OP_IFNOT	13637	8	0
 * OP_LOAD_F	28	372	13638
 * OP_NE_F	13638	373	13639
 * OP_IFNOT	13639	4	0
 * OP_ADDRESS	28	372	13640
 * OP_STOREP_F	373	13640	0
 * OP_CALL0	13624	0	0
 * OP_RETURN	213	0	0
 * OP_LOAD_ENT	28	181	13641
 * OP_STORE_ENT	13641	13632	0
 * OP_LOAD_V	28	105	13642
 * OP_LOAD_V	28	166	13645
 * OP_ADD_V	13642	13645	13648
 * OP_STORE_V	13648	13626	0
 * OP_LOAD_V	13632	105	13651
 * OP_LOAD_V	13632	166	13654
 * OP_ADD_V	13651	13654	13657
 * OP_STORE_V	13657	13629	0
 * OP_STORE_V	13626	4	0
 * OP_STORE_V	13629	7	0
 * OP_STORE_V	213	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_NE_E	78	13632	13660
 * OP_IFNOT	13660	8	0
 * OP_LOAD_F	28	372	13661
 * OP_NE_F	13661	373	13662
 * OP_IFNOT	13662	4	0
 * OP_ADDRESS	28	372	13663
 * OP_STOREP_F	373	13663	0
 * OP_CALL0	13624	0	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3193	242	13664
 * OP_IFNOT	13664	3	0
 * OP_STORE_F	3263	13633	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	3193	243	13665
 * OP_IFNOT	13665	3	0
 * OP_STORE_F	4474	13633	0
 * OP_GOTO	6	0	0
 * OP_EQ_F	3193	244	13666
 * OP_IFNOT	13666	3	0
 * OP_STORE_F	3267	13633	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	213	13633	0
 * OP_CALL0	457	0	0
 * OP_LT	1	13633	13667
 * OP_IFNOT	13667	4	0
 * OP_ADDRESS	28	372	13668
 * OP_STOREP_F	376	13668	0
 * OP_RETURN	214	0	0
 * OP_EQ_F	3193	244	13669
 * OP_IFNOT	13669	8	0
 * OP_LOAD_F	28	372	13670
 * OP_NE_F	13670	373	13671
 * OP_IFNOT	13671	4	0
 * OP_ADDRESS	28	372	13672
 * OP_STOREP_F	373	13672	0
 * OP_CALL0	13624	0	0
 * OP_GOTO	7	0	0
 * OP_LOAD_F	28	372	13673
 * OP_NE_F	13673	374	13674
 * OP_IFNOT	13674	4	0
 * OP_ADDRESS	28	372	13675
 * OP_STOREP_F	374	13675	0
 * OP_CALL0	13625	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float () WizardCheckAttack = {

   local vector globaldef4308;
   local vector globaldef4312;
   local entity globaldef4316;
   local float globaldef4317;

   if ( (time < self.attack_finished) ) {

      return ( FALSE );

   }
   if ( !globaldef1534 ) {

      return ( FALSE );

   }
   if ( (globaldef1536 == RANGE_FAR) ) {

      if ( (self.globaldef355 != AS_STRAIGHT) ) {

         self.globaldef355 = AS_STRAIGHT;
         globaldef4306 ();

      }
      return ( FALSE );

   }
   globaldef4316 = self.enemy;
   globaldef4308 = (self.origin + self.globaldef144);
   globaldef4312 = (globaldef4316.origin + globaldef4316.globaldef144);
   globaldef449 (globaldef4308,globaldef4312,FALSE,self);
   if ( (trace_ent != globaldef4316) ) {

      if ( (self.globaldef355 != AS_STRAIGHT) ) {

         self.globaldef355 = AS_STRAIGHT;
         globaldef4306 ();

      }
      return ( FALSE );

   }
   if ( (globaldef1536 == RANGE_MELEE) ) {

      globaldef4317 = globaldef1552;

   } else {

      if ( (globaldef1536 == RANGE_NEAR) ) {

         globaldef4317 = globaldef1825;

      } else {

         if ( (globaldef1536 == RANGE_MID) ) {

            globaldef4317 = globaldef1553;

         } else {

            globaldef4317 = FALSE;

         }

      }

   }
   if ( (globaldef440 () < globaldef4317) ) {

      self.globaldef355 = AS_MISSILE;
      return ( TRUE );

   }
   if ( (globaldef1536 == RANGE_MID) ) {

      if ( (self.globaldef355 != AS_STRAIGHT) ) {

         self.globaldef355 = AS_STRAIGHT;
         globaldef4306 ();

      }

   } else {

      if ( (self.globaldef355 != AS_SLIDING) ) {

         self.globaldef355 = AS_SLIDING;
         globaldef4307 ();

      }

   }
   return ( FALSE );

};

void () WizardAttackFinished;

// function WizardAttackFinished
// function number 1197 begins at statement 21453
/*
 * OP_GE	3193	244	13677
 * OP_NOT_F	3191	0	13678
 * OP_OR	13677	13678	13679
 * OP_IFNOT	13679	6	0
 * OP_ADDRESS	28	372	13680
 * OP_STOREP_F	373	13680	0
 * OP_ADDRESS	28	148	13681
 * OP_STOREP_FNC	13624	13681	0
 * OP_GOTO	5	0	0
 * OP_ADDRESS	28	372	13682
 * OP_STOREP_F	374	13682	0
 * OP_ADDRESS	28	148	13683
 * OP_STOREP_FNC	13625	13683	0
 * OP_DONE	0	0	0
 */

void () WizardAttackFinished = {

   if ( ((globaldef1536 >= RANGE_MID) || !globaldef1534) ) {

      self.globaldef355 = AS_STRAIGHT;
      self.think = globaldef4306;

   } else {

      self.globaldef355 = AS_SLIDING;
      self.think = globaldef4307;

   }

};

void () Wiz_FastFire;

// function Wiz_FastFire
// function number 1198 begins at statement 21467
/*
 * OP_LOAD_ENT	28	201	13691
 * OP_LOAD_F	13691	152	13692
 * OP_GT	13692	213	13693
 * OP_IFNOT	13693	47	0
 * OP_LOAD_ENT	28	201	13694
 * OP_ADDRESS	13694	133	13695
 * OP_LOAD_ENT	28	201	13696
 * OP_LOAD_F	13696	133	13697
 * OP_BITOR	13697	339	13698
 * OP_STOREP_F	13698	13695	0
 * OP_LOAD_ENT	28	181	13699
 * OP_LOAD_V	13699	117	13700
 * OP_STORE_V	13700	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_ENT	28	181	13703
 * OP_LOAD_V	13703	105	13704
 * OP_LOAD_V	28	202	13707
 * OP_MUL_FV	792	13707	13710
 * OP_SUB_V	13704	13710	13713
 * OP_STORE_V	13713	13688	0
 * OP_LOAD_V	28	105	13716
 * OP_SUB_V	13688	13716	13719
 * OP_STORE_V	13719	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	13685	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13722	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	105	13723
 * OP_STORE_V	13723	4	0
 * OP_STORE_V	13685	7	0
 * OP_CALL2	6018	0	0
 * OP_ADDRESS	350	113	13726
 * OP_MUL_VF	13685	740	13729
 * OP_STOREP_V	13729	13726	0
 * OP_ADDRESS	350	201	13732
 * OP_LOAD_ENT	28	201	13733
 * OP_STOREP_ENT	13733	13732	0
 * OP_ADDRESS	350	129	13734
 * OP_STOREP_S	6115	13734	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	13735	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () Wiz_FastFire = {

   local vector globaldef4320;
   local vector globaldef4324;

   if ( (self.globaldef179.globaldef130 > FALSE) ) {

      self.globaldef179.globaldef111 = (self.globaldef179.globaldef111 | EF_MUZZLEFLASH);
      makevectors (self.enemy.angles);
      globaldef4324 = (self.enemy.origin - (globaldef775 * self.movedir));
      globaldef4320 = globaldef442 ((globaldef4324 - self.origin));
      sound (self,CHAN_WEAPON,globaldef4328,TRUE,ATTN_NORM);
      globaldef2191 (self.origin,globaldef4320);
      newmis.velocity = (globaldef4320 * globaldef723);
      newmis.globaldef179 = self.globaldef179;
      newmis.classname = globaldef2218;
      setmodel (newmis,globaldef4329);
      globaldef438 (newmis,VEC_ORIGIN,VEC_ORIGIN);

   }
   remove (self);

};
string globaldef4328 /* = "wizard/wattack.wav" */;
string globaldef4329 /* = "progs/w_spike.mdl" */;

void () Wiz_StartFast;

// function Wiz_StartFast
// function number 1199 begins at statement 21520
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	13722	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	175	13738
 * OP_LOAD_V	28	117	13741
 * OP_STOREP_V	13741	13738	0
 * OP_LOAD_V	28	117	13744
 * OP_STORE_V	13744	4	0
 * OP_CALL1	452	0	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	13737	0
 * OP_ADDRESS	13737	201	13747
 * OP_STOREP_ENT	28	13747	0
 * OP_ADDRESS	13737	150	13748
 * OP_ADD_F	31	4474	13749
 * OP_STOREP_F	13749	13748	0
 * OP_STORE_V	13737	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	13737	4	0
 * OP_LOAD_V	28	105	13750
 * OP_ADD_V	13750	13753	13756
 * OP_MUL_VF	59	5693	13759
 * OP_ADD_V	13756	13759	13762
 * OP_MUL_VF	65	5693	13765
 * OP_ADD_V	13762	13765	13768
 * OP_STORE_V	13768	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	13737	181	13771
 * OP_LOAD_ENT	28	181	13772
 * OP_STOREP_ENT	13772	13771	0
 * OP_ADDRESS	13737	150	13773
 * OP_ADD_F	31	4478	13774
 * OP_STOREP_F	13774	13773	0
 * OP_ADDRESS	13737	148	13775
 * OP_STOREP_FNC	13684	13775	0
 * OP_ADDRESS	13737	202	13776
 * OP_STOREP_V	65	13776	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	13737	0
 * OP_ADDRESS	13737	201	13779
 * OP_STOREP_ENT	28	13779	0
 * OP_ADDRESS	13737	150	13780
 * OP_ADD_F	31	214	13781
 * OP_STOREP_F	13781	13780	0
 * OP_STORE_V	13737	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	13737	4	0
 * OP_LOAD_V	28	105	13782
 * OP_ADD_V	13782	13753	13785
 * OP_MUL_VF	59	5693	13788
 * OP_ADD_V	13785	13788	13791
 * OP_MUL_VF	65	13794	13795
 * OP_ADD_V	13791	13795	13798
 * OP_STORE_V	13798	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	13737	181	13801
 * OP_LOAD_ENT	28	181	13802
 * OP_STOREP_ENT	13802	13801	0
 * OP_ADDRESS	13737	150	13803
 * OP_ADD_F	31	3409	13804
 * OP_STOREP_F	13804	13803	0
 * OP_ADDRESS	13737	148	13805
 * OP_STOREP_FNC	13684	13805	0
 * OP_ADDRESS	13737	202	13806
 * OP_SUB_V	286	65	13809
 * OP_STOREP_V	13809	13806	0
 * OP_DONE	0	0	0
 */

void () Wiz_StartFast = {

   local entity globaldef4331;

   sound (self,CHAN_WEAPON,globaldef4328,TRUE,ATTN_NORM);
   self.globaldef153 = self.angles;
   makevectors (self.angles);
   globaldef4331 = spawn ();
   globaldef4331.globaldef179 = self;
   globaldef4331.nextthink = (time + globaldef1825);
   globaldef438 (globaldef4331,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef4331,(((self.origin + globaldef4332) + (v_forward * globaldef2136)) + (v_right * globaldef2136)));
   globaldef4331.enemy = self.enemy;
   globaldef4331.nextthink = (time + globaldef1827);
   globaldef4331.think = globaldef4319;
   globaldef4331.movedir = v_right;
   globaldef4331 = spawn ();
   globaldef4331.globaldef179 = self;
   globaldef4331.nextthink = (time + TRUE);
   globaldef438 (globaldef4331,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef4331,(((self.origin + globaldef4332) + (v_forward * globaldef2136)) + (v_right * globaldef4333)));
   globaldef4331.enemy = self.enemy;
   globaldef4331.nextthink = (time + globaldef1588);
   globaldef4331.think = globaldef4319;
   globaldef4331.movedir = (VEC_ORIGIN - v_right);

};
vector globaldef4332 /* = '0.000 0.000 30.000' */;
float globaldef4333 /* = -14.000 */;

void () Wiz_idlesound;

// function Wiz_idlesound
// function number 1200 begins at statement 21594
/*
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	230	13814
 * OP_STORE_F	13814	13813	0
 * OP_LOAD_F	28	448	13815
 * OP_LT	13815	31	13816
 * OP_IFNOT	13816	20	0
 * OP_ADDRESS	28	448	13817
 * OP_ADD_F	31	216	13818
 * OP_STOREP_F	13818	13817	0
 * OP_GT	13813	13819	13820
 * OP_IFNOT	13820	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13821	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_LT	13813	1825	13822
 * OP_IFNOT	13822	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13823	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () Wiz_idlesound = {

   local float globaldef4335;

   globaldef4335 = (globaldef440 () * MOVETYPE_FLY);
   if ( (self.globaldef431 < time) ) {

      self.globaldef431 = (time + FL_SWIM);
      if ( (globaldef4335 > globaldef4336) ) {

         sound (self,CHAN_VOICE,globaldef4337,TRUE,ATTN_IDLE);

      }
      if ( (globaldef4335 < globaldef1303) ) {

         sound (self,CHAN_VOICE,globaldef4338,TRUE,ATTN_IDLE);

      }

   }
   return ;

};
float globaldef4336 /* = 4.500 */;
string globaldef4337 /* = "wizard/widle1.wav" */;
string globaldef4338 /* = "wizard/widle2.wav" */;

void () wiz_stand1;

// function wiz_stand1
// function number 1201 begins at statement 21621
/*
 * OP_STATE	213	13825	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand1 = [ 0.000, globaldef4340 ] {

   globaldef1709 ();

};

void () wiz_stand2;

// function wiz_stand2
// function number 1202 begins at statement 21624
/*
 * OP_STATE	214	13826	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand2 = [ 1.000, globaldef4341 ] {

   globaldef1709 ();

};

void () wiz_stand3;

// function wiz_stand3
// function number 1203 begins at statement 21627
/*
 * OP_STATE	216	13827	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand3 = [ 2.000, globaldef4342 ] {

   globaldef1709 ();

};

void () wiz_stand4;

// function wiz_stand4
// function number 1204 begins at statement 21630
/*
 * OP_STATE	228	13828	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand4 = [ 3.000, globaldef4343 ] {

   globaldef1709 ();

};

void () wiz_stand5;

// function wiz_stand5
// function number 1205 begins at statement 21633
/*
 * OP_STATE	229	13829	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand5 = [ 4.000, globaldef4344 ] {

   globaldef1709 ();

};

void () wiz_stand6;

// function wiz_stand6
// function number 1206 begins at statement 21636
/*
 * OP_STATE	230	13830	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand6 = [ 5.000, globaldef4345 ] {

   globaldef1709 ();

};

void () wiz_stand7;

// function wiz_stand7
// function number 1207 begins at statement 21639
/*
 * OP_STATE	231	13831	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand7 = [ 6.000, globaldef4346 ] {

   globaldef1709 ();

};

void () wiz_stand8;

// function wiz_stand8
// function number 1208 begins at statement 21642
/*
 * OP_STATE	232	13824	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () wiz_stand8 = [ 7.000, globaldef4339 ] {

   globaldef1709 ();

};

void () wiz_walk1;

// function wiz_walk1
// function number 1209 begins at statement 21645
/*
 * OP_STATE	213	13833	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_CALL0	13812	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk1 = [ 0.000, globaldef4348 ] {

   globaldef1702 (FL_CLIENT);
   globaldef4334 ();

};

void () wiz_walk2;

// function wiz_walk2
// function number 1210 begins at statement 21650
/*
 * OP_STATE	214	13834	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk2 = [ 1.000, globaldef4349 ] {

   globaldef1702 (FL_CLIENT);

};

void () wiz_walk3;

// function wiz_walk3
// function number 1211 begins at statement 21654
/*
 * OP_STATE	216	13835	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk3 = [ 2.000, globaldef4350 ] {

   globaldef1702 (FL_CLIENT);

};

void () wiz_walk4;

// function wiz_walk4
// function number 1212 begins at statement 21658
/*
 * OP_STATE	228	13836	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk4 = [ 3.000, globaldef4351 ] {

   globaldef1702 (FL_CLIENT);

};

void () wiz_walk5;

// function wiz_walk5
// function number 1213 begins at statement 21662
/*
 * OP_STATE	229	13837	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk5 = [ 4.000, globaldef4352 ] {

   globaldef1702 (FL_CLIENT);

};

void () wiz_walk6;

// function wiz_walk6
// function number 1214 begins at statement 21666
/*
 * OP_STATE	230	13838	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk6 = [ 5.000, globaldef4353 ] {

   globaldef1702 (FL_CLIENT);

};

void () wiz_walk7;

// function wiz_walk7
// function number 1215 begins at statement 21670
/*
 * OP_STATE	231	13839	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk7 = [ 6.000, globaldef4354 ] {

   globaldef1702 (FL_CLIENT);

};

void () wiz_walk8;

// function wiz_walk8
// function number 1216 begins at statement 21674
/*
 * OP_STATE	232	13832	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () wiz_walk8 = [ 7.000, globaldef4347 ] {

   globaldef1702 (FL_CLIENT);

};

// function wiz_side1
// function number 1217 begins at statement 21678
/*
 * OP_STATE	213	13840	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_CALL0	13812	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side1 = [ 0.000, globaldef4355 ] {

   globaldef1734 (FL_CLIENT);
   globaldef4334 ();

};

void () wiz_side2;

// function wiz_side2
// function number 1218 begins at statement 21683
/*
 * OP_STATE	214	13841	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side2 = [ 1.000, globaldef4356 ] {

   globaldef1734 (FL_CLIENT);

};

void () wiz_side3;

// function wiz_side3
// function number 1219 begins at statement 21687
/*
 * OP_STATE	216	13842	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side3 = [ 2.000, globaldef4357 ] {

   globaldef1734 (FL_CLIENT);

};

void () wiz_side4;

// function wiz_side4
// function number 1220 begins at statement 21691
/*
 * OP_STATE	228	13843	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side4 = [ 3.000, globaldef4358 ] {

   globaldef1734 (FL_CLIENT);

};

void () wiz_side5;

// function wiz_side5
// function number 1221 begins at statement 21695
/*
 * OP_STATE	229	13844	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side5 = [ 4.000, globaldef4359 ] {

   globaldef1734 (FL_CLIENT);

};

void () wiz_side6;

// function wiz_side6
// function number 1222 begins at statement 21699
/*
 * OP_STATE	230	13845	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side6 = [ 5.000, globaldef4360 ] {

   globaldef1734 (FL_CLIENT);

};

void () wiz_side7;

// function wiz_side7
// function number 1223 begins at statement 21703
/*
 * OP_STATE	231	13846	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side7 = [ 6.000, globaldef4361 ] {

   globaldef1734 (FL_CLIENT);

};

void () wiz_side8;

// function wiz_side8
// function number 1224 begins at statement 21707
/*
 * OP_STATE	232	13625	0
 * OP_STORE_V	217	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_side8 = [ 7.000, globaldef4307 ] {

   globaldef1734 (FL_CLIENT);

};

// function wiz_run1
// function number 1225 begins at statement 21711
/*
 * OP_STATE	765	13847	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_CALL0	13812	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run1 = [ 15.000, globaldef4362 ] {

   globaldef1734 (FL_INWATER);
   globaldef4334 ();

};

void () wiz_run2;

// function wiz_run2
// function number 1226 begins at statement 21716
/*
 * OP_STATE	218	13848	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run2 = [ 16.000, globaldef4363 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run3;

// function wiz_run3
// function number 1227 begins at statement 21720
/*
 * OP_STATE	6892	13849	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run3 = [ 17.000, globaldef4364 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run4;

// function wiz_run4
// function number 1228 begins at statement 21724
/*
 * OP_STATE	6133	13850	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run4 = [ 18.000, globaldef4365 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run5;

// function wiz_run5
// function number 1229 begins at statement 21728
/*
 * OP_STATE	6895	13851	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run5 = [ 19.000, globaldef4366 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run6;

// function wiz_run6
// function number 1230 begins at statement 21732
/*
 * OP_STATE	2323	13852	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run6 = [ 20.000, globaldef4367 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run7;

// function wiz_run7
// function number 1231 begins at statement 21736
/*
 * OP_STATE	12465	13853	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run7 = [ 21.000, globaldef4368 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run8;

// function wiz_run8
// function number 1232 begins at statement 21740
/*
 * OP_STATE	12467	13854	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run8 = [ 22.000, globaldef4369 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run9;

// function wiz_run9
// function number 1233 begins at statement 21744
/*
 * OP_STATE	304	13855	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run9 = [ 23.000, globaldef4370 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run10;

// function wiz_run10
// function number 1234 begins at statement 21748
/*
 * OP_STATE	736	13856	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run10 = [ 24.000, globaldef4371 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run11;

// function wiz_run11
// function number 1235 begins at statement 21752
/*
 * OP_STATE	305	13857	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run11 = [ 25.000, globaldef4372 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run12;

// function wiz_run12
// function number 1236 begins at statement 21756
/*
 * OP_STATE	306	13858	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run12 = [ 26.000, globaldef4373 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run13;

// function wiz_run13
// function number 1237 begins at statement 21760
/*
 * OP_STATE	307	13859	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run13 = [ 27.000, globaldef4374 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_run14;

// function wiz_run14
// function number 1238 begins at statement 21764
/*
 * OP_STATE	308	13624	0
 * OP_STORE_V	218	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () wiz_run14 = [ 28.000, globaldef4306 ] {

   globaldef1734 (FL_INWATER);

};

void () wiz_fast1;

// function wiz_fast1
// function number 1239 begins at statement 21768
/*
 * OP_STATE	9664	13861	0
 * OP_CALL0	3190	0	0
 * OP_CALL0	13736	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast1 = [ 29.000, globaldef4376 ] {

   globaldef1533 ();
   globaldef4330 ();

};

void () wiz_fast2;

// function wiz_fast2
// function number 1240 begins at statement 21772
/*
 * OP_STATE	309	13862	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast2 = [ 30.000, globaldef4377 ] {

   globaldef1533 ();

};

void () wiz_fast3;

// function wiz_fast3
// function number 1241 begins at statement 21775
/*
 * OP_STATE	310	13863	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast3 = [ 31.000, globaldef4378 ] {

   globaldef1533 ();

};

void () wiz_fast4;

// function wiz_fast4
// function number 1242 begins at statement 21778
/*
 * OP_STATE	219	13864	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast4 = [ 32.000, globaldef4379 ] {

   globaldef1533 ();

};

void () wiz_fast5;

// function wiz_fast5
// function number 1243 begins at statement 21781
/*
 * OP_STATE	312	13865	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast5 = [ 33.000, globaldef4380 ] {

   globaldef1533 ();

};

void () wiz_fast6;

// function wiz_fast6
// function number 1244 begins at statement 21784
/*
 * OP_STATE	9671	13866	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast6 = [ 34.000, globaldef4381 ] {

   globaldef1533 ();

};

void () wiz_fast7;

// function wiz_fast7
// function number 1245 begins at statement 21787
/*
 * OP_STATE	312	13867	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast7 = [ 33.000, globaldef4382 ] {

   globaldef1533 ();

};

void () wiz_fast8;

// function wiz_fast8
// function number 1246 begins at statement 21790
/*
 * OP_STATE	219	13868	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast8 = [ 32.000, globaldef4383 ] {

   globaldef1533 ();

};

void () wiz_fast9;

// function wiz_fast9
// function number 1247 begins at statement 21793
/*
 * OP_STATE	310	13869	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast9 = [ 31.000, globaldef4384 ] {

   globaldef1533 ();

};

void () wiz_fast10;

// function wiz_fast10
// function number 1248 begins at statement 21796
/*
 * OP_STATE	309	13624	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3163	0	0
 * OP_CALL0	13676	0	0
 * OP_DONE	0	0	0
 */

void () wiz_fast10 = [ 30.000, globaldef4306 ] {

   globaldef1533 ();
   globaldef1517 (FL_SWIM);
   globaldef4318 ();

};

void () wiz_pain1;

// function wiz_pain1
// function number 1249 begins at statement 21802
/*
 * OP_STATE	9995	13871	0
 * OP_DONE	0	0	0
 */

void () wiz_pain1 = [ 42.000, globaldef4386 ] {


};

void () wiz_pain2;

// function wiz_pain2
// function number 1250 begins at statement 21804
/*
 * OP_STATE	9997	13872	0
 * OP_DONE	0	0	0
 */

void () wiz_pain2 = [ 43.000, globaldef4387 ] {


};

void () wiz_pain3;

// function wiz_pain3
// function number 1251 begins at statement 21806
/*
 * OP_STATE	9999	13873	0
 * OP_DONE	0	0	0
 */

void () wiz_pain3 = [ 44.000, globaldef4388 ] {


};

void () wiz_pain4;

// function wiz_pain4
// function number 1252 begins at statement 21808
/*
 * OP_STATE	2598	13624	0
 * OP_DONE	0	0	0
 */

void () wiz_pain4 = [ 45.000, globaldef4306 ] {


};

void () wiz_death1;

// function wiz_death1
// function number 1253 begins at statement 21810
/*
 * OP_STATE	10002	13875	0
 * OP_ADDRESS	28	114	13876
 * OP_CALL0	457	0	0
 * OP_MUL_F	5347	1	13877
 * OP_ADD_F	9761	13877	13878
 * OP_STOREP_F	13878	13876	0
 * OP_ADDRESS	28	115	13879
 * OP_CALL0	457	0	0
 * OP_MUL_F	5347	1	13880
 * OP_ADD_F	9761	13880	13881
 * OP_STOREP_F	13881	13879	0
 * OP_ADDRESS	28	116	13882
 * OP_CALL0	457	0	0
 * OP_MUL_F	1997	1	13883
 * OP_ADD_F	1997	13883	13884
 * OP_STOREP_F	13884	13882	0
 * OP_ADDRESS	28	182	13885
 * OP_LOAD_F	28	182	13886
 * OP_LOAD_F	28	182	13887
 * OP_BITAND	13887	223	13888
 * OP_SUB_F	13886	13888	13889
 * OP_STOREP_F	13889	13885	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13890	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () wiz_death1 = [ 46.000, globaldef4390 ] {

   self.globaldef92 = (globaldef3183 + (globaldef2007 * globaldef440 ()));
   self.globaldef93 = (globaldef3183 + (globaldef2007 * globaldef440 ()));
   self.globaldef94 = (globaldef1335 + (globaldef1335 * globaldef440 ()));
   self.globaldef160 = (self.globaldef160 - (self.globaldef160 & FL_ONGROUND));
   sound (self,CHAN_VOICE,globaldef4391,TRUE,ATTN_NORM);

};

void () wiz_death2;
string globaldef4391 /* = "wizard/wdeath.wav" */;

// function wiz_death2
// function number 1254 begins at statement 21839
/*
 * OP_STATE	10004	13891	0
 * OP_DONE	0	0	0
 */

void () wiz_death2 = [ 47.000, globaldef4392 ] {


};

void () wiz_death3;

// function wiz_death3
// function number 1255 begins at statement 21841
/*
 * OP_STATE	10006	13892	0
 * OP_ADDRESS	28	104	13893
 * OP_STOREP_F	237	13893	0
 * OP_DONE	0	0	0
 */

void () wiz_death3 = [ 48.000, globaldef4393 ] {

   self.solid = SOLID_NOT;

};

void () wiz_death4;

// function wiz_death4
// function number 1256 begins at statement 21845
/*
 * OP_STATE	10008	13894	0
 * OP_DONE	0	0	0
 */

void () wiz_death4 = [ 49.000, globaldef4394 ] {


};

void () wiz_death5;

// function wiz_death5
// function number 1257 begins at statement 21847
/*
 * OP_STATE	1470	13895	0
 * OP_DONE	0	0	0
 */

void () wiz_death5 = [ 50.000, globaldef4395 ] {


};

void () wiz_death6;

// function wiz_death6
// function number 1258 begins at statement 21849
/*
 * OP_STATE	9911	13896	0
 * OP_DONE	0	0	0
 */

void () wiz_death6 = [ 51.000, globaldef4396 ] {


};

void () wiz_death7;

// function wiz_death7
// function number 1259 begins at statement 21851
/*
 * OP_STATE	9913	13897	0
 * OP_DONE	0	0	0
 */

void () wiz_death7 = [ 52.000, globaldef4397 ] {


};

void () wiz_death8;

// function wiz_death8
// function number 1260 begins at statement 21853
/*
 * OP_STATE	9915	13897	0
 * OP_DONE	0	0	0
 */

void () wiz_death8 = [ 53.000, globaldef4397 ] {


};

void () wiz_die;

// function wiz_die
// function number 1261 begins at statement 21855
/*
 * OP_LOAD_F	28	152	13899
 * OP_LT	13899	9236	13900
 * OP_IFNOT	13900	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	13901	4	0
 * OP_LOAD_F	28	152	13902
 * OP_STORE_V	13902	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	13903
 * OP_STORE_V	13903	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	13904
 * OP_STORE_V	13904	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	13905
 * OP_STORE_V	13905	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	13874	0	0
 * OP_DONE	0	0	0
 */

void () wiz_die = {

   if ( (self.globaldef130 < globaldef3008) ) {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NORM);
      globaldef3189 (globaldef4399,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      return ;

   }
   globaldef4389 ();

};
string globaldef4399 /* = "progs/h_wizard.mdl" */;

void (entity globaldef4401, float globaldef4402) Wiz_Pain;

// function Wiz_Pain
// function number 1262 begins at statement 21883
/*
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	13909	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	1536	13910
 * OP_GT	13910	13908	13911
 * OP_IFNOT	13911	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	13870	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef4401, float globaldef4402) Wiz_Pain = {

   sound (self,CHAN_VOICE,globaldef4403,TRUE,ATTN_NORM);
   if ( ((globaldef440 () * globaldef1271) > globaldef4402) ) {

      return ;

   }
   globaldef4385 ();

};
string globaldef4403 /* = "wizard/wpain.wav" */;

void () Wiz_Missile;

// function Wiz_Missile
// function number 1263 begins at statement 21896
/*
 * OP_CALL0	13860	0	0
 * OP_DONE	0	0	0
 */

void () Wiz_Missile = {

   globaldef4375 ();

};

void () monster_wizard;

// function monster_wizard
// function number 1264 begins at statement 21898
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	13914	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13901	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13735	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	13915	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13722	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13890	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13821	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13823	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	13909	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	3671	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	104	13916
 * OP_STOREP_F	240	13916	0
 * OP_ADDRESS	28	103	13917
 * OP_STOREP_F	229	13917	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	13914	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	13918
 * OP_STOREP_F	2805	13918	0
 * OP_ADDRESS	28	361	13919
 * OP_STOREP_FNC	13824	13919	0
 * OP_ADDRESS	28	362	13920
 * OP_STOREP_FNC	13832	13920	0
 * OP_ADDRESS	28	363	13921
 * OP_STOREP_FNC	13624	13921	0
 * OP_ADDRESS	28	364	13922
 * OP_STOREP_FNC	13912	13922	0
 * OP_ADDRESS	28	366	13923
 * OP_STOREP_FNC	13906	13923	0
 * OP_ADDRESS	28	367	13924
 * OP_STOREP_FNC	13898	13924	0
 * OP_CALL0	10156	0	0
 * OP_DONE	0	0	0
 */

void () monster_wizard = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef453 (globaldef4406);
   globaldef453 (globaldef4399);
   globaldef453 (globaldef4329);
   globaldef452 (globaldef4407);
   globaldef452 (globaldef4328);
   globaldef452 (globaldef4391);
   globaldef452 (globaldef4337);
   globaldef452 (globaldef4338);
   globaldef452 (globaldef4403);
   globaldef452 ("wizard/wsight.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef4406);
   globaldef438 (self,VEC_HULL_MIN,globaldef4167);
   self.globaldef130 = globaldef1439;
   self.globaldef344 = globaldef4339;
   self.globaldef345 = globaldef4347;
   self.globaldef346 = globaldef4306;
   self.globaldef347 = globaldef4404;
   self.globaldef349 = globaldef4400;
   self.globaldef350 = globaldef4398;
   globaldef3312 ();

};
