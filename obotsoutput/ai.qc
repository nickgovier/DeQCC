
void () movetarget_f;

void () t_movetarget;

void () knight_walk1;

void () knight_bow6;

void () knight_bow1;
float globaldef1616 /* = 0.000 */;
entity globaldef1617;
float globaldef1618 /* = 0.000 */;

// function anglemod
// function number 173 begins at statement 3093
/*
 * OP_GE	3510	1298	3511
 * OP_IFNOT	3511	4	0
 * OP_SUB_F	3510	1298	3512
 * OP_STORE_F	3512	3510	0
 * OP_GOTO	-4	0	0
 * OP_LT	3510	213	3513
 * OP_IFNOT	3513	4	0
 * OP_ADD_F	3510	1298	3514
 * OP_STORE_F	3514	3510	0
 * OP_GOTO	-4	0	0
 * OP_RETURN	3510	0	0
 * OP_DONE	0	0	0
 */
float (float globaldef1619) anglemod = {

   while ( (globaldef1619 >= globaldef1198) ) {

      globaldef1619 = (globaldef1619 - globaldef1198);

   }
   while ( (globaldef1619 < FALSE) ) {

      globaldef1619 = (globaldef1619 + globaldef1198);

   }
   return ( globaldef1619 );

};

// function movetarget_f
// function number 174 begins at statement 3105
/*
 * OP_LOAD_S	28	197	3515
 * OP_NOT_S	3515	0	3516
 * OP_IFNOT	3516	3	0
 * OP_STORE_V	3517	4	0
 * OP_CALL1	461	0	0
 * OP_ADDRESS	28	104	3518
 * OP_STOREP_F	238	3518	0
 * OP_ADDRESS	28	146	3519
 * OP_STOREP_FNC	3503	3519	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	3520	7	0
 * OP_STORE_V	3523	10	0
 * OP_CALL3	455	0	0
 * OP_DONE	0	0	0
 */

void () movetarget_f = {

   if ( !self.targetname ) {

      objerror (globaldef1620);

   }
   self.solid = SOLID_TRIGGER;
   self.globaldef124 = globaldef1612;
   globaldef438 (self,globaldef1621,globaldef1622);

};
string globaldef1620 /* = "monster_movetarget: no targetname" */;
vector globaldef1621 /* = '-8.000 -8.000 -8.000' */;
vector globaldef1622 /* = '8.000 8.000 8.000' */;

void () path_corner;

// function path_corner
// function number 175 begins at statement 3119
/*
 * OP_CALL0	3502	0	0
 * OP_DONE	0	0	0
 */

void () path_corner = {

   globaldef1611 ();

};

// function t_movetarget
// function number 176 begins at statement 3121
/*
 * OP_LOAD_ENT	29	423	3528
 * OP_NE_E	3528	28	3529
 * OP_IFNOT	3529	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	29	181	3530
 * OP_IFNOT	3530	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_ENT	28	3527	0
 * OP_STORE_ENT	29	28	0
 * OP_STORE_ENT	3527	29	0
 * OP_LOAD_S	28	129	3531
 * OP_EQ_S	3531	3532	3533
 * OP_IFNOT	3533	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3534	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	332	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	194	3535
 * OP_ADDRESS	28	423	3536
 * OP_STORE_V	30	4	0
 * OP_STORE_V	197	7	0
 * OP_LOAD_S	29	196	3537
 * OP_STORE_V	3537	10	0
 * OP_CALL3	468	0	0
 * OP_STOREP_ENT	1	3536	0
 * OP_STOREP_ENT	1	3535	0
 * OP_ADDRESS	28	191	3538
 * OP_LOAD_ENT	28	194	3539
 * OP_LOAD_V	3539	105	3540
 * OP_LOAD_V	28	105	3543
 * OP_SUB_V	3540	3543	3546
 * OP_STORE_V	3546	4	0
 * OP_CALL1	463	0	0
 * OP_STOREP_F	1	3538	0
 * OP_LOAD_ENT	28	423	3549
 * OP_NOT_ENT	3549	0	3550
 * OP_IFNOT	3550	7	0
 * OP_ADDRESS	28	422	3551
 * OP_ADD_F	31	3552	3553
 * OP_STOREP_F	3553	3551	0
 * OP_LOAD_FNC	28	361	3554
 * OP_CALL0	3554	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () t_movetarget = {

   local entity globaldef1624;

   if ( (other.globaldef406 != self) ) {

      return ;

   }
   if ( other.enemy ) {

      return ;

   }
   globaldef1624 = self;
   self = other;
   other = globaldef1624;
   if ( (self.classname == globaldef1625) ) {

      sound (self,CHAN_VOICE,globaldef1626,TRUE,ATTN_IDLE);

   }
   self.globaldef406 = find (world,targetname,other.target);
   self.globaldef172 = find (world,targetname,other.target);
   self.globaldef169 = globaldef446 ((self.globaldef172.origin - self.origin));
   if ( !self.globaldef406 ) {

      self.globaldef405 = (time + globaldef1627);
      self.globaldef344 ();
      return ;

   }

};
string globaldef1625 /* = "monster_ogre" */;
string globaldef1626 /* = "ogre/ogdrag.wav" */;
float globaldef1627 /* = 999999.000 */;

// function range
// function number 177 begins at statement 3167
/*
 * OP_LOAD_V	28	105	3563
 * OP_LOAD_V	28	166	3566
 * OP_ADD_V	3563	3566	3569
 * OP_STORE_V	3569	3556	0
 * OP_LOAD_V	3555	105	3572
 * OP_LOAD_V	3555	166	3575
 * OP_ADD_V	3572	3575	3578
 * OP_STORE_V	3578	3559	0
 * OP_SUB_V	3556	3559	3581
 * OP_STORE_V	3581	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	3562	0
 * OP_LT	3562	3584	3585
 * OP_IFNOT	3585	2	0
 * OP_RETURN	242	0	0
 * OP_LT	3562	745	3586
 * OP_IFNOT	3586	2	0
 * OP_RETURN	243	0	0
 * OP_LT	3562	1663	3587
 * OP_IFNOT	3587	2	0
 * OP_RETURN	244	0	0
 * OP_RETURN	245	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef1628) range = {

   local vector globaldef1629;
   local vector globaldef1633;
   local float globaldef1637;

   globaldef1629 = (self.origin + self.globaldef144);
   globaldef1633 = (globaldef1628.origin + globaldef1628.globaldef144);
   globaldef1637 = vlen ((globaldef1629 - globaldef1633));
   if ( (globaldef1637 < globaldef1638) ) {

      return ( RANGE_MELEE );

   }
   if ( (globaldef1637 < globaldef728) ) {

      return ( RANGE_NEAR );

   }
   if ( (globaldef1637 < globaldef1302) ) {

      return ( RANGE_MID );

   }
   return ( RANGE_FAR );

};
float globaldef1638 /* = 120.000 */;

// function visible
// function number 178 begins at statement 3190
/*
 * OP_LOAD_V	28	105	3595
 * OP_LOAD_V	28	166	3598
 * OP_ADD_V	3595	3598	3601
 * OP_STORE_V	3601	3589	0
 * OP_LOAD_V	3588	105	3604
 * OP_LOAD_V	3588	166	3607
 * OP_ADD_V	3604	3607	3610
 * OP_STORE_V	3610	3592	0
 * OP_STORE_V	3589	4	0
 * OP_STORE_V	3592	7	0
 * OP_STORE_V	214	10	0
 * OP_STORE_V	28	13	0
 * OP_CALL4	466	0	0
 * OP_AND	79	80	3613
 * OP_IFNOT	3613	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	70	214	3614
 * OP_IFNOT	3614	2	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef1639) visible = {

   local vector globaldef1640;
   local vector globaldef1644;

   globaldef1640 = (self.origin + self.globaldef144);
   globaldef1644 = (globaldef1639.origin + globaldef1639.globaldef144);
   globaldef449 (globaldef1640,globaldef1644,TRUE,self);
   if ( (trace_inopen && trace_inwater) ) {

      return ( FALSE );

   }
   if ( (trace_fraction == TRUE) ) {

      return ( TRUE );

   }
   return ( FALSE );

};

// function infront
// function number 179 begins at statement 3211
/*
 * OP_LOAD_V	28	117	3620
 * OP_STORE_V	3620	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	3615	105	3623
 * OP_LOAD_V	28	105	3626
 * OP_SUB_V	3623	3626	3629
 * OP_STORE_V	3629	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	3616	0
 * OP_MUL_V	3616	59	3632
 * OP_STORE_F	3632	3619	0
 * OP_GT	3619	3409	3633
 * OP_IFNOT	3633	2	0
 * OP_RETURN	214	0	0
 * OP_RETURN	213	0	0
 * OP_DONE	0	0	0
 */
float (entity globaldef1648) infront = {

   local vector globaldef1649;
   local float globaldef1653;

   makevectors (self.angles);
   globaldef1649 = globaldef442 ((globaldef1648.origin - self.origin));
   globaldef1653 = (globaldef1649 * v_forward);
   if ( (globaldef1653 > globaldef1588) ) {

      return ( TRUE );

   }
   return ( FALSE );

};

void () HuntTarget;

// function HuntTarget
// function number 180 begins at statement 3227
/*
 * OP_ADDRESS	28	194	3635
 * OP_LOAD_ENT	28	181	3636
 * OP_STOREP_ENT	3636	3635	0
 * OP_ADDRESS	28	148	3637
 * OP_LOAD_FNC	28	363	3638
 * OP_STOREP_FNC	3638	3637	0
 * OP_ADDRESS	28	191	3639
 * OP_LOAD_ENT	28	181	3640
 * OP_LOAD_V	3640	105	3641
 * OP_LOAD_V	28	105	3644
 * OP_SUB_V	3641	3644	3647
 * OP_STORE_V	3647	4	0
 * OP_CALL1	463	0	0
 * OP_STOREP_F	1	3639	0
 * OP_ADDRESS	28	150	3650
 * OP_ADD_F	31	3036	3651
 * OP_STOREP_F	3651	3650	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	3163	0	0
 * OP_DONE	0	0	0
 */

void () HuntTarget = {

   self.globaldef172 = self.enemy;
   self.think = self.globaldef346;
   self.globaldef169 = globaldef446 ((self.enemy.origin - self.origin));
   self.nextthink = (time + 0.100);
   globaldef1517 (TRUE);

};

void () SightSound;

// function SightSound
// function number 181 begins at statement 3247
/*
 * OP_LOAD_S	28	129	3654
 * OP_EQ_S	3654	3532	3655
 * OP_IFNOT	3655	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3656	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	152	0	0
 * OP_LOAD_S	28	129	3657
 * OP_EQ_S	3657	3254	3658
 * OP_IFNOT	3658	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3659	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	142	0	0
 * OP_LOAD_S	28	129	3660
 * OP_EQ_S	3660	3661	3662
 * OP_IFNOT	3662	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3663	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	132	0	0
 * OP_LOAD_S	28	129	3664
 * OP_EQ_S	3664	3665	3666
 * OP_IFNOT	3666	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3667	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	122	0	0
 * OP_LOAD_S	28	129	3668
 * OP_EQ_S	3668	3669	3670
 * OP_IFNOT	3670	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3671	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	112	0	0
 * OP_LOAD_S	28	129	3672
 * OP_EQ_S	3672	3673	3674
 * OP_IFNOT	3674	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3675	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	102	0	0
 * OP_LOAD_S	28	129	3676
 * OP_EQ_S	3676	3677	3678
 * OP_IFNOT	3678	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3679	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	92	0	0
 * OP_LOAD_S	28	129	3680
 * OP_EQ_S	3680	3681	3682
 * OP_IFNOT	3682	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3683	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	82	0	0
 * OP_LOAD_S	28	129	3684
 * OP_EQ_S	3684	3685	3686
 * OP_IFNOT	3686	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3687	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	72	0	0
 * OP_LOAD_S	28	129	3688
 * OP_EQ_S	3688	3689	3690
 * OP_IFNOT	3690	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3691	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	62	0	0
 * OP_LOAD_S	28	129	3692
 * OP_EQ_S	3692	3693	3694
 * OP_IFNOT	3694	40	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	228	3695
 * OP_STORE_V	3695	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	3653	0
 * OP_EQ_F	3653	214	3696
 * OP_IFNOT	3696	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3697	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	25	0	0
 * OP_EQ_F	3653	216	3698
 * OP_IFNOT	3698	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3699	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	16	0	0
 * OP_EQ_F	3653	213	3700
 * OP_IFNOT	3700	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3701	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3702	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	20	0	0
 * OP_LOAD_S	28	129	3703
 * OP_EQ_S	3703	3704	3705
 * OP_IFNOT	3705	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3706	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	10	0	0
 * OP_LOAD_S	28	129	3707
 * OP_EQ_S	3707	3708	3709
 * OP_IFNOT	3709	7	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	3710	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () SightSound = {

   local float globaldef1656;

   if ( (self.classname == globaldef1625) ) {

      sound (self,CHAN_VOICE,"ogre/ogwake.wav",TRUE,ATTN_NORM);

   } else {

      if ( (self.classname == globaldef1551) ) {

         sound (self,CHAN_VOICE,"knight/ksight.wav",TRUE,ATTN_NORM);

      } else {

         if ( (self.classname == "monster_shambler") ) {

            sound (self,CHAN_VOICE,"shambler/ssight.wav",TRUE,ATTN_NORM);

         } else {

            if ( (self.classname == "monster_demon1") ) {

               sound (self,CHAN_VOICE,"demon/sight2.wav",TRUE,ATTN_NORM);

            } else {

               if ( (self.classname == "monster_wizard") ) {

                  sound (self,CHAN_VOICE,"wizard/wsight.wav",TRUE,ATTN_NORM);

               } else {

                  if ( (self.classname == "monster_zombie") ) {

                     sound (self,CHAN_VOICE,"zombie/z_idle.wav",TRUE,ATTN_NORM);

                  } else {

                     if ( (self.classname == "monster_dog") ) {

                        sound (self,CHAN_VOICE,"dog/dsight.wav",TRUE,ATTN_NORM);

                     } else {

                        if ( (self.classname == "monster_hell_knight") ) {

                           sound (self,CHAN_VOICE,"hknight/sight1.wav",TRUE,ATTN_NORM);

                        } else {

                           if ( (self.classname == "monster_tarbaby") ) {

                              sound (self,CHAN_VOICE,"blob/sight1.wav",TRUE,ATTN_NORM);

                           } else {

                              if ( (self.classname == "monster_vomit") ) {

                                 sound (self,CHAN_VOICE,"vomitus/v_sight1.wav",TRUE,ATTN_NORM);

                              } else {

                                 if ( (self.classname == "monster_enforcer") ) {

                                    globaldef1656 = globaldef466 ((globaldef440 () * MOVETYPE_WALK));
                                    if ( (globaldef1656 == TRUE) ) {

                                       sound (self,CHAN_VOICE,"enforcer/sight1.wav",TRUE,ATTN_NORM);

                                    } else {

                                       if ( (globaldef1656 == FL_SWIM) ) {

                                          sound (self,CHAN_VOICE,"enforcer/sight2.wav",TRUE,ATTN_NORM);

                                       } else {

                                          if ( (globaldef1656 == FALSE) ) {

                                             sound (self,CHAN_VOICE,"enforcer/sight3.wav",TRUE,ATTN_NORM);

                                          } else {

                                             sound (self,CHAN_VOICE,"enforcer/sight4.wav",TRUE,ATTN_NORM);

                                          }

                                       }

                                    }

                                 } else {

                                    if ( (self.classname == "monster_army") ) {

                                       sound (self,CHAN_VOICE,"soldier/sight1.wav",TRUE,ATTN_NORM);

                                    } else {

                                       if ( (self.classname == "monster_shalrath") ) {

                                          sound (self,CHAN_VOICE,"shalrath/sight.wav",TRUE,ATTN_NORM);

                                       }

                                    }

                                 }

                              }

                           }

                        }

                     }

                  }

               }

            }

         }

      }

   }

};

void () FoundTarget;

// function FoundTarget
// function number 182 begins at statement 3409
/*
 * OP_LOAD_ENT	28	181	3712
 * OP_LOAD_S	3712	129	3713
 * OP_EQ_S	3713	1236	3714
 * OP_IFNOT	3714	3	0
 * OP_STORE_ENT	28	3508	0
 * OP_STORE_F	31	3509	0
 * OP_ADDRESS	28	393	3715
 * OP_ADD_F	31	214	3716
 * OP_STOREP_F	3716	3715	0
 * OP_CALL0	3652	0	0
 * OP_CALL0	3634	0	0
 * OP_DONE	0	0	0
 */

void () FoundTarget = {

   if ( (self.enemy.classname == "player") ) {

      globaldef1617 = self;
      globaldef1618 = time;

   }
   self.globaldef376 = (time + TRUE);
   globaldef1655 ();
   globaldef1654 ();

};
entity () func183;

// function func183
// function number 183 begins at statement 3421
/*
 * OP_STORE_ENT	30	3721	0
 * OP_STORE_F	3722	3719	0
 * OP_STORE_ENT	834	3720	0
 * OP_IFNOT	3720	20	0
 * OP_LOAD_V	28	105	3723
 * OP_LOAD_V	3720	105	3726
 * OP_SUB_V	3723	3726	3729
 * OP_STORE_V	3729	4	0
 * OP_CALL1	462	0	0
 * OP_STORE_F	1	3718	0
 * OP_LT	3718	3719	3732
 * OP_IFNOT	3732	9	0
 * OP_STORE_V	3720	4	0
 * OP_CALL1	3169	0	0
 * OP_IFNOT	1	6	0
 * OP_STORE_V	3720	4	0
 * OP_CALL1	3285	0	0
 * OP_IFNOT	1	3	0
 * OP_STORE_F	3718	3719	0
 * OP_STORE_ENT	3720	3721	0
 * OP_LOAD_ENT	3720	620	3733
 * OP_STORE_ENT	3733	3720	0
 * OP_GOTO	-19	0	0
 * OP_RETURN	3721	0	0
 * OP_DONE	0	0	0
 */
entity () func183 = {

   local float globaldef1686;
   local float globaldef1687;
   local entity globaldef1688;
   local entity globaldef1689;

   globaldef1689 = world;
   globaldef1687 = globaldef1690;
   globaldef1688 = globaldef817;
   while ( globaldef1688 ) {

      globaldef1686 = vlen ((self.origin - globaldef1688.origin));
      if ( (globaldef1686 < globaldef1687) ) {

         if ( visible (globaldef1688) ) {

            if ( globaldef1555 (globaldef1688) ) {

               globaldef1687 = globaldef1686;
               globaldef1689 = globaldef1688;

            }

         }

      }
      globaldef1688 = globaldef1688.globaldef603;

   }
   return ( globaldef1689 );

};
float globaldef1690 /* = 9999.000 */;
float () FindTarget;

// function FindTarget
// function number 184 begins at statement 3446
/*
 * OP_SUB_F	31	3036	3737
 * OP_GE	3509	3737	3738
 * OP_LOAD_F	28	195	3739
 * OP_BITAND	3739	228	3740
 * OP_NOT_F	3740	0	3741
 * OP_AND	3738	3741	3742
 * OP_IFNOT	3742	8	0
 * OP_STORE_ENT	3508	3735	0
 * OP_LOAD_ENT	3735	181	3743
 * OP_LOAD_ENT	28	181	3744
 * OP_EQ_E	3743	3744	3745
 * OP_IFNOT	3745	2	0
 * OP_RETURN	0	0	0
 * OP_GOTO	10	0	0
 * OP_CALL0	3717	0	0
 * OP_STORE_ENT	1	3735	0
 * OP_NOT_ENT	3735	0	3746
 * OP_IFNOT	3746	3	0
 * OP_CALL0	467	0	0
 * OP_STORE_ENT	1	3735	0
 * OP_NOT_ENT	3735	0	3747
 * OP_IFNOT	3747	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_ENT	28	181	3748
 * OP_EQ_E	3735	3748	3749
 * OP_IFNOT	3749	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	3735	182	3750
 * OP_BITAND	3750	221	3751
 * OP_IFNOT	3751	2	0
 * OP_RETURN	213	0	0
 * OP_LOAD_F	3735	162	3752
 * OP_BITAND	3752	272	3753
 * OP_IFNOT	3753	2	0
 * OP_RETURN	213	0	0
 * OP_STORE_V	3735	4	0
 * OP_CALL1	3286	0	0
 * OP_STORE_F	1	3736	0
 * OP_EQ_F	3736	245	3754
 * OP_IFNOT	3754	2	0
 * OP_RETURN	213	0	0
 * OP_STORE_V	3735	4	0
 * OP_CALL1	3169	0	0
 * OP_NOT_F	1	0	3755
 * OP_IFNOT	3755	2	0
 * OP_RETURN	213	0	0
 * OP_EQ_F	3736	243	3756
 * OP_IFNOT	3756	10	0
 * OP_LOAD_F	3735	393	3757
 * OP_LT	3757	31	3758
 * OP_STORE_V	3735	4	0
 * OP_CALL1	3285	0	0
 * OP_NOT_F	1	0	3759
 * OP_AND	3758	3759	3760
 * OP_IFNOT	3760	2	0
 * OP_RETURN	213	0	0
 * OP_GOTO	8	0	0
 * OP_EQ_F	3736	244	3761
 * OP_IFNOT	3761	6	0
 * OP_STORE_V	3735	4	0
 * OP_CALL1	3285	0	0
 * OP_NOT_F	1	0	3762
 * OP_IFNOT	3762	2	0
 * OP_RETURN	213	0	0
 * OP_ADDRESS	28	181	3763
 * OP_STOREP_ENT	3735	3763	0
 * OP_LOAD_ENT	28	181	3764
 * OP_LOAD_S	3764	129	3765
 * OP_NE_S	3765	1236	3766
 * OP_LOAD_ENT	28	181	3767
 * OP_LOAD_S	3767	129	3768
 * OP_NE_S	3768	1241	3769
 * OP_AND	3766	3769	3770
 * OP_IFNOT	3770	16	0
 * OP_ADDRESS	28	181	3771
 * OP_LOAD_ENT	28	181	3772
 * OP_LOAD_ENT	3772	181	3773
 * OP_STOREP_ENT	3773	3771	0
 * OP_LOAD_ENT	28	181	3774
 * OP_LOAD_S	3774	129	3775
 * OP_NE_S	3775	1236	3776
 * OP_LOAD_ENT	28	181	3777
 * OP_LOAD_S	3777	129	3778
 * OP_NE_S	3778	1241	3779
 * OP_AND	3776	3779	3780
 * OP_IFNOT	3780	4	0
 * OP_ADDRESS	28	181	3781
 * OP_STOREP_ENT	30	3781	0
 * OP_RETURN	213	0	0
 * OP_CALL0	3711	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () FindTarget = {

   local entity globaldef1692;
   local float globaldef1693;

   if ( ((globaldef1618 >= (time - 0.100)) && !(self.globaldef173 & MOVETYPE_WALK)) ) {

      globaldef1692 = globaldef1617;
      if ( (globaldef1692.enemy == self.enemy) ) {

         return ;

      }

   } else {

      globaldef1692 = globaldef1685 ();
      if ( !globaldef1692 ) {

         globaldef1692 = globaldef450 ();

      }
      if ( !globaldef1692 ) {

         return ( FALSE );

      }

   }
   if ( (globaldef1692 == self.enemy) ) {

      return ( FALSE );

   }
   if ( (globaldef1692.globaldef160 & FL_NOTARGET) ) {

      return ( FALSE );

   }
   if ( (globaldef1692.globaldef140 & IT_INVISIBILITY) ) {

      return ( FALSE );

   }
   globaldef1693 = globaldef1556 (globaldef1692);
   if ( (globaldef1693 == RANGE_FAR) ) {

      return ( FALSE );

   }
   if ( !visible (globaldef1692) ) {

      return ( FALSE );

   }
   if ( (globaldef1693 == RANGE_NEAR) ) {

      if ( ((globaldef1692.globaldef376 < time) && !globaldef1555 (globaldef1692)) ) {

         return ( FALSE );

      }

   } else {

      if ( (globaldef1693 == RANGE_MID) ) {

         if ( !globaldef1555 (globaldef1692) ) {

            return ( FALSE );

         }

      }

   }
   self.enemy = globaldef1692;
   if ( ((self.enemy.classname != "player") && (self.enemy.classname != globaldef1171)) ) {

      self.enemy = self.enemy.enemy;
      if ( ((self.enemy.classname != "player") && (self.enemy.classname != globaldef1171)) ) {

         self.enemy = world;
         return ( FALSE );

      }

   }
   globaldef1684 ();
   return ( TRUE );

};

void (float globaldef1695) ai_forward;

// function ai_forward
// function number 185 begins at statement 3538
/*
 * OP_LOAD_F	28	119	3784
 * OP_STORE_V	3784	4	0
 * OP_STORE_V	3783	7	0
 * OP_CALL2	480	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1695) ai_forward = {

   globaldef463 (self.globaldef97,globaldef1695);

};

void (float globaldef1697) ai_back;

// function ai_back
// function number 186 begins at statement 3543
/*
 * OP_LOAD_F	28	119	3787
 * OP_ADD_F	3787	1296	3788
 * OP_STORE_V	3788	4	0
 * OP_STORE_V	3786	7	0
 * OP_CALL2	480	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1697) ai_back = {

   globaldef463 ((self.globaldef97 + globaldef1197),globaldef1697);

};

void (float globaldef1699) ai_pain;

// function ai_pain
// function number 187 begins at statement 3549
/*
 * OP_STORE_V	3790	4	0
 * OP_CALL1	3785	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1699) ai_pain = {

   globaldef1696 (globaldef1699);

};

void (float globaldef1701) ai_painforward;

// function ai_painforward
// function number 188 begins at statement 3552
/*
 * OP_LOAD_F	28	191	3793
 * OP_STORE_V	3793	4	0
 * OP_STORE_V	3792	7	0
 * OP_CALL2	480	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1701) ai_painforward = {

   globaldef463 (self.globaldef169,globaldef1701);

};

void (float globaldef1703) ai_walk;

// function ai_walk
// function number 189 begins at statement 3557
/*
 * OP_STORE_F	3795	346	0
 * OP_LOAD_S	28	129	3799
 * OP_EQ_S	3799	3800	3801
 * OP_IFNOT	3801	4	0
 * OP_STORE_V	3795	4	0
 * OP_CALL1	504	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	3734	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	3795	4	0
 * OP_CALL1	504	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1703) ai_walk = {

   local vector globaldef1704;

   movedist = globaldef1703;
   if ( (self.classname == globaldef1708) ) {

      globaldef487 (globaldef1703);
      return ;

   }
   if ( globaldef1691 () ) {

      return ;

   }
   globaldef487 (globaldef1703);

};
string globaldef1708 /* = "monster_dragon" */;

void () ai_stand;

// function ai_stand
// function number 190 begins at statement 3570
/*
 * OP_CALL0	3734	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	422	3803
 * OP_GT	31	3803	3804
 * OP_IFNOT	3804	4	0
 * OP_LOAD_FNC	28	362	3805
 * OP_CALL0	3805	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () ai_stand = {

   if ( globaldef1691 () ) {

      return ;

   }
   if ( (time > self.globaldef405) ) {

      self.globaldef345 ();
      return ;

   }

};

void () ai_turn;

// function ai_turn
// function number 191 begins at statement 3580
/*
 * OP_CALL0	3734	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_CALL0	494	0	0
 * OP_DONE	0	0	0
 */

void () ai_turn = {

   if ( globaldef1691 () ) {

      return ;

   }
   globaldef477 ();

};

// function ChooseTurn
// function number 192 begins at statement 3585
/*
 * OP_LOAD_V	28	105	3816
 * OP_SUB_V	3816	3807	3819
 * OP_STORE_V	3819	3810	0
 * OP_STORE_F	75	3813	0
 * OP_SUB_F	213	74	3822
 * OP_STORE_F	3822	3814	0
 * OP_STORE_F	213	3815	0
 * OP_MUL_V	3810	3813	3823
 * OP_GT	3823	213	3824
 * OP_IFNOT	3824	5	0
 * OP_SUB_F	213	75	3825
 * OP_STORE_F	3825	3810	0
 * OP_STORE_F	74	3811	0
 * OP_GOTO	4	0	0
 * OP_STORE_F	75	3810	0
 * OP_SUB_F	213	74	3826
 * OP_STORE_F	3826	3811	0
 * OP_STORE_F	213	3812	0
 * OP_ADDRESS	28	191	3827
 * OP_STORE_V	3810	4	0
 * OP_CALL1	463	0	0
 * OP_STOREP_F	1	3827	0
 * OP_DONE	0	0	0
 */

void (vector globaldef1711) ChooseTurn = {

   local vector globaldef1715;
   local vector globaldef1719;

   globaldef1715 = (self.origin - globaldef1711);
   globaldef1719_x = globaldef53;
   globaldef1721 = (FALSE - trace_plane_normal_x);
   globaldef1722 = FALSE;
   if ( ((globaldef1715 * globaldef1719) > FALSE) ) {

      globaldef1715_x = (FALSE - globaldef53);
      globaldef1717 = trace_plane_normal_x;

   } else {

      globaldef1715_x = globaldef53;
      globaldef1717 = (FALSE - trace_plane_normal_x);

   }
   globaldef1718 = FALSE;
   self.globaldef169 = globaldef446 (globaldef1715);

};
float () FacingIdeal;

// function FacingIdeal
// function number 193 begins at statement 3608
/*
 * OP_LOAD_F	28	119	3830
 * OP_LOAD_F	28	191	3831
 * OP_SUB_F	3830	3831	3832
 * OP_STORE_V	3832	4	0
 * OP_CALL1	3179	0	0
 * OP_STORE_F	1	3829	0
 * OP_GT	3829	2598	3833
 * OP_LT	3829	3834	3835
 * OP_AND	3833	3835	3836
 * OP_IFNOT	3836	2	0
 * OP_RETURN	213	0	0
 * OP_RETURN	214	0	0
 * OP_DONE	0	0	0
 */
float () FacingIdeal = {

   local float globaldef1724;

   globaldef1724 = globaldef1522 ((self.globaldef97 - self.globaldef169));
   if ( ((globaldef1724 > globaldef1431) && (globaldef1724 < globaldef1725)) ) {

      return ( FALSE );

   }
   return ( TRUE );

};
float globaldef1725 /* = 315.000 */;
float () WizardCheckAttack;
float () DogCheckAttack;
float /* Warning: Could not determine return type */ () CheckAnyAttack;

// function CheckAnyAttack
// function number 194 begins at statement 3621
/*
 * OP_NOT_F	3191	0	3840
 * OP_IFNOT	3840	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	28	129	3841
 * OP_EQ_S	3841	3704	3842
 * OP_IFNOT	3842	3	0
 * OP_CALL0	3370	0	0
 * OP_RETURN	1	0	0
 * OP_LOAD_S	28	129	3843
 * OP_EQ_S	3843	3532	3844
 * OP_IFNOT	3844	3	0
 * OP_CALL0	3458	0	0
 * OP_RETURN	1	0	0
 * OP_LOAD_S	28	129	3845
 * OP_EQ_S	3845	3661	3846
 * OP_IFNOT	3846	3	0
 * OP_CALL0	3414	0	0
 * OP_RETURN	1	0	0
 * OP_LOAD_S	28	129	3847
 * OP_EQ_S	3847	3665	3848
 * OP_IFNOT	3848	3	0
 * OP_CALL0	3187	0	0
 * OP_RETURN	1	0	0
 * OP_LOAD_S	28	129	3849
 * OP_EQ_S	3849	3677	3850
 * OP_IFNOT	3850	3	0
 * OP_CALL0	3838	0	0
 * OP_RETURN	1	0	0
 * OP_LOAD_S	28	129	3851
 * OP_EQ_S	3851	3669	3852
 * OP_IFNOT	3852	3	0
 * OP_CALL0	3837	0	0
 * OP_RETURN	1	0	0
 * OP_CALL0	3221	0	0
 * OP_RETURN	1	0	0
 * OP_DONE	0	0	0
 */
float /* Warning: Could not determine return type */ () CheckAnyAttack = {

   if ( !globaldef1534 ) {

      return ;

   }
   if ( (self.classname == "monster_army") ) {

      return ( globaldef1577 () );

   }
   if ( (self.classname == globaldef1625) ) {

      return ( globaldef1600 () );

   }
   if ( (self.classname == "monster_shambler") ) {

      return ( globaldef1589 () );

   }
   if ( (self.classname == "monster_demon1") ) {

      return ( globaldef1530 () );

   }
   if ( (self.classname == "monster_dog") ) {

      return ( globaldef1727 () );

   }
   if ( (self.classname == "monster_wizard") ) {

      return ( globaldef1726 () );

   }
   return ( globaldef1540 () );

};

void () ai_run_melee;

// function ai_run_melee
// function number 195 begins at statement 3657
/*
 * OP_ADDRESS	28	191	3854
 * OP_STOREP_F	3194	3854	0
 * OP_CALL0	494	0	0
 * OP_CALL0	3828	0	0
 * OP_IFNOT	1	5	0
 * OP_LOAD_FNC	28	365	3855
 * OP_CALL0	3855	0	0
 * OP_ADDRESS	28	372	3856
 * OP_STOREP_F	373	3856	0
 * OP_DONE	0	0	0
 */

void () ai_run_melee = {

   self.globaldef169 = globaldef1537;
   globaldef477 ();
   if ( globaldef1723 () ) {

      self.globaldef348 ();
      self.globaldef355 = AS_STRAIGHT;

   }

};

void () ai_run_missile;

// function ai_run_missile
// function number 196 begins at statement 3667
/*
 * OP_ADDRESS	28	191	3858
 * OP_STOREP_F	3194	3858	0
 * OP_CALL0	494	0	0
 * OP_CALL0	3828	0	0
 * OP_IFNOT	1	5	0
 * OP_LOAD_FNC	28	364	3859
 * OP_CALL0	3859	0	0
 * OP_ADDRESS	28	372	3860
 * OP_STOREP_F	373	3860	0
 * OP_DONE	0	0	0
 */

void () ai_run_missile = {

   self.globaldef169 = globaldef1537;
   globaldef477 ();
   if ( globaldef1723 () ) {

      self.globaldef347 ();
      self.globaldef355 = AS_STRAIGHT;

   }

};

void () ai_run_slide;

// function ai_run_slide
// function number 197 begins at statement 3677
/*
 * OP_ADDRESS	28	191	3863
 * OP_STOREP_F	3194	3863	0
 * OP_CALL0	494	0	0
 * OP_LOAD_F	28	370	3864
 * OP_IFNOT	3864	3	0
 * OP_STORE_F	2658	3862	0
 * OP_GOTO	2	0	0
 * OP_STORE_F	3865	3862	0
 * OP_LOAD_F	28	191	3866
 * OP_ADD_F	3866	3862	3867
 * OP_STORE_V	3867	4	0
 * OP_STORE_V	346	7	0
 * OP_CALL2	480	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	370	3868
 * OP_LOAD_F	28	370	3869
 * OP_SUB_F	214	3869	3870
 * OP_STOREP_F	3870	3868	0
 * OP_LOAD_F	28	191	3871
 * OP_SUB_F	3871	3862	3872
 * OP_STORE_V	3872	4	0
 * OP_STORE_V	346	7	0
 * OP_CALL2	480	0	0
 * OP_DONE	0	0	0
 */

void () ai_run_slide = {

   local float globaldef1732;

   self.globaldef169 = globaldef1537;
   globaldef477 ();
   if ( self.globaldef353 ) {

      globaldef1732 = globaldef1434;

   } else {

      globaldef1732 = globaldef1733;

   }
   if ( globaldef463 ((self.globaldef169 + globaldef1732),movedist) ) {

      return ;

   }
   self.globaldef353 = (TRUE - self.globaldef353);
   globaldef463 ((self.globaldef169 - globaldef1732),movedist);

};
float globaldef1733 /* = -90.000 */;

void (float globaldef1735) ai_run;

// function ai_run
// function number 198 begins at statement 3702
/*
 * OP_STORE_F	3874	346	0
 * OP_LOAD_ENT	28	181	3883
 * OP_LOAD_F	3883	152	3884
 * OP_LE	3884	213	3885
 * OP_IFNOT	3885	20	0
 * OP_ADDRESS	28	181	3886
 * OP_STOREP_ENT	30	3886	0
 * OP_LOAD_ENT	28	368	3887
 * OP_LOAD_F	3887	152	3888
 * OP_GT	3888	213	3889
 * OP_IFNOT	3889	6	0
 * OP_ADDRESS	28	181	3890
 * OP_LOAD_ENT	28	368	3891
 * OP_STOREP_ENT	3891	3890	0
 * OP_CALL0	3634	0	0
 * OP_GOTO	9	0	0
 * OP_LOAD_ENT	28	423	3892
 * OP_IFNOT	3892	4	0
 * OP_LOAD_FNC	28	362	3893
 * OP_CALL0	3893	0	0
 * OP_GOTO	3	0	0
 * OP_LOAD_FNC	28	361	3894
 * OP_CALL0	3894	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	393	3895
 * OP_ADD_F	31	214	3896
 * OP_STOREP_F	3896	3895	0
 * OP_LOAD_ENT	28	181	3897
 * OP_STORE_V	3897	4	0
 * OP_CALL1	3169	0	0
 * OP_STORE_F	1	3191	0
 * OP_IFNOT	3191	4	0
 * OP_ADDRESS	28	371	3898
 * OP_ADD_F	31	230	3899
 * OP_STOREP_F	3899	3898	0
 * OP_OR	36	35	3900
 * OP_LOAD_F	28	371	3901
 * OP_LT	3901	31	3902
 * OP_AND	3900	3902	3903
 * OP_IFNOT	3903	4	0
 * OP_CALL0	3734	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_ENT	28	181	3904
 * OP_STORE_V	3904	4	0
 * OP_CALL1	3285	0	0
 * OP_STORE_F	1	3192	0
 * OP_LOAD_ENT	28	181	3905
 * OP_STORE_V	3905	4	0
 * OP_CALL1	3286	0	0
 * OP_STORE_F	1	3193	0
 * OP_LOAD_ENT	28	181	3906
 * OP_LOAD_V	3906	105	3907
 * OP_LOAD_V	28	105	3910
 * OP_SUB_V	3907	3910	3913
 * OP_STORE_V	3913	4	0
 * OP_CALL1	463	0	0
 * OP_STORE_F	1	3194	0
 * OP_LOAD_F	28	372	3916
 * OP_EQ_F	3916	376	3917
 * OP_IFNOT	3917	3	0
 * OP_CALL0	3857	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	372	3918
 * OP_EQ_F	3918	375	3919
 * OP_IFNOT	3919	3	0
 * OP_CALL0	3853	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	3839	0	0
 * OP_IFNOT	1	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	372	3920
 * OP_EQ_F	3920	374	3921
 * OP_IFNOT	3921	3	0
 * OP_CALL0	3861	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	3874	4	0
 * OP_CALL1	504	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef1735) ai_run = {

   local vector globaldef1736;
   local float globaldef1740;
   local float globaldef1741;
   local float globaldef1742;
   local float globaldef1743;
   local float globaldef1744;

   movedist = globaldef1735;
   if ( (self.enemy.globaldef130 <= FALSE) ) {

      self.enemy = world;
      if ( (self.globaldef351.globaldef130 > FALSE) ) {

         self.enemy = self.globaldef351;
         globaldef1654 ();

      } else {

         if ( self.globaldef406 ) {

            self.globaldef345 ();

         } else {

            self.globaldef344 ();

         }
         return ;

      }

   }
   self.globaldef376 = (time + TRUE);
   globaldef1534 = visible (self.enemy);
   if ( globaldef1534 ) {

      self.globaldef354 = (time + MOVETYPE_FLY);

   }
   if ( ((coop || deathmatch) && (self.globaldef354 < time)) ) {

      if ( globaldef1691 () ) {

         return ;

      }

   }
   globaldef1535 = globaldef1555 (self.enemy);
   globaldef1536 = globaldef1556 (self.enemy);
   globaldef1537 = globaldef446 ((self.enemy.origin - self.origin));
   if ( (self.globaldef355 == AS_MISSILE) ) {

      globaldef1730 ();
      return ;

   }
   if ( (self.globaldef355 == AS_MELEE) ) {

      globaldef1729 ();
      return ;

   }
   if ( globaldef1728 () ) {

      return ;

   }
   if ( (self.globaldef355 == AS_SLIDING) ) {

      globaldef1731 ();
      return ;

   }
   globaldef487 (globaldef1735);

};
