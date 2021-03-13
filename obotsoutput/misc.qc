vector globaldef003564 /* = '100.000 200.000 300.000' */;
string globaldef003565 /* = "progs/teleport.mdl" */;

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

// function info_notnull
// function number 621 begins at statement 17428
/*
 * OP_DONE	0	0	0
 */

void () info_notnull = {


};
float globaldef003568 /* = 1.000 */;

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

   if ( (self.spawnflags & globaldef003568) ) {

      lightstyle (self.style,globaldef002440);
      self.spawnflags = (self.spawnflags - globaldef003568);

   } else {

      lightstyle (self.style,globaldef002453);
      self.spawnflags = (self.spawnflags + globaldef003568);

   }

};

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
   if ( (self.style >= FL_MONSTER) ) {

      self.use = light_use;
      if ( (self.spawnflags & globaldef003568) ) {

         lightstyle (self.style,globaldef002453);

      } else {

         lightstyle (self.style,globaldef002440);

      }

   }

};

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

   if ( (self.style >= FL_MONSTER) ) {

      self.use = light_use;
      if ( (self.spawnflags & globaldef003568) ) {

         lightstyle (self.style,globaldef002453);

      } else {

         lightstyle (self.style,globaldef002440);

      }

   }
   precache_sound (globaldef003572);
   ambientsound (self.origin,globaldef003572,globaldef000522,ATTN_STATIC);

};
string globaldef003572 /* = "ambience/fl_hum1.wav" */;

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

   if ( !self.style ) {

      self.style = MOVETYPE_BOUNCE;

   }
   precache_sound (globaldef003574);
   ambientsound (self.origin,globaldef003574,globaldef000522,ATTN_STATIC);

};
string globaldef003574 /* = "ambience/buzz1.wav" */;

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

   precache_model (globaldef003576);
   setmodel (self,globaldef003576);
   makestatic (self);

};
string globaldef003576 /* = "progs/s_light.spr" */;

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

   precache_sound (globaldef003578);
   ambientsound (self.origin,globaldef003578,globaldef000522,ATTN_STATIC);

};
string globaldef003578 /* = "ambience/fire1.wav" */;

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

   precache_model (globaldef003580);
   setmodel (self,globaldef003580);
   FireAmbient ();
   makestatic (self);

};
string globaldef003580 /* = "progs/flame.mdl" */;

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

   precache_model (globaldef003582);
   setmodel (self,globaldef003582);
   self.frame = TRUE;
   FireAmbient ();
   makestatic (self);

};
string globaldef003582 /* = "progs/flame2.mdl" */;

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

   precache_model (globaldef003582);
   setmodel (self,globaldef003582);
   FireAmbient ();
   makestatic (self);

};

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

   precache_model (globaldef003582);
   setmodel (self,globaldef003582);
   FireAmbient ();
   makestatic (self);

};

void () fire_fly;

void () fire_touch;

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

   precache_model (globaldef002439);
   self.classname = globaldef003085;
   self.nextthink = (time + (random () * MOVETYPE_FLY));
   self.think = fire_fly;
   if ( !self.speed ) {


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

   local entity fireball;

   fireball = spawn ();
   fireball.solid = SOLID_TRIGGER;
   fireball.movetype = MOVETYPE_TOSS;
   fireball.velocity = globaldef003589;
   fireball.velocity = ((random () * globaldef001335) - globaldef001257);
   fireball.velocity_y = ((random () * globaldef001335) - globaldef001257);
   fireball.velocity_z = (self.speed + (random () * globaldef001343));
   fireball.classname = globaldef003085;
   setmodel (fireball,globaldef002439);
   setsize (fireball,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (fireball,self.origin);
   fireball.nextthink = (time + MOVETYPE_FLY);
   fireball.think = SUB_Remove;
   fireball.touch = fire_touch;
   self.nextthink = ((time + (random () * MOVETYPE_FLY)) + MOVETYPE_WALK);
   self.think = fire_fly;

};
vector globaldef003589 /* = '0.000 0.000 1000.000' */;

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

   T_Damage (other,self,self,globaldef001384);
   remove (self);

};

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

   self.takedamage = DAMAGE_NO;
   self.classname = globaldef003078;
   T_RadiusDamage (self,self,globaldef003591,world);
   sound (self,CHAN_VOICE,globaldef002012,TRUE,ATTN_NORM);
   particle (self.origin,VEC_ORIGIN,globaldef002995,globaldef002262);
   self.origin_z = (self.origin_z + FL_MONSTER);
   BecomeExplosion ();

};
float globaldef003591 /* = 160.000 */;

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

   local float oldz;

   self.solid = SOLID_BBOX;
   self.movetype = MOVETYPE_NONE;
   precache_model (globaldef003594);
   setmodel (self,globaldef003594);
   precache_sound (globaldef002012);
   self.health = globaldef001384;
   self.th_die = barrel_explode;
   self.takedamage = DAMAGE_AIM;
   self.origin_z = (self.origin_z + FL_SWIM);
   oldz = self.origin_z;
   droptofloor ();
   if ( ((oldz - self.origin_z) > globaldef000721) ) {

      dprint (globaldef003595);
      dprint (vtos (self.origin));
      dprint (globaldef001354);
      remove (self);

   }

};
string globaldef003594 /* = "maps/b_explob.bsp" */;
string globaldef003595 /* = "item fell out of level at " */;

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

   local float oldz;

   self.solid = SOLID_BBOX;
   self.movetype = MOVETYPE_NONE;
   precache_model2 (globaldef003598);
   setmodel (self,globaldef003598);
   precache_sound (globaldef002012);
   self.health = globaldef001384;
   self.th_die = barrel_explode;
   self.takedamage = DAMAGE_AIM;
   self.origin_z = (self.origin_z + FL_SWIM);
   oldz = self.origin_z;
   droptofloor ();
   if ( ((oldz - self.origin_z) > globaldef000721) ) {

      dprint (globaldef003595);
      dprint (vtos (self.origin));
      dprint (globaldef001354);
      remove (self);

   }

};
string globaldef003598 /* = "maps/b_exbox2.bsp" */;
float globaldef003599 /* = 1.000 */;
float globaldef003600 /* = 2.000 */;

void (vector globaldef005434, vector globaldef005438) LaunchLaser;

// function func000638
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

void () func000638 = {

   if ( (self.spawnflags & globaldef003600) ) {

      sound (self,CHAN_VOICE,globaldef003603,TRUE,ATTN_NORM);
      LaunchLaser (self.origin,self.movedir);

   } else {

      sound (self,CHAN_VOICE,globaldef002019,TRUE,ATTN_NORM);
      launch_spike (self.origin,self.movedir);
      newmis.velocity = (self.movedir * globaldef000728);
      if ( (self.spawnflags & globaldef003599) ) {

         newmis.touch = superspike_touch;

      }

   }

};
string globaldef003603 /* = "enforcer/enfire.wav" */;

// function func000639
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

void () func000639 = {

   func000638 ();
   self.nextthink = (time + self.wait);
   newmis.velocity = (self.movedir * globaldef000728);

};

// function func000640
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

void () func000640 = {

   SetMovedir ();
   self.use = func000638;
   if ( (self.spawnflags & globaldef003600) ) {

      precache_model2 (globaldef003606);
      precache_sound2 (globaldef003603);
      precache_sound2 (globaldef003607);

   } else {

      precache_sound (globaldef002019);

   }

};
string globaldef003606 /* = "progs/laser.mdl" */;
string globaldef003607 /* = "enforcer/enfstop.wav" */;

// function trap_spikeshooter
// function number 641 begins at statement 17816
/*
 * OP_CALL0	12102	0	0
 * OP_DONE	0	0	0
 */

void () trap_spikeshooter = {

   func000640 ();

};

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

   func000640 ();
   if ( (self.wait == FALSE) ) {

      self.wait = TRUE;

   }
   self.nextthink = ((self.nextthink + self.wait) + self.ltime);
   self.think = func000639;

};

void () make_bubbles;

void () bubble_remove;

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
   precache_model (globaldef002435);
   self.nextthink = (time + TRUE);
   self.think = make_bubbles;

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

   local entity bubble;

   bubble = spawn ();
   setmodel (bubble,globaldef002435);
   setorigin (bubble,self.origin);
   bubble.movetype = MOVETYPE_NOCLIP;
   bubble.solid = SOLID_NOT;
   bubble.velocity = globaldef003170;
   bubble.nextthink = (time + globaldef000522);
   bubble.think = bubble_bob;
   bubble.touch = bubble_remove;
   bubble.classname = globaldef003171;
   bubble.frame = FALSE;
   bubble.cnt = FALSE;
   setsize (bubble,globaldef001621,globaldef001622);
   self.nextthink = ((time + random ()) + globaldef000522);
   self.think = make_bubbles;

};

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

   local entity bubble;

   bubble = spawn ();
   setmodel (bubble,globaldef002435);
   setorigin (bubble,self.origin);
   bubble.movetype = MOVETYPE_NOCLIP;
   bubble.solid = SOLID_NOT;
   bubble.velocity = self.velocity;
   bubble.nextthink = (time + globaldef000522);
   bubble.think = bubble_bob;
   bubble.touch = bubble_remove;
   bubble.classname = globaldef003171;
   bubble.frame = TRUE;
   bubble.cnt = MOVETYPE_BOUNCE;
   setsize (bubble,globaldef001621,globaldef001622);
   self.frame = TRUE;
   self.cnt = MOVETYPE_BOUNCE;
   if ( (self.waterlevel != MOVETYPE_WALK) ) {

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

   local float rnd1;
   local float rnd2;
   local float rnd3;
   local vector vtmp1;
   local vector modi;

   self.cnt = (self.cnt + TRUE);
   if ( (self.cnt == MOVETYPE_STEP) ) {

      bubble_split ();

   }
   if ( (self.cnt == globaldef001384) ) {

      remove (self);

   }
   rnd1 = (self.velocity + (globaldef003627 + (random () * globaldef001384)));
   rnd2 = (self.velocity_y + (globaldef003627 + (random () * globaldef001384)));
   rnd3 = ((self.velocity_z + MOVETYPE_BOUNCE) + (random () * MOVETYPE_BOUNCE));
   if ( (rnd1 > MOVETYPE_BOUNCE) ) {

      rnd1 = MOVETYPE_FLY;

   }
   if ( (rnd1 < globaldef003627) ) {

      rnd1 = CONTENT_LAVA;

   }
   if ( (rnd2 > MOVETYPE_BOUNCE) ) {

      rnd2 = MOVETYPE_FLY;

   }
   if ( (rnd2 < globaldef003627) ) {

      rnd2 = CONTENT_LAVA;

   }
   if ( (rnd3 < MOVETYPE_BOUNCE) ) {

      rnd3 = globaldef000748;

   }
   if ( (rnd3 > SVC_INTERMISSION) ) {

      rnd3 = globaldef000288;

   }
   self.velocity = rnd1;
   self.velocity_y = rnd2;
   self.velocity_z = rnd3;
   self.nextthink = (time + globaldef000522);
   self.think = bubble_bob;

};
float globaldef003627 /* = -10.000 */;

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
   precache_model (globaldef002429);
   setmodel (self,globaldef002429);

};

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

   self.frame = (TRUE - self.frame);

};

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
   self.use = func_wall_use;
   setmodel (self,self.model);

};

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
   makestatic (self);

};

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

   if ( !(serverflags & self.spawnflags) ) {

      return ;

   }
   self.angles = VEC_ORIGIN;
   self.movetype = MOVETYPE_PUSH;
   self.solid = SOLID_BSP;
   self.use = func_wall_use;
   setmodel (self,self.model);

};

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

   if ( ((serverflags & globaldef000748) == globaldef000748) ) {

      return ;

   }
   self.angles = VEC_ORIGIN;
   self.movetype = MOVETYPE_PUSH;
   self.solid = SOLID_BSP;
   self.use = func_wall_use;
   setmodel (self,self.model);

};

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

   precache_sound (globaldef003635);
   ambientsound (self.origin,globaldef003635,TRUE,ATTN_STATIC);

};
string globaldef003635 /* = "ambience/suck1.wav" */;

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

   precache_sound (globaldef003637);
   ambientsound (self.origin,globaldef003637,globaldef000522,ATTN_STATIC);

};
string globaldef003637 /* = "ambience/drone6.wav" */;

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

   precache_sound (globaldef003574);
   ambientsound (self.origin,globaldef003574,TRUE,ATTN_STATIC);

};

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

   precache_sound (globaldef003640);
   ambientsound (self.origin,globaldef003640,globaldef000522,ATTN_STATIC);

};
string globaldef003640 /* = "ambience/drip1.wav" */;

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

   precache_sound (globaldef003642);
   ambientsound (self.origin,globaldef003642,TRUE,ATTN_STATIC);

};
string globaldef003642 /* = "ambience/comp1.wav" */;

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

   precache_sound (globaldef003644);
   ambientsound (self.origin,globaldef003644,globaldef000522,ATTN_STATIC);

};
string globaldef003644 /* = "ambience/thunder1.wav" */;

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

   precache_sound (globaldef003572);
   ambientsound (self.origin,globaldef003572,globaldef000522,ATTN_STATIC);

};

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

   precache_sound (globaldef003647);
   ambientsound (self.origin,globaldef003647,globaldef000522,ATTN_STATIC);

};
string globaldef003647 /* = "ambience/swamp1.wav" */;

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

   precache_sound (globaldef003649);
   ambientsound (self.origin,globaldef003649,globaldef000522,ATTN_STATIC);

};
string globaldef003649 /* = "ambience/swamp2.wav" */;

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

   self.nextthink = (time + globaldef000522);
   sound (self,TRUE,globaldef003603,TRUE,ATTN_NORM);
   sound (self,FL_SWIM,globaldef003607,TRUE,ATTN_NORM);
   sound (self,MOVETYPE_WALK,globaldef001676,TRUE,ATTN_NORM);
   sound (self,MOVETYPE_STEP,globaldef001677,TRUE,ATTN_NORM);
   sound (self,MOVETYPE_FLY,globaldef001678,TRUE,ATTN_NORM);
   sound (self,MOVETYPE_TOSS,globaldef001679,TRUE,ATTN_NORM);
   sound (self,MOVETYPE_PUSH,globaldef003651,TRUE,ATTN_NORM);

};
string globaldef003651 /* = "enforcer/pain1.wav" */;

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

   precache_sound2 (globaldef003603);
   precache_sound2 (globaldef003607);
   precache_sound2 (globaldef001676);
   precache_sound2 (globaldef001677);
   precache_sound2 (globaldef001678);
   precache_sound2 (globaldef001679);
   precache_sound2 (globaldef003651);
   precache_sound2 (globaldef003653);
   precache_sound2 (globaldef003654);
   precache_sound2 (globaldef003655);
   self.nextthink = ((time + globaldef001488) + random ());
   self.think = noise_think;

};
