void (entity e) clearCache;
// CheckWaterLevel
// function begins at statement 19313, parm_start=11243
// OP_LOAD_F	28	189	11244
// OP_LT	11244	214	11245
// OP_IFNOT	11245	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	105	11246
// OP_LOAD_V	28	166	11249
// OP_ADD_V	11246	11249	11252
// OP_STORE_V	11252	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	11243	0
// OP_NE_F	11243	276	11255
// OP_IFNOT	11255	2	0
// OP_RETURN	228	0	0
// OP_LOAD_V	28	105	11256
// OP_STORE_V	11256	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	11243	0
// OP_NE_F	11243	276	11259
// OP_IFNOT	11259	2	0
// OP_RETURN	216	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CheckWaterLevel = 
{
    local float pnt;
    
    if(self.waterlevel < TRUE)
    {
        return FALSE;
    }
    
    pnt = pointcontents(self.origin + self.view_ofs);
    
    if(pnt != CONTENT_EMPTY)
    {
        return MOVETYPE_WALK;
    }
    
    pnt = pointcontents(self.origin);
    
    if(pnt != CONTENT_EMPTY)
    {
        return FL_SWIM;
    }
    
    return TRUE;
};

// BotWaterMove
// function begins at statement 19335, parm_start=11261
// OP_CALL0	3567	0	0
// OP_STORE_F	1	11261	0
// OP_LOAD_F	28	152	11267
// OP_LT	11267	213	11268
// OP_IFNOT	11268	2	0
// OP_RETURN	0	0	0
// OP_NE_F	11261	228	11269
// OP_IFNOT	11269	27	0
// OP_LOAD_F	28	391	11270
// OP_LT	11270	31	11271
// OP_IFNOT	11271	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4309	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	391	11272
// OP_ADD_F	31	234	11273
// OP_LT	11272	11273	11274
// OP_IFNOT	11274	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4308	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	391	11275
// OP_ADD_F	31	576	11276
// OP_STOREP_F	11276	11275	0
// OP_ADDRESS	28	420	11277
// OP_STOREP_F	216	11277	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	391	11278
// OP_LT	11278	31	11279
// OP_IFNOT	11279	22	0
// OP_LOAD_F	28	374	11280
// OP_LT	11280	31	11281
// OP_IFNOT	11281	19	0
// OP_ADDRESS	28	420	11282
// OP_LOAD_F	28	420	11283
// OP_ADD_F	11283	216	11284
// OP_STOREP_F	11284	11282	0
// OP_LOAD_F	28	420	11285
// OP_GT	11285	2246	11286
// OP_IFNOT	11286	3	0
// OP_ADDRESS	28	420	11287
// OP_STOREP_F	235	11287	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	420	11288
// OP_STORE_V	11288	13	0
// OP_CALL4	520	0	0
// OP_ADDRESS	28	374	11289
// OP_ADD_F	31	214	11290
// OP_STOREP_F	11290	11289	0
// OP_LOAD_F	28	190	11291
// OP_STORE_F	11291	11262	0
// OP_LT	11261	214	11292
// OP_IFNOT	11292	16	0
// OP_LOAD_V	28	94	11293
// OP_LOAD_V	28	98	11296
// OP_ADD_V	11293	11296	11299
// OP_MUL_VF	11299	677	11302
// OP_STORE_V	11302	11264	0
// OP_LOAD_F	28	97	11305
// OP_ADD_F	11305	214	11306
// OP_STORE_F	11306	11266	0
// OP_STORE_V	11264	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	11263	0
// OP_NE_F	11263	276	11307
// OP_IFNOT	11307	3	0
// OP_STORE_F	214	11261	0
// OP_STORE_F	11263	11262	0
// OP_LOAD_F	28	189	11308
// OP_LT	11308	214	11309
// OP_IFNOT	11309	24	0
// OP_LOAD_F	28	182	11310
// OP_BITAND	11310	218	11311
// OP_IFNOT	11311	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4337	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	182	11312
// OP_LOAD_F	28	182	11313
// OP_SUB_F	11313	218	11314
// OP_STOREP_F	11314	11312	0
// OP_LOAD_F	28	182	11315
// OP_BITAND	11315	216	11316
// OP_IFNOT	11316	5	0
// OP_ADDRESS	28	182	11317
// OP_LOAD_F	28	182	11318
// OP_SUB_F	11318	216	11319
// OP_STOREP_F	11319	11317	0
// OP_LT	11261	214	11320
// OP_IFNOT	11320	2	0
// OP_RETURN	0	0	0
// OP_EQ_F	11262	280	11321
// OP_IFNOT	11321	21	0
// OP_LOAD_F	28	4898	11322
// OP_LT	11322	31	11323
// OP_IFNOT	11323	17	0
// OP_LOAD_F	28	378	11324
// OP_GT	11324	31	11325
// OP_IFNOT	11325	5	0
// OP_ADDRESS	28	4898	11326
// OP_ADD_F	31	214	11327
// OP_STOREP_F	11327	11326	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	4898	11328
// OP_ADD_F	31	1226	11329
// OP_STOREP_F	11329	11328	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_MUL_F	235	11261	11330
// OP_STORE_V	11330	13	0
// OP_CALL4	520	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	11262	279	11331
// OP_IFNOT	11331	16	0
// OP_LOAD_F	28	4898	11332
// OP_LT	11332	31	11333
// OP_LOAD_F	28	378	11334
// OP_LT	11334	31	11335
// OP_AND	11333	11335	11336
// OP_IFNOT	11336	10	0
// OP_ADDRESS	28	4898	11337
// OP_ADD_F	31	214	11338
// OP_STOREP_F	11338	11337	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_MUL_F	229	11261	11339
// OP_STORE_V	11339	13	0
// OP_CALL4	520	0	0
// OP_LOAD_F	28	189	11340
// OP_LT	11340	214	11341
// OP_IFNOT	11341	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	11342
// OP_BITAND	11342	218	11343
// OP_NOT_F	11343	0	11344
// OP_IFNOT	11344	42	0
// OP_LOAD_F	28	190	11345
// OP_EQ_F	11345	280	11346
// OP_IFNOT	11346	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4336	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	190	11347
// OP_EQ_F	11347	278	11348
// OP_IFNOT	11348	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4335	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	190	11349
// OP_EQ_F	11349	279	11350
// OP_IFNOT	11350	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	4334	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	182	11351
// OP_LOAD_F	28	182	11352
// OP_ADD_F	11352	218	11353
// OP_STOREP_F	11353	11351	0
// OP_LOAD_F	28	182	11354
// OP_BITAND	11354	216	11355
// OP_NOT_F	11355	0	11356
// OP_IFNOT	11356	5	0
// OP_ADDRESS	28	182	11357
// OP_LOAD_F	28	182	11358
// OP_ADD_F	11358	216	11359
// OP_STOREP_F	11359	11357	0
// OP_ADDRESS	28	4898	11360
// OP_STOREP_F	213	11360	0
// OP_DONE	0	0	0
void () BotWaterMove = 
{
    local float wlevel;
    local float wtype;
    local float pnt;
    local vector bt;
    wlevel = CheckWaterLevel();
    
    if(self.health < FALSE)
    {
        return;
    }
    
    if(wlevel != MOVETYPE_WALK)
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
        
        self.air_finished = time + KINDA_WANT;
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
    
    wtype = self.watertype;
    
    if(wlevel < TRUE)
    {
        bt = (self.absmin + self.absmax) * 0.500;
        bt_z = self.absmin_z + TRUE;
        pnt = pointcontents(bt);
        
        if(pnt != CONTENT_EMPTY)
        {
            wlevel = TRUE;
            wtype = pnt;
        }
        
    }
    
    
    if(self.waterlevel < TRUE)
    {
        
        if(self.flags & FL_INWATER)
        {
            sound(self, CHAN_BODY, "misc/outwater.wav", TRUE, ATTN_NORM);
            self.flags = self.flags - FL_INWATER;
        }
        
        
        if(self.flags & FL_SWIM)
        {
            self.flags = self.flags - FL_SWIM;
        }
        
        
        if(wlevel < TRUE)
        {
            return;
        }
        
    }
    
    if(wtype == CONTENT_LAVA)
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
            
            T_Damage(self, world, world, MOVETYPE_BOUNCE * wlevel);
        }
        
    }
    else
    {
        
        if(wtype == CONTENT_SLIME)
        {
            
            if((self.dmgtime < time) && (self.radsuit_finished < time))
            {
                self.dmgtime = time + TRUE;
                T_Damage(self, world, world, MOVETYPE_STEP * wlevel);
            }
            
        }
        
    }
    
    
    if(self.waterlevel < TRUE)
    {
        return;
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
        
        if(!(self.flags & FL_SWIM))
        {
            self.flags = self.flags + FL_SWIM;
        }
        
        self.dmgtime = FALSE;
    }
    
};

// BotCheckPowerups
// function begins at statement 19527, parm_start=11362
// OP_LOAD_F	28	152	11362
// OP_LE	11362	213	11363
// OP_IFNOT	11363	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	376	11364
// OP_IFNOT	11364	54	0
// OP_LOAD_F	28	382	11365
// OP_LT	11365	31	11366
// OP_IFNOT	11366	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2961	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	382	11367
// OP_CALL0	452	0	0
// OP_MUL_F	1	228	11368
// OP_ADD_F	11368	214	11369
// OP_ADD_F	31	11369	11370
// OP_STOREP_F	11370	11367	0
// OP_LOAD_F	28	376	11371
// OP_ADD_F	31	228	11372
// OP_LT	11371	11372	11373
// OP_IFNOT	11373	19	0
// OP_LOAD_F	28	381	11374
// OP_EQ_F	11374	214	11375
// OP_IFNOT	11375	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2960	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	381	11376
// OP_ADD_F	31	214	11377
// OP_STOREP_F	11377	11376	0
// OP_LOAD_F	28	381	11378
// OP_LT	11378	31	11379
// OP_IFNOT	11379	4	0
// OP_ADDRESS	28	381	11380
// OP_ADD_F	31	214	11381
// OP_STOREP_F	11381	11380	0
// OP_LOAD_F	28	376	11382
// OP_LT	11382	31	11383
// OP_IFNOT	11383	9	0
// OP_ADDRESS	28	162	11384
// OP_LOAD_F	28	162	11385
// OP_SUB_F	11385	272	11386
// OP_STOREP_F	11386	11384	0
// OP_ADDRESS	28	376	11387
// OP_STOREP_F	213	11387	0
// OP_ADDRESS	28	381	11388
// OP_STOREP_F	213	11388	0
// OP_ADDRESS	28	131	11389
// OP_STOREP_F	213	11389	0
// OP_ADDRESS	28	93	11390
// OP_STOREP_F	4440	11390	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	11391
// OP_STOREP_F	4441	11391	0
// OP_LOAD_F	28	375	11392
// OP_IFNOT	11392	48	0
// OP_LOAD_F	28	375	11393
// OP_ADD_F	31	228	11394
// OP_LT	11393	11394	11395
// OP_IFNOT	11395	19	0
// OP_LOAD_F	28	379	11396
// OP_EQ_F	11396	214	11397
// OP_IFNOT	11397	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2938	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	379	11398
// OP_ADD_F	31	214	11399
// OP_STOREP_F	11399	11398	0
// OP_LOAD_F	28	379	11400
// OP_LT	11400	31	11401
// OP_IFNOT	11401	4	0
// OP_ADDRESS	28	379	11402
// OP_ADD_F	31	214	11403
// OP_STOREP_F	11403	11402	0
// OP_LOAD_F	28	375	11404
// OP_LT	11404	31	11405
// OP_IFNOT	11405	9	0
// OP_ADDRESS	28	162	11406
// OP_LOAD_F	28	162	11407
// OP_SUB_F	11407	273	11408
// OP_STOREP_F	11408	11406	0
// OP_ADDRESS	28	379	11409
// OP_STOREP_F	213	11409	0
// OP_ADDRESS	28	375	11410
// OP_STOREP_F	213	11410	0
// OP_LOAD_F	28	375	11411
// OP_GT	11411	31	11412
// OP_IFNOT	11412	6	0
// OP_ADDRESS	28	133	11413
// OP_LOAD_F	28	133	11414
// OP_BITOR	11414	336	11415
// OP_STOREP_F	11415	11413	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	11416
// OP_LOAD_F	28	133	11417
// OP_LOAD_F	28	133	11418
// OP_BITAND	11418	336	11419
// OP_SUB_F	11417	11419	11420
// OP_STOREP_F	11420	11416	0
// OP_LOAD_F	28	377	11421
// OP_IFNOT	11421	48	0
// OP_LOAD_F	28	377	11422
// OP_ADD_F	31	228	11423
// OP_LT	11422	11423	11424
// OP_IFNOT	11424	19	0
// OP_LOAD_F	28	383	11425
// OP_EQ_F	11425	214	11426
// OP_IFNOT	11426	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2973	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	383	11427
// OP_ADD_F	31	214	11428
// OP_STOREP_F	11428	11427	0
// OP_LOAD_F	28	383	11429
// OP_LT	11429	31	11430
// OP_IFNOT	11430	4	0
// OP_ADDRESS	28	383	11431
// OP_ADD_F	31	214	11432
// OP_STOREP_F	11432	11431	0
// OP_LOAD_F	28	377	11433
// OP_LT	11433	31	11434
// OP_IFNOT	11434	9	0
// OP_ADDRESS	28	162	11435
// OP_LOAD_F	28	162	11436
// OP_SUB_F	11436	275	11437
// OP_STOREP_F	11437	11435	0
// OP_ADDRESS	28	377	11438
// OP_STOREP_F	213	11438	0
// OP_ADDRESS	28	383	11439
// OP_STOREP_F	213	11439	0
// OP_LOAD_F	28	377	11440
// OP_GT	11440	31	11441
// OP_IFNOT	11441	6	0
// OP_ADDRESS	28	133	11442
// OP_LOAD_F	28	133	11443
// OP_BITOR	11443	336	11444
// OP_STOREP_F	11444	11442	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	11445
// OP_LOAD_F	28	133	11446
// OP_LOAD_F	28	133	11447
// OP_BITAND	11447	336	11448
// OP_SUB_F	11446	11448	11449
// OP_STOREP_F	11449	11445	0
// OP_LOAD_F	28	378	11450
// OP_IFNOT	11450	37	0
// OP_ADDRESS	28	391	11451
// OP_ADD_F	31	2717	11452
// OP_STOREP_F	11452	11451	0
// OP_LOAD_F	28	378	11453
// OP_ADD_F	31	228	11454
// OP_LT	11453	11454	11455
// OP_IFNOT	11455	19	0
// OP_LOAD_F	28	385	11456
// OP_EQ_F	11456	214	11457
// OP_IFNOT	11457	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	2950	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	385	11458
// OP_ADD_F	31	214	11459
// OP_STOREP_F	11459	11458	0
// OP_LOAD_F	28	385	11460
// OP_LT	11460	31	11461
// OP_IFNOT	11461	4	0
// OP_ADDRESS	28	385	11462
// OP_ADD_F	31	214	11463
// OP_STOREP_F	11463	11462	0
// OP_LOAD_F	28	378	11464
// OP_LT	11464	31	11465
// OP_IFNOT	11465	9	0
// OP_ADDRESS	28	162	11466
// OP_LOAD_F	28	162	11467
// OP_SUB_F	11467	274	11468
// OP_STOREP_F	11468	11466	0
// OP_ADDRESS	28	385	11469
// OP_STOREP_F	213	11469	0
// OP_ADDRESS	28	378	11470
// OP_STOREP_F	213	11470	0
// OP_DONE	0	0	0
void () BotCheckPowerups = 
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
                sound(self, CHAN_AUTO, "items/inv2.wav", TRUE, ATTN_NORM);
                self.invisible_time = time + TRUE;
            }
            
            
            if(self.invisible_time < time)
            {
                self.invisible_time = time + TRUE;
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
                sound(self, CHAN_AUTO, "items/protect2.wav", TRUE, ATTN_NORM);
                self.invincible_time = time + TRUE;
            }
            
            
            if(self.invincible_time < time)
            {
                self.invincible_time = time + TRUE;
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
                sound(self, CHAN_AUTO, "items/damage2.wav", TRUE, ATTN_NORM);
                self.super_time = time + TRUE;
            }
            
            
            if(self.super_time < time)
            {
                self.super_time = time + TRUE;
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
                sound(self, CHAN_AUTO, "items/suit2.wav", TRUE, ATTN_NORM);
                self.rad_time = time + TRUE;
            }
            
            
            if(self.rad_time < time)
            {
                self.rad_time = time + TRUE;
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

void () BotDead;
// BotPostThink
// function begins at statement 19725, parm_start=11473
// OP_LOAD_F	28	551	11474
// OP_IFNOT	11474	4	0
// OP_CALL0	5180	0	0
// OP_IFNOT	1	2	0
// OP_CALL0	5181	0	0
// OP_LOAD_ENT	28	418	11475
// OP_ADDRESS	11475	182	11476
// OP_LOAD_F	28	182	11477
// OP_STOREP_F	11477	11476	0
// OP_LOAD_ENT	28	418	11478
// OP_STORE_V	11478	4	0
// OP_LOAD_V	28	105	11479
// OP_STORE_V	11479	7	0
// OP_CALL2	448	0	0
// OP_LOAD_F	28	165	11482
// OP_NE_F	11482	246	11483
// OP_IFNOT	11483	6	0
// OP_STORE_V	11484	4	0
// OP_CALL1	470	0	0
// OP_CALL0	5876	0	0
// OP_CALL0	11471	0	0
// OP_RETURN	0	0	0
// OP_CALL0	11361	0	0
// OP_CALL0	11260	0	0
// OP_STORE_V	4809	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	11473	0
// OP_LOAD_F	28	153	11485
// OP_GE	11485	11473	11486
// OP_AND	11473	11486	11487
// OP_IFNOT	11487	10	0
// OP_CALL0	4790	0	0
// OP_ADDRESS	28	170	11488
// OP_STOREP_F	214	11488	0
// OP_ADDRESS	28	148	11489
// OP_STOREP_FNC	4568	11489	0
// OP_ADDRESS	28	150	11490
// OP_ADD_F	31	230	11491
// OP_STOREP_F	11491	11490	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () BotPostThink = 
{
    local float fraglimit;
    
    if(self.pather)
    {
        
        if(CheckDropPath())
        {
            DropBotPath();
        }
        
    }
    
    self.movetarget.flags = self.flags;
    setorigin(self.movetarget, self.origin);
    
    if(self.deadflag != DEAD_NO)
    {
        dprint("Bot should be dead!\n");
        GibPlayer();
        BotDead();
        return;
    }
    
    BotCheckPowerups();
    BotWaterMove();
    fraglimit = cvar("fraglimit");
    
    if(fraglimit && (self.frags >= fraglimit))
    {
        NextLevel();
        self.button0 = TRUE;
        self.think = IntermissionThink;
        self.nextthink = time + MOVETYPE_FLY;
        return;
    }
    
};

