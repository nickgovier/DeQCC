entity stemp;
entity otemp;
entity s;
entity old;

// function trigger_reactivate
// function number 409 begins at statement 9918
/*
 * OP_ADDRESS	28	104	6419
 * OP_STOREP_F	238	6419	0
 * OP_DONE	0	0	0
 */

void () trigger_reactivate = {

   self.solid = SOLID_TRIGGER;

};
float SPAWNFLAG_NOMESSAGE = 1.000;
float SPAWNFLAG_NOTOUCH = 1.000;

// function multi_wait
// function number 410 begins at statement 9921
/*
 * OP_LOAD_F	28	185	6423
 * OP_IFNOT	6423	8	0
 * OP_ADDRESS	28	152	6424
 * OP_LOAD_F	28	185	6425
 * OP_STOREP_F	6425	6424	0
 * OP_ADDRESS	28	163	6426
 * OP_STOREP_F	251	6426	0
 * OP_ADDRESS	28	104	6427
 * OP_STOREP_F	239	6427	0
 * OP_DONE	0	0	0
 */

void () multi_wait = {

   if ( self.max_health ) {

      self.health = self.max_health;
      self.takedamage = DAMAGE_YES;
      self.solid = SOLID_BBOX;

   }

};

// function multi_trigger
// function number 411 begins at statement 9931
/*
 * OP_LOAD_F	28	150	6429
 * OP_GT	6429	31	6430
 * OP_IFNOT	6430	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	129	6431
 * OP_EQ_S	6431	6432	6433
 * OP_IFNOT	6433	11	0
 * OP_LOAD_ENT	28	181	6434
 * OP_LOAD_S	6434	129	6435
 * OP_NE_S	6435	712	6436
 * OP_IFNOT	6436	2	0
 * OP_RETURN	0	0	0
 * OP_ADD_F	41	6421	6437
 * OP_STORE_F	6437	41	0
 * OP_STORE_V	339	4	0
 * OP_STORE_V	303	7	0
 * OP_CALL2	493	0	0
 * OP_LOAD_S	28	208	6438
 * OP_IFNOT	6438	8	0
 * OP_LOAD_S	28	208	6439
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	6439	10	0
 * OP_STORE_V	6421	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_ADDRESS	28	163	6440
 * OP_STOREP_F	250	6440	0
 * OP_LOAD_ENT	28	181	6441
 * OP_STORE_ENT	6441	346	0
 * OP_CALL0	518	0	0
 * OP_LOAD_F	28	413	6442
 * OP_GT	6442	337	6443
 * OP_IFNOT	6443	8	0
 * OP_ADDRESS	28	148	6444
 * OP_STOREP_FNC	6422	6444	0
 * OP_ADDRESS	28	150	6445
 * OP_LOAD_F	28	413	6446
 * OP_ADD_F	31	6446	6447
 * OP_STOREP_F	6447	6445	0
 * OP_GOTO	8	0	0
 * OP_ADDRESS	28	146	6448
 * OP_STOREP_FNC	517	6448	0
 * OP_ADDRESS	28	150	6449
 * OP_ADD_F	31	603	6450
 * OP_STOREP_F	6450	6449	0
 * OP_ADDRESS	28	148	6451
 * OP_STOREP_FNC	519	6451	0
 * OP_DONE	0	0	0
 */

void () multi_trigger = {

   if ( (self.nextthink > time) ) {

      return ;

   }
   if ( (self.classname == "trigger_secret") ) {

      if ( (self.enemy.classname != "player") ) {

         return ;

      }
      found_secrets = (found_secrets + SPAWNFLAG_NOTOUCH);
      WriteByte (MSG_ALL,SVC_FOUNDSECRET);

   }
   if ( self.noise ) {

      sound (self,CHAN_VOICE,self.noise,SPAWNFLAG_NOTOUCH,ATTN_NORM);

   }
   self.takedamage = DAMAGE_NO;
   activator = self.enemy;
   SUB_UseTargets ();
   if ( (self.wait > MSG_BROADCAST) ) {

      self.think = multi_wait;
      self.nextthink = (time + self.wait);

   } else {

      self.touch = SUB_Null;
      self.nextthink = (time + 0.100);
      self.think = SUB_Remove;

   }

};

// function multi_killed
// function number 412 begins at statement 9980
/*
 * OP_ADDRESS	28	181	6453
 * OP_STOREP_ENT	347	6453	0
 * OP_CALL0	6428	0	0
 * OP_DONE	0	0	0
 */

void () multi_killed = {

   self.enemy = damage_attacker;
   multi_trigger ();

};

// function multi_use
// function number 413 begins at statement 9984
/*
 * OP_ADDRESS	28	181	6455
 * OP_STOREP_ENT	346	6455	0
 * OP_CALL0	6428	0	0
 * OP_DONE	0	0	0
 */

void () multi_use = {

   self.enemy = activator;
   multi_trigger ();

};

// function multi_touch
// function number 414 begins at statement 9988
/*
 * OP_LOAD_S	29	129	6457
 * OP_NE_S	6457	712	6458
 * OP_IFNOT	6458	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	28	202	6459
 * OP_NE_V	6459	286	6462
 * OP_IFNOT	6462	9	0
 * OP_LOAD_V	29	117	6463
 * OP_STORE_V	6463	4	0
 * OP_CALL1	447	0	0
 * OP_LOAD_V	28	202	6466
 * OP_MUL_V	59	6466	6469
 * OP_LT	6469	337	6470
 * OP_IFNOT	6470	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	181	6471
 * OP_STOREP_ENT	29	6471	0
 * OP_CALL0	6428	0	0
 * OP_DONE	0	0	0
 */

void () multi_touch = {

   if ( (other.classname != "player") ) {

      return ;

   }
   if ( (self.movedir != VEC_ORIGIN) ) {

      makevectors (other.angles);
      if ( ((v_forward * self.movedir) < MSG_BROADCAST) ) {

         return ;

      }

   }
   self.enemy = other;
   multi_trigger ();

};

// function trigger_multiple
// function number 415 begins at statement 10007
/*
 * OP_LOAD_F	28	207	6473
 * OP_EQ_F	6473	6421	6474
 * OP_IFNOT	6474	6	0
 * OP_STORE_V	6475	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	208	6476
 * OP_STOREP_S	6475	6476	0
 * OP_GOTO	16	0	0
 * OP_LOAD_F	28	207	6477
 * OP_EQ_F	6477	6075	6478
 * OP_IFNOT	6478	6	0
 * OP_STORE_V	720	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	208	6479
 * OP_STOREP_S	720	6479	0
 * OP_GOTO	8	0	0
 * OP_LOAD_F	28	207	6480
 * OP_EQ_F	6480	370	6481
 * OP_IFNOT	6481	5	0
 * OP_STORE_V	6482	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	208	6483
 * OP_STOREP_S	6482	6483	0
 * OP_LOAD_F	28	413	6484
 * OP_NOT_F	6484	0	6485
 * OP_IFNOT	6485	3	0
 * OP_ADDRESS	28	413	6486
 * OP_STOREP_F	836	6486	0
 * OP_ADDRESS	28	147	6487
 * OP_STOREP_FNC	6454	6487	0
 * OP_CALL0	559	0	0
 * OP_LOAD_F	28	152	6488
 * OP_IFNOT	6488	20	0
 * OP_LOAD_F	28	195	6489
 * OP_BITAND	6489	6421	6490
 * OP_IFNOT	6490	3	0
 * OP_STORE_V	6491	4	0
 * OP_CALL1	456	0	0
 * OP_ADDRESS	28	185	6492
 * OP_LOAD_F	28	152	6493
 * OP_STOREP_F	6493	6492	0
 * OP_ADDRESS	28	362	6494
 * OP_STOREP_FNC	6452	6494	0
 * OP_ADDRESS	28	163	6495
 * OP_STOREP_F	251	6495	0
 * OP_ADDRESS	28	104	6496
 * OP_STOREP_F	239	6496	0
 * OP_LOAD_V	28	105	6497
 * OP_STORE_V	28	4	0
 * OP_STORE_V	6497	7	0
 * OP_CALL2	448	0	0
 * OP_GOTO	7	0	0
 * OP_LOAD_F	28	195	6500
 * OP_BITAND	6500	6421	6501
 * OP_NOT_F	6501	0	6502
 * OP_IFNOT	6502	3	0
 * OP_ADDRESS	28	146	6503
 * OP_STOREP_FNC	6456	6503	0
 * OP_DONE	0	0	0
 */

void () trigger_multiple = {

   if ( (self.sounds == SPAWNFLAG_NOTOUCH) ) {

      precache_sound ("misc/secret.wav");
      self.noise = "misc/secret.wav";

   } else {

      if ( (self.sounds == SECRET_1ST_LEFT) ) {

         precache_sound ("misc/talk.wav");
         self.noise = "misc/talk.wav";

      } else {

         if ( (self.sounds == AS_MELEE) ) {

            precache_sound ("misc/trigger1.wav");
            self.noise = "misc/trigger1.wav";

         }

      }

   }
   if ( !self.wait ) {

      self.wait = 0.200;

   }
   self.use = multi_use;
   InitTrigger ();
   if ( self.health ) {

      if ( (self.spawnflags & SPAWNFLAG_NOTOUCH) ) {

         objerror ("health and notouch don't make sense\n");

      }
      self.max_health = self.health;
      self.th_die = multi_killed;
      self.takedamage = DAMAGE_YES;
      self.solid = SOLID_BBOX;
      setorigin (self,self.origin);

   } else {

      if ( !(self.spawnflags & SPAWNFLAG_NOTOUCH) ) {

         self.touch = multi_touch;

      }

   }

};

// function trigger_once
// function number 416 begins at statement 10066
/*
 * OP_ADDRESS	28	413	6505
 * OP_STOREP_F	276	6505	0
 * OP_CALL0	6472	0	0
 * OP_DONE	0	0	0
 */

void () trigger_once = {

   self.wait = CONTENT_EMPTY;
   trigger_multiple ();

};

// function trigger_relay
// function number 417 begins at statement 10070
/*
 * OP_ADDRESS	28	147	6507
 * OP_STOREP_FNC	518	6507	0
 * OP_DONE	0	0	0
 */

void () trigger_relay = {

   self.use = SUB_UseTargets;

};

// function trigger_secret
// function number 418 begins at statement 10073
/*
 * OP_ADD_F	39	6421	6509
 * OP_STORE_F	6509	39	0
 * OP_ADDRESS	28	413	6510
 * OP_STOREP_F	276	6510	0
 * OP_LOAD_S	28	206	6511
 * OP_NOT_S	6511	0	6512
 * OP_IFNOT	6512	3	0
 * OP_ADDRESS	28	206	6513
 * OP_STOREP_S	6514	6513	0
 * OP_LOAD_F	28	207	6515
 * OP_NOT_F	6515	0	6516
 * OP_IFNOT	6516	3	0
 * OP_ADDRESS	28	207	6517
 * OP_STOREP_F	6421	6517	0
 * OP_LOAD_F	28	207	6518
 * OP_EQ_F	6518	6421	6519
 * OP_IFNOT	6519	6	0
 * OP_STORE_V	6475	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	208	6520
 * OP_STOREP_S	6475	6520	0
 * OP_GOTO	8	0	0
 * OP_LOAD_F	28	207	6521
 * OP_EQ_F	6521	6075	6522
 * OP_IFNOT	6522	5	0
 * OP_STORE_V	720	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	208	6523
 * OP_STOREP_S	720	6523	0
 * OP_CALL0	6472	0	0
 * OP_DONE	0	0	0
 */

void () trigger_secret = {

   total_secrets = (total_secrets + SPAWNFLAG_NOTOUCH);
   self.wait = CONTENT_EMPTY;
   if ( !self.message ) {

      self.message = "You found a secret area!";

   }
   if ( !self.sounds ) {

      self.sounds = SPAWNFLAG_NOTOUCH;

   }
   if ( (self.sounds == SPAWNFLAG_NOTOUCH) ) {

      precache_sound ("misc/secret.wav");
      self.noise = "misc/secret.wav";

   } else {

      if ( (self.sounds == SECRET_1ST_LEFT) ) {

         precache_sound ("misc/talk.wav");
         self.noise = "misc/talk.wav";

      }

   }
   trigger_multiple ();

};

// function counter_use
// function number 419 begins at statement 10104
/*
 * OP_ADDRESS	28	431	6526
 * OP_LOAD_F	28	431	6527
 * OP_SUB_F	6527	6421	6528
 * OP_STOREP_F	6528	6526	0
 * OP_LOAD_F	28	431	6529
 * OP_LT	6529	337	6530
 * OP_IFNOT	6530	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	431	6531
 * OP_NE_F	6531	337	6532
 * OP_IFNOT	6532	33	0
 * OP_LOAD_S	346	129	6533
 * OP_EQ_S	6533	712	6534
 * OP_LOAD_F	28	195	6535
 * OP_BITAND	6535	6420	6536
 * OP_EQ_F	6536	337	6537
 * OP_AND	6534	6537	6538
 * OP_IFNOT	6538	25	0
 * OP_LOAD_F	28	431	6539
 * OP_GE	6539	6076	6540
 * OP_IFNOT	6540	5	0
 * OP_STORE_V	346	4	0
 * OP_STORE_V	6541	7	0
 * OP_CALL2	506	0	0
 * OP_GOTO	18	0	0
 * OP_LOAD_F	28	431	6542
 * OP_EQ_F	6542	370	6543
 * OP_IFNOT	6543	5	0
 * OP_STORE_V	346	4	0
 * OP_STORE_V	6544	7	0
 * OP_CALL2	506	0	0
 * OP_GOTO	11	0	0
 * OP_LOAD_F	28	431	6545
 * OP_EQ_F	6545	6075	6546
 * OP_IFNOT	6546	5	0
 * OP_STORE_V	346	4	0
 * OP_STORE_V	6547	7	0
 * OP_CALL2	506	0	0
 * OP_GOTO	4	0	0
 * OP_STORE_V	346	4	0
 * OP_STORE_V	6548	7	0
 * OP_CALL2	506	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	346	129	6549
 * OP_EQ_S	6549	712	6550
 * OP_LOAD_F	28	195	6551
 * OP_BITAND	6551	6420	6552
 * OP_EQ_F	6552	337	6553
 * OP_AND	6550	6553	6554
 * OP_IFNOT	6554	4	0
 * OP_STORE_V	346	4	0
 * OP_STORE_V	6555	7	0
 * OP_CALL2	506	0	0
 * OP_ADDRESS	28	181	6556
 * OP_STOREP_ENT	346	6556	0
 * OP_CALL0	6428	0	0
 * OP_DONE	0	0	0
 */

void () counter_use = {

   local string junk;

   self.count = (self.count - SPAWNFLAG_NOTOUCH);
   if ( (self.count < MSG_BROADCAST) ) {

      return ;

   }
   if ( (self.count != MSG_BROADCAST) ) {

      if ( ((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == MSG_BROADCAST)) ) {

         if ( (self.count >= SECRET_1ST_DOWN) ) {

            centerprint (activator,"There are more to go...");

         } else {

            if ( (self.count == AS_MELEE) ) {

               centerprint (activator,"Only 3 more to go...");

            } else {

               if ( (self.count == SECRET_1ST_LEFT) ) {

                  centerprint (activator,"Only 2 more to go...");

               } else {

                  centerprint (activator,"Only 1 more to go...");

               }

            }

         }

      }
      return ;

   }
   if ( ((activator.classname == "player") && ((self.spawnflags & SPAWNFLAG_NOMESSAGE) == MSG_BROADCAST)) ) {

      centerprint (activator,"Sequence completed!");

   }
   self.enemy = activator;
   multi_trigger ();

};

// function trigger_counter
// function number 420 begins at statement 10161
/*
 * OP_ADDRESS	28	413	6558
 * OP_STOREP_F	276	6558	0
 * OP_LOAD_F	28	431	6559
 * OP_NOT_F	6559	0	6560
 * OP_IFNOT	6560	3	0
 * OP_ADDRESS	28	431	6561
 * OP_STOREP_F	6075	6561	0
 * OP_ADDRESS	28	147	6562
 * OP_STOREP_FNC	6524	6562	0
 * OP_DONE	0	0	0
 */

void () trigger_counter = {

   self.wait = CONTENT_EMPTY;
   if ( !self.count ) {

      self.count = SECRET_1ST_LEFT;

   }
   self.use = counter_use;

};
float PLAYER_ONLY = 1.000;
float SILENT = 2.000;

// function play_teleport
// function number 421 begins at statement 10171
/*
 * OP_CALL0	452	0	0
 * OP_MUL_F	1	313	6568
 * OP_STORE_F	6568	6566	0
 * OP_LT	6566	6563	6569
 * OP_IFNOT	6569	3	0
 * OP_STORE_S	3819	6567	0
 * OP_GOTO	14	0	0
 * OP_LT	6566	6564	6570
 * OP_IFNOT	6570	3	0
 * OP_STORE_S	3820	6567	0
 * OP_GOTO	10	0	0
 * OP_LT	6566	370	6571
 * OP_IFNOT	6571	3	0
 * OP_STORE_S	3821	6567	0
 * OP_GOTO	6	0	0
 * OP_LT	6566	6076	6572
 * OP_IFNOT	6572	3	0
 * OP_STORE_S	3822	6567	0
 * OP_GOTO	2	0	0
 * OP_STORE_S	3823	6567	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	322	7	0
 * OP_STORE_V	6567	10	0
 * OP_STORE_V	6563	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_DONE	0	0	0
 */

void () play_teleport = {

   local float v;
   local string tmpstr;

   v = (random () * TE_LIGHTNING1);
   if ( (v < PLAYER_ONLY) ) {

      tmpstr = "misc/r_tele1.wav";

   } else {

      if ( (v < SILENT) ) {

         tmpstr = "misc/r_tele2.wav";

      } else {

         if ( (v < AS_MELEE) ) {

            tmpstr = "misc/r_tele3.wav";

         } else {

            if ( (v < SECRET_1ST_DOWN) ) {

               tmpstr = "misc/r_tele4.wav";

            } else {

               tmpstr = "misc/r_tele5.wav";

            }

         }

      }

   }
   sound (self,CHAN_VOICE,tmpstr,PLAYER_ONLY,ATTN_NORM);
   remove (self);

};

// function spawn_tfog
// function number 422 begins at statement 10200
/*
 * OP_CALL0	459	0	0
 * OP_STORE_ENT	1	6416	0
 * OP_ADDRESS	6416	105	6576
 * OP_STOREP_V	6573	6576	0
 * OP_ADDRESS	6416	150	6579
 * OP_ADD_F	31	836	6580
 * OP_STOREP_F	6580	6579	0
 * OP_ADDRESS	6416	148	6581
 * OP_STOREP_FNC	6565	6581	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	301	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	319	7	0
 * OP_CALL2	493	0	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	6573	7	0
 * OP_CALL2	497	0	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	6574	7	0
 * OP_CALL2	497	0	0
 * OP_STORE_V	337	4	0
 * OP_STORE_V	6575	7	0
 * OP_CALL2	497	0	0
 * OP_DONE	0	0	0
 */

void (vector org) spawn_tfog = {

   s = spawn ();
   s.origin = org;
   s.nextthink = (time + 0.200);
   s.think = play_teleport;
   WriteByte (MSG_BROADCAST,SVC_TEMPENTITY);
   WriteByte (MSG_BROADCAST,TE_TELEPORT);
   WriteCoord (MSG_BROADCAST,org);
   WriteCoord (MSG_BROADCAST,org_y);
   WriteCoord (MSG_BROADCAST,org_z);

};

// function tdeath_touch
// function number 423 begins at statement 10225
/*
 * OP_LOAD_ENT	28	201	6583
 * OP_EQ_E	29	6583	6584
 * OP_IFNOT	6584	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	29	129	6585
 * OP_EQ_S	6585	712	6586
 * OP_IFNOT	6586	17	0
 * OP_LOAD_F	29	375	6587
 * OP_GT	6587	31	6588
 * OP_IFNOT	6588	3	0
 * OP_ADDRESS	28	129	6589
 * OP_STOREP_S	4677	6589	0
 * OP_LOAD_ENT	28	201	6590
 * OP_LOAD_S	6590	129	6591
 * OP_NE_S	6591	712	6592
 * OP_IFNOT	6592	8	0
 * OP_LOAD_ENT	28	201	6593
 * OP_STORE_V	6593	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	4076	13	0
 * OP_CALL4	520	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	152	6594
 * OP_IFNOT	6594	6	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	4076	13	0
 * OP_CALL4	520	0	0
 * OP_DONE	0	0	0
 */

void () tdeath_touch = {

   if ( (other == self.owner) ) {

      return ;

   }
   if ( (other.classname == "player") ) {

      if ( (other.invincible_finished > time) ) {

         self.classname = "teledeath2";

      }
      if ( (self.owner.classname != "player") ) {

         T_Damage (self.owner,self,self,50000.000);
         return ;

      }

   }
   if ( other.health ) {

      T_Damage (other,self,self,50000.000);

   }

};

// function spawn_tdeath
// function number 424 begins at statement 10256
/*
 * OP_CALL0	459	0	0
 * OP_STORE_ENT	1	6599	0
 * OP_ADDRESS	6599	129	6600
 * OP_STOREP_S	4665	6600	0
 * OP_ADDRESS	6599	103	6601
 * OP_STOREP_F	227	6601	0
 * OP_ADDRESS	6599	104	6602
 * OP_STOREP_F	238	6602	0
 * OP_ADDRESS	6599	117	6603
 * OP_STOREP_V	286	6603	0
 * OP_LOAD_V	6598	134	6606
 * OP_SUB_V	6606	6609	6612
 * OP_LOAD_V	6598	138	6615
 * OP_ADD_V	6615	6609	6618
 * OP_STORE_V	6599	4	0
 * OP_STORE_V	6612	7	0
 * OP_STORE_V	6618	10	0
 * OP_CALL3	450	0	0
 * OP_STORE_V	6599	4	0
 * OP_STORE_V	6595	7	0
 * OP_CALL2	448	0	0
 * OP_ADDRESS	6599	146	6621
 * OP_STOREP_FNC	6582	6621	0
 * OP_ADDRESS	6599	150	6622
 * OP_ADD_F	31	836	6623
 * OP_STOREP_F	6623	6622	0
 * OP_ADDRESS	6599	148	6624
 * OP_STOREP_FNC	519	6624	0
 * OP_ADDRESS	6599	201	6625
 * OP_STOREP_ENT	6598	6625	0
 * OP_STORE_F	6564	33	0
 * OP_DONE	0	0	0
 */

void (vector org, entity death_owner) spawn_tdeath = {

   local entity death;

   death = spawn ();
   death.classname = "teledeath";
   death.movetype = MOVETYPE_NONE;
   death.solid = SOLID_TRIGGER;
   death.angles = VEC_ORIGIN;
   setsize (death,(death_owner.mins - '1.000 1.000 1.000'),(death_owner.maxs + '1.000 1.000 1.000'));
   setorigin (death,org);
   death.touch = tdeath_touch;
   death.nextthink = (time + 0.200);
   death.think = SUB_Remove;
   death.owner = death_owner;
   force_retouch = SILENT;

};

// function teleport_touch
// function number 425 begins at statement 10288
/*
 * OP_LOAD_S	28	197	6631
 * OP_IFNOT	6631	5	0
 * OP_LOAD_F	28	150	6632
 * OP_LT	6632	31	6633
 * OP_IFNOT	6633	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	195	6634
 * OP_BITAND	6634	6563	6635
 * OP_IFNOT	6635	5	0
 * OP_LOAD_S	29	129	6636
 * OP_NE_S	6636	712	6637
 * OP_IFNOT	6637	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	29	152	6638
 * OP_LE	6638	337	6639
 * OP_LOAD_F	29	104	6640
 * OP_NE_F	6640	240	6641
 * OP_OR	6639	6641	6642
 * OP_IFNOT	6642	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	518	0	0
 * OP_LOAD_V	29	105	6643
 * OP_STORE_V	6643	4	0
 * OP_CALL1	3938	0	0
 * OP_LOAD_S	28	196	6646
 * OP_STORE_V	30	4	0
 * OP_STORE_V	197	7	0
 * OP_STORE_V	6646	10	0
 * OP_CALL3	463	0	0
 * OP_STORE_ENT	1	6627	0
 * OP_NOT_ENT	6627	0	6647
 * OP_IFNOT	6647	3	0
 * OP_STORE_V	6648	4	0
 * OP_CALL1	456	0	0
 * OP_LOAD_V	6627	395	6649
 * OP_STORE_V	6649	4	0
 * OP_CALL1	447	0	0
 * OP_LOAD_V	6627	105	6652
 * OP_MUL_FV	5674	59	6655
 * OP_ADD_V	6652	6655	6658
 * OP_STORE_V	6658	6628	0
 * OP_STORE_V	6628	4	0
 * OP_CALL1	3938	0	0
 * OP_LOAD_V	6627	105	6661
 * OP_STORE_V	6661	4	0
 * OP_STORE_V	29	7	0
 * OP_CALL2	3939	0	0
 * OP_LOAD_F	29	152	6664
 * OP_NOT_F	6664	0	6665
 * OP_IFNOT	6665	12	0
 * OP_ADDRESS	29	105	6666
 * OP_LOAD_V	6627	105	6669
 * OP_STOREP_V	6669	6666	0
 * OP_ADDRESS	29	113	6672
 * OP_LOAD_F	29	114	6675
 * OP_MUL_VF	59	6675	6676
 * OP_LOAD_F	29	115	6679
 * OP_MUL_VF	59	6679	6680
 * OP_ADD_V	6676	6680	6683
 * OP_STOREP_V	6683	6672	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	6627	105	6686
 * OP_STORE_V	29	4	0
 * OP_STORE_V	6686	7	0
 * OP_CALL2	448	0	0
 * OP_ADDRESS	29	117	6689
 * OP_LOAD_V	6627	395	6692
 * OP_STOREP_V	6692	6689	0
 * OP_LOAD_S	29	129	6695
 * OP_EQ_S	6695	712	6696
 * OP_IFNOT	6696	16	0
 * OP_ADDRESS	29	174	6697
 * OP_STOREP_F	6563	6697	0
 * OP_ADDRESS	29	186	6698
 * OP_ADD_F	31	2851	6699
 * OP_STOREP_F	6699	6698	0
 * OP_LOAD_F	29	182	6700
 * OP_BITAND	6700	223	6701
 * OP_IFNOT	6701	5	0
 * OP_ADDRESS	29	182	6702
 * OP_LOAD_F	29	182	6703
 * OP_SUB_F	6703	223	6704
 * OP_STOREP_F	6704	6702	0
 * OP_ADDRESS	29	113	6705
 * OP_MUL_VF	59	2596	6708
 * OP_STOREP_V	6708	6705	0
 * OP_ADDRESS	29	182	6711
 * OP_LOAD_F	29	182	6712
 * OP_LOAD_F	29	182	6713
 * OP_BITAND	6713	223	6714
 * OP_SUB_F	6712	6714	6715
 * OP_STOREP_F	6715	6711	0
 * OP_DONE	0	0	0
 */

void () teleport_touch = {

   local entity t;
   local vector org;

   if ( self.targetname ) {

      if ( (self.nextthink < time) ) {

         return ;

      }

   }
   if ( (self.spawnflags & PLAYER_ONLY) ) {

      if ( (other.classname != "player") ) {

         return ;

      }

   }
   if ( ((other.health <= MSG_BROADCAST) || (other.solid != SOLID_SLIDEBOX)) ) {

      return ;

   }
   SUB_UseTargets ();
   spawn_tfog (other.origin);
   t = find (world,targetname,self.target);
   if ( !t ) {

      objerror ("couldn't find target");

   }
   makevectors (t.mangle);
   org = (t.origin + (DOOR_TOGGLE * v_forward));
   spawn_tfog (org);
   spawn_tdeath (t.origin,other);
   if ( !other.health ) {

      other.origin = t.origin;
      other.velocity = ((v_forward * other.velocity_x) + (v_forward * other.velocity_y));
      return ;

   }
   setorigin (other,t.origin);
   other.angles = t.mangle;
   if ( (other.classname == "player") ) {

      other.fixangle = PLAYER_ONLY;
      other.teleport_time = (time + 0.700);
      if ( (other.flags & FL_ONGROUND) ) {

         other.flags = (other.flags - FL_ONGROUND);

      }
      other.velocity = (v_forward * 300.000);

   }
   other.flags = (other.flags - (other.flags & FL_ONGROUND));

};

// function info_teleport_destination
// function number 426 begins at statement 10381
/*
 * OP_ADDRESS	28	395	6717
 * OP_LOAD_V	28	117	6720
 * OP_STOREP_V	6720	6717	0
 * OP_ADDRESS	28	117	6723
 * OP_STOREP_V	286	6723	0
 * OP_ADDRESS	28	130	6726
 * OP_STOREP_S	569	6726	0
 * OP_ADDRESS	28	105	6727
 * OP_LOAD_V	28	105	6730
 * OP_ADD_V	6730	6733	6736
 * OP_STOREP_V	6736	6727	0
 * OP_LOAD_S	28	197	6739
 * OP_NOT_S	6739	0	6740
 * OP_IFNOT	6740	3	0
 * OP_STORE_V	6741	4	0
 * OP_CALL1	456	0	0
 * OP_DONE	0	0	0
 */

void () info_teleport_destination = {

   self.mangle = self.angles;
   self.angles = VEC_ORIGIN;
   self.model = "";
   self.origin = (self.origin + '0.000 0.000 27.000');
   if ( !self.targetname ) {

      objerror ("no targetname");

   }

};

// function teleport_use
// function number 427 begins at statement 10398
/*
 * OP_ADDRESS	28	150	6743
 * OP_ADD_F	31	836	6744
 * OP_STOREP_F	6744	6743	0
 * OP_STORE_F	6564	33	0
 * OP_ADDRESS	28	148	6745
 * OP_STOREP_FNC	517	6745	0
 * OP_DONE	0	0	0
 */

void () teleport_use = {

   self.nextthink = (time + 0.200);
   force_retouch = SILENT;
   self.think = SUB_Null;

};

// function trigger_teleport
// function number 428 begins at statement 10405
/*
 * OP_CALL0	559	0	0
 * OP_ADDRESS	28	146	6750
 * OP_STOREP_FNC	6626	6750	0
 * OP_LOAD_S	28	196	6751
 * OP_NOT_S	6751	0	6752
 * OP_IFNOT	6752	3	0
 * OP_STORE_V	6753	4	0
 * OP_CALL1	456	0	0
 * OP_ADDRESS	28	147	6754
 * OP_STOREP_FNC	6742	6754	0
 * OP_LOAD_F	28	195	6755
 * OP_BITAND	6755	6564	6756
 * OP_NOT_F	6756	0	6757
 * OP_IFNOT	6757	13	0
 * OP_STORE_V	6758	4	0
 * OP_CALL1	464	0	0
 * OP_LOAD_V	28	134	6759
 * OP_LOAD_V	28	138	6762
 * OP_ADD_V	6759	6762	6765
 * OP_MUL_VF	6765	1491	6768
 * OP_STORE_V	6768	6747	0
 * OP_STORE_V	6747	4	0
 * OP_STORE_V	6758	7	0
 * OP_STORE_V	1491	10	0
 * OP_STORE_V	328	13	0
 * OP_CALL4	507	0	0
 * OP_DONE	0	0	0
 */

void () trigger_teleport = {

   local vector o;

   InitTrigger ();
   self.touch = teleport_touch;
   if ( !self.target ) {

      objerror ("no target");

   }
   self.use = teleport_use;
   if ( !(self.spawnflags & SILENT) ) {

      precache_sound ("ambience/hum1.wav");
      o = ((self.mins + self.maxs) * 0.500);
      ambientsound (o,"ambience/hum1.wav",0.500,ATTN_STATIC);

   }

};

// function trigger_skill_touch
// function number 429 begins at statement 10432
/*
 * OP_LOAD_S	29	129	6772
 * OP_NE_S	6772	712	6773
 * OP_IFNOT	6773	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	206	6774
 * OP_STORE_V	3875	4	0
 * OP_STORE_V	6774	7	0
 * OP_CALL2	505	0	0
 * OP_DONE	0	0	0
 */

void () trigger_skill_touch = {

   if ( (other.classname != "player") ) {

      return ;

   }
   cvar_set ("skill",self.message);

};

// function trigger_setskill
// function number 430 begins at statement 10441
/*
 * OP_CALL0	559	0	0
 * OP_ADDRESS	28	146	6776
 * OP_STOREP_FNC	6771	6776	0
 * OP_DONE	0	0	0
 */

void () trigger_setskill = {

   InitTrigger ();
   self.touch = trigger_skill_touch;

};

// function trigger_onlyregistered_touch
// function number 431 begins at statement 10445
/*
 * OP_LOAD_S	29	129	6778
 * OP_NE_S	6778	712	6779
 * OP_IFNOT	6779	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	373	6780
 * OP_GT	6780	31	6781
 * OP_IFNOT	6781	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	373	6782
 * OP_ADD_F	31	6564	6783
 * OP_STOREP_F	6783	6782	0
 * OP_STORE_V	4010	4	0
 * OP_CALL1	487	0	0
 * OP_IFNOT	1	7	0
 * OP_ADDRESS	28	206	6784
 * OP_STOREP_S	569	6784	0
 * OP_CALL0	518	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_GOTO	14	0	0
 * OP_LOAD_S	28	206	6785
 * OP_NE_S	6785	569	6786
 * OP_IFNOT	6786	11	0
 * OP_LOAD_S	28	206	6787
 * OP_STORE_V	29	4	0
 * OP_STORE_V	6787	7	0
 * OP_CALL2	506	0	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	324	7	0
 * OP_STORE_V	720	10	0
 * OP_STORE_V	6563	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_DONE	0	0	0
 */

void () trigger_onlyregistered_touch = {

   if ( (other.classname != "player") ) {

      return ;

   }
   if ( (self.attack_finished > time) ) {

      return ;

   }
   self.attack_finished = (time + SILENT);
   if ( cvar ("registered") ) {

      self.message = "";
      SUB_UseTargets ();
      remove (self);

   } else {

      if ( (self.message != "") ) {

         centerprint (other,self.message);
         sound (other,CHAN_BODY,"misc/talk.wav",PLAYER_ONLY,ATTN_NORM);

      }

   }

};

// function trigger_onlyregistered
// function number 432 begins at statement 10479
/*
 * OP_STORE_V	720	4	0
 * OP_CALL1	464	0	0
 * OP_CALL0	559	0	0
 * OP_ADDRESS	28	146	6789
 * OP_STOREP_FNC	6777	6789	0
 * OP_DONE	0	0	0
 */

void () trigger_onlyregistered = {

   precache_sound ("misc/talk.wav");
   InitTrigger ();
   self.touch = trigger_onlyregistered_touch;

};

// function hurt_on
// function number 433 begins at statement 10485
/*
 * OP_ADDRESS	28	104	6791
 * OP_STOREP_F	238	6791	0
 * OP_ADDRESS	28	150	6792
 * OP_STOREP_F	276	6792	0
 * OP_DONE	0	0	0
 */

void () hurt_on = {

   self.solid = SOLID_TRIGGER;
   self.nextthink = CONTENT_EMPTY;

};

// function hurt_touch
// function number 434 begins at statement 10490
/*
 * OP_LOAD_F	29	163	6794
 * OP_IFNOT	6794	14	0
 * OP_ADDRESS	28	104	6795
 * OP_STOREP_F	237	6795	0
 * OP_LOAD_F	28	420	6796
 * OP_STORE_V	29	4	0
 * OP_STORE_V	28	7	0
 * OP_STORE_V	28	10	0
 * OP_STORE_V	6796	13	0
 * OP_CALL4	520	0	0
 * OP_ADDRESS	28	148	6797
 * OP_STOREP_FNC	6790	6797	0
 * OP_ADDRESS	28	150	6798
 * OP_ADD_F	31	6563	6799
 * OP_STOREP_F	6799	6798	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () hurt_touch = {

   if ( other.takedamage ) {

      self.solid = SOLID_NOT;
      T_Damage (other,self,self,self.dmg);
      self.think = hurt_on;
      self.nextthink = (time + PLAYER_ONLY);

   }
   return ;

};

// function trigger_hurt
// function number 435 begins at statement 10507
/*
 * OP_CALL0	559	0	0
 * OP_ADDRESS	28	146	6801
 * OP_STOREP_FNC	6793	6801	0
 * OP_LOAD_F	28	420	6802
 * OP_NOT_F	6802	0	6803
 * OP_IFNOT	6803	3	0
 * OP_ADDRESS	28	420	6804
 * OP_STOREP_F	313	6804	0
 * OP_DONE	0	0	0
 */

void () trigger_hurt = {

   InitTrigger ();
   self.touch = hurt_touch;
   if ( !self.dmg ) {

      self.dmg = TE_LIGHTNING1;

   }

};
float PUSH_ONCE = 1.000;

// function trigger_push_touch
// function number 436 begins at statement 10516
/*
 * OP_LOAD_S	29	129	6807
 * OP_EQ_S	6807	3134	6808
 * OP_IFNOT	6808	8	0
 * OP_ADDRESS	29	113	6809
 * OP_LOAD_F	28	364	6812
 * OP_LOAD_V	28	202	6813
 * OP_MUL_FV	6812	6813	6816
 * OP_MUL_VF	6816	318	6819
 * OP_STOREP_V	6819	6809	0
 * OP_GOTO	25	0	0
 * OP_LOAD_F	29	152	6822
 * OP_GT	6822	337	6823
 * OP_IFNOT	6823	22	0
 * OP_ADDRESS	29	113	6824
 * OP_LOAD_F	28	364	6827
 * OP_LOAD_V	28	202	6828
 * OP_MUL_FV	6827	6828	6831
 * OP_MUL_VF	6831	318	6834
 * OP_STOREP_V	6834	6824	0
 * OP_LOAD_S	29	129	6837
 * OP_EQ_S	6837	712	6838
 * OP_IFNOT	6838	13	0
 * OP_LOAD_F	29	386	6839
 * OP_LT	6839	31	6840
 * OP_IFNOT	6840	10	0
 * OP_ADDRESS	29	386	6841
 * OP_ADD_F	31	6842	6843
 * OP_STOREP_F	6843	6841	0
 * OP_STORE_V	29	4	0
 * OP_STORE_V	320	7	0
 * OP_STORE_V	6844	10	0
 * OP_STORE_V	6805	13	0
 * OP_STORE_V	326	16	0
 * OP_CALL5	453	0	0
 * OP_LOAD_F	28	195	6845
 * OP_BITAND	6845	6805	6846
 * OP_IFNOT	6846	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	460	0	0
 * OP_DONE	0	0	0
 */

void () trigger_push_touch = {

   if ( (other.classname == "grenade") ) {

      other.velocity = ((self.speed * self.movedir) * TE_LAVASPLASH);

   } else {

      if ( (other.health > MSG_BROADCAST) ) {

         other.velocity = ((self.speed * self.movedir) * TE_LAVASPLASH);
         if ( (other.classname == "player") ) {

            if ( (other.fly_sound < time) ) {

               other.fly_sound = (time + 1.500);
               sound (other,CHAN_AUTO,"ambience/windfly.wav",PUSH_ONCE,ATTN_NORM);

            }

         }

      }

   }
   if ( (self.spawnflags & PUSH_ONCE) ) {

      remove (self);

   }

};

// function trigger_push
// function number 437 begins at statement 10556
/*
 * OP_CALL0	559	0	0
 * OP_STORE_V	6844	4	0
 * OP_CALL1	464	0	0
 * OP_ADDRESS	28	146	6848
 * OP_STOREP_FNC	6806	6848	0
 * OP_LOAD_F	28	364	6849
 * OP_NOT_F	6849	0	6850
 * OP_IFNOT	6850	3	0
 * OP_ADDRESS	28	364	6851
 * OP_STOREP_F	1168	6851	0
 * OP_DONE	0	0	0
 */

void () trigger_push = {

   InitTrigger ();
   precache_sound ("ambience/windfly.wav");
   self.touch = trigger_push_touch;
   if ( !self.speed ) {

      self.speed = 1000.000;

   }

};

// function trigger_monsterjump_touch
// function number 438 begins at statement 10567
/*
 * OP_LOAD_F	29	182	6853
 * OP_BITOR	219	215	6854
 * OP_BITOR	6854	216	6855
 * OP_BITAND	6853	6855	6856
 * OP_NE_F	6856	219	6857
 * OP_IFNOT	6857	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	29	114	6858
 * OP_LOAD_F	28	203	6859
 * OP_LOAD_F	28	364	6860
 * OP_MUL_F	6859	6860	6861
 * OP_STOREP_F	6861	6858	0
 * OP_ADDRESS	29	115	6862
 * OP_LOAD_F	28	204	6863
 * OP_LOAD_F	28	364	6864
 * OP_MUL_F	6863	6864	6865
 * OP_STOREP_F	6865	6862	0
 * OP_LOAD_F	29	182	6866
 * OP_BITAND	6866	223	6867
 * OP_NOT_F	6867	0	6868
 * OP_IFNOT	6868	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	29	182	6869
 * OP_LOAD_F	29	182	6870
 * OP_SUB_F	6870	223	6871
 * OP_STOREP_F	6871	6869	0
 * OP_ADDRESS	29	116	6872
 * OP_LOAD_F	28	442	6873
 * OP_STOREP_F	6873	6872	0
 * OP_DONE	0	0	0
 */

void () trigger_monsterjump_touch = {

   if ( ((other.flags & ((FL_MONSTER | FL_FLY) | FL_SWIM)) != FL_MONSTER) ) {

      return ;

   }
   other.velocity_x = (self.movedir_x * self.speed);
   other.velocity_y = (self.movedir_y * self.speed);
   if ( !(other.flags & FL_ONGROUND) ) {

      return ;

   }
   other.flags = (other.flags - FL_ONGROUND);
   other.velocity_z = self.height;

};

// function trigger_monsterjump
// function number 439 begins at statement 10597
/*
 * OP_LOAD_F	28	364	6875
 * OP_NOT_F	6875	0	6876
 * OP_IFNOT	6876	3	0
 * OP_ADDRESS	28	364	6877
 * OP_STOREP_F	1965	6877	0
 * OP_LOAD_F	28	442	6878
 * OP_NOT_F	6878	0	6879
 * OP_IFNOT	6879	3	0
 * OP_ADDRESS	28	442	6880
 * OP_STOREP_F	1965	6880	0
 * OP_LOAD_V	28	117	6881
 * OP_EQ_V	6881	286	6884
 * OP_IFNOT	6884	3	0
 * OP_ADDRESS	28	117	6885
 * OP_STOREP_V	6888	6885	0
 * OP_CALL0	559	0	0
 * OP_ADDRESS	28	146	6891
 * OP_STOREP_FNC	6852	6891	0
 * OP_DONE	0	0	0
 */

void () trigger_monsterjump = {

   if ( !self.speed ) {

      self.speed = 200.000;

   }
   if ( !self.height ) {

      self.height = 200.000;

   }
   if ( (self.angles == VEC_ORIGIN) ) {

      self.angles = '0.000 360.000 0.000';

   }
   InitTrigger ();
   self.touch = trigger_monsterjump_touch;

};
