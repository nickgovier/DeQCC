// bot_start
// function begins at statement 25857, parm_start=15382
// OP_STATE	2717	11628	0
// OP_CALL0	11472	0	0
// OP_CALL0	478	0	0
// OP_ADDRESS	28	150	15383
// OP_ADD_F	31	1226	15384
// OP_CALL0	452	0	0
// OP_MUL_F	1226	1	15385
// OP_ADD_F	15384	15385	15386
// OP_STOREP_F	15386	15383	0
// OP_LOAD_F	28	553	15387
// OP_LT	15387	228	15388
// OP_IFNOT	15388	8	0
// OP_ADDRESS	28	150	15389
// OP_LOAD_F	28	150	15390
// OP_LOAD_F	28	553	15391
// OP_SUB_F	228	15391	15392
// OP_MUL_F	993	15392	15393
// OP_ADD_F	15390	15393	15394
// OP_STOREP_F	15394	15389	0
// OP_DONE	0	0	0
void () bot_start = [12, bot_walk]
{
    local string tmp;
    BotPostThink();
    droptofloor();
    self.nextthink = (time + 0.2) + (0.2 * random());
    
    if(self.skil < MOVETYPE_WALK)
    {
        self.nextthink = self.nextthink + (0.1 * (MOVETYPE_WALK - self.skil));
    }
    
};

// bot_stand1
// function begins at statement 25877, parm_start=15395
// OP_STATE	2717	11628	0
// OP_CALL0	14753	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_stand1 = [12, bot_walk]
{
    ai_botstand();
    BotPostThink();
};

// bot_walk
// function begins at statement 25881, parm_start=15395
// OP_STATE	231	11628	0
// OP_ADDRESS	28	156	15395
// OP_STOREP_F	213	15395	0
// OP_LOAD_F	28	154	15396
// OP_EQ_F	15396	253	15397
// OP_IFNOT	15397	11	0
// OP_LOAD_F	28	372	15398
// OP_EQ_F	15398	231	15399
// OP_IFNOT	15399	3	0
// OP_ADDRESS	28	372	15400
// OP_STOREP_F	213	15400	0
// OP_ADDRESS	28	131	15401
// OP_LOAD_F	28	372	15402
// OP_ADD_F	213	15402	15403
// OP_STOREP_F	15403	15401	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	372	15404
// OP_EQ_F	15404	231	15405
// OP_IFNOT	15405	3	0
// OP_ADDRESS	28	372	15406
// OP_STOREP_F	213	15406	0
// OP_ADDRESS	28	131	15407
// OP_LOAD_F	28	131	15408
// OP_LOAD_F	28	372	15409
// OP_ADD_F	15408	15409	15410
// OP_STOREP_F	15410	15407	0
// OP_ADDRESS	28	372	15411
// OP_LOAD_F	28	372	15412
// OP_ADD_F	15412	214	15413
// OP_STOREP_F	15413	15411	0
// OP_STORE_V	605	4	0
// OP_CALL1	13641	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_walk = [6, bot_walk]
{
    self.weaponframe = FALSE;
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = FALSE + self.walkframe;
    }
    else
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
    ai_botseek(BOTSPEED);
    BotPostThink();
};

// bot_run
// function begins at statement 25915, parm_start=15414
// OP_STATE	231	11629	0
// OP_ADDRESS	28	156	15414
// OP_STOREP_F	213	15414	0
// OP_LOAD_F	28	154	15415
// OP_EQ_F	15415	253	15416
// OP_IFNOT	15416	11	0
// OP_LOAD_F	28	372	15417
// OP_EQ_F	15417	231	15418
// OP_IFNOT	15418	3	0
// OP_ADDRESS	28	372	15419
// OP_STOREP_F	213	15419	0
// OP_ADDRESS	28	131	15420
// OP_LOAD_F	28	372	15421
// OP_ADD_F	213	15421	15422
// OP_STOREP_F	15422	15420	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	372	15423
// OP_EQ_F	15423	231	15424
// OP_IFNOT	15424	3	0
// OP_ADDRESS	28	372	15425
// OP_STOREP_F	213	15425	0
// OP_ADDRESS	28	131	15426
// OP_LOAD_F	28	131	15427
// OP_LOAD_F	28	372	15428
// OP_ADD_F	15427	15428	15429
// OP_STOREP_F	15429	15426	0
// OP_ADDRESS	28	372	15430
// OP_LOAD_F	28	372	15431
// OP_ADD_F	15431	214	15432
// OP_STOREP_F	15432	15430	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_run = [6, bot_run]
{
    self.weaponframe = FALSE;
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = FALSE + self.walkframe;
    }
    else
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
    ai_botrun(BOTSPEED);
    BotPostThink();
};

// bot_chase
// function begins at statement 25949, parm_start=15433
// OP_STATE	231	13603	0
// OP_ADDRESS	28	156	15433
// OP_STOREP_F	213	15433	0
// OP_LOAD_F	28	154	15434
// OP_EQ_F	15434	253	15435
// OP_IFNOT	15435	11	0
// OP_LOAD_F	28	372	15436
// OP_EQ_F	15436	231	15437
// OP_IFNOT	15437	3	0
// OP_ADDRESS	28	372	15438
// OP_STOREP_F	213	15438	0
// OP_ADDRESS	28	131	15439
// OP_LOAD_F	28	372	15440
// OP_ADD_F	213	15440	15441
// OP_STOREP_F	15441	15439	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	372	15442
// OP_EQ_F	15442	231	15443
// OP_IFNOT	15443	3	0
// OP_ADDRESS	28	372	15444
// OP_STOREP_F	213	15444	0
// OP_ADDRESS	28	131	15445
// OP_LOAD_F	28	131	15446
// OP_LOAD_F	28	372	15447
// OP_ADD_F	15446	15447	15448
// OP_STOREP_F	15448	15445	0
// OP_ADDRESS	28	372	15449
// OP_LOAD_F	28	372	15450
// OP_ADD_F	15450	214	15451
// OP_STOREP_F	15451	15449	0
// OP_STORE_V	605	4	0
// OP_CALL1	15108	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_chase = [6, bot_chase]
{
    self.weaponframe = FALSE;
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = FALSE + self.walkframe;
    }
    else
    {
        
        if(self.walkframe == MOVETYPE_TOSS)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = self.frame + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
    aibot_chase(BOTSPEED);
    BotPostThink();
};

// bot_shot1
// function begins at statement 25983, parm_start=15452
// OP_STATE	5498	15452	0
// OP_ADDRESS	28	156	15453
// OP_STOREP_F	214	15453	0
// OP_ADDRESS	28	133	15454
// OP_LOAD_F	28	133	15455
// OP_BITOR	15455	334	15456
// OP_STOREP_F	15456	15454	0
// OP_DONE	0	0	0
void () bot_shot1 = [113, bot_shot2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// bot_shot2
// function begins at statement 25991, parm_start=15457
// OP_STATE	5504	15457	0
// OP_ADDRESS	28	156	15458
// OP_STOREP_F	216	15458	0
// OP_LOAD_F	28	553	15459
// OP_GT	15459	1222	15460
// OP_IFNOT	15460	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_shot2 = [114, bot_shot3]
{
    self.weaponframe = FL_SWIM;
    
    if(self.skil > 0.9)
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_shot3
// function begins at statement 26001, parm_start=15461
// OP_STATE	5507	15461	0
// OP_ADDRESS	28	156	15462
// OP_STOREP_F	228	15462	0
// OP_LOAD_F	28	553	15463
// OP_GT	15463	213	15464
// OP_IFNOT	15464	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_shot3 = [115, bot_shot4]
{
    self.weaponframe = MOVETYPE_WALK;
    
    if(self.skil > FALSE)
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_shot4
// function begins at statement 26011, parm_start=15465
// OP_STATE	5510	15465	0
// OP_ADDRESS	28	156	15466
// OP_STOREP_F	229	15466	0
// OP_LOAD_F	28	553	15467
// OP_GT	15467	213	15468
// OP_IFNOT	15468	4	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_GOTO	4	0	0
// OP_MUL_F	605	677	15469
// OP_STORE_V	15469	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_shot4 = [116, bot_shot5]
{
    self.weaponframe = MOVETYPE_STEP;
    if(self.skil > FALSE)
    {
        ai_botcharge(BOTSPEED);
    }
    else
    {
        ai_botcharge(BOTSPEED * 0.5);
    }
    
    BotPostThink();
};

// bot_shot5
// function begins at statement 26025, parm_start=15470
// OP_STATE	5513	15470	0
// OP_ADDRESS	28	156	15471
// OP_STOREP_F	230	15471	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_shot5 = [117, bot_shot6]
{
    self.weaponframe = MOVETYPE_FLY;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_shot6
// function begins at statement 26032, parm_start=15472
// OP_STATE	5516	11629	0
// OP_ADDRESS	28	156	15472
// OP_STOREP_F	231	15472	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_shot6 = [118, bot_run]
{
    self.weaponframe = MOVETYPE_TOSS;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_trigger1
// function begins at statement 26039, parm_start=15473
// OP_STATE	5498	15473	0
// OP_ADDRESS	28	156	15474
// OP_STOREP_F	214	15474	0
// OP_ADDRESS	28	133	15475
// OP_LOAD_F	28	133	15476
// OP_BITOR	15476	334	15477
// OP_STOREP_F	15477	15475	0
// OP_DONE	0	0	0
void () bot_trigger1 = [113, bot_trigger2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// bot_trigger2
// function begins at statement 26047, parm_start=15478
// OP_STATE	5504	15478	0
// OP_ADDRESS	28	156	15479
// OP_STOREP_F	216	15479	0
// OP_STORE_V	605	4	0
// OP_CALL1	13641	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_trigger2 = [114, bot_trigger3]
{
    self.weaponframe = FL_SWIM;
    ai_botseek(BOTSPEED);
    BotPostThink();
};

// bot_trigger3
// function begins at statement 26054, parm_start=15480
// OP_STATE	5507	15480	0
// OP_ADDRESS	28	156	15481
// OP_STOREP_F	228	15481	0
// OP_STORE_V	605	4	0
// OP_CALL1	13641	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_trigger3 = [115, bot_trigger4]
{
    self.weaponframe = MOVETYPE_WALK;
    ai_botseek(BOTSPEED);
    BotPostThink();
};

// bot_trigger4
// function begins at statement 26061, parm_start=15482
// OP_STATE	5510	15482	0
// OP_ADDRESS	28	156	15483
// OP_STOREP_F	229	15483	0
// OP_STORE_V	605	4	0
// OP_CALL1	13641	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_trigger4 = [116, bot_trigger5]
{
    self.weaponframe = MOVETYPE_STEP;
    ai_botseek(BOTSPEED);
    BotPostThink();
};

// bot_trigger5
// function begins at statement 26068, parm_start=15484
// OP_STATE	5513	15484	0
// OP_ADDRESS	28	156	15485
// OP_STOREP_F	230	15485	0
// OP_STORE_V	605	4	0
// OP_CALL1	13641	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_trigger5 = [117, bot_trigger6]
{
    self.weaponframe = MOVETYPE_FLY;
    ai_botseek(BOTSPEED);
    BotPostThink();
};

// bot_trigger6
// function begins at statement 26075, parm_start=15486
// OP_STATE	5516	11628	0
// OP_ADDRESS	28	156	15486
// OP_STOREP_F	231	15486	0
// OP_STORE_V	605	4	0
// OP_CALL1	13641	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_trigger6 = [118, bot_walk]
{
    self.weaponframe = MOVETYPE_TOSS;
    ai_botseek(BOTSPEED);
    BotPostThink();
};

// bot_axe1
// function begins at statement 26082, parm_start=15487
// OP_STATE	5518	15487	0
// OP_ADDRESS	28	156	15488
// OP_STOREP_F	214	15488	0
// OP_DONE	0	0	0
void () bot_axe1 = [119, bot_axe2]
{
    self.weaponframe = TRUE;
};

// bot_axe2
// function begins at statement 26086, parm_start=15489
// OP_STATE	746	15489	0
// OP_ADDRESS	28	156	15490
// OP_STOREP_F	216	15490	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axe2 = [120, bot_axe3]
{
    self.weaponframe = FL_SWIM;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axe3
// function begins at statement 26093, parm_start=15491
// OP_STATE	5523	15491	0
// OP_ADDRESS	28	156	15492
// OP_STOREP_F	228	15492	0
// OP_CALL0	3106	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axe3 = [121, bot_axe4]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
    BotPostThink();
};

// bot_axe4
// function begins at statement 26099, parm_start=15493
// OP_STATE	5526	11629	0
// OP_ADDRESS	28	156	15493
// OP_STOREP_F	229	15493	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axe4 = [122, bot_run]
{
    self.weaponframe = MOVETYPE_STEP;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axeb1
// function begins at statement 26106, parm_start=15494
// OP_STATE	5528	15494	0
// OP_ADDRESS	28	156	15495
// OP_STOREP_F	230	15495	0
// OP_DONE	0	0	0
void () bot_axeb1 = [125, bot_axeb2]
{
    self.weaponframe = MOVETYPE_FLY;
};

// bot_axeb2
// function begins at statement 26110, parm_start=15496
// OP_STATE	5531	15496	0
// OP_ADDRESS	28	156	15497
// OP_STOREP_F	231	15497	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axeb2 = [126, bot_axeb3]
{
    self.weaponframe = MOVETYPE_TOSS;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axeb3
// function begins at statement 26117, parm_start=15498
// OP_STATE	5534	15498	0
// OP_ADDRESS	28	156	15499
// OP_STOREP_F	232	15499	0
// OP_CALL0	3106	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axeb3 = [127, bot_axeb4]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axeb4
// function begins at statement 26125, parm_start=15500
// OP_STATE	221	11629	0
// OP_ADDRESS	28	156	15500
// OP_STOREP_F	217	15500	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axeb4 = [128, bot_run]
{
    self.weaponframe = FL_CLIENT;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axec1
// function begins at statement 26132, parm_start=15501
// OP_STATE	5538	15501	0
// OP_ADDRESS	28	156	15502
// OP_STOREP_F	214	15502	0
// OP_DONE	0	0	0
void () bot_axec1 = [131, bot_axec2]
{
    self.weaponframe = TRUE;
};

// bot_axec2
// function begins at statement 26136, parm_start=15503
// OP_STATE	5541	15503	0
// OP_ADDRESS	28	156	15504
// OP_STOREP_F	216	15504	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axec2 = [132, bot_axec3]
{
    self.weaponframe = FL_SWIM;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axec3
// function begins at statement 26143, parm_start=15505
// OP_STATE	5544	15505	0
// OP_ADDRESS	28	156	15506
// OP_STOREP_F	228	15506	0
// OP_CALL0	3106	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axec3 = [133, bot_axec4]
{
    self.weaponframe = MOVETYPE_WALK;
    W_FireAxe();
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axec4
// function begins at statement 26151, parm_start=15507
// OP_STATE	5547	11629	0
// OP_ADDRESS	28	156	15507
// OP_STOREP_F	229	15507	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axec4 = [134, bot_run]
{
    self.weaponframe = MOVETYPE_STEP;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axed1
// function begins at statement 26158, parm_start=15508
// OP_STATE	5549	15508	0
// OP_ADDRESS	28	156	15509
// OP_STOREP_F	230	15509	0
// OP_DONE	0	0	0
void () bot_axed1 = [137, bot_axed2]
{
    self.weaponframe = MOVETYPE_FLY;
};

// bot_axed2
// function begins at statement 26162, parm_start=15510
// OP_STATE	5552	15510	0
// OP_ADDRESS	28	156	15511
// OP_STOREP_F	231	15511	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axed2 = [138, bot_axed3]
{
    self.weaponframe = MOVETYPE_TOSS;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axed3
// function begins at statement 26169, parm_start=15512
// OP_STATE	5555	15512	0
// OP_ADDRESS	28	156	15513
// OP_STOREP_F	232	15513	0
// OP_CALL0	3106	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axed3 = [139, bot_axed4]
{
    self.weaponframe = MOVETYPE_PUSH;
    W_FireAxe();
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axed4
// function begins at statement 26177, parm_start=15514
// OP_STATE	5558	11629	0
// OP_ADDRESS	28	156	15514
// OP_STOREP_F	217	15514	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axed4 = [140, bot_run]
{
    self.weaponframe = FL_CLIENT;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// dmbot_melee
// function begins at statement 26184, parm_start=15515
// OP_ADDRESS	28	154	15515
// OP_CALL0	10958	0	0
// OP_STOREP_F	1	15515	0
// OP_CALL0	11057	0	0
// OP_DONE	0	0	0
void () dmbot_melee = 
{
    self.weapon = W_BestBotWeapon();
    W_BotAttack();
};

// bot_nail1
// function begins at statement 26189, parm_start=15516
// OP_STATE	5560	15516	0
// OP_ADDRESS	28	133	15517
// OP_LOAD_F	28	133	15518
// OP_BITOR	15518	334	15519
// OP_STOREP_F	15519	15517	0
// OP_ADDRESS	28	156	15520
// OP_LOAD_F	28	156	15521
// OP_ADD_F	15521	214	15522
// OP_STOREP_F	15522	15520	0
// OP_LOAD_F	28	156	15523
// OP_EQ_F	15523	234	15524
// OP_IFNOT	15524	3	0
// OP_ADDRESS	28	156	15525
// OP_STOREP_F	214	15525	0
// OP_CALL0	3088	0	0
// OP_STORE_V	229	4	0
// OP_CALL1	3793	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14958	0	0
// OP_ADDRESS	28	373	15526
// OP_ADD_F	31	1226	15527
// OP_STOREP_F	15527	15526	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_nail1 = [103, bot_nail2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireSpikes(MOVETYPE_STEP);
    ai_botnailcharge(BOTSPEED);
    self.attack_finished = time + 0.2;
    BotPostThink();
};

// bot_nail2
// function begins at statement 26213, parm_start=15528
// OP_STATE	5575	11054	0
// OP_ADDRESS	28	133	15528
// OP_LOAD_F	28	133	15529
// OP_BITOR	15529	334	15530
// OP_STOREP_F	15530	15528	0
// OP_ADDRESS	28	156	15531
// OP_LOAD_F	28	156	15532
// OP_ADD_F	15532	214	15533
// OP_STOREP_F	15533	15531	0
// OP_LOAD_F	28	156	15534
// OP_EQ_F	15534	234	15535
// OP_IFNOT	15535	3	0
// OP_ADDRESS	28	156	15536
// OP_STOREP_F	214	15536	0
// OP_CALL0	3088	0	0
// OP_STORE_V	279	4	0
// OP_CALL1	3793	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14958	0	0
// OP_ADDRESS	28	373	15537
// OP_ADD_F	31	1226	15538
// OP_STOREP_F	15538	15537	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_nail2 = [104, bot_nail1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLYMISSILE)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireSpikes(CONTENT_SLIME);
    ai_botnailcharge(BOTSPEED);
    self.attack_finished = time + 0.2;
    BotPostThink();
};

// bot_light1
// function begins at statement 26237, parm_start=15539
// OP_STATE	5589	15539	0
// OP_ADDRESS	28	133	15540
// OP_LOAD_F	28	133	15541
// OP_BITOR	15541	334	15542
// OP_STOREP_F	15542	15540	0
// OP_ADDRESS	28	156	15543
// OP_LOAD_F	28	156	15544
// OP_ADD_F	15544	214	15545
// OP_STOREP_F	15545	15543	0
// OP_LOAD_F	28	156	15546
// OP_EQ_F	15546	230	15547
// OP_IFNOT	15547	3	0
// OP_ADDRESS	28	156	15548
// OP_STOREP_F	214	15548	0
// OP_CALL0	3088	0	0
// OP_CALL0	3568	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14958	0	0
// OP_ADDRESS	28	373	15549
// OP_ADD_F	31	1226	15550
// OP_STOREP_F	15550	15549	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_light1 = [105, bot_light2]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireLightning();
    ai_botnailcharge(BOTSPEED);
    self.attack_finished = time + 0.2;
    BotPostThink();
};

// bot_light2
// function begins at statement 26260, parm_start=15551
// OP_STATE	5604	11055	0
// OP_ADDRESS	28	133	15551
// OP_LOAD_F	28	133	15552
// OP_BITOR	15552	334	15553
// OP_STOREP_F	15553	15551	0
// OP_ADDRESS	28	156	15554
// OP_LOAD_F	28	156	15555
// OP_ADD_F	15555	214	15556
// OP_STOREP_F	15556	15554	0
// OP_LOAD_F	28	156	15557
// OP_EQ_F	15557	230	15558
// OP_IFNOT	15558	3	0
// OP_ADDRESS	28	156	15559
// OP_STOREP_F	214	15559	0
// OP_CALL0	3088	0	0
// OP_CALL0	3568	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14958	0	0
// OP_ADDRESS	28	373	15560
// OP_ADD_F	31	1226	15561
// OP_STOREP_F	15561	15560	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_light2 = [106, bot_light1]
{
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.weaponframe = self.weaponframe + TRUE;
    
    if(self.weaponframe == MOVETYPE_FLY)
    {
        self.weaponframe = TRUE;
    }
    
    SuperDamageSound();
    W_FireLightning();
    ai_botnailcharge(BOTSPEED);
    self.attack_finished = time + 0.2;
    BotPostThink();
};

// bot_rocket1
// function begins at statement 26283, parm_start=15562
// OP_STATE	5618	15562	0
// OP_ADDRESS	28	156	15563
// OP_STOREP_F	214	15563	0
// OP_ADDRESS	28	133	15564
// OP_LOAD_F	28	133	15565
// OP_BITOR	15565	334	15566
// OP_STOREP_F	15566	15564	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rocket1 = [107, bot_rocket2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
    BotPostThink();
};

// bot_rocket2
// function begins at statement 26292, parm_start=15567
// OP_STATE	5624	15567	0
// OP_ADDRESS	28	156	15568
// OP_STOREP_F	216	15568	0
// OP_LOAD_F	28	553	15569
// OP_GT	15569	216	15570
// OP_IFNOT	15570	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rocket2 = [108, bot_rocket3]
{
    self.weaponframe = FL_SWIM;
    
    if(self.skil > FL_SWIM)
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_rocket3
// function begins at statement 26302, parm_start=15571
// OP_STATE	5627	15571	0
// OP_ADDRESS	28	156	15572
// OP_STOREP_F	228	15572	0
// OP_LOAD_F	28	553	15573
// OP_GT	15573	214	15574
// OP_IFNOT	15574	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rocket3 = [109, bot_rocket4]
{
    self.weaponframe = MOVETYPE_WALK;
    
    if(self.skil > TRUE)
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_rocket4
// function begins at statement 26312, parm_start=15575
// OP_STATE	5630	15575	0
// OP_ADDRESS	28	156	15576
// OP_STOREP_F	229	15576	0
// OP_LOAD_F	28	553	15577
// OP_GT	15577	214	15578
// OP_IFNOT	15578	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rocket4 = [110, bot_rocket5]
{
    self.weaponframe = MOVETYPE_STEP;
    
    if(self.skil > TRUE)
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_rocket5
// function begins at statement 26322, parm_start=15579
// OP_STATE	5633	15579	0
// OP_ADDRESS	28	156	15580
// OP_STOREP_F	230	15580	0
// OP_LOAD_F	28	553	15581
// OP_GT	15581	213	15582
// OP_IFNOT	15582	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rocket5 = [111, bot_rocket6]
{
    self.weaponframe = MOVETYPE_FLY;
    
    if(self.skil > FALSE)
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_rocket6
// function begins at statement 26332, parm_start=15583
// OP_STATE	5636	11629	0
// OP_ADDRESS	28	156	15583
// OP_STOREP_F	231	15583	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rocket6 = [112, bot_run]
{
    self.weaponframe = MOVETYPE_TOSS;
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_rebound1
// function begins at statement 26339, parm_start=15584
// OP_STATE	5618	15584	0
// OP_ADDRESS	28	156	15585
// OP_STOREP_F	214	15585	0
// OP_ADDRESS	28	133	15586
// OP_LOAD_F	28	133	15587
// OP_BITOR	15587	334	15588
// OP_STOREP_F	15588	15586	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rebound1 = [107, bot_rebound2]
{
    self.weaponframe = TRUE;
    self.effects = self.effects | EF_MUZZLEFLASH;
    BotPostThink();
};

// bot_rebound2
// function begins at statement 26348, parm_start=15589
// OP_STATE	5624	15589	0
// OP_ADDRESS	28	156	15590
// OP_STOREP_F	216	15590	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rebound2 = [108, bot_rebound3]
{
    self.weaponframe = FL_SWIM;
    BotPostThink();
};

// bot_rebound3
// function begins at statement 26353, parm_start=15591
// OP_STATE	5627	15591	0
// OP_ADDRESS	28	156	15592
// OP_STOREP_F	228	15592	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rebound3 = [109, bot_rebound4]
{
    self.weaponframe = MOVETYPE_WALK;
    BotPostThink();
};

// bot_rebound4
// function begins at statement 26358, parm_start=15593
// OP_STATE	5630	15593	0
// OP_ADDRESS	28	156	15594
// OP_STOREP_F	229	15594	0
// OP_STORE_V	605	4	0
// OP_CALL1	15108	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rebound4 = [110, bot_rebound5]
{
    self.weaponframe = MOVETYPE_STEP;
    aibot_chase(BOTSPEED);
    BotPostThink();
};

// bot_rebound5
// function begins at statement 26365, parm_start=15595
// OP_STATE	5633	15595	0
// OP_ADDRESS	28	156	15596
// OP_STOREP_F	230	15596	0
// OP_STORE_V	605	4	0
// OP_CALL1	15108	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rebound5 = [111, bot_rebound6]
{
    self.weaponframe = MOVETYPE_FLY;
    aibot_chase(BOTSPEED);
    BotPostThink();
};

// bot_rebound6
// function begins at statement 26372, parm_start=15597
// OP_STATE	5636	13603	0
// OP_ADDRESS	28	156	15597
// OP_STOREP_F	231	15597	0
// OP_STORE_V	605	4	0
// OP_CALL1	15108	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_rebound6 = [112, bot_chase]
{
    self.weaponframe = MOVETYPE_TOSS;
    aibot_chase(BOTSPEED);
    BotPostThink();
};

// bot_pain1
// function begins at statement 26379, parm_start=15599
// OP_STATE	575	15599	0
// OP_CALL0	5639	0	0
// OP_ADDRESS	28	156	15600
// OP_STOREP_F	213	15600	0
// OP_DONE	0	0	0
void () bot_pain1 = [35, bot_pain2]
{
    PainSound();
    self.weaponframe = FALSE;
};

// bot_pain2
// function begins at statement 26384, parm_start=15601
// OP_STATE	5683	15601	0
// OP_CALL0	452	0	0
// OP_MUL_F	229	1	15603
// OP_LOAD_F	28	553	15604
// OP_ADD_F	15603	15604	15605
// OP_STORE_F	15605	15602	0
// OP_GT	15602	216	15606
// OP_IFNOT	15606	4	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_pain2 = [36, bot_pain3]
{
    local float r;
    r = (MOVETYPE_STEP * random()) + self.skil;
    if(r > FL_SWIM)
    {
        ai_botrun(BOTSPEED);
    }
    else
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_pain3
// function begins at statement 26399, parm_start=15607
// OP_STATE	5685	15607	0
// OP_LOAD_F	28	553	15608
// OP_GE	15608	214	15609
// OP_IFNOT	15609	4	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_pain3 = [37, bot_pain4]
{
    if(self.skil >= TRUE)
    {
        ai_botrun(BOTSPEED);
    }
    else
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_pain4
// function begins at statement 26410, parm_start=15610
// OP_STATE	5687	15610	0
// OP_LOAD_F	28	553	15611
// OP_GT	15611	213	15612
// OP_IFNOT	15612	4	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_pain4 = [38, bot_pain5]
{
    if(self.skil > FALSE)
    {
        ai_botrun(BOTSPEED);
    }
    else
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_pain5
// function begins at statement 26421, parm_start=15613
// OP_STATE	5689	15613	0
// OP_LOAD_F	28	553	15614
// OP_GT	15614	216	15615
// OP_IFNOT	15615	4	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_pain5 = [39, bot_pain6]
{
    if(self.skil > FL_SWIM)
    {
        ai_botrun(BOTSPEED);
    }
    else
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_pain6
// function begins at statement 26432, parm_start=15616
// OP_STATE	2101	11629	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_pain6 = [40, bot_run]
{
    ai_botrun(BOTSPEED);
    BotPostThink();
};

// bot_axpain1
// function begins at statement 26437, parm_start=15617
// OP_STATE	5692	15617	0
// OP_CALL0	5639	0	0
// OP_ADDRESS	28	156	15618
// OP_STOREP_F	213	15618	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axpain1 = [29, bot_axpain2]
{
    PainSound();
    self.weaponframe = FALSE;
    BotPostThink();
};

// bot_axpain2
// function begins at statement 26443, parm_start=15619
// OP_STATE	304	15619	0
// OP_CALL0	452	0	0
// OP_MUL_F	229	1	15621
// OP_LOAD_F	28	553	15622
// OP_ADD_F	15621	15622	15623
// OP_STORE_F	15623	15620	0
// OP_GT	15620	216	15624
// OP_IFNOT	15624	4	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axpain2 = [30, bot_axpain3]
{
    local float r;
    r = (MOVETYPE_STEP * random()) + self.skil;
    if(r > FL_SWIM)
    {
        ai_botrun(BOTSPEED);
    }
    else
    {
        ai_botcharge(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_axpain3
// function begins at statement 26458, parm_start=15625
// OP_STATE	305	15625	0
// OP_LOAD_F	28	553	15626
// OP_GE	15626	214	15627
// OP_IFNOT	15627	3	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axpain3 = [31, bot_axpain4]
{
    
    if(self.skil >= TRUE)
    {
        ai_botrun(BOTSPEED);
    }
    
    BotPostThink();
};

// bot_axpain4
// function begins at statement 26466, parm_start=15628
// OP_STATE	219	15628	0
// OP_STORE_V	605	4	0
// OP_CALL1	14912	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axpain4 = [32, bot_axpain5]
{
    ai_botcharge(BOTSPEED);
    BotPostThink();
};

// bot_axpain5
// function begins at statement 26471, parm_start=15629
// OP_STATE	307	15629	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axpain5 = [33, bot_axpain6]
{
    ai_botrun(BOTSPEED);
    BotPostThink();
};

// bot_axpain6
// function begins at statement 26476, parm_start=15630
// OP_STATE	5699	11629	0
// OP_STORE_V	605	4	0
// OP_CALL1	13602	0	0
// OP_CALL0	11472	0	0
// OP_DONE	0	0	0
void () bot_axpain6 = [34, bot_run]
{
    ai_botrun(BOTSPEED);
    BotPostThink();
};

// bot_pain
// function begins at statement 26481, parm_start=15630
// OP_LOAD_F	28	156	15630
// OP_IFNOT	15630	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	376	15631
// OP_GT	15631	31	15632
// OP_IFNOT	15632	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	15633
// OP_EQ_F	15633	253	15634
// OP_IFNOT	15634	3	0
// OP_CALL0	15616	0	0
// OP_GOTO	2	0	0
// OP_CALL0	15598	0	0
// OP_DONE	0	0	0
void () bot_pain = 
{
    
    if(self.weaponframe)
    {
        return;
    }
    
    
    if(self.invisible_finished > time)
    {
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        bot_axpain1();
    }
    else
    {
        bot_pain1();
    }
    
};

void () bot_diea1;
void () bot_dieb1;
void () bot_diec1;
void () bot_died1;
void () bot_diee1;
void () bot_die_ax1;
// BotDead
// function begins at statement 26495, parm_start=15641
// OP_ADDRESS	28	150	15641
// OP_ADD_F	31	1369	15642
// OP_CALL0	452	0	0
// OP_ADD_F	606	228	15643
// OP_MUL_F	1	15643	15644
// OP_MUL_F	15644	993	15645
// OP_ADD_F	15642	15645	15646
// OP_STOREP_F	15646	15641	0
// OP_IFNOT	37	6	0
// OP_ADDRESS	28	150	15647
// OP_LOAD_F	28	150	15648
// OP_CALL0	452	0	0
// OP_ADD_F	15648	1	15649
// OP_STOREP_F	15649	15647	0
// OP_IFNOT	621	8	0
// OP_ADDRESS	28	150	15650
// OP_LOAD_F	28	150	15651
// OP_CALL0	452	0	0
// OP_MUL_F	230	1	15652
// OP_ADD_F	15651	15652	15653
// OP_STOREP_F	15653	15650	0
// OP_STORE_F	213	621	0
// OP_ADDRESS	28	148	15654
// OP_STOREP_FNC	11576	15654	0
// OP_ADDRESS	28	165	15655
// OP_STOREP_F	248	15655	0
// OP_DONE	0	0	0
void () BotDead = 
{
    self.nextthink = (time + 0.3) + ((random() * (NUMBOTS + MOVETYPE_WALK)) * 0.1);
    
    if(teamplay)
    {
        self.nextthink = self.nextthink + random();
    }
    
    
    if(TELEFRAGFLAG)
    {
        self.nextthink = self.nextthink + (MOVETYPE_FLY * random());
        TELEFRAGFLAG = FALSE;
    }
    
    self.think = respawnBot;
    self.deadflag = DEAD_DEAD;
};

// BotDie
// function begins at statement 26522, parm_start=15656
// OP_LOAD_F	28	165	15657
// OP_NE_F	15657	246	15658
// OP_IFNOT	15658	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	162	15659
// OP_LOAD_F	28	162	15660
// OP_LOAD_F	28	162	15661
// OP_BITAND	15661	272	15662
// OP_SUB_F	15660	15662	15663
// OP_STOREP_F	15663	15659	0
// OP_ADDRESS	28	376	15664
// OP_STOREP_F	213	15664	0
// OP_ADDRESS	28	375	15665
// OP_STOREP_F	213	15665	0
// OP_ADDRESS	28	377	15666
// OP_STOREP_F	213	15666	0
// OP_ADDRESS	28	378	15667
// OP_STOREP_F	213	15667	0
// OP_ADDRESS	28	93	15668
// OP_STOREP_F	4441	15668	0
// OP_CALL0	3034	0	0
// OP_ADDRESS	28	155	15669
// OP_STOREP_S	959	15669	0
// OP_ADDRESS	28	166	15670
// OP_STOREP_V	5913	15670	0
// OP_ADDRESS	28	165	15673
// OP_STOREP_F	247	15673	0
// OP_ADDRESS	28	104	15674
// OP_STOREP_F	237	15674	0
// OP_ADDRESS	28	182	15675
// OP_LOAD_F	28	182	15676
// OP_LOAD_F	28	182	15677
// OP_BITAND	15677	223	15678
// OP_SUB_F	15676	15678	15679
// OP_STOREP_F	15679	15675	0
// OP_ADDRESS	28	103	15680
// OP_STOREP_F	231	15680	0
// OP_LOAD_F	28	116	15681
// OP_LT	15681	235	15682
// OP_IFNOT	15682	7	0
// OP_ADDRESS	28	116	15683
// OP_LOAD_F	28	116	15684
// OP_CALL0	452	0	0
// OP_MUL_F	1	3070	15685
// OP_ADD_F	15684	15685	15686
// OP_STOREP_F	15686	15683	0
// OP_LOAD_F	28	152	15687
// OP_LT	15687	5327	15688
// OP_IFNOT	15688	4	0
// OP_CALL0	5876	0	0
// OP_CALL0	11471	0	0
// OP_RETURN	0	0	0
// OP_CALL0	5760	0	0
// OP_ADDRESS	28	118	15689
// OP_STOREP_F	213	15689	0
// OP_ADDRESS	28	120	15690
// OP_STOREP_F	213	15690	0
// OP_LOAD_F	28	154	15691
// OP_EQ_F	15691	253	15692
// OP_IFNOT	15692	3	0
// OP_CALL0	15640	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	4739	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	15656	0
// OP_NOT_F	15656	0	15693
// OP_IFNOT	15693	7	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	231	15694
// OP_STORE_V	15694	4	0
// OP_CALL1	481	0	0
// OP_ADD_F	214	1	15695
// OP_STORE_F	15695	15656	0
// OP_EQ_F	15656	214	15696
// OP_IFNOT	15696	3	0
// OP_CALL0	15635	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	15656	216	15697
// OP_IFNOT	15697	3	0
// OP_CALL0	15636	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	15656	228	15698
// OP_IFNOT	15698	3	0
// OP_CALL0	15637	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	15656	229	15699
// OP_IFNOT	15699	3	0
// OP_CALL0	15638	0	0
// OP_GOTO	2	0	0
// OP_CALL0	15639	0	0
// OP_DONE	0	0	0
void () BotDie = 
{
    local float i;
    
    if(self.deadflag != DEAD_NO)
    {
        return;
    }
    
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    self.modelindex = modelindex_player;
    DropBackpack();
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    
    if(self.velocity_z < MOVETYPE_BOUNCE)
    {
        self.velocity_z = self.velocity_z + (random() * 300);
    }
    
    
    if(self.health < -40)
    {
        GibPlayer();
        BotDead();
        return;
    }
    
    DeathSound();
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    
    if(self.weapon == IT_AXE)
    {
        bot_die_ax1();
        return;
    }
    
    i = cvar("temp1");
    
    if(!i)
    {
        i = TRUE + (floor(random() * MOVETYPE_TOSS));
    }
    
    if(i == TRUE)
    {
        bot_diea1();
    }
    else
    {
        if(i == FL_SWIM)
        {
            bot_dieb1();
        }
        else
        {
            if(i == MOVETYPE_WALK)
            {
                bot_diec1();
            }
            else
            {
                if(i == MOVETYPE_STEP)
                {
                    bot_died1();
                }
                else
                {
                    bot_diee1();
                }
                
            }
            
        }
        
    }
    
};

// bot_diea1
// function begins at statement 26613, parm_start=15700
// OP_STATE	756	15700	0
// OP_DONE	0	0	0
void () bot_diea1 = [50, bot_diea2]
{
};

// bot_diea2
// function begins at statement 26615, parm_start=15701
// OP_STATE	5951	15701	0
// OP_DONE	0	0	0
void () bot_diea2 = [51, bot_diea3]
{
};

// bot_diea3
// function begins at statement 26617, parm_start=15702
// OP_STATE	5953	15702	0
// OP_DONE	0	0	0
void () bot_diea3 = [52, bot_diea4]
{
};

// bot_diea4
// function begins at statement 26619, parm_start=15703
// OP_STATE	5955	15703	0
// OP_DONE	0	0	0
void () bot_diea4 = [53, bot_diea5]
{
};

// bot_diea5
// function begins at statement 26621, parm_start=15704
// OP_STATE	5957	15704	0
// OP_DONE	0	0	0
void () bot_diea5 = [54, bot_diea6]
{
};

// bot_diea6
// function begins at statement 26623, parm_start=15705
// OP_STATE	5959	15705	0
// OP_DONE	0	0	0
void () bot_diea6 = [55, bot_diea7]
{
};

// bot_diea7
// function begins at statement 26625, parm_start=15706
// OP_STATE	5961	15706	0
// OP_DONE	0	0	0
void () bot_diea7 = [56, bot_diea8]
{
};

// bot_diea8
// function begins at statement 26627, parm_start=15707
// OP_STATE	5963	15707	0
// OP_DONE	0	0	0
void () bot_diea8 = [57, bot_diea9]
{
};

// bot_diea9
// function begins at statement 26629, parm_start=15708
// OP_STATE	5965	15708	0
// OP_DONE	0	0	0
void () bot_diea9 = [58, bot_diea10]
{
};

// bot_diea10
// function begins at statement 26631, parm_start=15709
// OP_STATE	5967	15709	0
// OP_DONE	0	0	0
void () bot_diea10 = [59, bot_diea11]
{
};

// bot_diea11
// function begins at statement 26633, parm_start=15710
// OP_STATE	730	15709	0
// OP_CALL0	11471	0	0
// OP_DONE	0	0	0
void () bot_diea11 = [60, bot_diea11]
{
    BotDead();
};

// bot_dieb1
// function begins at statement 26636, parm_start=15710
// OP_STATE	5969	15710	0
// OP_DONE	0	0	0
void () bot_dieb1 = [61, bot_dieb2]
{
};

// bot_dieb2
// function begins at statement 26638, parm_start=15711
// OP_STATE	5971	15711	0
// OP_DONE	0	0	0
void () bot_dieb2 = [62, bot_dieb3]
{
};

// bot_dieb3
// function begins at statement 26640, parm_start=15712
// OP_STATE	4366	15712	0
// OP_DONE	0	0	0
void () bot_dieb3 = [63, bot_dieb4]
{
};

// bot_dieb4
// function begins at statement 26642, parm_start=15713
// OP_STATE	220	15713	0
// OP_DONE	0	0	0
void () bot_dieb4 = [64, bot_dieb5]
{
};

// bot_dieb5
// function begins at statement 26644, parm_start=15714
// OP_STATE	5975	15714	0
// OP_DONE	0	0	0
void () bot_dieb5 = [65, bot_dieb6]
{
};

// bot_dieb6
// function begins at statement 26646, parm_start=15715
// OP_STATE	5977	15715	0
// OP_DONE	0	0	0
void () bot_dieb6 = [66, bot_dieb7]
{
};

// bot_dieb7
// function begins at statement 26648, parm_start=15716
// OP_STATE	5979	15716	0
// OP_DONE	0	0	0
void () bot_dieb7 = [67, bot_dieb8]
{
};

// bot_dieb8
// function begins at statement 26650, parm_start=15717
// OP_STATE	5981	15717	0
// OP_DONE	0	0	0
void () bot_dieb8 = [68, bot_dieb9]
{
};

// bot_dieb9
// function begins at statement 26652, parm_start=15718
// OP_STATE	5983	15717	0
// OP_CALL0	11471	0	0
// OP_DONE	0	0	0
void () bot_dieb9 = [69, bot_dieb9]
{
    BotDead();
};

// bot_diec1
// function begins at statement 26655, parm_start=15718
// OP_STATE	5984	15718	0
// OP_DONE	0	0	0
void () bot_diec1 = [70, bot_diec2]
{
};

// bot_diec2
// function begins at statement 26657, parm_start=15719
// OP_STATE	5986	15719	0
// OP_DONE	0	0	0
void () bot_diec2 = [71, bot_diec3]
{
};

// bot_diec3
// function begins at statement 26659, parm_start=15720
// OP_STATE	5988	15720	0
// OP_DONE	0	0	0
void () bot_diec3 = [72, bot_diec4]
{
};

// bot_diec4
// function begins at statement 26661, parm_start=15721
// OP_STATE	3216	15721	0
// OP_DONE	0	0	0
void () bot_diec4 = [73, bot_diec5]
{
};

// bot_diec5
// function begins at statement 26663, parm_start=15722
// OP_STATE	5991	15722	0
// OP_DONE	0	0	0
void () bot_diec5 = [74, bot_diec6]
{
};

// bot_diec6
// function begins at statement 26665, parm_start=15723
// OP_STATE	5993	15723	0
// OP_DONE	0	0	0
void () bot_diec6 = [75, bot_diec7]
{
};

// bot_diec7
// function begins at statement 26667, parm_start=15724
// OP_STATE	5995	15724	0
// OP_DONE	0	0	0
void () bot_diec7 = [76, bot_diec8]
{
};

// bot_diec8
// function begins at statement 26669, parm_start=15725
// OP_STATE	5997	15725	0
// OP_DONE	0	0	0
void () bot_diec8 = [77, bot_diec9]
{
};

// bot_diec9
// function begins at statement 26671, parm_start=15726
// OP_STATE	5999	15726	0
// OP_DONE	0	0	0
void () bot_diec9 = [78, bot_diec10]
{
};

// bot_diec10
// function begins at statement 26673, parm_start=15727
// OP_STATE	6001	15727	0
// OP_DONE	0	0	0
void () bot_diec10 = [79, bot_diec11]
{
};

// bot_diec11
// function begins at statement 26675, parm_start=15728
// OP_STATE	1178	15728	0
// OP_DONE	0	0	0
void () bot_diec11 = [80, bot_diec12]
{
};

// bot_diec12
// function begins at statement 26677, parm_start=15729
// OP_STATE	6004	15729	0
// OP_DONE	0	0	0
void () bot_diec12 = [81, bot_diec13]
{
};

// bot_diec13
// function begins at statement 26679, parm_start=15730
// OP_STATE	6006	15730	0
// OP_DONE	0	0	0
void () bot_diec13 = [82, bot_diec14]
{
};

// bot_diec14
// function begins at statement 26681, parm_start=15731
// OP_STATE	6008	15731	0
// OP_DONE	0	0	0
void () bot_diec14 = [83, bot_diec15]
{
};

// bot_diec15
// function begins at statement 26683, parm_start=15732
// OP_STATE	6010	15731	0
// OP_CALL0	11471	0	0
// OP_DONE	0	0	0
void () bot_diec15 = [84, bot_diec15]
{
    BotDead();
};

// bot_died1
// function begins at statement 26686, parm_start=15732
// OP_STATE	6011	15732	0
// OP_DONE	0	0	0
void () bot_died1 = [85, bot_died2]
{
};

// bot_died2
// function begins at statement 26688, parm_start=15733
// OP_STATE	6013	15733	0
// OP_DONE	0	0	0
void () bot_died2 = [86, bot_died3]
{
};

// bot_died3
// function begins at statement 26690, parm_start=15734
// OP_STATE	6015	15734	0
// OP_DONE	0	0	0
void () bot_died3 = [87, bot_died4]
{
};

// bot_died4
// function begins at statement 26692, parm_start=15735
// OP_STATE	6017	15735	0
// OP_DONE	0	0	0
void () bot_died4 = [88, bot_died5]
{
};

// bot_died5
// function begins at statement 26694, parm_start=15736
// OP_STATE	6019	15736	0
// OP_DONE	0	0	0
void () bot_died5 = [89, bot_died6]
{
};

// bot_died6
// function begins at statement 26696, parm_start=15737
// OP_STATE	1789	15737	0
// OP_DONE	0	0	0
void () bot_died6 = [90, bot_died7]
{
};

// bot_died7
// function begins at statement 26698, parm_start=15738
// OP_STATE	6022	15738	0
// OP_DONE	0	0	0
void () bot_died7 = [91, bot_died8]
{
};

// bot_died8
// function begins at statement 26700, parm_start=15739
// OP_STATE	6024	15739	0
// OP_DONE	0	0	0
void () bot_died8 = [92, bot_died9]
{
};

// bot_died9
// function begins at statement 26702, parm_start=15740
// OP_STATE	6026	15739	0
// OP_CALL0	11471	0	0
// OP_DONE	0	0	0
void () bot_died9 = [93, bot_died9]
{
    BotDead();
};

// bot_diee1
// function begins at statement 26705, parm_start=15740
// OP_STATE	6027	15740	0
// OP_DONE	0	0	0
void () bot_diee1 = [94, bot_diee2]
{
};

// bot_diee2
// function begins at statement 26707, parm_start=15741
// OP_STATE	6029	15741	0
// OP_DONE	0	0	0
void () bot_diee2 = [95, bot_diee3]
{
};

// bot_diee3
// function begins at statement 26709, parm_start=15742
// OP_STATE	6031	15742	0
// OP_DONE	0	0	0
void () bot_diee3 = [96, bot_diee4]
{
};

// bot_diee4
// function begins at statement 26711, parm_start=15743
// OP_STATE	6033	15743	0
// OP_DONE	0	0	0
void () bot_diee4 = [97, bot_diee5]
{
};

// bot_diee5
// function begins at statement 26713, parm_start=15744
// OP_STATE	6035	15744	0
// OP_DONE	0	0	0
void () bot_diee5 = [98, bot_diee6]
{
};

// bot_diee6
// function begins at statement 26715, parm_start=15745
// OP_STATE	736	15745	0
// OP_DONE	0	0	0
void () bot_diee6 = [99, bot_diee7]
{
};

// bot_diee7
// function begins at statement 26717, parm_start=15746
// OP_STATE	574	15746	0
// OP_DONE	0	0	0
void () bot_diee7 = [100, bot_diee8]
{
};

// bot_diee8
// function begins at statement 26719, parm_start=15747
// OP_STATE	6039	15747	0
// OP_DONE	0	0	0
void () bot_diee8 = [101, bot_diee9]
{
};

// bot_diee9
// function begins at statement 26721, parm_start=15748
// OP_STATE	6041	15747	0
// OP_CALL0	11471	0	0
// OP_DONE	0	0	0
void () bot_diee9 = [102, bot_diee9]
{
    BotDead();
};

// bot_die_ax1
// function begins at statement 26724, parm_start=15748
// OP_STATE	6042	15748	0
// OP_DONE	0	0	0
void () bot_die_ax1 = [41, bot_die_ax2]
{
};

// bot_die_ax2
// function begins at statement 26726, parm_start=15749
// OP_STATE	6044	15749	0
// OP_DONE	0	0	0
void () bot_die_ax2 = [42, bot_die_ax3]
{
};

// bot_die_ax3
// function begins at statement 26728, parm_start=15750
// OP_STATE	6046	15750	0
// OP_DONE	0	0	0
void () bot_die_ax3 = [43, bot_die_ax4]
{
};

// bot_die_ax4
// function begins at statement 26730, parm_start=15751
// OP_STATE	6048	15751	0
// OP_DONE	0	0	0
void () bot_die_ax4 = [44, bot_die_ax5]
{
};

// bot_die_ax5
// function begins at statement 26732, parm_start=15752
// OP_STATE	1770	15752	0
// OP_DONE	0	0	0
void () bot_die_ax5 = [45, bot_die_ax6]
{
};

// bot_die_ax6
// function begins at statement 26734, parm_start=15753
// OP_STATE	6051	15753	0
// OP_DONE	0	0	0
void () bot_die_ax6 = [46, bot_die_ax7]
{
};

// bot_die_ax7
// function begins at statement 26736, parm_start=15754
// OP_STATE	6053	15754	0
// OP_DONE	0	0	0
void () bot_die_ax7 = [47, bot_die_ax8]
{
};

// bot_die_ax8
// function begins at statement 26738, parm_start=15755
// OP_STATE	6055	15755	0
// OP_DONE	0	0	0
void () bot_die_ax8 = [48, bot_die_ax9]
{
};

// bot_die_ax9
// function begins at statement 26740, parm_start=15756
// OP_STATE	6057	15755	0
// OP_CALL0	11471	0	0
// OP_DONE	0	0	0
void () bot_die_ax9 = [49, bot_die_ax9]
{
    BotDead();
};

