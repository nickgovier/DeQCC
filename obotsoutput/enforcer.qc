string globaldef005428 /* = "progs/shalrath.mdl" */;

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

   local vector org;

   if ( (other == self.owner) ) {

      return ;

   }
   if ( (pointcontents (self.origin) == CONTENT_SKY) ) {

      remove (self);
      return ;

   }
   sound (self,CHAN_WEAPON,globaldef003607,TRUE,ATTN_STATIC);
   org = (self.origin - (FL_CLIENT * normalize (self.velocity)));
   if ( other.health ) {

      func000254 (org,(self.velocity * globaldef001553),globaldef000748);
      T_Damage (other,self,self.owner,globaldef000748);

   } else {

      WriteByte (MSG_BROADCAST,globaldef000287);
      WriteByte (MSG_BROADCAST,TE_GUNSHOT);
      WriteCoord (MSG_BROADCAST,org);
      WriteCoord (MSG_BROADCAST,globaldef005432);
      WriteCoord (MSG_BROADCAST,globaldef005433);

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

void (vector globaldef005434, vector globaldef005438) LaunchLaser = {

   if ( (self.classname == globaldef001675) ) {

      sound (self,CHAN_WEAPON,globaldef003603,TRUE,ATTN_NORM);

   }
   globaldef005438 = normalize (globaldef005438);
   newmis = spawn ();
   newmis.owner = self;
   newmis.movetype = MOVETYPE_FLY;
   newmis.solid = SOLID_BBOX;
   newmis.effects = EF_DIMLIGHT;
   setmodel (newmis,globaldef003606);
   setsize (newmis,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (newmis,globaldef005434);
   newmis.velocity = (globaldef005438 * globaldef000723);
   newmis.angles = vectoangles (newmis.velocity);
   newmis.nextthink = (time + MOVETYPE_FLY);
   newmis.think = SUB_Remove;
   newmis.touch = Laser_Touch;

};

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

   local vector org;

   self.effects = (self.effects | EF_MUZZLEFLASH);
   makevectors (self.angles);
   org = (((self.origin + (v_forward * SVC_INTERMISSION)) + (v_right * globaldef005447)) + globaldef002037);
   LaunchLaser (org,(self.enemy.origin - self.origin));

};
float globaldef005447 /* = 8.500 */;

// function enf_stand1
// function number 2074 begins at statement 26349
/*
 * OP_STATE	213	15830	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand1 = [ 0.000, enf_stand2 ] {

   ai_stand ();

};

// function enf_stand2
// function number 2075 begins at statement 26352
/*
 * OP_STATE	214	15831	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand2 = [ 1.000, enf_stand3 ] {

   ai_stand ();

};

// function enf_stand3
// function number 2076 begins at statement 26355
/*
 * OP_STATE	216	15832	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand3 = [ 2.000, enf_stand4 ] {

   ai_stand ();

};

// function enf_stand4
// function number 2077 begins at statement 26358
/*
 * OP_STATE	228	15833	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand4 = [ 3.000, enf_stand5 ] {

   ai_stand ();

};

// function enf_stand5
// function number 2078 begins at statement 26361
/*
 * OP_STATE	229	15834	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand5 = [ 4.000, enf_stand6 ] {

   ai_stand ();

};

// function enf_stand6
// function number 2079 begins at statement 26364
/*
 * OP_STATE	230	15835	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand6 = [ 5.000, enf_stand7 ] {

   ai_stand ();

};

// function enf_stand7
// function number 2080 begins at statement 26367
/*
 * OP_STATE	231	15829	0
 * OP_CALL0	3802	0	0
 * OP_DONE	0	0	0
 */

void () enf_stand7 = [ 6.000, enf_stand1 ] {

   ai_stand ();

};

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

void () enf_walk1 = [ 7.000, enf_walk2 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef003655,TRUE,ATTN_IDLE);

   }
   ai_walk (FL_SWIM);

};

// function enf_walk2
// function number 2082 begins at statement 26383
/*
 * OP_STATE	217	15839	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk2 = [ 8.000, enf_walk3 ] {

   ai_walk (MOVETYPE_STEP);

};

// function enf_walk3
// function number 2083 begins at statement 26387
/*
 * OP_STATE	234	15840	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk3 = [ 9.000, enf_walk4 ] {

   ai_walk (MOVETYPE_STEP);

};

// function enf_walk4
// function number 2084 begins at statement 26391
/*
 * OP_STATE	235	15841	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk4 = [ 10.000, enf_walk5 ] {

   ai_walk (MOVETYPE_WALK);

};

// function enf_walk5
// function number 2085 begins at statement 26395
/*
 * OP_STATE	236	15842	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk5 = [ 11.000, enf_walk6 ] {

   ai_walk (TRUE);

};

// function enf_walk6
// function number 2086 begins at statement 26399
/*
 * OP_STATE	791	15843	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk6 = [ 12.000, enf_walk7 ] {

   ai_walk (FL_SWIM);

};

// function enf_walk7
// function number 2087 begins at statement 26403
/*
 * OP_STATE	792	15844	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk7 = [ 13.000, enf_walk8 ] {

   ai_walk (FL_SWIM);

};

// function enf_walk8
// function number 2088 begins at statement 26407
/*
 * OP_STATE	5693	15845	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk8 = [ 14.000, enf_walk9 ] {

   ai_walk (TRUE);

};

// function enf_walk9
// function number 2089 begins at statement 26411
/*
 * OP_STATE	765	15846	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk9 = [ 15.000, enf_walk10 ] {

   ai_walk (FL_SWIM);

};

// function enf_walk10
// function number 2090 begins at statement 26415
/*
 * OP_STATE	218	15847	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk10 = [ 16.000, enf_walk11 ] {

   ai_walk (MOVETYPE_STEP);

};

// function enf_walk11
// function number 2091 begins at statement 26419
/*
 * OP_STATE	6892	15848	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk11 = [ 17.000, enf_walk12 ] {

   ai_walk (MOVETYPE_STEP);

};

// function enf_walk12
// function number 2092 begins at statement 26423
/*
 * OP_STATE	6133	15849	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk12 = [ 18.000, enf_walk13 ] {

   ai_walk (TRUE);

};

// function enf_walk13
// function number 2093 begins at statement 26427
/*
 * OP_STATE	6895	15850	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk13 = [ 19.000, enf_walk14 ] {

   ai_walk (FL_SWIM);

};

// function enf_walk14
// function number 2094 begins at statement 26431
/*
 * OP_STATE	2323	15851	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk14 = [ 20.000, enf_walk15 ] {

   ai_walk (MOVETYPE_WALK);

};

// function enf_walk15
// function number 2095 begins at statement 26435
/*
 * OP_STATE	12465	15852	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk15 = [ 21.000, enf_walk16 ] {

   ai_walk (MOVETYPE_STEP);

};

// function enf_walk16
// function number 2096 begins at statement 26439
/*
 * OP_STATE	12467	15836	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3794	0	0
 * OP_DONE	0	0	0
 */

void () enf_walk16 = [ 22.000, enf_walk1 ] {

   ai_walk (FL_SWIM);

};

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

void () enf_run1 = [ 23.000, enf_run2 ] {

   if ( (random () < globaldef001553) ) {

      sound (self,CHAN_VOICE,globaldef003655,TRUE,ATTN_IDLE);

   }
   ai_run (globaldef002221);

};

// function enf_run2
// function number 2098 begins at statement 26456
/*
 * OP_STATE	736	15856	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run2 = [ 24.000, enf_run3 ] {

   ai_run (globaldef002136);

};

// function enf_run3
// function number 2099 begins at statement 26460
/*
 * OP_STATE	305	15857	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run3 = [ 25.000, enf_run4 ] {

   ai_run (MOVETYPE_PUSH);

};

// function enf_run4
// function number 2100 begins at statement 26464
/*
 * OP_STATE	306	15858	0
 * OP_STORE_V	791	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run4 = [ 26.000, enf_run5 ] {

   ai_run (globaldef000774);

};

// function enf_run5
// function number 2101 begins at statement 26468
/*
 * OP_STATE	307	15859	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run5 = [ 27.000, enf_run6 ] {

   ai_run (globaldef002136);

};

// function enf_run6
// function number 2102 begins at statement 26472
/*
 * OP_STATE	308	15860	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run6 = [ 28.000, enf_run7 ] {

   ai_run (globaldef002136);

};

// function enf_run7
// function number 2103 begins at statement 26476
/*
 * OP_STATE	9664	15861	0
 * OP_STORE_V	232	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run7 = [ 29.000, enf_run8 ] {

   ai_run (MOVETYPE_PUSH);

};

// function enf_run8
// function number 2104 begins at statement 26480
/*
 * OP_STATE	309	15853	0
 * OP_STORE_V	236	4	0
 * OP_CALL1	3873	0	0
 * OP_DONE	0	0	0
 */

void () enf_run8 = [ 30.000, enf_run1 ] {

   ai_run (MOVETYPE_BOUNCEMISSILE);

};

// function enf_atk1
// function number 2105 begins at statement 26484
/*
 * OP_STATE	310	15863	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk1 = [ 31.000, enf_atk2 ] {

   ai_face ();

};

// function enf_atk2
// function number 2106 begins at statement 26487
/*
 * OP_STATE	219	15864	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk2 = [ 32.000, enf_atk3 ] {

   ai_face ();

};

// function enf_atk3
// function number 2107 begins at statement 26490
/*
 * OP_STATE	312	15865	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk3 = [ 33.000, enf_atk4 ] {

   ai_face ();

};

// function enf_atk4
// function number 2108 begins at statement 26493
/*
 * OP_STATE	9671	15866	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk4 = [ 34.000, enf_atk5 ] {

   ai_face ();

};

// function enf_atk5
// function number 2109 begins at statement 26496
/*
 * OP_STATE	5878	15867	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk5 = [ 35.000, enf_atk6 ] {

   ai_face ();

};

// function enf_atk6
// function number 2110 begins at statement 26499
/*
 * OP_STATE	9655	15868	0
 * OP_CALL0	15790	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk6 = [ 36.000, enf_atk7 ] {

   enforcer_fire ();

};

// function enf_atk7
// function number 2111 begins at statement 26502
/*
 * OP_STATE	9657	15869	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk7 = [ 37.000, enf_atk8 ] {

   ai_face ();

};

// function enf_atk8
// function number 2112 begins at statement 26505
/*
 * OP_STATE	9659	15870	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk8 = [ 38.000, enf_atk9 ] {

   ai_face ();

};

// function enf_atk9
// function number 2113 begins at statement 26508
/*
 * OP_STATE	5878	15871	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk9 = [ 35.000, enf_atk10 ] {

   ai_face ();

};

// function enf_atk10
// function number 2114 begins at statement 26511
/*
 * OP_STATE	9655	15872	0
 * OP_CALL0	15790	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk10 = [ 36.000, enf_atk11 ] {

   enforcer_fire ();

};

// function enf_atk11
// function number 2115 begins at statement 26514
/*
 * OP_STATE	9657	15873	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk11 = [ 37.000, enf_atk12 ] {

   ai_face ();

};

// function enf_atk12
// function number 2116 begins at statement 26517
/*
 * OP_STATE	9659	15874	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk12 = [ 38.000, enf_atk13 ] {

   ai_face ();

};

// function enf_atk13
// function number 2117 begins at statement 26520
/*
 * OP_STATE	9661	15875	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk13 = [ 39.000, enf_atk14 ] {

   ai_face ();

};

// function enf_atk14
// function number 2118 begins at statement 26523
/*
 * OP_STATE	746	15853	0
 * OP_CALL0	3190	0	0
 * OP_STORE_V	15862	4	0
 * OP_CALL1	3170	0	0
 * OP_DONE	0	0	0
 */

void () enf_atk14 = [ 40.000, enf_run1 ] {

   ai_face ();
   SUB_CheckRefire (enf_atk1);

};

// function enf_paina1
// function number 2119 begins at statement 26528
/*
 * OP_STATE	9936	15877	0
 * OP_DONE	0	0	0
 */

void () enf_paina1 = [ 66.000, enf_paina2 ] {


};

// function enf_paina2
// function number 2120 begins at statement 26530
/*
 * OP_STATE	9938	15878	0
 * OP_DONE	0	0	0
 */

void () enf_paina2 = [ 67.000, enf_paina3 ] {


};

// function enf_paina3
// function number 2121 begins at statement 26532
/*
 * OP_STATE	8193	15879	0
 * OP_DONE	0	0	0
 */

void () enf_paina3 = [ 68.000, enf_paina4 ] {


};

// function enf_paina4
// function number 2122 begins at statement 26534
/*
 * OP_STATE	8196	15853	0
 * OP_DONE	0	0	0
 */

void () enf_paina4 = [ 69.000, enf_run1 ] {


};

// function enf_painb1
// function number 2123 begins at statement 26536
/*
 * OP_STATE	1536	15881	0
 * OP_DONE	0	0	0
 */

void () enf_painb1 = [ 70.000, enf_painb2 ] {


};

// function enf_painb2
// function number 2124 begins at statement 26538
/*
 * OP_STATE	8201	15882	0
 * OP_DONE	0	0	0
 */

void () enf_painb2 = [ 71.000, enf_painb3 ] {


};

// function enf_painb3
// function number 2125 begins at statement 26540
/*
 * OP_STATE	9943	15883	0
 * OP_DONE	0	0	0
 */

void () enf_painb3 = [ 72.000, enf_painb4 ] {


};

// function enf_painb4
// function number 2126 begins at statement 26542
/*
 * OP_STATE	5487	15884	0
 * OP_DONE	0	0	0
 */

void () enf_painb4 = [ 73.000, enf_painb5 ] {


};

// function enf_painb5
// function number 2127 begins at statement 26544
/*
 * OP_STATE	9946	15853	0
 * OP_DONE	0	0	0
 */

void () enf_painb5 = [ 74.000, enf_run1 ] {


};

// function enf_painc1
// function number 2128 begins at statement 26546
/*
 * OP_STATE	9173	15886	0
 * OP_DONE	0	0	0
 */

void () enf_painc1 = [ 75.000, enf_painc2 ] {


};

// function enf_painc2
// function number 2129 begins at statement 26548
/*
 * OP_STATE	9949	15887	0
 * OP_DONE	0	0	0
 */

void () enf_painc2 = [ 76.000, enf_painc3 ] {


};

// function enf_painc3
// function number 2130 begins at statement 26550
/*
 * OP_STATE	9951	15888	0
 * OP_DONE	0	0	0
 */

void () enf_painc3 = [ 77.000, enf_painc4 ] {


};

// function enf_painc4
// function number 2131 begins at statement 26552
/*
 * OP_STATE	9953	15889	0
 * OP_DONE	0	0	0
 */

void () enf_painc4 = [ 78.000, enf_painc5 ] {


};

// function enf_painc5
// function number 2132 begins at statement 26554
/*
 * OP_STATE	9955	15890	0
 * OP_DONE	0	0	0
 */

void () enf_painc5 = [ 79.000, enf_painc6 ] {


};

// function enf_painc6
// function number 2133 begins at statement 26556
/*
 * OP_STATE	2805	15891	0
 * OP_DONE	0	0	0
 */

void () enf_painc6 = [ 80.000, enf_painc7 ] {


};

// function enf_painc7
// function number 2134 begins at statement 26558
/*
 * OP_STATE	8204	15892	0
 * OP_DONE	0	0	0
 */

void () enf_painc7 = [ 81.000, enf_painc8 ] {


};

// function enf_painc8
// function number 2135 begins at statement 26560
/*
 * OP_STATE	9959	15853	0
 * OP_DONE	0	0	0
 */

void () enf_painc8 = [ 82.000, enf_run1 ] {


};

// function enf_paind1
// function number 2136 begins at statement 26562
/*
 * OP_STATE	9961	15894	0
 * OP_DONE	0	0	0
 */

void () enf_paind1 = [ 83.000, enf_paind2 ] {


};

// function enf_paind2
// function number 2137 begins at statement 26564
/*
 * OP_STATE	7694	15895	0
 * OP_DONE	0	0	0
 */

void () enf_paind2 = [ 84.000, enf_paind3 ] {


};

// function enf_paind3
// function number 2138 begins at statement 26566
/*
 * OP_STATE	9963	15896	0
 * OP_DONE	0	0	0
 */

void () enf_paind3 = [ 85.000, enf_paind4 ] {


};

// function enf_paind4
// function number 2139 begins at statement 26568
/*
 * OP_STATE	9965	15897	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind4 = [ 86.000, enf_paind5 ] {

   ai_painforward (FL_SWIM);

};

// function enf_paind5
// function number 2140 begins at statement 26572
/*
 * OP_STATE	9967	15898	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind5 = [ 87.000, enf_paind6 ] {

   ai_painforward (TRUE);

};

// function enf_paind6
// function number 2141 begins at statement 26576
/*
 * OP_STATE	9969	15899	0
 * OP_DONE	0	0	0
 */

void () enf_paind6 = [ 88.000, enf_paind7 ] {


};

// function enf_paind7
// function number 2142 begins at statement 26578
/*
 * OP_STATE	9971	15900	0
 * OP_DONE	0	0	0
 */

void () enf_paind7 = [ 89.000, enf_paind8 ] {


};

// function enf_paind8
// function number 2143 begins at statement 26580
/*
 * OP_STATE	2658	15901	0
 * OP_DONE	0	0	0
 */

void () enf_paind8 = [ 90.000, enf_paind9 ] {


};

// function enf_paind9
// function number 2144 begins at statement 26582
/*
 * OP_STATE	9974	15902	0
 * OP_DONE	0	0	0
 */

void () enf_paind9 = [ 91.000, enf_paind10 ] {


};

// function enf_paind10
// function number 2145 begins at statement 26584
/*
 * OP_STATE	9976	15903	0
 * OP_DONE	0	0	0
 */

void () enf_paind10 = [ 92.000, enf_paind11 ] {


};

// function enf_paind11
// function number 2146 begins at statement 26586
/*
 * OP_STATE	9978	15904	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind11 = [ 93.000, enf_paind12 ] {

   ai_painforward (TRUE);

};

// function enf_paind12
// function number 2147 begins at statement 26590
/*
 * OP_STATE	9979	15905	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind12 = [ 94.000, enf_paind13 ] {

   ai_painforward (TRUE);

};

// function enf_paind13
// function number 2148 begins at statement 26594
/*
 * OP_STATE	9981	15906	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3791	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind13 = [ 95.000, enf_paind14 ] {

   ai_painforward (TRUE);

};

// function enf_paind14
// function number 2149 begins at statement 26598
/*
 * OP_STATE	9983	15907	0
 * OP_DONE	0	0	0
 */

void () enf_paind14 = [ 96.000, enf_paind15 ] {


};

// function enf_paind15
// function number 2150 begins at statement 26600
/*
 * OP_STATE	9985	15908	0
 * OP_DONE	0	0	0
 */

void () enf_paind15 = [ 97.000, enf_paind16 ] {


};

// function enf_paind16
// function number 2151 begins at statement 26602
/*
 * OP_STATE	9987	15909	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind16 = [ 98.000, enf_paind17 ] {

   ai_pain (TRUE);

};

// function enf_paind17
// function number 2152 begins at statement 26606
/*
 * OP_STATE	9989	15910	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3789	0	0
 * OP_DONE	0	0	0
 */

void () enf_paind17 = [ 99.000, enf_paind18 ] {

   ai_pain (TRUE);

};

// function enf_paind18
// function number 2153 begins at statement 26610
/*
 * OP_STATE	1997	15911	0
 * OP_DONE	0	0	0
 */

void () enf_paind18 = [ 100.000, enf_paind19 ] {


};

// function enf_paind19
// function number 2154 begins at statement 26612
/*
 * OP_STATE	8107	15853	0
 * OP_DONE	0	0	0
 */

void () enf_paind19 = [ 101.000, enf_run1 ] {


};

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

void (entity globaldef005530, float globaldef005531) enf_pain = {

   local float r;

   r = random ();
   if ( (self.pain_finished > time) ) {

      return ;

   }
   if ( (r < globaldef000522) ) {

      sound (self,CHAN_VOICE,globaldef003651,TRUE,ATTN_NORM);

   } else {

      sound (self,CHAN_VOICE,globaldef003653,TRUE,ATTN_NORM);

   }
   if ( (r < globaldef001553) ) {

      self.pain_finished = (time + TRUE);
      enf_paina1 ();

   } else {

      if ( (r < globaldef001300) ) {

         self.pain_finished = (time + TRUE);
         enf_painb1 ();

      } else {

         if ( (r < globaldef002123) ) {

            self.pain_finished = (time + TRUE);
            enf_painc1 ();

         } else {

            self.pain_finished = (time + FL_SWIM);
            enf_paind1 ();

         }

      }

   }

};

// function enf_die1
// function number 2156 begins at statement 26661
/*
 * OP_STATE	9993	15931	0
 * OP_DONE	0	0	0
 */

void () enf_die1 = [ 41.000, enf_die2 ] {


};

// function enf_die2
// function number 2157 begins at statement 26663
/*
 * OP_STATE	9995	15932	0
 * OP_DONE	0	0	0
 */

void () enf_die2 = [ 42.000, enf_die3 ] {


};

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

void () enf_die3 = [ 43.000, enf_die4 ] {

   self.solid = SOLID_NOT;
   self.ammo_cells = MOVETYPE_FLY;
   func000244 ();

};

// function enf_die4
// function number 2159 begins at statement 26672
/*
 * OP_STATE	9999	15936	0
 * OP_STORE_V	5693	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die4 = [ 44.000, enf_die5 ] {

   ai_forward (globaldef002136);

};

// function enf_die5
// function number 2160 begins at statement 26676
/*
 * OP_STATE	2598	15937	0
 * OP_STORE_V	216	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die5 = [ 45.000, enf_die6 ] {

   ai_forward (FL_SWIM);

};

// function enf_die6
// function number 2161 begins at statement 26680
/*
 * OP_STATE	10002	15938	0
 * OP_DONE	0	0	0
 */

void () enf_die6 = [ 46.000, enf_die7 ] {


};

// function enf_die7
// function number 2162 begins at statement 26682
/*
 * OP_STATE	10004	15939	0
 * OP_DONE	0	0	0
 */

void () enf_die7 = [ 47.000, enf_die8 ] {


};

// function enf_die8
// function number 2163 begins at statement 26684
/*
 * OP_STATE	10006	15940	0
 * OP_DONE	0	0	0
 */

void () enf_die8 = [ 48.000, enf_die9 ] {


};

// function enf_die9
// function number 2164 begins at statement 26686
/*
 * OP_STATE	10008	15941	0
 * OP_STORE_V	228	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die9 = [ 49.000, enf_die10 ] {

   ai_forward (MOVETYPE_WALK);

};

// function enf_die10
// function number 2165 begins at statement 26690
/*
 * OP_STATE	1470	15942	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die10 = [ 50.000, enf_die11 ] {

   ai_forward (MOVETYPE_FLY);

};

// function enf_die11
// function number 2166 begins at statement 26694
/*
 * OP_STATE	9911	15943	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die11 = [ 51.000, enf_die12 ] {

   ai_forward (MOVETYPE_FLY);

};

// function enf_die12
// function number 2167 begins at statement 26698
/*
 * OP_STATE	9913	15944	0
 * OP_STORE_V	230	4	0
 * OP_CALL1	3782	0	0
 * OP_DONE	0	0	0
 */

void () enf_die12 = [ 52.000, enf_die13 ] {

   ai_forward (MOVETYPE_FLY);

};

// function enf_die13
// function number 2168 begins at statement 26702
/*
 * OP_STATE	9915	15945	0
 * OP_DONE	0	0	0
 */

void () enf_die13 = [ 53.000, enf_die14 ] {


};

// function enf_die14
// function number 2169 begins at statement 26704
/*
 * OP_STATE	9917	15945	0
 * OP_DONE	0	0	0
 */

void () enf_die14 = [ 54.000, enf_die14 ] {


};

// function enf_fdie1
// function number 2170 begins at statement 26706
/*
 * OP_STATE	9919	15947	0
 * OP_DONE	0	0	0
 */

void () enf_fdie1 = [ 55.000, enf_fdie2 ] {


};

// function enf_fdie2
// function number 2171 begins at statement 26708
/*
 * OP_STATE	9921	15948	0
 * OP_DONE	0	0	0
 */

void () enf_fdie2 = [ 56.000, enf_fdie3 ] {


};

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

void () enf_fdie3 = [ 57.000, enf_fdie4 ] {

   self.solid = SOLID_NOT;
   self.ammo_cells = MOVETYPE_FLY;
   func000244 ();

};

// function enf_fdie4
// function number 2173 begins at statement 26717
/*
 * OP_STATE	9925	15952	0
 * OP_DONE	0	0	0
 */

void () enf_fdie4 = [ 58.000, enf_fdie5 ] {


};

// function enf_fdie5
// function number 2174 begins at statement 26719
/*
 * OP_STATE	2783	15953	0
 * OP_DONE	0	0	0
 */

void () enf_fdie5 = [ 59.000, enf_fdie6 ] {


};

// function enf_fdie6
// function number 2175 begins at statement 26721
/*
 * OP_STATE	2019	15954	0
 * OP_DONE	0	0	0
 */

void () enf_fdie6 = [ 60.000, enf_fdie7 ] {


};

// function enf_fdie7
// function number 2176 begins at statement 26723
/*
 * OP_STATE	9928	15955	0
 * OP_DONE	0	0	0
 */

void () enf_fdie7 = [ 61.000, enf_fdie8 ] {


};

// function enf_fdie8
// function number 2177 begins at statement 26725
/*
 * OP_STATE	9930	15956	0
 * OP_DONE	0	0	0
 */

void () enf_fdie8 = [ 62.000, enf_fdie9 ] {


};

// function enf_fdie9
// function number 2178 begins at statement 26727
/*
 * OP_STATE	6707	15957	0
 * OP_DONE	0	0	0
 */

void () enf_fdie9 = [ 63.000, enf_fdie10 ] {


};

// function enf_fdie10
// function number 2179 begins at statement 26729
/*
 * OP_STATE	220	15958	0
 * OP_DONE	0	0	0
 */

void () enf_fdie10 = [ 64.000, enf_fdie11 ] {


};

// function enf_fdie11
// function number 2180 begins at statement 26731
/*
 * OP_STATE	9934	15958	0
 * OP_DONE	0	0	0
 */

void () enf_fdie11 = [ 65.000, enf_fdie11 ] {


};

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

   if ( (self.health < globaldef004288) ) {

      sound (self,CHAN_VOICE,globaldef002406,TRUE,ATTN_NORM);
      ThrowHead (globaldef005559,self.health);
      ThrowGib (globaldef002432,self.health);
      ThrowGib (globaldef002433,self.health);
      ThrowGib (globaldef002434,self.health);
      return ;

   }
   sound (self,CHAN_VOICE,globaldef003654,TRUE,ATTN_NORM);
   if ( (random () > globaldef000522) ) {

      enf_die1 ();

   } else {

      enf_fdie1 ();

   }

};
string globaldef005559 /* = "progs/h_mega.mdl" */;

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
   precache_model2 (globaldef005561);
   precache_model2 (globaldef005559);
   precache_model2 (globaldef003606);
   precache_sound2 (globaldef003654);
   precache_sound2 (globaldef003603);
   precache_sound2 (globaldef003607);
   precache_sound2 (globaldef003655);
   precache_sound2 (globaldef003651);
   precache_sound2 (globaldef003653);
   precache_sound2 (globaldef001676);
   precache_sound2 (globaldef001677);
   precache_sound2 (globaldef001678);
   precache_sound2 (globaldef001679);
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,globaldef005561);
   setsize (self,VEC_HULL_MIN,globaldef004167);
   self.health = globaldef001439;
   self.th_stand = enf_stand1;
   self.th_walk = enf_walk1;
   self.th_run = enf_run1;
   self.th_pain = enf_pain;
   self.th_die = enf_die;
   self.th_missile = enf_atk1;
   walkmonster_start ();

};
