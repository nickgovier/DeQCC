float globaldef002681;

// rocket_arena_gotonextmap
// function begins at statement 9862, parm_start=7482
// OP_STORE_V	7490	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	7485	0
// OP_STORE_V	7485	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	7485	0
// OP_EQ_F	7485	213	7491
// OP_IFNOT	7491	4	0
// OP_STORE_V	7483	4	0
// OP_CALL1	507	0	0
// OP_GOTO	96	0	0
// OP_EQ_F	7485	214	7492
// OP_EQ_F	7485	276	7493
// OP_OR	7492	7493	7494
// OP_IFNOT	7494	4	0
// OP_STORE_V	7482	4	0
// OP_CALL1	507	0	0
// OP_GOTO	89	0	0
// OP_GE	7485	216	7495
// OP_IFNOT	7495	52	0
// OP_DIV_F	7485	220	7496
// OP_BITAND	7496	7480	7497
// OP_STORE_F	7497	7486	0
// OP_DIV_F	7485	226	7498
// OP_BITAND	7498	7480	7499
// OP_STORE_F	7499	7487	0
// OP_DIV_F	7485	271	7500
// OP_BITAND	7500	7480	7501
// OP_STORE_F	7501	7488	0
// OP_BITAND	7485	7480	7502
// OP_STORE_F	7502	7485	0
// OP_LT	7485	228	7503
// OP_IFNOT	7503	2	0
// OP_STORE_F	213	7487	0
// OP_LT	7485	229	7504
// OP_IFNOT	7504	2	0
// OP_STORE_F	213	7488	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	7485	7505
// OP_STORE_V	7505	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	214	1	7506
// OP_STORE_F	7506	7484	0
// OP_EQ_F	7484	7486	7507
// OP_EQ_F	7484	7487	7508
// OP_OR	7507	7508	7509
// OP_EQ_F	7484	7488	7510
// OP_OR	7509	7510	7511
// OP_IF	7511	-11	0
// OP_MUL_F	7484	220	7512
// OP_ADD_F	7485	7512	7513
// OP_MUL_F	7486	226	7514
// OP_ADD_F	7513	7514	7515
// OP_MUL_F	7487	271	7516
// OP_ADD_F	7515	7516	7517
// OP_STORE_V	7517	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7490	4	0
// OP_STORE_V	7489	7	0
// OP_CALL2	508	0	0
// OP_STORE_V	7484	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7518	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	7489	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	491	0	0
// OP_GOTO	36	0	0
// OP_STORE_V	7485	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	7485	0
// OP_DIV_F	7485	220	7519
// OP_BITAND	7519	7480	7520
// OP_STORE_F	7520	7486	0
// OP_BITAND	7485	7480	7521
// OP_STORE_F	7521	7485	0
// OP_EQ_F	7486	213	7522
// OP_IFNOT	7522	3	0
// OP_STORE_F	216	7486	0
// OP_GOTO	6	0	0
// OP_ADD_F	7486	214	7523
// OP_STORE_F	7523	7486	0
// OP_GT	7486	7485	7524
// OP_IFNOT	7524	2	0
// OP_STORE_F	214	7486	0
// OP_MUL_F	7486	220	7525
// OP_ADD_F	7485	7525	7526
// OP_MUL_F	276	7526	7527
// OP_STORE_V	7527	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7490	4	0
// OP_STORE_V	7489	7	0
// OP_CALL2	508	0	0
// OP_STORE_V	7486	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	7489	0
// OP_STORE_V	7518	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	7489	4	0
// OP_CALL1	491	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	491	0	0
// OP_DONE	0	0	0
void (string globaldef002683, string globaldef002684) rocket_arena_gotonextmap = 
{
    local float globaldef002685;
    local float globaldef002686;
    local float globaldef002687;
    local float globaldef002688;
    local float globaldef002689;
    local string globaldef002690;
    globaldef002686 = cvar("samelevel");
    globaldef002686 = rint(globaldef002686);
    if(globaldef002686 == FALSE)
    {
        changelevel(globaldef002684);
    }
    else
    {
        if((globaldef002686 == TRUE) || (globaldef002686 == CONTENT_EMPTY))
        {
            changelevel(globaldef002683);
        }
        else
        {
            if(globaldef002686 >= FL_SWIM)
            {
                globaldef002687 = (globaldef002686 / FL_GODMODE) & globaldef002681;
                globaldef002688 = (globaldef002686 / FL_JUMPRELEASED) & globaldef002681;
                globaldef002689 = (globaldef002686 / IT_KEY2) & globaldef002681;
                globaldef002686 = globaldef002686 & globaldef002681;
                
                if(globaldef002686 < MOVETYPE_WALK)
                {
                    globaldef002688 = FALSE;
                }
                
                
                if(globaldef002686 < MOVETYPE_STEP)
                {
                    globaldef002689 = FALSE;
                }
                
                do
                {
                    globaldef002685 = TRUE + (floor(random() * globaldef002686));
                } while (((globaldef002685 == globaldef002687) || (globaldef002685 == globaldef002688)) || (globaldef002685 == globaldef002689));
                globaldef002690 = ftos(((globaldef002686 + (globaldef002685 * FL_GODMODE)) + (globaldef002687 * FL_JUMPRELEASED)) + (globaldef002688 * IT_KEY2));
                cvar_set("samelevel", globaldef002690);
                globaldef002690 = ftos(globaldef002685);
                localcmd("map");
                localcmd(globaldef002690);
                localcmd("\n");
            }
            else
            {
                globaldef002686 = fabs(globaldef002686);
                globaldef002687 = (globaldef002686 / FL_GODMODE) & globaldef002681;
                globaldef002686 = globaldef002686 & globaldef002681;
                if(globaldef002687 == FALSE)
                {
                    globaldef002687 = FL_SWIM;
                }
                else
                {
                    globaldef002687 = globaldef002687 + TRUE;
                    
                    if(globaldef002687 > globaldef002686)
                    {
                        globaldef002687 = TRUE;
                    }
                    
                }
                
                globaldef002690 = ftos(CONTENT_EMPTY * (globaldef002686 + (globaldef002687 * FL_GODMODE)));
                cvar_set("samelevel", globaldef002690);
                globaldef002690 = ftos(globaldef002687);
                localcmd("map");
                localcmd(globaldef002690);
                localcmd("\n");
            }
            
        }
        
    }
    
};


// func000349
// function begins at statement 9969, parm_start=7529
// OP_LOAD_V	7529	134	7546
// OP_ADD_V	7530	7546	7549
// OP_SUB_V	7549	7552	7555
// OP_STORE_V	7555	7537	0
// OP_LOAD_V	7529	138	7558
// OP_ADD_V	7530	7558	7561
// OP_ADD_V	7561	7552	7564
// OP_STORE_V	7564	7534	0
// OP_STORE_ENT	833	7533	0
// OP_IFNOT	7533	25	0
// OP_LOAD_V	7533	105	7567
// OP_LOAD_V	7533	134	7570
// OP_ADD_V	7567	7570	7573
// OP_STORE_V	7573	7543	0
// OP_LOAD_V	7533	105	7576
// OP_LOAD_V	7533	138	7579
// OP_ADD_V	7576	7579	7582
// OP_STORE_V	7582	7540	0
// OP_LE	7543	7534	7585
// OP_GE	7540	7537	7586
// OP_AND	7585	7586	7587
// OP_IFNOT	7587	10	0
// OP_LE	7544	7535	7588
// OP_GE	7541	7538	7589
// OP_AND	7588	7589	7590
// OP_IFNOT	7590	6	0
// OP_LE	7545	7536	7591
// OP_GE	7542	7539	7592
// OP_AND	7591	7592	7593
// OP_IFNOT	7593	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	7533	620	7594
// OP_STORE_ENT	7594	7533	0
// OP_GOTO	-24	0	0
// OP_STORE_ENT	834	7533	0
// OP_IFNOT	7533	25	0
// OP_LOAD_V	7533	105	7595
// OP_LOAD_V	7533	134	7598
// OP_ADD_V	7595	7598	7601
// OP_STORE_V	7601	7543	0
// OP_LOAD_V	7533	105	7604
// OP_LOAD_V	7533	138	7607
// OP_ADD_V	7604	7607	7610
// OP_STORE_V	7610	7540	0
// OP_LE	7543	7534	7613
// OP_GE	7540	7537	7614
// OP_AND	7613	7614	7615
// OP_IFNOT	7615	10	0
// OP_LE	7544	7535	7616
// OP_GE	7541	7538	7617
// OP_AND	7616	7617	7618
// OP_IFNOT	7618	6	0
// OP_LE	7545	7536	7619
// OP_GE	7542	7539	7620
// OP_AND	7619	7620	7621
// OP_IFNOT	7621	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	7533	620	7622
// OP_STORE_ENT	7622	7533	0
// OP_GOTO	-24	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef002694, vector globaldef002695) func000349 = 
{
    local entity globaldef002699;
    local vector globaldef002700;
    local vector globaldef002704;
    local vector globaldef002708;
    local vector globaldef002712;
    globaldef002704 = (globaldef002695 + globaldef002694.mins) - '50 50 50';
    globaldef002700 = (globaldef002695 + globaldef002694.maxs) + '50 50 50';
    globaldef002699 = firstClient;
    
    while(globaldef002699)
    {
        globaldef002712 = globaldef002699.origin + globaldef002699.mins;
        globaldef002708 = globaldef002699.origin + globaldef002699.maxs;
        
        if((globaldef002712_x <= globaldef002700_x) && (globaldef002708_x >= globaldef002704_x))
        {
            
            if((globaldef002712_y <= globaldef002700_y) && (globaldef002708_y >= globaldef002704_y))
            {
                
                if((globaldef002712_z <= globaldef002700_z) && (globaldef002708_z >= globaldef002704_z))
                {
                    return TRUE;
                }
                
            }
            
        }
        
        globaldef002699 = globaldef002699.next;
    }
    
    globaldef002699 = firstBot;
    
    while(globaldef002699)
    {
        globaldef002712 = globaldef002699.origin + globaldef002699.mins;
        globaldef002708 = globaldef002699.origin + globaldef002699.maxs;
        
        if((globaldef002712_x <= globaldef002700_x) && (globaldef002708_x >= globaldef002704_x))
        {
            
            if((globaldef002712_y <= globaldef002700_y) && (globaldef002708_y >= globaldef002704_y))
            {
                
                if((globaldef002712_z <= globaldef002700_z) && (globaldef002708_z >= globaldef002704_z))
                {
                    return TRUE;
                }
                
            }
            
        }
        
        globaldef002699 = globaldef002699.next;
    }
    
    return FALSE;
};


// func000350
// function begins at statement 10031, parm_start=7624
// OP_STORE_F	213	7626	0
// OP_CALL0	2814	0	0
// OP_STORE_ENT	1	7625	0
// OP_STORE_V	7624	4	0
// OP_LOAD_V	7625	105	7627
// OP_STORE_V	7627	7	0
// OP_CALL2	7528	0	0
// OP_NOT_F	1	0	7630
// OP_IFNOT	7630	2	0
// OP_RETURN	7625	0	0
// OP_ADD_F	7626	214	7631
// OP_STORE_F	7631	7626	0
// OP_LT	7626	235	7632
// OP_IF	7632	-12	0
// OP_RETURN	7625	0	0
// OP_DONE	0	0	0
entity (entity globaldef002718) func000350 = 
{
    local entity globaldef002719;
    local float globaldef002720;
    globaldef002720 = FALSE;
    do
    {
        globaldef002719 = SelectSpawnPoint();
        
        if(!func000349(globaldef002718, globaldef002719.origin))
        {
            return globaldef002719;
        }
        
        globaldef002720 = globaldef002720 + TRUE;
    } while (globaldef002720 < MOVETYPE_BOUNCE);
    return globaldef002719;
};


// func000351
// function begins at statement 10047, parm_start=7634
// OP_LOAD_F	7634	371	7638
// OP_LE	7638	31	7639
// OP_IFNOT	7639	15	0
// OP_STORE_V	7634	4	0
// OP_CALL1	1129	0	0
// OP_STORE_V	1	7635	0
// OP_LOAD_ENT	7634	194	7640
// OP_ADDRESS	7640	194	7641
// OP_LOAD_ENT	7634	194	7642
// OP_STOREP_ENT	7642	7641	0
// OP_LOAD_ENT	7634	194	7643
// OP_STORE_V	7643	4	0
// OP_STORE_V	7635	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	7634	371	7644
// OP_ADD_F	31	228	7645
// OP_STOREP_F	7645	7644	0
// OP_STORE_V	7634	4	0
// OP_CALL1	1128	0	0
// OP_ADDRESS	7634	113	7646
// OP_LOAD_ENT	7634	194	7649
// OP_LOAD_V	7649	105	7650
// OP_LOAD_V	7634	105	7653
// OP_SUB_V	7650	7653	7656
// OP_STOREP_V	7656	7646	0
// OP_ADDRESS	7634	116	7659
// OP_STOREP_F	213	7659	0
// OP_ADDRESS	7634	113	7660
// OP_LOAD_V	7634	113	7663
// OP_STORE_V	7663	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	1	800	7666
// OP_STOREP_V	7666	7660	0
// OP_STORE_V	7634	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	7669
// OP_IFNOT	7669	5	0
// OP_ADDRESS	7634	371	7670
// OP_LOAD_F	7634	371	7671
// OP_SUB_F	7671	214	7672
// OP_STOREP_F	7672	7670	0
// OP_DONE	0	0	0
void (entity globaldef002722) func000351 = 
{
    local vector globaldef002723;
    
    if(globaldef002722.search_time <= time)
    {
        globaldef002723 = func002474(globaldef002722);
        globaldef002722.goalentity.goalentity = globaldef002722.goalentity;
        setorigin(globaldef002722.goalentity, globaldef002723);
        globaldef002722.search_time = time + MOVETYPE_WALK;
    }
    
    func002468(globaldef002722);
    globaldef002722.velocity = globaldef002722.goalentity.origin - globaldef002722.origin;
    globaldef002722.velocity_z = FALSE;
    globaldef002722.velocity = normalize(globaldef002722.velocity) * globaldef000783;
    
    if(!func002446(globaldef002722))
    {
        globaldef002722.search_time = globaldef002722.search_time - TRUE;
    }
    
};


// func000352
// function begins at statement 10089, parm_start=7674
// OP_ADDRESS	7674	611	7675
// OP_STOREP_F	213	7675	0
// OP_ADDRESS	7674	163	7676
// OP_STOREP_F	250	7676	0
// OP_ADDRESS	7674	181	7677
// OP_STOREP_ENT	30	7677	0
// OP_ADDRESS	7674	551	7678
// OP_STOREP_FNC	7633	7678	0
// OP_DONE	0	0	0
void (entity globaldef002728) func000352 = 
{
    globaldef002728.field000288 = FALSE;
    globaldef002728.takedamage = DAMAGE_NO;
    globaldef002728.enemy = world;
    globaldef002728.f_ai = func000351;
};


// rocket_arena_selectspawnpoint
// function begins at statement 10098, parm_start=7679
// OP_STORE_F	213	7683	0
// OP_STORE_F	213	7684	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7689	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_IFNOT	7680	2	0
// OP_RETURN	7680	0	0
// OP_STORE_ENT	30	7688	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_IFNOT	7680	34	0
// OP_ADD_F	7684	214	7690
// OP_STORE_F	7690	7684	0
// OP_LOAD_V	7680	105	7691
// OP_STORE_V	7691	4	0
// OP_STORE_V	7694	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	7682	0
// OP_STORE_F	213	7686	0
// OP_IFNOT	7682	12	0
// OP_LOAD_S	7682	129	7695
// OP_EQ_S	7695	1236	7696
// OP_LOAD_S	7682	129	7697
// OP_EQ_S	7697	1241	7698
// OP_OR	7696	7698	7699
// OP_IFNOT	7699	3	0
// OP_ADD_F	7686	214	7700
// OP_STORE_F	7700	7686	0
// OP_LOAD_ENT	7682	164	7701
// OP_STORE_ENT	7701	7682	0
// OP_GOTO	-11	0	0
// OP_EQ_F	7686	213	7702
// OP_IFNOT	7702	6	0
// OP_ADDRESS	7680	194	7703
// OP_STOREP_ENT	7688	7703	0
// OP_STORE_ENT	7680	7688	0
// OP_ADD_F	7683	214	7704
// OP_STORE_F	7704	7683	0
// OP_STORE_V	7680	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_GOTO	-33	0	0
// OP_SUB_F	7684	214	7705
// OP_STORE_F	7705	7684	0
// OP_NOT_F	7683	0	7706
// OP_IFNOT	7706	22	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	7684	7707
// OP_STORE_V	7707	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	7684	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_GT	7684	213	7708
// OP_IFNOT	7708	9	0
// OP_SUB_F	7684	214	7709
// OP_STORE_F	7709	7684	0
// OP_STORE_V	7680	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7679	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	7680	0
// OP_GOTO	-9	0	0
// OP_RETURN	7680	0	0
// OP_SUB_F	7683	214	7710
// OP_STORE_F	7710	7683	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	7683	7711
// OP_STORE_V	7711	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	7683	0
// OP_STORE_ENT	7688	7680	0
// OP_GT	7683	213	7712
// OP_IFNOT	7712	6	0
// OP_LOAD_ENT	7680	194	7713
// OP_STORE_ENT	7713	7680	0
// OP_SUB_F	7683	214	7714
// OP_STORE_F	7714	7683	0
// OP_GOTO	-6	0	0
// OP_RETURN	7680	0	0
// OP_DONE	0	0	0
entity (string globaldef002729) rocket_arena_selectspawnpoint = 
{
    local entity globaldef002730;
    local entity globaldef002731;
    local entity globaldef002732;
    local float globaldef002733;
    local float globaldef002734;
    local float globaldef002735;
    local float globaldef002736;
    local float globaldef002737;
    local entity globaldef002738;
    globaldef002733 = FALSE;
    globaldef002734 = FALSE;
    globaldef002730 = find(world, classname, "testplayerstart");
    
    if(globaldef002730)
    {
        return globaldef002730;
    }
    
    globaldef002738 = world;
    globaldef002730 = find(world, classname, globaldef002729);
    
    while(globaldef002730)
    {
        globaldef002734 = globaldef002734 + TRUE;
        globaldef002732 = findradius(globaldef002730.origin, 84);
        globaldef002736 = FALSE;
        
        while(globaldef002732)
        {
            
            if((globaldef002732.classname == "player") || (globaldef002732.classname == "bot"))
            {
                globaldef002736 = globaldef002736 + TRUE;
            }
            
            globaldef002732 = globaldef002732.chain;
        }
        
        
        if(globaldef002736 == FALSE)
        {
            globaldef002730.goalentity = globaldef002738;
            globaldef002738 = globaldef002730;
            globaldef002733 = globaldef002733 + TRUE;
        }
        
        globaldef002730 = find(globaldef002730, classname, globaldef002729);
    }
    
    globaldef002734 = globaldef002734 - TRUE;
    
    if(!globaldef002733)
    {
        globaldef002734 = rint(random() * globaldef002734);
        globaldef002730 = find(world, classname, globaldef002729);
        
        while(globaldef002734 > FALSE)
        {
            globaldef002734 = globaldef002734 - TRUE;
            globaldef002730 = find(globaldef002730, classname, globaldef002729);
        }
        
        return globaldef002730;
    }
    
    globaldef002733 = globaldef002733 - TRUE;
    globaldef002733 = rint(random() * globaldef002733);
    globaldef002730 = globaldef002738;
    
    while(globaldef002733 > FALSE)
    {
        globaldef002730 = globaldef002730.goalentity;
        globaldef002733 = globaldef002733 - TRUE;
    }
    
    return globaldef002730;
};


// TeamSetStatRes
// function begins at statement 10189, parm_start=7716
// OP_LOAD_F	7716	533	7717
// OP_GT	7717	232	7718
// OP_IFNOT	7718	3	0
// OP_RETURN	7719	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	7716	533	7720
// OP_EQ_F	7720	232	7721
// OP_IFNOT	7721	3	0
// OP_RETURN	7722	0	0
// OP_GOTO	30	0	0
// OP_LOAD_F	7716	533	7723
// OP_EQ_F	7723	231	7724
// OP_IFNOT	7724	3	0
// OP_RETURN	7725	0	0
// OP_GOTO	25	0	0
// OP_LOAD_F	7716	533	7726
// OP_EQ_F	7726	230	7727
// OP_IFNOT	7727	3	0
// OP_RETURN	7728	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	7716	533	7729
// OP_EQ_F	7729	229	7730
// OP_IFNOT	7730	3	0
// OP_RETURN	7731	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	7716	533	7732
// OP_EQ_F	7732	228	7733
// OP_IFNOT	7733	3	0
// OP_RETURN	7734	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	7716	533	7735
// OP_EQ_F	7735	216	7736
// OP_IFNOT	7736	3	0
// OP_RETURN	7737	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	7716	533	7738
// OP_EQ_F	7738	214	7739
// OP_IFNOT	7739	2	0
// OP_RETURN	7740	0	0
// OP_RETURN	7741	0	0
// OP_DONE	0	0	0
string (entity globaldef002742) TeamSetStatRes = 
{
    if(globaldef002742.statstate > MOVETYPE_PUSH)
    {
        return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
    }
    else
    {
        if(globaldef002742.statstate == MOVETYPE_PUSH)
        {
            return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
        }
        else
        {
            if(globaldef002742.statstate == MOVETYPE_TOSS)
            {
                return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
            }
            else
            {
                if(globaldef002742.statstate == MOVETYPE_FLY)
                {
                    return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                }
                else
                {
                    if(globaldef002742.statstate == MOVETYPE_STEP)
                    {
                        return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                    }
                    else
                    {
                        if(globaldef002742.statstate == MOVETYPE_WALK)
                        {
                            return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                        }
                        else
                        {
                            if(globaldef002742.statstate == FL_SWIM)
                            {
                                return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                            }
                            else
                            {
                                
                                if(globaldef002742.statstate == TRUE)
                                {
                                    return "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return "\n\n\n\n\n\n\n\n\n\n\n\n";
};


// PrintStats
// function begins at statement 10230, parm_start=7743
// OP_ADDRESS	7743	532	7749
// OP_ADD_F	31	539	7750
// OP_STOREP_F	7750	7749	0
// OP_STORE_V	7743	4	0
// OP_CALL1	7715	0	0
// OP_STORE_S	1	7748	0
// OP_STORE_V	7743	4	0
// OP_STORE_V	7748	7	0
// OP_LOAD_S	541	180	7751
// OP_STORE_V	7751	10	0
// OP_STORE_V	7752	13	0
// OP_LOAD_S	542	180	7753
// OP_STORE_V	7753	16	0
// OP_STORE_V	7754	19	0
// OP_CALL6	882	0	0
// OP_LOAD_F	541	152	7755
// OP_GT	7755	213	7756
// OP_IFNOT	7756	4	0
// OP_ADDRESS	28	188	7757
// OP_LOAD_F	541	152	7758
// OP_STOREP_F	7758	7757	0
// OP_LOAD_F	542	152	7759
// OP_GT	7759	213	7760
// OP_IFNOT	7760	4	0
// OP_ADDRESS	28	152	7761
// OP_LOAD_F	542	152	7762
// OP_STOREP_F	7762	7761	0
// OP_ADDRESS	7743	157	7763
// OP_LOAD_F	7743	534	7764
// OP_STOREP_F	7764	7763	0
// OP_DONE	0	0	0
void (entity globaldef002753) PrintStats = 
{
    local string globaldef002754;
    local string globaldef002755;
    local string globaldef002756;
    local string globaldef002757;
    local string globaldef002758;
    globaldef002753.laststattime = time + RA_PLAYERSTATTIME;
    globaldef002758 = TeamSetStatRes(globaldef002753);
    centerprint5(globaldef002753, globaldef002758, winner.netname, "          ", loser.netname, "              ");
    
    if(winner.health > FALSE)
    {
        self.armorvalue = winner.health;
    }
    
    
    if(loser.health > FALSE)
    {
        self.health = loser.health;
    }
    
    globaldef002753.currentammo = globaldef002753.mypos;
};


// playallsound
// function begins at statement 10261, parm_start=7765
// OP_LOAD_S	541	129	7767
// OP_EQ_S	7767	1236	7768
// OP_IFNOT	7768	4	0
// OP_STORE_V	541	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_LOAD_S	542	129	7769
// OP_EQ_S	7769	1236	7770
// OP_IFNOT	7770	4	0
// OP_STORE_V	542	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_LOAD_S	28	129	7771
// OP_EQ_S	7771	1236	7772
// OP_IFNOT	7772	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_IFNOT	543	9	0
// OP_STORE_ENT	543	7766	0
// OP_STORE_V	7766	4	0
// OP_STORE_V	7765	7	0
// OP_CALL2	839	0	0
// OP_LOAD_ENT	7766	528	7773
// OP_STORE_ENT	7773	7766	0
// OP_NE_E	7766	543	7774
// OP_IF	7774	-6	0
// OP_DONE	0	0	0
void (string globaldef002761) playallsound = 
{
    local entity globaldef002762;
    
    if(winner.classname == "player")
    {
        stuffcmd(winner, globaldef002761);
    }
    
    
    if(loser.classname == "player")
    {
        stuffcmd(loser, globaldef002761);
    }
    
    
    if(self.classname == "player")
    {
        stuffcmd(self, globaldef002761);
    }
    
    
    if(first)
    {
        globaldef002762 = first;
        do
        {
            stuffcmd(globaldef002762, globaldef002761);
            globaldef002762 = globaldef002762.ra_next;
        } while (globaldef002762 != first);
    }
    
};


// readytostart
// function begins at statement 10289, parm_start=7776
// OP_GT	31	544	7776
// OP_NE_E	541	30	7777
// OP_AND	7776	7777	7778
// OP_NE_E	542	30	7779
// OP_AND	7778	7779	7780
// OP_IFNOT	7780	3	0
// OP_RETURN	214	0	0
// OP_GOTO	2	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () readytostart = 
{
    if(((time > time_to_start) && (winner != world)) && (loser != world))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
    
};


// setfullwep
// function begins at statement 10299, parm_start=7782
// OP_ADDRESS	7782	159	7784
// OP_LOAD_F	7782	159	7785
// OP_ADD_F	7785	2805	7786
// OP_STOREP_F	7786	7784	0
// OP_ADDRESS	7782	158	7787
// OP_LOAD_F	7782	158	7788
// OP_ADD_F	7788	309	7789
// OP_STOREP_F	7789	7787	0
// OP_ADDRESS	7782	160	7790
// OP_LOAD_F	7782	160	7791
// OP_ADD_F	7791	309	7792
// OP_STOREP_F	7792	7790	0
// OP_ADDRESS	7782	161	7793
// OP_LOAD_F	7782	161	7794
// OP_ADD_F	7794	309	7795
// OP_STOREP_F	7795	7793	0
// OP_LOAD_F	7782	158	7796
// OP_GT	7796	1997	7797
// OP_IFNOT	7797	3	0
// OP_ADDRESS	7782	158	7798
// OP_STOREP_F	1997	7798	0
// OP_LOAD_F	7782	159	7799
// OP_GT	7799	2044	7800
// OP_IFNOT	7800	3	0
// OP_ADDRESS	7782	159	7801
// OP_STOREP_F	2044	7801	0
// OP_LOAD_F	7782	160	7802
// OP_GT	7802	1997	7803
// OP_IFNOT	7803	3	0
// OP_ADDRESS	7782	160	7804
// OP_STOREP_F	1997	7804	0
// OP_LOAD_F	7782	161	7805
// OP_GT	7805	1997	7806
// OP_IFNOT	7806	3	0
// OP_ADDRESS	7782	161	7807
// OP_STOREP_F	1997	7807	0
// OP_ADDRESS	7782	162	7808
// OP_BITOR	253	254	7809
// OP_STOREP_F	7809	7808	0
// OP_ADDRESS	7782	162	7810
// OP_LOAD_F	7782	162	7811
// OP_BITOR	7811	256	7812
// OP_STOREP_F	7812	7810	0
// OP_ADDRESS	7782	162	7813
// OP_LOAD_F	7782	162	7814
// OP_BITOR	7814	257	7815
// OP_STOREP_F	7815	7813	0
// OP_ADDRESS	7782	162	7816
// OP_LOAD_F	7782	162	7817
// OP_BITOR	7817	255	7818
// OP_STOREP_F	7818	7816	0
// OP_ADDRESS	7782	162	7819
// OP_LOAD_F	7782	162	7820
// OP_BITOR	7820	259	7821
// OP_STOREP_F	7821	7819	0
// OP_ADDRESS	7782	162	7822
// OP_LOAD_F	7782	162	7823
// OP_BITOR	7823	258	7824
// OP_STOREP_F	7824	7822	0
// OP_ADDRESS	7782	162	7825
// OP_LOAD_F	7782	162	7826
// OP_BITOR	7826	260	7827
// OP_STOREP_F	7827	7825	0
// OP_ADDRESS	7782	162	7828
// OP_LOAD_F	7782	162	7829
// OP_LOAD_F	7782	162	7830
// OP_BITOR	266	267	7831
// OP_BITOR	7831	268	7832
// OP_BITAND	7830	7832	7833
// OP_SUB_F	7829	7833	7834
// OP_ADD_F	7834	268	7835
// OP_STOREP_F	7835	7828	0
// OP_ADDRESS	7782	188	7836
// OP_STOREP_F	2044	7836	0
// OP_ADDRESS	7782	187	7837
// OP_STOREP_F	4478	7837	0
// OP_ADDRESS	7782	152	7838
// OP_STOREP_F	1997	7838	0
// OP_ADDRESS	7782	154	7839
// OP_STOREP_F	219	7839	0
// OP_ADDRESS	7782	382	7840
// OP_STOREP_F	213	7840	0
// OP_ADDRESS	7782	383	7841
// OP_STOREP_F	213	7841	0
// OP_ADDRESS	7782	381	7842
// OP_STOREP_F	213	7842	0
// OP_ADDRESS	7782	380	7843
// OP_STOREP_F	213	7843	0
// OP_ADDRESS	7782	133	7844
// OP_STOREP_F	213	7844	0
// OP_ADDRESS	7782	384	7845
// OP_STOREP_F	213	7845	0
// OP_STORE_ENT	28	7783	0
// OP_STORE_ENT	7782	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	7783	28	0
// OP_DONE	0	0	0
void (entity anent) setfullwep = 
{
    local entity globaldef002766;
    anent.ammo_nails = anent.ammo_nails + 80;
    anent.ammo_shells = anent.ammo_shells + SVC_INTERMISSION;
    anent.ammo_rockets = anent.ammo_rockets + SVC_INTERMISSION;
    anent.ammo_cells = anent.ammo_cells + SVC_INTERMISSION;
    
    if(anent.ammo_shells > 100)
    {
        anent.ammo_shells = 100;
    }
    
    
    if(anent.ammo_nails > 200)
    {
        anent.ammo_nails = 200;
    }
    
    
    if(anent.ammo_rockets > 100)
    {
        anent.ammo_rockets = 100;
    }
    
    
    if(anent.ammo_cells > 100)
    {
        anent.ammo_cells = 100;
    }
    
    anent.items = IT_AXE | IT_SHOTGUN;
    anent.items = anent.items | IT_NAILGUN;
    anent.items = anent.items | IT_SUPER_NAILGUN;
    anent.items = anent.items | IT_SUPER_SHOTGUN;
    anent.items = anent.items | IT_ROCKET_LAUNCHER;
    anent.items = anent.items | IT_GRENADE_LAUNCHER;
    anent.items = anent.items | IT_LIGHTNING;
    anent.items = (anent.items - (anent.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3))) + IT_ARMOR3;
    anent.armorvalue = 200;
    anent.armortype = 0.8;
    anent.health = 100;
    anent.weapon = FL_MONSTER;
    anent.super_damage_finished = FALSE;
    anent.radsuit_finished = FALSE;
    anent.invisible_finished = FALSE;
    anent.invincible_finished = FALSE;
    anent.effects = FALSE;
    anent.invincible_time = FALSE;
    globaldef002766 = self;
    self = anent;
    W_SetCurrentAmmo();
    self = globaldef002766;
};


// setfullhealth
// function begins at statement 10396, parm_start=7847
// OP_ADDRESS	7847	188	7848
// OP_STOREP_F	2044	7848	0
// OP_ADDRESS	7847	187	7849
// OP_STOREP_F	4478	7849	0
// OP_ADDRESS	7847	152	7850
// OP_STOREP_F	1997	7850	0
// OP_DONE	0	0	0
void (entity globaldef002768) setfullhealth = 
{
    globaldef002768.armorvalue = 200;
    globaldef002768.armortype = 0.8;
    globaldef002768.health = 100;
};


// teleport_to_arena
// function begins at statement 10403, parm_start=7852
// OP_LOAD_V	7852	105	7857
// OP_STORE_V	7857	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	7853	400	7860
// OP_STORE_V	7860	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	7853	105	7863
// OP_MUL_FV	219	59	7866
// OP_ADD_V	7863	7866	7869
// OP_STORE_V	7869	7854	0
// OP_STORE_V	7854	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	7853	105	7872
// OP_STORE_V	7872	4	0
// OP_STORE_V	7852	7	0
// OP_CALL2	7260	0	0
// OP_LOAD_F	7852	152	7875
// OP_NOT_F	7875	0	7876
// OP_IFNOT	7876	12	0
// OP_ADDRESS	7852	105	7877
// OP_LOAD_V	7853	105	7880
// OP_STOREP_V	7880	7877	0
// OP_ADDRESS	7852	113	7883
// OP_LOAD_F	7852	114	7886
// OP_MUL_VF	59	7886	7887
// OP_LOAD_F	7852	115	7890
// OP_MUL_VF	59	7890	7891
// OP_ADD_V	7887	7891	7894
// OP_STOREP_V	7894	7883	0
// OP_RETURN	0	0	0
// OP_STORE_V	7852	4	0
// OP_LOAD_V	7853	105	7897
// OP_STORE_V	7897	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	7852	117	7900
// OP_LOAD_V	7853	400	7903
// OP_STOREP_V	7903	7900	0
// OP_IFNOT	7852	16	0
// OP_ADDRESS	7852	174	7906
// OP_STOREP_F	214	7906	0
// OP_ADDRESS	7852	186	7907
// OP_ADD_F	31	5599	7908
// OP_STOREP_F	7908	7907	0
// OP_LOAD_F	7852	182	7909
// OP_BITAND	7909	223	7910
// OP_IFNOT	7910	5	0
// OP_ADDRESS	7852	182	7911
// OP_LOAD_F	7852	182	7912
// OP_SUB_F	7912	223	7913
// OP_STOREP_F	7913	7911	0
// OP_ADDRESS	7852	113	7914
// OP_MUL_VF	59	540	7917
// OP_STOREP_V	7917	7914	0
// OP_ADDRESS	7852	182	7920
// OP_LOAD_F	7852	182	7921
// OP_LOAD_F	7852	182	7922
// OP_BITAND	7922	223	7923
// OP_SUB_F	7921	7923	7924
// OP_STOREP_F	7924	7920	0
// OP_DONE	0	0	0
void (entity globaldef002770, entity globaldef002771) teleport_to_arena = 
{
    local vector globaldef002772;
    spawn_tfog(globaldef002770.origin);
    makevectors(globaldef002771.mangle);
    globaldef002772 = globaldef002771.origin + (FL_MONSTER * v_forward);
    spawn_tfog(globaldef002772);
    spawn_tdeath(globaldef002771.origin, globaldef002770);
    
    if(!globaldef002770.health)
    {
        globaldef002770.origin = globaldef002771.origin;
        globaldef002770.velocity = (v_forward * globaldef002770.velocity_x) + (v_forward * globaldef002770.velocity_y);
        return;
    }
    
    setorigin(globaldef002770, globaldef002771.origin);
    globaldef002770.angles = globaldef002771.mangle;
    
    if(globaldef002770)
    {
        globaldef002770.fixangle = TRUE;
        globaldef002770.teleport_time = time + 0.7;
        
        if(globaldef002770.flags & FL_ONGROUND)
        {
            globaldef002770.flags = globaldef002770.flags - FL_ONGROUND;
        }
        
        globaldef002770.velocity = v_forward * RA_MAXIDLETIME;
    }
    
    globaldef002770.flags = globaldef002770.flags - (globaldef002770.flags & FL_ONGROUND);
};


// gotoarena
// function begins at statement 10463, parm_start=7926
// OP_LOAD_F	7926	182	7928
// OP_BITAND	7928	698	7929
// OP_IFNOT	7929	3	0
// OP_STORE_V	7926	4	0
// OP_CALL1	1143	0	0
// OP_STORE_V	7930	4	0
// OP_CALL1	1220	0	0
// OP_STORE_ENT	1	7927	0
// OP_STORE_V	7926	4	0
// OP_STORE_V	7927	7	0
// OP_CALL2	7851	0	0
// OP_STORE_V	7926	4	0
// OP_LOAD_V	7927	105	7931
// OP_STORE_V	7931	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	7926	4	0
// OP_CALL1	7781	0	0
// OP_STORE_V	7926	4	0
// OP_STORE_V	7934	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	7926	181	7935
// OP_STOREP_ENT	30	7935	0
// OP_NE_E	541	7926	7936
// OP_IFNOT	7936	5	0
// OP_STORE_V	541	4	0
// OP_CALL1	7781	0	0
// OP_ADD_F	31	235	7937
// OP_STORE_F	7937	544	0
// OP_STORE_F	214	816	0
// OP_DONE	0	0	0
void (entity globaldef002777) gotoarena = 
{
    local entity globaldef002778;
    
    if(globaldef002777.flags & GLOBALDEF681_8192)
    {
        func002502(globaldef002777);
    }
    
    globaldef002778 = rocket_arena_selectspawnpoint("info_teleport_destination");
    teleport_to_arena(globaldef002777, globaldef002778);
    setorigin(globaldef002777, globaldef002778.origin);
    setfullwep(globaldef002777);
    stuffcmd(globaldef002777, "r_drawviewmodel 1\n");
    globaldef002777.enemy = world;
    
    if(winner != globaldef002777)
    {
        setfullwep(winner);
        time_to_start = time + MOVETYPE_BOUNCE;
    }
    
    gameNotRunning = TRUE;
};


// getnewopponent
// function begins at statement 10493, parm_start=7938
// OP_IFNOT	543	36	0
// OP_STORE_ENT	543	542	0
// OP_LOAD_ENT	543	529	7940
// OP_STORE_ENT	7940	7938	0
// OP_LOAD_ENT	543	528	7941
// OP_EQ_E	543	7941	7942
// OP_IFNOT	7942	3	0
// OP_STORE_ENT	30	543	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	543	528	7943
// OP_STORE_ENT	7943	543	0
// OP_ADDRESS	543	529	7944
// OP_STOREP_ENT	7938	7944	0
// OP_ADDRESS	7938	528	7945
// OP_STOREP_ENT	543	7945	0
// OP_STORE_V	542	4	0
// OP_CALL1	7925	0	0
// OP_STORE_V	7946	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	542	180	7947
// OP_STORE_V	7947	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	543	11	0
// OP_STORE_ENT	543	7938	0
// OP_STORE_F	213	7939	0
// OP_ADD_F	7939	214	7948
// OP_STORE_F	7948	7939	0
// OP_ADDRESS	7938	534	7949
// OP_STOREP_F	7939	7949	0
// OP_LOAD_ENT	7938	528	7950
// OP_STORE_ENT	7950	7938	0
// OP_NE_E	7938	543	7951
// OP_IF	7951	-7	0
// OP_GOTO	4	0	0
// OP_STORE_ENT	30	542	0
// OP_STORE_V	7952	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void () getnewopponent = 
{
    local entity globaldef002781;
    local float globaldef002782;
    if(first)
    {
        loser = first;
        globaldef002781 = first.ra_prev;
        if(first == first.ra_next)
        {
            first = world;
        }
        else
        {
            first = first.ra_next;
            first.ra_prev = globaldef002781;
            globaldef002781.ra_next = first;
        }
        
        gotoarena(loser);
        bprint("The new challenger is ");
        bprint(loser.netname);
        bprint("\n");
        
        if(first)
        {
            globaldef002781 = first;
            globaldef002782 = FALSE;
            do
            {
                globaldef002782 = globaldef002782 + TRUE;
                globaldef002781.mypos = globaldef002782;
                globaldef002781 = globaldef002781.ra_next;
            } while (globaldef002781 != first);
        }
        
    }
    else
    {
        loser = world;
        bprint("Waiting for opponent\n");
    }
    
};


// addtoqueue
// function begins at statement 10533, parm_start=7954
// OP_NOT_ENT	543	0	7957
// OP_IFNOT	7957	12	0
// OP_STORE_ENT	7954	543	0
// OP_ADDRESS	543	528	7958
// OP_STOREP_ENT	543	7958	0
// OP_ADDRESS	543	529	7959
// OP_STOREP_ENT	543	7959	0
// OP_STORE_V	7954	4	0
// OP_STORE_V	7960	7	0
// OP_CALL2	928	0	0
// OP_ADDRESS	7954	534	7961
// OP_STOREP_F	214	7961	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	543	529	7962
// OP_STORE_ENT	7962	7955	0
// OP_ADDRESS	7955	528	7963
// OP_STOREP_ENT	7954	7963	0
// OP_ADDRESS	7954	529	7964
// OP_STOREP_ENT	7955	7964	0
// OP_ADDRESS	543	529	7965
// OP_STOREP_ENT	7954	7965	0
// OP_ADDRESS	7954	528	7966
// OP_STOREP_ENT	543	7966	0
// OP_STORE_V	7954	4	0
// OP_STORE_V	7967	7	0
// OP_CALL2	928	0	0
// OP_STORE_ENT	543	7955	0
// OP_STORE_F	214	7956	0
// OP_LOAD_ENT	7955	528	7968
// OP_STORE_ENT	7968	7955	0
// OP_ADD_F	7956	214	7969
// OP_STORE_F	7969	7956	0
// OP_NE_E	7955	7954	7970
// OP_IF	7970	-5	0
// OP_ADDRESS	7954	534	7971
// OP_STOREP_F	7956	7971	0
// OP_LOAD_F	7954	182	7972
// OP_BITAND	7972	698	7973
// OP_IFNOT	7973	3	0
// OP_STORE_V	7954	4	0
// OP_CALL1	7673	0	0
// OP_DONE	0	0	0
void (entity globaldef002786) addtoqueue = 
{
    local entity globaldef002787;
    local float globaldef002788;
    if(!first)
    {
        first = globaldef002786;
        first.ra_next = first;
        first.ra_prev = first;
        sprint(globaldef002786, "You are next in line\n");
        globaldef002786.mypos = TRUE;
    }
    else
    {
        globaldef002787 = first.ra_prev;
        globaldef002787.ra_next = globaldef002786;
        globaldef002786.ra_prev = globaldef002787;
        first.ra_prev = globaldef002786;
        globaldef002786.ra_next = first;
        sprint(globaldef002786, "You are last in line\n");
        globaldef002787 = first;
        globaldef002788 = TRUE;
        do
        {
            globaldef002787 = globaldef002787.ra_next;
            globaldef002788 = globaldef002788 + TRUE;
        } while (globaldef002787 != globaldef002786);
        globaldef002786.mypos = globaldef002788;
    }
    
    
    if(globaldef002786.flags & GLOBALDEF681_8192)
    {
        func000352(globaldef002786);
    }
    
};


// rocket_arena_putclientinserver
// function begins at statement 10575, parm_start=7974
// OP_ADDRESS	7974	158	7976
// OP_STOREP_F	235	7976	0
// OP_ADDRESS	7974	159	7977
// OP_STOREP_F	213	7977	0
// OP_ADDRESS	7974	158	7978
// OP_STOREP_F	213	7978	0
// OP_ADDRESS	7974	160	7979
// OP_STOREP_F	213	7979	0
// OP_ADDRESS	7974	161	7980
// OP_STOREP_F	213	7980	0
// OP_ADDRESS	7974	163	7981
// OP_STOREP_F	250	7981	0
// OP_ADDRESS	7974	162	7982
// OP_STOREP_F	253	7982	0
// OP_ADDRESS	7974	188	7983
// OP_STOREP_F	213	7983	0
// OP_ADDRESS	7974	187	7984
// OP_STOREP_F	213	7984	0
// OP_ADDRESS	7974	152	7985
// OP_STOREP_F	1997	7985	0
// OP_ADDRESS	7974	154	7986
// OP_STOREP_F	226	7986	0
// OP_ADDRESS	7974	530	7987
// OP_STOREP_F	213	7987	0
// OP_ADDRESS	7974	531	7988
// OP_STOREP_F	213	7988	0
// OP_ADDRESS	7974	532	7989
// OP_STOREP_F	213	7989	0
// OP_LOAD_S	7974	180	7990
// OP_EQ_S	7990	7991	7992
// OP_IFNOT	7992	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	541	0	7993
// OP_IFNOT	7993	11	0
// OP_STORE_ENT	7974	541	0
// OP_STORE_V	7974	4	0
// OP_CALL1	7925	0	0
// OP_ADDRESS	7974	528	7994
// OP_STOREP_ENT	7974	7994	0
// OP_ADDRESS	7974	529	7995
// OP_STOREP_ENT	7974	7995	0
// OP_STORE_V	7952	4	0
// OP_CALL1	472	0	0
// OP_GOTO	25	0	0
// OP_NOT_ENT	542	0	7996
// OP_IFNOT	7996	14	0
// OP_STORE_ENT	7974	542	0
// OP_STORE_V	7974	4	0
// OP_CALL1	7925	0	0
// OP_ADDRESS	7974	528	7997
// OP_STOREP_ENT	7974	7997	0
// OP_ADDRESS	7974	529	7998
// OP_STOREP_ENT	7974	7998	0
// OP_LOAD_S	7974	180	7999
// OP_STORE_V	7999	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8000	4	0
// OP_CALL1	472	0	0
// OP_GOTO	10	0	0
// OP_NE_E	541	7974	8001
// OP_NE_E	542	7974	8002
// OP_AND	8001	8002	8003
// OP_IFNOT	8003	6	0
// OP_STORE_V	7974	4	0
// OP_STORE_V	8004	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	7974	4	0
// OP_CALL1	7953	0	0
// OP_STORE_ENT	28	7975	0
// OP_STORE_ENT	7974	28	0
// OP_CALL0	4295	0	0
// OP_STORE_ENT	7975	28	0
// OP_DONE	0	0	0
void (entity globaldef002791) rocket_arena_putclientinserver = 
{
    local entity globaldef002792;
    globaldef002791.ammo_shells = MOVETYPE_BOUNCE;
    globaldef002791.ammo_nails = FALSE;
    globaldef002791.ammo_shells = FALSE;
    globaldef002791.ammo_rockets = FALSE;
    globaldef002791.ammo_cells = FALSE;
    globaldef002791.takedamage = DAMAGE_NO;
    globaldef002791.items = IT_AXE;
    globaldef002791.armorvalue = FALSE;
    globaldef002791.armortype = FALSE;
    globaldef002791.health = 100;
    globaldef002791.weapon = FL_JUMPRELEASED;
    globaldef002791.idletime = FALSE;
    globaldef002791.lasttime = FALSE;
    globaldef002791.laststattime = FALSE;
    
    if(globaldef002791.netname == "unconnected")
    {
        return;
    }
    
    if(!winner)
    {
        winner = globaldef002791;
        gotoarena(globaldef002791);
        globaldef002791.ra_next = globaldef002791;
        globaldef002791.ra_prev = globaldef002791;
        bprint("Waiting for opponent\n");
    }
    else
    {
        if(!loser)
        {
            loser = globaldef002791;
            gotoarena(globaldef002791);
            globaldef002791.ra_next = globaldef002791;
            globaldef002791.ra_prev = globaldef002791;
            bprint(globaldef002791.netname);
            bprint(" is the new challenger\n");
        }
        else
        {
            
            if((winner != globaldef002791) && (loser != globaldef002791))
            {
                stuffcmd(globaldef002791, "r_drawviewmodel 0\n");
                addtoqueue(globaldef002791);
            }
            
        }
        
    }
    
    globaldef002792 = self;
    self = globaldef002791;
    W_SetCurrentAmmo();
    self = globaldef002792;
};

entity () FindIntermission;

// rocket_arena_prethink
// function begins at statement 10648, parm_start=8006
// OP_LOAD_F	8006	538	8010
// OP_EQ_F	8010	214	8011
// OP_IFNOT	8011	9	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8012	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8013	7	0
// OP_CALL2	928	0	0
// OP_ADDRESS	8006	538	8014
// OP_STOREP_F	213	8014	0
// OP_SUB_F	544	31	8015
// OP_STORE_V	8015	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	8009	0
// OP_GE	8009	213	8016
// OP_GT	544	213	8017
// OP_AND	8016	8017	8018
// OP_NE_F	8009	545	8019
// OP_AND	8018	8019	8020
// OP_NE_E	541	30	8021
// OP_AND	8020	8021	8022
// OP_NE_E	542	30	8023
// OP_AND	8022	8023	8024
// OP_IFNOT	8024	74	0
// OP_STORE_F	8009	545	0
// OP_EQ_F	8009	213	8025
// OP_IFNOT	8025	36	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8026	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8026	7	0
// OP_CALL2	839	0	0
// OP_LOAD_S	541	180	8027
// OP_STORE_V	8027	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8028	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	542	180	8029
// OP_STORE_V	8029	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	543	6	0
// OP_LOAD_S	543	180	8030
// OP_STORE_V	8030	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8031	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	541	163	8032
// OP_STOREP_F	252	8032	0
// OP_ADDRESS	542	163	8033
// OP_STOREP_F	252	8033	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8034	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8034	7	0
// OP_CALL2	852	0	0
// OP_STORE_F	213	816	0
// OP_STORE_F	213	544	0
// OP_GOTO	36	0	0
// OP_STORE_V	8009	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8007	0
// OP_LE	8009	228	8035
// OP_IFNOT	8035	19	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8036	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8007	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	541	4	0
// OP_STORE_V	8037	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8036	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8007	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	542	4	0
// OP_STORE_V	8037	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	541	4	0
// OP_LOAD_S	542	180	8038
// OP_STORE_V	8038	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	8007	13	0
// OP_CALL4	865	0	0
// OP_STORE_V	542	4	0
// OP_LOAD_S	541	180	8040
// OP_STORE_V	8040	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	8007	13	0
// OP_CALL4	865	0	0
// OP_LOAD_S	8006	129	8041
// OP_NE_S	8041	2025	8042
// OP_IFNOT	8042	79	0
// OP_LOAD_F	8006	530	8043
// OP_NE_F	8043	213	8044
// OP_IFNOT	8044	63	0
// OP_LOAD_F	8006	530	8045
// OP_SUB_F	8045	31	8046
// OP_STORE_V	8046	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	8009	0
// OP_LOAD_F	8006	531	8047
// OP_NE_F	8009	8047	8048
// OP_IFNOT	8048	53	0
// OP_EQ_F	8009	2019	8049
// OP_IFNOT	8049	7	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8050	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8051	7	0
// OP_CALL2	839	0	0
// OP_EQ_F	8009	309	8052
// OP_IFNOT	8052	7	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8053	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8051	7	0
// OP_CALL2	839	0	0
// OP_EQ_F	8009	213	8054
// OP_IFNOT	8054	18	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8055	7	0
// OP_CALL2	928	0	0
// OP_LOAD_S	8006	180	8056
// OP_STORE_V	8056	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	8006	530	8057
// OP_STOREP_F	213	8057	0
// OP_STORE_V	8058	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8059	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8060	7	0
// OP_CALL2	839	0	0
// OP_RETURN	0	0	0
// OP_LE	8009	235	8061
// OP_IFNOT	8061	16	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8062	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8009	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8007	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8007	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8063	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	8006	4	0
// OP_STORE_V	8051	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	8006	531	8064
// OP_STOREP_F	8009	8064	0
// OP_NE_E	8006	542	8065
// OP_NE_E	8006	541	8066
// OP_AND	8065	8066	8067
// OP_IFNOT	8067	10	0
// OP_LOAD_F	8006	532	8068
// OP_LT	8068	31	8069
// OP_NE_E	541	30	8070
// OP_AND	8069	8070	8071
// OP_NE_E	542	30	8072
// OP_AND	8071	8072	8073
// OP_IFNOT	8073	3	0
// OP_STORE_V	8006	4	0
// OP_CALL1	7742	0	0
// OP_DONE	0	0	0
void (entity globaldef002797) rocket_arena_prethink = 
{
    local string globaldef002798;
    local entity globaldef002799;
    local float globaldef002800;
    
    if(globaldef002797.motd == TRUE)
    {
        sprint(globaldef002797, "??????? ?? ?????? ????? v1.2\n");
        sprint(globaldef002797, "by crt - wrightd@stanford.edu\n Port by WhiteFang - matt@lithium.com\n");
        globaldef002797.motd = FALSE;
    }
    
    globaldef002800 = rint(time_to_start - time);
    
    if(((((globaldef002800 >= FALSE) && (time_to_start > FALSE)) && (globaldef002800 != last_time)) && (winner != world)) && (loser != world))
    {
        last_time = globaldef002800;
        if(globaldef002800 == FALSE)
        {
            stuffcmd(winner, "play ra/fight.wav\n");
            stuffcmd(loser, "play ra/fight.wav\n");
            bprint(winner.netname);
            bprint(" vs. ");
            bprint(loser.netname);
            bprint("\n");
            
            if(first)
            {
                bprint(first.netname);
                bprint(" is next in line\n");
            }
            
            winner.takedamage = DAMAGE_AIM;
            loser.takedamage = DAMAGE_AIM;
            centerprint(winner, "??????");
            centerprint(loser, "??????");
            gameNotRunning = FALSE;
            time_to_start = FALSE;
        }
        else
        {
            globaldef002798 = ftos(globaldef002800);
            
            if(globaldef002800 <= MOVETYPE_WALK)
            {
                stuffcmd(winner, "play ra/");
                stuffcmd(winner, globaldef002798);
                stuffcmd(winner, ".wav\n");
                stuffcmd(loser, "play ra/");
                stuffcmd(loser, globaldef002798);
                stuffcmd(loser, ".wav\n");
            }
            
            centerprint3(winner, loser.netname, "\n\n", globaldef002798);
            centerprint3(loser, winner.netname, "\n\n", globaldef002798);
        }
        
    }
    
    
    if(globaldef002797.classname != "observer")
    {
        
        if(globaldef002797.idletime != FALSE)
        {
            globaldef002800 = rint(globaldef002797.idletime - time);
            
            if(globaldef002800 != globaldef002797.lasttime)
            {
                
                if(globaldef002800 == 60)
                {
                    sprint(globaldef002797, "You have 1 minute left.\n Impulse 70 to get back in line\n");
                    stuffcmd(globaldef002797, "play player/axhit1.wav\n");
                }
                
                
                if(globaldef002800 == SVC_INTERMISSION)
                {
                    sprint(globaldef002797, "You have 30 seconds left.\n Impulse 70 to get back in line\n");
                    stuffcmd(globaldef002797, "play player/axhit1.wav\n");
                }
                
                
                if(globaldef002800 == FALSE)
                {
                    sprint(globaldef002797, "Sorry, your wait time has expired!\n");
                    bprint(globaldef002797.netname);
                    globaldef002797.idletime = FALSE;
                    bprint(" stood around too long\n");
                    stuffcmd(globaldef002797, "play player/death1.wav\n");
                    stuffcmd(globaldef002797, "disconnect\n");
                    return;
                }
                
                
                if(globaldef002800 <= MOVETYPE_BOUNCE)
                {
                    sprint(globaldef002797, "You have ");
                    globaldef002798 = ftos(globaldef002800);
                    sprint(globaldef002797, globaldef002798);
                    sprint(globaldef002797, " seconds left to get in line\n");
                    stuffcmd(globaldef002797, "play player/axhit1.wav\n");
                }
                
            }
            
            globaldef002797.lasttime = globaldef002800;
        }
        
        
        if((globaldef002797 != loser) && (globaldef002797 != winner))
        {
            
            if(((globaldef002797.laststattime < time) && (winner != world)) && (loser != world))
            {
                PrintStats(globaldef002797);
            }
            
        }
        
    }
    
};


// rocket_arena_disconnect
// function begins at statement 10828, parm_start=8074
// OP_EQ_E	8074	541	8078
// OP_IFNOT	8078	19	0
// OP_STORE_V	8079	4	0
// OP_CALL1	472	0	0
// OP_STORE_ENT	542	541	0
// OP_IFNOT	541	11	0
// OP_STORE_V	8080	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	541	180	8081
// OP_STORE_V	8081	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	542	163	8082
// OP_STOREP_F	250	8082	0
// OP_GOTO	3	0	0
// OP_STORE_V	8083	4	0
// OP_CALL1	472	0	0
// OP_CALL0	1218	0	0
// OP_GOTO	41	0	0
// OP_EQ_E	8074	542	8084
// OP_IFNOT	8084	7	0
// OP_STORE_V	8085	4	0
// OP_CALL1	472	0	0
// OP_CALL0	1218	0	0
// OP_ADDRESS	541	163	8086
// OP_STOREP_F	250	8086	0
// OP_GOTO	33	0	0
// OP_EQ_E	8074	543	8087
// OP_IFNOT	8087	17	0
// OP_STORE_V	8088	4	0
// OP_CALL1	472	0	0
// OP_LOAD_ENT	543	528	8089
// OP_EQ_E	8089	543	8090
// OP_IFNOT	8090	3	0
// OP_STORE_ENT	30	543	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	543	529	8091
// OP_STORE_ENT	8091	8076	0
// OP_LOAD_ENT	543	528	8092
// OP_STORE_ENT	8092	543	0
// OP_ADDRESS	543	529	8093
// OP_STOREP_ENT	8076	8093	0
// OP_ADDRESS	8076	528	8094
// OP_STOREP_ENT	543	8094	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	8074	528	8095
// OP_EQ_E	8095	30	8096
// OP_IFNOT	8096	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	8074	528	8097
// OP_STORE_ENT	8097	8076	0
// OP_ADDRESS	8076	529	8098
// OP_LOAD_ENT	8074	529	8099
// OP_STOREP_ENT	8099	8098	0
// OP_LOAD_ENT	8074	529	8100
// OP_STORE_ENT	8100	8076	0
// OP_ADDRESS	8076	528	8101
// OP_LOAD_ENT	8074	528	8102
// OP_STOREP_ENT	8102	8101	0
// OP_DONE	0	0	0
void (entity globaldef002819, float globaldef002820) rocket_arena_disconnect = 
{
    local entity globaldef002821;
    local string globaldef002822;
    if(globaldef002819 == winner)
    {
        bprint("The winner has left\n");
        winner = loser;
        if(winner)
        {
            bprint("The new winner is ");
            bprint(winner.netname);
            bprint("\n");
            loser.takedamage = DAMAGE_NO;
        }
        else
        {
            bprint("Waiting for winner\n");
        }
        
        getnewopponent();
    }
    else
    {
        if(globaldef002819 == loser)
        {
            bprint("The challenger has left\n");
            getnewopponent();
            winner.takedamage = DAMAGE_NO;
        }
        else
        {
            if(globaldef002819 == first)
            {
                bprint("The line leader has left\n");
                if(first.ra_next == first)
                {
                    first = world;
                }
                else
                {
                    globaldef002821 = first.ra_prev;
                    first = first.ra_next;
                    first.ra_prev = globaldef002821;
                    globaldef002821.ra_next = first;
                }
                
            }
            else
            {
                
                if(globaldef002819.ra_next == world)
                {
                    return;
                }
                
                globaldef002821 = globaldef002819.ra_next;
                globaldef002821.ra_prev = globaldef002819.ra_prev;
                globaldef002821 = globaldef002819.ra_prev;
                globaldef002821.ra_next = globaldef002819.ra_next;
            }
            
        }
        
    }
    
};


// entinfo
// function begins at statement 10889, parm_start=8104
// OP_EQ_F	8104	1997	8106
// OP_IFNOT	8106	3	0
// OP_STORE_V	541	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8107	8108
// OP_IFNOT	8108	3	0
// OP_STORE_V	542	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8109	8110
// OP_IFNOT	8110	3	0
// OP_STORE_V	543	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8111	8112
// OP_IFNOT	8112	5	0
// OP_LOAD_ENT	543	528	8113
// OP_STORE_ENT	8113	8105	0
// OP_STORE_V	8105	4	0
// OP_CALL1	479	0	0
// OP_EQ_F	8104	8114	8115
// OP_IFNOT	8115	5	0
// OP_LOAD_ENT	543	529	8116
// OP_STORE_ENT	8116	8105	0
// OP_STORE_V	8105	4	0
// OP_CALL1	479	0	0
// OP_DONE	0	0	0
void (float globaldef002829) entinfo = 
{
    local entity globaldef002830;
    
    if(globaldef002829 == 100)
    {
        eprint(winner);
    }
    
    
    if(globaldef002829 == 101)
    {
        eprint(loser);
    }
    
    
    if(globaldef002829 == 102)
    {
        eprint(first);
    }
    
    
    if(globaldef002829 == 103)
    {
        globaldef002830 = first.ra_next;
        eprint(globaldef002830);
    }
    
    
    if(globaldef002829 == 104)
    {
        globaldef002830 = first.ra_prev;
        eprint(globaldef002830);
    }
    
};


// win_loss_ratio
// function begins at statement 10914, parm_start=8118
// OP_LOAD_S	8118	129	8120
// OP_NE_S	8120	1236	8121
// OP_LOAD_S	8118	129	8122
// OP_NE_S	8122	1241	8123
// OP_AND	8121	8123	8124
// OP_IFNOT	8124	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	8118	536	8125
// OP_LOAD_F	8118	535	8126
// OP_ADD_F	8125	8126	8127
// OP_EQ_F	8127	213	8128
// OP_IFNOT	8128	4	0
// OP_ADDRESS	8118	537	8129
// OP_STOREP_F	213	8129	0
// OP_GOTO	9	0	0
// OP_ADDRESS	8118	537	8130
// OP_LOAD_F	8118	535	8131
// OP_MUL_F	8131	1997	8132
// OP_LOAD_F	8118	536	8133
// OP_LOAD_F	8118	535	8134
// OP_ADD_F	8133	8134	8135
// OP_DIV_F	8132	8135	8136
// OP_STOREP_F	8136	8130	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	8118	180	8137
// OP_STORE_V	8137	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8138	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	8118	535	8139
// OP_STORE_V	8139	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8119	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8119	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8140	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	8118	536	8141
// OP_STORE_V	8141	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8119	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8119	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8142	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	8118	537	8143
// OP_STORE_V	8143	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8119	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8119	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8144	7	0
// OP_CALL2	928	0	0
// OP_DONE	0	0	0
void (entity globaldef002836) win_loss_ratio = 
{
    local string globaldef002837;
    
    if((globaldef002836.classname != "player") && (globaldef002836.classname != "bot"))
    {
        return;
    }
    
    if((globaldef002836.loses + globaldef002836.wins) == FALSE)
    {
        globaldef002836.ratio = FALSE;
    }
    else
    {
        globaldef002836.ratio = (globaldef002836.wins * 100) / (globaldef002836.loses + globaldef002836.wins);
    }
    
    sprint(self, globaldef002836.netname);
    sprint(self, "  W:");
    globaldef002837 = ftos(globaldef002836.wins);
    sprint(self, globaldef002837);
    sprint(self, "  L:");
    globaldef002837 = ftos(globaldef002836.loses);
    sprint(self, globaldef002837);
    sprint(self, "  SKILL:");
    globaldef002837 = ftos(globaldef002836.ratio);
    sprint(self, globaldef002837);
    sprint(self, "%\n");
};


// func000369
// function begins at statement 10975, parm_start=8146
// OP_STORE_V	541	4	0
// OP_CALL1	8117	0	0
// OP_STORE_V	542	4	0
// OP_CALL1	8117	0	0
// OP_IFNOT	543	8	0
// OP_STORE_ENT	543	8146	0
// OP_STORE_V	8146	4	0
// OP_CALL1	8117	0	0
// OP_LOAD_ENT	8146	528	8147
// OP_STORE_ENT	8147	8146	0
// OP_NE_E	8146	543	8148
// OP_IF	8148	-5	0
// OP_DONE	0	0	0
void () func000369 = 
{
    local entity globaldef002843;
    win_loss_ratio(winner);
    win_loss_ratio(loser);
    
    if(first)
    {
        globaldef002843 = first;
        do
        {
            win_loss_ratio(globaldef002843);
            globaldef002843 = globaldef002843.ra_next;
        } while (globaldef002843 != first);
    }
    
};


// func000370
// function begins at statement 10988, parm_start=8150
// OP_EQ_E	28	541	8153
// OP_EQ_E	28	542	8154
// OP_OR	8153	8154	8155
// OP_IFNOT	8155	2	0
// OP_RETURN	0	0	0
// OP_EQ_E	28	543	8156
// OP_IFNOT	8156	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8157	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	528	8158
// OP_EQ_E	8158	30	8159
// OP_IFNOT	8159	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8160	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	8150	0
// OP_STORE_ENT	28	8151	0
// OP_LOAD_ENT	8151	529	8161
// OP_STORE_ENT	8161	8151	0
// OP_ADD_F	8150	214	8162
// OP_STORE_F	8162	8150	0
// OP_NE_E	8151	543	8163
// OP_IF	8163	-5	0
// OP_STORE_V	8150	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	8152	0
// OP_NE_F	8150	214	8164
// OP_IFNOT	8164	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8165	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8152	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8166	7	0
// OP_CALL2	928	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8167	7	0
// OP_CALL2	928	0	0
// OP_DONE	0	0	0
void () func000370 = 
{
    local float globaldef002845;
    local entity globaldef002846;
    local string globaldef002847;
    
    if((self == winner) || (self == loser))
    {
        return;
    }
    
    
    if(self == first)
    {
        sprint(self, "You are next\n");
        return;
    }
    
    
    if(self.ra_next == world)
    {
        sprint(self, "You are out of line\n Impulse 70 to return\n");
        return;
    }
    
    globaldef002845 = FALSE;
    globaldef002846 = self;
    do
    {
        globaldef002846 = globaldef002846.ra_prev;
        globaldef002845 = globaldef002845 + TRUE;
    } while (globaldef002846 != first);
    globaldef002847 = ftos(globaldef002845);
    if(globaldef002845 != TRUE)
    {
        sprint(self, "There are ");
        sprint(self, globaldef002847);
        sprint(self, " people ahead of you\n");
    }
    else
    {
        sprint(self, "There is 1 person ahead of you\n");
    }
    
};


// func000371
// function begins at statement 11033, parm_start=8169
// OP_EQ_E	28	541	8170
// OP_EQ_E	28	542	8171
// OP_OR	8170	8171	8172
// OP_IFNOT	8172	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	528	8173
// OP_NE_E	8173	30	8174
// OP_IFNOT	8174	31	0
// OP_EQ_E	28	543	8175
// OP_IFNOT	8175	8	0
// OP_LOAD_ENT	28	528	8176
// OP_NE_E	28	8176	8177
// OP_IFNOT	8177	4	0
// OP_LOAD_ENT	28	528	8178
// OP_STORE_ENT	8178	543	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	543	0
// OP_LOAD_ENT	28	529	8179
// OP_STORE_ENT	8179	8169	0
// OP_ADDRESS	8169	528	8180
// OP_LOAD_ENT	28	528	8181
// OP_STOREP_ENT	8181	8180	0
// OP_LOAD_ENT	28	528	8182
// OP_STORE_ENT	8182	8169	0
// OP_ADDRESS	8169	529	8183
// OP_LOAD_ENT	28	529	8184
// OP_STOREP_ENT	8184	8183	0
// OP_ADDRESS	28	528	8185
// OP_STOREP_ENT	30	8185	0
// OP_ADDRESS	28	529	8186
// OP_STOREP_ENT	30	8186	0
// OP_ADDRESS	28	530	8187
// OP_ADD_F	31	540	8188
// OP_STOREP_F	8188	8187	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8189	7	0
// OP_CALL2	928	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	530	8190
// OP_STOREP_F	213	8190	0
// OP_STORE_V	28	4	0
// OP_CALL1	7953	0	0
// OP_DONE	0	0	0
void () func000371 = 
{
    local entity globaldef002854;
    
    if((self == winner) || (self == loser))
    {
        return;
    }
    
    if(self.ra_next != world)
    {
        
        if(self == first)
        {
            if(self != self.ra_next)
            {
                first = self.ra_next;
            }
            else
            {
                first = world;
            }
            
        }
        
        globaldef002854 = self.ra_prev;
        globaldef002854.ra_next = self.ra_next;
        globaldef002854 = self.ra_next;
        globaldef002854.ra_prev = self.ra_prev;
        self.ra_next = world;
        self.ra_prev = world;
        self.idletime = time + RA_MAXIDLETIME;
        sprint(self, "You can have up to a 5 minute break.\n Impulse 70 to get back in line\n");
    }
    else
    {
        self.idletime = FALSE;
        addtoqueue(self);
    }
    
};


// rocket_arena_impulses
// function begins at statement 11076, parm_start=8191
// OP_BITAND	821	767	8191
// OP_IFNOT	8191	26	0
// OP_LOAD_F	28	173	8192
// OP_EQ_F	8192	8193	8194
// OP_IFNOT	8194	2	0
// OP_CALL0	8145	0	0
// OP_LOAD_F	28	173	8195
// OP_EQ_F	8195	8196	8197
// OP_IFNOT	8197	2	0
// OP_CALL0	8149	0	0
// OP_LOAD_F	28	173	8198
// OP_EQ_F	8198	1536	8199
// OP_IFNOT	8199	2	0
// OP_CALL0	8168	0	0
// OP_LOAD_F	28	173	8200
// OP_GE	8200	8201	8202
// OP_LOAD_F	28	173	8203
// OP_LE	8203	8204	8205
// OP_AND	8202	8205	8206
// OP_IFNOT	8206	8	0
// OP_ADDRESS	28	533	8207
// OP_LOAD_F	28	173	8208
// OP_SUB_F	8208	8201	8209
// OP_STOREP_F	8209	8207	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8210	7	0
// OP_CALL2	928	0	0
// OP_DONE	0	0	0
void () rocket_arena_impulses = 
{
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        
        if(self.impulse == 68)
        {
            func000369();
        }
        
        
        if(self.impulse == 69)
        {
            func000370();
        }
        
        
        if(self.impulse == 70)
        {
            func000371();
        }
        
        
        if((self.impulse >= 71) && (self.impulse <= 81))
        {
            self.statstate = self.impulse - 71;
            sprint(self, "Status bar set\n");
        }
        
    }
    
};

