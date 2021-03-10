vector globaldef3564 /* = '100.000 200.000 300.000' */;
string globaldef3565 /* = "progs/teleport.mdl" */;

void () info_null;

// function info_null
// function number 620 begins at statement 17425
/*
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () info_null = {

   remove (self);

};

void () info_notnull;

// function info_notnull
// function number 621 begins at statement 17428
/*
 * OP_DONE	0	0	0
 */

void () info_notnull = {


};
float globaldef3568 /* = 1.000 */;

void () light_use;

// function light_use
// function number 622 begins at statement 17429
/*
 * OP_LOAD_F	28	195	11913
 * OP_BITAND	11913	11911	11914
 * OP_IFNOT	11914	10	0
 * OP_LOAD_F	28	360	11915
 * OP_STORE_V	11915	4	0
 * OP_STORE_V	6695	7	0
 * OP_CALL2	482	0	0
 * OP_ADDRESS	28	195	11916
 * OP_LOAD_F	28	195	11917
 * OP_SUB_F	11917	11911	11918
 * OP_STOREP_F	11918	11916	0
 * OP_GOTO	9	0	0
 * OP_LOAD_F	28	360	11919
 * OP_STORE_V	11919	4	0
 * OP_STORE_V	6708	7	0
 * OP_CALL2	482	0	0
 * OP_ADDRESS	28	195	11920
 * OP_LOAD_F	28	195	11921
 * OP_ADD_F	11921	11911	11922
 * OP_STOREP_F	11922	11920	0
 * OP_DONE	0	0	0
 */

void () light_use = {

   if ( (self.globaldef173 & globaldef3568) ) {

      globaldef465 (self.globaldef343,globaldef2440);
      self.globaldef173 = (self.globaldef173 - globaldef3568);

   } else {

      globaldef465 (self.globaldef343,globaldef2453);
      self.globaldef173 = (self.globaldef173 + globaldef3568);

   }

};

void () light;

// function light
// function number 623 begins at statement 17450
/*
 * OP_LOAD_S	28	197	11924
 * OP_NOT_S	11924	0	11925
 * OP_IFNOT	11925	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	360	11926
 * OP_GE	11926	219	11927
 * OP_IFNOT	11927	15	0
 * OP_ADDRESS	28	147	11928
 * OP_STOREP_FNC	11912	11928	0
 * OP_LOAD_F	28	195	11929
 * OP_BITAND	11929	11911	11930
 * OP_IFNOT	11930	6	0
 * OP_LOAD_F	28	360	11931
 * OP_STORE_V	11931	4	0
 * OP_STORE_V	6708	7	0
 * OP_CALL2	482	0	0
 * OP_GOTO	5	0	0
 * OP_LOAD_F	28	360	11932
 * OP_STORE_V	11932	4	0
 * OP_STORE_V	6695	7	0
 * OP_CALL2	482	0	0
 * OP_DONE	0	0	0
 */

void () light = {

   if ( !self.targetname ) {

      remove (self);
      return ;

   }
   if ( (self.globaldef343 >= FL_MONSTER) ) {

      self.use = globaldef3569;
      if ( (self.globaldef173 & globaldef3568) ) {

         globaldef465 (self.globaldef343,globaldef2453);

      } else {

         globaldef465 (self.globaldef343,globaldef2440);

      }

   }

};

void () light_fluoro;

// function light_fluoro
// function number 624 begins at statement 17474
/*
 * OP_LOAD_F	28	360	11934
 * OP_GE	11934	219	11935
 * OP_IFNOT	11935	15	0
 * OP_ADDRESS	28	147	11936
 * OP_STOREP_FNC	11912	11936	0
 * OP_LOAD_F	28	195	11937
 * OP_BITAND	11937	11911	11938
 * OP_IFNOT	11938	6	0
 * OP_LOAD_F	28	360	11939
 * OP_STORE_V	11939	4	0
 * OP_STORE_V	6708	7	0
 * OP_CALL2	482	0	0
 * OP_GOTO	5	0	0
 * OP_LOAD_F	28	360	11940
 * OP_STORE_V	11940	4	0
 * OP_STORE_V	6695	7	0
 * OP_CALL2	482	0	0
 * OP_STORE_V	11941	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	11942
 * OP_STORE_V	11942	4	0
 * OP_STORE_V	11941	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () light_fluoro = {

   if ( (self.globaldef343 >= FL_MONSTER) ) {

      self.use = globaldef3569;
      if ( (self.globaldef173 & globaldef3568) ) {

         globaldef465 (self.globaldef343,globaldef2453);

      } else {

         globaldef465 (self.globaldef343,globaldef2440);

      }

   }
   globaldef452 (globaldef3572);
   globaldef492 (self.origin,globaldef3572,globaldef522,ATTN_STATIC);

};
string globaldef3572 /* = "ambience/fl_hum1.wav" */;

void () light_fluorospark;

// function light_fluorospark
// function number 625 begins at statement 17500
/*
 * OP_LOAD_F	28	360	11946
 * OP_NOT_F	11946	0	11947
 * OP_IFNOT	11947	3	0
 * OP_ADDRESS	28	360	11948
 * OP_STOREP_F	235	11948	0
 * OP_STORE_V	11949	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	11950
 * OP_STORE_V	11950	4	0
 * OP_STORE_V	11949	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () light_fluorospark = {

   if ( !self.globaldef343 ) {

      self.globaldef343 = MOVETYPE_BOUNCE;

   }
   globaldef452 (globaldef3574);
   globaldef492 (self.origin,globaldef3574,globaldef522,ATTN_STATIC);

};
string globaldef3574 /* = "ambience/buzz1.wav" */;

void () light_globe;

// function light_globe
// function number 626 begins at statement 17514
/*
 * OP_STORE_V	11954	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	11954	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	506	0	0
 * OP_DONE	0	0	0
 */

void () light_globe = {

   globaldef453 (globaldef3576);
   setmodel (self,globaldef3576);
   globaldef489 (self);

};
string globaldef3576 /* = "progs/s_light.spr" */;

void () FireAmbient;

// function FireAmbient
// function number 627 begins at statement 17522
/*
 * OP_STORE_V	11956	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	11957
 * OP_STORE_V	11957	4	0
 * OP_STORE_V	11956	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () FireAmbient = {

   globaldef452 (globaldef3578);
   globaldef492 (self.origin,globaldef3578,globaldef522,ATTN_STATIC);

};
string globaldef3578 /* = "ambience/fire1.wav" */;

void () light_torch_small_walltorch;

// function light_torch_small_walltorch
// function number 628 begins at statement 17531
/*
 * OP_STORE_V	11961	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	11961	7	0
 * OP_CALL2	454	0	0
 * OP_CALL0	11955	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	506	0	0
 * OP_DONE	0	0	0
 */

void () light_torch_small_walltorch = {

   globaldef453 (globaldef3580);
   setmodel (self,globaldef3580);
   globaldef3577 ();
   globaldef489 (self);

};
string globaldef3580 /* = "progs/flame.mdl" */;

void () light_flame_large_yellow;

// function light_flame_large_yellow
// function number 629 begins at statement 17540
/*
 * OP_STORE_V	11963	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	11963	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	131	11964
 * OP_STOREP_F	214	11964	0
 * OP_CALL0	11955	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	506	0	0
 * OP_DONE	0	0	0
 */

void () light_flame_large_yellow = {

   globaldef453 (globaldef3582);
   setmodel (self,globaldef3582);
   self.globaldef109 = TRUE;
   globaldef3577 ();
   globaldef489 (self);

};
string globaldef3582 /* = "progs/flame2.mdl" */;

void () light_flame_small_yellow;

// function light_flame_small_yellow
// function number 630 begins at statement 17551
/*
 * OP_STORE_V	11963	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	11963	7	0
 * OP_CALL2	454	0	0
 * OP_CALL0	11955	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	506	0	0
 * OP_DONE	0	0	0
 */

void () light_flame_small_yellow = {

   globaldef453 (globaldef3582);
   setmodel (self,globaldef3582);
   globaldef3577 ();
   globaldef489 (self);

};

void () light_flame_small_white;

// function light_flame_small_white
// function number 631 begins at statement 17560
/*
 * OP_STORE_V	11963	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	11963	7	0
 * OP_CALL2	454	0	0
 * OP_CALL0	11955	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	506	0	0
 * OP_DONE	0	0	0
 */

void () light_flame_small_white = {

   globaldef453 (globaldef3582);
   setmodel (self,globaldef3582);
   globaldef3577 ();
   globaldef489 (self);

};

void () fire_fly;

void () fire_touch;

void () misc_fireball;

// function misc_fireball
// function number 632 begins at statement 17569
/*
 * OP_STORE_V	6694	4	0
 * OP_CALL1	470	0	0
 * OP_ADDRESS	28	129	11970
 * OP_STOREP_S	9418	11970	0
 * OP_ADDRESS	28	150	11971
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	230	11972
 * OP_ADD_F	31	11972	11973
 * OP_STOREP_F	11973	11971	0
 * OP_ADDRESS	28	148	11974
 * OP_STOREP_FNC	11967	11974	0
 * OP_LOAD_F	28	369	11975
 * OP_NOT_F	11975	0	11976
 * OP_IFNOT	11976	3	0
 * OP_LOAD_F	28	369	11977
 * OP_EQ_F	11977	1663	11978
 * OP_DONE	0	0	0
 */

void () misc_fireball = {

   globaldef453 (globaldef2439);
   self.classname = globaldef3085;
   self.nextthink = (time + (globaldef440 () * MOVETYPE_FLY));
   self.think = globaldef3585;
   if ( !self.globaldef352 ) {


   }

};

// function fire_fly
// function number 633 begins at statement 17586
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	11979	0
 * OP_ADDRESS	11979	104	11980
 * OP_STOREP_F	238	11980	0
 * OP_ADDRESS	11979	103	11981
 * OP_STOREP_F	231	11981	0
 * OP_ADDRESS	11979	113	11982
 * OP_STOREP_V	11985	11982	0
 * OP_ADDRESS	11979	114	11988
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	1997	11989
 * OP_SUB_F	11989	1470	11990
 * OP_STOREP_F	11990	11988	0
 * OP_ADDRESS	11979	115	11991
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	1997	11992
 * OP_SUB_F	11992	1470	11993
 * OP_STOREP_F	11993	11991	0
 * OP_ADDRESS	11979	116	11994
 * OP_LOAD_F	28	369	11995
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2044	11996
 * OP_ADD_F	11995	11996	11997
 * OP_STOREP_F	11997	11994	0
 * OP_ADDRESS	11979	129	11998
 * OP_STOREP_S	9418	11998	0
 * OP_STORE_V	11979	4	0
 * OP_STORE_V	6694	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	11979	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_STORE_V	11979	4	0
 * OP_LOAD_V	28	105	11999
 * OP_STORE_V	11999	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	11979	150	12002
 * OP_ADD_F	31	230	12003
 * OP_STOREP_F	12003	12002	0
 * OP_ADDRESS	11979	148	12004
 * OP_STOREP_FNC	521	12004	0
 * OP_ADDRESS	11979	146	12005
 * OP_STOREP_FNC	11968	12005	0
 * OP_ADDRESS	28	150	12006
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	230	12007
 * OP_ADD_F	31	12007	12008
 * OP_ADD_F	12008	228	12009
 * OP_STOREP_F	12009	12006	0
 * OP_ADDRESS	28	148	12010
 * OP_STOREP_FNC	11967	12010	0
 * OP_DONE	0	0	0
 */

void () fire_fly = {

   local entity globaldef3588;

   globaldef3588 = spawn ();
   globaldef3588.solid = SOLID_TRIGGER;
   globaldef3588.movetype = MOVETYPE_TOSS;
   globaldef3588.velocity = globaldef3589;
   globaldef3588.globaldef92 = ((globaldef440 () * globaldef1335) - globaldef1257);
   globaldef3588.globaldef93 = ((globaldef440 () * globaldef1335) - globaldef1257);
   globaldef3588.globaldef94 = (self.globaldef352 + (globaldef440 () * globaldef1343));
   globaldef3588.classname = globaldef3085;
   setmodel (globaldef3588,globaldef2439);
   globaldef438 (globaldef3588,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (globaldef3588,self.origin);
   globaldef3588.nextthink = (time + MOVETYPE_FLY);
   globaldef3588.think = globaldef504;
   globaldef3588.globaldef124 = globaldef3586;
   self.nextthink = ((time + (globaldef440 () * MOVETYPE_FLY)) + MOVETYPE_WALK);
   self.think = globaldef3585;

};
vector globaldef3589 /* = '0.000 0.000 1000.000' */;

// function fire_touch
// function number 634 begins at statement 17639
/*
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	2323	13	0
 * OP_CALL4	522	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () fire_touch = {

   globaldef505 (other,self,self,globaldef1384);
   remove (self);

};

void () barrel_explode;

// function barrel_explode
// function number 635 begins at statement 17647
/*
 * OP_ADDRESS	28	163	12012
 * OP_STOREP_F	250	12012	0
 * OP_ADDRESS	28	129	12013
 * OP_STOREP_S	9397	12013	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	12014	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	4216	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	5358	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	105	12015
 * OP_STORE_V	12015	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	9173	10	0
 * OP_STORE_V	6491	13	0
 * OP_CALL4	493	0	0
 * OP_ADDRESS	28	108	12018
 * OP_LOAD_F	28	108	12019
 * OP_ADD_F	12019	219	12020
 * OP_STOREP_F	12020	12018	0
 * OP_CALL0	5703	0	0
 * OP_DONE	0	0	0
 */

void () barrel_explode = {

   self.globaldef141 = DAMAGE_NO;
   self.classname = globaldef3078;
   globaldef1772 (self,self,globaldef3591,world);
   sound (self,CHAN_VOICE,globaldef2012,TRUE,ATTN_NORM);
   globaldef476 (self.origin,VEC_ORIGIN,globaldef2995,globaldef2262);
   self.globaldef86 = (self.globaldef86 + FL_MONSTER);
   globaldef2144 ();

};
float globaldef3591 /* = 160.000 */;

void () misc_explobox;

// function misc_explobox
// function number 636 begins at statement 17674
/*
 * OP_ADDRESS	28	104	12023
 * OP_STOREP_F	239	12023	0
 * OP_ADDRESS	28	103	12024
 * OP_STOREP_F	227	12024	0
 * OP_STORE_V	12025	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	12025	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5358	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	152	12026
 * OP_STOREP_F	2323	12026	0
 * OP_ADDRESS	28	367	12027
 * OP_STOREP_FNC	12011	12027	0
 * OP_ADDRESS	28	163	12028
 * OP_STOREP_F	252	12028	0
 * OP_ADDRESS	28	108	12029
 * OP_LOAD_F	28	108	12030
 * OP_ADD_F	12030	216	12031
 * OP_STOREP_F	12031	12029	0
 * OP_LOAD_F	28	108	12032
 * OP_STORE_F	12032	12022	0
 * OP_CALL0	481	0	0
 * OP_LOAD_F	28	108	12033
 * OP_SUB_F	12022	12033	12034
 * OP_GT	12034	738	12035
 * OP_IFNOT	12035	12	0
 * OP_STORE_V	12036	4	0
 * OP_CALL1	473	0	0
 * OP_LOAD_V	28	105	12037
 * OP_STORE_V	12037	4	0
 * OP_CALL1	475	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	473	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	473	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () misc_explobox = {

   local float globaldef3593;

   self.solid = SOLID_BBOX;
   self.movetype = MOVETYPE_NONE;
   globaldef453 (globaldef3594);
   setmodel (self,globaldef3594);
   globaldef452 (globaldef2012);
   self.globaldef130 = globaldef1384;
   self.globaldef350 = globaldef3590;
   self.globaldef141 = DAMAGE_AIM;
   self.globaldef86 = (self.globaldef86 + FL_SWIM);
   globaldef3593 = self.globaldef86;
   globaldef464 ();
   if ( ((globaldef3593 - self.globaldef86) > globaldef721) ) {

      globaldef456 (globaldef3595);
      globaldef456 (globaldef458 (self.origin));
      globaldef456 (globaldef1354);
      remove (self);

   }

};
string globaldef3594 /* = "maps/b_explob.bsp" */;
string globaldef3595 /* = "item fell out of level at " */;

void () misc_explobox2;

// function misc_explobox2
// function number 637 begins at statement 17714
/*
 * OP_ADDRESS	28	104	12042
 * OP_STOREP_F	239	12042	0
 * OP_ADDRESS	28	103	12043
 * OP_STOREP_F	227	12043	0
 * OP_STORE_V	12044	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	12044	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	5358	4	0
 * OP_CALL1	469	0	0
 * OP_ADDRESS	28	152	12045
 * OP_STOREP_F	2323	12045	0
 * OP_ADDRESS	28	367	12046
 * OP_STOREP_FNC	12011	12046	0
 * OP_ADDRESS	28	163	12047
 * OP_STOREP_F	252	12047	0
 * OP_ADDRESS	28	108	12048
 * OP_LOAD_F	28	108	12049
 * OP_ADD_F	12049	216	12050
 * OP_STOREP_F	12050	12048	0
 * OP_LOAD_F	28	108	12051
 * OP_STORE_F	12051	12041	0
 * OP_CALL0	481	0	0
 * OP_LOAD_F	28	108	12052
 * OP_SUB_F	12041	12052	12053
 * OP_GT	12053	738	12054
 * OP_IFNOT	12054	12	0
 * OP_STORE_V	12036	4	0
 * OP_CALL1	473	0	0
 * OP_LOAD_V	28	105	12055
 * OP_STORE_V	12055	4	0
 * OP_CALL1	475	0	0
 * OP_STORE_V	1	4	0
 * OP_CALL1	473	0	0
 * OP_STORE_V	2127	4	0
 * OP_CALL1	473	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () misc_explobox2 = {

   local float globaldef3597;

   self.solid = SOLID_BBOX;
   self.movetype = MOVETYPE_NONE;
   globaldef493 (globaldef3598);
   setmodel (self,globaldef3598);
   globaldef452 (globaldef2012);
   self.globaldef130 = globaldef1384;
   self.globaldef350 = globaldef3590;
   self.globaldef141 = DAMAGE_AIM;
   self.globaldef86 = (self.globaldef86 + FL_SWIM);
   globaldef3597 = self.globaldef86;
   globaldef464 ();
   if ( ((globaldef3597 - self.globaldef86) > globaldef721) ) {

      globaldef456 (globaldef3595);
      globaldef456 (globaldef458 (self.origin));
      globaldef456 (globaldef1354);
      remove (self);

   }

};
string globaldef3598 /* = "maps/b_exbox2.bsp" */;
float globaldef3599 /* = 1.000 */;
float globaldef3600 /* = 2.000 */;

void (vector globaldef5434, vector globaldef5438) LaunchLaser;

void () func638;

// function func638
// function number 638 begins at statement 17754
/*
 * OP_LOAD_F	28	195	12062
 * OP_BITAND	12062	12059	12063
 * OP_IFNOT	12063	13	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	12064	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	105	12065
 * OP_STORE_V	12065	4	0
 * OP_LOAD_V	28	202	12068
 * OP_STORE_V	12068	7	0
 * OP_CALL2	12060	0	0
 * OP_GOTO	21	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	5365	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_V	28	105	12071
 * OP_STORE_V	12071	4	0
 * OP_LOAD_V	28	202	12074
 * OP_STORE_V	12074	7	0
 * OP_CALL2	6018	0	0
 * OP_ADDRESS	350	113	12077
 * OP_LOAD_V	28	202	12080
 * OP_MUL_VF	12080	745	12083
 * OP_STOREP_V	12083	12077	0
 * OP_LOAD_F	28	195	12086
 * OP_BITAND	12086	12058	12087
 * OP_IFNOT	12087	3	0
 * OP_ADDRESS	350	146	12088
 * OP_STOREP_FNC	6017	12088	0
 * OP_DONE	0	0	0
 */

void () func638 = {

   if ( (self.globaldef173 & globaldef3600) ) {

      sound (self,CHAN_VOICE,globaldef3603,TRUE,ATTN_NORM);
      globaldef3601 (self.origin,self.movedir);

   } else {

      sound (self,CHAN_VOICE,globaldef2019,TRUE,ATTN_NORM);
      globaldef2191 (self.origin,self.movedir);
      newmis.velocity = (self.movedir * globaldef728);
      if ( (self.globaldef173 & globaldef3599) ) {

         newmis.globaldef124 = globaldef2190;

      }

   }

};
string globaldef3603 /* = "enforcer/enfire.wav" */;

void () func639;

// function func639
// function number 639 begins at statement 17790
/*
 * OP_CALL0	12061	0	0
 * OP_ADDRESS	28	150	12090
 * OP_LOAD_F	28	418	12091
 * OP_ADD_F	31	12091	12092
 * OP_STOREP_F	12092	12090	0
 * OP_ADDRESS	350	113	12093
 * OP_LOAD_V	28	202	12096
 * OP_MUL_VF	12096	745	12099
 * OP_STOREP_V	12099	12093	0
 * OP_DONE	0	0	0
 */

void () func639 = {

   globaldef3602 ();
   self.nextthink = (time + self.globaldef401);
   newmis.velocity = (self.movedir * globaldef728);

};

void () func640;

// function func640
// function number 640 begins at statement 17800
/*
 * OP_CALL0	2956	0	0
 * OP_ADDRESS	28	147	12103
 * OP_STOREP_FNC	12061	12103	0
 * OP_LOAD_F	28	195	12104
 * OP_BITAND	12104	12059	12105
 * OP_IFNOT	12105	8	0
 * OP_STORE_V	12106	4	0
 * OP_CALL1	510	0	0
 * OP_STORE_V	12064	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12107	4	0
 * OP_CALL1	511	0	0
 * OP_GOTO	3	0	0
 * OP_STORE_V	5365	4	0
 * OP_CALL1	469	0	0
 * OP_DONE	0	0	0
 */

void () func640 = {

   SetMovedir ();
   self.use = globaldef3602;
   if ( (self.globaldef173 & globaldef3600) ) {

      globaldef493 (globaldef3606);
      globaldef494 (globaldef3603);
      globaldef494 (globaldef3607);

   } else {

      globaldef452 (globaldef2019);

   }

};
string globaldef3606 /* = "progs/laser.mdl" */;
string globaldef3607 /* = "enforcer/enfstop.wav" */;

void () trap_spikeshooter;

// function trap_spikeshooter
// function number 641 begins at statement 17816
/*
 * OP_CALL0	12102	0	0
 * OP_DONE	0	0	0
 */

void () trap_spikeshooter = {

   globaldef3605 ();

};

void () trap_shooter;

// function trap_shooter
// function number 642 begins at statement 17818
/*
 * OP_CALL0	12102	0	0
 * OP_LOAD_F	28	418	12110
 * OP_EQ_F	12110	213	12111
 * OP_IFNOT	12111	3	0
 * OP_ADDRESS	28	418	12112
 * OP_STOREP_F	214	12112	0
 * OP_ADDRESS	28	150	12113
 * OP_LOAD_F	28	150	12114
 * OP_LOAD_F	28	418	12115
 * OP_ADD_F	12114	12115	12116
 * OP_LOAD_F	28	102	12117
 * OP_ADD_F	12116	12117	12118
 * OP_STOREP_F	12118	12113	0
 * OP_ADDRESS	28	148	12119
 * OP_STOREP_FNC	12089	12119	0
 * OP_DONE	0	0	0
 */

void () trap_shooter = {

   globaldef3605 ();
   if ( (self.globaldef401 == FALSE) ) {

      self.globaldef401 = TRUE;

   }
   self.nextthink = ((self.nextthink + self.globaldef401) + self.ltime);
   self.think = globaldef3604;

};

void () make_bubbles;

void () bubble_remove;

void () air_bubbles;

// function air_bubbles
// function number 643 begins at statement 17834
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	6690	4	0
 * OP_CALL1	470	0	0
 * OP_ADDRESS	28	150	12123
 * OP_ADD_F	31	214	12124
 * OP_STOREP_F	12124	12123	0
 * OP_ADDRESS	28	148	12125
 * OP_STOREP_FNC	12120	12125	0
 * OP_DONE	0	0	0
 */

void () air_bubbles = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   globaldef453 (globaldef2435);
   self.nextthink = (time + TRUE);
   self.think = globaldef3610;

};

// function make_bubbles
// function number 644 begins at statement 17846
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	12126	0
 * OP_STORE_V	12126	4	0
 * OP_STORE_V	6690	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	12126	4	0
 * OP_LOAD_V	28	105	12127
 * OP_STORE_V	12127	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	12126	103	12130
 * OP_STOREP_F	233	12130	0
 * OP_ADDRESS	12126	104	12131
 * OP_STOREP_F	237	12131	0
 * OP_ADDRESS	12126	113	12132
 * OP_STOREP_V	9696	12132	0
 * OP_ADDRESS	12126	150	12135
 * OP_ADD_F	31	539	12136
 * OP_STOREP_F	12136	12135	0
 * OP_ADDRESS	12126	148	12137
 * OP_STOREP_FNC	9425	12137	0
 * OP_ADDRESS	12126	146	12138
 * OP_STOREP_FNC	12121	12138	0
 * OP_ADDRESS	12126	129	12139
 * OP_STOREP_S	9703	12139	0
 * OP_ADDRESS	12126	131	12140
 * OP_STOREP_F	213	12140	0
 * OP_ADDRESS	12126	426	12141
 * OP_STOREP_F	213	12141	0
 * OP_STORE_V	12126	4	0
 * OP_STORE_V	3520	7	0
 * OP_STORE_V	3523	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	150	12142
 * OP_CALL0	457	0	0
 * OP_ADD_F	31	1	12143
 * OP_ADD_F	12143	539	12144
 * OP_STOREP_F	12144	12142	0
 * OP_ADDRESS	28	148	12145
 * OP_STOREP_FNC	12120	12145	0
 * OP_DONE	0	0	0
 */

void () make_bubbles = {

   local entity globaldef3613;

   globaldef3613 = spawn ();
   setmodel (globaldef3613,globaldef2435);
   setorigin (globaldef3613,self.origin);
   globaldef3613.movetype = MOVETYPE_NOCLIP;
   globaldef3613.solid = SOLID_NOT;
   globaldef3613.velocity = globaldef3170;
   globaldef3613.nextthink = (time + globaldef522);
   globaldef3613.think = globaldef3089;
   globaldef3613.globaldef124 = globaldef3611;
   globaldef3613.classname = globaldef3171;
   globaldef3613.globaldef109 = FALSE;
   globaldef3613.cnt = FALSE;
   globaldef438 (globaldef3613,globaldef1621,globaldef1622);
   self.nextthink = ((time + globaldef440 ()) + globaldef522);
   self.think = globaldef3610;

};

void () bubble_split;

// function bubble_split
// function number 645 begins at statement 17886
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	12147	0
 * OP_STORE_V	12147	4	0
 * OP_STORE_V	6690	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	12147	4	0
 * OP_LOAD_V	28	105	12148
 * OP_STORE_V	12148	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	12147	103	12151
 * OP_STOREP_F	233	12151	0
 * OP_ADDRESS	12147	104	12152
 * OP_STOREP_F	237	12152	0
 * OP_ADDRESS	12147	113	12153
 * OP_LOAD_V	28	113	12156
 * OP_STOREP_V	12156	12153	0
 * OP_ADDRESS	12147	150	12159
 * OP_ADD_F	31	539	12160
 * OP_STOREP_F	12160	12159	0
 * OP_ADDRESS	12147	148	12161
 * OP_STOREP_FNC	9425	12161	0
 * OP_ADDRESS	12147	146	12162
 * OP_STOREP_FNC	12121	12162	0
 * OP_ADDRESS	12147	129	12163
 * OP_STOREP_S	9703	12163	0
 * OP_ADDRESS	12147	131	12164
 * OP_STOREP_F	214	12164	0
 * OP_ADDRESS	12147	426	12165
 * OP_STOREP_F	235	12165	0
 * OP_STORE_V	12147	4	0
 * OP_STORE_V	3520	7	0
 * OP_STORE_V	3523	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	131	12166
 * OP_STOREP_F	214	12166	0
 * OP_ADDRESS	28	426	12167
 * OP_STOREP_F	235	12167	0
 * OP_LOAD_F	28	189	12168
 * OP_NE_F	12168	228	12169
 * OP_IFNOT	12169	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () bubble_split = {

   local entity globaldef3615;

   globaldef3615 = spawn ();
   setmodel (globaldef3615,globaldef2435);
   setorigin (globaldef3615,self.origin);
   globaldef3615.movetype = MOVETYPE_NOCLIP;
   globaldef3615.solid = SOLID_NOT;
   globaldef3615.velocity = self.velocity;
   globaldef3615.nextthink = (time + globaldef522);
   globaldef3615.think = globaldef3089;
   globaldef3615.globaldef124 = globaldef3611;
   globaldef3615.classname = globaldef3171;
   globaldef3615.globaldef109 = TRUE;
   globaldef3615.cnt = MOVETYPE_BOUNCE;
   globaldef438 (globaldef3615,globaldef1621,globaldef1622);
   self.globaldef109 = TRUE;
   self.cnt = MOVETYPE_BOUNCE;
   if ( (self.globaldef167 != MOVETYPE_WALK) ) {

      remove (self);

   }

};

// function bubble_remove
// function number 646 begins at statement 17929
/*
 * OP_LOAD_S	29	129	12170
 * OP_LOAD_S	28	129	12171
 * OP_EQ_S	12170	12171	12172
 * OP_IFNOT	12172	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () bubble_remove = {

   if ( (other.classname == self.classname) ) {

      return ;

   }
   remove (self);

};

// function bubble_bob
// function number 647 begins at statement 17937
/*
 * OP_ADDRESS	28	426	12182
 * OP_LOAD_F	28	426	12183
 * OP_ADD_F	12183	214	12184
 * OP_STOREP_F	12184	12182	0
 * OP_LOAD_F	28	426	12185
 * OP_EQ_F	12185	229	12186
 * OP_IFNOT	12186	2	0
 * OP_CALL0	12146	0	0
 * OP_LOAD_F	28	426	12187
 * OP_EQ_F	12187	2323	12188
 * OP_IFNOT	12188	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_LOAD_F	28	114	12189
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2323	12191
 * OP_ADD_F	12190	12191	12192
 * OP_ADD_F	12189	12192	12193
 * OP_STORE_F	12193	12173	0
 * OP_LOAD_F	28	115	12194
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	2323	12195
 * OP_ADD_F	12190	12195	12196
 * OP_ADD_F	12194	12196	12197
 * OP_STORE_F	12197	12174	0
 * OP_LOAD_F	28	116	12198
 * OP_ADD_F	12198	235	12199
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	235	12200
 * OP_ADD_F	12199	12200	12201
 * OP_STORE_F	12201	12175	0
 * OP_GT	12173	235	12202
 * OP_IFNOT	12202	2	0
 * OP_STORE_F	230	12173	0
 * OP_LT	12173	12190	12203
 * OP_IFNOT	12203	2	0
 * OP_STORE_F	280	12173	0
 * OP_GT	12174	235	12204
 * OP_IFNOT	12204	2	0
 * OP_STORE_F	230	12174	0
 * OP_LT	12174	12190	12205
 * OP_IFNOT	12205	2	0
 * OP_STORE_F	280	12174	0
 * OP_LT	12175	235	12206
 * OP_IFNOT	12206	2	0
 * OP_STORE_F	765	12175	0
 * OP_GT	12175	309	12207
 * OP_IFNOT	12207	2	0
 * OP_STORE_F	305	12175	0
 * OP_ADDRESS	28	114	12208
 * OP_STOREP_F	12173	12208	0
 * OP_ADDRESS	28	115	12209
 * OP_STOREP_F	12174	12209	0
 * OP_ADDRESS	28	116	12210
 * OP_STOREP_F	12175	12210	0
 * OP_ADDRESS	28	150	12211
 * OP_ADD_F	31	539	12212
 * OP_STOREP_F	12212	12211	0
 * OP_ADDRESS	28	148	12213
 * OP_STOREP_FNC	9425	12213	0
 * OP_DONE	0	0	0
 */

void () bubble_bob = {

   local float globaldef3616;
   local float globaldef3617;
   local float globaldef3618;
   local vector globaldef3619;
   local vector globaldef3623;

   self.cnt = (self.cnt + TRUE);
   if ( (self.cnt == MOVETYPE_STEP) ) {

      globaldef3614 ();

   }
   if ( (self.cnt == globaldef1384) ) {

      remove (self);

   }
   globaldef3616 = (self.globaldef92 + (globaldef3627 + (globaldef440 () * globaldef1384)));
   globaldef3617 = (self.globaldef93 + (globaldef3627 + (globaldef440 () * globaldef1384)));
   globaldef3618 = ((self.globaldef94 + MOVETYPE_BOUNCE) + (globaldef440 () * MOVETYPE_BOUNCE));
   if ( (globaldef3616 > MOVETYPE_BOUNCE) ) {

      globaldef3616 = MOVETYPE_FLY;

   }
   if ( (globaldef3616 < globaldef3627) ) {

      globaldef3616 = CONTENT_LAVA;

   }
   if ( (globaldef3617 > MOVETYPE_BOUNCE) ) {

      globaldef3617 = MOVETYPE_FLY;

   }
   if ( (globaldef3617 < globaldef3627) ) {

      globaldef3617 = CONTENT_LAVA;

   }
   if ( (globaldef3618 < MOVETYPE_BOUNCE) ) {

      globaldef3618 = globaldef748;

   }
   if ( (globaldef3618 > SVC_INTERMISSION) ) {

      globaldef3618 = globaldef288;

   }
   self.globaldef92 = globaldef3616;
   self.globaldef93 = globaldef3617;
   self.globaldef94 = globaldef3618;
   self.nextthink = (time + globaldef522);
   self.think = globaldef3089;

};
float globaldef3627 /* = -10.000 */;

void () viewthing;

// function viewthing
// function number 648 begins at statement 17998
/*
 * OP_ADDRESS	28	103	12215
 * OP_STOREP_F	227	12215	0
 * OP_ADDRESS	28	104	12216
 * OP_STOREP_F	237	12216	0
 * OP_STORE_V	6684	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6684	7	0
 * OP_CALL2	454	0	0
 * OP_DONE	0	0	0
 */

void () viewthing = {

   self.movetype = MOVETYPE_NONE;
   self.solid = SOLID_NOT;
   globaldef453 (globaldef2429);
   setmodel (self,globaldef2429);

};

void () func_wall_use;

// function func_wall_use
// function number 649 begins at statement 18008
/*
 * OP_ADDRESS	28	131	12218
 * OP_LOAD_F	28	131	12219
 * OP_SUB_F	214	12219	12220
 * OP_STOREP_F	12220	12218	0
 * OP_DONE	0	0	0
 */

void () func_wall_use = {

   self.globaldef109 = (TRUE - self.globaldef109);

};

void () func_wall;

// function func_wall
// function number 650 begins at statement 18013
/*
 * OP_ADDRESS	28	117	12222
 * OP_STOREP_V	286	12222	0
 * OP_ADDRESS	28	103	12225
 * OP_STOREP_F	232	12225	0
 * OP_ADDRESS	28	104	12226
 * OP_STOREP_F	241	12226	0
 * OP_ADDRESS	28	147	12227
 * OP_STOREP_FNC	12217	12227	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	12228
 * OP_STORE_V	12228	7	0
 * OP_CALL2	454	0	0
 * OP_DONE	0	0	0
 */

void () func_wall = {

   self.angles = VEC_ORIGIN;
   self.movetype = MOVETYPE_PUSH;
   self.solid = SOLID_BSP;
   self.use = globaldef3629;
   setmodel (self,self.model);

};

void () func_illusionary;

// function func_illusionary
// function number 651 begins at statement 18026
/*
 * OP_ADDRESS	28	117	12230
 * OP_STOREP_V	286	12230	0
 * OP_ADDRESS	28	103	12233
 * OP_STOREP_F	227	12233	0
 * OP_ADDRESS	28	104	12234
 * OP_STOREP_F	237	12234	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	12235
 * OP_STORE_V	12235	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	506	0	0
 * OP_DONE	0	0	0
 */

void () func_illusionary = {

   self.angles = VEC_ORIGIN;
   self.movetype = MOVETYPE_NONE;
   self.solid = SOLID_NOT;
   setmodel (self,self.model);
   globaldef489 (self);

};

void () func_episodegate;

// function func_episodegate
// function number 652 begins at statement 18039
/*
 * OP_LOAD_F	28	195	12237
 * OP_BITAND	38	12237	12238
 * OP_NOT_F	12238	0	12239
 * OP_IFNOT	12239	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	117	12240
 * OP_STOREP_V	286	12240	0
 * OP_ADDRESS	28	103	12243
 * OP_STOREP_F	232	12243	0
 * OP_ADDRESS	28	104	12244
 * OP_STOREP_F	241	12244	0
 * OP_ADDRESS	28	147	12245
 * OP_STOREP_FNC	12217	12245	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	12246
 * OP_STORE_V	12246	7	0
 * OP_CALL2	454	0	0
 * OP_DONE	0	0	0
 */

void () func_episodegate = {

   if ( !(serverflags & self.globaldef173) ) {

      return ;

   }
   self.angles = VEC_ORIGIN;
   self.movetype = MOVETYPE_PUSH;
   self.solid = SOLID_BSP;
   self.use = globaldef3629;
   setmodel (self,self.model);

};

void () func_bossgate;

// function func_bossgate
// function number 653 begins at statement 18057
/*
 * OP_BITAND	38	765	12248
 * OP_EQ_F	12248	765	12249
 * OP_IFNOT	12249	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	117	12250
 * OP_STOREP_V	286	12250	0
 * OP_ADDRESS	28	103	12253
 * OP_STOREP_F	232	12253	0
 * OP_ADDRESS	28	104	12254
 * OP_STOREP_F	241	12254	0
 * OP_ADDRESS	28	147	12255
 * OP_STOREP_FNC	12217	12255	0
 * OP_STORE_V	28	4	0
 * OP_LOAD_S	28	130	12256
 * OP_STORE_V	12256	7	0
 * OP_CALL2	454	0	0
 * OP_DONE	0	0	0
 */

void () func_bossgate = {

   if ( ((serverflags & globaldef748) == globaldef748) ) {

      return ;

   }
   self.angles = VEC_ORIGIN;
   self.movetype = MOVETYPE_PUSH;
   self.solid = SOLID_BSP;
   self.use = globaldef3629;
   setmodel (self,self.model);

};

void () ambient_suck_wind;

// function ambient_suck_wind
// function number 654 begins at statement 18074
/*
 * OP_STORE_V	12258	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12259
 * OP_STORE_V	12259	4	0
 * OP_STORE_V	12258	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_suck_wind = {

   globaldef452 (globaldef3635);
   globaldef492 (self.origin,globaldef3635,TRUE,ATTN_STATIC);

};
string globaldef3635 /* = "ambience/suck1.wav" */;

void () ambient_drone;

// function ambient_drone
// function number 655 begins at statement 18083
/*
 * OP_STORE_V	12263	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12264
 * OP_STORE_V	12264	4	0
 * OP_STORE_V	12263	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_drone = {

   globaldef452 (globaldef3637);
   globaldef492 (self.origin,globaldef3637,globaldef522,ATTN_STATIC);

};
string globaldef3637 /* = "ambience/drone6.wav" */;

void () ambient_flouro_buzz;

// function ambient_flouro_buzz
// function number 656 begins at statement 18092
/*
 * OP_STORE_V	11949	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12268
 * OP_STORE_V	12268	4	0
 * OP_STORE_V	11949	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_flouro_buzz = {

   globaldef452 (globaldef3574);
   globaldef492 (self.origin,globaldef3574,TRUE,ATTN_STATIC);

};

void () ambient_drip;

// function ambient_drip
// function number 657 begins at statement 18101
/*
 * OP_STORE_V	12272	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12273
 * OP_STORE_V	12273	4	0
 * OP_STORE_V	12272	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_drip = {

   globaldef452 (globaldef3640);
   globaldef492 (self.origin,globaldef3640,globaldef522,ATTN_STATIC);

};
string globaldef3640 /* = "ambience/drip1.wav" */;

void () ambient_comp_hum;

// function ambient_comp_hum
// function number 658 begins at statement 18110
/*
 * OP_STORE_V	12277	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12278
 * OP_STORE_V	12278	4	0
 * OP_STORE_V	12277	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_comp_hum = {

   globaldef452 (globaldef3642);
   globaldef492 (self.origin,globaldef3642,TRUE,ATTN_STATIC);

};
string globaldef3642 /* = "ambience/comp1.wav" */;

void () ambient_thunder;

// function ambient_thunder
// function number 659 begins at statement 18119
/*
 * OP_STORE_V	12282	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12283
 * OP_STORE_V	12283	4	0
 * OP_STORE_V	12282	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_thunder = {

   globaldef452 (globaldef3644);
   globaldef492 (self.origin,globaldef3644,globaldef522,ATTN_STATIC);

};
string globaldef3644 /* = "ambience/thunder1.wav" */;

void () ambient_light_buzz;

// function ambient_light_buzz
// function number 660 begins at statement 18128
/*
 * OP_STORE_V	11941	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12287
 * OP_STORE_V	12287	4	0
 * OP_STORE_V	11941	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_light_buzz = {

   globaldef452 (globaldef3572);
   globaldef492 (self.origin,globaldef3572,globaldef522,ATTN_STATIC);

};

void () ambient_swamp1;

// function ambient_swamp1
// function number 661 begins at statement 18137
/*
 * OP_STORE_V	12291	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12292
 * OP_STORE_V	12292	4	0
 * OP_STORE_V	12291	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_swamp1 = {

   globaldef452 (globaldef3647);
   globaldef492 (self.origin,globaldef3647,globaldef522,ATTN_STATIC);

};
string globaldef3647 /* = "ambience/swamp1.wav" */;

void () ambient_swamp2;

// function ambient_swamp2
// function number 662 begins at statement 18146
/*
 * OP_STORE_V	12296	4	0
 * OP_CALL1	469	0	0
 * OP_LOAD_V	28	105	12297
 * OP_STORE_V	12297	4	0
 * OP_STORE_V	12296	7	0
 * OP_STORE_V	539	10	0
 * OP_STORE_V	333	13	0
 * OP_CALL4	509	0	0
 * OP_DONE	0	0	0
 */

void () ambient_swamp2 = {

   globaldef452 (globaldef3649);
   globaldef492 (self.origin,globaldef3649,globaldef522,ATTN_STATIC);

};
string globaldef3649 /* = "ambience/swamp2.wav" */;

void () noise_think;

// function noise_think
// function number 663 begins at statement 18155
/*
 * OP_ADDRESS	28	150	12301
 * OP_ADD_F	31	539	12302
 * OP_STOREP_F	12302	12301	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	214	7	0
 * OP_STORE_V	12064	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	216	7	0
 * OP_STORE_V	12107	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	228	7	0
 * OP_STORE_V	3697	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	229	7	0
 * OP_STORE_V	3699	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	230	7	0
 * OP_STORE_V	3701	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	231	7	0
 * OP_STORE_V	3702	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	232	7	0
 * OP_STORE_V	12303	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () noise_think = {

   self.nextthink = (time + globaldef522);
   sound (self,TRUE,globaldef3603,TRUE,ATTN_NORM);
   sound (self,FL_SWIM,globaldef3607,TRUE,ATTN_NORM);
   sound (self,MOVETYPE_WALK,"enforcer/sight1.wav",TRUE,ATTN_NORM);
   sound (self,MOVETYPE_STEP,"enforcer/sight2.wav",TRUE,ATTN_NORM);
   sound (self,MOVETYPE_FLY,"enforcer/sight3.wav",TRUE,ATTN_NORM);
   sound (self,MOVETYPE_TOSS,"enforcer/sight4.wav",TRUE,ATTN_NORM);
   sound (self,MOVETYPE_PUSH,globaldef3651,TRUE,ATTN_NORM);

};
string globaldef3651 /* = "enforcer/pain1.wav" */;

void () misc_noisemaker;

// function misc_noisemaker
// function number 664 begins at statement 18201
/*
 * OP_STORE_V	12064	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12107	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3697	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3699	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3701	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	3702	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12303	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12305	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12306	4	0
 * OP_CALL1	511	0	0
 * OP_STORE_V	12307	4	0
 * OP_CALL1	511	0	0
 * OP_ADDRESS	28	150	12308
 * OP_ADD_F	31	3036	12309
 * OP_CALL0	457	0	0
 * OP_ADD_F	12309	1	12310
 * OP_STOREP_F	12310	12308	0
 * OP_ADDRESS	28	148	12311
 * OP_STOREP_FNC	12300	12311	0
 * OP_DONE	0	0	0
 */

void () misc_noisemaker = {

   globaldef494 (globaldef3603);
   globaldef494 (globaldef3607);
   globaldef494 ("enforcer/sight1.wav");
   globaldef494 ("enforcer/sight2.wav");
   globaldef494 ("enforcer/sight3.wav");
   globaldef494 ("enforcer/sight4.wav");
   globaldef494 (globaldef3651);
   globaldef494 (globaldef3653);
   globaldef494 (globaldef3654);
   globaldef494 (globaldef3655);
   self.nextthink = ((time + 0.100) + globaldef440 ());
   self.think = globaldef3650;

};
