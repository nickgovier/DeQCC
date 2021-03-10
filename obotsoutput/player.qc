float globaldef3008 /* = -40.000 */;
string globaldef3009 /* = " tells team mate " */;
string globaldef3010 /* = " to spread around\n" */;
string globaldef3011 /* = " want to play basketball with team mate " */;
string globaldef3012 /* = " 's head\n" */;
string globaldef3013 /* = " wanted to axe a few questions from team mate " */;
string globaldef3014 /* = " tried to shave team mate " */;
string globaldef3015 /* = " found the trigger when team mate " */;
string globaldef3016 /* = " looked for a bullet in the barrel\n" */;
string globaldef3017 /* = " tried to clean the ears of team mate " */;
string globaldef3018 /* = " with a gun\n" */;
string globaldef3019 /* = " crusified team mate " */;
string globaldef3020 /* = " sends pineapple to team mate " */;
string globaldef3021 /* = " by airmail\n" */;
float globaldef3022 /* = 0.160 */;
string globaldef3023 /* = " teaches team mate " */;
string globaldef3024 /* = " to fly\n" */;
string globaldef3025 /* = " checks if team mate " */;
string globaldef3026 /* = " is invulnerable\n" */;
string globaldef3027 /* = " settled an argument with team mate " */;
string globaldef3028 /* = " didn't recognize team mate " */;
float globaldef3029 /* = 0.830 */;
string globaldef3030 /* = " turned team mate " */;
string globaldef3031 /* = " into a backpack\n" */;
string globaldef3032 /* = " played catch the rocket with team mate " */;
string globaldef3033 /* = " brings shocking news to team mate " */;
string globaldef3034 /* = " tries to recharge team mate " */;
string globaldef3035 /* = " was ax-murdered by " */;
string globaldef3036 /* = " chewed on " */;
string globaldef3037 /* = "'s boomstick\n" */;
string globaldef3038 /* = " ate 2 loads of " */;
string globaldef3039 /* = "'s buckshot\n" */;
string globaldef3040 /* = " was nailed by " */;
string globaldef3041 /* = " was punctured by " */;
string globaldef3042 /* = " eats " */;
string globaldef3043 /* = "'s pineapple\n" */;
string globaldef3044 /* = " was butchered by " */;
string globaldef3045 /* = "'s grenade\n" */;
string globaldef3046 /* = " rides " */;
string globaldef3047 /* = "'s rocket\n" */;
string globaldef3048 /* = " was gibbed by " */;
string globaldef3049 /* = " accepts " */;
string globaldef3050 /* = "'s discharge\n" */;
string globaldef3051 /* = "'s shaft\n" */;
string globaldef3052 /* = " sleeps with the fishes\n" */;
string globaldef3053 /* = " sucks it down\n" */;
string globaldef3054 /* = " gulped a load of slime\n" */;
string globaldef3055 /* = " can't exist on slime alone\n" */;
float globaldef3056 /* = -15.000 */;
string globaldef3057 /* = " burst into flames\n" */;
string globaldef3058 /* = " turned into hot slag\n" */;
string globaldef3059 /* = " visits the Volcano God\n" */;
string globaldef3060 /* = " was shot by a Grunt\n" */;
string globaldef3061 /* = " was eviscerated by a Fiend\n" */;
string globaldef3062 /* = " was mauled by a Rottweiler\n" */;
string globaldef3063 /* = " was fried by a Dragon\n" */;
string globaldef3064 /* = " was blasted by an Enforcer\n" */;
string globaldef3065 /* = "monster_fish" */;
string globaldef3066 /* = " was fed to the Rotfish\n" */;
string globaldef3067 /* = " was slain by a Death Knight\n" */;
string globaldef3068 /* = " was slashed by a Knight\n" */;
string globaldef3069 /* = " was destroyed by an Ogre\n" */;
string globaldef3070 /* = "monster_oldone" */;
string globaldef3071 /* = " became one with Shub-Niggurath\n" */;
string globaldef3072 /* = " was exploded by a Vore\n" */;
string globaldef3073 /* = " was smashed by a Shambler\n" */;
string globaldef3074 /* = " was slimed by a Spawn\n" */;
string globaldef3075 /* = " was vomited on by a Vomitus\n" */;
string globaldef3076 /* = " was scragged by a Scrag\n" */;
string globaldef3077 /* = " joins the Zombies\n" */;
string globaldef3078 /* = "explo_box" */;
string globaldef3079 /* = " blew up\n" */;
string globaldef3080 /* = " was squished\n" */;
string globaldef3081 /* = " fell to his death\n" */;
string globaldef3082 /* = "trap_shooter" */;
string globaldef3083 /* = "trap_spikeshooter" */;
string globaldef3084 /* = " was spiked\n" */;
string globaldef3085 /* = "fireball" */;
string globaldef3086 /* = " ate a lavaball\n" */;
string globaldef3087 /* = " tried to leave\n" */;
string globaldef3088 /* = " died\n" */;

void () bubble_bob;

// function player_stand1
// function number 407 begins at statement 13440
/*
 * OP_STATE	6892	8212	0
 * OP_ADDRESS	28	156	9426
 * OP_STOREP_F	213	9426	0
 * OP_LOAD_F	28	114	9427
 * OP_LOAD_F	28	115	9428
 * OP_OR	9427	9428	9429
 * OP_IFNOT	9429	5	0
 * OP_ADDRESS	28	377	9430
 * OP_STOREP_F	213	9430	0
 * OP_CALL0	5354	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	154	9431
 * OP_EQ_F	9431	253	9432
 * OP_IFNOT	9432	11	0
 * OP_LOAD_F	28	377	9433
 * OP_GE	9433	791	9434
 * OP_IFNOT	9434	3	0
 * OP_ADDRESS	28	377	9435
 * OP_STOREP_F	213	9435	0
 * OP_ADDRESS	28	131	9436
 * OP_LOAD_F	28	377	9437
 * OP_ADD_F	6892	9437	9438
 * OP_STOREP_F	9438	9436	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	28	377	9439
 * OP_GE	9439	230	9440
 * OP_IFNOT	9440	3	0
 * OP_ADDRESS	28	377	9441
 * OP_STOREP_F	213	9441	0
 * OP_ADDRESS	28	131	9442
 * OP_LOAD_F	28	377	9443
 * OP_ADD_F	791	9443	9444
 * OP_STOREP_F	9444	9442	0
 * OP_ADDRESS	28	377	9445
 * OP_LOAD_F	28	377	9446
 * OP_ADD_F	9446	214	9447
 * OP_STOREP_F	9447	9445	0
 * OP_DONE	0	0	0
 */

void () player_stand1 = [ 17.000, globaldef2862 ] {

   self.globaldef134 = FALSE;
   if ( (self.globaldef92 || self.globaldef93) ) {

      self.globaldef360 = FALSE;
      globaldef2008 ();
      return ;

   }
   if ( (self.globaldef132 == IT_AXE) ) {

      if ( (self.globaldef360 >= globaldef774) ) {

         self.globaldef360 = FALSE;

      }
      self.globaldef109 = (globaldef2519 + self.globaldef360);

   } else {

      if ( (self.globaldef360 >= MOVETYPE_FLY) ) {

         self.globaldef360 = FALSE;

      }
      self.globaldef109 = (globaldef774 + self.globaldef360);

   }
   self.globaldef360 = (self.globaldef360 + TRUE);

};

// function player_run
// function number 408 begins at statement 13478
/*
 * OP_STATE	231	5354	0
 * OP_ADDRESS	28	156	9448
 * OP_STOREP_F	213	9448	0
 * OP_LOAD_F	28	114	9449
 * OP_NOT_F	9449	0	9450
 * OP_LOAD_F	28	115	9451
 * OP_NOT_F	9451	0	9452
 * OP_AND	9450	9452	9453
 * OP_IFNOT	9453	5	0
 * OP_ADDRESS	28	377	9454
 * OP_STOREP_F	213	9454	0
 * OP_CALL0	8212	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	154	9455
 * OP_EQ_F	9455	253	9456
 * OP_IFNOT	9456	11	0
 * OP_LOAD_F	28	377	9457
 * OP_EQ_F	9457	231	9458
 * OP_IFNOT	9458	3	0
 * OP_ADDRESS	28	377	9459
 * OP_STOREP_F	213	9459	0
 * OP_ADDRESS	28	131	9460
 * OP_LOAD_F	28	377	9461
 * OP_ADD_F	213	9461	9462
 * OP_STOREP_F	9462	9460	0
 * OP_GOTO	11	0	0
 * OP_LOAD_F	28	377	9463
 * OP_EQ_F	9463	231	9464
 * OP_IFNOT	9464	3	0
 * OP_ADDRESS	28	377	9465
 * OP_STOREP_F	213	9465	0
 * OP_ADDRESS	28	131	9466
 * OP_LOAD_F	28	131	9467
 * OP_LOAD_F	28	377	9468
 * OP_ADD_F	9467	9468	9469
 * OP_STOREP_F	9469	9466	0
 * OP_ADDRESS	28	377	9470
 * OP_LOAD_F	28	377	9471
 * OP_ADD_F	9471	214	9472
 * OP_STOREP_F	9472	9470	0
 * OP_DONE	0	0	0
 */

void () player_run = [ 6.000, globaldef2008 ] {

   self.globaldef134 = FALSE;
   if ( (!self.globaldef92 && !self.globaldef93) ) {

      self.globaldef360 = FALSE;
      globaldef2862 ();
      return ;

   }
   if ( (self.globaldef132 == IT_AXE) ) {

      if ( (self.globaldef360 == MOVETYPE_TOSS) ) {

         self.globaldef360 = FALSE;

      }
      self.globaldef109 = (FALSE + self.globaldef360);

   } else {

      if ( (self.globaldef360 == MOVETYPE_TOSS) ) {

         self.globaldef360 = FALSE;

      }
      self.globaldef109 = (self.globaldef109 + self.globaldef360);

   }
   self.globaldef360 = (self.globaldef360 + TRUE);

};

// function player_shot1
// function number 409 begins at statement 13519
/*
 * OP_STATE	9473	9474	0
 * OP_ADDRESS	28	156	9475
 * OP_STOREP_F	214	9475	0
 * OP_ADDRESS	28	133	9476
 * OP_LOAD_F	28	133	9477
 * OP_BITOR	9477	339	9478
 * OP_STOREP_F	9478	9476	0
 * OP_DONE	0	0	0
 */

void () player_shot1 = [ 113.000, globaldef3091 ] {

   self.globaldef134 = TRUE;
   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);

};
float globaldef3090 /* = 113.000 */;

void () player_shot2;

// function player_shot2
// function number 410 begins at statement 13527
/*
 * OP_STATE	9479	9480	0
 * OP_ADDRESS	28	156	9481
 * OP_STOREP_F	216	9481	0
 * OP_DONE	0	0	0
 */

void () player_shot2 = [ 114.000, globaldef3093 ] {

   self.globaldef134 = FL_SWIM;

};
float globaldef3092 /* = 114.000 */;

void () player_shot3;

// function player_shot3
// function number 411 begins at statement 13531
/*
 * OP_STATE	9482	9483	0
 * OP_ADDRESS	28	156	9484
 * OP_STOREP_F	228	9484	0
 * OP_DONE	0	0	0
 */

void () player_shot3 = [ 115.000, globaldef3095 ] {

   self.globaldef134 = MOVETYPE_WALK;

};
float globaldef3094 /* = 115.000 */;

void () player_shot4;

// function player_shot4
// function number 412 begins at statement 13535
/*
 * OP_STATE	9485	9486	0
 * OP_ADDRESS	28	156	9487
 * OP_STOREP_F	229	9487	0
 * OP_DONE	0	0	0
 */

void () player_shot4 = [ 116.000, globaldef3097 ] {

   self.globaldef134 = MOVETYPE_STEP;

};
float globaldef3096 /* = 116.000 */;

void () player_shot5;

// function player_shot5
// function number 413 begins at statement 13539
/*
 * OP_STATE	9488	9489	0
 * OP_ADDRESS	28	156	9490
 * OP_STOREP_F	230	9490	0
 * OP_DONE	0	0	0
 */

void () player_shot5 = [ 117.000, globaldef3099 ] {

   self.globaldef134 = MOVETYPE_FLY;

};
float globaldef3098 /* = 117.000 */;

void () player_shot6;

// function player_shot6
// function number 414 begins at statement 13543
/*
 * OP_STATE	9491	5354	0
 * OP_ADDRESS	28	156	9492
 * OP_STOREP_F	231	9492	0
 * OP_DONE	0	0	0
 */

void () player_shot6 = [ 118.000, globaldef2008 ] {

   self.globaldef134 = MOVETYPE_TOSS;

};
float globaldef3100 /* = 118.000 */;

// function player_axe1
// function number 415 begins at statement 13547
/*
 * OP_STATE	9493	9494	0
 * OP_ADDRESS	28	156	9495
 * OP_STOREP_F	214	9495	0
 * OP_DONE	0	0	0
 */

void () player_axe1 = [ 119.000, globaldef3102 ] {

   self.globaldef134 = TRUE;

};
float globaldef3101 /* = 119.000 */;

void () player_axe2;

// function player_axe2
// function number 416 begins at statement 13551
/*
 * OP_STATE	3584	9496	0
 * OP_ADDRESS	28	156	9497
 * OP_STOREP_F	216	9497	0
 * OP_DONE	0	0	0
 */

void () player_axe2 = [ 120.000, globaldef3103 ] {

   self.globaldef134 = FL_SWIM;

};

void () player_axe3;

// function player_axe3
// function number 417 begins at statement 13555
/*
 * OP_STATE	9498	9499	0
 * OP_ADDRESS	28	156	9500
 * OP_STOREP_F	228	9500	0
 * OP_CALL0	5379	0	0
 * OP_DONE	0	0	0
 */

void () player_axe3 = [ 121.000, globaldef3105 ] {

   self.globaldef134 = MOVETYPE_WALK;
   globaldef2028 ();

};
float globaldef3104 /* = 121.000 */;

void () player_axe4;

// function player_axe4
// function number 418 begins at statement 13560
/*
 * OP_STATE	9501	5354	0
 * OP_ADDRESS	28	156	9502
 * OP_STOREP_F	229	9502	0
 * OP_DONE	0	0	0
 */

void () player_axe4 = [ 122.000, globaldef2008 ] {

   self.globaldef134 = MOVETYPE_STEP;

};
float globaldef3106 /* = 122.000 */;

// function player_axeb1
// function number 419 begins at statement 13564
/*
 * OP_STATE	9503	9504	0
 * OP_ADDRESS	28	156	9505
 * OP_STOREP_F	230	9505	0
 * OP_DONE	0	0	0
 */

void () player_axeb1 = [ 125.000, globaldef3108 ] {

   self.globaldef134 = MOVETYPE_FLY;

};
float globaldef3107 /* = 125.000 */;

void () player_axeb2;

// function player_axeb2
// function number 420 begins at statement 13568
/*
 * OP_STATE	9506	9507	0
 * OP_ADDRESS	28	156	9508
 * OP_STOREP_F	231	9508	0
 * OP_DONE	0	0	0
 */

void () player_axeb2 = [ 126.000, globaldef3110 ] {

   self.globaldef134 = MOVETYPE_TOSS;

};
float globaldef3109 /* = 126.000 */;

void () player_axeb3;

// function player_axeb3
// function number 421 begins at statement 13572
/*
 * OP_STATE	9509	9510	0
 * OP_ADDRESS	28	156	9511
 * OP_STOREP_F	232	9511	0
 * OP_CALL0	5379	0	0
 * OP_DONE	0	0	0
 */

void () player_axeb3 = [ 127.000, globaldef3112 ] {

   self.globaldef134 = MOVETYPE_PUSH;
   globaldef2028 ();

};
float globaldef3111 /* = 127.000 */;

void () player_axeb4;

// function player_axeb4
// function number 422 begins at statement 13577
/*
 * OP_STATE	221	5354	0
 * OP_ADDRESS	28	156	9512
 * OP_STOREP_F	217	9512	0
 * OP_DONE	0	0	0
 */

void () player_axeb4 = [ 128.000, globaldef2008 ] {

   self.globaldef134 = FL_CLIENT;

};

// function player_axec1
// function number 423 begins at statement 13581
/*
 * OP_STATE	9513	9514	0
 * OP_ADDRESS	28	156	9515
 * OP_STOREP_F	214	9515	0
 * OP_DONE	0	0	0
 */

void () player_axec1 = [ 131.000, globaldef3114 ] {

   self.globaldef134 = TRUE;

};
float globaldef3113 /* = 131.000 */;

void () player_axec2;

// function player_axec2
// function number 424 begins at statement 13585
/*
 * OP_STATE	9516	9517	0
 * OP_ADDRESS	28	156	9518
 * OP_STOREP_F	216	9518	0
 * OP_DONE	0	0	0
 */

void () player_axec2 = [ 132.000, globaldef3116 ] {

   self.globaldef134 = FL_SWIM;

};
float globaldef3115 /* = 132.000 */;

void () player_axec3;

// function player_axec3
// function number 425 begins at statement 13589
/*
 * OP_STATE	9519	9520	0
 * OP_ADDRESS	28	156	9521
 * OP_STOREP_F	228	9521	0
 * OP_CALL0	5379	0	0
 * OP_DONE	0	0	0
 */

void () player_axec3 = [ 133.000, globaldef3118 ] {

   self.globaldef134 = MOVETYPE_WALK;
   globaldef2028 ();

};
float globaldef3117 /* = 133.000 */;

void () player_axec4;

// function player_axec4
// function number 426 begins at statement 13594
/*
 * OP_STATE	9522	5354	0
 * OP_ADDRESS	28	156	9523
 * OP_STOREP_F	229	9523	0
 * OP_DONE	0	0	0
 */

void () player_axec4 = [ 134.000, globaldef2008 ] {

   self.globaldef134 = MOVETYPE_STEP;

};
float globaldef3119 /* = 134.000 */;

// function player_axed1
// function number 427 begins at statement 13598
/*
 * OP_STATE	9524	9525	0
 * OP_ADDRESS	28	156	9526
 * OP_STOREP_F	230	9526	0
 * OP_DONE	0	0	0
 */

void () player_axed1 = [ 137.000, globaldef3121 ] {

   self.globaldef134 = MOVETYPE_FLY;

};
float globaldef3120 /* = 137.000 */;

void () player_axed2;

// function player_axed2
// function number 428 begins at statement 13602
/*
 * OP_STATE	9527	9528	0
 * OP_ADDRESS	28	156	9529
 * OP_STOREP_F	231	9529	0
 * OP_DONE	0	0	0
 */

void () player_axed2 = [ 138.000, globaldef3123 ] {

   self.globaldef134 = MOVETYPE_TOSS;

};
float globaldef3122 /* = 138.000 */;

void () player_axed3;

// function player_axed3
// function number 429 begins at statement 13606
/*
 * OP_STATE	9530	9531	0
 * OP_ADDRESS	28	156	9532
 * OP_STOREP_F	232	9532	0
 * OP_CALL0	5379	0	0
 * OP_DONE	0	0	0
 */

void () player_axed3 = [ 139.000, globaldef3125 ] {

   self.globaldef134 = MOVETYPE_PUSH;
   globaldef2028 ();

};
float globaldef3124 /* = 139.000 */;

void () player_axed4;

// function player_axed4
// function number 430 begins at statement 13611
/*
 * OP_STATE	9533	5354	0
 * OP_ADDRESS	28	156	9534
 * OP_STOREP_F	217	9534	0
 * OP_DONE	0	0	0
 */

void () player_axed4 = [ 140.000, globaldef2008 ] {

   self.globaldef134 = FL_CLIENT;

};
float globaldef3126 /* = 140.000 */;

// function player_nail1
// function number 431 begins at statement 13615
/*
 * OP_STATE	8111	9535	0
 * OP_ADDRESS	28	133	9536
 * OP_LOAD_F	28	133	9537
 * OP_BITOR	9537	339	9538
 * OP_STOREP_F	9538	9536	0
 * OP_LOAD_F	28	170	9539
 * OP_NOT_F	9539	0	9540
 * OP_IFNOT	9540	3	0
 * OP_CALL0	5354	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	156	9541
 * OP_LOAD_F	28	156	9542
 * OP_ADD_F	9542	214	9543
 * OP_STOREP_F	9543	9541	0
 * OP_LOAD_F	28	156	9544
 * OP_EQ_F	9544	234	9545
 * OP_IFNOT	9545	3	0
 * OP_ADDRESS	28	156	9546
 * OP_STOREP_F	214	9546	0
 * OP_CALL0	5356	0	0
 * OP_STORE_V	229	4	0
 * OP_CALL1	6065	0	0
 * OP_ADDRESS	28	378	9547
 * OP_ADD_F	31	3267	9548
 * OP_STOREP_F	9548	9547	0
 * OP_DONE	0	0	0
 */

void () player_nail1 = [ 103.000, globaldef3127 ] {

   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);
   if ( !self.globaldef148 ) {

      globaldef2008 ();
      return ;

   }
   self.globaldef134 = (self.globaldef134 + TRUE);
   if ( (self.globaldef134 == MOVETYPE_FLYMISSILE) ) {

      self.globaldef134 = TRUE;

   }
   globaldef2010 ();
   globaldef2209 (MOVETYPE_STEP);
   self.attack_finished = (time + globaldef1553);

};

void () player_nail2;

// function player_nail2
// function number 432 begins at statement 13641
/*
 * OP_STATE	8114	6263	0
 * OP_ADDRESS	28	133	9549
 * OP_LOAD_F	28	133	9550
 * OP_BITOR	9550	339	9551
 * OP_STOREP_F	9551	9549	0
 * OP_LOAD_F	28	170	9552
 * OP_NOT_F	9552	0	9553
 * OP_IFNOT	9553	3	0
 * OP_CALL0	5354	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	156	9554
 * OP_LOAD_F	28	156	9555
 * OP_ADD_F	9555	214	9556
 * OP_STOREP_F	9556	9554	0
 * OP_LOAD_F	28	156	9557
 * OP_EQ_F	9557	234	9558
 * OP_IFNOT	9558	3	0
 * OP_ADDRESS	28	156	9559
 * OP_STOREP_F	214	9559	0
 * OP_CALL0	5356	0	0
 * OP_STORE_V	279	4	0
 * OP_CALL1	6065	0	0
 * OP_ADDRESS	28	378	9560
 * OP_ADD_F	31	3267	9561
 * OP_STOREP_F	9561	9560	0
 * OP_DONE	0	0	0
 */

void () player_nail2 = [ 104.000, globaldef2237 ] {

   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);
   if ( !self.globaldef148 ) {

      globaldef2008 ();
      return ;

   }
   self.globaldef134 = (self.globaldef134 + TRUE);
   if ( (self.globaldef134 == MOVETYPE_FLYMISSILE) ) {

      self.globaldef134 = TRUE;

   }
   globaldef2010 ();
   globaldef2209 (CONTENT_SLIME);
   self.attack_finished = (time + globaldef1553);

};

// function player_light1
// function number 433 begins at statement 13667
/*
 * OP_STATE	9562	9563	0
 * OP_ADDRESS	28	133	9564
 * OP_LOAD_F	28	133	9565
 * OP_BITOR	9565	339	9566
 * OP_STOREP_F	9566	9564	0
 * OP_LOAD_F	28	170	9567
 * OP_NOT_F	9567	0	9568
 * OP_IFNOT	9568	3	0
 * OP_CALL0	5354	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	156	9569
 * OP_LOAD_F	28	156	9570
 * OP_ADD_F	9570	214	9571
 * OP_STOREP_F	9571	9569	0
 * OP_LOAD_F	28	156	9572
 * OP_EQ_F	9572	230	9573
 * OP_IFNOT	9573	3	0
 * OP_ADDRESS	28	156	9574
 * OP_STOREP_F	214	9574	0
 * OP_CALL0	5356	0	0
 * OP_CALL0	5864	0	0
 * OP_ADDRESS	28	378	9575
 * OP_ADD_F	31	3267	9576
 * OP_STOREP_F	9576	9575	0
 * OP_DONE	0	0	0
 */

void () player_light1 = [ 105.000, globaldef3129 ] {

   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);
   if ( !self.globaldef148 ) {

      globaldef2008 ();
      return ;

   }
   self.globaldef134 = (self.globaldef134 + TRUE);
   if ( (self.globaldef134 == MOVETYPE_FLY) ) {

      self.globaldef134 = TRUE;

   }
   globaldef2010 ();
   globaldef2171 ();
   self.attack_finished = (time + globaldef1553);

};
float globaldef3128 /* = 105.000 */;

void () player_light2;

// function player_light2
// function number 434 begins at statement 13692
/*
 * OP_STATE	9577	6264	0
 * OP_ADDRESS	28	133	9578
 * OP_LOAD_F	28	133	9579
 * OP_BITOR	9579	339	9580
 * OP_STOREP_F	9580	9578	0
 * OP_LOAD_F	28	170	9581
 * OP_NOT_F	9581	0	9582
 * OP_IFNOT	9582	3	0
 * OP_CALL0	5354	0	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	156	9583
 * OP_LOAD_F	28	156	9584
 * OP_ADD_F	9584	214	9585
 * OP_STOREP_F	9585	9583	0
 * OP_LOAD_F	28	156	9586
 * OP_EQ_F	9586	230	9587
 * OP_IFNOT	9587	3	0
 * OP_ADDRESS	28	156	9588
 * OP_STOREP_F	214	9588	0
 * OP_CALL0	5356	0	0
 * OP_CALL0	5864	0	0
 * OP_ADDRESS	28	378	9589
 * OP_ADD_F	31	3267	9590
 * OP_STOREP_F	9590	9589	0
 * OP_DONE	0	0	0
 */

void () player_light2 = [ 106.000, globaldef2238 ] {

   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);
   if ( !self.globaldef148 ) {

      globaldef2008 ();
      return ;

   }
   self.globaldef134 = (self.globaldef134 + TRUE);
   if ( (self.globaldef134 == MOVETYPE_FLY) ) {

      self.globaldef134 = TRUE;

   }
   globaldef2010 ();
   globaldef2171 ();
   self.attack_finished = (time + globaldef1553);

};
float globaldef3130 /* = 106.000 */;

// function player_rocket1
// function number 435 begins at statement 13717
/*
 * OP_STATE	9591	9592	0
 * OP_ADDRESS	28	156	9593
 * OP_STOREP_F	214	9593	0
 * OP_ADDRESS	28	133	9594
 * OP_LOAD_F	28	133	9595
 * OP_BITOR	9595	339	9596
 * OP_STOREP_F	9596	9594	0
 * OP_DONE	0	0	0
 */

void () player_rocket1 = [ 107.000, globaldef3132 ] {

   self.globaldef134 = TRUE;
   self.globaldef111 = (self.globaldef111 | EF_MUZZLEFLASH);

};
float globaldef3131 /* = 107.000 */;

void () player_rocket2;

// function player_rocket2
// function number 436 begins at statement 13725
/*
 * OP_STATE	9597	9598	0
 * OP_ADDRESS	28	156	9599
 * OP_STOREP_F	216	9599	0
 * OP_DONE	0	0	0
 */

void () player_rocket2 = [ 108.000, globaldef3134 ] {

   self.globaldef134 = FL_SWIM;

};
float globaldef3133 /* = 108.000 */;

void () player_rocket3;

// function player_rocket3
// function number 437 begins at statement 13729
/*
 * OP_STATE	9600	9601	0
 * OP_ADDRESS	28	156	9602
 * OP_STOREP_F	228	9602	0
 * OP_DONE	0	0	0
 */

void () player_rocket3 = [ 109.000, globaldef3136 ] {

   self.globaldef134 = MOVETYPE_WALK;

};
float globaldef3135 /* = 109.000 */;

void () player_rocket4;

// function player_rocket4
// function number 438 begins at statement 13733
/*
 * OP_STATE	9603	9604	0
 * OP_ADDRESS	28	156	9605
 * OP_STOREP_F	229	9605	0
 * OP_DONE	0	0	0
 */

void () player_rocket4 = [ 110.000, globaldef3138 ] {

   self.globaldef134 = MOVETYPE_STEP;

};
float globaldef3137 /* = 110.000 */;

void () player_rocket5;

// function player_rocket5
// function number 439 begins at statement 13737
/*
 * OP_STATE	2224	9606	0
 * OP_ADDRESS	28	156	9607
 * OP_STOREP_F	230	9607	0
 * OP_DONE	0	0	0
 */

void () player_rocket5 = [ 111.000, globaldef3139 ] {

   self.globaldef134 = MOVETYPE_FLY;

};

void () player_rocket6;

// function player_rocket6
// function number 440 begins at statement 13741
/*
 * OP_STATE	9608	5354	0
 * OP_ADDRESS	28	156	9609
 * OP_STOREP_F	231	9609	0
 * OP_DONE	0	0	0
 */

void () player_rocket6 = [ 112.000, globaldef2008 ] {

   self.globaldef134 = MOVETYPE_TOSS;

};
float globaldef3140 /* = 112.000 */;

void (float globaldef3172) DeathBubbles;

void () PainSound;

// function PainSound
// function number 441 begins at statement 13745
/*
 * OP_LOAD_F	28	152	9613
 * OP_LT	9613	213	9614
 * OP_IFNOT	9614	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	352	129	9615
 * OP_EQ_S	9615	9182	9616
 * OP_IFNOT	9616	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6653	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	190	9617
 * OP_EQ_F	9617	278	9618
 * OP_LOAD_F	28	189	9619
 * OP_EQ_F	9619	228	9620
 * OP_AND	9618	9620	9621
 * OP_IFNOT	9621	20	0
 * OP_STORE_V	214	4	0
 * OP_CALL1	9610	0	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	9622
 * OP_IFNOT	9622	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6648	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6649	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	190	9623
 * OP_EQ_F	9623	279	9624
 * OP_IFNOT	9624	18	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	9625
 * OP_IFNOT	9625	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6680	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6681	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	190	9626
 * OP_EQ_F	9626	280	9627
 * OP_IFNOT	9627	18	0
 * OP_CALL0	457	0	0
 * OP_GT	1	539	9628
 * OP_IFNOT	9628	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6680	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6681	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	379	9629
 * OP_GT	9629	31	9630
 * OP_IFNOT	9630	4	0
 * OP_ADDRESS	28	392	9631
 * OP_STOREP_F	213	9631	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	379	9632
 * OP_ADD_F	31	539	9633
 * OP_STOREP_F	9633	9632	0
 * OP_LOAD_F	28	392	9634
 * OP_EQ_F	9634	214	9635
 * OP_IFNOT	9635	10	0
 * OP_ADDRESS	28	392	9636
 * OP_STOREP_F	213	9636	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6674	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	230	9637
 * OP_ADD_F	9637	214	9638
 * OP_STORE_V	9638	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	9612	0
 * OP_ADDRESS	28	208	9639
 * OP_STOREP_S	3002	9639	0
 * OP_EQ_F	9612	214	9640
 * OP_IFNOT	9640	4	0
 * OP_ADDRESS	28	208	9641
 * OP_STOREP_S	6663	9641	0
 * OP_GOTO	23	0	0
 * OP_EQ_F	9612	216	9642
 * OP_IFNOT	9642	4	0
 * OP_ADDRESS	28	208	9643
 * OP_STOREP_S	6664	9643	0
 * OP_GOTO	18	0	0
 * OP_EQ_F	9612	228	9644
 * OP_IFNOT	9644	4	0
 * OP_ADDRESS	28	208	9645
 * OP_STOREP_S	6665	9645	0
 * OP_GOTO	13	0	0
 * OP_EQ_F	9612	229	9646
 * OP_IFNOT	9646	4	0
 * OP_ADDRESS	28	208	9647
 * OP_STOREP_S	6666	9647	0
 * OP_GOTO	8	0	0
 * OP_EQ_F	9612	230	9648
 * OP_IFNOT	9648	4	0
 * OP_ADDRESS	28	208	9649
 * OP_STOREP_S	6667	9649	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	208	9650
 * OP_STOREP_S	6668	9650	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	208	9651
 * OP_STORE_V	9651	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () PainSound = {

   local float globaldef3143;

   if ( (self.globaldef130 < FALSE) ) {

      return ;

   }
   if ( (damage_attacker.classname == globaldef2997) ) {

      sound (self,CHAN_VOICE,globaldef2398,TRUE,ATTN_NONE);
      return ;

   }
   if ( ((self.globaldef168 == CONTENT_WATER) && (self.globaldef167 == MOVETYPE_WALK)) ) {

      globaldef3141 (TRUE);
      if ( (globaldef440 () > globaldef522) ) {

         sound (self,CHAN_VOICE,globaldef2393,TRUE,ATTN_NORM);

      } else {

         sound (self,CHAN_VOICE,globaldef2394,TRUE,ATTN_NORM);

      }
      return ;

   }
   if ( (self.globaldef168 == CONTENT_SLIME) ) {

      if ( (globaldef440 () > globaldef522) ) {

         sound (self,CHAN_VOICE,globaldef2425,TRUE,ATTN_NORM);

      } else {

         sound (self,CHAN_VOICE,globaldef2426,TRUE,ATTN_NORM);

      }
      return ;

   }
   if ( (self.globaldef168 == CONTENT_LAVA) ) {

      if ( (globaldef440 () > globaldef522) ) {

         sound (self,CHAN_VOICE,globaldef2425,TRUE,ATTN_NORM);

      } else {

         sound (self,CHAN_VOICE,globaldef2426,TRUE,ATTN_NORM);

      }
      return ;

   }
   if ( (self.globaldef362 > time) ) {

      self.globaldef375 = FALSE;
      return ;

   }
   self.globaldef362 = (time + globaldef522);
   if ( (self.globaldef375 == TRUE) ) {

      self.globaldef375 = FALSE;
      sound (self,CHAN_VOICE,globaldef2419,TRUE,ATTN_NORM);
      return ;

   }
   globaldef3143 = globaldef466 (((globaldef440 () * MOVETYPE_FLY) + TRUE));
   self.noise = "";
   if ( (globaldef3143 == TRUE) ) {

      self.noise = globaldef2408;

   } else {

      if ( (globaldef3143 == FL_SWIM) ) {

         self.noise = globaldef2409;

      } else {

         if ( (globaldef3143 == MOVETYPE_WALK) ) {

            self.noise = globaldef2410;

         } else {

            if ( (globaldef3143 == MOVETYPE_STEP) ) {

               self.noise = globaldef2411;

            } else {

               if ( (globaldef3143 == MOVETYPE_FLY) ) {

                  self.noise = globaldef2412;

               } else {

                  self.noise = globaldef2413;

               }

            }

         }

      }

   }
   sound (self,CHAN_VOICE,self.noise,TRUE,ATTN_NORM);
   return ;

};

void () player_pain1;

// function player_pain1
// function number 442 begins at statement 13889
/*
 * OP_STATE	5878	9653	0
 * OP_CALL0	9611	0	0
 * OP_ADDRESS	28	156	9654
 * OP_STOREP_F	213	9654	0
 * OP_DONE	0	0	0
 */

void () player_pain1 = [ 35.000, globaldef3145 ] {

   globaldef3142 ();
   self.globaldef134 = FALSE;

};

void () player_pain2;

// function player_pain2
// function number 443 begins at statement 13894
/*
 * OP_STATE	9655	9656	0
 * OP_DONE	0	0	0
 */

void () player_pain2 = [ 36.000, globaldef3147 ] {


};
float globaldef3146 /* = 36.000 */;

void () player_pain3;

// function player_pain3
// function number 444 begins at statement 13896
/*
 * OP_STATE	9657	9658	0
 * OP_DONE	0	0	0
 */

void () player_pain3 = [ 37.000, globaldef3149 ] {


};
float globaldef3148 /* = 37.000 */;

void () player_pain4;

// function player_pain4
// function number 445 begins at statement 13898
/*
 * OP_STATE	9659	9660	0
 * OP_DONE	0	0	0
 */

void () player_pain4 = [ 38.000, globaldef3151 ] {


};
float globaldef3150 /* = 38.000 */;

void () player_pain5;

// function player_pain5
// function number 446 begins at statement 13900
/*
 * OP_STATE	9661	9662	0
 * OP_DONE	0	0	0
 */

void () player_pain5 = [ 39.000, globaldef3153 ] {


};
float globaldef3152 /* = 39.000 */;

void () player_pain6;

// function player_pain6
// function number 447 begins at statement 13902
/*
 * OP_STATE	746	5354	0
 * OP_DONE	0	0	0
 */

void () player_pain6 = [ 40.000, globaldef2008 ] {


};

void () player_axpain1;

// function player_axpain1
// function number 448 begins at statement 13904
/*
 * OP_STATE	9664	9665	0
 * OP_CALL0	9611	0	0
 * OP_ADDRESS	28	156	9666
 * OP_STOREP_F	213	9666	0
 * OP_DONE	0	0	0
 */

void () player_axpain1 = [ 29.000, globaldef3156 ] {

   globaldef3142 ();
   self.globaldef134 = FALSE;

};
float globaldef3155 /* = 29.000 */;

void () player_axpain2;

// function player_axpain2
// function number 449 begins at statement 13909
/*
 * OP_STATE	309	9667	0
 * OP_DONE	0	0	0
 */

void () player_axpain2 = [ 30.000, globaldef3157 ] {


};

void () player_axpain3;

// function player_axpain3
// function number 450 begins at statement 13911
/*
 * OP_STATE	310	9668	0
 * OP_DONE	0	0	0
 */

void () player_axpain3 = [ 31.000, globaldef3158 ] {


};

void () player_axpain4;

// function player_axpain4
// function number 451 begins at statement 13913
/*
 * OP_STATE	219	9669	0
 * OP_DONE	0	0	0
 */

void () player_axpain4 = [ 32.000, globaldef3159 ] {


};

void () player_axpain5;

// function player_axpain5
// function number 452 begins at statement 13915
/*
 * OP_STATE	312	9670	0
 * OP_DONE	0	0	0
 */

void () player_axpain5 = [ 33.000, globaldef3160 ] {


};

void () player_axpain6;

// function player_axpain6
// function number 453 begins at statement 13917
/*
 * OP_STATE	9671	5354	0
 * OP_DONE	0	0	0
 */

void () player_axpain6 = [ 34.000, globaldef2008 ] {


};
float globaldef3161 /* = 34.000 */;

// function player_pain
// function number 454 begins at statement 13919
/*
 * OP_LOAD_F	28	156	9672
 * OP_IFNOT	9672	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	381	9673
 * OP_GT	9673	31	9674
 * OP_IFNOT	9674	2	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	28	154	9675
 * OP_EQ_F	9675	253	9676
 * OP_IFNOT	9676	3	0
 * OP_CALL0	9663	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	9652	0	0
 * OP_DONE	0	0	0
 */

void () player_pain = {

   if ( self.globaldef134 ) {

      return ;

   }
   if ( (self.globaldef364 > time) ) {

      return ;

   }
   if ( (self.globaldef132 == IT_AXE) ) {

      globaldef3154 ();

   } else {

      globaldef3144 ();

   }

};

void () player_diea1;

void () player_dieb1;

void () player_diec1;

void () player_died1;

void () player_diee1;

void () player_die_ax1;

void () DeathBubblesSpawn;

// function DeathBubblesSpawn
// function number 455 begins at statement 13933
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	9684	0
 * OP_STORE_V	9684	4	0
 * OP_STORE_V	6690	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	9684	4	0
 * OP_LOAD_V	28	105	9685
 * OP_ADD_V	9685	5193	9688
 * OP_STORE_V	9688	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	9684	103	9691
 * OP_STOREP_F	233	9691	0
 * OP_ADDRESS	9684	104	9692
 * OP_STOREP_F	237	9692	0
 * OP_ADDRESS	9684	113	9693
 * OP_STOREP_V	9696	9693	0
 * OP_ADDRESS	9684	150	9699
 * OP_ADD_F	31	539	9700
 * OP_STOREP_F	9700	9699	0
 * OP_ADDRESS	9684	148	9701
 * OP_STOREP_FNC	9425	9701	0
 * OP_ADDRESS	9684	129	9702
 * OP_STOREP_S	9703	9702	0
 * OP_ADDRESS	9684	131	9704
 * OP_STOREP_F	213	9704	0
 * OP_ADDRESS	9684	426	9705
 * OP_STOREP_F	213	9705	0
 * OP_STORE_V	9684	4	0
 * OP_STORE_V	3520	7	0
 * OP_STORE_V	3523	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	150	9706
 * OP_ADD_F	31	3036	9707
 * OP_STOREP_F	9707	9706	0
 * OP_ADDRESS	28	148	9708
 * OP_STOREP_FNC	9683	9708	0
 * OP_ADDRESS	28	396	9709
 * OP_LOAD_F	28	396	9710
 * OP_ADD_F	9710	214	9711
 * OP_STOREP_F	9711	9709	0
 * OP_LOAD_F	28	396	9712
 * OP_LOAD_F	28	397	9713
 * OP_GE	9712	9713	9714
 * OP_IFNOT	9714	3	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () DeathBubblesSpawn = {

   local entity globaldef3169;

   globaldef3169 = spawn ();
   setmodel (globaldef3169,globaldef2435);
   setorigin (globaldef3169,(self.origin + globaldef1982));
   globaldef3169.movetype = MOVETYPE_NOCLIP;
   globaldef3169.solid = SOLID_NOT;
   globaldef3169.velocity = globaldef3170;
   globaldef3169.nextthink = (time + globaldef522);
   globaldef3169.think = globaldef3089;
   globaldef3169.classname = globaldef3171;
   globaldef3169.globaldef109 = FALSE;
   globaldef3169.cnt = FALSE;
   globaldef438 (globaldef3169,globaldef1621,globaldef1622);
   self.nextthink = (time + 0.100);
   self.think = globaldef3168;
   self.globaldef379 = (self.globaldef379 + TRUE);
   if ( (self.globaldef379 >= self.globaldef380) ) {

      remove (self);

   }

};
vector globaldef3170 /* = '0.000 0.000 15.000' */;
string globaldef3171 /* = "bubble" */;

// function DeathBubbles
// function number 456 begins at statement 13980
/*
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	9716	0
 * OP_STORE_V	9716	4	0
 * OP_LOAD_V	28	105	9717
 * OP_STORE_V	9717	7	0
 * OP_CALL2	453	0	0
 * OP_ADDRESS	9716	103	9720
 * OP_STOREP_F	227	9720	0
 * OP_ADDRESS	9716	104	9721
 * OP_STOREP_F	237	9721	0
 * OP_ADDRESS	9716	150	9722
 * OP_ADD_F	31	3036	9723
 * OP_STOREP_F	9723	9722	0
 * OP_ADDRESS	9716	148	9724
 * OP_STOREP_FNC	9683	9724	0
 * OP_ADDRESS	9716	396	9725
 * OP_STOREP_F	213	9725	0
 * OP_ADDRESS	9716	201	9726
 * OP_STOREP_ENT	28	9726	0
 * OP_ADDRESS	9716	397	9727
 * OP_STOREP_F	9715	9727	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void (float globaldef3172) DeathBubbles = {

   local entity globaldef3173;

   globaldef3173 = spawn ();
   setorigin (globaldef3173,self.origin);
   globaldef3173.movetype = MOVETYPE_NONE;
   globaldef3173.solid = SOLID_NOT;
   globaldef3173.nextthink = (time + 0.100);
   globaldef3173.think = globaldef3168;
   globaldef3173.globaldef379 = FALSE;
   globaldef3173.globaldef179 = self;
   globaldef3173.globaldef380 = globaldef3172;
   return ;

};

void () DeathSound;

// function DeathSound
// function number 457 begins at statement 14003
/*
 * OP_LOAD_F	28	189	9730
 * OP_EQ_F	9730	228	9731
 * OP_IFNOT	9731	10	0
 * OP_STORE_V	2323	4	0
 * OP_CALL1	9610	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6652	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	229	9732
 * OP_ADD_F	9732	214	9733
 * OP_STORE_V	9733	4	0
 * OP_CALL1	483	0	0
 * OP_STORE_F	1	9729	0
 * OP_EQ_F	9729	214	9734
 * OP_IFNOT	9734	3	0
 * OP_ADDRESS	28	208	9735
 * OP_STOREP_S	6669	9735	0
 * OP_EQ_F	9729	216	9736
 * OP_IFNOT	9736	3	0
 * OP_ADDRESS	28	208	9737
 * OP_STOREP_S	6670	9737	0
 * OP_EQ_F	9729	228	9738
 * OP_IFNOT	9738	3	0
 * OP_ADDRESS	28	208	9739
 * OP_STOREP_S	6671	9739	0
 * OP_EQ_F	9729	229	9740
 * OP_IFNOT	9740	3	0
 * OP_ADDRESS	28	208	9741
 * OP_STOREP_S	6672	9741	0
 * OP_EQ_F	9729	230	9742
 * OP_IFNOT	9742	3	0
 * OP_ADDRESS	28	208	9743
 * OP_STOREP_S	6673	9743	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_LOAD_S	28	208	9744
 * OP_STORE_V	9744	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_DONE	0	0	0
 */

void () DeathSound = {

   local float globaldef3175;

   if ( (self.globaldef167 == MOVETYPE_WALK) ) {

      globaldef3141 (globaldef1384);
      sound (self,CHAN_VOICE,globaldef2397,TRUE,ATTN_NONE);
      return ;

   }
   globaldef3175 = globaldef466 (((globaldef440 () * MOVETYPE_STEP) + TRUE));
   if ( (globaldef3175 == TRUE) ) {

      self.noise = globaldef2414;

   }
   if ( (globaldef3175 == FL_SWIM) ) {

      self.noise = globaldef2415;

   }
   if ( (globaldef3175 == MOVETYPE_WALK) ) {

      self.noise = globaldef2416;

   }
   if ( (globaldef3175 == MOVETYPE_STEP) ) {

      self.noise = globaldef2417;

   }
   if ( (globaldef3175 == MOVETYPE_FLY) ) {

      self.noise = globaldef2418;

   }
   sound (self,CHAN_VOICE,self.noise,TRUE,ATTN_NONE);
   return ;

};

void () PlayerDead;

// function PlayerDead
// function number 458 begins at statement 14050
/*
 * OP_ADDRESS	28	150	9746
 * OP_STOREP_F	276	9746	0
 * OP_ADDRESS	28	165	9747
 * OP_STOREP_F	248	9747	0
 * OP_DONE	0	0	0
 */

void () PlayerDead = {

   self.nextthink = CONTENT_EMPTY;
   self.globaldef143 = DEAD_DEAD;

};
vector (float globaldef3178) VelocityForDamage;

// function VelocityForDamage
// function number 459 begins at statement 14055
/*
 * OP_CALL0	5370	0	0
 * OP_MUL_F	1997	1	9753
 * OP_STORE_F	9753	9750	0
 * OP_CALL0	5370	0	0
 * OP_MUL_F	1997	1	9754
 * OP_STORE_F	9754	9751	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1997	1	9755
 * OP_ADD_F	2044	9755	9756
 * OP_STORE_F	9756	9752	0
 * OP_GT	9749	8782	9757
 * OP_IFNOT	9757	4	0
 * OP_MUL_VF	9750	5599	9758
 * OP_STORE_V	9758	9750	0
 * OP_GOTO	8	0	0
 * OP_GT	9749	9761	9762
 * OP_IFNOT	9762	4	0
 * OP_MUL_VF	9750	216	9763
 * OP_STORE_V	9763	9750	0
 * OP_GOTO	3	0	0
 * OP_MUL_VF	9750	235	9766
 * OP_STORE_V	9766	9750	0
 * OP_RETURN	9750	0	0
 * OP_DONE	0	0	0
 */
vector (float globaldef3178) VelocityForDamage = {

   local vector globaldef3179;

   globaldef3179_x = (globaldef1335 * globaldef2024 ());
   globaldef3181 = (globaldef1335 * globaldef2024 ());
   globaldef3182 = (globaldef1343 + (globaldef1335 * globaldef440 ()));
   if ( (globaldef3178 > globaldef2952) ) {

      globaldef3179 = (globaldef3179 * globaldef2123);

   } else {

      if ( (globaldef3178 > globaldef3183) ) {

         globaldef3179 = (globaldef3179 * FL_SWIM);

      } else {

         globaldef3179 = (globaldef3179 * MOVETYPE_BOUNCE);

      }

   }
   return ( globaldef3179 );

};
float globaldef3183 /* = -200.000 */;

void () func460;

// function func460
// function number 460 begins at statement 14079
/*
 * OP_SUB_F	801	214	9770
 * OP_STORE_F	9770	801	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () func460 = {

   globaldef784 = (globaldef784 - TRUE);
   remove (self);

};

void (string globaldef3186, float globaldef3187) ThrowGib;

// function ThrowGib
// function number 461 begins at statement 14084
/*
 * OP_GT	801	742	9775
 * OP_IFNOT	9775	2	0
 * OP_RETURN	0	0	0
 * OP_ADD_F	801	214	9776
 * OP_STORE_F	9776	801	0
 * OP_CALL0	464	0	0
 * OP_STORE_ENT	1	9774	0
 * OP_ADDRESS	9774	105	9777
 * OP_LOAD_V	28	105	9780
 * OP_STOREP_V	9780	9777	0
 * OP_STORE_V	9774	4	0
 * OP_STORE_V	9772	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	9774	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	9774	113	9783
 * OP_STORE_V	9773	4	0
 * OP_CALL1	9748	0	0
 * OP_STOREP_V	1	9783	0
 * OP_ADDRESS	9774	103	9786
 * OP_STOREP_F	235	9786	0
 * OP_ADDRESS	9774	104	9787
 * OP_STOREP_F	237	9787	0
 * OP_ADDRESS	9774	122	9788
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	740	9789
 * OP_STOREP_F	9789	9788	0
 * OP_ADDRESS	9774	123	9790
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	740	9791
 * OP_STOREP_F	9791	9790	0
 * OP_ADDRESS	9774	124	9792
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	740	9793
 * OP_STOREP_F	9793	9792	0
 * OP_ADDRESS	9774	148	9794
 * OP_STOREP_FNC	9769	9794	0
 * OP_ADDRESS	9774	102	9795
 * OP_STOREP_F	31	9795	0
 * OP_ADDRESS	9774	150	9796
 * OP_ADD_F	31	235	9797
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	235	9798
 * OP_ADD_F	9797	9798	9799
 * OP_STOREP_F	9799	9796	0
 * OP_ADDRESS	9774	131	9800
 * OP_STOREP_F	213	9800	0
 * OP_ADDRESS	9774	182	9801
 * OP_STOREP_F	213	9801	0
 * OP_DONE	0	0	0
 */

void (string globaldef3186, float globaldef3187) ThrowGib = {

   local entity globaldef3188;

   if ( (globaldef784 > globaldef725) ) {

      return ;

   }
   globaldef784 = (globaldef784 + TRUE);
   globaldef3188 = spawn ();
   globaldef3188.origin = self.origin;
   setmodel (globaldef3188,globaldef3186);
   globaldef438 (globaldef3188,VEC_ORIGIN,VEC_ORIGIN);
   globaldef3188.velocity = globaldef3177 (globaldef3187);
   globaldef3188.movetype = MOVETYPE_BOUNCE;
   globaldef3188.solid = SOLID_NOT;
   globaldef3188.globaldef100 = (globaldef440 () * globaldef723);
   globaldef3188.globaldef101 = (globaldef440 () * globaldef723);
   globaldef3188.globaldef102 = (globaldef440 () * globaldef723);
   globaldef3188.think = globaldef3184;
   globaldef3188.ltime = time;
   globaldef3188.nextthink = ((time + MOVETYPE_BOUNCE) + (globaldef440 () * MOVETYPE_BOUNCE));
   globaldef3188.globaldef109 = FALSE;
   globaldef3188.globaldef160 = FALSE;

};

void (string globaldef3190, float globaldef3191) ThrowHead;

// function ThrowHead
// function number 462 begins at statement 14136
/*
 * OP_EQ_S	9803	6686	9805
 * OP_BITAND	821	777	9806
 * OP_AND	9805	9806	9807
 * OP_IFNOT	9807	6	0
 * OP_ADDRESS	28	574	9808
 * OP_STOREP_F	213	9808	0
 * OP_ADDRESS	28	573	9809
 * OP_STOREP_F	527	9809	0
 * OP_GOTO	4	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	9803	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	28	131	9810
 * OP_STOREP_F	213	9810	0
 * OP_ADDRESS	28	150	9811
 * OP_STOREP_F	276	9811	0
 * OP_ADDRESS	28	103	9812
 * OP_STOREP_F	235	9812	0
 * OP_ADDRESS	28	163	9813
 * OP_STOREP_F	250	9813	0
 * OP_ADDRESS	28	104	9814
 * OP_STOREP_F	237	9814	0
 * OP_ADDRESS	28	166	9815
 * OP_STOREP_V	9818	9815	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	4517	7	0
 * OP_STORE_V	4520	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	28	113	9821
 * OP_STORE_V	9804	4	0
 * OP_CALL1	9748	0	0
 * OP_STOREP_V	1	9821	0
 * OP_ADDRESS	28	108	9824
 * OP_LOAD_F	28	108	9825
 * OP_SUB_F	9825	736	9826
 * OP_STOREP_F	9826	9824	0
 * OP_ADDRESS	28	182	9827
 * OP_LOAD_F	28	182	9828
 * OP_LOAD_F	28	182	9829
 * OP_BITAND	9829	223	9830
 * OP_SUB_F	9828	9830	9831
 * OP_STOREP_F	9831	9827	0
 * OP_ADDRESS	28	121	9832
 * OP_CALL0	5370	0	0
 * OP_MUL_FV	1	9835	9838
 * OP_STOREP_V	9838	9832	0
 * OP_DONE	0	0	0
 */

void (string globaldef3190, float globaldef3191) ThrowHead = {

   if ( ((globaldef3190 == globaldef2431) && (globaldef804 & globaldef760)) ) {

      self.globaldef557 = FALSE;
      self.globaldef556 = globaldef510;

   } else {

      setmodel (self,globaldef3190);

   }
   self.globaldef109 = FALSE;
   self.nextthink = CONTENT_EMPTY;
   self.movetype = MOVETYPE_BOUNCE;
   self.globaldef141 = DAMAGE_NO;
   self.solid = SOLID_NOT;
   self.globaldef144 = globaldef3192;
   globaldef438 (self,globaldef1832,globaldef1833);
   self.velocity = globaldef3177 (globaldef3191);
   self.globaldef86 = (self.globaldef86 - globaldef719);
   self.globaldef160 = (self.globaldef160 - (self.globaldef160 & FL_ONGROUND));
   self.avelocity = (globaldef2024 () * globaldef3193);

};
vector globaldef3192 /* = '0.000 0.000 8.000' */;
vector globaldef3193 /* = '0.000 600.000 0.000' */;

void () GibPlayer;

// function GibPlayer
// function number 463 begins at statement 14183
/*
 * OP_STORE_V	6686	4	0
 * OP_LOAD_F	28	152	9842
 * OP_STORE_V	9842	7	0
 * OP_CALL2	9802	0	0
 * OP_STORE_V	6687	4	0
 * OP_LOAD_F	28	152	9843
 * OP_STORE_V	9843	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6688	4	0
 * OP_LOAD_F	28	152	9844
 * OP_STORE_V	9844	7	0
 * OP_CALL2	9771	0	0
 * OP_STORE_V	6689	4	0
 * OP_LOAD_F	28	152	9845
 * OP_STORE_V	9845	7	0
 * OP_CALL2	9771	0	0
 * OP_ADDRESS	28	165	9846
 * OP_STOREP_F	248	9846	0
 * OP_LOAD_S	352	129	9847
 * OP_EQ_S	9847	9182	9848
 * OP_IFNOT	9848	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6653	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_S	352	129	9849
 * OP_EQ_S	9849	9197	9850
 * OP_IFNOT	9850	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6653	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	457	0	0
 * OP_LT	1	539	9851
 * OP_IFNOT	9851	8	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6660	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_GOTO	7	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6661	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	330	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () GibPlayer = {

   globaldef3189 (globaldef2431,self.globaldef130);
   globaldef3185 (globaldef2432,self.globaldef130);
   globaldef3185 (globaldef2433,self.globaldef130);
   globaldef3185 (globaldef2434,self.globaldef130);
   self.globaldef143 = DEAD_DEAD;
   if ( (damage_attacker.classname == globaldef2997) ) {

      sound (self,CHAN_VOICE,globaldef2398,TRUE,ATTN_NONE);
      return ;

   }
   if ( (damage_attacker.classname == globaldef3000) ) {

      sound (self,CHAN_VOICE,globaldef2398,TRUE,ATTN_NONE);
      return ;

   }
   if ( (globaldef440 () < globaldef522) ) {

      sound (self,CHAN_VOICE,globaldef2405,TRUE,ATTN_NONE);

   } else {

      sound (self,CHAN_VOICE,globaldef2406,TRUE,ATTN_NONE);

   }

};

// function PlayerDie
// function number 464 begins at statement 14238
/*
 * OP_ADDRESS	28	162	9853
 * OP_LOAD_F	28	162	9854
 * OP_LOAD_F	28	162	9855
 * OP_BITAND	9855	272	9856
 * OP_SUB_F	9854	9856	9857
 * OP_STOREP_F	9857	9853	0
 * OP_ADDRESS	28	381	9858
 * OP_STOREP_F	213	9858	0
 * OP_ADDRESS	28	380	9859
 * OP_STOREP_F	213	9859	0
 * OP_ADDRESS	28	382	9860
 * OP_STOREP_F	213	9860	0
 * OP_ADDRESS	28	383	9861
 * OP_STOREP_F	213	9861	0
 * OP_BITAND	821	777	9862
 * OP_IFNOT	9862	7	0
 * OP_ADDRESS	28	574	9863
 * OP_LOAD_F	28	572	9864
 * OP_STOREP_F	9864	9863	0
 * OP_ADDRESS	28	573	9865
 * OP_STOREP_F	526	9865	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	93	9866
 * OP_STOREP_F	526	9866	0
 * OP_OR	35	36	9867
 * OP_IFNOT	9867	2	0
 * OP_CALL0	5177	0	0
 * OP_ADDRESS	28	155	9868
 * OP_STOREP_S	3002	9868	0
 * OP_ADDRESS	28	166	9869
 * OP_STOREP_V	9872	9869	0
 * OP_ADDRESS	28	165	9875
 * OP_STOREP_F	247	9875	0
 * OP_ADDRESS	28	104	9876
 * OP_STOREP_F	237	9876	0
 * OP_ADDRESS	28	182	9877
 * OP_LOAD_F	28	182	9878
 * OP_LOAD_F	28	182	9879
 * OP_BITAND	9879	223	9880
 * OP_SUB_F	9878	9880	9881
 * OP_STOREP_F	9881	9877	0
 * OP_ADDRESS	28	103	9882
 * OP_STOREP_F	231	9882	0
 * OP_LOAD_F	28	116	9883
 * OP_LT	9883	235	9884
 * OP_IFNOT	9884	7	0
 * OP_ADDRESS	28	116	9885
 * OP_LOAD_F	28	116	9886
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	540	9887
 * OP_ADD_F	9886	9887	9888
 * OP_STOREP_F	9888	9885	0
 * OP_LOAD_F	28	152	9889
 * OP_LT	9889	9236	9890
 * OP_IFNOT	9890	3	0
 * OP_CALL0	9841	0	0
 * OP_RETURN	0	0	0
 * OP_BITAND	821	767	9891
 * OP_IFNOT	9891	3	0
 * OP_CALL0	9841	0	0
 * OP_RETURN	0	0	0
 * OP_CALL0	9728	0	0
 * OP_ADDRESS	28	118	9892
 * OP_STOREP_F	213	9892	0
 * OP_ADDRESS	28	120	9893
 * OP_STOREP_F	213	9893	0
 * OP_LOAD_F	28	154	9894
 * OP_EQ_F	9894	253	9895
 * OP_IFNOT	9895	3	0
 * OP_CALL0	9682	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_F	213	9852	0
 * OP_NOT_F	9852	0	9896
 * OP_IFNOT	9896	7	0
 * OP_CALL0	457	0	0
 * OP_MUL_F	1	231	9897
 * OP_STORE_V	9897	4	0
 * OP_CALL1	484	0	0
 * OP_ADD_F	214	1	9898
 * OP_STORE_F	9898	9852	0
 * OP_EQ_F	9852	214	9899
 * OP_IFNOT	9899	3	0
 * OP_CALL0	9677	0	0
 * OP_GOTO	14	0	0
 * OP_EQ_F	9852	216	9900
 * OP_IFNOT	9900	3	0
 * OP_CALL0	9678	0	0
 * OP_GOTO	10	0	0
 * OP_EQ_F	9852	228	9901
 * OP_IFNOT	9901	3	0
 * OP_CALL0	9679	0	0
 * OP_GOTO	6	0	0
 * OP_EQ_F	9852	229	9902
 * OP_IFNOT	9902	3	0
 * OP_CALL0	9680	0	0
 * OP_GOTO	2	0	0
 * OP_CALL0	9681	0	0
 * OP_DONE	0	0	0
 */

void () PlayerDie = {

   local float globaldef3195;

   self.globaldef140 = (self.globaldef140 - (self.globaldef140 & IT_INVISIBILITY));
   self.globaldef364 = FALSE;
   self.globaldef363 = FALSE;
   self.globaldef365 = FALSE;
   self.globaldef366 = FALSE;
   if ( (globaldef804 & globaldef760) ) {

      self.globaldef557 = self.globaldef555;
      self.globaldef556 = globaldef509;

   } else {

      self.modelindex = globaldef509;

   }
   if ( (deathmatch || coop) ) {

      globaldef1980 ();

   }
   self.globaldef133 = "";
   self.globaldef144 = globaldef3196;
   self.globaldef143 = DEAD_DYING;
   self.solid = SOLID_NOT;
   self.globaldef160 = (self.globaldef160 - (self.globaldef160 & FL_ONGROUND));
   self.movetype = MOVETYPE_TOSS;
   if ( (self.globaldef94 < MOVETYPE_BOUNCE) ) {

      self.globaldef94 = (self.globaldef94 + (globaldef440 () * globaldef523));

   }
   if ( (self.globaldef130 < globaldef3008) ) {

      globaldef3194 ();
      return ;

   }
   if ( (globaldef804 & globaldef750) ) {

      globaldef3194 ();
      return ;

   }
   globaldef3174 ();
   self.globaldef96 = FALSE;
   self.globaldef98 = FALSE;
   if ( (self.globaldef132 == IT_AXE) ) {

      globaldef3167 ();
      return ;

   }
   globaldef3195 = FALSE;
   if ( !globaldef3195 ) {

      globaldef3195 = (TRUE + globaldef467 ((globaldef440 () * MOVETYPE_TOSS)));

   }
   if ( (globaldef3195 == TRUE) ) {

      globaldef3162 ();

   } else {

      if ( (globaldef3195 == FL_SWIM) ) {

         globaldef3163 ();

      } else {

         if ( (globaldef3195 == MOVETYPE_WALK) ) {

            globaldef3164 ();

         } else {

            if ( (globaldef3195 == MOVETYPE_STEP) ) {

               globaldef3165 ();

            } else {

               globaldef3166 ();

            }

         }

      }

   }

};
vector globaldef3196 /* = '0.000 0.000 -8.000' */;

// function set_suicide_frame
// function number 465 begins at statement 14336
/*
 * OP_LOAD_S	28	130	9903
 * OP_NE_S	9903	6684	9904
 * OP_IFNOT	9904	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	131	9905
 * OP_STOREP_F	2019	9905	0
 * OP_ADDRESS	28	104	9906
 * OP_STOREP_F	237	9906	0
 * OP_ADDRESS	28	103	9907
 * OP_STOREP_F	231	9907	0
 * OP_ADDRESS	28	165	9908
 * OP_STOREP_F	248	9908	0
 * OP_ADDRESS	28	150	9909
 * OP_STOREP_F	276	9909	0
 * OP_DONE	0	0	0
 */

void () set_suicide_frame = {

   if ( (self.model != globaldef2429) ) {

      return ;

   }
   self.globaldef109 = globaldef1337;
   self.solid = SOLID_NOT;
   self.movetype = MOVETYPE_TOSS;
   self.globaldef143 = DEAD_DEAD;
   self.nextthink = CONTENT_EMPTY;

};

// function player_diea1
// function number 466 begins at statement 14351
/*
 * OP_STATE	1470	9910	0
 * OP_DONE	0	0	0
 */

void () player_diea1 = [ 50.000, globaldef3197 ] {


};

void () player_diea2;

// function player_diea2
// function number 467 begins at statement 14353
/*
 * OP_STATE	9911	9912	0
 * OP_DONE	0	0	0
 */

void () player_diea2 = [ 51.000, globaldef3199 ] {


};
float globaldef3198 /* = 51.000 */;

void () player_diea3;

// function player_diea3
// function number 468 begins at statement 14355
/*
 * OP_STATE	9913	9914	0
 * OP_DONE	0	0	0
 */

void () player_diea3 = [ 52.000, globaldef3201 ] {


};
float globaldef3200 /* = 52.000 */;

void () player_diea4;

// function player_diea4
// function number 469 begins at statement 14357
/*
 * OP_STATE	9915	9916	0
 * OP_DONE	0	0	0
 */

void () player_diea4 = [ 53.000, globaldef3203 ] {


};
float globaldef3202 /* = 53.000 */;

void () player_diea5;

// function player_diea5
// function number 470 begins at statement 14359
/*
 * OP_STATE	9917	9918	0
 * OP_DONE	0	0	0
 */

void () player_diea5 = [ 54.000, globaldef3205 ] {


};
float globaldef3204 /* = 54.000 */;

void () player_diea6;

// function player_diea6
// function number 471 begins at statement 14361
/*
 * OP_STATE	9919	9920	0
 * OP_DONE	0	0	0
 */

void () player_diea6 = [ 55.000, globaldef3207 ] {


};
float globaldef3206 /* = 55.000 */;

void () player_diea7;

// function player_diea7
// function number 472 begins at statement 14363
/*
 * OP_STATE	9921	9922	0
 * OP_DONE	0	0	0
 */

void () player_diea7 = [ 56.000, globaldef3209 ] {


};
float globaldef3208 /* = 56.000 */;

void () player_diea8;

// function player_diea8
// function number 473 begins at statement 14365
/*
 * OP_STATE	9923	9924	0
 * OP_DONE	0	0	0
 */

void () player_diea8 = [ 57.000, globaldef3211 ] {


};
float globaldef3210 /* = 57.000 */;

void () player_diea9;

// function player_diea9
// function number 474 begins at statement 14367
/*
 * OP_STATE	9925	9926	0
 * OP_DONE	0	0	0
 */

void () player_diea9 = [ 58.000, globaldef3213 ] {


};
float globaldef3212 /* = 58.000 */;

void () player_diea10;

// function player_diea10
// function number 475 begins at statement 14369
/*
 * OP_STATE	2783	9927	0
 * OP_DONE	0	0	0
 */

void () player_diea10 = [ 59.000, globaldef3214 ] {


};

void () player_diea11;

// function player_diea11
// function number 476 begins at statement 14371
/*
 * OP_STATE	2019	9927	0
 * OP_CALL0	9745	0	0
 * OP_DONE	0	0	0
 */

void () player_diea11 = [ 60.000, globaldef3214 ] {

   globaldef3176 ();

};

// function player_dieb1
// function number 477 begins at statement 14374
/*
 * OP_STATE	9928	9929	0
 * OP_DONE	0	0	0
 */

void () player_dieb1 = [ 61.000, globaldef3216 ] {


};
float globaldef3215 /* = 61.000 */;

void () player_dieb2;

// function player_dieb2
// function number 478 begins at statement 14376
/*
 * OP_STATE	9930	9931	0
 * OP_DONE	0	0	0
 */

void () player_dieb2 = [ 62.000, globaldef3218 ] {


};
float globaldef3217 /* = 62.000 */;

void () player_dieb3;

// function player_dieb3
// function number 479 begins at statement 14378
/*
 * OP_STATE	6707	9932	0
 * OP_DONE	0	0	0
 */

void () player_dieb3 = [ 63.000, globaldef3219 ] {


};

void () player_dieb4;

// function player_dieb4
// function number 480 begins at statement 14380
/*
 * OP_STATE	220	9933	0
 * OP_DONE	0	0	0
 */

void () player_dieb4 = [ 64.000, globaldef3220 ] {


};

void () player_dieb5;

// function player_dieb5
// function number 481 begins at statement 14382
/*
 * OP_STATE	9934	9935	0
 * OP_DONE	0	0	0
 */

void () player_dieb5 = [ 65.000, globaldef3222 ] {


};
float globaldef3221 /* = 65.000 */;

void () player_dieb6;

// function player_dieb6
// function number 482 begins at statement 14384
/*
 * OP_STATE	9936	9937	0
 * OP_DONE	0	0	0
 */

void () player_dieb6 = [ 66.000, globaldef3224 ] {


};
float globaldef3223 /* = 66.000 */;

void () player_dieb7;

// function player_dieb7
// function number 483 begins at statement 14386
/*
 * OP_STATE	9938	9939	0
 * OP_DONE	0	0	0
 */

void () player_dieb7 = [ 67.000, globaldef3226 ] {


};
float globaldef3225 /* = 67.000 */;

void () player_dieb8;

// function player_dieb8
// function number 484 begins at statement 14388
/*
 * OP_STATE	8193	9940	0
 * OP_DONE	0	0	0
 */

void () player_dieb8 = [ 68.000, globaldef3227 ] {


};

void () player_dieb9;

// function player_dieb9
// function number 485 begins at statement 14390
/*
 * OP_STATE	8196	9940	0
 * OP_CALL0	9745	0	0
 * OP_DONE	0	0	0
 */

void () player_dieb9 = [ 69.000, globaldef3227 ] {

   globaldef3176 ();

};

// function player_diec1
// function number 486 begins at statement 14393
/*
 * OP_STATE	1536	9941	0
 * OP_DONE	0	0	0
 */

void () player_diec1 = [ 70.000, globaldef3228 ] {


};

void () player_diec2;

// function player_diec2
// function number 487 begins at statement 14395
/*
 * OP_STATE	8201	9942	0
 * OP_DONE	0	0	0
 */

void () player_diec2 = [ 71.000, globaldef3229 ] {


};

void () player_diec3;

// function player_diec3
// function number 488 begins at statement 14397
/*
 * OP_STATE	9943	9944	0
 * OP_DONE	0	0	0
 */

void () player_diec3 = [ 72.000, globaldef3231 ] {


};
float globaldef3230 /* = 72.000 */;

void () player_diec4;

// function player_diec4
// function number 489 begins at statement 14399
/*
 * OP_STATE	5487	9945	0
 * OP_DONE	0	0	0
 */

void () player_diec4 = [ 73.000, globaldef3232 ] {


};

void () player_diec5;

// function player_diec5
// function number 490 begins at statement 14401
/*
 * OP_STATE	9946	9947	0
 * OP_DONE	0	0	0
 */

void () player_diec5 = [ 74.000, globaldef3234 ] {


};
float globaldef3233 /* = 74.000 */;

void () player_diec6;

// function player_diec6
// function number 491 begins at statement 14403
/*
 * OP_STATE	9173	9948	0
 * OP_DONE	0	0	0
 */

void () player_diec6 = [ 75.000, globaldef3235 ] {


};

void () player_diec7;

// function player_diec7
// function number 492 begins at statement 14405
/*
 * OP_STATE	9949	9950	0
 * OP_DONE	0	0	0
 */

void () player_diec7 = [ 76.000, globaldef3237 ] {


};
float globaldef3236 /* = 76.000 */;

void () player_diec8;

// function player_diec8
// function number 493 begins at statement 14407
/*
 * OP_STATE	9951	9952	0
 * OP_DONE	0	0	0
 */

void () player_diec8 = [ 77.000, globaldef3239 ] {


};
float globaldef3238 /* = 77.000 */;

void () player_diec9;

// function player_diec9
// function number 494 begins at statement 14409
/*
 * OP_STATE	9953	9954	0
 * OP_DONE	0	0	0
 */

void () player_diec9 = [ 78.000, globaldef3241 ] {


};
float globaldef3240 /* = 78.000 */;

void () player_diec10;

// function player_diec10
// function number 495 begins at statement 14411
/*
 * OP_STATE	9955	9956	0
 * OP_DONE	0	0	0
 */

void () player_diec10 = [ 79.000, globaldef3243 ] {


};
float globaldef3242 /* = 79.000 */;

void () player_diec11;

// function player_diec11
// function number 496 begins at statement 14413
/*
 * OP_STATE	2805	9957	0
 * OP_DONE	0	0	0
 */

void () player_diec11 = [ 80.000, globaldef3244 ] {


};

void () player_diec12;

// function player_diec12
// function number 497 begins at statement 14415
/*
 * OP_STATE	8204	9958	0
 * OP_DONE	0	0	0
 */

void () player_diec12 = [ 81.000, globaldef3245 ] {


};

void () player_diec13;

// function player_diec13
// function number 498 begins at statement 14417
/*
 * OP_STATE	9959	9960	0
 * OP_DONE	0	0	0
 */

void () player_diec13 = [ 82.000, globaldef3247 ] {


};
float globaldef3246 /* = 82.000 */;

void () player_diec14;

// function player_diec14
// function number 499 begins at statement 14419
/*
 * OP_STATE	9961	9962	0
 * OP_DONE	0	0	0
 */

void () player_diec14 = [ 83.000, globaldef3249 ] {


};
float globaldef3248 /* = 83.000 */;

void () player_diec15;

// function player_diec15
// function number 500 begins at statement 14421
/*
 * OP_STATE	7694	9962	0
 * OP_CALL0	9745	0	0
 * OP_DONE	0	0	0
 */

void () player_diec15 = [ 84.000, globaldef3249 ] {

   globaldef3176 ();

};

// function player_died1
// function number 501 begins at statement 14424
/*
 * OP_STATE	9963	9964	0
 * OP_DONE	0	0	0
 */

void () player_died1 = [ 85.000, globaldef3251 ] {


};
float globaldef3250 /* = 85.000 */;

void () player_died2;

// function player_died2
// function number 502 begins at statement 14426
/*
 * OP_STATE	9965	9966	0
 * OP_DONE	0	0	0
 */

void () player_died2 = [ 86.000, globaldef3253 ] {


};
float globaldef3252 /* = 86.000 */;

void () player_died3;

// function player_died3
// function number 503 begins at statement 14428
/*
 * OP_STATE	9967	9968	0
 * OP_DONE	0	0	0
 */

void () player_died3 = [ 87.000, globaldef3255 ] {


};
float globaldef3254 /* = 87.000 */;

void () player_died4;

// function player_died4
// function number 504 begins at statement 14430
/*
 * OP_STATE	9969	9970	0
 * OP_DONE	0	0	0
 */

void () player_died4 = [ 88.000, globaldef3257 ] {


};
float globaldef3256 /* = 88.000 */;

void () player_died5;

// function player_died5
// function number 505 begins at statement 14432
/*
 * OP_STATE	9971	9972	0
 * OP_DONE	0	0	0
 */

void () player_died5 = [ 89.000, globaldef3259 ] {


};
float globaldef3258 /* = 89.000 */;

void () player_died6;

// function player_died6
// function number 506 begins at statement 14434
/*
 * OP_STATE	2658	9973	0
 * OP_DONE	0	0	0
 */

void () player_died6 = [ 90.000, globaldef3260 ] {


};

void () player_died7;

// function player_died7
// function number 507 begins at statement 14436
/*
 * OP_STATE	9974	9975	0
 * OP_DONE	0	0	0
 */

void () player_died7 = [ 91.000, globaldef3262 ] {


};
float globaldef3261 /* = 91.000 */;

void () player_died8;

// function player_died8
// function number 508 begins at statement 14438
/*
 * OP_STATE	9976	9977	0
 * OP_DONE	0	0	0
 */

void () player_died8 = [ 92.000, globaldef3264 ] {


};
float globaldef3263 /* = 92.000 */;

void () player_died9;

// function player_died9
// function number 509 begins at statement 14440
/*
 * OP_STATE	9978	9977	0
 * OP_CALL0	9745	0	0
 * OP_DONE	0	0	0
 */

void () player_died9 = [ 93.000, globaldef3264 ] {

   globaldef3176 ();

};
float globaldef3265 /* = 93.000 */;

// function player_diee1
// function number 510 begins at statement 14443
/*
 * OP_STATE	9979	9980	0
 * OP_DONE	0	0	0
 */

void () player_diee1 = [ 94.000, globaldef3267 ] {


};
float globaldef3266 /* = 94.000 */;

void () player_diee2;

// function player_diee2
// function number 511 begins at statement 14445
/*
 * OP_STATE	9981	9982	0
 * OP_DONE	0	0	0
 */

void () player_diee2 = [ 95.000, globaldef3269 ] {


};
float globaldef3268 /* = 95.000 */;

void () player_diee3;

// function player_diee3
// function number 512 begins at statement 14447
/*
 * OP_STATE	9983	9984	0
 * OP_DONE	0	0	0
 */

void () player_diee3 = [ 96.000, globaldef3271 ] {


};
float globaldef3270 /* = 96.000 */;

void () player_diee4;

// function player_diee4
// function number 513 begins at statement 14449
/*
 * OP_STATE	9985	9986	0
 * OP_DONE	0	0	0
 */

void () player_diee4 = [ 97.000, globaldef3273 ] {


};
float globaldef3272 /* = 97.000 */;

void () player_diee5;

// function player_diee5
// function number 514 begins at statement 14451
/*
 * OP_STATE	9987	9988	0
 * OP_DONE	0	0	0
 */

void () player_diee5 = [ 98.000, globaldef3275 ] {


};
float globaldef3274 /* = 98.000 */;

void () player_diee6;

// function player_diee6
// function number 515 begins at statement 14453
/*
 * OP_STATE	9989	9990	0
 * OP_DONE	0	0	0
 */

void () player_diee6 = [ 99.000, globaldef3277 ] {


};
float globaldef3276 /* = 99.000 */;

void () player_diee7;

// function player_diee7
// function number 516 begins at statement 14455
/*
 * OP_STATE	1997	9991	0
 * OP_DONE	0	0	0
 */

void () player_diee7 = [ 100.000, globaldef3278 ] {


};

void () player_diee8;

// function player_diee8
// function number 517 begins at statement 14457
/*
 * OP_STATE	8107	9992	0
 * OP_DONE	0	0	0
 */

void () player_diee8 = [ 101.000, globaldef3279 ] {


};

void () player_diee9;

// function player_diee9
// function number 518 begins at statement 14459
/*
 * OP_STATE	8109	9992	0
 * OP_CALL0	9745	0	0
 * OP_DONE	0	0	0
 */

void () player_diee9 = [ 102.000, globaldef3279 ] {

   globaldef3176 ();

};

// function player_die_ax1
// function number 519 begins at statement 14462
/*
 * OP_STATE	9993	9994	0
 * OP_DONE	0	0	0
 */

void () player_die_ax1 = [ 41.000, globaldef3281 ] {


};
float globaldef3280 /* = 41.000 */;

void () player_die_ax2;

// function player_die_ax2
// function number 520 begins at statement 14464
/*
 * OP_STATE	9995	9996	0
 * OP_DONE	0	0	0
 */

void () player_die_ax2 = [ 42.000, globaldef3283 ] {


};
float globaldef3282 /* = 42.000 */;

void () player_die_ax3;

// function player_die_ax3
// function number 521 begins at statement 14466
/*
 * OP_STATE	9997	9998	0
 * OP_DONE	0	0	0
 */

void () player_die_ax3 = [ 43.000, globaldef3285 ] {


};
float globaldef3284 /* = 43.000 */;

void () player_die_ax4;

// function player_die_ax4
// function number 522 begins at statement 14468
/*
 * OP_STATE	9999	10000	0
 * OP_DONE	0	0	0
 */

void () player_die_ax4 = [ 44.000, globaldef3287 ] {


};
float globaldef3286 /* = 44.000 */;

void () player_die_ax5;

// function player_die_ax5
// function number 523 begins at statement 14470
/*
 * OP_STATE	2598	10001	0
 * OP_DONE	0	0	0
 */

void () player_die_ax5 = [ 45.000, globaldef3288 ] {


};

void () player_die_ax6;

// function player_die_ax6
// function number 524 begins at statement 14472
/*
 * OP_STATE	10002	10003	0
 * OP_DONE	0	0	0
 */

void () player_die_ax6 = [ 46.000, globaldef3290 ] {


};
float globaldef3289 /* = 46.000 */;

void () player_die_ax7;

// function player_die_ax7
// function number 525 begins at statement 14474
/*
 * OP_STATE	10004	10005	0
 * OP_DONE	0	0	0
 */

void () player_die_ax7 = [ 47.000, globaldef3292 ] {


};
float globaldef3291 /* = 47.000 */;

void () player_die_ax8;

// function player_die_ax8
// function number 526 begins at statement 14476
/*
 * OP_STATE	10006	10007	0
 * OP_DONE	0	0	0
 */

void () player_die_ax8 = [ 48.000, globaldef3294 ] {


};
float globaldef3293 /* = 48.000 */;

void () player_die_ax9;

// function player_die_ax9
// function number 527 begins at statement 14478
/*
 * OP_STATE	10008	10007	0
 * OP_CALL0	9745	0	0
 * OP_DONE	0	0	0
 */

void () player_die_ax9 = [ 49.000, globaldef3294 ] {

   globaldef3176 ();

};
