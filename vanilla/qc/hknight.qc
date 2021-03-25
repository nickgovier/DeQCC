void () hknight_char_a1;
void () hknight_run1;
void () hk_idle_sound;
// hknight_shot
// function begins at statement 18200, parm_start=10428
// OP_LOAD_ENT	28	181	10438
// OP_LOAD_V	10438	105	10439
// OP_LOAD_V	28	105	10442
// OP_SUB_V	10439	10442	10445
// OP_STORE_V	10445	4	0
// OP_CALL1	492	0	0
// OP_STORE_V	1	10429	0
// OP_MUL_F	10428	314	10448
// OP_ADD_F	10430	10448	10449
// OP_STORE_F	10449	10430	0
// OP_STORE_V	10429	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	10450
// OP_LOAD_V	28	134	10453
// OP_ADD_V	10450	10453	10456
// OP_LOAD_V	28	142	10459
// OP_MUL_VF	10459	1491	10462
// OP_ADD_V	10456	10462	10465
// OP_MUL_VF	59	894	10468
// OP_ADD_V	10465	10468	10471
// OP_STORE_V	10471	10432	0
// OP_STORE_V	59	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10435	0
// OP_SUB_F	337	10437	10474
// OP_CALL0	452	0	0
// OP_SUB_F	1	1491	10475
// OP_MUL_F	10475	603	10476
// OP_ADD_F	10474	10476	10477
// OP_STORE_F	10477	10437	0
// OP_STORE_V	10432	4	0
// OP_STORE_V	10435	7	0
// OP_CALL2	3206	0	0
// OP_ADDRESS	345	129	10478
// OP_STOREP_S	3304	10478	0
// OP_STORE_V	345	4	0
// OP_STORE_V	10479	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	345	113	10480
// OP_MUL_VF	10435	2596	10483
// OP_STOREP_V	10483	10480	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10486	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void (float offset) hknight_shot =
{
    local vector offang;
    local vector org;
    local vector vec;
    offang = vectoangles(self.enemy.origin - self.origin);
    offang_y = offang_y + (offset * TE_LIGHTNING2);
    makevectors(offang);
    org = ((self.origin + self.mins) + (self.size * 0.500)) + (v_forward * 20.000);
    vec = normalize(v_forward);
    vec_z = (MSG_BROADCAST - vec_z) + ((random() - 0.500) * 0.100);
    launch_spike(org, vec);
    newmis.classname = "knightspike";
    setmodel(newmis, "progs/k_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = vec * 300.000;
    sound(self, CHAN_WEAPON, "hknight/attack1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
};

// CheckForCharge
// function begins at statement 18252, parm_start=10488
// OP_NOT_F	759	0	10488
// OP_IFNOT	10488	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	373	10489
// OP_LT	31	10489	10490
// OP_IFNOT	10490	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	108	10491
// OP_LOAD_ENT	28	181	10492
// OP_LOAD_F	10492	108	10493
// OP_SUB_F	10491	10493	10494
// OP_STORE_V	10494	4	0
// OP_CALL1	485	0	0
// OP_GT	1	894	10495
// OP_IFNOT	10495	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	10496
// OP_LOAD_ENT	28	181	10499
// OP_LOAD_V	10499	105	10500
// OP_SUB_V	10496	10500	10503
// OP_STORE_V	10503	4	0
// OP_CALL1	457	0	0
// OP_LT	1	788	10506
// OP_IFNOT	10506	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	7369	4	0
// OP_CALL1	731	0	0
// OP_CALL0	10424	0	0
// OP_DONE	0	0	0
void () CheckForCharge =
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    
    if((fabs(self.origin_z - self.enemy.origin_z)) > 20.000)
    {
        return;
    }
    
    
    if((vlen(self.origin - self.enemy.origin)) < 80.000)
    {
        return;
    }
    
    SUB_AttackFinished(SPAWNFLAG_LASER);
    hknight_char_a1();
};

// CheckContinueCharge
// function begins at statement 18281, parm_start=10508
// OP_LOAD_F	28	373	10508
// OP_GT	31	10508	10509
// OP_IFNOT	10509	5	0
// OP_STORE_V	370	4	0
// OP_CALL1	731	0	0
// OP_CALL0	10425	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	10510
// OP_IFNOT	10510	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8577	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8578	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () CheckContinueCharge =
{
    
    if(time > self.attack_finished)
    {
        SUB_AttackFinished(AS_MELEE);
        hknight_run1();
        return;
    }
    
    if(random() > 0.500)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    else    
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    
};

// hknight_stand1
// function begins at statement 18305, parm_start=10512
// OP_STATE	337	10512	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand1 =
{
    *** UNPROCESSED OPCODE OP_STATE 337 10512 0
    ai_stand();
};

// hknight_stand2
// function begins at statement 18308, parm_start=10513
// OP_STATE	9491	10513	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand2 =
{
    *** UNPROCESSED OPCODE OP_STATE 9491 10513 0
    ai_stand();
};

// hknight_stand3
// function begins at statement 18311, parm_start=10514
// OP_STATE	7369	10514	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7369 10514 0
    ai_stand();
};

// hknight_stand4
// function begins at statement 18314, parm_start=10515
// OP_STATE	370	10515	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand4 =
{
    *** UNPROCESSED OPCODE OP_STATE 370 10515 0
    ai_stand();
};

// hknight_stand5
// function begins at statement 18317, parm_start=10516
// OP_STATE	6076	10516	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand5 =
{
    *** UNPROCESSED OPCODE OP_STATE 6076 10516 0
    ai_stand();
};

// hknight_stand6
// function begins at statement 18320, parm_start=10517
// OP_STATE	313	10517	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand6 =
{
    *** UNPROCESSED OPCODE OP_STATE 313 10517 0
    ai_stand();
};

// hknight_stand7
// function begins at statement 18323, parm_start=10518
// OP_STATE	314	10518	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand7 =
{
    *** UNPROCESSED OPCODE OP_STATE 314 10518 0
    ai_stand();
};

// hknight_stand8
// function begins at statement 18326, parm_start=10519
// OP_STATE	315	10519	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand8 =
{
    *** UNPROCESSED OPCODE OP_STATE 315 10519 0
    ai_stand();
};

// hknight_stand9
// function begins at statement 18329, parm_start=10520
// OP_STATE	6077	10511	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () hknight_stand9 =
{
    *** UNPROCESSED OPCODE OP_STATE 6077 10511 0
    ai_stand();
};

// hknight_walk1
// function begins at statement 18332, parm_start=10521
// OP_STATE	317	10521	0
// OP_CALL0	10426	0	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk1 =
{
    *** UNPROCESSED OPCODE OP_STATE 317 10521 0
    hk_idle_sound();
    ai_walk(SPAWNFLAG_LASER);
};

// hknight_walk2
// function begins at statement 18337, parm_start=10522
// OP_STATE	318	10522	0
// OP_STORE_V	313	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk2 =
{
    *** UNPROCESSED OPCODE OP_STATE 318 10522 0
    ai_walk(TE_LIGHTNING1);
};

// hknight_walk3
// function begins at statement 18341, parm_start=10523
// OP_STATE	319	10523	0
// OP_STORE_V	313	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk3 =
{
    *** UNPROCESSED OPCODE OP_STATE 319 10523 0
    ai_walk(TE_LIGHTNING1);
};

// hknight_walk4
// function begins at statement 18345, parm_start=10524
// OP_STATE	2250	10524	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk4 =
{
    *** UNPROCESSED OPCODE OP_STATE 2250 10524 0
    ai_walk(SECRET_1ST_DOWN);
};

// hknight_walk5
// function begins at statement 18349, parm_start=10525
// OP_STATE	7768	10525	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk5 =
{
    *** UNPROCESSED OPCODE OP_STATE 7768 10525 0
    ai_walk(SECRET_1ST_DOWN);
};

// hknight_walk6
// function begins at statement 18353, parm_start=10526
// OP_STATE	2901	10526	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk6 =
{
    *** UNPROCESSED OPCODE OP_STATE 2901 10526 0
    ai_walk(SPAWNFLAG_LASER);
};

// hknight_walk7
// function begins at statement 18357, parm_start=10527
// OP_STATE	1876	10527	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk7 =
{
    *** UNPROCESSED OPCODE OP_STATE 1876 10527 0
    ai_walk(SPAWNFLAG_LASER);
};

// hknight_walk8
// function begins at statement 18361, parm_start=10528
// OP_STATE	6078	10528	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk8 =
{
    *** UNPROCESSED OPCODE OP_STATE 6078 10528 0
    ai_walk(AS_MELEE);
};

// hknight_walk9
// function begins at statement 18365, parm_start=10529
// OP_STATE	4861	10529	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk9 =
{
    *** UNPROCESSED OPCODE OP_STATE 4861 10529 0
    ai_walk(AS_MELEE);
};

// hknight_walk10
// function begins at statement 18369, parm_start=10530
// OP_STATE	3319	10530	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk10 =
{
    *** UNPROCESSED OPCODE OP_STATE 3319 10530 0
    ai_walk(SECRET_1ST_DOWN);
};

// hknight_walk11
// function begins at statement 18373, parm_start=10531
// OP_STATE	7776	10531	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk11 =
{
    *** UNPROCESSED OPCODE OP_STATE 7776 10531 0
    ai_walk(AS_MELEE);
};

// hknight_walk12
// function begins at statement 18377, parm_start=10532
// OP_STATE	894	10532	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk12 =
{
    *** UNPROCESSED OPCODE OP_STATE 894 10532 0
    ai_walk(SECRET_1ST_DOWN);
};

// hknight_walk13
// function begins at statement 18381, parm_start=10533
// OP_STATE	7779	10533	0
// OP_STORE_V	314	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk13 =
{
    *** UNPROCESSED OPCODE OP_STATE 7779 10533 0
    ai_walk(TE_LIGHTNING2);
};

// hknight_walk14
// function begins at statement 18385, parm_start=10534
// OP_STATE	7781	10534	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk14 =
{
    *** UNPROCESSED OPCODE OP_STATE 7781 10534 0
    ai_walk(SPAWNFLAG_LASER);
};

// hknight_walk15
// function begins at statement 18389, parm_start=10535
// OP_STATE	301	10535	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk15 =
{
    *** UNPROCESSED OPCODE OP_STATE 301 10535 0
    ai_walk(SPAWNFLAG_LASER);
};

// hknight_walk16
// function begins at statement 18393, parm_start=10536
// OP_STATE	4437	10536	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk16 =
{
    *** UNPROCESSED OPCODE OP_STATE 4437 10536 0
    ai_walk(SECRET_1ST_DOWN);
};

// hknight_walk17
// function begins at statement 18397, parm_start=10537
// OP_STATE	1890	10537	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk17 =
{
    *** UNPROCESSED OPCODE OP_STATE 1890 10537 0
    ai_walk(AS_MELEE);
};

// hknight_walk18
// function begins at statement 18401, parm_start=10538
// OP_STATE	7788	10538	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk18 =
{
    *** UNPROCESSED OPCODE OP_STATE 7788 10538 0
    ai_walk(AS_MELEE);
};

// hknight_walk19
// function begins at statement 18405, parm_start=10539
// OP_STATE	302	10539	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk19 =
{
    *** UNPROCESSED OPCODE OP_STATE 302 10539 0
    ai_walk(AS_MELEE);
};

// hknight_walk20
// function begins at statement 18409, parm_start=10540
// OP_STATE	303	10520	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () hknight_walk20 =
{
    *** UNPROCESSED OPCODE OP_STATE 303 10520 0
    ai_walk(SPAWNFLAG_LASER);
};

// hknight_run1
// function begins at statement 18413, parm_start=10540
// OP_STATE	5105	10540	0
// OP_CALL0	10426	0	0
// OP_STORE_V	894	4	0
// OP_CALL1	1432	0	0
// OP_CALL0	10487	0	0
// OP_DONE	0	0	0
void () hknight_run1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5105 10540 0
    hk_idle_sound();
    ai_run(20.000);
    CheckForCharge();
};

// hknight_run2
// function begins at statement 18419, parm_start=10541
// OP_STATE	304	10541	0
// OP_STORE_V	1890	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run2 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 10541 0
    ai_run(25.000);
};

// hknight_run3
// function begins at statement 18423, parm_start=10542
// OP_STATE	305	10542	0
// OP_STORE_V	3319	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run3 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 10542 0
    ai_run(18.000);
};

// hknight_run4
// function begins at statement 18427, parm_start=10543
// OP_STATE	5674	10543	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5674 10543 0
    ai_run(SECRET_YES_SHOOT);
};

// hknight_run5
// function begins at statement 18431, parm_start=10544
// OP_STATE	307	10544	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run5 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 10544 0
    ai_run(14.000);
};

// hknight_run6
// function begins at statement 18435, parm_start=10545
// OP_STATE	5112	10545	0
// OP_STORE_V	1890	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5112 10545 0
    ai_run(25.000);
};

// hknight_run7
// function begins at statement 18439, parm_start=10546
// OP_STATE	3072	10546	0
// OP_STORE_V	7779	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run7 =
{
    *** UNPROCESSED OPCODE OP_STATE 3072 10546 0
    ai_run(21.000);
};

// hknight_run8
// function begins at statement 18443, parm_start=10547
// OP_STATE	5096	10425	0
// OP_STORE_V	7768	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () hknight_run8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5096 10425 0
    ai_run(13.000);
};

// hknight_pain1
// function begins at statement 18447, parm_start=10548
// OP_STATE	5098	10548	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10549	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () hknight_pain1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5098 10548 0
    sound(self, CHAN_VOICE, "hknight/pain1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
};

// hknight_pain2
// function begins at statement 18455, parm_start=10550
// OP_STATE	5100	10550	0
// OP_DONE	0	0	0
void () hknight_pain2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5100 10550 0
};

// hknight_pain3
// function begins at statement 18457, parm_start=10551
// OP_STATE	5102	10551	0
// OP_DONE	0	0	0
void () hknight_pain3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5102 10551 0
};

// hknight_pain4
// function begins at statement 18459, parm_start=10552
// OP_STATE	1733	10552	0
// OP_DONE	0	0	0
void () hknight_pain4 =
{
    *** UNPROCESSED OPCODE OP_STATE 1733 10552 0
};

// hknight_pain5
// function begins at statement 18461, parm_start=10553
// OP_STATE	5443	10425	0
// OP_DONE	0	0	0
void () hknight_pain5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5443 10425 0
};

// hknight_die1
// function begins at statement 18463, parm_start=10554
// OP_STATE	5445	10554	0
// OP_STORE_V	318	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () hknight_die1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5445 10554 0
    ai_forward(TE_LAVASPLASH);
};

// hknight_die2
// function begins at statement 18467, parm_start=10555
// OP_STATE	5447	10555	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () hknight_die2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5447 10555 0
    ai_forward(SECRET_NO_SHOOT);
};

// hknight_die3
// function begins at statement 18471, parm_start=10556
// OP_STATE	5449	10556	0
// OP_ADDRESS	28	104	10557
// OP_STOREP_F	237	10557	0
// OP_STORE_V	315	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () hknight_die3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5449 10556 0
    self.solid = SOLID_NOT;
    ai_forward(TE_WIZSPIKE);
};

// hknight_die4
// function begins at statement 18477, parm_start=10558
// OP_STATE	1390	10558	0
// OP_DONE	0	0	0
void () hknight_die4 =
{
    *** UNPROCESSED OPCODE OP_STATE 1390 10558 0
};

// hknight_die5
// function begins at statement 18479, parm_start=10559
// OP_STATE	5452	10559	0
// OP_DONE	0	0	0
void () hknight_die5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5452 10559 0
};

// hknight_die6
// function begins at statement 18481, parm_start=10560
// OP_STATE	5454	10560	0
// OP_DONE	0	0	0
void () hknight_die6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5454 10560 0
};

// hknight_die7
// function begins at statement 18483, parm_start=10561
// OP_STATE	5456	10561	0
// OP_DONE	0	0	0
void () hknight_die7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5456 10561 0
};

// hknight_die8
// function begins at statement 18485, parm_start=10562
// OP_STATE	5458	10562	0
// OP_STORE_V	318	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () hknight_die8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5458 10562 0
    ai_forward(TE_LAVASPLASH);
};

// hknight_die9
// function begins at statement 18489, parm_start=10563
// OP_STATE	2227	10563	0
// OP_STORE_V	319	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () hknight_die9 =
{
    *** UNPROCESSED OPCODE OP_STATE 2227 10563 0
    ai_forward(TE_TELEPORT);
};

// hknight_die10
// function begins at statement 18493, parm_start=10564
// OP_STATE	5351	10564	0
// OP_DONE	0	0	0
void () hknight_die10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5351 10564 0
};

// hknight_die11
// function begins at statement 18495, parm_start=10565
// OP_STATE	5353	10565	0
// OP_DONE	0	0	0
void () hknight_die11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5353 10565 0
};

// hknight_die12
// function begins at statement 18497, parm_start=10566
// OP_STATE	5355	10565	0
// OP_DONE	0	0	0
void () hknight_die12 =
{
    *** UNPROCESSED OPCODE OP_STATE 5355 10565 0
};

// hknight_dieb1
// function begins at statement 18499, parm_start=10567
// OP_STATE	5357	10567	0
// OP_DONE	0	0	0
void () hknight_dieb1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5357 10567 0
};

// hknight_dieb2
// function begins at statement 18501, parm_start=10568
// OP_STATE	5359	10568	0
// OP_DONE	0	0	0
void () hknight_dieb2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5359 10568 0
};

// hknight_dieb3
// function begins at statement 18503, parm_start=10569
// OP_STATE	5361	10569	0
// OP_ADDRESS	28	104	10570
// OP_STOREP_F	237	10570	0
// OP_DONE	0	0	0
void () hknight_dieb3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5361 10569 0
    self.solid = SOLID_NOT;
};

// hknight_dieb4
// function begins at statement 18507, parm_start=10571
// OP_STATE	5363	10571	0
// OP_DONE	0	0	0
void () hknight_dieb4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5363 10571 0
};

// hknight_dieb5
// function begins at statement 18509, parm_start=10572
// OP_STATE	5365	10572	0
// OP_DONE	0	0	0
void () hknight_dieb5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5365 10572 0
};

// hknight_dieb6
// function begins at statement 18511, parm_start=10573
// OP_STATE	5367	10573	0
// OP_DONE	0	0	0
void () hknight_dieb6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5367 10573 0
};

// hknight_dieb7
// function begins at statement 18513, parm_start=10574
// OP_STATE	912	10574	0
// OP_DONE	0	0	0
void () hknight_dieb7 =
{
    *** UNPROCESSED OPCODE OP_STATE 912 10574 0
};

// hknight_dieb8
// function begins at statement 18515, parm_start=10575
// OP_STATE	5369	10575	0
// OP_DONE	0	0	0
void () hknight_dieb8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5369 10575 0
};

// hknight_dieb9
// function begins at statement 18517, parm_start=10576
// OP_STATE	5371	10575	0
// OP_DONE	0	0	0
void () hknight_dieb9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5371 10575 0
};

// hknight_die
// function begins at statement 18519, parm_start=10577
// OP_LOAD_F	28	152	10577
// OP_LT	10577	4741	10578
// OP_IFNOT	10578	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	10580
// OP_STORE_V	10579	4	0
// OP_STORE_V	10580	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	10581
// OP_STORE_V	3852	4	0
// OP_STORE_V	10581	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	10582
// OP_STORE_V	3853	4	0
// OP_STORE_V	10582	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	10583
// OP_STORE_V	3854	4	0
// OP_STORE_V	10583	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10584	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	10585
// OP_IFNOT	10585	3	0
// OP_CALL0	10553	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10566	0	0
// OP_DONE	0	0	0
void () hknight_die =
{
    
    if(self.health < -40.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWN_CRUCIFIED, ATTN_NORM);
        ThrowHead("progs/h_hellkn.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/death1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    if(random() > 0.500)
    {
        hknight_die1();
    }
    else    
    {
        hknight_dieb1();
    }
    
};

// hknight_magica1
// function begins at statement 18558, parm_start=10587
// OP_STATE	5401	10587	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5401 10587 0
    ai_face();
};

// hknight_magica2
// function begins at statement 18561, parm_start=10588
// OP_STATE	788	10588	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica2 =
{
    *** UNPROCESSED OPCODE OP_STATE 788 10588 0
    ai_face();
};

// hknight_magica3
// function begins at statement 18564, parm_start=10589
// OP_STATE	5404	10589	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5404 10589 0
    ai_face();
};

// hknight_magica4
// function begins at statement 18567, parm_start=10590
// OP_STATE	5406	10590	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5406 10590 0
    ai_face();
};

// hknight_magica5
// function begins at statement 18570, parm_start=10591
// OP_STATE	5408	10591	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5408 10591 0
    ai_face();
};

// hknight_magica6
// function begins at statement 18573, parm_start=10592
// OP_STATE	5410	10592	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5410 10592 0
    ai_face();
};

// hknight_magica7
// function begins at statement 18576, parm_start=10593
// OP_STATE	5411	10593	0
// OP_STORE_V	277	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magica7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5411 10593 0
    hknight_shot(CONTENT_SOLID);
};

// hknight_magica8
// function begins at statement 18580, parm_start=10594
// OP_STATE	5413	10594	0
// OP_STORE_V	276	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magica8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5413 10594 0
    hknight_shot(CONTENT_EMPTY);
};

// hknight_magica9
// function begins at statement 18584, parm_start=10595
// OP_STATE	5415	10595	0
// OP_STORE_V	337	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magica9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5415 10595 0
    hknight_shot(MSG_BROADCAST);
};

// hknight_magica10
// function begins at statement 18588, parm_start=10596
// OP_STATE	5417	10596	0
// OP_STORE_V	9491	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magica10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5417 10596 0
    hknight_shot(SPAWN_CRUCIFIED);
};

// hknight_magica11
// function begins at statement 18592, parm_start=10597
// OP_STATE	5419	10597	0
// OP_STORE_V	7369	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magica11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5419 10597 0
    hknight_shot(SPAWNFLAG_LASER);
};

// hknight_magica12
// function begins at statement 18596, parm_start=10598
// OP_STATE	1423	10598	0
// OP_STORE_V	370	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magica12 =
{
    *** UNPROCESSED OPCODE OP_STATE 1423 10598 0
    hknight_shot(AS_MELEE);
};

// hknight_magica13
// function begins at statement 18600, parm_start=10599
// OP_STATE	5422	10599	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5422 10599 0
    ai_face();
};

// hknight_magica14
// function begins at statement 18603, parm_start=10600
// OP_STATE	5424	10425	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magica14 =
{
    *** UNPROCESSED OPCODE OP_STATE 5424 10425 0
    ai_face();
};

// hknight_magicb1
// function begins at statement 18606, parm_start=10601
// OP_STATE	5426	10601	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5426 10601 0
    ai_face();
};

// hknight_magicb2
// function begins at statement 18609, parm_start=10602
// OP_STATE	5427	10602	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5427 10602 0
    ai_face();
};

// hknight_magicb3
// function begins at statement 18612, parm_start=10603
// OP_STATE	5429	10603	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5429 10603 0
    ai_face();
};

// hknight_magicb4
// function begins at statement 18615, parm_start=10604
// OP_STATE	5431	10604	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5431 10604 0
    ai_face();
};

// hknight_magicb5
// function begins at statement 18618, parm_start=10605
// OP_STATE	5433	10605	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5433 10605 0
    ai_face();
};

// hknight_magicb6
// function begins at statement 18621, parm_start=10606
// OP_STATE	5435	10606	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5435 10606 0
    ai_face();
};

// hknight_magicb7
// function begins at statement 18624, parm_start=10607
// OP_STATE	5437	10607	0
// OP_STORE_V	277	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicb7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5437 10607 0
    hknight_shot(CONTENT_SOLID);
};

// hknight_magicb8
// function begins at statement 18628, parm_start=10608
// OP_STATE	1884	10608	0
// OP_STORE_V	276	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicb8 =
{
    *** UNPROCESSED OPCODE OP_STATE 1884 10608 0
    hknight_shot(CONTENT_EMPTY);
};

// hknight_magicb9
// function begins at statement 18632, parm_start=10609
// OP_STATE	5440	10609	0
// OP_STORE_V	337	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicb9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5440 10609 0
    hknight_shot(MSG_BROADCAST);
};

// hknight_magicb10
// function begins at statement 18636, parm_start=10610
// OP_STATE	5442	10610	0
// OP_STORE_V	9491	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicb10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5442 10610 0
    hknight_shot(SPAWN_CRUCIFIED);
};

// hknight_magicb11
// function begins at statement 18640, parm_start=10611
// OP_STATE	4971	10611	0
// OP_STORE_V	7369	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicb11 =
{
    *** UNPROCESSED OPCODE OP_STATE 4971 10611 0
    hknight_shot(SPAWNFLAG_LASER);
};

// hknight_magicb12
// function begins at statement 18644, parm_start=10612
// OP_STATE	4986	10612	0
// OP_STORE_V	370	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicb12 =
{
    *** UNPROCESSED OPCODE OP_STATE 4986 10612 0
    hknight_shot(AS_MELEE);
};

// hknight_magicb13
// function begins at statement 18648, parm_start=10613
// OP_STATE	5000	10425	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicb13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5000 10425 0
    ai_face();
};

// hknight_magicc1
// function begins at statement 18651, parm_start=10614
// OP_STATE	9797	10614	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicc1 =
{
    *** UNPROCESSED OPCODE OP_STATE 9797 10614 0
    ai_face();
};

// hknight_magicc2
// function begins at statement 18654, parm_start=10615
// OP_STATE	9799	10615	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicc2 =
{
    *** UNPROCESSED OPCODE OP_STATE 9799 10615 0
    ai_face();
};

// hknight_magicc3
// function begins at statement 18657, parm_start=10616
// OP_STATE	9801	10616	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicc3 =
{
    *** UNPROCESSED OPCODE OP_STATE 9801 10616 0
    ai_face();
};

// hknight_magicc4
// function begins at statement 18660, parm_start=10617
// OP_STATE	9803	10617	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicc4 =
{
    *** UNPROCESSED OPCODE OP_STATE 9803 10617 0
    ai_face();
};

// hknight_magicc5
// function begins at statement 18663, parm_start=10618
// OP_STATE	9805	10618	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () hknight_magicc5 =
{
    *** UNPROCESSED OPCODE OP_STATE 9805 10618 0
    ai_face();
};

// hknight_magicc6
// function begins at statement 18666, parm_start=10619
// OP_STATE	7324	10619	0
// OP_STORE_V	277	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicc6 =
{
    *** UNPROCESSED OPCODE OP_STATE 7324 10619 0
    hknight_shot(CONTENT_SOLID);
};

// hknight_magicc7
// function begins at statement 18670, parm_start=10620
// OP_STATE	9808	10620	0
// OP_STORE_V	276	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicc7 =
{
    *** UNPROCESSED OPCODE OP_STATE 9808 10620 0
    hknight_shot(CONTENT_EMPTY);
};

// hknight_magicc8
// function begins at statement 18674, parm_start=10621
// OP_STATE	9810	10621	0
// OP_STORE_V	337	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicc8 =
{
    *** UNPROCESSED OPCODE OP_STATE 9810 10621 0
    hknight_shot(MSG_BROADCAST);
};

// hknight_magicc9
// function begins at statement 18678, parm_start=10622
// OP_STATE	9813	10622	0
// OP_STORE_V	9491	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicc9 =
{
    *** UNPROCESSED OPCODE OP_STATE 9813 10622 0
    hknight_shot(SPAWN_CRUCIFIED);
};

// hknight_magicc10
// function begins at statement 18682, parm_start=10623
// OP_STATE	9815	10623	0
// OP_STORE_V	7369	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicc10 =
{
    *** UNPROCESSED OPCODE OP_STATE 9815 10623 0
    hknight_shot(SPAWNFLAG_LASER);
};

// hknight_magicc11
// function begins at statement 18686, parm_start=10624
// OP_STATE	9817	10425	0
// OP_STORE_V	370	4	0
// OP_CALL1	10427	0	0
// OP_DONE	0	0	0
void () hknight_magicc11 =
{
    *** UNPROCESSED OPCODE OP_STATE 9817 10425 0
    hknight_shot(AS_MELEE);
};

// hknight_char_a1
// function begins at statement 18690, parm_start=10624
// OP_STATE	3872	10624	0
// OP_STORE_V	894	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a1 =
{
    *** UNPROCESSED OPCODE OP_STATE 3872 10624 0
    ai_charge(20.000);
};

// hknight_char_a2
// function begins at statement 18694, parm_start=10625
// OP_STATE	260	10625	0
// OP_STORE_V	1890	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a2 =
{
    *** UNPROCESSED OPCODE OP_STATE 260 10625 0
    ai_charge(25.000);
};

// hknight_char_a3
// function begins at statement 18698, parm_start=10626
// OP_STATE	5375	10626	0
// OP_STORE_V	3319	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5375 10626 0
    ai_charge(18.000);
};

// hknight_char_a4
// function begins at statement 18702, parm_start=10627
// OP_STATE	5377	10627	0
// OP_STORE_V	6078	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5377 10627 0
    ai_charge(SECRET_YES_SHOOT);
};

// hknight_char_a5
// function begins at statement 18706, parm_start=10628
// OP_STATE	5379	10628	0
// OP_STORE_V	2901	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5379 10628 0
    ai_charge(14.000);
};

// hknight_char_a6
// function begins at statement 18710, parm_start=10629
// OP_STATE	5381	10629	0
// OP_STORE_V	894	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_a6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5381 10629 0
    ai_charge(20.000);
    ai_melee();
};

// hknight_char_a7
// function begins at statement 18715, parm_start=10630
// OP_STATE	5383	10630	0
// OP_STORE_V	7779	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_a7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5383 10630 0
    ai_charge(21.000);
    ai_melee();
};

// hknight_char_a8
// function begins at statement 18720, parm_start=10631
// OP_STATE	5384	10631	0
// OP_STORE_V	7768	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_a8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5384 10631 0
    ai_charge(13.000);
    ai_melee();
};

// hknight_char_a9
// function begins at statement 18725, parm_start=10632
// OP_STATE	5386	10632	0
// OP_STORE_V	894	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_a9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5386 10632 0
    ai_charge(20.000);
    ai_melee();
};

// hknight_char_a10
// function begins at statement 18730, parm_start=10633
// OP_STATE	5388	10633	0
// OP_STORE_V	894	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_a10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5388 10633 0
    ai_charge(20.000);
    ai_melee();
};

// hknight_char_a11
// function begins at statement 18735, parm_start=10634
// OP_STATE	2739	10634	0
// OP_STORE_V	3319	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_a11 =
{
    *** UNPROCESSED OPCODE OP_STATE 2739 10634 0
    ai_charge(18.000);
    ai_melee();
};

// hknight_char_a12
// function begins at statement 18740, parm_start=10635
// OP_STATE	5391	10635	0
// OP_STORE_V	6078	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a12 =
{
    *** UNPROCESSED OPCODE OP_STATE 5391 10635 0
    ai_charge(SECRET_YES_SHOOT);
};

// hknight_char_a13
// function begins at statement 18744, parm_start=10636
// OP_STATE	5393	10636	0
// OP_STORE_V	2901	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5393 10636 0
    ai_charge(14.000);
};

// hknight_char_a14
// function begins at statement 18748, parm_start=10637
// OP_STATE	5395	10637	0
// OP_STORE_V	1890	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a14 =
{
    *** UNPROCESSED OPCODE OP_STATE 5395 10637 0
    ai_charge(25.000);
};

// hknight_char_a15
// function begins at statement 18752, parm_start=10638
// OP_STATE	5397	10638	0
// OP_STORE_V	7779	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a15 =
{
    *** UNPROCESSED OPCODE OP_STATE 5397 10638 0
    ai_charge(21.000);
};

// hknight_char_a16
// function begins at statement 18756, parm_start=10639
// OP_STATE	5399	10425	0
// OP_STORE_V	7768	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_char_a16 =
{
    *** UNPROCESSED OPCODE OP_STATE 5399 10425 0
    ai_charge(13.000);
};

// hknight_char_b1
// function begins at statement 18760, parm_start=10640
// OP_STATE	5015	10640	0
// OP_CALL0	10507	0	0
// OP_STORE_V	301	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_b1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5015 10640 0
    CheckContinueCharge();
    ai_charge(SVC_TEMPENTITY);
    ai_melee();
};

// hknight_char_b2
// function begins at statement 18766, parm_start=10641
// OP_STATE	5029	10641	0
// OP_STORE_V	4861	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_b2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5029 10641 0
    ai_charge(17.000);
    ai_melee();
};

// hknight_char_b3
// function begins at statement 18771, parm_start=10642
// OP_STATE	5035	10642	0
// OP_STORE_V	2250	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_b3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5035 10642 0
    ai_charge(12.000);
    ai_melee();
};

// hknight_char_b4
// function begins at statement 18776, parm_start=10643
// OP_STATE	5038	10643	0
// OP_STORE_V	7781	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_b4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5038 10643 0
    ai_charge(22.000);
    ai_melee();
};

// hknight_char_b5
// function begins at statement 18781, parm_start=10644
// OP_STATE	5041	10644	0
// OP_STORE_V	3319	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_b5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5041 10644 0
    ai_charge(18.000);
    ai_melee();
};

// hknight_char_b6
// function begins at statement 18786, parm_start=10645
// OP_STATE	5044	10639	0
// OP_STORE_V	6077	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_char_b6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5044 10639 0
    ai_charge(SECRET_NO_SHOOT);
    ai_melee();
};

// hknight_slice1
// function begins at statement 18791, parm_start=10646
// OP_STATE	5047	10646	0
// OP_STORE_V	317	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_slice1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5047 10646 0
    ai_charge(TE_LIGHTNING3);
};

// hknight_slice2
// function begins at statement 18795, parm_start=10647
// OP_STATE	4909	10647	0
// OP_STORE_V	314	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_slice2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4909 10647 0
    ai_charge(TE_LIGHTNING2);
};

// hknight_slice3
// function begins at statement 18799, parm_start=10648
// OP_STATE	4915	10648	0
// OP_STORE_V	7768	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_slice3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4915 10648 0
    ai_charge(13.000);
};

// hknight_slice4
// function begins at statement 18803, parm_start=10649
// OP_STATE	4918	10649	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_slice4 =
{
    *** UNPROCESSED OPCODE OP_STATE 4918 10649 0
    ai_charge(SECRET_1ST_DOWN);
};

// hknight_slice5
// function begins at statement 18807, parm_start=10650
// OP_STATE	4921	10650	0
// OP_STORE_V	315	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_slice5 =
{
    *** UNPROCESSED OPCODE OP_STATE 4921 10650 0
    ai_charge(TE_WIZSPIKE);
    ai_melee();
};

// hknight_slice6
// function begins at statement 18812, parm_start=10651
// OP_STATE	4924	10651	0
// OP_STORE_V	1876	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_slice6 =
{
    *** UNPROCESSED OPCODE OP_STATE 4924 10651 0
    ai_charge(15.000);
    ai_melee();
};

// hknight_slice7
// function begins at statement 18817, parm_start=10652
// OP_STATE	4927	10652	0
// OP_STORE_V	6077	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_slice7 =
{
    *** UNPROCESSED OPCODE OP_STATE 4927 10652 0
    ai_charge(SECRET_NO_SHOOT);
    ai_melee();
};

// hknight_slice8
// function begins at statement 18822, parm_start=10653
// OP_STATE	4929	10653	0
// OP_STORE_V	7369	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_slice8 =
{
    *** UNPROCESSED OPCODE OP_STATE 4929 10653 0
    ai_charge(SPAWNFLAG_LASER);
    ai_melee();
};

// hknight_slice9
// function begins at statement 18827, parm_start=10654
// OP_STATE	1164	10654	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_slice9 =
{
    *** UNPROCESSED OPCODE OP_STATE 1164 10654 0
    ai_melee();
};

// hknight_slice10
// function begins at statement 18830, parm_start=10655
// OP_STATE	4934	10425	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_slice10 =
{
    *** UNPROCESSED OPCODE OP_STATE 4934 10425 0
    ai_charge(AS_MELEE);
};

// hknight_smash1
// function begins at statement 18834, parm_start=10656
// OP_STATE	4937	10656	0
// OP_STORE_V	9491	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_smash1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4937 10656 0
    ai_charge(SPAWN_CRUCIFIED);
};

// hknight_smash2
// function begins at statement 18838, parm_start=10657
// OP_STATE	7942	10657	0
// OP_STORE_V	7768	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_smash2 =
{
    *** UNPROCESSED OPCODE OP_STATE 7942 10657 0
    ai_charge(13.000);
};

// hknight_smash3
// function begins at statement 18842, parm_start=10658
// OP_STATE	7944	10658	0
// OP_STORE_V	317	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_smash3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7944 10658 0
    ai_charge(TE_LIGHTNING3);
};

// hknight_smash4
// function begins at statement 18846, parm_start=10659
// OP_STATE	4939	10659	0
// OP_STORE_V	319	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_smash4 =
{
    *** UNPROCESSED OPCODE OP_STATE 4939 10659 0
    ai_charge(TE_TELEPORT);
};

// hknight_smash5
// function begins at statement 18850, parm_start=10660
// OP_STATE	4942	10660	0
// OP_STORE_V	318	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_smash5 =
{
    *** UNPROCESSED OPCODE OP_STATE 4942 10660 0
    ai_charge(TE_LAVASPLASH);
    ai_melee();
};

// hknight_smash6
// function begins at statement 18855, parm_start=10661
// OP_STATE	4945	10661	0
// OP_STORE_V	315	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_smash6 =
{
    *** UNPROCESSED OPCODE OP_STATE 4945 10661 0
    ai_charge(TE_WIZSPIKE);
    ai_melee();
};

// hknight_smash7
// function begins at statement 18860, parm_start=10662
// OP_STATE	261	10662	0
// OP_STORE_V	2250	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_smash7 =
{
    *** UNPROCESSED OPCODE OP_STATE 261 10662 0
    ai_charge(12.000);
    ai_melee();
};

// hknight_smash8
// function begins at statement 18865, parm_start=10663
// OP_STATE	7952	10663	0
// OP_STORE_V	7369	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_smash8 =
{
    *** UNPROCESSED OPCODE OP_STATE 7952 10663 0
    ai_charge(SPAWNFLAG_LASER);
    ai_melee();
};

// hknight_smash9
// function begins at statement 18870, parm_start=10664
// OP_STATE	7954	10664	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_smash9 =
{
    *** UNPROCESSED OPCODE OP_STATE 7954 10664 0
    ai_charge(AS_MELEE);
    ai_melee();
};

// hknight_smash10
// function begins at statement 18875, parm_start=10665
// OP_STATE	4949	10665	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_smash10 =
{
    *** UNPROCESSED OPCODE OP_STATE 4949 10665 0
    ai_charge(MSG_BROADCAST);
};

// hknight_smash11
// function begins at statement 18879, parm_start=10666
// OP_STATE	4952	10425	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_smash11 =
{
    *** UNPROCESSED OPCODE OP_STATE 4952 10425 0
    ai_charge(MSG_BROADCAST);
};

// hknight_watk1
// function begins at statement 18883, parm_start=10667
// OP_STATE	4955	10667	0
// OP_STORE_V	7369	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk1 =
{
    *** UNPROCESSED OPCODE OP_STATE 4955 10667 0
    ai_charge(SPAWNFLAG_LASER);
};

// hknight_watk2
// function begins at statement 18887, parm_start=10668
// OP_STATE	4958	10668	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4958 10668 0
    ai_charge(MSG_BROADCAST);
};

// hknight_watk3
// function begins at statement 18891, parm_start=10669
// OP_STATE	7960	10669	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7960 10669 0
    ai_charge(MSG_BROADCAST);
};

// hknight_watk4
// function begins at statement 18895, parm_start=10670
// OP_STATE	9764	10670	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk4 =
{
    *** UNPROCESSED OPCODE OP_STATE 9764 10670 0
    ai_melee();
};

// hknight_watk5
// function begins at statement 18898, parm_start=10671
// OP_STATE	4960	10671	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk5 =
{
    *** UNPROCESSED OPCODE OP_STATE 4960 10671 0
    ai_melee();
};

// hknight_watk6
// function begins at statement 18901, parm_start=10672
// OP_STATE	4963	10672	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk6 =
{
    *** UNPROCESSED OPCODE OP_STATE 4963 10672 0
    ai_melee();
};

// hknight_watk7
// function begins at statement 18904, parm_start=10673
// OP_STATE	4966	10673	0
// OP_STORE_V	9491	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk7 =
{
    *** UNPROCESSED OPCODE OP_STATE 4966 10673 0
    ai_charge(SPAWN_CRUCIFIED);
};

// hknight_watk8
// function begins at statement 18908, parm_start=10674
// OP_STATE	4969	10674	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk8 =
{
    *** UNPROCESSED OPCODE OP_STATE 4969 10674 0
    ai_charge(SECRET_1ST_DOWN);
};

// hknight_watk9
// function begins at statement 18912, parm_start=10675
// OP_STATE	9770	10675	0
// OP_STORE_V	313	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk9 =
{
    *** UNPROCESSED OPCODE OP_STATE 9770 10675 0
    ai_charge(TE_LIGHTNING1);
};

// hknight_watk10
// function begins at statement 18916, parm_start=10676
// OP_STATE	9772	10676	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk10 =
{
    *** UNPROCESSED OPCODE OP_STATE 9772 10676 0
    ai_charge(AS_MELEE);
    ai_melee();
};

// hknight_watk11
// function begins at statement 18921, parm_start=10677
// OP_STATE	9774	10677	0
// OP_STORE_V	7369	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk11 =
{
    *** UNPROCESSED OPCODE OP_STATE 9774 10677 0
    ai_charge(SPAWNFLAG_LASER);
    ai_melee();
};

// hknight_watk12
// function begins at statement 18926, parm_start=10678
// OP_STATE	9776	10678	0
// OP_STORE_V	7369	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk12 =
{
    *** UNPROCESSED OPCODE OP_STATE 9776 10678 0
    ai_charge(SPAWNFLAG_LASER);
    ai_melee();
};

// hknight_watk13
// function begins at statement 18931, parm_start=10679
// OP_STATE	9778	10679	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk13 =
{
    *** UNPROCESSED OPCODE OP_STATE 9778 10679 0
    ai_charge(MSG_BROADCAST);
};

// hknight_watk14
// function begins at statement 18935, parm_start=10680
// OP_STATE	9780	10680	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk14 =
{
    *** UNPROCESSED OPCODE OP_STATE 9780 10680 0
    ai_charge(MSG_BROADCAST);
};

// hknight_watk15
// function begins at statement 18939, parm_start=10681
// OP_STATE	9782	10681	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk15 =
{
    *** UNPROCESSED OPCODE OP_STATE 9782 10681 0
    ai_charge(MSG_BROADCAST);
};

// hknight_watk16
// function begins at statement 18943, parm_start=10682
// OP_STATE	9784	10682	0
// OP_STORE_V	9491	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk16 =
{
    *** UNPROCESSED OPCODE OP_STATE 9784 10682 0
    ai_charge(SPAWN_CRUCIFIED);
};

// hknight_watk17
// function begins at statement 18947, parm_start=10683
// OP_STATE	9786	10683	0
// OP_STORE_V	9491	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk17 =
{
    *** UNPROCESSED OPCODE OP_STATE 9786 10683 0
    ai_charge(SPAWN_CRUCIFIED);
    ai_melee();
};

// hknight_watk18
// function begins at statement 18952, parm_start=10684
// OP_STATE	1960	10684	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk18 =
{
    *** UNPROCESSED OPCODE OP_STATE 1960 10684 0
    ai_charge(AS_MELEE);
    ai_melee();
};

// hknight_watk19
// function begins at statement 18957, parm_start=10685
// OP_STATE	9789	10685	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () hknight_watk19 =
{
    *** UNPROCESSED OPCODE OP_STATE 9789 10685 0
    ai_charge(SECRET_1ST_DOWN);
    ai_melee();
};

// hknight_watk20
// function begins at statement 18962, parm_start=10686
// OP_STATE	9791	10686	0
// OP_STORE_V	314	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk20 =
{
    *** UNPROCESSED OPCODE OP_STATE 9791 10686 0
    ai_charge(TE_LIGHTNING2);
};

// hknight_watk21
// function begins at statement 18966, parm_start=10687
// OP_STATE	9793	10687	0
// OP_STORE_V	315	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk21 =
{
    *** UNPROCESSED OPCODE OP_STATE 9793 10687 0
    ai_charge(TE_WIZSPIKE);
};

// hknight_watk22
// function begins at statement 18970, parm_start=10688
// OP_STATE	9795	10425	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () hknight_watk22 =
{
    *** UNPROCESSED OPCODE OP_STATE 9795 10425 0
    ai_charge(AS_MELEE);
};

// hk_idle_sound
// function begins at statement 18974, parm_start=10688
// OP_CALL0	452	0	0
// OP_LT	1	836	10688
// OP_IFNOT	10688	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10689	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () hk_idle_sound =
{
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "hknight/idle.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    
};

// hknight_pain
// function begins at statement 18984, parm_start=10691
// OP_LOAD_F	28	374	10693
// OP_GT	10693	31	10694
// OP_IFNOT	10694	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10549	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	374	10695
// OP_SUB_F	31	10695	10696
// OP_GT	10696	313	10697
// OP_IFNOT	10697	6	0
// OP_CALL0	10547	0	0
// OP_ADDRESS	28	374	10698
// OP_ADD_F	31	9491	10699
// OP_STOREP_F	10699	10698	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	304	10700
// OP_GT	10700	10692	10701
// OP_IFNOT	10701	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	374	10702
// OP_ADD_F	31	9491	10703
// OP_STOREP_F	10703	10702	0
// OP_CALL0	10547	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) hknight_pain =
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/pain1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    
    if((time - self.pain_finished) > TE_LIGHTNING1)
    {
        hknight_pain1();
        self.pain_finished = time + SPAWN_CRUCIFIED;
        return;
    }
    
    
    if((random() * SVC_INTERMISSION) > damage)
    {
        return;
    }
    
    self.pain_finished = time + SPAWN_CRUCIFIED;
    hknight_pain1();
};

float hknight_type;
// hknight_melee
// function begins at statement 19013, parm_start=10706
// OP_ADD_F	10704	9491	10706
// OP_STORE_F	10706	10704	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10707	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_EQ_F	10704	9491	10708
// OP_IFNOT	10708	3	0
// OP_CALL0	10645	0	0
// OP_GOTO	9	0	0
// OP_EQ_F	10704	7369	10709
// OP_IFNOT	10709	3	0
// OP_CALL0	10655	0	0
// OP_GOTO	5	0	0
// OP_EQ_F	10704	370	10710
// OP_IFNOT	10710	3	0
// OP_CALL0	10666	0	0
// OP_STORE_F	337	10704	0
// OP_DONE	0	0	0
void () hknight_melee =
{
    hknight_type = hknight_type + SPAWN_CRUCIFIED;
    sound(self, CHAN_WEAPON, "hknight/slash1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    if(hknight_type == SPAWN_CRUCIFIED)
    {
        hknight_slice1();
    }
    else if(hknight_type == SPAWNFLAG_LASER)
    {
        hknight_smash1();
    }
    else    
 if(hknight_type == AS_MELEE)
    {
        hknight_watk1();
        hknight_type = MSG_BROADCAST;
    }
    
};

// monster_hell_knight
// function begins at statement 19034, parm_start=10712
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10712	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10479	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10579	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10486	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10584	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10549	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1265	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10713	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	10707	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10689	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10714	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8578	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8577	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	10715
// OP_STOREP_F	240	10715	0
// OP_ADDRESS	28	103	10716
// OP_STOREP_F	229	10716	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10712	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	8669	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	10717
// OP_STOREP_F	1859	10717	0
// OP_ADDRESS	28	356	10718
// OP_STOREP_FNC	10511	10718	0
// OP_ADDRESS	28	357	10719
// OP_STOREP_FNC	10520	10719	0
// OP_ADDRESS	28	358	10720
// OP_STOREP_FNC	10425	10720	0
// OP_ADDRESS	28	360	10721
// OP_STOREP_FNC	10705	10721	0
// OP_ADDRESS	28	359	10722
// OP_STOREP_FNC	10613	10722	0
// OP_ADDRESS	28	361	10723
// OP_STOREP_FNC	10690	10723	0
// OP_ADDRESS	28	362	10724
// OP_STOREP_FNC	10576	10724	0
// OP_CALL0	5557	0	0
// OP_DONE	0	0	0
void () monster_hell_knight =
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/hknight.mdl");
    precache_model2("progs/k_spike.mdl");
    precache_model2("progs/h_hellkn.mdl");
    precache_sound2("hknight/attack1.wav");
    precache_sound2("hknight/death1.wav");
    precache_sound2("hknight/pain1.wav");
    precache_sound2("hknight/sight1.wav");
    precache_sound("hknight/hit.wav");
    precache_sound2("hknight/slash1.wav");
    precache_sound2("hknight/idle.wav");
    precache_sound2("hknight/grunt.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/hknight.mdl");
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = 250.000;
    self.th_stand = hknight_stand1;
    self.th_walk = hknight_walk1;
    self.th_run = hknight_run1;
    self.th_melee = hknight_melee;
    self.th_missile = hknight_magicc1;
    self.th_pain = hknight_pain;
    self.th_die = hknight_die;
    walkmonster_start();
};

