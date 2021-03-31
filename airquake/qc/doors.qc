float DOOR_START_OPEN = 1.000;
float DOOR_DONT_LINK = 4.000;
float DOOR_GOLD_KEY = 8.000;
float DOOR_SILVER_KEY = 16.000;
float DOOR_TOGGLE = 32.000;
void () door_go_down;
void () door_go_up;
// door_blocked
// function begins at statement 22338, parm_start=15477
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	469	15477
// OP_STORE_V	15477	13	0
// OP_CALL4	569	0	0
// OP_LOAD_F	28	462	15478
// OP_GE	15478	619	15479
// OP_IFNOT	15479	7	0
// OP_LOAD_F	28	482	15480
// OP_EQ_F	15480	334	15481
// OP_IFNOT	15481	3	0
// OP_CALL0	15475	0	0
// OP_GOTO	2	0	0
// OP_CALL0	15474	0	0
// OP_DONE	0	0	0
void () door_blocked = 
{
    T_Damage(other, self, self, self.dmg);
    
    if(self.wait >= 0.000)
    {
        if(self.state == STATE_DOWN)
        {
            door_go_up();
        }
        else
        {
            door_go_down();
        }
        
    }
    
};

// door_hit_top
// function begins at statement 22354, parm_start=15483
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	234	15483
// OP_STORE_V	15483	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	15484
// OP_STOREP_F	331	15484	0
// OP_LOAD_F	28	220	15485
// OP_BITAND	15485	15473	15486
// OP_IFNOT	15486	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	15487
// OP_STOREP_FNC	15474	15487	0
// OP_ADDRESS	28	175	15488
// OP_LOAD_F	28	127	15489
// OP_LOAD_F	28	462	15490
// OP_ADD_F	15489	15490	15491
// OP_STOREP_F	15491	15488	0
// OP_DONE	0	0	0
void () door_hit_top = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_TOP;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        return;
    }
    
    self.think = door_go_down;
    self.nextthink = self.ltime + self.wait;
};

// door_hit_bottom
// function begins at statement 22375, parm_start=15493
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	234	15493
// OP_STORE_V	15493	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	15494
// OP_STOREP_F	332	15494	0
// OP_DONE	0	0	0
void () door_hit_bottom = 
{
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.state = STATE_BOTTOM;
};

// door_go_down
// function begins at statement 22385, parm_start=15495
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	235	15495
// OP_STORE_V	15495	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_F	28	210	15496
// OP_IFNOT	15496	6	0
// OP_ADDRESS	28	188	15497
// OP_STOREP_F	305	15497	0
// OP_ADDRESS	28	177	15498
// OP_LOAD_F	28	210	15499
// OP_STOREP_F	15499	15498	0
// OP_ADDRESS	28	482	15500
// OP_STOREP_F	334	15500	0
// OP_LOAD_V	28	483	15501
// OP_STORE_V	15501	4	0
// OP_LOAD_F	28	413	15504
// OP_STORE_V	15504	7	0
// OP_STORE_V	15492	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () door_go_down = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    
    if(self.max_health)
    {
        self.takedamage = DAMAGE_YES;
        self.health = self.max_health;
    }
    
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, door_hit_bottom);
};

// door_go_up
// function begins at statement 22408, parm_start=15505
// OP_LOAD_F	28	482	15505
// OP_EQ_F	15505	333	15506
// OP_IFNOT	15506	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	482	15507
// OP_EQ_F	15507	331	15508
// OP_IFNOT	15508	7	0
// OP_ADDRESS	28	175	15509
// OP_LOAD_F	28	127	15510
// OP_LOAD_F	28	462	15511
// OP_ADD_F	15510	15511	15512
// OP_STOREP_F	15512	15509	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	235	15513
// OP_STORE_V	15513	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	15514
// OP_STOREP_F	333	15514	0
// OP_LOAD_V	28	487	15515
// OP_STORE_V	15515	4	0
// OP_LOAD_F	28	413	15518
// OP_STORE_V	15518	7	0
// OP_STORE_V	15482	10	0
// OP_CALL3	561	0	0
// OP_CALL0	567	0	0
// OP_DONE	0	0	0
void () door_go_up = 
{
    
    if(self.state == STATE_UP)
    {
        return;
    }
    
    
    if(self.state == STATE_TOP)
    {
        self.nextthink = self.ltime + self.wait;
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, door_hit_top);
    SUB_UseTargets();
};

// door_fire
// function begins at statement 22438, parm_start=15520
// OP_LOAD_ENT	28	226	15522
// OP_NE_E	15522	28	15523
// OP_IFNOT	15523	3	0
// OP_STORE_V	15524	4	0
// OP_CALL1	505	0	0
// OP_LOAD_F	28	187	15525
// OP_IFNOT	15525	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	465	15526
// OP_STORE_V	15526	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	231	15527
// OP_STOREP_S	392	15527	0
// OP_STORE_ENT	28	15520	0
// OP_LOAD_F	28	220	15528
// OP_BITAND	15528	15473	15529
// OP_IFNOT	15529	17	0
// OP_LOAD_F	28	482	15530
// OP_EQ_F	15530	333	15531
// OP_LOAD_F	28	482	15532
// OP_EQ_F	15532	331	15533
// OP_OR	15531	15533	15534
// OP_IFNOT	15534	11	0
// OP_STORE_ENT	28	15521	0
// OP_CALL0	15474	0	0
// OP_LOAD_ENT	28	206	15535
// OP_STORE_ENT	15535	28	0
// OP_NE_E	28	15521	15536
// OP_NE_E	28	30	15537
// OP_AND	15536	15537	15538
// OP_IF	15538	-6	0
// OP_STORE_ENT	15520	28	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	15521	0
// OP_CALL0	15475	0	0
// OP_LOAD_ENT	28	206	15539
// OP_STORE_ENT	15539	28	0
// OP_NE_E	28	15521	15540
// OP_NE_E	28	30	15541
// OP_AND	15540	15541	15542
// OP_IF	15542	-6	0
// OP_STORE_ENT	15520	28	0
// OP_DONE	0	0	0
void () door_fire = 
{
    local entity oself;
    local entity starte;
    
    if(self.owner != self)
    {
        objerror("door_fire: self.owner != self");
    }
    
    
    if(self.items)
    {
        sound(self, CHAN_VOICE, self.noise4, 1.000, ATTN_NORM);
    }
    
    self.message = string_null;
    oself = self;
    
    if(self.spawnflags & DOOR_TOGGLE)
    {
        
        if((self.state == STATE_UP) || (self.state == STATE_TOP))
        {
            starte = self;
            do
            {
                door_go_down();
                self = self.enemy;
            } while ((self != starte) && (self != world));
            self = oself;
            return;
        }
        
    }
    
    starte = self;
    do
    {
        door_go_up();
        self = self.enemy;
    } while ((self != starte) && (self != world));
    self = oself;
};

// door_use
// function begins at statement 22484, parm_start=15544
// OP_ADDRESS	28	231	15545
// OP_STOREP_S	621	15545	0
// OP_LOAD_ENT	28	226	15546
// OP_ADDRESS	15546	231	15547
// OP_STOREP_S	621	15547	0
// OP_LOAD_ENT	28	206	15548
// OP_ADDRESS	15548	231	15549
// OP_STOREP_S	621	15549	0
// OP_STORE_ENT	28	15544	0
// OP_LOAD_ENT	28	226	15550
// OP_STORE_ENT	15550	28	0
// OP_CALL0	15519	0	0
// OP_STORE_ENT	15544	28	0
// OP_DONE	0	0	0
void () door_use = 
{
    local entity oself;
    self.message = "";
    self.owner.message = "";
    self.enemy.message = "";
    oself = self;
    self = self.owner;
    door_fire();
    self = oself;
};

// door_trigger_touch
// function begins at statement 22498, parm_start=15552
// OP_LOAD_F	29	177	15552
// OP_LE	15552	619	15553
// OP_IFNOT	15553	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	422	15554
// OP_LT	31	15554	15555
// OP_IFNOT	15555	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	422	15556
// OP_ADD_F	31	677	15557
// OP_STOREP_F	15557	15556	0
// OP_STORE_ENT	29	395	0
// OP_LOAD_ENT	28	226	15558
// OP_STORE_ENT	15558	28	0
// OP_CALL0	15543	0	0
// OP_DONE	0	0	0
void () door_trigger_touch = 
{
    
    if(other.health <= 0.000)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 1.000;
    activator = other;
    self = self.owner;
    door_use();
};

// door_killed
// function begins at statement 22514, parm_start=15560
// OP_STORE_ENT	28	15560	0
// OP_LOAD_ENT	28	226	15561
// OP_STORE_ENT	15561	28	0
// OP_ADDRESS	28	177	15562
// OP_LOAD_F	28	210	15563
// OP_STOREP_F	15563	15562	0
// OP_ADDRESS	28	188	15564
// OP_STOREP_F	304	15564	0
// OP_CALL0	15543	0	0
// OP_STORE_ENT	15560	28	0
// OP_DONE	0	0	0
void () door_killed = 
{
    local entity oself;
    oself = self;
    self = self.owner;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    door_use();
    self = oself;
};

// door_touch
// function begins at statement 22525, parm_start=15566
// OP_LOAD_ENT	29	226	15566
// OP_LOAD_S	15566	154	15567
// OP_NE_S	15567	766	15568
// OP_IFNOT	15568	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	188	15569
// OP_NOT_F	15569	0	15570
// OP_IFNOT	15570	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	226	15571
// OP_LOAD_F	15571	422	15572
// OP_GT	15572	31	15573
// OP_IFNOT	15573	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	226	15574
// OP_ADDRESS	15574	422	15575
// OP_ADD_F	31	806	15576
// OP_STOREP_F	15576	15575	0
// OP_LOAD_ENT	29	226	15577
// OP_STORE_ENT	15577	29	0
// OP_LOAD_ENT	28	226	15578
// OP_LOAD_S	15578	231	15579
// OP_NE_S	15579	621	15580
// OP_IFNOT	15580	12	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	226	15581
// OP_LOAD_S	15581	231	15582
// OP_STORE_V	15582	7	0
// OP_CALL2	555	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	171	15583
// OP_STOREP_FNC	566	15583	0
// OP_LOAD_ENT	28	206	15584
// OP_IFNOT	15584	4	0
// OP_LOAD_ENT	28	206	15585
// OP_ADDRESS	15585	171	15586
// OP_STOREP_FNC	566	15586	0
// OP_STORE_V	15587	4	0
// OP_CALL1	519	0	0
// OP_CALL0	15543	0	0
// OP_DONE	0	0	0
void () door_touch = 
{
    
    if(other.owner.classname != "player")
    {
        return;
    }
    
    
    if(!other.takedamage)
    {
        return;
    }
    
    
    if(self.owner.attack_finished > time)
    {
        return;
    }
    
    self.owner.attack_finished = time + 2.000;
    other = other.owner;
    
    if(self.owner.message != "")
    {
        centerprint(other, self.owner.message);
        sound(other, CHAN_VOICE, "misc/talk.wav", 1.000, ATTN_NORM);
    }
    
    self.touch = SUB_Null;
    
    if(self.enemy)
    {
        self.enemy.touch = SUB_Null;
    }
    
    dprint("Door_use?\n");
    door_use();
};

// spawn_field
// function begins at statement 22571, parm_start=15589
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	15595	0
// OP_ADDRESS	15595	128	15602
// OP_STOREP_F	281	15602	0
// OP_ADDRESS	15595	129	15603
// OP_STOREP_F	292	15603	0
// OP_ADDRESS	15595	226	15604
// OP_STOREP_ENT	28	15604	0
// OP_ADDRESS	15595	171	15605
// OP_STOREP_FNC	15551	15605	0
// OP_STORE_V	15589	15596	0
// OP_STORE_V	15592	15599	0
// OP_STORE_V	15595	4	0
// OP_SUB_V	15596	15606	15609
// OP_STORE_V	15609	7	0
// OP_ADD_V	15599	15606	15612
// OP_STORE_V	15612	10	0
// OP_CALL3	499	0	0
// OP_RETURN	15595	0	0
// OP_DONE	0	0	0
entity (vector fmins, vector fmaxs) spawn_field = 
{
    local entity trigger;
    local vector t1;
    local vector t2;
    trigger = spawn();
    trigger.movetype = MOVETYPE_NONE;
    trigger.solid = SOLID_TRIGGER;
    trigger.owner = self;
    trigger.touch = door_trigger_touch;
    t1 = fmins;
    t2 = fmaxs;
    setsize(trigger, t1 - '60.000 60.000 8.000', t2 + '60.000 60.000 8.000');
    return trigger;
};

// EntitiesTouching
// function begins at statement 22591, parm_start=15616
// OP_LOAD_F	15616	160	15618
// OP_LOAD_F	15617	164	15619
// OP_GT	15618	15619	15620
// OP_IFNOT	15620	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	15616	161	15621
// OP_LOAD_F	15617	165	15622
// OP_GT	15621	15622	15623
// OP_IFNOT	15623	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	15616	162	15624
// OP_LOAD_F	15617	166	15625
// OP_GT	15624	15625	15626
// OP_IFNOT	15626	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	15616	164	15627
// OP_LOAD_F	15617	160	15628
// OP_LT	15627	15628	15629
// OP_IFNOT	15629	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	15616	165	15630
// OP_LOAD_F	15617	161	15631
// OP_LT	15630	15631	15632
// OP_IFNOT	15632	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	15616	166	15633
// OP_LOAD_F	15617	162	15634
// OP_LT	15633	15634	15635
// OP_IFNOT	15635	2	0
// OP_RETURN	267	0	0
// OP_RETURN	268	0	0
// OP_DONE	0	0	0
float (entity e1, entity e2) EntitiesTouching = 
{
    
    if(e1.mins_x > e2.maxs_x)
    {
        return FALSE;
    }
    
    
    if(e1.mins_y > e2.maxs_y)
    {
        return FALSE;
    }
    
    
    if(e1.mins_z > e2.maxs_z)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_x < e2.mins_x)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_y < e2.mins_y)
    {
        return FALSE;
    }
    
    
    if(e1.maxs_z < e2.mins_z)
    {
        return FALSE;
    }
    
    return TRUE;
};

// LinkDoors
// function begins at statement 22623, parm_start=15637
// OP_LOAD_ENT	28	206	15645
// OP_IFNOT	15645	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	220	15646
// OP_BITAND	15646	808	15647
// OP_IFNOT	15647	6	0
// OP_ADDRESS	28	226	15648
// OP_ADDRESS	28	206	15649
// OP_STOREP_ENT	28	15649	0
// OP_STOREP_ENT	28	15648	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	159	15650
// OP_STORE_V	15650	15639	0
// OP_LOAD_V	28	163	15653
// OP_STORE_V	15653	15642	0
// OP_STORE_ENT	28	15638	0
// OP_STORE_ENT	28	15637	0
// OP_ADDRESS	28	226	15656
// OP_STOREP_ENT	15638	15656	0
// OP_LOAD_F	28	177	15657
// OP_IFNOT	15657	4	0
// OP_ADDRESS	15638	177	15658
// OP_LOAD_F	28	177	15659
// OP_STOREP_F	15659	15658	0
// OP_LOAD_S	28	222	15660
// OP_IFNOT	15660	4	0
// OP_ADDRESS	15638	222	15661
// OP_LOAD_S	28	222	15662
// OP_STOREP_S	15662	15661	0
// OP_LOAD_S	28	231	15663
// OP_NE_S	15663	621	15664
// OP_IFNOT	15664	4	0
// OP_ADDRESS	15638	231	15665
// OP_LOAD_S	28	231	15666
// OP_STOREP_S	15666	15665	0
// OP_STORE_V	15637	4	0
// OP_STORE_V	154	7	0
// OP_LOAD_S	28	154	15667
// OP_STORE_V	15667	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	15637	0
// OP_NOT_ENT	15637	0	15668
// OP_IFNOT	15668	21	0
// OP_ADDRESS	28	206	15669
// OP_STOREP_ENT	15638	15669	0
// OP_LOAD_ENT	28	226	15670
// OP_STORE_ENT	15670	28	0
// OP_LOAD_F	28	177	15671
// OP_IFNOT	15671	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	222	15672
// OP_IFNOT	15672	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	187	15673
// OP_IFNOT	15673	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	226	15674
// OP_ADDRESS	15674	464	15675
// OP_STORE_V	15639	4	0
// OP_STORE_V	15642	7	0
// OP_CALL2	15588	0	0
// OP_STOREP_ENT	1	15675	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15637	7	0
// OP_CALL2	15615	0	0
// OP_IFNOT	1	38	0
// OP_LOAD_ENT	15637	206	15676
// OP_IFNOT	15676	3	0
// OP_STORE_V	15677	4	0
// OP_CALL1	505	0	0
// OP_ADDRESS	28	206	15678
// OP_STOREP_ENT	15637	15678	0
// OP_STORE_ENT	15637	28	0
// OP_LOAD_F	15637	160	15679
// OP_LT	15679	15639	15680
// OP_IFNOT	15680	3	0
// OP_LOAD_F	15637	160	15681
// OP_STORE_F	15681	15639	0
// OP_LOAD_F	15637	161	15682
// OP_LT	15682	15640	15683
// OP_IFNOT	15683	3	0
// OP_LOAD_F	15637	161	15684
// OP_STORE_F	15684	15640	0
// OP_LOAD_F	15637	162	15685
// OP_LT	15685	15641	15686
// OP_IFNOT	15686	3	0
// OP_LOAD_F	15637	162	15687
// OP_STORE_F	15687	15641	0
// OP_LOAD_F	15637	164	15688
// OP_GT	15688	15642	15689
// OP_IFNOT	15689	3	0
// OP_LOAD_F	15637	164	15690
// OP_STORE_F	15690	15642	0
// OP_LOAD_F	15637	165	15691
// OP_GT	15691	15643	15692
// OP_IFNOT	15692	3	0
// OP_LOAD_F	15637	165	15693
// OP_STORE_F	15693	15643	0
// OP_LOAD_F	15637	166	15694
// OP_GT	15694	15644	15695
// OP_IFNOT	15695	3	0
// OP_LOAD_F	15637	166	15696
// OP_STORE_F	15696	15644	0
// OP_IF	677	-87	0
// OP_DONE	0	0	0
void () LinkDoors = 
{
    local entity t;
    local entity starte;
    local vector cmins;
    local vector cmaxs;
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.spawnflags & 4.000)
    {
        self.enemy = self;
        self.owner = self;
        return;
    }
    
    cmins = self.mins;
    cmaxs = self.maxs;
    starte = self;
    t = self;
    do
    {
        self.owner = starte;
        
        if(self.health)
        {
            starte.health = self.health;
        }
        
        
        if(self.targetname)
        {
            starte.targetname = self.targetname;
        }
        
        
        if(self.message != "")
        {
            starte.message = self.message;
        }
        
        t = find(t, classname, self.classname);
        
        if(!t)
        {
            self.enemy = starte;
            self = self.owner;
            
            if(self.health)
            {
                return;
            }
            
            
            if(self.targetname)
            {
                return;
            }
            
            
            if(self.items)
            {
                return;
            }
            
            self.owner.trigger_field = spawn_field(cmins, cmaxs);
            return;
        }
        
        
        if(EntitiesTouching(self, t))
        {
            
            if(t.enemy)
            {
                objerror("cross connected doors");
            }
            
            self.enemy = t;
            self = t;
            
            if(t.mins_x < cmins_x)
            {
                cmins_x = t.mins_x;
            }
            
            
            if(t.mins_y < cmins_y)
            {
                cmins_y = t.mins_y;
            }
            
            
            if(t.mins_z < cmins_z)
            {
                cmins_z = t.mins_z;
            }
            
            
            if(t.maxs_x > cmaxs_x)
            {
                cmaxs_x = t.maxs_x;
            }
            
            
            if(t.maxs_y > cmaxs_y)
            {
                cmaxs_y = t.maxs_y;
            }
            
            
            if(t.maxs_z > cmaxs_z)
            {
                cmaxs_z = t.maxs_z;
            }
            
        }
        
    } while (1.000);
};

// func_door
// function begins at statement 22729, parm_start=15698
// OP_LOAD_F	30	401	15698
// OP_EQ_F	15698	619	15699
// OP_IFNOT	15699	10	0
// OP_STORE_V	15700	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15701	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	236	15702
// OP_STOREP_S	15700	15702	0
// OP_ADDRESS	28	465	15703
// OP_STOREP_S	15701	15703	0
// OP_GOTO	27	0	0
// OP_LOAD_F	30	401	15704
// OP_EQ_F	15704	677	15705
// OP_IFNOT	15705	10	0
// OP_STORE_V	15706	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15707	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	236	15708
// OP_STOREP_S	15706	15708	0
// OP_ADDRESS	28	465	15709
// OP_STOREP_S	15707	15709	0
// OP_GOTO	15	0	0
// OP_LOAD_F	30	401	15710
// OP_EQ_F	15710	806	15711
// OP_IFNOT	15711	10	0
// OP_STORE_V	15712	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15713	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	236	15714
// OP_STOREP_S	15712	15714	0
// OP_ADDRESS	28	465	15715
// OP_STOREP_S	15713	15715	0
// OP_GOTO	3	0	0
// OP_STORE_V	15716	4	0
// OP_CALL1	519	0	0
// OP_LOAD_F	28	232	15717
// OP_EQ_F	15717	619	15718
// OP_IFNOT	15718	9	0
// OP_STORE_V	15719	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15719	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	15720
// OP_STOREP_S	15719	15720	0
// OP_ADDRESS	28	235	15721
// OP_STOREP_S	15719	15721	0
// OP_LOAD_F	28	232	15722
// OP_EQ_F	15722	677	15723
// OP_IFNOT	15723	9	0
// OP_STORE_V	15724	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15725	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	15726
// OP_STOREP_S	15724	15726	0
// OP_ADDRESS	28	235	15727
// OP_STOREP_S	15725	15727	0
// OP_LOAD_F	28	232	15728
// OP_EQ_F	15728	806	15729
// OP_IFNOT	15729	9	0
// OP_STORE_V	15730	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15731	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	235	15732
// OP_STOREP_S	15730	15732	0
// OP_ADDRESS	28	234	15733
// OP_STOREP_S	15731	15733	0
// OP_LOAD_F	28	232	15734
// OP_EQ_F	15734	788	15735
// OP_IFNOT	15735	9	0
// OP_STORE_V	15736	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15737	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	235	15738
// OP_STOREP_S	15736	15738	0
// OP_ADDRESS	28	234	15739
// OP_STOREP_S	15737	15739	0
// OP_LOAD_F	28	232	15740
// OP_EQ_F	15740	808	15741
// OP_IFNOT	15741	9	0
// OP_STORE_V	15742	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15743	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	15744
// OP_STOREP_S	15743	15744	0
// OP_ADDRESS	28	235	15745
// OP_STOREP_S	15742	15745	0
// OP_CALL0	571	0	0
// OP_ADDRESS	28	210	15746
// OP_LOAD_F	28	177	15747
// OP_STOREP_F	15747	15746	0
// OP_ADDRESS	28	129	15748
// OP_STOREP_F	295	15748	0
// OP_ADDRESS	28	128	15749
// OP_STOREP_F	286	15749	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	15750
// OP_STORE_V	15750	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	15753
// OP_STORE_V	15753	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	154	15754
// OP_STOREP_S	15755	15754	0
// OP_ADDRESS	28	174	15756
// OP_STOREP_FNC	15476	15756	0
// OP_ADDRESS	28	172	15757
// OP_STOREP_FNC	15543	15757	0
// OP_LOAD_F	28	413	15758
// OP_NOT_F	15758	0	15759
// OP_IFNOT	15759	3	0
// OP_ADDRESS	28	413	15760
// OP_STOREP_F	2618	15760	0
// OP_LOAD_F	28	462	15761
// OP_NOT_F	15761	0	15762
// OP_IFNOT	15762	3	0
// OP_ADDRESS	28	462	15763
// OP_STOREP_F	788	15763	0
// OP_LOAD_F	28	481	15764
// OP_NOT_F	15764	0	15765
// OP_IFNOT	15765	3	0
// OP_ADDRESS	28	481	15766
// OP_STOREP_F	810	15766	0
// OP_LOAD_F	28	469	15767
// OP_NOT_F	15767	0	15768
// OP_IFNOT	15768	3	0
// OP_ADDRESS	28	469	15769
// OP_STOREP_F	806	15769	0
// OP_ADDRESS	28	483	15770
// OP_LOAD_V	28	130	15773
// OP_STOREP_V	15773	15770	0
// OP_ADDRESS	28	487	15776
// OP_LOAD_V	28	483	15779
// OP_LOAD_V	28	227	15782
// OP_LOAD_V	28	227	15785
// OP_LOAD_V	28	167	15788
// OP_MUL_V	15785	15788	15791
// OP_STORE_V	15791	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	481	15792
// OP_SUB_F	1	15792	15793
// OP_MUL_VF	15782	15793	15794
// OP_ADD_V	15779	15794	15797
// OP_STOREP_V	15797	15776	0
// OP_LOAD_F	28	220	15800
// OP_BITAND	15800	15469	15801
// OP_IFNOT	15801	11	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	487	15802
// OP_STORE_V	15802	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	487	15805
// OP_LOAD_V	28	483	15808
// OP_STOREP_V	15808	15805	0
// OP_ADDRESS	28	483	15811
// OP_LOAD_V	28	130	15814
// OP_STOREP_V	15814	15811	0
// OP_ADDRESS	28	482	15817
// OP_STOREP_F	332	15817	0
// OP_LOAD_F	28	177	15818
// OP_IFNOT	15818	5	0
// OP_ADDRESS	28	188	15819
// OP_STOREP_F	305	15819	0
// OP_ADDRESS	28	411	15820
// OP_STOREP_FNC	15559	15820	0
// OP_LOAD_F	28	187	15821
// OP_IFNOT	15821	3	0
// OP_ADDRESS	28	462	15822
// OP_STOREP_F	689	15822	0
// OP_ADDRESS	28	171	15823
// OP_STOREP_FNC	15565	15823	0
// OP_ADDRESS	28	173	15824
// OP_STOREP_FNC	15636	15824	0
// OP_ADDRESS	28	175	15825
// OP_LOAD_F	28	127	15826
// OP_ADD_F	15826	655	15827
// OP_STOREP_F	15827	15825	0
// OP_DONE	0	0	0
void () func_door = 
{
    if(world.worldtype == 0.000)
    {
        precache_sound("doors/medtry.wav");
        precache_sound("doors/meduse.wav");
        self.noise3 = "doors/medtry.wav";
        self.noise4 = "doors/meduse.wav";
    }
    else
    {
        if(world.worldtype == 1.000)
        {
            precache_sound("doors/runetry.wav");
            precache_sound("doors/runeuse.wav");
            self.noise3 = "doors/runetry.wav";
            self.noise4 = "doors/runeuse.wav";
        }
        else
        {
            if(world.worldtype == 2.000)
            {
                precache_sound("doors/basetry.wav");
                precache_sound("doors/baseuse.wav");
                self.noise3 = "doors/basetry.wav";
                self.noise4 = "doors/baseuse.wav";
            }
            else
            {
                dprint("no worldtype set!\n");
            }
            
        }
        
    }
    
    
    if(self.sounds == 0.000)
    {
        precache_sound("misc/null.wav");
        precache_sound("misc/null.wav");
        self.noise1 = "misc/null.wav";
        self.noise2 = "misc/null.wav";
    }
    
    
    if(self.sounds == 1.000)
    {
        precache_sound("doors/drclos4.wav");
        precache_sound("doors/doormv1.wav");
        self.noise1 = "doors/drclos4.wav";
        self.noise2 = "doors/doormv1.wav";
    }
    
    
    if(self.sounds == 2.000)
    {
        precache_sound("doors/hydro1.wav");
        precache_sound("doors/hydro2.wav");
        self.noise2 = "doors/hydro1.wav";
        self.noise1 = "doors/hydro2.wav";
    }
    
    
    if(self.sounds == 3.000)
    {
        precache_sound("doors/stndr1.wav");
        precache_sound("doors/stndr2.wav");
        self.noise2 = "doors/stndr1.wav";
        self.noise1 = "doors/stndr2.wav";
    }
    
    
    if(self.sounds == 4.000)
    {
        precache_sound("doors/ddoor1.wav");
        precache_sound("doors/ddoor2.wav");
        self.noise1 = "doors/ddoor2.wav";
        self.noise2 = "doors/ddoor1.wav";
    }
    
    SetMovedir();
    self.max_health = self.health;
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    setorigin(self, self.origin);
    setmodel(self, self.model);
    self.classname = "door";
    self.blocked = door_blocked;
    self.use = door_use;
    
    if(!self.speed)
    {
        self.speed = 100.000;
    }
    
    
    if(!self.wait)
    {
        self.wait = 3.000;
    }
    
    
    if(!self.lip)
    {
        self.lip = 8.000;
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2.000;
    }
    
    self.pos1 = self.origin;
    self.pos2 = self.pos1 + (self.movedir * ((fabs(self.movedir * self.size)) - self.lip));
    
    if(self.spawnflags & DOOR_START_OPEN)
    {
        setorigin(self, self.pos2);
        self.pos2 = self.pos1;
        self.pos1 = self.origin;
    }
    
    self.state = STATE_BOTTOM;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
        self.th_die = door_killed;
    }
    
    
    if(self.items)
    {
        self.wait = -1.000;
    }
    
    self.touch = door_touch;
    self.think = LinkDoors;
    self.nextthink = self.ltime + 0.100;
};

void () fd_secret_move1;
void () fd_secret_move2;
void () fd_secret_move3;
void () fd_secret_move4;
void () fd_secret_move5;
void () fd_secret_move6;
void () fd_secret_done;
float SECRET_OPEN_ONCE = 1.000;
float SECRET_1ST_LEFT = 2.000;
float SECRET_1ST_DOWN = 4.000;
float SECRET_NO_SHOOT = 8.000;
float SECRET_YES_SHOOT = 16.000;
// fd_secret_use
// function begins at statement 22914, parm_start=15841
// OP_ADDRESS	28	177	15842
// OP_STOREP_F	1743	15842	0
// OP_LOAD_V	28	130	15843
// OP_LOAD_V	28	134	15846
// OP_NE_V	15843	15846	15849
// OP_IFNOT	15849	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	231	15850
// OP_STOREP_S	392	15850	0
// OP_CALL0	567	0	0
// OP_LOAD_F	28	220	15851
// OP_BITAND	15851	15838	15852
// OP_NOT_F	15852	0	15853
// OP_IFNOT	15853	5	0
// OP_ADDRESS	28	410	15854
// OP_STOREP_FNC	566	15854	0
// OP_ADDRESS	28	188	15855
// OP_STOREP_F	304	15855	0
// OP_ADDRESS	28	138	15856
// OP_STOREP_V	607	15856	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	234	15859
// OP_STORE_V	15859	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	175	15860
// OP_LOAD_F	28	127	15861
// OP_ADD_F	15861	655	15862
// OP_STOREP_F	15862	15860	0
// OP_LOAD_F	28	220	15863
// OP_BITAND	15863	15836	15864
// OP_SUB_F	677	15864	15865
// OP_STORE_F	15865	15841	0
// OP_LOAD_V	28	444	15866
// OP_STORE_V	15866	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	449	15869
// OP_NOT_F	15869	0	15870
// OP_IFNOT	15870	17	0
// OP_LOAD_F	28	220	15871
// OP_BITAND	15871	15837	15872
// OP_IFNOT	15872	8	0
// OP_ADDRESS	28	449	15873
// OP_LOAD_V	28	167	15874
// OP_MUL_V	62	15874	15877
// OP_STORE_V	15877	4	0
// OP_CALL1	534	0	0
// OP_STOREP_F	1	15873	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	449	15878
// OP_LOAD_V	28	167	15879
// OP_MUL_V	65	15879	15882
// OP_STORE_V	15882	4	0
// OP_CALL1	534	0	0
// OP_STOREP_F	1	15878	0
// OP_LOAD_F	28	448	15883
// OP_NOT_F	15883	0	15884
// OP_IFNOT	15884	7	0
// OP_ADDRESS	28	448	15885
// OP_LOAD_V	28	167	15886
// OP_MUL_V	59	15886	15889
// OP_STORE_V	15889	4	0
// OP_CALL1	534	0	0
// OP_STOREP_F	1	15885	0
// OP_LOAD_F	28	220	15890
// OP_BITAND	15890	15837	15891
// OP_IFNOT	15891	8	0
// OP_ADDRESS	28	454	15892
// OP_LOAD_V	28	130	15895
// OP_LOAD_F	28	449	15898
// OP_MUL_VF	62	15898	15899
// OP_SUB_V	15895	15899	15902
// OP_STOREP_V	15902	15892	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	454	15905
// OP_LOAD_V	28	130	15908
// OP_LOAD_F	28	449	15911
// OP_MUL_F	15911	15841	15912
// OP_MUL_VF	65	15912	15913
// OP_ADD_V	15908	15913	15916
// OP_STOREP_V	15916	15905	0
// OP_ADDRESS	28	458	15919
// OP_LOAD_V	28	454	15922
// OP_LOAD_F	28	448	15925
// OP_MUL_VF	59	15925	15926
// OP_ADD_V	15922	15926	15929
// OP_STOREP_V	15929	15919	0
// OP_LOAD_V	28	454	15932
// OP_STORE_V	15932	4	0
// OP_LOAD_F	28	413	15935
// OP_STORE_V	15935	7	0
// OP_STORE_V	15828	10	0
// OP_CALL3	561	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	235	15936
// OP_STORE_V	15936	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () fd_secret_use = 
{
    local float temp;
    self.health = 10000.000;
    
    if(self.origin != self.oldorigin)
    {
        return;
    }
    
    self.message = string_null;
    SUB_UseTargets();
    
    if(!(self.spawnflags & SECRET_NO_SHOOT))
    {
        self.th_pain = SUB_Null;
        self.takedamage = DAMAGE_NO;
    }
    
    self.velocity = '0.000 0.000 0.000';
    sound(self, CHAN_VOICE, self.noise1, 1.000, ATTN_NORM);
    self.nextthink = self.ltime + 0.100;
    temp = 1.000 - (self.spawnflags & SECRET_1ST_LEFT);
    makevectors(self.mangle);
    
    if(!self.t_width)
    {
        if(self.spawnflags & SECRET_1ST_DOWN)
        {
            self.t_width = fabs(v_up * self.size);
        }
        else
        {
            self.t_width = fabs(v_right * self.size);
        }
        
    }
    
    
    if(!self.t_length)
    {
        self.t_length = fabs(v_forward * self.size);
    }
    
    if(self.spawnflags & SECRET_1ST_DOWN)
    {
        self.dest1 = self.origin - (v_up * self.t_width);
    }
    else
    {
        self.dest1 = self.origin + (v_right * (self.t_width * temp));
    }
    
    self.dest2 = self.dest1 + (v_forward * self.t_length);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move1);
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
};

// fd_secret_move1
// function begins at statement 23017, parm_start=15937
// OP_ADDRESS	28	175	15937
// OP_LOAD_F	28	127	15938
// OP_ADD_F	15938	677	15939
// OP_STOREP_F	15939	15937	0
// OP_ADDRESS	28	173	15940
// OP_STOREP_FNC	15829	15940	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	236	15941
// OP_STORE_V	15941	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () fd_secret_move1 = 
{
    self.nextthink = self.ltime + 1.000;
    self.think = fd_secret_move2;
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
};

// fd_secret_move2
// function begins at statement 23031, parm_start=15942
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	235	15942
// OP_STORE_V	15942	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	28	458	15943
// OP_STORE_V	15943	4	0
// OP_LOAD_F	28	413	15946
// OP_STORE_V	15946	7	0
// OP_STORE_V	15830	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () fd_secret_move2 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    SUB_CalcMove(self.dest2, self.speed, fd_secret_move3);
};

// fd_secret_move3
// function begins at statement 23045, parm_start=15947
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	236	15947
// OP_STORE_V	15947	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_F	28	220	15948
// OP_BITAND	15948	15835	15949
// OP_NOT_F	15949	0	15950
// OP_IFNOT	15950	8	0
// OP_ADDRESS	28	175	15951
// OP_LOAD_F	28	127	15952
// OP_LOAD_F	28	462	15953
// OP_ADD_F	15952	15953	15954
// OP_STOREP_F	15954	15951	0
// OP_ADDRESS	28	173	15955
// OP_STOREP_FNC	15831	15955	0
// OP_DONE	0	0	0
void () fd_secret_move3 = 
{
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
    
    if(!(self.spawnflags & SECRET_OPEN_ONCE))
    {
        self.nextthink = self.ltime + self.wait;
        self.think = fd_secret_move4;
    }
    
};

// fd_secret_move4
// function begins at statement 23064, parm_start=15956
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	235	15956
// OP_STORE_V	15956	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	28	454	15957
// OP_STORE_V	15957	4	0
// OP_LOAD_F	28	413	15960
// OP_STORE_V	15960	7	0
// OP_STORE_V	15832	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () fd_secret_move4 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    SUB_CalcMove(self.dest1, self.speed, fd_secret_move5);
};

// fd_secret_move5
// function begins at statement 23078, parm_start=15961
// OP_ADDRESS	28	175	15961
// OP_LOAD_F	28	127	15962
// OP_ADD_F	15962	677	15963
// OP_STOREP_F	15963	15961	0
// OP_ADDRESS	28	173	15964
// OP_STOREP_FNC	15833	15964	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	236	15965
// OP_STORE_V	15965	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () fd_secret_move5 = 
{
    self.nextthink = self.ltime + 1.000;
    self.think = fd_secret_move6;
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
};

// fd_secret_move6
// function begins at statement 23092, parm_start=15966
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	235	15966
// OP_STORE_V	15966	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	28	134	15967
// OP_STORE_V	15967	4	0
// OP_LOAD_F	28	413	15970
// OP_STORE_V	15970	7	0
// OP_STORE_V	15834	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () fd_secret_move6 = 
{
    sound(self, CHAN_VOICE, self.noise2, 1.000, ATTN_NORM);
    SUB_CalcMove(self.oldorigin, self.speed, fd_secret_done);
};

// fd_secret_done
// function begins at statement 23106, parm_start=15971
// OP_LOAD_S	28	222	15971
// OP_NOT_S	15971	0	15972
// OP_LOAD_F	28	220	15973
// OP_BITAND	15973	15839	15974
// OP_OR	15972	15974	15975
// OP_IFNOT	15975	7	0
// OP_ADDRESS	28	177	15976
// OP_STOREP_F	1743	15976	0
// OP_ADDRESS	28	188	15977
// OP_STOREP_F	305	15977	0
// OP_ADDRESS	28	410	15978
// OP_STOREP_FNC	15840	15978	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	236	15979
// OP_STORE_V	15979	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () fd_secret_done = 
{
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000.000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
    }
    
    sound(self, CHAN_VOICE, self.noise3, 1.000, ATTN_NORM);
};

// secret_blocked
// function begins at statement 23126, parm_start=15981
// OP_LOAD_F	28	422	15981
// OP_LT	31	15981	15982
// OP_IFNOT	15982	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	422	15983
// OP_ADD_F	31	972	15984
// OP_STOREP_F	15984	15983	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	469	15985
// OP_STORE_V	15985	13	0
// OP_CALL4	569	0	0
// OP_DONE	0	0	0
void () secret_blocked = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + 0.500;
    T_Damage(other, self, self, self.dmg);
};

// secret_touch
// function begins at statement 23140, parm_start=15987
// OP_LOAD_S	29	154	15987
// OP_NE_S	15987	766	15988
// OP_IFNOT	15988	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	422	15989
// OP_GT	15989	31	15990
// OP_IFNOT	15990	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	422	15991
// OP_ADD_F	31	806	15992
// OP_STOREP_F	15992	15991	0
// OP_LOAD_S	28	231	15993
// OP_IFNOT	15993	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	231	15994
// OP_STORE_V	15994	7	0
// OP_CALL2	555	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	774	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () secret_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(self.attack_finished > time)
    {
        return;
    }
    
    self.attack_finished = time + 2.000;
    
    if(self.message)
    {
        centerprint(other, self.message);
        sound(other, CHAN_BODY, "misc/talk.wav", 1.000, ATTN_NORM);
    }
    
};

// func_door_secret
// function begins at statement 23164, parm_start=15996
// OP_LOAD_F	28	232	15996
// OP_EQ_F	15996	619	15997
// OP_IFNOT	15997	3	0
// OP_ADDRESS	28	232	15998
// OP_STOREP_F	788	15998	0
// OP_LOAD_F	28	232	15999
// OP_EQ_F	15999	677	16000
// OP_IFNOT	16000	13	0
// OP_STORE_V	16001	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	16002	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	15724	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	234	16003
// OP_STOREP_S	16001	16003	0
// OP_ADDRESS	28	235	16004
// OP_STOREP_S	16002	16004	0
// OP_ADDRESS	28	236	16005
// OP_STOREP_S	15724	16005	0
// OP_LOAD_F	28	232	16006
// OP_EQ_F	16006	806	16007
// OP_IFNOT	16007	11	0
// OP_STORE_V	16008	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	16009	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	235	16010
// OP_STOREP_S	16008	16010	0
// OP_ADDRESS	28	234	16011
// OP_STOREP_S	16009	16011	0
// OP_ADDRESS	28	236	16012
// OP_STOREP_S	16009	16012	0
// OP_LOAD_F	28	232	16013
// OP_EQ_F	16013	788	16014
// OP_IFNOT	16014	11	0
// OP_STORE_V	16015	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	16016	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	235	16017
// OP_STOREP_S	16015	16017	0
// OP_ADDRESS	28	234	16018
// OP_STOREP_S	16016	16018	0
// OP_ADDRESS	28	236	16019
// OP_STOREP_S	16016	16019	0
// OP_LOAD_F	28	469	16020
// OP_NOT_F	16020	0	16021
// OP_IFNOT	16021	3	0
// OP_ADDRESS	28	469	16022
// OP_STOREP_F	806	16022	0
// OP_ADDRESS	28	444	16023
// OP_LOAD_V	28	142	16026
// OP_STOREP_V	16026	16023	0
// OP_ADDRESS	28	142	16029
// OP_STOREP_V	607	16029	0
// OP_ADDRESS	28	129	16032
// OP_STOREP_F	295	16032	0
// OP_ADDRESS	28	128	16033
// OP_STOREP_F	286	16033	0
// OP_ADDRESS	28	154	16034
// OP_STOREP_S	15755	16034	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	16035
// OP_STORE_V	16035	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	130	16036
// OP_STORE_V	16036	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	171	16039
// OP_STOREP_FNC	15986	16039	0
// OP_ADDRESS	28	174	16040
// OP_STOREP_FNC	15980	16040	0
// OP_ADDRESS	28	413	16041
// OP_STOREP_F	856	16041	0
// OP_ADDRESS	28	172	16042
// OP_STOREP_FNC	15840	16042	0
// OP_LOAD_S	28	222	16043
// OP_NOT_S	16043	0	16044
// OP_LOAD_F	28	220	16045
// OP_BITAND	16045	15839	16046
// OP_OR	16044	16046	16047
// OP_IFNOT	16047	9	0
// OP_ADDRESS	28	177	16048
// OP_STOREP_F	1743	16048	0
// OP_ADDRESS	28	188	16049
// OP_STOREP_F	305	16049	0
// OP_ADDRESS	28	410	16050
// OP_STOREP_FNC	15840	16050	0
// OP_ADDRESS	28	411	16051
// OP_STOREP_FNC	15840	16051	0
// OP_ADDRESS	28	134	16052
// OP_LOAD_V	28	130	16055
// OP_STOREP_V	16055	16052	0
// OP_LOAD_F	28	462	16058
// OP_NOT_F	16058	0	16059
// OP_IFNOT	16059	3	0
// OP_ADDRESS	28	462	16060
// OP_STOREP_F	813	16060	0
// OP_DONE	0	0	0
void () func_door_secret = 
{
    
    if(self.sounds == 0.000)
    {
        self.sounds = 3.000;
    }
    
    
    if(self.sounds == 1.000)
    {
        precache_sound("doors/latch2.wav");
        precache_sound("doors/winch2.wav");
        precache_sound("doors/drclos4.wav");
        self.noise1 = "doors/latch2.wav";
        self.noise2 = "doors/winch2.wav";
        self.noise3 = "doors/drclos4.wav";
    }
    
    
    if(self.sounds == 2.000)
    {
        precache_sound("doors/airdoor1.wav");
        precache_sound("doors/airdoor2.wav");
        self.noise2 = "doors/airdoor1.wav";
        self.noise1 = "doors/airdoor2.wav";
        self.noise3 = "doors/airdoor2.wav";
    }
    
    
    if(self.sounds == 3.000)
    {
        precache_sound("doors/basesec1.wav");
        precache_sound("doors/basesec2.wav");
        self.noise2 = "doors/basesec1.wav";
        self.noise1 = "doors/basesec2.wav";
        self.noise3 = "doors/basesec2.wav";
    }
    
    
    if(!self.dmg)
    {
        self.dmg = 2.000;
    }
    
    self.mangle = self.angles;
    self.angles = '0.000 0.000 0.000';
    self.solid = SOLID_BSP;
    self.movetype = MOVETYPE_PUSH;
    self.classname = "door";
    setmodel(self, self.model);
    setorigin(self, self.origin);
    self.touch = secret_touch;
    self.blocked = secret_blocked;
    self.speed = 50.000;
    self.use = fd_secret_use;
    
    if(!self.targetname || (self.spawnflags & SECRET_YES_SHOOT))
    {
        self.health = 10000.000;
        self.takedamage = DAMAGE_YES;
        self.th_pain = fd_secret_use;
        self.th_die = fd_secret_use;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.wait)
    {
        self.wait = 5.000;
    }
    
};

