/* TYPE: EV_POINTER */ ;
void() knight_stand1;
// knight_stand1
// function begins at statement 14044
// OP_STATE	337	8543	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 337 8543 0
    ai_stand();
};

void() knight_stand2;
// knight_stand2
// function begins at statement 14047
// OP_STATE	7368	8544	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7368 8544 0
    ai_stand();
};

void() knight_stand3;
// knight_stand3
// function begins at statement 14050
// OP_STATE	7369	8545	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7369 8545 0
    ai_stand();
};

void() knight_stand4;
// knight_stand4
// function begins at statement 14053
// OP_STATE	370	8546	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 370 8546 0
    ai_stand();
};

void() knight_stand5;
// knight_stand5
// function begins at statement 14056
// OP_STATE	6076	8547	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6076 8547 0
    ai_stand();
};

void() knight_stand6;
// knight_stand6
// function begins at statement 14059
// OP_STATE	313	8548	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 313 8548 0
    ai_stand();
};

void() knight_stand7;
// knight_stand7
// function begins at statement 14062
// OP_STATE	314	8549	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 314 8549 0
    ai_stand();
};

void() knight_stand8;
// knight_stand8
// function begins at statement 14065
// OP_STATE	315	8550	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 315 8550 0
    ai_stand();
};

void() knight_stand9;
// knight_stand9
// function begins at statement 14068
// OP_STATE	6077	8542	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_stand9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6077 8542 0
    ai_stand();
};

// knight_walk1
// function begins at statement 14071
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
%%RETURNTYPE%% () knight_walk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5355 8551 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_walk(AS_MELEE);
};

string IMMEDIATE = "knight/idle.wav";
// knight_walk2
// function begins at statement 14084
// OP_STATE	5357	8554	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5357 8554 0
    ai_walk(SPAWNFLAG_LASER);
};

void() knight_walk3;
// knight_walk3
// function begins at statement 14088
// OP_STATE	5359	8555	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5359 8555 0
    ai_walk(AS_MELEE);
};

void() knight_walk4;
// knight_walk4
// function begins at statement 14092
// OP_STATE	5361	8556	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5361 8556 0
    ai_walk(SECRET_1ST_DOWN);
};

void() knight_walk5;
// knight_walk5
// function begins at statement 14096
// OP_STATE	5363	8557	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5363 8557 0
    ai_walk(AS_MELEE);
};

void() knight_walk6;
// knight_walk6
// function begins at statement 14100
// OP_STATE	5365	8558	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5365 8558 0
    ai_walk(AS_MELEE);
};

void() knight_walk7;
// knight_walk7
// function begins at statement 14104
// OP_STATE	5367	8559	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5367 8559 0
    ai_walk(AS_MELEE);
};

void() knight_walk8;
// knight_walk8
// function begins at statement 14108
// OP_STATE	912	8560	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 912 8560 0
    ai_walk(SECRET_1ST_DOWN);
};

void() knight_walk9;
// knight_walk9
// function begins at statement 14112
// OP_STATE	5369	8561	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5369 8561 0
    ai_walk(AS_MELEE);
};

void() knight_walk10;
// knight_walk10
// function begins at statement 14116
// OP_STATE	5371	8562	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5371 8562 0
    ai_walk(AS_MELEE);
};

void() knight_walk11;
// knight_walk11
// function begins at statement 14120
// OP_STATE	3872	8563	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3872 8563 0
    ai_walk(SPAWNFLAG_LASER);
};

void() knight_walk12;
// knight_walk12
// function begins at statement 14124
// OP_STATE	260	8564	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 260 8564 0
    ai_walk(AS_MELEE);
};

void() knight_walk13;
// knight_walk13
// function begins at statement 14128
// OP_STATE	5375	8565	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5375 8565 0
    ai_walk(SECRET_1ST_DOWN);
};

void() knight_walk14;
// knight_walk14
// function begins at statement 14132
// OP_STATE	5377	1083	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_walk14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5377 1083 0
    ai_walk(AS_MELEE);
};

void() knight_run1;
// knight_run1
// function begins at statement 14136
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
%%RETURNTYPE%% () knight_run1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 317 8567 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
    }
    
    ai_run(SECRET_YES_SHOOT);
};

float ;
// knight_run2
// function begins at statement 14149
// OP_STATE	318	8569	0
// OP_STORE_V	894	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 318 8569 0
    ai_run(20.000);
};

void() knight_run3;
// knight_run3
// function begins at statement 14153
// OP_STATE	319	8570	0
// OP_STORE_V	7768	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 319 8570 0
    ai_run(13.000);
};

void() knight_run4;
// knight_run4
// function begins at statement 14157
// OP_STATE	2250	8571	0
// OP_STORE_V	315	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2250 8571 0
    ai_run(TE_WIZSPIKE);
};

void() knight_run5;
// knight_run5
// function begins at statement 14161
// OP_STATE	7768	8572	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7768 8572 0
    ai_run(SECRET_YES_SHOOT);
};

void() knight_run6;
// knight_run6
// function begins at statement 14165
// OP_STATE	2901	8573	0
// OP_STORE_V	894	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2901 8573 0
    ai_run(20.000);
};

void() knight_run7;
// knight_run7
// function begins at statement 14169
// OP_STATE	1876	8574	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1876 8574 0
    ai_run(14.000);
};

void() knight_run8;
// knight_run8
// function begins at statement 14173
// OP_STATE	6078	8566	0
// OP_STORE_V	314	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_run8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6078 8566 0
    ai_run(TE_LIGHTNING2);
};

// knight_runatk1
// function begins at statement 14177
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
%%RETURNTYPE%% () knight_runatk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4861 8575 0
    // *** UNPROCESSED OPCODE OP_GT 1 1491 8576
    if()
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    }
    else    
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    }
    
    ai_charge(20.000);
};

string IMMEDIATE = "knight/sword1.wav";
// knight_runatk2
// function begins at statement 14197
// OP_STATE	3319	8579	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3319 8579 0
    ai_charge_side();
};

void() knight_runatk3;
// knight_runatk3
// function begins at statement 14200
// OP_STATE	7776	8580	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7776 8580 0
    ai_charge_side();
};

void() knight_runatk4;
// knight_runatk4
// function begins at statement 14203
// OP_STATE	894	8581	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 894 8581 0
    ai_charge_side();
};

void() knight_runatk5;
// knight_runatk5
// function begins at statement 14206
// OP_STATE	7779	8582	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7779 8582 0
    ai_melee_side();
};

void() knight_runatk6;
// knight_runatk6
// function begins at statement 14209
// OP_STATE	7781	8583	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7781 8583 0
    ai_melee_side();
};

void() knight_runatk7;
// knight_runatk7
// function begins at statement 14212
// OP_STATE	301	8584	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 301 8584 0
    ai_melee_side();
};

void() knight_runatk8;
// knight_runatk8
// function begins at statement 14215
// OP_STATE	4437	8585	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4437 8585 0
    ai_melee_side();
};

void() knight_runatk9;
// knight_runatk9
// function begins at statement 14218
// OP_STATE	1890	8586	0
// OP_CALL0	921	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1890 8586 0
    ai_melee_side();
};

void() knight_runatk10;
// knight_runatk10
// function begins at statement 14221
// OP_STATE	7788	8587	0
// OP_CALL0	859	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7788 8587 0
    ai_charge_side();
};

void() knight_runatk11;
// knight_runatk11
// function begins at statement 14224
// OP_STATE	302	8566	0
// OP_STORE_V	318	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_runatk11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 302 8566 0
    ai_charge(TE_LAVASPLASH);
};

// knight_atk1
// function begins at statement 14228
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
%%RETURNTYPE%% () knight_atk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5447 8588 0
    sound(self, CHAN_WEAPON, "knight/sword1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    ai_charge(MSG_BROADCAST);
};

void() knight_atk2;
// knight_atk2
// function begins at statement 14238
// OP_STATE	5449	8589	0
// OP_STORE_V	315	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5449 8589 0
    ai_charge(TE_WIZSPIKE);
};

void() knight_atk3;
// knight_atk3
// function begins at statement 14242
// OP_STATE	1390	8590	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1390 8590 0
    ai_charge(SECRET_1ST_DOWN);
};

void() knight_atk4;
// knight_atk4
// function begins at statement 14246
// OP_STATE	5452	8591	0
// OP_STORE_V	337	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5452 8591 0
    ai_charge(MSG_BROADCAST);
};

void() knight_atk5;
// knight_atk5
// function begins at statement 14250
// OP_STATE	5454	8592	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5454 8592 0
    ai_charge(AS_MELEE);
};

void() knight_atk6;
// knight_atk6
// function begins at statement 14254
// OP_STATE	5456	8593	0
// OP_STORE_V	6076	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5456 8593 0
    ai_charge(SECRET_1ST_DOWN);
    ai_melee();
};

void() knight_atk7;
// knight_atk7
// function begins at statement 14259
// OP_STATE	5458	8594	0
// OP_STORE_V	7368	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5458 8594 0
    ai_charge(SPAWNFLAG_SUPERSPIKE);
    ai_melee();
};

void() knight_atk8;
// knight_atk8
// function begins at statement 14264
// OP_STATE	2227	8595	0
// OP_STORE_V	370	4	0
// OP_CALL1	857	0	0
// OP_CALL0	895	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2227 8595 0
    ai_charge(AS_MELEE);
    ai_melee();
};

void() knight_atk9;
// knight_atk9
// function begins at statement 14269
// OP_STATE	5351	8596	0
// OP_STORE_V	7368	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5351 8596 0
    ai_charge(SPAWNFLAG_SUPERSPIKE);
};

void() knight_atk10;
// knight_atk10
// function begins at statement 14273
// OP_STATE	5353	8566	0
// OP_STORE_V	313	4	0
// OP_CALL1	857	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_atk10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5353 8566 0
    ai_charge(TE_LIGHTNING1);
};

void() knight_pain1;
// knight_pain1
// function begins at statement 14277
// OP_STATE	303	8598	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_pain1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 303 8598 0
};

void() knight_pain2;
// knight_pain2
// function begins at statement 14279
// OP_STATE	5105	8599	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_pain2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5105 8599 0
};

void() knight_pain3;
// knight_pain3
// function begins at statement 14281
// OP_STATE	304	8566	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_pain3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 304 8566 0
};

void() knight_painb1;
// knight_painb1
// function begins at statement 14283
// OP_STATE	305	8601	0
// OP_STORE_V	337	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 305 8601 0
    ai_painforward(MSG_BROADCAST);
};

void() knight_painb2;
// knight_painb2
// function begins at statement 14287
// OP_STATE	5674	8602	0
// OP_STORE_V	370	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5674 8602 0
    ai_painforward(AS_MELEE);
};

void() knight_painb3;
// knight_painb3
// function begins at statement 14291
// OP_STATE	307	8603	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 307 8603 0
};

void() knight_painb4;
// knight_painb4
// function begins at statement 14293
// OP_STATE	5112	8604	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5112 8604 0
};

void() knight_painb5;
// knight_painb5
// function begins at statement 14295
// OP_STATE	3072	8605	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3072 8605 0
    ai_painforward(SPAWNFLAG_LASER);
};

void() knight_painb6;
// knight_painb6
// function begins at statement 14299
// OP_STATE	5096	8606	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5096 8606 0
    ai_painforward(SECRET_1ST_DOWN);
};

void() knight_painb7;
// knight_painb7
// function begins at statement 14303
// OP_STATE	5098	8607	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5098 8607 0
    ai_painforward(SPAWNFLAG_LASER);
};

void() knight_painb8;
// knight_painb8
// function begins at statement 14307
// OP_STATE	5100	8608	0
// OP_STORE_V	313	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5100 8608 0
    ai_painforward(TE_LIGHTNING1);
};

void() knight_painb9;
// knight_painb9
// function begins at statement 14311
// OP_STATE	5102	8609	0
// OP_STORE_V	313	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5102 8609 0
    ai_painforward(TE_LIGHTNING1);
};

void() knight_painb10;
// knight_painb10
// function begins at statement 14315
// OP_STATE	1733	8610	0
// OP_STORE_V	337	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1733 8610 0
    ai_painforward(MSG_BROADCAST);
};

void() knight_painb11;
// knight_painb11
// function begins at statement 14319
// OP_STATE	5443	8566	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_painb11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5443 8566 0
};

void() knight_pain;
// knight_pain
// function begins at statement 14321
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
%%RETURNTYPE%% (entity attacker, float damage) knight_pain =
{
    local float r;
    // *** UNPROCESSED OPCODE OP_GT 8615 31 8616
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    r = random();
    sound(self, CHAN_VOICE, "knight/khurt.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    if(r < 0.850)
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

float ;
// knight_bow1
// function begins at statement 14345
// OP_STATE	5379	8624	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5379 8624 0
    ai_turn();
};

void() knight_bow2;
// knight_bow2
// function begins at statement 14348
// OP_STATE	5381	8625	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5381 8625 0
    ai_turn();
};

void() knight_bow3;
// knight_bow3
// function begins at statement 14351
// OP_STATE	5383	8626	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5383 8626 0
    ai_turn();
};

void() knight_bow4;
// knight_bow4
// function begins at statement 14354
// OP_STATE	5384	8627	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5384 8627 0
    ai_turn();
};

void() knight_bow5;
// knight_bow5
// function begins at statement 14357
// OP_STATE	5386	8627	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5386 8627 0
    ai_turn();
};

// knight_bow6
// function begins at statement 14360
// OP_STATE	5384	8628	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5384 8628 0
    ai_turn();
};

void() knight_bow7;
// knight_bow7
// function begins at statement 14363
// OP_STATE	5383	8629	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5383 8629 0
    ai_turn();
};

void() knight_bow8;
// knight_bow8
// function begins at statement 14366
// OP_STATE	5381	8630	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5381 8630 0
    ai_turn();
};

void() knight_bow9;
// knight_bow9
// function begins at statement 14369
// OP_STATE	5379	8631	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5379 8631 0
    ai_turn();
};

void() knight_bow10;
// knight_bow10
// function begins at statement 14372
// OP_STATE	5355	1083	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_bow10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5355 1083 0
    ai_turn();
};

void() knight_die1;
// knight_die1
// function begins at statement 14375
// OP_STATE	5395	8633	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5395 8633 0
};

void() knight_die2;
// knight_die2
// function begins at statement 14377
// OP_STATE	5397	8634	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5397 8634 0
};

void() knight_die3;
// knight_die3
// function begins at statement 14379
// OP_STATE	5399	8635	0
// OP_ADDRESS	28	104	8636
// OP_STOREP_F	237	8636	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5399 8635 0
    self.solid = SOLID_NOT;
};

/* TYPE: EV_POINTER */ ;
// knight_die4
// function begins at statement 14383
// OP_STATE	5401	8637	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5401 8637 0
};

void() knight_die5;
// knight_die5
// function begins at statement 14385
// OP_STATE	788	8638	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 788 8638 0
};

void() knight_die6;
// knight_die6
// function begins at statement 14387
// OP_STATE	5404	8639	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5404 8639 0
};

void() knight_die7;
// knight_die7
// function begins at statement 14389
// OP_STATE	5406	8640	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5406 8640 0
};

void() knight_die8;
// knight_die8
// function begins at statement 14391
// OP_STATE	5408	8641	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5408 8641 0
};

void() knight_die9;
// knight_die9
// function begins at statement 14393
// OP_STATE	5410	8642	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5410 8642 0
};

void() knight_die10;
// knight_die10
// function begins at statement 14395
// OP_STATE	5411	8642	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_die10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5411 8642 0
};

void() knight_dieb1;
// knight_dieb1
// function begins at statement 14397
// OP_STATE	5413	8644	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5413 8644 0
};

void() knight_dieb2;
// knight_dieb2
// function begins at statement 14399
// OP_STATE	5415	8645	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5415 8645 0
};

void() knight_dieb3;
// knight_dieb3
// function begins at statement 14401
// OP_STATE	5417	8646	0
// OP_ADDRESS	28	104	8647
// OP_STOREP_F	237	8647	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5417 8646 0
    self.solid = SOLID_NOT;
};

/* TYPE: EV_POINTER */ ;
// knight_dieb4
// function begins at statement 14405
// OP_STATE	5419	8648	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5419 8648 0
};

void() knight_dieb5;
// knight_dieb5
// function begins at statement 14407
// OP_STATE	1423	8649	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1423 8649 0
};

void() knight_dieb6;
// knight_dieb6
// function begins at statement 14409
// OP_STATE	5422	8650	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5422 8650 0
};

void() knight_dieb7;
// knight_dieb7
// function begins at statement 14411
// OP_STATE	5424	8651	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5424 8651 0
};

void() knight_dieb8;
// knight_dieb8
// function begins at statement 14413
// OP_STATE	5426	8652	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5426 8652 0
};

void() knight_dieb9;
// knight_dieb9
// function begins at statement 14415
// OP_STATE	5427	8653	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5427 8653 0
};

void() knight_dieb10;
// knight_dieb10
// function begins at statement 14417
// OP_STATE	5429	8654	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5429 8654 0
};

void() knight_dieb11;
// knight_dieb11
// function begins at statement 14419
// OP_STATE	5431	8654	0
// OP_DONE	0	0	0
%%RETURNTYPE%% () knight_dieb11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5431 8654 0
};

void() knight_die;
// knight_die
// function begins at statement 14421
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
%%RETURNTYPE%% () knight_die =
{
    
    if(self.health < -40.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        ThrowHead(IMMEDIATE, self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return; /* TODO retvalue? */
    }
    
    sound(self, CHAN_VOICE, "knight/kdeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    if(random() < IMMEDIATE)
    {
        knight_die1();
    }
    else    
    {
        knight_dieb1();
    }
    
};

float ;
void() monster_knight;
// monster_knight
// function begins at statement 14460
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
%%RETURNTYPE%% () monster_knight =
{
    
    if(deathmatch)
    {
        remove(self);
        return; /* TODO retvalue? */
    }
    
    precache_model("progs/knight.mdl");
    precache_model(IMMEDIATE);
    precache_sound("knight/kdeath.wav");
    precache_sound("knight/khurt.wav");
    precache_sound("knight/ksight.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    precache_sound("knight/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/knight.mdl");
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = 75.000;
    self.th_stand = knight_stand1;
    self.th_walk = knight_walk1;
    self.th_run = knight_run1;
    self.th_melee = knight_atk1;
    self.th_pain = knight_pain;
    self.th_die = knight_die;
    walkmonster_start();
};

