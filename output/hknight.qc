
void () hknight_char_a1;

void () hknight_run1;

void () hk_idle_sound;

// function hknight_shot
// function number 1583 begins at statement 18200
/*
 * OP_LOAD_ENT	28	181	10438
 * OP_LOAD_V	10438	105	10439
 * OP_LOAD_V	28	105	10442
 * OP_SUB_V	10439	10442	10445
 * OP_STORE_V	10445	4	0
 * OP_CALL1	492	0	0
 * OP_STORE_V	1	10429	0
 * OP_MUL_F	10428	314	10448
 * OP_ADD_F	10430	10448	10449
 * OP_STORE_F	10449	10430	0
 * OP_STORE_V	10429	4	0
 * OP_CALL1	447	0	0
 * OP_LOAD_V	28	105	10450
 * OP_LOAD_V	28	134	10453
 * OP_ADD_V	10450	10453	10456
 * OP_LOAD_V	28	142	10459
 * OP_MUL_VF	10459	1491	10462
 * OP_ADD_V	10456	10462	10465
 * OP_MUL_VF	59	894	10468
 * OP_ADD_V	10465	10468	10471
 * OP_STORE_V	10471	10432	0
 * OP_STORE_V	59	4	0
 * OP_CALL1	454	0	0
 * OP_STORE_V	1	10435	0
 * OP_SUB_F	337	10437	10474
 * OP_CALL0	452	0	0
 * OP_SUB_F	1	1491	10475
 * OP_MUL_F	10475	603	10476
 * OP_ADD_F	10474	10476	10477
 * OP_STORE_F	10477	10437	0
 * OP_STORE_V	10432	4	0
 * OP_STORE_V	10435	7	0
 * OP_CALL2	3206	0	0
 * OP_ADDRESS	345	129	10478
 * OP_STOREP_S	3304	10478	0
 * OP_STORE_V	345	4	0
 * OP_STORE_V	10479	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	345	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	345	113	10480
 * OP_MUL_VF	10435	2596	10483
 * OP_STOREP_V	10483	10480	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	10486	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void (float offset) hknight_shot = {

   local vector offang;
   local vector org;
   local vector vec;

   offang = vectoangles ((self.enemy.origin - self.origin));
   offang_y = (offang_y + (offset * TE_LIGHTNING2));
   makevectors (offang);
   org = (((self.origin + self.mins) + (self.size * 0.500)) + (v_forward * 20.000));
   vec = normalize (v_forward);
   vec_z = ((MSG_BROADCAST - vec_z) + ((random () - 0.500) * 0.100));
   launch_spike (org,vec);
   newmis.classname = "knightspike";
   setmodel (newmis,"progs/k_spike.mdl");
   setsize (newmis,VEC_ORIGIN,VEC_ORIGIN);
   newmis.velocity = (vec * 300.000);
   sound (self,CHAN_WEAPON,"hknight/attack1.wav",SPAWN_CRUCIFIED,ATTN_NORM);

};

// function CheckForCharge
// function number 1584 begins at statement 18252
/*
 * OP_NOT_F	759	0	10488
 * OP_IFNOT	10488	2	0
 * OP_RETURN	0	0	0
 * 124	28	373	10489
 * OP_LT	31	10489	10490
 * OP_IFNOT	10490	2	0
 * OP_RETURN	0	0	0
 * 124	28	108	10491
 * OP_LOAD_ENT	28	181	10492
 * OP_LOAD_F	10492	108	10493
 * OP_SUB_F	10491	10493	10494
 * OP_STORE_V	10494	4	0
 * OP_CALL1	485	0	0
 * OP_GT	1	894	10495
 * OP_IFNOT	10495	2	0
 * OP_RETURN	0	0	0
 * 125	28	105	10496
 * OP_LOAD_ENT	28	181	10499
 * OP_LOAD_V	10499	105	10500
 * OP_SUB_V	10496	10500	10503
 * OP_STORE_V	10503	4	0
 * OP_CALL1	457	0	0
 * OP_LT	1	788	10506
 * OP_IFNOT	10506	2	0
 * OP_RETURN	0	0	0
 * 132	7369	4	0
 * OP_CALL1	731	0	0
 * OP_CALL0	10424	0	0
 * OP_DONE	0	0	0
 */

void () CheckForCharge = {

   if ( !enemy_vis ) {

      return ;

   }
   if ( (time < self.attack_finished) ) {

      return ;

   }
   if ( (fabs ((self.origin_z - self.enemy.origin_z)) > 20.000) ) {

      return ;

   }
   if ( (vlen ((self.origin - self.enemy.origin)) < 80.000) ) {

      return ;

   }
   SUB_AttackFinished (SPAWNFLAG_LASER);
   hknight_char_a1 ();

};

// function CheckContinueCharge
// function number 1585 begins at statement 18281
/*
 * OP_LOAD_F	28	373	10508
 * OP_GT	31	10508	10509
 * OP_IFNOT	10509	5	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	731	0	0
 * OP_CALL0	10425	0	0
 * OP_RETURN	0	0	0
 * 151	452	0	0
 * OP_GT	1	1491	10510
 * OP_IFNOT	10510	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	8577	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	8578	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * 100	0	0	0
 * OP_STATE	337	10512	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () CheckContinueCharge = {

   if ( (time > self.attack_finished) ) {

      SUB_AttackFinished (AS_MELEE);
      hknight_run1 ();
      return ;

   }
   if ( (random () > 0.500) ) {

      sound (self,CHAN_WEAPON,"knight/sword2.wav",SPAWN_CRUCIFIED,ATTN_NORM);

   } else {

      sound (self,CHAN_WEAPON,"knight/sword1.wav",SPAWN_CRUCIFIED,ATTN_NORM);

   }

};

// function hknight_stand1
// function number 1586 begins at statement 18305
/*
 * OP_STATE	337	10512	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand1 = [ 0.000, hknight_stand2 ] {

   ai_stand ();

};

// function hknight_stand2
// function number 1587 begins at statement 18308
/*
 * OP_STATE	9491	10513	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand2 = [ 1.000, hknight_stand3 ] {

   ai_stand ();

};

// function hknight_stand3
// function number 1588 begins at statement 18311
/*
 * OP_STATE	7369	10514	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand3 = [ 2.000, hknight_stand4 ] {

   ai_stand ();

};

// function hknight_stand4
// function number 1589 begins at statement 18314
/*
 * OP_STATE	370	10515	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand4 = [ 3.000, hknight_stand5 ] {

   ai_stand ();

};

// function hknight_stand5
// function number 1590 begins at statement 18317
/*
 * OP_STATE	6076	10516	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand5 = [ 4.000, hknight_stand6 ] {

   ai_stand ();

};

// function hknight_stand6
// function number 1591 begins at statement 18320
/*
 * OP_STATE	313	10517	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand6 = [ 5.000, hknight_stand7 ] {

   ai_stand ();

};

// function hknight_stand7
// function number 1592 begins at statement 18323
/*
 * OP_STATE	314	10518	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand7 = [ 6.000, hknight_stand8 ] {

   ai_stand ();

};

// function hknight_stand8
// function number 1593 begins at statement 18326
/*
 * OP_STATE	315	10519	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand8 = [ 7.000, hknight_stand9 ] {

   ai_stand ();

};

// function hknight_stand9
// function number 1594 begins at statement 18329
/*
 * OP_STATE	6077	10511	0
 * OP_CALL0	1359	0	0
 * OP_DONE	0	0	0
 */

void () hknight_stand9 = [ 8.000, hknight_stand1 ] {

   ai_stand ();

};

// function hknight_walk1
// function number 1595 begins at statement 18332
/*
 * OP_STATE	317	10521	0
 * OP_CALL0	10426	0	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk1 = [ 9.000, hknight_walk2 ] {

   hk_idle_sound ();
   ai_walk (SPAWNFLAG_LASER);

};

// function hknight_walk2
// function number 1596 begins at statement 18337
/*
 * OP_STATE	318	10522	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk2 = [ 10.000, hknight_walk3 ] {

   ai_walk (TE_LIGHTNING1);

};

// function hknight_walk3
// function number 1597 begins at statement 18341
/*
 * OP_STATE	319	10523	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk3 = [ 11.000, hknight_walk4 ] {

   ai_walk (TE_LIGHTNING1);

};

// function hknight_walk4
// function number 1598 begins at statement 18345
/*
 * OP_STATE	2250	10524	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk4 = [ 12.000, hknight_walk5 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function hknight_walk5
// function number 1599 begins at statement 18349
/*
 * OP_STATE	7768	10525	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk5 = [ 13.000, hknight_walk6 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function hknight_walk6
// function number 1600 begins at statement 18353
/*
 * OP_STATE	2901	10526	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk6 = [ 14.000, hknight_walk7 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function hknight_walk7
// function number 1601 begins at statement 18357
/*
 * OP_STATE	1876	10527	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk7 = [ 15.000, hknight_walk8 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function hknight_walk8
// function number 1602 begins at statement 18361
/*
 * OP_STATE	6078	10528	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk8 = [ 16.000, hknight_walk9 ] {

   ai_walk (AS_MELEE);

};

// function hknight_walk9
// function number 1603 begins at statement 18365
/*
 * OP_STATE	4861	10529	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk9 = [ 17.000, hknight_walk10 ] {

   ai_walk (AS_MELEE);

};

// function hknight_walk10
// function number 1604 begins at statement 18369
/*
 * OP_STATE	3319	10530	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk10 = [ 18.000, hknight_walk11 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function hknight_walk11
// function number 1605 begins at statement 18373
/*
 * OP_STATE	7776	10531	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk11 = [ 19.000, hknight_walk12 ] {

   ai_walk (AS_MELEE);

};

// function hknight_walk12
// function number 1606 begins at statement 18377
/*
 * OP_STATE	894	10532	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk12 = [ 20.000, hknight_walk13 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function hknight_walk13
// function number 1607 begins at statement 18381
/*
 * OP_STATE	7779	10533	0
 * OP_STORE_V	314	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk13 = [ 21.000, hknight_walk14 ] {

   ai_walk (TE_LIGHTNING2);

};

// function hknight_walk14
// function number 1608 begins at statement 18385
/*
 * OP_STATE	7781	10534	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk14 = [ 22.000, hknight_walk15 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function hknight_walk15
// function number 1609 begins at statement 18389
/*
 * OP_STATE	301	10535	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk15 = [ 23.000, hknight_walk16 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function hknight_walk16
// function number 1610 begins at statement 18393
/*
 * OP_STATE	4437	10536	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk16 = [ 24.000, hknight_walk17 ] {

   ai_walk (SECRET_1ST_DOWN);

};

// function hknight_walk17
// function number 1611 begins at statement 18397
/*
 * OP_STATE	1890	10537	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk17 = [ 25.000, hknight_walk18 ] {

   ai_walk (AS_MELEE);

};

// function hknight_walk18
// function number 1612 begins at statement 18401
/*
 * OP_STATE	7788	10538	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk18 = [ 26.000, hknight_walk19 ] {

   ai_walk (AS_MELEE);

};

// function hknight_walk19
// function number 1613 begins at statement 18405
/*
 * OP_STATE	302	10539	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk19 = [ 27.000, hknight_walk20 ] {

   ai_walk (AS_MELEE);

};

// function hknight_walk20
// function number 1614 begins at statement 18409
/*
 * OP_STATE	303	10520	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	1351	0	0
 * OP_DONE	0	0	0
 */

void () hknight_walk20 = [ 28.000, hknight_walk1 ] {

   ai_walk (SPAWNFLAG_LASER);

};

// function hknight_run1
// function number 1615 begins at statement 18413
/*
 * OP_STATE	5105	10540	0
 * OP_CALL0	10426	0	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	1432	0	0
 * OP_CALL0	10487	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run1 = [ 29.000, hknight_run2 ] {

   hk_idle_sound ();
   ai_run (20.000);
   CheckForCharge ();

};

// function hknight_run2
// function number 1616 begins at statement 18419
/*
 * OP_STATE	304	10541	0
 * OP_STORE_V	1890	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run2 = [ 30.000, hknight_run3 ] {

   ai_run (25.000);

};

// function hknight_run3
// function number 1617 begins at statement 18423
/*
 * OP_STATE	305	10542	0
 * OP_STORE_V	3319	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run3 = [ 31.000, hknight_run4 ] {

   ai_run (18.000);

};

// function hknight_run4
// function number 1618 begins at statement 18427
/*
 * OP_STATE	5674	10543	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run4 = [ 32.000, hknight_run5 ] {

   ai_run (SECRET_YES_SHOOT);

};

// function hknight_run5
// function number 1619 begins at statement 18431
/*
 * OP_STATE	307	10544	0
 * OP_STORE_V	2901	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run5 = [ 33.000, hknight_run6 ] {

   ai_run (14.000);

};

// function hknight_run6
// function number 1620 begins at statement 18435
/*
 * OP_STATE	5112	10545	0
 * OP_STORE_V	1890	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run6 = [ 34.000, hknight_run7 ] {

   ai_run (25.000);

};

// function hknight_run7
// function number 1621 begins at statement 18439
/*
 * OP_STATE	3072	10546	0
 * OP_STORE_V	7779	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run7 = [ 35.000, hknight_run8 ] {

   ai_run (21.000);

};

// function hknight_run8
// function number 1622 begins at statement 18443
/*
 * OP_STATE	5096	10425	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	1432	0	0
 * OP_DONE	0	0	0
 */

void () hknight_run8 = [ 36.000, hknight_run1 ] {

   ai_run (13.000);

};

// function hknight_pain1
// function number 1623 begins at statement 18447
/*
 * OP_STATE	5098	10548	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	10549	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () hknight_pain1 = [ 37.000, hknight_pain2 ] {

   sound (self,CHAN_VOICE,"hknight/pain1.wav",SPAWN_CRUCIFIED,ATTN_NORM);

};

// function hknight_pain2
// function number 1624 begins at statement 18455
/*
 * OP_STATE	5100	10550	0
 * OP_DONE	0	0	0
 */

void () hknight_pain2 = [ 38.000, hknight_pain3 ] {


};

// function hknight_pain3
// function number 1625 begins at statement 18457
/*
 * OP_STATE	5102	10551	0
 * OP_DONE	0	0	0
 */

void () hknight_pain3 = [ 39.000, hknight_pain4 ] {


};

// function hknight_pain4
// function number 1626 begins at statement 18459
/*
 * OP_STATE	1733	10552	0
 * OP_DONE	0	0	0
 */

void () hknight_pain4 = [ 40.000, hknight_pain5 ] {


};

// function hknight_pain5
// function number 1627 begins at statement 18461
/*
 * OP_STATE	5443	10425	0
 * OP_DONE	0	0	0
 */

void () hknight_pain5 = [ 41.000, hknight_run1 ] {


};

// function hknight_die1
// function number 1628 begins at statement 18463
/*
 * OP_STATE	5445	10554	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die1 = [ 42.000, hknight_die2 ] {

   ai_forward (TE_LAVASPLASH);

};

// function hknight_die2
// function number 1629 begins at statement 18467
/*
 * OP_STATE	5447	10555	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die2 = [ 43.000, hknight_die3 ] {

   ai_forward (SECRET_NO_SHOOT);

};

// function hknight_die3
// function number 1630 begins at statement 18471
/*
 * OP_STATE	5449	10556	0
 * OP_ADDRESS	28	104	10557
 * OP_STOREP_F	237	10557	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die3 = [ 44.000, hknight_die4 ] {

   self.solid = SOLID_NOT;
   ai_forward (TE_WIZSPIKE);

};

// function hknight_die4
// function number 1631 begins at statement 18477
/*
 * OP_STATE	1390	10558	0
 * OP_DONE	0	0	0
 */

void () hknight_die4 = [ 45.000, hknight_die5 ] {


};

// function hknight_die5
// function number 1632 begins at statement 18479
/*
 * OP_STATE	5452	10559	0
 * OP_DONE	0	0	0
 */

void () hknight_die5 = [ 46.000, hknight_die6 ] {


};

// function hknight_die6
// function number 1633 begins at statement 18481
/*
 * OP_STATE	5454	10560	0
 * OP_DONE	0	0	0
 */

void () hknight_die6 = [ 47.000, hknight_die7 ] {


};

// function hknight_die7
// function number 1634 begins at statement 18483
/*
 * OP_STATE	5456	10561	0
 * OP_DONE	0	0	0
 */

void () hknight_die7 = [ 48.000, hknight_die8 ] {


};

// function hknight_die8
// function number 1635 begins at statement 18485
/*
 * OP_STATE	5458	10562	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die8 = [ 49.000, hknight_die9 ] {

   ai_forward (TE_LAVASPLASH);

};

// function hknight_die9
// function number 1636 begins at statement 18489
/*
 * OP_STATE	2227	10563	0
 * OP_STORE_V	319	4	0
 * OP_CALL1	1338	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die9 = [ 50.000, hknight_die10 ] {

   ai_forward (TE_TELEPORT);

};

// function hknight_die10
// function number 1637 begins at statement 18493
/*
 * OP_STATE	5351	10564	0
 * OP_DONE	0	0	0
 */

void () hknight_die10 = [ 51.000, hknight_die11 ] {


};

// function hknight_die11
// function number 1638 begins at statement 18495
/*
 * OP_STATE	5353	10565	0
 * OP_DONE	0	0	0
 */

void () hknight_die11 = [ 52.000, hknight_die12 ] {


};

// function hknight_die12
// function number 1639 begins at statement 18497
/*
 * OP_STATE	5355	10565	0
 * OP_DONE	0	0	0
 */

void () hknight_die12 = [ 53.000, hknight_die12 ] {


};

// function hknight_dieb1
// function number 1640 begins at statement 18499
/*
 * OP_STATE	5357	10567	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb1 = [ 54.000, hknight_dieb2 ] {


};

// function hknight_dieb2
// function number 1641 begins at statement 18501
/*
 * OP_STATE	5359	10568	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb2 = [ 55.000, hknight_dieb3 ] {


};

// function hknight_dieb3
// function number 1642 begins at statement 18503
/*
 * OP_STATE	5361	10569	0
 * OP_ADDRESS	28	104	10570
 * OP_STOREP_F	237	10570	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb3 = [ 56.000, hknight_dieb4 ] {

   self.solid = SOLID_NOT;

};

// function hknight_dieb4
// function number 1643 begins at statement 18507
/*
 * OP_STATE	5363	10571	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb4 = [ 57.000, hknight_dieb5 ] {


};

// function hknight_dieb5
// function number 1644 begins at statement 18509
/*
 * OP_STATE	5365	10572	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb5 = [ 58.000, hknight_dieb6 ] {


};

// function hknight_dieb6
// function number 1645 begins at statement 18511
/*
 * OP_STATE	5367	10573	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb6 = [ 59.000, hknight_dieb7 ] {


};

// function hknight_dieb7
// function number 1646 begins at statement 18513
/*
 * OP_STATE	912	10574	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb7 = [ 60.000, hknight_dieb8 ] {


};

// function hknight_dieb8
// function number 1647 begins at statement 18515
/*
 * OP_STATE	5369	10575	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb8 = [ 61.000, hknight_dieb9 ] {


};

// function hknight_dieb9
// function number 1648 begins at statement 18517
/*
 * OP_STATE	5371	10575	0
 * OP_DONE	0	0	0
 */

void () hknight_dieb9 = [ 62.000, hknight_dieb9 ] {


};

// function hknight_die
// function number 1649 begins at statement 18519
/*
 * OP_LOAD_F	28	152	10577
 * OP_LT	10577	4741	10578
 * OP_IFNOT	10578	24	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	3826	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	152	10580
 * OP_STORE_V	10579	4	0
 * OP_STORE_V	10580	7	0
 * OP_CALL2	5247	0	0
 * OP_LOAD_F	28	152	10581
 * OP_STORE_V	3852	4	0
 * OP_STORE_V	10581	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	10582
 * OP_STORE_V	3853	4	0
 * OP_STORE_V	10582	7	0
 * OP_CALL2	5218	0	0
 * OP_LOAD_F	28	152	10583
 * OP_STORE_V	3854	4	0
 * OP_STORE_V	10583	7	0
 * OP_CALL2	5218	0	0
 * OP_RETURN	0	0	0
 * 132	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	10584	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_CALL0	452	0	0
 * OP_GT	1	1491	10585
 * OP_IFNOT	10585	3	0
 * OP_CALL0	10553	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	10566	0	0
 * 100	0	0	0
 * OP_STATE	5401	10587	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_die = {

   if ( (self.health < -40.000) ) {

      sound (self,CHAN_VOICE,"player/udeath.wav",SPAWN_CRUCIFIED,ATTN_NORM);
      ThrowHead ("progs/h_hellkn.mdl",self.health);
      ThrowGib ("progs/gib1.mdl",self.health);
      ThrowGib ("progs/gib2.mdl",self.health);
      ThrowGib ("progs/gib3.mdl",self.health);
      return ;

   }
   sound (self,CHAN_VOICE,"hknight/death1.wav",SPAWN_CRUCIFIED,ATTN_NORM);
   if ( (random () > 0.500) ) {

      hknight_die1 ();

   } else {

      hknight_dieb1 ();

   }

};

// function hknight_magica1
// function number 1650 begins at statement 18558
/*
 * OP_STATE	5401	10587	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica1 = [ 79.000, hknight_magica2 ] {

   ai_face ();

};

// function hknight_magica2
// function number 1651 begins at statement 18561
/*
 * OP_STATE	788	10588	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica2 = [ 80.000, hknight_magica3 ] {

   ai_face ();

};

// function hknight_magica3
// function number 1652 begins at statement 18564
/*
 * OP_STATE	5404	10589	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica3 = [ 81.000, hknight_magica4 ] {

   ai_face ();

};

// function hknight_magica4
// function number 1653 begins at statement 18567
/*
 * OP_STATE	5406	10590	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica4 = [ 82.000, hknight_magica5 ] {

   ai_face ();

};

// function hknight_magica5
// function number 1654 begins at statement 18570
/*
 * OP_STATE	5408	10591	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica5 = [ 83.000, hknight_magica6 ] {

   ai_face ();

};

// function hknight_magica6
// function number 1655 begins at statement 18573
/*
 * OP_STATE	5410	10592	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica6 = [ 84.000, hknight_magica7 ] {

   ai_face ();

};

// function hknight_magica7
// function number 1656 begins at statement 18576
/*
 * OP_STATE	5411	10593	0
 * OP_STORE_V	277	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica7 = [ 85.000, hknight_magica8 ] {

   hknight_shot (CONTENT_SOLID);

};

// function hknight_magica8
// function number 1657 begins at statement 18580
/*
 * OP_STATE	5413	10594	0
 * OP_STORE_V	276	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica8 = [ 86.000, hknight_magica9 ] {

   hknight_shot (CONTENT_EMPTY);

};

// function hknight_magica9
// function number 1658 begins at statement 18584
/*
 * OP_STATE	5415	10595	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica9 = [ 87.000, hknight_magica10 ] {

   hknight_shot (MSG_BROADCAST);

};

// function hknight_magica10
// function number 1659 begins at statement 18588
/*
 * OP_STATE	5417	10596	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica10 = [ 88.000, hknight_magica11 ] {

   hknight_shot (SPAWN_CRUCIFIED);

};

// function hknight_magica11
// function number 1660 begins at statement 18592
/*
 * OP_STATE	5419	10597	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica11 = [ 89.000, hknight_magica12 ] {

   hknight_shot (SPAWNFLAG_LASER);

};

// function hknight_magica12
// function number 1661 begins at statement 18596
/*
 * OP_STATE	1423	10598	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica12 = [ 90.000, hknight_magica13 ] {

   hknight_shot (AS_MELEE);

};

// function hknight_magica13
// function number 1662 begins at statement 18600
/*
 * OP_STATE	5422	10599	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica13 = [ 91.000, hknight_magica14 ] {

   ai_face ();

};

// function hknight_magica14
// function number 1663 begins at statement 18603
/*
 * OP_STATE	5424	10425	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magica14 = [ 92.000, hknight_run1 ] {

   ai_face ();

};

// function hknight_magicb1
// function number 1664 begins at statement 18606
/*
 * OP_STATE	5426	10601	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb1 = [ 93.000, hknight_magicb2 ] {

   ai_face ();

};

// function hknight_magicb2
// function number 1665 begins at statement 18609
/*
 * OP_STATE	5427	10602	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb2 = [ 94.000, hknight_magicb3 ] {

   ai_face ();

};

// function hknight_magicb3
// function number 1666 begins at statement 18612
/*
 * OP_STATE	5429	10603	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb3 = [ 95.000, hknight_magicb4 ] {

   ai_face ();

};

// function hknight_magicb4
// function number 1667 begins at statement 18615
/*
 * OP_STATE	5431	10604	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb4 = [ 96.000, hknight_magicb5 ] {

   ai_face ();

};

// function hknight_magicb5
// function number 1668 begins at statement 18618
/*
 * OP_STATE	5433	10605	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb5 = [ 97.000, hknight_magicb6 ] {

   ai_face ();

};

// function hknight_magicb6
// function number 1669 begins at statement 18621
/*
 * OP_STATE	5435	10606	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb6 = [ 98.000, hknight_magicb7 ] {

   ai_face ();

};

// function hknight_magicb7
// function number 1670 begins at statement 18624
/*
 * OP_STATE	5437	10607	0
 * OP_STORE_V	277	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb7 = [ 99.000, hknight_magicb8 ] {

   hknight_shot (CONTENT_SOLID);

};

// function hknight_magicb8
// function number 1671 begins at statement 18628
/*
 * OP_STATE	1884	10608	0
 * OP_STORE_V	276	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb8 = [ 100.000, hknight_magicb9 ] {

   hknight_shot (CONTENT_EMPTY);

};

// function hknight_magicb9
// function number 1672 begins at statement 18632
/*
 * OP_STATE	5440	10609	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb9 = [ 101.000, hknight_magicb10 ] {

   hknight_shot (MSG_BROADCAST);

};

// function hknight_magicb10
// function number 1673 begins at statement 18636
/*
 * OP_STATE	5442	10610	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb10 = [ 102.000, hknight_magicb11 ] {

   hknight_shot (SPAWN_CRUCIFIED);

};

// function hknight_magicb11
// function number 1674 begins at statement 18640
/*
 * OP_STATE	4971	10611	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb11 = [ 103.000, hknight_magicb12 ] {

   hknight_shot (SPAWNFLAG_LASER);

};

// function hknight_magicb12
// function number 1675 begins at statement 18644
/*
 * OP_STATE	4986	10612	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb12 = [ 104.000, hknight_magicb13 ] {

   hknight_shot (AS_MELEE);

};

// function hknight_magicb13
// function number 1676 begins at statement 18648
/*
 * OP_STATE	5000	10425	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicb13 = [ 105.000, hknight_run1 ] {

   ai_face ();

};

// function hknight_magicc1
// function number 1677 begins at statement 18651
/*
 * OP_STATE	9797	10614	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc1 = [ 155.000, hknight_magicc2 ] {

   ai_face ();

};

// function hknight_magicc2
// function number 1678 begins at statement 18654
/*
 * OP_STATE	9799	10615	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc2 = [ 156.000, hknight_magicc3 ] {

   ai_face ();

};

// function hknight_magicc3
// function number 1679 begins at statement 18657
/*
 * OP_STATE	9801	10616	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc3 = [ 157.000, hknight_magicc4 ] {

   ai_face ();

};

// function hknight_magicc4
// function number 1680 begins at statement 18660
/*
 * OP_STATE	9803	10617	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc4 = [ 158.000, hknight_magicc5 ] {

   ai_face ();

};

// function hknight_magicc5
// function number 1681 begins at statement 18663
/*
 * OP_STATE	9805	10618	0
 * OP_CALL0	758	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc5 = [ 159.000, hknight_magicc6 ] {

   ai_face ();

};

// function hknight_magicc6
// function number 1682 begins at statement 18666
/*
 * OP_STATE	7324	10619	0
 * OP_STORE_V	277	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc6 = [ 160.000, hknight_magicc7 ] {

   hknight_shot (CONTENT_SOLID);

};

// function hknight_magicc7
// function number 1683 begins at statement 18670
/*
 * OP_STATE	9808	10620	0
 * OP_STORE_V	276	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc7 = [ 161.000, hknight_magicc8 ] {

   hknight_shot (CONTENT_EMPTY);

};

// function hknight_magicc8
// function number 1684 begins at statement 18674
/*
 * OP_STATE	9810	10621	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc8 = [ 162.000, hknight_magicc9 ] {

   hknight_shot (MSG_BROADCAST);

};

// function hknight_magicc9
// function number 1685 begins at statement 18678
/*
 * OP_STATE	9813	10622	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc9 = [ 163.000, hknight_magicc10 ] {

   hknight_shot (SPAWN_CRUCIFIED);

};

// function hknight_magicc10
// function number 1686 begins at statement 18682
/*
 * OP_STATE	9815	10623	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc10 = [ 164.000, hknight_magicc11 ] {

   hknight_shot (SPAWNFLAG_LASER);

};

// function hknight_magicc11
// function number 1687 begins at statement 18686
/*
 * OP_STATE	9817	10425	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	10427	0	0
 * OP_DONE	0	0	0
 */

void () hknight_magicc11 = [ 165.000, hknight_run1 ] {

   hknight_shot (AS_MELEE);

};

// function hknight_char_a1
// function number 1688 begins at statement 18690
/*
 * OP_STATE	3872	10624	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a1 = [ 63.000, hknight_char_a2 ] {

   ai_charge (20.000);

};

// function hknight_char_a2
// function number 1689 begins at statement 18694
/*
 * OP_STATE	260	10625	0
 * OP_STORE_V	1890	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a2 = [ 64.000, hknight_char_a3 ] {

   ai_charge (25.000);

};

// function hknight_char_a3
// function number 1690 begins at statement 18698
/*
 * OP_STATE	5375	10626	0
 * OP_STORE_V	3319	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a3 = [ 65.000, hknight_char_a4 ] {

   ai_charge (18.000);

};

// function hknight_char_a4
// function number 1691 begins at statement 18702
/*
 * OP_STATE	5377	10627	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a4 = [ 66.000, hknight_char_a5 ] {

   ai_charge (SECRET_YES_SHOOT);

};

// function hknight_char_a5
// function number 1692 begins at statement 18706
/*
 * OP_STATE	5379	10628	0
 * OP_STORE_V	2901	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a5 = [ 67.000, hknight_char_a6 ] {

   ai_charge (14.000);

};

// function hknight_char_a6
// function number 1693 begins at statement 18710
/*
 * OP_STATE	5381	10629	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a6 = [ 68.000, hknight_char_a7 ] {

   ai_charge (20.000);
   ai_melee ();

};

// function hknight_char_a7
// function number 1694 begins at statement 18715
/*
 * OP_STATE	5383	10630	0
 * OP_STORE_V	7779	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a7 = [ 69.000, hknight_char_a8 ] {

   ai_charge (21.000);
   ai_melee ();

};

// function hknight_char_a8
// function number 1695 begins at statement 18720
/*
 * OP_STATE	5384	10631	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a8 = [ 70.000, hknight_char_a9 ] {

   ai_charge (13.000);
   ai_melee ();

};

// function hknight_char_a9
// function number 1696 begins at statement 18725
/*
 * OP_STATE	5386	10632	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a9 = [ 71.000, hknight_char_a10 ] {

   ai_charge (20.000);
   ai_melee ();

};

// function hknight_char_a10
// function number 1697 begins at statement 18730
/*
 * OP_STATE	5388	10633	0
 * OP_STORE_V	894	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a10 = [ 72.000, hknight_char_a11 ] {

   ai_charge (20.000);
   ai_melee ();

};

// function hknight_char_a11
// function number 1698 begins at statement 18735
/*
 * OP_STATE	2739	10634	0
 * OP_STORE_V	3319	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a11 = [ 73.000, hknight_char_a12 ] {

   ai_charge (18.000);
   ai_melee ();

};

// function hknight_char_a12
// function number 1699 begins at statement 18740
/*
 * OP_STATE	5391	10635	0
 * OP_STORE_V	6078	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a12 = [ 74.000, hknight_char_a13 ] {

   ai_charge (SECRET_YES_SHOOT);

};

// function hknight_char_a13
// function number 1700 begins at statement 18744
/*
 * OP_STATE	5393	10636	0
 * OP_STORE_V	2901	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a13 = [ 75.000, hknight_char_a14 ] {

   ai_charge (14.000);

};

// function hknight_char_a14
// function number 1701 begins at statement 18748
/*
 * OP_STATE	5395	10637	0
 * OP_STORE_V	1890	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a14 = [ 76.000, hknight_char_a15 ] {

   ai_charge (25.000);

};

// function hknight_char_a15
// function number 1702 begins at statement 18752
/*
 * OP_STATE	5397	10638	0
 * OP_STORE_V	7779	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a15 = [ 77.000, hknight_char_a16 ] {

   ai_charge (21.000);

};

// function hknight_char_a16
// function number 1703 begins at statement 18756
/*
 * OP_STATE	5399	10425	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_a16 = [ 78.000, hknight_run1 ] {

   ai_charge (13.000);

};

// function hknight_char_b1
// function number 1704 begins at statement 18760
/*
 * OP_STATE	5015	10640	0
 * OP_CALL0	10507	0	0
 * OP_STORE_V	301	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b1 = [ 106.000, hknight_char_b2 ] {

   CheckContinueCharge ();
   ai_charge (SVC_TEMPENTITY);
   ai_melee ();

};

// function hknight_char_b2
// function number 1705 begins at statement 18766
/*
 * OP_STATE	5029	10641	0
 * OP_STORE_V	4861	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b2 = [ 107.000, hknight_char_b3 ] {

   ai_charge (17.000);
   ai_melee ();

};

// function hknight_char_b3
// function number 1706 begins at statement 18771
/*
 * OP_STATE	5035	10642	0
 * OP_STORE_V	2250	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b3 = [ 108.000, hknight_char_b4 ] {

   ai_charge (12.000);
   ai_melee ();

};

// function hknight_char_b4
// function number 1707 begins at statement 18776
/*
 * OP_STATE	5038	10643	0
 * OP_STORE_V	7781	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b4 = [ 109.000, hknight_char_b5 ] {

   ai_charge (22.000);
   ai_melee ();

};

// function hknight_char_b5
// function number 1708 begins at statement 18781
/*
 * OP_STATE	5041	10644	0
 * OP_STORE_V	3319	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b5 = [ 110.000, hknight_char_b6 ] {

   ai_charge (18.000);
   ai_melee ();

};

// function hknight_char_b6
// function number 1709 begins at statement 18786
/*
 * OP_STATE	5044	10639	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_char_b6 = [ 111.000, hknight_char_b1 ] {

   ai_charge (SECRET_NO_SHOOT);
   ai_melee ();

};

// function hknight_slice1
// function number 1710 begins at statement 18791
/*
 * OP_STATE	5047	10646	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice1 = [ 112.000, hknight_slice2 ] {

   ai_charge (TE_LIGHTNING3);

};

// function hknight_slice2
// function number 1711 begins at statement 18795
/*
 * OP_STATE	4909	10647	0
 * OP_STORE_V	314	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice2 = [ 113.000, hknight_slice3 ] {

   ai_charge (TE_LIGHTNING2);

};

// function hknight_slice3
// function number 1712 begins at statement 18799
/*
 * OP_STATE	4915	10648	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice3 = [ 114.000, hknight_slice4 ] {

   ai_charge (13.000);

};

// function hknight_slice4
// function number 1713 begins at statement 18803
/*
 * OP_STATE	4918	10649	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice4 = [ 115.000, hknight_slice5 ] {

   ai_charge (SECRET_1ST_DOWN);

};

// function hknight_slice5
// function number 1714 begins at statement 18807
/*
 * OP_STATE	4921	10650	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice5 = [ 116.000, hknight_slice6 ] {

   ai_charge (TE_WIZSPIKE);
   ai_melee ();

};

// function hknight_slice6
// function number 1715 begins at statement 18812
/*
 * OP_STATE	4924	10651	0
 * OP_STORE_V	1876	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice6 = [ 117.000, hknight_slice7 ] {

   ai_charge (15.000);
   ai_melee ();

};

// function hknight_slice7
// function number 1716 begins at statement 18817
/*
 * OP_STATE	4927	10652	0
 * OP_STORE_V	6077	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice7 = [ 118.000, hknight_slice8 ] {

   ai_charge (SECRET_NO_SHOOT);
   ai_melee ();

};

// function hknight_slice8
// function number 1717 begins at statement 18822
/*
 * OP_STATE	4929	10653	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice8 = [ 119.000, hknight_slice9 ] {

   ai_charge (SPAWNFLAG_LASER);
   ai_melee ();

};

// function hknight_slice9
// function number 1718 begins at statement 18827
/*
 * OP_STATE	1164	10654	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice9 = [ 120.000, hknight_slice10 ] {

   ai_melee ();

};

// function hknight_slice10
// function number 1719 begins at statement 18830
/*
 * OP_STATE	4934	10425	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_slice10 = [ 121.000, hknight_run1 ] {

   ai_charge (AS_MELEE);

};

// function hknight_smash1
// function number 1720 begins at statement 18834
/*
 * OP_STATE	4937	10656	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash1 = [ 122.000, hknight_smash2 ] {

   ai_charge (SPAWN_CRUCIFIED);

};

// function hknight_smash2
// function number 1721 begins at statement 18838
/*
 * OP_STATE	7942	10657	0
 * OP_STORE_V	7768	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash2 = [ 123.000, hknight_smash3 ] {

   ai_charge (13.000);

};

// function hknight_smash3
// function number 1722 begins at statement 18842
/*
 * OP_STATE	7944	10658	0
 * OP_STORE_V	317	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash3 = [ 124.000, hknight_smash4 ] {

   ai_charge (TE_LIGHTNING3);

};

// function hknight_smash4
// function number 1723 begins at statement 18846
/*
 * OP_STATE	4939	10659	0
 * OP_STORE_V	319	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash4 = [ 125.000, hknight_smash5 ] {

   ai_charge (TE_TELEPORT);

};

// function hknight_smash5
// function number 1724 begins at statement 18850
/*
 * OP_STATE	4942	10660	0
 * OP_STORE_V	318	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash5 = [ 126.000, hknight_smash6 ] {

   ai_charge (TE_LAVASPLASH);
   ai_melee ();

};

// function hknight_smash6
// function number 1725 begins at statement 18855
/*
 * OP_STATE	4945	10661	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash6 = [ 127.000, hknight_smash7 ] {

   ai_charge (TE_WIZSPIKE);
   ai_melee ();

};

// function hknight_smash7
// function number 1726 begins at statement 18860
/*
 * OP_STATE	261	10662	0
 * OP_STORE_V	2250	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash7 = [ 128.000, hknight_smash8 ] {

   ai_charge (12.000);
   ai_melee ();

};

// function hknight_smash8
// function number 1727 begins at statement 18865
/*
 * OP_STATE	7952	10663	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash8 = [ 129.000, hknight_smash9 ] {

   ai_charge (SPAWNFLAG_LASER);
   ai_melee ();

};

// function hknight_smash9
// function number 1728 begins at statement 18870
/*
 * OP_STATE	7954	10664	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash9 = [ 130.000, hknight_smash10 ] {

   ai_charge (AS_MELEE);
   ai_melee ();

};

// function hknight_smash10
// function number 1729 begins at statement 18875
/*
 * OP_STATE	4949	10665	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash10 = [ 131.000, hknight_smash11 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_smash11
// function number 1730 begins at statement 18879
/*
 * OP_STATE	4952	10425	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_smash11 = [ 132.000, hknight_run1 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_watk1
// function number 1731 begins at statement 18883
/*
 * OP_STATE	4955	10667	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk1 = [ 133.000, hknight_watk2 ] {

   ai_charge (SPAWNFLAG_LASER);

};

// function hknight_watk2
// function number 1732 begins at statement 18887
/*
 * OP_STATE	4958	10668	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk2 = [ 134.000, hknight_watk3 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_watk3
// function number 1733 begins at statement 18891
/*
 * OP_STATE	7960	10669	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk3 = [ 135.000, hknight_watk4 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_watk4
// function number 1734 begins at statement 18895
/*
 * OP_STATE	9764	10670	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk4 = [ 136.000, hknight_watk5 ] {

   ai_melee ();

};

// function hknight_watk5
// function number 1735 begins at statement 18898
/*
 * OP_STATE	4960	10671	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk5 = [ 137.000, hknight_watk6 ] {

   ai_melee ();

};

// function hknight_watk6
// function number 1736 begins at statement 18901
/*
 * OP_STATE	4963	10672	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk6 = [ 138.000, hknight_watk7 ] {

   ai_melee ();

};

// function hknight_watk7
// function number 1737 begins at statement 18904
/*
 * OP_STATE	4966	10673	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk7 = [ 139.000, hknight_watk8 ] {

   ai_charge (SPAWN_CRUCIFIED);

};

// function hknight_watk8
// function number 1738 begins at statement 18908
/*
 * OP_STATE	4969	10674	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk8 = [ 140.000, hknight_watk9 ] {

   ai_charge (SECRET_1ST_DOWN);

};

// function hknight_watk9
// function number 1739 begins at statement 18912
/*
 * OP_STATE	9770	10675	0
 * OP_STORE_V	313	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk9 = [ 141.000, hknight_watk10 ] {

   ai_charge (TE_LIGHTNING1);

};

// function hknight_watk10
// function number 1740 begins at statement 18916
/*
 * OP_STATE	9772	10676	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk10 = [ 142.000, hknight_watk11 ] {

   ai_charge (AS_MELEE);
   ai_melee ();

};

// function hknight_watk11
// function number 1741 begins at statement 18921
/*
 * OP_STATE	9774	10677	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk11 = [ 143.000, hknight_watk12 ] {

   ai_charge (SPAWNFLAG_LASER);
   ai_melee ();

};

// function hknight_watk12
// function number 1742 begins at statement 18926
/*
 * OP_STATE	9776	10678	0
 * OP_STORE_V	7369	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk12 = [ 144.000, hknight_watk13 ] {

   ai_charge (SPAWNFLAG_LASER);
   ai_melee ();

};

// function hknight_watk13
// function number 1743 begins at statement 18931
/*
 * OP_STATE	9778	10679	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk13 = [ 145.000, hknight_watk14 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_watk14
// function number 1744 begins at statement 18935
/*
 * OP_STATE	9780	10680	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk14 = [ 146.000, hknight_watk15 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_watk15
// function number 1745 begins at statement 18939
/*
 * OP_STATE	9782	10681	0
 * OP_STORE_V	337	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk15 = [ 147.000, hknight_watk16 ] {

   ai_charge (MSG_BROADCAST);

};

// function hknight_watk16
// function number 1746 begins at statement 18943
/*
 * OP_STATE	9784	10682	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk16 = [ 148.000, hknight_watk17 ] {

   ai_charge (SPAWN_CRUCIFIED);

};

// function hknight_watk17
// function number 1747 begins at statement 18947
/*
 * OP_STATE	9786	10683	0
 * OP_STORE_V	9491	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk17 = [ 149.000, hknight_watk18 ] {

   ai_charge (SPAWN_CRUCIFIED);
   ai_melee ();

};

// function hknight_watk18
// function number 1748 begins at statement 18952
/*
 * OP_STATE	1960	10684	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk18 = [ 150.000, hknight_watk19 ] {

   ai_charge (AS_MELEE);
   ai_melee ();

};

// function hknight_watk19
// function number 1749 begins at statement 18957
/*
 * OP_STATE	9789	10685	0
 * OP_STORE_V	6076	4	0
 * OP_CALL1	857	0	0
 * OP_CALL0	895	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk19 = [ 151.000, hknight_watk20 ] {

   ai_charge (SECRET_1ST_DOWN);
   ai_melee ();

};

// function hknight_watk20
// function number 1750 begins at statement 18962
/*
 * OP_STATE	9791	10686	0
 * OP_STORE_V	314	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk20 = [ 152.000, hknight_watk21 ] {

   ai_charge (TE_LIGHTNING2);

};

// function hknight_watk21
// function number 1751 begins at statement 18966
/*
 * OP_STATE	9793	10687	0
 * OP_STORE_V	315	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk21 = [ 153.000, hknight_watk22 ] {

   ai_charge (TE_WIZSPIKE);

};

// function hknight_watk22
// function number 1752 begins at statement 18970
/*
 * OP_STATE	9795	10425	0
 * OP_STORE_V	370	4	0
 * OP_CALL1	857	0	0
 * OP_DONE	0	0	0
 */

void () hknight_watk22 = [ 154.000, hknight_run1 ] {

   ai_charge (AS_MELEE);

};

// function hk_idle_sound
// function number 1753 begins at statement 18974
/*
 * OP_CALL0	452	0	0
 * OP_LT	1	836	10688
 * OP_IFNOT	10688	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	10689	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * 100	0	0	0
 * OP_LOAD_F	28	374	10693
 * OP_GT	10693	31	10694
 * OP_IFNOT	10694	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	10549	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	374	10695
 * OP_SUB_F	31	10695	10696
 * OP_GT	10696	313	10697
 * OP_IFNOT	10697	6	0
 * OP_CALL0	10547	0	0
 * OP_ADDRESS	28	374	10698
 * OP_ADD_F	31	9491	10699
 * OP_STOREP_F	10699	10698	0
 * OP_RETURN	0	0	0
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	304	10700
 * OP_GT	10700	10692	10701
 * OP_IFNOT	10701	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	374	10702
 * OP_ADD_F	31	9491	10703
 * OP_STOREP_F	10703	10702	0
 * OP_CALL0	10547	0	0
 * OP_DONE	0	0	0
 */

void () hk_idle_sound = {

   if ( (random () < 0.200) ) {

      sound (self,CHAN_VOICE,"hknight/idle.wav",SPAWN_CRUCIFIED,ATTN_NORM);

   }

};

// function hknight_pain
// function number 1754 begins at statement 18984
/*
 * OP_LOAD_F	28	374	10693
 * OP_GT	10693	31	10694
 * OP_IFNOT	10694	2	0
 * OP_RETURN	0	0	0
 * 132	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	10549	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	374	10695
 * OP_SUB_F	31	10695	10696
 * OP_GT	10696	313	10697
 * OP_IFNOT	10697	6	0
 * OP_CALL0	10547	0	0
 * OP_ADDRESS	28	374	10698
 * OP_ADD_F	31	9491	10699
 * OP_STOREP_F	10699	10698	0
 * OP_RETURN	0	0	0
 * 151	452	0	0
 * OP_MUL_F	1	304	10700
 * OP_GT	10700	10692	10701
 * OP_IFNOT	10701	2	0
 * OP_RETURN	0	0	0
 * 130	28	374	10702
 * OP_ADD_F	31	9491	10703
 * OP_STOREP_F	10703	10702	0
 * OP_CALL0	10547	0	0
 * OP_DONE	0	0	0
 */

void (entity attacker, float damage) hknight_pain = {

   if ( (self.pain_finished > time) ) {

      return ;

   }
   sound (self,CHAN_VOICE,"hknight/pain1.wav",SPAWN_CRUCIFIED,ATTN_NORM);
   if ( ((time - self.pain_finished) > TE_LIGHTNING1) ) {

      hknight_pain1 ();
      self.pain_finished = (time + SPAWN_CRUCIFIED);
      return ;

   }
   if ( ((random () * SVC_INTERMISSION) > damage) ) {

      return ;

   }
   self.pain_finished = (time + SPAWN_CRUCIFIED);
   hknight_pain1 ();

};
float hknight_type /* = 0.000 */;

// function hknight_melee
// function number 1755 begins at statement 19013
/*
 * OP_ADD_F	10704	9491	10706
 * OP_STORE_F	10706	10704	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	321	7	0
 * OP_STORE_V	10707	10	0
 * OP_STORE_V	9491	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_EQ_F	10704	9491	10708
 * OP_IFNOT	10708	3	0
 * OP_CALL0	10645	0	0
 * OP_GOTO	9	0	0
 * OP_EQ_F	10704	7369	10709
 * OP_IFNOT	10709	3	0
 * OP_CALL0	10655	0	0
 * OP_GOTO	5	0	0
 * OP_EQ_F	10704	370	10710
 * OP_IFNOT	10710	3	0
 * OP_CALL0	10666	0	0
 * OP_STORE_F	337	10704	0
 * 300	0	0	0
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	10712	4	0
 * OP_CALL1	508	0	0
 * OP_STORE_V	10479	4	0
 * OP_CALL1	508	0	0
 * OP_STORE_V	10579	4	0
 * OP_CALL1	508	0	0
 * OP_STORE_V	10486	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10584	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10549	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	1265	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10713	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	10707	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10689	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10714	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	8578	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8577	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	104	10715
 * OP_STOREP_F	240	10715	0
 * OP_ADDRESS	28	103	10716
 * OP_STOREP_F	229	10716	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	10712	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	8669	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	152	10717
 * OP_STOREP_F	1859	10717	0
 * OP_ADDRESS	28	356	10718
 * OP_STOREP_FNC	10511	10718	0
 * OP_ADDRESS	28	357	10719
 * OP_STOREP_FNC	10520	10719	0
 * OP_ADDRESS	28	358	10720
 * OP_STOREP_FNC	10425	10720	0
 * OP_ADDRESS	28	360	10721
 * OP_STOREP_FNC	10705	10721	0
 * OP_ADDRESS	28	359	10722
 * OP_STOREP_FNC	10613	10722	0
 * OP_ADDRESS	28	361	10723
 * OP_STOREP_FNC	10690	10723	0
 * OP_ADDRESS	28	362	10724
 * OP_STOREP_FNC	10576	10724	0
 * OP_CALL0	5557	0	0
 * OP_DONE	0	0	0
 */

void () hknight_melee = {

   hknight_type = (hknight_type + SPAWN_CRUCIFIED);
   sound (self,CHAN_WEAPON,"hknight/slash1.wav",SPAWN_CRUCIFIED,ATTN_NORM);
   if ( (hknight_type == SPAWN_CRUCIFIED) ) {

      hknight_slice1 ();

   } else {

      if ( (hknight_type == SPAWNFLAG_LASER) ) {

         hknight_smash1 ();

      } else {

         if ( (hknight_type == AS_MELEE) ) {

            hknight_watk1 ();
            hknight_type = MSG_BROADCAST;

         }

      }

   }

};

// function monster_hell_knight
// function number 1756 begins at statement 19034
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_RETURN	0	0	0
 * 132	10712	4	0
 * OP_CALL1	508	0	0
 * OP_STORE_V	10479	4	0
 * OP_CALL1	508	0	0
 * OP_STORE_V	10579	4	0
 * OP_CALL1	508	0	0
 * OP_STORE_V	10486	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10584	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10549	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	1265	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10713	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	10707	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10689	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	10714	4	0
 * OP_CALL1	509	0	0
 * OP_STORE_V	8578	4	0
 * OP_CALL1	464	0	0
 * OP_STORE_V	8577	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	104	10715
 * OP_STOREP_F	240	10715	0
 * OP_ADDRESS	28	103	10716
 * OP_STOREP_F	229	10716	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	10712	7	0
 * OP_CALL2	449	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	289	7	0
 * OP_STORE_V	8669	10	0
 * OP_CALL3	450	0	0
 * OP_ADDRESS	28	152	10717
 * OP_STOREP_F	1859	10717	0
 * OP_ADDRESS	28	356	10718
 * OP_STOREP_FNC	10511	10718	0
 * OP_ADDRESS	28	357	10719
 * OP_STOREP_FNC	10520	10719	0
 * OP_ADDRESS	28	358	10720
 * OP_STOREP_FNC	10425	10720	0
 * OP_ADDRESS	28	360	10721
 * OP_STOREP_FNC	10705	10721	0
 * OP_ADDRESS	28	359	10722
 * OP_STOREP_FNC	10613	10722	0
 * OP_ADDRESS	28	361	10723
 * OP_STOREP_FNC	10690	10723	0
 * OP_ADDRESS	28	362	10724
 * OP_STOREP_FNC	10576	10724	0
 * OP_CALL0	5557	0	0
 * OP_DONE	0	0	0
 */

void () monster_hell_knight = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model2 ("progs/hknight.mdl");
   precache_model2 ("progs/k_spike.mdl");
   precache_model2 ("progs/h_hellkn.mdl");
   precache_sound2 ("hknight/attack1.wav");
   precache_sound2 ("hknight/death1.wav");
   precache_sound2 ("hknight/pain1.wav");
   precache_sound2 ("hknight/sight1.wav");
   precache_sound ("hknight/hit.wav");
   precache_sound2 ("hknight/slash1.wav");
   precache_sound2 ("hknight/idle.wav");
   precache_sound2 ("hknight/grunt.wav");
   precache_sound ("knight/sword1.wav");
   precache_sound ("knight/sword2.wav");
   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   setmodel (self,"progs/hknight.mdl");
   setsize (self,VEC_HULL_MIN,'16.000 16.000 40.000');
   self.health = 250.000;
   self.th_stand = hknight_stand1;
   self.th_walk = hknight_walk1;
   self.th_run = hknight_run1;
   self.th_melee = hknight_melee;
   self.th_missile = hknight_magicc1;
   self.th_pain = hknight_pain;
   self.th_die = hknight_die;
   walkmonster_start ();

};
