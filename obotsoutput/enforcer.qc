string globaldef5428 /* = "progs/shalrath.mdl" */;

void () Laser_Touch;

// function Laser_Touch
// function number 2071 begins at statement 26221
/*
 * OP_LOAD_ENT	28	201	15736
 * OP_EQ_E	29	15736	15737
 * OP_IFNOT	15737	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	105	15738
 * OP_STORE_V	15738	4	0
 * OP_CALL1	487	0	0
 * OP_EQ_F	1	281	15741
 * OP_IFNOT	15741	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	12107	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	333	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	105	15742
 * OP_LOAD_V	28	113	15745
 * OP_STORE_V	15745	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_FV	217	1	15748
 * OP_SUB_V	15742	15748	15751
 * OP_STORE_V	15751	15733	0
 * OP_LOAD_F	29	152	15754
 * OP_IFNOT	15754	14	0
 * OP_STORE_V	15733	4	0
 * OP_LOAD_V	28	113	15755
 * OP_MUL_VF	15755	3267	15758
 * OP_STORE_V	15758	7	0
 * OP_STORE_V	765	10	0
 * OP_CALL3	5355	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_LOAD_ENT	28	201	15761
 * OP_STORE_V	15761	10	0
 * OP_STORE_V	765	13	0
 * OP_CALL4	522	0	0
 * OP_GOTO	16	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	315	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	15733	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	15734	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	15735	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () Laser_Touch = {

   local vector globaldef5430;

   if ( (other == self.globaldef179) ) {

      return ;

   }
   if ( (globaldef470 (self.origin) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef3607,TRUE,ATTN_STATIC);
   globaldef5430 = (self.origin - (FL_CLIENT * globaldef442 (self.velocity)));
   if ( other.globaldef130 ) {

      globaldef2009 (globaldef5430,(self.velocity * globaldef1553),globaldef748);
      globaldef505 (other,self,self.globaldef179,globaldef748);

   } else {

      globaldef479 (MSG_BROADCAST,SVC_TEMP);
      globaldef479 (MSG_BROADCAST,TE_GUNSHOT);
      globaldef483 (MSG_BROADCAST,globaldef5430);
      globaldef483 (MSG_BROADCAST,globaldef5432);
      globaldef483 (MSG_BROADCAST,globaldef5433);

   }
   remove (self);

};

// function LaunchLaser
// function number 2072 begins at statement 26279
/*
 * OP_LOAD_S	28	129	15768
 * OP_EQ_S	15768	3693	15769
 * OP_IFNOT	15769	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	12064	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	15765	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	15765	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	350	0
 * OP_ADDRESS	350	201	15770
 * OP_STOREP_ENT	28	15770	0
 * OP_ADDRESS	350	103	15771
 * OP_STOREP_F	230	15771	0
 * OP_ADDRESS	350	104	15772
 * OP_STOREP_F	239	15772	0
 * OP_ADDRESS	350	133	15773
 * OP_STOREP_F	341	15773	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	12106	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	15762	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	350	113	15774
 * OP_MUL_VF	15765	740	15777
 * OP_STOREP_V	15777	15774	0
 * OP_ADDRESS	350	117	15780
 * OP_LOAD_V	350	113	15783
 * OP_STORE_V	15783	4	0
 * OP_CALL1	495	0	0
 * OP_STOREP_V	1	15780	0
 * OP_ADDRESS	350	150	15786
 * OP_ADD_F	31	230	15787
 * OP_STOREP_F	15787	15786	0
 * OP_ADDRESS	350	148	15788
 * OP_STOREP_FNC	521	15788	0
 * OP_ADDRESS	350	146	15789
 * OP_STOREP_FNC	15732	15789	0
 * OP_DONE	0	0	0
 */

void (vector globaldef5434, vector globaldef5438) LaunchLaser = {

   if ( (self.classname == "monster_enforcer") ) {

      sound (self,CHAN_WEAPON,globaldef3603,TRUE,ATTN_NORM);

   }
   globaldef5438 = globaldef442 (globaldef5438);
   newmis = spawn ();
   newmis.globaldef179 = self;
   newmis.movetype = MOVETYPE_FLY;
   newmis.solid = SOLID_BBOX;
   newmis.globaldef111 = EF_DIMLIGHT;
   setmodel (newmis,globaldef3606);
   globaldef438 (newmis,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (newmis,globaldef5434);
   newmis.velocity = (globaldef5438 * globaldef723);
   newmis.angles = globaldef478 (newmis.velocity);
   newmis.nextthink = (time + MOVETYPE_FLY);
   newmis.think = globaldef504;
   newmis.globaldef124 = globaldef5429;

};

void () enforcer_fire;

// function enforcer_fire
// function number 2073 begins at statement 26327
/*
 * OP_ADDRESS	28	133	15794
 * OP_LOAD_F	28	133	15795
 * OP_BITOR	15795	339	15796
 * OP_STOREP_F	15796	15794	0
 * OP_LOAD_V	28	117	15797
 * OP_STORE_V	15797	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	15800
 * OP_MUL_VF	59	309	15803
 * OP_ADD_V	15800	15803	15806
 * OP_MUL_VF	65	15809	15810
 * OP_ADD_V	15806	15810	15813
 * OP_ADD_V	15813	5392	15816
 * OP_STORE_V	15816	15791	0
 * OP_STORE_V	15791	4	0
 * OP_LOAD_ENT	28	181	15819
 * OP_LOAD_V	15819	105	15820
 * OP_LOAD_V	28	105	15823
 * OP_SUB_V	15820	15823	15826
 * OP_STORE_V	15826	7	0
 * OP_CALL2	12060	0	0
 * OP_DONE	0	0	0
 */

void () enforcer_fire = {

   local vector globaldef5443;

   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);
   makevectors (self.angles);
   globaldef5443 = (((self.origin + (v_forward * SVC_INTERMISSION)) + (v_right * globaldef5447)) + globaldef2037);
   globaldef3601 (globaldef5443,(self.enemy.origin - self.origin));

};
float globaldef5447 /* = 8.500 */;

void () enf_stand1;

// function enf_stand1
// function number 2074 begins at statement 26349
/*
 * OP_STATE	213	15830	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand1 = [ 0.000, globaldef5449 ] {

   globaldef1709 ();

};

void () enf_stand2;

// function enf_stand2
// function number 2075 begins at statement 26352
/*
 * OP_STATE	214	15831	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand2 = [ 1.000, globaldef5450 ] {

   globaldef1709 ();

};

void () enf_stand3;

// function enf_stand3
// function number 2076 begins at statement 26355
/*
 * OP_STATE	216	15832	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand3 = [ 2.000, globaldef5451 ] {

   globaldef1709 ();

};

void () enf_stand4;

// function enf_stand4
// function number 2077 begins at statement 26358
/*
 * OP_STATE	228	15833	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand4 = [ 3.000, globaldef5452 ] {

   globaldef1709 ();

};

void () enf_stand5;

// function enf_stand5
// function number 2078 begins at statement 26361
/*
 * OP_STATE	229	15834	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand5 = [ 4.000, globaldef5453 ] {

   globaldef1709 ();

};

void () enf_stand6;

// function enf_stand6
// function number 2079 begins at statement 26364
/*
 * OP_STATE	230	15835	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand6 = [ 5.000, globaldef5454 ] {

   globaldef1709 ();

};

void () enf_stand7;

// function enf_stand7
// function number 2080 begins at statement 26367
/*
 * OP_STATE	231	15829	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand7 = [ 6.000, globaldef5448 ] {

   globaldef1709 ();

};

void () enf_walk1;

// function enf_walk1
// function number 2081 begins at statement 26370
/*
 * OP_STATE	232	15837	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	15838
 * OP_IFNOT	15838	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12307	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk1 = [ 7.000, globaldef5456 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef3655,TRUE,ATTN_IDLE);

   }
   globaldef1702 (FL_SWIM);

};

void () enf_walk2;

// function enf_walk2
// function number 2082 begins at statement 26383
/*
 * OP_STATE	217	15839	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk2 = [ 8.000, globaldef5457 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () enf_walk3;

// function enf_walk3
// function number 2083 begins at statement 26387
/*
 * OP_STATE	234	15840	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk3 = [ 9.000, globaldef5458 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () enf_walk4;

// function enf_walk4
// function number 2084 begins at statement 26391
/*
 * OP_STATE	235	15841	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk4 = [ 10.000, globaldef5459 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () enf_walk5;

// function enf_walk5
// function number 2085 begins at statement 26395
/*
 * OP_STATE	236	15842	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk5 = [ 11.000, globaldef5460 ] {

   globaldef1702 (TRUE);

};

void () enf_walk6;

// function enf_walk6
// function number 2086 begins at statement 26399
/*
 * OP_STATE	791	15843	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk6 = [ 12.000, globaldef5461 ] {

   globaldef1702 (FL_SWIM);

};

void () enf_walk7;

// function enf_walk7
// function number 2087 begins at statement 26403
/*
 * OP_STATE	792	15844	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk7 = [ 13.000, globaldef5462 ] {

   globaldef1702 (FL_SWIM);

};

void () enf_walk8;

// function enf_walk8
// function number 2088 begins at statement 26407
/*
 * OP_STATE	5693	15845	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk8 = [ 14.000, globaldef5463 ] {

   globaldef1702 (TRUE);

};

void () enf_walk9;

// function enf_walk9
// function number 2089 begins at statement 26411
/*
 * OP_STATE	765	15846	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk9 = [ 15.000, globaldef5464 ] {

   globaldef1702 (FL_SWIM);

};

void () enf_walk10;

// function enf_walk10
// function number 2090 begins at statement 26415
/*
 * OP_STATE	218	15847	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk10 = [ 16.000, globaldef5465 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () enf_walk11;

// function enf_walk11
// function number 2091 begins at statement 26419
/*
 * OP_STATE	6892	15848	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk11 = [ 17.000, globaldef5466 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () enf_walk12;

// function enf_walk12
// function number 2092 begins at statement 26423
/*
 * OP_STATE	6133	15849	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk12 = [ 18.000, globaldef5467 ] {

   globaldef1702 (TRUE);

};

void () enf_walk13;

// function enf_walk13
// function number 2093 begins at statement 26427
/*
 * OP_STATE	6895	15850	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk13 = [ 19.000, globaldef5468 ] {

   globaldef1702 (FL_SWIM);

};

void () enf_walk14;

// function enf_walk14
// function number 2094 begins at statement 26431
/*
 * OP_STATE	2323	15851	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk14 = [ 20.000, globaldef5469 ] {

   globaldef1702 (MOVETYPE_WALK);

};

void () enf_walk15;

// function enf_walk15
// function number 2095 begins at statement 26435
/*
 * OP_STATE	12465	15852	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk15 = [ 21.000, globaldef5470 ] {

   globaldef1702 (MOVETYPE_STEP);

};

void () enf_walk16;

// function enf_walk16
// function number 2096 begins at statement 26439
/*
 * OP_STATE	12467	15836	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk16 = [ 22.000, globaldef5455 ] {

   globaldef1702 (FL_SWIM);

};

void () enf_run1;

// function enf_run1
// function number 2097 begins at statement 26443
/*
 * OP_STATE	304	15854	0
 * OP_CALL0	457	0	0
 * OP_LT	1	3267	15855
 * OP_IFNOT	15855	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12307	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	6133	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run1 = [ 23.000, globaldef5472 ] {

   if ( (globaldef440 () < globaldef1553) ) {

      sound (self,CHAN_VOICE,globaldef3655,TRUE,ATTN_IDLE);

   }
   globaldef1734 (globaldef2221);

};

void () enf_run2;

// function enf_run2
// function number 2098 begins at statement 26456
/*
 * OP_STATE	736	15856	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run2 = [ 24.000, globaldef5473 ] {

   globaldef1734 (globaldef2136);

};

void () enf_run3;

// function enf_run3
// function number 2099 begins at statement 26460
/*
 * OP_STATE	305	15857	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run3 = [ 25.000, globaldef5474 ] {

   globaldef1734 (MOVETYPE_PUSH);

};

void () enf_run4;

// function enf_run4
// function number 2100 begins at statement 26464
/*
 * OP_STATE	306	15858	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run4 = [ 26.000, globaldef5475 ] {

   globaldef1734 (globaldef774);

};

void () enf_run5;

// function enf_run5
// function number 2101 begins at statement 26468
/*
 * OP_STATE	307	15859	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run5 = [ 27.000, globaldef5476 ] {

   globaldef1734 (globaldef2136);

};

void () enf_run6;

// function enf_run6
// function number 2102 begins at statement 26472
/*
 * OP_STATE	308	15860	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run6 = [ 28.000, globaldef5477 ] {

   globaldef1734 (globaldef2136);

};

void () enf_run7;

// function enf_run7
// function number 2103 begins at statement 26476
/*
 * OP_STATE	9664	15861	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run7 = [ 29.000, globaldef5478 ] {

   globaldef1734 (MOVETYPE_PUSH);

};

void () enf_run8;

// function enf_run8
// function number 2104 begins at statement 26480
/*
 * OP_STATE	309	15853	0
 * OP_STORE_V	236	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run8 = [ 30.000, globaldef5471 ] {

   globaldef1734 (MOVETYPE_BOUNCEMISSILE);

};

void () enf_atk1;

// function enf_atk1
// function number 2105 begins at statement 26484
/*
 * OP_STATE	310	15863	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk1 = [ 31.000, globaldef5480 ] {

   globaldef1533 ();

};

void () enf_atk2;

// function enf_atk2
// function number 2106 begins at statement 26487
/*
 * OP_STATE	219	15864	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk2 = [ 32.000, globaldef5481 ] {

   globaldef1533 ();

};

void () enf_atk3;

// function enf_atk3
// function number 2107 begins at statement 26490
/*
 * OP_STATE	312	15865	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk3 = [ 33.000, globaldef5482 ] {

   globaldef1533 ();

};

void () enf_atk4;

// function enf_atk4
// function number 2108 begins at statement 26493
/*
 * OP_STATE	9671	15866	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk4 = [ 34.000, globaldef5483 ] {

   globaldef1533 ();

};

void () enf_atk5;

// function enf_atk5
// function number 2109 begins at statement 26496
/*
 * OP_STATE	5878	15867	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk5 = [ 35.000, globaldef5484 ] {

   globaldef1533 ();

};

void () enf_atk6;

// function enf_atk6
// function number 2110 begins at statement 26499
/*
 * OP_STATE	9655	15868	0
 * OP_CALL0	15790	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk6 = [ 36.000, globaldef5485 ] {

   globaldef5442 ();

};

void () enf_atk7;

// function enf_atk7
// function number 2111 begins at statement 26502
/*
 * OP_STATE	9657	15869	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk7 = [ 37.000, globaldef5486 ] {

   globaldef1533 ();

};

void () enf_atk8;

// function enf_atk8
// function number 2112 begins at statement 26505
/*
 * OP_STATE	9659	15870	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk8 = [ 38.000, globaldef5487 ] {

   globaldef1533 ();

};

void () enf_atk9;

// function enf_atk9
// function number 2113 begins at statement 26508
/*
 * OP_STATE	5878	15871	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk9 = [ 35.000, globaldef5488 ] {

   globaldef1533 ();

};

void () enf_atk10;

// function enf_atk10
// function number 2114 begins at statement 26511
/*
 * OP_STATE	9655	15872	0
 * OP_CALL0	15790	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk10 = [ 36.000, globaldef5489 ] {

   globaldef5442 ();

};

void () enf_atk11;

// function enf_atk11
// function number 2115 begins at statement 26514
/*
 * OP_STATE	9657	15873	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk11 = [ 37.000, globaldef5490 ] {

   globaldef1533 ();

};

void () enf_atk12;

// function enf_atk12
// function number 2116 begins at statement 26517
/*
 * OP_STATE	9659	15874	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk12 = [ 38.000, globaldef5491 ] {

   globaldef1533 ();

};

void () enf_atk13;

// function enf_atk13
// function number 2117 begins at statement 26520
/*
 * OP_STATE	9661	15875	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk13 = [ 39.000, globaldef5492 ] {

   globaldef1533 ();

};

void () enf_atk14;

// function enf_atk14
// function number 2118 begins at statement 26523
/*
 * OP_STATE	746	15853	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	15862	4	0
 * OP_CALL1	3170	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk14 = [ 40.000, globaldef5471 ] {

   globaldef1533 ();
   globaldef1520 (globaldef5479);

};

void () enf_paina1;

// function enf_paina1
// function number 2119 begins at statement 26528
/*
 * OP_STATE	9936	15877	0
 * OP_DONE	0	0	0
 */

void () enf_paina1 = [ 66.000, globaldef5494 ] {


};

void () enf_paina2;

// function enf_paina2
// function number 2120 begins at statement 26530
/*
 * OP_STATE	9938	15878	0
 * OP_DONE	0	0	0
 */

void () enf_paina2 = [ 67.000, globaldef5495 ] {


};

void () enf_paina3;

// function enf_paina3
// function number 2121 begins at statement 26532
/*
 * OP_STATE	8193	15879	0
 * OP_DONE	0	0	0
 */

void () enf_paina3 = [ 68.000, globaldef5496 ] {


};

void () enf_paina4;

// function enf_paina4
// function number 2122 begins at statement 26534
/*
 * OP_STATE	8196	15853	0
 * OP_DONE	0	0	0
 */

void () enf_paina4 = [ 69.000, globaldef5471 ] {


};

void () enf_painb1;

// function enf_painb1
// function number 2123 begins at statement 26536
/*
 * OP_STATE	1536	15881	0
 * OP_DONE	0	0	0
 */

void () enf_painb1 = [ 70.000, globaldef5498 ] {


};

void () enf_painb2;

// function enf_painb2
// function number 2124 begins at statement 26538
/*
 * OP_STATE	8201	15882	0
 * OP_DONE	0	0	0
 */

void () enf_painb2 = [ 71.000, globaldef5499 ] {


};

void () enf_painb3;

// function enf_painb3
// function number 2125 begins at statement 26540
/*
 * OP_STATE	9943	15883	0
 * OP_DONE	0	0	0
 */

void () enf_painb3 = [ 72.000, globaldef5500 ] {


};

void () enf_painb4;

// function enf_painb4
// function number 2126 begins at statement 26542
/*
 * OP_STATE	5487	15884	0
 * OP_DONE	0	0	0
 */

void () enf_painb4 = [ 73.000, globaldef5501 ] {


};

void () enf_painb5;

// function enf_painb5
// function number 2127 begins at statement 26544
/*
 * OP_STATE	9946	15853	0
 * OP_DONE	0	0	0
 */

void () enf_painb5 = [ 74.000, globaldef5471 ] {


};

void () enf_painc1;

// function enf_painc1
// function number 2128 begins at statement 26546
/*
 * OP_STATE	9173	15886	0
 * OP_DONE	0	0	0
 */

void () enf_painc1 = [ 75.000, globaldef5503 ] {


};

void () enf_painc2;

// function enf_painc2
// function number 2129 begins at statement 26548
/*
 * OP_STATE	9949	15887	0
 * OP_DONE	0	0	0
 */

void () enf_painc2 = [ 76.000, globaldef5504 ] {


};

void () enf_painc3;

// function enf_painc3
// function number 2130 begins at statement 26550
/*
 * OP_STATE	9951	15888	0
 * OP_DONE	0	0	0
 */

void () enf_painc3 = [ 77.000, globaldef5505 ] {


};

void () enf_painc4;

// function enf_painc4
// function number 2131 begins at statement 26552
/*
 * OP_STATE	9953	15889	0
 * OP_DONE	0	0	0
 */

void () enf_painc4 = [ 78.000, globaldef5506 ] {


};

void () enf_painc5;

// function enf_painc5
// function number 2132 begins at statement 26554
/*
 * OP_STATE	9955	15890	0
 * OP_DONE	0	0	0
 */

void () enf_painc5 = [ 79.000, globaldef5507 ] {


};

void () enf_painc6;

// function enf_painc6
// function number 2133 begins at statement 26556
/*
 * OP_STATE	2805	15891	0
 * OP_DONE	0	0	0
 */

void () enf_painc6 = [ 80.000, globaldef5508 ] {


};

void () enf_painc7;

// function enf_painc7
// function number 2134 begins at statement 26558
/*
 * OP_STATE	8204	15892	0
 * OP_DONE	0	0	0
 */

void () enf_painc7 = [ 81.000, globaldef5509 ] {


};

void () enf_painc8;

// function enf_painc8
// function number 2135 begins at statement 26560
/*
 * OP_STATE	9959	15853	0
 * OP_DONE	0	0	0
 */

void () enf_painc8 = [ 82.000, globaldef5471 ] {


};

void () enf_paind1;

// function enf_paind1
// function number 2136 begins at statement 26562
/*
 * OP_STATE	9961	15894	0
 * OP_DONE	0	0	0
 */

void () enf_paind1 = [ 83.000, globaldef5511 ] {


};

void () enf_paind2;

// function enf_paind2
// function number 2137 begins at statement 26564
/*
 * OP_STATE	7694	15895	0
 * OP_DONE	0	0	0
 */

void () enf_paind2 = [ 84.000, globaldef5512 ] {


};

void () enf_paind3;

// function enf_paind3
// function number 2138 begins at statement 26566
/*
 * OP_STATE	9963	15896	0
 * OP_DONE	0	0	0
 */

void () enf_paind3 = [ 85.000, globaldef5513 ] {


};

void () enf_paind4;

// function enf_paind4
// function number 2139 begins at statement 26568
/*
 * OP_STATE	9965	15897	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind4 = [ 86.000, globaldef5514 ] {

   globaldef1700 (FL_SWIM);

};

void () enf_paind5;

// function enf_paind5
// function number 2140 begins at statement 26572
/*
 * OP_STATE	9967	15898	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind5 = [ 87.000, globaldef5515 ] {

   globaldef1700 (TRUE);

};

void () enf_paind6;

// function enf_paind6
// function number 2141 begins at statement 26576
/*
 * OP_STATE	9969	15899	0
 * OP_DONE	0	0	0
 */

void () enf_paind6 = [ 88.000, globaldef5516 ] {


};

void () enf_paind7;

// function enf_paind7
// function number 2142 begins at statement 26578
/*
 * OP_STATE	9971	15900	0
 * OP_DONE	0	0	0
 */

void () enf_paind7 = [ 89.000, globaldef5517 ] {


};

void () enf_paind8;

// function enf_paind8
// function number 2143 begins at statement 26580
/*
 * OP_STATE	2658	15901	0
 * OP_DONE	0	0	0
 */

void () enf_paind8 = [ 90.000, globaldef5518 ] {


};

void () enf_paind9;

// function enf_paind9
// function number 2144 begins at statement 26582
/*
 * OP_STATE	9974	15902	0
 * OP_DONE	0	0	0
 */

void () enf_paind9 = [ 91.000, globaldef5519 ] {


};

void () enf_paind10;

// function enf_paind10
// function number 2145 begins at statement 26584
/*
 * OP_STATE	9976	15903	0
 * OP_DONE	0	0	0
 */

void () enf_paind10 = [ 92.000, globaldef5520 ] {


};

void () enf_paind11;

// function enf_paind11
// function number 2146 begins at statement 26586
/*
 * OP_STATE	9978	15904	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind11 = [ 93.000, globaldef5521 ] {

   globaldef1700 (TRUE);

};

void () enf_paind12;

// function enf_paind12
// function number 2147 begins at statement 26590
/*
 * OP_STATE	9979	15905	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind12 = [ 94.000, globaldef5522 ] {

   globaldef1700 (TRUE);

};

void () enf_paind13;

// function enf_paind13
// function number 2148 begins at statement 26594
/*
 * OP_STATE	9981	15906	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind13 = [ 95.000, globaldef5523 ] {

   globaldef1700 (TRUE);

};

void () enf_paind14;

// function enf_paind14
// function number 2149 begins at statement 26598
/*
 * OP_STATE	9983	15907	0
 * OP_DONE	0	0	0
 */

void () enf_paind14 = [ 96.000, globaldef5524 ] {


};

void () enf_paind15;

// function enf_paind15
// function number 2150 begins at statement 26600
/*
 * OP_STATE	9985	15908	0
 * OP_DONE	0	0	0
 */

void () enf_paind15 = [ 97.000, globaldef5525 ] {


};

void () enf_paind16;

// function enf_paind16
// function number 2151 begins at statement 26602
/*
 * OP_STATE	9987	15909	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind16 = [ 98.000, globaldef5526 ] {

   globaldef1698 (TRUE);

};

void () enf_paind17;

// function enf_paind17
// function number 2152 begins at statement 26606
/*
 * OP_STATE	9989	15910	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind17 = [ 99.000, globaldef5527 ] {

   globaldef1698 (TRUE);

};

void () enf_paind18;

// function enf_paind18
// function number 2153 begins at statement 26610
/*
 * OP_STATE	1997	15911	0
 * OP_DONE	0	0	0
 */

void () enf_paind18 = [ 100.000, globaldef5528 ] {


};

void () enf_paind19;

// function enf_paind19
// function number 2154 begins at statement 26612
/*
 * OP_STATE	8107	15853	0
 * OP_DONE	0	0	0
 */

void () enf_paind19 = [ 101.000, globaldef5471 ] {


};

void (entity globaldef5530, float globaldef5531) enf_pain;

// function enf_pain
// function number 2155 begins at statement 26614
/*
 * OP_CALL0	457	0	0
 * OP_STORE_F	1	15915	0
 * OP_LOAD_F	28	379	15916
 * OP_GT	15916	31	15917
 * OP_IFNOT	15917	2	0
 * OP_RETURN	0	0	0
 * OP_LT	15915	539	15918
 * OP_IFNOT	15918	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12303	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12305	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LT	15915	3267	15919
 * OP_IFNOT	15919	6	0
 * OP_ADDRESS	28	379	15920
 * OP_ADD_F	31	214	15921
 * OP_STOREP_F	15921	15920	0
 * OP_CALL0	15876	0	0
 * OP_GOTO	19	0	0
 * OP_LT	15915	1644	15922
 * OP_IFNOT	15922	6	0
 * OP_ADDRESS	28	379	15923
 * OP_ADD_F	31	214	15924
 * OP_STOREP_F	15924	15923	0
 * OP_CALL0	15880	0	0
 * OP_GOTO	12	0	0
 * OP_LT	15915	5599	15925
 * OP_IFNOT	15925	6	0
 * OP_ADDRESS	28	379	15926
 * OP_ADD_F	31	214	15927
 * OP_STOREP_F	15927	15926	0
 * OP_CALL0	15885	0	0
 * OP_GOTO	5	0	0
 * OP_ADDRESS	28	379	15928
 * OP_ADD_F	31	216	15929
 * OP_STOREP_F	15929	15928	0
 * OP_CALL0	15893	0	0
 * OP_DONE	0	0	0
 */

void (entity globaldef5530, float globaldef5531) enf_pain = {

   local float globaldef5532;

   globaldef5532 = globaldef440 ();
   if ( (self.globaldef362 > time) ) {

      return ;

   }
   if ( (globaldef5532 < globaldef522) ) {

      sound (self,CHAN_VOICE,globaldef3651,TRUE,ATTN_NORM);

   } else {

      sound (self,CHAN_VOICE,globaldef3653,TRUE,ATTN_NORM);

   }
   if ( (globaldef5532 < globaldef1553) ) {

      self.globaldef362 = (time + TRUE);
      globaldef5493 ();

   } else {

      if ( (globaldef5532 < globaldef1300) ) {

         self.globaldef362 = (time + TRUE);
         globaldef5497 ();

      } else {

         if ( (globaldef5532 < globaldef2123) ) {

            self.globaldef362 = (time + TRUE);
            globaldef5502 ();

         } else {

            self.globaldef362 = (time + FL_SWIM);
            globaldef5510 ();

         }

      }

   }

};

void () enf_die1;

// function enf_die1
// function number 2156 begins at statement 26661
/*
 * OP_STATE	9993	15931	0
 * OP_DONE	0	0	0
 */

void () enf_die1 = [ 41.000, globaldef5534 ] {


};

void () enf_die2;

// function enf_die2
// function number 2157 begins at statement 26663
/*
 * OP_STATE	9995	15932	0
 * OP_DONE	0	0	0
 */

void () enf_die2 = [ 42.000, globaldef5535 ] {


};

void () enf_die3;

// function enf_die3
// function number 2158 begins at statement 26665
/*
 * OP_STATE	9997	15933	0
 * OP_ADDRESS	28	104	15934
 * OP_STOREP_F	237	15934	0
 * OP_ADDRESS	28	161	15935
 * OP_STOREP_F	230	15935	0
 * OP_CALL0	5177	0	0
 * OP_DONE	0	0	0
 */

void () enf_die3 = [ 43.000, globaldef5536 ] {

   self.solid = SOLID_NOT;
   self.globaldef139 = MOVETYPE_FLY;
   globaldef1980 ();

};

void () enf_die4;

// function enf_die4
// function number 2159 begins at statement 26672
/*
 * OP_STATE	9999	15936	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die4 = [ 44.000, globaldef5537 ] {

   globaldef1694 (globaldef2136);

};

void () enf_die5;

// function enf_die5
// function number 2160 begins at statement 26676
/*
 * OP_STATE	2598	15937	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die5 = [ 45.000, globaldef5538 ] {

   globaldef1694 (FL_SWIM);

};

void () enf_die6;

// function enf_die6
// function number 2161 begins at statement 26680
/*
 * OP_STATE	10002	15938	0
 * OP_DONE	0	0	0
 */

void () enf_die6 = [ 46.000, globaldef5539 ] {


};

void () enf_die7;

// function enf_die7
// function number 2162 begins at statement 26682
/*
 * OP_STATE	10004	15939	0
 * OP_DONE	0	0	0
 */

void () enf_die7 = [ 47.000, globaldef5540 ] {


};

void () enf_die8;

// function enf_die8
// function number 2163 begins at statement 26684
/*
 * OP_STATE	10006	15940	0
 * OP_DONE	0	0	0
 */

void () enf_die8 = [ 48.000, globaldef5541 ] {


};

void () enf_die9;

// function enf_die9
// function number 2164 begins at statement 26686
/*
 * OP_STATE	10008	15941	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die9 = [ 49.000, globaldef5542 ] {

   globaldef1694 (MOVETYPE_WALK);

};

void () enf_die10;

// function enf_die10
// function number 2165 begins at statement 26690
/*
 * OP_STATE	1470	15942	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die10 = [ 50.000, globaldef5543 ] {

   globaldef1694 (MOVETYPE_FLY);

};

void () enf_die11;

// function enf_die11
// function number 2166 begins at statement 26694
/*
 * OP_STATE	9911	15943	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die11 = [ 51.000, globaldef5544 ] {

   globaldef1694 (MOVETYPE_FLY);

};

void () enf_die12;

// function enf_die12
// function number 2167 begins at statement 26698
/*
 * OP_STATE	9913	15944	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die12 = [ 52.000, globaldef5545 ] {

   globaldef1694 (MOVETYPE_FLY);

};

void () enf_die13;

// function enf_die13
// function number 2168 begins at statement 26702
/*
 * OP_STATE	9915	15945	0
 * OP_DONE	0	0	0
 */

void () enf_die13 = [ 53.000, globaldef5546 ] {


};

void () enf_die14;

// function enf_die14
// function number 2169 begins at statement 26704
/*
 * OP_STATE	9917	15945	0
 * OP_DONE	0	0	0
 */

void () enf_die14 = [ 54.000, globaldef5546 ] {


};

void () enf_fdie1;

// function enf_fdie1
// function number 2170 begins at statement 26706
/*
 * OP_STATE	9919	15947	0
 * OP_DONE	0	0	0
 */

void () enf_fdie1 = [ 55.000, globaldef5548 ] {


};

void () enf_fdie2;

// function enf_fdie2
// function number 2171 begins at statement 26708
/*
 * OP_STATE	9921	15948	0
 * OP_DONE	0	0	0
 */

void () enf_fdie2 = [ 56.000, globaldef5549 ] {


};

void () enf_fdie3;

// function enf_fdie3
// function number 2172 begins at statement 26710
/*
 * OP_STATE	9923	15949	0
 * OP_ADDRESS	28	104	15950
 * OP_STOREP_F	237	15950	0
 * OP_ADDRESS	28	161	15951
 * OP_STOREP_F	230	15951	0
 * OP_CALL0	5177	0	0
 * OP_DONE	0	0	0
 */

void () enf_fdie3 = [ 57.000, globaldef5550 ] {

   self.solid = SOLID_NOT;
   self.globaldef139 = MOVETYPE_FLY;
   globaldef1980 ();

};

void () enf_fdie4;

// function enf_fdie4
// function number 2173 begins at statement 26717
/*
 * OP_STATE	9925	15952	0
 * OP_DONE	0	0	0
 */

void () enf_fdie4 = [ 58.000, globaldef5551 ] {


};

void () enf_fdie5;

// function enf_fdie5
// function number 2174 begins at statement 26719
/*
 * OP_STATE	2783	15953	0
 * OP_DONE	0	0	0
 */

void () enf_fdie5 = [ 59.000, globaldef5552 ] {


};

void () enf_fdie6;

// function enf_fdie6
// function number 2175 begins at statement 26721
/*
 * OP_STATE	2019	15954	0
 * OP_DONE	0	0	0
 */

void () enf_fdie6 = [ 60.000, globaldef5553 ] {


};

void () enf_fdie7;

// function enf_fdie7
// function number 2176 begins at statement 26723
/*
 * OP_STATE	9928	15955	0
 * OP_DONE	0	0	0
 */

void () enf_fdie7 = [ 61.000, globaldef5554 ] {


};

void () enf_fdie8;

// function enf_fdie8
// function number 2177 begins at statement 26725
/*
 * OP_STATE	9930	15956	0
 * OP_DONE	0	0	0
 */

void () enf_fdie8 = [ 62.000, globaldef5555 ] {


};

void () enf_fdie9;

// function enf_fdie9
// function number 2178 begins at statement 26727
/*
 * OP_STATE	6707	15957	0
 * OP_DONE	0	0	0
 */

void () enf_fdie9 = [ 63.000, globaldef5556 ] {


};

void () enf_fdie10;

// function enf_fdie10
// function number 2179 begins at statement 26729
/*
 * OP_STATE	220	15958	0
 * OP_DONE	0	0	0
 */

void () enf_fdie10 = [ 64.000, globaldef5557 ] {


};

void () enf_fdie11;

// function enf_fdie11
// function number 2180 begins at statement 26731
/*
 * OP_STATE	9934	15958	0
 * OP_DONE	0	0	0
 */

void () enf_fdie11 = [ 65.000, globaldef5557 ] {


};

void () enf_die;

// function enf_die
// function number 2181 begins at statement 26733
/*
 * OP_LOAD_F	28	152	15960
 * OP_LT	15960	13516	15961
 * OP_IFNOT	15961	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	15962	4	0
 * OP_LOAD_F	28	152	15963
 * OP_STORE_V	15963	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	15964
 * OP_STORE_V	15964	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	15965
 * OP_STORE_V	15965	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	15966
 * OP_STORE_V	15966	7	0
 * OP_CALL2	9771	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12306	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	15967
 * OP_IFNOT	15967	3	0
 * OP_CALL0	15930	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	15946	0	0
 * OP_DONE	0	0	0
 */

void () enf_die = {

   if ( (self.globaldef130 < globaldef4288) ) {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NORM);
      globaldef3189 (globaldef5559,self.globaldef130);
      globaldef3185 (globaldef2432,self.globaldef130);
      globaldef3185 (globaldef2433,self.globaldef130);
      globaldef3185 (globaldef2434,self.globaldef130);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef3654,TRUE,ATTN_NORM);
   if ( (globaldef440 () > globaldef522) ) {

      globaldef5533 ();

   } else {

      globaldef5547 ();

   }

};
string globaldef5559 /* = "progs/h_mega.mdl" */;

void () monster_enforcer;

// function monster_enforcer
// function number 2182 begins at statement 26772
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	15969	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	15962	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	12106	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	12306	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12064	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12107	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12307	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12303	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12305	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3697	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3699	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3701	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3702	4	0
 * OP_CALL1	511	0	0
 * OP_ADDRESS	28	104	15970
 * OP_STOREP_F	240	15970	0
 * OP_ADDRESS	28	103	15971
 * OP_STOREP_F	229	15971	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	15969	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	13346	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	152	15972
 * OP_STOREP_F	2805	15972	0
 * OP_ADDRESS	28	361	15973
 * OP_STOREP_FNC	15829	15973	0
 * OP_ADDRESS	28	362	15974
 * OP_STOREP_FNC	15836	15974	0
 * OP_ADDRESS	28	363	15975
 * OP_STOREP_FNC	15853	15975	0
 * OP_ADDRESS	28	366	15976
 * OP_STOREP_FNC	15912	15976	0
 * OP_ADDRESS	28	367	15977
 * OP_STOREP_FNC	15959	15977	0
 * OP_ADDRESS	28	364	15978
 * OP_STOREP_FNC	15862	15978	0
 * OP_CALL0	10107	0	0
 * OP_DONE	0	0	0
 */

void () monster_enforcer = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef493 (globaldef5561);
   globaldef493 (globaldef5559);
   globaldef493 (globaldef3606);
   globaldef494 (globaldef3654);
   globaldef494 (globaldef3603);
   globaldef494 (globaldef3607);
   globaldef494 (globaldef3655);
   globaldef494 (globaldef3651);
   globaldef494 (globaldef3653);
   globaldef494 ("enforcer/sight1.wav");
   globaldef494 ("enforcer/sight2.wav");
   globaldef494 ("enforcer/sight3.wav");
   globaldef494 ("enforcer/sight4.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef5561);
   globaldef438 (self,VEC_HULL_MIN,globaldef4167);
   self.globaldef130 = globaldef1439;
   self.globaldef344 = globaldef5448;
   self.globaldef345 = globaldef5455;
   self.globaldef346 = globaldef5471;
   self.globaldef349 = globaldef5529;
   self.globaldef350 = globaldef5558;
   self.globaldef347 = globaldef5479;
   globaldef3309 ();

};
