void () player_pain;
void () player_stand1;
void (vector org, entity death_owner) spawn_tdeath;
float modelindex_eyes;
float modelindex_player;
float intermission_running;
float intermission_exittime;
// info_intermission
// function begins at statement 6044, parm_start=4417
// OP_DONE	0	0	0
void () info_intermission = 
{
};

// SetChangeParms
// function begins at statement 6045, parm_start=4417
// OP_LOAD_F	28	152	4417
// OP_LE	4417	650	4418
// OP_IFNOT	4418	3	0
// OP_CALL0	90	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	162	4419
// OP_LOAD_F	28	162	4420
// OP_LOAD_F	28	162	4421
// OP_BITOR	271	272	4422
// OP_BITOR	4422	273	4423
// OP_BITOR	4423	274	4424
// OP_BITOR	4424	275	4425
// OP_BITOR	4425	276	4426
// OP_BITAND	4421	4426	4427
// OP_SUB_F	4420	4427	4428
// OP_STOREP_F	4428	4419	0
// OP_LOAD_F	28	152	4429
// OP_GT	4429	2165	4430
// OP_IFNOT	4430	3	0
// OP_ADDRESS	28	152	4431
// OP_STOREP_F	2165	4431	0
// OP_LOAD_F	28	152	4432
// OP_LT	4432	2509	4433
// OP_IFNOT	4433	3	0
// OP_ADDRESS	28	152	4434
// OP_STOREP_F	2509	4434	0
// OP_LOAD_F	28	162	4435
// OP_STORE_F	4435	43	0
// OP_LOAD_F	28	152	4436
// OP_STORE_F	4436	44	0
// OP_LOAD_F	28	188	4437
// OP_STORE_F	4437	45	0
// OP_LOAD_F	28	158	4438
// OP_LT	4438	2171	4439
// OP_IFNOT	4439	3	0
// OP_STORE_F	2171	46	0
// OP_GOTO	3	0	0
// OP_LOAD_F	28	158	4440
// OP_STORE_F	4440	46	0
// OP_LOAD_F	28	159	4441
// OP_STORE_F	4441	47	0
// OP_LOAD_F	28	160	4442
// OP_STORE_F	4442	48	0
// OP_LOAD_F	28	161	4443
// OP_STORE_F	4443	49	0
// OP_LOAD_F	28	154	4444
// OP_STORE_F	4444	50	0
// OP_LOAD_F	28	187	4445
// OP_MUL_F	4445	2165	4446
// OP_STORE_F	4446	51	0
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
    if(self.ammo_shells < 25)
    {
        parm4 = 25;
    }
    else
    {
        parm4 = self.ammo_shells;
    }
    
    parm5 = self.ammo_nails;
    parm6 = self.ammo_rockets;
    parm7 = self.ammo_cells;
    parm8 = self.weapon;
    parm9 = self.armortype * 100;
};

// SetNewParms
// function begins at statement 6096, parm_start=4447
// OP_BITOR	255	254	4447
// OP_STORE_F	4447	43	0
// OP_STORE_F	2165	44	0
// OP_STORE_F	650	45	0
// OP_STORE_F	2171	46	0
// OP_STORE_F	650	47	0
// OP_STORE_F	650	48	0
// OP_STORE_F	650	49	0
// OP_STORE_F	708	50	0
// OP_STORE_F	650	51	0
// OP_DONE	0	0	0
void () SetNewParms = 
{
    parm1 = IT_SHOTGUN | IT_AXE;
    parm2 = 100;
    parm3 = 0;
    parm4 = 25;
    parm5 = 0;
    parm6 = 0;
    parm7 = 0;
    parm8 = 1;
    parm9 = 0;
};

// DecodeLevelParms
// function begins at statement 6107, parm_start=4449
// OP_IFNOT	38	5	0
// OP_LOAD_S	30	130	4449
// OP_EQ_S	4449	4203	4450
// OP_IFNOT	4450	2	0
// OP_CALL0	90	0	0
// OP_ADDRESS	28	162	4451
// OP_STOREP_F	43	4451	0
// OP_ADDRESS	28	152	4452
// OP_STOREP_F	44	4452	0
// OP_ADDRESS	28	188	4453
// OP_STOREP_F	45	4453	0
// OP_ADDRESS	28	158	4454
// OP_STOREP_F	46	4454	0
// OP_ADDRESS	28	159	4455
// OP_STOREP_F	47	4455	0
// OP_ADDRESS	28	160	4456
// OP_STOREP_F	48	4456	0
// OP_ADDRESS	28	161	4457
// OP_STOREP_F	49	4457	0
// OP_ADDRESS	28	154	4458
// OP_STOREP_F	50	4458	0
// OP_ADDRESS	28	187	4459
// OP_MUL_F	51	3001	4460
// OP_STOREP_F	4460	4459	0
// OP_DONE	0	0	0
void () DecodeLevelParms = 
{
    
    if(serverflags)
    {
        
        if(world.model == "maps/start.bsp")
        {
            SetNewParms();
        }
        
    }
    
    self.items = parm1;
    self.health = parm2;
    self.armorvalue = parm3;
    self.ammo_shells = parm4;
    self.ammo_nails = parm5;
    self.ammo_rockets = parm6;
    self.ammo_cells = parm7;
    self.weapon = parm8;
    self.armortype = parm9 * 0.01;
};

// FindIntermission
// function begins at statement 6132, parm_start=4462
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4464	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4462	0
// OP_IFNOT	4462	22	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	1835	4465
// OP_STORE_F	4465	4463	0
// OP_GT	4463	708	4466
// OP_IFNOT	4466	16	0
// OP_STORE_V	4462	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4464	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4462	0
// OP_NOT_ENT	4462	0	4467
// OP_IFNOT	4467	6	0
// OP_STORE_V	4462	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4464	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4462	0
// OP_SUB_F	4463	708	4468
// OP_STORE_F	4468	4463	0
// OP_GOTO	-16	0	0
// OP_RETURN	4462	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4469	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4462	0
// OP_IFNOT	4462	2	0
// OP_RETURN	4462	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4470	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4462	0
// OP_IFNOT	4462	2	0
// OP_RETURN	4462	0	0
// OP_STORE_V	4471	4	0
// OP_CALL1	457	0	0
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
// function begins at statement 6176, parm_start=4474
// OP_STORE_V	4474	4	0
// OP_CALL1	488	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	34	4	0
// OP_CALL1	505	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	4472	4	0
// OP_CALL1	505	0	0
// OP_DONE	0	0	0
void () GotoNextMap = 
{
    if(cvar("samelevel"))
    {
        changelevel(mapname);
    }
    else
    {
        changelevel(nextmap);
    }
    
};

// ExitIntermission
// function begins at statement 6185, parm_start=4476
// OP_IFNOT	35	3	0
// OP_CALL0	4473	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	31	708	4476
// OP_STORE_F	4476	4415	0
// OP_ADD_F	4414	708	4477
// OP_STORE_F	4477	4414	0
// OP_EQ_F	4414	929	4478
// OP_IFNOT	4478	92	0
// OP_LOAD_S	30	130	4479
// OP_EQ_S	4479	4210	4480
// OP_IFNOT	4480	29	0
// OP_STORE_V	340	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	929	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	4481	4	0
// OP_CALL1	488	0	0
// OP_NOT_F	1	0	4482
// OP_IFNOT	4482	8	0
// OP_STORE_V	340	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	4483	7	0
// OP_CALL2	500	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	4484	7	0
// OP_CALL2	500	0	0
// OP_RETURN	0	0	0
// OP_GOTO	60	0	0
// OP_LOAD_S	30	130	4485
// OP_EQ_S	4485	4217	4486
// OP_IFNOT	4486	18	0
// OP_STORE_V	340	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	929	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	4487	7	0
// OP_CALL2	500	0	0
// OP_RETURN	0	0	0
// OP_GOTO	40	0	0
// OP_LOAD_S	30	130	4488
// OP_EQ_S	4488	4224	4489
// OP_IFNOT	4489	18	0
// OP_STORE_V	340	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	929	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	4490	7	0
// OP_CALL2	500	0	0
// OP_RETURN	0	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	30	130	4491
// OP_EQ_S	4491	4232	4492
// OP_IFNOT	4492	17	0
// OP_STORE_V	340	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	929	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	4493	7	0
// OP_CALL2	500	0	0
// OP_RETURN	0	0	0
// OP_CALL0	4473	0	0
// OP_EQ_F	4414	819	4494
// OP_IFNOT	4494	19	0
// OP_STORE_V	4481	4	0
// OP_CALL1	488	0	0
// OP_NOT_F	1	0	4495
// OP_IFNOT	4495	5	0
// OP_STORE_V	340	4	0
// OP_STORE_V	308	7	0
// OP_CALL2	494	0	0
// OP_RETURN	0	0	0
// OP_BITAND	38	2157	4496
// OP_EQ_F	4496	2157	4497
// OP_IFNOT	4497	8	0
// OP_STORE_V	340	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	4498	7	0
// OP_CALL2	500	0	0
// OP_RETURN	0	0	0
// OP_CALL0	4473	0	0
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
// function begins at statement 6307, parm_start=4500
// OP_LT	31	4415	4500
// OP_IFNOT	4500	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	4501
// OP_NOT_F	4501	0	4502
// OP_LOAD_F	28	171	4503
// OP_NOT_F	4503	0	4504
// OP_AND	4502	4504	4505
// OP_LOAD_F	28	172	4506
// OP_NOT_F	4506	0	4507
// OP_AND	4505	4507	4508
// OP_IFNOT	4508	2	0
// OP_RETURN	0	0	0
// OP_CALL0	4475	0	0
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
// function begins at statement 6322, parm_start=4510
// OP_STORE_F	708	4414	0
// OP_IFNOT	35	4	0
// OP_ADD_F	31	1660	4511
// OP_STORE_F	4511	4415	0
// OP_GOTO	3	0	0
// OP_ADD_F	31	929	4512
// OP_STORE_F	4512	4415	0
// OP_STORE_V	340	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	494	0	0
// OP_CALL0	4461	0	0
// OP_STORE_ENT	1	4510	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	797	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	29	0
// OP_NE_E	29	30	4513
// OP_IFNOT	4513	31	0
// OP_ADDRESS	29	166	4514
// OP_STOREP_V	638	4514	0
// OP_ADDRESS	29	117	4517
// OP_ADDRESS	29	175	4520
// OP_LOAD_V	4510	396	4523
// OP_STOREP_V	4523	4520	0
// OP_STOREP_V	4523	4517	0
// OP_ADDRESS	29	174	4526
// OP_STOREP_F	214	4526	0
// OP_ADDRESS	29	150	4527
// OP_ADD_F	31	1727	4528
// OP_STOREP_F	4528	4527	0
// OP_ADDRESS	29	163	4529
// OP_STOREP_F	251	4529	0
// OP_ADDRESS	29	104	4530
// OP_STOREP_F	238	4530	0
// OP_ADDRESS	29	103	4531
// OP_STOREP_F	228	4531	0
// OP_ADDRESS	29	93	4532
// OP_STOREP_F	650	4532	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	4510	105	4533
// OP_STORE_V	4533	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	797	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	29	0
// OP_GOTO	-31	0	0
// OP_STORE_V	340	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	494	0	0
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
        other.view_ofs = '0 0 0';
        other.angles = other.v_angle = pos.mangle;
        other.fixangle = TRUE;
        other.nextthink = time + 0.5;
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
// function begins at statement 6381, parm_start=4537
// OP_LOAD_S	29	129	4538
// OP_NE_S	4538	797	4539
// OP_IFNOT	4539	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4540	4	0
// OP_CALL1	488	0	0
// OP_IFNOT	1	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	4541	13	0
// OP_CALL4	521	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	180	4542
// OP_STORE_V	4542	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	4543	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	28	352	4544
// OP_STORE_S	4544	4472	0
// OP_CALL0	519	0	0
// OP_LOAD_F	28	195	4545
// OP_BITAND	4545	708	4546
// OP_EQ_F	35	650	4547
// OP_AND	4546	4547	4548
// OP_IFNOT	4548	3	0
// OP_CALL0	4473	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	4549
// OP_STOREP_FNC	518	4549	0
// OP_ADDRESS	28	148	4550
// OP_STOREP_FNC	4509	4550	0
// OP_ADDRESS	28	150	4551
// OP_ADD_F	31	686	4552
// OP_STOREP_F	4552	4551	0
// OP_DONE	0	0	0
void () changelevel_touch = 
{
    local entity pos;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(cvar("noexit"))
    {
        T_Damage(other, self, self, 50000);
        return;
    }
    
    bprint(other.netname);
    bprint(" exited the level\n");
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
// function begins at statement 6417, parm_start=4554
// OP_LOAD_S	28	352	4554
// OP_NOT_S	4554	0	4555
// OP_IFNOT	4555	3	0
// OP_STORE_V	4556	4	0
// OP_CALL1	457	0	0
// OP_CALL0	641	0	0
// OP_ADDRESS	28	146	4557
// OP_STOREP_FNC	4536	4557	0
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
// function begins at statement 6426, parm_start=4560
// OP_IFNOT	36	7	0
// OP_STORE_V	28	4	0
// OP_CALL1	4374	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	512	0	0
// OP_CALL0	88	0	0
// OP_GOTO	9	0	0
// OP_IFNOT	35	6	0
// OP_STORE_V	28	4	0
// OP_CALL1	4374	0	0
// OP_CALL0	90	0	0
// OP_CALL0	88	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	4560	4	0
// OP_CALL1	489	0	0
// OP_DONE	0	0	0
void () respawn = 
{
    if(coop)
    {
        CopyToBodyQue(self);
        setspawnparms(self);
        PutClientInServer();
    }
    else
    {
        if(deathmatch)
        {
            CopyToBodyQue(self);
            SetNewParms();
            PutClientInServer();
        }
        else
        {
            localcmd("restart\n");
        }
        
    }
    
};

// ClientKill
// function begins at statement 6442, parm_start=4561
// OP_LOAD_S	28	180	4561
// OP_STORE_V	4561	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	4562	4	0
// OP_CALL1	469	0	0
// OP_CALL0	4558	0	0
// OP_ADDRESS	28	93	4563
// OP_STOREP_F	4413	4563	0
// OP_ADDRESS	28	153	4564
// OP_LOAD_F	28	153	4565
// OP_SUB_F	4565	929	4566
// OP_STOREP_F	4566	4564	0
// OP_CALL0	4559	0	0
// OP_DONE	0	0	0
void () ClientKill = 
{
    bprint(self.netname);
    bprint(" suicides\n");
    set_suicide_frame();
    self.modelindex = modelindex_player;
    self.frags = self.frags - 2;
    respawn();
};

// CheckSpawnPoint
// function begins at statement 6456, parm_start=4568
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (vector v) CheckSpawnPoint = 
{
    return FALSE;
};

// SelectSpawnPoint
// function begins at statement 6458, parm_start=4572
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4469	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4572	0
// OP_NOT_ENT	4572	0	4573
// OP_IFNOT	4573	3	0
// OP_STORE_V	4574	4	0
// OP_CALL1	456	0	0
// OP_RETURN	4572	0	0
// OP_DONE	0	0	0
entity () SelectSpawnPoint = 
{
    local entity spot;
    spot = find(world, classname, "info_player_start");
    
    if(!spot)
    {
        error("PutClientInServer: no info_player_start on level");
    }
    
    return spot;
};

void () PlayerDie;
// PutClientInServer
// function begins at statement 6469, parm_start=4576
// OP_ADDRESS	28	129	4579
// OP_STOREP_S	797	4579	0
// OP_ADDRESS	28	152	4580
// OP_STOREP_F	2165	4580	0
// OP_ADDRESS	28	163	4581
// OP_STOREP_F	251	4581	0
// OP_ADDRESS	28	104	4582
// OP_STOREP_F	238	4582	0
// OP_ADDRESS	28	103	4583
// OP_STOREP_F	231	4583	0
// OP_ADDRESS	28	389	4584
// OP_STOREP_F	650	4584	0
// OP_ADDRESS	28	185	4585
// OP_STOREP_F	2165	4585	0
// OP_ADDRESS	28	182	4586
// OP_BITOR	217	216	4587
// OP_BITOR	4587	215	4588
// OP_BITOR	4588	220	4589
// OP_STOREP_F	4589	4586	0
// OP_ADDRESS	28	392	4590
// OP_ADD_F	31	2532	4591
// OP_STOREP_F	4591	4590	0
// OP_ADDRESS	28	421	4592
// OP_STOREP_F	929	4592	0
// OP_ADDRESS	28	378	4593
// OP_STOREP_F	650	4593	0
// OP_ADDRESS	28	379	4594
// OP_STOREP_F	650	4594	0
// OP_ADDRESS	28	377	4595
// OP_STOREP_F	650	4595	0
// OP_ADDRESS	28	376	4596
// OP_STOREP_F	650	4596	0
// OP_ADDRESS	28	133	4597
// OP_STOREP_F	650	4597	0
// OP_ADDRESS	28	380	4598
// OP_STOREP_F	650	4598	0
// OP_CALL0	4448	0	0
// OP_CALL0	2080	0	0
// OP_ADDRESS	28	374	4599
// OP_STOREP_F	31	4599	0
// OP_ADDRESS	28	362	4600
// OP_STOREP_FNC	4409	4600	0
// OP_ADDRESS	28	363	4601
// OP_STOREP_FNC	4575	4601	0
// OP_ADDRESS	28	165	4602
// OP_STOREP_F	247	4602	0
// OP_ADDRESS	28	418	4603
// OP_STOREP_F	650	4603	0
// OP_CALL0	4571	0	0
// OP_STORE_ENT	1	4576	0
// OP_ADDRESS	28	105	4604
// OP_LOAD_V	4576	105	4607
// OP_ADD_V	4607	613	4610
// OP_STOREP_V	4610	4604	0
// OP_ADDRESS	28	117	4613
// OP_LOAD_V	4576	117	4616
// OP_STOREP_V	4616	4613	0
// OP_ADDRESS	28	174	4619
// OP_STOREP_F	214	4619	0
// OP_STORE_V	28	4	0
// OP_STORE_V	290	7	0
// OP_STORE_V	293	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	166	4620
// OP_STOREP_V	4623	4620	0
// OP_CALL0	4410	0	0
// OP_OR	35	36	4626
// OP_IFNOT	4626	9	0
// OP_LOAD_V	28	117	4627
// OP_STORE_V	4627	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	4630
// OP_MUL_VF	59	1017	4633
// OP_ADD_V	4630	4633	4636
// OP_STORE_V	4636	4	0
// OP_CALL1	591	0	0
// OP_LOAD_V	28	105	4639
// OP_STORE_V	4639	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	4411	0	0
// OP_EQ_E	547	30	4642
// OP_IFNOT	4642	7	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	547	0
// OP_STORE_V	547	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_EQ_E	546	30	4643
// OP_IFNOT	4643	18	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	546	0
// OP_ADDRESS	546	129	4644
// OP_STOREP_S	4645	4644	0
// OP_ADDRESS	546	201	4646
// OP_STOREP_ENT	28	4646	0
// OP_STORE_V	546	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	546	4	0
// OP_STORE_V	4331	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	546	4	0
// OP_LOAD_V	28	105	4647
// OP_STORE_V	4647	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	4113	0	0
// OP_STORE_V	4347	4	0
// OP_CALL1	488	0	0
// OP_EQ_F	1	650	4650
// OP_STORE_F	4650	545	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4332	7	0
// OP_CALL2	450	0	0
// OP_LOAD_F	28	93	4651
// OP_STORE_F	4651	4412	0
// OP_ADDRESS	28	132	4652
// OP_STOREP_F	708	4652	0
// OP_LOAD_F	28	93	4653
// OP_STORE_F	4653	4413	0
// OP_EQ_F	545	708	4654
// OP_IFNOT	4654	80	0
// OP_STORE_ENT	4576	531	0
// OP_ADDRESS	4576	201	4655
// OP_STOREP_ENT	28	4655	0
// OP_ADDRESS	4576	175	4656
// OP_LOAD_V	4576	117	4659
// OP_STOREP_V	4659	4656	0
// OP_STORE_V	4576	4	0
// OP_CALL1	579	0	0
// OP_ADDRESS	4576	166	4662
// OP_STOREP_V	4665	4662	0
// OP_STORE_V	4576	4	0
// OP_STORE_V	4332	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	4576	132	4668
// OP_STOREP_F	708	4668	0
// OP_STORE_V	4576	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4469	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4576	0
// OP_EQ_E	4576	30	4669
// OP_IFNOT	4669	6	0
// OP_STORE_V	4670	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	4671	4	0
// OP_CALL1	489	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	4576	532	0
// OP_ADDRESS	4576	201	4672
// OP_STOREP_ENT	28	4672	0
// OP_ADDRESS	4576	175	4673
// OP_LOAD_V	4576	117	4676
// OP_STOREP_V	4676	4673	0
// OP_ADDRESS	531	555	4679
// OP_STOREP_ENT	532	4679	0
// OP_ADDRESS	532	555	4680
// OP_STOREP_ENT	531	4680	0
// OP_STORE_V	4576	4	0
// OP_CALL1	579	0	0
// OP_ADDRESS	4576	166	4681
// OP_STOREP_V	4665	4681	0
// OP_STORE_V	4576	4	0
// OP_STORE_V	4332	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	4576	132	4684
// OP_STOREP_F	708	4684	0
// OP_STORE_V	4685	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	541	0
// OP_STORE_ENT	532	524	0
// OP_ADDRESS	28	105	4686
// OP_LOAD_V	4576	105	4689
// OP_ADD_V	4689	613	4692
// OP_STOREP_V	4692	4686	0
// OP_ADDRESS	28	117	4695
// OP_LOAD_V	4576	117	4698
// OP_STOREP_V	4698	4695	0
// OP_ADDRESS	28	174	4701
// OP_STOREP_F	214	4701	0
// OP_ADDRESS	524	566	4702
// OP_STOREP_F	31	4702	0
// OP_STORE_ENT	30	526	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4703	7	0
// OP_CALL2	600	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	601	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	4704
// OP_IFNOT	4704	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4705	7	0
// OP_CALL2	601	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4706	7	0
// OP_CALL2	601	0	0
// OP_GOTO	80	0	0
// OP_CALL0	576	0	0
// OP_IFNOT	1	59	0
// OP_STORE_ENT	28	532	0
// OP_STORE_V	4685	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	541	0
// OP_ADDRESS	28	184	4707
// OP_STOREP_F	929	4707	0
// OP_ADDRESS	28	550	4708
// OP_LOAD_S	4576	550	4709
// OP_STOREP_S	4709	4708	0
// OP_STORE_V	4576	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	579	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4710	7	0
// OP_CALL2	467	0	0
// OP_EQ_F	545	650	4711
// OP_IFNOT	4711	8	0
// OP_ADDRESS	533	150	4712
// OP_STOREP_F	650	4712	0
// OP_ADDRESS	28	555	4713
// OP_STOREP_ENT	531	4713	0
// OP_ADDRESS	531	555	4714
// OP_STOREP_ENT	28	4714	0
// OP_GOTO	4	0	0
// OP_STORE_ENT	28	524	0
// OP_ADDRESS	28	555	4715
// OP_STOREP_ENT	28	4715	0
// OP_EQ_F	545	650	4716
// OP_IFNOT	4716	27	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	4717
// OP_IFNOT	4717	3	0
// OP_STORE_ENT	28	524	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28	555	4718
// OP_STORE_ENT	4718	524	0
// OP_ADDRESS	524	566	4719
// OP_STOREP_F	31	4719	0
// OP_STORE_ENT	30	526	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4720	7	0
// OP_CALL2	600	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	601	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	4721
// OP_IFNOT	4721	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4705	7	0
// OP_CALL2	601	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4706	7	0
// OP_CALL2	601	0	0
// OP_STORE_F	650	525	0
// OP_GOTO	20	0	0
// OP_STORE_ENT	28	531	0
// OP_ADDRESS	28	184	4722
// OP_STOREP_F	708	4722	0
// OP_ADDRESS	28	550	4723
// OP_LOAD_S	4576	550	4724
// OP_STOREP_S	4724	4723	0
// OP_STORE_V	4576	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	579	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	533	0
// OP_STORE_S	4725	534	0
// OP_STORE_ENT	28	535	0
// OP_ADDRESS	533	148	4726
// OP_STOREP_FNC	588	4726	0
// OP_ADDRESS	533	150	4727
// OP_ADD_F	31	686	4728
// OP_STOREP_F	4728	4727	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	4577	0
// OP_ADDRESS	4577	148	4729
// OP_STOREP_FNC	589	4729	0
// OP_ADDRESS	4577	150	4730
// OP_ADD_F	31	708	4731
// OP_STOREP_F	4731	4730	0
// OP_ADDRESS	4577	201	4732
// OP_STOREP_ENT	28	4732	0
// OP_DONE	0	0	0
void () PutClientInServer = 
{
    local entity spot;
    local entity etemp;
    local string str;
    self.classname = "player";
    self.health = 100;
    self.takedamage = DAMAGE_NO;
    self.solid = SOLID_NOT;
    self.movetype = MOVETYPE_FLY;
    self.show_hostile = 0;
    self.max_health = 100;
    self.flags = ((FL_CLIENT | FL_SWIM) | FL_FLY) | FL_GODMODE;
    self.air_finished = time + 12;
    self.dmg = 2;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.effects = 0;
    self.invincible_time = 0;
    DecodeLevelParms();
    W_SetCurrentAmmo();
    self.attack_finished = time;
    self.th_pain = player_pain;
    self.th_die = PlayerDie;
    self.deadflag = DEAD_NO;
    self.pausetime = 0;
    spot = SelectSpawnPoint();
    self.origin = spot.origin + '0 0 1';
    self.angles = spot.angles;
    self.fixangle = TRUE;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.view_ofs = '0 0 2';
    player_stand1();
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        spawn_tfog(self.origin + (v_forward * 20));
    }
    
    spawn_tdeath(self.origin, self);
    
    if(dest_ent == world)
    {
        dest_ent = spawn();
        setsize(dest_ent, '0 0 0', '0 0 0');
    }
    
    
    if(light_ent == world)
    {
        light_ent = spawn();
        light_ent.classname = "chess_light";
        light_ent.owner = self;
        setsize(light_ent, '0 0 0', '0 0 0');
        setmodel(light_ent, "progs/null.mdl");
        setorigin(light_ent, self.origin);
    }
    
    LaserTargeterToggle(self);
    single_player = cvar("teamplay") == 0;
    setmodel(self, "progs/headcam.mdl");
    modelindex_eyes = self.modelindex;
    self.skin = 1;
    modelindex_player = self.modelindex;
    if(single_player == 1)
    {
        player1 = spot;
        spot.owner = self;
        spot.v_angle = spot.angles;
        AllocateMonsters(spot);
        spot.view_ofs = '0 0 22';
        setmodel(spot, "progs/headcam.mdl");
        spot.skin = 1;
        spot = find(spot, classname, "info_player_start");
        
        if(spot == world)
        {
            dprint("Only one info_player_start found\n");
            localcmd("disconnect\n");
            return;
        }
        
        player2 = spot;
        spot.owner = self;
        spot.v_angle = spot.angles;
        player1.opponent = player2;
        player2.opponent = player1;
        AllocateMonsters(spot);
        spot.view_ofs = '0 0 22';
        setmodel(spot, "progs/headcam.mdl");
        spot.skin = 1;
        time_per_turn = cvar("timelimit");
        current_turn = player2;
        self.origin = spot.origin + '0 0 1';
        self.angles = spot.angles;
        self.fixangle = TRUE;
        current_turn.turn_starttime = time;
        current_selected = world;
        mycentreprint(current_turn, "Current Turn: White");
        mystuffcmd(current_turn, "bf\n");
        if(random() < 0.5)
        {
            mystuffcmd(current_turn, "play buttons/switch02.wav\n");
        }
        else
        {
            mystuffcmd(current_turn, "play buttons/switch04.wav\n");
        }
        
    }
    else
    {
        if(TwoPlayersInGame())
        {
            player2 = self;
            time_per_turn = cvar("timelimit");
            self.team = 2;
            self.chess_team = spot.chess_team;
            remove(spot);
            AllocateMonsters(self);
            stuffcmd(self, "crosshair 1\n");
            if(single_player == 0)
            {
                message_entity.nextthink = 0;
                self.opponent = player1;
                player1.opponent = self;
            }
            else
            {
                current_turn = self;
                self.opponent = self;
            }
            
            
            if(single_player == 0)
            {
                if(random() < 0.5)
                {
                    current_turn = self;
                }
                else
                {
                    current_turn = self.opponent;
                }
                
                current_turn.turn_starttime = time;
                current_selected = world;
                mycentreprint(current_turn, "Your turn");
                mystuffcmd(current_turn, "bf\n");
                if(random() < 0.5)
                {
                    mystuffcmd(current_turn, "play buttons/switch02.wav\n");
                }
                else
                {
                    mystuffcmd(current_turn, "play buttons/switch04.wav\n");
                }
                
            }
            
            action_flag = 0;
        }
        else
        {
            player1 = self;
            self.team = 1;
            self.chess_team = spot.chess_team;
            remove(spot);
            AllocateMonsters(self);
            message_entity = spawn();
            message_text = "Waiting for other player..";
            message_target = self;
            message_entity.think = message_think;
            message_entity.nextthink = time + 0.1;
        }
        
    }
    
    etemp = spawn();
    etemp.think = welcome_mesg;
    etemp.nextthink = time + 1;
    etemp.owner = self;
};

// info_player_start
// function begins at statement 6761, parm_start=4733
// OP_DONE	0	0	0
void () info_player_start = 
{
};

// info_player_start2
// function begins at statement 6762, parm_start=4734
// OP_DONE	0	0	0
void () info_player_start2 = 
{
};

// testplayerstart
// function begins at statement 6763, parm_start=4735
// OP_DONE	0	0	0
void () testplayerstart = 
{
};

// info_player_deathmatch
// function begins at statement 6764, parm_start=4736
// OP_DONE	0	0	0
void () info_player_deathmatch = 
{
};

// info_player_coop
// function begins at statement 6765, parm_start=4737
// OP_DONE	0	0	0
void () info_player_coop = 
{
};

// NextLevel
// function begins at statement 6766, parm_start=4738
// OP_EQ_S	34	4739	4740
// OP_IFNOT	4740	43	0
// OP_STORE_V	4481	4	0
// OP_CALL1	488	0	0
// OP_NOT_F	1	0	4741
// OP_IFNOT	4741	3	0
// OP_STORE_S	4742	34	0
// OP_GOTO	32	0	0
// OP_BITAND	38	708	4743
// OP_NOT_F	4743	0	4744
// OP_IFNOT	4744	5	0
// OP_STORE_S	4742	34	0
// OP_ADD_F	38	708	4745
// OP_STORE_F	4745	38	0
// OP_GOTO	25	0	0
// OP_BITAND	38	929	4746
// OP_NOT_F	4746	0	4747
// OP_IFNOT	4747	5	0
// OP_STORE_S	4748	34	0
// OP_ADD_F	38	929	4749
// OP_STORE_F	4749	38	0
// OP_GOTO	18	0	0
// OP_BITAND	38	1835	4750
// OP_NOT_F	4750	0	4751
// OP_IFNOT	4751	5	0
// OP_STORE_S	4752	34	0
// OP_ADD_F	38	1835	4753
// OP_STORE_F	4753	38	0
// OP_GOTO	11	0	0
// OP_BITAND	38	1502	4754
// OP_NOT_F	4754	0	4755
// OP_IFNOT	4755	5	0
// OP_STORE_S	4756	34	0
// OP_ADD_F	38	1502	4757
// OP_STORE_F	4757	38	0
// OP_GOTO	4	0	0
// OP_STORE_S	4739	34	0
// OP_SUB_F	38	2157	4758
// OP_STORE_F	4758	38	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	4738	0
// OP_ADDRESS	4738	352	4759
// OP_STOREP_S	34	4759	0
// OP_GOTO	13	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4760	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	4738	0
// OP_NOT_ENT	4738	0	4761
// OP_IFNOT	4761	6	0
// OP_STORE_S	4739	34	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	4738	0
// OP_ADDRESS	4738	352	4762
// OP_STOREP_S	34	4762	0
// OP_LOAD_S	4738	352	4763
// OP_STORE_S	4763	4472	0
// OP_STORE_F	214	343	0
// OP_LOAD_F	4738	150	4764
// OP_LT	4764	31	4765
// OP_IFNOT	4765	6	0
// OP_ADDRESS	4738	148	4766
// OP_STOREP_FNC	4509	4766	0
// OP_ADDRESS	4738	150	4767
// OP_ADD_F	31	686	4768
// OP_STOREP_F	4768	4767	0
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
                serverflags = serverflags + 1;
            }
            else
            {
                if(!(serverflags & 2))
                {
                    mapname = "e2m1";
                    serverflags = serverflags + 2;
                }
                else
                {
                    if(!(serverflags & 4))
                    {
                        mapname = "e3m1";
                        serverflags = serverflags + 4;
                    }
                    else
                    {
                        if(!(serverflags & 8))
                        {
                            mapname = "e4m1";
                            serverflags = serverflags + 8;
                        }
                        else
                        {
                            mapname = "start";
                            serverflags = serverflags - 15;
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
    
    nextmap = o.map;
    gameover = TRUE;
    
    if(o.nextthink < time)
    {
        o.think = execute_changelevel;
        o.nextthink = time + 0.1;
    }
    
};

// CheckRules
// function begins at statement 6834, parm_start=4770
// OP_IFNOT	343	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4685	4	0
// OP_CALL1	488	0	0
// OP_MUL_F	1	1035	4772
// OP_STORE_F	4772	4770	0
// OP_STORE_V	4773	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	4771	0
// OP_GE	31	4770	4774
// OP_AND	4770	4774	4775
// OP_IFNOT	4775	3	0
// OP_CALL0	4737	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	153	4776
// OP_GE	4776	4771	4777
// OP_AND	4771	4777	4778
// OP_IFNOT	4778	3	0
// OP_CALL0	4737	0	0
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
// function begins at statement 6855, parm_start=4780
// OP_LOAD_F	28	182	4782
// OP_BITAND	4782	223	4783
// OP_IFNOT	4783	18	0
// OP_LOAD_V	28	113	4784
// OP_STORE_V	4784	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	4781	0
// OP_SUB_F	4781	1017	4787
// OP_STORE_F	4787	4781	0
// OP_LE	4781	650	4788
// OP_IFNOT	4788	4	0
// OP_ADDRESS	28	113	4789
// OP_STOREP_V	638	4789	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	113	4792
// OP_LOAD_V	28	113	4795
// OP_STORE_V	4795	4	0
// OP_CALL1	455	0	0
// OP_MUL_FV	4781	1	4798
// OP_STOREP_V	4798	4792	0
// OP_LOAD_F	28	165	4801
// OP_EQ_F	4801	249	4802
// OP_IFNOT	4802	11	0
// OP_LOAD_F	28	172	4803
// OP_LOAD_F	28	171	4804
// OP_OR	4803	4804	4805
// OP_LOAD_F	28	170	4806
// OP_OR	4805	4806	4807
// OP_IFNOT	4807	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	165	4808
// OP_STOREP_F	250	4808	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	172	4809
// OP_NOT_F	4809	0	4810
// OP_LOAD_F	28	171	4811
// OP_NOT_F	4811	0	4812
// OP_AND	4810	4812	4813
// OP_LOAD_F	28	170	4814
// OP_NOT_F	4814	0	4815
// OP_AND	4813	4815	4816
// OP_IFNOT	4816	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	170	4817
// OP_STOREP_F	650	4817	0
// OP_ADDRESS	28	171	4818
// OP_STOREP_F	650	4818	0
// OP_ADDRESS	28	172	4819
// OP_STOREP_F	650	4819	0
// OP_CALL0	4559	0	0
// OP_DONE	0	0	0
void () PlayerDeathThink = 
{
    local entity old_self;
    local float forward;
    
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
        
        if((self.button2 || self.button1) || self.button0)
        {
            return;
        }
        
        self.deadflag = DEAD_RESPAWNABLE;
        return;
    }
    
    
    if((!self.button2 && !self.button1) && !self.button0)
    {
        return;
    }
    
    self.button0 = 0;
    self.button1 = 0;
    self.button2 = 0;
    respawn();
};

// PlayerJump
// function begins at statement 6906, parm_start=4821
// OP_LOAD_F	28	182	4827
// OP_BITAND	4827	225	4828
// OP_IFNOT	4828	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	4829
// OP_GE	4829	929	4830
// OP_IFNOT	4830	38	0
// OP_LOAD_F	28	190	4831
// OP_EQ_F	4831	279	4832
// OP_IFNOT	4832	4	0
// OP_ADDRESS	28	116	4833
// OP_STOREP_F	2165	4833	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	190	4834
// OP_EQ_F	4834	280	4835
// OP_IFNOT	4835	4	0
// OP_ADDRESS	28	116	4836
// OP_STOREP_F	874	4836	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	116	4837
// OP_STOREP_F	2509	4837	0
// OP_LOAD_F	28	391	4838
// OP_LT	4838	31	4839
// OP_IFNOT	4839	20	0
// OP_ADDRESS	28	391	4840
// OP_ADD_F	31	708	4841
// OP_STOREP_F	4841	4840	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	4842
// OP_IFNOT	4842	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4286	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4287	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	4843
// OP_BITAND	4843	223	4844
// OP_NOT_F	4844	0	4845
// OP_IFNOT	4845	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	4846
// OP_BITAND	4846	226	4847
// OP_NOT_F	4847	0	4848
// OP_IFNOT	4848	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	182	4849
// OP_LOAD_F	28	182	4850
// OP_LOAD_F	28	182	4851
// OP_BITAND	4851	226	4852
// OP_SUB_F	4850	4852	4853
// OP_STOREP_F	4853	4849	0
// OP_ADDRESS	28	182	4854
// OP_LOAD_F	28	182	4855
// OP_SUB_F	4855	223	4856
// OP_STOREP_F	4856	4854	0
// OP_ADDRESS	28	172	4857
// OP_STOREP_F	650	4857	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4250	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	116	4858
// OP_LOAD_F	28	116	4859
// OP_ADD_F	4859	4860	4861
// OP_STOREP_F	4861	4858	0
// OP_DONE	0	0	0
void () PlayerJump = 
{
    local vector start;
    local vector end;
    
    if(self.flags & FL_WATERJUMP)
    {
        return;
    }
    
    
    if(self.waterlevel >= 2)
    {
        if(self.watertype == CONTENT_WATER)
        {
            self.velocity_z = 100;
        }
        else
        {
            if(self.watertype == CONTENT_SLIME)
            {
                self.velocity_z = 80;
            }
            else
            {
                self.velocity_z = 50;
            }
            
        }
        
        
        if(self.swim_flag < time)
        {
            self.swim_flag = time + 1;
            if(random() < 0.5)
            {
                sound(self, CHAN_BODY, "misc/water1.wav", 1, ATTN_NORM);
            }
            else
            {
                sound(self, CHAN_BODY, "misc/water2.wav", 1, ATTN_NORM);
            }
            
        }
        
        return;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        return;
    }
    
    
    if(!(self.flags & FL_JUMPRELEASED))
    {
        return;
    }
    
    self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
    self.flags = self.flags - FL_ONGROUND;
    self.button2 = 0;
    sound(self, CHAN_BODY, "player/plyrjmp8.wav", 1, ATTN_NORM);
    self.velocity_z = self.velocity_z + 270;
};

.float dmgtime;
// WaterMove
// function begins at statement 6983, parm_start=4864
// OP_LOAD_F	28	103	4864
// OP_EQ_F	4864	234	4865
// OP_IFNOT	4865	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	4866
// OP_LT	4866	650	4867
// OP_IFNOT	4867	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	4868
// OP_NE_F	4868	819	4869
// OP_IFNOT	4869	27	0
// OP_LOAD_F	28	392	4870
// OP_LT	4870	31	4871
// OP_IFNOT	4871	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4256	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	392	4872
// OP_ADD_F	31	3556	4873
// OP_LT	4872	4873	4874
// OP_IFNOT	4874	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4255	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	392	4875
// OP_ADD_F	31	2532	4876
// OP_STOREP_F	4876	4875	0
// OP_ADDRESS	28	421	4877
// OP_STOREP_F	929	4877	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	392	4878
// OP_LT	4878	31	4879
// OP_IFNOT	4879	22	0
// OP_LOAD_F	28	375	4880
// OP_LT	4880	31	4881
// OP_IFNOT	4881	19	0
// OP_ADDRESS	28	421	4882
// OP_LOAD_F	28	421	4883
// OP_ADD_F	4883	929	4884
// OP_STOREP_F	4884	4882	0
// OP_LOAD_F	28	421	4885
// OP_GT	4885	2157	4886
// OP_IFNOT	4886	3	0
// OP_ADDRESS	28	421	4887
// OP_STOREP_F	1931	4887	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	421	4888
// OP_STORE_V	4888	13	0
// OP_CALL4	521	0	0
// OP_ADDRESS	28	375	4889
// OP_ADD_F	31	708	4890
// OP_STOREP_F	4890	4889	0
// OP_LOAD_F	28	189	4891
// OP_NOT_F	4891	0	4892
// OP_IFNOT	4892	15	0
// OP_LOAD_F	28	182	4893
// OP_BITAND	4893	218	4894
// OP_IFNOT	4894	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4283	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	182	4895
// OP_LOAD_F	28	182	4896
// OP_SUB_F	4896	218	4897
// OP_STOREP_F	4897	4895	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	4898
// OP_EQ_F	4898	281	4899
// OP_IFNOT	4899	22	0
// OP_LOAD_F	28	4862	4900
// OP_LT	4900	31	4901
// OP_IFNOT	4901	18	0
// OP_LOAD_F	28	379	4902
// OP_GT	4902	31	4903
// OP_IFNOT	4903	5	0
// OP_ADDRESS	28	4862	4904
// OP_ADD_F	31	708	4905
// OP_STOREP_F	4905	4904	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	4862	4906
// OP_ADD_F	31	922	4907
// OP_STOREP_F	4907	4906	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	4908
// OP_MUL_F	1931	4908	4909
// OP_STORE_V	4909	13	0
// OP_CALL4	521	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	190	4910
// OP_EQ_F	4910	280	4911
// OP_IFNOT	4911	17	0
// OP_LOAD_F	28	4862	4912
// OP_LT	4912	31	4913
// OP_LOAD_F	28	379	4914
// OP_LT	4914	31	4915
// OP_AND	4913	4915	4916
// OP_IFNOT	4916	11	0
// OP_ADDRESS	28	4862	4917
// OP_ADD_F	31	708	4918
// OP_STOREP_F	4918	4917	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	4919
// OP_MUL_F	1835	4919	4920
// OP_STORE_V	4920	13	0
// OP_CALL4	521	0	0
// OP_LOAD_F	28	182	4921
// OP_BITAND	4921	218	4922
// OP_NOT_F	4922	0	4923
// OP_IFNOT	4923	34	0
// OP_LOAD_F	28	190	4924
// OP_EQ_F	4924	281	4925
// OP_IFNOT	4925	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4282	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	190	4926
// OP_EQ_F	4926	279	4927
// OP_IFNOT	4927	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4281	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	190	4928
// OP_EQ_F	4928	280	4929
// OP_IFNOT	4929	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4280	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	182	4930
// OP_LOAD_F	28	182	4931
// OP_ADD_F	4931	218	4932
// OP_STOREP_F	4932	4930	0
// OP_ADDRESS	28	4862	4933
// OP_STOREP_F	650	4933	0
// OP_LOAD_F	28	182	4934
// OP_BITAND	4934	225	4935
// OP_NOT_F	4935	0	4936
// OP_IFNOT	4936	10	0
// OP_ADDRESS	28	113	4937
// OP_LOAD_V	28	113	4940
// OP_LOAD_F	28	189	4943
// OP_MUL_F	2245	4943	4944
// OP_MUL_F	4944	32	4945
// OP_LOAD_V	28	113	4946
// OP_MUL_FV	4945	4946	4949
// OP_SUB_V	4940	4949	4952
// OP_STOREP_V	4952	4937	0
// OP_DONE	0	0	0
void () WaterMove = 
{
    
    if(self.movetype == MOVETYPE_NOCLIP)
    {
        return;
    }
    
    
    if(self.health < 0)
    {
        return;
    }
    
    if(self.waterlevel != 3)
    {
        if(self.air_finished < time)
        {
            sound(self, CHAN_VOICE, "player/gasp2.wav", 1, ATTN_NORM);
        }
        else
        {
            
            if(self.air_finished < (time + 9))
            {
                sound(self, CHAN_VOICE, "player/gasp1.wav", 1, ATTN_NORM);
            }
            
        }
        
        self.air_finished = time + 12;
        self.dmg = 2;
    }
    else
    {
        
        if(self.air_finished < time)
        {
            
            if(self.pain_finished < time)
            {
                self.dmg = self.dmg + 2;
                
                if(self.dmg > 15)
                {
                    self.dmg = 10;
                }
                
                T_Damage(self, world, world, self.dmg);
                self.pain_finished = time + 1;
            }
            
        }
        
    }
    
    
    if(!self.waterlevel)
    {
        
        if(self.flags & FL_INWATER)
        {
            sound(self, CHAN_BODY, "misc/outwater.wav", 1, ATTN_NORM);
            self.flags = self.flags - FL_INWATER;
        }
        
        return;
    }
    
    if(self.watertype == CONTENT_LAVA)
    {
        
        if(self.dmgtime < time)
        {
            if(self.radsuit_finished > time)
            {
                self.dmgtime = time + 1;
            }
            else
            {
                self.dmgtime = time + 0.2;
            }
            
            T_Damage(self, world, world, 10 * self.waterlevel);
        }
        
    }
    else
    {
        
        if(self.watertype == CONTENT_SLIME)
        {
            
            if((self.dmgtime < time) && (self.radsuit_finished < time))
            {
                self.dmgtime = time + 1;
                T_Damage(self, world, world, 4 * self.waterlevel);
            }
            
        }
        
    }
    
    
    if(!(self.flags & FL_INWATER))
    {
        
        if(self.watertype == CONTENT_LAVA)
        {
            sound(self, CHAN_BODY, "player/inlava.wav", 1, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/inh2o.wav", 1, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_SLIME)
        {
            sound(self, CHAN_BODY, "player/slimbrn2.wav", 1, ATTN_NORM);
        }
        
        self.flags = self.flags + FL_INWATER;
        self.dmgtime = 0;
    }
    
    
    if(!(self.flags & FL_WATERJUMP))
    {
        self.velocity = self.velocity - (((0.8 * self.waterlevel) * frametime) * self.velocity);
    }
    
};

// CheckWaterJump
// function begins at statement 7155, parm_start=4956
// OP_LOAD_V	28	117	4962
// OP_STORE_V	4962	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	4965
// OP_STORE_V	4965	4956	0
// OP_ADD_F	4958	1502	4968
// OP_STORE_F	4968	4958	0
// OP_STORE_F	650	61	0
// OP_STORE_V	59	4	0
// OP_CALL1	455	0	0
// OP_MUL_VF	59	4969	4970
// OP_ADD_V	4956	4970	4973
// OP_STORE_V	4973	4959	0
// OP_STORE_V	4956	4	0
// OP_STORE_V	4959	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_LT	70	708	4976
// OP_IFNOT	4976	34	0
// OP_LOAD_F	28	141	4977
// OP_ADD_F	4958	4977	4978
// OP_SUB_F	4978	1502	4979
// OP_STORE_F	4979	4958	0
// OP_MUL_VF	59	4969	4980
// OP_ADD_V	4956	4980	4983
// OP_STORE_V	4983	4959	0
// OP_ADDRESS	28	202	4986
// OP_MUL_VF	74	4989	4990
// OP_STOREP_V	4990	4986	0
// OP_STORE_V	4956	4	0
// OP_STORE_V	4959	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	4993
// OP_IFNOT	4993	17	0
// OP_ADDRESS	28	182	4994
// OP_LOAD_F	28	182	4995
// OP_BITOR	4995	225	4996
// OP_STOREP_F	4996	4994	0
// OP_ADDRESS	28	116	4997
// OP_STOREP_F	3281	4997	0
// OP_ADDRESS	28	182	4998
// OP_LOAD_F	28	182	4999
// OP_LOAD_F	28	182	5000
// OP_BITAND	5000	226	5001
// OP_SUB_F	4999	5001	5002
// OP_STOREP_F	5002	4998	0
// OP_ADDRESS	28	186	5003
// OP_ADD_F	31	929	5004
// OP_STOREP_F	5004	5003	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckWaterJump = 
{
    local vector start;
    local vector end;
    makevectors(self.angles);
    start = self.origin;
    start_z = start_z + 8;
    v_forward_z = 0;
    normalize(v_forward);
    end = start + (v_forward * 24);
    traceline(start, end, TRUE, self);
    
    if(trace_fraction < 1)
    {
        start_z = (start_z + self.maxs_z) - 8;
        end = start + (v_forward * 24);
        self.movedir = trace_plane_normal * -50;
        traceline(start, end, TRUE, self);
        
        if(trace_fraction == 1)
        {
            self.flags = self.flags | FL_WATERJUMP;
            self.velocity_z = 225;
            self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
            self.teleport_time = time + 2;
            return;
        }
        
    }
    
};

// PlayerPreThink
// function begins at statement 7209, parm_start=5005
// OP_IFNOT	4414	3	0
// OP_CALL0	4499	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	5016
// OP_EQ_V	5016	638	5019
// OP_IFNOT	5019	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	565	5020
// OP_LOAD_F	28	183	5021
// OP_NE_F	5020	5021	5022
// OP_IFNOT	5022	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	597	0	0
// OP_LOAD_V	28	175	5023
// OP_STORE_V	5023	4	0
// OP_CALL1	448	0	0
// OP_CALL0	4769	0	0
// OP_LOAD_F	28	165	5026
// OP_GE	5026	249	5027
// OP_IFNOT	5027	3	0
// OP_CALL0	4779	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	5028
// OP_EQ_F	5028	248	5029
// OP_IFNOT	5029	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	5030
// OP_BITAND	5030	215	5031
// OP_IFNOT	5031	98	0
// OP_LOAD_F	28	182	5032
// OP_BITAND	5032	223	5033
// OP_IFNOT	5033	5	0
// OP_ADDRESS	28	182	5034
// OP_LOAD_F	28	182	5035
// OP_SUB_F	5035	223	5036
// OP_STOREP_F	5036	5034	0
// OP_LOAD_F	28	172	5037
// OP_IFNOT	5037	42	0
// OP_ADDRESS	28	365	5038
// OP_LOAD_F	28	365	5039
// OP_MUL_F	2165	32	5040
// OP_ADD_F	5039	5040	5041
// OP_STOREP_F	5041	5038	0
// OP_LOAD_F	28	365	5042
// OP_GT	5042	2241	5043
// OP_IFNOT	5043	3	0
// OP_ADDRESS	28	365	5044
// OP_STOREP_F	2241	5044	0
// OP_ADDRESS	28	182	5045
// OP_LOAD_F	28	182	5046
// OP_BITOR	5046	227	5047
// OP_STOREP_F	5047	5045	0
// OP_CALL0	578	0	0
// OP_ADDRESS	28	113	5048
// OP_LOAD_V	28	402	5051
// OP_LOAD_V	28	105	5054
// OP_SUB_V	5051	5054	5057
// OP_STOREP_V	5057	5048	0
// OP_LOAD_V	28	113	5060
// OP_STORE_V	5060	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	5008	0
// OP_LT	5008	2165	5063
// OP_IFNOT	5063	8	0
// OP_ADDRESS	28	113	5064
// OP_LOAD_V	28	113	5067
// OP_STORE_V	5067	4	0
// OP_CALL1	455	0	0
// OP_MUL_VF	1	5008	5070
// OP_STOREP_V	5070	5064	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	113	5073
// OP_LOAD_V	28	113	5076
// OP_STORE_V	5076	4	0
// OP_CALL1	455	0	0
// OP_LOAD_F	28	365	5079
// OP_MUL_VF	1	5079	5080
// OP_STOREP_V	5080	5073	0
// OP_GOTO	48	0	0
// OP_LOAD_F	28	170	5083
// OP_IFNOT	5083	25	0
// OP_LOAD_V	28	175	5084
// OP_STORE_V	5084	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	28	113	5087
// OP_LOAD_V	28	113	5090
// OP_MUL_VF	59	2246	5093
// OP_MUL_VF	5093	32	5096
// OP_ADD_V	5090	5096	5099
// OP_STOREP_V	5099	5087	0
// OP_ADDRESS	28	365	5102
// OP_LOAD_V	28	113	5103
// OP_STORE_V	5103	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	5102	0
// OP_LOAD_F	28	365	5106
// OP_GT	5106	2165	5107
// OP_IFNOT	5107	7	0
// OP_ADDRESS	28	113	5108
// OP_LOAD_V	28	113	5111
// OP_STORE_V	5111	4	0
// OP_CALL1	455	0	0
// OP_MUL_VF	1	2165	5114
// OP_STOREP_V	5114	5108	0
// OP_GOTO	22	0	0
// OP_ADDRESS	28	182	5117
// OP_LOAD_F	28	182	5118
// OP_BITOR	5118	226	5119
// OP_STOREP_F	5119	5117	0
// OP_ADDRESS	28	365	5120
// OP_LOAD_F	28	365	5121
// OP_MUL_F	2241	32	5122
// OP_SUB_F	5121	5122	5123
// OP_STOREP_F	5123	5120	0
// OP_LOAD_F	28	365	5124
// OP_LT	5124	650	5125
// OP_IFNOT	5125	3	0
// OP_ADDRESS	28	365	5126
// OP_STOREP_F	650	5126	0
// OP_ADDRESS	28	113	5127
// OP_LOAD_V	28	113	5130
// OP_STORE_V	5130	4	0
// OP_CALL1	455	0	0
// OP_LOAD_F	28	365	5133
// OP_MUL_VF	1	5133	5134
// OP_STOREP_V	5134	5127	0
// OP_ADDRESS	28	109	5137
// OP_LOAD_V	28	105	5140
// OP_STOREP_V	5140	5137	0
// OP_ADDRESS	28	556	5143
// OP_LOAD_V	28	113	5146
// OP_STOREP_V	5146	5143	0
// OP_EQ_E	524	28	5149
// OP_OR	5149	545	5150
// OP_NOT_F	525	0	5151
// OP_AND	5150	5151	5152
// OP_IFNOT	5152	59	0
// OP_LOAD_F	524	566	5153
// OP_SUB_F	31	541	5154
// OP_ADD_F	5154	2157	5155
// OP_LT	5153	5155	5156
// OP_GT	541	2171	5157
// OP_AND	5156	5157	5158
// OP_LOAD_F	524	549	5159
// OP_BITAND	5159	573	5160
// OP_NOT_F	5160	0	5161
// OP_AND	5158	5161	5162
// OP_IFNOT	5162	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5163	7	0
// OP_CALL2	600	0	0
// OP_ADDRESS	524	549	5164
// OP_LOAD_F	524	549	5165
// OP_BITOR	5165	573	5166
// OP_STOREP_F	5166	5164	0
// OP_GOTO	40	0	0
// OP_LOAD_F	524	566	5167
// OP_SUB_F	31	541	5168
// OP_LT	5167	5168	5169
// OP_IFNOT	5169	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5170	7	0
// OP_CALL2	470	0	0
// OP_CALL0	593	0	0
// OP_GOTO	31	0	0
// OP_LOAD_F	524	549	5171
// OP_BITAND	5171	570	5172
// OP_NOT_F	5172	0	5173
// OP_IFNOT	5173	3	0
// OP_CALL0	577	0	0
// OP_GOTO	25	0	0
// OP_STORE_F	529	5012	0
// OP_CALL0	580	0	0
// OP_NE_F	5012	529	5174
// OP_IFNOT	5174	21	0
// OP_NE_E	540	30	5175
// OP_IFNOT	5175	12	0
// OP_STORE_V	540	4	0
// OP_LOAD_V	540	439	5176
// OP_STORE_V	5176	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	540	439	5179
// OP_LOAD_V	540	435	5182
// OP_STOREP_V	5182	5179	0
// OP_ADDRESS	540	435	5185
// OP_LOAD_V	540	105	5188
// OP_STOREP_V	5188	5185	0
// OP_STORE_ENT	30	540	0
// OP_STORE_V	526	4	0
// OP_STORE_V	529	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	581	0	0
// OP_IFNOT	1	3	0
// OP_STORE_V	529	4	0
// OP_CALL1	595	0	0
// OP_DONE	0	0	0
void () PlayerPreThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    local float vel_speed;
    local float old_vel_speed;
    local float diff;
    local float ftemp;
    local float old_loc;
    local vector vdiff;
    
    if(intermission_running)
    {
        IntermissionThink();
        return;
    }
    
    
    if(self.view_ofs == '0 0 0')
    {
        return;
    }
    
    
    if(self.last_color != self.colormap)
    {
        UpdateMonsterColors(self);
    }
    
    makevectors(self.v_angle);
    CheckRules();
    
    if(self.deadflag >= DEAD_DEAD)
    {
        PlayerDeathThink();
        return;
    }
    
    
    if(self.deadflag == DEAD_DYING)
    {
        return;
    }
    
    
    if(self.flags & FL_FLY)
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.flags = self.flags - FL_ONGROUND;
        }
        
        if(self.button2)
        {
            self.speed = self.speed + (100 * frametime);
            
            if(self.speed > 150)
            {
                self.speed = 150;
            }
            
            self.flags = self.flags | FL_JUMP;
            CameraPos();
            self.velocity = self.dest - self.origin;
            vel_speed = vlen(self.velocity);
            if(vel_speed < 100)
            {
                self.velocity = normalize(self.velocity) * vel_speed;
            }
            else
            {
                self.velocity = normalize(self.velocity) * self.speed;
            }
            
        }
        else
        {
            if(self.button0)
            {
                makevectors(self.v_angle);
                self.velocity = self.velocity + ((v_forward * 200) * frametime);
                self.speed = vlen(self.velocity);
                
                if(self.speed > 100)
                {
                    self.velocity = normalize(self.velocity) * 100;
                }
                
            }
            else
            {
                self.flags = self.flags | FL_JUMPRELEASED;
                self.speed = self.speed - (150 * frametime);
                
                if(self.speed < 0)
                {
                    self.speed = 0;
                }
                
                self.velocity = normalize(self.velocity) * self.speed;
            }
            
        }
        
    }
    
    self.oldorigin = self.origin;
    self.last_vel = self.velocity;
    
    if(((current_turn == self) || single_player) && !action_flag)
    {
        if(((current_turn.turn_starttime < ((time - time_per_turn) + 15)) && (time_per_turn > 25)) && (!(current_turn.chess_flags & CF_TIME_NOTIFY)))
        {
            mycentreprint(self, "You have 15 seconds to move");
            current_turn.chess_flags = current_turn.chess_flags | CF_TIME_NOTIFY;
        }
        else
        {
            if(current_turn.turn_starttime < (time - time_per_turn))
            {
                sprint(self, "Time Expired: you have forfeited your turn\n");
                next_turn();
            }
            else
            {
                if(!(current_turn.chess_flags & CF_SELECTED_PIECE))
                {
                    FindSelection();
                }
                else
                {
                    old_loc = current_dest_int;
                    FindLocation();
                    
                    if(old_loc != current_dest_int)
                    {
                        
                        if(last_highlight != world)
                        {
                            setorigin(last_highlight, last_highlight.pos2);
                            last_highlight.pos2 = last_highlight.pos1;
                            last_highlight.pos1 = last_highlight.origin;
                            last_highlight = world;
                        }
                        
                        
                        if(CanMove(current_selected, current_dest_int, FALSE))
                        {
                            HighlightLocation(current_dest_int);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// CheckPowerups
// function begins at statement 7405, parm_start=5192
// OP_LOAD_F	28	152	5192
// OP_LE	5192	650	5193
// OP_IFNOT	5193	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	377	5194
// OP_IFNOT	5194	63	0
// OP_LOAD_F	28	383	5195
// OP_LT	5195	31	5196
// OP_IFNOT	5196	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2751	10	0
// OP_STORE_V	1727	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	383	5197
// OP_CALL0	453	0	0
// OP_MUL_F	1	819	5198
// OP_ADD_F	5198	708	5199
// OP_ADD_F	31	5199	5200
// OP_STOREP_F	5200	5197	0
// OP_LOAD_F	28	377	5201
// OP_ADD_F	31	819	5202
// OP_LT	5201	5202	5203
// OP_IFNOT	5203	28	0
// OP_LOAD_F	28	382	5204
// OP_EQ_F	5204	708	5205
// OP_IFNOT	5205	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5206	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2750	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	382	5207
// OP_ADD_F	31	708	5208
// OP_STOREP_F	5208	5207	0
// OP_LOAD_F	28	382	5209
// OP_LT	5209	31	5210
// OP_IFNOT	5210	7	0
// OP_ADDRESS	28	382	5211
// OP_ADD_F	31	708	5212
// OP_STOREP_F	5212	5211	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_LOAD_F	28	377	5213
// OP_LT	5213	31	5214
// OP_IFNOT	5214	9	0
// OP_ADDRESS	28	162	5215
// OP_LOAD_F	28	162	5216
// OP_SUB_F	5216	273	5217
// OP_STOREP_F	5217	5215	0
// OP_ADDRESS	28	377	5218
// OP_STOREP_F	650	5218	0
// OP_ADDRESS	28	382	5219
// OP_STOREP_F	650	5219	0
// OP_ADDRESS	28	131	5220
// OP_STOREP_F	650	5220	0
// OP_ADDRESS	28	93	5221
// OP_STOREP_F	4412	5221	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	5222
// OP_STOREP_F	4413	5222	0
// OP_LOAD_F	28	376	5223
// OP_IFNOT	5223	57	0
// OP_LOAD_F	28	376	5224
// OP_ADD_F	31	819	5225
// OP_LT	5224	5225	5226
// OP_IFNOT	5226	28	0
// OP_LOAD_F	28	380	5227
// OP_EQ_F	5227	708	5228
// OP_IFNOT	5228	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5229	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2732	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	380	5230
// OP_ADD_F	31	708	5231
// OP_STOREP_F	5231	5230	0
// OP_LOAD_F	28	380	5232
// OP_LT	5232	31	5233
// OP_IFNOT	5233	7	0
// OP_ADDRESS	28	380	5234
// OP_ADD_F	31	708	5235
// OP_STOREP_F	5235	5234	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_LOAD_F	28	376	5236
// OP_LT	5236	31	5237
// OP_IFNOT	5237	9	0
// OP_ADDRESS	28	162	5238
// OP_LOAD_F	28	162	5239
// OP_SUB_F	5239	274	5240
// OP_STOREP_F	5240	5238	0
// OP_ADDRESS	28	380	5241
// OP_STOREP_F	650	5241	0
// OP_ADDRESS	28	376	5242
// OP_STOREP_F	650	5242	0
// OP_LOAD_F	28	376	5243
// OP_GT	5243	31	5244
// OP_IFNOT	5244	6	0
// OP_ADDRESS	28	133	5245
// OP_LOAD_F	28	133	5246
// OP_BITOR	5246	337	5247
// OP_STOREP_F	5247	5245	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	5248
// OP_LOAD_F	28	133	5249
// OP_LOAD_F	28	133	5250
// OP_BITAND	5250	337	5251
// OP_SUB_F	5249	5251	5252
// OP_STOREP_F	5252	5248	0
// OP_LOAD_F	28	378	5253
// OP_IFNOT	5253	57	0
// OP_LOAD_F	28	378	5254
// OP_ADD_F	31	819	5255
// OP_LT	5254	5255	5256
// OP_IFNOT	5256	28	0
// OP_LOAD_F	28	384	5257
// OP_EQ_F	5257	708	5258
// OP_IFNOT	5258	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5259	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2760	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	384	5260
// OP_ADD_F	31	708	5261
// OP_STOREP_F	5261	5260	0
// OP_LOAD_F	28	384	5262
// OP_LT	5262	31	5263
// OP_IFNOT	5263	7	0
// OP_ADDRESS	28	384	5264
// OP_ADD_F	31	708	5265
// OP_STOREP_F	5265	5264	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_LOAD_F	28	378	5266
// OP_LT	5266	31	5267
// OP_IFNOT	5267	9	0
// OP_ADDRESS	28	162	5268
// OP_LOAD_F	28	162	5269
// OP_SUB_F	5269	276	5270
// OP_STOREP_F	5270	5268	0
// OP_ADDRESS	28	378	5271
// OP_STOREP_F	650	5271	0
// OP_ADDRESS	28	384	5272
// OP_STOREP_F	650	5272	0
// OP_LOAD_F	28	378	5273
// OP_GT	5273	31	5274
// OP_IFNOT	5274	6	0
// OP_ADDRESS	28	133	5275
// OP_LOAD_F	28	133	5276
// OP_BITOR	5276	337	5277
// OP_STOREP_F	5277	5275	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	5278
// OP_LOAD_F	28	133	5279
// OP_LOAD_F	28	133	5280
// OP_BITAND	5280	337	5281
// OP_SUB_F	5279	5281	5282
// OP_STOREP_F	5282	5278	0
// OP_LOAD_F	28	379	5283
// OP_IFNOT	5283	46	0
// OP_ADDRESS	28	392	5284
// OP_ADD_F	31	2532	5285
// OP_STOREP_F	5285	5284	0
// OP_LOAD_F	28	379	5286
// OP_ADD_F	31	819	5287
// OP_LT	5286	5287	5288
// OP_IFNOT	5288	28	0
// OP_LOAD_F	28	386	5289
// OP_EQ_F	5289	708	5290
// OP_IFNOT	5290	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5291	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2741	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	386	5292
// OP_ADD_F	31	708	5293
// OP_STOREP_F	5293	5292	0
// OP_LOAD_F	28	386	5294
// OP_LT	5294	31	5295
// OP_IFNOT	5295	7	0
// OP_ADDRESS	28	386	5296
// OP_ADD_F	31	708	5297
// OP_STOREP_F	5297	5296	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	467	0	0
// OP_LOAD_F	28	379	5298
// OP_LT	5298	31	5299
// OP_IFNOT	5299	9	0
// OP_ADDRESS	28	162	5300
// OP_LOAD_F	28	162	5301
// OP_SUB_F	5301	275	5302
// OP_STOREP_F	5302	5300	0
// OP_ADDRESS	28	386	5303
// OP_STOREP_F	650	5303	0
// OP_ADDRESS	28	379	5304
// OP_STOREP_F	650	5304	0
// OP_DONE	0	0	0
void () CheckPowerups = 
{
    
    if(self.health <= 0)
    {
        return;
    }
    
    if(self.invisible_finished)
    {
        
        if(self.invisible_sound < time)
        {
            sound(self, CHAN_AUTO, "items/inv3.wav", 0.5, ATTN_IDLE);
            self.invisible_sound = time + ((random() * 3) + 1);
        }
        
        
        if(self.invisible_finished < (time + 3))
        {
            
            if(self.invisible_time == 1)
            {
                sprint(self, "Ring of Shadows magic is fading\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/inv2.wav", 1, ATTN_NORM);
                self.invisible_time = time + 1;
            }
            
            
            if(self.invisible_time < time)
            {
                self.invisible_time = time + 1;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.invisible_finished < time)
        {
            self.items = self.items - IT_INVISIBILITY;
            self.invisible_finished = 0;
            self.invisible_time = 0;
        }
        
        self.frame = 0;
        self.modelindex = modelindex_eyes;
    }
    else
    {
        self.modelindex = modelindex_player;
    }
    
    
    if(self.invincible_finished)
    {
        
        if(self.invincible_finished < (time + 3))
        {
            
            if(self.invincible_time == 1)
            {
                sprint(self, "Protection is almost burned out\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/protect2.wav", 1, ATTN_NORM);
                self.invincible_time = time + 1;
            }
            
            
            if(self.invincible_time < time)
            {
                self.invincible_time = time + 1;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.invincible_finished < time)
        {
            self.items = self.items - IT_INVULNERABILITY;
            self.invincible_time = 0;
            self.invincible_finished = 0;
        }
        
        if(self.invincible_finished > time)
        {
            self.effects = self.effects | EF_DIMLIGHT;
        }
        else
        {
            self.effects = self.effects - (self.effects & EF_DIMLIGHT);
        }
        
    }
    
    
    if(self.super_damage_finished)
    {
        
        if(self.super_damage_finished < (time + 3))
        {
            
            if(self.super_time == 1)
            {
                sprint(self, "Quad Damage is wearing off\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/damage2.wav", 1, ATTN_NORM);
                self.super_time = time + 1;
            }
            
            
            if(self.super_time < time)
            {
                self.super_time = time + 1;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.super_damage_finished < time)
        {
            self.items = self.items - IT_QUAD;
            self.super_damage_finished = 0;
            self.super_time = 0;
        }
        
        if(self.super_damage_finished > time)
        {
            self.effects = self.effects | EF_DIMLIGHT;
        }
        else
        {
            self.effects = self.effects - (self.effects & EF_DIMLIGHT);
        }
        
    }
    
    
    if(self.radsuit_finished)
    {
        self.air_finished = time + 12;
        
        if(self.radsuit_finished < (time + 3))
        {
            
            if(self.rad_time == 1)
            {
                sprint(self, "Air supply in Biosuit expiring\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/suit2.wav", 1, ATTN_NORM);
                self.rad_time = time + 1;
            }
            
            
            if(self.rad_time < time)
            {
                self.rad_time = time + 1;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.radsuit_finished < time)
        {
            self.items = self.items - IT_SUIT;
            self.rad_time = 0;
            self.radsuit_finished = 0;
        }
        
    }
    
};

// PlayerPostThink
// function begins at statement 7639, parm_start=5305
// OP_LOAD_V	28	166	5308
// OP_EQ_V	5308	638	5311
// OP_IFNOT	5311	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	5312
// OP_IFNOT	5312	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	5313
// OP_BITAND	5313	215	5314
// OP_IFNOT	5314	35	0
// OP_LOAD_V	28	105	5315
// OP_STORE_V	5315	4	0
// OP_LOAD_V	28	105	5318
// OP_LOAD_V	28	556	5321
// OP_MUL_VF	5321	32	5324
// OP_ADD_V	5318	5324	5327
// OP_STORE_V	5327	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	5330
// OP_IFNOT	5330	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	449	0	0
// OP_GOTO	19	0	0
// OP_LOAD_V	28	105	5331
// OP_LOAD_V	28	556	5334
// OP_MUL_VF	5334	32	5337
// OP_ADD_V	5331	5337	5340
// OP_STORE_V	5340	71	0
// OP_MUL_VF	74	3273	5343
// OP_ADD_V	71	5343	5346
// OP_STORE_V	5346	4	0
// OP_STORE_V	71	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	462	0	0
// OP_MUL_VF	74	708	5349
// OP_ADD_V	71	5349	5352
// OP_STORE_V	5352	71	0
// OP_STORE_V	28	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	108	5355
// OP_LT	5355	650	5356
// OP_IFNOT	5356	3	0
// OP_ADDRESS	28	108	5357
// OP_STOREP_F	650	5357	0
// OP_IFNOT	545	12	0
// OP_STORE_V	524	4	0
// OP_LOAD_V	28	105	5358
// OP_STORE_V	5358	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	524	117	5361
// OP_LOAD_V	28	175	5364
// OP_STOREP_V	5364	5361	0
// OP_ADDRESS	524	118	5367
// OP_LOAD_F	524	118	5368
// OP_MUL_F	720	5368	5369
// OP_STOREP_F	5369	5367	0
// OP_CALL0	4020	0	0
// OP_LOAD_F	28	182	5370
// OP_BITAND	5370	223	5371
// OP_NOT_F	5371	0	5372
// OP_IFNOT	5372	4	0
// OP_ADDRESS	28	390	5373
// OP_LOAD_F	28	116	5374
// OP_STOREP_F	5374	5373	0
// OP_CALL0	5191	0	0
// OP_DONE	0	0	0
void () PlayerPostThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    
    if(self.view_ofs == '0 0 0')
    {
        return;
    }
    
    
    if(self.deadflag)
    {
        return;
    }
    
    
    if(self.flags & FL_FLY)
    {
        traceline(self.origin, self.origin + (self.last_vel * frametime), TRUE, world);
        if(trace_fraction == 1)
        {
            setorigin(self, trace_endpos);
        }
        else
        {
            trace_endpos = self.origin + (self.last_vel * frametime);
            traceline(trace_endpos + (trace_plane_normal * 16), trace_endpos, TRUE, world);
            trace_endpos = trace_endpos + (trace_plane_normal * 1);
            setorigin(self, trace_endpos);
        }
        
    }
    
    
    if(self.origin_z < 0)
    {
        self.origin_z = 0;
    }
    
    
    if(single_player)
    {
        setorigin(current_turn, self.origin);
        current_turn.angles = self.v_angle;
        current_turn.angles_x = -1 * current_turn.angles_x;
    }
    
    W_WeaponFrame();
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.jump_flag = self.velocity_z;
    }
    
    CheckPowerups();
};

// ClientConnect
// function begins at statement 7710, parm_start=5375
// OP_LOAD_S	28	180	5375
// OP_STORE_V	5375	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5376	4	0
// OP_CALL1	469	0	0
// OP_IFNOT	4414	2	0
// OP_CALL0	4475	0	0
// OP_DONE	0	0	0
void () ClientConnect = 
{
    bprint(self.netname);
    bprint(" entered the game\n");
    
    if(intermission_running)
    {
        ExitIntermission();
    }
    
};

// ClientDisconnect
// function begins at statement 7718, parm_start=5377
// OP_IFNOT	343	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	180	5377
// OP_STORE_V	5377	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5378	4	0
// OP_CALL1	469	0	0
// OP_LOAD_F	28	153	5379
// OP_STORE_V	5379	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5380	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	4266	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_CALL0	4558	0	0
// OP_DONE	0	0	0
void () ClientDisconnect = 
{
    
    if(gameover)
    {
        return;
    }
    
    bprint(self.netname);
    bprint(" left the game with ");
    bprint(ftos(self.frags));
    bprint(" frags\n");
    sound(self, CHAN_BODY, "player/tornoff2.wav", 1, ATTN_NONE);
    set_suicide_frame();
};

// ClientObituary
// function begins at statement 7740, parm_start=5381
// OP_CALL0	453	0	0
// OP_STORE_F	1	5383	0
// OP_LOAD_S	5381	129	5386
// OP_EQ_S	5386	797	5387
// OP_IFNOT	5387	345	0
// OP_LOAD_S	5382	129	5388
// OP_EQ_S	5388	5389	5390
// OP_IFNOT	5390	19	0
// OP_LOAD_S	5381	180	5391
// OP_STORE_V	5391	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5392	4	0
// OP_CALL1	469	0	0
// OP_LOAD_ENT	5382	201	5393
// OP_LOAD_S	5393	180	5394
// OP_STORE_V	5394	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	469	0	0
// OP_LOAD_ENT	5382	201	5395
// OP_ADDRESS	5395	153	5396
// OP_LOAD_ENT	5382	201	5397
// OP_LOAD_F	5397	153	5398
// OP_ADD_F	5398	708	5399
// OP_STOREP_F	5399	5396	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5382	129	5400
// OP_EQ_S	5400	5401	5402
// OP_IFNOT	5402	13	0
// OP_STORE_V	5403	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5381	180	5404
// OP_STORE_V	5404	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5405	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	5381	153	5406
// OP_LOAD_F	5381	153	5407
// OP_SUB_F	5407	708	5408
// OP_STOREP_F	5408	5406	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5382	129	5409
// OP_EQ_S	5409	797	5410
// OP_IFNOT	5410	127	0
// OP_EQ_E	5381	5382	5411
// OP_IFNOT	5411	27	0
// OP_ADDRESS	5382	153	5412
// OP_LOAD_F	5382	153	5413
// OP_SUB_F	5413	708	5414
// OP_STOREP_F	5414	5412	0
// OP_LOAD_S	5381	180	5415
// OP_STORE_V	5415	4	0
// OP_CALL1	469	0	0
// OP_LOAD_F	5381	154	5416
// OP_EQ_F	5416	1684	5417
// OP_LOAD_F	5381	189	5418
// OP_GT	5418	708	5419
// OP_AND	5417	5419	5420
// OP_IFNOT	5420	4	0
// OP_STORE_V	5421	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5381	154	5422
// OP_EQ_F	5422	259	5423
// OP_IFNOT	5423	4	0
// OP_STORE_V	5424	4	0
// OP_CALL1	469	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5425	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_GOTO	97	0	0
// OP_EQ_F	37	929	5426
// OP_LOAD_F	5381	184	5427
// OP_GT	5427	650	5428
// OP_AND	5426	5428	5429
// OP_LOAD_F	5381	184	5430
// OP_LOAD_F	5382	184	5431
// OP_EQ_F	5430	5431	5432
// OP_AND	5429	5432	5433
// OP_IFNOT	5433	25	0
// OP_LT	5383	3718	5434
// OP_IFNOT	5434	3	0
// OP_STORE_S	5435	5384	0
// OP_GOTO	10	0	0
// OP_LT	5383	1727	5436
// OP_IFNOT	5436	3	0
// OP_STORE_S	5437	5384	0
// OP_GOTO	6	0	0
// OP_LT	5383	3721	5438
// OP_IFNOT	5438	3	0
// OP_STORE_S	5439	5384	0
// OP_GOTO	2	0	0
// OP_STORE_S	5440	5384	0
// OP_LOAD_S	5382	180	5441
// OP_STORE_V	5441	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5384	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	5382	153	5442
// OP_LOAD_F	5382	153	5443
// OP_SUB_F	5443	708	5444
// OP_STOREP_F	5444	5442	0
// OP_RETURN	0	0	0
// OP_GOTO	64	0	0
// OP_ADDRESS	5382	153	5445
// OP_LOAD_F	5382	153	5446
// OP_ADD_F	5446	708	5447
// OP_STOREP_F	5447	5445	0
// OP_LOAD_F	5382	154	5448
// OP_STORE_F	5448	5383	0
// OP_EQ_F	5383	254	5449
// OP_IFNOT	5449	3	0
// OP_STORE_S	5450	5384	0
// OP_STORE_S	2094	5385	0
// OP_EQ_F	5383	255	5451
// OP_IFNOT	5451	3	0
// OP_STORE_S	5452	5384	0
// OP_STORE_S	5453	5385	0
// OP_EQ_F	5383	256	5454
// OP_IFNOT	5454	3	0
// OP_STORE_S	5455	5384	0
// OP_STORE_S	5456	5385	0
// OP_EQ_F	5383	257	5457
// OP_IFNOT	5457	3	0
// OP_STORE_S	5458	5384	0
// OP_STORE_S	2094	5385	0
// OP_EQ_F	5383	258	5459
// OP_IFNOT	5459	3	0
// OP_STORE_S	5460	5384	0
// OP_STORE_S	2094	5385	0
// OP_EQ_F	5383	259	5461
// OP_IFNOT	5461	8	0
// OP_STORE_S	5462	5384	0
// OP_STORE_S	5463	5385	0
// OP_LOAD_F	5381	152	5464
// OP_LT	5464	5465	5466
// OP_IFNOT	5466	3	0
// OP_STORE_S	5467	5384	0
// OP_STORE_S	5468	5385	0
// OP_EQ_F	5383	260	5469
// OP_IFNOT	5469	8	0
// OP_STORE_S	5470	5384	0
// OP_STORE_S	5471	5385	0
// OP_LOAD_F	5381	152	5472
// OP_LT	5472	5465	5473
// OP_IFNOT	5473	3	0
// OP_STORE_S	5467	5384	0
// OP_STORE_S	5471	5385	0
// OP_EQ_F	5383	261	5474
// OP_IFNOT	5474	8	0
// OP_STORE_S	5475	5384	0
// OP_LOAD_F	5382	189	5476
// OP_GT	5476	708	5477
// OP_IFNOT	5477	3	0
// OP_STORE_S	5478	5385	0
// OP_GOTO	2	0	0
// OP_STORE_S	5479	5385	0
// OP_LOAD_S	5381	180	5480
// OP_STORE_V	5480	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5384	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	180	5481
// OP_STORE_V	5481	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5385	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_GOTO	180	0	0
// OP_ADDRESS	5381	153	5482
// OP_LOAD_F	5381	153	5483
// OP_SUB_F	5483	708	5484
// OP_STOREP_F	5484	5482	0
// OP_LOAD_S	5381	180	5485
// OP_STORE_V	5485	4	0
// OP_CALL1	469	0	0
// OP_LOAD_F	5382	182	5486
// OP_BITAND	5486	219	5487
// OP_IFNOT	5487	82	0
// OP_LOAD_S	5382	129	5488
// OP_EQ_S	5488	1377	5489
// OP_IFNOT	5489	3	0
// OP_STORE_V	5490	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5491
// OP_EQ_S	5491	1338	5492
// OP_IFNOT	5492	3	0
// OP_STORE_V	5493	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5494
// OP_EQ_S	5494	1350	5495
// OP_IFNOT	5495	3	0
// OP_STORE_V	5496	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5497
// OP_EQ_S	5497	1459	5498
// OP_IFNOT	5498	3	0
// OP_STORE_V	5499	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5500
// OP_EQ_S	5500	1366	5501
// OP_IFNOT	5501	3	0
// OP_STORE_V	5502	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5503
// OP_EQ_S	5503	5504	5505
// OP_IFNOT	5505	3	0
// OP_STORE_V	5506	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5507
// OP_EQ_S	5507	1354	5508
// OP_IFNOT	5508	3	0
// OP_STORE_V	5509	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5510
// OP_EQ_S	5510	909	5511
// OP_IFNOT	5511	3	0
// OP_STORE_V	5512	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5513
// OP_EQ_S	5513	1203	5514
// OP_IFNOT	5514	3	0
// OP_STORE_V	5515	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5516
// OP_EQ_S	5516	5517	5518
// OP_IFNOT	5518	3	0
// OP_STORE_V	5519	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5520
// OP_EQ_S	5520	1381	5521
// OP_IFNOT	5521	3	0
// OP_STORE_V	5522	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5523
// OP_EQ_S	5523	1334	5524
// OP_IFNOT	5524	3	0
// OP_STORE_V	5525	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5526
// OP_EQ_S	5526	1358	5527
// OP_IFNOT	5527	3	0
// OP_STORE_V	5528	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5529
// OP_EQ_S	5529	1362	5530
// OP_IFNOT	5530	3	0
// OP_STORE_V	5531	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5532
// OP_EQ_S	5532	1342	5533
// OP_IFNOT	5533	3	0
// OP_STORE_V	5534	4	0
// OP_CALL1	469	0	0
// OP_LOAD_S	5382	129	5535
// OP_EQ_S	5535	1346	5536
// OP_IFNOT	5536	3	0
// OP_STORE_V	5537	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5382	129	5538
// OP_EQ_S	5538	5539	5540
// OP_IFNOT	5540	4	0
// OP_STORE_V	5541	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5382	104	5542
// OP_EQ_F	5542	242	5543
// OP_NE_E	5382	30	5544
// OP_AND	5543	5544	5545
// OP_IFNOT	5545	4	0
// OP_STORE_V	5546	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5382	129	5547
// OP_EQ_S	5547	5548	5549
// OP_LOAD_S	5382	129	5550
// OP_EQ_S	5550	5551	5552
// OP_OR	5549	5552	5553
// OP_IFNOT	5553	4	0
// OP_STORE_V	5554	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5382	129	5555
// OP_EQ_S	5555	5556	5557
// OP_IFNOT	5557	4	0
// OP_STORE_V	5558	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5382	129	5559
// OP_EQ_S	5559	4760	5560
// OP_IFNOT	5560	4	0
// OP_STORE_V	5561	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5381	190	5562
// OP_STORE_F	5562	5383	0
// OP_EQ_F	5383	5563	5564
// OP_IFNOT	5564	11	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	5565
// OP_IFNOT	5565	4	0
// OP_STORE_V	5566	4	0
// OP_CALL1	469	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5567	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	5383	3148	5568
// OP_IFNOT	5568	11	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	5569
// OP_IFNOT	5569	4	0
// OP_STORE_V	5570	4	0
// OP_CALL1	469	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5571	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	5383	5572	5573
// OP_IFNOT	5573	16	0
// OP_LOAD_F	5381	152	5574
// OP_LT	5574	5575	5576
// OP_IFNOT	5576	4	0
// OP_STORE_V	5577	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	5578
// OP_IFNOT	5578	4	0
// OP_STORE_V	5579	4	0
// OP_CALL1	469	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5580	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5381	394	5581
// OP_EQ_S	5581	5582	5583
// OP_IFNOT	5583	6	0
// OP_ADDRESS	5381	394	5584
// OP_STOREP_S	652	5584	0
// OP_STORE_V	5585	4	0
// OP_CALL1	469	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	5586	4	0
// OP_CALL1	469	0	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) ClientObituary = 
{
    local float rnum;
    local string deathstring;
    local string deathstring2;
    rnum = random();
    
    if(targ.classname == "player")
    {
        
        if(attacker.classname == "teledeath")
        {
            bprint(targ.netname);
            bprint(" was telefragged by ");
            bprint(attacker.owner.netname);
            bprint("\n");
            attacker.owner.frags = attacker.owner.frags + 1;
            return;
        }
        
        
        if(attacker.classname == "teledeath2")
        {
            bprint("Satan's power deflects ");
            bprint(targ.netname);
            bprint("'s telefrag\n");
            targ.frags = targ.frags - 1;
            return;
        }
        
        if(attacker.classname == "player")
        {
            if(targ == attacker)
            {
                attacker.frags = attacker.frags - 1;
                bprint(targ.netname);
                
                if((targ.weapon == 64) && (targ.waterlevel > 1))
                {
                    bprint(" discharges into the water.\n");
                    return;
                }
                
                if(targ.weapon == IT_GRENADE_LAUNCHER)
                {
                    bprint(" tries to put the pin back in\n");
                }
                else
                {
                    bprint(" becomes bored with life\n");
                }
                
                return;
            }
            else
            {
                if(((teamplay == 2) && (targ.team > 0)) && (targ.team == attacker.team))
                {
                    if(rnum < 0.25)
                    {
                        deathstring = " mows down a teammate\n";
                    }
                    else
                    {
                        if(rnum < 0.5)
                        {
                            deathstring = " checks his glasses\n";
                        }
                        else
                        {
                            if(rnum < 0.75)
                            {
                                deathstring = " gets a frag for the other team\n";
                            }
                            else
                            {
                                deathstring = " loses another friend\n";
                            }
                            
                        }
                        
                    }
                    
                    bprint(attacker.netname);
                    bprint(deathstring);
                    attacker.frags = attacker.frags - 1;
                    return;
                }
                else
                {
                    attacker.frags = attacker.frags + 1;
                    rnum = attacker.weapon;
                    
                    if(rnum == IT_AXE)
                    {
                        deathstring = " was ax-murdered by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_SHOTGUN)
                    {
                        deathstring = " chewed on ";
                        deathstring2 = "'s boomstick\n";
                    }
                    
                    
                    if(rnum == IT_SUPER_SHOTGUN)
                    {
                        deathstring = " ate 2 loads of ";
                        deathstring2 = "'s buckshot\n";
                    }
                    
                    
                    if(rnum == IT_NAILGUN)
                    {
                        deathstring = " was nailed by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_SUPER_NAILGUN)
                    {
                        deathstring = " was punctured by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_GRENADE_LAUNCHER)
                    {
                        deathstring = " eats ";
                        deathstring2 = "'s pineapple\n";
                        
                        if(targ.health < -40)
                        {
                            deathstring = " was gibbed by ";
                            deathstring2 = "'s grenade\n";
                        }
                        
                    }
                    
                    
                    if(rnum == IT_ROCKET_LAUNCHER)
                    {
                        deathstring = " rides ";
                        deathstring2 = "'s rocket\n";
                        
                        if(targ.health < -40)
                        {
                            deathstring = " was gibbed by ";
                            deathstring2 = "'s rocket\n";
                        }
                        
                    }
                    
                    
                    if(rnum == IT_LIGHTNING)
                    {
                        deathstring = " accepts ";
                        if(attacker.waterlevel > 1)
                        {
                            deathstring2 = "'s discharge\n";
                        }
                        else
                        {
                            deathstring2 = "'s shaft\n";
                        }
                        
                    }
                    
                    bprint(targ.netname);
                    bprint(deathstring);
                    bprint(attacker.netname);
                    bprint(deathstring2);
                }
                
            }
            
            return;
        }
        else
        {
            targ.frags = targ.frags - 1;
            bprint(targ.netname);
            
            if(attacker.flags & FL_MONSTER)
            {
                
                if(attacker.classname == "monster_army")
                {
                    bprint(" was shot by a Grunt\n");
                }
                
                
                if(attacker.classname == "monster_demon1")
                {
                    bprint(" was eviscerated by a Fiend\n");
                }
                
                
                if(attacker.classname == "monster_dog")
                {
                    bprint(" was mauled by a Rottweiler\n");
                }
                
                
                if(attacker.classname == "monster_dragon")
                {
                    bprint(" was fried by a Dragon\n");
                }
                
                
                if(attacker.classname == "monster_enforcer")
                {
                    bprint(" was blasted by an Enforcer\n");
                }
                
                
                if(attacker.classname == "monster_fish")
                {
                    bprint(" was fed to the Rotfish\n");
                }
                
                
                if(attacker.classname == "monster_hell_knight")
                {
                    bprint(" was slain by a Death Knight\n");
                }
                
                
                if(attacker.classname == "monster_knight")
                {
                    bprint(" was slashed by a Knight\n");
                }
                
                
                if(attacker.classname == "monster_ogre")
                {
                    bprint(" was destroyed by an Ogre\n");
                }
                
                
                if(attacker.classname == "monster_oldone")
                {
                    bprint(" became one with Shub-Niggurath\n");
                }
                
                
                if(attacker.classname == "monster_shalrath")
                {
                    bprint(" was exploded by a Vore\n");
                }
                
                
                if(attacker.classname == "monster_shambler")
                {
                    bprint(" was smashed by a Shambler\n");
                }
                
                
                if(attacker.classname == "monster_tarbaby")
                {
                    bprint(" was slimed by a Spawn\n");
                }
                
                
                if(attacker.classname == "monster_vomit")
                {
                    bprint(" was vomited on by a Vomitus\n");
                }
                
                
                if(attacker.classname == "monster_wizard")
                {
                    bprint(" was scragged by a Scrag\n");
                }
                
                
                if(attacker.classname == "monster_zombie")
                {
                    bprint(" joins the Zombies\n");
                }
                
                return;
            }
            
            
            if(attacker.classname == "explo_box")
            {
                bprint(" blew up\n");
                return;
            }
            
            
            if((attacker.solid == SOLID_BSP) && (attacker != world))
            {
                bprint(" was squished\n");
                return;
            }
            
            
            if((attacker.classname == "trap_shooter") || (attacker.classname == "trap_spikeshooter"))
            {
                bprint(" was spiked\n");
                return;
            }
            
            
            if(attacker.classname == "fireball")
            {
                bprint(" ate a lavaball\n");
                return;
            }
            
            
            if(attacker.classname == "trigger_changelevel")
            {
                bprint(" tried to leave\n");
                return;
            }
            
            rnum = targ.watertype;
            if(rnum == -3)
            {
                if(random() < 0.5)
                {
                    bprint(" sleeps with the fishes\n");
                }
                else
                {
                    bprint(" sucks it down\n");
                }
                
                return;
            }
            else
            {
                if(rnum == -4)
                {
                    if(random() < 0.5)
                    {
                        bprint(" gulped a load of slime\n");
                    }
                    else
                    {
                        bprint(" can't exist on slime alone\n");
                    }
                    
                    return;
                }
                else
                {
                    
                    if(rnum == -5)
                    {
                        
                        if(targ.health < -15)
                        {
                            bprint(" burst into flames\n");
                            return;
                        }
                        
                        if(random() < 0.5)
                        {
                            bprint(" turned into hot slag\n");
                        }
                        else
                        {
                            bprint(" visits the Volcano God\n");
                        }
                        
                        return;
                    }
                    
                }
                
            }
            
            
            if(targ.deathtype == "falling")
            {
                targ.deathtype = "";
                bprint(" fell to his death\n");
                return;
            }
            
            bprint(" died\n");
        }
        
    }
    
};

