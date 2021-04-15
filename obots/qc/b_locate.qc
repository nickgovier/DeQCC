
// Visible
// function begins at statement 40954, parm_start=23276
// OP_LOAD_V	23276	105	23284
// OP_LOAD_V	23276	166	23287
// OP_ADD_V	23284	23287	23290
// OP_STORE_V	23290	23278	0
// OP_LOAD_V	23277	94	23293
// OP_LOAD_V	23277	98	23296
// OP_ADD_V	23293	23296	23299
// OP_MUL_VF	23299	539	23302
// OP_STORE_V	23302	23281	0
// OP_STORE_V	23278	4	0
// OP_STORE_V	23281	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	23276	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	23305
// OP_IFNOT	23305	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	23277	23306
// OP_IFNOT	23306	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity bot, entity obj) Visible = 
{
    local vector start;
    local vector end;
    start = bot.origin + bot.view_ofs;
    end = (obj.absmin + obj.absmax) * RA_PLAYERSTATTIME;
    traceline(start, end, TRUE, bot);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == obj)
    {
        return TRUE;
    }
    
    return FALSE;
};


// AbsFloorHeight
// function begins at statement 40976, parm_start=23307
// OP_STORE_V	23307	4	0
// OP_ADD_V	23307	23310	23313
// OP_STORE_V	23313	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_RETURN	73	0	0
// OP_DONE	0	0	0
float (vector spot) AbsFloorHeight = 
{
    traceline(spot, spot + '0 0 -500', TRUE, self);
    return trace_endpos_z;
};


// CreateFloorTestEnt
// function begins at statement 40984, parm_start=23316
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	829	0
// OP_ADDRESS	829	129	23316
// OP_STOREP_S	23317	23316	0
// OP_ADDRESS	829	103	23318
// OP_STOREP_F	227	23318	0
// OP_ADDRESS	829	104	23319
// OP_STOREP_F	237	23319	0
// OP_DONE	0	0	0
void () CreateFloorTestEnt = 
{
    floorTestEnt = spawn();
    floorTestEnt.classname = "floortest";
    floorTestEnt.movetype = MOVETYPE_NONE;
    floorTestEnt.solid = SOLID_NOT;
};


// BotAbovePlatDoorTrain
// function begins at statement 40993, parm_start=23320
// OP_LOAD_V	23320	105	23327
// OP_STORE_V	23327	23321	0
// OP_STORE_V	23321	23324	0
// OP_SUB_F	23326	2044	23330
// OP_STORE_F	23330	23326	0
// OP_STORE_V	23321	4	0
// OP_STORE_V	23324	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_S	78	129	23331
// OP_NE_S	23331	11722	23332
// OP_LOAD_S	78	129	23333
// OP_NE_S	23333	5259	23334
// OP_AND	23332	23334	23335
// OP_LOAD_S	78	129	23336
// OP_NE_S	23336	11860	23337
// OP_AND	23335	23337	23338
// OP_IFNOT	23338	110	0
// OP_LOAD_V	23320	105	23339
// OP_STORE_V	23339	23321	0
// OP_LOAD_F	28	139	23342
// OP_ADD_F	23321	23342	23343
// OP_SUB_F	23343	214	23344
// OP_STORE_F	23344	23321	0
// OP_LOAD_F	28	140	23345
// OP_ADD_F	23322	23345	23346
// OP_SUB_F	23346	214	23347
// OP_STORE_F	23347	23322	0
// OP_STORE_V	23321	23324	0
// OP_SUB_F	23326	2044	23348
// OP_STORE_F	23348	23326	0
// OP_STORE_V	23321	4	0
// OP_STORE_V	23324	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_S	78	129	23349
// OP_NE_S	23349	11722	23350
// OP_LOAD_S	78	129	23351
// OP_NE_S	23351	5259	23352
// OP_AND	23350	23352	23353
// OP_LOAD_S	78	129	23354
// OP_NE_S	23354	11860	23355
// OP_AND	23353	23355	23356
// OP_IFNOT	23356	83	0
// OP_LOAD_V	23320	105	23357
// OP_STORE_V	23357	23321	0
// OP_LOAD_F	28	139	23360
// OP_ADD_F	23321	23360	23361
// OP_SUB_F	23361	214	23362
// OP_STORE_F	23362	23321	0
// OP_LOAD_F	28	136	23363
// OP_ADD_F	23322	23363	23364
// OP_ADD_F	23364	214	23365
// OP_STORE_F	23365	23322	0
// OP_STORE_V	23321	23324	0
// OP_SUB_F	23326	2044	23366
// OP_STORE_F	23366	23326	0
// OP_STORE_V	23321	4	0
// OP_STORE_V	23324	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_S	78	129	23367
// OP_NE_S	23367	11722	23368
// OP_LOAD_S	78	129	23369
// OP_NE_S	23369	5259	23370
// OP_AND	23368	23370	23371
// OP_LOAD_S	78	129	23372
// OP_NE_S	23372	11860	23373
// OP_AND	23371	23373	23374
// OP_IFNOT	23374	56	0
// OP_LOAD_V	23320	105	23375
// OP_STORE_V	23375	23321	0
// OP_LOAD_F	28	135	23378
// OP_ADD_F	23321	23378	23379
// OP_ADD_F	23379	214	23380
// OP_STORE_F	23380	23321	0
// OP_LOAD_F	28	136	23381
// OP_ADD_F	23322	23381	23382
// OP_ADD_F	23382	214	23383
// OP_STORE_F	23383	23322	0
// OP_STORE_V	23321	23324	0
// OP_SUB_F	23326	2044	23384
// OP_STORE_F	23384	23326	0
// OP_STORE_V	23321	4	0
// OP_STORE_V	23324	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_S	78	129	23385
// OP_NE_S	23385	11722	23386
// OP_LOAD_S	78	129	23387
// OP_NE_S	23387	5259	23388
// OP_AND	23386	23388	23389
// OP_LOAD_S	78	129	23390
// OP_NE_S	23390	11860	23391
// OP_AND	23389	23391	23392
// OP_IFNOT	23392	29	0
// OP_LOAD_V	23320	105	23393
// OP_STORE_V	23393	23321	0
// OP_LOAD_F	28	135	23396
// OP_ADD_F	23321	23396	23397
// OP_ADD_F	23397	214	23398
// OP_STORE_F	23398	23321	0
// OP_LOAD_F	28	140	23399
// OP_ADD_F	23322	23399	23400
// OP_SUB_F	23400	214	23401
// OP_STORE_F	23401	23322	0
// OP_STORE_V	23321	23324	0
// OP_SUB_F	23326	2044	23402
// OP_STORE_F	23402	23326	0
// OP_STORE_V	23321	4	0
// OP_STORE_V	23324	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_S	78	129	23403
// OP_NE_S	23403	11722	23404
// OP_LOAD_S	78	129	23405
// OP_NE_S	23405	5259	23406
// OP_AND	23404	23406	23407
// OP_LOAD_S	78	129	23408
// OP_NE_S	23408	11860	23409
// OP_AND	23407	23409	23410
// OP_IFNOT	23410	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity e) BotAbovePlatDoorTrain = 
{
    local vector start;
    local vector end;
    start = e.origin;
    end = start;
    end_z = end_z - 200;
    traceline(start, end, TRUE, self);
    
    if(((trace_ent.classname != "plat") && (trace_ent.classname != "door")) && (trace_ent.classname != "train"))
    {
        start = e.origin;
        start_x = (start_x + self.maxs_x) - TRUE;
        start_y = (start_y + self.maxs_y) - TRUE;
        end = start;
        end_z = end_z - 200;
        traceline(start, end, TRUE, self);
        
        if(((trace_ent.classname != "plat") && (trace_ent.classname != "door")) && (trace_ent.classname != "train"))
        {
            start = e.origin;
            start_x = (start_x + self.maxs_x) - TRUE;
            start_y = (start_y + self.mins_y) + TRUE;
            end = start;
            end_z = end_z - 200;
            traceline(start, end, TRUE, self);
            
            if(((trace_ent.classname != "plat") && (trace_ent.classname != "door")) && (trace_ent.classname != "train"))
            {
                start = e.origin;
                start_x = (start_x + self.mins_x) + TRUE;
                start_y = (start_y + self.mins_y) + TRUE;
                end = start;
                end_z = end_z - 200;
                traceline(start, end, TRUE, self);
                
                if(((trace_ent.classname != "plat") && (trace_ent.classname != "door")) && (trace_ent.classname != "train"))
                {
                    start = e.origin;
                    start_x = (start_x + self.mins_x) + TRUE;
                    start_y = (start_y + self.maxs_y) - TRUE;
                    end = start;
                    end_z = end_z - 200;
                    traceline(start, end, TRUE, self);
                    
                    if(((trace_ent.classname != "plat") && (trace_ent.classname != "door")) && (trace_ent.classname != "train"))
                    {
                        return FALSE;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return TRUE;
};


// BotIsOnPlatDoorTrain
// function begins at statement 41123, parm_start=23411
// OP_LOAD_ENT	23411	151	23412
// OP_LOAD_S	23412	129	23413
// OP_EQ_S	23413	11860	23414
// OP_IFNOT	23414	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	23411	151	23415
// OP_LOAD_S	23415	129	23416
// OP_EQ_S	23416	5259	23417
// OP_IFNOT	23417	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	23411	151	23418
// OP_LOAD_S	23418	129	23419
// OP_EQ_S	23419	11722	23420
// OP_IFNOT	23420	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity e) BotIsOnPlatDoorTrain = 
{
    
    if(e.groundentity.classname == "train")
    {
        return TRUE;
    }
    
    
    if(e.groundentity.classname == "door")
    {
        return TRUE;
    }
    
    
    if(e.groundentity.classname == "plat")
    {
        return TRUE;
    }
    
    return FALSE;
};


// BotIsOnMovingPlatDoorTrain
// function begins at statement 41140, parm_start=23421
// OP_LOAD_ENT	23421	151	23428
// OP_LOAD_V	23428	113	23429
// OP_STORE_V	23429	4	0
// OP_CALL1	462	0	0
// OP_IFNOT	1	19	0
// OP_LOAD_ENT	23421	151	23432
// OP_LOAD_S	23432	129	23433
// OP_EQ_S	23433	11860	23434
// OP_IFNOT	23434	3	0
// OP_LOAD_ENT	23421	151	23435
// OP_RETURN	23435	0	0
// OP_LOAD_ENT	23421	151	23436
// OP_LOAD_S	23436	129	23437
// OP_EQ_S	23437	5259	23438
// OP_IFNOT	23438	3	0
// OP_LOAD_ENT	23421	151	23439
// OP_RETURN	23439	0	0
// OP_LOAD_ENT	23421	151	23440
// OP_LOAD_S	23440	129	23441
// OP_EQ_S	23441	11722	23442
// OP_IFNOT	23442	3	0
// OP_LOAD_ENT	23421	151	23443
// OP_RETURN	23443	0	0
// OP_LOAD_V	23421	105	23444
// OP_STORE_V	23444	23422	0
// OP_LOAD_F	23421	137	23447
// OP_ADD_F	23424	23447	23448
// OP_STORE_F	23448	23424	0
// OP_STORE_V	23422	23425	0
// OP_SUB_F	23427	235	23449
// OP_STORE_F	23449	23427	0
// OP_STORE_V	23422	4	0
// OP_STORE_V	23425	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	23421	13	0
// OP_CALL4	466	0	0
// OP_LT	70	214	23450
// OP_IFNOT	23450	17	0
// OP_LOAD_V	78	113	23451
// OP_STORE_V	23451	4	0
// OP_CALL1	462	0	0
// OP_IFNOT	1	13	0
// OP_LOAD_S	78	129	23454
// OP_EQ_S	23454	11860	23455
// OP_IFNOT	23455	2	0
// OP_RETURN	78	0	0
// OP_LOAD_S	78	129	23456
// OP_EQ_S	23456	5259	23457
// OP_IFNOT	23457	2	0
// OP_RETURN	78	0	0
// OP_LOAD_S	78	129	23458
// OP_EQ_S	23458	11722	23459
// OP_IFNOT	23459	2	0
// OP_RETURN	78	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity e) BotIsOnMovingPlatDoorTrain = 
{
    local vector start;
    local vector end;
    
    if(vlen(e.groundentity.velocity))
    {
        
        if(e.groundentity.classname == "train")
        {
            return e.groundentity;
        }
        
        
        if(e.groundentity.classname == "door")
        {
            return e.groundentity;
        }
        
        
        if(e.groundentity.classname == "plat")
        {
            return e.groundentity;
        }
        
    }
    
    start = e.origin;
    start_z = start_z + e.mins_z;
    end = start;
    end_z = end_z - MOVETYPE_BOUNCE;
    traceline(start, end, TRUE, e);
    
    if(trace_fraction < TRUE)
    {
        
        if(vlen(trace_ent.velocity))
        {
            
            if(trace_ent.classname == "train")
            {
                return trace_ent;
            }
            
            
            if(trace_ent.classname == "door")
            {
                return trace_ent;
            }
            
            
            if(trace_ent.classname == "plat")
            {
                return trace_ent;
            }
            
        }
        
    }
    
    return world;
};


// Reachable
// function begins at statement 41196, parm_start=23460
// OP_LOAD_V	23461	94	23479
// OP_LOAD_V	23461	98	23482
// OP_ADD_V	23479	23482	23485
// OP_MUL_VF	23485	539	23488
// OP_STORE_V	23488	23465	0
// OP_LOAD_F	23461	97	23491
// OP_ADD_F	23491	736	23492
// OP_STORE_F	23492	23467	0
// OP_LOAD_V	23460	94	23493
// OP_LOAD_V	23460	98	23496
// OP_ADD_V	23493	23496	23499
// OP_MUL_VF	23499	539	23502
// OP_STORE_V	23502	23462	0
// OP_LOAD_F	23460	97	23505
// OP_ADD_F	23505	736	23506
// OP_STORE_F	23506	23464	0
// OP_LOAD_S	23460	129	23507
// OP_EQ_S	23507	23508	23509
// OP_IFNOT	23509	23	0
// OP_LOAD_F	23460	688	23510
// OP_EQ_F	23510	719	23511
// OP_IFNOT	23511	20	0
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_ENT	23460	181	23512
// OP_LOAD_S	23512	196	23513
// OP_STORE_V	23513	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	23460	0
// OP_NOT_ENT	23460	0	23514
// OP_IFNOT	23514	3	0
// OP_STORE_V	23515	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	23460	400	23516
// OP_STORE_V	23516	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	23460	105	23519
// OP_MUL_FV	219	59	23522
// OP_ADD_V	23519	23522	23525
// OP_ADD_V	23525	23528	23531
// OP_STORE_V	23531	23462	0
// OP_SUB_V	23465	23462	23534
// OP_STORE_V	23534	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	216	738	23537
// OP_DIV_F	741	799	23538
// OP_MUL_F	23537	23538	23539
// OP_GT	1	23539	23540
// OP_IFNOT	23540	2	0
// OP_RETURN	213	0	0
// OP_MUL_F	6280	799	23541
// OP_DIV_F	734	799	23542
// OP_MUL_F	23541	23542	23543
// OP_DIV_F	734	799	23544
// OP_MUL_F	23543	23544	23545
// OP_STORE_F	23545	23475	0
// OP_ADD_F	23464	23475	23546
// OP_GT	23467	23546	23547
// OP_IFNOT	23547	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity a, entity b) Reachable = 
{
    local vector globaldef007704;
    local vector globaldef007708;
    local vector globaldef007712;
    local vector globaldef007716;
    local float globaldef007720;
    local float globaldef007721;
    local float globaldef007722;
    local float globaldef007723;
    local float globaldef007724;
    globaldef007708 = (b.absmin + b.absmax) * RA_PLAYERSTATTIME;
    globaldef007708_z = b.absmin_z + OBOT_MAXBOTS;
    globaldef007704 = (a.absmin + a.absmax) * RA_PLAYERSTATTIME;
    globaldef007704_z = a.absmin_z + OBOT_MAXBOTS;
    
    if(a.classname == "waypoint")
    {
        
        if(a.waypointtype == globaldef000702)
        {
            a = find(world, targetname, a.enemy.target);
            
            if(!a)
            {
                objerror("reachability: couldn't find teleporter target\n");
            }
            
            makevectors(a.mangle);
            globaldef007704 = (a.origin + (FL_MONSTER * v_forward)) + '0 0 -20';
        }
        
    }
    
    
    if((vlen(globaldef007708 - globaldef007704)) > ((FL_SWIM * GLOBALDEF721_250) * (GLOBALDEF724_800 / globaldef000782)))
    {
        return FALSE;
    }
    
    globaldef007721 = ((0.75 * globaldef000782) * (GLOBALDEF717_270 / globaldef000782)) * (GLOBALDEF717_270 / globaldef000782);
    
    if(globaldef007708_z > (globaldef007704_z + globaldef007721))
    {
        return FALSE;
    }
    
    return TRUE;
};

