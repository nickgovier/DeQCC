void () player_pain;
void () player_stand1;
void (vector org, entity death_owner) spawn_tdeath;
float modelindex_eyes;
float modelindex_player;
float intermission_running;
float intermission_exittime;
// info_intermission
// function begins at statement 16838, parm_start=12324
// OP_DONE	0	0	0
void () info_intermission = 
{
};

// SetChangeParms
// function begins at statement 16839, parm_start=12324
// OP_LOAD_F	28	152	12324
// OP_LE	12324	817	12325
// OP_IFNOT	12325	3	0
// OP_CALL0	90	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	162	12326
// OP_LOAD_F	28	162	12327
// OP_LOAD_F	28	162	12328
// OP_BITOR	284	285	12329
// OP_BITOR	12329	286	12330
// OP_BITOR	12330	287	12331
// OP_BITOR	12331	288	12332
// OP_BITOR	12332	289	12333
// OP_BITAND	12328	12333	12334
// OP_SUB_F	12327	12334	12335
// OP_STOREP_F	12335	12326	0
// OP_LOAD_F	28	152	12336
// OP_GT	12336	1957	12337
// OP_IFNOT	12337	3	0
// OP_ADDRESS	28	152	12338
// OP_STOREP_F	1957	12338	0
// OP_LOAD_F	28	152	12339
// OP_LT	12339	2611	12340
// OP_IFNOT	12340	3	0
// OP_ADDRESS	28	152	12341
// OP_STOREP_F	2611	12341	0
// OP_LOAD_F	28	162	12342
// OP_STORE_F	12342	43	0
// OP_LOAD_F	28	152	12343
// OP_STORE_F	12343	44	0
// OP_LOAD_F	28	188	12344
// OP_STORE_F	12344	45	0
// OP_LOAD_F	28	158	12345
// OP_LT	12345	1380	12346
// OP_IFNOT	12346	3	0
// OP_STORE_F	1380	46	0
// OP_GOTO	3	0	0
// OP_LOAD_F	28	158	12347
// OP_STORE_F	12347	46	0
// OP_LOAD_F	28	159	12348
// OP_STORE_F	12348	47	0
// OP_LOAD_F	28	160	12349
// OP_STORE_F	12349	48	0
// OP_LOAD_F	28	161	12350
// OP_STORE_F	12350	49	0
// OP_LOAD_F	28	154	12351
// OP_STORE_F	12351	50	0
// OP_LOAD_F	28	187	12352
// OP_MUL_F	12352	1957	12353
// OP_STORE_F	12353	51	0
// OP_STORE_F	689	52	0
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
    parm10 = challenge;
};

// SetNewParms
// function begins at statement 16891, parm_start=12354
// OP_LOAD_S	30	130	12354
// OP_EQ_S	12354	12006	12355
// OP_IFNOT	12355	3	0
// OP_STORE_F	263	43	0
// OP_GOTO	2	0	0
// OP_STORE_F	276	43	0
// OP_STORE_F	1957	44	0
// OP_STORE_F	817	45	0
// OP_STORE_F	817	46	0
// OP_STORE_F	817	47	0
// OP_STORE_F	817	48	0
// OP_STORE_F	817	49	0
// OP_STORE_F	817	50	0
// OP_STORE_F	817	51	0
// OP_STORE_F	689	52	0
// OP_NOT_F	35	0	12356
// OP_NOT_F	36	0	12357
// OP_AND	12356	12357	12358
// OP_IFNOT	12358	2	0
// OP_STORE_F	817	58	0
// OP_DONE	0	0	0
void () SetNewParms = 
{
    if(world.model == "maps/start.bsp")
    {
        parm1 = IT_SUPER_NAILGUN;
    }
    else
    {
        parm1 = IT_NULL;
    }
    
    parm2 = 100;
    parm3 = 0;
    parm4 = 0;
    parm5 = 0;
    parm6 = 0;
    parm7 = 0;
    parm8 = 0;
    parm9 = 0;
    parm10 = challenge;
    
    if(!deathmatch && !coop)
    {
        parm16 = 0;
    }
    
};

// DecodeLevelParms
// function begins at statement 16912, parm_start=12360
// OP_IFNOT	38	5	0
// OP_LOAD_S	30	130	12361
// OP_EQ_S	12361	12006	12362
// OP_IFNOT	12362	2	0
// OP_CALL0	90	0	0
// OP_ADDRESS	28	162	12363
// OP_STOREP_F	43	12363	0
// OP_ADDRESS	28	152	12364
// OP_STOREP_F	44	12364	0
// OP_ADDRESS	28	188	12365
// OP_STOREP_F	45	12365	0
// OP_ADDRESS	28	158	12366
// OP_STOREP_F	46	12366	0
// OP_ADDRESS	28	159	12367
// OP_STOREP_F	47	12367	0
// OP_ADDRESS	28	160	12368
// OP_STOREP_F	48	12368	0
// OP_ADDRESS	28	161	12369
// OP_STOREP_F	49	12369	0
// OP_ADDRESS	28	154	12370
// OP_STOREP_F	50	12370	0
// OP_ADDRESS	28	187	12371
// OP_MUL_F	51	9305	12372
// OP_STOREP_F	12372	12371	0
// OP_ADDRESS	28	688	12373
// OP_STOREP_F	52	12373	0
// OP_STORE_F	52	689	0
// OP_NOT_F	35	0	12374
// OP_NOT_F	36	0	12375
// OP_AND	12374	12375	12376
// OP_IFNOT	12376	3	0
// OP_ADDRESS	28	378	12377
// OP_STOREP_F	58	12377	0
// OP_EQ_F	689	1228	12378
// OP_IFNOT	12378	13	0
// OP_STORE_F	823	738	0
// OP_STORE_F	817	719	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	6002	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12360	0
// OP_NE_E	12360	30	12379
// OP_IFNOT	12379	3	0
// OP_STORE_V	12360	4	0
// OP_CALL1	474	0	0
// OP_GOTO	34	0	0
// OP_GE	689	819	12380
// OP_IFNOT	12380	32	0
// OP_EQ_F	689	821	12381
// OP_IFNOT	12381	4	0
// OP_STORE_V	817	4	0
// OP_STORE_V	4054	7	0
// OP_CALL2	493	0	0
// OP_LOAD_S	30	130	12382
// OP_EQ_S	12382	12383	12384
// OP_IFNOT	12384	13	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	12360	0
// OP_ADDRESS	12360	148	12385
// OP_STOREP_FNC	7183	12385	0
// OP_ADDRESS	12360	150	12386
// OP_ADD_F	31	2869	12387
// OP_STOREP_F	12387	12386	0
// OP_ADDRESS	12360	201	12388
// OP_STOREP_ENT	28	12388	0
// OP_ADDRESS	12360	647	12389
// OP_STOREP_F	31	12389	0
// OP_GOTO	12	0	0
// OP_LOAD_ENT	28	554	12390
// OP_NE_E	12390	30	12391
// OP_IFNOT	12391	4	0
// OP_LOAD_ENT	28	554	12392
// OP_STORE_V	12392	4	0
// OP_CALL1	474	0	0
// OP_STORE_F	819	738	0
// OP_STORE_F	717	737	0
// OP_ADDRESS	28	157	12393
// OP_STOREP_F	794	12393	0
// OP_CALL0	7173	0	0
// OP_DONE	0	0	0
void () DecodeLevelParms = 
{
    local entity ent;
    
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
    challenge = self.start_challenge = parm10;
    
    if(!deathmatch && !coop)
    {
        self.speed = parm16;
    }
    
    if(challenge == -1)
    {
        rally_type_index = 3;
        hold_flag = 0;
        ent = find(world, classname, "race_starter");
        
        if(ent != world)
        {
            remove(ent);
        }
        
    }
    else
    {
        
        if(challenge >= 1)
        {
            
            if(challenge == 2)
            {
                lightstyle(0, "a");
            }
            
            if(world.model == "maps/cult.bsp")
            {
                ent = spawn();
                ent.think = CultIntroThink;
                ent.nextthink = time + 0.1;
                ent.owner = self;
                ent.last_idle = time;
            }
            else
            {
                
                if(self.gun != world)
                {
                    remove(self.gun);
                }
                
                rally_type_index = 1;
                racing_type = RT_TIME_TRIAL;
                self.currentammo = TIMETRIAL_STARTTIME;
                RemoveAllWeaponItems();
            }
            
        }
        
    }
    
};

// FindIntermission
// function begins at statement 16993, parm_start=12395
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12397	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_IFNOT	12395	22	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	825	12398
// OP_STORE_F	12398	12396	0
// OP_GT	12396	819	12399
// OP_IFNOT	12399	16	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12397	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_NOT_ENT	12395	0	12400
// OP_IFNOT	12400	6	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12397	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_SUB_F	12396	819	12401
// OP_STORE_F	12401	12396	0
// OP_GOTO	-16	0	0
// OP_RETURN	12395	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7120	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_IFNOT	12395	22	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	825	12402
// OP_STORE_F	12402	12396	0
// OP_GT	12396	819	12403
// OP_IFNOT	12403	16	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7120	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_NOT_ENT	12395	0	12404
// OP_IFNOT	12404	6	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7120	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_SUB_F	12396	819	12405
// OP_STORE_F	12405	12396	0
// OP_GOTO	-16	0	0
// OP_RETURN	12395	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7124	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_IFNOT	12395	2	0
// OP_RETURN	12395	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12406	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12395	0
// OP_IFNOT	12395	2	0
// OP_RETURN	12395	0	0
// OP_STORE_V	12407	4	0
// OP_CALL1	470	0	0
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
    
    spot = find(world, classname, "rally_observer_cam");
    
    if(spot)
    {
        cyc = random() * 4;
        
        while(cyc > 1)
        {
            spot = find(spot, classname, "rally_observer_cam");
            
            if(!spot)
            {
                spot = find(spot, classname, "rally_observer_cam");
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

// GotoNextMap
// function begins at statement 17064, parm_start=12409
// OP_STORE_V	12409	4	0
// OP_CALL1	501	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	34	4	0
// OP_CALL1	518	0	0
// OP_GOTO	39	0	0
// OP_GT	689	817	12410
// OP_IFNOT	12410	25	0
// OP_LOAD_S	30	130	12411
// OP_EQ_S	12411	12006	12412
// OP_IFNOT	12412	3	0
// OP_STORE_S	12413	6130	0
// OP_GOTO	17	0	0
// OP_LOAD_S	30	130	12414
// OP_EQ_S	12414	5950	12415
// OP_IFNOT	12415	3	0
// OP_STORE_S	12416	6130	0
// OP_GOTO	12	0	0
// OP_LOAD_S	30	130	12417
// OP_EQ_S	12417	1946	12418
// OP_IFNOT	12418	3	0
// OP_STORE_S	12419	6130	0
// OP_GOTO	7	0	0
// OP_LOAD_S	30	130	12420
// OP_EQ_S	12420	5957	12421
// OP_IFNOT	12421	3	0
// OP_STORE_S	12422	6130	0
// OP_GOTO	2	0	0
// OP_STORE_S	12423	6130	0
// OP_STORE_V	6130	4	0
// OP_CALL1	518	0	0
// OP_GOTO	13	0	0
// OP_LOAD_S	30	686	12424
// OP_NE_S	12424	4128	12425
// OP_IFNOT	12425	5	0
// OP_LOAD_S	30	686	12426
// OP_STORE_V	12426	4	0
// OP_CALL1	518	0	0
// OP_GOTO	6	0	0
// OP_EQ_S	6130	4128	12427
// OP_IFNOT	12427	2	0
// OP_STORE_S	34	6130	0
// OP_STORE_V	6130	4	0
// OP_CALL1	518	0	0
// OP_DONE	0	0	0
void () GotoNextMap = 
{
    if(cvar("samelevel"))
    {
        changelevel(mapname);
    }
    else
    {
        if(challenge > 0)
        {
            if(world.model == "maps/start.bsp")
            {
                nextmap = "qrally01";
            }
            else
            {
                if(world.model == "maps/qrally01.bsp")
                {
                    nextmap = "qrally02";
                }
                else
                {
                    if(world.model == "maps/qrally02.bsp")
                    {
                        nextmap = "qrally03";
                    }
                    else
                    {
                        if(world.model == "maps/qrally03.bsp")
                        {
                            nextmap = "cult";
                        }
                        else
                        {
                            nextmap = "start";
                        }
                        
                    }
                    
                }
                
            }
            
            changelevel(nextmap);
        }
        else
        {
            if(world.nexttrack != "")
            {
                changelevel(world.nexttrack);
            }
            else
            {
                
                if(nextmap == "")
                {
                    nextmap = mapname;
                }
                
                changelevel(nextmap);
            }
            
        }
        
    }
    
};

// ExitIntermission
// function begins at statement 17109, parm_start=12429
// OP_IFNOT	35	3	0
// OP_CALL0	12408	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	31	819	12429
// OP_STORE_F	12429	12322	0
// OP_ADD_F	12321	819	12430
// OP_STORE_F	12430	12321	0
// OP_EQ_F	12321	821	12431
// OP_IFNOT	12431	112	0
// OP_LOAD_S	30	130	12432
// OP_EQ_S	12432	12383	12433
// OP_IFNOT	12433	18	0
// OP_STORE_V	353	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	821	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12434	7	0
// OP_CALL2	513	0	0
// OP_STORE_F	817	689	0
// OP_RETURN	0	0	0
// OP_LOAD_S	30	130	12435
// OP_EQ_S	12435	12013	12436
// OP_IFNOT	12436	29	0
// OP_STORE_V	353	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	821	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	12437	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	12438
// OP_IFNOT	12438	8	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12439	7	0
// OP_CALL2	513	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12440	7	0
// OP_CALL2	513	0	0
// OP_RETURN	0	0	0
// OP_GOTO	60	0	0
// OP_LOAD_S	30	130	12441
// OP_EQ_S	12441	12020	12442
// OP_IFNOT	12442	18	0
// OP_STORE_V	353	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	821	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12443	7	0
// OP_CALL2	513	0	0
// OP_RETURN	0	0	0
// OP_GOTO	40	0	0
// OP_LOAD_S	30	130	12444
// OP_EQ_S	12444	12027	12445
// OP_IFNOT	12445	18	0
// OP_STORE_V	353	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	821	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12446	7	0
// OP_CALL2	513	0	0
// OP_RETURN	0	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	30	130	12447
// OP_EQ_S	12447	12035	12448
// OP_IFNOT	12448	17	0
// OP_STORE_V	353	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	821	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12449	7	0
// OP_CALL2	513	0	0
// OP_RETURN	0	0	0
// OP_CALL0	12408	0	0
// OP_EQ_F	12321	823	12450
// OP_IFNOT	12450	19	0
// OP_STORE_V	12437	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	12451
// OP_IFNOT	12451	5	0
// OP_STORE_V	353	4	0
// OP_STORE_V	321	7	0
// OP_CALL2	507	0	0
// OP_RETURN	0	0	0
// OP_BITAND	38	845	12452
// OP_EQ_F	12452	845	12453
// OP_IFNOT	12453	8	0
// OP_STORE_V	353	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	12454	7	0
// OP_CALL2	513	0	0
// OP_RETURN	0	0	0
// OP_CALL0	12408	0	0
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
        
        if(world.model == "maps/cult.bsp")
        {
            WriteByte(MSG_ALL, SVC_CDTRACK);
            WriteByte(MSG_ALL, 2);
            WriteByte(MSG_ALL, 3);
            WriteByte(MSG_ALL, SVC_FINALE);
            WriteString(MSG_ALL, "Now that the Duke Cult has been\nterminated, their attempts to revive\nChthon, and destroy the Quake Community\nwith their combined evil forces has been\navoided. Thanks to your supurb driving\nskills, and advanced weaponry, the Quake\nCommunity will now thrive, and\ncontinue to knock down any other attempt to\nknock Quake from it's throne.\n\nAs a reward for your efforts\nand achievements, you are awarded\nyour very own vehicle of mass\ndestruction. You may now go forth, and\nconquer the world, QuakeRally style!\n\nWho needs a Ferrari, when\nyou have QuakeRally!");
            challenge = 0;
            return;
        }
        
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
// function begins at statement 17251, parm_start=12456
// OP_LT	31	12322	12456
// OP_IFNOT	12456	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	12457
// OP_NOT_F	12457	0	12458
// OP_LOAD_F	28	171	12459
// OP_NOT_F	12459	0	12460
// OP_AND	12458	12460	12461
// OP_LOAD_F	28	172	12462
// OP_NOT_F	12462	0	12463
// OP_AND	12461	12463	12464
// OP_IFNOT	12464	2	0
// OP_RETURN	0	0	0
// OP_CALL0	12428	0	0
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

// CalcPlayerStats
// function begins at statement 17266, parm_start=12466
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12466	0
// OP_NE_E	12466	30	12467
// OP_IFNOT	12467	9	0
// OP_ADDRESS	12466	180	12468
// OP_STOREP_S	12469	12468	0
// OP_STORE_V	12466	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12466	0
// OP_GOTO	-9	0	0
// OP_DONE	0	0	0
void () CalcPlayerStats = 
{
    local entity plyr;
    plyr = find(world, classname, "player");
    
    while(plyr != world)
    {
        plyr.netname = "Xx";
        plyr = find(plyr, classname, "player");
    }
    
};

// execute_changelevel
// function begins at statement 17282, parm_start=12470
// OP_STORE_F	819	12321	0
// OP_IFNOT	35	4	0
// OP_ADD_F	31	827	12471
// OP_STORE_F	12471	12322	0
// OP_GOTO	3	0	0
// OP_ADD_F	31	821	12472
// OP_STORE_F	12472	12322	0
// OP_STORE_V	353	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	823	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	29	0
// OP_NE_E	29	30	12473
// OP_IFNOT	12473	17	0
// OP_ADDRESS	29	166	12474
// OP_STOREP_V	926	12474	0
// OP_ADDRESS	29	163	12477
// OP_STOREP_F	256	12477	0
// OP_ADDRESS	29	104	12478
// OP_STOREP_F	243	12478	0
// OP_ADDRESS	29	103	12479
// OP_STOREP_F	233	12479	0
// OP_ADDRESS	29	93	12480
// OP_STOREP_F	817	12480	0
// OP_STORE_V	29	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	29	0
// OP_GOTO	-17	0	0
// OP_CALL0	12465	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	318	7	0
// OP_CALL2	507	0	0
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
    other = find(world, classname, "player");
    
    while(other != world)
    {
        other.view_ofs = '0.000 0.000 0.000';
        other.takedamage = DAMAGE_NO;
        other.solid = SOLID_NOT;
        other.movetype = MOVETYPE_NONE;
        other.modelindex = 0;
        other = find(other, classname, "player");
    }
    
    CalcPlayerStats();
    WriteByte(MSG_ALL, SVC_INTERMISSION);
};

// changelevel_touch
// function begins at statement 17326, parm_start=12482
// OP_LOAD_S	29	129	12483
// OP_NE_S	12483	880	12484
// OP_IFNOT	12484	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	12485	4	0
// OP_CALL1	501	0	0
// OP_IFNOT	1	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12486	13	0
// OP_CALL4	534	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	30	130	12487
// OP_EQ_S	12487	12006	12488
// OP_IFNOT	12488	12	0
// OP_ADDRESS	29	688	12489
// OP_LOAD_F	28	688	12490
// OP_STOREP_F	12490	12489	0
// OP_STORE_F	12490	689	0
// OP_LOAD_S	28	365	12491
// OP_EQ_S	12491	12492	12493
// OP_IFNOT	12493	5	0
// OP_STORE_V	29	4	0
// OP_STORE_V	12494	7	0
// OP_CALL2	520	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	180	12495
// OP_STORE_V	12495	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	12496	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	28	365	12497
// OP_STORE_S	12497	6130	0
// OP_CALL0	532	0	0
// OP_LOAD_F	28	195	12498
// OP_BITAND	12498	819	12499
// OP_EQ_F	35	817	12500
// OP_AND	12499	12500	12501
// OP_IFNOT	12501	3	0
// OP_CALL0	12408	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	12502
// OP_STOREP_FNC	531	12502	0
// OP_ADDRESS	28	148	12503
// OP_STOREP_FNC	6131	12503	0
// OP_ADDRESS	28	150	12504
// OP_ADD_F	31	2869	12505
// OP_STOREP_F	12505	12504	0
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
    
    
    if(world.model == "maps/start.bsp")
    {
        challenge = other.start_challenge = self.start_challenge;
        
        if(self.map == "qrally04")
        {
            centerprint(other, "Map not available, to be released\nat a later date\n");
            return;
        }
        
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
// function begins at statement 17376, parm_start=12507
// OP_LOAD_S	28	365	12507
// OP_NOT_S	12507	0	12508
// OP_IFNOT	12508	3	0
// OP_STORE_V	12509	4	0
// OP_CALL1	470	0	0
// OP_CALL0	7404	0	0
// OP_ADDRESS	28	146	12510
// OP_STOREP_FNC	12481	12510	0
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
// function begins at statement 17385, parm_start=12513
// OP_EQ_F	738	825	12513
// OP_LOAD_F	28	682	12514
// OP_LE	12514	817	12515
// OP_AND	12513	12515	12516
// OP_IFNOT	12516	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12517	7	0
// OP_CALL2	480	0	0
// OP_IFNOT	36	5	0
// OP_STORE_V	28	4	0
// OP_CALL1	525	0	0
// OP_CALL0	88	0	0
// OP_GOTO	3	0	0
// OP_CALL0	90	0	0
// OP_CALL0	88	0	0
// OP_DONE	0	0	0
void () respawn = 
{
    
    if((rally_type_index == 4) && (self.cult_cars <= 0))
    {
        stuffcmd(self, "restart\n");
    }
    
    if(coop)
    {
        setspawnparms(self);
        PutClientInServer();
    }
    else
    {
        SetNewParms();
        PutClientInServer();
    }
    
};

// ClientKill
// function begins at statement 17401, parm_start=12518
// OP_LOAD_S	28	180	12518
// OP_STORE_V	12518	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	12519	4	0
// OP_CALL1	482	0	0
// OP_CALL0	12511	0	0
// OP_ADDRESS	28	93	12520
// OP_STOREP_F	12320	12520	0
// OP_GE	738	823	12521
// OP_NE_F	738	825	12522
// OP_AND	12521	12522	12523
// OP_IFNOT	12523	5	0
// OP_ADDRESS	28	153	12524
// OP_LOAD_F	28	153	12525
// OP_SUB_F	12525	821	12526
// OP_STOREP_F	12526	12524	0
// OP_CALL0	12512	0	0
// OP_DONE	0	0	0
void () ClientKill = 
{
    bprint(self.netname);
    bprint(" suicides\n");
    set_suicide_frame();
    self.modelindex = modelindex_player;
    
    if((rally_type_index >= 3) && (rally_type_index != 4))
    {
        self.frags = self.frags - 2;
    }
    
    respawn();
};

// CheckSpawnPoint
// function begins at statement 17419, parm_start=12528
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float (vector v) CheckSpawnPoint = 
{
    return FALSE;
};

// SelectSpawnPoint
// function begins at statement 17421, parm_start=12532
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12406	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12532	0
// OP_IFNOT	12532	2	0
// OP_RETURN	12532	0	0
// OP_EQ_F	35	1957	12533
// OP_IFNOT	12533	8	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7124	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12532	0
// OP_IFNOT	12532	2	0
// OP_RETURN	12532	0	0
// OP_NOT_F	719	0	12534
// OP_LOAD_F	28	637	12535
// OP_GT	12535	817	12536
// OP_AND	12534	12536	12537
// OP_IFNOT	12537	6	0
// OP_LOAD_ENT	28	638	12538
// OP_STORE_ENT	12538	12532	0
// OP_NE_E	12532	30	12539
// OP_IFNOT	12539	2	0
// OP_RETURN	12532	0	0
// OP_STORE_V	12044	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12540	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12044	0
// OP_EQ_E	12044	30	12541
// OP_IFNOT	12541	6	0
// OP_STORE_V	12044	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12540	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12044	0
// OP_NE_E	12044	30	12542
// OP_IFNOT	12542	2	0
// OP_RETURN	12044	0	0
// OP_IFNOT	38	8	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12543	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12532	0
// OP_IFNOT	12532	2	0
// OP_RETURN	12532	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7124	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12532	0
// OP_NOT_ENT	12532	0	12544
// OP_IFNOT	12544	3	0
// OP_STORE_V	12545	4	0
// OP_CALL1	469	0	0
// OP_RETURN	12532	0	0
// OP_DONE	0	0	0
entity () SelectSpawnPoint = 
{
    local entity spot;
    spot = find(world, classname, "testplayerstart");
    
    if(spot)
    {
        return spot;
    }
    
    
    if(deathmatch == 100)
    {
        spot = find(world, classname, "info_player_start");
        
        if(spot)
        {
            return spot;
        }
        
    }
    
    
    if(!hold_flag && (self.last_marker_num > 0))
    {
        spot = self.last_marker;
        
        if(spot != world)
        {
            return spot;
        }
        
    }
    
    lastspawn = find(lastspawn, classname, "info_player_deathmatch");
    
    if(lastspawn == world)
    {
        lastspawn = find(lastspawn, classname, "info_player_deathmatch");
    }
    
    
    if(lastspawn != world)
    {
        return lastspawn;
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

// area_clear
// function begins at statement 17481, parm_start=12547
// OP_LOAD_V	28	105	12548
// OP_STORE_V	12548	4	0
// OP_STORE_V	2223	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	12547	0
// OP_NE_E	12547	30	12551
// OP_IFNOT	12551	14	0
// OP_NE_E	12547	28	12552
// OP_LOAD_F	12547	104	12553
// OP_EQ_F	12553	243	12554
// OP_LOAD_F	12547	104	12555
// OP_EQ_F	12555	244	12556
// OP_OR	12554	12556	12557
// OP_NOT_F	12557	0	12558
// OP_AND	12552	12558	12559
// OP_IFNOT	12559	2	0
// OP_RETURN	817	0	0
// OP_LOAD_ENT	12547	164	12560
// OP_STORE_ENT	12560	12547	0
// OP_GOTO	-14	0	0
// OP_RETURN	819	0	0
// OP_DONE	0	0	0
float () area_clear = 
{
    local entity trav;
    trav = findradius(self.origin, 64);
    
    while(trav != world)
    {
        
        if((trav != self) && (!((trav.solid == SOLID_NOT) || (trav.solid == SOLID_TRIGGER))))
        {
            return 0;
        }
        
        trav = trav.chain;
    }
    
    return 1;
};

void () PlayerDie;
// PutClientInServer
// function begins at statement 17503, parm_start=12562
// OP_ADDRESS	28	129	12577
// OP_STOREP_S	880	12577	0
// OP_ADDRESS	28	152	12578
// OP_STOREP_F	1957	12578	0
// OP_ADDRESS	28	163	12579
// OP_STOREP_F	258	12579	0
// OP_ADDRESS	28	104	12580
// OP_STOREP_F	246	12580	0
// OP_ADDRESS	28	103	12581
// OP_STOREP_F	234	12581	0
// OP_ADDRESS	28	402	12582
// OP_STOREP_F	817	12582	0
// OP_ADDRESS	28	185	12583
// OP_STOREP_F	1957	12583	0
// OP_ADDRESS	28	182	12584
// OP_ADD_F	222	228	12585
// OP_STOREP_F	12585	12584	0
// OP_ADDRESS	28	405	12586
// OP_ADD_F	31	834	12587
// OP_STOREP_F	12587	12586	0
// OP_ADDRESS	28	434	12588
// OP_STOREP_F	821	12588	0
// OP_ADDRESS	28	391	12589
// OP_STOREP_F	817	12589	0
// OP_ADDRESS	28	392	12590
// OP_STOREP_F	817	12590	0
// OP_ADDRESS	28	390	12591
// OP_STOREP_F	817	12591	0
// OP_ADDRESS	28	389	12592
// OP_STOREP_F	817	12592	0
// OP_ADDRESS	28	133	12593
// OP_STOREP_F	817	12593	0
// OP_ADDRESS	28	393	12594
// OP_STOREP_F	817	12594	0
// OP_LOAD_ENT	28	673	12595
// OP_NE_E	12595	30	12596
// OP_IFNOT	12596	6	0
// OP_LOAD_ENT	28	673	12597
// OP_STORE_V	12597	4	0
// OP_CALL1	474	0	0
// OP_ADDRESS	28	673	12598
// OP_STOREP_ENT	30	12598	0
// OP_CALL0	12359	0	0
// OP_GE	738	821	12599
// OP_IFNOT	12599	16	0
// OP_ADDRESS	28	158	12600
// OP_STOREP_F	817	12600	0
// OP_ADDRESS	28	162	12601
// OP_LOAD_F	28	162	12602
// OP_BITOR	12602	263	12603
// OP_STOREP_F	12603	12601	0
// OP_EQ_F	738	825	12604
// OP_IFNOT	12604	4	0
// OP_ADDRESS	28	159	12605
// OP_STOREP_F	1885	12605	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	159	12606
// OP_STOREP_F	2611	12606	0
// OP_ADDRESS	28	154	12607
// OP_STOREP_F	263	12607	0
// OP_ADDRESS	28	387	12608
// OP_STOREP_F	31	12608	0
// OP_ADDRESS	28	376	12609
// OP_STOREP_FNC	12561	12609	0
// OP_ADDRESS	28	165	12610
// OP_STOREP_F	252	12610	0
// OP_ADDRESS	28	431	12611
// OP_STOREP_F	817	12611	0
// OP_CALL0	12531	0	0
// OP_STORE_ENT	1	12562	0
// OP_ADDRESS	28	1754	12612
// OP_STOREP_F	31	12612	0
// OP_LOAD_V	12562	117	12613
// OP_STORE_V	12613	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	12562	105	12616
// OP_ADD_V	12616	1535	12619
// OP_STORE_V	12619	7	0
// OP_CALL2	462	0	0
// OP_STORE_F	817	12576	0
// OP_CALL0	12546	0	0
// OP_NOT_F	1	0	12622
// OP_LT	12576	827	12623
// OP_AND	12622	12623	12624
// OP_IFNOT	12624	10	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	12625
// OP_MUL_VF	59	3330	12628
// OP_ADD_V	12625	12628	12631
// OP_STORE_V	12631	7	0
// OP_CALL2	462	0	0
// OP_ADD_F	12576	819	12634
// OP_STORE_F	12634	12576	0
// OP_GOTO	-13	0	0
// OP_EQ_F	12576	827	12635
// OP_IFNOT	12635	6	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	12562	105	12636
// OP_ADD_V	12636	1535	12639
// OP_STORE_V	12639	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	117	12642
// OP_LOAD_V	12562	117	12645
// OP_STOREP_V	12645	12642	0
// OP_ADDRESS	28	174	12648
// OP_STOREP_F	219	12648	0
// OP_ADDRESS	28	113	12649
// OP_STOREP_V	926	12649	0
// OP_STORE_V	28	4	0
// OP_STORE_V	754	7	0
// OP_STORE_V	757	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	166	12652
// OP_STOREP_V	12655	12652	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	589	12658
// OP_STOREP_F	219	12658	0
// OP_LOAD_ENT	28	547	12659
// OP_EQ_E	12659	30	12660
// OP_IFNOT	12660	40	0
// OP_CALL0	1156	0	0
// OP_LOAD_F	28	378	12661
// OP_BITAND	12661	214	12662
// OP_NOT_F	12662	0	12663
// OP_IFNOT	12663	5	0
// OP_ADDRESS	28	378	12664
// OP_LOAD_F	28	378	12665
// OP_ADD_F	12665	214	12666
// OP_STOREP_F	12666	12664	0
// OP_STORE_V	28	4	0
// OP_CALL1	10608	0	0
// OP_NE_E	726	30	12667
// OP_IFNOT	12667	26	0
// OP_STORE_ENT	726	12563	0
// OP_LOAD_ENT	12563	668	12668
// OP_NE_E	12668	30	12669
// OP_IFNOT	12669	4	0
// OP_LOAD_ENT	12563	668	12670
// OP_STORE_ENT	12670	12563	0
// OP_GOTO	-5	0	0
// OP_ADDRESS	12563	668	12671
// OP_STOREP_ENT	28	12671	0
// OP_ADDRESS	28	667	12672
// OP_STOREP_ENT	12563	12672	0
// OP_ADDRESS	28	668	12673
// OP_STOREP_ENT	30	12673	0
// OP_ADDRESS	28	641	12674
// OP_STOREP_F	31	12674	0
// OP_ADDRESS	28	644	12675
// OP_LOAD_F	28	644	12676
// OP_BITOR	12676	692	12677
// OP_STOREP_F	12677	12675	0
// OP_ADDRESS	28	644	12678
// OP_LOAD_F	28	644	12679
// OP_LOAD_F	28	644	12680
// OP_BITAND	12680	698	12681
// OP_SUB_F	12679	12681	12682
// OP_STOREP_F	12682	12678	0
// OP_GOTO	79	0	0
// OP_CALL0	492	0	0
// OP_LOAD_V	12562	117	12683
// OP_STORE_V	12683	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	547	12686
// OP_STORE_V	12686	4	0
// OP_LOAD_V	28	105	12687
// OP_MUL_VF	59	751	12690
// OP_SUB_V	12687	12690	12693
// OP_STORE_V	12693	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	548	12696
// OP_ADDRESS	12696	117	12697
// OP_STOREP_V	926	12697	0
// OP_LOAD_ENT	28	548	12700
// OP_ADDRESS	12700	121	12701
// OP_STOREP_V	926	12701	0
// OP_LOAD_ENT	28	548	12704
// OP_ADDRESS	12704	595	12705
// OP_STOREP_V	926	12705	0
// OP_LOAD_ENT	28	548	12708
// OP_ADDRESS	12708	555	12709
// OP_STOREP_V	926	12709	0
// OP_LOAD_ENT	28	547	12712
// OP_ADDRESS	12712	555	12713
// OP_STOREP_V	59	12713	0
// OP_ADDRESS	28	109	12716
// OP_LOAD_V	28	105	12719
// OP_STOREP_V	12719	12716	0
// OP_ADDRESS	28	621	12722
// OP_STOREP_V	926	12722	0
// OP_ADDRESS	28	580	12725
// OP_STOREP_V	926	12725	0
// OP_LOAD_F	28	119	12728
// OP_STORE_F	12728	542	0
// OP_ADDRESS	28	644	12729
// OP_LOAD_F	28	644	12730
// OP_LOAD_F	28	644	12731
// OP_BITAND	12731	697	12732
// OP_SUB_F	12730	12732	12733
// OP_STOREP_F	12733	12729	0
// OP_ADDRESS	28	644	12734
// OP_LOAD_F	28	644	12735
// OP_BITOR	12735	703	12736
// OP_STOREP_F	12736	12734	0
// OP_LOAD_ENT	28	625	12737
// OP_STORE_V	12737	4	0
// OP_LOAD_V	28	105	12738
// OP_STORE_V	12738	7	0
// OP_CALL2	462	0	0
// OP_LOAD_F	28	611	12741
// OP_NE_F	12741	715	12742
// OP_IFNOT	12742	26	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_LOAD_F	28	611	12743
// OP_EQ_F	12743	713	12744
// OP_IFNOT	12744	5	0
// OP_STORE_V	352	4	0
// OP_STORE_V	845	7	0
// OP_CALL2	512	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	611	12745
// OP_EQ_F	12745	714	12746
// OP_IFNOT	12746	4	0
// OP_STORE_V	352	4	0
// OP_STORE_V	5499	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	119	12747
// OP_STORE_V	12747	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	120	12748
// OP_STORE_V	12748	7	0
// OP_CALL2	512	0	0
// OP_LOAD_ENT	28	548	12749
// OP_ADDRESS	12749	621	12750
// OP_STOREP_V	926	12750	0
// OP_CALL0	931	0	0
// OP_ADDRESS	28	152	12753
// OP_STOREP_F	1957	12753	0
// OP_ADDRESS	28	188	12754
// OP_STOREP_F	817	12754	0
// OP_ADDRESS	28	654	12755
// OP_STOREP_F	1228	12755	0
// OP_ADDRESS	28	192	12756
// OP_STOREP_F	817	12756	0
// OP_LOAD_F	28	644	12757
// OP_BITAND	12757	693	12758
// OP_NOT_F	12758	0	12759
// OP_IFNOT	12759	15	0
// OP_ADDRESS	28	640	12760
// OP_STOREP_F	817	12760	0
// OP_ADDRESS	28	642	12761
// OP_STOREP_F	12762	12761	0
// OP_ADDRESS	28	641	12763
// OP_STOREP_F	817	12763	0
// OP_ADDRESS	28	637	12764
// OP_STOREP_F	817	12764	0
// OP_ADDRESS	28	638	12765
// OP_STOREP_ENT	30	12765	0
// OP_ADDRESS	28	644	12766
// OP_LOAD_F	28	644	12767
// OP_BITOR	12767	693	12768
// OP_STOREP_F	12768	12766	0
// OP_OR	35	36	12769
// OP_IFNOT	12769	9	0
// OP_LOAD_V	28	117	12770
// OP_STORE_V	12770	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	12773
// OP_MUL_VF	59	1112	12776
// OP_ADD_V	12773	12776	12779
// OP_STORE_V	12779	4	0
// OP_CALL1	858	0	0
// OP_LOAD_V	28	105	12782
// OP_STORE_V	12782	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	12318	0	0
// OP_DONE	0	0	0
void () PutClientInServer = 
{
    local entity spot;
    local entity plyr;
    local vector VehBoxMin;
    local vector VehBoxMax;
    local vector plyrBoxMin;
    local vector plyrBoxMax;
    local float ftemp;
    self.classname = "player";
    self.health = 100;
    self.takedamage = DAMAGE_AIM;
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_WALK;
    self.show_hostile = 0;
    self.max_health = 100;
    self.flags = FL_CLIENT + FL_ONGROUND;
    self.air_finished = time + 12;
    self.dmg = 2;
    self.super_damage_finished = 0;
    self.radsuit_finished = 0;
    self.invisible_finished = 0;
    self.invincible_finished = 0;
    self.effects = 0;
    self.invincible_time = 0;
    
    if(self.mine_attached != world)
    {
        remove(self.mine_attached);
        self.mine_attached = world;
    }
    
    DecodeLevelParms();
    
    if(rally_type_index >= 2)
    {
        self.ammo_shells = 0;
        self.items = self.items | IT_SUPER_NAILGUN;
        if(rally_type_index == 4)
        {
            self.ammo_nails = 150;
        }
        else
        {
            self.ammo_nails = 50;
        }
        
        self.weapon = IT_SUPER_NAILGUN;
    }
    
    self.attack_finished = time;
    self.th_die = PlayerDie;
    self.deadflag = DEAD_NO;
    self.pausetime = 0;
    spot = SelectSpawnPoint();
    self.spawn_time = time;
    makevectors(spot.angles);
    setorigin(self, spot.origin + '0.000 0.000 16.000');
    ftemp = 0;
    
    while(!area_clear() && (ftemp < 5))
    {
        setorigin(self, self.origin + (v_forward * 48));
        ftemp = ftemp + 1;
    }
    
    
    if(ftemp == 5)
    {
        setorigin(self, spot.origin + '0.000 0.000 16.000');
    }
    
    self.angles = spot.angles;
    self.fixangle = TRUE;
    self.velocity = '0.000 0.000 0.000';
    setsize(self, VEH_MIN, VEH_MAX);
    self.view_ofs = '0.000 0.000 14.000';
    setmodel(self, "models/null.mdl");
    self.use_surface_angle = TRUE;
    if(self.veh_tail == world)
    {
        CreateVehicleEntities();
        
        if(!(self.speed & CHSCAM_ON))
        {
            self.speed = self.speed + CHSCAM_ON;
        }
        
        Start_chase_cam(self);
        
        if(current_leader != world)
        {
            plyr = current_leader;
            
            while(plyr.behind != world)
            {
                plyr = plyr.behind;
            }
            
            plyr.behind = self;
            self.ahead = plyr;
            self.behind = world;
            self.last_lap_time = time;
            self.racing_flags = self.racing_flags | QR_START_READY;
            self.racing_flags = self.racing_flags - (self.racing_flags & QR_OBSERVER);
        }
        
    }
    else
    {
        droptofloor();
        makevectors(spot.angles);
        setorigin(self.veh_tail, self.origin - (v_forward * TAIL_DIST));
        self.veh_body.angles = '0.000 0.000 0.000';
        self.veh_body.avelocity = '0.000 0.000 0.000';
        self.veh_body.roll_velocity = '0.000 0.000 0.000';
        self.veh_body.veh_dir = '0.000 0.000 0.000';
        self.veh_tail.veh_dir = v_forward;
        self.oldorigin = self.origin;
        self.last_velocity = '0.000 0.000 0.000';
        self.body_roll = '0.000 0.000 0.000';
        plyr_angles_y = self.angles_y;
        self.racing_flags = self.racing_flags - (self.racing_flags & QR_JUST_LANDED);
        self.racing_flags = self.racing_flags | QR_RESPAWN_FLAG;
        setorigin(self.chasecam, self.origin);
        
        if(self.cam != CAM_INCAR)
        {
            msg_entity = self;
            WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
            if(self.cam == CAM_CHASECLOSE)
            {
                WriteAngle(MSG_ONE, 15);
            }
            else
            {
                
                if(self.cam == CAM_CHASEFAR)
                {
                    WriteAngle(MSG_ONE, 35);
                }
                
            }
            
            WriteAngle(MSG_ONE, self.angles_y);
            WriteAngle(MSG_ONE, self.angles_z);
        }
        
    }
    
    self.veh_body.last_velocity = '0.000 0.000 0.000';
    W_SetCurrentAmmo();
    self.health = 100;
    self.armorvalue = 0;
    self.last_engine_ratio = -1;
    self.yaw_speed = 0;
    
    if(!(self.racing_flags & QR_RACING))
    {
        self.last_lap = 0;
        self.fastest_lap = 999999;
        self.last_lap_time = 0;
        self.last_marker_num = 0;
        self.last_marker = world;
        self.racing_flags = self.racing_flags | QR_RACING;
    }
    
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        spawn_tfog(self.origin + (v_forward * 20));
    }
    
    spawn_tdeath(self.origin, self);
};

// info_player_start
// function begins at statement 17788, parm_start=12785
// OP_DONE	0	0	0
void () info_player_start = 
{
};

// info_player_start2
// function begins at statement 17789, parm_start=12786
// OP_DONE	0	0	0
void () info_player_start2 = 
{
};

// testplayerstart
// function begins at statement 17790, parm_start=12787
// OP_DONE	0	0	0
void () testplayerstart = 
{
};

// info_player_deathmatch
// function begins at statement 17791, parm_start=12788
// OP_DONE	0	0	0
void () info_player_deathmatch = 
{
};

// info_player_coop
// function begins at statement 17792, parm_start=12789
// OP_DONE	0	0	0
void () info_player_coop = 
{
};

// NextLevel
// function begins at statement 17793, parm_start=12790
// OP_EQ_S	34	12423	12791
// OP_IFNOT	12791	43	0
// OP_STORE_V	12437	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	12792
// OP_IFNOT	12792	3	0
// OP_STORE_S	12793	34	0
// OP_GOTO	32	0	0
// OP_BITAND	38	819	12794
// OP_NOT_F	12794	0	12795
// OP_IFNOT	12795	5	0
// OP_STORE_S	12793	34	0
// OP_ADD_F	38	819	12796
// OP_STORE_F	12796	38	0
// OP_GOTO	25	0	0
// OP_BITAND	38	821	12797
// OP_NOT_F	12797	0	12798
// OP_IFNOT	12798	5	0
// OP_STORE_S	12799	34	0
// OP_ADD_F	38	821	12800
// OP_STORE_F	12800	38	0
// OP_GOTO	18	0	0
// OP_BITAND	38	825	12801
// OP_NOT_F	12801	0	12802
// OP_IFNOT	12802	5	0
// OP_STORE_S	12803	34	0
// OP_ADD_F	38	825	12804
// OP_STORE_F	12804	38	0
// OP_GOTO	11	0	0
// OP_BITAND	38	843	12805
// OP_NOT_F	12805	0	12806
// OP_IFNOT	12806	5	0
// OP_STORE_S	12807	34	0
// OP_ADD_F	38	843	12808
// OP_STORE_F	12808	38	0
// OP_GOTO	4	0	0
// OP_STORE_S	12423	34	0
// OP_SUB_F	38	845	12809
// OP_STORE_F	12809	38	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	12790	0
// OP_ADDRESS	12790	365	12810
// OP_STOREP_S	34	12810	0
// OP_GOTO	17	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12811	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	12790	0
// OP_NOT_ENT	12790	0	12812
// OP_IFNOT	12812	10	0
// OP_STORE_V	12409	4	0
// OP_CALL1	501	0	0
// OP_NOT_F	1	0	12813
// OP_IFNOT	12813	2	0
// OP_STORE_S	12423	34	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	12790	0
// OP_ADDRESS	12790	365	12814
// OP_STOREP_S	34	12814	0
// OP_LOAD_S	12790	365	12815
// OP_STORE_S	12815	6130	0
// OP_STORE_F	219	356	0
// OP_LOAD_F	12790	150	12816
// OP_LT	12816	31	12817
// OP_IFNOT	12817	6	0
// OP_ADDRESS	12790	148	12818
// OP_STOREP_FNC	6131	12818	0
// OP_ADDRESS	12790	150	12819
// OP_ADD_F	31	2869	12820
// OP_STOREP_F	12820	12819	0
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
            
            if(!cvar("samelevel"))
            {
                mapname = "start";
            }
            
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
// function begins at statement 17865, parm_start=12822
// OP_IFNOT	356	2	0
// OP_RETURN	0	0	0
// OP_EQ_F	738	825	12824
// OP_IFNOT	12824	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	12825	4	0
// OP_CALL1	501	0	0
// OP_MUL_F	1	2228	12826
// OP_STORE_F	12826	12822	0
// OP_STORE_V	12827	4	0
// OP_CALL1	501	0	0
// OP_STORE_F	1	12823	0
// OP_GE	31	12822	12828
// OP_AND	12822	12828	12829
// OP_IFNOT	12829	3	0
// OP_CALL0	12789	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	153	12830
// OP_GE	12830	12823	12831
// OP_AND	12823	12831	12832
// OP_IFNOT	12832	3	0
// OP_CALL0	12789	0	0
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
    
    
    if(rally_type_index == 4)
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
// function begins at statement 17889, parm_start=12834
// OP_LOAD_F	28	182	12836
// OP_BITAND	12836	228	12837
// OP_IFNOT	12837	18	0
// OP_LOAD_V	28	113	12838
// OP_STORE_V	12838	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	12835	0
// OP_SUB_F	12835	1112	12841
// OP_STORE_F	12841	12835	0
// OP_LE	12835	817	12842
// OP_IFNOT	12842	4	0
// OP_ADDRESS	28	113	12843
// OP_STOREP_V	926	12843	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	113	12846
// OP_LOAD_V	28	113	12849
// OP_STORE_V	12849	4	0
// OP_CALL1	468	0	0
// OP_MUL_FV	12835	1	12852
// OP_STOREP_V	12852	12846	0
// OP_LOAD_F	28	165	12855
// OP_EQ_F	12855	254	12856
// OP_IFNOT	12856	11	0
// OP_LOAD_F	28	172	12857
// OP_LOAD_F	28	171	12858
// OP_OR	12857	12858	12859
// OP_LOAD_F	28	170	12860
// OP_OR	12859	12860	12861
// OP_IFNOT	12861	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	165	12862
// OP_STOREP_F	255	12862	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	172	12863
// OP_NOT_F	12863	0	12864
// OP_LOAD_F	28	171	12865
// OP_NOT_F	12865	0	12866
// OP_AND	12864	12866	12867
// OP_LOAD_F	28	170	12868
// OP_NOT_F	12868	0	12869
// OP_AND	12867	12869	12870
// OP_IFNOT	12870	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	170	12871
// OP_STOREP_F	817	12871	0
// OP_ADDRESS	28	171	12872
// OP_STOREP_F	817	12872	0
// OP_ADDRESS	28	172	12873
// OP_STOREP_F	817	12873	0
// OP_EQ_F	738	819	12874
// OP_EQ_F	737	717	12875
// OP_AND	12874	12875	12876
// OP_LOAD_F	28	644	12877
// OP_BITAND	12877	702	12878
// OP_AND	12876	12878	12879
// OP_IFNOT	12879	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12517	7	0
// OP_CALL2	480	0	0
// OP_GOTO	2	0	0
// OP_CALL0	12512	0	0
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
            self.velocity = '0.000 0.000 0.000';
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
    if(((rally_type_index == 1) && (racing_type == RT_TIME_TRIAL)) && (self.racing_flags & QR_OUT_OF_TIME))
    {
        stuffcmd(self, "restart\n");
    }
    else
    {
        respawn();
    }
    
};

// PlayerJump
// function begins at statement 17951, parm_start=12881
// OP_LOAD_F	28	182	12887
// OP_BITAND	12887	230	12888
// OP_IFNOT	12888	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	12889
// OP_GE	12889	821	12890
// OP_IFNOT	12890	38	0
// OP_LOAD_F	28	190	12891
// OP_EQ_F	12891	292	12892
// OP_IFNOT	12892	4	0
// OP_ADDRESS	28	116	12893
// OP_STOREP_F	1957	12893	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	190	12894
// OP_EQ_F	12894	293	12895
// OP_IFNOT	12895	4	0
// OP_ADDRESS	28	116	12896
// OP_STOREP_F	2677	12896	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	116	12897
// OP_STOREP_F	2611	12897	0
// OP_LOAD_F	28	404	12898
// OP_LT	12898	31	12899
// OP_IFNOT	12899	20	0
// OP_ADDRESS	28	404	12900
// OP_ADD_F	31	819	12901
// OP_STOREP_F	12901	12900	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	12902
// OP_IFNOT	12902	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12107	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12108	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	12903
// OP_BITAND	12903	228	12904
// OP_NOT_F	12904	0	12905
// OP_IFNOT	12905	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	12906
// OP_BITAND	12906	231	12907
// OP_NOT_F	12907	0	12908
// OP_IFNOT	12908	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	182	12909
// OP_LOAD_F	28	182	12910
// OP_LOAD_F	28	182	12911
// OP_BITAND	12911	231	12912
// OP_SUB_F	12910	12912	12913
// OP_STOREP_F	12913	12909	0
// OP_ADDRESS	28	182	12914
// OP_LOAD_F	28	182	12915
// OP_SUB_F	12915	228	12916
// OP_STOREP_F	12916	12914	0
// OP_ADDRESS	28	172	12917
// OP_STOREP_F	817	12917	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12069	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	116	12918
// OP_LOAD_F	28	116	12919
// OP_ADD_F	12919	1957	12920
// OP_STOREP_F	12920	12918	0
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
    self.velocity_z = self.velocity_z + 100;
};

.float dmgtime;
// WaterMove
// function begins at statement 18028, parm_start=12923
// OP_LOAD_F	28	103	12923
// OP_EQ_F	12923	239	12924
// OP_IFNOT	12924	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	12925
// OP_LT	12925	817	12926
// OP_IFNOT	12926	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	12927
// OP_NE_F	12927	823	12928
// OP_IFNOT	12928	26	0
// OP_LOAD_F	28	405	12929
// OP_LT	12929	31	12930
// OP_IFNOT	12930	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12075	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	405	12931
// OP_ADD_F	31	847	12932
// OP_LT	12931	12932	12933
// OP_IFNOT	12933	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	12074	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	405	12934
// OP_ADD_F	31	834	12935
// OP_STOREP_F	12935	12934	0
// OP_ADDRESS	28	434	12936
// OP_STOREP_F	821	12936	0
// OP_LOAD_F	28	189	12937
// OP_NOT_F	12937	0	12938
// OP_IFNOT	12938	15	0
// OP_LOAD_F	28	182	12939
// OP_BITAND	12939	223	12940
// OP_IFNOT	12940	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12106	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	182	12941
// OP_LOAD_F	28	182	12942
// OP_SUB_F	12942	223	12943
// OP_STOREP_F	12943	12941	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	12944
// OP_EQ_F	12944	294	12945
// OP_IFNOT	12945	22	0
// OP_LOAD_F	28	12921	12946
// OP_LT	12946	31	12947
// OP_IFNOT	12947	18	0
// OP_LOAD_F	28	392	12948
// OP_GT	12948	31	12949
// OP_IFNOT	12949	5	0
// OP_ADDRESS	28	12921	12950
// OP_ADD_F	31	819	12951
// OP_STOREP_F	12951	12950	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	12921	12952
// OP_ADD_F	31	1152	12953
// OP_STOREP_F	12953	12952	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	12954
// OP_MUL_F	1112	12954	12955
// OP_STORE_V	12955	13	0
// OP_CALL4	534	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	190	12956
// OP_EQ_F	12956	293	12957
// OP_IFNOT	12957	17	0
// OP_LOAD_F	28	12921	12958
// OP_LT	12958	31	12959
// OP_LOAD_F	28	392	12960
// OP_LT	12960	31	12961
// OP_AND	12959	12961	12962
// OP_IFNOT	12962	11	0
// OP_ADDRESS	28	12921	12963
// OP_ADD_F	31	819	12964
// OP_STOREP_F	12964	12963	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	12965
// OP_MUL_F	843	12965	12966
// OP_STORE_V	12966	13	0
// OP_CALL4	534	0	0
// OP_LOAD_F	28	182	12967
// OP_BITAND	12967	223	12968
// OP_NOT_F	12968	0	12969
// OP_IFNOT	12969	34	0
// OP_LOAD_F	28	190	12970
// OP_EQ_F	12970	294	12971
// OP_IFNOT	12971	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12105	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	190	12972
// OP_EQ_F	12972	292	12973
// OP_IFNOT	12973	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12104	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	190	12974
// OP_EQ_F	12974	293	12975
// OP_IFNOT	12975	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12103	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	182	12976
// OP_LOAD_F	28	182	12977
// OP_ADD_F	12977	223	12978
// OP_STOREP_F	12978	12976	0
// OP_ADDRESS	28	12921	12979
// OP_STOREP_F	817	12979	0
// OP_LOAD_F	28	182	12980
// OP_BITAND	12980	230	12981
// OP_NOT_F	12981	0	12982
// OP_IFNOT	12982	10	0
// OP_ADDRESS	28	113	12983
// OP_LOAD_V	28	113	12986
// OP_LOAD_F	28	189	12989
// OP_MUL_F	2236	12989	12990
// OP_MUL_F	12990	32	12991
// OP_LOAD_V	28	113	12992
// OP_MUL_FV	12991	12992	12995
// OP_SUB_V	12986	12995	12998
// OP_STOREP_V	12998	12983	0
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
            
            T_Damage(self, world, world, 20 * self.waterlevel);
        }
        
    }
    else
    {
        
        if(self.watertype == CONTENT_SLIME)
        {
            
            if((self.dmgtime < time) && (self.radsuit_finished < time))
            {
                self.dmgtime = time + 1;
                T_Damage(self, world, world, 8 * self.waterlevel);
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
// function begins at statement 18175, parm_start=13002
// OP_LOAD_V	28	117	13008
// OP_STORE_V	13008	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	13011
// OP_STORE_V	13011	13002	0
// OP_ADD_F	13004	843	13014
// OP_STORE_F	13014	13004	0
// OP_STORE_F	817	61	0
// OP_STORE_V	59	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	59	13015	13016
// OP_ADD_V	13002	13016	13019
// OP_STORE_V	13019	13005	0
// OP_STORE_V	13002	4	0
// OP_STORE_V	13005	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	13022
// OP_IFNOT	13022	34	0
// OP_LOAD_F	28	141	13023
// OP_ADD_F	13004	13023	13024
// OP_SUB_F	13024	843	13025
// OP_STORE_F	13025	13004	0
// OP_MUL_VF	59	13015	13026
// OP_ADD_V	13002	13026	13029
// OP_STORE_V	13029	13005	0
// OP_ADDRESS	28	202	13032
// OP_MUL_VF	74	13035	13036
// OP_STOREP_V	13036	13032	0
// OP_STORE_V	13002	4	0
// OP_STORE_V	13005	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	13039
// OP_IFNOT	13039	17	0
// OP_ADDRESS	28	182	13040
// OP_LOAD_F	28	182	13041
// OP_BITOR	13041	230	13042
// OP_STOREP_F	13042	13040	0
// OP_ADDRESS	28	116	13043
// OP_STOREP_F	9612	13043	0
// OP_ADDRESS	28	182	13044
// OP_LOAD_F	28	182	13045
// OP_LOAD_F	28	182	13046
// OP_BITAND	13046	231	13047
// OP_SUB_F	13045	13047	13048
// OP_STOREP_F	13048	13044	0
// OP_ADDRESS	28	186	13049
// OP_ADD_F	31	821	13050
// OP_STOREP_F	13050	13049	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckWaterJump = 
{
    local vector start;
    local vector end;
    makevectors(self.angles);
    start = self.origin;
    start_z = 0 + 8;
    v_forward_z = 0;
    normalize(v_forward);
    end = start + (v_forward * 24);
    traceline(start, end, TRUE, self);
    
    if(trace_fraction < 1)
    {
        start_z = (0 + self.maxs_z) - 8;
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
// function begins at statement 18229, parm_start=13051
// OP_LOAD_F	28	644	13059
// OP_BITAND	13059	698	13060
// OP_IFNOT	13060	2	0
// OP_RETURN	0	0	0
// OP_IFNOT	12321	3	0
// OP_CALL0	12455	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	13061
// OP_EQ_V	13061	926	13064
// OP_IFNOT	13064	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	175	13065
// OP_STORE_V	13065	4	0
// OP_CALL1	461	0	0
// OP_CALL0	12821	0	0
// OP_CALL0	12922	0	0
// OP_LOAD_F	28	152	13068
// OP_GT	13068	817	13069
// OP_LOAD_F	28	189	13070
// OP_GE	13070	821	13071
// OP_AND	13069	13071	13072
// OP_IFNOT	13072	22	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13073	7	0
// OP_CALL2	480	0	0
// OP_CALL0	12512	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	12102	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	819	16	0
// OP_CALL5	467	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	13058	0
// OP_ADDRESS	13058	201	13074
// OP_STOREP_ENT	28	13074	0
// OP_ADDRESS	13058	378	13075
// OP_STOREP_F	11200	13075	0
// OP_ADDRESS	13058	148	13076
// OP_STOREP_FNC	7194	13076	0
// OP_ADDRESS	13058	150	13077
// OP_ADD_F	31	819	13078
// OP_STOREP_F	13078	13077	0
// OP_LOAD_F	28	165	13079
// OP_GE	13079	254	13080
// OP_IFNOT	13080	3	0
// OP_CALL0	12833	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	13081
// OP_EQ_F	13081	253	13082
// OP_IFNOT	13082	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	431	13083
// OP_LT	31	13083	13084
// OP_IFNOT	13084	3	0
// OP_ADDRESS	28	113	13085
// OP_STOREP_V	926	13085	0
// OP_CALL0	5105	0	0
// OP_DONE	0	0	0
void () PlayerPreThink = 
{
    local float r;
    local vector v1;
    local vector v2;
    local entity water_think;
    
    if(self.racing_flags & QR_OBSERVER)
    {
        return;
    }
    
    
    if(intermission_running)
    {
        IntermissionThink();
        return;
    }
    
    
    if(self.view_ofs == '0.000 0.000 0.000')
    {
        return;
    }
    
    makevectors(self.v_angle);
    CheckRules();
    WaterMove();
    
    if((self.health > 0) && (self.waterlevel >= 2))
    {
        stuffcmd(self, "v_cshift 0 0 64 255\n");
        respawn();
        sound(self, CHAN_AUTO, "player/h2ojump.wav", 1, 1);
        water_think = spawn();
        water_think.owner = self;
        water_think.speed = 255;
        water_think.think = WaterScreenThink;
        water_think.nextthink = time + 1;
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
    
    
    if(time < self.pausetime)
    {
        self.velocity = '0.000 0.000 0.000';
    }
    
    VehiclePreThink();
};

// CheckPowerups
// function begins at statement 18288, parm_start=13089
// OP_LOAD_F	28	152	13089
// OP_LE	13089	817	13090
// OP_IFNOT	13090	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	390	13091
// OP_IFNOT	13091	63	0
// OP_LOAD_F	28	396	13092
// OP_LT	13092	31	13093
// OP_IFNOT	13093	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9052	10	0
// OP_STORE_V	1182	13	0
// OP_STORE_V	341	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	396	13094
// OP_CALL0	466	0	0
// OP_MUL_F	1	823	13095
// OP_ADD_F	13095	819	13096
// OP_ADD_F	31	13096	13097
// OP_STOREP_F	13097	13094	0
// OP_LOAD_F	28	390	13098
// OP_ADD_F	31	823	13099
// OP_LT	13098	13099	13100
// OP_IFNOT	13100	28	0
// OP_LOAD_F	28	395	13101
// OP_EQ_F	13101	819	13102
// OP_IFNOT	13102	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13103	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9051	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	395	13104
// OP_ADD_F	31	819	13105
// OP_STOREP_F	13105	13104	0
// OP_LOAD_F	28	395	13106
// OP_LT	13106	31	13107
// OP_IFNOT	13107	7	0
// OP_ADDRESS	28	395	13108
// OP_ADD_F	31	819	13109
// OP_STOREP_F	13109	13108	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	28	390	13110
// OP_LT	13110	31	13111
// OP_IFNOT	13111	9	0
// OP_ADDRESS	28	162	13112
// OP_LOAD_F	28	162	13113
// OP_SUB_F	13113	286	13114
// OP_STOREP_F	13114	13112	0
// OP_ADDRESS	28	390	13115
// OP_STOREP_F	817	13115	0
// OP_ADDRESS	28	395	13116
// OP_STOREP_F	817	13116	0
// OP_ADDRESS	28	131	13117
// OP_STOREP_F	817	13117	0
// OP_ADDRESS	28	93	13118
// OP_STOREP_F	12319	13118	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	13119
// OP_STOREP_F	12320	13119	0
// OP_LOAD_F	28	389	13120
// OP_IFNOT	13120	57	0
// OP_LOAD_F	28	389	13121
// OP_ADD_F	31	823	13122
// OP_LT	13121	13122	13123
// OP_IFNOT	13123	28	0
// OP_LOAD_F	28	393	13124
// OP_EQ_F	13124	819	13125
// OP_IFNOT	13125	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13126	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9033	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	393	13127
// OP_ADD_F	31	819	13128
// OP_STOREP_F	13128	13127	0
// OP_LOAD_F	28	393	13129
// OP_LT	13129	31	13130
// OP_IFNOT	13130	7	0
// OP_ADDRESS	28	393	13131
// OP_ADD_F	31	819	13132
// OP_STOREP_F	13132	13131	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	28	389	13133
// OP_LT	13133	31	13134
// OP_IFNOT	13134	9	0
// OP_ADDRESS	28	162	13135
// OP_LOAD_F	28	162	13136
// OP_SUB_F	13136	287	13137
// OP_STOREP_F	13137	13135	0
// OP_ADDRESS	28	393	13138
// OP_STOREP_F	817	13138	0
// OP_ADDRESS	28	389	13139
// OP_STOREP_F	817	13139	0
// OP_LOAD_F	28	389	13140
// OP_GT	13140	31	13141
// OP_IFNOT	13141	6	0
// OP_ADDRESS	28	133	13142
// OP_LOAD_F	28	133	13143
// OP_BITOR	13143	350	13144
// OP_STOREP_F	13144	13142	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	13145
// OP_LOAD_F	28	133	13146
// OP_LOAD_F	28	133	13147
// OP_BITAND	13147	350	13148
// OP_SUB_F	13146	13148	13149
// OP_STOREP_F	13149	13145	0
// OP_LOAD_F	28	391	13150
// OP_IFNOT	13150	57	0
// OP_LOAD_F	28	391	13151
// OP_ADD_F	31	823	13152
// OP_LT	13151	13152	13153
// OP_IFNOT	13153	28	0
// OP_LOAD_F	28	397	13154
// OP_EQ_F	13154	819	13155
// OP_IFNOT	13155	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13156	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9061	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	397	13157
// OP_ADD_F	31	819	13158
// OP_STOREP_F	13158	13157	0
// OP_LOAD_F	28	397	13159
// OP_LT	13159	31	13160
// OP_IFNOT	13160	7	0
// OP_ADDRESS	28	397	13161
// OP_ADD_F	31	819	13162
// OP_STOREP_F	13162	13161	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	28	391	13163
// OP_LT	13163	31	13164
// OP_IFNOT	13164	9	0
// OP_ADDRESS	28	162	13165
// OP_LOAD_F	28	162	13166
// OP_SUB_F	13166	289	13167
// OP_STOREP_F	13167	13165	0
// OP_ADDRESS	28	391	13168
// OP_STOREP_F	817	13168	0
// OP_ADDRESS	28	397	13169
// OP_STOREP_F	817	13169	0
// OP_LOAD_F	28	391	13170
// OP_GT	13170	31	13171
// OP_IFNOT	13171	6	0
// OP_ADDRESS	28	133	13172
// OP_LOAD_F	28	133	13173
// OP_BITOR	13173	350	13174
// OP_STOREP_F	13174	13172	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	13175
// OP_LOAD_F	28	133	13176
// OP_LOAD_F	28	133	13177
// OP_BITAND	13177	350	13178
// OP_SUB_F	13176	13178	13179
// OP_STOREP_F	13179	13175	0
// OP_LOAD_F	28	392	13180
// OP_IFNOT	13180	46	0
// OP_ADDRESS	28	405	13181
// OP_ADD_F	31	834	13182
// OP_STOREP_F	13182	13181	0
// OP_LOAD_F	28	392	13183
// OP_ADD_F	31	823	13184
// OP_LT	13183	13184	13185
// OP_IFNOT	13185	28	0
// OP_LOAD_F	28	399	13186
// OP_EQ_F	13186	819	13187
// OP_IFNOT	13187	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13188	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9042	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	399	13189
// OP_ADD_F	31	819	13190
// OP_STOREP_F	13190	13189	0
// OP_LOAD_F	28	399	13191
// OP_LT	13191	31	13192
// OP_IFNOT	13192	7	0
// OP_ADDRESS	28	399	13193
// OP_ADD_F	31	819	13194
// OP_STOREP_F	13194	13193	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6225	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	28	392	13195
// OP_LT	13195	31	13196
// OP_IFNOT	13196	9	0
// OP_ADDRESS	28	162	13197
// OP_LOAD_F	28	162	13198
// OP_SUB_F	13198	288	13199
// OP_STOREP_F	13199	13197	0
// OP_ADDRESS	28	399	13200
// OP_STOREP_F	817	13200	0
// OP_ADDRESS	28	392	13201
// OP_STOREP_F	817	13201	0
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
// function begins at statement 18522, parm_start=13202
// OP_LOAD_F	28	644	13208
// OP_BITAND	13208	698	13209
// OP_IFNOT	13209	9	0
// OP_LOAD_S	28	130	13210
// OP_NE_S	13210	4128	13211
// OP_IFNOT	13211	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_CALL0	540	0	0
// OP_RETURN	0	0	0
// OP_EQ_F	738	825	13212
// OP_LOAD_F	28	182	13213
// OP_BITAND	13213	225	13214
// OP_AND	13212	13214	13215
// OP_IFNOT	13215	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	13216	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	28	152	13217
// OP_STOREP_F	819	13217	0
// OP_LOAD_V	28	621	13218
// OP_STORE_V	13218	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13203	0
// OP_LOAD_V	28	113	13221
// OP_STORE_V	13221	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	13202	0
// OP_LT	13202	13203	13224
// OP_IFNOT	13224	33	0
// OP_DIV_F	778	823	13225
// OP_GT	13203	13225	13226
// OP_SUB_F	13203	13202	13227
// OP_GT	13227	4760	13228
// OP_AND	13226	13228	13229
// OP_IFNOT	13229	27	0
// OP_LOAD_V	28	105	13230
// OP_STORE_V	13230	4	0
// OP_STORE_V	13233	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	13206	0
// OP_NE_E	13206	30	13234
// OP_LOAD_S	13206	129	13235
// OP_NE_S	13235	880	13236
// OP_AND	13234	13236	13237
// OP_LOAD_S	13206	129	13238
// OP_NE_S	13238	1187	13239
// OP_AND	13237	13239	13240
// OP_IFNOT	13240	4	0
// OP_LOAD_ENT	13206	164	13241
// OP_STORE_ENT	13241	13206	0
// OP_GOTO	-10	0	0
// OP_NE_E	13206	30	13242
// OP_IFNOT	13242	9	0
// OP_LOAD_F	28	116	13243
// OP_STORE_F	13243	13205	0
// OP_ADDRESS	28	113	13244
// OP_LOAD_V	28	621	13247
// OP_MUL_VF	13247	2319	13250
// OP_STOREP_V	13250	13244	0
// OP_ADDRESS	28	116	13253
// OP_STOREP_F	13205	13253	0
// OP_IFNOT	719	5	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	109	13254
// OP_STORE_V	13254	7	0
// OP_CALL2	462	0	0
// OP_LOAD_S	28	129	13257
// OP_EQ_S	13257	880	13258
// OP_IFNOT	13258	3	0
// OP_ADDRESS	28	119	13259
// OP_STOREP_F	542	13259	0
// OP_LOAD_V	28	166	13260
// OP_EQ_V	13260	926	13263
// OP_IFNOT	13263	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	13264
// OP_IFNOT	13264	2	0
// OP_RETURN	0	0	0
// OP_CALL0	11203	0	0
// OP_LOAD_F	28	182	13265
// OP_BITAND	13265	228	13266
// OP_NOT_F	13266	0	13267
// OP_IFNOT	13267	4	0
// OP_ADDRESS	28	403	13268
// OP_LOAD_F	28	116	13269
// OP_STOREP_F	13269	13268	0
// OP_CALL0	13088	0	0
// OP_CALL0	1154	0	0
// OP_DONE	0	0	0
void () PlayerPostThink = 
{
    local float mspeed;
    local float aspeed;
    local float r;
    local float zvel;
    local entity ent;
    local entity mine;
    
    if(self.racing_flags & QR_OBSERVER)
    {
        
        if(self.model != "")
        {
            setmodel(self, "");
        }
        
        ImpulseCommands();
        return;
    }
    
    
    if((rally_type_index == 4) && (self.flags & FL_GODMODE))
    {
        sprint(self, "Cheats never prosper..");
        self.health = 1;
    }
    
    aspeed = vlen(self.last_velocity);
    mspeed = vlen(self.velocity);
    
    if(mspeed < aspeed)
    {
        
        if((aspeed > (MAX_SPEED / 3)) && ((aspeed - mspeed) > 200))
        {
            ent = findradius(self.origin, 196);
            
            while(((ent != world) && (ent.classname != "player")) && (ent.classname != "rally_bot"))
            {
                ent = ent.chain;
            }
            
            
            if(ent != world)
            {
                zvel = self.velocity_z;
                self.velocity = self.last_velocity * 0.9;
                self.velocity_z = zvel;
            }
            
        }
        
    }
    
    
    if(hold_flag)
    {
        setorigin(self, self.oldorigin);
    }
    
    
    if(self.classname == "player")
    {
        self.angles_y = 0;
    }
    
    
    if(self.view_ofs == '0.000 0.000 0.000')
    {
        return;
    }
    
    
    if(self.deadflag)
    {
        return;
    }
    
    W_WeaponFrame();
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.jump_flag = self.velocity_z;
    }
    
    CheckPowerups();
    MoveVehicle();
};

// ClientConnect
// function begins at statement 18613, parm_start=13270
// OP_STORE_F	218	13274	0
// OP_LT	738	823	13275
// OP_IFNOT	13275	4	0
// OP_NE_E	726	30	13276
// OP_IFNOT	13276	2	0
// OP_STORE_F	219	13274	0
// OP_IFNOT	13274	5	0
// OP_ADDRESS	28	644	13277
// OP_LOAD_F	28	644	13278
// OP_BITOR	13278	698	13279
// OP_STOREP_F	13279	13277	0
// OP_LOAD_S	28	180	13280
// OP_STORE_V	13280	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13281	4	0
// OP_CALL1	482	0	0
// OP_ADDRESS	28	547	13282
// OP_STOREP_ENT	30	13282	0
// OP_IFNOT	12321	2	0
// OP_CALL0	12428	0	0
// OP_DONE	0	0	0
void () ClientConnect = 
{
    local entity spot;
    local vector vec;
    local float make_observer;
    make_observer = FALSE;
    
    if(rally_type_index < 3)
    {
        
        if(current_leader != world)
        {
            make_observer = TRUE;
        }
        
    }
    
    
    if(make_observer)
    {
        self.racing_flags = self.racing_flags | QR_OBSERVER;
    }
    
    bprint(self.netname);
    bprint(" entered the game\n");
    self.veh_tail = world;
    
    if(intermission_running)
    {
        ExitIntermission();
    }
    
};

// RestartMap
// function begins at statement 18634, parm_start=13284
// OP_STORE_V	34	4	0
// OP_CALL1	518	0	0
// OP_DONE	0	0	0
void () RestartMap = 
{
    changelevel(mapname);
};

// ClientDisconnect
// function begins at statement 18637, parm_start=13284
// OP_IFNOT	356	2	0
// OP_RETURN	0	0	0
// OP_CALL0	5865	0	0
// OP_LT	738	823	13287
// OP_NE_E	726	30	13288
// OP_AND	13287	13288	13289
// OP_IFNOT	13289	49	0
// OP_STORE_V	949	4	0
// OP_CALL1	501	0	0
// OP_LOAD_ENT	28	667	13290
// OP_EQ_E	13290	30	13291
// OP_AND	1	13291	13292
// OP_LOAD_ENT	28	668	13293
// OP_EQ_E	13293	30	13294
// OP_AND	13292	13294	13295
// OP_IFNOT	13295	10	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	13285	0
// OP_ADDRESS	13285	148	13296
// OP_STOREP_FNC	13283	13296	0
// OP_ADDRESS	13285	150	13297
// OP_ADD_F	31	1152	13298
// OP_STOREP_F	13298	13297	0
// OP_STORE_ENT	30	726	0
// OP_GOTO	30	0	0
// OP_LOAD_ENT	28	667	13299
// OP_NE_E	13299	30	13300
// OP_IFNOT	13300	17	0
// OP_LOAD_ENT	28	668	13301
// OP_NE_E	13301	30	13302
// OP_IFNOT	13302	10	0
// OP_LOAD_ENT	28	667	13303
// OP_ADDRESS	13303	668	13304
// OP_LOAD_ENT	28	668	13305
// OP_STOREP_ENT	13305	13304	0
// OP_LOAD_ENT	28	668	13306
// OP_ADDRESS	13306	667	13307
// OP_LOAD_ENT	28	667	13308
// OP_STOREP_ENT	13308	13307	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	667	13309
// OP_ADDRESS	13309	668	13310
// OP_STOREP_ENT	30	13310	0
// OP_GOTO	11	0	0
// OP_LOAD_ENT	28	668	13311
// OP_NE_E	13311	30	13312
// OP_IFNOT	13312	7	0
// OP_LOAD_ENT	28	668	13313
// OP_ADDRESS	13313	667	13314
// OP_STOREP_ENT	30	13314	0
// OP_LOAD_ENT	28	668	13315
// OP_STORE_ENT	13315	726	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	726	0
// OP_GOTO	25	0	0
// OP_STORE_F	817	13286	0
// OP_STORE_ENT	30	13284	0
// OP_STORE_V	13284	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	13284	0
// OP_NE_E	1	30	13316
// OP_IFNOT	13316	6	0
// OP_NE_E	13284	28	13317
// OP_IFNOT	13317	3	0
// OP_ADD_F	13286	819	13318
// OP_STORE_F	13318	13286	0
// OP_GOTO	-11	0	0
// OP_NOT_F	13286	0	13319
// OP_IFNOT	13319	9	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	13285	0
// OP_ADDRESS	13285	148	13320
// OP_STOREP_FNC	13283	13320	0
// OP_ADDRESS	13285	150	13321
// OP_ADD_F	31	1152	13322
// OP_STOREP_F	13322	13321	0
// OP_STORE_ENT	30	726	0
// OP_LOAD_S	28	180	13323
// OP_STORE_V	13323	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13324	4	0
// OP_CALL1	482	0	0
// OP_LOAD_F	28	153	13325
// OP_STORE_V	13325	4	0
// OP_CALL1	485	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13326	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	12088	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_CALL0	12511	0	0
// OP_LE	738	821	13327
// OP_NE_E	720	30	13328
// OP_AND	13327	13328	13329
// OP_IFNOT	13329	36	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	13284	0
// OP_NE_E	13284	30	13330
// OP_IFNOT	13330	21	0
// OP_NE_E	13284	28	13331
// OP_LOAD_F	13284	644	13332
// OP_BITAND	13332	692	13333
// OP_NOT_F	13333	0	13334
// OP_AND	13331	13334	13335
// OP_LOAD_F	13284	644	13336
// OP_BITAND	13336	698	13337
// OP_NOT_F	13337	0	13338
// OP_AND	13335	13338	13339
// OP_LOAD_F	13284	165	13340
// OP_NOT_F	13340	0	13341
// OP_AND	13339	13341	13342
// OP_IFNOT	13342	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	13284	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	13284	0
// OP_GOTO	-21	0	0
// OP_ADDRESS	720	644	13343
// OP_LOAD_F	720	644	13344
// OP_LOAD_F	720	644	13345
// OP_BITAND	13345	690	13346
// OP_SUB_F	13344	13346	13347
// OP_STOREP_F	13347	13343	0
// OP_ADDRESS	720	640	13348
// OP_STOREP_F	823	13348	0
// OP_DONE	0	0	0
void () ClientDisconnect = 
{
    local entity plyr;
    local entity restartent;
    local float pcount;
    
    if(gameover)
    {
        return;
    }
    
    DestroyVehicleParts();
    if((rally_type_index < 3) && (current_leader != world))
    {
        if((cvar("deathmatch") && (self.ahead == world)) && (self.behind == world))
        {
            restartent = spawn();
            restartent.think = RestartMap;
            restartent.nextthink = time + 0.2;
            current_leader = world;
        }
        else
        {
            if(self.ahead != world)
            {
                if(self.behind != world)
                {
                    self.ahead.behind = self.behind;
                    self.behind.ahead = self.ahead;
                }
                else
                {
                    self.ahead.behind = world;
                }
                
            }
            else
            {
                if(self.behind != world)
                {
                    self.behind.ahead = world;
                    current_leader = self.behind;
                }
                else
                {
                    current_leader = world;
                }
                
            }
            
        }
        
    }
    else
    {
        pcount = 0;
        plyr = world;
        plyr = find(plyr, classname, "player");
        
        while(find(plyr, classname, "player") != world)
        {
            
            if(plyr != self)
            {
                pcount = pcount + 1;
            }
            
        }
        
        
        if(!pcount)
        {
            restartent = spawn();
            restartent.think = RestartMap;
            restartent.nextthink = time + 0.2;
            current_leader = world;
        }
        
    }
    
    bprint(self.netname);
    bprint(" left the game with ");
    bprint(ftos(self.frags));
    bprint(" frags\n");
    sound(self, CHAN_BODY, "player/tornoff2.wav", 1, ATTN_NONE);
    set_suicide_frame();
    
    if((rally_type_index <= 2) && (starter != world))
    {
        plyr = find(world, classname, "player");
        
        while(plyr != world)
        {
            
            if((((plyr != self) && (!(plyr.racing_flags & QR_START_READY))) && (!(plyr.racing_flags & QR_OBSERVER))) && !plyr.deadflag)
            {
                return;
            }
            
            plyr = find(plyr, classname, "player");
        }
        
        starter.racing_flags = starter.racing_flags - (starter.racing_flags & QR_NOT_RACING);
        starter.last_lap = 3;
    }
    
};

// ClientObituary
// function begins at statement 18775, parm_start=13349
// OP_CALL0	466	0	0
// OP_STORE_F	1	13351	0
// OP_EQ_F	738	825	13355
// OP_IFNOT	13355	2	0
// OP_RETURN	0	0	0
// OP_LT	738	821	13356
// OP_IFNOT	13356	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13349	129	13357
// OP_EQ_S	13357	880	13358
// OP_IFNOT	13358	293	0
// OP_LOAD_S	13350	129	13359
// OP_EQ_S	13359	13360	13361
// OP_IFNOT	13361	19	0
// OP_LOAD_S	13349	180	13362
// OP_STORE_V	13362	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13363	4	0
// OP_CALL1	482	0	0
// OP_LOAD_ENT	13350	201	13364
// OP_LOAD_S	13364	180	13365
// OP_STORE_V	13365	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	482	0	0
// OP_LOAD_ENT	13350	201	13366
// OP_ADDRESS	13366	153	13367
// OP_LOAD_ENT	13350	201	13368
// OP_LOAD_F	13368	153	13369
// OP_ADD_F	13369	819	13370
// OP_STOREP_F	13370	13367	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13350	129	13371
// OP_EQ_S	13371	13372	13373
// OP_IFNOT	13373	13	0
// OP_STORE_V	13374	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	13349	180	13375
// OP_STORE_V	13375	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13376	4	0
// OP_CALL1	482	0	0
// OP_ADDRESS	13349	153	13377
// OP_LOAD_F	13349	153	13378
// OP_SUB_F	13378	819	13379
// OP_STOREP_F	13379	13377	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13350	129	13380
// OP_EQ_S	13380	880	13381
// OP_IFNOT	13381	112	0
// OP_EQ_E	13349	13350	13382
// OP_IFNOT	13382	23	0
// OP_GE	738	823	13383
// OP_IFNOT	13383	5	0
// OP_ADDRESS	13350	153	13384
// OP_LOAD_F	13350	153	13385
// OP_SUB_F	13385	819	13386
// OP_STOREP_F	13386	13384	0
// OP_LOAD_S	13349	180	13387
// OP_STORE_V	13387	4	0
// OP_CALL1	482	0	0
// OP_LOAD_F	13349	154	13388
// OP_EQ_F	13388	2223	13389
// OP_LOAD_F	13349	189	13390
// OP_GT	13390	819	13391
// OP_AND	13389	13391	13392
// OP_IFNOT	13392	4	0
// OP_STORE_V	13393	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13394	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_GOTO	86	0	0
// OP_ADDRESS	13349	407	13395
// OP_STOREP_S	3473	13395	0
// OP_IFNOT	3473	43	0
// OP_ADDRESS	13350	153	13396
// OP_LOAD_F	13350	153	13397
// OP_ADD_F	13397	819	13398
// OP_STOREP_F	13398	13396	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	823	13399
// OP_STORE_F	13399	13351	0
// OP_LT	13351	819	13400
// OP_IFNOT	13400	10	0
// OP_LOAD_S	13350	180	13401
// OP_STORE_V	13401	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13402	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	13349	180	13403
// OP_STORE_V	13403	4	0
// OP_CALL1	482	0	0
// OP_GOTO	20	0	0
// OP_LT	13351	821	13404
// OP_IFNOT	13404	10	0
// OP_LOAD_S	13349	180	13405
// OP_STORE_V	13405	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13406	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	13350	180	13407
// OP_STORE_V	13407	4	0
// OP_CALL1	482	0	0
// OP_GOTO	9	0	0
// OP_LOAD_S	13349	180	13408
// OP_STORE_V	13408	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13409	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	13350	180	13410
// OP_STORE_V	13410	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	482	0	0
// OP_ADDRESS	13349	407	13411
// OP_STOREP_S	4128	13411	0
// OP_GOTO	41	0	0
// OP_ADDRESS	13350	153	13412
// OP_LOAD_F	13350	153	13413
// OP_ADD_F	13413	819	13414
// OP_STOREP_F	13414	13412	0
// OP_LOAD_F	13350	154	13415
// OP_STORE_F	13415	13351	0
// OP_EQ_F	13351	277	13416
// OP_IFNOT	13416	3	0
// OP_STORE_S	13417	13353	0
// OP_STORE_S	888	13354	0
// OP_EQ_F	13351	263	13418
// OP_IFNOT	13418	3	0
// OP_STORE_S	13419	13353	0
// OP_STORE_S	13420	13354	0
// OP_EQ_F	13351	279	13421
// OP_IFNOT	13421	3	0
// OP_STORE_S	13422	13353	0
// OP_STORE_S	13423	13354	0
// OP_EQ_F	13351	278	13424
// OP_IFNOT	13424	3	0
// OP_STORE_S	13425	13353	0
// OP_STORE_S	13426	13354	0
// OP_EQ_F	13351	280	13427
// OP_IFNOT	13427	3	0
// OP_STORE_S	13428	13353	0
// OP_STORE_S	13429	13354	0
// OP_EQ_F	13351	265	13430
// OP_IFNOT	13430	3	0
// OP_STORE_S	13431	13353	0
// OP_STORE_S	13432	13354	0
// OP_LOAD_S	13349	180	13433
// OP_STORE_V	13433	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13353	4	0
// OP_CALL1	482	0	0
// OP_LOAD_S	13350	180	13434
// OP_STORE_V	13434	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13354	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_GOTO	143	0	0
// OP_ADDRESS	13349	153	13435
// OP_LOAD_F	13349	153	13436
// OP_SUB_F	13436	819	13437
// OP_STOREP_F	13437	13435	0
// OP_LOAD_S	13349	180	13438
// OP_STORE_V	13438	4	0
// OP_CALL1	482	0	0
// OP_LOAD_F	13350	182	13439
// OP_BITAND	13439	224	13440
// OP_IFNOT	13440	4	0
// OP_STORE_V	13441	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13350	129	13442
// OP_EQ_S	13442	13443	13444
// OP_IFNOT	13444	4	0
// OP_STORE_V	13445	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	13350	104	13446
// OP_EQ_F	13446	247	13447
// OP_NE_E	13350	30	13448
// OP_AND	13447	13448	13449
// OP_IFNOT	13449	4	0
// OP_STORE_V	13450	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13350	129	13451
// OP_EQ_S	13451	13452	13453
// OP_LOAD_S	13350	129	13454
// OP_EQ_S	13454	13455	13456
// OP_OR	13453	13456	13457
// OP_IFNOT	13457	4	0
// OP_STORE_V	13458	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13350	129	13459
// OP_EQ_S	13459	13460	13461
// OP_IFNOT	13461	4	0
// OP_STORE_V	13462	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13350	129	13463
// OP_EQ_S	13463	12811	13464
// OP_IFNOT	13464	4	0
// OP_STORE_V	13465	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	13349	190	13466
// OP_STORE_F	13466	13351	0
// OP_EQ_F	13351	13467	13468
// OP_IFNOT	13468	17	0
// OP_CALL0	466	0	0
// OP_STORE_F	1	13352	0
// OP_LT	13352	1930	13469
// OP_IFNOT	13469	4	0
// OP_STORE_V	13470	4	0
// OP_CALL1	482	0	0
// OP_GOTO	8	0	0
// OP_LT	13352	2619	13471
// OP_IFNOT	13471	4	0
// OP_STORE_V	13472	4	0
// OP_CALL1	482	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	13473	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	13351	9450	13474
// OP_IFNOT	13474	11	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	13475
// OP_IFNOT	13475	4	0
// OP_STORE_V	13476	4	0
// OP_CALL1	482	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	13477	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	13351	1483	13478
// OP_IFNOT	13478	16	0
// OP_LOAD_F	13349	152	13479
// OP_LT	13479	3214	13480
// OP_IFNOT	13480	4	0
// OP_STORE_V	13481	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_CALL0	466	0	0
// OP_LT	1	1182	13482
// OP_IFNOT	13482	4	0
// OP_STORE_V	13483	4	0
// OP_CALL1	482	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	13484	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13349	407	13485
// OP_EQ_S	13485	13486	13487
// OP_IFNOT	13487	6	0
// OP_ADDRESS	13349	407	13488
// OP_STOREP_S	4128	13488	0
// OP_STORE_V	13489	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	13349	407	13490
// OP_EQ_S	13490	1817	13491
// OP_IFNOT	13491	22	0
// OP_ADDRESS	13349	407	13492
// OP_STOREP_S	4128	13492	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	823	13493
// OP_STORE_F	13493	13352	0
// OP_LT	13352	819	13494
// OP_IFNOT	13494	4	0
// OP_STORE_V	13495	4	0
// OP_CALL1	482	0	0
// OP_GOTO	10	0	0
// OP_LE	13352	821	13496
// OP_IFNOT	13496	4	0
// OP_STORE_V	13497	4	0
// OP_CALL1	482	0	0
// OP_GOTO	5	0	0
// OP_LE	13352	823	13498
// OP_IFNOT	13498	3	0
// OP_STORE_V	13499	4	0
// OP_CALL1	482	0	0
// OP_RETURN	0	0	0
// OP_GOTO	12	0	0
// OP_LOAD_S	13349	407	13500
// OP_EQ_S	13500	3620	13501
// OP_IFNOT	13501	9	0
// OP_ADDRESS	13349	407	13502
// OP_STOREP_S	4128	13502	0
// OP_STORE_V	13503	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	13349	4	0
// OP_STORE_V	13504	7	0
// OP_CALL2	520	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13441	4	0
// OP_CALL1	482	0	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) ClientObituary = 
{
    local float rnum;
    local float rnd;
    local string deathstring;
    local string deathstring2;
    rnum = random();
    
    if(rally_type_index == 4)
    {
        return;
    }
    
    
    if(rally_type_index < 2)
    {
        return;
    }
    
    
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
                
                if(rally_type_index >= 3)
                {
                    attacker.frags = attacker.frags - 1;
                }
                
                bprint(targ.netname);
                
                if((targ.weapon == 64) && (targ.waterlevel > 1))
                {
                    bprint(" discharges into the water.\n");
                    return;
                }
                
                bprint(" becomes bored with life\n");
                return;
            }
            else
            {
                targ.deathtype = "car_collision";
                if("car_collision")
                {
                    attacker.frags = attacker.frags + 1;
                    rnum = random() * 3;
                    if(rnum < 1)
                    {
                        bprint(attacker.netname);
                        bprint(" demolished ");
                        bprint(targ.netname);
                    }
                    else
                    {
                        if(rnum < 2)
                        {
                            bprint(targ.netname);
                            bprint(" was rammed by ");
                            bprint(attacker.netname);
                        }
                        else
                        {
                            bprint(targ.netname);
                            bprint(" suffered a fatal collision with ");
                            bprint(attacker.netname);
                        }
                        
                    }
                    
                    bprint("\n");
                    targ.deathtype = "";
                }
                else
                {
                    attacker.frags = attacker.frags + 1;
                    rnum = attacker.weapon;
                    
                    if(rnum == IT_ROOBAR)
                    {
                        deathstring = " was demolished by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_SUPER_NAILGUN)
                    {
                        deathstring = " was smothered in ";
                        deathstring2 = "'s nails\n";
                    }
                    
                    
                    if(rnum == IT_MINE_LAUNCHER)
                    {
                        deathstring = " was destroyed by ";
                        deathstring2 = "'s mine\n";
                    }
                    
                    
                    if(rnum == IT_DETONATOR)
                    {
                        deathstring = " couldn't shake ";
                        deathstring2 = "'s detonator\n";
                    }
                    
                    
                    if(rnum == IT_LASER_GUN)
                    {
                        deathstring = " was cooked by ";
                        deathstring2 = "'s lasers\n";
                    }
                    
                    
                    if(rnum == IT_ROCKET_LAUNCHER)
                    {
                        deathstring = " rides ";
                        deathstring2 = "'s rocket\n";
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
                bprint(" died\n");
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
                rnd = random();
                if(rnd < 0.4)
                {
                    bprint(" sleeps with the fishes\n");
                }
                else
                {
                    if(rnd < 0.7)
                    {
                        bprint(" sucks it down\n");
                    }
                    else
                    {
                        bprint("'s car exploded underwater\n");
                    }
                    
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
            
            if(targ.deathtype == "rolled_car")
            {
                targ.deathtype = "";
                rnd = random() * 3;
                if(rnd < 1)
                {
                    bprint(" lost control\n");
                }
                else
                {
                    if(rnd <= 2)
                    {
                        bprint(" crashed and burnt\n");
                    }
                    else
                    {
                        
                        if(rnd <= 3)
                        {
                            bprint(" kissed the dirt\n");
                        }
                        
                    }
                    
                }
                
                return;
            }
            else
            {
                
                if(targ.deathtype == "repulsor_feedback")
                {
                    targ.deathtype = "";
                    bprint("'s repulsor overloaded\n");
                    centerprint(targ, "Repsulor Feedback");
                    return;
                }
                
            }
            
            bprint(" died\n");
        }
        
    }
    
};

