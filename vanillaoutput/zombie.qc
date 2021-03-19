float SPAWN_CRUCIFIED = 1;
/* TYPE: EV_FIELD */ inpain;
void() zombie_stand1;
void() zombie_stand2;
// zombie_stand1
// function begins at statement 16194
OP_STATE	337	9494	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 337 9494 0
    ai_stand();
};

void() zombie_stand3;
// zombie_stand2
// function begins at statement 16197
OP_STATE	9491	9495	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9491 9495 0
    ai_stand();
};

void() zombie_stand4;
// zombie_stand3
// function begins at statement 16200
OP_STATE	7369	9496	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7369 9496 0
    ai_stand();
};

void() zombie_stand5;
// zombie_stand4
// function begins at statement 16203
OP_STATE	370	9497	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 370 9497 0
    ai_stand();
};

void() zombie_stand6;
// zombie_stand5
// function begins at statement 16206
OP_STATE	6076	9498	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6076 9498 0
    ai_stand();
};

void() zombie_stand7;
// zombie_stand6
// function begins at statement 16209
OP_STATE	313	9499	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 313 9499 0
    ai_stand();
};

void() zombie_stand8;
// zombie_stand7
// function begins at statement 16212
OP_STATE	314	9500	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 314 9500 0
    ai_stand();
};

void() zombie_stand9;
// zombie_stand8
// function begins at statement 16215
OP_STATE	315	9501	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 315 9501 0
    ai_stand();
};

void() zombie_stand10;
// zombie_stand9
// function begins at statement 16218
OP_STATE	6077	9502	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6077 9502 0
    ai_stand();
};

void() zombie_stand11;
// zombie_stand10
// function begins at statement 16221
OP_STATE	317	9503	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 317 9503 0
    ai_stand();
};

void() zombie_stand12;
// zombie_stand11
// function begins at statement 16224
OP_STATE	318	9504	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 318 9504 0
    ai_stand();
};

void() zombie_stand13;
// zombie_stand12
// function begins at statement 16227
OP_STATE	319	9505	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 319 9505 0
    ai_stand();
};

void() zombie_stand14;
// zombie_stand13
// function begins at statement 16230
OP_STATE	2250	9506	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2250 9506 0
    ai_stand();
};

void() zombie_stand15;
// zombie_stand14
// function begins at statement 16233
OP_STATE	7768	9507	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7768 9507 0
    ai_stand();
};

void() zombie_cruc1;
// zombie_stand15
// function begins at statement 16236
OP_STATE	2901	9493	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () zombie_stand15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2901 9493 0
    ai_stand();
};

float IMMEDIATE = 192;
// zombie_cruc1
// function begins at statement 16239
OP_STATE	9509	9510	0
OP_CALL0	452	0	0
OP_LT	1	603	9511
OP_IFNOT	9511	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9512	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	328	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_cruc1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9509 9510 0
    
    if(random() < 0.100)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 3.000);
    }
    
};

float IMMEDIATE = 193;
// zombie_cruc2
// function begins at statement 16250
OP_STATE	9513	9514	0
OP_ADDRESS	28	150	9515
OP_ADD_F	31	603	9516
OP_CALL0	452	0	0
OP_MUL_F	1	603	9517
OP_ADD_F	9516	9517	9518
OP_STOREP_F	9518	9515	0
OP_DONE	0	0	0
voidTODO () zombie_cruc2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9513 9514 0
    // *** UNPROCESSED OPCODE OP_MUL_F 1 603 9517
    self.nextthink = (0.000 + 0.100) + ;
};

float IMMEDIATE = 194;
// zombie_cruc3
// function begins at statement 16258
OP_STATE	9519	9520	0
OP_ADDRESS	28	150	9521
OP_ADD_F	31	603	9522
OP_CALL0	452	0	0
OP_MUL_F	1	603	9523
OP_ADD_F	9522	9523	9524
OP_STOREP_F	9524	9521	0
OP_DONE	0	0	0
voidTODO () zombie_cruc3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9519 9520 0
    // *** UNPROCESSED OPCODE OP_MUL_F 1 603 9523
    self.nextthink = (0.000 + 0.100) + ;
};

float IMMEDIATE = 195;
// zombie_cruc4
// function begins at statement 16266
OP_STATE	9525	9526	0
OP_ADDRESS	28	150	9527
OP_ADD_F	31	603	9528
OP_CALL0	452	0	0
OP_MUL_F	1	603	9529
OP_ADD_F	9528	9529	9530
OP_STOREP_F	9530	9527	0
OP_DONE	0	0	0
voidTODO () zombie_cruc4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9525 9526 0
    // *** UNPROCESSED OPCODE OP_MUL_F 1 603 9529
    self.nextthink = (0.000 + 0.100) + ;
};

float IMMEDIATE = 196;
// zombie_cruc5
// function begins at statement 16274
OP_STATE	9531	9532	0
OP_ADDRESS	28	150	9533
OP_ADD_F	31	603	9534
OP_CALL0	452	0	0
OP_MUL_F	1	603	9535
OP_ADD_F	9534	9535	9536
OP_STOREP_F	9536	9533	0
OP_DONE	0	0	0
voidTODO () zombie_cruc5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9531 9532 0
    // *** UNPROCESSED OPCODE OP_MUL_F 1 603 9535
    self.nextthink = (0.000 + 0.100) + ;
};

float IMMEDIATE = 197;
// zombie_cruc6
// function begins at statement 16282
OP_STATE	9537	9508	0
OP_ADDRESS	28	150	9538
OP_ADD_F	31	603	9539
OP_CALL0	452	0	0
OP_MUL_F	1	603	9540
OP_ADD_F	9539	9540	9541
OP_STOREP_F	9541	9538	0
OP_DONE	0	0	0
voidTODO () zombie_cruc6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9537 9508 0
    // *** UNPROCESSED OPCODE OP_MUL_F 1 603 9540
    self.nextthink = (0.000 + 0.100) + ;
};

void() zombie_walk1;
void() zombie_walk2;
// zombie_walk1
// function begins at statement 16290
OP_STATE	1876	9543	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1876 9543 0
    ai_walk(0.000);
};

void() zombie_walk3;
// zombie_walk2
// function begins at statement 16294
OP_STATE	6078	9544	0
OP_STORE_V	7369	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6078 9544 0
    ai_walk(2.000);
};

void() zombie_walk4;
// zombie_walk3
// function begins at statement 16298
OP_STATE	4861	9545	0
OP_STORE_V	370	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4861 9545 0
    ai_walk(3.000);
};

void() zombie_walk5;
// zombie_walk4
// function begins at statement 16302
OP_STATE	3319	9546	0
OP_STORE_V	7369	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3319 9546 0
    ai_walk(2.000);
};

void() zombie_walk6;
// zombie_walk5
// function begins at statement 16306
OP_STATE	7776	9547	0
OP_STORE_V	9491	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7776 9547 0
    ai_walk(1.000);
};

void() zombie_walk7;
// zombie_walk6
// function begins at statement 16310
OP_STATE	894	9548	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 894 9548 0
    ai_walk(0.000);
};

void() zombie_walk8;
// zombie_walk7
// function begins at statement 16314
OP_STATE	7779	9549	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7779 9549 0
    ai_walk(0.000);
};

void() zombie_walk9;
// zombie_walk8
// function begins at statement 16318
OP_STATE	7781	9550	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7781 9550 0
    ai_walk(0.000);
};

void() zombie_walk10;
// zombie_walk9
// function begins at statement 16322
OP_STATE	301	9551	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 301 9551 0
    ai_walk(0.000);
};

void() zombie_walk11;
// zombie_walk10
// function begins at statement 16326
OP_STATE	4437	9552	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4437 9552 0
    ai_walk(0.000);
};

void() zombie_walk12;
// zombie_walk11
// function begins at statement 16330
OP_STATE	1890	9553	0
OP_STORE_V	7369	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1890 9553 0
    ai_walk(2.000);
};

void() zombie_walk13;
// zombie_walk12
// function begins at statement 16334
OP_STATE	7788	9554	0
OP_STORE_V	7369	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7788 9554 0
    ai_walk(2.000);
};

void() zombie_walk14;
// zombie_walk13
// function begins at statement 16338
OP_STATE	302	9555	0
OP_STORE_V	9491	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 302 9555 0
    ai_walk(1.000);
};

void() zombie_walk15;
// zombie_walk14
// function begins at statement 16342
OP_STATE	303	9556	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 303 9556 0
    ai_walk(0.000);
};

void() zombie_walk16;
// zombie_walk15
// function begins at statement 16346
OP_STATE	5105	9557	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5105 9557 0
    ai_walk(0.000);
};

void() zombie_walk17;
// zombie_walk16
// function begins at statement 16350
OP_STATE	304	9558	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 304 9558 0
    ai_walk(0.000);
};

void() zombie_walk18;
// zombie_walk17
// function begins at statement 16354
OP_STATE	305	9559	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk17 =
{
    // *** UNPROCESSED OPCODE OP_STATE 305 9559 0
    ai_walk(0.000);
};

void() zombie_walk19;
// zombie_walk18
// function begins at statement 16358
OP_STATE	5674	9560	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk18 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5674 9560 0
    ai_walk(0.000);
};

/* ERROR: NULL TYPE */ ;
// zombie_walk19
// function begins at statement 16362
OP_STATE	307	9542	0
OP_STORE_V	337	4	0
OP_CALL1	1351	0	0
OP_CALL0	452	0	0
OP_LT	1	836	9561
OP_IFNOT	9561	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	1257	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_walk19 =
{
    // *** UNPROCESSED OPCODE OP_STATE 307 9542 0
    ai_walk(0.000);
    
    if(random() < 0.200)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
};

void() zombie_run1;
void() zombie_run2;
// zombie_run1
// function begins at statement 16375
OP_STATE	5112	9563	0
OP_STORE_V	9491	4	0
OP_CALL1	1432	0	0
OP_ADDRESS	28	9492	9564
OP_STOREP_F	337	9564	0
OP_DONE	0	0	0
voidTODO () zombie_run1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5112 9563 0
    ai_run(1.000);
    self.inpain = 0.000;
};

void() zombie_run3;
// zombie_run2
// function begins at statement 16381
OP_STATE	3072	9565	0
OP_STORE_V	9491	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3072 9565 0
    ai_run(1.000);
};

void() zombie_run4;
// zombie_run3
// function begins at statement 16385
OP_STATE	5096	9566	0
OP_STORE_V	337	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5096 9566 0
    ai_run(0.000);
};

void() zombie_run5;
// zombie_run4
// function begins at statement 16389
OP_STATE	5098	9567	0
OP_STORE_V	9491	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5098 9567 0
    ai_run(1.000);
};

void() zombie_run6;
// zombie_run5
// function begins at statement 16393
OP_STATE	5100	9568	0
OP_STORE_V	7369	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5100 9568 0
    ai_run(2.000);
};

void() zombie_run7;
// zombie_run6
// function begins at statement 16397
OP_STATE	5102	9569	0
OP_STORE_V	370	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5102 9569 0
    ai_run(3.000);
};

void() zombie_run8;
// zombie_run7
// function begins at statement 16401
OP_STATE	1733	9570	0
OP_STORE_V	6076	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1733 9570 0
    ai_run(4.000);
};

void() zombie_run9;
// zombie_run8
// function begins at statement 16405
OP_STATE	5443	9571	0
OP_STORE_V	6076	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5443 9571 0
    ai_run(4.000);
};

void() zombie_run10;
// zombie_run9
// function begins at statement 16409
OP_STATE	5445	9572	0
OP_STORE_V	7369	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5445 9572 0
    ai_run(2.000);
};

void() zombie_run11;
// zombie_run10
// function begins at statement 16413
OP_STATE	5447	9573	0
OP_STORE_V	337	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5447 9573 0
    ai_run(0.000);
};

void() zombie_run12;
// zombie_run11
// function begins at statement 16417
OP_STATE	5449	9574	0
OP_STORE_V	337	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5449 9574 0
    ai_run(0.000);
};

void() zombie_run13;
// zombie_run12
// function begins at statement 16421
OP_STATE	1390	9575	0
OP_STORE_V	337	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1390 9575 0
    ai_run(0.000);
};

void() zombie_run14;
// zombie_run13
// function begins at statement 16425
OP_STATE	5452	9576	0
OP_STORE_V	7369	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5452 9576 0
    ai_run(2.000);
};

void() zombie_run15;
// zombie_run14
// function begins at statement 16429
OP_STATE	5454	9577	0
OP_STORE_V	6076	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5454 9577 0
    ai_run(4.000);
};

void() zombie_run16;
// zombie_run15
// function begins at statement 16433
OP_STATE	5456	9578	0
OP_STORE_V	314	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5456 9578 0
    ai_run(6.000);
};

void() zombie_run17;
// zombie_run16
// function begins at statement 16437
OP_STATE	5458	9579	0
OP_STORE_V	315	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5458 9579 0
    ai_run(7.000);
};

void() zombie_run18;
// zombie_run17
// function begins at statement 16441
OP_STATE	2227	9580	0
OP_STORE_V	370	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () zombie_run17 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2227 9580 0
    ai_run(3.000);
};

/* ERROR: NULL TYPE */ ;
// zombie_run18
// function begins at statement 16445
OP_STATE	5351	9562	0
OP_STORE_V	6077	4	0
OP_CALL1	1432	0	0
OP_CALL0	452	0	0
OP_LT	1	836	9581
OP_IFNOT	9581	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	1257	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_CALL0	452	0	0
OP_GT	1	1964	9582
OP_IFNOT	9582	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9583	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_run18 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5351 9562 0
    ai_run(8.000);
    
    if(random() < 0.200)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
    // *** UNPROCESSED OPCODE OP_GT 1 1964 9582
    
    if()
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
};

void() ZombieGrenadeTouch;
/* ERROR: NULL TYPE */ ;
// ZombieGrenadeTouch
// function begins at statement 16467
OP_LOAD_ENT	28	201	9585
OP_EQ_E	29	9585	9586
OP_IFNOT	9586	2	0
OP_RETURN	0	0	0
OP_LOAD_F	29	163	9587
OP_IFNOT	9587	16	0
OP_LOAD_ENT	28	201	9588
OP_STORE_V	29	4	0
OP_STORE_V	28	7	0
OP_STORE_V	9588	10	0
OP_STORE_V	318	13	0
OP_CALL4	520	0	0
OP_STORE_V	28	4	0
OP_STORE_V	321	7	0
OP_STORE_V	9589	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_STORE_V	28	4	0
OP_CALL1	460	0	0
OP_RETURN	0	0	0
OP_STORE_V	28	4	0
OP_STORE_V	321	7	0
OP_STORE_V	9590	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_ADDRESS	28	113	9591
OP_STOREP_V	286	9591	0
OP_ADDRESS	28	121	9594
OP_STOREP_V	286	9594	0
OP_ADDRESS	28	146	9597
OP_STOREP_FNC	519	9597	0
OP_DONE	0	0	0
voidTODO () ZombieGrenadeTouch =
{
    // *** UNPROCESSED OPCODE OP_EQ_E 29 9585 9586
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.takedamage)
    {
        T_Damage(other, self, self.owner, 10.000);
        sound(self, 1.000, "IMMEDIATE", 1.000, 1.000);
        remove(self);
        return; /* TODO retvalue? */
    }
    
    sound(self, 1.000, "IMMEDIATE", 1.000, 1.000);
    self.velocity = '0.000 0.000 0.000';
    self.avelocity = '0.000 0.000 0.000';
    self.touch = SUB_Remove;
};

void() ZombieFireGrenade;
vector st;
// ZombieFireGrenade
// function begins at statement 16501
OP_STORE_V	28	4	0
OP_STORE_V	321	7	0
OP_STORE_V	9607	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_CALL0	459	0	0
OP_STORE_ENT	1	9602	0
OP_ADDRESS	9602	201	9608
OP_STOREP_ENT	28	9608	0
OP_ADDRESS	9602	103	9609
OP_STOREP_F	235	9609	0
OP_ADDRESS	9602	104	9610
OP_STOREP_F	239	9610	0
OP_LOAD_V	28	105	9611
OP_MUL_FV	9599	59	9614
OP_ADD_V	9611	9614	9617
OP_MUL_FV	9600	65	9620
OP_ADD_V	9617	9620	9623
OP_SUB_F	9601	4437	9626
OP_MUL_FV	9626	62	9627
OP_ADD_V	9623	9627	9630
OP_STORE_V	9630	9604	0
OP_LOAD_V	28	117	9633
OP_STORE_V	9633	4	0
OP_CALL1	447	0	0
OP_ADDRESS	9602	113	9636
OP_LOAD_ENT	28	181	9639
OP_LOAD_V	9639	105	9640
OP_SUB_V	9640	9604	9643
OP_STORE_V	9643	4	0
OP_CALL1	454	0	0
OP_STOREP_V	1	9636	0
OP_ADDRESS	9602	113	9646
OP_LOAD_V	9602	113	9649
OP_MUL_VF	9649	1029	9652
OP_STOREP_V	9652	9646	0
OP_ADDRESS	9602	116	9655
OP_STOREP_F	1965	9655	0
OP_ADDRESS	9602	121	9656
OP_STOREP_V	2722	9656	0
OP_ADDRESS	9602	146	9659
OP_STOREP_FNC	9584	9659	0
OP_ADDRESS	9602	150	9660
OP_ADD_F	31	3197	9661
OP_STOREP_F	9661	9660	0
OP_ADDRESS	9602	148	9662
OP_STOREP_FNC	519	9662	0
OP_STORE_V	9602	4	0
OP_STORE_V	2728	7	0
OP_CALL2	449	0	0
OP_STORE_V	9602	4	0
OP_STORE_V	286	7	0
OP_STORE_V	286	10	0
OP_CALL3	450	0	0
OP_STORE_V	9602	4	0
OP_STORE_V	9604	7	0
OP_CALL2	448	0	0
OP_DONE	0	0	0
voidTODO (vector st) ZombieFireGrenade =
{
    local entity missile;
    local entity mpuff;
    local vector org;
    sound(self, 1.000, "IMMEDIATE", 1.000, 1.000);
    missile = spawn();
    missile.owner = self;
    missile.movetype = 10.000;
    missile.solid = 2.000;
    // *** UNPROCESSED OPCODE OP_MUL_FV 9599 59 9614
    // *** UNPROCESSED OPCODE OP_ADD_V 9611 9614 9617
    // *** UNPROCESSED OPCODE OP_MUL_FV 9600 65 9620
    // *** UNPROCESSED OPCODE OP_ADD_V 9617 9620 9623
    // *** UNPROCESSED OPCODE OP_SUB_F 9601 4437 9626
    // *** UNPROCESSED OPCODE OP_MUL_FV 9626 62 9627
    // *** UNPROCESSED OPCODE OP_ADD_V 9623 9627 9630
    org = ;
    makevectors(self.angles);
    missile.velocity = normalize(self.enemy.origin - org);
    missile.velocity = missile.velocity * 600.000;
    missile.velocity_z = 200.000;
    missile.avelocity = '3000.000 1000.000 2000.000';
    missile.touch = ZombieGrenadeTouch;
    missile.nextthink = 0.000 + 2.500;
    missile.think = SUB_Remove;
    setmodel(missile, "IMMEDIATE");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, org);
};

void() zombie_atta1;
void() zombie_atta2;
// zombie_atta1
// function begins at statement 16560
OP_STATE	5353	9664	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5353 9664 0
    ai_face();
};

void() zombie_atta3;
// zombie_atta2
// function begins at statement 16563
OP_STATE	5355	9665	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5355 9665 0
    ai_face();
};

void() zombie_atta4;
// zombie_atta3
// function begins at statement 16566
OP_STATE	5357	9666	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5357 9666 0
    ai_face();
};

void() zombie_atta5;
// zombie_atta4
// function begins at statement 16569
OP_STATE	5359	9667	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5359 9667 0
    ai_face();
};

void() zombie_atta6;
// zombie_atta5
// function begins at statement 16572
OP_STATE	5361	9668	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5361 9668 0
    ai_face();
};

void() zombie_atta7;
// zombie_atta6
// function begins at statement 16575
OP_STATE	5363	9669	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5363 9669 0
    ai_face();
};

void() zombie_atta8;
// zombie_atta7
// function begins at statement 16578
OP_STATE	5365	9670	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5365 9670 0
    ai_face();
};

void() zombie_atta9;
// zombie_atta8
// function begins at statement 16581
OP_STATE	5367	9671	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5367 9671 0
    ai_face();
};

void() zombie_atta10;
// zombie_atta9
// function begins at statement 16584
OP_STATE	912	9672	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 912 9672 0
    ai_face();
};

void() zombie_atta11;
// zombie_atta10
// function begins at statement 16587
OP_STATE	5369	9673	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5369 9673 0
    ai_face();
};

void() zombie_atta12;
// zombie_atta11
// function begins at statement 16590
OP_STATE	5371	9674	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5371 9674 0
    ai_face();
};

void() zombie_atta13;
// zombie_atta12
// function begins at statement 16593
OP_STATE	3872	9675	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3872 9675 0
    ai_face();
};

vector IMMEDIATE;
// zombie_atta13
// function begins at statement 16596
OP_STATE	260	9562	0
OP_CALL0	758	0	0
OP_STORE_V	9676	4	0
OP_CALL1	9598	0	0
OP_DONE	0	0	0
voidTODO () zombie_atta13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 260 9562 0
    ai_face();
    ZombieFireGrenade('-10.000 -22.000 30.000');
};

/* ERROR: NULL TYPE */ ;
/* ERROR: NULL TYPE */  = 30;
void() zombie_attb1;
void() zombie_attb2;
// zombie_attb1
// function begins at statement 16601
OP_STATE	5375	9680	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5375 9680 0
    ai_face();
};

void() zombie_attb3;
// zombie_attb2
// function begins at statement 16604
OP_STATE	5377	9681	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5377 9681 0
    ai_face();
};

void() zombie_attb4;
// zombie_attb3
// function begins at statement 16607
OP_STATE	5379	9682	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5379 9682 0
    ai_face();
};

void() zombie_attb5;
// zombie_attb4
// function begins at statement 16610
OP_STATE	5381	9683	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5381 9683 0
    ai_face();
};

void() zombie_attb6;
// zombie_attb5
// function begins at statement 16613
OP_STATE	5383	9684	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5383 9684 0
    ai_face();
};

void() zombie_attb7;
// zombie_attb6
// function begins at statement 16616
OP_STATE	5384	9685	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5384 9685 0
    ai_face();
};

void() zombie_attb8;
// zombie_attb7
// function begins at statement 16619
OP_STATE	5386	9686	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5386 9686 0
    ai_face();
};

void() zombie_attb9;
// zombie_attb8
// function begins at statement 16622
OP_STATE	5388	9687	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5388 9687 0
    ai_face();
};

void() zombie_attb10;
// zombie_attb9
// function begins at statement 16625
OP_STATE	2739	9688	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2739 9688 0
    ai_face();
};

void() zombie_attb11;
// zombie_attb10
// function begins at statement 16628
OP_STATE	5391	9689	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5391 9689 0
    ai_face();
};

void() zombie_attb12;
// zombie_attb11
// function begins at statement 16631
OP_STATE	5393	9690	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5393 9690 0
    ai_face();
};

void() zombie_attb13;
// zombie_attb12
// function begins at statement 16634
OP_STATE	5395	9691	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5395 9691 0
    ai_face();
};

void() zombie_attb14;
// zombie_attb13
// function begins at statement 16637
OP_STATE	5397	9692	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5397 9692 0
    ai_face();
};

vector IMMEDIATE;
// zombie_attb14
// function begins at statement 16640
OP_STATE	5397	9562	0
OP_CALL0	758	0	0
OP_STORE_V	9693	4	0
OP_CALL1	9598	0	0
OP_DONE	0	0	0
voidTODO () zombie_attb14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5397 9562 0
    ai_face();
    ZombieFireGrenade('-10.000 -24.000 29.000');
};

/* ERROR: NULL TYPE */ ;
/* ERROR: NULL TYPE */  = 29;
void() zombie_attc1;
void() zombie_attc2;
// zombie_attc1
// function begins at statement 16645
OP_STATE	5401	9697	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5401 9697 0
    ai_face();
};

void() zombie_attc3;
// zombie_attc2
// function begins at statement 16648
OP_STATE	788	9698	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 788 9698 0
    ai_face();
};

void() zombie_attc4;
// zombie_attc3
// function begins at statement 16651
OP_STATE	5404	9699	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5404 9699 0
    ai_face();
};

void() zombie_attc5;
// zombie_attc4
// function begins at statement 16654
OP_STATE	5406	9700	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5406 9700 0
    ai_face();
};

void() zombie_attc6;
// zombie_attc5
// function begins at statement 16657
OP_STATE	5408	9701	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5408 9701 0
    ai_face();
};

void() zombie_attc7;
// zombie_attc6
// function begins at statement 16660
OP_STATE	5410	9702	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5410 9702 0
    ai_face();
};

void() zombie_attc8;
// zombie_attc7
// function begins at statement 16663
OP_STATE	5411	9703	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5411 9703 0
    ai_face();
};

void() zombie_attc9;
// zombie_attc8
// function begins at statement 16666
OP_STATE	5413	9704	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5413 9704 0
    ai_face();
};

void() zombie_attc10;
// zombie_attc9
// function begins at statement 16669
OP_STATE	5415	9705	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5415 9705 0
    ai_face();
};

void() zombie_attc11;
// zombie_attc10
// function begins at statement 16672
OP_STATE	5417	9706	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5417 9706 0
    ai_face();
};

void() zombie_attc12;
// zombie_attc11
// function begins at statement 16675
OP_STATE	5419	9707	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5419 9707 0
    ai_face();
};

vector IMMEDIATE;
// zombie_attc12
// function begins at statement 16678
OP_STATE	1423	9562	0
OP_CALL0	758	0	0
OP_STORE_V	9708	4	0
OP_CALL1	9598	0	0
OP_DONE	0	0	0
voidTODO () zombie_attc12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1423 9562 0
    ai_face();
    ZombieFireGrenade('-12.000 -19.000 29.000');
};

/* ERROR: NULL TYPE */ ;
/* ERROR: NULL TYPE */  = 29;
void() zombie_missile;
float r;
// zombie_missile
// function begins at statement 16683
OP_CALL0	452	0	0
OP_STORE_F	1	9712	0
OP_LT	9712	987	9713
OP_IFNOT	9713	3	0
OP_CALL0	9663	0	0
OP_GOTO	6	0	0
OP_LT	9712	1959	9714
OP_IFNOT	9714	3	0
OP_CALL0	9679	0	0
OP_GOTO	2	0	0
OP_CALL0	9696	0	0
OP_DONE	0	0	0
voidTODO () zombie_missile =
{
    local float r;
    r = random();
    if(r < 0.300)
    {
        zombie_atta1();
    }
    else if(r < 0.600)
    {
        zombie_attb1();
    }
    else    
    {
        zombie_attc1();
    }
    
};

void() zombie_paina1;
void() zombie_paina2;
// zombie_paina1
// function begins at statement 16695
OP_STATE	5422	9716	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9717	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_paina1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5422 9716 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
};

void() zombie_paina3;
// zombie_paina2
// function begins at statement 16703
OP_STATE	5424	9718	0
OP_STORE_V	370	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_paina2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5424 9718 0
    ai_painforward(3.000);
};

void() zombie_paina4;
// zombie_paina3
// function begins at statement 16707
OP_STATE	5426	9719	0
OP_STORE_V	9491	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_paina3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5426 9719 0
    ai_painforward(1.000);
};

void() zombie_paina5;
// zombie_paina4
// function begins at statement 16711
OP_STATE	5427	9720	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paina4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5427 9720 0
    ai_pain(1.000);
};

void() zombie_paina6;
// zombie_paina5
// function begins at statement 16715
OP_STATE	5429	9721	0
OP_STORE_V	370	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paina5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5429 9721 0
    ai_pain(3.000);
};

void() zombie_paina7;
// zombie_paina6
// function begins at statement 16719
OP_STATE	5431	9722	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paina6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5431 9722 0
    ai_pain(1.000);
};

void() zombie_paina8;
// zombie_paina7
// function begins at statement 16723
OP_STATE	5433	9723	0
OP_DONE	0	0	0
voidTODO () zombie_paina7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5433 9723 0
};

void() zombie_paina9;
// zombie_paina8
// function begins at statement 16725
OP_STATE	5435	9724	0
OP_DONE	0	0	0
voidTODO () zombie_paina8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5435 9724 0
};

void() zombie_paina10;
// zombie_paina9
// function begins at statement 16727
OP_STATE	5437	9725	0
OP_DONE	0	0	0
voidTODO () zombie_paina9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5437 9725 0
};

void() zombie_paina11;
// zombie_paina10
// function begins at statement 16729
OP_STATE	1884	9726	0
OP_DONE	0	0	0
voidTODO () zombie_paina10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1884 9726 0
};

void() zombie_paina12;
// zombie_paina11
// function begins at statement 16731
OP_STATE	5440	9727	0
OP_DONE	0	0	0
voidTODO () zombie_paina11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5440 9727 0
};

void() zombie_painb1;
// zombie_paina12
// function begins at statement 16733
OP_STATE	5442	9562	0
OP_DONE	0	0	0
voidTODO () zombie_paina12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5442 9562 0
};

void() zombie_painb2;
// zombie_painb1
// function begins at statement 16735
OP_STATE	4971	9729	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9730	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4971 9729 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
};

void() zombie_painb3;
// zombie_painb2
// function begins at statement 16743
OP_STATE	4986	9731	0
OP_STORE_V	7369	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4986 9731 0
    ai_pain(2.000);
};

void() zombie_painb4;
// zombie_painb3
// function begins at statement 16747
OP_STATE	5000	9732	0
OP_STORE_V	6077	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5000 9732 0
    ai_pain(8.000);
};

void() zombie_painb5;
// zombie_painb4
// function begins at statement 16751
OP_STATE	5015	9733	0
OP_STORE_V	314	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5015 9733 0
    ai_pain(6.000);
};

void() zombie_painb6;
// zombie_painb5
// function begins at statement 16755
OP_STATE	5029	9734	0
OP_STORE_V	7369	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5029 9734 0
    ai_pain(2.000);
};

void() zombie_painb7;
// zombie_painb6
// function begins at statement 16759
OP_STATE	5035	9735	0
OP_DONE	0	0	0
voidTODO () zombie_painb6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5035 9735 0
};

void() zombie_painb8;
// zombie_painb7
// function begins at statement 16761
OP_STATE	5038	9736	0
OP_DONE	0	0	0
voidTODO () zombie_painb7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5038 9736 0
};

void() zombie_painb9;
// zombie_painb8
// function begins at statement 16763
OP_STATE	5041	9737	0
OP_DONE	0	0	0
voidTODO () zombie_painb8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5041 9737 0
};

void() zombie_painb10;
// zombie_painb9
// function begins at statement 16765
OP_STATE	5044	9738	0
OP_STORE_V	28	4	0
OP_STORE_V	324	7	0
OP_STORE_V	9739	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5044 9738 0
    sound(self, 4.000, "IMMEDIATE", 1.000, 1.000);
};

void() zombie_painb11;
// zombie_painb10
// function begins at statement 16773
OP_STATE	5047	9740	0
OP_DONE	0	0	0
voidTODO () zombie_painb10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5047 9740 0
};

void() zombie_painb12;
// zombie_painb11
// function begins at statement 16775
OP_STATE	4909	9741	0
OP_DONE	0	0	0
voidTODO () zombie_painb11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4909 9741 0
};

void() zombie_painb13;
// zombie_painb12
// function begins at statement 16777
OP_STATE	4915	9742	0
OP_DONE	0	0	0
voidTODO () zombie_painb12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4915 9742 0
};

void() zombie_painb14;
// zombie_painb13
// function begins at statement 16779
OP_STATE	4918	9743	0
OP_DONE	0	0	0
voidTODO () zombie_painb13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4918 9743 0
};

void() zombie_painb15;
// zombie_painb14
// function begins at statement 16781
OP_STATE	4921	9744	0
OP_DONE	0	0	0
voidTODO () zombie_painb14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4921 9744 0
};

void() zombie_painb16;
// zombie_painb15
// function begins at statement 16783
OP_STATE	4924	9745	0
OP_DONE	0	0	0
voidTODO () zombie_painb15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4924 9745 0
};

void() zombie_painb17;
// zombie_painb16
// function begins at statement 16785
OP_STATE	4927	9746	0
OP_DONE	0	0	0
voidTODO () zombie_painb16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4927 9746 0
};

void() zombie_painb18;
// zombie_painb17
// function begins at statement 16787
OP_STATE	4929	9747	0
OP_DONE	0	0	0
voidTODO () zombie_painb17 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4929 9747 0
};

void() zombie_painb19;
// zombie_painb18
// function begins at statement 16789
OP_STATE	1164	9748	0
OP_DONE	0	0	0
voidTODO () zombie_painb18 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1164 9748 0
};

void() zombie_painb20;
// zombie_painb19
// function begins at statement 16791
OP_STATE	4934	9749	0
OP_DONE	0	0	0
voidTODO () zombie_painb19 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4934 9749 0
};

void() zombie_painb21;
// zombie_painb20
// function begins at statement 16793
OP_STATE	4937	9750	0
OP_DONE	0	0	0
voidTODO () zombie_painb20 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4937 9750 0
};

void() zombie_painb22;
// zombie_painb21
// function begins at statement 16795
OP_STATE	7942	9751	0
OP_DONE	0	0	0
voidTODO () zombie_painb21 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7942 9751 0
};

void() zombie_painb23;
// zombie_painb22
// function begins at statement 16797
OP_STATE	7944	9752	0
OP_DONE	0	0	0
voidTODO () zombie_painb22 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7944 9752 0
};

void() zombie_painb24;
// zombie_painb23
// function begins at statement 16799
OP_STATE	4939	9753	0
OP_DONE	0	0	0
voidTODO () zombie_painb23 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4939 9753 0
};

void() zombie_painb25;
// zombie_painb24
// function begins at statement 16801
OP_STATE	4942	9754	0
OP_DONE	0	0	0
voidTODO () zombie_painb24 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4942 9754 0
};

void() zombie_painb26;
// zombie_painb25
// function begins at statement 16803
OP_STATE	4945	9755	0
OP_STORE_V	9491	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_painb25 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4945 9755 0
    ai_painforward(1.000);
};

void() zombie_painb27;
// zombie_painb26
// function begins at statement 16807
OP_STATE	261	9756	0
OP_DONE	0	0	0
voidTODO () zombie_painb26 =
{
    // *** UNPROCESSED OPCODE OP_STATE 261 9756 0
};

void() zombie_painb28;
// zombie_painb27
// function begins at statement 16809
OP_STATE	7952	9757	0
OP_DONE	0	0	0
voidTODO () zombie_painb27 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7952 9757 0
};

void() zombie_painc1;
// zombie_painb28
// function begins at statement 16811
OP_STATE	7954	9562	0
OP_DONE	0	0	0
voidTODO () zombie_painb28 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7954 9562 0
};

void() zombie_painc2;
// zombie_painc1
// function begins at statement 16813
OP_STATE	4949	9759	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9730	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_painc1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4949 9759 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
};

void() zombie_painc3;
// zombie_painc2
// function begins at statement 16821
OP_STATE	4952	9760	0
OP_DONE	0	0	0
voidTODO () zombie_painc2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4952 9760 0
};

void() zombie_painc4;
// zombie_painc3
// function begins at statement 16823
OP_STATE	4955	9761	0
OP_STORE_V	370	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_painc3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4955 9761 0
    ai_pain(3.000);
};

void() zombie_painc5;
// zombie_painc4
// function begins at statement 16827
OP_STATE	4958	9762	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_painc4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4958 9762 0
    ai_pain(1.000);
};

void() zombie_painc6;
// zombie_painc5
// function begins at statement 16831
OP_STATE	7960	9763	0
OP_DONE	0	0	0
voidTODO () zombie_painc5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7960 9763 0
};

float IMMEDIATE = 136;
// zombie_painc6
// function begins at statement 16833
OP_STATE	9764	9765	0
OP_DONE	0	0	0
voidTODO () zombie_painc6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9764 9765 0
};

void() zombie_painc8;
// zombie_painc7
// function begins at statement 16835
OP_STATE	4960	9766	0
OP_DONE	0	0	0
voidTODO () zombie_painc7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4960 9766 0
};

void() zombie_painc9;
// zombie_painc8
// function begins at statement 16837
OP_STATE	4963	9767	0
OP_DONE	0	0	0
voidTODO () zombie_painc8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4963 9767 0
};

void() zombie_painc10;
// zombie_painc9
// function begins at statement 16839
OP_STATE	4966	9768	0
OP_DONE	0	0	0
voidTODO () zombie_painc9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4966 9768 0
};

void() zombie_painc11;
// zombie_painc10
// function begins at statement 16841
OP_STATE	4969	9769	0
OP_DONE	0	0	0
voidTODO () zombie_painc10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4969 9769 0
};

float IMMEDIATE = 141;
// zombie_painc11
// function begins at statement 16843
OP_STATE	9770	9771	0
OP_STORE_V	9491	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_painc11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9770 9771 0
    ai_painforward(1.000);
};

float IMMEDIATE = 142;
// zombie_painc12
// function begins at statement 16847
OP_STATE	9772	9773	0
OP_STORE_V	9491	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_painc12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9772 9773 0
    ai_painforward(1.000);
};

float IMMEDIATE = 143;
// zombie_painc13
// function begins at statement 16851
OP_STATE	9774	9775	0
OP_DONE	0	0	0
voidTODO () zombie_painc13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9774 9775 0
};

float IMMEDIATE = 144;
// zombie_painc14
// function begins at statement 16853
OP_STATE	9776	9777	0
OP_DONE	0	0	0
voidTODO () zombie_painc14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9776 9777 0
};

float IMMEDIATE = 145;
// zombie_painc15
// function begins at statement 16855
OP_STATE	9778	9779	0
OP_DONE	0	0	0
voidTODO () zombie_painc15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9778 9779 0
};

float IMMEDIATE = 146;
// zombie_painc16
// function begins at statement 16857
OP_STATE	9780	9781	0
OP_DONE	0	0	0
voidTODO () zombie_painc16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9780 9781 0
};

float IMMEDIATE = 147;
// zombie_painc17
// function begins at statement 16859
OP_STATE	9782	9783	0
OP_DONE	0	0	0
voidTODO () zombie_painc17 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9782 9783 0
};

float IMMEDIATE = 148;
// zombie_painc18
// function begins at statement 16861
OP_STATE	9784	9562	0
OP_DONE	0	0	0
voidTODO () zombie_painc18 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9784 9562 0
};

void() zombie_paind1;
float IMMEDIATE = 149;
// zombie_paind1
// function begins at statement 16863
OP_STATE	9786	9787	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9717	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_DONE	0	0	0
voidTODO () zombie_paind1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9786 9787 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
};

void() zombie_paind3;
// zombie_paind2
// function begins at statement 16871
OP_STATE	1960	9788	0
OP_DONE	0	0	0
voidTODO () zombie_paind2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1960 9788 0
};

float IMMEDIATE = 151;
// zombie_paind3
// function begins at statement 16873
OP_STATE	9789	9790	0
OP_DONE	0	0	0
voidTODO () zombie_paind3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9789 9790 0
};

float IMMEDIATE = 152;
// zombie_paind4
// function begins at statement 16875
OP_STATE	9791	9792	0
OP_DONE	0	0	0
voidTODO () zombie_paind4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9791 9792 0
};

float IMMEDIATE = 153;
// zombie_paind5
// function begins at statement 16877
OP_STATE	9793	9794	0
OP_DONE	0	0	0
voidTODO () zombie_paind5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9793 9794 0
};

float IMMEDIATE = 154;
// zombie_paind6
// function begins at statement 16879
OP_STATE	9795	9796	0
OP_DONE	0	0	0
voidTODO () zombie_paind6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9795 9796 0
};

float IMMEDIATE = 155;
// zombie_paind7
// function begins at statement 16881
OP_STATE	9797	9798	0
OP_DONE	0	0	0
voidTODO () zombie_paind7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9797 9798 0
};

float IMMEDIATE = 156;
// zombie_paind8
// function begins at statement 16883
OP_STATE	9799	9800	0
OP_DONE	0	0	0
voidTODO () zombie_paind8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9799 9800 0
};

float IMMEDIATE = 157;
// zombie_paind9
// function begins at statement 16885
OP_STATE	9801	9802	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paind9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9801 9802 0
    ai_pain(1.000);
};

float IMMEDIATE = 158;
// zombie_paind10
// function begins at statement 16889
OP_STATE	9803	9804	0
OP_DONE	0	0	0
voidTODO () zombie_paind10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9803 9804 0
};

float IMMEDIATE = 159;
// zombie_paind11
// function begins at statement 16891
OP_STATE	9805	9806	0
OP_DONE	0	0	0
voidTODO () zombie_paind11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9805 9806 0
};

void() zombie_paind13;
// zombie_paind12
// function begins at statement 16893
OP_STATE	7324	9807	0
OP_DONE	0	0	0
voidTODO () zombie_paind12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7324 9807 0
};

float IMMEDIATE = 161;
// zombie_paind13
// function begins at statement 16895
OP_STATE	9808	9562	0
OP_DONE	0	0	0
voidTODO () zombie_paind13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9808 9562 0
};

void() zombie_paine1;
float IMMEDIATE = 162;
// zombie_paine1
// function begins at statement 16897
OP_STATE	9810	9811	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9717	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_ADDRESS	28	152	9812
OP_STOREP_F	912	9812	0
OP_DONE	0	0	0
voidTODO () zombie_paine1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9810 9811 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
    self.health = 60.000;
};

float IMMEDIATE = 163;
// zombie_paine2
// function begins at statement 16907
OP_STATE	9813	9814	0
OP_STORE_V	6077	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9813 9814 0
    ai_pain(8.000);
};

float IMMEDIATE = 164;
// zombie_paine3
// function begins at statement 16911
OP_STATE	9815	9816	0
OP_STORE_V	313	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9815 9816 0
    ai_pain(5.000);
};

float IMMEDIATE = 165;
// zombie_paine4
// function begins at statement 16915
OP_STATE	9817	9818	0
OP_STORE_V	370	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9817 9818 0
    ai_pain(3.000);
};

float IMMEDIATE = 166;
// zombie_paine5
// function begins at statement 16919
OP_STATE	9819	9820	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9819 9820 0
    ai_pain(1.000);
};

float IMMEDIATE = 167;
// zombie_paine6
// function begins at statement 16923
OP_STATE	9821	9822	0
OP_STORE_V	7369	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9821 9822 0
    ai_pain(2.000);
};

float IMMEDIATE = 168;
// zombie_paine7
// function begins at statement 16927
OP_STATE	9823	9824	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9823 9824 0
    ai_pain(1.000);
};

float IMMEDIATE = 169;
// zombie_paine8
// function begins at statement 16931
OP_STATE	9825	9826	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9825 9826 0
    ai_pain(1.000);
};

float IMMEDIATE = 170;
// zombie_paine9
// function begins at statement 16935
OP_STATE	9827	9828	0
OP_STORE_V	7369	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9827 9828 0
    ai_pain(2.000);
};

float IMMEDIATE = 171;
// zombie_paine10
// function begins at statement 16939
OP_STATE	9829	9830	0
OP_STORE_V	28	4	0
OP_STORE_V	324	7	0
OP_STORE_V	9739	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_ADDRESS	28	104	9831
OP_STOREP_F	237	9831	0
OP_DONE	0	0	0
voidTODO () zombie_paine10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9829 9830 0
    sound(self, 4.000, "IMMEDIATE", 1.000, 1.000);
    self.solid = 0.000;
};

float IMMEDIATE = 172;
// zombie_paine11
// function begins at statement 16949
OP_STATE	9832	9833	0
OP_ADDRESS	28	150	9834
OP_LOAD_F	28	150	9835
OP_ADD_F	9835	313	9836
OP_STOREP_F	9836	9834	0
OP_ADDRESS	28	152	9837
OP_STOREP_F	912	9837	0
OP_DONE	0	0	0
voidTODO () zombie_paine11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9832 9833 0
    self.nextthink = self.nextthink + 5.000;
    self.health = 60.000;
};

float IMMEDIATE = 173;
// zombie_paine12
// function begins at statement 16957
OP_STATE	9838	9839	0
OP_ADDRESS	28	152	9840
OP_STOREP_F	912	9840	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	1257	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_ADDRESS	28	104	9841
OP_STOREP_F	240	9841	0
OP_STORE_V	337	4	0
OP_STORE_V	337	7	0
OP_CALL2	477	0	0
OP_NOT_F	1	0	9842
OP_IFNOT	9842	6	0
OP_ADDRESS	28	148	9843
OP_STOREP_FNC	9830	9843	0
OP_ADDRESS	28	104	9844
OP_STOREP_F	237	9844	0
OP_RETURN	0	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9838 9839 0
    self.health = 60.000;
    sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    self.solid = 3.000;
    
    if(!walkmove(0.000, 0.000))
    {
        self.think = zombie_paine11;
        self.solid = 0.000;
        return; /* TODO retvalue? */
    }
    
};

float IMMEDIATE = 174;
// zombie_paine13
// function begins at statement 16979
OP_STATE	9845	9846	0
OP_DONE	0	0	0
voidTODO () zombie_paine13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9845 9846 0
};

float IMMEDIATE = 175;
// zombie_paine14
// function begins at statement 16981
OP_STATE	9847	9848	0
OP_DONE	0	0	0
voidTODO () zombie_paine14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9847 9848 0
};

float IMMEDIATE = 176;
// zombie_paine15
// function begins at statement 16983
OP_STATE	9849	9850	0
OP_DONE	0	0	0
voidTODO () zombie_paine15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9849 9850 0
};

float IMMEDIATE = 177;
// zombie_paine16
// function begins at statement 16985
OP_STATE	9851	9852	0
OP_DONE	0	0	0
voidTODO () zombie_paine16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9851 9852 0
};

float IMMEDIATE = 178;
// zombie_paine17
// function begins at statement 16987
OP_STATE	9853	9854	0
OP_DONE	0	0	0
voidTODO () zombie_paine17 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9853 9854 0
};

float IMMEDIATE = 179;
// zombie_paine18
// function begins at statement 16989
OP_STATE	9855	9856	0
OP_DONE	0	0	0
voidTODO () zombie_paine18 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9855 9856 0
};

void() zombie_paine20;
// zombie_paine19
// function begins at statement 16991
OP_STATE	1344	9857	0
OP_DONE	0	0	0
voidTODO () zombie_paine19 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1344 9857 0
};

float IMMEDIATE = 181;
// zombie_paine20
// function begins at statement 16993
OP_STATE	9858	9859	0
OP_DONE	0	0	0
voidTODO () zombie_paine20 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9858 9859 0
};

float IMMEDIATE = 182;
// zombie_paine21
// function begins at statement 16995
OP_STATE	9860	9861	0
OP_DONE	0	0	0
voidTODO () zombie_paine21 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9860 9861 0
};

float IMMEDIATE = 183;
// zombie_paine22
// function begins at statement 16997
OP_STATE	9862	9863	0
OP_DONE	0	0	0
voidTODO () zombie_paine22 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9862 9863 0
};

float IMMEDIATE = 184;
// zombie_paine23
// function begins at statement 16999
OP_STATE	9864	9865	0
OP_DONE	0	0	0
voidTODO () zombie_paine23 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9864 9865 0
};

float IMMEDIATE = 185;
// zombie_paine24
// function begins at statement 17001
OP_STATE	9866	9867	0
OP_DONE	0	0	0
voidTODO () zombie_paine24 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9866 9867 0
};

float IMMEDIATE = 186;
// zombie_paine25
// function begins at statement 17003
OP_STATE	9868	9869	0
OP_STORE_V	313	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine25 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9868 9869 0
    ai_painforward(5.000);
};

float IMMEDIATE = 187;
// zombie_paine26
// function begins at statement 17007
OP_STATE	9870	9871	0
OP_STORE_V	370	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine26 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9870 9871 0
    ai_painforward(3.000);
};

float IMMEDIATE = 188;
// zombie_paine27
// function begins at statement 17011
OP_STATE	9872	9873	0
OP_STORE_V	9491	4	0
OP_CALL1	1348	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine27 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9872 9873 0
    ai_painforward(1.000);
};

float IMMEDIATE = 189;
// zombie_paine28
// function begins at statement 17015
OP_STATE	9874	9875	0
OP_STORE_V	9491	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () zombie_paine28 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9874 9875 0
    ai_pain(1.000);
};

float IMMEDIATE = 190;
// zombie_paine29
// function begins at statement 17019
OP_STATE	9876	9877	0
OP_DONE	0	0	0
voidTODO () zombie_paine29 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9876 9877 0
};

float IMMEDIATE = 191;
// zombie_paine30
// function begins at statement 17021
OP_STATE	9878	9562	0
OP_DONE	0	0	0
voidTODO () zombie_paine30 =
{
    // *** UNPROCESSED OPCODE OP_STATE 9878 9562 0
};

void() zombie_die;
string IMMEDIATE;
// zombie_die
// function begins at statement 17023
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9880	10	0
OP_STORE_V	9491	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_LOAD_F	28	152	9882
OP_STORE_V	9881	4	0
OP_STORE_V	9882	7	0
OP_CALL2	5247	0	0
OP_LOAD_F	28	152	9883
OP_STORE_V	3852	4	0
OP_STORE_V	9883	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	9884
OP_STORE_V	3853	4	0
OP_STORE_V	9884	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	9885
OP_STORE_V	3854	4	0
OP_STORE_V	9885	7	0
OP_CALL2	5218	0	0
OP_DONE	0	0	0
voidTODO () zombie_die =
{
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
    ThrowHead(, self.health);
    ThrowGib("IMMEDIATE", self.health);
    ThrowGib("IMMEDIATE", self.health);
    ThrowGib("IMMEDIATE", self.health);
};

void() zombie_pain;
entity attacker;
// zombie_pain
// function begins at statement 17046
OP_ADDRESS	28	152	9890
OP_STOREP_F	912	9890	0
OP_LT	9888	317	9891
OP_IFNOT	9891	2	0
OP_RETURN	0	0	0
OP_LOAD_F	28	9492	9892
OP_EQ_F	9892	7369	9893
OP_IFNOT	9893	2	0
OP_RETURN	0	0	0
OP_GE	9888	1890	9894
OP_IFNOT	9894	5	0
OP_ADDRESS	28	9492	9895
OP_STOREP_F	7369	9895	0
OP_CALL0	9809	0	0
OP_RETURN	0	0	0
OP_LOAD_F	28	9492	9896
OP_IFNOT	9896	5	0
OP_ADDRESS	28	374	9897
OP_ADD_F	31	370	9898
OP_STOREP_F	9898	9897	0
OP_RETURN	0	0	0
OP_LOAD_F	28	374	9899
OP_GT	9899	31	9900
OP_IFNOT	9900	5	0
OP_ADDRESS	28	9492	9901
OP_STOREP_F	7369	9901	0
OP_CALL0	9809	0	0
OP_RETURN	0	0	0
OP_ADDRESS	28	9492	9902
OP_STOREP_F	9491	9902	0
OP_CALL0	452	0	0
OP_STORE_F	1	9889	0
OP_LT	9889	3461	9903
OP_IFNOT	9903	3	0
OP_CALL0	9715	0	0
OP_GOTO	10	0	0
OP_LT	9889	1491	9904
OP_IFNOT	9904	3	0
OP_CALL0	9728	0	0
OP_GOTO	6	0	0
OP_LT	9889	3464	9905
OP_IFNOT	9905	3	0
OP_CALL0	9758	0	0
OP_GOTO	2	0	0
OP_CALL0	9785	0	0
OP_DONE	0	0	0
voidTODO (entity attacker, float take) zombie_pain =
{
    local float r;
    self.health = 60.000;
    
    if(take < 9.000)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(self.inpain == 2.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GE 9888 1890 9894
    
    if()
    {
        self.inpain = 2.000;
        zombie_paine1();
        return; /* TODO retvalue? */
    }
    
    
    if(self.inpain)
    {
        self.pain_finished = 0.000 + 3.000;
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GT 9899 31 9900
    
    if()
    {
        self.inpain = 2.000;
        zombie_paine1();
        return; /* TODO retvalue? */
    }
    
    self.inpain = 1.000;
    r = random();
    if(r < 0.250)
    {
        zombie_paina1();
    }
    else if(r < )
    {
        zombie_painb1();
    }
    else if(r < 0.750)
    {
        zombie_painc1();
    }
    else    
    {
        zombie_paind1();
    }
    
};

void() monster_zombie;
string IMMEDIATE;
// monster_zombie
// function begins at statement 17092
OP_IFNOT	35	4	0
OP_STORE_V	28	4	0
OP_CALL1	460	0	0
OP_RETURN	0	0	0
OP_STORE_V	9907	4	0
OP_CALL1	465	0	0
OP_STORE_V	9881	4	0
OP_CALL1	465	0	0
OP_STORE_V	2728	4	0
OP_CALL1	465	0	0
OP_STORE_V	1257	4	0
OP_CALL1	464	0	0
OP_STORE_V	9583	4	0
OP_CALL1	464	0	0
OP_STORE_V	9607	4	0
OP_CALL1	464	0	0
OP_STORE_V	9880	4	0
OP_CALL1	464	0	0
OP_STORE_V	9717	4	0
OP_CALL1	464	0	0
OP_STORE_V	9730	4	0
OP_CALL1	464	0	0
OP_STORE_V	9739	4	0
OP_CALL1	464	0	0
OP_STORE_V	9590	4	0
OP_CALL1	464	0	0
OP_STORE_V	9589	4	0
OP_CALL1	464	0	0
OP_STORE_V	9512	4	0
OP_CALL1	464	0	0
OP_ADDRESS	28	104	9908
OP_STOREP_F	240	9908	0
OP_ADDRESS	28	103	9909
OP_STOREP_F	229	9909	0
OP_STORE_V	28	4	0
OP_STORE_V	9907	7	0
OP_CALL2	449	0	0
OP_STORE_V	28	4	0
OP_STORE_V	289	7	0
OP_STORE_V	8669	10	0
OP_CALL3	450	0	0
OP_ADDRESS	28	152	9910
OP_STOREP_F	912	9910	0
OP_ADDRESS	28	356	9911
OP_STOREP_FNC	9493	9911	0
OP_ADDRESS	28	357	9912
OP_STOREP_FNC	9542	9912	0
OP_ADDRESS	28	358	9913
OP_STOREP_FNC	9562	9913	0
OP_ADDRESS	28	361	9914
OP_STOREP_FNC	9886	9914	0
OP_ADDRESS	28	362	9915
OP_STOREP_FNC	9879	9915	0
OP_ADDRESS	28	359	9916
OP_STOREP_FNC	9711	9916	0
OP_LOAD_F	28	195	9917
OP_BITAND	9917	9491	9918
OP_IFNOT	9918	5	0
OP_ADDRESS	28	103	9919
OP_STOREP_F	227	9919	0
OP_CALL0	9508	0	0
OP_GOTO	2	0	0
OP_CALL0	5557	0	0
OP_DONE	0	0	0
voidTODO () monster_zombie =
{
    
    if(0.000)
    {
        remove(self);
        return; /* TODO retvalue? */
    }
    
    precache_model("IMMEDIATE");
    precache_model();
    precache_model("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    self.solid = 3.000;
    self.movetype = 4.000;
    setmodel(self, "IMMEDIATE");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 40.000');
    self.health = 60.000;
    self.th_stand = zombie_stand1;
    self.th_walk = zombie_walk1;
    self.th_run = zombie_run1;
    self.th_pain = zombie_pain;
    self.th_die = zombie_die;
    self.th_missile = zombie_missile;
    if(self.spawnflags & 1.000)
    {
        self.movetype = 0.000;
        zombie_cruc1();
    }
    else    
    {
        walkmonster_start();
    }
    
};

