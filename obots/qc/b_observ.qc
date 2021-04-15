
// CycleClientCamera
// function begins at statement 35732, parm_start=19538
// OP_LOAD_S	19538	129	19540
// OP_NE_S	19540	2025	19541
// OP_IFNOT	19541	5	0
// OP_STORE_V	19538	4	0
// OP_STORE_V	19542	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	19538	667	19543
// OP_EQ_E	19543	19538	19544
// OP_IFNOT	19544	42	0
// OP_ADDRESS	19538	672	19545
// OP_LOAD_V	19538	105	19548
// OP_STOREP_V	19548	19545	0
// OP_ADDRESS	19538	676	19551
// OP_LOAD_V	19538	175	19554
// OP_STOREP_V	19554	19551	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	11	0
// OP_EQ_E	19539	19538	19557
// OP_IFNOT	19557	6	0
// OP_STORE_V	19539	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	3	0
// OP_ADDRESS	19538	667	19558
// OP_STOREP_ENT	19539	19558	0
// OP_LOAD_ENT	19538	667	19559
// OP_EQ_E	19559	19538	19560
// OP_IFNOT	19560	16	0
// OP_STORE_V	19538	4	0
// OP_STORE_V	19561	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	4	0
// OP_ADDRESS	19538	667	19562
// OP_STOREP_ENT	19539	19562	0
// OP_GOTO	4	0	0
// OP_STORE_V	19538	4	0
// OP_STORE_V	19563	7	0
// OP_CALL2	928	0	0
// OP_GOTO	52	0	0
// OP_LOAD_ENT	19538	667	19564
// OP_LOAD_S	19564	129	19565
// OP_EQ_S	19565	1236	19566
// OP_LOAD_ENT	19538	667	19567
// OP_LOAD_S	19567	129	19568
// OP_EQ_S	19568	2025	19569
// OP_OR	19566	19569	19570
// OP_IFNOT	19570	32	0
// OP_LOAD_ENT	19538	667	19571
// OP_STORE_V	19571	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	11	0
// OP_EQ_E	19539	19538	19572
// OP_IFNOT	19572	6	0
// OP_STORE_V	19539	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	3	0
// OP_ADDRESS	19538	667	19573
// OP_STOREP_ENT	19539	19573	0
// OP_NOT_ENT	19539	0	19574
// OP_IFNOT	19574	12	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	4	0
// OP_ADDRESS	19538	667	19575
// OP_STOREP_ENT	19539	19575	0
// OP_GOTO	3	0	0
// OP_ADDRESS	19538	667	19576
// OP_STOREP_ENT	19538	19576	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	19538	667	19577
// OP_STORE_V	19577	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19539	0
// OP_IFNOT	19539	4	0
// OP_ADDRESS	19538	667	19578
// OP_STOREP_ENT	19539	19578	0
// OP_GOTO	3	0	0
// OP_ADDRESS	19538	667	19579
// OP_STOREP_ENT	19538	19579	0
// OP_LOAD_ENT	19538	667	19580
// OP_EQ_E	19580	19538	19581
// OP_IFNOT	19581	4	0
// OP_STORE_V	19538	4	0
// OP_CALL1	1061	0	0
// OP_GOTO	5	0	0
// OP_STORE_V	19538	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_DONE	0	0	0
void (entity client) CycleClientCamera = 
{
    local entity tofollow;
    
    if(client.classname != "observer")
    {
        sprint(client, "not in observer mode\n");
        return;
    }
    
    if(client.field000344 == client)
    {
        client.field000349 = client.origin;
        client.field000353 = client.v_angle;
        tofollow = find(world, classname, "player");
        
        if(tofollow)
        {
            
            if(tofollow == client)
            {
                tofollow = find(tofollow, classname, "player");
            }
            
            
            if(tofollow)
            {
                client.field000344 = tofollow;
            }
            
        }
        
        
        if(client.field000344 == client)
        {
            sprint(client, "no players to view from\n");
            tofollow = find(world, classname, "bot");
            if(tofollow)
            {
                client.field000344 = tofollow;
            }
            else
            {
                sprint(client, "no bots to view from\n");
            }
            
        }
        
    }
    else
    {
        if((client.field000344.classname == "player") || (client.field000344.classname == "observer"))
        {
            tofollow = find(client.field000344, classname, "player");
            
            if(tofollow)
            {
                
                if(tofollow == client)
                {
                    tofollow = find(tofollow, classname, "player");
                }
                
                
                if(tofollow)
                {
                    client.field000344 = tofollow;
                }
                
            }
            
            
            if(!tofollow)
            {
                tofollow = find(world, classname, "bot");
                if(tofollow)
                {
                    client.field000344 = tofollow;
                }
                else
                {
                    client.field000344 = client;
                }
                
            }
            
        }
        else
        {
            tofollow = find(client.field000344, classname, "bot");
            if(tofollow)
            {
                client.field000344 = tofollow;
            }
            else
            {
                client.field000344 = client;
            }
            
        }
        
    }
    
    if(client.field000344 == client)
    {
        func002357(client);
    }
    else
    {
        setsize(client, VEC_ORIGIN, VEC_ORIGIN);
    }
    
};


// func002359
// function begins at statement 35845, parm_start=19582
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2025	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19583	0
// OP_IFNOT	19583	12	0
// OP_LOAD_ENT	19583	667	19584
// OP_EQ_E	19584	19582	19585
// OP_IFNOT	19585	3	0
// OP_STORE_V	19583	4	0
// OP_CALL1	1061	0	0
// OP_STORE_V	19583	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2025	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	19583	0
// OP_GOTO	-11	0	0
// OP_DONE	0	0	0
void (entity globaldef006790) func002359 = 
{
    local entity globaldef006791;
    globaldef006791 = find(world, classname, "observer");
    
    while(globaldef006791)
    {
        
        if(globaldef006791.field000344 == globaldef006790)
        {
            func002357(globaldef006791);
        }
        
        globaldef006791 = find(globaldef006791, classname, "observer");
    }
    
};


// ToggleObserverFly
// function begins at statement 35863, parm_start=19586
// OP_LOAD_F	19586	666	19587
// OP_BITAND	19587	764	19588
// OP_IFNOT	19588	8	0
// OP_ADDRESS	19586	666	19589
// OP_LOAD_F	19586	666	19590
// OP_SUB_F	19590	764	19591
// OP_STOREP_F	19591	19589	0
// OP_ADDRESS	19586	103	19592
// OP_STOREP_F	230	19592	0
// OP_GOTO	7	0	0
// OP_ADDRESS	19586	666	19593
// OP_LOAD_F	19586	666	19594
// OP_BITOR	19594	764	19595
// OP_STOREP_F	19595	19593	0
// OP_ADDRESS	19586	103	19596
// OP_STOREP_F	228	19596	0
// OP_DONE	0	0	0
void (entity e) ToggleObserverFly = 
{
    if(e.field000343 & globaldef000747)
    {
        e.field000343 = e.field000343 - globaldef000747;
        e.movetype = MOVETYPE_FLY;
    }
    else
    {
        e.field000343 = e.field000343 | globaldef000747;
        e.movetype = MOVETYPE_WALK;
    }
    
};


// ToggleCamName
// function begins at statement 35880, parm_start=19597
// OP_LOAD_F	19597	666	19598
// OP_BITAND	19598	761	19599
// OP_IFNOT	19599	6	0
// OP_ADDRESS	19597	666	19600
// OP_LOAD_F	19597	666	19601
// OP_SUB_F	19601	761	19602
// OP_STOREP_F	19602	19600	0
// OP_GOTO	5	0	0
// OP_ADDRESS	19597	666	19603
// OP_LOAD_F	19597	666	19604
// OP_BITOR	19604	761	19605
// OP_STOREP_F	19605	19603	0
// OP_STORE_V	19597	4	0
// OP_STORE_V	3002	7	0
// OP_CALL2	852	0	0
// OP_DONE	0	0	0
void (entity globaldef006793) ToggleCamName = 
{
    if(globaldef006793.field000343 & globaldef000744)
    {
        globaldef006793.field000343 = globaldef006793.field000343 - globaldef000744;
    }
    else
    {
        globaldef006793.field000343 = globaldef006793.field000343 | globaldef000744;
    }
    
    centerprint(globaldef006793, "");
};


// observerteleport
// function begins at statement 35896, parm_start=19607
// OP_LOAD_F	19607	666	19608
// OP_BITAND	19608	762	19609
// OP_IFNOT	19609	6	0
// OP_ADDRESS	19607	666	19610
// OP_LOAD_F	19607	666	19611
// OP_SUB_F	19611	762	19612
// OP_STOREP_F	19612	19610	0
// OP_GOTO	5	0	0
// OP_ADDRESS	19607	666	19613
// OP_LOAD_F	19607	666	19614
// OP_BITOR	19614	762	19615
// OP_STOREP_F	19615	19613	0
// OP_DONE	0	0	0
void (entity globaldef006795) observerteleport = 
{
    if(globaldef006795.field000343 & globaldef000745)
    {
        globaldef006795.field000343 = globaldef006795.field000343 - globaldef000745;
    }
    else
    {
        globaldef006795.field000343 = globaldef006795.field000343 | globaldef000745;
    }
    
};


// ToggleChaseCam
// function begins at statement 35909, parm_start=19616
// OP_LOAD_F	19616	666	19617
// OP_BITAND	19617	763	19618
// OP_IFNOT	19618	6	0
// OP_ADDRESS	19616	666	19619
// OP_LOAD_F	19616	666	19620
// OP_SUB_F	19620	763	19621
// OP_STOREP_F	19621	19619	0
// OP_GOTO	5	0	0
// OP_ADDRESS	19616	666	19622
// OP_LOAD_F	19616	666	19623
// OP_BITOR	19623	763	19624
// OP_STOREP_F	19624	19622	0
// OP_DONE	0	0	0
void (entity globaldef006796) ToggleChaseCam = 
{
    if(globaldef006796.field000343 & globaldef000746)
    {
        globaldef006796.field000343 = globaldef006796.field000343 - globaldef000746;
    }
    else
    {
        globaldef006796.field000343 = globaldef006796.field000343 | globaldef000746;
    }
    
};


// func002364
// function begins at statement 35922, parm_start=19625
// OP_LOAD_S	19625	129	19626
// OP_EQ_S	19626	2025	19627
// OP_IFNOT	19627	4	0
// OP_SUB_F	809	214	19628
// OP_STORE_F	19628	809	0
// OP_GOTO	3	0	0
// OP_STORE_V	19625	4	0
// OP_CALL1	1066	0	0
// OP_DONE	0	0	0
void (entity globaldef006797) func002364 = 
{
    if(globaldef006797.classname == "observer")
    {
        globaldef000792 = globaldef000792 - TRUE;
    }
    else
    {
        func002359(globaldef006797);
    }
    
};


// ToggleObserverMode
// function begins at statement 35931, parm_start=19629
// OP_LOAD_S	19629	129	19630
// OP_EQ_S	19630	2025	19631
// OP_IFNOT	19631	77	0
// OP_STORE_V	19629	4	0
// OP_CALL1	1061	0	0
// OP_ADDRESS	19629	129	19632
// OP_STOREP_S	1236	19632	0
// OP_ADDRESS	19629	166	19633
// OP_STOREP_V	8450	19633	0
// OP_ADDRESS	19629	162	19636
// OP_BITOR	254	253	19637
// OP_STOREP_F	19637	19636	0
// OP_ADDRESS	19629	152	19638
// OP_STOREP_F	1997	19638	0
// OP_ADDRESS	19629	188	19639
// OP_STOREP_F	213	19639	0
// OP_ADDRESS	19629	158	19640
// OP_STOREP_F	305	19640	0
// OP_ADDRESS	19629	159	19641
// OP_STOREP_F	213	19641	0
// OP_ADDRESS	19629	160	19642
// OP_STOREP_F	213	19642	0
// OP_ADDRESS	19629	161	19643
// OP_STOREP_F	213	19643	0
// OP_ADDRESS	19629	154	19644
// OP_STOREP_F	4838	19644	0
// OP_ADDRESS	19629	187	19645
// OP_STOREP_F	213	19645	0
// OP_ADDRESS	19629	162	19646
// OP_LOAD_F	19629	162	19647
// OP_LOAD_F	19629	162	19648
// OP_BITAND	19648	272	19649
// OP_SUB_F	19647	19649	19650
// OP_STOREP_F	19650	19646	0
// OP_ADDRESS	19629	381	19651
// OP_STOREP_F	213	19651	0
// OP_ADDRESS	19629	380	19652
// OP_STOREP_F	213	19652	0
// OP_ADDRESS	19629	382	19653
// OP_STOREP_F	213	19653	0
// OP_ADDRESS	19629	383	19654
// OP_STOREP_F	213	19654	0
// OP_ADDRESS	19629	165	19655
// OP_STOREP_F	247	19655	0
// OP_ADDRESS	19629	104	19656
// OP_STOREP_F	237	19656	0
// OP_ADDRESS	19629	182	19657
// OP_LOAD_F	19629	182	19658
// OP_LOAD_F	19629	182	19659
// OP_BITAND	19659	223	19660
// OP_SUB_F	19658	19660	19661
// OP_STOREP_F	19661	19657	0
// OP_ADDRESS	19629	103	19662
// OP_STOREP_F	231	19662	0
// OP_BITAND	821	777	19663
// OP_IFNOT	19663	5	0
// OP_ADDRESS	19629	573	19664
// OP_STOREP_F	213	19664	0
// OP_ADDRESS	19629	574	19665
// OP_STOREP_F	213	19665	0
// OP_LOAD_F	19629	153	19666
// OP_GT	19666	213	19667
// OP_IFNOT	19667	8	0
// OP_ADDRESS	19629	153	19668
// OP_STOREP_F	213	19668	0
// OP_LOAD_F	19629	608	19669
// OP_STORE_V	19669	4	0
// OP_LOAD_F	19629	153	19670
// OP_STORE_V	19670	7	0
// OP_CALL2	1051	0	0
// OP_SUB_F	809	214	19671
// OP_STORE_F	19671	809	0
// OP_LOAD_S	19629	180	19672
// OP_STORE_V	19672	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	19673	4	0
// OP_CALL1	472	0	0
// OP_CALL0	8358	0	0
// OP_GOTO	70	0	0
// OP_LOAD_S	19629	129	19674
// OP_EQ_S	19674	1236	19675
// OP_LOAD_F	19629	152	19676
// OP_GT	19676	213	19677
// OP_AND	19675	19677	19678
// OP_IFNOT	19678	64	0
// OP_BITAND	821	767	19679
// OP_IFNOT	19679	4	0
// OP_STORE_V	19629	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1215	0	0
// OP_STORE_V	19629	4	0
// OP_CALL1	1164	0	0
// OP_STORE_V	19629	4	0
// OP_CALL1	1066	0	0
// OP_LOAD_F	19629	575	19680
// OP_BITAND	19680	703	19681
// OP_IFNOT	19681	9	0
// OP_ADDRESS	19629	622	19682
// OP_STOREP_ENT	30	19682	0
// OP_ADDRESS	19629	575	19683
// OP_LOAD_F	19629	575	19684
// OP_SUB_F	19684	703	19685
// OP_STOREP_F	19685	19683	0
// OP_SUB_F	802	214	19686
// OP_STORE_F	19686	802	0
// OP_ADDRESS	19629	607	19687
// OP_STOREP_F	213	19687	0
// OP_ADDRESS	19629	129	19688
// OP_STOREP_S	2025	19688	0
// OP_ADDRESS	19629	163	19689
// OP_STOREP_F	250	19689	0
// OP_ADDRESS	19629	104	19690
// OP_STOREP_F	237	19690	0
// OP_STORE_V	19629	4	0
// OP_STORE_V	348	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	19629	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	19629	166	19691
// OP_STOREP_V	8450	19691	0
// OP_ADDRESS	19629	103	19694
// OP_STOREP_F	230	19694	0
// OP_ADDRESS	19629	133	19695
// OP_LOAD_F	19629	133	19696
// OP_LOAD_F	19629	133	19697
// OP_ADD_F	338	339	19698
// OP_ADD_F	19698	340	19699
// OP_ADD_F	19699	341	19700
// OP_BITAND	19697	19700	19701
// OP_SUB_F	19696	19701	19702
// OP_STOREP_F	19702	19695	0
// OP_BITAND	821	777	19703
// OP_IFNOT	19703	5	0
// OP_ADDRESS	19629	573	19704
// OP_STOREP_F	213	19704	0
// OP_ADDRESS	19629	574	19705
// OP_STOREP_F	213	19705	0
// OP_STORE_V	19629	4	0
// OP_CALL1	19188	0	0
// OP_ADD_F	809	214	19706
// OP_STORE_F	19706	809	0
// OP_LOAD_S	19629	180	19707
// OP_STORE_V	19707	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	19708	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (entity globaldef006798) ToggleObserverMode = 
{
    if(globaldef006798.classname == "observer")
    {
        func002357(globaldef006798);
        globaldef006798.classname = "player";
        globaldef006798.view_ofs = '0 0 22';
        globaldef006798.items = IT_SHOTGUN | IT_AXE;
        globaldef006798.health = 100;
        globaldef006798.armorvalue = FALSE;
        globaldef006798.ammo_shells = SVC_SIGNONNUM;
        globaldef006798.ammo_nails = FALSE;
        globaldef006798.ammo_rockets = FALSE;
        globaldef006798.ammo_cells = FALSE;
        globaldef006798.weapon = WEAPON_SHOTGUN;
        globaldef006798.armortype = FALSE;
        globaldef006798.items = globaldef006798.items - (globaldef006798.items & IT_INVISIBILITY);
        globaldef006798.invisible_finished = FALSE;
        globaldef006798.invincible_finished = FALSE;
        globaldef006798.super_damage_finished = FALSE;
        globaldef006798.radsuit_finished = FALSE;
        globaldef006798.deadflag = DEAD_DYING;
        globaldef006798.solid = SOLID_NOT;
        globaldef006798.flags = globaldef006798.flags - (globaldef006798.flags & FL_ONGROUND);
        globaldef006798.movetype = MOVETYPE_TOSS;
        
        if(obot_game_option_bitflags & globaldef000760)
        {
            globaldef006798.clmodelindex = FALSE;
            globaldef006798.field000251 = FALSE;
        }
        
        
        if(globaldef006798.frags > FALSE)
        {
            globaldef006798.frags = FALSE;
            msgUpdateClientFragsToAll(globaldef006798.clientnumber, globaldef006798.frags);
        }
        
        globaldef000792 = globaldef000792 - TRUE;
        bprint(globaldef006798.netname);
        bprint(" left observer mode\n");
        respawn();
    }
    else
    {
        
        if((globaldef006798.classname == "player") && (globaldef006798.health > FALSE))
        {
            
            if(obot_game_option_bitflags & OBOT_ROCKETARENA)
            {
                rocket_arena_disconnect(globaldef006798, FALSE);
            }
            
            func002522(globaldef006798);
            func002359(globaldef006798);
            
            if(globaldef006798.botflags & globaldef000686)
            {
                globaldef006798.field000299 = world;
                globaldef006798.botflags = globaldef006798.botflags - globaldef000686;
                globaldef000785 = globaldef000785 - TRUE;
            }
            
            globaldef006798.field000284 = FALSE;
            globaldef006798.classname = "observer";
            globaldef006798.takedamage = DAMAGE_NO;
            globaldef006798.solid = SOLID_NOT;
            setmodel(globaldef006798, string_null);
            setsize(globaldef006798, VEC_HULL_MIN, VEC_HULL_MAX);
            globaldef006798.view_ofs = '0 0 22';
            globaldef006798.movetype = MOVETYPE_FLY;
            globaldef006798.effects = globaldef006798.effects - (globaldef006798.effects & (((EF_BRIGHTFIELD + EF_MUZZLEFLASH) + EF_BRIGHTLIGHT) + EF_DIMLIGHT));
            
            if(obot_game_option_bitflags & globaldef000760)
            {
                globaldef006798.clmodelindex = FALSE;
                globaldef006798.field000251 = FALSE;
            }
            
            func002348(globaldef006798);
            globaldef000792 = globaldef000792 + TRUE;
            bprint(globaldef006798.netname);
            bprint(" entered observer mode\n");
        }
        
    }
    
};

