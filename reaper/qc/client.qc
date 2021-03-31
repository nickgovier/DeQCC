void () player_pain;
void () player_stand1;
void (vector org) spawn_tfog;
void (vector org, entity death_owner) spawn_tdeath;
void (entity killer, entity killed) countkill;
void () initscore;
void (entity ply, float n) removeTeamBots;
void (entity ply, float n) addTeamBots;
float modelindex_eyes;
float modelindex_player;
float intermission_running;
float intermission_exittime;
// info_intermission
// function begins at statement 6157, parm_start=4445
// OP_DONE	0	0	0
void () info_intermission = 
{
};

// SetChangeParms
// function begins at statement 6158, parm_start=4445
// OP_ADDRESS	28	162	4451
// OP_LOAD_F	28	162	4452
// OP_LOAD_F	28	162	4453
// OP_BITOR	270	271	4454
// OP_BITOR	4454	272	4455
// OP_BITOR	4455	273	4456
// OP_BITOR	4456	274	4457
// OP_BITOR	4457	275	4458
// OP_BITAND	4453	4458	4459
// OP_SUB_F	4452	4459	4460
// OP_STOREP_F	4460	4451	0
// OP_LOAD_F	28	152	4461
// OP_GT	4461	574	4462
// OP_IFNOT	4462	3	0
// OP_ADDRESS	28	152	4463
// OP_STOREP_F	574	4463	0
// OP_LOAD_F	28	152	4464
// OP_LT	4464	756	4465
// OP_IFNOT	4465	3	0
// OP_ADDRESS	28	152	4466
// OP_STOREP_F	756	4466	0
// OP_LOAD_F	28	162	4467
// OP_STORE_F	4467	43	0
// OP_LOAD_F	28	152	4468
// OP_STORE_F	4468	44	0
// OP_LOAD_F	28	188	4469
// OP_STORE_F	4469	45	0
// OP_LOAD_F	28	158	4470
// OP_LT	4470	2261	4471
// OP_IFNOT	4471	3	0
// OP_STORE_F	2261	46	0
// OP_GOTO	3	0	0
// OP_LOAD_F	28	158	4472
// OP_STORE_F	4472	46	0
// OP_LOAD_F	28	159	4473
// OP_STORE_F	4473	47	0
// OP_LOAD_F	28	160	4474
// OP_STORE_F	4474	48	0
// OP_LOAD_F	28	161	4475
// OP_STORE_F	4475	49	0
// OP_LOAD_F	28	154	4476
// OP_STORE_F	4476	50	0
// OP_LOAD_F	28	187	4477
// OP_MUL_F	4477	574	4478
// OP_STORE_F	4478	51	0
// OP_IFNOT	615	7	0
// OP_LOAD_F	28	132	4479
// OP_MUL_F	4479	223	4480
// OP_ADD_F	46	4480	4481
// OP_MUL_F	267	615	4482
// OP_ADD_F	4481	4482	4483
// OP_STORE_F	4483	46	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4450	0
// OP_STORE_F	214	4445	0
// OP_STORE_F	214	4446	0
// OP_STORE_F	213	52	0
// OP_STORE_F	213	53	0
// OP_STORE_F	574	4447	0
// OP_STORE_F	213	4448	0
// OP_STORE_F	213	4449	0
// OP_IFNOT	4450	44	0
// OP_LOAD_F	4450	184	4484
// OP_EQ_F	4484	736	4485
// OP_IFNOT	4485	15	0
// OP_ADD_F	4448	214	4486
// OP_STORE_F	4486	4448	0
// OP_LT	4448	231	4487
// OP_IFNOT	4487	10	0
// OP_LOAD_F	4450	553	4488
// OP_MUL_F	4445	4488	4489
// OP_MUL_F	4489	235	4490
// OP_MUL_F	4445	305	4491
// OP_BITAND	4490	4491	4492
// OP_ADD_F	52	4492	4493
// OP_STORE_F	4493	52	0
// OP_MUL_F	4445	219	4494
// OP_STORE_F	4494	4445	0
// OP_GOTO	21	0	0
// OP_EQ_F	4447	574	4495
// OP_IFNOT	4495	3	0
// OP_LOAD_F	4450	184	4496
// OP_STORE_F	4496	4447	0
// OP_LOAD_F	4450	184	4497
// OP_EQ_F	4497	4447	4498
// OP_IFNOT	4498	14	0
// OP_ADD_F	4449	214	4499
// OP_STORE_F	4499	4449	0
// OP_LT	4449	231	4500
// OP_IFNOT	4500	10	0
// OP_LOAD_F	4450	553	4501
// OP_MUL_F	4446	4501	4502
// OP_MUL_F	4502	235	4503
// OP_MUL_F	4446	305	4504
// OP_BITAND	4503	4504	4505
// OP_ADD_F	53	4505	4506
// OP_STORE_F	4506	53	0
// OP_MUL_F	4446	219	4507
// OP_STORE_F	4507	4446	0
// OP_STORE_V	4450	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4450	0
// OP_GOTO	-43	0	0
// OP_DONE	0	0	0
void () SetChangeParms = 
{
    local float offset;
    local float toffset;
    local float team1;
    local float nb;
    local float nt;
    local entity e;
    self.items = self.items - (self.items & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD));
    
    if(self.health > MUST_HAVE)
    {
        self.health = MUST_HAVE;
    }
    
    
    if(self.health < 50.000)
    {
        self.health = 50.000;
    }
    
    parm1 = self.items;
    parm2 = self.health;
    parm3 = self.armorvalue;
    if(self.ammo_shells < 25.000)
    {
        parm4 = 25.000;
    }
    else
    {
        parm4 = self.ammo_shells;
    }
    
    parm5 = self.ammo_nails;
    parm6 = self.ammo_rockets;
    parm7 = self.ammo_cells;
    parm8 = self.weapon;
    parm9 = self.armortype * MUST_HAVE;
    
    if(SKINSMODE)
    {
        parm4 = (parm4 + (self.skin * FL_ONGROUND)) + (IT_ARMOR2 * SKINSMODE);
    }
    
    e = find(world, classname, "dmbot");
    offset = TRUE;
    toffset = TRUE;
    parm10 = FALSE;
    parm11 = FALSE;
    team1 = MUST_HAVE;
    nb = FALSE;
    nt = FALSE;
    
    while(e)
    {
        if(e.team == 99.000)
        {
            nb = nb + TRUE;
            
            if(nb < MOVETYPE_TOSS)
            {
                parm10 = parm10 + (((offset * e.skil) * MOVETYPE_BOUNCE) & (offset * SVC_FINALE));
                offset = offset * FL_MONSTER;
            }
            
        }
        else
        {
            
            if(team1 == MUST_HAVE)
            {
                team1 = e.team;
            }
            
            
            if(e.team == team1)
            {
                nt = nt + TRUE;
                
                if(nt < MOVETYPE_TOSS)
                {
                    parm11 = parm11 + (((toffset * e.skil) * MOVETYPE_BOUNCE) & (toffset * SVC_FINALE));
                    toffset = toffset * FL_MONSTER;
                }
                
            }
            
        }
        
        e = find(e, classname, "dmbot");
    }
    
};

// SetNewParms
// function begins at statement 6267, parm_start=4508
// OP_BITOR	254	253	4508
// OP_STORE_F	4508	43	0
// OP_STORE_F	574	44	0
// OP_STORE_F	213	45	0
// OP_STORE_F	2261	46	0
// OP_STORE_F	213	47	0
// OP_STORE_F	213	48	0
// OP_STORE_F	213	49	0
// OP_STORE_F	214	50	0
// OP_STORE_F	213	51	0
// OP_DONE	0	0	0
void () SetNewParms = 
{
    parm1 = IT_SHOTGUN | IT_AXE;
    parm2 = MUST_HAVE;
    parm3 = FALSE;
    parm4 = 25.000;
    parm5 = FALSE;
    parm6 = FALSE;
    parm7 = FALSE;
    parm8 = TRUE;
    parm9 = FALSE;
};

void (entity e, float newskin) skinChange;
// DecodeLevelParms
// function begins at statement 6278, parm_start=4511
// OP_GT	46	4512	4513
// OP_IFNOT	4513	11	0
// OP_BITAND	46	4514	4515
// OP_DIV_F	4515	267	4516
// OP_STORE_F	4516	615	0
// OP_BITAND	46	4517	4518
// OP_STORE_F	4518	4511	0
// OP_BITAND	46	4512	4519
// OP_STORE_F	4519	46	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4511	7	0
// OP_CALL2	4509	0	0
// OP_ADDRESS	28	162	4520
// OP_STOREP_F	43	4520	0
// OP_ADDRESS	28	152	4521
// OP_STOREP_F	44	4521	0
// OP_ADDRESS	28	188	4522
// OP_STOREP_F	45	4522	0
// OP_ADDRESS	28	158	4523
// OP_STOREP_F	46	4523	0
// OP_ADDRESS	28	159	4524
// OP_STOREP_F	47	4524	0
// OP_ADDRESS	28	160	4525
// OP_STOREP_F	48	4525	0
// OP_ADDRESS	28	161	4526
// OP_STOREP_F	49	4526	0
// OP_ADDRESS	28	154	4527
// OP_STOREP_F	50	4527	0
// OP_ADDRESS	28	187	4528
// OP_MUL_F	51	3229	4529
// OP_STOREP_F	4529	4528	0
// OP_DONE	0	0	0
void () DecodeLevelParms = 
{
    local float skinno;
    
    if(parm4 > 511.000)
    {
        SKINSMODE = (parm4 & 49152.000) / IT_ARMOR2;
        skinno = parm4 & 7680.000;
        parm4 = parm4 & 511.000;
        skinChange(self, skinno);
    }
    
    self.items = parm1;
    self.health = parm2;
    self.armorvalue = parm3;
    self.ammo_shells = parm4;
    self.ammo_nails = parm5;
    self.ammo_rockets = parm6;
    self.ammo_cells = parm7;
    self.weapon = parm8;
    self.armortype = parm9 * 0.010;
};

// FindIntermission
// function begins at statement 6310, parm_start=4531
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4533	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4531	0
// OP_IFNOT	4531	22	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	229	4534
// OP_STORE_F	4534	4532	0
// OP_GT	4532	214	4535
// OP_IFNOT	4535	16	0
// OP_STORE_V	4531	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4533	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4531	0
// OP_NOT_ENT	4531	0	4536
// OP_IFNOT	4536	6	0
// OP_STORE_V	4531	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4533	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4531	0
// OP_SUB_F	4532	214	4537
// OP_STORE_F	4537	4532	0
// OP_GOTO	-16	0	0
// OP_RETURN	4531	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4538	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4531	0
// OP_IFNOT	4531	2	0
// OP_RETURN	4531	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4539	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4531	0
// OP_IFNOT	4531	2	0
// OP_RETURN	4531	0	0
// OP_STORE_V	4540	4	0
// OP_CALL1	456	0	0
// OP_DONE	0	0	0
entity () FindIntermission = 
{
    local entity spot;
    local float cyc;
    spot = find(world, classname, "info_intermission");
    
    if(spot)
    {
        cyc = random() * MOVETYPE_STEP;
        
        while(cyc > TRUE)
        {
            spot = find(spot, classname, "info_intermission");
            
            if(!spot)
            {
                spot = find(spot, classname, "info_intermission");
            }
            
            cyc = cyc - TRUE;
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
// function begins at statement 6354, parm_start=4543
// OP_STORE_V	4543	4	0
// OP_CALL1	487	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	34	4	0
// OP_CALL1	504	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	4541	4	0
// OP_CALL1	504	0	0
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
// function begins at statement 6363, parm_start=4545
// OP_IFNOT	35	3	0
// OP_CALL0	4542	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	31	214	4545
// OP_STORE_F	4545	4443	0
// OP_ADD_F	4442	214	4546
// OP_STORE_F	4546	4442	0
// OP_EQ_F	4442	216	4547
// OP_IFNOT	4547	92	0
// OP_LOAD_S	30	130	4548
// OP_EQ_S	4548	4263	4549
// OP_IFNOT	4549	29	0
// OP_STORE_V	339	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	4550	4	0
// OP_CALL1	487	0	0
// OP_NOT_F	1	0	4551
// OP_IFNOT	4551	8	0
// OP_STORE_V	339	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	4552	7	0
// OP_CALL2	499	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	4553	7	0
// OP_CALL2	499	0	0
// OP_RETURN	0	0	0
// OP_GOTO	60	0	0
// OP_LOAD_S	30	130	4554
// OP_EQ_S	4554	4270	4555
// OP_IFNOT	4555	18	0
// OP_STORE_V	339	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	4556	7	0
// OP_CALL2	499	0	0
// OP_RETURN	0	0	0
// OP_GOTO	40	0	0
// OP_LOAD_S	30	130	4557
// OP_EQ_S	4557	4277	4558
// OP_IFNOT	4558	18	0
// OP_STORE_V	339	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	4559	7	0
// OP_CALL2	499	0	0
// OP_RETURN	0	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	30	130	4560
// OP_EQ_S	4560	4285	4561
// OP_IFNOT	4561	17	0
// OP_STORE_V	339	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	4562	7	0
// OP_CALL2	499	0	0
// OP_RETURN	0	0	0
// OP_CALL0	4542	0	0
// OP_EQ_F	4442	228	4563
// OP_IFNOT	4563	19	0
// OP_STORE_V	4550	4	0
// OP_CALL1	487	0	0
// OP_NOT_F	1	0	4564
// OP_IFNOT	4564	5	0
// OP_STORE_V	339	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	493	0	0
// OP_RETURN	0	0	0
// OP_BITAND	38	2246	4565
// OP_EQ_F	4565	2246	4566
// OP_IFNOT	4566	8	0
// OP_STORE_V	339	4	0
// OP_STORE_V	305	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	4567	7	0
// OP_CALL2	499	0	0
// OP_RETURN	0	0	0
// OP_CALL0	4542	0	0
// OP_DONE	0	0	0
void () ExitIntermission = 
{
    
    if(deathmatch)
    {
        GotoNextMap();
        return;
    }
    
    intermission_exittime = time + TRUE;
    intermission_running = intermission_running + TRUE;
    
    if(intermission_running == FL_SWIM)
    {
        if(world.model == "maps/e1m7.bsp")
        {
            WriteByte(MSG_ALL, SVC_CDTRACK);
            WriteByte(MSG_ALL, FL_SWIM);
            WriteByte(MSG_ALL, MOVETYPE_WALK);
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
                WriteByte(MSG_ALL, FL_SWIM);
                WriteByte(MSG_ALL, MOVETYPE_WALK);
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "The Rune of Black Magic throbs evilly in\nyour hand and whispers dark thoughts\ninto your brain. You learn the inmost\nlore of the Hell-Mother; Shub-Niggurath!\nYou now know that she is behind all the\nterrible plotting which has led to so\nmuch death and horror. But she is not\ninviolate! Armed with this Rune, you\nrealize that once all four Runes are\ncombined, the gate to Shub-Niggurath's\nPit will open, and you can face the\nWitch-Goddess herself in her frightful\notherworld cathedral.");
                return;
            }
            else
            {
                if(world.model == "maps/e3m6.bsp")
                {
                    WriteByte(MSG_ALL, SVC_CDTRACK);
                    WriteByte(MSG_ALL, FL_SWIM);
                    WriteByte(MSG_ALL, MOVETYPE_WALK);
                    WriteByte(MSG_ALL, SVC_FINALE);
                    WriteString(MSG_ALL, "The charred viscera of diabolic horrors\nbubble viscously as you seize the Rune\nof Hell Magic. Its heat scorches your\nhand, and its terrible secrets blight\nyour mind. Gathering the shreds of your\ncourage, you shake the devil's shackles\nfrom your soul, and become ever more\nhard and determined to destroy the\nhideous creatures whose mere existence\nthreatens the souls and psyches of all\nthe population of Earth.");
                    return;
                }
                else
                {
                    
                    if(world.model == "maps/e4m7.bsp")
                    {
                        WriteByte(MSG_ALL, SVC_CDTRACK);
                        WriteByte(MSG_ALL, FL_SWIM);
                        WriteByte(MSG_ALL, MOVETYPE_WALK);
                        WriteByte(MSG_ALL, SVC_FINALE);
                        WriteString(MSG_ALL, "Despite the awful might of the Elder\nWorld, you have achieved the Rune of\nElder Magic, capstone of all types of\narcane wisdom. Beyond good and evil,\nbeyond life and death, the Rune\npulsates, heavy with import. Patient and\npotent, the Elder Being Shub-Niggurath\nweaves her dire plans to clear off all\nlife from the Earth, and bring her own\nfoul offspring to our world! For all the\ndwellers in these nightmare dimensions\nare her descendants! Once all Runes of\nmagic power are united, the energy\nbehind them will blast open the Gateway\nto Shub-Niggurath, and you can travel\nthere to foil the Hell-Mother's plots\nin person.");
                        return;
                    }
                    
                }
                
            }
            
        }
        
        GotoNextMap();
    }
    
    
    if(intermission_running == MOVETYPE_WALK)
    {
        
        if(!cvar("registered"))
        {
            WriteByte(MSG_ALL, SVC_SELLSCREEN);
            return;
        }
        
        
        if((serverflags & 15.000) == 15.000)
        {
            WriteByte(MSG_ALL, SVC_FINALE);
            WriteString(MSG_ALL, "Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront her as an avatar of avenging\nEarth-life. If you defeat her, you will\nbe remembered forever as the savior of\nthe planet. If she conquers, it will be\nas if you had never been born.");
            return;
        }
        
    }
    
    GotoNextMap();
};

// IntermissionThink
// function begins at statement 6485, parm_start=4569
// OP_LT	31	4443	4569
// OP_IFNOT	4569	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	4570
// OP_NOT_F	4570	0	4571
// OP_LOAD_F	28	171	4572
// OP_NOT_F	4572	0	4573
// OP_AND	4571	4573	4574
// OP_LOAD_F	28	172	4575
// OP_NOT_F	4575	0	4576
// OP_AND	4574	4576	4577
// OP_IFNOT	4577	2	0
// OP_RETURN	0	0	0
// OP_CALL0	4544	0	0
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
// function begins at statement 6500, parm_start=4579
// OP_STORE_F	214	4442	0
// OP_IFNOT	35	4	0
// OP_ADD_F	31	230	4580
// OP_STORE_F	4580	4443	0
// OP_GOTO	3	0	0
// OP_ADD_F	31	216	4581
// OP_STORE_F	4581	4443	0
// OP_STORE_V	339	4	0
// OP_STORE_V	306	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	493	0	0
// OP_CALL0	4530	0	0
// OP_STORE_ENT	1	4579	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	29	0
// OP_NE_E	29	30	4582
// OP_IFNOT	4582	31	0
// OP_ADDRESS	29	166	4583
// OP_STOREP_V	286	4583	0
// OP_ADDRESS	29	117	4586
// OP_ADDRESS	29	175	4589
// OP_LOAD_V	4579	395	4592
// OP_STOREP_V	4592	4589	0
// OP_STOREP_V	4592	4586	0
// OP_ADDRESS	29	174	4595
// OP_STOREP_F	214	4595	0
// OP_ADDRESS	29	150	4596
// OP_ADD_F	31	677	4597
// OP_STOREP_F	4597	4596	0
// OP_ADDRESS	29	163	4598
// OP_STOREP_F	250	4598	0
// OP_ADDRESS	29	104	4599
// OP_STOREP_F	237	4599	0
// OP_ADDRESS	29	103	4600
// OP_STOREP_F	227	4600	0
// OP_ADDRESS	29	93	4601
// OP_STOREP_F	213	4601	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	4579	105	4602
// OP_STORE_V	4602	7	0
// OP_CALL2	448	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	29	0
// OP_GOTO	-31	0	0
// OP_STORE_V	339	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	493	0	0
// OP_BITOR	38	593	4605
// OP_STORE_F	4605	38	0
// OP_DONE	0	0	0
void () execute_changelevel = 
{
    local entity pos;
    intermission_running = TRUE;
    if(deathmatch)
    {
        intermission_exittime = time + MOVETYPE_FLY;
    }
    else
    {
        intermission_exittime = time + FL_SWIM;
    }
    
    WriteByte(MSG_ALL, SVC_CDTRACK);
    WriteByte(MSG_ALL, MOVETYPE_WALK);
    WriteByte(MSG_ALL, MOVETYPE_WALK);
    pos = FindIntermission();
    other = find(world, classname, "player");
    
    while(other != world)
    {
        other.view_ofs = VEC_ORIGIN;
        other.v_angle = pos.mangle;
        other.angles = pos.mangle;
        other.fixangle = TRUE;
        other.nextthink = time + 0.500;
        other.takedamage = DAMAGE_NO;
        other.solid = SOLID_NOT;
        other.movetype = MOVETYPE_NONE;
        other.modelindex = FALSE;
        setorigin(other, pos.origin);
        other = find(other, classname, "player");
    }
    
    WriteByte(MSG_ALL, SVC_INTERMISSION);
    serverflags = serverflags | INITLEVEL;
};

// changelevel_touch
// function begins at statement 6561, parm_start=4607
// OP_LOAD_S	29	129	4608
// OP_NE_S	4608	1102	4609
// OP_IFNOT	4609	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4610	4	0
// OP_CALL1	487	0	0
// OP_IFNOT	1	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	4611	13	0
// OP_CALL4	520	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	571	4612
// OP_STORE_V	4612	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	29	180	4613
// OP_STORE_V	4613	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	4614	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	351	4615
// OP_STORE_S	4615	4541	0
// OP_CALL0	518	0	0
// OP_LOAD_F	28	195	4616
// OP_BITAND	4616	214	4617
// OP_EQ_F	35	213	4618
// OP_AND	4617	4618	4619
// OP_IFNOT	4619	3	0
// OP_CALL0	4542	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	4620
// OP_STOREP_FNC	517	4620	0
// OP_ADDRESS	28	148	4621
// OP_STOREP_FNC	4578	4621	0
// OP_ADDRESS	28	150	4622
// OP_ADD_F	31	993	4623
// OP_STOREP_F	4623	4622	0
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
        T_Damage(other, self, self, 50000.000);
        return;
    }
    
    bprint(other.teamname);
    bprint(other.netname);
    bprint(" exited the level\n");
    nextmap = self.map;
    SUB_UseTargets();
    
    if((self.spawnflags & TRUE) && (deathmatch == FALSE))
    {
        GotoNextMap();
        return;
    }
    
    self.touch = SUB_Null;
    self.think = execute_changelevel;
    self.nextthink = time + 0.100;
};

// trigger_changelevel
// function begins at statement 6600, parm_start=4625
// OP_LOAD_S	28	351	4625
// OP_NOT_S	4625	0	4626
// OP_IFNOT	4626	3	0
// OP_STORE_V	4627	4	0
// OP_CALL1	456	0	0
// OP_CALL0	949	0	0
// OP_ADDRESS	28	146	4628
// OP_STOREP_FNC	4606	4628	0
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
// function begins at statement 6609, parm_start=4631
// OP_IFNOT	36	7	0
// OP_STORE_V	28	4	0
// OP_CALL1	4395	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	511	0	0
// OP_CALL0	88	0	0
// OP_GOTO	9	0	0
// OP_IFNOT	35	6	0
// OP_STORE_V	28	4	0
// OP_CALL1	4395	0	0
// OP_CALL0	90	0	0
// OP_CALL0	88	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	4631	4	0
// OP_CALL1	488	0	0
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
// function begins at statement 6625, parm_start=4632
// OP_LOAD_S	28	180	4632
// OP_STORE_V	4632	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	4633	4	0
// OP_CALL1	468	0	0
// OP_CALL0	4629	0	0
// OP_ADDRESS	28	93	4634
// OP_STOREP_F	4441	4634	0
// OP_ADDRESS	28	153	4635
// OP_LOAD_F	28	153	4636
// OP_SUB_F	4636	216	4637
// OP_STOREP_F	4637	4635	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	4436	0	0
// OP_CALL0	4630	0	0
// OP_DONE	0	0	0
void () ClientKill = 
{
    bprint(self.netname);
    bprint(" suicides\n");
    set_suicide_frame();
    self.modelindex = modelindex_player;
    self.frags = self.frags - FL_SWIM;
    countkill(self, self);
    respawn();
};

// CheckSpawnPoint
// function begins at statement 6642, parm_start=4639
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (vector v) CheckSpawnPoint = 
{
    return FALSE;
};

// SelectSpawnPoint
// function begins at statement 6644, parm_start=4643
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4539	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4643	0
// OP_IFNOT	4643	2	0
// OP_RETURN	4643	0	0
// OP_IFNOT	36	17	0
// OP_STORE_V	4294	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4645	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4294	0
// OP_EQ_E	4294	30	4646
// OP_IFNOT	4646	6	0
// OP_STORE_V	4294	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4538	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4294	0
// OP_NE_E	4294	30	4647
// OP_IFNOT	4647	2	0
// OP_RETURN	4294	0	0
// OP_GOTO	33	0	0
// OP_IFNOT	35	32	0
// OP_STORE_V	4294	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4648	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4294	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	4644	0
// OP_GT	4644	4649	4650
// OP_IFNOT	4650	6	0
// OP_STORE_V	4294	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4648	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4294	0
// OP_GT	4644	4651	4652
// OP_IFNOT	4652	6	0
// OP_STORE_V	4294	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4648	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4294	0
// OP_EQ_E	4294	30	4653
// OP_IFNOT	4653	6	0
// OP_STORE_V	4294	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4648	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4294	0
// OP_NE_E	4294	30	4654
// OP_IFNOT	4654	2	0
// OP_RETURN	4294	0	0
// OP_IFNOT	38	8	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4655	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4643	0
// OP_IFNOT	4643	2	0
// OP_RETURN	4643	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4538	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4643	0
// OP_NOT_ENT	4643	0	4656
// OP_IFNOT	4656	3	0
// OP_STORE_V	4657	4	0
// OP_CALL1	455	0	0
// OP_RETURN	4643	0	0
// OP_DONE	0	0	0
entity () SelectSpawnPoint = 
{
    local entity spot;
    local float rnd;
    spot = find(world, classname, "testplayerstart");
    
    if(spot)
    {
        return spot;
    }
    
    if(coop)
    {
        lastspawn = find(lastspawn, classname, "info_player_coop");
        
        if(lastspawn == world)
        {
            lastspawn = find(lastspawn, classname, "info_player_start");
        }
        
        
        if(lastspawn != world)
        {
            return lastspawn;
        }
        
    }
    else
    {
        
        if(deathmatch)
        {
            lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            rnd = random();
            
            if(rnd > 0.330)
            {
                lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            }
            
            
            if(rnd > 0.660)
            {
                lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            }
            
            
            if(lastspawn == world)
            {
                lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            }
            
            
            if(lastspawn != world)
            {
                return lastspawn;
            }
            
        }
        
    }
    
    
    if(serverflags)
    {
        spot = find(world, classname, "info_player_start2");
        
        if(spot)
        {
            return spot;
        }
        
    }
    
    spot = find(world, classname, "info_player_start");
    
    if(!spot)
    {
        error("PutClientInServer: no info_player_start on level");
    }
    
    return spot;
};

void () PlayerDie;
void () NewCarriedPath;
void () initBotLevel;
// PutClientInServer
// function begins at statement 6719, parm_start=4661
// OP_ADDRESS	28	129	4663
// OP_STOREP_S	1102	4663	0
// OP_ADDRESS	28	152	4664
// OP_STOREP_F	574	4664	0
// OP_ADDRESS	28	163	4665
// OP_STOREP_F	252	4665	0
// OP_ADDRESS	28	104	4666
// OP_STOREP_F	240	4666	0
// OP_ADDRESS	28	103	4667
// OP_STOREP_F	228	4667	0
// OP_ADDRESS	28	388	4668
// OP_STOREP_F	213	4668	0
// OP_ADDRESS	28	185	4669
// OP_STOREP_F	574	4669	0
// OP_ADDRESS	28	182	4670
// OP_STOREP_F	217	4670	0
// OP_ADDRESS	28	391	4671
// OP_ADD_F	31	2717	4672
// OP_STOREP_F	4672	4671	0
// OP_ADDRESS	28	420	4673
// OP_STOREP_F	216	4673	0
// OP_ADDRESS	28	377	4674
// OP_STOREP_F	213	4674	0
// OP_ADDRESS	28	378	4675
// OP_STOREP_F	213	4675	0
// OP_ADDRESS	28	376	4676
// OP_STOREP_F	213	4676	0
// OP_ADDRESS	28	375	4677
// OP_STOREP_F	213	4677	0
// OP_ADDRESS	28	133	4678
// OP_STOREP_F	213	4678	0
// OP_ADDRESS	28	379	4679
// OP_STOREP_F	213	4679	0
// OP_CALL0	4510	0	0
// OP_CALL0	2169	0	0
// OP_ADDRESS	28	373	4680
// OP_STOREP_F	31	4680	0
// OP_ADDRESS	28	361	4681
// OP_STOREP_FNC	4432	4681	0
// OP_ADDRESS	28	362	4682
// OP_STOREP_FNC	4658	4682	0
// OP_ADDRESS	28	524	4683
// OP_STOREP_FNC	876	4683	0
// OP_ADDRESS	28	165	4684
// OP_STOREP_F	246	4684	0
// OP_ADDRESS	28	417	4685
// OP_STOREP_F	213	4685	0
// OP_CALL0	4642	0	0
// OP_STORE_ENT	1	4661	0
// OP_ADDRESS	28	105	4686
// OP_LOAD_V	4661	105	4689
// OP_ADD_V	4689	713	4692
// OP_STOREP_V	4692	4686	0
// OP_ADDRESS	28	117	4695
// OP_LOAD_V	4661	117	4698
// OP_STOREP_V	4698	4695	0
// OP_ADDRESS	28	174	4701
// OP_STOREP_F	214	4701	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4343	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	93	4702
// OP_STORE_F	4702	4440	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4342	7	0
// OP_CALL2	449	0	0
// OP_LOAD_F	28	93	4703
// OP_STORE_F	4703	4441	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	166	4704
// OP_STOREP_V	4707	4704	0
// OP_LOAD_ENT	28	418	4710
// OP_EQ_E	4710	30	4711
// OP_IFNOT	4711	2	0
// OP_CALL0	4659	0	0
// OP_LOAD_ENT	28	418	4712
// OP_STORE_V	4712	4	0
// OP_LOAD_V	28	105	4713
// OP_STORE_V	4713	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	28	418	4716
// OP_ADDRESS	4716	418	4717
// OP_STOREP_ENT	30	4717	0
// OP_ADDRESS	28	552	4718
// OP_STOREP_F	585	4718	0
// OP_LOAD_F	28	551	4719
// OP_NOT_F	4719	0	4720
// OP_IFNOT	4720	3	0
// OP_ADD_F	614	214	4721
// OP_STORE_F	4721	614	0
// OP_ADDRESS	28	551	4722
// OP_STOREP_F	214	4722	0
// OP_CALL0	4433	0	0
// OP_OR	35	36	4723
// OP_IFNOT	4723	9	0
// OP_LOAD_V	28	117	4724
// OP_STORE_V	4724	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	4727
// OP_MUL_VF	59	576	4730
// OP_ADD_V	4727	4730	4733
// OP_STORE_V	4733	4	0
// OP_CALL1	4434	0	0
// OP_LOAD_V	28	105	4736
// OP_STORE_V	4736	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	4435	0	0
// OP_STORE_V	4739	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	4662	0
// OP_BITAND	4662	594	4740
// OP_IFNOT	4740	6	0
// OP_BITOR	4662	593	4741
// OP_STORE_F	4741	38	0
// OP_STORE_V	4739	4	0
// OP_STORE_V	4742	7	0
// OP_CALL2	505	0	0
// OP_BITAND	38	593	4743
// OP_IFNOT	4743	2	0
// OP_CALL0	4660	0	0
// OP_DONE	0	0	0
void () PutClientInServer = 
{
    local entity spot;
    local float dedflags;
    self.classname = "player";
    self.health = MUST_HAVE;
    self.takedamage = DAMAGE_AIM;
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_WALK;
    self.show_hostile = FALSE;
    self.max_health = MUST_HAVE;
    self.flags = FL_CLIENT;
    self.air_finished = time + 12.000;
    self.dmg = FL_SWIM;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.effects = FALSE;
    self.invincible_time = FALSE;
    DecodeLevelParms();
    W_SetCurrentAmmo();
    self.attack_finished = time;
    self.th_pain = player_pain;
    self.th_die = PlayerDie;
    self.th_cache = cacheenemy;
    self.deadflag = DEAD_NO;
    self.pausetime = FALSE;
    spot = SelectSpawnPoint();
    self.origin = spot.origin + '0.000 0.000 1.000';
    self.angles = spot.angles;
    self.fixangle = TRUE;
    setmodel(self, "progs/eyes.mdl");
    modelindex_eyes = self.modelindex;
    setmodel(self, "progs/player.mdl");
    modelindex_player = self.modelindex;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.view_ofs = '0.000 0.000 22.000';
    
    if(self.movetarget == world)
    {
        NewCarriedPath();
    }
    
    setorigin(self.movetarget, self.origin);
    self.movetarget.movetarget = world;
    self.pathtype = NEVERTARGET;
    
    if(!self.pather)
    {
        NUMPATHERS = NUMPATHERS + TRUE;
    }
    
    self.pather = TRUE;
    player_stand1();
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        spawn_tfog(self.origin + (v_forward * KINDA_WANT));
    }
    
    spawn_tdeath(self.origin, self);
    dedflags = cvar("temp1");
    
    if(dedflags & DEDICATED)
    {
        serverflags = dedflags | INITLEVEL;
        cvar_set("temp1", "0");
    }
    
    
    if(serverflags & INITLEVEL)
    {
        initBotLevel();
    }
    
};

// info_player_start
// function begins at statement 6843, parm_start=4744
// OP_DONE	0	0	0
void () info_player_start = 
{
};

// info_player_start2
// function begins at statement 6844, parm_start=4745
// OP_DONE	0	0	0
void () info_player_start2 = 
{
};

// testplayerstart
// function begins at statement 6845, parm_start=4746
// OP_DONE	0	0	0
void () testplayerstart = 
{
};

// info_player_deathmatch
// function begins at statement 6846, parm_start=4747
// OP_DONE	0	0	0
void () info_player_deathmatch = 
{
};

// info_player_coop
// function begins at statement 6847, parm_start=4748
// OP_DONE	0	0	0
void () info_player_coop = 
{
};

// PrintClientScore
// function begins at statement 6848, parm_start=4749
// OP_LOAD_F	4749	153	4750
// OP_GT	4750	4751	4752
// OP_LOAD_F	4749	153	4753
// OP_LT	4753	213	4754
// OP_AND	4752	4754	4755
// OP_IFNOT	4755	4	0
// OP_STORE_V	4756	4	0
// OP_CALL1	468	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	4749	153	4757
// OP_GE	4757	213	4758
// OP_IFNOT	4758	11	0
// OP_LOAD_F	4749	153	4759
// OP_LT	4759	574	4760
// OP_IFNOT	4760	3	0
// OP_STORE_V	4756	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	4749	153	4761
// OP_LT	4761	235	4762
// OP_IFNOT	4762	3	0
// OP_STORE_V	4756	4	0
// OP_CALL1	468	0	0
// OP_DONE	0	0	0
void (entity c) PrintClientScore = 
{
    if((c.frags > -10.000) && (c.frags < FALSE))
    {
        bprint(" ");
    }
    else
    {
        
        if(c.frags >= FALSE)
        {
            
            if(c.frags < MUST_HAVE)
            {
                bprint(" ");
            }
            
            
            if(c.frags < MOVETYPE_BOUNCE)
            {
                bprint(" ");
            }
            
        }
        
    }
    
};

// DumpScore
// function begins at statement 6871, parm_start=4764
// OP_LOAD_ENT	30	164	4767
// OP_IFNOT	4767	3	0
// OP_STORE_V	4768	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4764	0
// OP_STORE_ENT	30	4765	0
// OP_IFNOT	4764	46	0
// OP_NOT_ENT	4765	0	4769
// OP_IFNOT	4769	5	0
// OP_STORE_ENT	4764	4765	0
// OP_ADDRESS	4764	164	4770
// OP_STOREP_ENT	30	4770	0
// OP_GOTO	34	0	0
// OP_LOAD_F	4764	153	4771
// OP_LOAD_F	4765	153	4772
// OP_GT	4771	4772	4773
// OP_IFNOT	4773	5	0
// OP_ADDRESS	4764	164	4774
// OP_STOREP_ENT	4765	4774	0
// OP_STORE_ENT	4764	4765	0
// OP_GOTO	26	0	0
// OP_STORE_ENT	4765	4766	0
// OP_LOAD_ENT	4766	164	4775
// OP_NOT_ENT	4775	0	4776
// OP_IFNOT	4776	6	0
// OP_ADDRESS	4764	164	4777
// OP_STOREP_ENT	30	4777	0
// OP_ADDRESS	4766	164	4778
// OP_STOREP_ENT	4764	4778	0
// OP_GOTO	14	0	0
// OP_LOAD_ENT	4766	164	4779
// OP_LOAD_F	4779	153	4780
// OP_LOAD_F	4764	153	4781
// OP_LT	4780	4781	4782
// OP_IFNOT	4782	7	0
// OP_ADDRESS	4764	164	4783
// OP_LOAD_ENT	4766	164	4784
// OP_STOREP_ENT	4784	4783	0
// OP_ADDRESS	4766	164	4785
// OP_STOREP_ENT	4764	4785	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	4766	164	4786
// OP_STORE_ENT	4786	4766	0
// OP_LOAD_ENT	4766	164	4787
// OP_NE_E	4787	4764	4788
// OP_IF	4788	-23	0
// OP_STORE_V	4764	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4764	0
// OP_GOTO	-45	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	468	0	0
// OP_IFNOT	4765	6	0
// OP_STORE_V	4765	4	0
// OP_CALL1	4748	0	0
// OP_LOAD_ENT	4765	164	4789
// OP_STORE_ENT	4789	4765	0
// OP_GOTO	-5	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	468	0	0
// OP_DONE	0	0	0
void () DumpScore = 
{
    local entity e;
    local entity sort;
    local entity walk;
    
    if(world.chain)
    {
        error("DumpScore: world.chain is set");
    }
    
    e = find(world, classname, "player");
    sort = world;
    
    while(e)
    {
        if(!sort)
        {
            sort = e;
            e.chain = world;
        }
        else
        {
            if(e.frags > sort.frags)
            {
                e.chain = sort;
                sort = e;
            }
            else
            {
                walk = sort;
                do
                {
                    if(!walk.chain)
                    {
                        e.chain = world;
                        walk.chain = e;
                    }
                    else
                    {
                        if(walk.chain.frags < e.frags)
                        {
                            e.chain = walk.chain;
                            walk.chain = e;
                        }
                        else
                        {
                            walk = walk.chain;
                        }
                        
                    }
                    
                } while (walk.chain != e);
            }
            
        }
        
        e = find(e, classname, "player");
    }
    
    bprint("\n");
    
    while(sort)
    {
        PrintClientScore(sort);
        sort = sort.chain;
    }
    
    bprint("\n");
};

// NextLevel
// function begins at statement 6938, parm_start=4791
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	4792	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	4791	0
// OP_NOT_ENT	4791	0	4793
// OP_EQ_S	34	4794	4795
// OP_OR	4793	4795	4796
// OP_IFNOT	4796	5	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	4791	0
// OP_ADDRESS	4791	351	4797
// OP_STOREP_S	34	4797	0
// OP_LOAD_S	4791	351	4798
// OP_STORE_S	4798	4541	0
// OP_LOAD_F	4791	150	4799
// OP_LT	4799	31	4800
// OP_IFNOT	4800	6	0
// OP_ADDRESS	4791	148	4801
// OP_STOREP_FNC	4578	4801	0
// OP_ADDRESS	4791	150	4802
// OP_ADD_F	31	993	4803
// OP_STOREP_F	4803	4802	0
// OP_DONE	0	0	0
void () NextLevel = 
{
    local entity o;
    o = find(world, classname, "trigger_changelevel");
    
    if(!o || (mapname == "start"))
    {
        o = spawn();
        o.map = mapname;
    }
    
    nextmap = o.map;
    
    if(o.nextthink < time)
    {
        o.think = execute_changelevel;
        o.nextthink = time + 0.100;
    }
    
};

// CheckRules
// function begins at statement 6962, parm_start=4805
// OP_IFNOT	342	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4807	4	0
// OP_CALL1	487	0	0
// OP_MUL_F	1	730	4808
// OP_STORE_F	4808	4805	0
// OP_STORE_V	4809	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	4806	0
// OP_GE	31	4805	4810
// OP_AND	4805	4810	4811
// OP_IFNOT	4811	3	0
// OP_CALL0	4790	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	153	4812
// OP_GE	4812	4806	4813
// OP_AND	4806	4813	4814
// OP_IFNOT	4814	3	0
// OP_CALL0	4790	0	0
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
    
    timelimit = cvar("timelimit") * 60.000;
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
// function begins at statement 6983, parm_start=4816
// OP_LOAD_F	28	182	4818
// OP_BITAND	4818	223	4819
// OP_IFNOT	4819	18	0
// OP_LOAD_V	28	113	4820
// OP_STORE_V	4820	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	4817	0
// OP_SUB_F	4817	576	4823
// OP_STORE_F	4823	4817	0
// OP_LE	4817	213	4824
// OP_IFNOT	4824	4	0
// OP_ADDRESS	28	113	4825
// OP_STOREP_V	286	4825	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	113	4828
// OP_LOAD_V	28	113	4831
// OP_STORE_V	4831	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	4817	1	4834
// OP_STOREP_V	4834	4828	0
// OP_LOAD_F	28	165	4837
// OP_EQ_F	4837	248	4838
// OP_IFNOT	4838	11	0
// OP_LOAD_F	28	172	4839
// OP_LOAD_F	28	171	4840
// OP_OR	4839	4840	4841
// OP_LOAD_F	28	170	4842
// OP_OR	4841	4842	4843
// OP_IFNOT	4843	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	165	4844
// OP_STOREP_F	249	4844	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	172	4845
// OP_NOT_F	4845	0	4846
// OP_LOAD_F	28	171	4847
// OP_NOT_F	4847	0	4848
// OP_AND	4846	4848	4849
// OP_LOAD_F	28	170	4850
// OP_NOT_F	4850	0	4851
// OP_AND	4849	4851	4852
// OP_IFNOT	4852	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	170	4853
// OP_STOREP_F	213	4853	0
// OP_ADDRESS	28	171	4854
// OP_STOREP_F	213	4854	0
// OP_ADDRESS	28	172	4855
// OP_STOREP_F	213	4855	0
// OP_CALL0	4630	0	0
// OP_DONE	0	0	0
void () PlayerDeathThink = 
{
    local entity old_self;
    local float forward;
    
    if(self.flags & FL_ONGROUND)
    {
        forward = vlen(self.velocity);
        forward = forward - KINDA_WANT;
        if(forward <= FALSE)
        {
            self.velocity = VEC_ORIGIN;
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
    
    self.button0 = FALSE;
    self.button1 = FALSE;
    self.button2 = FALSE;
    respawn();
};

// PlayerJump
// function begins at statement 7034, parm_start=4857
// OP_LOAD_F	28	182	4863
// OP_BITAND	4863	225	4864
// OP_IFNOT	4864	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	4865
// OP_GE	4865	216	4866
// OP_IFNOT	4866	38	0
// OP_LOAD_F	28	190	4867
// OP_EQ_F	4867	278	4868
// OP_IFNOT	4868	4	0
// OP_ADDRESS	28	116	4869
// OP_STOREP_F	574	4869	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	190	4870
// OP_EQ_F	4870	279	4871
// OP_IFNOT	4871	4	0
// OP_ADDRESS	28	116	4872
// OP_STOREP_F	1178	4872	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	116	4873
// OP_STOREP_F	756	4873	0
// OP_LOAD_F	28	390	4874
// OP_LT	4874	31	4875
// OP_IFNOT	4875	20	0
// OP_ADDRESS	28	390	4876
// OP_ADD_F	31	214	4877
// OP_STOREP_F	4877	4876	0
// OP_CALL0	452	0	0
// OP_LT	1	677	4878
// OP_IFNOT	4878	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4340	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4341	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	4879
// OP_BITAND	4879	223	4880
// OP_NOT_F	4880	0	4881
// OP_IFNOT	4881	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	4882
// OP_BITAND	4882	226	4883
// OP_NOT_F	4883	0	4884
// OP_IFNOT	4884	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	182	4885
// OP_LOAD_F	28	182	4886
// OP_LOAD_F	28	182	4887
// OP_BITAND	4887	226	4888
// OP_SUB_F	4886	4888	4889
// OP_STOREP_F	4889	4885	0
// OP_ADDRESS	28	182	4890
// OP_LOAD_F	28	182	4891
// OP_SUB_F	4891	223	4892
// OP_STOREP_F	4892	4890	0
// OP_ADDRESS	28	172	4893
// OP_STOREP_F	213	4893	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4303	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	116	4894
// OP_LOAD_F	28	116	4895
// OP_ADD_F	4895	4896	4897
// OP_STOREP_F	4897	4894	0
// OP_DONE	0	0	0
void () PlayerJump = 
{
    local vector start;
    local vector end;
    
    if(self.flags & FL_WATERJUMP)
    {
        return;
    }
    
    
    if(self.waterlevel >= FL_SWIM)
    {
        if(self.watertype == CONTENT_WATER)
        {
            self.velocity_z = MUST_HAVE;
        }
        else
        {
            if(self.watertype == CONTENT_SLIME)
            {
                self.velocity_z = 80.000;
            }
            else
            {
                self.velocity_z = 50.000;
            }
            
        }
        
        
        if(self.swim_flag < time)
        {
            self.swim_flag = time + TRUE;
            if(random() < 0.500)
            {
                sound(self, CHAN_BODY, "misc/water1.wav", TRUE, ATTN_NORM);
            }
            else
            {
                sound(self, CHAN_BODY, "misc/water2.wav", TRUE, ATTN_NORM);
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
    self.button2 = FALSE;
    sound(self, CHAN_BODY, "player/plyrjmp8.wav", TRUE, ATTN_NORM);
    self.velocity_z = self.velocity_z + 270.000;
};

.float dmgtime;
// WaterMove
// function begins at statement 7111, parm_start=4900
// OP_LOAD_F	28	103	4900
// OP_EQ_F	4900	233	4901
// OP_IFNOT	4901	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	4902
// OP_LT	4902	213	4903
// OP_IFNOT	4903	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	4904
// OP_NE_F	4904	228	4905
// OP_IFNOT	4905	27	0
// OP_LOAD_F	28	391	4906
// OP_LT	4906	31	4907
// OP_IFNOT	4907	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4309	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	391	4908
// OP_ADD_F	31	234	4909
// OP_LT	4908	4909	4910
// OP_IFNOT	4910	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4308	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	391	4911
// OP_ADD_F	31	2717	4912
// OP_STOREP_F	4912	4911	0
// OP_ADDRESS	28	420	4913
// OP_STOREP_F	216	4913	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	391	4914
// OP_LT	4914	31	4915
// OP_IFNOT	4915	22	0
// OP_LOAD_F	28	374	4916
// OP_LT	4916	31	4917
// OP_IFNOT	4917	19	0
// OP_ADDRESS	28	420	4918
// OP_LOAD_F	28	420	4919
// OP_ADD_F	4919	216	4920
// OP_STOREP_F	4920	4918	0
// OP_LOAD_F	28	420	4921
// OP_GT	4921	2246	4922
// OP_IFNOT	4922	3	0
// OP_ADDRESS	28	420	4923
// OP_STOREP_F	235	4923	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	420	4924
// OP_STORE_V	4924	13	0
// OP_CALL4	520	0	0
// OP_ADDRESS	28	374	4925
// OP_ADD_F	31	214	4926
// OP_STOREP_F	4926	4925	0
// OP_LOAD_F	28	189	4927
// OP_NOT_F	4927	0	4928
// OP_IFNOT	4928	15	0
// OP_LOAD_F	28	182	4929
// OP_BITAND	4929	218	4930
// OP_IFNOT	4930	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4337	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	182	4931
// OP_LOAD_F	28	182	4932
// OP_SUB_F	4932	218	4933
// OP_STOREP_F	4933	4931	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	4934
// OP_EQ_F	4934	280	4935
// OP_IFNOT	4935	22	0
// OP_LOAD_F	28	4898	4936
// OP_LT	4936	31	4937
// OP_IFNOT	4937	18	0
// OP_LOAD_F	28	378	4938
// OP_GT	4938	31	4939
// OP_IFNOT	4939	5	0
// OP_ADDRESS	28	4898	4940
// OP_ADD_F	31	214	4941
// OP_STOREP_F	4941	4940	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	4898	4942
// OP_ADD_F	31	1226	4943
// OP_STOREP_F	4943	4942	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	4944
// OP_MUL_F	235	4944	4945
// OP_STORE_V	4945	13	0
// OP_CALL4	520	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	190	4946
// OP_EQ_F	4946	279	4947
// OP_IFNOT	4947	17	0
// OP_LOAD_F	28	4898	4948
// OP_LT	4948	31	4949
// OP_LOAD_F	28	378	4950
// OP_LT	4950	31	4951
// OP_AND	4949	4951	4952
// OP_IFNOT	4952	11	0
// OP_ADDRESS	28	4898	4953
// OP_ADD_F	31	214	4954
// OP_STOREP_F	4954	4953	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	4955
// OP_MUL_F	229	4955	4956
// OP_STORE_V	4956	13	0
// OP_CALL4	520	0	0
// OP_LOAD_F	28	182	4957
// OP_BITAND	4957	218	4958
// OP_NOT_F	4958	0	4959
// OP_IFNOT	4959	34	0
// OP_LOAD_F	28	190	4960
// OP_EQ_F	4960	280	4961
// OP_IFNOT	4961	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4336	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	190	4962
// OP_EQ_F	4962	278	4963
// OP_IFNOT	4963	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4335	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	190	4964
// OP_EQ_F	4964	279	4965
// OP_IFNOT	4965	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4334	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	182	4966
// OP_LOAD_F	28	182	4967
// OP_ADD_F	4967	218	4968
// OP_STOREP_F	4968	4966	0
// OP_ADDRESS	28	4898	4969
// OP_STOREP_F	213	4969	0
// OP_LOAD_F	28	182	4970
// OP_BITAND	4970	225	4971
// OP_NOT_F	4971	0	4972
// OP_IFNOT	4972	10	0
// OP_ADDRESS	28	113	4973
// OP_LOAD_V	28	113	4976
// OP_LOAD_F	28	189	4979
// OP_MUL_F	2355	4979	4980
// OP_MUL_F	4980	32	4981
// OP_LOAD_V	28	113	4982
// OP_MUL_FV	4981	4982	4985
// OP_SUB_V	4976	4985	4988
// OP_STOREP_V	4988	4973	0
// OP_DONE	0	0	0
void () WaterMove = 
{
    
    if(self.movetype == MOVETYPE_NOCLIP)
    {
        return;
    }
    
    
    if(self.health < FALSE)
    {
        return;
    }
    
    if(self.waterlevel != MOVETYPE_WALK)
    {
        if(self.air_finished < time)
        {
            sound(self, CHAN_VOICE, "player/gasp2.wav", TRUE, ATTN_NORM);
        }
        else
        {
            
            if(self.air_finished < (time + MOVETYPE_FLYMISSILE))
            {
                sound(self, CHAN_VOICE, "player/gasp1.wav", TRUE, ATTN_NORM);
            }
            
        }
        
        self.air_finished = time + 12.000;
        self.dmg = FL_SWIM;
    }
    else
    {
        
        if(self.air_finished < time)
        {
            
            if(self.pain_finished < time)
            {
                self.dmg = self.dmg + FL_SWIM;
                
                if(self.dmg > 15.000)
                {
                    self.dmg = MOVETYPE_BOUNCE;
                }
                
                T_Damage(self, world, world, self.dmg);
                self.pain_finished = time + TRUE;
            }
            
        }
        
    }
    
    
    if(!self.waterlevel)
    {
        
        if(self.flags & FL_INWATER)
        {
            sound(self, CHAN_BODY, "misc/outwater.wav", TRUE, ATTN_NORM);
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
                self.dmgtime = time + TRUE;
            }
            else
            {
                self.dmgtime = time + 0.200;
            }
            
            T_Damage(self, world, world, MOVETYPE_BOUNCE * self.waterlevel);
        }
        
    }
    else
    {
        
        if(self.watertype == CONTENT_SLIME)
        {
            
            if((self.dmgtime < time) && (self.radsuit_finished < time))
            {
                self.dmgtime = time + TRUE;
                T_Damage(self, world, world, MOVETYPE_STEP * self.waterlevel);
            }
            
        }
        
    }
    
    
    if(!(self.flags & FL_INWATER))
    {
        
        if(self.watertype == CONTENT_LAVA)
        {
            sound(self, CHAN_BODY, "player/inlava.wav", TRUE, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/inh2o.wav", TRUE, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_SLIME)
        {
            sound(self, CHAN_BODY, "player/slimbrn2.wav", TRUE, ATTN_NORM);
        }
        
        self.flags = self.flags + FL_INWATER;
        self.dmgtime = FALSE;
    }
    
    
    if(!(self.flags & FL_WATERJUMP))
    {
        self.velocity = self.velocity - (((0.800 * self.waterlevel) * frametime) * self.velocity);
    }
    
};

// CheckWaterJump
// function begins at statement 7283, parm_start=4992
// OP_LOAD_V	28	117	4998
// OP_STORE_V	4998	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	5001
// OP_STORE_V	5001	4992	0
// OP_ADD_F	4994	217	5004
// OP_STORE_F	5004	4994	0
// OP_STORE_F	213	61	0
// OP_STORE_V	59	4	0
// OP_CALL1	454	0	0
// OP_MUL_VF	59	5005	5006
// OP_ADD_V	4992	5006	5009
// OP_STORE_V	5009	4995	0
// OP_STORE_V	4992	4	0
// OP_STORE_V	4995	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	5012
// OP_IFNOT	5012	34	0
// OP_LOAD_F	28	141	5013
// OP_ADD_F	4994	5013	5014
// OP_SUB_F	5014	217	5015
// OP_STORE_F	5015	4994	0
// OP_MUL_VF	59	5005	5016
// OP_ADD_V	4992	5016	5019
// OP_STORE_V	5019	4995	0
// OP_ADDRESS	28	202	5022
// OP_MUL_VF	74	5025	5026
// OP_STOREP_V	5026	5022	0
// OP_STORE_V	4992	4	0
// OP_STORE_V	4995	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	5029
// OP_IFNOT	5029	17	0
// OP_ADDRESS	28	182	5030
// OP_LOAD_F	28	182	5031
// OP_BITOR	5031	225	5032
// OP_STOREP_F	5032	5030	0
// OP_ADDRESS	28	116	5033
// OP_STOREP_F	3529	5033	0
// OP_ADDRESS	28	182	5034
// OP_LOAD_F	28	182	5035
// OP_LOAD_F	28	182	5036
// OP_BITAND	5036	226	5037
// OP_SUB_F	5035	5037	5038
// OP_STOREP_F	5038	5034	0
// OP_ADDRESS	28	186	5039
// OP_ADD_F	31	216	5040
// OP_STOREP_F	5040	5039	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckWaterJump = 
{
    local vector start;
    local vector end;
    makevectors(self.angles);
    start = self.origin;
    start_z = start_z + FL_CLIENT;
    v_forward_z = FALSE;
    normalize(v_forward);
    end = start + (v_forward * 24.000);
    traceline(start, end, TRUE, self);
    
    if(trace_fraction < TRUE)
    {
        start_z = (start_z + self.maxs_z) - FL_CLIENT;
        end = start + (v_forward * 24.000);
        self.movedir = trace_plane_normal * -50.000;
        traceline(start, end, TRUE, self);
        
        if(trace_fraction == TRUE)
        {
            self.flags = self.flags | FL_WATERJUMP;
            self.velocity_z = 225.000;
            self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
            self.teleport_time = time + FL_SWIM;
            return;
        }
        
    }
    
};

// PlayerPreThink
// function begins at statement 7337, parm_start=5041
// OP_IFNOT	4442	3	0
// OP_CALL0	4568	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	5044
// OP_EQ_V	5044	286	5047
// OP_IFNOT	5047	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	175	5048
// OP_STORE_V	5048	4	0
// OP_CALL1	447	0	0
// OP_CALL0	4804	0	0
// OP_CALL0	4899	0	0
// OP_LOAD_F	28	189	5051
// OP_EQ_F	5051	216	5052
// OP_IFNOT	5052	2	0
// OP_CALL0	4991	0	0
// OP_LOAD_F	28	165	5053
// OP_GE	5053	248	5054
// OP_IFNOT	5054	3	0
// OP_CALL0	4815	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	5055
// OP_EQ_F	5055	247	5056
// OP_IFNOT	5056	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	172	5057
// OP_IFNOT	5057	3	0
// OP_CALL0	4856	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	182	5058
// OP_LOAD_F	28	182	5059
// OP_BITOR	5059	226	5060
// OP_STOREP_F	5060	5058	0
// OP_LOAD_F	28	417	5061
// OP_LT	31	5061	5062
// OP_IFNOT	5062	3	0
// OP_ADDRESS	28	113	5063
// OP_STOREP_V	286	5063	0
// OP_DONE	0	0	0
void () PlayerPreThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    
    if(intermission_running)
    {
        IntermissionThink();
        return;
    }
    
    
    if(self.view_ofs == VEC_ORIGIN)
    {
        return;
    }
    
    makevectors(self.v_angle);
    CheckRules();
    WaterMove();
    
    if(self.waterlevel == FL_SWIM)
    {
        CheckWaterJump();
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
    
    if(self.button2)
    {
        PlayerJump();
    }
    else
    {
        self.flags = self.flags | FL_JUMPRELEASED;
    }
    
    
    if(time < self.pausetime)
    {
        self.velocity = VEC_ORIGIN;
    }
    
};

// CheckPowerups
// function begins at statement 7376, parm_start=5067
// OP_LOAD_F	28	152	5067
// OP_LE	5067	213	5068
// OP_IFNOT	5068	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	376	5069
// OP_IFNOT	5069	63	0
// OP_LOAD_F	28	382	5070
// OP_LT	5070	31	5071
// OP_IFNOT	5071	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2961	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	382	5072
// OP_CALL0	452	0	0
// OP_MUL_F	1	228	5073
// OP_ADD_F	5073	214	5074
// OP_ADD_F	31	5074	5075
// OP_STOREP_F	5075	5072	0
// OP_LOAD_F	28	376	5076
// OP_ADD_F	31	228	5077
// OP_LT	5076	5077	5078
// OP_IFNOT	5078	28	0
// OP_LOAD_F	28	381	5079
// OP_EQ_F	5079	214	5080
// OP_IFNOT	5080	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5081	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2960	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	381	5082
// OP_ADD_F	31	214	5083
// OP_STOREP_F	5083	5082	0
// OP_LOAD_F	28	381	5084
// OP_LT	5084	31	5085
// OP_IFNOT	5085	7	0
// OP_ADDRESS	28	381	5086
// OP_ADD_F	31	214	5087
// OP_STOREP_F	5087	5086	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	28	376	5088
// OP_LT	5088	31	5089
// OP_IFNOT	5089	9	0
// OP_ADDRESS	28	162	5090
// OP_LOAD_F	28	162	5091
// OP_SUB_F	5091	272	5092
// OP_STOREP_F	5092	5090	0
// OP_ADDRESS	28	376	5093
// OP_STOREP_F	213	5093	0
// OP_ADDRESS	28	381	5094
// OP_STOREP_F	213	5094	0
// OP_ADDRESS	28	131	5095
// OP_STOREP_F	213	5095	0
// OP_ADDRESS	28	93	5096
// OP_STOREP_F	4440	5096	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	5097
// OP_STOREP_F	4441	5097	0
// OP_LOAD_F	28	375	5098
// OP_IFNOT	5098	57	0
// OP_LOAD_F	28	375	5099
// OP_ADD_F	31	228	5100
// OP_LT	5099	5100	5101
// OP_IFNOT	5101	28	0
// OP_LOAD_F	28	379	5102
// OP_EQ_F	5102	214	5103
// OP_IFNOT	5103	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5104	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2938	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	379	5105
// OP_ADD_F	31	214	5106
// OP_STOREP_F	5106	5105	0
// OP_LOAD_F	28	379	5107
// OP_LT	5107	31	5108
// OP_IFNOT	5108	7	0
// OP_ADDRESS	28	379	5109
// OP_ADD_F	31	214	5110
// OP_STOREP_F	5110	5109	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	28	375	5111
// OP_LT	5111	31	5112
// OP_IFNOT	5112	9	0
// OP_ADDRESS	28	162	5113
// OP_LOAD_F	28	162	5114
// OP_SUB_F	5114	273	5115
// OP_STOREP_F	5115	5113	0
// OP_ADDRESS	28	379	5116
// OP_STOREP_F	213	5116	0
// OP_ADDRESS	28	375	5117
// OP_STOREP_F	213	5117	0
// OP_LOAD_F	28	375	5118
// OP_GT	5118	31	5119
// OP_IFNOT	5119	6	0
// OP_ADDRESS	28	133	5120
// OP_LOAD_F	28	133	5121
// OP_BITOR	5121	336	5122
// OP_STOREP_F	5122	5120	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	5123
// OP_LOAD_F	28	133	5124
// OP_LOAD_F	28	133	5125
// OP_BITAND	5125	336	5126
// OP_SUB_F	5124	5126	5127
// OP_STOREP_F	5127	5123	0
// OP_LOAD_F	28	377	5128
// OP_IFNOT	5128	57	0
// OP_LOAD_F	28	377	5129
// OP_ADD_F	31	228	5130
// OP_LT	5129	5130	5131
// OP_IFNOT	5131	28	0
// OP_LOAD_F	28	383	5132
// OP_EQ_F	5132	214	5133
// OP_IFNOT	5133	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5134	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2973	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	383	5135
// OP_ADD_F	31	214	5136
// OP_STOREP_F	5136	5135	0
// OP_LOAD_F	28	383	5137
// OP_LT	5137	31	5138
// OP_IFNOT	5138	7	0
// OP_ADDRESS	28	383	5139
// OP_ADD_F	31	214	5140
// OP_STOREP_F	5140	5139	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	28	377	5141
// OP_LT	5141	31	5142
// OP_IFNOT	5142	9	0
// OP_ADDRESS	28	162	5143
// OP_LOAD_F	28	162	5144
// OP_SUB_F	5144	275	5145
// OP_STOREP_F	5145	5143	0
// OP_ADDRESS	28	377	5146
// OP_STOREP_F	213	5146	0
// OP_ADDRESS	28	383	5147
// OP_STOREP_F	213	5147	0
// OP_LOAD_F	28	377	5148
// OP_GT	5148	31	5149
// OP_IFNOT	5149	6	0
// OP_ADDRESS	28	133	5150
// OP_LOAD_F	28	133	5151
// OP_BITOR	5151	336	5152
// OP_STOREP_F	5152	5150	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	5153
// OP_LOAD_F	28	133	5154
// OP_LOAD_F	28	133	5155
// OP_BITAND	5155	336	5156
// OP_SUB_F	5154	5156	5157
// OP_STOREP_F	5157	5153	0
// OP_LOAD_F	28	378	5158
// OP_IFNOT	5158	46	0
// OP_ADDRESS	28	391	5159
// OP_ADD_F	31	2717	5160
// OP_STOREP_F	5160	5159	0
// OP_LOAD_F	28	378	5161
// OP_ADD_F	31	228	5162
// OP_LT	5161	5162	5163
// OP_IFNOT	5163	28	0
// OP_LOAD_F	28	385	5164
// OP_EQ_F	5164	214	5165
// OP_IFNOT	5165	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5166	7	0
// OP_CALL2	469	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2950	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	385	5167
// OP_ADD_F	31	214	5168
// OP_STOREP_F	5168	5167	0
// OP_LOAD_F	28	385	5169
// OP_LT	5169	31	5170
// OP_IFNOT	5170	7	0
// OP_ADDRESS	28	385	5171
// OP_ADD_F	31	214	5172
// OP_STOREP_F	5172	5171	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2290	7	0
// OP_CALL2	466	0	0
// OP_LOAD_F	28	378	5173
// OP_LT	5173	31	5174
// OP_IFNOT	5174	9	0
// OP_ADDRESS	28	162	5175
// OP_LOAD_F	28	162	5176
// OP_SUB_F	5176	274	5177
// OP_STOREP_F	5177	5175	0
// OP_ADDRESS	28	385	5178
// OP_STOREP_F	213	5178	0
// OP_ADDRESS	28	378	5179
// OP_STOREP_F	213	5179	0
// OP_DONE	0	0	0
void () CheckPowerups = 
{
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    if(self.invisible_finished)
    {
        
        if(self.invisible_sound < time)
        {
            sound(self, CHAN_AUTO, "items/inv3.wav", 0.500, ATTN_IDLE);
            self.invisible_sound = time + ((random() * MOVETYPE_WALK) + TRUE);
        }
        
        
        if(self.invisible_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.invisible_time == TRUE)
            {
                sprint(self, "Ring of Shadows magic is fading\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/inv2.wav", TRUE, ATTN_NORM);
                self.invisible_time = time + TRUE;
            }
            
            
            if(self.invisible_time < time)
            {
                self.invisible_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.invisible_finished < time)
        {
            self.items = self.items - IT_INVISIBILITY;
            self.invisible_finished = FALSE;
            self.invisible_time = FALSE;
        }
        
        self.frame = FALSE;
        self.modelindex = modelindex_eyes;
    }
    else
    {
        self.modelindex = modelindex_player;
    }
    
    
    if(self.invincible_finished)
    {
        
        if(self.invincible_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.invincible_time == TRUE)
            {
                sprint(self, "Protection is almost burned out\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/protect2.wav", TRUE, ATTN_NORM);
                self.invincible_time = time + TRUE;
            }
            
            
            if(self.invincible_time < time)
            {
                self.invincible_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.invincible_finished < time)
        {
            self.items = self.items - IT_INVULNERABILITY;
            self.invincible_time = FALSE;
            self.invincible_finished = FALSE;
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
        
        if(self.super_damage_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.super_time == TRUE)
            {
                sprint(self, "Quad Damage is wearing off\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/damage2.wav", TRUE, ATTN_NORM);
                self.super_time = time + TRUE;
            }
            
            
            if(self.super_time < time)
            {
                self.super_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.super_damage_finished < time)
        {
            self.items = self.items - IT_QUAD;
            self.super_damage_finished = FALSE;
            self.super_time = FALSE;
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
        self.air_finished = time + 12.000;
        
        if(self.radsuit_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.rad_time == TRUE)
            {
                sprint(self, "Air supply in Biosuit expiring\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/suit2.wav", TRUE, ATTN_NORM);
                self.rad_time = time + TRUE;
            }
            
            
            if(self.rad_time < time)
            {
                self.rad_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.radsuit_finished < time)
        {
            self.items = self.items - IT_SUIT;
            self.rad_time = FALSE;
            self.radsuit_finished = FALSE;
        }
        
    }
    
};

float () CheckDropPath;
void () DropBotPath;
// PlayerPostThink
// function begins at statement 7610, parm_start=5182
// OP_LOAD_V	28	166	5185
// OP_EQ_V	5185	286	5188
// OP_IFNOT	5188	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	5189
// OP_IFNOT	5189	2	0
// OP_RETURN	0	0	0
// OP_CALL0	5180	0	0
// OP_IFNOT	1	2	0
// OP_CALL0	5181	0	0
// OP_LOAD_ENT	28	418	5190
// OP_ADDRESS	5190	182	5191
// OP_LOAD_F	28	182	5192
// OP_STOREP_F	5192	5191	0
// OP_LOAD_ENT	28	418	5193
// OP_STORE_V	5193	4	0
// OP_LOAD_V	28	105	5194
// OP_STORE_V	5194	7	0
// OP_CALL2	448	0	0
// OP_CALL0	4170	0	0
// OP_LOAD_F	28	389	5197
// OP_LT	5197	5198	5199
// OP_LOAD_F	28	182	5200
// OP_BITAND	5200	223	5201
// OP_AND	5199	5201	5202
// OP_LOAD_F	28	152	5203
// OP_GT	5203	213	5204
// OP_AND	5202	5204	5205
// OP_IFNOT	5205	36	0
// OP_LOAD_F	28	190	5206
// OP_EQ_F	5206	278	5207
// OP_IFNOT	5207	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4333	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	389	5208
// OP_LT	5208	5209	5210
// OP_IFNOT	5210	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4305	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	393	5211
// OP_STOREP_S	5212	5211	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4304	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	389	5213
// OP_STOREP_F	213	5213	0
// OP_LOAD_F	28	182	5214
// OP_BITAND	5214	223	5215
// OP_NOT_F	5215	0	5216
// OP_IFNOT	5216	4	0
// OP_ADDRESS	28	389	5217
// OP_LOAD_F	28	116	5218
// OP_STOREP_F	5218	5217	0
// OP_CALL0	5066	0	0
// OP_DONE	0	0	0
void () PlayerPostThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    
    if(self.view_ofs == VEC_ORIGIN)
    {
        return;
    }
    
    
    if(self.deadflag)
    {
        return;
    }
    
    
    if(CheckDropPath())
    {
        DropBotPath();
    }
    
    self.movetarget.flags = self.flags;
    setorigin(self.movetarget, self.origin);
    W_WeaponFrame();
    
    if(((self.jump_flag < -300.000) && (self.flags & FL_ONGROUND)) && (self.health > FALSE))
    {
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/h2ojump.wav", TRUE, ATTN_NORM);
        }
        else
        {
            if(self.jump_flag < -650.000)
            {
                T_Damage(self, world, world, MOVETYPE_FLY);
                sound(self, CHAN_VOICE, "player/land2.wav", TRUE, ATTN_NORM);
                self.deathtype = "falling";
            }
            else
            {
                sound(self, CHAN_VOICE, "player/land.wav", TRUE, ATTN_NORM);
            }
            
        }
        
        self.jump_flag = FALSE;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.jump_flag = self.velocity_z;
    }
    
    CheckPowerups();
};

// printIntro
// function begins at statement 7683, parm_start=5220
// OP_IFNOT	37	25	0
// OP_GT	46	4512	5222
// OP_IFNOT	5222	11	0
// OP_BITAND	46	4514	5223
// OP_DIV_F	5223	267	5224
// OP_STORE_F	5224	615	0
// OP_BITAND	46	4517	5225
// OP_STORE_F	5225	5221	0
// OP_BITAND	46	4512	5226
// OP_STORE_F	5226	46	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5221	7	0
// OP_CALL2	4509	0	0
// OP_BITAND	38	589	5227
// OP_DIV_F	5227	222	5228
// OP_STORE_F	5228	5220	0
// OP_GT	5220	213	5229
// OP_IFNOT	5229	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5220	7	0
// OP_CALL2	4439	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5230	7	0
// OP_CALL2	506	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5231	7	0
// OP_CALL2	506	0	0
// OP_DONE	0	0	0
void () printIntro = 
{
    local float num;
    local float skinno;
    if(teamplay)
    {
        
        if(parm4 > 511.000)
        {
            SKINSMODE = (parm4 & 49152.000) / IT_ARMOR2;
            skinno = parm4 & 7680.000;
            parm4 = parm4 & 511.000;
            skinChange(self, skinno);
        }
        
        num = (serverflags & TEAMBOTS) / FL_ITEM;
        
        if(num > FALSE)
        {
            addTeamBots(self, num);
        }
        
        centerprint(self, "Server running team Reaper bots v0.8");
    }
    else
    {
        centerprint(self, "Server running Reaper bots v0.8");
    }
    
};

// ClientConnect
// function begins at statement 7712, parm_start=5232
// OP_LOAD_S	28	180	5234
// OP_STORE_V	5234	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5235	4	0
// OP_CALL1	468	0	0
// OP_ADDRESS	28	173	5236
// OP_STOREP_F	5237	5236	0
// OP_CALL0	4437	0	0
// OP_IFNOT	4442	2	0
// OP_CALL0	4544	0	0
// OP_DONE	0	0	0
void () ClientConnect = 
{
    local string tmp;
    local float num;
    bprint(self.netname);
    bprint(" entered the game\n");
    self.impulse = 204.000;
    initscore();
    
    if(intermission_running)
    {
        ExitIntermission();
    }
    
};

// ClientDisconnect
// function begins at statement 7723, parm_start=5238
// OP_IFNOT	342	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	571	5239
// OP_STORE_V	5239	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	28	180	5240
// OP_STORE_V	5240	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5241	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	28	153	5242
// OP_STORE_V	5242	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5243	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4320	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	325	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	129	5244
// OP_STOREP_S	5245	5244	0
// OP_CALL0	4629	0	0
// OP_DONE	0	0	0
void () ClientDisconnect = 
{
    local float num;
    
    if(gameover)
    {
        return;
    }
    
    bprint(self.teamname);
    bprint(self.netname);
    bprint(" left the game with ");
    bprint(ftos(self.frags));
    bprint(" frags\n");
    sound(self, CHAN_BODY, "player/tornoff2.wav", TRUE, ATTN_NONE);
    self.classname = "nobody";
    set_suicide_frame();
};

// ClientObituary
// function begins at statement 7750, parm_start=5246
// OP_CALL0	452	0	0
// OP_STORE_F	1	5248	0
// OP_LOAD_S	5246	129	5251
// OP_EQ_S	5251	1102	5252
// OP_LOAD_S	5246	129	5253
// OP_EQ_S	5253	2056	5254
// OP_OR	5252	5254	5255
// OP_IFNOT	5255	362	0
// OP_LOAD_S	5247	129	5256
// OP_EQ_S	5256	5257	5258
// OP_IFNOT	5258	35	0
// OP_LOAD_S	5246	571	5259
// OP_STORE_V	5259	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5246	180	5260
// OP_STORE_V	5260	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5261	4	0
// OP_CALL1	468	0	0
// OP_LOAD_ENT	5247	201	5262
// OP_LOAD_S	5262	571	5263
// OP_STORE_V	5263	4	0
// OP_CALL1	468	0	0
// OP_LOAD_ENT	5247	201	5264
// OP_LOAD_S	5264	180	5265
// OP_STORE_V	5265	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	468	0	0
// OP_LOAD_ENT	5247	201	5266
// OP_LOAD_S	5266	129	5267
// OP_EQ_S	5267	2056	5268
// OP_IFNOT	5268	2	0
// OP_STORE_F	214	621	0
// OP_LOAD_ENT	5247	201	5269
// OP_ADDRESS	5269	153	5270
// OP_LOAD_ENT	5247	201	5271
// OP_LOAD_F	5271	153	5272
// OP_ADD_F	5272	214	5273
// OP_STOREP_F	5273	5270	0
// OP_LOAD_ENT	5247	201	5274
// OP_STORE_V	5274	4	0
// OP_STORE_V	5246	7	0
// OP_CALL2	4436	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5247	129	5275
// OP_EQ_S	5275	5276	5277
// OP_IFNOT	5277	19	0
// OP_STORE_V	5278	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5246	571	5279
// OP_STORE_V	5279	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5246	180	5280
// OP_STORE_V	5280	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5281	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5246	4	0
// OP_STORE_V	5246	7	0
// OP_CALL2	4436	0	0
// OP_ADDRESS	5246	153	5282
// OP_LOAD_F	5246	153	5283
// OP_SUB_F	5283	214	5284
// OP_STOREP_F	5284	5282	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5247	129	5285
// OP_EQ_S	5285	1102	5286
// OP_LOAD_S	5247	129	5287
// OP_EQ_S	5287	2056	5288
// OP_OR	5286	5288	5289
// OP_IFNOT	5289	113	0
// OP_EQ_E	5246	5247	5290
// OP_IFNOT	5290	37	0
// OP_ADDRESS	5247	153	5291
// OP_LOAD_F	5247	153	5292
// OP_SUB_F	5292	214	5293
// OP_STOREP_F	5293	5291	0
// OP_STORE_V	5247	4	0
// OP_STORE_V	5247	7	0
// OP_CALL2	4436	0	0
// OP_LOAD_S	5246	571	5294
// OP_STORE_V	5294	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5246	180	5295
// OP_STORE_V	5295	4	0
// OP_CALL1	468	0	0
// OP_LOAD_F	5246	154	5296
// OP_EQ_F	5296	220	5297
// OP_LOAD_F	5246	189	5298
// OP_GT	5298	214	5299
// OP_AND	5297	5299	5300
// OP_IFNOT	5300	4	0
// OP_STORE_V	5301	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5246	154	5302
// OP_EQ_F	5302	218	5303
// OP_IFNOT	5303	4	0
// OP_STORE_V	5304	4	0
// OP_CALL1	468	0	0
// OP_GOTO	7	0	0
// OP_IFNOT	5248	4	0
// OP_STORE_V	5305	4	0
// OP_CALL1	468	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5306	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_GOTO	73	0	0
// OP_ADDRESS	5247	153	5307
// OP_LOAD_F	5247	153	5308
// OP_ADD_F	5308	214	5309
// OP_STOREP_F	5309	5307	0
// OP_STORE_V	5247	4	0
// OP_STORE_V	5246	7	0
// OP_CALL2	4436	0	0
// OP_LOAD_F	5247	154	5310
// OP_STORE_F	5310	5248	0
// OP_EQ_F	5248	253	5311
// OP_IFNOT	5311	3	0
// OP_STORE_S	5312	5249	0
// OP_STORE_S	2184	5250	0
// OP_EQ_F	5248	254	5313
// OP_IFNOT	5313	3	0
// OP_STORE_S	5314	5249	0
// OP_STORE_S	5315	5250	0
// OP_EQ_F	5248	255	5316
// OP_IFNOT	5316	3	0
// OP_STORE_S	5317	5249	0
// OP_STORE_S	5318	5250	0
// OP_EQ_F	5248	256	5319
// OP_IFNOT	5319	3	0
// OP_STORE_S	5320	5249	0
// OP_STORE_S	2184	5250	0
// OP_EQ_F	5248	257	5321
// OP_IFNOT	5321	3	0
// OP_STORE_S	5322	5249	0
// OP_STORE_S	2184	5250	0
// OP_EQ_F	5248	258	5323
// OP_IFNOT	5323	8	0
// OP_STORE_S	5324	5249	0
// OP_STORE_S	5325	5250	0
// OP_LOAD_F	5246	152	5326
// OP_LT	5326	5327	5328
// OP_IFNOT	5328	3	0
// OP_STORE_S	5329	5249	0
// OP_STORE_S	5330	5250	0
// OP_EQ_F	5248	259	5331
// OP_IFNOT	5331	8	0
// OP_STORE_S	5332	5249	0
// OP_STORE_S	5333	5250	0
// OP_LOAD_F	5246	152	5334
// OP_LT	5334	5327	5335
// OP_IFNOT	5335	3	0
// OP_STORE_S	5329	5249	0
// OP_STORE_S	5333	5250	0
// OP_EQ_F	5248	260	5336
// OP_IFNOT	5336	8	0
// OP_STORE_S	5337	5249	0
// OP_LOAD_F	5247	189	5338
// OP_GT	5338	214	5339
// OP_IFNOT	5339	3	0
// OP_STORE_S	5340	5250	0
// OP_GOTO	2	0	0
// OP_STORE_S	5341	5250	0
// OP_LOAD_S	5246	571	5342
// OP_STORE_V	5342	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5246	180	5343
// OP_STORE_V	5343	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5249	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	571	5344
// OP_STORE_V	5344	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	180	5345
// OP_STORE_V	5345	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	5250	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_GOTO	186	0	0
// OP_ADDRESS	5246	153	5346
// OP_LOAD_F	5246	153	5347
// OP_SUB_F	5347	214	5348
// OP_STOREP_F	5348	5346	0
// OP_LOAD_F	5246	190	5349
// OP_STORE_F	5349	5248	0
// OP_STORE_V	5246	4	0
// OP_STORE_V	5246	7	0
// OP_CALL2	4436	0	0
// OP_LOAD_S	5246	571	5350
// OP_STORE_V	5350	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5246	180	5351
// OP_STORE_V	5351	4	0
// OP_CALL1	468	0	0
// OP_EQ_F	5248	278	5352
// OP_IFNOT	5352	11	0
// OP_CALL0	452	0	0
// OP_LT	1	677	5353
// OP_IFNOT	5353	4	0
// OP_STORE_V	5354	4	0
// OP_CALL1	468	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5355	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	5248	279	5356
// OP_IFNOT	5356	11	0
// OP_CALL0	452	0	0
// OP_LT	1	677	5357
// OP_IFNOT	5357	4	0
// OP_STORE_V	5358	4	0
// OP_CALL1	468	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	5248	280	5360
// OP_IFNOT	5360	16	0
// OP_LOAD_F	5246	152	5361
// OP_LT	5361	5362	5363
// OP_IFNOT	5363	4	0
// OP_STORE_V	5364	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_LT	1	677	5365
// OP_IFNOT	5365	4	0
// OP_STORE_V	5366	4	0
// OP_CALL1	468	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5367	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5247	182	5368
// OP_BITAND	5368	219	5369
// OP_IFNOT	5369	82	0
// OP_LOAD_S	5247	129	5370
// OP_EQ_S	5370	1666	5371
// OP_IFNOT	5371	3	0
// OP_STORE_V	5372	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5373
// OP_EQ_S	5373	1627	5374
// OP_IFNOT	5374	3	0
// OP_STORE_V	5375	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5376
// OP_EQ_S	5376	1639	5377
// OP_IFNOT	5377	3	0
// OP_STORE_V	5378	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5379
// OP_EQ_S	5379	1737	5380
// OP_IFNOT	5380	3	0
// OP_STORE_V	5381	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5382
// OP_EQ_S	5382	1655	5383
// OP_IFNOT	5383	3	0
// OP_STORE_V	5384	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5385
// OP_EQ_S	5385	5386	5387
// OP_IFNOT	5387	3	0
// OP_STORE_V	5388	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5389
// OP_EQ_S	5389	1643	5390
// OP_IFNOT	5390	3	0
// OP_STORE_V	5391	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5392
// OP_EQ_S	5392	1213	5393
// OP_IFNOT	5393	3	0
// OP_STORE_V	5394	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5395
// OP_EQ_S	5395	1493	5396
// OP_IFNOT	5396	3	0
// OP_STORE_V	5397	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5398
// OP_EQ_S	5398	5399	5400
// OP_IFNOT	5400	3	0
// OP_STORE_V	5401	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5402
// OP_EQ_S	5402	1670	5403
// OP_IFNOT	5403	3	0
// OP_STORE_V	5404	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5405
// OP_EQ_S	5405	1623	5406
// OP_IFNOT	5406	3	0
// OP_STORE_V	5407	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5408
// OP_EQ_S	5408	1647	5409
// OP_IFNOT	5409	3	0
// OP_STORE_V	5410	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5411
// OP_EQ_S	5411	1651	5412
// OP_IFNOT	5412	3	0
// OP_STORE_V	5413	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5414
// OP_EQ_S	5414	1631	5415
// OP_IFNOT	5415	3	0
// OP_STORE_V	5416	4	0
// OP_CALL1	468	0	0
// OP_LOAD_S	5247	129	5417
// OP_EQ_S	5417	1635	5418
// OP_IFNOT	5418	3	0
// OP_STORE_V	5419	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5247	129	5420
// OP_EQ_S	5420	5421	5422
// OP_IFNOT	5422	4	0
// OP_STORE_V	5423	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	5247	104	5424
// OP_EQ_F	5424	241	5425
// OP_NE_E	5247	30	5426
// OP_AND	5425	5426	5427
// OP_IFNOT	5427	4	0
// OP_STORE_V	5428	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5246	393	5429
// OP_EQ_S	5429	5212	5430
// OP_IFNOT	5430	6	0
// OP_ADDRESS	5246	393	5431
// OP_STOREP_S	959	5431	0
// OP_STORE_V	5432	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5247	129	5433
// OP_EQ_S	5433	5434	5435
// OP_LOAD_S	5247	129	5436
// OP_EQ_S	5436	5437	5438
// OP_OR	5435	5438	5439
// OP_IFNOT	5439	4	0
// OP_STORE_V	5440	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5247	129	5441
// OP_EQ_S	5441	5442	5443
// OP_IFNOT	5443	4	0
// OP_STORE_V	5444	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	5247	129	5445
// OP_EQ_S	5445	4792	5446
// OP_IFNOT	5446	4	0
// OP_STORE_V	5447	4	0
// OP_CALL1	468	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	5448	4	0
// OP_CALL1	468	0	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) ClientObituary = 
{
    local float rnum;
    local string deathstring;
    local string deathstring2;
    rnum = random();
    
    if((targ.classname == "player") || (targ.classname == "dmbot"))
    {
        
        if(attacker.classname == "teledeath")
        {
            bprint(targ.teamname);
            bprint(targ.netname);
            bprint(" was telefragged by ");
            bprint(attacker.owner.teamname);
            bprint(attacker.owner.netname);
            bprint("\n");
            
            if(attacker.owner.classname == "dmbot")
            {
                TELEFRAGFLAG = TRUE;
            }
            
            attacker.owner.frags = attacker.owner.frags + TRUE;
            countkill(attacker.owner, targ);
            return;
        }
        
        
        if(attacker.classname == "teledeath2")
        {
            bprint("Satan's power deflects ");
            bprint(targ.teamname);
            bprint(targ.netname);
            bprint("'s telefrag\n");
            countkill(targ, targ);
            targ.frags = targ.frags - TRUE;
            return;
        }
        
        if((attacker.classname == "player") || (attacker.classname == "dmbot"))
        {
            if(targ == attacker)
            {
                attacker.frags = attacker.frags - TRUE;
                countkill(attacker, attacker);
                bprint(targ.teamname);
                bprint(targ.netname);
                
                if((targ.weapon == FL_GODMODE) && (targ.waterlevel > TRUE))
                {
                    bprint(" discharges into the water.\n");
                    return;
                }
                
                if(targ.weapon == FL_INWATER)
                {
                    bprint(" tries to put the pin back in\n");
                }
                else
                {
                    if(rnum)
                    {
                        bprint(" becomes bored with life\n");
                    }
                    else
                    {
                        bprint(" checks if his weapon is loaded\n");
                    }
                    
                }
                
                return;
            }
            else
            {
                attacker.frags = attacker.frags + TRUE;
                countkill(attacker, targ);
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
                    
                    if(targ.health < -40.000)
                    {
                        deathstring = " was gibbed by ";
                        deathstring2 = "'s grenade\n";
                    }
                    
                }
                
                
                if(rnum == IT_ROCKET_LAUNCHER)
                {
                    deathstring = " rides ";
                    deathstring2 = "'s rocket\n";
                    
                    if(targ.health < -40.000)
                    {
                        deathstring = " was gibbed by ";
                        deathstring2 = "'s rocket\n";
                    }
                    
                }
                
                
                if(rnum == IT_LIGHTNING)
                {
                    deathstring = " accepts ";
                    if(attacker.waterlevel > TRUE)
                    {
                        deathstring2 = "'s discharge\n";
                    }
                    else
                    {
                        deathstring2 = "'s shaft\n";
                    }
                    
                }
                
                bprint(targ.teamname);
                bprint(targ.netname);
                bprint(deathstring);
                bprint(attacker.teamname);
                bprint(attacker.netname);
                bprint(deathstring2);
            }
            
            return;
        }
        else
        {
            targ.frags = targ.frags - TRUE;
            rnum = targ.watertype;
            countkill(targ, targ);
            bprint(targ.teamname);
            bprint(targ.netname);
            if(rnum == CONTENT_WATER)
            {
                if(random() < 0.500)
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
                if(rnum == CONTENT_SLIME)
                {
                    if(random() < 0.500)
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
                    
                    if(rnum == CONTENT_LAVA)
                    {
                        
                        if(targ.health < -15.000)
                        {
                            bprint(" burst into flames\n");
                            return;
                        }
                        
                        if(random() < 0.500)
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
            
            
            if(targ.deathtype == "falling")
            {
                targ.deathtype = "";
                bprint(" fell to his death\n");
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
            
            bprint(" died\n");
        }
        
    }
    
};

