void () player_pain;
void () player_stand1;
void (vector org) spawn_tfog;
void (vector org, entity death_owner) spawn_tdeath;
float modelindex_eyes;
float modelindex_player;
float intermission_running;
float intermission_exittime;
// info_intermission
// function begins at statement 18881, parm_start=13500
// OP_DONE	0	0	0
void () info_intermission = 
{
};

// SetChangeParms
// function begins at statement 18882, parm_start=13500
// OP_LOAD_F	28	177	13500
// OP_LE	13500	619	13501
// OP_IFNOT	13501	3	0
// OP_CALL0	90	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	187	13502
// OP_LOAD_F	28	187	13503
// OP_LOAD_F	28	187	13504
// OP_BITOR	315	316	13505
// OP_BITOR	13505	317	13506
// OP_BITOR	13506	318	13507
// OP_BITOR	13507	319	13508
// OP_BITOR	13508	320	13509
// OP_BITAND	13504	13509	13510
// OP_SUB_F	13503	13510	13511
// OP_STOREP_F	13511	13502	0
// OP_LOAD_F	28	177	13512
// OP_GT	13512	2618	13513
// OP_IFNOT	13513	3	0
// OP_ADDRESS	28	177	13514
// OP_STOREP_F	2618	13514	0
// OP_LOAD_F	28	177	13515
// OP_LT	13515	856	13516
// OP_IFNOT	13516	3	0
// OP_ADDRESS	28	177	13517
// OP_STOREP_F	856	13517	0
// OP_LOAD_F	28	187	13518
// OP_STORE_F	13518	43	0
// OP_LOAD_F	28	177	13519
// OP_STORE_F	13519	44	0
// OP_LOAD_F	28	213	13520
// OP_STORE_F	13520	45	0
// OP_LOAD_F	28	183	13521
// OP_STORE_F	13521	46	0
// OP_LOAD_F	28	184	13522
// OP_STORE_F	13522	47	0
// OP_LOAD_F	28	185	13523
// OP_STORE_F	13523	48	0
// OP_LOAD_F	28	186	13524
// OP_STORE_F	13524	49	0
// OP_LOAD_F	28	179	13525
// OP_STORE_F	13525	50	0
// OP_LOAD_F	28	212	13526
// OP_MUL_F	13526	2618	13527
// OP_STORE_F	13527	51	0
// OP_DONE	0	0	0
void () SetChangeParms = 
{
    
    if(self.health <= 0)
    {
        SetNewParms();
        return;
    }
    
    self.items = self.items - (self.items & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD));
    
    if(self.health > 100)
    {
        self.health = 100;
    }
    
    
    if(self.health < 50)
    {
        self.health = 50;
    }
    
    parm1 = self.items;
    parm2 = self.health;
    parm3 = self.armorvalue;
    parm4 = self.ammo_shells;
    parm5 = self.ammo_nails;
    parm6 = self.ammo_rockets;
    parm7 = self.ammo_cells;
    parm8 = self.weapon;
    parm9 = self.armortype * 100;
};

// SetNewParms
// function begins at statement 18928, parm_start=13528
// OP_BITOR	321	322	13528
// OP_BITOR	13528	323	13529
// OP_BITOR	13529	324	13530
// OP_STORE_F	13530	43	0
// OP_STORE_F	2618	44	0
// OP_STORE_F	619	45	0
// OP_STORE_F	619	46	0
// OP_STORE_F	619	47	0
// OP_STORE_F	619	48	0
// OP_STORE_F	619	49	0
// OP_STORE_F	321	50	0
// OP_STORE_F	619	51	0
// OP_DONE	0	0	0
void () SetNewParms = 
{
    parm1 = ((IT_WEP1 | IT_WEP2) | IT_WEP3) | IT_WEP4;
    parm2 = 100;
    parm3 = 0;
    parm4 = 0;
    parm5 = 0;
    parm6 = 0;
    parm7 = 0;
    parm8 = IT_WEP1;
    parm9 = 0;
};

// DecodeLevelParms
// function begins at statement 18941, parm_start=13532
// OP_ADDRESS	28	187	13532
// OP_ADD_F	321	322	13533
// OP_ADD_F	13533	323	13534
// OP_ADD_F	13534	324	13535
// OP_STOREP_F	13535	13532	0
// OP_ADDRESS	28	177	13536
// OP_STOREP_F	2618	13536	0
// OP_ADDRESS	28	213	13537
// OP_STOREP_F	619	13537	0
// OP_ADDRESS	28	183	13538
// OP_STOREP_F	619	13538	0
// OP_ADDRESS	28	184	13539
// OP_STOREP_F	619	13539	0
// OP_ADDRESS	28	185	13540
// OP_STOREP_F	619	13540	0
// OP_ADDRESS	28	186	13541
// OP_STOREP_F	619	13541	0
// OP_ADDRESS	28	179	13542
// OP_STOREP_F	321	13542	0
// OP_ADDRESS	28	212	13543
// OP_STOREP_F	619	13543	0
// OP_DONE	0	0	0
void () DecodeLevelParms = 
{
    self.items = ((IT_WEP1 + IT_WEP2) + IT_WEP3) + IT_WEP4;
    self.health = 100;
    self.armorvalue = 0;
    self.ammo_shells = 0;
    self.ammo_nails = 0;
    self.ammo_rockets = 0;
    self.ammo_cells = 0;
    self.weapon = IT_WEP1;
    self.armortype = 0;
};

// FindIntermission
// function begins at statement 18963, parm_start=13545
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13547	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13545	0
// OP_IFNOT	13545	22	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	808	13548
// OP_STORE_F	13548	13546	0
// OP_GT	13546	677	13549
// OP_IFNOT	13549	16	0
// OP_STORE_V	13545	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13547	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13545	0
// OP_NOT_ENT	13545	0	13550
// OP_IFNOT	13550	6	0
// OP_STORE_V	13545	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13547	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13545	0
// OP_SUB_F	13546	677	13551
// OP_STORE_F	13551	13546	0
// OP_GOTO	-16	0	0
// OP_RETURN	13545	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13552	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13545	0
// OP_IFNOT	13545	2	0
// OP_RETURN	13545	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13553	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13545	0
// OP_IFNOT	13545	2	0
// OP_RETURN	13545	0	0
// OP_STORE_V	13554	4	0
// OP_CALL1	505	0	0
// OP_DONE	0	0	0
entity () FindIntermission = 
{
    local entity spot;
    local float cyc;
    spot = find(world, classname, "info_intermission");
    
    if(spot)
    {
        cyc = random() * 4;
        
        while(cyc > 1)
        {
            spot = find(spot, classname, "info_intermission");
            
            if(!spot)
            {
                spot = find(spot, classname, "info_intermission");
            }
            
            cyc = cyc - 1;
        }
        
        return spot;
    }
    
    spot = find(world, classname, "info_player_start");
    
    if(spot)
    {
        return spot;
    }
    
    spot = find(world, classname, "testplayerstart");
    
    if(spot)
    {
        return spot;
    }
    
    objerror("FindIntermission: no spot");
};

string nextmap;
// GotoNextMap
// function begins at statement 19007, parm_start=13557
// OP_STORE_V	13559	4	0
// OP_CALL1	536	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	13560	4	0
// OP_CALL1	537	0	0
// OP_GOTO	41	0	0
// OP_STORE_V	12900	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	619	13561
// OP_IFNOT	13561	4	0
// OP_STORE_V	13555	4	0
// OP_CALL1	553	0	0
// OP_GOTO	34	0	0
// OP_ADD_F	38	677	13562
// OP_STORE_F	13562	38	0
// OP_BITAND	38	2977	13563
// OP_STORE_V	12900	4	0
// OP_CALL1	536	0	0
// OP_GE	13563	1	13564
// OP_IFNOT	13564	4	0
// OP_BITAND	38	2977	13565
// OP_SUB_F	38	13565	13566
// OP_STORE_F	13566	38	0
// OP_STORE_V	13468	4	0
// OP_CALL1	537	0	0
// OP_BITAND	38	2977	13567
// OP_MUL_F	13567	655	13568
// OP_STORE_V	13568	4	0
// OP_CALL1	530	0	0
// OP_STORE_F	1	13558	0
// OP_STORE_V	13558	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13557	0
// OP_STORE_V	13557	4	0
// OP_CALL1	537	0	0
// OP_BITAND	38	2977	13569
// OP_MUL_F	13558	827	13570
// OP_SUB_F	13569	13570	13571
// OP_STORE_F	13571	13558	0
// OP_STORE_V	13558	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	13557	0
// OP_STORE_V	13557	4	0
// OP_CALL1	537	0	0
// OP_STORE_V	13472	4	0
// OP_CALL1	537	0	0
// OP_DONE	0	0	0
void () GotoNextMap = 
{
    local string fs;
    local float f1;
    if(cvar("samelevel"))
    {
        localcmd("restart\n");
    }
    else
    {
        if(cvar("noexit") == 0)
        {
            changelevel(nextmap);
        }
        else
        {
            serverflags = serverflags + 1;
            
            if((serverflags & 255) >= cvar("noexit"))
            {
                serverflags = serverflags - (serverflags & 255);
            }
            
            localcmd("exec map");
            f1 = floor((serverflags & 255) * 0.1);
            fs = ftos(f1);
            localcmd(fs);
            f1 = (serverflags & 255) - (f1 * 10);
            fs = ftos(f1);
            localcmd(fs);
            localcmd(".cfg\n");
        }
        
    }
    
};

// ExitIntermission
// function begins at statement 19054, parm_start=13573
// OP_IFNOT	35	3	0
// OP_CALL0	13556	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	31	677	13573
// OP_STORE_F	13573	13498	0
// OP_ADD_F	13497	677	13574
// OP_STORE_F	13574	13497	0
// OP_EQ_F	13497	806	13575
// OP_IFNOT	13575	92	0
// OP_LOAD_S	30	155	13576
// OP_EQ_S	13576	12857	13577
// OP_IFNOT	13577	29	0
// OP_STORE_V	388	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	806	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	13578	4	0
// OP_CALL1	536	0	0
// OP_NOT_F	1	0	13579
// OP_IFNOT	13579	8	0
// OP_STORE_V	388	4	0
// OP_STORE_V	354	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	13580	7	0
// OP_CALL2	548	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	354	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	13581	7	0
// OP_CALL2	548	0	0
// OP_RETURN	0	0	0
// OP_GOTO	60	0	0
// OP_LOAD_S	30	155	13582
// OP_EQ_S	13582	12864	13583
// OP_IFNOT	13583	18	0
// OP_STORE_V	388	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	806	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	354	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	13584	7	0
// OP_CALL2	548	0	0
// OP_RETURN	0	0	0
// OP_GOTO	40	0	0
// OP_LOAD_S	30	155	13585
// OP_EQ_S	13585	12871	13586
// OP_IFNOT	13586	18	0
// OP_STORE_V	388	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	806	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	354	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	13587	7	0
// OP_CALL2	548	0	0
// OP_RETURN	0	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	30	155	13588
// OP_EQ_S	13588	12879	13589
// OP_IFNOT	13589	17	0
// OP_STORE_V	388	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	806	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	354	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	13590	7	0
// OP_CALL2	548	0	0
// OP_RETURN	0	0	0
// OP_CALL0	13556	0	0
// OP_EQ_F	13497	788	13591
// OP_IFNOT	13591	19	0
// OP_STORE_V	13578	4	0
// OP_CALL1	536	0	0
// OP_NOT_F	1	0	13592
// OP_IFNOT	13592	5	0
// OP_STORE_V	388	4	0
// OP_STORE_V	356	7	0
// OP_CALL2	542	0	0
// OP_RETURN	0	0	0
// OP_BITAND	38	842	13593
// OP_EQ_F	13593	842	13594
// OP_IFNOT	13594	8	0
// OP_STORE_V	388	4	0
// OP_STORE_V	354	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	13595	7	0
// OP_CALL2	548	0	0
// OP_RETURN	0	0	0
// OP_CALL0	13556	0	0
// OP_DONE	0	0	0
void () ExitIntermission = 
{
    
    if(deathmatch)
    {
        GotoNextMap();
        return;
    }
    
    intermission_exittime = time + 1;
    intermission_running = intermission_running + 1;
    
    if(intermission_running == 2)
    {
        if(world.model == "maps/e1m7.bsp")
        {
            WriteByte(MSG_ALL, SVC_CDTRACK);
            WriteByte(MSG_ALL, 2);
            WriteByte(MSG_ALL, 3);
            if(!cvar("registered"))
            {
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task in the other three\nhaunted lands of Quake. Or are you? If\nyou don't register Quake, you'll never\nknow what awaits you in the Realm of\nBlack Magic, the Netherworld, and the\nElder World!");
            }
            else
            {
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task. A Rune of magic\npower lies at the end of each haunted\nland of Quake. Go forth, seek the\ntotality of the four Runes!");
            }
            
            return;
        }
        else
        {
            if(world.model == "maps/e2m6.bsp")
            {
                WriteByte(MSG_ALL, SVC_CDTRACK);
                WriteByte(MSG_ALL, 2);
                WriteByte(MSG_ALL, 3);
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "The Rune of Black Magic throbs evilly in\nyour hand and whispers dark thoughts\ninto your brain. You learn the inmost\nlore of the Hell-Mother; Shub-Niggurath!\nYou now know that she is behind all the\nterrible plotting which has led to so\nmuch death and horror. But she is not\ninviolate! Armed with this Rune, you\nrealize that once all four Runes are\ncombined, the gate to Shub-Niggurath's\nPit will open, and you can face the\nWitch-Goddess herself in her frightful\notherworld cathedral.");
                return;
            }
            else
            {
                if(world.model == "maps/e3m6.bsp")
                {
                    WriteByte(MSG_ALL, SVC_CDTRACK);
                    WriteByte(MSG_ALL, 2);
                    WriteByte(MSG_ALL, 3);
                    WriteByte(MSG_ALL, SVC_FINALE);
                    WriteString(MSG_ALL, "The charred viscera of diabolic horrors\nbubble viscously as you seize the Rune\nof Hell Magic. Its heat scorches your\nhand, and its terrible secrets blight\nyour mind. Gathering the shreds of your\ncourage, you shake the devil's shackles\nfrom your soul, and become ever more\nhard and determined to destroy the\nhideous creatures whose mere existence\nthreatens the souls and psyches of all\nthe population of Earth.");
                    return;
                }
                else
                {
                    
                    if(world.model == "maps/e4m7.bsp")
                    {
                        WriteByte(MSG_ALL, SVC_CDTRACK);
                        WriteByte(MSG_ALL, 2);
                        WriteByte(MSG_ALL, 3);
                        WriteByte(MSG_ALL, SVC_FINALE);
                        WriteString(MSG_ALL, "Despite the awful might of the Elder\nWorld, you have achieved the Rune of\nElder Magic, capstone of all types of\narcane wisdom. Beyond good and evil,\nbeyond life and death, the Rune\npulsates, heavy with import. Patient and\npotent, the Elder Being Shub-Niggurath\nweaves her dire plans to clear off all\nlife from the Earth, and bring her own\nfoul offspring to our world! For all the\ndwellers in these nightmare dimensions\nare her descendants! Once all Runes of\nmagic power are united, the energy\nbehind them will blast open the Gateway\nto Shub-Niggurath, and you can travel\nthere to foil the Hell-Mother's plots\nin person.");
                        return;
                    }
                    
                }
                
            }
            
        }
        
        GotoNextMap();
    }
    
    
    if(intermission_running == 3)
    {
        
        if(!cvar("registered"))
        {
            WriteByte(MSG_ALL, SVC_SELLSCREEN);
            return;
        }
        
        
        if((serverflags & 15) == 15)
        {
            WriteByte(MSG_ALL, SVC_FINALE);
            WriteString(MSG_ALL, "Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront her as an avatar of avenging\nEarth-life. If you defeat her, you will\nbe remembered forever as the savior of\nthe planet. If she conquers, it will be\nas if you had never been born.");
            return;
        }
        
    }
    
    GotoNextMap();
};

// IntermissionThink
// function begins at statement 19176, parm_start=13597
// OP_LT	31	13498	13597
// OP_IFNOT	13597	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	13598
// OP_NOT_F	13598	0	13599
// OP_LOAD_F	28	196	13600
// OP_NOT_F	13600	0	13601
// OP_AND	13599	13601	13602
// OP_LOAD_F	28	197	13603
// OP_NOT_F	13603	0	13604
// OP_AND	13602	13604	13605
// OP_IFNOT	13605	2	0
// OP_RETURN	0	0	0
// OP_CALL0	13572	0	0
// OP_DONE	0	0	0
void () IntermissionThink = 
{
    
    if(time < intermission_exittime)
    {
        return;
    }
    
    
    if((!self.button0 && !self.button1) && !self.button2)
    {
        return;
    }
    
    ExitIntermission();
};

// execute_changelevel
// function begins at statement 19191, parm_start=13607
// OP_STORE_F	677	13497	0
// OP_IFNOT	35	4	0
// OP_ADD_F	31	813	13608
// OP_STORE_F	13608	13498	0
// OP_GOTO	3	0	0
// OP_ADD_F	31	806	13609
// OP_STORE_F	13609	13498	0
// OP_STORE_V	388	4	0
// OP_STORE_V	355	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	788	7	0
// OP_CALL2	542	0	0
// OP_CALL0	13544	0	0
// OP_STORE_ENT	1	13607	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	29	0
// OP_NE_E	29	30	13610
// OP_IFNOT	13610	49	0
// OP_LOAD_ENT	29	206	13611
// OP_IFNOT	13611	4	0
// OP_LOAD_ENT	29	206	13612
// OP_STORE_V	13612	4	0
// OP_CALL1	509	0	0
// OP_LOAD_ENT	29	412	13613
// OP_IFNOT	13613	4	0
// OP_LOAD_ENT	29	412	13614
// OP_STORE_V	13614	4	0
// OP_CALL1	509	0	0
// OP_LOAD_ENT	29	464	13615
// OP_IFNOT	13615	4	0
// OP_LOAD_ENT	29	464	13616
// OP_STORE_V	13616	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	29	206	13617
// OP_STOREP_ENT	30	13617	0
// OP_ADDRESS	29	412	13618
// OP_STOREP_ENT	30	13618	0
// OP_ADDRESS	29	464	13619
// OP_STOREP_ENT	30	13619	0
// OP_ADDRESS	29	191	13620
// OP_STOREP_V	607	13620	0
// OP_ADDRESS	29	142	13623
// OP_ADDRESS	29	200	13626
// OP_LOAD_V	13607	444	13629
// OP_STOREP_V	13629	13626	0
// OP_STOREP_V	13629	13623	0
// OP_ADDRESS	29	199	13632
// OP_STOREP_F	268	13632	0
// OP_ADDRESS	29	188	13633
// OP_STOREP_F	304	13633	0
// OP_ADDRESS	29	129	13634
// OP_STOREP_F	291	13634	0
// OP_ADDRESS	29	128	13635
// OP_STOREP_F	281	13635	0
// OP_ADDRESS	29	118	13636
// OP_STOREP_F	619	13636	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	13607	130	13637
// OP_STORE_V	13637	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	29	0
// OP_GOTO	-49	0	0
// OP_STORE_V	388	4	0
// OP_STORE_V	353	7	0
// OP_CALL2	542	0	0
// OP_DONE	0	0	0
void () execute_changelevel = 
{
    local entity pos;
    intermission_running = 1;
    if(deathmatch)
    {
        intermission_exittime = time + 5;
    }
    else
    {
        intermission_exittime = time + 2;
    }
    
    WriteByte(MSG_ALL, SVC_CDTRACK);
    WriteByte(MSG_ALL, 3);
    WriteByte(MSG_ALL, 3);
    pos = FindIntermission();
    other = find(world, classname, "player");
    
    while(other != world)
    {
        
        if(other.enemy)
        {
            remove(other.enemy);
        }
        
        
        if(other.oldenemy)
        {
            remove(other.oldenemy);
        }
        
        
        if(other.trigger_field)
        {
            remove(other.trigger_field);
        }
        
        other.enemy = world;
        other.oldenemy = world;
        other.trigger_field = world;
        other.view_ofs = '0 0 0';
        other.angles = other.v_angle = pos.mangle;
        other.fixangle = TRUE;
        other.takedamage = DAMAGE_NO;
        other.solid = SOLID_NOT;
        other.movetype = MOVETYPE_NONE;
        other.modelindex = 0;
        setorigin(other, pos.origin);
        other = find(other, classname, "player");
    }
    
    WriteByte(MSG_ALL, SVC_INTERMISSION);
};

// changelevel_touch
// function begins at statement 19268, parm_start=13641
// OP_LOAD_ENT	29	219	13642
// OP_LOAD_S	13642	154	13643
// OP_NE_S	13643	766	13644
// OP_IFNOT	13644	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	13559	4	0
// OP_CALL1	536	0	0
// OP_EQ_F	1	806	13645
// OP_IFNOT	13645	2	0
// OP_RETURN	0	0	0
// OP_NOT_F	35	0	13646
// OP_IFNOT	13646	5	0
// OP_LOAD_F	28	242	13647
// OP_LT	100	13647	13648
// OP_IFNOT	13648	2	0
// OP_RETURN	0	0	0
// OP_OR	36	35	13649
// OP_IFNOT	13649	6	0
// OP_LOAD_S	29	205	13650
// OP_STORE_V	13650	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	13651	4	0
// OP_CALL1	517	0	0
// OP_LOAD_S	28	400	13652
// OP_STORE_S	13652	13555	0
// OP_CALL0	567	0	0
// OP_LOAD_F	28	220	13653
// OP_BITAND	13653	677	13654
// OP_EQ_F	35	619	13655
// OP_AND	13654	13655	13656
// OP_IFNOT	13656	3	0
// OP_CALL0	13556	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	171	13657
// OP_STOREP_FNC	566	13657	0
// OP_ADDRESS	28	173	13658
// OP_STOREP_FNC	13606	13658	0
// OP_ADDRESS	28	175	13659
// OP_ADD_F	31	655	13660
// OP_STOREP_F	13660	13659	0
// OP_DONE	0	0	0
void () changelevel_touch = 
{
    local entity pos;
    
    if(other.goalentity.classname != "player")
    {
        return;
    }
    
    
    if(cvar("samelevel") == 2)
    {
        return;
    }
    
    
    if(!deathmatch)
    {
        
        if(killedvalues < self.value)
        {
            return;
        }
        
    }
    
    
    if(coop || deathmatch)
    {
        bprint(other.netname);
        bprint(" exited the level\n");
    }
    
    nextmap = self.map;
    SUB_UseTargets();
    
    if((self.spawnflags & 1) && (deathmatch == 0))
    {
        GotoNextMap();
        return;
    }
    
    self.touch = SUB_Null;
    self.think = execute_changelevel;
    self.nextthink = time + 0.1;
};

// trigger_changelevel
// function begins at statement 19309, parm_start=13662
// OP_LOAD_S	28	400	13662
// OP_NOT_S	13662	0	13663
// OP_IFNOT	13663	3	0
// OP_STORE_V	13664	4	0
// OP_CALL1	505	0	0
// OP_CALL0	610	0	0
// OP_ADDRESS	28	171	13665
// OP_STOREP_FNC	13640	13665	0
// OP_DONE	0	0	0
void () trigger_changelevel = 
{
    
    if(!self.map)
    {
        objerror("chagnelevel trigger doesn't have map");
    }
    
    InitTrigger();
    self.touch = changelevel_touch;
};

void () set_suicide_frame;
// respawn
// function begins at statement 19318, parm_start=13668
// OP_IFNOT	36	5	0
// OP_STORE_V	28	4	0
// OP_CALL1	560	0	0
// OP_CALL0	88	0	0
// OP_GOTO	32	0	0
// OP_IFNOT	35	4	0
// OP_CALL0	90	0	0
// OP_CALL0	88	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	257	13668
// OP_EQ_F	13668	677	13669
// OP_LOAD_F	28	177	13670
// OP_LT	13670	788	13671
// OP_AND	13669	13671	13672
// OP_IFNOT	13672	4	0
// OP_STORE_V	13560	4	0
// OP_CALL1	537	0	0
// OP_GOTO	19	0	0
// OP_LOAD_F	28	177	13673
// OP_LT	13673	788	13674
// OP_LOAD_ENT	28	206	13675
// OP_LOAD_ENT	13675	226	13676
// OP_NE_E	13676	28	13677
// OP_LOAD_ENT	28	206	13678
// OP_LOAD_F	13678	177	13679
// OP_LT	13679	677	13680
// OP_OR	13677	13680	13681
// OP_AND	13674	13681	13682
// OP_IFNOT	13682	5	0
// OP_ADDRESS	28	257	13683
// OP_LOAD_F	28	257	13684
// OP_SUB_F	13684	677	13685
// OP_STOREP_F	13685	13683	0
// OP_STORE_V	28	4	0
// OP_CALL1	560	0	0
// OP_CALL0	88	0	0
// OP_DONE	0	0	0
void () respawn = 
{
    if(coop)
    {
        setspawnparms(self);
        PutClientInServer();
    }
    else
    {
        if(deathmatch)
        {
            SetNewParms();
            PutClientInServer();
        }
        else
        {
            if((self.lives == 1) && (self.health < 3))
            {
                localcmd("restart\n");
            }
            else
            {
                
                if((self.health < 3) && ((self.enemy.owner != self) || (self.enemy.health < 1)))
                {
                    self.lives = self.lives - 1;
                }
                
                setspawnparms(self);
                PutClientInServer();
            }
            
        }
        
    }
    
};

// ClientKill
// function begins at statement 19355, parm_start=13686
// OP_LOAD_ENT	28	206	13686
// OP_LOAD_F	13686	177	13687
// OP_LT	13687	677	13688
// OP_IFNOT	13688	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	13689
// OP_LOAD_ENT	13689	226	13690
// OP_NE_E	13690	28	13691
// OP_IFNOT	13691	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	205	13692
// OP_STORE_V	13692	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	13693	4	0
// OP_CALL1	517	0	0
// OP_ADDRESS	28	178	13694
// OP_LOAD_F	28	178	13695
// OP_SUB_F	13695	806	13696
// OP_STOREP_F	13696	13694	0
// OP_LOAD_ENT	28	206	13697
// OP_STORE_V	13697	4	0
// OP_LOAD_ENT	28	206	13698
// OP_STORE_V	13698	7	0
// OP_LOAD_ENT	28	206	13699
// OP_STORE_V	13699	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_DONE	0	0	0
void () ClientKill = 
{
    
    if(self.enemy.health < 1)
    {
        return;
    }
    
    
    if(self.enemy.owner != self)
    {
        return;
    }
    
    bprint(self.netname);
    bprint(" suicides\n");
    self.frags = self.frags - 2;
    T_Damage(self.enemy, self.enemy, self.enemy, 1000);
};

// CheckSpawnPoint
// function begins at statement 19383, parm_start=13701
// OP_RETURN	267	0	0
// OP_DONE	0	0	0
float (vector v) CheckSpawnPoint = 
{
    return FALSE;
};

// SelectAirSpawnPoint
// function begins at statement 19385, parm_start=13705
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13553	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13705	0
// OP_IFNOT	13705	2	0
// OP_RETURN	13705	0	0
// OP_IFNOT	36	3	0
// OP_STORE_S	13715	13713	0
// OP_GOTO	5	0	0
// OP_IFNOT	35	3	0
// OP_STORE_S	13716	13713	0
// OP_GOTO	2	0	0
// OP_STORE_S	13552	13713	0
// OP_LOAD_F	28	404	13717
// OP_IFNOT	13717	7	0
// OP_LOAD_F	28	404	13718
// OP_SUB_F	13718	677	13719
// OP_STORE_V	13719	4	0
// OP_CALL1	802	0	0
// OP_STORE_F	1	13711	0
// OP_GOTO	2	0	0
// OP_STORE_F	619	13711	0
// OP_IFNOT	677	93	0
// OP_GT	35	619	13720
// OP_GT	37	619	13721
// OP_AND	13720	13721	13722
// OP_IFNOT	13722	3	0
// OP_STORE_F	677	13710	0
// OP_GOTO	2	0	0
// OP_STORE_F	619	13710	0
// OP_LOAD_S	12888	154	13723
// OP_EQ_S	13723	13713	13724
// OP_IFNOT	13724	3	0
// OP_STORE_ENT	12888	13706	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	13706	0
// OP_LOAD_F	28	404	13725
// OP_IFNOT	13725	35	0
// OP_STORE_V	13706	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13713	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13707	0
// OP_STORE_F	619	13712	0
// OP_NOT_F	13712	0	13726
// OP_IFNOT	13726	27	0
// OP_LOAD_F	13707	232	13727
// OP_BITAND	13727	13711	13728
// OP_NE_F	13728	619	13729
// OP_LOAD_S	13707	243	13730
// OP_LOAD_S	28	243	13731
// OP_EQ_S	13730	13731	13732
// OP_EQ_F	13710	677	13733
// OP_AND	13732	13733	13734
// OP_LOAD_S	13707	243	13735
// OP_EQ_S	13735	101	13736
// OP_EQ_F	13710	619	13737
// OP_AND	13736	13737	13738
// OP_OR	13734	13738	13739
// OP_AND	13729	13739	13740
// OP_IFNOT	13740	3	0
// OP_STORE_ENT	13707	12888	0
// OP_RETURN	12888	0	0
// OP_EQ_E	13707	13706	13741
// OP_IFNOT	13741	2	0
// OP_STORE_F	677	13712	0
// OP_STORE_V	13707	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13713	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13707	0
// OP_GOTO	-27	0	0
// OP_STORE_V	13706	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13713	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13707	0
// OP_STORE_F	619	13712	0
// OP_NOT_F	13712	0	13742
// OP_IFNOT	13742	20	0
// OP_NE_E	13707	30	13743
// OP_LOAD_S	13707	243	13744
// OP_LOAD_S	28	243	13745
// OP_EQ_S	13744	13745	13746
// OP_EQ_F	13710	619	13747
// OP_OR	13746	13747	13748
// OP_AND	13743	13748	13749
// OP_IFNOT	13749	3	0
// OP_STORE_ENT	13707	12888	0
// OP_RETURN	12888	0	0
// OP_EQ_E	13707	13706	13750
// OP_IFNOT	13750	2	0
// OP_STORE_F	677	13712	0
// OP_STORE_V	13707	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13713	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13707	0
// OP_GOTO	-20	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	13713	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13707	0
// OP_NE_E	13707	30	13751
// OP_IFNOT	13751	3	0
// OP_STORE_ENT	13707	12888	0
// OP_RETURN	12888	0	0
// OP_STORE_V	13752	4	0
// OP_CALL1	519	0	0
// OP_NE_E	12888	30	13753
// OP_IFNOT	13753	2	0
// OP_RETURN	12888	0	0
// OP_STORE_S	13552	13713	0
// OP_GOTO	-92	0	0
// OP_DONE	0	0	0
entity () SelectAirSpawnPoint = 
{
    local entity spot;
    local entity e1;
    local entity e2;
    local entity thing;
    local float pcount;
    local float tmp;
    local float f1;
    local float lop;
    local string teststr;
    local string paeae;
    spot = find(world, classname, "testplayerstart");
    
    if(spot)
    {
        return spot;
    }
    
    if(coop)
    {
        teststr = "info_player_coop";
    }
    else
    {
        if(deathmatch)
        {
            teststr = "info_player_deathmatch";
        }
        else
        {
            teststr = "info_player_start";
        }
        
    }
    
    if(self.style)
    {
        f1 = calcbit(self.style - 1);
    }
    else
    {
        f1 = 0;
    }
    
    
    while(1)
    {
        if((deathmatch > 0) && (teamplay > 0))
        {
            tmp = 1;
        }
        else
        {
            tmp = 0;
        }
        
        if(lastspawn.classname == teststr)
        {
            e1 = lastspawn;
        }
        else
        {
            e1 = world;
        }
        
        
        if(self.style)
        {
            e2 = find(e1, classname, teststr);
            lop = 0;
            
            while(!lop)
            {
                
                if(((e2.sounds & f1) != 0) && (((e2.ts == self.ts) && (tmp == 1)) || ((e2.ts == T0) && (tmp == 0))))
                {
                    lastspawn = e2;
                    return lastspawn;
                }
                
                
                if(e2 == e1)
                {
                    lop = 1;
                }
                
                e2 = find(e2, classname, teststr);
            }
            
        }
        
        e2 = find(e1, classname, teststr);
        lop = 0;
        
        while(!lop)
        {
            
            if((e2 != world) && ((e2.ts == self.ts) || (tmp == 0)))
            {
                lastspawn = e2;
                return lastspawn;
            }
            
            
            if(e2 == e1)
            {
                lop = 1;
            }
            
            e2 = find(e2, classname, teststr);
        }
        
        e2 = find(world, classname, teststr);
        
        if(e2 != world)
        {
            lastspawn = e2;
            return lastspawn;
        }
        
        dprint("no spot found!\n");
        
        if(lastspawn != world)
        {
            return lastspawn;
        }
        
        teststr = "info_player_start";
    }
    
};

void () PlayerDie;
// PutClientInServer
// function begins at statement 19502, parm_start=13755
// OP_EQ_F	35	619	13756
// OP_EQ_F	36	619	13757
// OP_AND	13756	13757	13758
// OP_IFNOT	13758	7	0
// OP_LOAD_F	28	257	13759
// OP_NOT_F	13759	0	13760
// OP_IFNOT	13760	4	0
// OP_ADDRESS	28	257	13761
// OP_SUB_F	808	398	13762
// OP_STOREP_F	13762	13761	0
// OP_LOAD_F	28	177	13763
// OP_NE_F	13763	788	13764
// OP_IFNOT	13764	4	0
// OP_CALL0	13704	0	0
// OP_STORE_ENT	1	13755	0
// OP_GOTO	20	0	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	13755	0
// OP_ADDRESS	13755	404	13765
// OP_LOAD_F	28	404	13766
// OP_SUB_F	13766	677	13767
// OP_STORE_V	13767	4	0
// OP_CALL1	802	0	0
// OP_STOREP_F	1	13765	0
// OP_ADDRESS	13755	130	13768
// OP_LOAD_V	28	134	13771
// OP_STOREP_V	13771	13768	0
// OP_ADDRESS	13755	142	13774
// OP_LOAD_V	28	142	13777
// OP_STOREP_V	13777	13774	0
// OP_ADDRESS	13755	173	13780
// OP_STOREP_FNC	568	13780	0
// OP_ADDRESS	13755	175	13781
// OP_ADD_F	31	806	13782
// OP_STOREP_F	13782	13781	0
// OP_ADDRESS	28	220	13783
// OP_LOAD_F	13755	220	13784
// OP_BITAND	13784	788	13785
// OP_STOREP_F	13785	13783	0
// OP_ADDRESS	28	154	13786
// OP_STOREP_S	766	13786	0
// OP_ADDRESS	28	129	13787
// OP_STOREP_F	291	13787	0
// OP_ADDRESS	28	128	13788
// OP_STOREP_F	619	13788	0
// OP_ADDRESS	28	437	13789
// OP_STOREP_F	619	13789	0
// OP_ADDRESS	28	210	13790
// OP_STOREP_F	2618	13790	0
// OP_ADDRESS	28	207	13791
// OP_STOREP_F	271	13791	0
// OP_ADDRESS	28	426	13792
// OP_STOREP_F	619	13792	0
// OP_ADDRESS	28	427	13793
// OP_STOREP_F	619	13793	0
// OP_ADDRESS	28	425	13794
// OP_STOREP_F	619	13794	0
// OP_ADDRESS	28	424	13795
// OP_STOREP_F	619	13795	0
// OP_ADDRESS	28	158	13796
// OP_STOREP_F	619	13796	0
// OP_ADDRESS	28	428	13797
// OP_STOREP_F	619	13797	0
// OP_ADDRESS	28	494	13798
// OP_STOREP_F	2618	13798	0
// OP_ADDRESS	28	413	13799
// OP_STOREP_F	619	13799	0
// OP_ADDRESS	28	177	13800
// OP_STOREP_F	2618	13800	0
// OP_ADDRESS	28	188	13801
// OP_STOREP_F	305	13801	0
// OP_CALL0	13531	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13802	7	0
// OP_CALL2	515	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13803	7	0
// OP_CALL2	515	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13804	7	0
// OP_CALL2	515	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13805	7	0
// OP_CALL2	515	0	0
// OP_ADDRESS	28	422	13806
// OP_STOREP_F	31	13806	0
// OP_ADDRESS	28	410	13807
// OP_STOREP_FNC	13491	13807	0
// OP_ADDRESS	28	411	13808
// OP_STOREP_FNC	13754	13808	0
// OP_ADDRESS	28	190	13809
// OP_STOREP_F	300	13809	0
// OP_ADDRESS	28	466	13810
// OP_STOREP_F	619	13810	0
// OP_ADDRESS	28	198	13811
// OP_STOREP_F	619	13811	0
// OP_ADDRESS	28	219	13812
// OP_STOREP_ENT	13755	13812	0
// OP_ADDRESS	28	130	13813
// OP_LOAD_V	13755	130	13816
// OP_ADD_V	13816	582	13819
// OP_STOREP_V	13819	13813	0
// OP_ADDRESS	28	142	13822
// OP_LOAD_V	13755	142	13825
// OP_STOREP_V	13825	13822	0
// OP_ADDRESS	28	199	13828
// OP_STOREP_F	268	13828	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12944	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	118	13829
// OP_STORE_F	13829	13495	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3774	7	0
// OP_CALL2	498	0	0
// OP_LOAD_F	28	118	13830
// OP_STORE_F	13830	13496	0
// OP_ADDRESS	28	118	13831
// OP_STOREP_F	619	13831	0
// OP_STORE_V	28	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	191	13832
// OP_STOREP_V	582	13832	0
// OP_ADDRESS	28	238	13835
// OP_STOREP_F	689	13835	0
// OP_ADDRESS	28	414	13836
// OP_STOREP_F	619	13836	0
// OP_LOAD_F	28	404	13837
// OP_NOT_F	13837	0	13838
// OP_IFNOT	13838	3	0
// OP_ADDRESS	28	190	13839
// OP_STOREP_F	302	13839	0
// OP_LOAD_S	28	243	13840
// OP_NOT_S	13840	0	13841
// OP_NOT_F	37	0	13842
// OP_AND	13841	13842	13843
// OP_IFNOT	13843	3	0
// OP_ADDRESS	28	243	13844
// OP_STOREP_S	102	13844	0
// OP_OR	35	36	13845
// OP_IFNOT	13845	9	0
// OP_LOAD_V	28	142	13846
// OP_STORE_V	13846	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	13849
// OP_MUL_VF	59	1111	13852
// OP_ADD_V	13849	13852	13855
// OP_STORE_V	13855	4	0
// OP_CALL1	13493	0	0
// OP_DONE	0	0	0
void () PutClientInServer = 
{
    local entity spot;
    
    if((deathmatch == 0) && (coop == 0))
    {
        
        if(!self.lives)
        {
            self.lives = 4 - skill;
        }
        
    }
    
    if(self.health != 3)
    {
        spot = SelectAirSpawnPoint();
    }
    else
    {
        spot = spawn();
        spot.style = calcbit(self.style - 1);
        spot.origin = self.oldorigin;
        spot.angles = self.angles;
        spot.think = SUB_Remove;
        spot.nextthink = time + 2;
    }
    
    self.spawnflags = spot.spawnflags & 3;
    self.classname = "player";
    self.solid = SOLID_NOT;
    self.movetype = 0;
    self.show_hostile = 0;
    self.max_health = 100;
    self.flags = FL_CLIENT;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.effects = 0;
    self.invincible_time = 0;
    self.distance = 100;
    self.speed = 0;
    self.health = 100;
    self.takedamage = DAMAGE_YES;
    DecodeLevelParms();
    stuffcmd(self, "cl_bob 0\n");
    stuffcmd(self, "cl_forwardspeed 1\n");
    stuffcmd(self, "cl_backspeed 1\n");
    stuffcmd(self, "cl_sidespeed 1\n");
    self.attack_finished = time;
    self.th_pain = player_pain;
    self.th_die = PlayerDie;
    self.deadflag = DEAD_NO;
    self.pausetime = 0;
    self.impulse = 0;
    self.goalentity = spot;
    self.origin = spot.origin + '0 0 1';
    self.angles = spot.angles;
    self.fixangle = TRUE;
    setmodel(self, "progs/eyes.mdl");
    modelindex_eyes = self.modelindex;
    setmodel(self, "progs/player.mdl");
    modelindex_player = self.modelindex;
    self.modelindex = 0;
    setsize(self, '0 0 0', '0 0 0');
    self.view_ofs = '0 0 1';
    self.toyview = -1;
    self.lefty = 0;
    
    if(!self.style)
    {
        self.deadflag = DEAD_DEAD;
    }
    
    
    if(!self.ts && !teamplay)
    {
        self.ts = T1;
    }
    
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        spawn_tfog(self.origin + (v_forward * 20));
    }
    
};

// info_player_start
// function begins at statement 19654, parm_start=13858
// OP_NOT_F	35	0	13858
// OP_IFNOT	13858	24	0
// OP_ADDRESS	28	243	13859
// OP_STOREP_S	101	13859	0
// OP_LOAD_F	28	232	13860
// OP_NOT_F	13860	0	13861
// OP_IFNOT	13861	15	0
// OP_BITOR	677	806	13862
// OP_BITOR	13862	808	13863
// OP_BITOR	13863	810	13864
// OP_BITOR	13864	812	13865
// OP_BITOR	13865	815	13866
// OP_BITOR	13866	818	13867
// OP_BITOR	13867	821	13868
// OP_BITOR	13868	823	13869
// OP_BITOR	13869	826	13870
// OP_STORE_F	13870	107	0
// OP_STORE_F	827	110	0
// OP_ADDRESS	28	232	13871
// OP_STOREP_F	107	13871	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	232	13872
// OP_STORE_V	13872	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	887	0	0
// OP_DONE	0	0	0
void () info_player_start = 
{
    
    if(!deathmatch)
    {
        self.ts = T0;
        if(!self.sounds)
        {
            allowedcraft = ((((((((1 | 2) | 4) | 8) | 16) | 32) | 64) | 128) | 256) | 512;
            numcraft = 10;
            self.sounds = allowedcraft;
        }
        else
        {
            add_allowedcraft(self.sounds, 0);
        }
        
    }
    
};

// info_player_start2
// function begins at statement 19680, parm_start=13874
// OP_NOT_F	35	0	13877
// OP_IFNOT	13877	38	0
// OP_ADDRESS	28	243	13878
// OP_STOREP_S	101	13878	0
// OP_LOAD_F	28	232	13879
// OP_NOT_F	13879	0	13880
// OP_IFNOT	13880	15	0
// OP_BITOR	677	806	13881
// OP_BITOR	13881	808	13882
// OP_BITOR	13882	810	13883
// OP_BITOR	13883	812	13884
// OP_BITOR	13884	815	13885
// OP_BITOR	13885	818	13886
// OP_BITOR	13886	821	13887
// OP_BITOR	13887	823	13888
// OP_BITOR	13888	826	13889
// OP_STORE_F	13889	107	0
// OP_STORE_F	827	110	0
// OP_ADDRESS	28	232	13890
// OP_STOREP_F	107	13890	0
// OP_GOTO	19	0	0
// OP_LOAD_F	28	232	13891
// OP_BITOR	107	13891	13892
// OP_STORE_F	13892	107	0
// OP_STORE_F	619	13874	0
// OP_STORE_F	619	13875	0
// OP_LT	13874	827	13893
// OP_IFNOT	13893	11	0
// OP_STORE_V	13874	4	0
// OP_CALL1	802	0	0
// OP_STORE_F	1	13876	0
// OP_BITAND	107	13876	13894
// OP_IFNOT	13894	3	0
// OP_ADD_F	13875	677	13895
// OP_STORE_F	13895	13875	0
// OP_ADD_F	13874	677	13896
// OP_STORE_F	13896	13874	0
// OP_GOTO	-11	0	0
// OP_STORE_F	13875	110	0
// OP_DONE	0	0	0
void () info_player_start2 = 
{
    local float tmp;
    local float f1;
    local float f2;
    
    if(!deathmatch)
    {
        self.ts = T0;
        if(!self.sounds)
        {
            allowedcraft = ((((((((1 | 2) | 4) | 8) | 16) | 32) | 64) | 128) | 256) | 512;
            numcraft = 10;
            self.sounds = allowedcraft;
        }
        else
        {
            allowedcraft = allowedcraft | self.sounds;
            tmp = 0;
            f1 = 0;
            
            while(tmp < 10)
            {
                f2 = calcbit(tmp);
                
                if(allowedcraft & f2)
                {
                    f1 = f1 + 1;
                }
                
                tmp = tmp + 1;
            }
            
            numcraft = f1;
        }
        
    }
    
};

// testplayerstart
// function begins at statement 19720, parm_start=13898
// OP_DONE	0	0	0
void () testplayerstart = 
{
};

// info_player_deathmatch
// function begins at statement 19721, parm_start=13899
// OP_LOAD_F	28	209	13899
// OP_NOT_F	13899	0	13900
// OP_IFNOT	13900	4	0
// OP_ADDRESS	28	243	13901
// OP_STOREP_S	101	13901	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	209	13902
// OP_EQ_F	13902	677	13903
// OP_IFNOT	13903	4	0
// OP_ADDRESS	28	243	13904
// OP_STOREP_S	102	13904	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	243	13905
// OP_STOREP_S	103	13905	0
// OP_IFNOT	35	71	0
// OP_LOAD_F	28	209	13906
// OP_EQ_F	13906	619	13907
// OP_IFNOT	13907	22	0
// OP_LOAD_F	28	232	13908
// OP_NOT_F	13908	0	13909
// OP_IFNOT	13909	15	0
// OP_BITOR	677	806	13910
// OP_BITOR	13910	808	13911
// OP_BITOR	13911	810	13912
// OP_BITOR	13912	812	13913
// OP_BITOR	13913	815	13914
// OP_BITOR	13914	818	13915
// OP_BITOR	13915	821	13916
// OP_BITOR	13916	823	13917
// OP_BITOR	13917	826	13918
// OP_STORE_F	13918	107	0
// OP_STORE_F	827	110	0
// OP_ADDRESS	28	232	13919
// OP_STOREP_F	107	13919	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	232	13920
// OP_STORE_V	13920	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	887	0	0
// OP_LOAD_F	28	209	13921
// OP_EQ_F	13921	677	13922
// OP_IFNOT	13922	21	0
// OP_LOAD_F	28	232	13923
// OP_NOT_F	13923	0	13924
// OP_IFNOT	13924	14	0
// OP_BITOR	677	806	13925
// OP_BITOR	13925	808	13926
// OP_BITOR	13926	810	13927
// OP_BITOR	13927	812	13928
// OP_BITOR	13928	815	13929
// OP_BITOR	13929	818	13930
// OP_BITOR	13930	821	13931
// OP_BITOR	13931	823	13932
// OP_BITOR	13932	826	13933
// OP_STORE_F	13933	108	0
// OP_ADDRESS	28	232	13934
// OP_STOREP_F	108	13934	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	232	13935
// OP_STORE_V	13935	4	0
// OP_STORE_V	677	7	0
// OP_CALL2	887	0	0
// OP_LOAD_F	28	209	13936
// OP_EQ_F	13936	806	13937
// OP_IFNOT	13937	21	0
// OP_LOAD_F	28	232	13938
// OP_NOT_F	13938	0	13939
// OP_IFNOT	13939	14	0
// OP_BITOR	677	806	13940
// OP_BITOR	13940	808	13941
// OP_BITOR	13941	810	13942
// OP_BITOR	13942	812	13943
// OP_BITOR	13943	815	13944
// OP_BITOR	13944	818	13945
// OP_BITOR	13945	821	13946
// OP_BITOR	13946	823	13947
// OP_BITOR	13947	826	13948
// OP_STORE_F	13948	109	0
// OP_ADDRESS	28	232	13949
// OP_STOREP_F	109	13949	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	232	13950
// OP_STORE_V	13950	4	0
// OP_STORE_V	806	7	0
// OP_CALL2	887	0	0
// OP_DONE	0	0	0
void () info_player_deathmatch = 
{
    if(!self.team)
    {
        self.ts = T0;
    }
    else
    {
        if(self.team == 1)
        {
            self.ts = T1;
        }
        else
        {
            self.ts = T2;
        }
        
    }
    
    
    if(deathmatch)
    {
        
        if(self.team == 0)
        {
            if(!self.sounds)
            {
                allowedcraft = ((((((((1 | 2) | 4) | 8) | 16) | 32) | 64) | 128) | 256) | 512;
                numcraft = 10;
                self.sounds = allowedcraft;
            }
            else
            {
                add_allowedcraft(self.sounds, 0);
            }
            
        }
        
        
        if(self.team == 1)
        {
            if(!self.sounds)
            {
                allow1 = ((((((((1 | 2) | 4) | 8) | 16) | 32) | 64) | 128) | 256) | 512;
                self.sounds = allow1;
            }
            else
            {
                add_allowedcraft(self.sounds, 1);
            }
            
        }
        
        
        if(self.team == 2)
        {
            if(!self.sounds)
            {
                allow2 = ((((((((1 | 2) | 4) | 8) | 16) | 32) | 64) | 128) | 256) | 512;
                self.sounds = allow2;
            }
            else
            {
                add_allowedcraft(self.sounds, 2);
            }
            
        }
        
    }
    
};

// info_player_coop
// function begins at statement 19807, parm_start=13952
// OP_IFNOT	36	22	0
// OP_ADDRESS	28	243	13952
// OP_STOREP_S	101	13952	0
// OP_LOAD_F	28	232	13953
// OP_NOT_F	13953	0	13954
// OP_IFNOT	13954	13	0
// OP_BITOR	677	806	13955
// OP_BITOR	13955	808	13956
// OP_BITOR	13956	810	13957
// OP_BITOR	13957	812	13958
// OP_BITOR	13958	815	13959
// OP_BITOR	13959	818	13960
// OP_BITOR	13960	821	13961
// OP_BITOR	13961	823	13962
// OP_BITOR	13962	826	13963
// OP_STORE_F	13963	107	0
// OP_STORE_F	827	110	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	232	13964
// OP_STORE_V	13964	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	887	0	0
// OP_DONE	0	0	0
void () info_player_coop = 
{
    
    if(coop)
    {
        self.ts = T0;
        if(!self.sounds)
        {
            allowedcraft = ((((((((1 | 2) | 4) | 8) | 16) | 32) | 64) | 128) | 256) | 512;
            numcraft = 10;
        }
        else
        {
            add_allowedcraft(self.sounds, 0);
        }
        
    }
    
};

// NextLevel
// function begins at statement 19830, parm_start=13966
// OP_EQ_S	34	13967	13968
// OP_IFNOT	13968	39	0
// OP_STORE_V	13578	4	0
// OP_CALL1	536	0	0
// OP_NOT_F	1	0	13969
// OP_IFNOT	13969	3	0
// OP_STORE_S	13970	34	0
// OP_GOTO	28	0	0
// OP_BITAND	38	677	13971
// OP_NOT_F	13971	0	13972
// OP_IFNOT	13972	5	0
// OP_STORE_S	13970	34	0
// OP_BITOR	38	677	13973
// OP_STORE_F	13973	38	0
// OP_GOTO	21	0	0
// OP_BITAND	38	806	13974
// OP_NOT_F	13974	0	13975
// OP_IFNOT	13975	5	0
// OP_STORE_S	13976	34	0
// OP_BITOR	38	806	13977
// OP_STORE_F	13977	38	0
// OP_GOTO	14	0	0
// OP_BITAND	38	808	13978
// OP_NOT_F	13978	0	13979
// OP_IFNOT	13979	5	0
// OP_STORE_S	13980	34	0
// OP_BITOR	38	808	13981
// OP_STORE_F	13981	38	0
// OP_GOTO	7	0	0
// OP_BITAND	38	810	13982
// OP_NOT_F	13982	0	13983
// OP_IFNOT	13983	4	0
// OP_STORE_S	13984	34	0
// OP_SUB_F	38	819	13985
// OP_STORE_F	13985	38	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	13966	0
// OP_ADDRESS	13966	400	13986
// OP_STOREP_S	34	13986	0
// OP_GOTO	13	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	5387	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	13966	0
// OP_NOT_ENT	13966	0	13987
// OP_IFNOT	13987	6	0
// OP_STORE_S	13967	34	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	13966	0
// OP_ADDRESS	13966	400	13988
// OP_STOREP_S	34	13988	0
// OP_STORE_V	13559	4	0
// OP_CALL1	536	0	0
// OP_IFNOT	1	3	0
// OP_ADDRESS	13966	400	13989
// OP_STOREP_S	34	13989	0
// OP_LOAD_S	13966	400	13990
// OP_STORE_S	13990	13555	0
// OP_STORE_F	268	391	0
// OP_LOAD_F	13966	175	13991
// OP_LT	13991	31	13992
// OP_IFNOT	13992	6	0
// OP_ADDRESS	13966	173	13993
// OP_STOREP_FNC	13606	13993	0
// OP_ADDRESS	13966	175	13994
// OP_ADD_F	31	655	13995
// OP_STOREP_F	13995	13994	0
// OP_DONE	0	0	0
void () NextLevel = 
{
    local entity o;
    if(mapname == "start")
    {
        if(!cvar("registered"))
        {
            mapname = "e1m1";
        }
        else
        {
            if(!(serverflags & 1))
            {
                mapname = "e1m1";
                serverflags = serverflags | 1;
            }
            else
            {
                if(!(serverflags & 2))
                {
                    mapname = "e2m1";
                    serverflags = serverflags | 2;
                }
                else
                {
                    if(!(serverflags & 4))
                    {
                        mapname = "e3m1";
                        serverflags = serverflags | 4;
                    }
                    else
                    {
                        
                        if(!(serverflags & 8))
                        {
                            mapname = "e4m1";
                            serverflags = serverflags - 7;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        o = spawn();
        o.map = mapname;
    }
    else
    {
        o = find(world, classname, "trigger_changelevel");
        
        if(!o)
        {
            mapname = "start";
            o = spawn();
            o.map = mapname;
        }
        
    }
    
    
    if(cvar("samelevel"))
    {
        o.map = mapname;
    }
    
    nextmap = o.map;
    gameover = TRUE;
    
    if(o.nextthink < time)
    {
        o.think = execute_changelevel;
        o.nextthink = time + 0.1;
    }
    
};

// CheckRules
// function begins at statement 19899, parm_start=13997
// OP_IFNOT	391	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	13999	4	0
// OP_CALL1	536	0	0
// OP_MUL_F	1	1203	14000
// OP_STORE_F	14000	13997	0
// OP_STORE_V	14001	4	0
// OP_CALL1	536	0	0
// OP_STORE_F	1	13998	0
// OP_GE	31	13997	14002
// OP_AND	13997	14002	14003
// OP_IFNOT	14003	3	0
// OP_CALL0	13965	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	178	14004
// OP_GE	14004	13998	14005
// OP_AND	13998	14005	14006
// OP_IFNOT	14006	3	0
// OP_CALL0	13965	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckRules = 
{
    local float timelimit;
    local float fraglimit;
    
    if(gameover)
    {
        return;
    }
    
    timelimit = cvar("timelimit") * 60;
    fraglimit = cvar("fraglimit");
    
    if(timelimit && (time >= timelimit))
    {
        NextLevel();
        return;
    }
    
    
    if(fraglimit && (self.frags >= fraglimit))
    {
        NextLevel();
        return;
    }
    
};

// PlayerDeathThink
// function begins at statement 19920, parm_start=14008
// OP_LOAD_F	28	207	14016
// OP_BITAND	14016	277	14017
// OP_IFNOT	14017	18	0
// OP_LOAD_V	28	138	14018
// OP_STORE_V	14018	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	14012	0
// OP_SUB_F	14012	1111	14021
// OP_STORE_F	14021	14012	0
// OP_LE	14012	619	14022
// OP_IFNOT	14022	4	0
// OP_ADDRESS	28	138	14023
// OP_STOREP_V	607	14023	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	138	14026
// OP_LOAD_V	28	138	14029
// OP_STORE_V	14029	4	0
// OP_CALL1	503	0	0
// OP_MUL_FV	14012	1	14032
// OP_STOREP_V	14032	14026	0
// OP_LOAD_F	28	190	14035
// OP_EQ_F	14035	302	14036
// OP_IFNOT	14036	37	0
// OP_LOAD_F	28	197	14037
// OP_IFNOT	14037	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	190	14038
// OP_STOREP_F	303	14038	0
// OP_NOT_F	35	0	14039
// OP_NOT_F	36	0	14040
// OP_AND	14039	14040	14041
// OP_IFNOT	14041	11	0
// OP_LOAD_F	28	177	14042
// OP_LT	14042	788	14043
// OP_LOAD_F	28	257	14044
// OP_EQ_F	14044	677	14045
// OP_AND	14043	14045	14046
// OP_IFNOT	14046	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14047	7	0
// OP_CALL2	518	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14048	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14049	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	28	177	14050
// OP_LT	14050	806	14051
// OP_IFNOT	14051	3	0
// OP_ADDRESS	28	177	14052
// OP_STOREP_F	806	14052	0
// OP_ADDRESS	28	129	14053
// OP_STOREP_F	291	14053	0
// OP_ADDRESS	28	244	14054
// OP_LOAD_S	28	243	14055
// OP_STOREP_S	14055	14054	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	14056
// OP_NE_E	14056	30	14057
// OP_IFNOT	14057	25	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	206	14058
// OP_LOAD_V	14058	130	14059
// OP_STORE_V	14059	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	206	14062
// OP_LOAD_ENT	14062	226	14063
// OP_EQ_E	14063	28	14064
// OP_IFNOT	14064	3	0
// OP_ADDRESS	28	177	14065
// OP_STOREP_F	806	14065	0
// OP_LOAD_ENT	28	206	14066
// OP_LOAD_F	14066	177	14067
// OP_LT	14067	677	14068
// OP_IFNOT	14068	10	0
// OP_LOAD_ENT	28	206	14069
// OP_LOAD_ENT	14069	226	14070
// OP_EQ_E	14070	28	14071
// OP_IFNOT	14071	4	0
// OP_LOAD_ENT	28	206	14072
// OP_ADDRESS	14072	226	14073
// OP_STOREP_ENT	30	14073	0
// OP_ADDRESS	28	206	14074
// OP_STOREP_ENT	30	14074	0
// OP_LOAD_F	28	198	14075
// OP_IFNOT	14075	181	0
// OP_LOAD_F	28	198	14076
// OP_LT	14076	830	14077
// OP_IFNOT	14077	11	0
// OP_LOAD_F	28	198	14078
// OP_STORE_V	14078	4	0
// OP_CALL1	875	0	0
// OP_NOT_F	1	0	14079
// OP_IFNOT	14079	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14080	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	198	14081
// OP_STOREP_F	619	14081	0
// OP_LOAD_F	28	198	14082
// OP_EQ_F	14082	677	14083
// OP_IFNOT	14083	7	0
// OP_ADDRESS	28	404	14084
// OP_STOREP_F	677	14084	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14085	7	0
// OP_CALL2	518	0	0
// OP_GOTO	81	0	0
// OP_LOAD_F	28	198	14086
// OP_EQ_F	14086	806	14087
// OP_IFNOT	14087	7	0
// OP_ADDRESS	28	404	14088
// OP_STOREP_F	806	14088	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14089	7	0
// OP_CALL2	518	0	0
// OP_GOTO	72	0	0
// OP_LOAD_F	28	198	14090
// OP_EQ_F	14090	788	14091
// OP_IFNOT	14091	7	0
// OP_ADDRESS	28	404	14092
// OP_STOREP_F	788	14092	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14093	7	0
// OP_CALL2	518	0	0
// OP_GOTO	63	0	0
// OP_LOAD_F	28	198	14094
// OP_EQ_F	14094	808	14095
// OP_IFNOT	14095	7	0
// OP_ADDRESS	28	404	14096
// OP_STOREP_F	808	14096	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14097	7	0
// OP_CALL2	518	0	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	198	14098
// OP_EQ_F	14098	813	14099
// OP_IFNOT	14099	7	0
// OP_ADDRESS	28	404	14100
// OP_STOREP_F	813	14100	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14101	7	0
// OP_CALL2	518	0	0
// OP_GOTO	45	0	0
// OP_LOAD_F	28	198	14102
// OP_EQ_F	14102	816	14103
// OP_IFNOT	14103	7	0
// OP_ADDRESS	28	404	14104
// OP_STOREP_F	816	14104	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14105	7	0
// OP_CALL2	518	0	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	198	14106
// OP_EQ_F	14106	819	14107
// OP_IFNOT	14107	7	0
// OP_ADDRESS	28	404	14108
// OP_STOREP_F	819	14108	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14109	7	0
// OP_CALL2	518	0	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	198	14110
// OP_EQ_F	14110	810	14111
// OP_IFNOT	14111	7	0
// OP_ADDRESS	28	404	14112
// OP_STOREP_F	810	14112	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14113	7	0
// OP_CALL2	518	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	198	14114
// OP_EQ_F	14114	824	14115
// OP_IFNOT	14115	7	0
// OP_ADDRESS	28	404	14116
// OP_STOREP_F	824	14116	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14117	7	0
// OP_CALL2	518	0	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	198	14118
// OP_EQ_F	14118	827	14119
// OP_IFNOT	14119	6	0
// OP_ADDRESS	28	404	14120
// OP_STOREP_F	827	14120	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14121	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	28	198	14122
// OP_EQ_F	14122	842	14123
// OP_IFNOT	14123	23	0
// OP_ADDRESS	28	157	14124
// OP_LOAD_F	28	157	14125
// OP_ADD_F	14125	677	14126
// OP_STOREP_F	14126	14124	0
// OP_LOAD_F	28	157	14127
// OP_EQ_F	14127	788	14128
// OP_IFNOT	14128	3	0
// OP_ADDRESS	28	157	14129
// OP_STOREP_F	619	14129	0
// OP_LOAD_F	28	157	14130
// OP_STORE_V	14130	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	14015	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14131	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14015	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2073	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	28	198	14132
// OP_EQ_F	14132	1133	14133
// OP_EQ_F	37	677	14134
// OP_EQ_F	35	619	14135
// OP_OR	14134	14135	14136
// OP_AND	14133	14136	14137
// OP_IFNOT	14137	45	0
// OP_LOAD_ENT	28	206	14138
// OP_STORE_ENT	14138	14011	0
// OP_LOAD_S	14011	154	14139
// OP_EQ_S	14139	5351	14140
// OP_LOAD_S	14011	154	14141
// OP_EQ_S	14141	5347	14142
// OP_OR	14140	14142	14143
// OP_IFNOT	14143	5	0
// OP_ADDRESS	28	206	14144
// OP_STOREP_ENT	30	14144	0
// OP_ADDRESS	14011	226	14145
// OP_STOREP_ENT	30	14145	0
// OP_STORE_V	14011	4	0
// OP_STORE_V	243	7	0
// OP_LOAD_S	28	243	14146
// OP_STORE_V	14146	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	14010	0
// OP_NE_E	14010	14011	14147
// OP_IFNOT	14147	25	0
// OP_LOAD_S	14010	154	14148
// OP_EQ_S	14148	5351	14149
// OP_LOAD_S	14010	154	14150
// OP_EQ_S	14150	5347	14151
// OP_OR	14149	14151	14152
// OP_IFNOT	14152	10	0
// OP_LOAD_ENT	14010	226	14153
// OP_LOAD_S	14153	154	14154
// OP_NE_S	14154	766	14155
// OP_IFNOT	14155	6	0
// OP_ADDRESS	28	206	14156
// OP_STOREP_ENT	14010	14156	0
// OP_ADDRESS	14010	226	14157
// OP_STOREP_ENT	28	14157	0
// OP_STORE_ENT	14010	14011	0
// OP_NE_E	14010	14011	14158
// OP_IFNOT	14158	7	0
// OP_STORE_V	14010	4	0
// OP_STORE_V	243	7	0
// OP_LOAD_S	28	243	14159
// OP_STORE_V	14159	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	14010	0
// OP_GOTO	-25	0	0
// OP_ADDRESS	28	198	14160
// OP_STOREP_F	619	14160	0
// OP_IFNOT	37	111	0
// OP_LOAD_S	28	243	14161
// OP_NOT_S	14161	0	14162
// OP_IFNOT	14162	59	0
// OP_STORE_F	619	14013	0
// OP_STORE_F	619	14014	0
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	14010	0
// OP_IFNOT	14010	18	0
// OP_LOAD_S	14010	243	14163
// OP_EQ_S	14163	102	14164
// OP_IFNOT	14164	4	0
// OP_ADD_F	14013	677	14165
// OP_STORE_F	14165	14013	0
// OP_GOTO	6	0	0
// OP_LOAD_S	14010	243	14166
// OP_EQ_S	14166	103	14167
// OP_IFNOT	14167	3	0
// OP_ADD_F	14014	677	14168
// OP_STORE_F	14168	14014	0
// OP_STORE_V	14010	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	14010	0
// OP_GOTO	-17	0	0
// OP_GE	14014	14013	14169
// OP_IFNOT	14169	17	0
// OP_ADDRESS	28	243	14170
// OP_STOREP_S	102	14170	0
// OP_LOAD_F	28	209	14171
// OP_NE_F	14171	788	14172
// OP_IFNOT	14172	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14173	7	0
// OP_CALL2	515	0	0
// OP_LOAD_S	28	205	14174
// OP_STORE_V	14174	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14175	4	0
// OP_CALL1	517	0	0
// OP_ADDRESS	28	209	14176
// OP_STOREP_F	788	14176	0
// OP_GOTO	16	0	0
// OP_ADDRESS	28	243	14177
// OP_STOREP_S	103	14177	0
// OP_LOAD_F	28	209	14178
// OP_NE_F	14178	810	14179
// OP_IFNOT	14179	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14180	7	0
// OP_CALL2	515	0	0
// OP_LOAD_S	28	205	14181
// OP_STORE_V	14181	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14182	4	0
// OP_CALL1	517	0	0
// OP_ADDRESS	28	209	14183
// OP_STOREP_F	810	14183	0
// OP_LOAD_S	28	244	14184
// OP_EQ_S	14184	103	14185
// OP_LOAD_S	28	243	14186
// OP_EQ_S	14186	103	14187
// OP_AND	14185	14187	14188
// OP_LOAD_F	28	209	14189
// OP_EQ_F	14189	788	14190
// OP_AND	14188	14190	14191
// OP_IFNOT	14191	17	0
// OP_LOAD_S	28	205	14192
// OP_STORE_V	14192	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14175	4	0
// OP_CALL1	517	0	0
// OP_LOAD_F	28	209	14193
// OP_NE_F	14193	788	14194
// OP_IFNOT	14194	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14173	7	0
// OP_CALL2	515	0	0
// OP_ADDRESS	28	243	14195
// OP_STOREP_S	102	14195	0
// OP_ADDRESS	28	177	14196
// OP_STOREP_F	806	14196	0
// OP_GOTO	25	0	0
// OP_LOAD_S	28	244	14197
// OP_EQ_S	14197	102	14198
// OP_LOAD_S	28	243	14199
// OP_EQ_S	14199	102	14200
// OP_AND	14198	14200	14201
// OP_LOAD_F	28	209	14202
// OP_EQ_F	14202	810	14203
// OP_AND	14201	14203	14204
// OP_IFNOT	14204	16	0
// OP_LOAD_S	28	205	14205
// OP_STORE_V	14205	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14182	4	0
// OP_CALL1	517	0	0
// OP_LOAD_F	28	209	14206
// OP_NE_F	14206	810	14207
// OP_IFNOT	14207	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14180	7	0
// OP_CALL2	515	0	0
// OP_ADDRESS	28	243	14208
// OP_STOREP_S	103	14208	0
// OP_ADDRESS	28	177	14209
// OP_STOREP_F	806	14209	0
// OP_LOAD_F	28	197	14210
// OP_NOT_F	14210	0	14211
// OP_IFNOT	14211	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	423	14212
// OP_LT	31	14212	14213
// OP_IFNOT	14213	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	195	14214
// OP_STOREP_F	619	14214	0
// OP_ADDRESS	28	196	14215
// OP_STOREP_F	619	14215	0
// OP_ADDRESS	28	197	14216
// OP_STOREP_F	619	14216	0
// OP_CALL0	13667	0	0
// OP_DONE	0	0	0
void () PlayerDeathThink = 
{
    local entity old_self;
    local entity stemp;
    local entity e;
    local entity e2;
    local float forward;
    local float tmp;
    local float tmp2;
    local string teststr;
    
    if(self.flags & FL_ONGROUND)
    {
        forward = vlen(self.velocity);
        forward = forward - 20;
        if(forward <= 0)
        {
            self.velocity = '0 0 0';
        }
        else
        {
            self.velocity = forward * normalize(self.velocity);
        }
        
    }
    
    
    if(self.deadflag == DEAD_DEAD)
    {
        
        if(self.button2)
        {
            return;
        }
        
        self.deadflag = DEAD_RESPAWNABLE;
        
        if(!deathmatch && !coop)
        {
            
            if((self.health < 3) && (self.lives == 1))
            {
                sprint(self, "Game over. Press special or fire to restart\n");
            }
            
            return;
        }
        
        sprint(self, "Press 1-10 to select your vehicle\n");
        sprint(self, "Press special or fire to start\n");
        
        if(self.health < 2)
        {
            self.health = 2;
        }
        
        self.solid = SOLID_NOT;
        self.oldts = self.ts;
        return;
    }
    
    
    if(self.enemy != world)
    {
        setorigin(self, self.enemy.origin);
        
        if(self.enemy.owner == self)
        {
            self.health = 2;
        }
        
        
        if(self.enemy.health < 1)
        {
            
            if(self.enemy.owner == self)
            {
                self.enemy.owner = world;
            }
            
            self.enemy = world;
        }
        
    }
    
    
    if(self.impulse)
    {
        
        if(self.impulse < 11)
        {
            
            if(!check_allowed(self.impulse))
            {
                sprint(self, "Vehicle not available.\n");
                self.impulse = 0;
            }
            
        }
        
        if(self.impulse == 1)
        {
            self.style = 1;
            sprint(self, "Dogfighter selected.\n");
        }
        else
        {
            if(self.impulse == 2)
            {
                self.style = 2;
                sprint(self, "Fighter Bomber selected.\n");
            }
            else
            {
                if(self.impulse == 3)
                {
                    self.style = 3;
                    sprint(self, "Stealth Fighter selected.\n");
                }
                else
                {
                    if(self.impulse == 4)
                    {
                        self.style = 4;
                        sprint(self, "A-10 selected.\n");
                    }
                    else
                    {
                        if(self.impulse == 5)
                        {
                            self.style = 5;
                            sprint(self, "X-29 selected.\n");
                        }
                        else
                        {
                            if(self.impulse == 6)
                            {
                                self.style = 6;
                                sprint(self, "Attack helicopter selected.\n");
                            }
                            else
                            {
                                if(self.impulse == 7)
                                {
                                    self.style = 7;
                                    sprint(self, "Mobile SAM selected.\n");
                                }
                                else
                                {
                                    if(self.impulse == 8)
                                    {
                                        self.style = 8;
                                        sprint(self, "Battle Tank selected.\n");
                                    }
                                    else
                                    {
                                        if(self.impulse == 9)
                                        {
                                            self.style = 9;
                                            sprint(self, "Armoured Car selected.\n");
                                        }
                                        else
                                        {
                                            
                                            if(self.impulse == 10)
                                            {
                                                self.style = 10;
                                                sprint(self, "Hovercraft selected.\n");
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
        
        
        if(self.impulse == 15)
        {
            self.skin = self.skin + 1;
            
            if(self.skin == 3)
            {
                self.skin = 0;
            }
            
            teststr = ftos(self.skin);
            sprint(self, "Skin: ");
            sprint(self, teststr);
            sprint(self, "\n");
        }
        
        
        if((self.impulse == 21) && ((teamplay == 1) || (deathmatch == 0)))
        {
            e2 = self.enemy;
            
            if((e2.classname == "monster_amg") || (e2.classname == "monster_aag"))
            {
                self.enemy = world;
                e2.owner = world;
            }
            
            e = find(e2, ts, self.ts);
            
            while(e != e2)
            {
                
                if((e.classname == "monster_amg") || (e.classname == "monster_aag"))
                {
                    
                    if(e.owner.classname != "player")
                    {
                        self.enemy = e;
                        e.owner = self;
                        e2 = e;
                    }
                    
                }
                
                
                if(e != e2)
                {
                    e = find(e, ts, self.ts);
                }
                
            }
            
        }
        
        self.impulse = 0;
    }
    
    
    if(teamplay)
    {
        
        if(!self.ts)
        {
            tmp = 0;
            tmp2 = 0;
            e = find(world, classname, "player");
            
            while(e)
            {
                if(e.ts == T1)
                {
                    tmp = tmp + 1;
                }
                else
                {
                    
                    if(e.ts == T2)
                    {
                        tmp2 = tmp2 + 1;
                    }
                    
                }
                
                e = find(e, classname, "player");
            }
            
            if(tmp2 >= tmp)
            {
                self.ts = T1;
                
                if(self.team != 3)
                {
                    stuffcmd(self, "color 2\n");
                }
                
                bprint(self.netname);
                bprint(" joined the Blue team\n");
                self.team = 3;
            }
            else
            {
                self.ts = T2;
                
                if(self.team != 8)
                {
                    stuffcmd(self, "color 7\n");
                }
                
                bprint(self.netname);
                bprint(" joined the Red team\n");
                self.team = 8;
            }
            
        }
        
        if(((self.oldts == T2) && (self.ts == T2)) && (self.team == 3))
        {
            bprint(self.netname);
            bprint(" joined the Blue team\n");
            
            if(self.team != 3)
            {
                stuffcmd(self, "color 2\n");
            }
            
            self.ts = T1;
            self.health = 2;
        }
        else
        {
            
            if(((self.oldts == T1) && (self.ts == T1)) && (self.team == 8))
            {
                bprint(self.netname);
                bprint(" joined the Red team\n");
                
                if(self.team != 8)
                {
                    stuffcmd(self, "color 7\n");
                }
                
                self.ts = T2;
                self.health = 2;
            }
            
        }
        
    }
    
    
    if(!self.button2)
    {
        return;
    }
    
    
    if(time < self.pain_finished)
    {
        return;
    }
    
    self.button0 = 0;
    self.button1 = 0;
    self.button2 = 0;
    respawn();
};

// PlayerPreThink
// function begins at statement 20315, parm_start=14217
// OP_IFNOT	13497	3	0
// OP_CALL0	13596	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	191	14223
// OP_EQ_V	14223	607	14226
// OP_IFNOT	14226	2	0
// OP_RETURN	0	0	0
// OP_GT	35	619	14227
// OP_EQ_F	37	677	14228
// OP_AND	14227	14228	14229
// OP_IFNOT	14229	17	0
// OP_LOAD_S	28	243	14230
// OP_EQ_S	14230	103	14231
// OP_IFNOT	14231	8	0
// OP_LOAD_F	28	209	14232
// OP_NE_F	14232	810	14233
// OP_IFNOT	14233	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14180	7	0
// OP_CALL2	515	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	209	14234
// OP_NE_F	14234	788	14235
// OP_IFNOT	14235	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14173	7	0
// OP_CALL2	515	0	0
// OP_LOAD_V	28	200	14236
// OP_STORE_V	14236	4	0
// OP_CALL1	496	0	0
// OP_CALL0	13996	0	0
// OP_LOAD_F	28	404	14239
// OP_GT	14239	619	14240
// OP_LOAD_F	28	404	14241
// OP_LT	14241	816	14242
// OP_AND	14240	14242	14243
// OP_IFNOT	14243	2	0
// OP_CALL0	6098	0	0
// OP_LOAD_F	28	198	14244
// OP_EQ_F	14244	816	14245
// OP_LOAD_ENT	28	206	14246
// OP_LOAD_ENT	14246	226	14247
// OP_EQ_E	14247	28	14248
// OP_AND	14245	14248	14249
// OP_IFNOT	14249	13	0
// OP_ADDRESS	28	253	14250
// OP_LOAD_F	28	253	14251
// OP_ADD_F	14251	677	14252
// OP_STOREP_F	14252	14250	0
// OP_LOAD_F	28	253	14253
// OP_EQ_F	14253	788	14254
// OP_IFNOT	14254	3	0
// OP_ADDRESS	28	253	14255
// OP_STOREP_F	619	14255	0
// OP_ADDRESS	28	198	14256
// OP_STOREP_F	619	14256	0
// OP_CALL0	2769	0	0
// OP_LOAD_F	28	198	14257
// OP_EQ_F	14257	14258	14259
// OP_IFNOT	14259	5	0
// OP_ADDRESS	28	413	14260
// OP_STOREP_F	14261	14260	0
// OP_ADDRESS	28	198	14262
// OP_STOREP_F	619	14262	0
// OP_LOAD_F	28	198	14263
// OP_EQ_F	14263	14264	14265
// OP_IFNOT	14265	5	0
// OP_ADDRESS	28	413	14266
// OP_STOREP_F	808	14266	0
// OP_ADDRESS	28	198	14267
// OP_STOREP_F	619	14267	0
// OP_LOAD_F	28	198	14268
// OP_EQ_F	14268	14269	14270
// OP_IFNOT	14270	5	0
// OP_ADDRESS	28	413	14271
// OP_STOREP_F	619	14271	0
// OP_ADDRESS	28	198	14272
// OP_STOREP_F	619	14272	0
// OP_LOAD_F	28	198	14273
// OP_EQ_F	14273	1111	14274
// OP_IFNOT	14274	16	0
// OP_LOAD_ENT	28	412	14275
// OP_ADDRESS	14275	404	14276
// OP_LOAD_ENT	28	412	14277
// OP_LOAD_F	14277	404	14278
// OP_ADD_F	14278	810	14279
// OP_STOREP_F	14279	14276	0
// OP_LOAD_ENT	28	412	14280
// OP_LOAD_F	14280	404	14281
// OP_GT	14281	815	14282
// OP_IFNOT	14282	4	0
// OP_LOAD_ENT	28	412	14283
// OP_ADDRESS	14283	404	14284
// OP_STOREP_F	619	14284	0
// OP_ADDRESS	28	198	14285
// OP_STOREP_F	619	14285	0
// OP_LOAD_F	28	198	14286
// OP_EQ_F	14286	1133	14287
// OP_LOAD_ENT	28	206	14288
// OP_LOAD_ENT	14288	226	14289
// OP_EQ_E	14289	28	14290
// OP_AND	14287	14290	14291
// OP_LOAD_F	28	404	14292
// OP_GT	14292	816	14293
// OP_AND	14291	14293	14294
// OP_IFNOT	14294	55	0
// OP_LOAD_ENT	28	412	14295
// OP_ADDRESS	14295	238	14296
// OP_LOAD_ENT	28	412	14297
// OP_LOAD_F	14297	238	14298
// OP_SUB_F	677	14298	14299
// OP_STOREP_F	14299	14296	0
// OP_LOAD_ENT	28	412	14300
// OP_LOAD_F	14300	238	14301
// OP_EQ_F	14301	677	14302
// OP_IFNOT	14302	34	0
// OP_LOAD_ENT	28	206	14303
// OP_LOAD_ENT	14303	464	14304
// OP_NOT_ENT	14304	0	14305
// OP_IFNOT	14305	21	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14306	7	0
// OP_CALL2	518	0	0
// OP_LOAD_ENT	28	206	14307
// OP_STORE_ENT	14307	14221	0
// OP_LOAD_ENT	14221	467	14308
// OP_IFNOT	14308	3	0
// OP_LOAD_ENT	14221	467	14309
// OP_STORE_ENT	14309	14221	0
// OP_LOAD_F	14221	238	14310
// OP_STORE_V	14310	4	0
// OP_CALL1	520	0	0
// OP_STORE_S	1	14222	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14222	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2073	7	0
// OP_CALL2	518	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	412	14311
// OP_ADDRESS	14311	263	14312
// OP_LOAD_ENT	28	206	14313
// OP_LOAD_ENT	14313	464	14314
// OP_STOREP_ENT	14314	14312	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14315	7	0
// OP_CALL2	518	0	0
// OP_GOTO	10	0	0
// OP_LOAD_ENT	28	412	14316
// OP_LOAD_ENT	14316	263	14317
// OP_IFNOT	14317	4	0
// OP_LOAD_ENT	28	412	14318
// OP_ADDRESS	14318	263	14319
// OP_STOREP_ENT	30	14319	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14320	7	0
// OP_CALL2	518	0	0
// OP_ADDRESS	28	198	14321
// OP_STOREP_F	619	14321	0
// OP_CALL0	13340	0	0
// OP_ADDRESS	28	494	14322
// OP_LOAD_F	28	494	14323
// OP_LOAD_F	28	413	14324
// OP_ADD_F	14323	14324	14325
// OP_STOREP_F	14325	14322	0
// OP_LOAD_F	28	494	14326
// OP_LT	14326	619	14327
// OP_IFNOT	14327	5	0
// OP_ADDRESS	28	494	14328
// OP_STOREP_F	619	14328	0
// OP_ADDRESS	28	413	14329
// OP_STOREP_F	619	14329	0
// OP_LOAD_F	28	494	14330
// OP_GT	14330	1622	14331
// OP_IFNOT	14331	5	0
// OP_ADDRESS	28	494	14332
// OP_STOREP_F	1622	14332	0
// OP_ADDRESS	28	413	14333
// OP_STOREP_F	619	14333	0
// OP_LOAD_F	28	415	14334
// OP_GT	14334	31	14335
// OP_LOAD_F	28	198	14336
// OP_EQ_F	14336	827	14337
// OP_AND	14335	14337	14338
// OP_LOAD_ENT	28	206	14339
// OP_LOAD_ENT	14339	226	14340
// OP_EQ_E	14340	28	14341
// OP_AND	14338	14341	14342
// OP_IFNOT	14342	49	0
// OP_LOAD_ENT	28	206	14343
// OP_LOAD_ENT	14343	412	14344
// OP_IFNOT	14344	5	0
// OP_LOAD_ENT	28	206	14345
// OP_LOAD_ENT	14345	412	14346
// OP_STORE_V	14346	4	0
// OP_CALL1	509	0	0
// OP_LOAD_ENT	28	206	14347
// OP_LOAD_ENT	14347	467	14348
// OP_IFNOT	14348	5	0
// OP_LOAD_ENT	28	206	14349
// OP_LOAD_ENT	14349	467	14350
// OP_STORE_V	14350	4	0
// OP_CALL1	509	0	0
// OP_LOAD_ENT	28	464	14351
// OP_IFNOT	14351	4	0
// OP_LOAD_ENT	28	464	14352
// OP_STORE_V	14352	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	128	14353
// OP_STOREP_F	281	14353	0
// OP_ADDRESS	28	134	14354
// OP_LOAD_ENT	28	206	14357
// OP_LOAD_V	14357	130	14358
// OP_ADD_V	14358	14361	14364
// OP_STOREP_V	14364	14354	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	206	14367
// OP_LOAD_V	14367	130	14368
// OP_ADD_V	14368	14361	14371
// OP_STORE_V	14371	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	412	14374
// OP_STORE_V	14374	4	0
// OP_LOAD_ENT	28	206	14375
// OP_LOAD_V	14375	130	14376
// OP_ADD_V	14376	14361	14379
// OP_STORE_V	14379	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	206	14382
// OP_STORE_V	14382	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	177	14383
// OP_STOREP_F	788	14383	0
// OP_ADDRESS	28	190	14384
// OP_STOREP_F	302	14384	0
// OP_ADDRESS	28	198	14385
// OP_STOREP_F	619	14385	0
// OP_LOAD_F	28	190	14386
// OP_GE	14386	302	14387
// OP_IFNOT	14387	3	0
// OP_CALL0	14007	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	14388
// OP_EQ_F	14388	301	14389
// OP_IFNOT	14389	2	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () PlayerPreThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    local entity stemp;
    local entity e;
    local string teststr;
    
    if(intermission_running)
    {
        IntermissionThink();
        return;
    }
    
    
    if(self.view_ofs == '0 0 0')
    {
        return;
    }
    
    
    if((deathmatch > 0) && (teamplay == 1))
    {
        if(self.ts == T2)
        {
            
            if(self.team != 8)
            {
                stuffcmd(self, "color 7\n");
            }
            
        }
        else
        {
            
            if(self.team != 3)
            {
                stuffcmd(self, "color 2\n");
            }
            
        }
        
    }
    
    makevectors(self.v_angle);
    CheckRules();
    
    if((self.style > 0) && (self.style < 6))
    {
        plane_upright();
    }
    
    
    if((self.impulse == 6) && (self.enemy.owner == self))
    {
        self.wepv = self.wepv + 1;
        
        if(self.wepv == 3)
        {
            self.wepv = 0;
        }
        
        self.impulse = 0;
        W_SetCurrentAmmo();
    }
    
    
    if(self.impulse == 106)
    {
        self.speed = -4;
        self.impulse = 0;
    }
    
    
    if(self.impulse == 107)
    {
        self.speed = 4;
        self.impulse = 0;
    }
    
    
    if(self.impulse == 108)
    {
        self.speed = 0;
        self.impulse = 0;
    }
    
    
    if(self.impulse == 20)
    {
        self.oldenemy.style = self.oldenemy.style + 8;
        
        if(self.oldenemy.style > 32)
        {
            self.oldenemy.style = 0;
        }
        
        self.impulse = 0;
    }
    
    
    if(((self.impulse == 21) && (self.enemy.owner == self)) && (self.style > 6))
    {
        self.oldenemy.toyview = 1 - self.oldenemy.toyview;
        if(self.oldenemy.toyview == 1)
        {
            if(!self.enemy.trigger_field)
            {
                sprint(self, "Angle: ");
                e = self.enemy;
                
                if(e.movetarget)
                {
                    e = e.movetarget;
                }
                
                teststr = ftos(e.toyview);
                sprint(self, teststr);
                sprint(self, "\n");
            }
            else
            {
                self.oldenemy.tur1 = self.enemy.trigger_field;
                sprint(self, "Turret locked\n");
            }
            
        }
        else
        {
            
            if(self.oldenemy.tur1)
            {
                self.oldenemy.tur1 = world;
            }
            
            sprint(self, "Turret unlocked\n");
        }
        
        self.impulse = 0;
    }
    
    CheckAdminCmd();
    self.distance = self.distance + self.speed;
    
    if(self.distance < 0)
    {
        self.distance = 0;
        self.speed = 0;
    }
    
    
    if(self.distance > 1000)
    {
        self.distance = 1000;
        self.speed = 0;
    }
    
    
    if(((self.search_time > time) && (self.impulse == 10)) && (self.enemy.owner == self))
    {
        
        if(self.enemy.oldenemy)
        {
            remove(self.enemy.oldenemy);
        }
        
        
        if(self.enemy.movetarget)
        {
            remove(self.enemy.movetarget);
        }
        
        
        if(self.trigger_field)
        {
            remove(self.trigger_field);
        }
        
        self.movetype = MOVETYPE_NONE;
        self.oldorigin = self.enemy.origin + '0 0 8';
        setorigin(self, self.enemy.origin + '0 0 8');
        setorigin(self.oldenemy, self.enemy.origin + '0 0 8');
        remove(self.enemy);
        self.health = 3;
        self.deadflag = DEAD_DEAD;
        self.impulse = 0;
    }
    
    
    if(self.deadflag >= DEAD_DEAD)
    {
        PlayerDeathThink();
        return;
    }
    
    
    if(self.deadflag == DEAD_DYING)
    {
        return;
    }
    
};

// CheckPowerups
// function begins at statement 20563, parm_start=14391
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckPowerups = 
{
    return;
};

// SetCameraPlace
// function begins at statement 20565, parm_start=14392
// OP_LOAD_ENT	28	266	14400
// OP_IFNOT	14400	16	0
// OP_LOAD_ENT	28	266	14401
// OP_LOAD_V	14401	130	14402
// OP_EQ_V	14402	607	14405
// OP_LOAD_ENT	28	266	14406
// OP_LOAD_ENT	14406	226	14407
// OP_NE_E	14407	28	14408
// OP_LOAD_ENT	28	266	14409
// OP_LOAD_ENT	14409	226	14410
// OP_LOAD_ENT	28	206	14411
// OP_NE_E	14410	14411	14412
// OP_AND	14408	14412	14413
// OP_OR	14405	14413	14414
// OP_IFNOT	14414	3	0
// OP_ADDRESS	28	266	14415
// OP_STOREP_ENT	30	14415	0
// OP_LOAD_ENT	28	206	14416
// OP_IFNOT	14416	115	0
// OP_LOAD_ENT	28	206	14417
// OP_STORE_ENT	14417	14392	0
// OP_LOAD_F	28	256	14418
// OP_EQ_F	14418	677	14419
// OP_LOAD_ENT	28	266	14420
// OP_LOAD_V	14420	130	14421
// OP_NE_V	14421	607	14424
// OP_AND	14419	14424	14425
// OP_LOAD_ENT	28	266	14426
// OP_LOAD_ENT	14426	226	14427
// OP_EQ_E	14427	28	14428
// OP_LOAD_ENT	28	266	14429
// OP_LOAD_ENT	14429	226	14430
// OP_LOAD_ENT	28	206	14431
// OP_EQ_E	14430	14431	14432
// OP_OR	14428	14432	14433
// OP_AND	14425	14433	14434
// OP_IFNOT	14434	3	0
// OP_LOAD_ENT	28	266	14435
// OP_STORE_ENT	14435	14392	0
// OP_LOAD_V	28	200	14436
// OP_STORE_V	14436	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	412	14439
// OP_LOAD_F	14439	404	14440
// OP_STORE_F	14440	14393	0
// OP_MUL_VF	62	14393	14441
// OP_LOAD_F	28	494	14444
// OP_MUL_VF	59	14444	14445
// OP_SUB_V	14441	14445	14448
// OP_STORE_V	14448	59	0
// OP_LOAD_V	14392	130	14451
// OP_STORE_V	14451	4	0
// OP_LOAD_V	14392	130	14454
// OP_MUL_VF	62	14393	14457
// OP_ADD_V	14454	14457	14460
// OP_STORE_V	14460	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_STORE_V	71	14394	0
// OP_LOAD_V	14392	130	14463
// OP_ADD_V	14463	59	14466
// OP_STORE_V	14466	14397	0
// OP_LOAD_F	28	404	14469
// OP_LT	14469	819	14470
// OP_IFNOT	14470	6	0
// OP_LOAD_V	14392	138	14471
// OP_MUL_VF	14471	32	14474
// OP_ADD_V	14397	14474	14477
// OP_STORE_V	14477	14397	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	404	14480
// OP_LT	14480	827	14481
// OP_LOAD_F	14392	413	14482
// OP_NE_F	14482	619	14483
// OP_OR	14481	14483	14484
// OP_IFNOT	14484	5	0
// OP_LOAD_V	28	138	14485
// OP_MUL_VF	14485	32	14488
// OP_ADD_V	14397	14488	14491
// OP_STORE_V	14491	14397	0
// OP_STORE_V	14394	4	0
// OP_STORE_V	14397	7	0
// OP_STORE_V	267	10	0
// OP_LOAD_ENT	28	206	14494
// OP_STORE_V	14494	13	0
// OP_CALL4	510	0	0
// OP_SUB_V	14397	14394	14495
// OP_STORE_V	14495	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	59	0
// OP_LOAD_ENT	28	206	14498
// OP_NE_E	14498	28	14499
// OP_IFNOT	14499	7	0
// OP_LOAD_ENT	28	412	14500
// OP_STORE_V	14500	4	0
// OP_MUL_VF	59	808	14501
// OP_SUB_V	71	14501	14504
// OP_STORE_V	14504	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	206	14507
// OP_NE_E	14507	28	14508
// OP_LOAD_F	28	404	14509
// OP_LT	14509	819	14510
// OP_LOAD_ENT	28	206	14511
// OP_LOAD_ENT	14511	226	14512
// OP_NE_E	14512	28	14513
// OP_OR	14510	14513	14514
// OP_AND	14508	14514	14515
// OP_IFNOT	14515	6	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	412	14516
// OP_LOAD_V	14516	130	14517
// OP_STORE_V	14517	7	0
// OP_CALL2	497	0	0
// OP_LOAD_ENT	28	206	14520
// OP_LOAD_ENT	14520	226	14521
// OP_EQ_E	14521	28	14522
// OP_IFNOT	14522	5	0
// OP_LOAD_ENT	28	206	14523
// OP_ADDRESS	14523	209	14524
// OP_LOAD_F	28	209	14525
// OP_STOREP_F	14525	14524	0
// OP_LOAD_ENT	28	206	14526
// OP_LOAD_F	14526	188	14527
// OP_EQ_F	14527	619	14528
// OP_LOAD_ENT	28	206	14529
// OP_LOAD_S	14529	155	14530
// OP_NE_S	14530	12945	14531
// OP_AND	14528	14531	14532
// OP_IFNOT	14532	3	0
// OP_ADDRESS	28	206	14533
// OP_STOREP_ENT	30	14533	0
// OP_DONE	0	0	0
void () SetCameraPlace = 
{
    local entity stemp;
    local float r;
    local vector v1;
    local vector v2;
    
    if(self.lastmiss)
    {
        
        if((self.lastmiss.origin == '0 0 0') || ((self.lastmiss.owner != self) && (self.lastmiss.owner != self.enemy)))
        {
            self.lastmiss = world;
        }
        
    }
    
    
    if(self.enemy)
    {
        stemp = self.enemy;
        
        if(((self.missileview_on == 1) && (self.lastmiss.origin != '0 0 0')) && ((self.lastmiss.owner == self) || (self.lastmiss.owner == self.enemy)))
        {
            stemp = self.lastmiss;
        }
        
        makevectors(self.v_angle);
        r = self.oldenemy.style;
        v_forward = (v_up * r) - (v_forward * self.distance);
        traceline(stemp.origin, stemp.origin + (v_up * r), TRUE, world);
        v1 = trace_endpos;
        v2 = stemp.origin + v_forward;
        if(self.style < 7)
        {
            v2 = v2 + (stemp.velocity * frametime);
        }
        else
        {
            
            if((self.style < 10) || (stemp.speed != 0))
            {
                v2 = v2 + (self.velocity * frametime);
            }
            
        }
        
        traceline(v1, v2, FALSE, self.enemy);
        v_forward = normalize(v2 - v1);
        
        if(self.enemy != self)
        {
            setorigin(self.oldenemy, trace_endpos - (v_forward * 4));
        }
        
        
        if((self.enemy != self) && ((self.style < 7) || (self.enemy.owner != self)))
        {
            setorigin(self, self.oldenemy.origin);
        }
        
        
        if(self.enemy.owner == self)
        {
            self.enemy.team = self.team;
        }
        
        
        if((self.enemy.takedamage == 0) && (self.enemy.model != "progs/h_player.mdl"))
        {
            self.enemy = world;
        }
        
    }
    
};

// PlayerPostThink
// function begins at statement 20699, parm_start=14534
// OP_LOAD_V	28	191	14541
// OP_EQ_V	14541	607	14544
// OP_IFNOT	14544	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	233	14545
// OP_NE_S	14545	621	14546
// OP_IFNOT	14546	27	0
// OP_LOAD_ENT	28	206	14547
// OP_LOAD_F	14547	177	14548
// OP_GT	14548	619	14549
// OP_LOAD_ENT	28	206	14550
// OP_LOAD_ENT	14550	226	14551
// OP_EQ_E	14551	28	14552
// OP_AND	14549	14552	14553
// OP_IFNOT	14553	10	0
// OP_LOAD_ENT	28	206	14554
// OP_STORE_V	14554	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	14555
// OP_STORE_V	14555	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_GOTO	8	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	14556
// OP_STORE_V	14556	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	233	14557
// OP_STOREP_S	621	14557	0
// OP_LOAD_F	28	198	14558
// OP_GT	14558	1130	14559
// OP_LOAD_F	28	198	14560
// OP_LT	14560	2618	14561
// OP_AND	14559	14561	14562
// OP_IFNOT	14562	23	0
// OP_LOAD_ENT	28	206	14563
// OP_LOAD_F	14563	177	14564
// OP_GT	14564	619	14565
// OP_IFNOT	14565	7	0
// OP_LOAD_F	28	198	14566
// OP_SUB_F	14566	1130	14567
// OP_STORE_V	14567	4	0
// OP_LOAD_ENT	28	206	14568
// OP_STORE_V	14568	7	0
// OP_CALL2	1088	0	0
// OP_LOAD_F	28	198	14569
// OP_GT	14569	1203	14570
// OP_LOAD_F	28	198	14571
// OP_LT	14571	1228	14572
// OP_AND	14570	14572	14573
// OP_IFNOT	14573	5	0
// OP_LOAD_F	28	198	14574
// OP_SUB_F	14574	1231	14575
// OP_STORE_V	14575	4	0
// OP_CALL1	13187	0	0
// OP_LOAD_F	28	198	14576
// OP_EQ_F	14576	619	14577
// OP_LOAD_ENT	28	412	14578
// OP_NOT_ENT	14578	0	14579
// OP_IFNOT	14579	2	0
// OP_CALL0	5217	0	0
// OP_LOAD_F	28	190	14580
// OP_IFNOT	14580	7	0
// OP_ADDRESS	28	256	14581
// OP_STOREP_F	619	14581	0
// OP_ADDRESS	28	266	14582
// OP_STOREP_ENT	30	14582	0
// OP_CALL0	14391	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	238	14583
// OP_EQ_F	14583	689	14584
// OP_IFNOT	14584	117	0
// OP_ADDRESS	28	214	14585
// OP_STOREP_F	619	14585	0
// OP_ADDRESS	28	215	14586
// OP_STOREP_F	689	14586	0
// OP_LOAD_F	28	404	14587
// OP_EQ_F	14587	677	14588
// OP_IFNOT	14588	3	0
// OP_CALL0	8044	0	0
// OP_GOTO	53	0	0
// OP_LOAD_F	28	404	14589
// OP_EQ_F	14589	806	14590
// OP_IFNOT	14590	3	0
// OP_CALL0	8494	0	0
// OP_GOTO	48	0	0
// OP_LOAD_F	28	404	14591
// OP_EQ_F	14591	788	14592
// OP_IFNOT	14592	3	0
// OP_CALL0	8969	0	0
// OP_GOTO	43	0	0
// OP_LOAD_F	28	404	14593
// OP_EQ_F	14593	808	14594
// OP_IFNOT	14594	3	0
// OP_CALL0	9508	0	0
// OP_GOTO	38	0	0
// OP_LOAD_F	28	404	14595
// OP_EQ_F	14595	813	14596
// OP_IFNOT	14596	3	0
// OP_CALL0	9949	0	0
// OP_GOTO	33	0	0
// OP_LOAD_F	28	404	14597
// OP_EQ_F	14597	816	14598
// OP_IFNOT	14598	3	0
// OP_CALL0	10534	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	404	14599
// OP_EQ_F	14599	819	14600
// OP_IFNOT	14600	5	0
// OP_ADDRESS	28	128	14601
// OP_STOREP_F	282	14601	0
// OP_CALL0	10912	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	404	14602
// OP_EQ_F	14602	810	14603
// OP_IFNOT	14603	5	0
// OP_ADDRESS	28	128	14604
// OP_STOREP_F	282	14604	0
// OP_CALL0	11460	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	404	14605
// OP_EQ_F	14605	824	14606
// OP_IFNOT	14606	5	0
// OP_ADDRESS	28	128	14607
// OP_STOREP_F	282	14607	0
// OP_CALL0	12001	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	404	14608
// OP_EQ_F	14608	827	14609
// OP_IFNOT	14609	3	0
// OP_CALL0	12665	0	0
// OP_GOTO	2	0	0
// OP_CALL0	8044	0	0
// OP_LOAD_F	28	404	14610
// OP_LT	14610	816	14611
// OP_LOAD_ENT	28	206	14612
// OP_LOAD_F	14612	241	14613
// OP_AND	14611	14613	14614
// OP_IFNOT	14614	3	0
// OP_STORE_V	677	4	0
// OP_CALL1	13187	0	0
// OP_ADDRESS	28	256	14615
// OP_STOREP_F	619	14615	0
// OP_ADDRESS	28	266	14616
// OP_STOREP_ENT	30	14616	0
// OP_STORE_V	12972	4	0
// OP_CALL1	536	0	0
// OP_BITAND	1	806	14617
// OP_NOT_F	14617	0	14618
// OP_IFNOT	14618	15	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	14540	0
// OP_STORE_V	14540	4	0
// OP_STORE_V	8248	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	14540	4	0
// OP_LOAD_ENT	28	206	14619
// OP_LOAD_V	14619	130	14620
// OP_STORE_V	14620	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	14540	226	14623
// OP_STOREP_ENT	28	14623	0
// OP_ADDRESS	28	464	14624
// OP_STOREP_ENT	14540	14624	0
// OP_CALL0	2769	0	0
// OP_LOAD_ENT	28	206	14625
// OP_ADDRESS	14625	243	14626
// OP_LOAD_S	28	243	14627
// OP_STOREP_S	14627	14626	0
// OP_ADDRESS	28	254	14628
// OP_ADD_F	31	677	14629
// OP_STOREP_F	14629	14628	0
// OP_LOAD_ENT	28	464	14630
// OP_IFNOT	14630	8	0
// OP_LOAD_ENT	28	464	14631
// OP_ADDRESS	14631	173	14632
// OP_STOREP_FNC	5199	14632	0
// OP_LOAD_ENT	28	464	14633
// OP_ADDRESS	14633	175	14634
// OP_ADD_F	31	677	14635
// OP_STOREP_F	14635	14634	0
// OP_LOAD_ENT	28	206	14636
// OP_ADDRESS	14636	173	14637
// OP_STOREP_FNC	5206	14637	0
// OP_LOAD_ENT	28	206	14638
// OP_ADDRESS	14638	175	14639
// OP_ADD_F	31	677	14640
// OP_STOREP_F	14640	14639	0
// OP_LOAD_F	28	254	14641
// OP_GT	14641	31	14642
// OP_IFNOT	14642	32	0
// OP_LOAD_ENT	28	206	14643
// OP_LOAD_V	14643	142	14644
// OP_STORE_V	14644	14537	0
// OP_SUB_F	619	14537	14647
// OP_STORE_F	14647	14537	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	387	4	0
// OP_STORE_V	813	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_ENT	28	412	14648
// OP_STORE_V	14648	7	0
// OP_CALL2	549	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	827	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	14537	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	14538	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	547	0	0
// OP_ADDRESS	28	238	14649
// OP_STOREP_F	619	14649	0
// OP_ADDRESS	28	200	14650
// OP_ADDRESS	28	142	14653
// OP_STOREP_V	14537	14653	0
// OP_STOREP_V	14537	14650	0
// OP_CALL0	3023	0	0
// OP_CALL0	14391	0	0
// OP_LOAD_ENT	28	206	14656
// OP_LOAD_ENT	14656	464	14657
// OP_EQ_E	14657	30	14658
// OP_IFNOT	14658	8	0
// OP_ADDRESS	28	187	14659
// OP_LOAD_F	28	187	14660
// OP_LOAD_F	28	187	14661
// OP_BITAND	14661	307	14662
// OP_SUB_F	14660	14662	14663
// OP_STOREP_F	14663	14659	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	187	14664
// OP_LOAD_F	28	187	14665
// OP_BITOR	14665	307	14666
// OP_STOREP_F	14666	14664	0
// OP_DONE	0	0	0
void () PlayerPostThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    local vector v1;
    local entity e;
    
    if(self.view_ofs == '0 0 0')
    {
        return;
    }
    
    
    if(self.noise != "")
    {
        if((self.enemy.health > 0) && (self.enemy.owner == self))
        {
            sound(self.enemy, CHAN_VOICE, self.noise, 1, ATTN_NORM);
        }
        else
        {
            sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
        }
        
        self.noise = "";
    }
    
    
    if((self.impulse > 30) && (self.impulse < 100))
    {
        
        if(self.enemy.health > 0)
        {
            send_voicemsg(self.impulse - 30, self.enemy);
        }
        
        
        if((self.impulse > 60) && (self.impulse < 70))
        {
            comm_control(self.impulse - 61);
        }
        
        self.impulse == 0; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?
    }
    
    
    if(!self.oldenemy)
    {
        Create_chasecam();
    }
    
    
    if(self.deadflag)
    {
        self.missileview_on = 0;
        self.lastmiss = world;
        SetCameraPlace();
        return;
    }
    
    
    if(self.toyview == -1)
    {
        self.waterlevel = 0;
        self.watertype = -1;
        if(self.style == 1)
        {
            start_aircraft1();
        }
        else
        {
            if(self.style == 2)
            {
                start_aircraft2();
            }
            else
            {
                if(self.style == 3)
                {
                    start_aircraft3();
                }
                else
                {
                    if(self.style == 4)
                    {
                        start_aircraft4();
                    }
                    else
                    {
                        if(self.style == 5)
                        {
                            start_aircraft5();
                        }
                        else
                        {
                            if(self.style == 6)
                            {
                                start_helo1();
                            }
                            else
                            {
                                if(self.style == 7)
                                {
                                    self.movetype = MOVETYPE_WALK;
                                    start_groundveh1();
                                }
                                else
                                {
                                    if(self.style == 8)
                                    {
                                        self.movetype = MOVETYPE_WALK;
                                        start_groundveh2();
                                    }
                                    else
                                    {
                                        if(self.style == 9)
                                        {
                                            self.movetype = MOVETYPE_WALK;
                                            start_groundveh3();
                                        }
                                        else
                                        {
                                            if(self.style == 10)
                                            {
                                                start_groundveh4();
                                            }
                                            else
                                            {
                                                start_aircraft1();
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
        
        
        if((self.style < 6) && self.enemy.landed)
        {
            comm_control(1);
        }
        
        self.missileview_on = 0;
        self.lastmiss = world;
        
        if(!(cvar("temp1") & 2))
        {
            e = spawn();
            setmodel(e, "progs/s_target.spr");
            setorigin(e, self.enemy.origin);
            e.owner = self;
            self.trigger_field = e;
        }
        
        W_SetCurrentAmmo();
        self.enemy.ts = self.ts;
        self.spawn_finished = time + 1;
        
        if(self.trigger_field)
        {
            self.trigger_field.think = target_think;
            self.trigger_field.nextthink = time + 1;
        }
        
        self.enemy.think = vehicle_think;
        self.enemy.nextthink = time + 1;
    }
    
    
    if(self.spawn_finished > time)
    {
        v1 = self.enemy.angles;
        v1_x = 0 - v1_x;
        msg_entity = self;
        WriteByte(MSG_ONE, 5);
        WriteEntity(MSG_ONE, self.oldenemy);
        WriteByte(MSG_ONE, 10);
        WriteAngle(MSG_ONE, v1_x);
        WriteAngle(MSG_ONE, v1_y);
        WriteAngle(MSG_ONE, 0);
        self.toyview = 0;
        self.v_angle = self.angles = v1;
    }
    
    W_WeaponFrame();
    SetCameraPlace();
    if(self.enemy.trigger_field == world)
    {
        self.items = self.items - (self.items & IT_SHELLS);
    }
    else
    {
        self.items = self.items | IT_SHELLS;
    }
    
};

// ClientConnect
// function begins at statement 20943, parm_start=14667
// OP_LOAD_S	28	205	14670
// OP_STORE_V	14670	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14671	4	0
// OP_CALL1	517	0	0
// OP_IFNOT	13497	2	0
// OP_CALL0	13572	0	0
// OP_DONE	0	0	0
void () ClientConnect = 
{
    local float tmp;
    local float tmp2;
    local entity e;
    bprint(self.netname);
    bprint(" entered the game\n");
    
    if(intermission_running)
    {
        ExitIntermission();
    }
    
};

// ClientDisconnect
// function begins at statement 20951, parm_start=14672
// OP_IFNOT	391	2	0
// OP_RETURN	0	0	0
// OP_CALL0	86	0	0
// OP_LOAD_S	28	205	14672
// OP_STORE_V	14672	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14673	4	0
// OP_CALL1	517	0	0
// OP_LOAD_F	28	178	14674
// OP_STORE_V	14674	4	0
// OP_CALL1	520	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	14675	4	0
// OP_CALL1	517	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	12927	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	374	16	0
// OP_CALL5	502	0	0
// OP_CALL0	13666	0	0
// OP_DONE	0	0	0
void () ClientDisconnect = 
{
    
    if(gameover)
    {
        return;
    }
    
    ClientKill();
    bprint(self.netname);
    bprint(" left the game with ");
    bprint(ftos(self.frags));
    bprint(" frags\n");
    sound(self, CHAN_BODY, "player/tornoff2.wav", 1, ATTN_NONE);
    set_suicide_frame();
};

