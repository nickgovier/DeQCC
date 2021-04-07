// botrange
// function begins at statement 22688, parm_start=13152
// OP_LOAD_V	28	105	13161
// OP_LOAD_V	28	166	13164
// OP_ADD_V	13161	13164	13167
// OP_STORE_V	13167	13153	0
// OP_LOAD_V	13152	105	13170
// OP_LOAD_V	13152	166	13173
// OP_ADD_V	13170	13173	13176
// OP_STORE_V	13176	13156	0
// OP_SUB_V	13153	13156	13179
// OP_STORE_V	13179	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13160	0
// OP_LOAD_F	28	152	13182
// OP_MUL_F	13182	677	13183
// OP_SUB_F	1724	13183	13184
// OP_LOAD_F	28	188	13185
// OP_LOAD_F	28	187	13186
// OP_MUL_F	13185	13186	13187
// OP_SUB_F	13184	13187	13188
// OP_STORE_F	13188	13159	0
// OP_LOAD_F	28	162	13189
// OP_BITAND	13189	275	13190
// OP_IFNOT	13190	3	0
// OP_MUL_F	216	13159	13191
// OP_STORE_F	13191	13159	0
// OP_EQ_F	37	214	13192
// OP_IFNOT	13192	2	0
// OP_STORE_F	730	13159	0
// OP_LT	13160	13159	13193
// OP_IFNOT	13193	3	0
// OP_RETURN	242	0	0
// OP_GOTO	8	0	0
// OP_LT	13160	580	13194
// OP_IFNOT	13194	3	0
// OP_RETURN	243	0	0
// OP_GOTO	4	0	0
// OP_LT	13160	1548	13195
// OP_IFNOT	13195	2	0
// OP_RETURN	244	0	0
// OP_RETURN	245	0	0
// OP_DONE	0	0	0
float (entity targ) botrange = 
{
    local vector spot1;
    local vector spot2;
    local float mel;
    local float r;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    r = vlen(spot1 - spot2);
    mel = (180 - (self.health * 0.5)) - (self.armorvalue * self.armortype);
    
    if(self.items & IT_QUAD)
    {
        mel = FL_SWIM * mel;
    }
    
    
    if(teamplay == TRUE)
    {
        mel = 60;
    }
    
    if(r < mel)
    {
        return RANGE_MELEE;
    }
    else
    {
        if(r < SEARCH_RADIUS)
        {
            return RANGE_NEAR;
        }
        else
        {
            
            if(r < 1000)
            {
                return RANGE_MID;
            }
            
        }
        
    }
    
    return RANGE_FAR;
};

// infrontofbot
// function begins at statement 22729, parm_start=13197
// OP_LOAD_F	28	553	13207
// OP_EQ_F	13207	228	13208
// OP_IFNOT	13208	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	28	105	13209
// OP_LOAD_V	28	166	13212
// OP_ADD_V	13209	13212	13215
// OP_STORE_V	13215	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	13206	0
// OP_NE_F	13206	278	13218
// OP_IFNOT	13218	29	0
// OP_LOAD_F	28	553	13219
// OP_LT	13219	216	13220
// OP_IFNOT	13220	26	0
// OP_LOAD_V	13197	105	13221
// OP_LOAD_V	28	105	13224
// OP_SUB_V	13221	13224	13227
// OP_STORE_V	13227	13201	0
// OP_STORE_F	213	13203	0
// OP_STORE_V	13201	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13205	0
// OP_LOAD_F	13197	108	13230
// OP_LOAD_F	28	108	13231
// OP_SUB_F	13230	13231	13232
// OP_LOAD_F	28	553	13233
// OP_MUL_F	4009	13233	13234
// OP_SUB_F	216	13234	13235
// OP_MUL_F	13232	13235	13236
// OP_STORE_F	13236	13204	0
// OP_LT	13204	213	13237
// OP_IFNOT	13237	3	0
// OP_MUL_F	13238	13204	13239
// OP_STORE_F	13239	13204	0
// OP_GT	13204	2346	13240
// OP_LT	13205	13204	13241
// OP_AND	13240	13241	13242
// OP_IFNOT	13242	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	117	13243
// OP_STORE_V	13243	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	13197	105	13246
// OP_LOAD_V	28	105	13249
// OP_SUB_V	13246	13249	13252
// OP_STORE_V	13252	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	13198	0
// OP_MUL_V	13198	59	13255
// OP_STORE_F	13255	13205	0
// OP_LOAD_F	28	553	13256
// OP_MUL_F	13256	13257	13258
// OP_SUB_F	3328	13258	13259
// OP_STORE_F	13259	13204	0
// OP_GT	13205	13204	13260
// OP_IFNOT	13260	2	0
// OP_RETURN	214	0	0
// OP_EQ_F	13206	278	13261
// OP_IFNOT	13261	4	0
// OP_GT	13205	213	13262
// OP_IFNOT	13262	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) infrontofbot = 
{
    local vector vec;
    local vector xydir;
    local float fov;
    local float dot;
    local float lnd;
    
    if(self.skil == MOVETYPE_WALK)
    {
        return TRUE;
    }
    
    lnd = pointcontents(self.origin + self.view_ofs);
    
    if(lnd != CONTENT_WATER)
    {
        
        if(self.skil < FL_SWIM)
        {
            xydir = targ.origin - self.origin;
            xydir_z = FALSE;
            dot = vlen(xydir);
            fov = (targ.origin_z - self.origin_z) * (FL_SWIM - (0.75 * self.skil));
            
            if(fov < FALSE)
            {
                fov = -0.8 * fov;
            }
            
            
            if((fov > 150) && (dot < fov))
            {
                return FALSE;
            }
            
        }
        
    }
    
    makevectors(self.angles);
    vec = normalize(targ.origin - self.origin);
    dot = vec * v_forward;
    fov = 0.7 - (self.skil * 0.28);
    
    if(dot > fov)
    {
        return TRUE;
    }
    
    
    if(lnd == CONTENT_WATER)
    {
        
        if(dot > FALSE)
        {
            return TRUE;
        }
        
    }
    
    return FALSE;
};

// Swimto
// function begins at statement 22794, parm_start=13263
// OP_LOAD_V	28	105	13271
// OP_LOAD_V	28	166	13274
// OP_ADD_V	13271	13274	13277
// OP_STORE_V	13277	13264	0
// OP_LOAD_V	13263	94	13280
// OP_STORE_V	13280	13267	0
// OP_STORE_V	13267	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	13270	0
// OP_NE_F	13270	278	13283
// OP_IFNOT	13283	5	0
// OP_ADD_F	13266	608	13284
// OP_GT	13269	13284	13285
// OP_IFNOT	13285	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	13264	4	0
// OP_STORE_V	13267	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	13286
// OP_IFNOT	13286	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	13263	13287
// OP_IFNOT	13287	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) Swimto = 
{
    local vector spot1;
    local vector spot2;
    local float lnd;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.absmin;
    lnd = pointcontents(spot2);
    
    if(lnd != CONTENT_WATER)
    {
        
        if(spot2_z > (spot1_z + MAXJUMP))
        {
            return FALSE;
        }
        
    }
    
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == targ)
    {
        return TRUE;
    }
    
    return FALSE;
};

// Spotvisible
// function begins at statement 22822, parm_start=13288
// OP_LOAD_V	28	105	13296
// OP_LOAD_V	28	166	13299
// OP_ADD_V	13296	13299	13302
// OP_STORE_V	13302	13289	0
// OP_LOAD_V	13288	94	13305
// OP_LOAD_V	13288	98	13308
// OP_ADD_V	13305	13308	13311
// OP_MUL_VF	13311	677	13314
// OP_STORE_V	13314	13292	0
// OP_STORE_V	13289	4	0
// OP_STORE_V	13292	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	13317
// OP_IFNOT	13317	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	13288	13318
// OP_IFNOT	13318	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) Spotvisible = 
{
    local vector spot1;
    local vector spot2;
    local string t1;
    spot1 = self.origin + self.view_ofs;
    spot2 = (targ.absmin + targ.absmax) * 0.5;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == targ)
    {
        return TRUE;
    }
    
    return FALSE;
};

// enemyvisible
// function begins at statement 22844, parm_start=13320
// OP_STORE_V	13320	4	0
// OP_CALL1	1127	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	28	105	13327
// OP_LOAD_V	28	166	13330
// OP_ADD_V	13327	13330	13333
// OP_STORE_V	13333	13321	0
// OP_LOAD_V	13320	105	13336
// OP_STORE_V	13336	13324	0
// OP_STORE_V	13321	4	0
// OP_STORE_V	13324	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	13339
// OP_IFNOT	13339	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	70	214	13340
// OP_IFNOT	13340	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) enemyvisible = 
{
    local vector spot1;
    local vector spot2;
    
    if(visible(targ))
    {
        return TRUE;
    }
    
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    return FALSE;
};

// Platvisible
// function begins at statement 22867, parm_start=13341
// OP_LOAD_V	28	105	13349
// OP_LOAD_V	28	166	13352
// OP_ADD_V	13349	13352	13355
// OP_STORE_V	13355	13342	0
// OP_LOAD_V	13341	94	13358
// OP_LOAD_V	13341	98	13361
// OP_ADD_V	13358	13361	13364
// OP_MUL_VF	13364	677	13367
// OP_STORE_V	13367	13345	0
// OP_LOAD_F	13341	101	13370
// OP_ADD_F	13370	228	13371
// OP_STORE_F	13371	13347	0
// OP_STORE_V	13342	4	0
// OP_STORE_V	13345	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	13372
// OP_IFNOT	13372	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	13341	13373
// OP_IFNOT	13373	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) Platvisible = 
{
    local vector spot1;
    local vector spot2;
    local string t1;
    spot1 = self.origin + self.view_ofs;
    spot2 = (targ.absmin + targ.absmax) * 0.5;
    spot2_z = targ.absmax_z + MOVETYPE_WALK;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    
    if(trace_ent == targ)
    {
        return TRUE;
    }
    
    return FALSE;
};

// dropline
// function begins at statement 22892, parm_start=13374
// OP_STORE_V	13374	13378	0
// OP_SUB_F	13380	1546	13382
// OP_STORE_F	13382	13380	0
// OP_STORE_V	13374	4	0
// OP_STORE_V	13378	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_MUL_F	70	1546	13383
// OP_SUB_F	13376	13383	13384
// OP_STORE_F	13384	13377	0
// OP_RETURN	13377	0	0
// OP_DONE	0	0	0
float (vector spot) dropline = 
{
    local float drop;
    local vector spot2;
    local string tmp;
    spot2 = spot;
    spot2_z = spot2_z - 500;
    traceline(spot, spot2, TRUE, self);
    drop = spot_z - (trace_fraction * 500);
    return drop;
};

// BotWalkable
// function begins at statement 22905, parm_start=13386
// OP_LOAD_F	13387	552	13402
// OP_NE_F	13402	583	13403
// OP_IFNOT	13403	10	0
// OP_LOAD_V	13387	94	13404
// OP_LOAD_V	13387	98	13407
// OP_ADD_V	13404	13407	13410
// OP_MUL_VF	13410	677	13413
// OP_STORE_V	13413	13395	0
// OP_LOAD_F	13387	97	13416
// OP_ADD_F	13416	214	13417
// OP_STORE_F	13417	13397	0
// OP_GOTO	3	0	0
// OP_LOAD_V	13387	105	13418
// OP_STORE_V	13418	13395	0
// OP_LOAD_V	13386	105	13421
// OP_STORE_V	13421	13389	0
// OP_LOAD_V	13386	105	13424
// OP_SUB_V	13395	13424	13427
// OP_STORE_V	13427	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	13392	0
// OP_MUL_VF	13392	611	13430
// OP_MUL_VF	13430	605	13433
// OP_MUL_VF	13433	13436	13437
// OP_STORE_V	13437	13392	0
// OP_LOAD_V	13386	105	13440
// OP_SUB_V	13395	13440	13443
// OP_STORE_V	13443	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13398	0
// OP_MUL_F	611	605	13446
// OP_MUL_F	13446	13436	13447
// OP_DIV_F	13398	13447	13448
// OP_STORE_F	13448	13398	0
// OP_LOAD_F	13387	552	13449
// OP_EQ_F	13449	583	13450
// OP_IFNOT	13450	5	0
// OP_LOAD_F	28	137	13451
// OP_ADD_F	13397	13451	13452
// OP_STORE_F	13452	13401	0
// OP_GOTO	2	0	0
// OP_STORE_F	13397	13401	0
// OP_GT	13398	214	13453
// OP_IFNOT	13453	48	0
// OP_STORE_F	214	13399	0
// OP_ADD_V	13389	13392	13454
// OP_STORE_V	13454	13389	0
// OP_SUB_F	13398	214	13457
// OP_STORE_F	13457	13398	0
// OP_STORE_V	13389	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	13400	0
// OP_ADD_F	13400	13388	13458
// OP_LT	13458	13401	13459
// OP_IFNOT	13459	36	0
// OP_MUL_VF	13392	677	13460
// OP_SUB_V	13389	13460	13463
// OP_STORE_V	13463	13389	0
// OP_STORE_V	13389	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	13400	0
// OP_ADD_F	13400	13388	13466
// OP_LT	13466	13401	13467
// OP_IFNOT	13467	2	0
// OP_STORE_F	213	13399	0
// OP_ADD_V	13389	13392	13468
// OP_STORE_V	13468	13389	0
// OP_SUB_F	13398	677	13471
// OP_STORE_F	13471	13398	0
// OP_STORE_V	13389	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	13400	0
// OP_ADD_F	13400	13388	13472
// OP_LT	13472	13401	13473
// OP_IFNOT	13473	16	0
// OP_NOT_F	13399	0	13474
// OP_IFNOT	13474	2	0
// OP_RETURN	213	0	0
// OP_MUL_VF	13392	677	13475
// OP_ADD_V	13389	13475	13478
// OP_STORE_V	13478	13389	0
// OP_SUB_F	13398	677	13481
// OP_STORE_F	13481	13398	0
// OP_STORE_V	13389	4	0
// OP_CALL1	634	0	0
// OP_STORE_F	1	13400	0
// OP_ADD_F	13400	13388	13482
// OP_LT	13482	13401	13483
// OP_IFNOT	13483	2	0
// OP_RETURN	213	0	0
// OP_GOTO	-48	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity a, entity b, float bmaxjump) BotWalkable = 
{
    local vector spot1;
    local vector dir;
    local vector borg;
    local float tests;
    local float okpath;
    local float flr;
    local float goalheight;
    if(b.pathtype != DROPPED)
    {
        borg = (b.absmin + b.absmax) * 0.5;
        borg_z = b.absmin_z + TRUE;
    }
    else
    {
        borg = b.origin;
    }
    
    spot1 = a.origin;
    dir = normalize(borg - a.origin);
    dir = ((dir * LEVELJUMPTIME) * BOTSPEED) * 6.5;
    tests = vlen(borg - a.origin);
    tests = tests / ((LEVELJUMPTIME * BOTSPEED) * 6.5);
    if(b.pathtype == DROPPED)
    {
        goalheight = borg_z + self.mins_z;
    }
    else
    {
        goalheight = borg_z;
    }
    
    
    while(tests > TRUE)
    {
        okpath = TRUE;
        spot1 = spot1 + dir;
        tests = tests - TRUE;
        flr = dropline(spot1);
        
        if((flr + bmaxjump) < goalheight)
        {
            spot1 = spot1 - (dir * 0.5);
            flr = dropline(spot1);
            
            if((flr + bmaxjump) < goalheight)
            {
                okpath = FALSE;
            }
            
            spot1 = spot1 + dir;
            tests = tests - 0.5;
            flr = dropline(spot1);
            
            if((flr + bmaxjump) < goalheight)
            {
                
                if(!okpath)
                {
                    return FALSE;
                }
                
                spot1 = spot1 + (dir * 0.5);
                tests = tests - 0.5;
                flr = dropline(spot1);
                
                if((flr + bmaxjump) < goalheight)
                {
                    return FALSE;
                }
                
            }
            
        }
        
    }
    
    return TRUE;
};

float (entity a, entity b) IsUpstream;
// Reachable
// function begins at statement 22998, parm_start=13486
// OP_IFNOT	13488	3	0
// OP_STORE_F	608	13504	0
// OP_GOTO	3	0	0
// OP_MUL_F	2345	608	13507
// OP_STORE_F	13507	13504	0
// OP_LOAD_F	13487	552	13508
// OP_NE_F	13508	583	13509
// OP_IFNOT	13509	10	0
// OP_LOAD_V	13487	94	13510
// OP_LOAD_V	13487	98	13513
// OP_ADD_V	13510	13513	13516
// OP_MUL_VF	13516	677	13519
// OP_STORE_V	13519	13495	0
// OP_LOAD_F	13487	97	13522
// OP_ADD_F	13522	214	13523
// OP_STORE_F	13523	13497	0
// OP_GOTO	11	0	0
// OP_LOAD_F	13486	552	13524
// OP_EQ_F	13524	583	13525
// OP_IFNOT	13525	6	0
// OP_STORE_V	13486	4	0
// OP_STORE_V	13487	7	0
// OP_CALL2	13484	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	13487	105	13526
// OP_STORE_V	13526	13495	0
// OP_LOAD_V	13486	105	13529
// OP_STORE_V	13529	13489	0
// OP_STORE_V	13495	13492	0
// OP_LOAD_F	13487	552	13532
// OP_NE_F	13532	583	13533
// OP_IFNOT	13533	6	0
// OP_LOAD_F	13487	97	13534
// OP_LOAD_F	13487	101	13535
// OP_ADD_F	13534	13535	13536
// OP_MUL_F	13536	677	13537
// OP_STORE_F	13537	13494	0
// OP_SUB_V	13492	13489	13538
// OP_STORE_V	13538	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13502	0
// OP_IFNOT	13488	5	0
// OP_GT	13502	580	13541
// OP_IFNOT	13541	2	0
// OP_RETURN	213	0	0
// OP_GOTO	6	0	0
// OP_MUL_F	216	605	13542
// OP_SUB_F	580	13542	13543
// OP_GT	13502	13543	13544
// OP_IFNOT	13544	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	13486	105	13545
// OP_STORE_V	13545	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	13498	0
// OP_NE_F	13498	278	13548
// OP_IFNOT	13548	8	0
// OP_STORE_V	13489	4	0
// OP_CALL1	634	0	0
// OP_LOAD_F	28	169	13549
// OP_ADD_F	1	13549	13550
// OP_LOAD_F	28	137	13551
// OP_SUB_F	13550	13551	13552
// OP_STORE_F	13552	13491	0
// OP_STORE_V	13489	4	0
// OP_STORE_V	13492	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	13486	13	0
// OP_CALL4	461	0	0
// OP_STORE_V	13495	13492	0
// OP_EQ_F	13498	278	13553
// OP_IFNOT	13553	37	0
// OP_NOT_F	79	0	13554
// OP_IFNOT	13554	6	0
// OP_EQ_F	70	214	13555
// OP_IFNOT	13555	2	0
// OP_RETURN	214	0	0
// OP_IFNOT	13488	2	0
// OP_RETURN	214	0	0
// OP_IFNOT	13488	29	0
// OP_STORE_F	1770	13503	0
// OP_LOAD_V	13486	105	13556
// OP_LOAD_V	28	166	13559
// OP_ADD_V	13556	13559	13562
// OP_STORE_V	13562	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	13498	0
// OP_EQ_F	13498	278	13565
// OP_IFNOT	13565	4	0
// OP_LOAD_F	28	169	13566
// OP_ADD_F	13503	13566	13567
// OP_STORE_F	13567	13503	0
// OP_LOAD_F	13486	108	13568
// OP_ADD_F	13568	13503	13569
// OP_LT	13494	13569	13570
// OP_IFNOT	13570	13	0
// OP_EQ_F	70	214	13571
// OP_IFNOT	13571	2	0
// OP_RETURN	214	0	0
// OP_STORE_F	13494	13491	0
// OP_STORE_V	13489	4	0
// OP_STORE_V	13492	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	13486	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	13572
// OP_IFNOT	13572	2	0
// OP_RETURN	214	0	0
// OP_NE_F	70	214	13573
// OP_IFNOT	13573	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	13486	105	13574
// OP_STORE_V	13574	13489	0
// OP_ADD_F	13491	13504	13577
// OP_GT	13494	13577	13578
// OP_IFNOT	13578	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	13486	105	13579
// OP_STORE_V	13579	13489	0
// OP_STORE_F	213	13491	0
// OP_STORE_V	13495	13492	0
// OP_STORE_F	213	13494	0
// OP_SUB_V	13492	13489	13582
// OP_STORE_V	13582	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	13501	0
// OP_MUL_F	611	605	13585
// OP_MUL_F	13585	235	13586
// OP_SUB_F	13501	13586	13587
// OP_STORE_F	13587	13501	0
// OP_LT	13501	213	13588
// OP_IFNOT	13588	2	0
// OP_RETURN	214	0	0
// OP_STORE_F	213	13499	0
// OP_LOAD_F	13486	108	13589
// OP_SUB_F	13589	13497	13590
// OP_STORE_F	13590	13500	0
// OP_GT	13500	213	13591
// OP_IFNOT	13591	9	0
// OP_SUB_F	13501	605	13592
// OP_STORE_F	13592	13501	0
// OP_SUB_F	13499	607	13593
// OP_STORE_F	13593	13499	0
// OP_MUL_F	993	13499	13594
// OP_ADD_F	13500	13594	13595
// OP_STORE_F	13595	13500	0
// OP_GOTO	-9	0	0
// OP_LT	13501	213	13596
// OP_IFNOT	13596	2	0
// OP_RETURN	214	0	0
// OP_STORE_V	13486	4	0
// OP_STORE_V	13487	7	0
// OP_STORE_V	13504	10	0
// OP_CALL3	13385	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float (entity a, entity b, float truereach) Reachable = 
{
    local vector spot1;
    local vector spot2;
    local vector borg;
    local float lnd;
    local float vel;
    local float diffz;
    local float diffxy;
    local float rng;
    local float maxzd;
    local float bmaxjump;
    local float brad;
    local string tmp;
    if(truereach)
    {
        bmaxjump = MAXJUMP;
    }
    else
    {
        bmaxjump = 0.6 * MAXJUMP;
    }
    
    if(b.pathtype != DROPPED)
    {
        borg = (b.absmin + b.absmax) * 0.5;
        borg_z = b.absmin_z + TRUE;
    }
    else
    {
        
        if(a.pathtype == DROPPED)
        {
            
            if(IsUpstream(a, b))
            {
                return TRUE;
            }
            
        }
        
        borg = b.origin;
    }
    
    spot1 = a.origin;
    spot2 = borg;
    
    if(b.pathtype != DROPPED)
    {
        spot2_z = (b.absmin_z + b.absmax_z) * 0.5;
    }
    
    rng = vlen(spot2 - spot1);
    if(truereach)
    {
        
        if(rng > SEARCH_RADIUS)
        {
            return FALSE;
        }
        
    }
    else
    {
        
        if(rng > (SEARCH_RADIUS - (FL_SWIM * BOTSPEED)))
        {
            return FALSE;
        }
        
    }
    
    lnd = pointcontents(a.origin);
    
    if(lnd != CONTENT_WATER)
    {
        spot1_z = (dropline(spot1) + self.view_ofs_z) - self.mins_z;
    }
    
    traceline(spot1, spot2, TRUE, a);
    spot2 = borg;
    
    if(lnd == CONTENT_WATER)
    {
        
        if(!trace_inopen)
        {
            
            if(trace_fraction == TRUE)
            {
                return TRUE;
            }
            
            
            if(truereach)
            {
                return TRUE;
            }
            
        }
        
        
        if(truereach)
        {
            maxzd = 45;
            lnd = pointcontents(a.origin + self.view_ofs);
            
            if(lnd == CONTENT_WATER)
            {
                maxzd = maxzd + self.view_ofs_z;
            }
            
            
            if(spot2_z < (a.origin_z + maxzd))
            {
                
                if(trace_fraction == TRUE)
                {
                    return TRUE;
                }
                
                spot1_z = spot2_z;
                traceline(spot1, spot2, TRUE, a);
                
                if(trace_fraction == TRUE)
                {
                    return TRUE;
                }
                
            }
            
        }
        
    }
    
    
    if(trace_fraction != TRUE)
    {
        return FALSE;
    }
    
    spot1 = a.origin;
    
    if(spot2_z > (spot1_z + bmaxjump))
    {
        return FALSE;
    }
    
    spot1 = a.origin;
    spot1_z = FALSE;
    spot2 = borg;
    spot2_z = FALSE;
    diffxy = vlen(spot2 - spot1);
    diffxy = diffxy - ((LEVELJUMPTIME * BOTSPEED) * MOVETYPE_BOUNCE);
    
    if(diffxy < FALSE)
    {
        return TRUE;
    }
    
    vel = FALSE;
    diffz = a.origin_z - borg_z;
    
    while(diffz > FALSE)
    {
        diffxy = diffxy - BOTSPEED;
        vel = vel - GRAVITY;
        diffz = diffz + (0.1 * vel);
    }
    
    
    if(diffxy < FALSE)
    {
        return TRUE;
    }
    
    return BotWalkable(a, b, bmaxjump);
};

// BotReachable
// function begins at statement 23155, parm_start=13598
// OP_STORE_V	13598	4	0
// OP_STORE_V	13599	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	13485	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float (entity a, entity b) BotReachable = 
{
    return Reachable(a, b, FALSE);
};

// TrueReachable
// function begins at statement 23161, parm_start=13601
// OP_STORE_V	28	4	0
// OP_STORE_V	13601	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	13485	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float (entity b) TrueReachable = 
{
    return Reachable(self, b, TRUE);
};

