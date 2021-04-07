// knight_stand1
// function begins at statement 14044, parm_start=8543
// OP_STATE	337	8543	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand1 = [0, knight_stand2]
{
    ai_stand();
};

// knight_stand2
// function begins at statement 14047, parm_start=8544
// OP_STATE	7368	8544	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand2 = [1, knight_stand3]
{
    ai_stand();
};

// knight_stand3
// function begins at statement 14050, parm_start=8545
// OP_STATE	7369	8545	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand3 = [2, knight_stand4]
{
    ai_stand();
};

// knight_stand4
// function begins at statement 14053, parm_start=8546
// OP_STATE	370	8546	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand4 = [3, knight_stand5]
{
    ai_stand();
};

// knight_stand5
// function begins at statement 14056, parm_start=8547
// OP_STATE	6076	8547	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand5 = [4, knight_stand6]
{
    ai_stand();
};

// knight_stand6
// function begins at statement 14059, parm_start=8548
// OP_STATE	313	8548	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand6 = [5, knight_stand7]
{
    ai_stand();
};

// knight_stand7
// function begins at statement 14062, parm_start=8549
// OP_STATE	314	8549	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand7 = [6, knight_stand8]
{
    ai_stand();
};

// knight_stand8
// function begins at statement 14065, parm_start=8550
// OP_STATE	315	8550	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand8 = [7, knight_stand9]
{
    ai_stand();
};

// knight_stand9
// function begins at statement 14068, parm_start=8551
// OP_STATE	6077	8542	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () knight_stand9 = [8, knight_stand1]
{
    ai_stand();
};

// knight_walk1
// function begins at statement 14071, parm_start=8551
// OP_STATE	5355	8551	0
// OP_CALL0	452	0	0
// OP_LT	1	836	8552
// OP_IFNOT	8552	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8553	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk1 = [53, knight_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_walk(AS_MELEE);
};

// knight_walk2
// function begins at statement 14084, parm_start=8554
// OP_STATE	5357	8554	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk2 = [54, knight_walk3]
{
    ai_walk(SPAWNFLAG_LASER);
};

// knight_walk3
// function begins at statement 14088, parm_start=8555
// OP_STATE	5359	8555	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk3 = [55, knight_walk4]
{
    ai_walk(AS_MELEE);
};

// knight_walk4
// function begins at statement 14092, parm_start=8556
// OP_STATE	5361	8556	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk4 = [56, knight_walk5]
{
    ai_walk(SECRET_1ST_DOWN);
};

// knight_walk5
// function begins at statement 14096, parm_start=8557
// OP_STATE	5363	8557	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk5 = [57, knight_walk6]
{
    ai_walk(AS_MELEE);
};

// knight_walk6
// function begins at statement 14100, parm_start=8558
// OP_STATE	5365	8558	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk6 = [58, knight_walk7]
{
    ai_walk(AS_MELEE);
};

// knight_walk7
// function begins at statement 14104, parm_start=8559
// OP_STATE	5367	8559	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk7 = [59, knight_walk8]
{
    ai_walk(AS_MELEE);
};

// knight_walk8
// function begins at statement 14108, parm_start=8560
// OP_STATE	912	8560	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk8 = [60, knight_walk9]
{
    ai_walk(SECRET_1ST_DOWN);
};

// knight_walk9
// function begins at statement 14112, parm_start=8561
// OP_STATE	5369	8561	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk9 = [61, knight_walk10]
{
    ai_walk(AS_MELEE);
};

// knight_walk10
// function begins at statement 14116, parm_start=8562
// OP_STATE	5371	8562	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk10 = [62, knight_walk11]
{
    ai_walk(AS_MELEE);
};

// knight_walk11
// function begins at statement 14120, parm_start=8563
// OP_STATE	3872	8563	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk11 = [63, knight_walk12]
{
    ai_walk(SPAWNFLAG_LASER);
};

// knight_walk12
// function begins at statement 14124, parm_start=8564
// OP_STATE	260	8564	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk12 = [64, knight_walk13]
{
    ai_walk(AS_MELEE);
};

// knight_walk13
// function begins at statement 14128, parm_start=8565
// OP_STATE	5375	8565	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk13 = [65, knight_walk14]
{
    ai_walk(SECRET_1ST_DOWN);
};

// knight_walk14
// function begins at statement 14132, parm_start=8566
// OP_STATE	5377	1083	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () knight_walk14 = [66, knight_walk1]
{
    ai_walk(AS_MELEE);
};

// knight_run1
// function begins at statement 14136, parm_start=8567
// OP_STATE	317	8567	0
// OP_CALL0	452	0	0
// OP_LT	1	836	8568
// OP_IFNOT	8568	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8553	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run1 = [9, knight_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_run(SECRET_YES_SHOOT);
};

// knight_run2
// function begins at statement 14149, parm_start=8569
// OP_STATE	318	8569	0
// OP_STORE_V	894	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run2 = [10, knight_run3]
{
    ai_run(20);
};

// knight_run3
// function begins at statement 14153, parm_start=8570
// OP_STATE	319	8570	0
// OP_STORE_V	7768	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run3 = [11, knight_run4]
{
    ai_run(13);
};

// knight_run4
// function begins at statement 14157, parm_start=8571
// OP_STATE	2250	8571	0
// OP_STORE_V	315	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run4 = [12, knight_run5]
{
    ai_run(TE_WIZSPIKE);
};

// knight_run5
// function begins at statement 14161, parm_start=8572
// OP_STATE	7768	8572	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run5 = [13, knight_run6]
{
    ai_run(SECRET_YES_SHOOT);
};

// knight_run6
// function begins at statement 14165, parm_start=8573
// OP_STATE	2901	8573	0
// OP_STORE_V	894	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run6 = [14, knight_run7]
{
    ai_run(20);
};

// knight_run7
// function begins at statement 14169, parm_start=8574
// OP_STATE	1876	8574	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run7 = [15, knight_run8]
{
    ai_run(14);
};

// knight_run8
// function begins at statement 14173, parm_start=8575
// OP_STATE	6078	8566	0
// OP_STORE_V	314	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () knight_run8 = [16, knight_run1]
{
    ai_run(TE_LIGHTNING2);
};

// knight_runatk1
// function begins at statement 14177, parm_start=8575
// OP_STATE	4861	8575	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	8576
// OP_IFNOT	8576	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8577	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8578	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	894	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_runatk1 = [17, knight_runatk2]
{
    if(random() > 0.5)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    }
    
    ai_charge(20);
};

// knight_runatk2
// function begins at statement 14197, parm_start=8579
// OP_STATE	3319	8579	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
void () knight_runatk2 = [18, knight_runatk3]
{
    ai_charge_side();
};

// knight_runatk3
// function begins at statement 14200, parm_start=8580
// OP_STATE	7776	8580	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
void () knight_runatk3 = [19, knight_runatk4]
{
    ai_charge_side();
};

// knight_runatk4
// function begins at statement 14203, parm_start=8581
// OP_STATE	894	8581	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
void () knight_runatk4 = [20, knight_runatk5]
{
    ai_charge_side();
};

// knight_runatk5
// function begins at statement 14206, parm_start=8582
// OP_STATE	7779	8582	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
void () knight_runatk5 = [21, knight_runatk6]
{
    ai_melee_side();
};

// knight_runatk6
// function begins at statement 14209, parm_start=8583
// OP_STATE	7781	8583	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
void () knight_runatk6 = [22, knight_runatk7]
{
    ai_melee_side();
};

// knight_runatk7
// function begins at statement 14212, parm_start=8584
// OP_STATE	301	8584	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
void () knight_runatk7 = [23, knight_runatk8]
{
    ai_melee_side();
};

// knight_runatk8
// function begins at statement 14215, parm_start=8585
// OP_STATE	4437	8585	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
void () knight_runatk8 = [24, knight_runatk9]
{
    ai_melee_side();
};

// knight_runatk9
// function begins at statement 14218, parm_start=8586
// OP_STATE	1890	8586	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
void () knight_runatk9 = [25, knight_runatk10]
{
    ai_melee_side();
};

// knight_runatk10
// function begins at statement 14221, parm_start=8587
// OP_STATE	7788	8587	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
void () knight_runatk10 = [26, knight_runatk11]
{
    ai_charge_side();
};

// knight_runatk11
// function begins at statement 14224, parm_start=8588
// OP_STATE	302	8566	0
// OP_STORE_V	318	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_runatk11 = [27, knight_run1]
{
    ai_charge(TE_LAVASPLASH);
};

// knight_atk1
// function begins at statement 14228, parm_start=8588
// OP_STATE	5447	8588	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8578	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk1 = [43, knight_atk2]
{
    sound(self, CHAN_WEAPON, "knight/sword1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    ai_charge(MSG_BROADCAST);
};

// knight_atk2
// function begins at statement 14238, parm_start=8589
// OP_STATE	5449	8589	0
// OP_STORE_V	315	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk2 = [44, knight_atk3]
{
    ai_charge(TE_WIZSPIKE);
};

// knight_atk3
// function begins at statement 14242, parm_start=8590
// OP_STATE	1390	8590	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk3 = [45, knight_atk4]
{
    ai_charge(SECRET_1ST_DOWN);
};

// knight_atk4
// function begins at statement 14246, parm_start=8591
// OP_STATE	5452	8591	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk4 = [46, knight_atk5]
{
    ai_charge(MSG_BROADCAST);
};

// knight_atk5
// function begins at statement 14250, parm_start=8592
// OP_STATE	5454	8592	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk5 = [47, knight_atk6]
{
    ai_charge(AS_MELEE);
};

// knight_atk6
// function begins at statement 14254, parm_start=8593
// OP_STATE	5456	8593	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () knight_atk6 = [48, knight_atk7]
{
    ai_charge(SECRET_1ST_DOWN);
    ai_melee();
};

// knight_atk7
// function begins at statement 14259, parm_start=8594
// OP_STATE	5458	8594	0
// OP_STORE_V	7368	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () knight_atk7 = [49, knight_atk8]
{
    ai_charge(SPAWNFLAG_SUPERSPIKE);
    ai_melee();
};

// knight_atk8
// function begins at statement 14264, parm_start=8595
// OP_STATE	2227	8595	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
void () knight_atk8 = [50, knight_atk9]
{
    ai_charge(AS_MELEE);
    ai_melee();
};

// knight_atk9
// function begins at statement 14269, parm_start=8596
// OP_STATE	5351	8596	0
// OP_STORE_V	7368	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk9 = [51, knight_atk10]
{
    ai_charge(SPAWNFLAG_SUPERSPIKE);
};

// knight_atk10
// function begins at statement 14273, parm_start=8597
// OP_STATE	5353	8566	0
// OP_STORE_V	313	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
void () knight_atk10 = [52, knight_run1]
{
    ai_charge(TE_LIGHTNING1);
};

// knight_pain1
// function begins at statement 14277, parm_start=8598
// OP_STATE	303	8598	0
// OP_DONE	0	0	0
void () knight_pain1 = [28, knight_pain2]
{
};

// knight_pain2
// function begins at statement 14279, parm_start=8599
// OP_STATE	5105	8599	0
// OP_DONE	0	0	0
void () knight_pain2 = [29, knight_pain3]
{
};

// knight_pain3
// function begins at statement 14281, parm_start=8600
// OP_STATE	304	8566	0
// OP_DONE	0	0	0
void () knight_pain3 = [30, knight_run1]
{
};

// knight_painb1
// function begins at statement 14283, parm_start=8601
// OP_STATE	305	8601	0
// OP_STORE_V	337	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb1 = [31, knight_painb2]
{
    ai_painforward(MSG_BROADCAST);
};

// knight_painb2
// function begins at statement 14287, parm_start=8602
// OP_STATE	5674	8602	0
// OP_STORE_V	370	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb2 = [32, knight_painb3]
{
    ai_painforward(AS_MELEE);
};

// knight_painb3
// function begins at statement 14291, parm_start=8603
// OP_STATE	307	8603	0
// OP_DONE	0	0	0
void () knight_painb3 = [33, knight_painb4]
{
};

// knight_painb4
// function begins at statement 14293, parm_start=8604
// OP_STATE	5112	8604	0
// OP_DONE	0	0	0
void () knight_painb4 = [34, knight_painb5]
{
};

// knight_painb5
// function begins at statement 14295, parm_start=8605
// OP_STATE	3072	8605	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb5 = [35, knight_painb6]
{
    ai_painforward(SPAWNFLAG_LASER);
};

// knight_painb6
// function begins at statement 14299, parm_start=8606
// OP_STATE	5096	8606	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb6 = [36, knight_painb7]
{
    ai_painforward(SECRET_1ST_DOWN);
};

// knight_painb7
// function begins at statement 14303, parm_start=8607
// OP_STATE	5098	8607	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb7 = [37, knight_painb8]
{
    ai_painforward(SPAWNFLAG_LASER);
};

// knight_painb8
// function begins at statement 14307, parm_start=8608
// OP_STATE	5100	8608	0
// OP_STORE_V	313	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb8 = [38, knight_painb9]
{
    ai_painforward(TE_LIGHTNING1);
};

// knight_painb9
// function begins at statement 14311, parm_start=8609
// OP_STATE	5102	8609	0
// OP_STORE_V	313	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb9 = [39, knight_painb10]
{
    ai_painforward(TE_LIGHTNING1);
};

// knight_painb10
// function begins at statement 14315, parm_start=8610
// OP_STATE	1733	8610	0
// OP_STORE_V	337	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () knight_painb10 = [40, knight_painb11]
{
    ai_painforward(MSG_BROADCAST);
};

// knight_painb11
// function begins at statement 14319, parm_start=8611
// OP_STATE	5443	8566	0
// OP_DONE	0	0	0
void () knight_painb11 = [41, knight_run1]
{
};

// knight_pain
// function begins at statement 14321, parm_start=8612
// OP_LOAD_F	28	374	8615
// OP_GT	8615	31	8616
// OP_IFNOT	8616	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	8614	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8617	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LT	8614	8618	8619
// OP_IFNOT	8619	6	0
// OP_CALL0	8597	0	0
// OP_ADDRESS	28	374	8620
// OP_ADD_F	31	7368	8621
// OP_STOREP_F	8621	8620	0
// OP_GOTO	5	0	0
// OP_CALL0	8600	0	0
// OP_ADDRESS	28	374	8622
// OP_ADD_F	31	7368	8623
// OP_STOREP_F	8623	8622	0
// OP_DONE	0	0	0
void (entity attacker, float damage) knight_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    r = random();
    sound(self, CHAN_VOICE, "knight/khurt.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    if(r < 0.85)
    {
        knight_pain1();
        self.pain_finished = time + SPAWNFLAG_SUPERSPIKE;
    }
    else
    {
        knight_painb1();
        self.pain_finished = time + SPAWNFLAG_SUPERSPIKE;
    }
    
};

// knight_bow1
// function begins at statement 14345, parm_start=8624
// OP_STATE	5379	8624	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow1 = [67, knight_bow2]
{
    ai_turn();
};

// knight_bow2
// function begins at statement 14348, parm_start=8625
// OP_STATE	5381	8625	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow2 = [68, knight_bow3]
{
    ai_turn();
};

// knight_bow3
// function begins at statement 14351, parm_start=8626
// OP_STATE	5383	8626	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow3 = [69, knight_bow4]
{
    ai_turn();
};

// knight_bow4
// function begins at statement 14354, parm_start=8627
// OP_STATE	5384	8627	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow4 = [70, knight_bow5]
{
    ai_turn();
};

// knight_bow5
// function begins at statement 14357, parm_start=8628
// OP_STATE	5386	8627	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow5 = [71, knight_bow5]
{
    ai_turn();
};

// knight_bow6
// function begins at statement 14360, parm_start=8628
// OP_STATE	5384	8628	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow6 = [70, knight_bow7]
{
    ai_turn();
};

// knight_bow7
// function begins at statement 14363, parm_start=8629
// OP_STATE	5383	8629	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow7 = [69, knight_bow8]
{
    ai_turn();
};

// knight_bow8
// function begins at statement 14366, parm_start=8630
// OP_STATE	5381	8630	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow8 = [68, knight_bow9]
{
    ai_turn();
};

// knight_bow9
// function begins at statement 14369, parm_start=8631
// OP_STATE	5379	8631	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow9 = [67, knight_bow10]
{
    ai_turn();
};

// knight_bow10
// function begins at statement 14372, parm_start=8632
// OP_STATE	5355	1083	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () knight_bow10 = [53, knight_walk1]
{
    ai_turn();
};

// knight_die1
// function begins at statement 14375, parm_start=8633
// OP_STATE	5395	8633	0
// OP_DONE	0	0	0
void () knight_die1 = [76, knight_die2]
{
};

// knight_die2
// function begins at statement 14377, parm_start=8634
// OP_STATE	5397	8634	0
// OP_DONE	0	0	0
void () knight_die2 = [77, knight_die3]
{
};

// knight_die3
// function begins at statement 14379, parm_start=8635
// OP_STATE	5399	8635	0
// OP_ADDRESS	28	104	8636
// OP_STOREP_F	237	8636	0
// OP_DONE	0	0	0
void () knight_die3 = [78, knight_die4]
{
    self.solid = SOLID_NOT;
};

// knight_die4
// function begins at statement 14383, parm_start=8637
// OP_STATE	5401	8637	0
// OP_DONE	0	0	0
void () knight_die4 = [79, knight_die5]
{
};

// knight_die5
// function begins at statement 14385, parm_start=8638
// OP_STATE	788	8638	0
// OP_DONE	0	0	0
void () knight_die5 = [80, knight_die6]
{
};

// knight_die6
// function begins at statement 14387, parm_start=8639
// OP_STATE	5404	8639	0
// OP_DONE	0	0	0
void () knight_die6 = [81, knight_die7]
{
};

// knight_die7
// function begins at statement 14389, parm_start=8640
// OP_STATE	5406	8640	0
// OP_DONE	0	0	0
void () knight_die7 = [82, knight_die8]
{
};

// knight_die8
// function begins at statement 14391, parm_start=8641
// OP_STATE	5408	8641	0
// OP_DONE	0	0	0
void () knight_die8 = [83, knight_die9]
{
};

// knight_die9
// function begins at statement 14393, parm_start=8642
// OP_STATE	5410	8642	0
// OP_DONE	0	0	0
void () knight_die9 = [84, knight_die10]
{
};

// knight_die10
// function begins at statement 14395, parm_start=8643
// OP_STATE	5411	8642	0
// OP_DONE	0	0	0
void () knight_die10 = [85, knight_die10]
{
};

// knight_dieb1
// function begins at statement 14397, parm_start=8644
// OP_STATE	5413	8644	0
// OP_DONE	0	0	0
void () knight_dieb1 = [86, knight_dieb2]
{
};

// knight_dieb2
// function begins at statement 14399, parm_start=8645
// OP_STATE	5415	8645	0
// OP_DONE	0	0	0
void () knight_dieb2 = [87, knight_dieb3]
{
};

// knight_dieb3
// function begins at statement 14401, parm_start=8646
// OP_STATE	5417	8646	0
// OP_ADDRESS	28	104	8647
// OP_STOREP_F	237	8647	0
// OP_DONE	0	0	0
void () knight_dieb3 = [88, knight_dieb4]
{
    self.solid = SOLID_NOT;
};

// knight_dieb4
// function begins at statement 14405, parm_start=8648
// OP_STATE	5419	8648	0
// OP_DONE	0	0	0
void () knight_dieb4 = [89, knight_dieb5]
{
};

// knight_dieb5
// function begins at statement 14407, parm_start=8649
// OP_STATE	1423	8649	0
// OP_DONE	0	0	0
void () knight_dieb5 = [90, knight_dieb6]
{
};

// knight_dieb6
// function begins at statement 14409, parm_start=8650
// OP_STATE	5422	8650	0
// OP_DONE	0	0	0
void () knight_dieb6 = [91, knight_dieb7]
{
};

// knight_dieb7
// function begins at statement 14411, parm_start=8651
// OP_STATE	5424	8651	0
// OP_DONE	0	0	0
void () knight_dieb7 = [92, knight_dieb8]
{
};

// knight_dieb8
// function begins at statement 14413, parm_start=8652
// OP_STATE	5426	8652	0
// OP_DONE	0	0	0
void () knight_dieb8 = [93, knight_dieb9]
{
};

// knight_dieb9
// function begins at statement 14415, parm_start=8653
// OP_STATE	5427	8653	0
// OP_DONE	0	0	0
void () knight_dieb9 = [94, knight_dieb10]
{
};

// knight_dieb10
// function begins at statement 14417, parm_start=8654
// OP_STATE	5429	8654	0
// OP_DONE	0	0	0
void () knight_dieb10 = [95, knight_dieb11]
{
};

// knight_dieb11
// function begins at statement 14419, parm_start=8655
// OP_STATE	5431	8654	0
// OP_DONE	0	0	0
void () knight_dieb11 = [96, knight_dieb11]
{
};

// knight_die
// function begins at statement 14421, parm_start=8656
// OP_LOAD_F	28	152	8656
// OP_LT	8656	4741	8657
// OP_IFNOT	8657	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	8659
// OP_STORE_V	8658	4	0
// OP_STORE_V	8659	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	8660
// OP_STORE_V	3852	4	0
// OP_STORE_V	8660	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	8661
// OP_STORE_V	3853	4	0
// OP_STORE_V	8661	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	8662
// OP_STORE_V	3854	4	0
// OP_STORE_V	8662	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8663	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_LT	1	1491	8664
// OP_IFNOT	8664	3	0
// OP_CALL0	8632	0	0
// OP_GOTO	2	0	0
// OP_CALL0	8643	0	0
// OP_DONE	0	0	0
void () knight_die = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        ThrowHead("progs/h_knight.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "knight/kdeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    if(random() < 0.5)
    {
        knight_die1();
    }
    else
    {
        knight_dieb1();
    }
    
};

// monster_knight
// function begins at statement 14460, parm_start=8666
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	8666	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8658	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8663	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8617	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1241	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8578	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8577	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	8553	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	8667
// OP_STOREP_F	240	8667	0
// OP_ADDRESS	28	103	8668
// OP_STOREP_F	229	8668	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8666	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	8669	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	8672
// OP_STOREP_F	5393	8672	0
// OP_ADDRESS	28	356	8673
// OP_STOREP_FNC	8542	8673	0
// OP_ADDRESS	28	357	8674
// OP_STOREP_FNC	1083	8674	0
// OP_ADDRESS	28	358	8675
// OP_STOREP_FNC	8566	8675	0
// OP_ADDRESS	28	360	8676
// OP_STOREP_FNC	748	8676	0
// OP_ADDRESS	28	361	8677
// OP_STOREP_FNC	8611	8677	0
// OP_ADDRESS	28	362	8678
// OP_STOREP_FNC	8655	8678	0
// OP_CALL0	5557	0	0
// OP_DONE	0	0	0
void () monster_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/knight.mdl");
    precache_model("progs/h_knight.mdl");
    precache_sound("knight/kdeath.wav");
    precache_sound("knight/khurt.wav");
    precache_sound("knight/ksight.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    precache_sound("knight/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/knight.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 75;
    self.th_stand = knight_stand1;
    self.th_walk = knight_walk1;
    self.th_run = knight_run1;
    self.th_melee = knight_atk1;
    self.th_pain = knight_pain;
    self.th_die = knight_die;
    walkmonster_start();
};

