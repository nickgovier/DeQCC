
// update_cachex2
// function begins at statement 53447, parm_start=28242
// OP_LOAD_F	28242	657	28245
// OP_GT	28245	213	28246
// OP_IFNOT	28246	5	0
// OP_LOAD_F	28242	657	28247
// OP_GE	28243	28247	28248
// OP_IFNOT	28248	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28242	657	28249
// OP_STOREP_F	28243	28249	0
// OP_ADDRESS	28242	647	28250
// OP_STOREP_ENT	28244	28250	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef009012, float globaldef009013, entity globaldef009014) update_cachex2 = 
{
    
    if(globaldef009012.field000334 > FALSE)
    {
        
        if(globaldef009013 >= globaldef009012.field000334)
        {
            return FALSE;
        }
        
    }
    
    globaldef009012.field000334 = globaldef009013;
    globaldef009012.field000324 = globaldef009014;
    return TRUE;
};


// func002650
// function begins at statement 53460, parm_start=28252
// OP_NOT_F	28252	0	28254
// OP_IFNOT	28254	2	0
// OP_RETURN	30	0	0
// OP_STORE_ENT	836	28253	0
// OP_IFNOT	28253	8	0
// OP_LOAD_F	28253	687	28255
// OP_EQ_F	28255	28252	28256
// OP_IFNOT	28256	2	0
// OP_RETURN	28253	0	0
// OP_LOAD_ENT	28253	620	28257
// OP_STORE_ENT	28257	28253	0
// OP_GOTO	-7	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (float globaldef009016) func002650 = 
{
    local entity globaldef009017;
    
    if(!globaldef009016)
    {
        return world;
    }
    
    globaldef009017 = globaldef000819;
    
    while(globaldef009017)
    {
        
        if(globaldef009017.waypointnumber == globaldef009016)
        {
            return globaldef009017;
        }
        
        globaldef009017 = globaldef009017.field000297;
    }
    
    return world;
};


// func002651
// function begins at statement 53474, parm_start=28259
// OP_STORE_ENT	30	28260	0
// OP_STORE_F	5347	28262	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_LOAD_S	28259	689	28268
// OP_STORE_V	28268	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28261	0
// OP_IFNOT	28261	25	0
// OP_LOAD_V	28261	94	28269
// OP_LOAD_V	28261	98	28272
// OP_ADD_V	28269	28272	28275
// OP_MUL_VF	28275	539	28278
// OP_STORE_V	28278	28265	0
// OP_LOAD_F	28261	97	28281
// OP_ADD_F	28281	216	28282
// OP_STORE_F	28282	28267	0
// OP_LOAD_V	28259	105	28283
// OP_SUB_V	28265	28283	28286
// OP_STORE_V	28286	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	28263	0
// OP_LT	28263	28262	28289
// OP_IFNOT	28289	3	0
// OP_STORE_ENT	28261	28260	0
// OP_STORE_F	28263	28262	0
// OP_STORE_V	28261	4	0
// OP_STORE_V	129	7	0
// OP_LOAD_S	28259	689	28290
// OP_STORE_V	28290	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28261	0
// OP_GOTO	-24	0	0
// OP_NOT_ENT	28260	0	28291
// OP_IFNOT	28291	10	0
// OP_LOAD_F	28259	687	28292
// OP_STORE_V	28292	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28264	0
// OP_STORE_V	28293	4	0
// OP_STORE_V	28264	7	0
// OP_STORE_V	2127	10	0
// OP_CALL3	992	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28260	687	28294
// OP_LOAD_F	28259	687	28295
// OP_STOREP_F	28295	28294	0
// OP_ADDRESS	28260	622	28296
// OP_STOREP_ENT	28259	28296	0
// OP_ADDRESS	28259	181	28297
// OP_STOREP_ENT	28260	28297	0
// OP_DONE	0	0	0
void (entity globaldef009019) func002651 = 
{
    local entity globaldef009020;
    local entity globaldef009021;
    local float globaldef009022;
    local float globaldef009023;
    local string globaldef009024;
    local vector globaldef009025;
    globaldef009020 = world;
    globaldef009022 = 400;
    globaldef009021 = find(world, classname, globaldef009019.waypointitem);
    
    while(globaldef009021)
    {
        globaldef009025 = (globaldef009021.absmin + globaldef009021.absmax) * RA_PLAYERSTATTIME;
        globaldef009025_z = globaldef009021.absmin_z + FL_SWIM;
        globaldef009023 = vlen(globaldef009025 - globaldef009019.origin);
        
        if(globaldef009023 < globaldef009022)
        {
            globaldef009020 = globaldef009021;
            globaldef009022 = globaldef009023;
        }
        
        globaldef009021 = find(globaldef009021, classname, globaldef009019.waypointitem);
    }
    
    if(!globaldef009020)
    {
        globaldef009024 = ftos(globaldef009019.waypointnumber);
        objerror3("no item near 'item' waypoint ", globaldef009024, "\n");
    }
    else
    {
        globaldef009020.waypointnumber = globaldef009019.waypointnumber;
        globaldef009020.field000299 = globaldef009019;
        globaldef009019.enemy = globaldef009020;
    }
    
};


// func002652
// function begins at statement 53526, parm_start=28299
// OP_STORE_ENT	30	28301	0
// OP_STORE_F	5347	28303	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	19126	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28300	0
// OP_IFNOT	28300	24	0
// OP_LOAD_V	28300	94	28308
// OP_LOAD_V	28300	98	28311
// OP_ADD_V	28308	28311	28314
// OP_MUL_VF	28314	539	28317
// OP_STORE_V	28317	28305	0
// OP_LOAD_F	28300	97	28320
// OP_ADD_F	28320	229	28321
// OP_STORE_F	28321	28307	0
// OP_LOAD_V	28299	105	28322
// OP_SUB_V	28305	28322	28325
// OP_STORE_V	28325	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	28302	0
// OP_LT	28302	28303	28328
// OP_IFNOT	28328	3	0
// OP_STORE_ENT	28300	28301	0
// OP_STORE_F	28302	28303	0
// OP_STORE_V	28300	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	19126	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28300	0
// OP_GOTO	-23	0	0
// OP_NOT_ENT	28301	0	28329
// OP_IFNOT	28329	10	0
// OP_LOAD_F	28299	687	28330
// OP_STORE_V	28330	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28304	0
// OP_STORE_V	28331	4	0
// OP_STORE_V	28304	7	0
// OP_STORE_V	2127	10	0
// OP_CALL3	992	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28301	687	28332
// OP_LOAD_F	28299	687	28333
// OP_STOREP_F	28333	28332	0
// OP_ADDRESS	28301	622	28334
// OP_STOREP_ENT	28299	28334	0
// OP_ADDRESS	28299	181	28335
// OP_STOREP_ENT	28301	28335	0
// OP_DONE	0	0	0
void (entity globaldef009031) func002652 = 
{
    local entity globaldef009032;
    local entity globaldef009033;
    local float globaldef009034;
    local float globaldef009035;
    local string globaldef009036;
    local vector globaldef009037;
    globaldef009033 = world;
    globaldef009035 = 400;
    globaldef009032 = find(world, classname, "trigger_teleport");
    
    while(globaldef009032)
    {
        globaldef009037 = (globaldef009032.absmin + globaldef009032.absmax) * RA_PLAYERSTATTIME;
        globaldef009037_z = globaldef009032.absmin_z + MOVETYPE_STEP;
        globaldef009034 = vlen(globaldef009037 - globaldef009031.origin);
        
        if(globaldef009034 < globaldef009035)
        {
            globaldef009033 = globaldef009032;
            globaldef009035 = globaldef009034;
        }
        
        globaldef009032 = find(globaldef009032, classname, "trigger_teleport");
    }
    
    if(!globaldef009033)
    {
        globaldef009036 = ftos(globaldef009031.waypointnumber);
        objerror3("no teleporter near 'teleport' waypoint ", globaldef009036, "\n");
    }
    else
    {
        globaldef009033.waypointnumber = globaldef009031.waypointnumber;
        globaldef009033.field000299 = globaldef009031;
        globaldef009031.enemy = globaldef009033;
    }
    
};


// func002653
// function begins at statement 53576, parm_start=28337
// OP_STORE_ENT	30	28339	0
// OP_STORE_F	5347	28341	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	11722	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28338	0
// OP_IFNOT	28338	26	0
// OP_LOAD_V	28338	443	28346
// OP_LOAD_V	28338	134	28349
// OP_LOAD_V	28338	138	28352
// OP_ADD_V	28349	28352	28355
// OP_MUL_VF	28355	539	28358
// OP_ADD_V	28346	28358	28361
// OP_STORE_V	28361	28343	0
// OP_LOAD_F	28338	141	28364
// OP_ADD_F	28364	216	28365
// OP_STORE_F	28365	28345	0
// OP_LOAD_V	28337	105	28366
// OP_SUB_V	28343	28366	28369
// OP_STORE_V	28369	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	28340	0
// OP_LT	28340	28341	28372
// OP_IFNOT	28372	3	0
// OP_STORE_ENT	28338	28339	0
// OP_STORE_F	28340	28341	0
// OP_STORE_V	28338	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	11722	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28338	0
// OP_GOTO	-25	0	0
// OP_NOT_ENT	28339	0	28373
// OP_IFNOT	28373	10	0
// OP_LOAD_F	28337	687	28374
// OP_STORE_V	28374	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28342	0
// OP_STORE_V	28375	4	0
// OP_STORE_V	28342	7	0
// OP_STORE_V	2127	10	0
// OP_CALL3	992	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28339	687	28376
// OP_LOAD_F	28337	687	28377
// OP_STOREP_F	28377	28376	0
// OP_ADDRESS	28339	623	28378
// OP_STOREP_ENT	28337	28378	0
// OP_ADDRESS	28337	181	28379
// OP_STOREP_ENT	28339	28379	0
// OP_DONE	0	0	0
void (entity globaldef009043) func002653 = 
{
    local entity globaldef009044;
    local entity globaldef009045;
    local float globaldef009046;
    local float globaldef009047;
    local string globaldef009048;
    local vector globaldef009049;
    globaldef009045 = world;
    globaldef009047 = 400;
    globaldef009044 = find(world, classname, "plat");
    
    while(globaldef009044)
    {
        globaldef009049 = globaldef009044.pos2 + ((globaldef009044.mins + globaldef009044.maxs) * RA_PLAYERSTATTIME);
        globaldef009049_z = globaldef009044.maxs_z + FL_SWIM;
        globaldef009046 = vlen(globaldef009049 - globaldef009043.origin);
        
        if(globaldef009046 < globaldef009047)
        {
            globaldef009045 = globaldef009044;
            globaldef009047 = globaldef009046;
        }
        
        globaldef009044 = find(globaldef009044, classname, "plat");
    }
    
    if(!globaldef009045)
    {
        globaldef009048 = ftos(globaldef009043.waypointnumber);
        objerror3("no plat near 'plattop' waypoint ", globaldef009048, "\n");
    }
    else
    {
        globaldef009045.waypointnumber = globaldef009043.waypointnumber;
        globaldef009045.field000300 = globaldef009043;
        globaldef009043.enemy = globaldef009045;
    }
    
};


// func002654
// function begins at statement 53628, parm_start=28381
// OP_STORE_ENT	30	28383	0
// OP_STORE_F	2044	28385	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	11722	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28382	0
// OP_IFNOT	28382	30	0
// OP_LOAD_V	28382	443	28390
// OP_LOAD_V	28382	134	28393
// OP_LOAD_V	28382	138	28396
// OP_ADD_V	28393	28396	28399
// OP_MUL_VF	28399	539	28402
// OP_ADD_V	28390	28402	28405
// OP_STORE_V	28405	28387	0
// OP_LOAD_F	28382	141	28408
// OP_LOAD_F	28382	442	28409
// OP_LOAD_F	28382	446	28410
// OP_SUB_F	28409	28410	28411
// OP_SUB_F	28408	28411	28412
// OP_ADD_F	28412	216	28413
// OP_STORE_F	28413	28389	0
// OP_LOAD_V	28381	105	28414
// OP_SUB_V	28387	28414	28417
// OP_STORE_V	28417	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	28384	0
// OP_LT	28384	28385	28420
// OP_IFNOT	28420	3	0
// OP_STORE_ENT	28382	28383	0
// OP_STORE_F	28384	28385	0
// OP_STORE_V	28382	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	11722	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28382	0
// OP_GOTO	-29	0	0
// OP_NOT_ENT	28383	0	28421
// OP_IFNOT	28421	10	0
// OP_LOAD_F	28381	687	28422
// OP_STORE_V	28422	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28386	0
// OP_STORE_V	28423	4	0
// OP_STORE_V	28386	7	0
// OP_STORE_V	2127	10	0
// OP_CALL3	992	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28383	687	28424
// OP_LOAD_F	28381	687	28425
// OP_STOREP_F	28425	28424	0
// OP_ADDRESS	28383	622	28426
// OP_STOREP_ENT	28381	28426	0
// OP_ADDRESS	28381	181	28427
// OP_STOREP_ENT	28383	28427	0
// OP_DONE	0	0	0
void (entity globaldef009055) func002654 = 
{
    local entity globaldef009056;
    local entity globaldef009057;
    local float globaldef009058;
    local float globaldef009059;
    local string globaldef009060;
    local vector globaldef009061;
    globaldef009057 = world;
    globaldef009059 = 200;
    globaldef009056 = find(world, classname, "plat");
    
    while(globaldef009056)
    {
        globaldef009061 = globaldef009056.pos2 + ((globaldef009056.mins + globaldef009056.maxs) * RA_PLAYERSTATTIME);
        globaldef009061_z = (globaldef009056.maxs_z - (globaldef009056.pos1_z - globaldef009056.pos2_z)) + FL_SWIM;
        globaldef009058 = vlen(globaldef009061 - globaldef009055.origin);
        
        if(globaldef009058 < globaldef009059)
        {
            globaldef009057 = globaldef009056;
            globaldef009059 = globaldef009058;
        }
        
        globaldef009056 = find(globaldef009056, classname, "plat");
    }
    
    if(!globaldef009057)
    {
        globaldef009060 = ftos(globaldef009055.waypointnumber);
        objerror3("no plat near 'platbottom' waypoint ", globaldef009060, "\n");
    }
    else
    {
        globaldef009057.waypointnumber = globaldef009055.waypointnumber;
        globaldef009057.field000299 = globaldef009055;
        globaldef009055.enemy = globaldef009057;
    }
    
};


// func002655
// function begins at statement 53684, parm_start=28429
// OP_NOT_ENT	28430	0	28432
// OP_IFNOT	28432	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28430	688	28433
// OP_EQ_F	28433	719	28434
// OP_IFNOT	28434	3	0
// OP_STORE_F	1470	28431	0
// OP_GOTO	7	0	0
// OP_LOAD_V	28430	105	28435
// OP_LOAD_V	28429	105	28438
// OP_SUB_V	28435	28438	28441
// OP_STORE_V	28441	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	28431	0
// OP_EQ_F	28431	213	28444
// OP_IFNOT	28444	2	0
// OP_STORE_F	3036	28431	0
// OP_RETURN	28431	0	0
// OP_DONE	0	0	0
float (entity globaldef009067, entity globaldef009068) func002655 = 
{
    local float globaldef009069;
    
    if(!globaldef009068)
    {
        return FALSE;
    }
    
    if(globaldef009068.waypointtype == globaldef000702)
    {
        globaldef009069 = 50;
    }
    else
    {
        globaldef009069 = vlen(globaldef009068.origin - globaldef009067.origin);
    }
    
    
    if(globaldef009069 == FALSE)
    {
        globaldef009069 = 0.1;
    }
    
    return globaldef009069;
};


// func002656
// function begins at statement 53703, parm_start=28446
// OP_STORE_V	30	4	0
// OP_CALL1	492	0	0
// OP_STORE_ENT	1	28446	0
// OP_STORE_F	214	28447	0
// OP_IFNOT	28446	7	0
// OP_ADD_F	28447	214	28448
// OP_STORE_F	28448	28447	0
// OP_STORE_V	28446	4	0
// OP_CALL1	492	0	0
// OP_STORE_ENT	1	28446	0
// OP_GOTO	-6	0	0
// OP_SUB_F	745	28447	28449
// OP_SUB_F	28449	743	28450
// OP_SUB_F	28450	742	28451
// OP_SUB_F	28451	744	28452
// OP_SUB_F	28452	746	28453
// OP_STORE_F	28453	804	0
// OP_DONE	0	0	0
void () func002656 = 
{
    local entity globaldef009071;
    local float globaldef009072;
    globaldef009071 = nextent(world);
    globaldef009072 = TRUE;
    
    while(globaldef009071)
    {
        globaldef009072 = globaldef009072 + TRUE;
        globaldef009071 = nextent(globaldef009071);
    }
    
    globaldef000787 = ((((GLOBALDEF728_500 - globaldef009072) - globaldef000726) - globaldef000725) - OBOT_MAXSHELLCASES) - GLOBALDEF729_40;
};


// func002657
// function begins at statement 53721, parm_start=28454
// OP_EQ_F	805	724	28456
// OP_IFNOT	28456	22	0
// OP_NOT_F	806	0	28457
// OP_IFNOT	28457	6	0
// OP_CALL0	1178	0	0
// OP_IFNOT	807	3	0
// OP_STORE_V	28458	4	0
// OP_CALL1	472	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	28459	4	0
// OP_CALL1	472	0	0
// OP_CALL0	28445	0	0
// OP_OR	806	807	28460
// OP_IFNOT	28460	5	0
// OP_STORE_F	725	805	0
// OP_BITOR	821	768	28461
// OP_STORE_F	28461	821	0
// OP_GOTO	4	0	0
// OP_STORE_F	213	816	0
// OP_STORE_F	727	805	0
// OP_STORE_ENT	30	827	0
// OP_RETURN	0	0	0
// OP_GOTO	178	0	0
// OP_EQ_F	805	725	28462
// OP_IFNOT	28462	137	0
// OP_NOT_ENT	827	0	28463
// OP_IFNOT	28463	5	0
// OP_STORE_V	28464	4	0
// OP_CALL1	472	0	0
// OP_STORE_ENT	836	28454	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	827	28454	0
// OP_STORE_V	28465	4	0
// OP_CALL1	472	0	0
// OP_STORE_F	213	28455	0
// OP_IFNOT	28454	122	0
// OP_ADDRESS	28454	622	28466
// OP_LOAD_F	28454	690	28467
// OP_STORE_V	28467	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28466	0
// OP_ADDRESS	28454	623	28468
// OP_LOAD_F	28454	691	28469
// OP_STORE_V	28469	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28468	0
// OP_ADDRESS	28454	624	28470
// OP_LOAD_F	28454	692	28471
// OP_STORE_V	28471	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28470	0
// OP_ADDRESS	28454	625	28472
// OP_LOAD_F	28454	693	28473
// OP_STORE_V	28473	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28472	0
// OP_ADDRESS	28454	626	28474
// OP_LOAD_F	28454	694	28475
// OP_STORE_V	28475	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28474	0
// OP_ADDRESS	28454	627	28476
// OP_LOAD_F	28454	695	28477
// OP_STORE_V	28477	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28476	0
// OP_ADDRESS	28454	628	28478
// OP_LOAD_F	28454	696	28479
// OP_STORE_V	28479	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28478	0
// OP_ADDRESS	28454	629	28480
// OP_LOAD_F	28454	697	28481
// OP_STORE_V	28481	4	0
// OP_CALL1	28251	0	0
// OP_STOREP_ENT	1	28480	0
// OP_ADDRESS	28454	630	28482
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	622	28483
// OP_STORE_V	28483	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28482	0
// OP_ADDRESS	28454	631	28484
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	623	28485
// OP_STORE_V	28485	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28484	0
// OP_ADDRESS	28454	632	28486
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	624	28487
// OP_STORE_V	28487	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28486	0
// OP_ADDRESS	28454	633	28488
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	625	28489
// OP_STORE_V	28489	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28488	0
// OP_ADDRESS	28454	634	28490
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	626	28491
// OP_STORE_V	28491	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28490	0
// OP_ADDRESS	28454	635	28492
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	627	28493
// OP_STORE_V	28493	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28492	0
// OP_ADDRESS	28454	636	28494
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	628	28495
// OP_STORE_V	28495	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28494	0
// OP_ADDRESS	28454	637	28496
// OP_STORE_V	28454	4	0
// OP_LOAD_ENT	28454	629	28497
// OP_STORE_V	28497	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28496	0
// OP_LOAD_F	28454	688	28498
// OP_EQ_F	28498	720	28499
// OP_IFNOT	28499	4	0
// OP_STORE_V	28454	4	0
// OP_CALL1	28258	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28454	688	28500
// OP_EQ_F	28500	719	28501
// OP_IFNOT	28501	4	0
// OP_STORE_V	28454	4	0
// OP_CALL1	28298	0	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28454	688	28502
// OP_EQ_F	28502	717	28503
// OP_IFNOT	28503	4	0
// OP_STORE_V	28454	4	0
// OP_CALL1	28336	0	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28454	688	28504
// OP_EQ_F	28504	723	28505
// OP_IFNOT	28505	3	0
// OP_STORE_V	28454	4	0
// OP_CALL1	28380	0	0
// OP_LOAD_ENT	28454	620	28506
// OP_STORE_ENT	28506	28454	0
// OP_STORE_ENT	28454	827	0
// OP_IFNOT	28454	6	0
// OP_ADD_F	28455	214	28507
// OP_STORE_F	28507	28455	0
// OP_GT	28455	739	28508
// OP_IFNOT	28508	2	0
// OP_RETURN	0	0	0
// OP_GOTO	-121	0	0
// OP_STORE_F	726	805	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_GOTO	40	0	0
// OP_EQ_F	805	726	28509
// OP_IFNOT	28509	38	0
// OP_NOT_ENT	827	0	28510
// OP_IFNOT	28510	5	0
// OP_STORE_V	28511	4	0
// OP_CALL1	472	0	0
// OP_STORE_ENT	836	28454	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	827	28454	0
// OP_STORE_V	28465	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	28454	23	0
// OP_LOAD_F	28454	688	28512
// OP_EQ_F	28512	720	28513
// OP_IFNOT	28513	17	0
// OP_LOAD_ENT	28454	181	28514
// OP_LOAD_FNC	28514	547	28515
// OP_NOT_FNC	28515	0	28516
// OP_IFNOT	28516	3	0
// OP_STORE_V	28517	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28454	181	28518
// OP_STORE_V	28518	4	0
// OP_STORE_V	28454	7	0
// OP_STORE_V	213	10	0
// OP_LOAD_ENT	28454	181	28519
// OP_STORE_V	28519	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_ENT	28454	620	28520
// OP_STORE_ENT	28520	827	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28454	620	28521
// OP_STORE_ENT	28521	28454	0
// OP_GOTO	-22	0	0
// OP_STORE_ENT	30	827	0
// OP_STORE_F	727	805	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_STORE_F	213	816	0
// OP_DONE	0	0	0
void () func002657 = 
{
    local entity globaldef009073;
    local float globaldef009074;
    if(globaldef000788 == globaldef000707)
    {
        if(!globaldef000789)
        {
            CheckHardCodedWaypoints();
            
            if(globaldef000790)
            {
                bprint("hard coded waypoints present\n");
            }
            
        }
        else
        {
            bprint("bsp waypoints present\n");
        }
        
        func002656();
        if(globaldef000789 || globaldef000790)
        {
            globaldef000788 = globaldef000708;
            globaldef000804 = globaldef000804 | OBOT_BOTPATHING;
        }
        else
        {
            globaldef000799 = FALSE;
            globaldef000788 = globaldef000710;
            globaldef000810 = world;
        }
        
        return;
    }
    else
    {
        if(globaldef000788 == globaldef000708)
        {
            if(!globaldef000810)
            {
                bprint("setting up wpp");
                globaldef009073 = globaldef000819;
            }
            else
            {
                globaldef009073 = globaldef000810;
            }
            
            bprint(".");
            globaldef009074 = FALSE;
            
            while(globaldef009073)
            {
                globaldef009073.field000299 = func002650(globaldef009073.wp0);
                globaldef009073.field000300 = func002650(globaldef009073.wp1);
                globaldef009073.field000301 = func002650(globaldef009073.wp2);
                globaldef009073.field000302 = func002650(globaldef009073.wp3);
                globaldef009073.field000303 = func002650(globaldef009073.wp4);
                globaldef009073.field000304 = func002650(globaldef009073.wp5);
                globaldef009073.field000305 = func002650(globaldef009073.wp6);
                globaldef009073.field000306 = func002650(globaldef009073.wp7);
                globaldef009073.field000307 = func002655(globaldef009073, globaldef009073.field000299);
                globaldef009073.field000308 = func002655(globaldef009073, globaldef009073.field000300);
                globaldef009073.field000309 = func002655(globaldef009073, globaldef009073.field000301);
                globaldef009073.field000310 = func002655(globaldef009073, globaldef009073.field000302);
                globaldef009073.field000311 = func002655(globaldef009073, globaldef009073.field000303);
                globaldef009073.field000312 = func002655(globaldef009073, globaldef009073.field000304);
                globaldef009073.field000313 = func002655(globaldef009073, globaldef009073.field000305);
                globaldef009073.field000314 = func002655(globaldef009073, globaldef009073.field000306);
                if(globaldef009073.waypointtype == globaldef000703)
                {
                    func002651(globaldef009073);
                }
                else
                {
                    if(globaldef009073.waypointtype == globaldef000702)
                    {
                        func002652(globaldef009073);
                    }
                    else
                    {
                        if(globaldef009073.waypointtype == globaldef000700)
                        {
                            func002653(globaldef009073);
                        }
                        else
                        {
                            
                            if(globaldef009073.waypointtype == globaldef000706)
                            {
                                func002654(globaldef009073);
                            }
                            
                        }
                        
                    }
                    
                }
                
                globaldef009073 = globaldef009073.field000297;
                globaldef000810 = globaldef009073;
                
                if(globaldef009073)
                {
                    globaldef009074 = globaldef009074 + TRUE;
                    
                    if(globaldef009074 > globaldef000722)
                    {
                        return;
                    }
                    
                }
                
            }
            
            globaldef000788 = globaldef000709;
            bprint("\n");
        }
        else
        {
            
            if(globaldef000788 == globaldef000709)
            {
                if(!globaldef000810)
                {
                    bprint("setting up wpc");
                    globaldef009073 = globaldef000819;
                }
                else
                {
                    globaldef009073 = globaldef000810;
                }
                
                bprint(".");
                
                while(globaldef009073)
                {
                    
                    if(globaldef009073.waypointtype == globaldef000703)
                    {
                        
                        if(!globaldef009073.enemy.f_updatecache)
                        {
                            objerror("cached item without cache update function");
                        }
                        
                        func002683(globaldef009073.enemy, globaldef009073, FALSE, globaldef009073.enemy);
                        globaldef000810 = globaldef009073.field000297;
                        return;
                    }
                    
                    globaldef009073 = globaldef009073.field000297;
                }
                
                globaldef000810 = world;
                globaldef000788 = globaldef000710;
                bprint("\n");
                globaldef000799 = FALSE;
            }
            
        }
        
    }
    
};


// func002658
// function begins at statement 53922, parm_start=28523
// OP_LT	28523	213	28527
// OP_IFNOT	28527	4	0
// OP_STORE_V	343	4	0
// OP_STORE_V	2598	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	28523	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	28523	0
// OP_STORE_F	213	28526	0
// OP_STORE_F	5984	28524	0
// OP_GE	28524	3036	28528
// OP_IFNOT	28528	30	0
// OP_EQ_F	28524	3036	28529
// OP_IFNOT	28529	4	0
// OP_STORE_V	343	4	0
// OP_STORE_V	10002	7	0
// OP_CALL2	496	0	0
// OP_DIV_F	28523	28524	28530
// OP_STORE_V	28530	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	28525	0
// OP_IFNOT	28526	6	0
// OP_STORE_V	343	4	0
// OP_ADD_F	10006	28525	28531
// OP_STORE_V	28531	7	0
// OP_CALL2	496	0	0
// OP_GOTO	9	0	0
// OP_EQ_F	28524	214	28532
// OP_OR	28532	28525	28533
// OP_IFNOT	28533	6	0
// OP_STORE_F	214	28526	0
// OP_STORE_V	343	4	0
// OP_ADD_F	10006	28525	28534
// OP_STORE_V	28534	7	0
// OP_CALL2	496	0	0
// OP_MUL_F	28525	28524	28535
// OP_SUB_F	28523	28535	28536
// OP_STORE_F	28536	28523	0
// OP_MUL_F	28524	3036	28537
// OP_STORE_F	28537	28524	0
// OP_GOTO	-30	0	0
// OP_DONE	0	0	0
void (float globaldef009082) func002658 = 
{
    local float globaldef009083;
    local float globaldef009084;
    local float globaldef009085;
    
    if(globaldef009082 < FALSE)
    {
        WriteByte(MSG_ONE, 45);
    }
    
    globaldef009082 = fabs(globaldef009082);
    globaldef009085 = FALSE;
    globaldef009083 = 10000;
    
    while(globaldef009083 >= 0.1)
    {
        
        if(globaldef009083 == 0.1)
        {
            WriteByte(MSG_ONE, 46);
        }
        
        globaldef009084 = floor(globaldef009082 / globaldef009083);
        if(globaldef009085)
        {
            WriteByte(MSG_ONE, 48 + globaldef009084);
        }
        else
        {
            
            if((globaldef009083 == TRUE) || globaldef009084)
            {
                globaldef009085 = TRUE;
                WriteByte(MSG_ONE, 48 + globaldef009084);
            }
            
        }
        
        globaldef009082 = globaldef009082 - (globaldef009084 * globaldef009083);
        globaldef009083 = globaldef009083 * 0.1;
    }
    
};


// func002659
// function begins at statement 53964, parm_start=28539
// OP_STORE_ENT	28539	81	0
// OP_STORE_V	343	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	28540	4	0
// OP_CALL1	28522	0	0
// OP_STORE_V	343	4	0
// OP_STORE_V	219	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	28541	4	0
// OP_CALL1	28522	0	0
// OP_STORE_V	343	4	0
// OP_STORE_V	219	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	28542	4	0
// OP_CALL1	28522	0	0
// OP_STORE_V	343	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	496	0	0
// OP_DONE	0	0	0
void (entity globaldef009087, vector globaldef009088) func002659 = 
{
    msg_entity = globaldef009087;
    WriteByte(MSG_ONE, SVC_PRINT);
    func002658(globaldef009088_x);
    WriteByte(MSG_ONE, FL_MONSTER);
    func002658(globaldef009088_y);
    WriteByte(MSG_ONE, FL_MONSTER);
    func002658(globaldef009088_z);
    WriteByte(MSG_ONE, FALSE);
};


// dumpbspwaypoints
// function begins at statement 53984, parm_start=28543
// OP_LOAD_F	28	575	28543
// OP_BITAND	28543	710	28544
// OP_IFNOT	28544	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	575	28545
// OP_LOAD_F	28	575	28546
// OP_BITOR	28546	709	28547
// OP_STOREP_F	28547	28545	0
// OP_DONE	0	0	0
void () dumpbspwaypoints = 
{
    
    if(self.field000252 & globaldef000693)
    {
        return;
    }
    
    self.field000252 = self.field000252 | globaldef000692;
};


// func002661
// function begins at statement 53993, parm_start=28548
// OP_LOAD_F	28	575	28551
// OP_BITAND	28551	709	28552
// OP_NOT_F	28552	0	28553
// OP_IFNOT	28553	2	0
// OP_RETURN	0	0	0
// OP_EQ_E	828	30	28554
// OP_IFNOT	28554	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28555	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	803	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28550	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8039	7	0
// OP_CALL2	928	0	0
// OP_STORE_ENT	836	828	0
// OP_STORE_F	213	28549	0
// OP_STORE_ENT	828	28548	0
// OP_LT	28549	235	28556
// OP_IFNOT	28556	196	0
// OP_EQ_E	28548	30	28557
// OP_IFNOT	28557	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28558	7	0
// OP_CALL2	928	0	0
// OP_ADDRESS	28	575	28559
// OP_LOAD_F	28	575	28560
// OP_LOAD_F	28	575	28561
// OP_BITAND	28561	709	28562
// OP_SUB_F	28560	28562	28563
// OP_STOREP_F	28563	28559	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28548	690	28564
// OP_LOAD_ENT	28548	622	28565
// OP_LOAD_F	28565	687	28566
// OP_STOREP_F	28566	28564	0
// OP_ADDRESS	28548	691	28567
// OP_LOAD_ENT	28548	623	28568
// OP_LOAD_F	28568	687	28569
// OP_STOREP_F	28569	28567	0
// OP_ADDRESS	28548	692	28570
// OP_LOAD_ENT	28548	624	28571
// OP_LOAD_F	28571	687	28572
// OP_STOREP_F	28572	28570	0
// OP_ADDRESS	28548	693	28573
// OP_LOAD_ENT	28548	625	28574
// OP_LOAD_F	28574	687	28575
// OP_STOREP_F	28575	28573	0
// OP_ADDRESS	28548	694	28576
// OP_LOAD_ENT	28548	626	28577
// OP_LOAD_F	28577	687	28578
// OP_STOREP_F	28578	28576	0
// OP_ADDRESS	28548	695	28579
// OP_LOAD_ENT	28548	627	28580
// OP_LOAD_F	28580	687	28581
// OP_STOREP_F	28581	28579	0
// OP_ADDRESS	28548	696	28582
// OP_LOAD_ENT	28548	628	28583
// OP_LOAD_F	28583	687	28584
// OP_STOREP_F	28584	28582	0
// OP_ADDRESS	28548	697	28585
// OP_LOAD_ENT	28548	629	28586
// OP_LOAD_F	28586	687	28587
// OP_STOREP_F	28587	28585	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28588	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28589	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28590	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28548	105	28591
// OP_STORE_V	28591	7	0
// OP_CALL2	28538	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28594	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28595	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28548	687	28596
// OP_STORE_V	28596	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28550	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28594	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28597	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28548	688	28598
// OP_STORE_V	28598	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28550	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28594	7	0
// OP_CALL2	928	0	0
// OP_LOAD_S	28548	689	28599
// OP_IFNOT	28599	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28600	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28548	689	28601
// OP_STORE_V	28601	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28594	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28548	690	28602
// OP_IFNOT	28602	10	0
// OP_LOAD_F	28548	690	28603
// OP_STORE_V	28603	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28604	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	691	28605
// OP_IFNOT	28605	10	0
// OP_LOAD_F	28548	691	28606
// OP_STORE_V	28606	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28607	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	692	28608
// OP_IFNOT	28608	10	0
// OP_LOAD_F	28548	692	28609
// OP_STORE_V	28609	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28610	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	693	28611
// OP_IFNOT	28611	10	0
// OP_LOAD_F	28548	693	28612
// OP_STORE_V	28612	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28613	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	694	28614
// OP_IFNOT	28614	10	0
// OP_LOAD_F	28548	694	28615
// OP_STORE_V	28615	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28616	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	695	28617
// OP_IFNOT	28617	10	0
// OP_LOAD_F	28548	695	28618
// OP_STORE_V	28618	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28619	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	696	28620
// OP_IFNOT	28620	10	0
// OP_LOAD_F	28548	696	28621
// OP_STORE_V	28621	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28622	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28548	697	28623
// OP_IFNOT	28623	10	0
// OP_LOAD_F	28548	697	28624
// OP_STORE_V	28624	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28550	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28625	7	0
// OP_STORE_V	28550	10	0
// OP_STORE_V	28594	13	0
// OP_CALL4	941	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28626	7	0
// OP_CALL2	928	0	0
// OP_ADD_F	28549	214	28627
// OP_STORE_F	28627	28549	0
// OP_LOAD_ENT	28548	620	28628
// OP_STORE_ENT	28628	28548	0
// OP_STORE_ENT	28548	828	0
// OP_GOTO	-196	0	0
// OP_DONE	0	0	0
void () func002661 = 
{
    local entity globaldef009092;
    local float globaldef009093;
    local string globaldef009094;
    
    if(!(self.field000252 & globaldef000692))
    {
        return;
    }
    
    
    if(globaldef000811 == world)
    {
        sprint(self, "number of waypoints = ");
        globaldef009094 = ftos(globaldef000786);
        sprint(self, globaldef009094);
        sprint(self, "\n\n");
        globaldef000811 = globaldef000819;
    }
    
    globaldef009093 = FALSE;
    globaldef009092 = globaldef000811;
    
    while(globaldef009093 < MOVETYPE_BOUNCE)
    {
        
        if(globaldef009092 == world)
        {
            sprint(self, "dumped all waypoints\n");
            self.field000252 = self.field000252 - (self.field000252 & globaldef000692);
            return;
        }
        
        globaldef009092.wp0 = globaldef009092.field000299.waypointnumber;
        globaldef009092.wp1 = globaldef009092.field000300.waypointnumber;
        globaldef009092.wp2 = globaldef009092.field000301.waypointnumber;
        globaldef009092.wp3 = globaldef009092.field000302.waypointnumber;
        globaldef009092.wp4 = globaldef009092.field000303.waypointnumber;
        globaldef009092.wp5 = globaldef009092.field000304.waypointnumber;
        globaldef009092.wp6 = globaldef009092.field000305.waypointnumber;
        globaldef009092.wp7 = globaldef009092.field000306.waypointnumber;
        sprint(self, "{\n");
        sprint(self, " \"classname\" \"waypoint\"\n");
        sprint(self, " \"origin\" \"");
        func002659(self, globaldef009092.origin);
        sprint(self, "\"\n");
        sprint(self, " \"waypointnumber\" \"");
        globaldef009094 = ftos(globaldef009092.waypointnumber);
        sprint(self, globaldef009094);
        sprint(self, "\"\n");
        sprint(self, " \"waypointtype\" \"");
        globaldef009094 = ftos(globaldef009092.waypointtype);
        sprint(self, globaldef009094);
        sprint(self, "\"\n");
        
        if(globaldef009092.waypointitem)
        {
            sprint(self, " \"waypointitem\" \"");
            sprint(self, globaldef009092.waypointitem);
            sprint(self, "\"\n");
        }
        
        
        if(globaldef009092.wp0)
        {
            globaldef009094 = ftos(globaldef009092.wp0);
            sprint3(self, " \"wp0\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp1)
        {
            globaldef009094 = ftos(globaldef009092.wp1);
            sprint3(self, " \"wp1\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp2)
        {
            globaldef009094 = ftos(globaldef009092.wp2);
            sprint3(self, " \"wp2\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp3)
        {
            globaldef009094 = ftos(globaldef009092.wp3);
            sprint3(self, " \"wp3\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp4)
        {
            globaldef009094 = ftos(globaldef009092.wp4);
            sprint3(self, " \"wp4\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp5)
        {
            globaldef009094 = ftos(globaldef009092.wp5);
            sprint3(self, " \"wp5\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp6)
        {
            globaldef009094 = ftos(globaldef009092.wp6);
            sprint3(self, " \"wp6\" \"", globaldef009094, "\"\n");
        }
        
        
        if(globaldef009092.wp7)
        {
            globaldef009094 = ftos(globaldef009092.wp7);
            sprint3(self, " \"wp7\" \"", globaldef009094, "\"\n");
        }
        
        sprint(self, "}\n");
        globaldef009093 = globaldef009093 + TRUE;
        globaldef009092 = globaldef009092.field000297;
        globaldef000811 = globaldef009092;
    }
    
};


// dumphcwaypoints
// function begins at statement 54213, parm_start=28629
// OP_LOAD_F	28	575	28629
// OP_BITAND	28629	709	28630
// OP_IFNOT	28630	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	575	28631
// OP_LOAD_F	28	575	28632
// OP_BITOR	28632	710	28633
// OP_STOREP_F	28633	28631	0
// OP_DONE	0	0	0
void () dumphcwaypoints = 
{
    
    if(self.field000252 & globaldef000692)
    {
        return;
    }
    
    self.field000252 = self.field000252 | globaldef000693;
};


// func002663
// function begins at statement 54222, parm_start=28634
// OP_LOAD_F	28	575	28637
// OP_BITAND	28637	710	28638
// OP_NOT_F	28638	0	28639
// OP_IFNOT	28639	2	0
// OP_RETURN	0	0	0
// OP_EQ_E	828	30	28640
// OP_IFNOT	28640	20	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28555	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	803	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8039	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28641	7	0
// OP_LOAD_S	30	130	28642
// OP_STORE_V	28642	10	0
// OP_STORE_V	28643	13	0
// OP_CALL4	941	0	0
// OP_STORE_ENT	836	828	0
// OP_STORE_F	213	28635	0
// OP_STORE_ENT	828	28634	0
// OP_LT	28635	235	28644
// OP_IFNOT	28644	191	0
// OP_EQ_E	28634	30	28645
// OP_IFNOT	28645	14	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28646	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28558	7	0
// OP_CALL2	928	0	0
// OP_ADDRESS	28	575	28647
// OP_LOAD_F	28	575	28648
// OP_LOAD_F	28	575	28649
// OP_BITAND	28649	710	28650
// OP_SUB_F	28648	28650	28651
// OP_STOREP_F	28651	28647	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28634	690	28652
// OP_LOAD_ENT	28634	622	28653
// OP_LOAD_F	28653	687	28654
// OP_STOREP_F	28654	28652	0
// OP_ADDRESS	28634	691	28655
// OP_LOAD_ENT	28634	623	28656
// OP_LOAD_F	28656	687	28657
// OP_STOREP_F	28657	28655	0
// OP_ADDRESS	28634	692	28658
// OP_LOAD_ENT	28634	624	28659
// OP_LOAD_F	28659	687	28660
// OP_STOREP_F	28660	28658	0
// OP_ADDRESS	28634	693	28661
// OP_LOAD_ENT	28634	625	28662
// OP_LOAD_F	28662	687	28663
// OP_STOREP_F	28663	28661	0
// OP_ADDRESS	28634	694	28664
// OP_LOAD_ENT	28634	626	28665
// OP_LOAD_F	28665	687	28666
// OP_STOREP_F	28666	28664	0
// OP_ADDRESS	28634	695	28667
// OP_LOAD_ENT	28634	627	28668
// OP_LOAD_F	28668	687	28669
// OP_STOREP_F	28669	28667	0
// OP_ADDRESS	28634	696	28670
// OP_LOAD_ENT	28634	628	28671
// OP_LOAD_F	28671	687	28672
// OP_STOREP_F	28672	28670	0
// OP_ADDRESS	28634	697	28673
// OP_LOAD_ENT	28634	629	28674
// OP_LOAD_F	28674	687	28675
// OP_STOREP_F	28675	28673	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28676	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28677	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28634	105	28678
// OP_STORE_V	28678	7	0
// OP_CALL2	28538	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28681	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28634	687	28682
// OP_STORE_V	28682	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	688	28683
// OP_STORE_V	28683	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28684	7	0
// OP_LOAD_S	28634	689	28685
// OP_STORE_V	28685	10	0
// OP_STORE_V	28686	13	0
// OP_CALL4	941	0	0
// OP_LOAD_F	28634	690	28687
// OP_LOAD_F	28634	691	28688
// OP_OR	28687	28688	28689
// OP_LOAD_F	28634	692	28690
// OP_OR	28689	28690	28691
// OP_LOAD_F	28634	693	28692
// OP_OR	28691	28692	28693
// OP_IFNOT	28693	44	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28694	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28634	687	28695
// OP_STORE_V	28695	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	690	28696
// OP_STORE_V	28696	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	691	28697
// OP_STORE_V	28697	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	692	28698
// OP_STORE_V	28698	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	693	28699
// OP_STORE_V	28699	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	28700	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	694	28701
// OP_LOAD_F	28634	695	28702
// OP_OR	28701	28702	28703
// OP_LOAD_F	28634	696	28704
// OP_OR	28703	28704	28705
// OP_LOAD_F	28634	697	28706
// OP_OR	28705	28706	28707
// OP_IFNOT	28707	44	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28708	7	0
// OP_CALL2	928	0	0
// OP_LOAD_F	28634	687	28709
// OP_STORE_V	28709	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	694	28710
// OP_STORE_V	28710	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	695	28711
// OP_STORE_V	28711	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	696	28712
// OP_STORE_V	28712	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	5161	10	0
// OP_CALL3	934	0	0
// OP_LOAD_F	28634	697	28713
// OP_STORE_V	28713	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28636	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28636	7	0
// OP_STORE_V	28700	10	0
// OP_CALL3	934	0	0
// OP_ADD_F	28635	214	28714
// OP_STORE_F	28714	28635	0
// OP_LOAD_ENT	28634	620	28715
// OP_STORE_ENT	28715	28634	0
// OP_STORE_ENT	28634	828	0
// OP_GOTO	-191	0	0
// OP_DONE	0	0	0
void () func002663 = 
{
    local entity globaldef009113;
    local float globaldef009114;
    local string globaldef009115;
    
    if(!(self.field000252 & globaldef000693))
    {
        return;
    }
    
    
    if(globaldef000811 == world)
    {
        sprint(self, "number of waypoints = ");
        globaldef009115 = ftos(globaldef000786);
        sprint(self, globaldef009115);
        sprint(self, "\n\n");
        sprint3(self, "	if (world.model == \"", world.model, "\")\n	{\n");
        globaldef000811 = globaldef000819;
    }
    
    globaldef009114 = FALSE;
    globaldef009113 = globaldef000811;
    
    while(globaldef009114 < MOVETYPE_BOUNCE)
    {
        
        if(globaldef009113 == world)
        {
            sprint(self, "	}\n\n");
            sprint(self, "dumped all waypoints\n");
            self.field000252 = self.field000252 - (self.field000252 & globaldef000693);
            return;
        }
        
        globaldef009113.wp0 = globaldef009113.field000299.waypointnumber;
        globaldef009113.wp1 = globaldef009113.field000300.waypointnumber;
        globaldef009113.wp2 = globaldef009113.field000301.waypointnumber;
        globaldef009113.wp3 = globaldef009113.field000302.waypointnumber;
        globaldef009113.wp4 = globaldef009113.field000303.waypointnumber;
        globaldef009113.wp5 = globaldef009113.field000304.waypointnumber;
        globaldef009113.wp6 = globaldef009113.field000305.waypointnumber;
        globaldef009113.wp7 = globaldef009113.field000306.waypointnumber;
        sprint(self, "		HCWP_Create(");
        sprint(self, "'");
        func002659(self, globaldef009113.origin);
        sprint(self, "', ");
        globaldef009115 = ftos(globaldef009113.waypointnumber);
        sprint2(self, globaldef009115, ", ");
        globaldef009115 = ftos(globaldef009113.waypointtype);
        sprint2(self, globaldef009115, ", ");
        sprint3(self, "\"", globaldef009113.waypointitem, "\");\n");
        
        if(((globaldef009113.wp0 || globaldef009113.wp1) || globaldef009113.wp2) || globaldef009113.wp3)
        {
            sprint(self, "		HCWP_SetPointers1(");
            globaldef009115 = ftos(globaldef009113.waypointnumber);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp0);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp1);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp2);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp3);
            sprint2(self, globaldef009115, ");\n");
        }
        
        
        if(((globaldef009113.wp4 || globaldef009113.wp5) || globaldef009113.wp6) || globaldef009113.wp7)
        {
            sprint(self, "		HCWP_SetPointers2(");
            globaldef009115 = ftos(globaldef009113.waypointnumber);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp4);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp5);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp6);
            sprint2(self, globaldef009115, ", ");
            globaldef009115 = ftos(globaldef009113.wp7);
            sprint2(self, globaldef009115, ");\n");
        }
        
        globaldef009114 = globaldef009114 + TRUE;
        globaldef009113 = globaldef009113.field000297;
        globaldef000811 = globaldef009113;
    }
    
};


// func002664
// function begins at statement 54443, parm_start=28717
// OP_IFNOT	836	3	0
// OP_ADDRESS	836	621	28718
// OP_STOREP_ENT	28717	28718	0
// OP_ADDRESS	28717	620	28719
// OP_STOREP_ENT	836	28719	0
// OP_ADDRESS	28717	621	28720
// OP_STOREP_ENT	30	28720	0
// OP_STORE_ENT	28717	836	0
// OP_DONE	0	0	0
void (entity globaldef009128) func002664 = 
{
    
    if(globaldef000819)
    {
        globaldef000819.field000298 = globaldef009128;
    }
    
    globaldef009128.field000297 = globaldef000819;
    globaldef009128.field000298 = world;
    globaldef000819 = globaldef009128;
};


// func002665
// function begins at statement 54452, parm_start=28722
// OP_LOAD_ENT	28722	620	28723
// OP_IFNOT	28723	5	0
// OP_LOAD_ENT	28722	620	28724
// OP_ADDRESS	28724	621	28725
// OP_LOAD_ENT	28722	621	28726
// OP_STOREP_ENT	28726	28725	0
// OP_LOAD_ENT	28722	621	28727
// OP_IFNOT	28727	6	0
// OP_LOAD_ENT	28722	621	28728
// OP_ADDRESS	28728	620	28729
// OP_LOAD_ENT	28722	620	28730
// OP_STOREP_ENT	28730	28729	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28722	620	28731
// OP_STORE_ENT	28731	836	0
// OP_DONE	0	0	0
void (entity globaldef009130) func002665 = 
{
    
    if(globaldef009130.field000297)
    {
        globaldef009130.field000297.field000298 = globaldef009130.field000298;
    }
    
    if(globaldef009130.field000298)
    {
        globaldef009130.field000298.field000297 = globaldef009130.field000297;
    }
    else
    {
        globaldef000819 = globaldef009130.field000297;
    }
    
};


// func002666
// function begins at statement 54468, parm_start=28733
// OP_LOAD_S	29	129	28733
// OP_NE_S	28733	1241	28734
// OP_IFNOT	28734	5	0
// OP_LOAD_S	29	129	28735
// OP_NE_S	28735	1236	28736
// OP_IFNOT	28736	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	194	28737
// OP_LOAD_ENT	28737	194	28738
// OP_EQ_E	28738	28	28739
// OP_IFNOT	28739	35	0
// OP_LOAD_F	28	688	28740
// OP_EQ_F	28740	718	28741
// OP_IFNOT	28741	5	0
// OP_ADDRESS	29	371	28742
// OP_SUB_F	31	214	28743
// OP_STOREP_F	28743	28742	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	688	28744
// OP_EQ_F	28744	720	28745
// OP_IFNOT	28745	5	0
// OP_ADDRESS	29	371	28746
// OP_SUB_F	31	214	28747
// OP_STOREP_F	28747	28746	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	688	28748
// OP_EQ_F	28748	719	28749
// OP_IFNOT	28749	5	0
// OP_ADDRESS	29	371	28750
// OP_SUB_F	31	214	28751
// OP_STOREP_F	28751	28750	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	688	28752
// OP_EQ_F	28752	723	28753
// OP_IFNOT	28753	5	0
// OP_ADDRESS	29	371	28754
// OP_SUB_F	31	214	28755
// OP_STOREP_F	28755	28754	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	688	28756
// OP_EQ_F	28756	717	28757
// OP_IFNOT	28757	4	0
// OP_ADDRESS	29	371	28758
// OP_SUB_F	31	214	28759
// OP_STOREP_F	28759	28758	0
// OP_ADDRESS	29	586	28760
// OP_STOREP_ENT	28	28760	0
// OP_LOAD_F	29	575	28761
// OP_BITAND	28761	703	28762
// OP_IFNOT	28762	9	0
// OP_LOAD_ENT	29	622	28763
// OP_IFNOT	28763	5	0
// OP_LOAD_ENT	29	622	28764
// OP_STORE_V	28764	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1202	0	0
// OP_ADDRESS	29	622	28765
// OP_STOREP_ENT	28	28765	0
// OP_DONE	0	0	0
void () func002666 = 
{
    
    if(other.classname != "bot")
    {
        
        if(other.classname != "player")
        {
            return;
        }
        
    }
    
    
    if(other.goalentity.goalentity == self)
    {
        if(self.waypointtype == globaldef000701)
        {
            other.search_time = time - TRUE;
        }
        else
        {
            if(self.waypointtype == globaldef000703)
            {
                other.search_time = time - TRUE;
            }
            else
            {
                if(self.waypointtype == globaldef000702)
                {
                    other.search_time = time - TRUE;
                }
                else
                {
                    if(self.waypointtype == globaldef000706)
                    {
                        other.search_time = time - TRUE;
                    }
                    else
                    {
                        
                        if(self.waypointtype == globaldef000700)
                        {
                            other.search_time = time - TRUE;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    other.field000263 = self;
    
    if(other.field000252 & globaldef000686)
    {
        
        if(other.field000299)
        {
            func002685(other.field000299, self);
        }
        
        other.field000299 = self;
    }
    
};


// waypoint
// function begins at statement 54527, parm_start=28767
// OP_ADDRESS	28	104	28767
// OP_STOREP_F	238	28767	0
// OP_ADDRESS	28	146	28768
// OP_STOREP_FNC	28732	28768	0
// OP_STORE_V	28	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	23200	10	0
// OP_CALL3	455	0	0
// OP_LOAD_F	28	687	28769
// OP_GT	28769	803	28770
// OP_IFNOT	28770	3	0
// OP_LOAD_F	28	687	28771
// OP_STORE_F	28771	803	0
// OP_STORE_V	28	4	0
// OP_CALL1	28716	0	0
// OP_STORE_F	214	806	0
// OP_DONE	0	0	0
void () waypoint = 
{
    self.solid = SOLID_TRIGGER;
    self.touch = func002666;
    setsize(self, '-4 -4 -4', '4 4 4');
    
    if(self.waypointnumber > globaldef000786)
    {
        globaldef000786 = self.waypointnumber;
    }
    
    func002664(self);
    globaldef000789 = TRUE;
};


// func002668
// function begins at statement 54544, parm_start=28772
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	28778	0
// OP_ADDRESS	28778	129	28779
// OP_STOREP_S	23508	28779	0
// OP_ADDRESS	28778	104	28780
// OP_STOREP_F	238	28780	0
// OP_ADDRESS	28778	146	28781
// OP_STOREP_FNC	28732	28781	0
// OP_ADDRESS	28778	687	28782
// OP_STOREP_F	28775	28782	0
// OP_ADDRESS	28778	688	28783
// OP_STOREP_F	28776	28783	0
// OP_ADDRESS	28778	689	28784
// OP_STOREP_S	28777	28784	0
// OP_STORE_V	28778	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	23200	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	28778	4	0
// OP_STORE_V	28772	7	0
// OP_CALL2	453	0	0
// OP_GT	28775	803	28785
// OP_IFNOT	28785	2	0
// OP_STORE_F	28775	803	0
// OP_STORE_V	28778	4	0
// OP_CALL1	28716	0	0
// OP_STORE_F	214	807	0
// OP_DONE	0	0	0
void (vector globaldef009133, float globaldef009137, float globaldef009138, string globaldef009139) func002668 = 
{
    local entity globaldef009140;
    globaldef009140 = spawn();
    globaldef009140.classname = "waypoint";
    globaldef009140.solid = SOLID_TRIGGER;
    globaldef009140.touch = func002666;
    globaldef009140.waypointnumber = globaldef009137;
    globaldef009140.waypointtype = globaldef009138;
    globaldef009140.waypointitem = globaldef009139;
    setsize(globaldef009140, '-4 -4 -4', '4 4 4');
    setorigin(globaldef009140, globaldef009133);
    
    if(globaldef009137 > globaldef000786)
    {
        globaldef000786 = globaldef009137;
    }
    
    func002664(globaldef009140);
    globaldef000790 = TRUE;
};


// func002669
// function begins at statement 54572, parm_start=28786
// OP_STORE_V	28786	4	0
// OP_CALL1	28251	0	0
// OP_STORE_ENT	1	28791	0
// OP_NOT_ENT	28791	0	28793
// OP_IFNOT	28793	8	0
// OP_STORE_V	28786	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28792	0
// OP_STORE_V	28794	4	0
// OP_STORE_V	28792	7	0
// OP_STORE_V	2127	10	0
// OP_CALL3	992	0	0
// OP_ADDRESS	28791	690	28795
// OP_STOREP_F	28787	28795	0
// OP_ADDRESS	28791	691	28796
// OP_STOREP_F	28788	28796	0
// OP_ADDRESS	28791	692	28797
// OP_STOREP_F	28789	28797	0
// OP_ADDRESS	28791	693	28798
// OP_STOREP_F	28790	28798	0
// OP_DONE	0	0	0
void (float globaldef009141, float globaldef009142, float globaldef009143, float globaldef009144, float globaldef009145) func002669 = 
{
    local entity globaldef009146;
    local string globaldef009147;
    globaldef009146 = func002650(globaldef009141);
    
    if(!globaldef009146)
    {
        globaldef009147 = ftos(globaldef009141);
        objerror3("HCWP wpp1: no waypoint with number ", globaldef009147, "\n");
    }
    
    globaldef009146.wp0 = globaldef009142;
    globaldef009146.wp1 = globaldef009143;
    globaldef009146.wp2 = globaldef009144;
    globaldef009146.wp3 = globaldef009145;
};


// func002670
// function begins at statement 54593, parm_start=28799
// OP_STORE_V	28799	4	0
// OP_CALL1	28251	0	0
// OP_STORE_ENT	1	28804	0
// OP_NOT_ENT	28804	0	28806
// OP_IFNOT	28806	8	0
// OP_STORE_V	28799	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	28805	0
// OP_STORE_V	28807	4	0
// OP_STORE_V	28805	7	0
// OP_STORE_V	2127	10	0
// OP_CALL3	992	0	0
// OP_ADDRESS	28804	694	28808
// OP_STOREP_F	28800	28808	0
// OP_ADDRESS	28804	695	28809
// OP_STOREP_F	28801	28809	0
// OP_ADDRESS	28804	696	28810
// OP_STOREP_F	28802	28810	0
// OP_ADDRESS	28804	697	28811
// OP_STOREP_F	28803	28811	0
// OP_DONE	0	0	0
void (float globaldef009149, float globaldef009150, float globaldef009151, float globaldef009152, float globaldef009153) func002670 = 
{
    local entity globaldef009154;
    local string globaldef009155;
    globaldef009154 = func002650(globaldef009149);
    
    if(!globaldef009154)
    {
        globaldef009155 = ftos(globaldef009149);
        objerror3("HCWP p2: no waypoint with number ", globaldef009155, "\n");
    }
    
    globaldef009154.wp4 = globaldef009150;
    globaldef009154.wp5 = globaldef009151;
    globaldef009154.wp6 = globaldef009152;
    globaldef009154.wp7 = globaldef009153;
};


// func002671
// function begins at statement 54614, parm_start=28813
// OP_ADD_F	803	214	28814
// OP_STORE_F	28814	803	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	28813	0
// OP_ADDRESS	28813	129	28815
// OP_STOREP_S	23508	28815	0
// OP_ADDRESS	28813	104	28816
// OP_STOREP_F	238	28816	0
// OP_ADDRESS	28813	146	28817
// OP_STOREP_FNC	28732	28817	0
// OP_ADDRESS	28813	687	28818
// OP_STOREP_F	803	28818	0
// OP_STORE_V	28813	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	23200	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	28813	4	0
// OP_CALL1	28716	0	0
// OP_GE	803	804	28819
// OP_EQ_F	805	727	28820
// OP_AND	28819	28820	28821
// OP_IFNOT	28821	2	0
// OP_CALL0	28143	0	0
// OP_RETURN	28813	0	0
// OP_DONE	0	0	0
entity () func002671 = 
{
    local entity globaldef009158;
    globaldef000786 = globaldef000786 + TRUE;
    globaldef009158 = spawn();
    globaldef009158.classname = "waypoint";
    globaldef009158.solid = SOLID_TRIGGER;
    globaldef009158.touch = func002666;
    globaldef009158.waypointnumber = globaldef000786;
    setsize(globaldef009158, '-4 -4 -4', '4 4 4');
    func002664(globaldef009158);
    
    if((globaldef000786 >= globaldef000787) && (globaldef000788 == globaldef000710))
    {
        func002639();
    }
    
    return globaldef009158;
};


// DestroyWaypoint
// function begins at statement 54639, parm_start=28823
// OP_STORE_V	28823	4	0
// OP_CALL1	28721	0	0
// OP_STORE_V	28823	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void (entity globaldef009160) DestroyWaypoint = 
{
    func002665(globaldef009160);
    remove(globaldef009160);
};


// func002673
// function begins at statement 54644, parm_start=28824
// OP_LOAD_ENT	28825	622	28826
// OP_EQ_E	28826	28824	28827
// OP_IFNOT	28827	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	623	28828
// OP_EQ_E	28828	28824	28829
// OP_IFNOT	28829	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	624	28830
// OP_EQ_E	28830	28824	28831
// OP_IFNOT	28831	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	625	28832
// OP_EQ_E	28832	28824	28833
// OP_IFNOT	28833	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	626	28834
// OP_EQ_E	28834	28824	28835
// OP_IFNOT	28835	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	627	28836
// OP_EQ_E	28836	28824	28837
// OP_IFNOT	28837	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	628	28838
// OP_EQ_E	28838	28824	28839
// OP_IFNOT	28839	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	28825	629	28840
// OP_EQ_E	28840	28824	28841
// OP_IFNOT	28841	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef009161, entity globaldef009162) func002673 = 
{
    
    if(globaldef009162.field000299 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000300 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000301 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000302 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000303 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000304 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000305 == globaldef009161)
    {
        return TRUE;
    }
    
    
    if(globaldef009162.field000306 == globaldef009161)
    {
        return TRUE;
    }
    
    return FALSE;
};


// func002674
// function begins at statement 54678, parm_start=28843
// OP_STORE_F	214	28843	0
// OP_STORE_F	738	28844	0
// OP_LOAD_ENT	28	622	28856
// OP_STORE_ENT	28856	28849	0
// OP_STORE_F	213	28846	0
// OP_STORE_ENT	836	28847	0
// OP_IFNOT	28847	56	0
// OP_LOAD_F	28847	688	28857
// OP_NE_F	28857	719	28858
// OP_IFNOT	28858	50	0
// OP_LOAD_V	28847	105	28859
// OP_STORE_V	28859	28850	0
// OP_LOAD_V	28	105	28862
// OP_STORE_V	28862	28853	0
// OP_SUB_F	28850	28853	28865
// OP_STORE_V	28865	4	0
// OP_CALL1	488	0	0
// OP_LT	1	738	28866
// OP_IFNOT	28866	41	0
// OP_SUB_F	28851	28854	28867
// OP_STORE_V	28867	4	0
// OP_CALL1	488	0	0
// OP_LT	1	738	28868
// OP_IFNOT	28868	36	0
// OP_SUB_F	28852	28855	28869
// OP_STORE_V	28869	4	0
// OP_CALL1	488	0	0
// OP_LT	1	738	28870
// OP_IFNOT	28870	31	0
// OP_LOAD_V	28847	105	28871
// OP_LOAD_V	28	105	28874
// OP_SUB_V	28871	28874	28877
// OP_STORE_V	28877	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	28845	0
// OP_LT	28845	28844	28880
// OP_IFNOT	28880	23	0
// OP_STORE_V	28847	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1118	0	0
// OP_IFNOT	1	19	0
// OP_LOAD_ENT	28	622	28881
// OP_IFNOT	28881	14	0
// OP_LOAD_ENT	28	622	28882
// OP_STORE_V	28882	4	0
// OP_STORE_V	28847	7	0
// OP_CALL2	1118	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_ENT	28	622	28883
// OP_STORE_V	28883	4	0
// OP_STORE_V	28847	7	0
// OP_CALL2	1202	0	0
// OP_STORE_ENT	28847	28849	0
// OP_STORE_F	28845	28844	0
// OP_STORE_F	213	28843	0
// OP_GOTO	4	0	0
// OP_STORE_ENT	28847	28849	0
// OP_STORE_F	28845	28844	0
// OP_STORE_F	213	28843	0
// OP_LOAD_ENT	28847	620	28884
// OP_STORE_ENT	28884	28847	0
// OP_GOTO	-55	0	0
// OP_ADDRESS	28	622	28885
// OP_STOREP_ENT	28849	28885	0
// OP_RETURN	28843	0	0
// OP_DONE	0	0	0
float () func002674 = 
{
    local float globaldef009164;
    local float globaldef009165;
    local float globaldef009166;
    local float globaldef009167;
    local entity globaldef009168;
    local entity globaldef009169;
    local entity globaldef009170;
    local vector globaldef009171;
    local vector globaldef009175;
    globaldef009164 = TRUE;
    globaldef009165 = GLOBALDEF721_250;
    globaldef009170 = self.field000299;
    globaldef009167 = FALSE;
    globaldef009168 = globaldef000819;
    
    while(globaldef009168)
    {
        
        if(globaldef009168.waypointtype != globaldef000702)
        {
            globaldef009171 = globaldef009168.origin;
            globaldef009175 = self.origin;
            
            if((fabs(globaldef009171_x - globaldef009175_x)) < GLOBALDEF721_250)
            {
                
                if((fabs(globaldef009171_y - globaldef009175_y)) < GLOBALDEF721_250)
                {
                    
                    if((fabs(globaldef009171_z - globaldef009175_z)) < GLOBALDEF721_250)
                    {
                        globaldef009166 = vlen(globaldef009168.origin - self.origin);
                        
                        if(globaldef009166 < globaldef009165)
                        {
                            
                            if(func002466(globaldef009168, self))
                            {
                                if(self.field000299)
                                {
                                    
                                    if(func002466(self.field000299, globaldef009168))
                                    {
                                        func002685(self.field000299, globaldef009168);
                                        globaldef009170 = globaldef009168;
                                        globaldef009165 = globaldef009166;
                                        globaldef009164 = FALSE;
                                    }
                                    
                                }
                                else
                                {
                                    globaldef009170 = globaldef009168;
                                    globaldef009165 = globaldef009166;
                                    globaldef009164 = FALSE;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        globaldef009168 = globaldef009168.field000297;
    }
    
    self.field000299 = globaldef009170;
    return globaldef009164;
};


// func002675
// function begins at statement 54744, parm_start=28886
// OP_NE_F	805	727	28892
// OP_IFNOT	28892	2	0
// OP_RETURN	0	0	0
// OP_CALL0	28812	0	0
// OP_STORE_ENT	1	28887	0
// OP_LOAD_V	28886	580	28893
// OP_STORE_V	28893	28889	0
// OP_LOAD_F	28886	137	28896
// OP_ADD_F	28891	28896	28897
// OP_ADD_F	28897	216	28898
// OP_STORE_F	28898	28891	0
// OP_STORE_V	28887	4	0
// OP_STORE_V	28889	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28887	622	28899
// OP_LOAD_ENT	28886	622	28900
// OP_STOREP_ENT	28900	28899	0
// OP_ADDRESS	28886	622	28901
// OP_STOREP_ENT	28887	28901	0
// OP_ADDRESS	28887	630	28902
// OP_STORE_V	28887	4	0
// OP_LOAD_ENT	28887	622	28903
// OP_STORE_V	28903	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28902	0
// OP_ADDRESS	28887	688	28904
// OP_STOREP_F	718	28904	0
// OP_DONE	0	0	0
void (entity globaldef009179) func002675 = 
{
    local entity globaldef009180;
    local float globaldef009181;
    local vector globaldef009182;
    
    if(globaldef000788 != globaldef000710)
    {
        return;
    }
    
    globaldef009180 = func002671();
    globaldef009182 = globaldef009179.field000257;
    globaldef009182_z = (globaldef009182_z + globaldef009179.mins_z) + FL_SWIM;
    setorigin(globaldef009180, globaldef009182);
    globaldef009180.field000299 = globaldef009179.field000299;
    globaldef009179.field000299 = globaldef009180;
    globaldef009180.field000307 = func002655(globaldef009180, globaldef009180.field000299);
    globaldef009180.waypointtype = globaldef000701;
};


// func002676
// function begins at statement 54772, parm_start=28905
// OP_NE_F	805	727	28911
// OP_IFNOT	28911	2	0
// OP_RETURN	0	0	0
// OP_CALL0	28812	0	0
// OP_STORE_ENT	1	28907	0
// OP_LOAD_V	28906	94	28912
// OP_LOAD_V	28906	98	28915
// OP_ADD_V	28912	28915	28918
// OP_MUL_VF	28918	539	28921
// OP_STORE_V	28921	28908	0
// OP_STORE_V	28908	4	0
// OP_CALL1	1111	0	0
// OP_ADD_F	1	216	28924
// OP_STORE_F	28924	28910	0
// OP_STORE_V	28907	4	0
// OP_STORE_V	28908	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28907	622	28925
// OP_LOAD_ENT	28905	622	28926
// OP_STOREP_ENT	28926	28925	0
// OP_ADDRESS	28905	622	28927
// OP_STOREP_ENT	28907	28927	0
// OP_ADDRESS	28907	630	28928
// OP_STORE_V	28907	4	0
// OP_LOAD_ENT	28907	622	28929
// OP_STORE_V	28929	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28928	0
// OP_ADDRESS	28907	688	28930
// OP_STOREP_F	719	28930	0
// OP_ADDRESS	28906	622	28931
// OP_STOREP_ENT	28907	28931	0
// OP_ADDRESS	28907	181	28932
// OP_STOREP_ENT	28906	28932	0
// OP_DONE	0	0	0
void (entity globaldef009186, entity globaldef009187) func002676 = 
{
    local entity globaldef009188;
    local vector globaldef009189;
    
    if(globaldef000788 != globaldef000710)
    {
        return;
    }
    
    globaldef009188 = func002671();
    globaldef009189 = (globaldef009187.absmin + globaldef009187.absmax) * RA_PLAYERSTATTIME;
    globaldef009189_z = func002457(globaldef009189) + FL_SWIM;
    setorigin(globaldef009188, globaldef009189);
    globaldef009188.field000299 = globaldef009186.field000299;
    globaldef009186.field000299 = globaldef009188;
    globaldef009188.field000307 = func002655(globaldef009188, globaldef009188.field000299);
    globaldef009188.waypointtype = globaldef000702;
    globaldef009187.field000299 = globaldef009188;
    globaldef009188.enemy = globaldef009187;
};


// func002677
// function begins at statement 54807, parm_start=28933
// OP_NE_F	805	727	28940
// OP_IFNOT	28940	2	0
// OP_RETURN	0	0	0
// OP_CALL0	28812	0	0
// OP_STORE_ENT	1	28935	0
// OP_LOAD_V	28934	443	28941
// OP_LOAD_V	28934	134	28944
// OP_LOAD_V	28934	138	28947
// OP_ADD_V	28944	28947	28950
// OP_MUL_VF	28950	539	28953
// OP_ADD_V	28941	28953	28956
// OP_STORE_V	28956	28937	0
// OP_LOAD_F	28934	141	28959
// OP_LOAD_F	28934	442	28960
// OP_LOAD_F	28934	446	28961
// OP_SUB_F	28960	28961	28962
// OP_SUB_F	28959	28962	28963
// OP_ADD_F	28963	216	28964
// OP_STORE_F	28964	28939	0
// OP_STORE_V	28935	4	0
// OP_STORE_V	28937	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28935	622	28965
// OP_LOAD_ENT	28933	622	28966
// OP_STOREP_ENT	28966	28965	0
// OP_ADDRESS	28935	630	28967
// OP_STORE_V	28935	4	0
// OP_LOAD_ENT	28935	622	28968
// OP_STORE_V	28968	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28967	0
// OP_ADDRESS	28933	622	28969
// OP_STOREP_ENT	28935	28969	0
// OP_ADDRESS	28935	688	28970
// OP_STOREP_F	723	28970	0
// OP_ADDRESS	28934	622	28971
// OP_STOREP_ENT	28935	28971	0
// OP_ADDRESS	28935	181	28972
// OP_STOREP_ENT	28934	28972	0
// OP_CALL0	28812	0	0
// OP_STORE_ENT	1	28936	0
// OP_LOAD_V	28934	443	28973
// OP_LOAD_V	28934	134	28976
// OP_LOAD_V	28934	138	28979
// OP_ADD_V	28976	28979	28982
// OP_MUL_VF	28982	539	28985
// OP_ADD_V	28973	28985	28988
// OP_STORE_V	28988	28937	0
// OP_LOAD_F	28934	141	28991
// OP_ADD_F	28991	216	28992
// OP_STORE_F	28992	28939	0
// OP_STORE_V	28936	4	0
// OP_STORE_V	28937	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28936	622	28993
// OP_STOREP_ENT	28935	28993	0
// OP_ADDRESS	28936	630	28994
// OP_STORE_V	28936	4	0
// OP_LOAD_ENT	28936	622	28995
// OP_STORE_V	28995	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	28994	0
// OP_ADDRESS	28936	688	28996
// OP_STOREP_F	717	28996	0
// OP_ADDRESS	28934	623	28997
// OP_STOREP_ENT	28936	28997	0
// OP_ADDRESS	28936	181	28998
// OP_STOREP_ENT	28934	28998	0
// OP_DONE	0	0	0
void (entity globaldef009193, entity globaldef009194) func002677 = 
{
    local entity globaldef009195;
    local entity globaldef009196;
    local vector globaldef009197;
    
    if(globaldef000788 != globaldef000710)
    {
        return;
    }
    
    globaldef009195 = func002671();
    globaldef009197 = globaldef009194.pos2 + ((globaldef009194.mins + globaldef009194.maxs) * RA_PLAYERSTATTIME);
    globaldef009197_z = (globaldef009194.maxs_z - (globaldef009194.pos1_z - globaldef009194.pos2_z)) + FL_SWIM;
    setorigin(globaldef009195, globaldef009197);
    globaldef009195.field000299 = globaldef009193.field000299;
    globaldef009195.field000307 = func002655(globaldef009195, globaldef009195.field000299);
    globaldef009193.field000299 = globaldef009195;
    globaldef009195.waypointtype = globaldef000706;
    globaldef009194.field000299 = globaldef009195;
    globaldef009195.enemy = globaldef009194;
    globaldef009196 = func002671();
    globaldef009197 = globaldef009194.pos2 + ((globaldef009194.mins + globaldef009194.maxs) * RA_PLAYERSTATTIME);
    globaldef009197_z = globaldef009194.maxs_z + FL_SWIM;
    setorigin(globaldef009196, globaldef009197);
    globaldef009196.field000299 = globaldef009195;
    globaldef009196.field000307 = func002655(globaldef009196, globaldef009196.field000299);
    globaldef009196.waypointtype = globaldef000700;
    globaldef009194.field000300 = globaldef009196;
    globaldef009196.enemy = globaldef009194;
};


// func002678
// function begins at statement 54876, parm_start=29000
// OP_NE_F	805	727	29006
// OP_IFNOT	29006	2	0
// OP_RETURN	0	0	0
// OP_CALL0	28812	0	0
// OP_STORE_ENT	1	29002	0
// OP_ADDRESS	29002	622	29007
// OP_LOAD_ENT	29000	622	29008
// OP_STOREP_ENT	29008	29007	0
// OP_ADDRESS	29000	622	29009
// OP_STOREP_ENT	29002	29009	0
// OP_LOAD_V	29001	94	29010
// OP_LOAD_V	29001	98	29013
// OP_ADD_V	29010	29013	29016
// OP_MUL_VF	29016	539	29019
// OP_STORE_V	29019	29003	0
// OP_LOAD_F	29001	97	29022
// OP_ADD_F	29022	216	29023
// OP_STORE_F	29023	29005	0
// OP_STORE_V	29002	4	0
// OP_STORE_V	29003	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	29002	630	29024
// OP_STORE_V	29002	4	0
// OP_LOAD_ENT	29002	622	29025
// OP_STORE_V	29025	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29024	0
// OP_ADDRESS	29002	688	29026
// OP_STOREP_F	720	29026	0
// OP_ADDRESS	29001	622	29027
// OP_STOREP_ENT	29002	29027	0
// OP_ADDRESS	29002	181	29028
// OP_STOREP_ENT	29001	29028	0
// OP_ADDRESS	29002	689	29029
// OP_LOAD_S	29001	129	29030
// OP_STOREP_S	29030	29029	0
// OP_DONE	0	0	0
void (entity globaldef009202, entity globaldef009203) func002678 = 
{
    local entity globaldef009204;
    local vector globaldef009205;
    
    if(globaldef000788 != globaldef000710)
    {
        return;
    }
    
    globaldef009204 = func002671();
    globaldef009204.field000299 = globaldef009202.field000299;
    globaldef009202.field000299 = globaldef009204;
    globaldef009205 = (globaldef009203.absmin + globaldef009203.absmax) * RA_PLAYERSTATTIME;
    globaldef009205_z = globaldef009203.absmin_z + FL_SWIM;
    setorigin(globaldef009204, globaldef009205);
    globaldef009204.field000307 = func002655(globaldef009204, globaldef009204.field000299);
    globaldef009204.waypointtype = globaldef000703;
    globaldef009203.field000299 = globaldef009204;
    globaldef009204.enemy = globaldef009203;
    globaldef009204.waypointitem = globaldef009203.classname;
};


// func002679
// function begins at statement 54913, parm_start=29032
// OP_GT	803	804	29036
// OP_IFNOT	29036	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	585	29037
// OP_BITAND	29037	702	29038
// OP_NOT_F	29038	0	29039
// OP_LOAD_F	28	584	29040
// OP_BITAND	29040	218	29041
// OP_NOT_F	29041	0	29042
// OP_AND	29039	29042	29043
// OP_IFNOT	29043	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	575	29044
// OP_BITAND	29044	702	29045
// OP_NOT_F	29045	0	29046
// OP_LOAD_F	28	182	29047
// OP_BITAND	29047	218	29048
// OP_NOT_F	29048	0	29049
// OP_AND	29046	29049	29050
// OP_IFNOT	29050	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	182	29051
// OP_BITAND	29051	223	29052
// OP_NOT_F	29052	0	29053
// OP_LOAD_F	28	182	29054
// OP_BITAND	29054	218	29055
// OP_NOT_F	29055	0	29056
// OP_AND	29053	29056	29057
// OP_IFNOT	29057	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1114	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1113	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	28	580	29058
// OP_STORE_V	29058	29033	0
// OP_LOAD_F	28	137	29061
// OP_ADD_F	29035	29061	29062
// OP_ADD_F	29062	214	29063
// OP_STORE_F	29063	29035	0
// OP_STORE_V	29033	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	29032	0
// OP_NE_F	29032	276	29064
// OP_IFNOT	29064	4	0
// OP_NE_F	29032	278	29065
// OP_IFNOT	29065	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	186	29066
// OP_GT	29066	31	29067
// OP_IFNOT	29067	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	622	29068
// OP_NOT_ENT	29068	0	29069
// OP_IFNOT	29069	3	0
// OP_CALL0	28842	0	0
// OP_RETURN	1	0	0
// OP_LOAD_ENT	28	622	29070
// OP_STORE_V	29070	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1118	0	0
// OP_NOT_F	1	0	29071
// OP_IFNOT	29071	3	0
// OP_CALL0	28842	0	0
// OP_RETURN	1	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () func002679 = 
{
    local float globaldef009210;
    local vector globaldef009211;
    
    if(globaldef000786 > globaldef000787)
    {
        return FALSE;
    }
    
    
    if((!(self.field000262 & globaldef000685)) && (!(self.field000261 & FL_INWATER)))
    {
        return FALSE;
    }
    
    
    if((!(self.field000252 & globaldef000685)) && (!(self.flags & FL_INWATER)))
    {
        return FALSE;
    }
    
    
    if((!(self.flags & FL_ONGROUND)) && (!(self.flags & FL_INWATER)))
    {
        return FALSE;
    }
    
    
    if(func002460(self))
    {
        return FALSE;
    }
    
    
    if(func002459(self))
    {
        return FALSE;
    }
    
    globaldef009211 = self.field000257;
    globaldef009211_z = (globaldef009211_z + self.mins_z) + TRUE;
    globaldef009210 = pointcontents(globaldef009211);
    
    if(globaldef009210 != CONTENT_EMPTY)
    {
        
        if(globaldef009210 != CONTENT_WATER)
        {
            return FALSE;
        }
        
    }
    
    
    if(self.teleport_time > time)
    {
        return FALSE;
    }
    
    
    if(!self.field000299)
    {
        return func002674();
    }
    
    
    if(!func002466(self.field000299, self))
    {
        return func002674();
    }
    
    return FALSE;
};


// func002680
// function begins at statement 54984, parm_start=29072
// OP_NE_F	805	727	29072
// OP_IFNOT	29072	2	0
// OP_RETURN	0	0	0
// OP_CALL0	29031	0	0
// OP_IFNOT	1	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1197	0	0
// OP_LOAD_ENT	28	622	29073
// OP_STORE_V	29073	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1116	0	0
// OP_NOT_F	1	0	29074
// OP_IFNOT	29074	3	0
// OP_ADDRESS	28	622	29075
// OP_STOREP_ENT	30	29075	0
// OP_DONE	0	0	0
void () func002680 = 
{
    
    if(globaldef000788 != globaldef000710)
    {
        return;
    }
    
    
    if(func002679())
    {
        func002675(self);
    }
    
    
    if(!func002462(self.field000299, self))
    {
        self.field000299 = world;
    }
    
};


// func002681
// function begins at statement 55000, parm_start=29077
// OP_GE	808	741	29088
// OP_IFNOT	29088	2	0
// OP_RETURN	0	0	0
// OP_LOAD_FNC	29080	547	29089
// OP_NOT_FNC	29089	0	29090
// OP_IFNOT	29090	3	0
// OP_STORE_V	29091	4	0
// OP_CALL1	461	0	0
// OP_NOT_ENT	29078	0	29092
// OP_IFNOT	29092	3	0
// OP_STORE_V	29093	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	29077	4	0
// OP_STORE_V	29078	7	0
// OP_CALL2	28428	0	0
// OP_ADD_F	29079	1	29094
// OP_STORE_F	29094	29085	0
// OP_LOAD_FNC	29080	547	29095
// OP_STORE_V	29078	4	0
// OP_STORE_V	29085	7	0
// OP_STORE_V	29080	10	0
// OP_CALL3	29095	0	0
// OP_NOT_F	1	0	29096
// OP_IFNOT	29096	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	836	29083	0
// OP_IFNOT	29083	6	0
// OP_ADDRESS	29083	661	29097
// OP_STOREP_F	213	29097	0
// OP_LOAD_ENT	29083	620	29098
// OP_STORE_ENT	29098	29083	0
// OP_GOTO	-5	0	0
// OP_ADDRESS	29078	660	29099
// OP_STOREP_F	29085	29099	0
// OP_ADDRESS	29078	658	29100
// OP_STOREP_ENT	30	29100	0
// OP_ADDRESS	29078	659	29101
// OP_STOREP_ENT	30	29101	0
// OP_STORE_ENT	29078	29081	0
// OP_STORE_ENT	29078	29082	0
// OP_ADDRESS	29078	661	29102
// OP_STOREP_F	214	29102	0
// OP_STORE_F	213	29086	0
// OP_IFNOT	29081	393	0
// OP_STORE_ENT	29081	29083	0
// OP_LOAD_ENT	29083	658	29103
// OP_IFNOT	29103	5	0
// OP_LOAD_ENT	29083	658	29104
// OP_ADDRESS	29104	659	29105
// OP_STOREP_ENT	30	29105	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	29082	0
// OP_LOAD_ENT	29083	658	29106
// OP_STORE_ENT	29106	29081	0
// OP_ADDRESS	29083	658	29107
// OP_STOREP_ENT	30	29107	0
// OP_ADDRESS	29083	659	29108
// OP_STOREP_ENT	30	29108	0
// OP_ADDRESS	29083	661	29109
// OP_STOREP_F	213	29109	0
// OP_LOAD_ENT	29083	622	29110
// OP_STORE_ENT	29110	29084	0
// OP_IFNOT	29084	71	0
// OP_LOAD_F	29083	660	29111
// OP_LOAD_F	29083	630	29112
// OP_ADD_F	29111	29112	29113
// OP_STORE_F	29113	29085	0
// OP_LOAD_FNC	29080	547	29114
// OP_STORE_V	29084	4	0
// OP_STORE_V	29085	7	0
// OP_STORE_V	29080	10	0
// OP_CALL3	29114	0	0
// OP_IFNOT	1	61	0
// OP_ADDRESS	29084	660	29115
// OP_STOREP_F	29085	29115	0
// OP_LOAD_F	29084	661	29116
// OP_IFNOT	29116	19	0
// OP_LOAD_ENT	29084	658	29117
// OP_IFNOT	29117	6	0
// OP_LOAD_ENT	29084	658	29118
// OP_ADDRESS	29118	659	29119
// OP_LOAD_ENT	29084	659	29120
// OP_STOREP_ENT	29120	29119	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	659	29121
// OP_STORE_ENT	29121	29082	0
// OP_LOAD_ENT	29084	659	29122
// OP_IFNOT	29122	6	0
// OP_LOAD_ENT	29084	659	29123
// OP_ADDRESS	29123	658	29124
// OP_LOAD_ENT	29084	658	29125
// OP_STOREP_ENT	29125	29124	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	658	29126
// OP_STORE_ENT	29126	29081	0
// OP_STORE_ENT	29082	29077	0
// OP_STORE_F	214	29087	0
// OP_IFNOT	29077	25	0
// OP_LOAD_F	29077	660	29127
// OP_LOAD_F	29084	660	29128
// OP_LT	29127	29128	29129
// OP_IFNOT	29129	18	0
// OP_ADDRESS	29084	658	29130
// OP_LOAD_ENT	29077	658	29131
// OP_STOREP_ENT	29131	29130	0
// OP_ADDRESS	29084	659	29132
// OP_STOREP_ENT	29077	29132	0
// OP_LOAD_ENT	29077	658	29133
// OP_IFNOT	29133	5	0
// OP_LOAD_ENT	29077	658	29134
// OP_ADDRESS	29134	659	29135
// OP_STOREP_ENT	29084	29135	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29077	658	29136
// OP_STOREP_ENT	29084	29136	0
// OP_STORE_F	213	29087	0
// OP_STORE_ENT	30	29077	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29077	659	29137
// OP_STORE_ENT	29137	29077	0
// OP_GOTO	-24	0	0
// OP_IFNOT	29087	9	0
// OP_NOT_ENT	29081	0	29138
// OP_IFNOT	29138	2	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29084	659	29139
// OP_STOREP_ENT	30	29139	0
// OP_ADDRESS	29084	658	29140
// OP_STOREP_ENT	29081	29140	0
// OP_STORE_ENT	29084	29081	0
// OP_ADDRESS	29084	661	29141
// OP_STOREP_F	214	29141	0
// OP_LOAD_ENT	29083	623	29142
// OP_STORE_ENT	29142	29084	0
// OP_IFNOT	29084	71	0
// OP_LOAD_F	29083	660	29143
// OP_LOAD_F	29083	631	29144
// OP_ADD_F	29143	29144	29145
// OP_STORE_F	29145	29085	0
// OP_LOAD_FNC	29080	547	29146
// OP_STORE_V	29084	4	0
// OP_STORE_V	29085	7	0
// OP_STORE_V	29080	10	0
// OP_CALL3	29146	0	0
// OP_IFNOT	1	61	0
// OP_ADDRESS	29084	660	29147
// OP_STOREP_F	29085	29147	0
// OP_LOAD_F	29084	661	29148
// OP_IFNOT	29148	19	0
// OP_LOAD_ENT	29084	658	29149
// OP_IFNOT	29149	6	0
// OP_LOAD_ENT	29084	658	29150
// OP_ADDRESS	29150	659	29151
// OP_LOAD_ENT	29084	659	29152
// OP_STOREP_ENT	29152	29151	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	659	29153
// OP_STORE_ENT	29153	29082	0
// OP_LOAD_ENT	29084	659	29154
// OP_IFNOT	29154	6	0
// OP_LOAD_ENT	29084	659	29155
// OP_ADDRESS	29155	658	29156
// OP_LOAD_ENT	29084	658	29157
// OP_STOREP_ENT	29157	29156	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	658	29158
// OP_STORE_ENT	29158	29081	0
// OP_STORE_ENT	29082	29077	0
// OP_STORE_F	214	29087	0
// OP_IFNOT	29077	25	0
// OP_LOAD_F	29077	660	29159
// OP_LOAD_F	29084	660	29160
// OP_LT	29159	29160	29161
// OP_IFNOT	29161	18	0
// OP_ADDRESS	29084	658	29162
// OP_LOAD_ENT	29077	658	29163
// OP_STOREP_ENT	29163	29162	0
// OP_ADDRESS	29084	659	29164
// OP_STOREP_ENT	29077	29164	0
// OP_LOAD_ENT	29077	658	29165
// OP_IFNOT	29165	5	0
// OP_LOAD_ENT	29077	658	29166
// OP_ADDRESS	29166	659	29167
// OP_STOREP_ENT	29084	29167	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29077	658	29168
// OP_STOREP_ENT	29084	29168	0
// OP_STORE_F	213	29087	0
// OP_STORE_ENT	30	29077	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29077	659	29169
// OP_STORE_ENT	29169	29077	0
// OP_GOTO	-24	0	0
// OP_IFNOT	29087	9	0
// OP_NOT_ENT	29081	0	29170
// OP_IFNOT	29170	2	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29084	659	29171
// OP_STOREP_ENT	30	29171	0
// OP_ADDRESS	29084	658	29172
// OP_STOREP_ENT	29081	29172	0
// OP_STORE_ENT	29084	29081	0
// OP_ADDRESS	29084	661	29173
// OP_STOREP_F	214	29173	0
// OP_LOAD_ENT	29083	624	29174
// OP_STORE_ENT	29174	29084	0
// OP_IFNOT	29084	71	0
// OP_LOAD_F	29083	660	29175
// OP_LOAD_F	29083	632	29176
// OP_ADD_F	29175	29176	29177
// OP_STORE_F	29177	29085	0
// OP_LOAD_FNC	29080	547	29178
// OP_STORE_V	29084	4	0
// OP_STORE_V	29085	7	0
// OP_STORE_V	29080	10	0
// OP_CALL3	29178	0	0
// OP_IFNOT	1	61	0
// OP_ADDRESS	29084	660	29179
// OP_STOREP_F	29085	29179	0
// OP_LOAD_F	29084	661	29180
// OP_IFNOT	29180	19	0
// OP_LOAD_ENT	29084	658	29181
// OP_IFNOT	29181	6	0
// OP_LOAD_ENT	29084	658	29182
// OP_ADDRESS	29182	659	29183
// OP_LOAD_ENT	29084	659	29184
// OP_STOREP_ENT	29184	29183	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	659	29185
// OP_STORE_ENT	29185	29082	0
// OP_LOAD_ENT	29084	659	29186
// OP_IFNOT	29186	6	0
// OP_LOAD_ENT	29084	659	29187
// OP_ADDRESS	29187	658	29188
// OP_LOAD_ENT	29084	658	29189
// OP_STOREP_ENT	29189	29188	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	658	29190
// OP_STORE_ENT	29190	29081	0
// OP_STORE_ENT	29082	29077	0
// OP_STORE_F	214	29087	0
// OP_IFNOT	29077	25	0
// OP_LOAD_F	29077	660	29191
// OP_LOAD_F	29084	660	29192
// OP_LT	29191	29192	29193
// OP_IFNOT	29193	18	0
// OP_ADDRESS	29084	658	29194
// OP_LOAD_ENT	29077	658	29195
// OP_STOREP_ENT	29195	29194	0
// OP_ADDRESS	29084	659	29196
// OP_STOREP_ENT	29077	29196	0
// OP_LOAD_ENT	29077	658	29197
// OP_IFNOT	29197	5	0
// OP_LOAD_ENT	29077	658	29198
// OP_ADDRESS	29198	659	29199
// OP_STOREP_ENT	29084	29199	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29077	658	29200
// OP_STOREP_ENT	29084	29200	0
// OP_STORE_F	213	29087	0
// OP_STORE_ENT	30	29077	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29077	659	29201
// OP_STORE_ENT	29201	29077	0
// OP_GOTO	-24	0	0
// OP_IFNOT	29087	9	0
// OP_NOT_ENT	29081	0	29202
// OP_IFNOT	29202	2	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29084	659	29203
// OP_STOREP_ENT	30	29203	0
// OP_ADDRESS	29084	658	29204
// OP_STOREP_ENT	29081	29204	0
// OP_STORE_ENT	29084	29081	0
// OP_ADDRESS	29084	661	29205
// OP_STOREP_F	214	29205	0
// OP_LOAD_ENT	29083	625	29206
// OP_STORE_ENT	29206	29084	0
// OP_IFNOT	29084	71	0
// OP_LOAD_F	29083	660	29207
// OP_LOAD_F	29083	633	29208
// OP_ADD_F	29207	29208	29209
// OP_STORE_F	29209	29085	0
// OP_LOAD_FNC	29080	547	29210
// OP_STORE_V	29084	4	0
// OP_STORE_V	29085	7	0
// OP_STORE_V	29080	10	0
// OP_CALL3	29210	0	0
// OP_IFNOT	1	61	0
// OP_ADDRESS	29084	660	29211
// OP_STOREP_F	29085	29211	0
// OP_LOAD_F	29084	661	29212
// OP_IFNOT	29212	19	0
// OP_LOAD_ENT	29084	658	29213
// OP_IFNOT	29213	6	0
// OP_LOAD_ENT	29084	658	29214
// OP_ADDRESS	29214	659	29215
// OP_LOAD_ENT	29084	659	29216
// OP_STOREP_ENT	29216	29215	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	659	29217
// OP_STORE_ENT	29217	29082	0
// OP_LOAD_ENT	29084	659	29218
// OP_IFNOT	29218	6	0
// OP_LOAD_ENT	29084	659	29219
// OP_ADDRESS	29219	658	29220
// OP_LOAD_ENT	29084	658	29221
// OP_STOREP_ENT	29221	29220	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	658	29222
// OP_STORE_ENT	29222	29081	0
// OP_STORE_ENT	29082	29077	0
// OP_STORE_F	214	29087	0
// OP_IFNOT	29077	25	0
// OP_LOAD_F	29077	660	29223
// OP_LOAD_F	29084	660	29224
// OP_LT	29223	29224	29225
// OP_IFNOT	29225	18	0
// OP_ADDRESS	29084	658	29226
// OP_LOAD_ENT	29077	658	29227
// OP_STOREP_ENT	29227	29226	0
// OP_ADDRESS	29084	659	29228
// OP_STOREP_ENT	29077	29228	0
// OP_LOAD_ENT	29077	658	29229
// OP_IFNOT	29229	5	0
// OP_LOAD_ENT	29077	658	29230
// OP_ADDRESS	29230	659	29231
// OP_STOREP_ENT	29084	29231	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29077	658	29232
// OP_STOREP_ENT	29084	29232	0
// OP_STORE_F	213	29087	0
// OP_STORE_ENT	30	29077	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29077	659	29233
// OP_STORE_ENT	29233	29077	0
// OP_GOTO	-24	0	0
// OP_IFNOT	29087	9	0
// OP_NOT_ENT	29081	0	29234
// OP_IFNOT	29234	2	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29084	659	29235
// OP_STOREP_ENT	30	29235	0
// OP_ADDRESS	29084	658	29236
// OP_STOREP_ENT	29081	29236	0
// OP_STORE_ENT	29084	29081	0
// OP_ADDRESS	29084	661	29237
// OP_STOREP_F	214	29237	0
// OP_LOAD_ENT	29083	626	29238
// OP_STORE_ENT	29238	29084	0
// OP_IFNOT	29084	71	0
// OP_LOAD_F	29083	660	29239
// OP_LOAD_F	29083	634	29240
// OP_ADD_F	29239	29240	29241
// OP_STORE_F	29241	29085	0
// OP_LOAD_FNC	29080	547	29242
// OP_STORE_V	29084	4	0
// OP_STORE_V	29085	7	0
// OP_STORE_V	29080	10	0
// OP_CALL3	29242	0	0
// OP_IFNOT	1	61	0
// OP_ADDRESS	29084	660	29243
// OP_STOREP_F	29085	29243	0
// OP_LOAD_F	29084	661	29244
// OP_IFNOT	29244	19	0
// OP_LOAD_ENT	29084	658	29245
// OP_IFNOT	29245	6	0
// OP_LOAD_ENT	29084	658	29246
// OP_ADDRESS	29246	659	29247
// OP_LOAD_ENT	29084	659	29248
// OP_STOREP_ENT	29248	29247	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	659	29249
// OP_STORE_ENT	29249	29082	0
// OP_LOAD_ENT	29084	659	29250
// OP_IFNOT	29250	6	0
// OP_LOAD_ENT	29084	659	29251
// OP_ADDRESS	29251	658	29252
// OP_LOAD_ENT	29084	658	29253
// OP_STOREP_ENT	29253	29252	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29084	658	29254
// OP_STORE_ENT	29254	29081	0
// OP_STORE_ENT	29082	29077	0
// OP_STORE_F	214	29087	0
// OP_IFNOT	29077	25	0
// OP_LOAD_F	29077	660	29255
// OP_LOAD_F	29084	660	29256
// OP_LT	29255	29256	29257
// OP_IFNOT	29257	18	0
// OP_ADDRESS	29084	658	29258
// OP_LOAD_ENT	29077	658	29259
// OP_STOREP_ENT	29259	29258	0
// OP_ADDRESS	29084	659	29260
// OP_STOREP_ENT	29077	29260	0
// OP_LOAD_ENT	29077	658	29261
// OP_IFNOT	29261	5	0
// OP_LOAD_ENT	29077	658	29262
// OP_ADDRESS	29262	659	29263
// OP_STOREP_ENT	29084	29263	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29077	658	29264
// OP_STOREP_ENT	29084	29264	0
// OP_STORE_F	213	29087	0
// OP_STORE_ENT	30	29077	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	29077	659	29265
// OP_STORE_ENT	29265	29077	0
// OP_GOTO	-24	0	0
// OP_IFNOT	29087	9	0
// OP_NOT_ENT	29081	0	29266
// OP_IFNOT	29266	2	0
// OP_STORE_ENT	29084	29082	0
// OP_ADDRESS	29084	659	29267
// OP_STOREP_ENT	30	29267	0
// OP_ADDRESS	29084	658	29268
// OP_STOREP_ENT	29081	29268	0
// OP_STORE_ENT	29084	29081	0
// OP_ADDRESS	29084	661	29269
// OP_STOREP_F	214	29269	0
// OP_ADD_F	29086	214	29270
// OP_STORE_F	29270	29086	0
// OP_GT	29086	740	29271
// OP_IFNOT	29271	2	0
// OP_STORE_ENT	30	29081	0
// OP_ADD_F	808	214	29272
// OP_STORE_F	29272	808	0
// OP_GT	808	741	29273
// OP_IFNOT	29273	2	0
// OP_STORE_ENT	30	29081	0
// OP_GOTO	-392	0	0
// OP_GT	29086	819	29274
// OP_IFNOT	29274	2	0
// OP_STORE_F	29086	819	0
// OP_DONE	0	0	0
void (entity globaldef009216, entity wp, float globaldef009218, entity ent) func002681 = 
{
    local entity globaldef009220;
    local entity globaldef009221;
    local entity globaldef009222;
    local entity globaldef009223;
    local float dist;
    local float globaldef009225;
    local float globaldef009226;
    
    if(globaldef000791 >= GLOBALDEF724_800)
    {
        return;
    }
    
    
    if(!ent.f_updatecache)
    {
        objerror("no cache update function");
    }
    
    
    if(!wp)
    {
        objerror("can't cache at world entity");
    }
    
    dist = globaldef009218 + func002655(globaldef009216, wp);
    
    if(!ent.f_updatecache(wp, dist, ent))
    {
        return;
    }
    
    globaldef009222 = globaldef000819;
    
    while(globaldef009222)
    {
        globaldef009222.field000338 = FALSE;
        globaldef009222 = globaldef009222.field000297;
    }
    
    wp.field000337 = dist;
    wp.field000335 = world;
    wp.field000336 = world;
    globaldef009221 = globaldef009220 = wp;
    wp.field000338 = TRUE;
    globaldef009225 = FALSE;
    
    while(globaldef009220)
    {
        globaldef009222 = globaldef009220;
        if(globaldef009222.field000335)
        {
            globaldef009222.field000335.field000336 = world;
        }
        else
        {
            globaldef009221 = world;
        }
        
        globaldef009220 = globaldef009222.field000335;
        globaldef009222.field000335 = world;
        globaldef009222.field000336 = world;
        globaldef009222.field000338 = FALSE;
        globaldef009223 = globaldef009222.field000299;
        
        if(globaldef009223)
        {
            dist = globaldef009222.field000337 + globaldef009222.field000307;
            
            if(ent.f_updatecache(globaldef009223, dist, ent))
            {
                globaldef009223.field000337 = dist;
                
                if(globaldef009223.field000338)
                {
                    if(globaldef009223.field000335)
                    {
                        globaldef009223.field000335.field000336 = globaldef009223.field000336;
                    }
                    else
                    {
                        globaldef009221 = globaldef009223.field000336;
                    }
                    
                    if(globaldef009223.field000336)
                    {
                        globaldef009223.field000336.field000335 = globaldef009223.field000335;
                    }
                    else
                    {
                        globaldef009220 = globaldef009223.field000335;
                    }
                    
                }
                
                globaldef009216 = globaldef009221;
                globaldef009226 = TRUE;
                
                while(globaldef009216)
                {
                    if(globaldef009216.field000337 < globaldef009223.field000337)
                    {
                        globaldef009223.field000335 = globaldef009216.field000335;
                        globaldef009223.field000336 = globaldef009216;
                        if(globaldef009216.field000335)
                        {
                            globaldef009216.field000335.field000336 = globaldef009223;
                        }
                        else
                        {
                            globaldef009221 = globaldef009223;
                        }
                        
                        globaldef009216.field000335 = globaldef009223;
                        globaldef009226 = FALSE;
                        globaldef009216 = world;
                    }
                    else
                    {
                        globaldef009216 = globaldef009216.field000336;
                    }
                    
                }
                
                
                if(globaldef009226)
                {
                    
                    if(!globaldef009220)
                    {
                        globaldef009221 = globaldef009223;
                    }
                    
                    globaldef009223.field000336 = world;
                    globaldef009223.field000335 = globaldef009220;
                    globaldef009220 = globaldef009223;
                }
                
                globaldef009223.field000338 = TRUE;
            }
            
        }
        
        globaldef009223 = globaldef009222.field000300;
        
        if(globaldef009223)
        {
            dist = globaldef009222.field000337 + globaldef009222.field000308;
            
            if(ent.f_updatecache(globaldef009223, dist, ent))
            {
                globaldef009223.field000337 = dist;
                
                if(globaldef009223.field000338)
                {
                    if(globaldef009223.field000335)
                    {
                        globaldef009223.field000335.field000336 = globaldef009223.field000336;
                    }
                    else
                    {
                        globaldef009221 = globaldef009223.field000336;
                    }
                    
                    if(globaldef009223.field000336)
                    {
                        globaldef009223.field000336.field000335 = globaldef009223.field000335;
                    }
                    else
                    {
                        globaldef009220 = globaldef009223.field000335;
                    }
                    
                }
                
                globaldef009216 = globaldef009221;
                globaldef009226 = TRUE;
                
                while(globaldef009216)
                {
                    if(globaldef009216.field000337 < globaldef009223.field000337)
                    {
                        globaldef009223.field000335 = globaldef009216.field000335;
                        globaldef009223.field000336 = globaldef009216;
                        if(globaldef009216.field000335)
                        {
                            globaldef009216.field000335.field000336 = globaldef009223;
                        }
                        else
                        {
                            globaldef009221 = globaldef009223;
                        }
                        
                        globaldef009216.field000335 = globaldef009223;
                        globaldef009226 = FALSE;
                        globaldef009216 = world;
                    }
                    else
                    {
                        globaldef009216 = globaldef009216.field000336;
                    }
                    
                }
                
                
                if(globaldef009226)
                {
                    
                    if(!globaldef009220)
                    {
                        globaldef009221 = globaldef009223;
                    }
                    
                    globaldef009223.field000336 = world;
                    globaldef009223.field000335 = globaldef009220;
                    globaldef009220 = globaldef009223;
                }
                
                globaldef009223.field000338 = TRUE;
            }
            
        }
        
        globaldef009223 = globaldef009222.field000301;
        
        if(globaldef009223)
        {
            dist = globaldef009222.field000337 + globaldef009222.field000309;
            
            if(ent.f_updatecache(globaldef009223, dist, ent))
            {
                globaldef009223.field000337 = dist;
                
                if(globaldef009223.field000338)
                {
                    if(globaldef009223.field000335)
                    {
                        globaldef009223.field000335.field000336 = globaldef009223.field000336;
                    }
                    else
                    {
                        globaldef009221 = globaldef009223.field000336;
                    }
                    
                    if(globaldef009223.field000336)
                    {
                        globaldef009223.field000336.field000335 = globaldef009223.field000335;
                    }
                    else
                    {
                        globaldef009220 = globaldef009223.field000335;
                    }
                    
                }
                
                globaldef009216 = globaldef009221;
                globaldef009226 = TRUE;
                
                while(globaldef009216)
                {
                    if(globaldef009216.field000337 < globaldef009223.field000337)
                    {
                        globaldef009223.field000335 = globaldef009216.field000335;
                        globaldef009223.field000336 = globaldef009216;
                        if(globaldef009216.field000335)
                        {
                            globaldef009216.field000335.field000336 = globaldef009223;
                        }
                        else
                        {
                            globaldef009221 = globaldef009223;
                        }
                        
                        globaldef009216.field000335 = globaldef009223;
                        globaldef009226 = FALSE;
                        globaldef009216 = world;
                    }
                    else
                    {
                        globaldef009216 = globaldef009216.field000336;
                    }
                    
                }
                
                
                if(globaldef009226)
                {
                    
                    if(!globaldef009220)
                    {
                        globaldef009221 = globaldef009223;
                    }
                    
                    globaldef009223.field000336 = world;
                    globaldef009223.field000335 = globaldef009220;
                    globaldef009220 = globaldef009223;
                }
                
                globaldef009223.field000338 = TRUE;
            }
            
        }
        
        globaldef009223 = globaldef009222.field000302;
        
        if(globaldef009223)
        {
            dist = globaldef009222.field000337 + globaldef009222.field000310;
            
            if(ent.f_updatecache(globaldef009223, dist, ent))
            {
                globaldef009223.field000337 = dist;
                
                if(globaldef009223.field000338)
                {
                    if(globaldef009223.field000335)
                    {
                        globaldef009223.field000335.field000336 = globaldef009223.field000336;
                    }
                    else
                    {
                        globaldef009221 = globaldef009223.field000336;
                    }
                    
                    if(globaldef009223.field000336)
                    {
                        globaldef009223.field000336.field000335 = globaldef009223.field000335;
                    }
                    else
                    {
                        globaldef009220 = globaldef009223.field000335;
                    }
                    
                }
                
                globaldef009216 = globaldef009221;
                globaldef009226 = TRUE;
                
                while(globaldef009216)
                {
                    if(globaldef009216.field000337 < globaldef009223.field000337)
                    {
                        globaldef009223.field000335 = globaldef009216.field000335;
                        globaldef009223.field000336 = globaldef009216;
                        if(globaldef009216.field000335)
                        {
                            globaldef009216.field000335.field000336 = globaldef009223;
                        }
                        else
                        {
                            globaldef009221 = globaldef009223;
                        }
                        
                        globaldef009216.field000335 = globaldef009223;
                        globaldef009226 = FALSE;
                        globaldef009216 = world;
                    }
                    else
                    {
                        globaldef009216 = globaldef009216.field000336;
                    }
                    
                }
                
                
                if(globaldef009226)
                {
                    
                    if(!globaldef009220)
                    {
                        globaldef009221 = globaldef009223;
                    }
                    
                    globaldef009223.field000336 = world;
                    globaldef009223.field000335 = globaldef009220;
                    globaldef009220 = globaldef009223;
                }
                
                globaldef009223.field000338 = TRUE;
            }
            
        }
        
        globaldef009223 = globaldef009222.field000303;
        
        if(globaldef009223)
        {
            dist = globaldef009222.field000337 + globaldef009222.field000311;
            
            if(ent.f_updatecache(globaldef009223, dist, ent))
            {
                globaldef009223.field000337 = dist;
                
                if(globaldef009223.field000338)
                {
                    if(globaldef009223.field000335)
                    {
                        globaldef009223.field000335.field000336 = globaldef009223.field000336;
                    }
                    else
                    {
                        globaldef009221 = globaldef009223.field000336;
                    }
                    
                    if(globaldef009223.field000336)
                    {
                        globaldef009223.field000336.field000335 = globaldef009223.field000335;
                    }
                    else
                    {
                        globaldef009220 = globaldef009223.field000335;
                    }
                    
                }
                
                globaldef009216 = globaldef009221;
                globaldef009226 = TRUE;
                
                while(globaldef009216)
                {
                    if(globaldef009216.field000337 < globaldef009223.field000337)
                    {
                        globaldef009223.field000335 = globaldef009216.field000335;
                        globaldef009223.field000336 = globaldef009216;
                        if(globaldef009216.field000335)
                        {
                            globaldef009216.field000335.field000336 = globaldef009223;
                        }
                        else
                        {
                            globaldef009221 = globaldef009223;
                        }
                        
                        globaldef009216.field000335 = globaldef009223;
                        globaldef009226 = FALSE;
                        globaldef009216 = world;
                    }
                    else
                    {
                        globaldef009216 = globaldef009216.field000336;
                    }
                    
                }
                
                
                if(globaldef009226)
                {
                    
                    if(!globaldef009220)
                    {
                        globaldef009221 = globaldef009223;
                    }
                    
                    globaldef009223.field000336 = world;
                    globaldef009223.field000335 = globaldef009220;
                    globaldef009220 = globaldef009223;
                }
                
                globaldef009223.field000338 = TRUE;
            }
            
        }
        
        globaldef009225 = globaldef009225 + TRUE;
        
        if(globaldef009225 > GLOBALDEF723_600)
        {
            globaldef009220 = world;
        }
        
        globaldef000791 = globaldef000791 + TRUE;
        
        if(globaldef000791 > GLOBALDEF724_800)
        {
            globaldef009220 = world;
        }
        
    }
    
    
    if(globaldef009225 > globaldef000802)
    {
        globaldef000802 = globaldef009225;
    }
    
};


// func002682
// function begins at statement 55440, parm_start=29276
// OP_GE	808	741	29287
// OP_IFNOT	29287	2	0
// OP_RETURN	0	0	0
// OP_LOAD_FNC	29279	547	29288
// OP_NOT_FNC	29288	0	29289
// OP_IFNOT	29289	3	0
// OP_STORE_V	29091	4	0
// OP_CALL1	461	0	0
// OP_NOT_ENT	29277	0	29290
// OP_IFNOT	29290	3	0
// OP_STORE_V	29093	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	29276	4	0
// OP_STORE_V	29277	7	0
// OP_CALL2	28428	0	0
// OP_ADD_F	29278	1	29291
// OP_STORE_F	29291	29284	0
// OP_LOAD_FNC	29279	547	29292
// OP_STORE_V	29277	4	0
// OP_STORE_V	29284	7	0
// OP_STORE_V	29279	10	0
// OP_CALL3	29292	0	0
// OP_NOT_F	1	0	29293
// OP_IFNOT	29293	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	836	29282	0
// OP_IFNOT	29282	6	0
// OP_ADDRESS	29282	661	29294
// OP_STOREP_F	213	29294	0
// OP_LOAD_ENT	29282	620	29295
// OP_STORE_ENT	29295	29282	0
// OP_GOTO	-5	0	0
// OP_ADDRESS	29277	660	29296
// OP_STOREP_F	29284	29296	0
// OP_ADDRESS	29277	658	29297
// OP_STOREP_ENT	30	29297	0
// OP_ADDRESS	29277	659	29298
// OP_STOREP_ENT	30	29298	0
// OP_STORE_ENT	29277	29280	0
// OP_STORE_ENT	29277	29281	0
// OP_ADDRESS	29277	661	29299
// OP_STOREP_F	214	29299	0
// OP_STORE_F	213	29285	0
// OP_IFNOT	29280	178	0
// OP_STORE_ENT	29280	29282	0
// OP_LOAD_ENT	29282	658	29300
// OP_IFNOT	29300	5	0
// OP_LOAD_ENT	29282	658	29301
// OP_ADDRESS	29301	659	29302
// OP_STOREP_ENT	30	29302	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	29281	0
// OP_LOAD_ENT	29282	658	29303
// OP_STORE_ENT	29303	29280	0
// OP_ADDRESS	29282	658	29304
// OP_STOREP_ENT	30	29304	0
// OP_ADDRESS	29282	659	29305
// OP_STOREP_ENT	30	29305	0
// OP_ADDRESS	29282	661	29306
// OP_STOREP_F	213	29306	0
// OP_LOAD_ENT	29282	622	29307
// OP_STORE_ENT	29307	29283	0
// OP_IFNOT	29283	28	0
// OP_LOAD_F	29282	660	29308
// OP_LOAD_F	29282	630	29309
// OP_ADD_F	29308	29309	29310
// OP_STORE_F	29310	29284	0
// OP_LOAD_FNC	29279	547	29311
// OP_STORE_V	29283	4	0
// OP_STORE_V	29284	7	0
// OP_STORE_V	29279	10	0
// OP_CALL3	29311	0	0
// OP_IFNOT	1	18	0
// OP_ADDRESS	29283	660	29312
// OP_STOREP_F	29284	29312	0
// OP_LOAD_F	29283	661	29313
// OP_NOT_F	29313	0	29314
// OP_IFNOT	29314	13	0
// OP_IFNOT	29281	4	0
// OP_ADDRESS	29281	658	29315
// OP_STOREP_ENT	29283	29315	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29283	29280	0
// OP_ADDRESS	29283	659	29316
// OP_STOREP_ENT	29281	29316	0
// OP_ADDRESS	29283	658	29317
// OP_STOREP_ENT	30	29317	0
// OP_STORE_ENT	29283	29281	0
// OP_ADDRESS	29283	661	29318
// OP_STOREP_F	214	29318	0
// OP_LOAD_ENT	29282	623	29319
// OP_STORE_ENT	29319	29283	0
// OP_IFNOT	29283	28	0
// OP_LOAD_F	29282	660	29320
// OP_LOAD_F	29282	631	29321
// OP_ADD_F	29320	29321	29322
// OP_STORE_F	29322	29284	0
// OP_LOAD_FNC	29279	547	29323
// OP_STORE_V	29283	4	0
// OP_STORE_V	29284	7	0
// OP_STORE_V	29279	10	0
// OP_CALL3	29323	0	0
// OP_IFNOT	1	18	0
// OP_ADDRESS	29283	660	29324
// OP_STOREP_F	29284	29324	0
// OP_LOAD_F	29283	661	29325
// OP_NOT_F	29325	0	29326
// OP_IFNOT	29326	13	0
// OP_IFNOT	29281	4	0
// OP_ADDRESS	29281	658	29327
// OP_STOREP_ENT	29283	29327	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29283	29280	0
// OP_ADDRESS	29283	659	29328
// OP_STOREP_ENT	29281	29328	0
// OP_ADDRESS	29283	658	29329
// OP_STOREP_ENT	30	29329	0
// OP_STORE_ENT	29283	29281	0
// OP_ADDRESS	29283	661	29330
// OP_STOREP_F	214	29330	0
// OP_LOAD_ENT	29282	624	29331
// OP_STORE_ENT	29331	29283	0
// OP_IFNOT	29283	28	0
// OP_LOAD_F	29282	660	29332
// OP_LOAD_F	29282	632	29333
// OP_ADD_F	29332	29333	29334
// OP_STORE_F	29334	29284	0
// OP_LOAD_FNC	29279	547	29335
// OP_STORE_V	29283	4	0
// OP_STORE_V	29284	7	0
// OP_STORE_V	29279	10	0
// OP_CALL3	29335	0	0
// OP_IFNOT	1	18	0
// OP_ADDRESS	29283	660	29336
// OP_STOREP_F	29284	29336	0
// OP_LOAD_F	29283	661	29337
// OP_NOT_F	29337	0	29338
// OP_IFNOT	29338	13	0
// OP_IFNOT	29281	4	0
// OP_ADDRESS	29281	658	29339
// OP_STOREP_ENT	29283	29339	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29283	29280	0
// OP_ADDRESS	29283	659	29340
// OP_STOREP_ENT	29281	29340	0
// OP_ADDRESS	29283	658	29341
// OP_STOREP_ENT	30	29341	0
// OP_STORE_ENT	29283	29281	0
// OP_ADDRESS	29283	661	29342
// OP_STOREP_F	214	29342	0
// OP_LOAD_ENT	29282	625	29343
// OP_STORE_ENT	29343	29283	0
// OP_IFNOT	29283	28	0
// OP_LOAD_F	29282	660	29344
// OP_LOAD_F	29282	633	29345
// OP_ADD_F	29344	29345	29346
// OP_STORE_F	29346	29284	0
// OP_LOAD_FNC	29279	547	29347
// OP_STORE_V	29283	4	0
// OP_STORE_V	29284	7	0
// OP_STORE_V	29279	10	0
// OP_CALL3	29347	0	0
// OP_IFNOT	1	18	0
// OP_ADDRESS	29283	660	29348
// OP_STOREP_F	29284	29348	0
// OP_LOAD_F	29283	661	29349
// OP_NOT_F	29349	0	29350
// OP_IFNOT	29350	13	0
// OP_IFNOT	29281	4	0
// OP_ADDRESS	29281	658	29351
// OP_STOREP_ENT	29283	29351	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29283	29280	0
// OP_ADDRESS	29283	659	29352
// OP_STOREP_ENT	29281	29352	0
// OP_ADDRESS	29283	658	29353
// OP_STOREP_ENT	30	29353	0
// OP_STORE_ENT	29283	29281	0
// OP_ADDRESS	29283	661	29354
// OP_STOREP_F	214	29354	0
// OP_LOAD_ENT	29282	626	29355
// OP_STORE_ENT	29355	29283	0
// OP_IFNOT	29283	28	0
// OP_LOAD_F	29282	660	29356
// OP_LOAD_F	29282	634	29357
// OP_ADD_F	29356	29357	29358
// OP_STORE_F	29358	29284	0
// OP_LOAD_FNC	29279	547	29359
// OP_STORE_V	29283	4	0
// OP_STORE_V	29284	7	0
// OP_STORE_V	29279	10	0
// OP_CALL3	29359	0	0
// OP_IFNOT	1	18	0
// OP_ADDRESS	29283	660	29360
// OP_STOREP_F	29284	29360	0
// OP_LOAD_F	29283	661	29361
// OP_NOT_F	29361	0	29362
// OP_IFNOT	29362	13	0
// OP_IFNOT	29281	4	0
// OP_ADDRESS	29281	658	29363
// OP_STOREP_ENT	29283	29363	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	29283	29280	0
// OP_ADDRESS	29283	659	29364
// OP_STOREP_ENT	29281	29364	0
// OP_ADDRESS	29283	658	29365
// OP_STOREP_ENT	30	29365	0
// OP_STORE_ENT	29283	29281	0
// OP_ADDRESS	29283	661	29366
// OP_STOREP_F	214	29366	0
// OP_ADD_F	29285	214	29367
// OP_STORE_F	29367	29285	0
// OP_GT	29285	740	29368
// OP_IFNOT	29368	2	0
// OP_STORE_ENT	30	29280	0
// OP_ADD_F	808	214	29369
// OP_STORE_F	29369	808	0
// OP_GT	808	741	29370
// OP_IFNOT	29370	2	0
// OP_STORE_ENT	30	29280	0
// OP_GOTO	-177	0	0
// OP_GT	29285	819	29371
// OP_IFNOT	29371	2	0
// OP_STORE_F	29285	819	0
// OP_DONE	0	0	0
void (entity globaldef009230, entity globaldef009231, float globaldef009232, entity globaldef009233) func002682 = 
{
    local entity globaldef009234;
    local entity globaldef009235;
    local entity globaldef009236;
    local entity globaldef009237;
    local float globaldef009238;
    local float globaldef009239;
    local float globaldef009240;
    
    if(globaldef000791 >= GLOBALDEF724_800)
    {
        return;
    }
    
    
    if(!globaldef009233.f_updatecache)
    {
        objerror("no cache update function");
    }
    
    
    if(!globaldef009231)
    {
        objerror("can't cache at world entity");
    }
    
    globaldef009238 = globaldef009232 + func002655(globaldef009230, globaldef009231);
    
    if(!globaldef009233.f_updatecache(globaldef009231, globaldef009238, globaldef009233))
    {
        return;
    }
    
    globaldef009236 = globaldef000819;
    
    while(globaldef009236)
    {
        globaldef009236.field000338 = FALSE;
        globaldef009236 = globaldef009236.field000297;
    }
    
    globaldef009231.field000337 = globaldef009238;
    globaldef009231.field000335 = world;
    globaldef009231.field000336 = world;
    globaldef009235 = globaldef009234 = globaldef009231;
    globaldef009231.field000338 = TRUE;
    globaldef009239 = FALSE;
    
    while(globaldef009234)
    {
        globaldef009236 = globaldef009234;
        if(globaldef009236.field000335)
        {
            globaldef009236.field000335.field000336 = world;
        }
        else
        {
            globaldef009235 = world;
        }
        
        globaldef009234 = globaldef009236.field000335;
        globaldef009236.field000335 = world;
        globaldef009236.field000336 = world;
        globaldef009236.field000338 = FALSE;
        globaldef009237 = globaldef009236.field000299;
        
        if(globaldef009237)
        {
            globaldef009238 = globaldef009236.field000337 + globaldef009236.field000307;
            
            if(globaldef009233.f_updatecache(globaldef009237, globaldef009238, globaldef009233))
            {
                globaldef009237.field000337 = globaldef009238;
                
                if(!globaldef009237.field000338)
                {
                    if(globaldef009235)
                    {
                        globaldef009235.field000335 = globaldef009237;
                    }
                    else
                    {
                        globaldef009234 = globaldef009237;
                    }
                    
                    globaldef009237.field000336 = globaldef009235;
                    globaldef009237.field000335 = world;
                    globaldef009235 = globaldef009237;
                    globaldef009237.field000338 = TRUE;
                }
                
            }
            
        }
        
        globaldef009237 = globaldef009236.field000300;
        
        if(globaldef009237)
        {
            globaldef009238 = globaldef009236.field000337 + globaldef009236.field000308;
            
            if(globaldef009233.f_updatecache(globaldef009237, globaldef009238, globaldef009233))
            {
                globaldef009237.field000337 = globaldef009238;
                
                if(!globaldef009237.field000338)
                {
                    if(globaldef009235)
                    {
                        globaldef009235.field000335 = globaldef009237;
                    }
                    else
                    {
                        globaldef009234 = globaldef009237;
                    }
                    
                    globaldef009237.field000336 = globaldef009235;
                    globaldef009237.field000335 = world;
                    globaldef009235 = globaldef009237;
                    globaldef009237.field000338 = TRUE;
                }
                
            }
            
        }
        
        globaldef009237 = globaldef009236.field000301;
        
        if(globaldef009237)
        {
            globaldef009238 = globaldef009236.field000337 + globaldef009236.field000309;
            
            if(globaldef009233.f_updatecache(globaldef009237, globaldef009238, globaldef009233))
            {
                globaldef009237.field000337 = globaldef009238;
                
                if(!globaldef009237.field000338)
                {
                    if(globaldef009235)
                    {
                        globaldef009235.field000335 = globaldef009237;
                    }
                    else
                    {
                        globaldef009234 = globaldef009237;
                    }
                    
                    globaldef009237.field000336 = globaldef009235;
                    globaldef009237.field000335 = world;
                    globaldef009235 = globaldef009237;
                    globaldef009237.field000338 = TRUE;
                }
                
            }
            
        }
        
        globaldef009237 = globaldef009236.field000302;
        
        if(globaldef009237)
        {
            globaldef009238 = globaldef009236.field000337 + globaldef009236.field000310;
            
            if(globaldef009233.f_updatecache(globaldef009237, globaldef009238, globaldef009233))
            {
                globaldef009237.field000337 = globaldef009238;
                
                if(!globaldef009237.field000338)
                {
                    if(globaldef009235)
                    {
                        globaldef009235.field000335 = globaldef009237;
                    }
                    else
                    {
                        globaldef009234 = globaldef009237;
                    }
                    
                    globaldef009237.field000336 = globaldef009235;
                    globaldef009237.field000335 = world;
                    globaldef009235 = globaldef009237;
                    globaldef009237.field000338 = TRUE;
                }
                
            }
            
        }
        
        globaldef009237 = globaldef009236.field000303;
        
        if(globaldef009237)
        {
            globaldef009238 = globaldef009236.field000337 + globaldef009236.field000311;
            
            if(globaldef009233.f_updatecache(globaldef009237, globaldef009238, globaldef009233))
            {
                globaldef009237.field000337 = globaldef009238;
                
                if(!globaldef009237.field000338)
                {
                    if(globaldef009235)
                    {
                        globaldef009235.field000335 = globaldef009237;
                    }
                    else
                    {
                        globaldef009234 = globaldef009237;
                    }
                    
                    globaldef009237.field000336 = globaldef009235;
                    globaldef009237.field000335 = world;
                    globaldef009235 = globaldef009237;
                    globaldef009237.field000338 = TRUE;
                }
                
            }
            
        }
        
        globaldef009239 = globaldef009239 + TRUE;
        
        if(globaldef009239 > GLOBALDEF723_600)
        {
            globaldef009234 = world;
        }
        
        globaldef000791 = globaldef000791 + TRUE;
        
        if(globaldef000791 > GLOBALDEF724_800)
        {
            globaldef009234 = world;
        }
        
    }
    
    
    if(globaldef009239 > globaldef000802)
    {
        globaldef000802 = globaldef009239;
    }
    
};


// func002683
// function begins at statement 55665, parm_start=29372
// OP_BITAND	821	766	29376
// OP_IFNOT	29376	7	0
// OP_STORE_V	29372	4	0
// OP_STORE_V	29373	7	0
// OP_STORE_V	29374	10	0
// OP_STORE_V	29375	13	0
// OP_CALL4	29076	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	29372	4	0
// OP_STORE_V	29373	7	0
// OP_STORE_V	29374	10	0
// OP_STORE_V	29375	13	0
// OP_CALL4	29275	0	0
// OP_DONE	0	0	0
void (entity globaldef009241, entity globaldef009242, float globaldef009243, entity globaldef009244) func002683 = 
{
    if(globaldef000804 & OBOT_BUBBLEROUTING)
    {
        func002681(globaldef009241, globaldef009242, globaldef009243, globaldef009244);
    }
    else
    {
        func002682(globaldef009241, globaldef009242, globaldef009243, globaldef009244);
    }
    
};


// func002684
// function begins at statement 55679, parm_start=29378
// OP_LOAD_F	29379	648	29380
// OP_GT	29380	213	29381
// OP_IFNOT	29381	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	648	29382
// OP_STORE_V	29382	10	0
// OP_LOAD_ENT	29379	638	29383
// OP_STORE_V	29383	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	649	29384
// OP_GT	29384	213	29385
// OP_IFNOT	29385	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	649	29386
// OP_STORE_V	29386	10	0
// OP_LOAD_ENT	29379	639	29387
// OP_STORE_V	29387	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	650	29388
// OP_GT	29388	213	29389
// OP_IFNOT	29389	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	650	29390
// OP_STORE_V	29390	10	0
// OP_LOAD_ENT	29379	640	29391
// OP_STORE_V	29391	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	651	29392
// OP_GT	29392	213	29393
// OP_IFNOT	29393	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	651	29394
// OP_STORE_V	29394	10	0
// OP_LOAD_ENT	29379	641	29395
// OP_STORE_V	29395	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	652	29396
// OP_GT	29396	213	29397
// OP_IFNOT	29397	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	652	29398
// OP_STORE_V	29398	10	0
// OP_LOAD_ENT	29379	642	29399
// OP_STORE_V	29399	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	653	29400
// OP_GT	29400	213	29401
// OP_IFNOT	29401	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	653	29402
// OP_STORE_V	29402	10	0
// OP_LOAD_ENT	29379	643	29403
// OP_STORE_V	29403	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	654	29404
// OP_GT	29404	213	29405
// OP_IFNOT	29405	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	654	29406
// OP_STORE_V	29406	10	0
// OP_LOAD_ENT	29379	644	29407
// OP_STORE_V	29407	13	0
// OP_CALL4	1201	0	0
// OP_LOAD_F	29379	655	29408
// OP_GT	29408	213	29409
// OP_IFNOT	29409	8	0
// OP_STORE_V	29379	4	0
// OP_STORE_V	29378	7	0
// OP_LOAD_F	29379	655	29410
// OP_STORE_V	29410	10	0
// OP_LOAD_ENT	29379	645	29411
// OP_STORE_V	29411	13	0
// OP_CALL4	1201	0	0
// OP_DONE	0	0	0
void (entity globaldef009246, entity globaldef009247) func002684 = 
{
    
    if(globaldef009247.field000325 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000325, globaldef009247.field000315);
    }
    
    
    if(globaldef009247.field000326 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000326, globaldef009247.field000316);
    }
    
    
    if(globaldef009247.field000327 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000327, globaldef009247.field000317);
    }
    
    
    if(globaldef009247.field000328 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000328, globaldef009247.field000318);
    }
    
    
    if(globaldef009247.field000329 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000329, globaldef009247.field000319);
    }
    
    
    if(globaldef009247.field000330 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000330, globaldef009247.field000320);
    }
    
    
    if(globaldef009247.field000331 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000331, globaldef009247.field000321);
    }
    
    
    if(globaldef009247.field000332 > FALSE)
    {
        func002683(globaldef009247, globaldef009246, globaldef009247.field000332, globaldef009247.field000322);
    }
    
};


// func002685
// function begins at statement 55760, parm_start=29412
// OP_EQ_E	29412	29413	29416
// OP_IFNOT	29416	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29413	622	29417
// OP_EQ_E	29417	29412	29418
// OP_IFNOT	29418	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	29412	0	29419
// OP_IFNOT	29419	2	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	29414	0
// OP_LOAD_ENT	29413	623	29420
// OP_EQ_E	29420	29412	29421
// OP_IFNOT	29421	3	0
// OP_STORE_F	214	29414	0
// OP_GOTO	30	0	0
// OP_LOAD_ENT	29413	624	29422
// OP_EQ_E	29422	29412	29423
// OP_IFNOT	29423	3	0
// OP_STORE_F	214	29414	0
// OP_GOTO	25	0	0
// OP_LOAD_ENT	29413	625	29424
// OP_EQ_E	29424	29412	29425
// OP_IFNOT	29425	3	0
// OP_STORE_F	214	29414	0
// OP_GOTO	20	0	0
// OP_LOAD_ENT	29413	626	29426
// OP_EQ_E	29426	29412	29427
// OP_IFNOT	29427	3	0
// OP_STORE_F	214	29414	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	29413	627	29428
// OP_EQ_E	29428	29412	29429
// OP_IFNOT	29429	3	0
// OP_STORE_F	214	29414	0
// OP_GOTO	10	0	0
// OP_LOAD_ENT	29413	628	29430
// OP_EQ_E	29430	29412	29431
// OP_IFNOT	29431	3	0
// OP_STORE_F	214	29414	0
// OP_GOTO	5	0	0
// OP_LOAD_ENT	29413	629	29432
// OP_EQ_E	29432	29412	29433
// OP_IFNOT	29433	2	0
// OP_STORE_F	214	29414	0
// OP_STORE_F	214	29415	0
// OP_NOT_F	29414	0	29434
// OP_IFNOT	29434	90	0
// OP_LOAD_ENT	29413	622	29435
// OP_NOT_ENT	29435	0	29436
// OP_IFNOT	29436	9	0
// OP_ADDRESS	29413	622	29437
// OP_STOREP_ENT	29412	29437	0
// OP_ADDRESS	29413	630	29438
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29438	0
// OP_GOTO	79	0	0
// OP_LOAD_ENT	29413	623	29439
// OP_NOT_ENT	29439	0	29440
// OP_IFNOT	29440	9	0
// OP_ADDRESS	29413	623	29441
// OP_STOREP_ENT	29412	29441	0
// OP_ADDRESS	29413	631	29442
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29442	0
// OP_GOTO	68	0	0
// OP_LOAD_ENT	29413	624	29443
// OP_NOT_ENT	29443	0	29444
// OP_IFNOT	29444	9	0
// OP_ADDRESS	29413	624	29445
// OP_STOREP_ENT	29412	29445	0
// OP_ADDRESS	29413	632	29446
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29446	0
// OP_GOTO	57	0	0
// OP_LOAD_ENT	29413	625	29447
// OP_NOT_ENT	29447	0	29448
// OP_IFNOT	29448	9	0
// OP_ADDRESS	29413	625	29449
// OP_STOREP_ENT	29412	29449	0
// OP_ADDRESS	29413	633	29450
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29450	0
// OP_GOTO	46	0	0
// OP_LOAD_ENT	29413	626	29451
// OP_NOT_ENT	29451	0	29452
// OP_IFNOT	29452	9	0
// OP_ADDRESS	29413	626	29453
// OP_STOREP_ENT	29412	29453	0
// OP_ADDRESS	29413	634	29454
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29454	0
// OP_GOTO	35	0	0
// OP_LOAD_ENT	29413	627	29455
// OP_NOT_ENT	29455	0	29456
// OP_IFNOT	29456	9	0
// OP_ADDRESS	29413	627	29457
// OP_STOREP_ENT	29412	29457	0
// OP_ADDRESS	29413	635	29458
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29458	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	29413	628	29459
// OP_NOT_ENT	29459	0	29460
// OP_IFNOT	29460	9	0
// OP_ADDRESS	29413	628	29461
// OP_STOREP_ENT	29412	29461	0
// OP_ADDRESS	29413	636	29462
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29462	0
// OP_GOTO	13	0	0
// OP_LOAD_ENT	29413	629	29463
// OP_NOT_ENT	29463	0	29464
// OP_IFNOT	29464	9	0
// OP_ADDRESS	29413	629	29465
// OP_STOREP_ENT	29412	29465	0
// OP_ADDRESS	29413	637	29466
// OP_STORE_V	29413	4	0
// OP_STORE_V	29412	7	0
// OP_CALL2	28428	0	0
// OP_STOREP_F	1	29466	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	29415	0
// OP_IFNOT	29415	4	0
// OP_STORE_V	29412	4	0
// OP_STORE_V	29413	7	0
// OP_CALL2	29377	0	0
// OP_DONE	0	0	0
void (entity globaldef009248, entity globaldef009249) func002685 = 
{
    local float globaldef009250;
    local float globaldef009251;
    
    if(globaldef009248 == globaldef009249)
    {
        return;
    }
    
    
    if(globaldef009249.field000299 == globaldef009248)
    {
        return;
    }
    
    
    if(!globaldef009248)
    {
        return;
    }
    
    globaldef009250 = FALSE;
    if(globaldef009249.field000300 == globaldef009248)
    {
        globaldef009250 = TRUE;
    }
    else
    {
        if(globaldef009249.field000301 == globaldef009248)
        {
            globaldef009250 = TRUE;
        }
        else
        {
            if(globaldef009249.field000302 == globaldef009248)
            {
                globaldef009250 = TRUE;
            }
            else
            {
                if(globaldef009249.field000303 == globaldef009248)
                {
                    globaldef009250 = TRUE;
                }
                else
                {
                    if(globaldef009249.field000304 == globaldef009248)
                    {
                        globaldef009250 = TRUE;
                    }
                    else
                    {
                        if(globaldef009249.field000305 == globaldef009248)
                        {
                            globaldef009250 = TRUE;
                        }
                        else
                        {
                            
                            if(globaldef009249.field000306 == globaldef009248)
                            {
                                globaldef009250 = TRUE;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    globaldef009251 = TRUE;
    
    if(!globaldef009250)
    {
        if(!globaldef009249.field000299)
        {
            globaldef009249.field000299 = globaldef009248;
            globaldef009249.field000307 = func002655(globaldef009249, globaldef009248);
        }
        else
        {
            if(!globaldef009249.field000300)
            {
                globaldef009249.field000300 = globaldef009248;
                globaldef009249.field000308 = func002655(globaldef009249, globaldef009248);
            }
            else
            {
                if(!globaldef009249.field000301)
                {
                    globaldef009249.field000301 = globaldef009248;
                    globaldef009249.field000309 = func002655(globaldef009249, globaldef009248);
                }
                else
                {
                    if(!globaldef009249.field000302)
                    {
                        globaldef009249.field000302 = globaldef009248;
                        globaldef009249.field000310 = func002655(globaldef009249, globaldef009248);
                    }
                    else
                    {
                        if(!globaldef009249.field000303)
                        {
                            globaldef009249.field000303 = globaldef009248;
                            globaldef009249.field000311 = func002655(globaldef009249, globaldef009248);
                        }
                        else
                        {
                            if(!globaldef009249.field000304)
                            {
                                globaldef009249.field000304 = globaldef009248;
                                globaldef009249.field000312 = func002655(globaldef009249, globaldef009248);
                            }
                            else
                            {
                                if(!globaldef009249.field000305)
                                {
                                    globaldef009249.field000305 = globaldef009248;
                                    globaldef009249.field000313 = func002655(globaldef009249, globaldef009248);
                                }
                                else
                                {
                                    if(!globaldef009249.field000306)
                                    {
                                        globaldef009249.field000306 = globaldef009248;
                                        globaldef009249.field000314 = func002655(globaldef009249, globaldef009248);
                                    }
                                    else
                                    {
                                        globaldef009251 = FALSE;
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(globaldef009251)
    {
        func002684(globaldef009248, globaldef009249);
    }
    
};


// func002686
// function begins at statement 55902, parm_start=29467
// OP_LOAD_F	29468	182	29469
// OP_BITAND	29469	222	29470
// OP_NOT_F	29470	0	29471
// OP_IFNOT	29471	2	0
// OP_RETURN	0	0	0
// OP_LOAD_FNC	29468	547	29472
// OP_IFNOT	29472	15	0
// OP_LOAD_ENT	29468	622	29473
// OP_NOT_ENT	29473	0	29474
// OP_IFNOT	29474	4	0
// OP_STORE_V	29467	4	0
// OP_STORE_V	29468	7	0
// OP_CALL2	28999	0	0
// OP_LOAD_ENT	29467	622	29475
// OP_IFNOT	29475	7	0
// OP_STORE_V	29468	4	0
// OP_LOAD_ENT	29467	622	29476
// OP_STORE_V	29476	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	29468	13	0
// OP_CALL4	1201	0	0
// OP_DONE	0	0	0
void (entity globaldef009252, entity globaldef009253) func002686 = 
{
    
    if(!(globaldef009253.flags & FL_ITEM))
    {
        return;
    }
    
    
    if(globaldef009253.f_updatecache)
    {
        
        if(!globaldef009253.field000299)
        {
            func002678(globaldef009252, globaldef009253);
        }
        
        
        if(globaldef009252.field000299)
        {
            func002683(globaldef009253, globaldef009252.field000299, FALSE, globaldef009253);
        }
        
    }
    
};


// func002687
// function begins at statement 55924, parm_start=29477
// OP_LOAD_ENT	29477	638	29479
// OP_EQ_E	29479	29478	29480
// OP_IFNOT	29480	3	0
// OP_LOAD_F	29477	648	29481
// OP_RETURN	29481	0	0
// OP_LOAD_ENT	29477	639	29482
// OP_EQ_E	29482	29478	29483
// OP_IFNOT	29483	3	0
// OP_LOAD_F	29477	649	29484
// OP_RETURN	29484	0	0
// OP_LOAD_ENT	29477	640	29485
// OP_EQ_E	29485	29478	29486
// OP_IFNOT	29486	3	0
// OP_LOAD_F	29477	650	29487
// OP_RETURN	29487	0	0
// OP_LOAD_ENT	29477	641	29488
// OP_EQ_E	29488	29478	29489
// OP_IFNOT	29489	3	0
// OP_LOAD_F	29477	651	29490
// OP_RETURN	29490	0	0
// OP_LOAD_ENT	29477	642	29491
// OP_EQ_E	29491	29478	29492
// OP_IFNOT	29492	3	0
// OP_LOAD_F	29477	652	29493
// OP_RETURN	29493	0	0
// OP_LOAD_ENT	29477	643	29494
// OP_EQ_E	29494	29478	29495
// OP_IFNOT	29495	3	0
// OP_LOAD_F	29477	653	29496
// OP_RETURN	29496	0	0
// OP_LOAD_ENT	29477	644	29497
// OP_EQ_E	29497	29478	29498
// OP_IFNOT	29498	3	0
// OP_LOAD_F	29477	654	29499
// OP_RETURN	29499	0	0
// OP_LOAD_ENT	29477	645	29500
// OP_EQ_E	29500	29478	29501
// OP_IFNOT	29501	3	0
// OP_LOAD_F	29477	655	29502
// OP_RETURN	29502	0	0
// OP_LOAD_ENT	29477	646	29503
// OP_EQ_E	29503	29478	29504
// OP_IFNOT	29504	3	0
// OP_LOAD_F	29477	656	29505
// OP_RETURN	29505	0	0
// OP_LOAD_ENT	29477	647	29506
// OP_EQ_E	29506	29478	29507
// OP_IFNOT	29507	3	0
// OP_LOAD_F	29477	656	29508
// OP_RETURN	29508	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef009254, entity globaldef009255) func002687 = 
{
    
    if(globaldef009254.field000315 == globaldef009255)
    {
        return globaldef009254.field000325;
    }
    
    
    if(globaldef009254.field000316 == globaldef009255)
    {
        return globaldef009254.field000326;
    }
    
    
    if(globaldef009254.field000317 == globaldef009255)
    {
        return globaldef009254.field000327;
    }
    
    
    if(globaldef009254.field000318 == globaldef009255)
    {
        return globaldef009254.field000328;
    }
    
    
    if(globaldef009254.field000319 == globaldef009255)
    {
        return globaldef009254.field000329;
    }
    
    
    if(globaldef009254.field000320 == globaldef009255)
    {
        return globaldef009254.field000330;
    }
    
    
    if(globaldef009254.field000321 == globaldef009255)
    {
        return globaldef009254.field000331;
    }
    
    
    if(globaldef009254.field000322 == globaldef009255)
    {
        return globaldef009254.field000332;
    }
    
    
    if(globaldef009254.field000323 == globaldef009255)
    {
        return globaldef009254.field000333;
    }
    
    
    if(globaldef009254.field000324 == globaldef009255)
    {
        return globaldef009254.field000333;
    }
    
    return FALSE;
};


// func002688
// function begins at statement 55976, parm_start=29509
// OP_LOAD_ENT	29509	646	29511
// OP_EQ_E	29511	29510	29512
// OP_IFNOT	29512	3	0
// OP_LOAD_F	29509	656	29513
// OP_RETURN	29513	0	0
// OP_LOAD_ENT	29509	647	29514
// OP_EQ_E	29514	29510	29515
// OP_IFNOT	29515	3	0
// OP_LOAD_F	29509	657	29516
// OP_RETURN	29516	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef009256, entity globaldef009257) func002688 = 
{
    
    if(globaldef009256.field000323 == globaldef009257)
    {
        return globaldef009256.field000333;
    }
    
    
    if(globaldef009256.field000324 == globaldef009257)
    {
        return globaldef009256.field000334;
    }
    
    return FALSE;
};


// func002689
// function begins at statement 55988, parm_start=29517
// OP_LOAD_ENT	29517	638	29519
// OP_EQ_E	29519	29518	29520
// OP_IFNOT	29520	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	639	29521
// OP_EQ_E	29521	29518	29522
// OP_IFNOT	29522	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	640	29523
// OP_EQ_E	29523	29518	29524
// OP_IFNOT	29524	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	641	29525
// OP_EQ_E	29525	29518	29526
// OP_IFNOT	29526	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	642	29527
// OP_EQ_E	29527	29518	29528
// OP_IFNOT	29528	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	643	29529
// OP_EQ_E	29529	29518	29530
// OP_IFNOT	29530	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	644	29531
// OP_EQ_E	29531	29518	29532
// OP_IFNOT	29532	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	645	29533
// OP_EQ_E	29533	29518	29534
// OP_IFNOT	29534	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	646	29535
// OP_EQ_E	29535	29518	29536
// OP_IFNOT	29536	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29517	647	29537
// OP_EQ_E	29537	29518	29538
// OP_IFNOT	29538	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef009258, entity globaldef009259) func002689 = 
{
    
    if(globaldef009258.field000315 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000316 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000317 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000318 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000319 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000320 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000321 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000322 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000323 == globaldef009259)
    {
        return TRUE;
    }
    
    
    if(globaldef009258.field000324 == globaldef009259)
    {
        return TRUE;
    }
    
    return FALSE;
};


// MovingEntityCached
// function begins at statement 56030, parm_start=29539
// OP_LOAD_ENT	29539	646	29541
// OP_EQ_E	29541	29540	29542
// OP_IFNOT	29542	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	29539	647	29543
// OP_EQ_E	29543	29540	29544
// OP_IFNOT	29544	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef009260, entity globaldef009261) MovingEntityCached = 
{
    
    if(globaldef009260.field000323 == globaldef009261)
    {
        return TRUE;
    }
    
    
    if(globaldef009260.field000324 == globaldef009261)
    {
        return TRUE;
    }
    
    return FALSE;
};


// func002691
// function begins at statement 56040, parm_start=29545
// OP_LOAD_F	29545	575	29556
// OP_BITAND	29556	703	29557
// OP_LOAD_ENT	29545	622	29558
// OP_NE_E	29558	30	29559
// OP_AND	29557	29559	29560
// OP_IFNOT	29560	4	0
// OP_LOAD_ENT	29545	622	29561
// OP_RETURN	29561	0	0
// OP_GOTO	46	0	0
// OP_LOAD_S	29545	129	29562
// OP_EQ_S	29562	23508	29563
// OP_IFNOT	29563	3	0
// OP_RETURN	29545	0	0
// OP_GOTO	41	0	0
// OP_STORE_F	737	29549	0
// OP_STORE_ENT	30	29547	0
// OP_STORE_ENT	836	29546	0
// OP_IFNOT	29546	35	0
// OP_LOAD_V	29545	105	29564
// OP_STORE_V	29564	29550	0
// OP_LOAD_V	29546	105	29567
// OP_STORE_V	29567	29553	0
// OP_SUB_F	29550	29553	29570
// OP_STORE_V	29570	4	0
// OP_CALL1	488	0	0
// OP_LT	1	737	29571
// OP_IFNOT	29571	23	0
// OP_SUB_F	29551	29554	29572
// OP_STORE_V	29572	4	0
// OP_CALL1	488	0	0
// OP_LT	1	737	29573
// OP_IFNOT	29573	18	0
// OP_SUB_F	29552	29555	29574
// OP_STORE_V	29574	4	0
// OP_CALL1	488	0	0
// OP_LT	1	737	29575
// OP_IFNOT	29575	13	0
// OP_SUB_V	29550	29553	29576
// OP_STORE_V	29576	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	29548	0
// OP_LT	29548	29549	29579
// OP_IFNOT	29579	7	0
// OP_STORE_V	29546	4	0
// OP_STORE_V	29545	7	0
// OP_CALL2	1119	0	0
// OP_IFNOT	1	3	0
// OP_STORE_F	29548	29549	0
// OP_STORE_ENT	29546	29547	0
// OP_LOAD_ENT	29546	620	29580
// OP_STORE_ENT	29580	29546	0
// OP_GOTO	-34	0	0
// OP_IFNOT	29547	2	0
// OP_RETURN	29547	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity globaldef009262) func002691 = 
{
    local entity globaldef009263;
    local entity globaldef009264;
    local float globaldef009265;
    local float globaldef009266;
    local vector globaldef009267;
    local vector globaldef009271;
    if((globaldef009262.field000252 & globaldef000686) && (globaldef009262.field000299 != world))
    {
        return globaldef009262.field000299;
    }
    else
    {
        if(globaldef009262.classname == "waypoint")
        {
            return globaldef009262;
        }
        else
        {
            globaldef009266 = globaldef000720;
            globaldef009264 = world;
            globaldef009263 = globaldef000819;
            
            while(globaldef009263)
            {
                globaldef009267 = globaldef009262.origin;
                globaldef009271 = globaldef009263.origin;
                
                if((fabs(globaldef009267_x - globaldef009271_x)) < globaldef000720)
                {
                    
                    if((fabs(globaldef009267_y - globaldef009271_y)) < globaldef000720)
                    {
                        
                        if((fabs(globaldef009267_z - globaldef009271_z)) < globaldef000720)
                        {
                            globaldef009265 = vlen(globaldef009267 - globaldef009271);
                            
                            if(globaldef009265 < globaldef009266)
                            {
                                
                                if(func002467(globaldef009263, globaldef009262))
                                {
                                    globaldef009266 = globaldef009265;
                                    globaldef009264 = globaldef009263;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
                globaldef009263 = globaldef009263.field000297;
            }
            
            
            if(globaldef009264)
            {
                return globaldef009264;
            }
            
        }
        
    }
    
    return world;
};


// func002692
// function begins at statement 56096, parm_start=29581
// OP_NOT_ENT	29582	0	29584
// OP_IFNOT	29584	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	29581	0	29585
// OP_IFNOT	29585	3	0
// OP_STORE_V	29586	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	29581	547	29587
// OP_STOREP_FNC	28231	29587	0
// OP_STORE_ENT	836	29583	0
// OP_IFNOT	29583	8	0
// OP_ADDRESS	29583	646	29588
// OP_STOREP_ENT	30	29588	0
// OP_ADDRESS	29583	656	29589
// OP_STOREP_F	213	29589	0
// OP_LOAD_ENT	29583	620	29590
// OP_STORE_ENT	29590	29583	0
// OP_GOTO	-7	0	0
// OP_STORE_V	29581	4	0
// OP_STORE_V	29582	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	29581	13	0
// OP_CALL4	1201	0	0
// OP_DONE	0	0	0
void (entity globaldef009275, entity globaldef009276) func002692 = 
{
    local entity globaldef009277;
    
    if(!globaldef009276)
    {
        return;
    }
    
    
    if(!globaldef009275)
    {
        objerror("can't cache the world\n");
    }
    
    globaldef009275.f_updatecache = func002648;
    globaldef009277 = globaldef000819;
    
    while(globaldef009277)
    {
        globaldef009277.field000323 = world;
        globaldef009277.field000333 = FALSE;
        globaldef009277 = globaldef009277.field000297;
    }
    
    func002683(globaldef009275, globaldef009276, FALSE, globaldef009275);
};

