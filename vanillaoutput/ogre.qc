
// function OgreGrenadeExplode
// function number 502 begins at statement 11931
/*
 * OP_LOAD_ENT	28	201	7622
 * OP_STORE_V	28	4	0
 * OP_STORE_V	7622	7	0
 * OP_STORE_V	1733	10	0
 * OP_STORE_V	30	13	0
 * OP_CALL4	1720	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	2616	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	301	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	311	7	0
 * OP_CALL2	493	0	0
 * OP_LOAD_F	28	106	7623
 * OP_STORE_V	337	4	0
 * OP_STORE_V	7623	7	0
 * OP_CALL2	497	0	0
 * OP_LOAD_F	28	107	7624
 * OP_STORE_V	337	4	0
 * OP_STORE_V	7624	7	0
 * OP_CALL2	497	0	0
 * OP_LOAD_F	28	108	7625
 * OP_STORE_V	337	4	0
 * OP_STORE_V	7625	7	0
 * OP_CALL2	497	0	0
 * OP_ADDRESS	28	113	7626
 * OP_STOREP_V	286	7626	0
 * OP_ADDRESS	28	146	7629
 * OP_STOREP_FNC	517	7629	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	2917	7	0
 * OP_CALL2	449	0	0
 * OP_ADDRESS	28	104	7630
 * OP_STOREP_F	237	7630	0
 * OP_CALL0	2905	0	0
 * OP_DONE	0	0	0
 */

void () OgreGrenadeExplode = {

   T_RadiusDamage (self,self.owner,40.000,world);
   sound (self,CHAN_VOICE,"weapons/r_exp3.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   WriteByte (MSG_BROADCAST,SVC_TEMPENTITY);
   WriteByte (MSG_BROADCAST,TE_EXPLOSION);
   WriteCoord (MSG_BROADCAST,self.origin_x);
   WriteCoord (MSG_BROADCAST,self.origin_y);
   WriteCoord (MSG_BROADCAST,self.origin_z);
   self.velocity = VEC_ORIGIN;
   self.touch = SUB_Null;
   setmodel (self,"progs/s_explod.spr");
   self.solid = SOLID_NOT;
   s_explode1 ();

};

// function OgreGrenadeTouch
// function number 503 begins at statement 11972
/*
 * OP_LOAD_ENT	28	201	7632
 * OP_EQ_E	29	7632	7633
 * OP_IFNOT	7633	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	163	7634
 * OP_EQ_F	7634	252	7635
 * OP_IFNOT	7635	3	0
 * OP_CALL0	7621	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	2626	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_V	28	113	7636
 * OP_EQ_V	7636	286	7639
 * OP_IFNOT	7639	3	0
 * OP_ADDRESS	28	121	7640
 * OP_STOREP_V	286	7640	0
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
   sound (self,CHAN_VOICE,"weapons/bounce.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   if ( (self.velocity == VEC_ORIGIN) ) {

      self.avelocity = VEC_ORIGIN;

   }

};

// function OgreFireGrenade
// function number 504 begins at statement 11993
/*
 * OP_ADDRESS	28	133	7646
 * OP_LOAD_F	28	133	7647
 * OP_BITOR	7647	334	7648
 * OP_STOREP_F	7648	7646	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	2625	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	459	0	0
 * OP_STORE_ENT	1	7644	0
 * OP_ADDRESS	7644	201	7649
 * OP_STOREP_ENT	28	7649	0
 * OP_ADDRESS	7644	103	7650
 * OP_STOREP_F	235	7650	0
 * OP_ADDRESS	7644	104	7651
 * OP_STOREP_F	239	7651	0
 * OP_LOAD_V	28	117	7652
 * OP_STORE_V	7652	4	0
 * OP_CALL1	447	0	0
 * OP_ADDRESS	7644	113	7655
 * OP_LOAD_ENT	28	181	7658
 * OP_LOAD_V	7658	105	7659
 * OP_LOAD_V	28	105	7662
 * OP_SUB_V	7659	7662	7665
 * OP_STORE_V	7665	4	0
 * OP_CALL1	454	0	0
 * OP_STOREP_V	1	7655	0
 * OP_ADDRESS	7644	113	7668
 * OP_LOAD_V	7644	113	7671
 * OP_MUL_VF	7671	1029	7674
 * OP_STOREP_V	7674	7668	0
 * OP_ADDRESS	7644	116	7677
 * OP_STOREP_F	1965	7677	0
 * OP_ADDRESS	7644	121	7678
 * OP_STOREP_V	3186	7678	0
 * OP_ADDRESS	7644	117	7681
 * OP_LOAD_V	7644	113	7684
 * OP_STORE_V	7684	4	0
 * OP_CALL1	492	0	0
 * OP_STOREP_V	1	7681	0
 * OP_ADDRESS	7644	146	7687
 * OP_STOREP_FNC	7631	7687	0
 * OP_ADDRESS	7644	150	7688
 * OP_ADD_F	31	3197	7689
 * OP_STOREP_F	7689	7688	0
 * OP_ADDRESS	7644	148	7690
 * OP_STOREP_FNC	7621	7690	0
 * OP_STORE_V	7644	4	0
 * OP_STORE_V	3200	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	7644	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	450	0	0
 * OP_LOAD_V	28	105	7691
 * OP_STORE_V	7644	4	0
 * OP_STORE_V	7691	7	0
 * OP_CALL2	448	0	0
 * OP_DONE	0	0	0
 */

void () OgreFireGrenade = {

   local entity missile;
   local entity mpuff;

   self.effects = (self.effects | EF_MUZZLEFLASH);
   sound (self,CHAN_WEAPON,"weapons/grenade.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   missile = spawn ();
   missile.owner = self;
   missile.movetype = MOVETYPE_BOUNCE;
   missile.solid = SOLID_BBOX;
   makevectors (self.angles);
   missile.velocity = normalize ((self.enemy.origin - self.origin));
   missile.velocity = (missile.velocity * 600.000);
   missile.velocity_z = 200.000;
   missile.avelocity = '300.000 300.000 300.000';
   missile.angles = vectoangles (missile.velocity);
   missile.touch = OgreGrenadeTouch;
   missile.nextthink = (time + 2.500);
   missile.think = OgreGrenadeExplode;
   setmodel (missile,"progs/grenade.mdl");
   setsize (missile,VEC_ORIGIN,VEC_ORIGIN);
   setorigin (missile,self.origin);

};

// function chainsaw
// function number 505 begins at statement 12054
/*
 * OP_LOAD_ENT	28	181	7700
 * OP_NOT_ENT	7700	0	7701
 * OP_IFNOT	7701	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	7702
 * OP_STORE_V	7702	4	0
 * OP_STORE_V	28	7	0
 * OP_CALL2	522	0	0
 * OP_NOT_F	1	0	7703
 * OP_IFNOT	7703	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_LOAD_ENT	28	181	7704
 * OP_LOAD_V	7704	105	7705
 * OP_LOAD_V	28	105	7708
 * OP_SUB_V	7705	7708	7711
 * OP_STORE_V	7711	7696	0
 * OP_STORE_V	7696	4	0
 * OP_CALL1	457	0	0
 * OP_GT	1	1884	7714
 * OP_IFNOT	7714	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	452	0	0
 * OP_STORE_V	1	7715	0
 * OP_CALL0	452	0	0
 * OP_ADD_F	7715	1	7718
 * OP_CALL0	452	0	0
 * OP_ADD_F	7718	1	7719
 * OP_MUL_F	7719	6076	7720
 * OP_STORE_F	7720	7699	0
 * OP_LOAD_ENT	28	181	7721
 * OP_STORE_V	7721	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	7699	13	0
 * OP_CALL4	520	0	0
 * OP_IFNOT	7695	23	0
 * OP_LOAD_V	28	117	7722
 * OP_STORE_V	7722	4	0
 * OP_CALL1	447	0	0
 * OP_EQ_F	7695	7368	7725
 * OP_IFNOT	7725	11	0
 * OP_LOAD_V	28	105	7726
 * OP_MUL_VF	59	6078	7729
 * OP_ADD_V	7726	7729	7732
 * OP_CALL0	2628	0	0
 * OP_MUL_F	1	1884	7735
 * OP_MUL_FV	7735	65	7736
 * OP_STORE_V	7732	4	0
 * OP_STORE_V	7736	7	0
 * OP_CALL2	2696	0	0
 * OP_GOTO	8	0	0
 * OP_LOAD_V	28	105	7739
 * OP_MUL_VF	59	6078	7742
 * OP_ADD_V	7739	7742	7745
 * OP_MUL_FV	7695	65	7748
 * OP_STORE_V	7745	4	0
 * OP_STORE_V	7748	7	0
 * OP_CALL2	2696	0	0
 * OP_DONE	0	0	0
 */

void (float side) chainsaw = {

   local vector delta;
   local float ldmg;

   if ( !self.enemy ) {

      return ;

   }
   if ( !CanDamage (self.enemy,self) ) {

      return ;

   }
   ai_charge (TE_LAVASPLASH);
   delta = (self.enemy.origin - self.origin);
   if ( (vlen (delta) > 100.000) ) {

      return ;

   }
   ldmg = (((random () + random ()) + random ()) * SECRET_1ST_DOWN);
   T_Damage (self.enemy,self,self,ldmg);
   if ( side ) {

      makevectors (self.angles);
      if ( (side == SPAWNFLAG_SUPERSPIKE) ) {

         SpawnMeatSpray ((self.origin + (v_forward * SECRET_YES_SHOOT)),((crandom () * 100.000) * v_right));

      } else {

         SpawnMeatSpray ((self.origin + (v_forward * SECRET_YES_SHOOT)),(side * v_right));

      }

   }

};

// function ogre_stand1
// function number 506 begins at statement 12115
/*
 * OP_STATE	337	7752	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand1 = [ 0.000, ogre_stand2 ] {

   ai_stand ();

};

// function ogre_stand2
// function number 507 begins at statement 12118
/*
 * OP_STATE	7368	7753	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand2 = [ 1.000, ogre_stand3 ] {

   ai_stand ();

};

// function ogre_stand3
// function number 508 begins at statement 12121
/*
 * OP_STATE	7369	7754	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand3 = [ 2.000, ogre_stand4 ] {

   ai_stand ();

};

// function ogre_stand4
// function number 509 begins at statement 12124
/*
 * OP_STATE	370	7755	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand4 = [ 3.000, ogre_stand5 ] {

   ai_stand ();

};

// function ogre_stand5
// function number 510 begins at statement 12127
/*
 * OP_STATE	6076	7756	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	7757
 * OP_IFNOT	7757	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	7758	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand5 = [ 4.000, ogre_stand6 ] {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"ogre/ogidle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }
   ai_stand ();

};

// function ogre_stand6
// function number 511 begins at statement 12139
/*
 * OP_STATE	313	7759	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand6 = [ 5.000, ogre_stand7 ] {

   ai_stand ();

};

// function ogre_stand7
// function number 512 begins at statement 12142
/*
 * OP_STATE	314	7760	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand7 = [ 6.000, ogre_stand8 ] {

   ai_stand ();

};

// function ogre_stand8
// function number 513 begins at statement 12145
/*
 * OP_STATE	315	7761	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand8 = [ 7.000, ogre_stand9 ] {

   ai_stand ();

};

// function ogre_stand9
// function number 514 begins at statement 12148
/*
 * OP_STATE	6077	7751	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () ogre_stand9 = [ 8.000, ogre_stand1 ] {

   ai_stand ();

};

// function ogre_walk1
// function number 515 begins at statement 12151
/*
 * OP_STATE	317	7763	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk1 = [ 9.000, ogre_walk2 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk2
// function number 516 begins at statement 12155
/*
 * OP_STATE	318	7764	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk2 = [ 10.000, ogre_walk3 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function ogre_walk3
// function number 517 begins at statement 12159
/*
 * OP_STATE	319	7765	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	7766
 * OP_IFNOT	7766	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	7758	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk3 = [ 11.000, ogre_walk4 ] {

   ai_walk (SPAWNFLAG_LASER);
   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"ogre/ogidle.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }

};

// function ogre_walk4
// function number 518 begins at statement 12172
/*
 * OP_STATE	2250	7767	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk4 = [ 12.000, ogre_walk5 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function ogre_walk5
// function number 519 begins at statement 12176
/*
 * OP_STATE	7768	7769	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk5 = [ 13.000, ogre_walk6 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function ogre_walk6
// function number 520 begins at statement 12180
/*
 * OP_STATE	2901	7770	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1351	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	603	7771
 * OP_IFNOT	7771	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	1114	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk6 = [ 14.000, ogre_walk7 ] {

   ai_walk (TE_LIGHTNING1);
   if ( (random () < 0.100) ) {

      sound (self,CHAN_VOICE,"ogre/ogdrag.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }

};

// function ogre_walk7
// function number 521 begins at statement 12193
/*
 * OP_STATE	1876	7772	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk7 = [ 15.000, ogre_walk8 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk8
// function number 522 begins at statement 12197
/*
 * OP_STATE	6078	7773	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk8 = [ 16.000, ogre_walk9 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function ogre_walk9
// function number 523 begins at statement 12201
/*
 * OP_STATE	4861	7774	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk9 = [ 17.000, ogre_walk10 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk10
// function number 524 begins at statement 12205
/*
 * OP_STATE	3319	7775	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk10 = [ 18.000, ogre_walk11 ] {

   ai_walk (SPAWNFLAG_SUPERSPIKE);

};

// function ogre_walk11
// function number 525 begins at statement 12209
/*
 * OP_STATE	7776	7777	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk11 = [ 19.000, ogre_walk12 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function ogre_walk12
// function number 526 begins at statement 12213
/*
 * OP_STATE	894	7778	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk12 = [ 20.000, ogre_walk13 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk13
// function number 527 begins at statement 12217
/*
 * OP_STATE	7779	7780	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk13 = [ 21.000, ogre_walk14 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk14
// function number 528 begins at statement 12221
/*
 * OP_STATE	7781	7782	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk14 = [ 22.000, ogre_walk15 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk15
// function number 529 begins at statement 12225
/*
 * OP_STATE	301	7783	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk15 = [ 23.000, ogre_walk16 ] {

   ai_walk (AS_MELEE);

};

// function ogre_walk16
// function number 530 begins at statement 12229
/*
 * OP_STATE	4437	7762	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () ogre_walk16 = [ 24.000, ogre_walk1 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function ogre_run1
// function number 531 begins at statement 12233
/*
 * OP_STATE	1890	7785	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	1432	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	836	7786
 * OP_IFNOT	7786	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	7787	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	327	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run1 = [ 25.000, ogre_run2 ] {

   ai_run (TE_LIGHTNING3);
   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"ogre/ogidle2.wav",SPAWNFLAG_SUPERSPIKE,ATTN_IDLE);

   }

};

// function ogre_run2
// function number 532 begins at statement 12246
/*
 * OP_STATE	7788	7789	0
 * OP_STORE_V	2250	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run2 = [ 26.000, ogre_run3 ] {

   ai_run (12.000);

};

// function ogre_run3
// function number 533 begins at statement 12250
/*
 * OP_STATE	302	7790	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run3 = [ 27.000, ogre_run4 ] {

   ai_run (SECRET_NO_SHOOT);

};

// function ogre_run4
// function number 534 begins at statement 12254
/*
 * OP_STATE	303	7791	0
 * OP_STORE_V	7781	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run4 = [ 28.000, ogre_run5 ] {

   ai_run (22.000);

};

// function ogre_run5
// function number 535 begins at statement 12258
/*
 * OP_STATE	5105	7792	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run5 = [ 29.000, ogre_run6 ] {

   ai_run (SECRET_YES_SHOOT);

};

// function ogre_run6
// function number 536 begins at statement 12262
/*
 * OP_STATE	304	7793	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run6 = [ 30.000, ogre_run7 ] {

   ai_run (SECRET_1ST_DOWN);

};

// function ogre_run7
// function number 537 begins at statement 12266
/*
 * OP_STATE	305	7794	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run7 = [ 31.000, ogre_run8 ] {

   ai_run (13.000);

};

// function ogre_run8
// function number 538 begins at statement 12270
/*
 * OP_STATE	5674	7784	0
 * OP_STORE_V	4437	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () ogre_run8 = [ 32.000, ogre_run1 ] {

   ai_run (24.000);

};

// function ogre_swing1
// function number 539 begins at statement 12274
/*
 * OP_STATE	307	7795	0
 * OP_STORE_V	319	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	7796	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing1 = [ 33.000, ogre_swing2 ] {

   ai_charge (TE_TELEPORT);
   sound (self,CHAN_WEAPON,"ogre/ogsawatk.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

};

// function ogre_swing2
// function number 540 begins at statement 12284
/*
 * OP_STATE	5112	7797	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing2 = [ 34.000, ogre_swing3 ] {

   ai_charge (SPAWNFLAG_SUPERSPIKE);

};

// function ogre_swing3
// function number 541 begins at statement 12288
/*
 * OP_STATE	3072	7798	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing3 = [ 35.000, ogre_swing4 ] {

   ai_charge (SECRET_1ST_DOWN);

};

// function ogre_swing4
// function number 542 begins at statement 12292
/*
 * OP_STATE	5096	7799	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing4 = [ 36.000, ogre_swing5 ] {

   ai_charge (13.000);

};

// function ogre_swing5
// function number 543 begins at statement 12296
/*
 * OP_STATE	5098	7800	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7801
 * OP_LOAD_F	28	119	7802
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7803
 * OP_ADD_F	7802	7803	7804
 * OP_STOREP_F	7804	7801	0
 * OP_DONE	0	0	0
 */

void () ogre_swing5 = [ 37.000, ogre_swing6 ] {

   ai_charge (TE_LIGHTNING3);
   chainsaw (MSG_BROADCAST);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing6
// function number 544 begins at statement 12308
/*
 * OP_STATE	5100	7805	0
 * OP_STORE_V	1965	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7806
 * OP_LOAD_F	28	119	7807
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7808
 * OP_ADD_F	7807	7808	7809
 * OP_STOREP_F	7809	7806	0
 * OP_DONE	0	0	0
 */

void () ogre_swing6 = [ 38.000, ogre_swing7 ] {

   chainsaw (200.000);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing7
// function number 545 begins at statement 12318
/*
 * OP_STATE	5102	7810	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7811
 * OP_LOAD_F	28	119	7812
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7813
 * OP_ADD_F	7812	7813	7814
 * OP_STOREP_F	7814	7811	0
 * OP_DONE	0	0	0
 */

void () ogre_swing7 = [ 39.000, ogre_swing8 ] {

   chainsaw (MSG_BROADCAST);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing8
// function number 546 begins at statement 12328
/*
 * OP_STATE	1733	7815	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7816
 * OP_LOAD_F	28	119	7817
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7818
 * OP_ADD_F	7817	7818	7819
 * OP_STOREP_F	7819	7816	0
 * OP_DONE	0	0	0
 */

void () ogre_swing8 = [ 40.000, ogre_swing9 ] {

   chainsaw (MSG_BROADCAST);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing9
// function number 547 begins at statement 12338
/*
 * OP_STATE	5443	7820	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7821
 * OP_LOAD_F	28	119	7822
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7823
 * OP_ADD_F	7822	7823	7824
 * OP_STOREP_F	7824	7821	0
 * OP_DONE	0	0	0
 */

void () ogre_swing9 = [ 41.000, ogre_swing10 ] {

   chainsaw (MSG_BROADCAST);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing10
// function number 548 begins at statement 12348
/*
 * OP_STATE	5445	7825	0
 * OP_STORE_V	5210	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7826
 * OP_LOAD_F	28	119	7827
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7828
 * OP_ADD_F	7827	7828	7829
 * OP_STOREP_F	7829	7826	0
 * OP_DONE	0	0	0
 */

void () ogre_swing10 = [ 42.000, ogre_swing11 ] {

   chainsaw (-200.000);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing11
// function number 549 begins at statement 12358
/*
 * OP_STATE	5447	7830	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	119	7831
 * OP_LOAD_F	28	119	7832
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	1890	7833
 * OP_ADD_F	7832	7833	7834
 * OP_STOREP_F	7834	7831	0
 * OP_DONE	0	0	0
 */

void () ogre_swing11 = [ 43.000, ogre_swing12 ] {

   chainsaw (MSG_BROADCAST);
   self.angles_y = (self.angles_y + (random () * 25.000));

};

// function ogre_swing12
// function number 550 begins at statement 12368
/*
 * OP_STATE	5449	7835	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing12 = [ 44.000, ogre_swing13 ] {

   ai_charge (AS_MELEE);

};

// function ogre_swing13
// function number 551 begins at statement 12372
/*
 * OP_STATE	1390	7836	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing13 = [ 45.000, ogre_swing14 ] {

   ai_charge (SECRET_NO_SHOOT);

};

// function ogre_swing14
// function number 552 begins at statement 12376
/*
 * OP_STATE	5452	7784	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_swing14 = [ 46.000, ogre_run1 ] {

   ai_charge (TE_LIGHTNING3);

};

// function ogre_smash1
// function number 553 begins at statement 12380
/*
 * OP_STATE	5454	7837	0
 * OP_STORE_V	314	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	7796	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash1 = [ 47.000, ogre_smash2 ] {

   ai_charge (TE_LIGHTNING2);
   sound (self,CHAN_WEAPON,"ogre/ogsawatk.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);

};

// function ogre_smash2
// function number 554 begins at statement 12390
/*
 * OP_STATE	5456	7838	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash2 = [ 48.000, ogre_smash3 ] {

   ai_charge (MSG_BROADCAST);

};

// function ogre_smash3
// function number 555 begins at statement 12394
/*
 * OP_STATE	5458	7839	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash3 = [ 49.000, ogre_smash4 ] {

   ai_charge (MSG_BROADCAST);

};

// function ogre_smash4
// function number 556 begins at statement 12398
/*
 * OP_STATE	2227	7840	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash4 = [ 50.000, ogre_smash5 ] {

   ai_charge (SPAWNFLAG_SUPERSPIKE);

};

// function ogre_smash5
// function number 557 begins at statement 12402
/*
 * OP_STATE	5351	7841	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash5 = [ 51.000, ogre_smash6 ] {

   ai_charge (SECRET_1ST_DOWN);

};

// function ogre_smash6
// function number 558 begins at statement 12406
/*
 * OP_STATE	5353	7842	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash6 = [ 52.000, ogre_smash7 ] {

   ai_charge (SECRET_1ST_DOWN);
   chainsaw (MSG_BROADCAST);

};

// function ogre_smash7
// function number 559 begins at statement 12412
/*
 * OP_STATE	5355	7843	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash7 = [ 53.000, ogre_smash8 ] {

   ai_charge (SECRET_1ST_DOWN);
   chainsaw (MSG_BROADCAST);

};

// function ogre_smash8
// function number 560 begins at statement 12418
/*
 * OP_STATE	5357	7844	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash8 = [ 54.000, ogre_smash9 ] {

   ai_charge (TE_LAVASPLASH);
   chainsaw (MSG_BROADCAST);

};

// function ogre_smash9
// function number 561 begins at statement 12424
/*
 * OP_STATE	5359	7845	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash9 = [ 55.000, ogre_smash10 ] {

   ai_charge (13.000);
   chainsaw (MSG_BROADCAST);

};

// function ogre_smash10
// function number 562 begins at statement 12430
/*
 * OP_STATE	5361	7846	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	7694	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash10 = [ 56.000, ogre_smash11 ] {

   chainsaw (SPAWNFLAG_SUPERSPIKE);

};

// function ogre_smash11
// function number 563 begins at statement 12434
/*
 * OP_STATE	5363	7847	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	857	0	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	7694	0	0
 * OP_ADDRESS	28	150	7848
 * OP_LOAD_F	28	150	7849
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	836	7850
 * OP_ADD_F	7849	7850	7851
 * OP_STOREP_F	7851	7848	0
 * OP_DONE	0	0	0
 */

void () ogre_smash11 = [ 57.000, ogre_smash12 ] {

   ai_charge (SPAWNFLAG_LASER);
   chainsaw (MSG_BROADCAST);
   self.nextthink = (self.nextthink + (random () * 0.200));

};

// function ogre_smash12
// function number 564 begins at statement 12446
/*
 * OP_STATE	5365	7852	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash12 = [ 58.000, ogre_smash13 ] {

   ai_charge (MSG_BROADCAST);

};

// function ogre_smash13
// function number 565 begins at statement 12450
/*
 * OP_STATE	5367	7853	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash13 = [ 59.000, ogre_smash14 ] {

   ai_charge (SECRET_1ST_DOWN);

};

// function ogre_smash14
// function number 566 begins at statement 12454
/*
 * OP_STATE	912	7784	0
 * OP_STORE_V	2250	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () ogre_smash14 = [ 60.000, ogre_run1 ] {

   ai_charge (12.000);

};

// function ogre_nail1
// function number 567 begins at statement 12458
/*
 * OP_STATE	5369	7855	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail1 = [ 61.000, ogre_nail2 ] {

   ai_face ();

};

// function ogre_nail2
// function number 568 begins at statement 12461
/*
 * OP_STATE	5371	7856	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail2 = [ 62.000, ogre_nail3 ] {

   ai_face ();

};

// function ogre_nail3
// function number 569 begins at statement 12464
/*
 * OP_STATE	5371	7857	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail3 = [ 62.000, ogre_nail4 ] {

   ai_face ();

};

// function ogre_nail4
// function number 570 begins at statement 12467
/*
 * OP_STATE	3872	7858	0
 * OP_CALL0	758	0	0
 * OP_CALL0	7643	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail4 = [ 63.000, ogre_nail5 ] {

   ai_face ();
   OgreFireGrenade ();

};

// function ogre_nail5
// function number 571 begins at statement 12471
/*
 * OP_STATE	260	7859	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail5 = [ 64.000, ogre_nail6 ] {

   ai_face ();

};

// function ogre_nail6
// function number 572 begins at statement 12474
/*
 * OP_STATE	5375	7860	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail6 = [ 65.000, ogre_nail7 ] {

   ai_face ();

};

// function ogre_nail7
// function number 573 begins at statement 12477
/*
 * OP_STATE	5377	7784	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () ogre_nail7 = [ 66.000, ogre_run1 ] {

   ai_face ();

};

// function ogre_pain1
// function number 574 begins at statement 12480
/*
 * OP_STATE	5379	7862	0
 * OP_DONE	0	0	0
 */

void () ogre_pain1 = [ 67.000, ogre_pain2 ] {


};

// function ogre_pain2
// function number 575 begins at statement 12482
/*
 * OP_STATE	5381	7863	0
 * OP_DONE	0	0	0
 */

void () ogre_pain2 = [ 68.000, ogre_pain3 ] {


};

// function ogre_pain3
// function number 576 begins at statement 12484
/*
 * OP_STATE	5383	7864	0
 * OP_DONE	0	0	0
 */

void () ogre_pain3 = [ 69.000, ogre_pain4 ] {


};

// function ogre_pain4
// function number 577 begins at statement 12486
/*
 * OP_STATE	5384	7865	0
 * OP_DONE	0	0	0
 */

void () ogre_pain4 = [ 70.000, ogre_pain5 ] {


};

// function ogre_pain5
// function number 578 begins at statement 12488
/*
 * OP_STATE	5386	7784	0
 * OP_DONE	0	0	0
 */

void () ogre_pain5 = [ 71.000, ogre_run1 ] {


};

// function ogre_painb1
// function number 579 begins at statement 12490
/*
 * OP_STATE	5388	7867	0
 * OP_DONE	0	0	0
 */

void () ogre_painb1 = [ 72.000, ogre_painb2 ] {


};

// function ogre_painb2
// function number 580 begins at statement 12492
/*
 * OP_STATE	2739	7868	0
 * OP_DONE	0	0	0
 */

void () ogre_painb2 = [ 73.000, ogre_painb3 ] {


};

// function ogre_painb3
// function number 581 begins at statement 12494
/*
 * OP_STATE	5391	7784	0
 * OP_DONE	0	0	0
 */

void () ogre_painb3 = [ 74.000, ogre_run1 ] {


};

// function ogre_painc1
// function number 582 begins at statement 12496
/*
 * OP_STATE	5393	7870	0
 * OP_DONE	0	0	0
 */

void () ogre_painc1 = [ 75.000, ogre_painc2 ] {


};

// function ogre_painc2
// function number 583 begins at statement 12498
/*
 * OP_STATE	5395	7871	0
 * OP_DONE	0	0	0
 */

void () ogre_painc2 = [ 76.000, ogre_painc3 ] {


};

// function ogre_painc3
// function number 584 begins at statement 12500
/*
 * OP_STATE	5397	7872	0
 * OP_DONE	0	0	0
 */

void () ogre_painc3 = [ 77.000, ogre_painc4 ] {


};

// function ogre_painc4
// function number 585 begins at statement 12502
/*
 * OP_STATE	5399	7873	0
 * OP_DONE	0	0	0
 */

void () ogre_painc4 = [ 78.000, ogre_painc5 ] {


};

// function ogre_painc5
// function number 586 begins at statement 12504
/*
 * OP_STATE	5401	7874	0
 * OP_DONE	0	0	0
 */

void () ogre_painc5 = [ 79.000, ogre_painc6 ] {


};

// function ogre_painc6
// function number 587 begins at statement 12506
/*
 * OP_STATE	788	7784	0
 * OP_DONE	0	0	0
 */

void () ogre_painc6 = [ 80.000, ogre_run1 ] {


};

// function ogre_paind1
// function number 588 begins at statement 12508
/*
 * OP_STATE	5404	7876	0
 * OP_DONE	0	0	0
 */

void () ogre_paind1 = [ 81.000, ogre_paind2 ] {


};

// function ogre_paind2
// function number 589 begins at statement 12510
/*
 * OP_STATE	5406	7877	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paind2 = [ 82.000, ogre_paind3 ] {

   ai_pain (TE_LAVASPLASH);

};

// function ogre_paind3
// function number 590 begins at statement 12514
/*
 * OP_STATE	5408	7878	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paind3 = [ 83.000, ogre_paind4 ] {

   ai_pain (TE_LIGHTNING3);

};

// function ogre_paind4
// function number 591 begins at statement 12518
/*
 * OP_STATE	5410	7879	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paind4 = [ 84.000, ogre_paind5 ] {

   ai_pain (SECRET_1ST_DOWN);

};

// function ogre_paind5
// function number 592 begins at statement 12522
/*
 * OP_STATE	5411	7880	0
 * OP_DONE	0	0	0
 */

void () ogre_paind5 = [ 85.000, ogre_paind6 ] {


};

// function ogre_paind6
// function number 593 begins at statement 12524
/*
 * OP_STATE	5413	7881	0
 * OP_DONE	0	0	0
 */

void () ogre_paind6 = [ 86.000, ogre_paind7 ] {


};

// function ogre_paind7
// function number 594 begins at statement 12526
/*
 * OP_STATE	5415	7882	0
 * OP_DONE	0	0	0
 */

void () ogre_paind7 = [ 87.000, ogre_paind8 ] {


};

// function ogre_paind8
// function number 595 begins at statement 12528
/*
 * OP_STATE	5417	7883	0
 * OP_DONE	0	0	0
 */

void () ogre_paind8 = [ 88.000, ogre_paind9 ] {


};

// function ogre_paind9
// function number 596 begins at statement 12530
/*
 * OP_STATE	5419	7884	0
 * OP_DONE	0	0	0
 */

void () ogre_paind9 = [ 89.000, ogre_paind10 ] {


};

// function ogre_paind10
// function number 597 begins at statement 12532
/*
 * OP_STATE	1423	7885	0
 * OP_DONE	0	0	0
 */

void () ogre_paind10 = [ 90.000, ogre_paind11 ] {


};

// function ogre_paind11
// function number 598 begins at statement 12534
/*
 * OP_STATE	5422	7886	0
 * OP_DONE	0	0	0
 */

void () ogre_paind11 = [ 91.000, ogre_paind12 ] {


};

// function ogre_paind12
// function number 599 begins at statement 12536
/*
 * OP_STATE	5424	7887	0
 * OP_DONE	0	0	0
 */

void () ogre_paind12 = [ 92.000, ogre_paind13 ] {


};

// function ogre_paind13
// function number 600 begins at statement 12538
/*
 * OP_STATE	5426	7888	0
 * OP_DONE	0	0	0
 */

void () ogre_paind13 = [ 93.000, ogre_paind14 ] {


};

// function ogre_paind14
// function number 601 begins at statement 12540
/*
 * OP_STATE	5427	7889	0
 * OP_DONE	0	0	0
 */

void () ogre_paind14 = [ 94.000, ogre_paind15 ] {


};

// function ogre_paind15
// function number 602 begins at statement 12542
/*
 * OP_STATE	5429	7890	0
 * OP_DONE	0	0	0
 */

void () ogre_paind15 = [ 95.000, ogre_paind16 ] {


};

// function ogre_paind16
// function number 603 begins at statement 12544
/*
 * OP_STATE	5431	7784	0
 * OP_DONE	0	0	0
 */

void () ogre_paind16 = [ 96.000, ogre_run1 ] {


};

// function ogre_paine1
// function number 604 begins at statement 12546
/*
 * OP_STATE	5433	7892	0
 * OP_DONE	0	0	0
 */

void () ogre_paine1 = [ 97.000, ogre_paine2 ] {


};

// function ogre_paine2
// function number 605 begins at statement 12548
/*
 * OP_STATE	5435	7893	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paine2 = [ 98.000, ogre_paine3 ] {

   ai_pain (TE_LAVASPLASH);

};

// function ogre_paine3
// function number 606 begins at statement 12552
/*
 * OP_STATE	5437	7894	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paine3 = [ 99.000, ogre_paine4 ] {

   ai_pain (TE_LIGHTNING3);

};

// function ogre_paine4
// function number 607 begins at statement 12556
/*
 * OP_STATE	1884	7895	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1346	0	0
 * OP_DONE	0	0	0
 */

void () ogre_paine4 = [ 100.000, ogre_paine5 ] {

   ai_pain (SECRET_1ST_DOWN);

};

// function ogre_paine5
// function number 608 begins at statement 12560
/*
 * OP_STATE	5440	7896	0
 * OP_DONE	0	0	0
 */

void () ogre_paine5 = [ 101.000, ogre_paine6 ] {


};

// function ogre_paine6
// function number 609 begins at statement 12562
/*
 * OP_STATE	5442	7897	0
 * OP_DONE	0	0	0
 */

void () ogre_paine6 = [ 102.000, ogre_paine7 ] {


};

// function ogre_paine7
// function number 610 begins at statement 12564
/*
 * OP_STATE	4971	7898	0
 * OP_DONE	0	0	0
 */

void () ogre_paine7 = [ 103.000, ogre_paine8 ] {


};

// function ogre_paine8
// function number 611 begins at statement 12566
/*
 * OP_STATE	4986	7899	0
 * OP_DONE	0	0	0
 */

void () ogre_paine8 = [ 104.000, ogre_paine9 ] {


};

// function ogre_paine9
// function number 612 begins at statement 12568
/*
 * OP_STATE	5000	7900	0
 * OP_DONE	0	0	0
 */

void () ogre_paine9 = [ 105.000, ogre_paine10 ] {


};

// function ogre_paine10
// function number 613 begins at statement 12570
/*
 * OP_STATE	5015	7901	0
 * OP_DONE	0	0	0
 */

void () ogre_paine10 = [ 106.000, ogre_paine11 ] {


};

// function ogre_paine11
// function number 614 begins at statement 12572
/*
 * OP_STATE	5029	7902	0
 * OP_DONE	0	0	0
 */

void () ogre_paine11 = [ 107.000, ogre_paine12 ] {


};

// function ogre_paine12
// function number 615 begins at statement 12574
/*
 * OP_STATE	5035	7903	0
 * OP_DONE	0	0	0
 */

void () ogre_paine12 = [ 108.000, ogre_paine13 ] {


};

// function ogre_paine13
// function number 616 begins at statement 12576
/*
 * OP_STATE	5038	7904	0
 * OP_DONE	0	0	0
 */

void () ogre_paine13 = [ 109.000, ogre_paine14 ] {


};

// function ogre_paine14
// function number 617 begins at statement 12578
/*
 * OP_STATE	5041	7905	0
 * OP_DONE	0	0	0
 */

void () ogre_paine14 = [ 110.000, ogre_paine15 ] {


};

// function ogre_paine15
// function number 618 begins at statement 12580
/*
 * OP_STATE	5044	7784	0
 * OP_DONE	0	0	0
 */

void () ogre_paine15 = [ 111.000, ogre_run1 ] {


};

// function ogre_pain
// function number 619 begins at statement 12582
/*
 * OP_LOAD_F	28	374	7910
 * OP_GT	7910	31	7911
 * OP_IFNOT	7911	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	7912	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	452	0	0
 * OP_STORE_F	1	7909	0
 * OP_LT	7909	3461	7913
 * OP_IFNOT	7913	6	0
 * OP_CALL0	7861	0	0
 * OP_ADDRESS	28	374	7914
 * OP_ADD_F	31	7368	7915
 * OP_STOREP_F	7915	7914	0
 * OP_GOTO	26	0	0
 * OP_LT	7909	1491	7916
 * OP_IFNOT	7916	6	0
 * OP_CALL0	7866	0	0
 * OP_ADDRESS	28	374	7917
 * OP_ADD_F	31	7368	7918
 * OP_STOREP_F	7918	7917	0
 * OP_GOTO	19	0	0
 * OP_LT	7909	3464	7919
 * OP_IFNOT	7919	6	0
 * OP_CALL0	7869	0	0
 * OP_ADDRESS	28	374	7920
 * OP_ADD_F	31	7368	7921
 * OP_STOREP_F	7921	7920	0
 * OP_GOTO	12	0	0
 * OP_LT	7909	7922	7923
 * OP_IFNOT	7923	6	0
 * OP_CALL0	7875	0	0
 * OP_ADDRESS	28	374	7924
 * OP_ADD_F	31	7369	7925
 * OP_STOREP_F	7925	7924	0
 * OP_GOTO	5	0	0
 * OP_CALL0	7891	0	0
 * OP_ADDRESS	28	374	7926
 * OP_ADD_F	31	7369	7927
 * OP_STOREP_F	7927	7926	0
 * OP_DONE	0	0	0
 */

void (entity attacker, float damage) ogre_pain = {

   local float r;

   if ( (self.pain_finished > time) ) {

      return ;

   }
   sound (self,CHAN_VOICE,"ogre/ogpain1.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   r = random ();
   if ( (r < 0.250) ) {

      ogre_pain1 ();
      self.pain_finished = (time + SPAWNFLAG_SUPERSPIKE);

   } else {

      if ( (r < 0.500) ) {

         ogre_painb1 ();
         self.pain_finished = (time + SPAWNFLAG_SUPERSPIKE);

      } else {

         if ( (r < 0.750) ) {

            ogre_painc1 ();
            self.pain_finished = (time + SPAWNFLAG_SUPERSPIKE);

         } else {

            if ( (r < 0.880) ) {

               ogre_paind1 ();
               self.pain_finished = (time + SPAWNFLAG_LASER);

            } else {

               ogre_paine1 ();
               self.pain_finished = (time + SPAWNFLAG_LASER);

            }

         }

      }

   }

};

// function ogre_die1
// function number 620 begins at statement 12627
/*
 * OP_STATE	5047	7929	0
 * OP_DONE	0	0	0
 */

void () ogre_die1 = [ 112.000, ogre_die2 ] {


};

// function ogre_die2
// function number 621 begins at statement 12629
/*
 * OP_STATE	4909	7930	0
 * OP_DONE	0	0	0
 */

void () ogre_die2 = [ 113.000, ogre_die3 ] {


};

// function ogre_die3
// function number 622 begins at statement 12631
/*
 * OP_STATE	4915	7931	0
 * OP_ADDRESS	28	104	7932
 * OP_STOREP_F	237	7932	0
 * OP_ADDRESS	28	160	7933
 * OP_STOREP_F	7369	7933	0
 * OP_CALL0	2535	0	0
 * OP_DONE	0	0	0
 */

void () ogre_die3 = [ 114.000, ogre_die4 ] {

   self.solid = SOLID_NOT;
   self.ammo_rockets = SPAWNFLAG_LASER;
   DropBackpack ();

};

// function ogre_die4
// function number 623 begins at statement 12638
/*
 * OP_STATE	4918	7934	0
 * OP_DONE	0	0	0
 */

void () ogre_die4 = [ 115.000, ogre_die5 ] {


};

// function ogre_die5
// function number 624 begins at statement 12640
/*
 * OP_STATE	4921	7935	0
 * OP_DONE	0	0	0
 */

void () ogre_die5 = [ 116.000, ogre_die6 ] {


};

// function ogre_die6
// function number 625 begins at statement 12642
/*
 * OP_STATE	4924	7936	0
 * OP_DONE	0	0	0
 */

void () ogre_die6 = [ 117.000, ogre_die7 ] {


};

// function ogre_die7
// function number 626 begins at statement 12644
/*
 * OP_STATE	4927	7937	0
 * OP_DONE	0	0	0
 */

void () ogre_die7 = [ 118.000, ogre_die8 ] {


};

// function ogre_die8
// function number 627 begins at statement 12646
/*
 * OP_STATE	4929	7938	0
 * OP_DONE	0	0	0
 */

void () ogre_die8 = [ 119.000, ogre_die9 ] {


};

// function ogre_die9
// function number 628 begins at statement 12648
/*
 * OP_STATE	1164	7939	0
 * OP_DONE	0	0	0
 */

void () ogre_die9 = [ 120.000, ogre_die10 ] {


};

// function ogre_die10
// function number 629 begins at statement 12650
/*
 * OP_STATE	4934	7940	0
 * OP_DONE	0	0	0
 */

void () ogre_die10 = [ 121.000, ogre_die11 ] {


};

// function ogre_die11
// function number 630 begins at statement 12652
/*
 * OP_STATE	4937	7941	0
 * OP_DONE	0	0	0
 */

void () ogre_die11 = [ 122.000, ogre_die12 ] {


};

// function ogre_die12
// function number 631 begins at statement 12654
/*
 * OP_STATE	7942	7943	0
 * OP_DONE	0	0	0
 */

void () ogre_die12 = [ 123.000, ogre_die13 ] {


};

// function ogre_die13
// function number 632 begins at statement 12656
/*
 * OP_STATE	7944	7945	0
 * OP_DONE	0	0	0
 */

void () ogre_die13 = [ 124.000, ogre_die14 ] {


};

// function ogre_die14
// function number 633 begins at statement 12658
/*
 * OP_STATE	4939	7945	0
 * OP_DONE	0	0	0
 */

void () ogre_die14 = [ 125.000, ogre_die14 ] {


};

// function ogre_bdie1
// function number 634 begins at statement 12660
/*
 * OP_STATE	4942	7947	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie1 = [ 126.000, ogre_bdie2 ] {


};

// function ogre_bdie2
// function number 635 begins at statement 12662
/*
 * OP_STATE	4945	7948	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie2 = [ 127.000, ogre_bdie3 ] {

   ai_forward (TE_LIGHTNING1);

};

// function ogre_bdie3
// function number 636 begins at statement 12666
/*
 * OP_STATE	261	7949	0
 * OP_ADDRESS	28	104	7950
 * OP_STOREP_F	237	7950	0
 * OP_ADDRESS	28	160	7951
 * OP_STOREP_F	7369	7951	0
 * OP_CALL0	2535	0	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie3 = [ 128.000, ogre_bdie4 ] {

   self.solid = SOLID_NOT;
   self.ammo_rockets = SPAWNFLAG_LASER;
   DropBackpack ();

};

// function ogre_bdie4
// function number 637 begins at statement 12673
/*
 * OP_STATE	7952	7953	0
 * OP_STORE_V	7368	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie4 = [ 129.000, ogre_bdie5 ] {

   ai_forward (SPAWNFLAG_SUPERSPIKE);

};

// function ogre_bdie5
// function number 638 begins at statement 12677
/*
 * OP_STATE	7954	7955	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie5 = [ 130.000, ogre_bdie6 ] {

   ai_forward (AS_MELEE);

};

// function ogre_bdie6
// function number 639 begins at statement 12681
/*
 * OP_STATE	4949	7956	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie6 = [ 131.000, ogre_bdie7 ] {

   ai_forward (TE_WIZSPIKE);

};

// function ogre_bdie7
// function number 640 begins at statement 12685
/*
 * OP_STATE	4952	7957	0
 * OP_STORE_V	1890	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie7 = [ 132.000, ogre_bdie8 ] {

   ai_forward (25.000);

};

// function ogre_bdie8
// function number 641 begins at statement 12689
/*
 * OP_STATE	4955	7958	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie8 = [ 133.000, ogre_bdie9 ] {


};

// function ogre_bdie9
// function number 642 begins at statement 12691
/*
 * OP_STATE	4958	7959	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie9 = [ 134.000, ogre_bdie10 ] {


};

// function ogre_bdie10
// function number 643 begins at statement 12693
/*
 * OP_STATE	7960	7959	0
 * OP_DONE	0	0	0
 */

void () ogre_bdie10 = [ 135.000, ogre_bdie10 ] {


};

// function ogre_die
// function number 644 begins at statement 12695
/*
 * OP_LOAD_F	28	152	7962
 * OP_LT	7962	7963	7964
 * OP_IFNOT	7964	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3826	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	152	7966
 * OP_STORE_V	7965	4	0
 * OP_STORE_V	7966	7	0
 * OP_CALL2	5247	0	0
 * OP_LOAD_F	28	152	7967
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	7967	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	7968
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	7968	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	7969
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	7969	7	0
 * OP_CALL2	5218	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	7970	10	0
 * OP_STORE_V	7368	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	452	0	0
 * OP_LT	1	1491	7971
 * OP_IFNOT	7971	3	0
 * OP_CALL0	7928	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	7946	0	0
 * OP_DONE	0	0	0
 */

void () ogre_die = {

   if ( (self.health < -80.000) ) {

      sound (self,CHAN_VOICE,"player/udeath.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
      ThrowHead ("progs/h_ogre.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      return ;

   }
   sound (self,CHAN_VOICE,"ogre/ogdth.wav",SPAWNFLAG_SUPERSPIKE,ATTN_NORM);
   if ( (random () < 0.500) ) {

      ogre_die1 ();

   } else {

      ogre_bdie1 ();

   }

};

// function ogre_melee
// function number 645 begins at statement 12734
/*
 * OP_CALL0	452	0	0
 * OP_GT	1	1491	7973
 * OP_IFNOT	7973	3	0
 * OP_CALL0	750	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	751	0	0
 * OP_DONE	0	0	0
 */

void () ogre_melee = {

   if ( (random () > 0.500) ) {

      ogre_smash1 ();

   } else {

      ogre_swing1 ();

   }

};

// function monster_ogre
// function number 646 begins at statement 12741
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	7975	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	7965	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	3200	4	0
 * OP_CALL1	465	0	0
 * OP_STORE_V	1114	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	7970	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	7758	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	7787	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	7912	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	7796	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	1238	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	104	7976
 * OP_STOREP_F	240	7976	0
 * OP_ADDRESS	28	103	7977
 * OP_STOREP_F	229	7977	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	7975	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	295	7	0
 * OP_STORE_V	298	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	152	7978
 * OP_STOREP_F	1965	7978	0
 * OP_ADDRESS	28	356	7979
 * OP_STOREP_FNC	7751	7979	0
 * OP_ADDRESS	28	357	7980
 * OP_STOREP_FNC	7762	7980	0
 * OP_ADDRESS	28	358	7981
 * OP_STOREP_FNC	7784	7981	0
 * OP_ADDRESS	28	362	7982
 * OP_STOREP_FNC	7961	7982	0
 * OP_ADDRESS	28	360	7983
 * OP_STOREP_FNC	7972	7983	0
 * OP_ADDRESS	28	359	7984
 * OP_STOREP_FNC	7854	7984	0
 * OP_ADDRESS	28	361	7985
 * OP_STOREP_FNC	7906	7985	0
 * OP_CALL0	5557	0	0
 * OP_DONE	0	0	0
 */

void () monster_ogre = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model ("progs/ogre.mdl");
   precache_model ("progs/h_ogre.mdl");
   precache_model ("progs/grenade.mdl");
   precache_sound ("ogre/ogdrag.wav");
   precache_sound ("ogre/ogdth.wav");
   precache_sound ("ogre/ogidle.wav");
   precache_sound ("ogre/ogidle2.wav");
   precache_sound ("ogre/ogpain1.wav");
   precache_sound ("ogre/ogsawatk.wav");
   precache_sound ("ogre/ogwake.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,"progs/ogre.mdl");
   setsize (self,VEC_HULL2_MIN,VEC_HULL2_MAX);
   self.health = 200.000;
   self.th_stand = ogre_stand1;
   self.th_walk = ogre_walk1;
   self.th_run = ogre_run1;
   self.th_die = ogre_die;
   self.th_melee = ogre_melee;
   self.th_missile = ogre_nail1;
   self.th_pain = ogre_pain;
   walkmonster_start ();

};

// function monster_ogre_marksman
// function number 647 begins at statement 12794
/*
 * OP_CALL0	7974	0	0
 * OP_DONE	0	0	0
 */

void () monster_ogre_marksman = {

   monster_ogre ();

};
