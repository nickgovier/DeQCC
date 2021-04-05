// halfwalkmove
// function begins at statement 21491, parm_start=12364
// OP_LOAD_F	28	542	12364
// OP_STORE_V	12364	4	0
// OP_LOAD_F	28	543	12365
// OP_STORE_V	12365	7	0
// OP_CALL2	477	0	0
// OP_ADDRESS	28	148	12366
// OP_LOAD_FNC	28	541	12367
// OP_STOREP_FNC	12367	12366	0
// OP_ADDRESS	28	150	12368
// OP_ADD_F	31	1230	12369
// OP_STOREP_F	12369	12368	0
// OP_DONE	0	0	0
void () halfwalkmove = 
{
    walkmove(self.strafeyaw, self.strafedist);
    self.think = self.strafethink;
    self.nextthink = time + 0.05;
};

// botwalkmove
// function begins at statement 21503, parm_start=12371
// OP_ADDRESS	28	109	12374
// OP_LOAD_V	28	105	12377
// OP_STOREP_V	12377	12374	0
// OP_LOAD_F	28	553	12380
// OP_GT	12380	216	12381
// OP_IFNOT	12381	4	0
// OP_MUL_F	12382	12372	12383
// OP_STORE_F	12383	12373	0
// OP_GOTO	3	0	0
// OP_MUL_F	677	12372	12384
// OP_STORE_F	12384	12373	0
// OP_STORE_V	12371	4	0
// OP_STORE_V	12373	7	0
// OP_CALL2	477	0	0
// OP_NOT_F	1	0	12385
// OP_IFNOT	12385	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	541	12386
// OP_LOAD_FNC	28	148	12387
// OP_STOREP_FNC	12387	12386	0
// OP_ADDRESS	28	542	12388
// OP_STOREP_F	12371	12388	0
// OP_ADDRESS	28	543	12389
// OP_STOREP_F	12373	12389	0
// OP_ADDRESS	28	148	12390
// OP_STOREP_FNC	12363	12390	0
// OP_ADDRESS	28	150	12391
// OP_ADD_F	31	1230	12392
// OP_STOREP_F	12392	12391	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (float s_yaw, float s_dist) botwalkmove = 
{
    local float halfdist;
    self.oldorigin = self.origin;
    if(self.skil > FL_SWIM)
    {
        halfdist = 0.55 * s_dist;
    }
    else
    {
        halfdist = 0.5 * s_dist;
    }
    
    
    if(!walkmove(s_yaw, halfdist))
    {
        return FALSE;
    }
    
    self.strafethink = self.think;
    self.strafeyaw = s_yaw;
    self.strafedist = halfdist;
    self.think = halfwalkmove;
    self.nextthink = time + 0.05;
    return TRUE;
};

// teleptest
// function begins at statement 21534, parm_start=12394
// OP_LOAD_V	28	105	12401
// OP_STORE_V	12401	12398	0
// OP_LOAD_V	28	105	12404
// OP_STORE_V	12404	12395	0
// OP_LT	12394	213	12407
// OP_IFNOT	12407	6	0
// OP_LOAD_F	28	97	12408
// OP_ADD_F	12408	12394	12409
// OP_SUB_F	12409	214	12410
// OP_STORE_F	12410	12400	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	101	12411
// OP_ADD_F	12411	12394	12412
// OP_ADD_F	12412	214	12413
// OP_STORE_F	12413	12400	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12414
// OP_IFNOT	12414	2	0
// OP_RETURN	213	0	0
// OP_ADD_F	12395	218	12415
// OP_STORE_F	12415	12395	0
// OP_ADD_F	12396	218	12416
// OP_STORE_F	12416	12396	0
// OP_ADD_F	12398	218	12417
// OP_STORE_F	12417	12398	0
// OP_ADD_F	12399	218	12418
// OP_STORE_F	12418	12399	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12419
// OP_IFNOT	12419	2	0
// OP_RETURN	213	0	0
// OP_SUB_F	12395	219	12420
// OP_STORE_F	12420	12395	0
// OP_SUB_F	12398	219	12421
// OP_STORE_F	12421	12398	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12422
// OP_IFNOT	12422	2	0
// OP_RETURN	213	0	0
// OP_SUB_F	12396	219	12423
// OP_STORE_F	12423	12396	0
// OP_SUB_F	12399	219	12424
// OP_STORE_F	12424	12399	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12425
// OP_IFNOT	12425	2	0
// OP_RETURN	213	0	0
// OP_ADD_F	12395	219	12426
// OP_STORE_F	12426	12395	0
// OP_ADD_F	12398	219	12427
// OP_STORE_F	12427	12398	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12428
// OP_IFNOT	12428	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	12429
// OP_STORE_V	12429	12395	0
// OP_STORE_F	12400	12397	0
// OP_STORE_V	12395	12398	0
// OP_ADD_F	12395	218	12432
// OP_STORE_F	12432	12395	0
// OP_SUB_F	12398	218	12433
// OP_STORE_F	12433	12398	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12434
// OP_IFNOT	12434	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	12435
// OP_STORE_V	12435	12395	0
// OP_STORE_F	12400	12397	0
// OP_STORE_V	12395	12398	0
// OP_ADD_F	12396	218	12438
// OP_STORE_F	12438	12396	0
// OP_SUB_F	12399	218	12439
// OP_STORE_F	12439	12399	0
// OP_STORE_V	12395	4	0
// OP_STORE_V	12398	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LT	70	214	12440
// OP_IFNOT	12440	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (float dist) teleptest = 
{
    local vector start;
    local vector up;
    up = self.origin;
    start = self.origin;
    if(dist < FALSE)
    {
        up_z = (self.absmin_z + dist) - TRUE;
    }
    else
    {
        up_z = (self.absmax_z + dist) + TRUE;
    }
    
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    start_x = start_x + FL_INWATER;
    start_y = 0 + FL_INWATER;
    up_x = up_x + FL_INWATER;
    up_y = 0 + FL_INWATER;
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    start_x = start_x - FL_MONSTER;
    up_x = up_x - FL_MONSTER;
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    start_y = 0 - FL_MONSTER;
    up_y = 0 - FL_MONSTER;
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    start_x = start_x + FL_MONSTER;
    up_x = up_x + FL_MONSTER;
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    start = self.origin;
    start_z = 0;
    up = start;
    start_x = start_x + FL_INWATER;
    up_x = up_x - FL_INWATER;
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    start = self.origin;
    start_z = 0;
    up = start;
    start_y = 0 + FL_INWATER;
    up_y = 0 - FL_INWATER;
    traceline(start, up, FALSE, self);
    
    if(trace_fraction < TRUE)
    {
        return FALSE;
    }
    
    return TRUE;
};

// waterupz
// function begins at statement 21643, parm_start=12442
// OP_STORE_V	12442	4	0
// OP_CALL1	12393	0	0
// OP_NOT_F	1	0	12449
// OP_IFNOT	12449	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	12450
// OP_STORE_V	12450	12446	0
// OP_ADD_F	12448	12442	12453
// OP_STORE_F	12453	12448	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12446	7	0
// OP_CALL2	448	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (float dist) waterupz = 
{
    local vector start;
    local vector up;
    
    if(!teleptest(dist))
    {
        return FALSE;
    }
    
    up = self.origin;
    up_z = 0 + dist;
    setorigin(self, up);
    return TRUE;
};

// waterdownz
// function begins at statement 21657, parm_start=12455
// OP_MUL_F	276	12455	12462
// OP_STORE_V	12462	4	0
// OP_CALL1	12393	0	0
// OP_NOT_F	1	0	12463
// OP_IFNOT	12463	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	12464
// OP_STORE_V	12464	12456	0
// OP_SUB_F	12458	12455	12467
// OP_STORE_F	12467	12458	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12456	7	0
// OP_CALL2	448	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (float dist) waterdownz = 
{
    local vector up;
    local vector start;
    
    if(!(teleptest(CONTENT_EMPTY * dist)))
    {
        return FALSE;
    }
    
    up = self.origin;
    up_z = 0 - dist;
    setorigin(self, up);
    return TRUE;
};

// Botjump
// function begins at statement 21672, parm_start=12469
// OP_LOAD_F	28	182	12472
// OP_BITAND	12472	223	12473
// OP_IFNOT	12473	5	0
// OP_ADDRESS	28	182	12474
// OP_LOAD_F	28	182	12475
// OP_SUB_F	12475	223	12476
// OP_STOREP_F	12476	12474	0
// OP_ADDRESS	28	113	12477
// OP_STOREP_V	12469	12477	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (vector jmpv) Botjump = 
{
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
    self.velocity = jmpv;
    return TRUE;
};

// Botwaterjump
// function begins at statement 21683, parm_start=12481
// OP_LOAD_F	28	182	12484
// OP_BITAND	12484	223	12485
// OP_IFNOT	12485	5	0
// OP_ADDRESS	28	182	12486
// OP_LOAD_F	28	182	12487
// OP_SUB_F	12487	223	12488
// OP_STOREP_F	12488	12486	0
// OP_STORE_V	1770	4	0
// OP_CALL1	12441	0	0
// OP_NOT_F	1	0	12489
// OP_IFNOT	12489	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	2356	12483	0
// OP_ADDRESS	28	113	12490
// OP_STOREP_V	12481	12490	0
// OP_LOAD_F	28	182	12493
// OP_BITAND	12493	216	12494
// OP_IFNOT	12494	5	0
// OP_ADDRESS	28	182	12495
// OP_LOAD_F	28	182	12496
// OP_SUB_F	12496	216	12497
// OP_STOREP_F	12497	12495	0
// OP_LOAD_F	28	182	12498
// OP_BITAND	12498	218	12499
// OP_IFNOT	12499	5	0
// OP_ADDRESS	28	182	12500
// OP_LOAD_F	28	182	12501
// OP_SUB_F	12501	218	12502
// OP_STOREP_F	12502	12500	0
// OP_ADDRESS	28	186	12503
// OP_ADD_F	31	3328	12504
// OP_STOREP_F	12504	12503	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (vector jmpv) Botwaterjump = 
{
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
    
    if(!waterupz(45))
    {
        return FALSE;
    }
    
    jmpv_z = 200;
    self.velocity = jmpv;
    
    if(self.flags & FL_SWIM)
    {
        self.flags = self.flags - FL_SWIM;
    }
    
    
    if(self.flags & FL_INWATER)
    {
        self.flags = self.flags - FL_INWATER;
    }
    
    self.teleport_time = time + 0.7;
    return TRUE;
};

float (entity targ) Swimto;
// CheckLavaOrLow
// function begins at statement 21717, parm_start=12507
// OP_STORE_V	12507	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	12510	0
// OP_EQ_F	12510	280	12515
// OP_EQ_F	12510	279	12516
// OP_OR	12515	12516	12517
// OP_IFNOT	12517	2	0
// OP_RETURN	214	0	0
// OP_STORE_V	12507	12512	0
// OP_ADD_F	12509	217	12518
// OP_STORE_F	12518	12514	0
// OP_STORE_V	12512	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	12510	0
// OP_EQ_F	12510	280	12519
// OP_EQ_F	12510	279	12520
// OP_OR	12519	12520	12521
// OP_IFNOT	12521	2	0
// OP_RETURN	214	0	0
// OP_NE_F	12510	278	12522
// OP_IFNOT	12522	19	0
// OP_ADD_F	608	214	12523
// OP_STORE_F	12523	12511	0
// OP_LOAD_ENT	28	194	12524
// OP_LOAD_ENT	12524	194	12525
// OP_LOAD_S	12525	129	12526
// OP_EQ_S	12526	12175	12527
// OP_IFNOT	12527	5	0
// OP_LOAD_F	28	141	12528
// OP_ADD_F	12511	12528	12529
// OP_SUB_F	12529	214	12530
// OP_STORE_F	12530	12511	0
// OP_ADD_F	12509	12511	12531
// OP_LOAD_ENT	28	194	12532
// OP_LOAD_F	12532	108	12533
// OP_LT	12531	12533	12534
// OP_IFNOT	12534	2	0
// OP_RETURN	214	0	0
// OP_GOTO	20	0	0
// OP_STORE_V	12512	4	0
// OP_LOAD_ENT	28	194	12535
// OP_LOAD_V	12535	94	12536
// OP_STORE_V	12536	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_IFNOT	79	8	0
// OP_ADD_F	12509	1770	12539
// OP_LOAD_ENT	28	194	12540
// OP_LOAD_F	12540	108	12541
// OP_GT	12539	12541	12542
// OP_IFNOT	12542	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_EQ_F	70	214	12543
// OP_IFNOT	12543	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (vector spot) CheckLavaOrLow = 
{
    local float lnd;
    local float boost;
    local vector spot2;
    lnd = pointcontents(spot);
    
    if((lnd == CONTENT_LAVA) || (lnd == CONTENT_SLIME))
    {
        return TRUE;
    }
    
    spot2 = spot;
    spot2_z = 0 + FL_CLIENT;
    lnd = pointcontents(spot2);
    
    if((lnd == CONTENT_LAVA) || (lnd == CONTENT_SLIME))
    {
        return TRUE;
    }
    
    if(lnd != CONTENT_WATER)
    {
        boost = MAXJUMP + TRUE;
        
        if(self.goalentity.goalentity.classname == "func_button")
        {
            boost = (boost + self.maxs_z) - TRUE;
        }
        
        
        if((0 + boost) < self.goalentity.origin_z)
        {
            return TRUE;
        }
        
    }
    else
    {
        traceline(spot2, self.goalentity.absmin, TRUE, self);
        
        if(trace_inopen)
        {
            
            if((0 + 45) > self.goalentity.origin_z)
            {
                return FALSE;
            }
            
            return TRUE;
        }
        
        
        if(trace_fraction == TRUE)
        {
            return FALSE;
        }
        
        return TRUE;
    }
    
    return FALSE;
};

// checkLanding
// function begins at statement 21777, parm_start=12545
// OP_STORE_V	12545	12552	0
// OP_STORE_V	12545	12549	0
// OP_ADD_F	12549	231	12555
// OP_STORE_F	12555	12549	0
// OP_STORE_V	12549	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	277	12556
// OP_IFNOT	12556	3	0
// OP_SUB_F	12552	231	12557
// OP_STORE_F	12557	12552	0
// OP_SUB_F	12549	2717	12558
// OP_STORE_F	12558	12549	0
// OP_STORE_V	12549	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	277	12559
// OP_IFNOT	12559	3	0
// OP_ADD_F	12552	231	12560
// OP_STORE_F	12560	12552	0
// OP_STORE_V	12545	12549	0
// OP_ADD_F	12550	231	12561
// OP_STORE_F	12561	12550	0
// OP_STORE_V	12549	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	277	12562
// OP_IFNOT	12562	3	0
// OP_SUB_F	12553	231	12563
// OP_STORE_F	12563	12553	0
// OP_SUB_F	12550	2717	12564
// OP_STORE_F	12564	12550	0
// OP_STORE_V	12549	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	277	12565
// OP_IFNOT	12565	3	0
// OP_ADD_F	12553	231	12566
// OP_STORE_F	12566	12553	0
// OP_STORE_V	12552	12549	0
// OP_STORE_V	12549	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	12551	0
// OP_STORE_F	230	12548	0
// OP_STORE_V	12549	4	0
// OP_CALL1	12506	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	12552	12549	0
// OP_ADD_F	12549	231	12567
// OP_STORE_F	12567	12549	0
// OP_STORE_V	12549	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	12551	0
// OP_STORE_V	12549	4	0
// OP_CALL1	12506	0	0
// OP_IFNOT	1	3	0
// OP_SUB_F	12548	214	12568
// OP_STORE_F	12568	12548	0
// OP_STORE_V	12552	12549	0
// OP_SUB_F	12549	231	12569
// OP_STORE_F	12569	12549	0
// OP_STORE_V	12549	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	12551	0
// OP_STORE_V	12549	4	0
// OP_CALL1	12506	0	0
// OP_IFNOT	1	3	0
// OP_SUB_F	12548	214	12570
// OP_STORE_F	12570	12548	0
// OP_STORE_V	12552	12549	0
// OP_ADD_F	12550	231	12571
// OP_STORE_F	12571	12550	0
// OP_STORE_V	12549	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	12551	0
// OP_STORE_V	12549	4	0
// OP_CALL1	12506	0	0
// OP_IFNOT	1	3	0
// OP_SUB_F	12548	214	12572
// OP_STORE_F	12572	12548	0
// OP_STORE_V	12552	12549	0
// OP_SUB_F	12550	231	12573
// OP_STORE_F	12573	12550	0
// OP_STORE_V	12549	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	12551	0
// OP_STORE_V	12549	4	0
// OP_CALL1	12506	0	0
// OP_IFNOT	1	3	0
// OP_SUB_F	12548	214	12574
// OP_STORE_F	12574	12548	0
// OP_GT	12548	228	12575
// OP_IFNOT	12575	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (vector middle) checkLanding = 
{
    local float goodcnt;
    local vector spot;
    local vector center;
    spot = center = middle;
    spot_x = spot_x + MOVETYPE_TOSS;
    
    if(pointcontents(spot) == CONTENT_SOLID)
    {
        center_x = center_x - MOVETYPE_TOSS;
    }
    
    spot_x = spot_x - 12;
    
    if(pointcontents(spot) == CONTENT_SOLID)
    {
        center_x = center_x + MOVETYPE_TOSS;
    }
    
    spot = middle;
    spot_y = 0 + MOVETYPE_TOSS;
    
    if(pointcontents(spot) == CONTENT_SOLID)
    {
        center_y = 0 - MOVETYPE_TOSS;
    }
    
    spot_y = 0 - 12;
    
    if(pointcontents(spot) == CONTENT_SOLID)
    {
        center_y = 0 + MOVETYPE_TOSS;
    }
    
    spot = center;
    spot_z = dropline(spot);
    goodcnt = MOVETYPE_FLY;
    
    if(CheckLavaOrLow(spot))
    {
        return FALSE;
    }
    
    spot = center;
    spot_x = spot_x + MOVETYPE_TOSS;
    spot_z = dropline(spot);
    
    if(CheckLavaOrLow(spot))
    {
        goodcnt = goodcnt - TRUE;
    }
    
    spot = center;
    spot_x = spot_x - MOVETYPE_TOSS;
    spot_z = dropline(spot);
    
    if(CheckLavaOrLow(spot))
    {
        goodcnt = goodcnt - TRUE;
    }
    
    spot = center;
    spot_y = 0 + MOVETYPE_TOSS;
    spot_z = dropline(spot);
    
    if(CheckLavaOrLow(spot))
    {
        goodcnt = goodcnt - TRUE;
    }
    
    spot = center;
    spot_y = 0 - MOVETYPE_TOSS;
    spot_z = dropline(spot);
    
    if(CheckLavaOrLow(spot))
    {
        goodcnt = goodcnt - TRUE;
    }
    
    
    if(goodcnt > MOVETYPE_WALK)
    {
        return TRUE;
    }
    
    return FALSE;
};

// JumpUpToPush
// function begins at statement 21870, parm_start=12577
// OP_LOAD_V	28	105	12591
// OP_STORE_V	12591	12579	0
// OP_STORE_F	213	12581	0
// OP_LOAD_ENT	28	194	12594
// OP_LOAD_V	12594	105	12595
// OP_STORE_V	12595	12582	0
// OP_STORE_F	213	12584	0
// OP_SUB_V	12582	12579	12598
// OP_STORE_V	12598	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	12585	0
// OP_SUB_V	12582	12579	12601
// OP_STORE_V	12601	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	12578	0
// OP_LT	12578	2261	12604
// OP_IFNOT	12604	7	0
// OP_MUL_VF	12585	576	12605
// OP_STORE_V	12605	12588	0
// OP_STORE_F	4896	12590	0
// OP_STORE_V	12588	4	0
// OP_CALL1	12468	0	0
// OP_RETURN	214	0	0
// OP_LT	12578	1178	12608
// OP_IFNOT	12608	8	0
// OP_DIV_F	12578	611	12609
// OP_MUL_VF	12585	12609	12610
// OP_STORE_V	12610	12588	0
// OP_STORE_F	4896	12590	0
// OP_STORE_V	12588	4	0
// OP_CALL1	12468	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float dist) JumpUpToPush = 
{
    local float len;
    local vector botxy;
    local vector goalxy;
    local vector xydir;
    local vector jumpv;
    botxy = self.origin;
    botxy_z = FALSE;
    goalxy = self.goalentity.origin;
    goalxy_z = FALSE;
    xydir = normalize(goalxy - botxy);
    len = vlen(goalxy - botxy);
    
    if(len < 25)
    {
        jumpv = xydir * KINDA_WANT;
        jumpv_z = 270;
        Botjump(jumpv);
        return TRUE;
    }
    
    
    if(len < 80)
    {
        jumpv = xydir * (len / LEVELJUMPTIME);
        jumpv_z = 270;
        Botjump(jumpv);
        return TRUE;
    }
    
    return FALSE;
};

// Bot_tryjump
// function begins at statement 21904, parm_start=12614
// OP_LOAD_F	28	182	12668
// OP_ADD_F	223	216	12669
// OP_BITAND	12668	12669	12670
// OP_NOT_F	12670	0	12671
// OP_IFNOT	12671	2	0
// OP_RETURN	213	0	0
// OP_CALL0	3567	0	0
// OP_STORE_F	1	12626	0
// OP_GT	12626	216	12672
// OP_IFNOT	12672	2	0
// OP_RETURN	213	0	0
// OP_CALL0	1765	0	0
// OP_NOT_F	1	0	12673
// OP_IFNOT	12673	10	0
// OP_CALL0	491	0	0
// OP_CALL0	1765	0	0
// OP_NOT_F	1	0	12674
// OP_IFNOT	12674	6	0
// OP_CALL0	491	0	0
// OP_CALL0	1765	0	0
// OP_NOT_F	1	0	12675
// OP_IFNOT	12675	2	0
// OP_CALL0	491	0	0
// OP_LOAD_V	28	117	12676
// OP_STORE_V	12676	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	12679
// OP_MUL_FV	218	59	12682
// OP_ADD_V	12679	12682	12685
// OP_STORE_V	12685	12663	0
// OP_LOAD_ENT	28	194	12688
// OP_STORE_ENT	12688	12667	0
// OP_STORE_F	12614	12627	0
// OP_GE	12626	214	12689
// OP_IFNOT	12689	4	0
// OP_GT	12627	2356	12690
// OP_IFNOT	12690	2	0
// OP_STORE_F	2356	12627	0
// OP_EQ_F	12626	216	12691
// OP_IFNOT	12691	8	0
// OP_LOAD_F	12667	108	12692
// OP_LOAD_F	28	108	12693
// OP_LT	12692	12693	12694
// OP_IFNOT	12694	2	0
// OP_RETURN	213	0	0
// OP_ADD_F	12665	1770	12695
// OP_STORE_F	12695	12665	0
// OP_LOAD_V	28	105	12696
// OP_STORE_V	12696	12630	0
// OP_STORE_F	213	12632	0
// OP_LOAD_F	12667	108	12699
// OP_SUB_F	12665	12699	12700
// OP_ADD_F	12700	214	12701
// OP_STORE_F	12701	12620	0
// OP_MUL_F	276	608	12702
// OP_LT	12620	12702	12703
// OP_IFNOT	12703	13	0
// OP_LOAD_ENT	12667	194	12704
// OP_LOAD_S	12704	129	12705
// OP_NE_S	12705	12336	12706
// OP_IFNOT	12706	3	0
// OP_RETURN	213	0	0
// OP_GOTO	7	0	0
// OP_LT	12620	213	12707
// OP_IFNOT	12707	5	0
// OP_STORE_V	12615	4	0
// OP_CALL1	12576	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_STORE_F	12615	12619	0
// OP_LOAD_V	12667	105	12708
// OP_STORE_V	12708	12633	0
// OP_LOAD_ENT	12667	194	12711
// OP_LOAD_S	12711	129	12712
// OP_EQ_S	12712	7946	12713
// OP_IFNOT	12713	6	0
// OP_LOAD_ENT	12667	194	12714
// OP_LOAD_V	12714	113	12715
// OP_MUL_FV	611	12715	12718
// OP_ADD_V	12633	12718	12721
// OP_STORE_V	12721	12633	0
// OP_STORE_V	12633	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	12623	0
// OP_EQ_F	12623	280	12724
// OP_EQ_F	12623	279	12725
// OP_OR	12724	12725	12726
// OP_IFNOT	12726	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	12635	0
// OP_SUB_V	12633	12630	12727
// OP_STORE_V	12727	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	12636	0
// OP_SUB_V	12633	12630	12730
// OP_STORE_V	12730	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	12621	0
// OP_EQ_F	12626	216	12733
// OP_IFNOT	12733	6	0
// OP_MUL_F	228	605	12734
// OP_GT	12621	12734	12735
// OP_IFNOT	12735	3	0
// OP_MUL_F	228	605	12736
// OP_STORE_F	12736	12621	0
// OP_LOAD_V	28	166	12737
// OP_ADD_V	12663	12737	12740
// OP_STORE_V	12740	12642	0
// OP_MUL_VF	12636	12619	12743
// OP_ADD_V	12642	12743	12746
// OP_STORE_V	12746	12639	0
// OP_SUB_F	12627	607	12749
// OP_MUL_F	993	12749	12750
// OP_ADD_F	12641	12750	12751
// OP_STORE_F	12751	12641	0
// OP_STORE_V	12642	4	0
// OP_STORE_V	12639	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	12752
// OP_IFNOT	12752	12	0
// OP_ADD_F	607	1724	12753
// OP_GT	12627	12753	12754
// OP_IFNOT	12754	8	0
// OP_SUB_F	12627	607	12755
// OP_STORE_V	12755	4	0
// OP_STORE_V	12615	7	0
// OP_STORE_V	12616	10	0
// OP_CALL3	12613	0	0
// OP_RETURN	1	0	0
// OP_GOTO	2	0	0
// OP_RETURN	213	0	0
// OP_MUL_FV	218	59	12756
// OP_SUB_V	12663	12756	12759
// OP_STORE_V	12759	12642	0
// OP_LOAD_F	28	137	12762
// OP_ADD_F	12644	12762	12763
// OP_STORE_F	12763	12644	0
// OP_MUL_VF	12636	12619	12764
// OP_MUL_VF	12764	216	12767
// OP_ADD_V	12642	12767	12770
// OP_STORE_V	12770	12639	0
// OP_SUB_F	12627	607	12773
// OP_MUL_F	1226	12773	12774
// OP_ADD_F	12641	12774	12775
// OP_MUL_F	993	607	12776
// OP_SUB_F	12775	12776	12777
// OP_STORE_F	12777	12641	0
// OP_STORE_V	12642	4	0
// OP_STORE_V	12639	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	12778
// OP_IFNOT	12778	28	0
// OP_MUL_F	12779	605	12780
// OP_GT	12621	12780	12781
// OP_IFNOT	12781	3	0
// OP_MUL_F	12779	605	12782
// OP_STORE_F	12782	12621	0
// OP_MUL_VF	12636	12619	12783
// OP_ADD_V	12642	12783	12786
// OP_STORE_V	12786	12639	0
// OP_SUB_F	12627	607	12789
// OP_MUL_F	1226	12789	12790
// OP_ADD_F	12641	12790	12791
// OP_MUL_F	993	607	12792
// OP_SUB_F	12791	12792	12793
// OP_STORE_F	12793	12641	0
// OP_STORE_V	12642	4	0
// OP_STORE_V	12639	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	12794
// OP_IFNOT	12794	7	0
// OP_MUL_F	1222	605	12795
// OP_GT	12621	12795	12796
// OP_IFNOT	12796	3	0
// OP_MUL_F	1222	605	12797
// OP_STORE_F	12797	12621	0
// OP_STORE_F	12798	12627	0
// OP_STORE_F	213	12617	0
// OP_STORE_F	12627	12618	0
// OP_LT	12620	213	12799
// OP_IFNOT	12799	3	0
// OP_STORE_F	1369	12617	0
// OP_GOTO	14	0	0
// OP_GT	12620	213	12800
// OP_IFNOT	12800	9	0
// OP_ADD_F	12617	993	12801
// OP_STORE_F	12801	12617	0
// OP_SUB_F	12618	607	12802
// OP_STORE_F	12802	12618	0
// OP_MUL_F	12618	993	12803
// OP_ADD_F	12620	12803	12804
// OP_STORE_F	12804	12620	0
// OP_GOTO	-9	0	0
// OP_DIV_F	12620	12618	12805
// OP_SUB_F	12617	12805	12806
// OP_STORE_F	12806	12617	0
// OP_MUL_F	12619	235	12807
// OP_MUL_F	12807	12617	12808
// OP_LT	12621	12808	12809
// OP_IFNOT	12809	5	0
// OP_DIV_F	12621	12617	12810
// OP_MUL_VF	12636	12810	12811
// OP_STORE_V	12811	12645	0
// OP_GOTO	6	0	0
// OP_MUL_F	235	12619	12814
// OP_MUL_VF	12636	12814	12815
// OP_STORE_V	12815	12645	0
// OP_IFNOT	12616	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	12627	12618	0
// OP_STORE_V	12663	12642	0
// OP_LOAD_F	28	137	12818
// OP_ADD_F	12644	12818	12819
// OP_STORE_F	12819	12644	0
// OP_LOAD_F	28	169	12820
// OP_LOAD_F	28	137	12821
// OP_SUB_F	12820	12821	12822
// OP_STORE_F	12822	12628	0
// OP_STORE_F	214	12622	0
// OP_IFNOT	12622	101	0
// OP_SUB_F	12618	607	12823
// OP_STORE_F	12823	12618	0
// OP_MUL_VF	12645	993	12824
// OP_ADD_V	12642	12824	12827
// OP_STORE_V	12827	12651	0
// OP_MUL_F	12618	993	12830
// OP_ADD_F	12653	12830	12831
// OP_STORE_F	12831	12653	0
// OP_STORE_V	12642	4	0
// OP_STORE_V	12651	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_STORE_F	70	12629	0
// OP_EQ_F	70	214	12832
// OP_IFNOT	12832	48	0
// OP_STORE_V	12651	12648	0
// OP_STORE_V	12642	12639	0
// OP_ADD_F	12641	12628	12833
// OP_STORE_F	12833	12641	0
// OP_ADD_F	12650	12628	12834
// OP_STORE_F	12834	12650	0
// OP_STORE_V	12639	4	0
// OP_STORE_V	12648	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	12835
// OP_IFNOT	12835	6	0
// OP_STORE_V	12651	4	0
// OP_STORE_V	12648	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	12836
// OP_IFNOT	12836	12	0
// OP_MUL_FV	218	65	12837
// OP_ADD_V	12639	12837	12840
// OP_STORE_V	12840	12639	0
// OP_MUL_FV	218	65	12843
// OP_ADD_V	12648	12843	12846
// OP_STORE_V	12846	12648	0
// OP_STORE_V	12639	4	0
// OP_STORE_V	12648	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	12849
// OP_IFNOT	12849	12	0
// OP_MUL_FV	219	65	12850
// OP_SUB_V	12639	12850	12853
// OP_STORE_V	12853	12639	0
// OP_MUL_FV	219	65	12856
// OP_SUB_V	12648	12856	12859
// OP_STORE_V	12859	12648	0
// OP_STORE_V	12639	4	0
// OP_STORE_V	12648	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	12862
// OP_IFNOT	12862	2	0
// OP_STORE_F	993	12629	0
// OP_NE_F	70	214	12863
// OP_IFNOT	12863	23	0
// OP_SUB_V	12651	12642	12864
// OP_STORE_V	12864	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	12660	0
// OP_SUB_V	12651	12642	12867
// OP_STORE_V	12867	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	12624	0
// OP_MUL_VF	12660	12624	12870
// OP_MUL_VF	12870	12629	12873
// OP_ADD_V	12642	12873	12876
// OP_STORE_V	12876	12651	0
// OP_ADD_F	12653	576	12879
// OP_STORE_F	12879	12653	0
// OP_MUL_FV	218	59	12880
// OP_SUB_V	12651	12880	12883
// OP_STORE_V	12883	4	0
// OP_CALL1	12544	0	0
// OP_NOT_F	1	0	12886
// OP_IFNOT	12886	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	12622	0
// OP_IFNOT	12622	5	0
// OP_STORE_V	12651	4	0
// OP_CALL1	12506	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	12651	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	12623	0
// OP_EQ_F	12623	278	12887
// OP_IFNOT	12887	2	0
// OP_STORE_F	213	12622	0
// OP_STORE_V	12651	12642	0
// OP_GOTO	-100	0	0
// OP_STORE_F	12627	12647	0
// OP_IFNOT	12616	7	0
// OP_EQ_F	12626	216	12888
// OP_IFNOT	12888	4	0
// OP_STORE_V	1770	4	0
// OP_CALL1	12393	0	0
// OP_RETURN	1	0	0
// OP_RETURN	214	0	0
// OP_EQ_F	12626	216	12889
// OP_IFNOT	12889	4	0
// OP_STORE_V	12645	4	0
// OP_CALL1	12480	0	0
// OP_RETURN	1	0	0
// OP_LOAD_F	28	97	12890
// OP_SUB_F	12890	608	12891
// OP_LT	12653	12891	12892
// OP_IFNOT	12892	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	11242	0	0
// OP_STORE_V	12645	4	0
// OP_CALL1	12468	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float (float vz, float dist, float imagine) Bot_tryjump = 
{
    local float timetofloor;
    local float tvel;
    local float dis;
    local float diffz;
    local float diffxy;
    local float NOTLAND;
    local float lnd;
    local float len;
    local float depth;
    local float wlevel;
    local float velz;
    local float ht;
    local float frac;
    local vector botxy;
    local vector goalxy;
    local vector xydir;
    local vector top;
    local vector bottom;
    local vector jumpv;
    local vector newtop;
    local vector newbottom;
    local vector back;
    local vector front;
    local vector dir;
    local vector start;
    local string tmp;
    local entity botTarget;
    
    if(!(self.flags & (FL_ONGROUND + FL_SWIM)))
    {
        return FALSE;
    }
    
    wlevel = CheckWaterLevel();
    
    if(wlevel > FL_SWIM)
    {
        return FALSE;
    }
    
    
    if(!FacingIdeal())
    {
        ChangeYaw();
        
        if(!FacingIdeal())
        {
            ChangeYaw();
            
            if(!FacingIdeal())
            {
                ChangeYaw();
            }
            
        }
        
    }
    
    makevectors(self.angles);
    start = self.origin + (FL_INWATER * v_forward);
    botTarget = self.goalentity;
    velz = vz;
    
    if(wlevel >= TRUE)
    {
        
        if(velz > 200)
        {
            velz = 200;
        }
        
    }
    
    
    if(wlevel == FL_SWIM)
    {
        
        if(botTarget.origin_z < self.origin_z)
        {
            return FALSE;
        }
        
        start_z = 0 + 45;
    }
    
    botxy = self.origin;
    botxy_z = FALSE;
    diffz = (0 - botTarget.origin_z) + TRUE;
    
    if(diffz < (CONTENT_EMPTY * MAXJUMP))
    {
        if(botTarget.goalentity.classname != "trigger_push")
        {
            return FALSE;
        }
        else
        {
            
            if(diffz < FALSE)
            {
                
                if(JumpUpToPush(dist))
                {
                    return TRUE;
                }
                
            }
            
        }
        
    }
    
    dis = dist;
    goalxy = botTarget.origin;
    
    if(botTarget.goalentity.classname == "train")
    {
        goalxy = goalxy + (LEVELJUMPTIME * botTarget.goalentity.velocity);
    }
    
    lnd = pointcontents(goalxy);
    
    if((lnd == CONTENT_LAVA) || (lnd == CONTENT_SLIME))
    {
        return FALSE;
    }
    
    goalxy_z = FALSE;
    xydir = normalize(goalxy - botxy);
    diffxy = vlen(goalxy - botxy);
    
    if(wlevel == FL_SWIM)
    {
        
        if(diffxy > (MOVETYPE_WALK * BOTSPEED))
        {
            diffxy = MOVETYPE_WALK * BOTSPEED;
        }
        
    }
    
    bottom = start + self.view_ofs;
    top = bottom + (xydir * dis);
    top_z = 0 + (0.1 * (velz - GRAVITY));
    traceline(bottom, top, TRUE, self);
    
    if(trace_fraction != TRUE)
    {
        if(velz > (GRAVITY + 180))
        {
            return Bot_tryjump(velz - GRAVITY, dist, imagine);
        }
        else
        {
            return FALSE;
        }
        
    }
    
    bottom = start - (FL_INWATER * v_forward);
    bottom_z = 0 + self.mins_z;
    top = bottom + ((xydir * dis) * FL_SWIM);
    top_z = (0 + (0.2 * (velz - GRAVITY))) - (0.1 * GRAVITY);
    traceline(bottom, top, TRUE, self);
    
    if(trace_fraction != TRUE)
    {
        
        if(diffxy > (1.9 * BOTSPEED))
        {
            diffxy = 1.9 * BOTSPEED;
        }
        
        top = bottom + (xydir * dis);
        top_z = (0 + (0.2 * (velz - GRAVITY))) - (0.1 * GRAVITY);
        traceline(bottom, top, TRUE, self);
        
        if(trace_fraction != TRUE)
        {
            
            if(diffxy > (0.9 * BOTSPEED))
            {
                diffxy = 0.9 * BOTSPEED;
            }
            
            velz = 290;
        }
        
    }
    
    timetofloor = FALSE;
    tvel = velz;
    if(diffz < FALSE)
    {
        timetofloor = 0.3;
    }
    else
    {
        
        while(diffz > FALSE)
        {
            timetofloor = timetofloor + 0.1;
            tvel = tvel - GRAVITY;
            diffz = diffz + (tvel * 0.1);
        }
        
        timetofloor = timetofloor - (diffz / tvel);
    }
    
    if(diffxy < ((dis * MOVETYPE_BOUNCE) * timetofloor))
    {
        jumpv = xydir * (diffxy / timetofloor);
    }
    else
    {
        jumpv = xydir * (MOVETYPE_BOUNCE * dis);
        
        if(imagine)
        {
            return FALSE;
        }
        
    }
    
    tvel = velz;
    bottom = start;
    bottom_z = 0 + self.mins_z;
    ht = self.view_ofs_z - self.mins_z;
    NOTLAND = TRUE;
    
    while(NOTLAND)
    {
        tvel = tvel - GRAVITY;
        newbottom = bottom + (jumpv * 0.1);
        newbottom_z = 0 + (tvel * 0.1);
        traceline(bottom, newbottom, TRUE, self);
        frac = trace_fraction;
        
        if(trace_fraction == TRUE)
        {
            newtop = newbottom;
            top = bottom;
            top_z = 0 + ht;
            newtop_z = 0 + ht;
            traceline(top, newtop, TRUE, self);
            
            if(trace_fraction == TRUE)
            {
                traceline(newbottom, newtop, TRUE, self);
            }
            
            
            if(trace_fraction == TRUE)
            {
                top = top + (FL_INWATER * v_right);
                newtop = newtop + (FL_INWATER * v_right);
                traceline(top, newtop, TRUE, self);
            }
            
            
            if(trace_fraction == TRUE)
            {
                top = top - (FL_MONSTER * v_right);
                newtop = newtop - (FL_MONSTER * v_right);
                traceline(top, newtop, TRUE, self);
            }
            
            
            if(trace_fraction != TRUE)
            {
                frac = 0.1;
            }
            
        }
        
        
        if(trace_fraction != TRUE)
        {
            dir = normalize(newbottom - bottom);
            len = vlen(newbottom - bottom);
            newbottom = bottom + ((dir * len) * frac);
            newbottom_z = 0 + KINDA_WANT;
            
            if(!(checkLanding(newbottom - (FL_INWATER * v_forward))))
            {
                return FALSE;
            }
            
            NOTLAND = FALSE;
        }
        
        
        if(NOTLAND)
        {
            
            if(CheckLavaOrLow(newbottom))
            {
                return FALSE;
            }
            
        }
        
        lnd = pointcontents(newbottom);
        
        if(lnd == CONTENT_WATER)
        {
            NOTLAND = FALSE;
        }
        
        bottom = newbottom;
    }
    
    jumpv_z = velz;
    
    if(imagine)
    {
        
        if(wlevel == FL_SWIM)
        {
            return teleptest(45);
        }
        
        return TRUE;
    }
    
    
    if(wlevel == FL_SWIM)
    {
        return Botwaterjump(jumpv);
    }
    
    
    if(0 < (self.absmin_z - MAXJUMP))
    {
        clearCache(self);
    }
    
    return Botjump(jumpv);
};

// waterupdown
// function begins at statement 22253, parm_start=12894
// OP_STORE_F	576	12896	0
// OP_CALL0	3567	0	0
// OP_STORE_F	1	12895	0
// OP_LT	12895	216	12899
// OP_IFNOT	12899	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	97	12900
// OP_LOAD_ENT	28	194	12901
// OP_LOAD_F	12901	108	12902
// OP_GT	12900	12902	12903
// OP_IFNOT	12903	18	0
// OP_GT	12896	576	12904
// OP_IFNOT	12904	2	0
// OP_STORE_F	576	12896	0
// OP_STORE_V	12896	4	0
// OP_CALL1	12454	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_MUL_F	12896	677	12905
// OP_STORE_V	12905	4	0
// OP_CALL1	12454	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_MUL_F	12896	1226	12906
// OP_STORE_V	12906	4	0
// OP_CALL1	12454	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_EQ_F	12895	228	12907
// OP_IFNOT	12907	28	0
// OP_LOAD_F	28	97	12908
// OP_LOAD_ENT	28	194	12909
// OP_LOAD_F	12909	108	12910
// OP_LT	12908	12910	12911
// OP_IFNOT	12911	23	0
// OP_LOAD_ENT	28	194	12912
// OP_LOAD_F	12912	108	12913
// OP_LOAD_F	28	97	12914
// OP_SUB_F	12913	12914	12915
// OP_STORE_F	12915	12896	0
// OP_GT	12896	576	12916
// OP_IFNOT	12916	2	0
// OP_STORE_F	576	12896	0
// OP_STORE_V	12896	4	0
// OP_CALL1	12441	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_MUL_F	12896	677	12917
// OP_STORE_V	12917	4	0
// OP_CALL1	12441	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_MUL_F	12896	1226	12918
// OP_STORE_V	12918	4	0
// OP_CALL1	12441	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float dist) waterupdown = 
{
    local float wlevel;
    local float dis;
    local float rnd;
    local float zbottom;
    dis = KINDA_WANT;
    wlevel = CheckWaterLevel();
    
    if(wlevel < FL_SWIM)
    {
        return FALSE;
    }
    
    
    if(self.absmin_z > self.goalentity.origin_z)
    {
        
        if(dis > KINDA_WANT)
        {
            dis = KINDA_WANT;
        }
        
        
        if(waterdownz(dis))
        {
            return TRUE;
        }
        
        
        if(waterdownz(dis * 0.5))
        {
            return TRUE;
        }
        
        
        if(waterdownz(dis * 0.2))
        {
            return TRUE;
        }
        
    }
    
    
    if(wlevel == MOVETYPE_WALK)
    {
        
        if(self.absmin_z < self.goalentity.origin_z)
        {
            dis = self.goalentity.origin_z - self.absmin_z;
            
            if(dis > KINDA_WANT)
            {
                dis = KINDA_WANT;
            }
            
            
            if(waterupz(dis))
            {
                return TRUE;
            }
            
            
            if(waterupz(dis * 0.5))
            {
                return TRUE;
            }
            
            
            if(waterupz(dis * 0.2))
            {
                return TRUE;
            }
            
        }
        
    }
    
    return FALSE;
};

// strafemove
// function begins at statement 22312, parm_start=12920
// OP_LOAD_F	28	182	12923
// OP_BITAND	12923	216	12924
// OP_IFNOT	12924	5	0
// OP_STORE_V	12920	4	0
// OP_CALL1	12893	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	1789	12921	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	12922	0
// OP_LOAD_ENT	28	181	12925
// OP_IFNOT	12925	9	0
// OP_ADDRESS	28	540	12926
// OP_STOREP_F	230	12926	0
// OP_LOAD_F	28	365	12927
// OP_BITAND	12927	596	12928
// OP_IFNOT	12928	3	0
// OP_MUL_F	276	12921	12929
// OP_STORE_F	12929	12921	0
// OP_GOTO	5	0	0
// OP_LT	12922	677	12930
// OP_IFNOT	12930	3	0
// OP_MUL_F	276	12921	12931
// OP_STORE_F	12931	12921	0
// OP_LOAD_F	28	191	12932
// OP_ADD_F	12932	12921	12933
// OP_STORE_V	12933	4	0
// OP_STORE_V	12920	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	12934
// OP_IFNOT	12934	2	0
// OP_RETURN	0	0	0
// OP_MUL_F	276	12921	12935
// OP_STORE_F	12935	12921	0
// OP_LOAD_F	28	191	12936
// OP_ADD_F	12936	12921	12937
// OP_STORE_V	12937	4	0
// OP_STORE_V	12920	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	12938
// OP_ADD_F	218	223	12939
// OP_BITAND	12938	12939	12940
// OP_IFNOT	12940	5	0
// OP_ADDRESS	28	366	12941
// OP_LOAD_F	28	366	12942
// OP_SUB_F	12942	1369	12943
// OP_STOREP_F	12943	12941	0
// OP_DONE	0	0	0
void (float dist) strafemove = 
{
    local float ofs;
    local float rnd;
    
    if(self.flags & FL_SWIM)
    {
        
        if(waterupdown(dist))
        {
            return;
        }
        
    }
    
    ofs = 90;
    rnd = random();
    if(self.enemy)
    {
        self.strafeonly = MOVETYPE_FLY;
        
        if(self.lefty & STRAFE_DIR)
        {
            ofs = CONTENT_EMPTY * ofs;
        }
        
    }
    else
    {
        
        if(rnd < 0.5)
        {
            ofs = CONTENT_EMPTY * ofs;
        }
        
    }
    
    
    if(walkmove(self.ideal_yaw + ofs, dist))
    {
        return;
    }
    
    
    if(self.enemy)
    {
        return;
    }
    
    ofs = CONTENT_EMPTY * ofs;
    
    if(walkmove(self.ideal_yaw + ofs, dist))
    {
        return;
    }
    
    
    if(self.flags & (FL_INWATER + FL_ONGROUND))
    {
        self.search_time = self.search_time - 0.3;
    }
    
};

// BotUnderwaterMove
// function begins at statement 22364, parm_start=12945
// OP_CALL0	452	0	0
// OP_STORE_F	1	12949	0
// OP_LT	12949	4009	12950
// OP_IFNOT	12950	28	0
// OP_LOAD_V	28	105	12951
// OP_LOAD_ENT	28	194	12954
// OP_LOAD_V	12954	105	12955
// OP_SUB_V	12951	12955	12958
// OP_STORE_V	12958	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	12948	0
// OP_STORE_V	12945	4	0
// OP_CALL1	501	0	0
// OP_LOAD_V	28	105	12961
// OP_LOAD_ENT	28	194	12964
// OP_LOAD_V	12964	105	12965
// OP_SUB_V	12961	12965	12968
// OP_STORE_V	12968	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	12947	0
// OP_GT	12948	12947	12971
// OP_IFNOT	12971	2	0
// OP_RETURN	0	0	0
// OP_EQ_F	12946	216	12972
// OP_IFNOT	12972	7	0
// OP_STORE_V	2356	4	0
// OP_STORE_V	12945	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	12613	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	12945	4	0
// OP_CALL1	12919	0	0
// OP_DONE	0	0	0
void (float dist, float wlevel) BotUnderwaterMove = 
{
    local float rng;
    local float oldrng;
    local float rnd;
    rnd = random();
    
    if(rnd < 0.75)
    {
        oldrng = vlen(self.origin - self.goalentity.origin);
        movetogoal(dist);
        rng = vlen(self.origin - self.goalentity.origin);
        
        if(oldrng > rng)
        {
            return;
        }
        
        
        if(wlevel == FL_SWIM)
        {
            
            if(Bot_tryjump(200, dist, FALSE))
            {
                return;
            }
            
        }
        
    }
    
    strafemove(dist);
};

// trysidestep
// function begins at statement 22398, parm_start=12974
// OP_LOAD_ENT	28	194	12981
// OP_LOAD_V	12981	105	12982
// OP_LOAD_V	28	105	12985
// OP_SUB_V	12982	12985	12988
// OP_STORE_V	12988	12975	0
// OP_STORE_F	213	12977	0
// OP_STORE_V	12975	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	12975	0
// OP_LOAD_V	28	105	12991
// OP_STORE_V	12991	12978	0
// OP_LOAD_F	28	108	12994
// OP_LOAD_F	28	169	12995
// OP_MUL_F	12995	677	12996
// OP_ADD_F	12994	12996	12997
// OP_STORE_F	12997	12980	0
// OP_STORE_V	12978	4	0
// OP_MUL_FV	605	12975	12998
// OP_ADD_V	12978	12998	13001
// OP_STORE_V	13001	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	13004
// OP_IFNOT	13004	5	0
// OP_MUL_F	12974	2345	13005
// OP_STORE_V	13005	4	0
// OP_CALL1	12919	0	0
// OP_RETURN	214	0	0
// OP_LOAD_V	28	117	13006
// OP_STORE_V	13006	4	0
// OP_CALL1	447	0	0
// OP_MUL_VF	65	2246	13009
// OP_ADD_V	12978	13009	13012
// OP_STORE_V	13012	12978	0
// OP_STORE_V	12978	4	0
// OP_MUL_FV	605	12975	13015
// OP_ADD_V	12978	13015	13018
// OP_STORE_V	13018	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	13021
// OP_IFNOT	13021	9	0
// OP_LOAD_F	28	191	13022
// OP_SUB_F	13022	1789	13023
// OP_STORE_V	13023	4	0
// OP_MUL_F	12974	2345	13024
// OP_STORE_V	13024	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_MUL_VF	65	304	13025
// OP_SUB_V	12978	13025	13028
// OP_STORE_V	13028	12978	0
// OP_STORE_V	12978	4	0
// OP_MUL_FV	605	12975	13031
// OP_ADD_V	12978	13031	13034
// OP_STORE_V	13034	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	13037
// OP_IFNOT	13037	9	0
// OP_LOAD_F	28	191	13038
// OP_ADD_F	13038	1789	13039
// OP_STORE_V	13039	4	0
// OP_MUL_F	12974	2345	13040
// OP_STORE_V	13040	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float dist) trysidestep = 
{
    local vector dir;
    local vector start;
    dir = self.goalentity.origin - self.origin;
    dir_z = FALSE;
    dir = normalize(dir);
    start = self.origin;
    start_z = self.origin_z + (self.view_ofs_z * 0.5);
    traceline(start, start + (BOTSPEED * dir), FALSE, self);
    
    if(trace_fraction != TRUE)
    {
        strafemove(dist * 0.6);
        return TRUE;
    }
    
    makevectors(self.angles);
    start = start + (v_right * 15);
    traceline(start, start + (BOTSPEED * dir), FALSE, self);
    
    if(trace_fraction != TRUE)
    {
        
        if(walkmove(self.ideal_yaw - 90, dist * 0.6))
        {
            return TRUE;
        }
        
    }
    
    start = start - (v_right * SVC_INTERMISSION);
    traceline(start, start + (BOTSPEED * dir), FALSE, self);
    
    if(trace_fraction != TRUE)
    {
        
        if(walkmove(self.ideal_yaw + 90, dist * 0.6))
        {
            return TRUE;
        }
        
    }
    
    return FALSE;
};

// testmove
// function begins at statement 22472, parm_start=13042
// OP_LOAD_V	28	105	13045
// OP_LOAD_ENT	28	194	13048
// OP_LOAD_V	13048	105	13049
// OP_SUB_V	13045	13049	13052
// OP_STORE_V	13052	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13044	0
// OP_STORE_V	13042	4	0
// OP_CALL1	501	0	0
// OP_LOAD_V	28	105	13055
// OP_LOAD_ENT	28	194	13058
// OP_LOAD_V	13058	105	13059
// OP_SUB_V	13055	13059	13062
// OP_STORE_V	13062	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13043	0
// OP_LT	13043	13044	13065
// OP_IFNOT	13065	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float dist) testmove = 
{
    local float rng;
    local float oldrng;
    oldrng = vlen(self.origin - self.goalentity.origin);
    movetogoal(dist);
    rng = vlen(self.origin - self.goalentity.origin);
    
    if(rng < oldrng)
    {
        return TRUE;
    }
    
    return FALSE;
};

// BotmovetoWindTunnel
// function begins at statement 22493, parm_start=13067
// OP_STORE_V	13067	4	0
// OP_CALL1	13041	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	13067	4	0
// OP_CALL1	12973	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4896	4	0
// OP_STORE_V	13067	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	12613	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_MUL_F	13067	677	13068
// OP_STORE_V	13068	4	0
// OP_CALL1	12919	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float dist) BotmovetoWindTunnel = 
{
    
    if(testmove(dist))
    {
        return;
    }
    
    
    if(trysidestep(dist))
    {
        return;
    }
    
    
    if(Bot_tryjump(270, dist, FALSE))
    {
        return;
    }
    
    strafemove(dist * 0.5);
    return;
};

// BotmovetoVisiblegoal
// function begins at statement 22512, parm_start=13070
// OP_LOAD_F	28	191	13071
// OP_STORE_V	13071	4	0
// OP_STORE_V	217	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	7	0
// OP_LOAD_F	28	191	13072
// OP_STORE_V	13072	4	0
// OP_SUB_F	13070	217	13073
// OP_STORE_V	13073	7	0
// OP_CALL2	12370	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	191	13074
// OP_ADD_F	13074	1770	13075
// OP_STORE_V	13075	4	0
// OP_STORE_V	217	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	5	0
// OP_SUB_F	13070	217	13076
// OP_STORE_V	13076	4	0
// OP_CALL1	501	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	191	13077
// OP_SUB_F	13077	1770	13078
// OP_STORE_V	13078	4	0
// OP_STORE_V	217	7	0
// OP_CALL2	477	0	0
// OP_IFNOT	1	5	0
// OP_SUB_F	13070	217	13079
// OP_STORE_V	13079	4	0
// OP_CALL1	501	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13070	4	0
// OP_CALL1	12973	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	4896	4	0
// OP_STORE_V	13070	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	12613	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_MUL_F	13070	677	13080
// OP_STORE_V	13080	4	0
// OP_CALL1	12919	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float dist) BotmovetoVisiblegoal = 
{
    
    if(walkmove(self.ideal_yaw, FL_CLIENT))
    {
        botwalkmove(self.ideal_yaw, dist - FL_CLIENT);
        return;
    }
    
    
    if(walkmove(self.ideal_yaw + 45, FL_CLIENT))
    {
        movetogoal(dist - FL_CLIENT);
        return;
    }
    
    
    if(walkmove(self.ideal_yaw - 45, FL_CLIENT))
    {
        movetogoal(dist - FL_CLIENT);
        return;
    }
    
    
    if(trysidestep(dist))
    {
        return;
    }
    
    
    if(Bot_tryjump(270, dist, FALSE))
    {
        return;
    }
    
    strafemove(dist * 0.5);
    return;
};

// Botmovetogoal
// function begins at statement 22558, parm_start=13082
// OP_ADDRESS	28	109	13085
// OP_LOAD_V	28	105	13088
// OP_STOREP_V	13088	13085	0
// OP_LOAD_ENT	28	194	13091
// OP_STORE_ENT	13091	13083	0
// OP_ADDRESS	28	191	13092
// OP_LOAD_V	13083	105	13093
// OP_LOAD_V	28	105	13096
// OP_SUB_V	13093	13096	13099
// OP_STORE_V	13099	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	13092	0
// OP_CALL0	491	0	0
// OP_LOAD_F	28	182	13102
// OP_BITAND	13102	218	13103
// OP_IFNOT	13103	10	0
// OP_CALL0	3567	0	0
// OP_STORE_F	1	13084	0
// OP_GT	13084	214	13104
// OP_IFNOT	13104	6	0
// OP_MUL_F	13082	2355	13105
// OP_STORE_V	13105	4	0
// OP_STORE_V	13084	7	0
// OP_CALL2	12944	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	13083	194	13106
// OP_LOAD_S	13106	129	13107
// OP_EQ_S	13107	12336	13108
// OP_IFNOT	13108	4	0
// OP_STORE_V	13082	4	0
// OP_CALL1	13066	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13083	4	0
// OP_CALL1	632	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	13082	4	0
// OP_CALL1	13069	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	13082	4	0
// OP_CALL1	13041	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_MUL_F	13082	2355	13109
// OP_STORE_V	13109	4	0
// OP_CALL1	12919	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (float dist) Botmovetogoal = 
{
    local entity Botgoal;
    local float wlevel;
    self.oldorigin = self.origin;
    Botgoal = self.goalentity;
    self.ideal_yaw = vectoyaw(Botgoal.origin - self.origin);
    ChangeYaw();
    
    if(self.flags & FL_INWATER)
    {
        wlevel = CheckWaterLevel();
        
        if(wlevel > TRUE)
        {
            BotUnderwaterMove(dist * 0.8, wlevel);
            return;
        }
        
    }
    
    
    if(Botgoal.goalentity.classname == "trigger_push")
    {
        BotmovetoWindTunnel(dist);
        return;
    }
    
    
    if(Spotvisible(Botgoal))
    {
        BotmovetoVisiblegoal(dist);
        return;
    }
    
    
    if(testmove(dist))
    {
        return;
    }
    
    strafemove(dist * 0.8);
    return;
};

