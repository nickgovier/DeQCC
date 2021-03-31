void () AddAnotherBot;
// initBotLevel
// function begins at statement 19766, parm_start=11493
// OP_CALL0	627	0	0
// OP_STORE_ENT	1	622	0
// OP_BITAND	38	588	11498
// OP_DIV_F	11498	218	11499
// OP_STORE_F	11499	11493	0
// OP_BITAND	38	588	11500
// OP_SUB_F	38	11500	11501
// OP_SUB_F	11501	593	11502
// OP_STORE_F	11502	38	0
// OP_STORE_F	213	606	0
// OP_STORE_F	213	612	0
// OP_STORE_F	213	614	0
// OP_STORE_F	214	11494	0
// OP_GT	11493	213	11503
// OP_IFNOT	11503	17	0
// OP_SUB_F	11493	214	11504
// OP_STORE_F	11504	11493	0
// OP_LT	606	230	11505
// OP_BITAND	38	594	11506
// OP_NOT_F	11506	0	11507
// OP_AND	11505	11507	11508
// OP_IFNOT	11508	6	0
// OP_MUL_F	11494	305	11509
// OP_BITAND	52	11509	11510
// OP_MUL_F	993	11510	11511
// OP_DIV_F	11511	11494	11512
// OP_STORE_F	11512	349	0
// OP_MUL_F	11494	219	11513
// OP_STORE_F	11513	11494	0
// OP_CALL0	11492	0	0
// OP_GOTO	-17	0	0
// OP_BITAND	38	592	11514
// OP_IFNOT	11514	10	0
// OP_NOT_F	37	0	11515
// OP_IFNOT	11515	7	0
// OP_SUB_F	38	592	11516
// OP_STORE_F	11516	38	0
// OP_BITAND	38	589	11517
// OP_SUB_F	38	11517	11518
// OP_STORE_F	11518	38	0
// OP_RETURN	0	0	0
// OP_GOTO	8	0	0
// OP_IFNOT	37	7	0
// OP_ADD_F	38	592	11519
// OP_STORE_F	11519	38	0
// OP_BITAND	38	589	11520
// OP_SUB_F	38	11520	11521
// OP_STORE_F	11521	38	0
// OP_RETURN	0	0	0
// OP_NOT_F	37	0	11522
// OP_IFNOT	11522	2	0
// OP_RETURN	0	0	0
// OP_BITAND	38	589	11523
// OP_DIV_F	11523	222	11524
// OP_STORE_F	11524	11493	0
// OP_EQ_F	11493	213	11525
// OP_IFNOT	11525	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11496	0
// OP_IFNOT	11496	29	0
// OP_STORE_F	213	11495	0
// OP_STORE_F	214	11494	0
// OP_LT	11495	11493	11526
// OP_IFNOT	11526	19	0
// OP_ADD_F	11495	214	11527
// OP_STORE_F	11527	11495	0
// OP_LT	11495	231	11528
// OP_BITAND	38	594	11529
// OP_NOT_F	11529	0	11530
// OP_AND	11528	11530	11531
// OP_IFNOT	11531	6	0
// OP_MUL_F	11494	305	11532
// OP_BITAND	53	11532	11533
// OP_MUL_F	993	11533	11534
// OP_DIV_F	11534	11494	11535
// OP_STORE_F	11535	349	0
// OP_MUL_F	11494	219	11536
// OP_STORE_F	11536	11494	0
// OP_STORE_V	11496	4	0
// OP_STORE_V	214	7	0
// OP_CALL2	4439	0	0
// OP_GOTO	-19	0	0
// OP_STORE_V	11496	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11496	0
// OP_GOTO	-28	0	0
// OP_BITAND	38	594	11537
// OP_IFNOT	11537	3	0
// OP_SUB_F	38	594	11538
// OP_STORE_F	11538	38	0
// OP_DONE	0	0	0
void () initBotLevel = 
{
    local float num;
    local float offset;
    local float i;
    local entity e;
    local string tmp;
    NOISEQUEUE = noisetarget();
    num = (serverflags & BOTS) / FL_INWATER;
    serverflags = (serverflags - (serverflags & BOTS)) - INITLEVEL;
    NUMBOTS = FALSE;
    NUMPATHS = FALSE;
    NUMPATHERS = FALSE;
    offset = TRUE;
    
    while(num > FALSE)
    {
        num = num - TRUE;
        
        if((NUMBOTS < MOVETYPE_FLY) && (!(serverflags & DEDICATED)))
        {
            skill = (0.100 * (parm10 & (offset * SVC_FINALE))) / offset;
        }
        
        offset = offset * FL_MONSTER;
        AddAnotherBot();
    }
    
    if(serverflags & TEAMFLAG)
    {
        
        if(!teamplay)
        {
            serverflags = serverflags - TEAMFLAG;
            serverflags = serverflags - (serverflags & TEAMBOTS);
            return;
        }
        
    }
    else
    {
        
        if(teamplay)
        {
            serverflags = serverflags + TEAMFLAG;
            serverflags = serverflags - (serverflags & TEAMBOTS);
            return;
        }
        
    }
    
    
    if(!teamplay)
    {
        return;
    }
    
    num = (serverflags & TEAMBOTS) / FL_ITEM;
    
    if(num == FALSE)
    {
        return;
    }
    
    e = find(world, classname, "player");
    
    while(e)
    {
        i = FALSE;
        offset = TRUE;
        
        while(i < num)
        {
            i = i + TRUE;
            
            if((i < MOVETYPE_TOSS) && (!(serverflags & DEDICATED)))
            {
                skill = (0.100 * (parm11 & (offset * SVC_FINALE))) / offset;
            }
            
            offset = offset * FL_MONSTER;
            addTeamBots(e, TRUE);
        }
        
        e = find(e, classname, "player");
    }
    
    
    if(serverflags & DEDICATED)
    {
        serverflags = serverflags - DEDICATED;
    }
    
};

// setBotGravity
// function begins at statement 19863, parm_start=11539
// OP_STORE_V	4298	4	0
// OP_CALL1	487	0	0
// OP_MUL_F	1	993	11543
// OP_STORE_F	11543	607	0
// OP_STORE_V	11544	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	607	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11542	0
// OP_STORE_V	11542	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_F	213	11539	0
// OP_STORE_F	4896	11540	0
// OP_STORE_F	276	608	0
// OP_GT	11539	608	11545
// OP_IFNOT	11545	8	0
// OP_SUB_F	11540	607	11546
// OP_STORE_F	11546	11540	0
// OP_STORE_F	11539	608	0
// OP_MUL_F	11540	993	11547
// OP_ADD_F	11539	11547	11548
// OP_STORE_F	11548	11539	0
// OP_GOTO	-8	0	0
// OP_SUB_F	608	214	11549
// OP_STORE_F	11549	608	0
// OP_STORE_V	11550	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	608	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11542	0
// OP_STORE_V	11542	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_F	213	611	0
// OP_STORE_F	4896	11540	0
// OP_STORE_F	213	11539	0
// OP_GT	11539	276	11551
// OP_IFNOT	11551	9	0
// OP_ADD_F	611	993	11552
// OP_STORE_F	11552	611	0
// OP_SUB_F	11540	607	11553
// OP_STORE_F	11553	11540	0
// OP_MUL_F	11540	993	11554
// OP_ADD_F	11539	11554	11555
// OP_STORE_F	11555	11539	0
// OP_GOTO	-9	0	0
// OP_DIV_F	11539	11540	11556
// OP_SUB_F	611	11556	11557
// OP_STORE_F	11557	611	0
// OP_STORE_V	11558	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	611	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11542	0
// OP_STORE_V	11542	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_F	213	11539	0
// OP_STORE_F	2356	11540	0
// OP_STORE_F	276	610	0
// OP_GT	11539	610	11559
// OP_IFNOT	11559	8	0
// OP_SUB_F	11540	607	11560
// OP_STORE_F	11560	11540	0
// OP_STORE_F	11539	610	0
// OP_MUL_F	11540	993	11561
// OP_ADD_F	11539	11561	11562
// OP_STORE_F	11562	11539	0
// OP_GOTO	-8	0	0
// OP_STORE_V	11563	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	610	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11542	0
// OP_STORE_V	11542	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_MUL_F	993	216	11564
// OP_SUB_F	2356	607	11565
// OP_MUL_F	11564	11565	11566
// OP_DIV_F	11566	607	11567
// OP_STORE_F	11567	609	0
// OP_MUL_F	609	580	11568
// OP_DIV_F	214	11568	11569
// OP_STORE_F	11569	609	0
// OP_STORE_V	11570	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	609	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11542	0
// OP_STORE_V	11542	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	11571	4	0
// OP_CALL1	487	0	0
// OP_DIV_F	1	235	11572
// OP_STORE_F	11572	605	0
// OP_DONE	0	0	0
void () setBotGravity = 
{
    local float newmax;
    local float vel;
    local float sk;
    local string tmp;
    GRAVITY = cvar("sv_gravity") * 0.100;
    dprint("Gravity accel is ");
    tmp = ftos(GRAVITY);
    dprint(tmp);
    dprint("\n");
    newmax = FALSE;
    vel = 270.000;
    MAXJUMP = CONTENT_EMPTY;
    
    while(newmax > MAXJUMP)
    {
        vel = vel - GRAVITY;
        MAXJUMP = newmax;
        newmax = newmax + (vel * 0.100);
    }
    
    MAXJUMP = MAXJUMP - TRUE;
    dprint("Max jump height is ");
    tmp = ftos(MAXJUMP);
    dprint(tmp);
    dprint("\n");
    LEVELJUMPTIME = FALSE;
    vel = 270.000;
    newmax = FALSE;
    
    while(newmax > CONTENT_EMPTY)
    {
        LEVELJUMPTIME = LEVELJUMPTIME + 0.100;
        vel = vel - GRAVITY;
        newmax = newmax + (vel * 0.100);
    }
    
    LEVELJUMPTIME = LEVELJUMPTIME - (newmax / vel);
    dprint("Level jump time is ");
    tmp = ftos(LEVELJUMPTIME);
    dprint(tmp);
    dprint("\n");
    newmax = FALSE;
    vel = 200.000;
    GRENADEMAXHEIGHT = CONTENT_EMPTY;
    
    while(newmax > GRENADEMAXHEIGHT)
    {
        vel = vel - GRAVITY;
        GRENADEMAXHEIGHT = newmax;
        newmax = newmax + (vel * 0.100);
    }
    
    dprint("Max grenade height is ");
    tmp = ftos(GRENADEMAXHEIGHT);
    dprint(tmp);
    dprint("\n");
    INVGRENADELEVELDIST = ((0.100 * FL_SWIM) * (200.000 - GRAVITY)) / GRAVITY;
    INVGRENADELEVELDIST = TRUE / (INVGRENADELEVELDIST * SEARCH_RADIUS);
    dprint("inverse grenade level distance is ");
    tmp = ftos(INVGRENADELEVELDIST);
    dprint(tmp);
    dprint("\n");
    BOTSPEED = cvar("sv_maxspeed") / MOVETYPE_BOUNCE;
};

void () PutBotInServer;
float () numplayers;
float (entity e) totalscore;
// respawnBot
// function begins at statement 19967, parm_start=11577
// OP_STORE_V	28	4	0
// OP_CALL1	4395	0	0
// OP_NOT_F	37	0	11581
// OP_IFNOT	11581	78	0
// OP_BITAND	38	589	11582
// OP_IFNOT	11582	75	0
// OP_CALL0	11574	0	0
// OP_ADD_F	606	1	11583
// OP_STORE_F	11583	11578	0
// OP_BITAND	38	589	11584
// OP_DIV_F	11584	222	11585
// OP_STORE_F	11585	11579	0
// OP_LT	11579	11578	11586
// OP_LOAD_F	28	184	11587
// OP_NE_F	11587	736	11588
// OP_OR	11586	11588	11589
// OP_IFNOT	11589	64	0
// OP_ADDRESS	28	150	11590
// OP_ADD_F	31	214	11591
// OP_STOREP_F	11591	11590	0
// OP_LOAD_F	28	184	11592
// OP_EQ_F	11592	736	11593
// OP_IFNOT	11593	3	0
// OP_SUB_F	606	214	11594
// OP_STORE_F	11594	606	0
// OP_LOAD_ENT	28	418	11595
// OP_STORE_V	11595	4	0
// OP_CALL1	460	0	0
// OP_LOAD_ENT	28	194	11596
// OP_STORE_V	11596	4	0
// OP_CALL1	460	0	0
// OP_ADDRESS	28	148	11597
// OP_STOREP_FNC	519	11597	0
// OP_LOAD_F	28	551	11598
// OP_IFNOT	11598	3	0
// OP_SUB_F	614	214	11599
// OP_STORE_F	11599	614	0
// OP_LOAD_F	28	184	11600
// OP_NE_F	11600	736	11601
// OP_IFNOT	11601	3	0
// OP_STORE_S	11602	11577	0
// OP_GOTO	14	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	11575	0	0
// OP_LT	1	213	11603
// OP_IFNOT	11603	3	0
// OP_STORE_S	11604	11577	0
// OP_GOTO	8	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	11575	0	0
// OP_GT	1	574	11605
// OP_IFNOT	11605	3	0
// OP_STORE_S	11606	11577	0
// OP_GOTO	2	0	0
// OP_STORE_S	11607	11577	0
// OP_LOAD_S	28	571	11608
// OP_STORE_V	11608	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	180	11609
// OP_STORE_V	11609	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	11577	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	571	11610
// OP_STORE_V	11610	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	180	11611
// OP_STORE_V	11611	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5241	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	153	11612
// OP_STORE_V	11612	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11577	0
// OP_STORE_V	11577	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5243	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_GOTO	53	0	0
// OP_LOAD_F	28	184	11613
// OP_NE_F	11613	736	11614
// OP_IFNOT	11614	45	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11580	0
// OP_IFNOT	11580	13	0
// OP_LOAD_F	11580	184	11615
// OP_LOAD_F	28	184	11616
// OP_EQ_F	11615	11616	11617
// OP_IFNOT	11617	3	0
// OP_CALL0	11573	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	11580	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11580	0
// OP_GOTO	-12	0	0
// OP_LOAD_S	28	571	11618
// OP_STORE_V	11618	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	180	11619
// OP_STORE_V	11619	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	11620	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	571	11621
// OP_STORE_V	11621	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	180	11622
// OP_STORE_V	11622	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5241	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	153	11623
// OP_STORE_V	11623	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11577	0
// OP_STORE_V	11577	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5243	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	615	216	11624
// OP_IFNOT	11624	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2246	7	0
// OP_CALL2	4509	0	0
// OP_CALL0	11573	0	0
// OP_DONE	0	0	0
void () respawnBot = 
{
    local string m;
    local float n;
    local float o;
    local entity e;
    CopyToBodyQue(self);
    if(!teamplay)
    {
        
        if(serverflags & TEAMBOTS)
        {
            n = NUMBOTS + numplayers();
            o = (serverflags & TEAMBOTS) / FL_ITEM;
            
            if((o < n) || (self.team != 99.000))
            {
                self.nextthink = time + TRUE;
                
                if(self.team == 99.000)
                {
                    NUMBOTS = NUMBOTS - TRUE;
                }
                
                remove(self.movetarget);
                remove(self.goalentity);
                self.think = SUB_Remove;
                
                if(self.pather)
                {
                    NUMPATHERS = NUMPATHERS - TRUE;
                }
                
                if(self.team != 99.000)
                {
                    m = ": I'm going to find a team server.\n";
                }
                else
                {
                    if(totalscore(self) < FALSE)
                    {
                        m = ": I'm tired of getting fragged.  I'm off\n";
                    }
                    else
                    {
                        if(totalscore(self) > MUST_HAVE)
                        {
                            m = ": I'm going to find some real competition\n";
                        }
                        else
                        {
                            m = ": This server's too crowded.  I'm off\n";
                        }
                        
                    }
                    
                }
                
                bprint(self.teamname);
                bprint(self.netname);
                bprint(m);
                bprint(self.teamname);
                bprint(self.netname);
                bprint(" left the game with ");
                m = ftos(self.frags);
                bprint(m);
                bprint(" frags\n");
                return;
            }
            
        }
        
    }
    else
    {
        if(self.team != 99.000)
        {
            e = find(world, classname, "player");
            
            while(e)
            {
                
                if(e.team == self.team)
                {
                    PutBotInServer();
                    return;
                }
                
                e = find(e, classname, "player");
            }
            
            bprint(self.teamname);
            bprint(self.netname);
            bprint(": Going off to join my team\n");
            bprint(self.teamname);
            bprint(self.netname);
            bprint(" left the game with ");
            m = ftos(self.frags);
            bprint(m);
            bprint(" frags\n");
            return;
        }
        else
        {
            
            if(SKINSMODE == FL_SWIM)
            {
                skinChange(self, 15.000);
            }
            
        }
        
    }
    
    PutBotInServer();
};

void () bot_pain;
void () BotDie;
void () bot_stand1;
void () bot_walk;
void () bot_run;
void () bot_start;
void () dmbot_melee;
entity () botmovetarget;
// PutBotInServer
// function begins at statement 20102, parm_start=11633
// OP_ADDRESS	28	129	11639
// OP_STOREP_S	2056	11639	0
// OP_ADDRESS	28	152	11640
// OP_STOREP_F	574	11640	0
// OP_ADDRESS	28	163	11641
// OP_STOREP_F	252	11641	0
// OP_ADDRESS	28	104	11642
// OP_STOREP_F	240	11642	0
// OP_ADDRESS	28	103	11643
// OP_STOREP_F	229	11643	0
// OP_ADDRESS	28	388	11644
// OP_STOREP_F	213	11644	0
// OP_ADDRESS	28	185	11645
// OP_STOREP_F	574	11645	0
// OP_ADDRESS	28	391	11646
// OP_ADD_F	31	304	11647
// OP_STOREP_F	11647	11646	0
// OP_ADDRESS	28	420	11648
// OP_STOREP_F	214	11648	0
// OP_ADDRESS	28	377	11649
// OP_STOREP_F	213	11649	0
// OP_ADDRESS	28	378	11650
// OP_STOREP_F	213	11650	0
// OP_ADDRESS	28	376	11651
// OP_STOREP_F	213	11651	0
// OP_ADDRESS	28	375	11652
// OP_STOREP_F	213	11652	0
// OP_ADDRESS	28	133	11653
// OP_STOREP_F	213	11653	0
// OP_ADDRESS	28	379	11654
// OP_STOREP_F	213	11654	0
// OP_ADDRESS	28	192	11655
// OP_LOAD_F	28	553	11656
// OP_MUL_F	2261	11656	11657
// OP_ADD_F	1770	11657	11658
// OP_STOREP_F	11658	11655	0
// OP_ADDRESS	28	365	11659
// OP_STOREP_F	596	11659	0
// OP_LOAD_ENT	28	194	11660
// OP_EQ_E	11660	30	11661
// OP_IFNOT	11661	4	0
// OP_ADDRESS	28	194	11662
// OP_CALL0	11632	0	0
// OP_STOREP_ENT	1	11662	0
// OP_LOAD_ENT	28	194	11663
// OP_ADDRESS	11663	194	11664
// OP_STOREP_ENT	30	11664	0
// OP_CALL0	90	0	0
// OP_CALL0	4510	0	0
// OP_CALL0	2169	0	0
// OP_ADDRESS	28	366	11665
// OP_STOREP_F	31	11665	0
// OP_ADDRESS	28	373	11666
// OP_STOREP_F	31	11666	0
// OP_ADDRESS	28	361	11667
// OP_STOREP_FNC	11625	11667	0
// OP_ADDRESS	28	362	11668
// OP_STOREP_FNC	11626	11668	0
// OP_ADDRESS	28	356	11669
// OP_STOREP_FNC	11627	11669	0
// OP_ADDRESS	28	357	11670
// OP_STOREP_FNC	11628	11670	0
// OP_ADDRESS	28	358	11671
// OP_STOREP_FNC	11629	11671	0
// OP_ADDRESS	28	360	11672
// OP_STOREP_FNC	11631	11672	0
// OP_ADDRESS	28	524	11673
// OP_STOREP_FNC	876	11673	0
// OP_ADDRESS	28	148	11674
// OP_STOREP_FNC	11630	11674	0
// OP_ADDRESS	28	150	11675
// OP_ADD_F	31	993	11676
// OP_STOREP_F	11676	11675	0
// OP_ADDRESS	28	181	11677
// OP_STOREP_ENT	30	11677	0
// OP_ADDRESS	28	552	11678
// OP_STOREP_F	585	11678	0
// OP_ADDRESS	28	165	11679
// OP_STOREP_F	246	11679	0
// OP_ADDRESS	28	417	11680
// OP_STOREP_F	213	11680	0
// OP_CALL0	4642	0	0
// OP_STORE_ENT	1	11633	0
// OP_LOAD_V	11633	105	11681
// OP_ADD_V	11681	713	11684
// OP_STORE_V	11684	11634	0
// OP_ADDRESS	28	105	11687
// OP_STOREP_V	11634	11687	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11634	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	28	117	11690
// OP_LOAD_V	11633	117	11693
// OP_STOREP_V	11693	11690	0
// OP_ADDRESS	28	174	11696
// OP_STOREP_F	214	11696	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4343	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	93	11697
// OP_STORE_F	11697	4440	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4342	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	93	11698
// OP_STORE_F	11698	4441	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_LOAD_ENT	28	418	11699
// OP_EQ_E	11699	30	11700
// OP_IFNOT	11700	3	0
// OP_CALL0	4659	0	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	28	418	11701
// OP_STORE_V	11701	4	0
// OP_LOAD_V	28	105	11702
// OP_STORE_V	11702	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	28	418	11705
// OP_ADDRESS	11705	418	11706
// OP_STOREP_ENT	30	11706	0
// OP_STORE_V	28	4	0
// OP_CALL1	11242	0	0
// OP_LOAD_F	28	551	11707
// OP_IFNOT	11707	5	0
// OP_SUB_F	614	214	11708
// OP_STORE_F	11708	614	0
// OP_ADDRESS	28	551	11709
// OP_STOREP_F	213	11709	0
// OP_LT	614	582	11710
// OP_IFNOT	11710	5	0
// OP_ADDRESS	28	551	11711
// OP_STOREP_F	214	11711	0
// OP_ADD_F	614	214	11712
// OP_STORE_F	11712	614	0
// OP_ADDRESS	28	166	11713
// OP_STOREP_V	4707	11713	0
// OP_LOAD_V	28	117	11716
// OP_STORE_V	11716	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	11719
// OP_MUL_VF	59	576	11722
// OP_ADD_V	11719	11722	11725
// OP_STORE_V	11725	4	0
// OP_CALL1	4434	0	0
// OP_LOAD_V	28	105	11728
// OP_STORE_V	11728	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	4435	0	0
// OP_LT	605	219	11731
// OP_IFNOT	11731	11	0
// OP_STORE_V	11732	4	0
// OP_CALL1	470	0	0
// OP_MUL_F	605	235	11733
// OP_STORE_V	11733	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11637	0
// OP_STORE_V	11637	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	11734	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	11638	0
// OP_NE_F	11638	11735	11736
// OP_IFNOT	11736	3	0
// OP_STORE_V	11737	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () PutBotInServer = 
{
    local entity spwn;
    local vector spot;
    local string tmp;
    local float aimvar;
    self.classname = "dmbot";
    self.health = MUST_HAVE;
    self.takedamage = DAMAGE_AIM;
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.show_hostile = FALSE;
    self.max_health = MUST_HAVE;
    self.air_finished = time + SVC_INTERMISSION;
    self.dmg = TRUE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.effects = FALSE;
    self.invincible_time = FALSE;
    self.yaw_speed = 45.000 + (25.000 * self.skil);
    self.lefty = STRAFE_DIR;
    
    if(self.goalentity == world)
    {
        self.goalentity = botmovetarget();
    }
    
    self.goalentity.goalentity = world;
    SetNewParms();
    DecodeLevelParms();
    W_SetCurrentAmmo();
    self.search_time = time;
    self.attack_finished = time;
    self.th_pain = bot_pain;
    self.th_die = BotDie;
    self.th_stand = bot_stand1;
    self.th_walk = bot_walk;
    self.th_run = bot_run;
    self.th_melee = dmbot_melee;
    self.th_cache = cacheenemy;
    self.think = bot_start;
    self.nextthink = time + 0.100;
    self.enemy = world;
    self.pathtype = NEVERTARGET;
    self.deadflag = DEAD_NO;
    self.pausetime = FALSE;
    spwn = SelectSpawnPoint();
    spot = spwn.origin + '0.000 0.000 1.000';
    self.origin = spot;
    setorigin(self, spot);
    self.angles = spwn.angles;
    self.fixangle = TRUE;
    setmodel(self, "progs/eyes.mdl");
    modelindex_eyes = self.modelindex;
    setmodel(self, "progs/player.mdl");
    modelindex_player = self.modelindex;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    if(self.movetarget == world)
    {
        NewCarriedPath();
    }
    else
    {
        setorigin(self.movetarget, self.origin);
    }
    
    self.movetarget.movetarget = world;
    clearCache(self);
    
    if(self.pather)
    {
        NUMPATHERS = NUMPATHERS - TRUE;
        self.pather = FALSE;
    }
    
    
    if(NUMPATHERS < MAXPATHERS)
    {
        self.pather = TRUE;
        NUMPATHERS = NUMPATHERS + TRUE;
    }
    
    self.view_ofs = '0.000 0.000 22.000';
    makevectors(self.angles);
    spawn_tfog(self.origin + (v_forward * KINDA_WANT));
    spawn_tdeath(self.origin, self);
    
    if(BOTSPEED < FL_MONSTER)
    {
        dprint("Feeling kind of slow today (SV_MAXSPEED = ");
        tmp = ftos(BOTSPEED * MOVETYPE_BOUNCE);
        dprint(tmp);
        dprint("\n");
    }
    
    aimvar = cvar("sv_aim");
    
    if(aimvar != 0.930)
    {
        dprint("Seems like sv_aim isn't 0.93\n");
    }
    
};

// SpawnNewBot
// function begins at statement 20273, parm_start=11739
// OP_CALL0	11573	0	0
// OP_LOAD_S	28	571	11740
// OP_STORE_V	11740	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	180	11741
// OP_STORE_V	11741	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	553	11742
// OP_STORE_V	11742	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11739	0
// OP_STORE_V	11743	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	11739	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	11744	4	0
// OP_CALL1	468	0	0
// OP_DONE	0	0	0
void () SpawnNewBot = 
{
    local string tmp;
    PutBotInServer();
    bprint(self.teamname);
    bprint(self.netname);
    tmp = ftos(self.skil);
    bprint(" (skill ");
    bprint(tmp);
    bprint(") entered the game.\n");
};

// AddBot
// function begins at statement 20291, parm_start=11746
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	11746	0
// OP_STORE_ENT	28	11747	0
// OP_STORE_ENT	11746	28	0
// OP_ADDRESS	28	148	11750
// OP_STOREP_FNC	11738	11750	0
// OP_ADDRESS	28	150	11751
// OP_CALL0	452	0	0
// OP_MUL_F	2717	1	11752
// OP_ADD_F	31	11752	11753
// OP_STOREP_F	11753	11751	0
// OP_ADDRESS	28	553	11754
// OP_STOREP_F	349	11754	0
// OP_LOAD_F	28	553	11755
// OP_LT	11755	213	11756
// OP_IFNOT	11756	4	0
// OP_ADDRESS	28	553	11757
// OP_STOREP_F	213	11757	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	553	11758
// OP_GT	11758	228	11759
// OP_IFNOT	11759	3	0
// OP_ADDRESS	28	553	11760
// OP_STOREP_F	228	11760	0
// OP_CALL0	4437	0	0
// OP_STORE_ENT	11747	28	0
// OP_RETURN	11746	0	0
// OP_DONE	0	0	0
entity () AddBot = 
{
    local entity newbot;
    local entity oldself;
    local string mycolor;
    local float plycolor;
    newbot = spawn();
    oldself = self;
    self = newbot;
    self.think = SpawnNewBot;
    self.nextthink = time + (12.000 * random());
    self.skil = skill;
    if(self.skil < FALSE)
    {
        self.skil = FALSE;
    }
    else
    {
        
        if(self.skil > MOVETYPE_WALK)
        {
            self.skil = MOVETYPE_WALK;
        }
        
    }
    
    initscore();
    self = oldself;
    return newbot;
};

// numplayers
// function begins at statement 20319, parm_start=11761
// OP_STORE_F	213	11762	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11761	0
// OP_IFNOT	11761	9	0
// OP_ADD_F	11762	214	11763
// OP_STORE_F	11763	11762	0
// OP_STORE_V	11761	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11761	0
// OP_GOTO	-8	0	0
// OP_RETURN	11762	0	0
// OP_DONE	0	0	0
float () numplayers = 
{
    local entity e;
    local float n;
    n = FALSE;
    e = find(world, classname, "player");
    
    while(e)
    {
        n = n + TRUE;
        e = find(e, classname, "player");
    }
    
    return n;
};

// AddAnotherBot
// function begins at statement 20336, parm_start=11764
// OP_ADDRESS	28	173	11768
// OP_STOREP_F	213	11768	0
// OP_NOT_F	37	0	11769
// OP_IFNOT	11769	12	0
// OP_BITAND	38	589	11770
// OP_IFNOT	11770	10	0
// OP_CALL0	11574	0	0
// OP_ADD_F	606	1	11771
// OP_STORE_F	11771	11766	0
// OP_BITAND	38	589	11772
// OP_LT	11772	11766	11773
// OP_IFNOT	11773	4	0
// OP_STORE_V	11774	4	0
// OP_CALL1	470	0	0
// OP_RETURN	0	0	0
// OP_CALL0	11745	0	0
// OP_STORE_ENT	1	11764	0
// OP_ADDRESS	11764	183	11775
// OP_STOREP_F	213	11775	0
// OP_IFNOT	37	5	0
// OP_STORE_V	11764	4	0
// OP_STORE_V	2246	7	0
// OP_CALL2	4509	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	615	214	11776
// OP_IFNOT	11776	5	0
// OP_STORE_V	11764	4	0
// OP_STORE_V	606	7	0
// OP_CALL2	4509	0	0
// OP_GOTO	19	0	0
// OP_EQ_F	615	216	11777
// OP_IFNOT	11777	17	0
// OP_LOAD_F	11764	553	11778
// OP_BITAND	11778	228	11779
// OP_ADD_F	11779	214	11780
// OP_STORE_V	11780	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11767	0
// OP_STORE_V	11767	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	11781	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	11764	4	0
// OP_LOAD_F	11764	553	11782
// OP_BITAND	11782	228	11783
// OP_ADD_F	11783	214	11784
// OP_STORE_V	11784	7	0
// OP_CALL2	4509	0	0
// OP_ADDRESS	11764	184	11785
// OP_STOREP_F	736	11785	0
// OP_IFNOT	624	5	0
// OP_ADDRESS	11764	571	11786
// OP_LOAD_S	28	180	11787
// OP_STOREP_S	11787	11786	0
// OP_GOTO	21	0	0
// OP_LOAD_F	11764	553	11788
// OP_LT	11788	214	11789
// OP_IFNOT	11789	4	0
// OP_ADDRESS	11764	571	11790
// OP_STOREP_S	11791	11790	0
// OP_GOTO	15	0	0
// OP_LOAD_F	11764	553	11792
// OP_LT	11792	216	11793
// OP_IFNOT	11793	4	0
// OP_ADDRESS	11764	571	11794
// OP_STOREP_S	11795	11794	0
// OP_GOTO	9	0	0
// OP_LOAD_F	11764	553	11796
// OP_LT	11796	228	11797
// OP_IFNOT	11797	4	0
// OP_ADDRESS	11764	571	11798
// OP_STOREP_S	11799	11798	0
// OP_GOTO	3	0	0
// OP_ADDRESS	11764	571	11800
// OP_STOREP_S	11801	11800	0
// OP_ADD_F	606	214	11802
// OP_STORE_F	11802	606	0
// OP_EQ_F	606	214	11803
// OP_IFNOT	11803	4	0
// OP_ADDRESS	11764	150	11804
// OP_ADD_F	31	993	11805
// OP_STOREP_F	11805	11804	0
// OP_LT	606	218	11806
// OP_IFNOT	11806	6	0
// OP_BITAND	38	588	11807
// OP_SUB_F	38	11807	11808
// OP_MUL_F	218	606	11809
// OP_ADD_F	11808	11809	11810
// OP_STORE_F	11810	38	0
// OP_EQ_F	606	214	11811
// OP_IFNOT	11811	4	0
// OP_ADDRESS	11764	180	11812
// OP_STOREP_S	11813	11812	0
// OP_GOTO	70	0	0
// OP_EQ_F	606	216	11814
// OP_IFNOT	11814	4	0
// OP_ADDRESS	11764	180	11815
// OP_STOREP_S	11816	11815	0
// OP_GOTO	65	0	0
// OP_EQ_F	606	228	11817
// OP_IFNOT	11817	4	0
// OP_ADDRESS	11764	180	11818
// OP_STOREP_S	11819	11818	0
// OP_GOTO	60	0	0
// OP_EQ_F	606	229	11820
// OP_IFNOT	11820	4	0
// OP_ADDRESS	11764	180	11821
// OP_STOREP_S	11822	11821	0
// OP_GOTO	55	0	0
// OP_EQ_F	606	230	11823
// OP_IFNOT	11823	4	0
// OP_ADDRESS	11764	180	11824
// OP_STOREP_S	11825	11824	0
// OP_GOTO	50	0	0
// OP_EQ_F	606	231	11826
// OP_IFNOT	11826	4	0
// OP_ADDRESS	11764	180	11827
// OP_STOREP_S	11828	11827	0
// OP_GOTO	45	0	0
// OP_EQ_F	606	232	11829
// OP_IFNOT	11829	4	0
// OP_ADDRESS	11764	180	11830
// OP_STOREP_S	11831	11830	0
// OP_GOTO	40	0	0
// OP_EQ_F	606	217	11832
// OP_IFNOT	11832	4	0
// OP_ADDRESS	11764	180	11833
// OP_STOREP_S	11834	11833	0
// OP_GOTO	35	0	0
// OP_EQ_F	606	234	11835
// OP_IFNOT	11835	4	0
// OP_ADDRESS	11764	180	11836
// OP_STOREP_S	11837	11836	0
// OP_GOTO	30	0	0
// OP_EQ_F	606	235	11838
// OP_IFNOT	11838	4	0
// OP_ADDRESS	11764	180	11839
// OP_STOREP_S	11840	11839	0
// OP_GOTO	25	0	0
// OP_EQ_F	606	236	11841
// OP_IFNOT	11841	4	0
// OP_ADDRESS	11764	180	11842
// OP_STOREP_S	11843	11842	0
// OP_GOTO	20	0	0
// OP_EQ_F	606	2717	11844
// OP_IFNOT	11844	4	0
// OP_ADDRESS	11764	180	11845
// OP_STOREP_S	11846	11845	0
// OP_GOTO	15	0	0
// OP_EQ_F	606	8413	11847
// OP_IFNOT	11847	4	0
// OP_ADDRESS	11764	180	11848
// OP_STOREP_S	11849	11848	0
// OP_GOTO	10	0	0
// OP_EQ_F	606	3382	11850
// OP_IFNOT	11850	4	0
// OP_ADDRESS	11764	180	11851
// OP_STOREP_S	11852	11851	0
// OP_GOTO	5	0	0
// OP_EQ_F	606	2246	11853
// OP_IFNOT	11853	3	0
// OP_ADDRESS	11764	180	11854
// OP_STOREP_S	11855	11854	0
// OP_DONE	0	0	0
void () AddAnotherBot = 
{
    local entity newbot;
    local entity tmp;
    local float n;
    local string st;
    self.impulse = FALSE;
    
    if(!teamplay)
    {
        
        if(serverflags & TEAMBOTS)
        {
            n = NUMBOTS + numplayers();
            
            if((serverflags & TEAMBOTS) < n)
            {
                dprint("Can't add bot - exceeds bound\n");
                return;
            }
            
        }
        
    }
    
    newbot = AddBot();
    newbot.colormap = FALSE;
    if(teamplay)
    {
        skinChange(newbot, 15.000);
    }
    else
    {
        if(SKINSMODE == TRUE)
        {
            skinChange(newbot, NUMBOTS);
        }
        else
        {
            
            if(SKINSMODE == FL_SWIM)
            {
                st = ftos((newbot.skil & MOVETYPE_WALK) + TRUE);
                dprint(st);
                dprint("= skil skin\n");
                skinChange(newbot, (newbot.skil & MOVETYPE_WALK) + TRUE);
            }
            
        }
        
    }
    
    newbot.team = 99.000;
    if(NAMEBOTS)
    {
        newbot.teamname = self.netname;
    }
    else
    {
        if(newbot.skil < TRUE)
        {
            newbot.teamname = "Reaper0Bot";
        }
        else
        {
            if(newbot.skil < FL_SWIM)
            {
                newbot.teamname = "Reaper1Bot";
            }
            else
            {
                if(newbot.skil < MOVETYPE_WALK)
                {
                    newbot.teamname = "Reaper2Bot";
                }
                else
                {
                    newbot.teamname = "Reaper3Bot";
                }
                
            }
            
        }
        
    }
    
    NUMBOTS = NUMBOTS + TRUE;
    
    if(NUMBOTS == TRUE)
    {
        newbot.nextthink = time + 0.100;
    }
    
    
    if(NUMBOTS < FL_INWATER)
    {
        serverflags = (serverflags - (serverflags & BOTS)) + (FL_INWATER * NUMBOTS);
    }
    
    if(NUMBOTS == TRUE)
    {
        newbot.netname = "1";
    }
    else
    {
        if(NUMBOTS == FL_SWIM)
        {
            newbot.netname = "2";
        }
        else
        {
            if(NUMBOTS == MOVETYPE_WALK)
            {
                newbot.netname = "3";
            }
            else
            {
                if(NUMBOTS == MOVETYPE_STEP)
                {
                    newbot.netname = "4";
                }
                else
                {
                    if(NUMBOTS == MOVETYPE_FLY)
                    {
                        newbot.netname = "5";
                    }
                    else
                    {
                        if(NUMBOTS == MOVETYPE_TOSS)
                        {
                            newbot.netname = "6";
                        }
                        else
                        {
                            if(NUMBOTS == MOVETYPE_PUSH)
                            {
                                newbot.netname = "7";
                            }
                            else
                            {
                                if(NUMBOTS == FL_CLIENT)
                                {
                                    newbot.netname = "8";
                                }
                                else
                                {
                                    if(NUMBOTS == MOVETYPE_FLYMISSILE)
                                    {
                                        newbot.netname = "9";
                                    }
                                    else
                                    {
                                        if(NUMBOTS == MOVETYPE_BOUNCE)
                                        {
                                            newbot.netname = "10";
                                        }
                                        else
                                        {
                                            if(NUMBOTS == MOVETYPE_BOUNCEMISSILE)
                                            {
                                                newbot.netname = "11";
                                            }
                                            else
                                            {
                                                if(NUMBOTS == 12.000)
                                                {
                                                    newbot.netname = "12";
                                                }
                                                else
                                                {
                                                    if(NUMBOTS == 13.000)
                                                    {
                                                        newbot.netname = "13";
                                                    }
                                                    else
                                                    {
                                                        if(NUMBOTS == 14.000)
                                                        {
                                                            newbot.netname = "14";
                                                        }
                                                        else
                                                        {
                                                            
                                                            if(NUMBOTS == 15.000)
                                                            {
                                                                newbot.netname = "15";
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
            
        }
        
    }
    
};

// addTeamBots
// function begins at statement 20500, parm_start=11856
// OP_STORE_F	11857	11860	0
// OP_GT	11860	213	11861
// OP_IFNOT	11861	39	0
// OP_CALL0	11745	0	0
// OP_STORE_ENT	1	11858	0
// OP_ADDRESS	11858	183	11862
// OP_LOAD_F	11856	183	11863
// OP_STOREP_F	11863	11862	0
// OP_ADDRESS	11858	184	11864
// OP_LOAD_F	11856	184	11865
// OP_STOREP_F	11865	11864	0
// OP_ADDRESS	11858	571	11866
// OP_LOAD_S	11856	180	11867
// OP_STOREP_S	11867	11866	0
// OP_STORE_V	11858	4	0
// OP_LOAD_F	11856	132	11868
// OP_STORE_V	11868	7	0
// OP_CALL2	4509	0	0
// OP_LOAD_F	11858	553	11869
// OP_LT	11869	214	11870
// OP_IFNOT	11870	4	0
// OP_ADDRESS	11858	180	11871
// OP_STOREP_S	11872	11871	0
// OP_GOTO	15	0	0
// OP_LOAD_F	11858	553	11873
// OP_LT	11873	216	11874
// OP_IFNOT	11874	4	0
// OP_ADDRESS	11858	180	11875
// OP_STOREP_S	11876	11875	0
// OP_GOTO	9	0	0
// OP_LOAD_F	11858	553	11877
// OP_LT	11877	228	11878
// OP_IFNOT	11878	4	0
// OP_ADDRESS	11858	180	11879
// OP_STOREP_S	11880	11879	0
// OP_GOTO	3	0	0
// OP_ADDRESS	11858	180	11881
// OP_STOREP_S	11882	11881	0
// OP_SUB_F	11860	214	11883
// OP_STORE_F	11883	11860	0
// OP_GOTO	-39	0	0
// OP_DONE	0	0	0
void (entity ply, float n) addTeamBots = 
{
    local entity newbot;
    local entity tmp;
    local float i;
    i = n;
    
    while(i > FALSE)
    {
        newbot = AddBot();
        newbot.colormap = ply.colormap;
        newbot.team = ply.team;
        newbot.teamname = ply.netname;
        skinChange(newbot, ply.skin);
        if(newbot.skil < TRUE)
        {
            newbot.netname = "0Bot";
        }
        else
        {
            if(newbot.skil < FL_SWIM)
            {
                newbot.netname = "1Bot";
            }
            else
            {
                if(newbot.skil < MOVETYPE_WALK)
                {
                    newbot.netname = "2Bot";
                }
                else
                {
                    newbot.netname = "3Bot";
                }
                
            }
            
        }
        
        i = i - TRUE;
    }
    
};

// removeTeamBots
// function begins at statement 20542, parm_start=11884
// OP_STORE_F	11885	11886	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11887	0
// OP_GT	11886	213	11888
// OP_IFNOT	11888	31	0
// OP_NE_E	11887	30	11889
// OP_LOAD_F	11887	184	11890
// OP_LOAD_F	11884	184	11891
// OP_NE_F	11890	11891	11892
// OP_AND	11889	11892	11893
// OP_IFNOT	11893	7	0
// OP_STORE_V	11887	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11887	0
// OP_GOTO	-11	0	0
// OP_NOT_ENT	11887	0	11894
// OP_IFNOT	11894	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	11887	551	11895
// OP_IFNOT	11895	3	0
// OP_SUB_F	614	214	11896
// OP_STORE_F	11896	614	0
// OP_LOAD_ENT	11887	418	11897
// OP_STORE_V	11897	4	0
// OP_CALL1	460	0	0
// OP_LOAD_ENT	11887	194	11898
// OP_STORE_V	11898	4	0
// OP_CALL1	460	0	0
// OP_STORE_V	11887	4	0
// OP_CALL1	460	0	0
// OP_SUB_F	11886	214	11899
// OP_STORE_F	11899	11886	0
// OP_GOTO	-31	0	0
// OP_DONE	0	0	0
void (entity ply, float n) removeTeamBots = 
{
    local float i;
    local entity e;
    i = n;
    e = find(world, classname, "dmbot");
    
    while(i > FALSE)
    {
        
        while((e != world) && (e.team != ply.team))
        {
            e = find(e, classname, "dmbot");
        }
        
        
        if(!e)
        {
            return;
        }
        
        
        if(e.pather)
        {
            NUMPATHERS = NUMPATHERS - TRUE;
        }
        
        remove(e.movetarget);
        remove(e.goalentity);
        remove(e);
        i = i - TRUE;
    }
    
};

// removeAllBots
// function begins at statement 20581, parm_start=11901
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11901	0
// OP_IFNOT	11901	22	0
// OP_NOT_ENT	11901	0	11902
// OP_IFNOT	11902	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	11901	551	11903
// OP_IFNOT	11903	3	0
// OP_SUB_F	614	214	11904
// OP_STORE_F	11904	614	0
// OP_LOAD_ENT	11901	418	11905
// OP_STORE_V	11905	4	0
// OP_CALL1	460	0	0
// OP_LOAD_ENT	11901	194	11906
// OP_STORE_V	11906	4	0
// OP_CALL1	460	0	0
// OP_STORE_V	11901	4	0
// OP_CALL1	460	0	0
// OP_STORE_V	11901	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11901	0
// OP_GOTO	-21	0	0
// OP_STORE_F	213	606	0
// OP_STORE_V	11907	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () removeAllBots = 
{
    local entity e;
    e = find(world, classname, "dmbot");
    
    while(e)
    {
        
        if(!e)
        {
            return;
        }
        
        
        if(e.pather)
        {
            NUMPATHERS = NUMPATHERS - TRUE;
        }
        
        remove(e.movetarget);
        remove(e.goalentity);
        remove(e);
        e = find(e, classname, "dmbot");
    }
    
    NUMBOTS = FALSE;
    dprint("All bots removed.\n");
};

// SetMaxBots
// function begins at statement 20612, parm_start=11909
// OP_ADDRESS	28	173	11912
// OP_STOREP_F	213	11912	0
// OP_BITAND	38	592	11913
// OP_IFNOT	11913	7	0
// OP_STORE_V	11914	4	0
// OP_CALL1	470	0	0
// OP_SUB_F	38	592	11915
// OP_BITAND	38	589	11916
// OP_SUB_F	11915	11916	11917
// OP_STORE_F	11917	38	0
// OP_STORE_V	11918	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	11909	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11911	0
// OP_STORE_V	11911	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_BITAND	38	589	11919
// OP_SUB_F	38	11919	11920
// OP_MUL_F	11909	222	11921
// OP_ADD_F	11920	11921	11922
// OP_STORE_F	11922	38	0
// OP_CALL0	11574	0	0
// OP_STORE_F	1	11910	0
// OP_ADD_F	606	11910	11923
// OP_LT	11923	11909	11924
// OP_IFNOT	11924	3	0
// OP_CALL0	11492	0	0
// OP_GOTO	-4	0	0
// OP_DONE	0	0	0
void (float n) SetMaxBots = 
{
    local float t;
    local string tmp;
    self.impulse = FALSE;
    
    if(serverflags & TEAMFLAG)
    {
        dprint("Entering bounded deathmatch mode\n");
        serverflags = (serverflags - TEAMFLAG) - (serverflags & TEAMBOTS);
    }
    
    dprint("Max bots + players set to ");
    tmp = ftos(n);
    dprint(tmp);
    dprint("\n");
    serverflags = (serverflags - (serverflags & TEAMBOTS)) + (n * FL_ITEM);
    t = numplayers();
    
    while((NUMBOTS + t) < n)
    {
        AddAnotherBot();
    }
    
};

// SetTeamBots
// function begins at statement 20644, parm_start=11926
// OP_ADDRESS	28	173	11930
// OP_STOREP_F	213	11930	0
// OP_BITAND	38	592	11931
// OP_NOT_F	11931	0	11932
// OP_IFNOT	11932	7	0
// OP_STORE_V	11933	4	0
// OP_CALL1	470	0	0
// OP_ADD_F	38	592	11934
// OP_BITAND	38	589	11935
// OP_SUB_F	11934	11935	11936
// OP_STORE_F	11936	38	0
// OP_STORE_V	11937	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	11926	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	11929	0
// OP_STORE_V	11929	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_BITAND	38	589	11938
// OP_DIV_F	11938	222	11939
// OP_STORE_F	11939	11927	0
// OP_BITAND	38	589	11940
// OP_SUB_F	38	11940	11941
// OP_MUL_F	11926	222	11942
// OP_ADD_F	11941	11942	11943
// OP_STORE_F	11943	38	0
// OP_LT	11927	11926	11944
// OP_IFNOT	11944	19	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11928	0
// OP_SUB_F	11926	11927	11945
// OP_STORE_F	11945	11927	0
// OP_IFNOT	11928	10	0
// OP_STORE_V	11928	4	0
// OP_STORE_V	11927	7	0
// OP_CALL2	4439	0	0
// OP_STORE_V	11928	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11928	0
// OP_GOTO	-9	0	0
// OP_RETURN	0	0	0
// OP_GT	11927	11926	11946
// OP_IFNOT	11946	19	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11928	0
// OP_IFNOT	11928	12	0
// OP_SUB_F	11927	11926	11947
// OP_STORE_F	11947	11927	0
// OP_STORE_V	11928	4	0
// OP_STORE_V	11927	7	0
// OP_CALL2	4438	0	0
// OP_STORE_V	11928	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11928	0
// OP_GOTO	-11	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float n) SetTeamBots = 
{
    local float t;
    local entity e;
    local string tmp;
    self.impulse = FALSE;
    
    if(!(serverflags & TEAMFLAG))
    {
        dprint("Entering bot team mode\n");
        serverflags = (serverflags + TEAMFLAG) - (serverflags & TEAMBOTS);
    }
    
    dprint("Bots per player team set to ");
    tmp = ftos(n);
    dprint(tmp);
    dprint("\n");
    t = (serverflags & TEAMBOTS) / FL_ITEM;
    serverflags = (serverflags - (serverflags & TEAMBOTS)) + (n * FL_ITEM);
    
    if(t < n)
    {
        e = find(world, classname, "player");
        t = n - t;
        
        while(e)
        {
            addTeamBots(e, t);
            e = find(e, classname, "player");
        }
        
        return;
    }
    
    
    if(t > n)
    {
        e = find(world, classname, "player");
        
        while(e)
        {
            t = t - n;
            removeTeamBots(e, t);
            e = find(e, classname, "player");
        }
        
        return;
    }
    
};

// UpdateTeamColors
// function begins at statement 20713, parm_start=11949
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11949	0
// OP_IFNOT	11949	14	0
// OP_LOAD_F	11949	183	11950
// OP_LOAD_F	28	183	11951
// OP_EQ_F	11950	11951	11952
// OP_IFNOT	11952	4	0
// OP_ADDRESS	11949	184	11953
// OP_LOAD_F	28	184	11954
// OP_STOREP_F	11954	11953	0
// OP_STORE_V	11949	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	11949	0
// OP_GOTO	-13	0	0
// OP_DONE	0	0	0
void () UpdateTeamColors = 
{
    local entity e;
    e = find(world, classname, "dmbot");
    
    while(e)
    {
        
        if(e.colormap == self.colormap)
        {
            e.team = self.team;
        }
        
        e = find(e, classname, "dmbot");
    }
    
};

