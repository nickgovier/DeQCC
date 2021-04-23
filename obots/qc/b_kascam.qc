
// CamVectors
// function begins at statement 192, parm_start=1243
// OP_LOAD_S	1243	129	1244
// OP_EQ_S	1244	1236	1245
// OP_IFNOT	1245	5	0
// OP_LOAD_V	1243	175	1246
// OP_STORE_V	1246	4	0
// OP_CALL1	452	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	1243	129	1249
// OP_EQ_S	1249	1241	1250
// OP_IFNOT	1250	5	0
// OP_LOAD_V	1243	175	1251
// OP_STORE_V	1251	4	0
// OP_CALL1	452	0	0
// OP_GOTO	4	0	0
// OP_LOAD_V	1243	117	1254
// OP_STORE_V	1254	4	0
// OP_CALL1	452	0	0
// OP_DONE	0	0	0
void (entity ent) CamVectors = 
{
    if(ent.classname == "player")
    {
        makevectors(ent.v_angle);
    }
    else
    {
        if(ent.classname == "bot")
        {
            makevectors(ent.v_angle);
        }
        else
        {
            makevectors(ent.angles);
        }
        
    }
    
};


void(entity client, string s) camcenterprint1 = #73;

void(entity client, string s, string s2) camcenterprint2 = #73;

void(entity client, string s, string s2, string s3) camcenterprint3 = #73;

void(entity client, string s, string s2, string s3, string s4) camcenterprint4 = #73;

void(entity client, string s, string s2, string s3, string s4, string s5) camcenterprint5 = #73;

void(entity client, string s, string s2, string s3, string s4, string s5, string s6) camcenterprint6 = #73;

void(entity client, string s, string s2, string s3, string s4, string s5, string s6, string s7) camcenterprint7 = #73;

// CamReport
// function begins at statement 210, parm_start=1265
// OP_LOAD_F	1265	153	1269
// OP_LT	1269	214	1270
// OP_IFNOT	1270	3	0
// OP_STORE_S	1271	1267	0
// OP_GOTO	5	0	0
// OP_LOAD_F	1265	153	1272
// OP_STORE_V	1272	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	1267	0
// OP_LOAD_F	1265	153	1273
// OP_NE_F	1273	214	1274
// OP_IFNOT	1274	3	0
// OP_STORE_S	1275	1268	0
// OP_GOTO	2	0	0
// OP_STORE_S	1276	1268	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1266	7	0
// OP_STORE_V	1277	10	0
// OP_LOAD_S	1265	180	1278
// OP_STORE_V	1278	13	0
// OP_STORE_V	1279	16	0
// OP_STORE_V	1267	19	0
// OP_STORE_V	1268	22	0
// OP_CALL7	1262	0	0
// OP_DONE	0	0	0
void (entity ent, string tit) CamReport = 
{
    local string s2;
    local string s3;
    if(ent.frags < TRUE)
    {
        s2 = "no";
    }
    else
    {
        s2 = ftos(ent.frags);
    }
    
    if(ent.frags != TRUE)
    {
        s3 = " frags";
    }
    else
    {
        s3 = " frag";
    }
    
    camcenterprint6(self, tit, "\n\n\n", ent.netname, " - ", s2, s3);
};


// CamSqrt
// function begins at statement 235, parm_start=1281
// OP_LT	1281	1283	1284
// OP_IFNOT	1284	2	0
// OP_RETURN	213	0	0
// OP_GT	1281	214	1285
// OP_IFNOT	1285	3	0
// OP_STORE_F	1281	1282	0
// OP_GOTO	2	0	0
// OP_STORE_F	214	1282	0
// OP_MUL_F	1282	1282	1286
// OP_ADD_F	1281	1286	1287
// OP_MUL_F	216	1282	1288
// OP_DIV_F	1287	1288	1289
// OP_STORE_F	1289	1282	0
// OP_MUL_F	1282	1282	1290
// OP_SUB_F	1290	1281	1291
// OP_STORE_V	1291	4	0
// OP_CALL1	488	0	0
// OP_MUL_F	1281	1283	1292
// OP_GT	1	1292	1293
// OP_IF	1293	-11	0
// OP_RETURN	1282	0	0
// OP_DONE	0	0	0
float (float num) CamSqrt = 
{
    local float apr;
    
    if(num < 0.001)
    {
        return FALSE;
    }
    
    if(num > TRUE)
    {
        apr = num;
    }
    else
    {
        apr = TRUE;
    }
    
    do
    {
        apr = (num + (apr * apr)) / (FL_SWIM * apr);
    } while ((fabs((apr * apr) - num)) > (num * 0.001));
    return apr;
};


// CamReAngle
// function begins at statement 257, parm_start=1295
// OP_GT	1295	1296	1297
// OP_IFNOT	1297	4	0
// OP_SUB_F	1295	1298	1299
// OP_STORE_F	1299	1295	0
// OP_GOTO	-4	0	0
// OP_LT	1295	1300	1301
// OP_IFNOT	1301	4	0
// OP_ADD_F	1295	1298	1302
// OP_STORE_F	1302	1295	0
// OP_GOTO	-4	0	0
// OP_RETURN	1295	0	0
// OP_DONE	0	0	0
float (float a) CamReAngle = 
{
    
    while(a > 180)
    {
        a = a - 360;
    }
    
    
    while(a < -180)
    {
        a = a + 360;
    }
    
    return a;
};


// CamVisible
// function begins at statement 269, parm_start=1304
// OP_LOAD_V	28	105	1307
// OP_STORE_V	1307	4	0
// OP_STORE_V	1304	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	1310
// OP_AND	79	80	1311
// OP_NOT_F	1311	0	1312
// OP_AND	1310	1312	1313
// OP_RETURN	1313	0	0
// OP_DONE	0	0	0
float (vector vec) CamVisible = 
{
    traceline(self.origin, vec, TRUE, self);
    return (trace_fraction == TRUE) && (!(trace_inopen && trace_inwater));
};


// CamVisibleEnt
// function begins at statement 281, parm_start=1315
// OP_LOAD_V	1315	105	1319
// OP_STORE_V	1319	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	1315	105	1322
// OP_STORE_V	1322	1316	0
// OP_LOAD_F	1315	97	1325
// OP_STORE_F	1325	1318	0
// OP_STORE_V	1316	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	1315	101	1326
// OP_SUB_F	1326	217	1327
// OP_STORE_F	1327	1318	0
// OP_STORE_V	1316	4	0
// OP_CALL1	1303	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float (entity ent) CamVisibleEnt = 
{
    local vector vec;
    
    if(CamVisible(ent.origin))
    {
        return TRUE;
    }
    
    vec = ent.origin;
    vec_z = ent.absmin_z;
    
    if(CamVisible(vec))
    {
        return TRUE;
    }
    
    vec_z = ent.absmax_z - FL_CLIENT;
    return CamVisible(vec);
};


// CamShoot
// function begins at statement 301, parm_start=1329
// OP_LOAD_V	28	175	1336
// OP_STORE_V	1336	4	0
// OP_CALL1	452	0	0
// OP_STORE_ENT	30	1330	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1329	0
// OP_STORE_F	213	1335	0
// OP_NE_E	1329	30	1339
// OP_IFNOT	1339	29	0
// OP_LOAD_F	1329	165	1340
// OP_EQ_F	1340	246	1341
// OP_IFNOT	1341	22	0
// OP_LOAD_V	1329	105	1342
// OP_LOAD_V	28	105	1345
// OP_SUB_V	1342	1345	1348
// OP_STORE_V	1348	1331	0
// OP_STORE_V	1331	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	1331	0
// OP_MUL_F	59	1331	1351
// OP_MUL_F	60	1332	1352
// OP_ADD_F	1351	1352	1353
// OP_MUL_F	61	1333	1354
// OP_ADD_F	1353	1354	1355
// OP_STORE_F	1355	1334	0
// OP_GT	1334	1335	1356
// OP_IFNOT	1356	7	0
// OP_LOAD_V	1329	105	1357
// OP_STORE_V	1357	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	3	0
// OP_STORE_ENT	1329	1330	0
// OP_STORE_F	1334	1335	0
// OP_STORE_V	1329	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1329	0
// OP_GOTO	-29	0	0
// OP_RETURN	1330	0	0
// OP_DONE	0	0	0
entity () CamShoot = 
{
    local entity ent;
    local entity entx;
    local vector vec;
    local float d1;
    local float dx;
    makevectors(self.v_angle);
    entx = world;
    ent = CamCycle(world);
    dx = FALSE;
    
    while(ent != world)
    {
        
        if(ent.deadflag == DEAD_NO)
        {
            vec = ent.origin - self.origin;
            vec = normalize(vec);
            d1 = ((v_forward_x * vec_x) + (v_forward_y * vec_y)) + (v_forward_z * vec_z);
            
            if(d1 > dx)
            {
                
                if(CamVisible(ent.origin))
                {
                    entx = ent;
                    dx = d1;
                }
                
            }
            
        }
        
        ent = CamCycle(ent);
    }
    
    return entx;
};


// CamHurry
// function begins at statement 341, parm_start=1361
// OP_LT	1361	213	1366
// OP_IFNOT	1366	3	0
// OP_SUB_F	213	1362	1367
// OP_STORE_F	1367	1362	0
// OP_STORE_F	32	1364	0
// OP_DIV_F	1361	1362	1368
// OP_STORE_V	1368	4	0
// OP_CALL1	1280	0	0
// OP_STORE_F	1	1365	0
// OP_GT	1364	1365	1369
// OP_IFNOT	1369	3	0
// OP_RETURN	1361	0	0
// OP_GOTO	6	0	0
// OP_MUL_F	1362	1364	1370
// OP_MUL_F	216	1365	1371
// OP_SUB_F	1371	1364	1372
// OP_MUL_F	1370	1372	1373
// OP_RETURN	1373	0	0
// OP_DONE	0	0	0
float (float d, float a) CamHurry = 
{
    local float dd;
    local float t;
    local float tt;
    
    if(d < FALSE)
    {
        a = FALSE - a;
    }
    
    t = frametime;
    tt = CamSqrt(d / a);
    if(t > tt)
    {
        return d;
    }
    else
    {
        return (a * t) * ((FL_SWIM * tt) - t);
    }
    
};


// CamSmooth
// function begins at statement 360, parm_start=1375
// OP_STORE_V	1375	4	0
// OP_CALL1	1294	0	0
// OP_STORE_F	1	1375	0
// OP_DIV_F	1376	216	1388
// OP_STORE_F	1388	1381	0
// OP_MUL_F	1377	1375	1389
// OP_STORE_F	1389	1382	0
// OP_MUL_F	1381	1381	1390
// OP_STORE_F	1390	1383	0
// OP_STORE_F	32	1378	0
// OP_STORE_V	1382	4	0
// OP_CALL1	488	0	0
// OP_LT	1	1383	1391
// OP_IFNOT	1391	4	0
// OP_GT	1376	213	1392
// OP_STORE_F	1392	1384	0
// OP_GOTO	3	0	0
// OP_GT	1375	213	1393
// OP_STORE_F	1393	1384	0
// OP_IFNOT	1384	10	0
// OP_ADD_F	1383	1382	1394
// OP_DIV_F	1394	216	1395
// OP_STORE_V	1395	4	0
// OP_CALL1	1280	0	0
// OP_DIV_F	1	1377	1396
// OP_STORE_F	1396	1380	0
// OP_SUB_F	213	1377	1397
// OP_STORE_F	1397	1377	0
// OP_GOTO	7	0	0
// OP_SUB_F	1383	1382	1398
// OP_DIV_F	1398	216	1399
// OP_STORE_V	1399	4	0
// OP_CALL1	1280	0	0
// OP_DIV_F	1	1377	1400
// OP_STORE_F	1400	1380	0
// OP_DIV_F	1381	1377	1401
// OP_SUB_F	1380	1401	1402
// OP_STORE_F	1402	1379	0
// OP_GT	1379	1378	1403
// OP_IFNOT	1403	11	0
// OP_MUL_F	1377	1378	1404
// OP_ADD_F	1404	1376	1405
// OP_MUL_F	1405	1378	1406
// OP_ADD_F	1406	1375	1407
// OP_STORE_F	1407	1375	0
// OP_MUL_F	1377	1378	1408
// OP_MUL_F	1408	216	1409
// OP_ADD_F	1409	1376	1410
// OP_STORE_F	1410	1376	0
// OP_GOTO	26	0	0
// OP_MUL_F	1377	1379	1411
// OP_ADD_F	1411	1376	1412
// OP_MUL_F	1412	1379	1413
// OP_ADD_F	1413	1375	1414
// OP_STORE_F	1414	1375	0
// OP_MUL_F	1377	1379	1415
// OP_MUL_F	1415	216	1416
// OP_ADD_F	1416	1376	1417
// OP_STORE_F	1417	1376	0
// OP_SUB_F	1378	1379	1418
// OP_STORE_F	1418	1379	0
// OP_LT	1379	1380	1419
// OP_IFNOT	1419	11	0
// OP_MUL_F	1377	1379	1420
// OP_SUB_F	1376	1420	1421
// OP_MUL_F	1421	1379	1422
// OP_ADD_F	1422	1375	1423
// OP_STORE_F	1423	1375	0
// OP_MUL_F	1377	1379	1424
// OP_MUL_F	1424	216	1425
// OP_SUB_F	1376	1425	1426
// OP_STORE_F	1426	1376	0
// OP_GOTO	3	0	0
// OP_STORE_F	213	1375	0
// OP_STORE_F	213	1376	0
// OP_STORE_F	1375	1385	0
// OP_STORE_F	1376	1386	0
// OP_RETURN	1385	0	0
// OP_DONE	0	0	0
vector (float s, float v, float a) CamSmooth = 
{
    local float dt;
    local float t1;
    local float t2;
    local float v2;
    local float as;
    local float sv2;
    local float b;
    local vector vec;
    s = CamReAngle(s);
    v2 = v / FL_SWIM;
    as = a * s;
    sv2 = v2 * v2;
    dt = frametime;
    if(fabs(as) < sv2)
    {
        b = v > FALSE;
    }
    else
    {
        b = s > FALSE;
    }
    
    if(b)
    {
        t2 = (CamSqrt((sv2 + as) / FL_SWIM)) / a;
        a = FALSE - a;
    }
    else
    {
        t2 = (CamSqrt((sv2 - as) / FL_SWIM)) / a;
    }
    
    t1 = t2 - (v2 / a);
    if(t1 > dt)
    {
        s = (((a * dt) + v) * dt) + s;
        v = ((a * dt) * FL_SWIM) + v;
    }
    else
    {
        s = (((a * t1) + v) * t1) + s;
        v = ((a * t1) * FL_SWIM) + v;
        t1 = dt - t1;
        if(t1 < t2)
        {
            s = ((v - (a * t1)) * t1) + s;
            v = v - ((a * t1) * FL_SWIM);
        }
        else
        {
            s = FALSE;
            v = FALSE;
        }
        
    }
    
    vec_x = s;
    vec_y = v;
    return vec;
};


// TryFlybyVector
// function begins at statement 439, parm_start=1428
// OP_STORE_V	1428	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	1434	0
// OP_MUL_FV	1438	1434	1439
// OP_STORE_V	1439	1428	0
// OP_MUL_FV	230	1434	1442
// OP_STORE_V	1442	1434	0
// OP_LOAD_ENT	28	181	1445
// OP_LOAD_V	1445	105	1446
// OP_STORE_V	1446	1431	0
// OP_LOAD_ENT	28	181	1449
// OP_LOAD_F	1449	101	1450
// OP_SUB_F	1450	217	1451
// OP_STORE_F	1451	1433	0
// OP_STORE_V	1431	4	0
// OP_ADD_V	1431	1428	1452
// OP_STORE_V	1452	7	0
// OP_STORE_V	213	10	0
// OP_LOAD_ENT	28	181	1455
// OP_STORE_V	1455	13	0
// OP_CALL4	466	0	0
// OP_NE_E	78	30	1456
// OP_IFNOT	1456	2	0
// OP_RETURN	1457	0	0
// OP_AND	79	80	1458
// OP_IFNOT	1458	2	0
// OP_RETURN	1457	0	0
// OP_SUB_V	71	1434	1459
// OP_STORE_V	1459	71	0
// OP_STORE_V	71	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	277	1462
// OP_IFNOT	1462	2	0
// OP_RETURN	1457	0	0
// OP_LOAD_ENT	28	181	1463
// OP_LOAD_V	1463	105	1464
// OP_SUB_V	1464	71	1467
// OP_STORE_V	1467	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	1437	0
// OP_LT	1437	1470	1471
// OP_IFNOT	1471	2	0
// OP_RETURN	1457	0	0
// OP_SUB_F	1472	1437	1473
// OP_STORE_V	1473	4	0
// OP_CALL1	488	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float (vector vec) TryFlybyVector = 
{
    local vector orig;
    local vector vec1;
    local float v1;
    vec1 = normalize(vec);
    vec = 700 * vec1;
    vec1 = MOVETYPE_FLY * vec1;
    orig = self.enemy.origin;
    orig_z = self.enemy.absmax_z - FL_CLIENT;
    traceline(orig, orig + vec, FALSE, self.enemy);
    
    if(trace_ent != world)
    {
        return 1111;
    }
    
    
    if(trace_inopen && trace_inwater)
    {
        return 1111;
    }
    
    trace_endpos = trace_endpos - vec1;
    
    if(pointcontents(trace_endpos) == CONTENT_SOLID)
    {
        return 1111;
    }
    
    v1 = vlen(self.enemy.origin - trace_endpos);
    
    if(v1 < 50)
    {
        return 1111;
    }
    
    return fabs(333 - v1);
};


// CamUpdatePos
// function begins at statement 487, parm_start=1475
// OP_LOAD_V	28	105	1484
// OP_STORE_V	1484	4	0
// OP_LOAD_V	28	406	1487
// OP_STORE_V	1487	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	1490
// OP_IFNOT	1490	3	0
// OP_STORE_F	213	1475	0
// OP_STORE_F	213	1476	0
// OP_EQ_F	1475	213	1491
// OP_IFNOT	1491	6	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	406	1492
// OP_STORE_V	1492	7	0
// OP_CALL2	453	0	0
// OP_GOTO	22	0	0
// OP_LOAD_V	28	406	1495
// OP_LOAD_V	28	105	1498
// OP_SUB_V	1495	1498	1501
// OP_STORE_V	1501	1477	0
// OP_STORE_V	1477	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	1483	0
// OP_STORE_V	1477	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	1477	0
// OP_STORE_V	1483	4	0
// OP_STORE_V	1475	7	0
// OP_CALL2	1360	0	0
// OP_STORE_F	1	1483	0
// OP_MUL_FV	1483	1477	1504
// OP_STORE_V	1504	1477	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	1507
// OP_ADD_V	1507	1477	1510
// OP_STORE_V	1510	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	28	174	1513
// OP_STOREP_F	214	1513	0
// OP_ADDRESS	28	103	1514
// OP_STOREP_F	227	1514	0
// OP_LOAD_F	28	438	1515
// OP_NE_F	1515	1229	1516
// OP_IFNOT	1516	8	0
// OP_LOAD_V	28	410	1517
// OP_LOAD_V	28	406	1520
// OP_SUB_V	1517	1520	1523
// OP_STORE_V	1523	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	1477	0
// OP_GOTO	7	0	0
// OP_LOAD_V	28	410	1526
// OP_LOAD_V	28	105	1529
// OP_SUB_V	1526	1529	1532
// OP_STORE_V	1532	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	1477	0
// OP_STORE_F	213	1479	0
// OP_SUB_F	1298	1477	1535
// OP_STORE_V	1535	4	0
// OP_CALL1	1294	0	0
// OP_STORE_F	1	1477	0
// OP_STORE_V	1478	4	0
// OP_CALL1	1294	0	0
// OP_STORE_F	1	1478	0
// OP_GT	1477	1536	1537
// OP_IFNOT	1537	3	0
// OP_STORE_F	1536	1477	0
// OP_GOTO	4	0	0
// OP_LT	1477	1538	1539
// OP_IFNOT	1539	2	0
// OP_STORE_F	1538	1477	0
// OP_EQ_F	1476	213	1540
// OP_IFNOT	1540	6	0
// OP_ADDRESS	28	117	1541
// OP_STOREP_V	1477	1541	0
// OP_ADDRESS	28	400	1544
// OP_STOREP_V	286	1544	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	118	1547
// OP_SUB_F	1547	1477	1548
// OP_STORE_V	1548	4	0
// OP_LOAD_F	28	401	1549
// OP_STORE_V	1549	7	0
// OP_STORE_V	1476	10	0
// OP_CALL3	1374	0	0
// OP_STORE_V	1	1480	0
// OP_ADDRESS	28	401	1550
// OP_STOREP_F	1481	1550	0
// OP_ADDRESS	28	118	1551
// OP_ADD_F	1477	1480	1552
// OP_STOREP_F	1552	1551	0
// OP_LOAD_F	28	119	1553
// OP_SUB_F	1553	1478	1554
// OP_STORE_V	1554	4	0
// OP_LOAD_F	28	402	1555
// OP_STORE_V	1555	7	0
// OP_STORE_V	1476	10	0
// OP_CALL3	1374	0	0
// OP_STORE_V	1	1480	0
// OP_ADDRESS	28	402	1556
// OP_STOREP_F	1481	1556	0
// OP_ADDRESS	28	119	1557
// OP_ADD_F	1478	1480	1558
// OP_STOREP_F	1558	1557	0
// OP_ADDRESS	28	118	1559
// OP_LOAD_F	28	118	1560
// OP_STORE_V	1560	4	0
// OP_CALL1	1294	0	0
// OP_STOREP_F	1	1559	0
// OP_ADDRESS	28	119	1561
// OP_LOAD_F	28	119	1562
// OP_STORE_V	1562	4	0
// OP_CALL1	1294	0	0
// OP_STOREP_F	1	1561	0
// OP_ADDRESS	28	175	1563
// OP_LOAD_V	28	117	1566
// OP_STOREP_V	1566	1563	0
// OP_DONE	0	0	0
void (float speedv, float speeda) CamUpdatePos = 
{
    local vector vec;
    local vector v1;
    local float vlength;
    traceline(self.origin, self.dest, TRUE, self);
    
    if(trace_fraction != TRUE)
    {
        speedv = FALSE;
        speeda = FALSE;
    }
    
    if(speedv == FALSE)
    {
        setorigin(self, self.dest);
    }
    else
    {
        vec = self.dest - self.origin;
        vlength = vlen(vec);
        vec = normalize(vec);
        vlength = CamHurry(vlength, speedv);
        vec = vlength * vec;
        setorigin(self, self.origin + vec);
    }
    
    self.fixangle = TRUE;
    self.movetype = MOVETYPE_NONE;
    if(self.state != CAM_DEATH)
    {
        vec = vectoangles(self.dest1 - self.dest);
    }
    else
    {
        vec = vectoangles(self.dest1 - self.origin);
    }
    
    vec_z = FALSE;
    vec_x = CamReAngle(360 - vec_x);
    vec_y = CamReAngle(vec_y);
    if(vec_x > 70)
    {
        vec_x = 70;
    }
    else
    {
        
        if(vec_x < -70)
        {
            vec_x = -70;
        }
        
    }
    
    if(speeda == FALSE)
    {
        self.angles = vec;
        self.mangle = VEC_ORIGIN;
    }
    else
    {
        v1 = CamSmooth(self.angles_x - vec_x, self.mangle_x, speeda);
        self.mangle_x = v1_y;
        self.angles_x = vec_x + v1_x;
        v1 = CamSmooth(self.angles_y - vec_y, self.mangle_y, speeda);
        self.mangle_y = v1_y;
        self.angles_y = vec_y + v1_x;
        self.angles_x = CamReAngle(self.angles_x);
        self.angles_y = CamReAngle(self.angles_y);
    }
    
    self.v_angle = self.angles;
};


// CamSetAuto
// function begins at statement 608, parm_start=1570
// OP_ADDRESS	28	406	1570
// OP_LOAD_V	28	105	1573
// OP_STOREP_V	1573	1570	0
// OP_LOAD_V	28	175	1576
// OP_STORE_V	1576	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	28	410	1579
// OP_LOAD_V	28	105	1582
// OP_ADD_V	1582	59	1585
// OP_STOREP_V	1585	1579	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1474	0	0
// OP_DONE	0	0	0
void () CamSetAuto = 
{
    self.dest = self.origin;
    makevectors(self.v_angle);
    self.dest1 = self.origin + v_forward;
    CamUpdatePos(FALSE, FALSE);
};


// CamGoIdle
// function begins at statement 622, parm_start=1589
// OP_CALL0	1569	0	0
// OP_ADDRESS	28	438	1589
// OP_STOREP_F	1222	1589	0
// OP_ADDRESS	28	422	1590
// OP_ADD_F	31	216	1591
// OP_STOREP_F	1591	1590	0
// OP_ADDRESS	28	371	1592
// OP_STOREP_F	31	1592	0
// OP_ADDRESS	28	414	1593
// OP_LOAD_V	28	410	1596
// OP_STOREP_V	1596	1593	0
// OP_ADDRESS	28	181	1599
// OP_STOREP_ENT	28	1599	0
// OP_DONE	0	0	0
void () CamGoIdle = 
{
    CamSetAuto();
    self.state = CAM_IDLE;
    self.pausetime = time + FL_SWIM;
    self.search_time = time;
    self.dest2 = self.dest1;
    self.enemy = self;
};


// CamGoDeath
// function begins at statement 636, parm_start=1601
// OP_LOAD_F	28	424	1601
// OP_IFNOT	1601	5	0
// OP_LOAD_ENT	28	181	1602
// OP_STORE_V	1602	4	0
// OP_STORE_V	1603	7	0
// OP_CALL2	1264	0	0
// OP_ADDRESS	28	400	1604
// OP_STOREP_V	286	1604	0
// OP_ADDRESS	28	406	1607
// OP_LOAD_V	28	105	1610
// OP_STOREP_V	1610	1607	0
// OP_ADDRESS	28	438	1613
// OP_STOREP_F	1229	1613	0
// OP_ADDRESS	28	422	1614
// OP_ADD_F	31	214	1615
// OP_STOREP_F	1615	1614	0
// OP_ADDRESS	28	423	1616
// OP_STOREP_ENT	30	1616	0
// OP_ADDRESS	28	371	1617
// OP_ADD_F	31	230	1618
// OP_STOREP_F	1618	1617	0
// OP_DONE	0	0	0
void () CamGoDeath = 
{
    
    if(self.aflag)
    {
        CamReport(self.enemy, "R.I.P.");
    }
    
    self.mangle = VEC_ORIGIN;
    self.dest = self.origin;
    self.state = CAM_DEATH;
    self.pausetime = time + TRUE;
    self.movetarget = world;
    self.search_time = time + MOVETYPE_FLY;
};


// CamFlybyTarget
// function begins at statement 658, parm_start=1620
// OP_LOAD_V	1620	105	1624
// OP_STORE_V	1624	1621	0
// OP_LOAD_F	1620	101	1627
// OP_SUB_F	1627	217	1628
// OP_STORE_F	1628	1623	0
// OP_RETURN	1621	0	0
// OP_DONE	0	0	0
vector (entity ent) CamFlybyTarget = 
{
    local vector vec;
    vec = ent.origin;
    vec_z = ent.absmax_z - FL_CLIENT;
    return vec;
};


// CamInitFlybyMode
// function begins at statement 665, parm_start=1630
// OP_ADDRESS	28	422	1643
// OP_ADD_F	31	1644	1645
// OP_STOREP_F	1645	1643	0
// OP_LOAD_ENT	28	181	1646
// OP_NE_E	1646	1630	1647
// OP_IFNOT	1647	15	0
// OP_ADDRESS	28	181	1648
// OP_STOREP_ENT	1630	1648	0
// OP_LOAD_ENT	28	423	1649
// OP_LOAD_ENT	28	181	1650
// OP_NE_E	1649	1650	1651
// OP_IFNOT	1651	9	0
// OP_LOAD_F	28	424	1652
// OP_IFNOT	1652	5	0
// OP_LOAD_ENT	28	181	1653
// OP_STORE_V	1653	4	0
// OP_STORE_V	1654	7	0
// OP_CALL2	1264	0	0
// OP_ADDRESS	28	423	1655
// OP_STOREP_ENT	1630	1655	0
// OP_LOAD_ENT	28	181	1656
// OP_LOAD_V	1656	117	1657
// OP_STORE_V	1657	1633	0
// OP_STORE_F	213	1633	0
// OP_STORE_F	213	1634	0
// OP_STORE_V	1633	4	0
// OP_CALL1	452	0	0
// OP_MUL_FV	228	59	1660
// OP_STORE_V	1660	59	0
// OP_STORE_F	1663	1632	0
// OP_ADD_V	62	59	1664
// OP_ADD_V	1664	65	1667
// OP_STORE_V	1667	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1670
// OP_IFNOT	1670	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	62	59	1671
// OP_ADD_V	1671	65	1674
// OP_STORE_V	1674	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1677
// OP_IFNOT	1677	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_ADD_V	62	59	1678
// OP_SUB_V	1678	65	1681
// OP_STORE_V	1681	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1684
// OP_IFNOT	1684	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	62	59	1685
// OP_SUB_V	1685	65	1688
// OP_STORE_V	1688	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1691
// OP_IFNOT	1691	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_GE	1632	1663	1692
// OP_IFNOT	1692	33	0
// OP_ADD_V	62	59	1693
// OP_STORE_V	1693	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1696
// OP_IFNOT	1696	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	62	59	1697
// OP_STORE_V	1697	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1700
// OP_IFNOT	1700	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_ADD_V	62	65	1701
// OP_STORE_V	1701	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1704
// OP_IFNOT	1704	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	62	65	1705
// OP_STORE_V	1705	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1708
// OP_IFNOT	1708	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_GE	1632	1663	1709
// OP_IFNOT	1709	35	0
// OP_ADD_V	59	65	1710
// OP_STORE_V	1710	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1713
// OP_IFNOT	1713	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	59	65	1714
// OP_STORE_V	1714	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1717
// OP_IFNOT	1717	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	59	1718
// OP_ADD_V	1718	65	1721
// OP_STORE_V	1721	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1724
// OP_IFNOT	1724	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	59	1725
// OP_SUB_V	1725	65	1728
// OP_STORE_V	1728	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1731
// OP_IFNOT	1731	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_GE	1632	1663	1732
// OP_IFNOT	1732	31	0
// OP_STORE_V	59	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1733
// OP_IFNOT	1733	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_STORE_V	65	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1734
// OP_IFNOT	1734	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	59	1735
// OP_STORE_V	1735	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1738
// OP_IFNOT	1738	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	65	1739
// OP_STORE_V	1739	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1742
// OP_IFNOT	1742	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_GE	1632	1663	1743
// OP_IFNOT	1743	41	0
// OP_SUB_V	286	62	1744
// OP_ADD_V	1744	59	1747
// OP_ADD_V	1747	65	1750
// OP_STORE_V	1750	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1753
// OP_IFNOT	1753	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	62	1754
// OP_SUB_V	1754	59	1757
// OP_ADD_V	1757	65	1760
// OP_STORE_V	1760	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1763
// OP_IFNOT	1763	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	62	1764
// OP_ADD_V	1764	59	1767
// OP_SUB_V	1767	65	1770
// OP_STORE_V	1770	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1773
// OP_IFNOT	1773	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	62	1774
// OP_SUB_V	1774	59	1777
// OP_SUB_V	1777	65	1780
// OP_STORE_V	1780	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1783
// OP_IFNOT	1783	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_GE	1632	1663	1784
// OP_IFNOT	1784	37	0
// OP_SUB_V	286	62	1785
// OP_ADD_V	1785	59	1788
// OP_STORE_V	1788	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1791
// OP_IFNOT	1791	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	62	1792
// OP_ADD_V	1792	65	1795
// OP_STORE_V	1795	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1798
// OP_IFNOT	1798	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	62	1799
// OP_SUB_V	1799	59	1802
// OP_STORE_V	1802	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1805
// OP_IFNOT	1805	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_SUB_V	286	62	1806
// OP_SUB_V	1806	65	1809
// OP_STORE_V	1809	4	0
// OP_CALL1	1427	0	0
// OP_STORE_F	1	1631	0
// OP_LT	1631	1632	1812
// OP_IFNOT	1812	3	0
// OP_STORE_F	1631	1632	0
// OP_STORE_V	71	1633	0
// OP_GE	1632	1663	1813
// OP_IFNOT	1813	6	0
// OP_CALL0	1588	0	0
// OP_ADDRESS	28	422	1814
// OP_ADD_F	31	216	1815
// OP_STOREP_F	1815	1814	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	410	1816
// OP_LOAD_ENT	28	181	1819
// OP_STORE_V	1819	4	0
// OP_CALL1	1619	0	0
// OP_STOREP_V	1	1816	0
// OP_ADDRESS	28	406	1820
// OP_STOREP_V	1633	1820	0
// OP_ADDRESS	28	438	1823
// OP_STOREP_F	1224	1823	0
// OP_ADDRESS	28	437	1824
// OP_LOAD_V	28	406	1826
// OP_LOAD_V	28	410	1829
// OP_SUB_V	1826	1829	1832
// OP_STORE_V	1832	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	1825	1	1835
// OP_STOREP_F	1835	1824	0
// OP_LOAD_F	28	437	1836
// OP_LT	1836	745	1837
// OP_IFNOT	1837	3	0
// OP_ADDRESS	28	437	1838
// OP_STOREP_F	745	1838	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1474	0	0
// OP_DONE	0	0	0
void (entity newtarg) CamInitFlybyMode = 
{
    local float f;
    local float max;
    local vector vec;
    local vector vec2;
    local vector trg;
    local entity ent;
    self.pausetime = time + 0.4;
    
    if(self.enemy != newtarg)
    {
        self.enemy = newtarg;
        
        if(self.movetarget != self.enemy)
        {
            
            if(self.aflag)
            {
                CamReport(self.enemy, "Now taking");
            }
            
            self.movetarget = newtarg;
        }
        
    }
    
    vec = self.enemy.angles;
    vec_x = FALSE;
    vec_y = FALSE;
    makevectors(vec);
    v_forward = MOVETYPE_WALK * v_forward;
    max = 1000;
    f = TryFlybyVector((v_up + v_forward) + v_right);
    
    if(f < max)
    {
        max = f;
        vec = trace_endpos;
    }
    
    f = TryFlybyVector((v_up - v_forward) + v_right);
    
    if(f < max)
    {
        max = f;
        vec = trace_endpos;
    }
    
    f = TryFlybyVector((v_up + v_forward) - v_right);
    
    if(f < max)
    {
        max = f;
        vec = trace_endpos;
    }
    
    f = TryFlybyVector((v_up - v_forward) - v_right);
    
    if(f < max)
    {
        max = f;
        vec = trace_endpos;
    }
    
    
    if(max >= 1000)
    {
        f = TryFlybyVector(v_up + v_forward);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(v_up - v_forward);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(v_up + v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(v_up - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
    }
    
    
    if(max >= 1000)
    {
        f = TryFlybyVector(v_forward + v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(v_forward - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector((VEC_ORIGIN - v_forward) + v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector((VEC_ORIGIN - v_forward) - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
    }
    
    
    if(max >= 1000)
    {
        f = TryFlybyVector(v_forward);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(VEC_ORIGIN - v_forward);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(VEC_ORIGIN - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
    }
    
    
    if(max >= 1000)
    {
        f = TryFlybyVector(((VEC_ORIGIN - v_up) + v_forward) + v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(((VEC_ORIGIN - v_up) - v_forward) + v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(((VEC_ORIGIN - v_up) + v_forward) - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector(((VEC_ORIGIN - v_up) - v_forward) - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
    }
    
    
    if(max >= 1000)
    {
        f = TryFlybyVector((VEC_ORIGIN - v_up) + v_forward);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector((VEC_ORIGIN - v_up) + v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector((VEC_ORIGIN - v_up) - v_forward);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
        f = TryFlybyVector((VEC_ORIGIN - v_up) - v_right);
        
        if(f < max)
        {
            max = f;
            vec = trace_endpos;
        }
        
    }
    
    
    if(max >= 1000)
    {
        CamGoIdle();
        self.pausetime = time + FL_SWIM;
        return;
    }
    
    self.dest1 = CamFlybyTarget(self.enemy);
    self.dest = vec;
    self.state = CAM_FLYBY;
    self.lip = 1.5 * (vlen(self.dest - self.dest1));
    
    if(self.lip < GLOBALDEF728_500)
    {
        self.lip = GLOBALDEF728_500;
    }
    
    CamUpdatePos(FALSE, FALSE);
};


// GetFollowCam
// function begins at statement 946, parm_start=1840
// OP_LOAD_ENT	28	181	1846
// OP_STORE_V	1846	4	0
// OP_CALL1	1242	0	0
// OP_LOAD_ENT	28	181	1847
// OP_LOAD_V	1847	105	1848
// OP_LOAD_ENT	28	181	1851
// OP_LOAD_F	1851	141	1852
// OP_ADD_F	1852	229	1853
// OP_MUL_FV	1853	62	1854
// OP_ADD_V	1848	1854	1857
// OP_STORE_V	1857	1840	0
// OP_LOAD_ENT	28	181	1860
// OP_LOAD_V	1860	105	1861
// OP_STORE_V	1861	4	0
// OP_STORE_V	1840	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_STORE_V	1840	4	0
// OP_CALL1	459	0	0
// OP_SUB_V	71	1	1864
// OP_STORE_V	1864	1840	0
// OP_MUL_FV	1867	59	1868
// OP_STORE_V	1868	1843	0
// OP_STORE_V	1840	4	0
// OP_ADD_V	1840	1843	1871
// OP_STORE_V	1871	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_STORE_V	1843	4	0
// OP_CALL1	459	0	0
// OP_SUB_V	71	1	1874
// OP_STORE_V	1874	1843	0
// OP_STORE_V	1843	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	3	0
// OP_RETURN	1843	0	0
// OP_GOTO	2	0	0
// OP_RETURN	1840	0	0
// OP_DONE	0	0	0
vector () GetFollowCam = 
{
    local vector vec;
    local vector vec2;
    CamVectors(self.enemy);
    vec = self.enemy.origin + ((self.enemy.maxs_z + MOVETYPE_STEP) * v_up);
    traceline(self.enemy.origin, vec, FALSE, self);
    vec = trace_endpos - normalize(vec);
    vec2 = -100 * v_forward;
    traceline(vec, vec + vec2, TRUE, self);
    vec2 = trace_endpos - normalize(vec2);
    if(CamVisible(vec2))
    {
        return vec2;
    }
    else
    {
        return vec;
    }
    
};


// GetFollowTrg
// function begins at statement 987, parm_start=1878
// OP_LOAD_ENT	28	181	1881
// OP_LOAD_F	1881	165	1882
// OP_EQ_F	1882	246	1883
// OP_IFNOT	1883	10	0
// OP_LOAD_ENT	28	181	1884
// OP_STORE_V	1884	4	0
// OP_CALL1	1242	0	0
// OP_LOAD_ENT	28	181	1885
// OP_LOAD_V	1885	105	1886
// OP_MUL_FV	225	59	1889
// OP_ADD_V	1886	1889	1892
// OP_STORE_V	1892	1878	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	1895
// OP_LOAD_V	1895	105	1896
// OP_STORE_V	1896	1878	0
// OP_RETURN	1878	0	0
// OP_DONE	0	0	0
vector () GetFollowTrg = 
{
    local vector vec;
    if(self.enemy.deadflag == DEAD_NO)
    {
        CamVectors(self.enemy);
        vec = self.enemy.origin + (FL_WATERJUMP * v_forward);
    }
    else
    {
        vec = self.enemy.origin;
    }
    
    return vec;
};


// CamHandJump
// function begins at statement 1005, parm_start=1900
// OP_LOAD_V	28	175	1900
// OP_STORE_V	1900	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	1903
// OP_STORE_V	1903	4	0
// OP_LOAD_V	28	105	1906
// OP_MUL_FV	1909	59	1910
// OP_ADD_V	1906	1910	1913
// OP_STORE_V	1913	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_ADDRESS	28	406	1916
// OP_LOAD_V	28	105	1919
// OP_SUB_V	71	1919	1922
// OP_STORE_V	1922	4	0
// OP_CALL1	459	0	0
// OP_MUL_FV	230	1	1925
// OP_SUB_V	71	1925	1928
// OP_STOREP_V	1928	1916	0
// OP_ADDRESS	28	410	1931
// OP_LOAD_V	28	105	1934
// OP_STOREP_V	1934	1931	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1474	0	0
// OP_DONE	0	0	0
void () CamHandJump = 
{
    makevectors(self.v_angle);
    traceline(self.origin, self.origin + (2000 * v_forward), TRUE, self);
    self.dest = trace_endpos - (MOVETYPE_FLY * (normalize(trace_endpos - self.origin)));
    self.dest1 = self.origin;
    CamUpdatePos(FALSE, FALSE);
};


// CamGetPos
// function begins at statement 1032, parm_start=1938
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1940	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	1939	0
// OP_GT	1938	213	1941
// OP_NE_E	1939	30	1942
// OP_AND	1941	1942	1943
// OP_IFNOT	1943	9	0
// OP_STORE_V	1939	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1940	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	1939	0
// OP_SUB_F	1938	214	1944
// OP_STORE_F	1944	1938	0
// OP_GOTO	-11	0	0
// OP_RETURN	1939	0	0
// OP_DONE	0	0	0
entity (float n) CamGetPos = 
{
    local entity ent;
    ent = find(world, classname, "CamSavedPos");
    
    while((n > FALSE) && (ent != world))
    {
        ent = find(ent, classname, "CamSavedPos");
        n = n - TRUE;
    }
    
    return ent;
};


// CamSavePos
// function begins at statement 1051, parm_start=1946
// OP_STORE_V	1946	4	0
// OP_CALL1	1937	0	0
// OP_STORE_ENT	1	1947	0
// OP_NE_E	1947	30	1948
// OP_IFNOT	1948	11	0
// OP_ADDRESS	1947	117	1949
// OP_LOAD_V	28	117	1952
// OP_STOREP_V	1952	1949	0
// OP_ADDRESS	1947	175	1955
// OP_LOAD_V	28	175	1958
// OP_STOREP_V	1958	1955	0
// OP_STORE_V	1947	4	0
// OP_LOAD_V	28	105	1961
// OP_STORE_V	1961	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void (float n) CamSavePos = 
{
    local entity ent;
    ent = CamGetPos(n);
    
    if(ent != world)
    {
        ent.angles = self.angles;
        ent.v_angle = self.v_angle;
        setorigin(ent, self.origin);
    }
    
};


// CamLoadPos
// function begins at statement 1067, parm_start=1965
// OP_LOAD_F	28	438	1967
// OP_EQ_F	1967	1226	1968
// OP_LOAD_F	28	438	1969
// OP_EQ_F	1969	1227	1970
// OP_OR	1968	1970	1971
// OP_LOAD_F	28	438	1972
// OP_EQ_F	1972	1228	1973
// OP_OR	1971	1973	1974
// OP_IFNOT	1974	18	0
// OP_STORE_V	1965	4	0
// OP_CALL1	1937	0	0
// OP_STORE_ENT	1	1966	0
// OP_NE_E	1966	30	1975
// OP_IFNOT	1975	13	0
// OP_ADDRESS	28	174	1976
// OP_STOREP_F	214	1976	0
// OP_ADDRESS	28	117	1977
// OP_LOAD_V	1966	117	1980
// OP_STOREP_V	1980	1977	0
// OP_ADDRESS	28	175	1983
// OP_LOAD_V	1966	175	1986
// OP_STOREP_V	1986	1983	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	1966	105	1989
// OP_STORE_V	1989	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void (float n) CamLoadPos = 
{
    local entity ent;
    
    if(((self.state == CAM_HAND) || (self.state == CAM_FREE)) || (self.state == CAM_NOCLIP))
    {
        ent = CamGetPos(n);
        
        if(ent != world)
        {
            self.fixangle = TRUE;
            self.angles = ent.angles;
            self.v_angle = ent.v_angle;
            setorigin(self, ent.origin);
        }
        
    }
    
};


// CamImpulses
// function begins at statement 1094, parm_start=1993
// OP_LOAD_F	28	173	1996
// OP_EQ_F	1996	1997	1998
// OP_IFNOT	1998	5	0
// OP_ADDRESS	28	194	1999
// OP_STOREP_ENT	30	1999	0
// OP_CALL0	1588	0	0
// OP_GOTO	298	0	0
// OP_LOAD_F	28	173	2000
// OP_GT	2000	1997	2001
// OP_LOAD_F	28	173	2002
// OP_LT	2002	2003	2004
// OP_AND	2001	2004	2005
// OP_IFNOT	2005	30	0
// OP_ADDRESS	28	194	2006
// OP_STOREP_ENT	30	2006	0
// OP_LOAD_F	28	173	2007
// OP_SUB_F	2007	1997	2008
// OP_STORE_F	2008	1993	0
// OP_STORE_ENT	30	1994	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1994	0
// OP_SUB_F	1993	214	2009
// OP_STORE_F	2009	1993	0
// OP_GT	1993	213	2010
// OP_NE_E	1994	30	2011
// OP_AND	2010	2011	2012
// OP_IF	2012	-8	0
// OP_NE_E	1994	30	2013
// OP_IFNOT	2013	12	0
// OP_LOAD_F	1994	165	2014
// OP_EQ_F	2014	246	2015
// OP_IFNOT	2015	9	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1629	0	0
// OP_ADDRESS	28	419	2016
// OP_ADD_F	31	235	2017
// OP_STOREP_F	2017	2016	0
// OP_ADDRESS	28	371	2018
// OP_ADD_F	31	2019	2020
// OP_STOREP_F	2020	2018	0
// OP_GOTO	263	0	0
// OP_LOAD_F	28	173	2021
// OP_EQ_F	2021	2022	2023
// OP_IFNOT	2023	6	0
// OP_ADDRESS	28	129	2024
// OP_STOREP_S	2025	2024	0
// OP_STORE_V	28	4	0
// OP_CALL1	1062	0	0
// OP_GOTO	255	0	0
// OP_LOAD_F	28	173	2026
// OP_GE	2026	1296	2027
// OP_LOAD_F	28	173	2028
// OP_LE	2028	2029	2030
// OP_AND	2027	2030	2031
// OP_IFNOT	2031	7	0
// OP_LOAD_F	28	173	2032
// OP_SUB_F	2032	1296	2033
// OP_STORE_F	2033	1993	0
// OP_STORE_V	1993	4	0
// OP_CALL1	1945	0	0
// OP_GOTO	243	0	0
// OP_LOAD_F	28	173	2034
// OP_GE	2034	2035	2036
// OP_LOAD_F	28	173	2037
// OP_LE	2037	2038	2039
// OP_AND	2036	2039	2040
// OP_IFNOT	2040	7	0
// OP_LOAD_F	28	173	2041
// OP_SUB_F	2041	2035	2042
// OP_STORE_F	2042	1993	0
// OP_STORE_V	1993	4	0
// OP_CALL1	1964	0	0
// OP_GOTO	231	0	0
// OP_LOAD_F	28	173	2043
// OP_EQ_F	2043	2044	2045
// OP_IFNOT	2045	21	0
// OP_LOAD_ENT	28	181	2046
// OP_NE_E	2046	28	2047
// OP_IFNOT	2047	5	0
// OP_LOAD_ENT	28	181	2048
// OP_STORE_V	2048	4	0
// OP_CALL1	1629	0	0
// OP_GOTO	13	0	0
// OP_CALL0	1328	0	0
// OP_STORE_ENT	1	1994	0
// OP_NE_E	1994	30	2049
// OP_IFNOT	2049	9	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1629	0	0
// OP_ADDRESS	28	419	2050
// OP_ADD_F	31	235	2051
// OP_STOREP_F	2051	2050	0
// OP_ADDRESS	28	371	2052
// OP_ADD_F	31	2019	2053
// OP_STOREP_F	2053	2052	0
// OP_GOTO	208	0	0
// OP_LOAD_F	28	173	2054
// OP_EQ_F	2054	2055	2056
// OP_IFNOT	2056	29	0
// OP_LOAD_ENT	28	181	2057
// OP_NE_E	2057	28	2058
// OP_IFNOT	2058	4	0
// OP_ADDRESS	28	438	2059
// OP_STOREP_F	1225	2059	0
// OP_GOTO	22	0	0
// OP_CALL0	1328	0	0
// OP_STORE_ENT	1	1994	0
// OP_NE_E	1994	30	2060
// OP_IFNOT	2060	18	0
// OP_ADDRESS	28	423	2061
// OP_ADDRESS	28	181	2062
// OP_STOREP_ENT	1994	2062	0
// OP_STOREP_ENT	1994	2061	0
// OP_LOAD_F	28	424	2063
// OP_IFNOT	2063	5	0
// OP_LOAD_ENT	28	181	2064
// OP_STORE_V	2064	4	0
// OP_STORE_V	2065	7	0
// OP_CALL2	1264	0	0
// OP_ADDRESS	28	438	2066
// OP_STOREP_F	1225	2066	0
// OP_ADDRESS	28	371	2067
// OP_ADD_F	31	2019	2068
// OP_STOREP_F	2068	2067	0
// OP_ADDRESS	28	400	2069
// OP_STOREP_V	286	2069	0
// OP_GOTO	177	0	0
// OP_LOAD_F	28	173	2072
// OP_EQ_F	2072	2073	2074
// OP_IFNOT	2074	17	0
// OP_LOAD_F	28	438	2075
// OP_NE_F	2075	1224	2076
// OP_LOAD_F	28	438	2077
// OP_NE_F	2077	1223	2078
// OP_AND	2076	2078	2079
// OP_IFNOT	2079	2	0
// OP_CALL0	1899	0	0
// OP_ADDRESS	28	438	2080
// OP_STOREP_F	1226	2080	0
// OP_ADDRESS	28	103	2081
// OP_STOREP_F	227	2081	0
// OP_ADDRESS	28	181	2082
// OP_STOREP_ENT	28	2082	0
// OP_ADDRESS	28	423	2083
// OP_STOREP_ENT	30	2083	0
// OP_GOTO	158	0	0
// OP_LOAD_F	28	173	2084
// OP_EQ_F	2084	2085	2086
// OP_IFNOT	2086	10	0
// OP_ADDRESS	28	438	2087
// OP_STOREP_F	1227	2087	0
// OP_ADDRESS	28	103	2088
// OP_STOREP_F	230	2088	0
// OP_ADDRESS	28	181	2089
// OP_STOREP_ENT	28	2089	0
// OP_ADDRESS	28	423	2090
// OP_STOREP_ENT	30	2090	0
// OP_GOTO	146	0	0
// OP_LOAD_F	28	173	2091
// OP_EQ_F	2091	2092	2093
// OP_IFNOT	2093	10	0
// OP_ADDRESS	28	438	2094
// OP_STOREP_F	1228	2094	0
// OP_ADDRESS	28	181	2095
// OP_STOREP_ENT	28	2095	0
// OP_ADDRESS	28	423	2096
// OP_STOREP_ENT	30	2096	0
// OP_ADDRESS	28	103	2097
// OP_STOREP_F	233	2097	0
// OP_GOTO	134	0	0
// OP_LOAD_F	28	173	2098
// OP_EQ_F	2098	2099	2100
// OP_IFNOT	2100	21	0
// OP_LOAD_F	28	438	2101
// OP_EQ_F	2101	1224	2102
// OP_LOAD_F	28	438	2103
// OP_EQ_F	2103	1226	2104
// OP_OR	2102	2104	2105
// OP_IFNOT	2105	14	0
// OP_CALL0	1569	0	0
// OP_ADDRESS	28	438	2106
// OP_STOREP_F	1223	2106	0
// OP_ADDRESS	28	181	2107
// OP_STOREP_ENT	28	2107	0
// OP_ADDRESS	28	423	2108
// OP_STOREP_ENT	30	2108	0
// OP_ADDRESS	28	371	2109
// OP_ADD_F	31	2110	2111
// OP_STOREP_F	2111	2109	0
// OP_ADDRESS	28	422	2112
// OP_ADD_F	31	228	2113
// OP_STOREP_F	2113	2112	0
// OP_GOTO	111	0	0
// OP_LOAD_F	28	173	2114
// OP_EQ_F	2114	2115	2116
// OP_IFNOT	2116	6	0
// OP_ADDRESS	28	424	2117
// OP_LOAD_F	28	424	2118
// OP_NOT_F	2118	0	2119
// OP_STOREP_F	2119	2117	0
// OP_GOTO	103	0	0
// OP_LOAD_F	28	173	2120
// OP_EQ_F	2120	2121	2122
// OP_IFNOT	2122	11	0
// OP_STORE_V	2123	4	0
// OP_CALL1	472	0	0
// OP_LOAD_V	28	105	2124
// OP_STORE_V	2124	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_GOTO	90	0	0
// OP_LOAD_F	28	173	2128
// OP_EQ_F	2128	2129	2130
// OP_IFNOT	2130	4	0
// OP_ADDRESS	28	424	2131
// OP_STOREP_F	214	2131	0
// OP_GOTO	84	0	0
// OP_LOAD_F	28	173	2132
// OP_EQ_F	2132	2133	2134
// OP_IFNOT	2134	4	0
// OP_ADDRESS	28	424	2135
// OP_STOREP_F	213	2135	0
// OP_GOTO	78	0	0
// OP_LOAD_F	28	173	2136
// OP_EQ_F	2136	2137	2138
// OP_IFNOT	2138	4	0
// OP_ADDRESS	28	372	2139
// OP_STOREP_F	214	2139	0
// OP_GOTO	72	0	0
// OP_LOAD_F	28	173	2140
// OP_EQ_F	2140	2141	2142
// OP_IFNOT	2142	4	0
// OP_ADDRESS	28	372	2143
// OP_STOREP_F	213	2143	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	173	2144
// OP_EQ_F	2144	2145	2146
// OP_IFNOT	2146	8	0
// OP_LOAD_ENT	28	181	2147
// OP_NE_E	2147	28	2148
// OP_IFNOT	2148	4	0
// OP_ADDRESS	28	194	2149
// OP_LOAD_ENT	28	181	2150
// OP_STOREP_ENT	2150	2149	0
// OP_GOTO	56	0	0
// OP_LOAD_F	28	173	2151
// OP_EQ_F	2151	2152	2153
// OP_LOAD_F	28	173	2154
// OP_EQ_F	2154	2155	2156
// OP_OR	2153	2156	2157
// OP_IFNOT	2157	50	0
// OP_LOAD_ENT	28	181	2158
// OP_NE_E	2158	28	2159
// OP_IFNOT	2159	47	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1994	0
// OP_NE_E	1994	30	2160
// OP_LOAD_ENT	28	181	2161
// OP_NE_E	1994	2161	2162
// OP_AND	2160	2162	2163
// OP_IFNOT	2163	5	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1994	0
// OP_GOTO	-8	0	0
// OP_NE_E	1994	30	2164
// OP_IFNOT	2164	33	0
// OP_STORE_F	214	1993	0
// OP_IFNOT	1993	31	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1994	0
// OP_EQ_E	1994	30	2165
// OP_IFNOT	2165	4	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	1994	0
// OP_EQ_E	1994	30	2166
// OP_IFNOT	2166	3	0
// OP_STORE_F	213	1993	0
// OP_GOTO	18	0	0
// OP_LOAD_F	1994	165	2167
// OP_EQ_F	2167	246	2168
// OP_IFNOT	2168	15	0
// OP_LOAD_ENT	28	194	2169
// OP_NE_E	2169	30	2170
// OP_IFNOT	2170	3	0
// OP_ADDRESS	28	194	2171
// OP_STOREP_ENT	1994	2171	0
// OP_STORE_V	1994	4	0
// OP_CALL1	1629	0	0
// OP_ADDRESS	28	419	2172
// OP_ADD_F	31	235	2173
// OP_STOREP_F	2173	2172	0
// OP_ADDRESS	28	371	2174
// OP_ADD_F	31	2019	2175
// OP_STOREP_F	2175	2174	0
// OP_STORE_F	213	1993	0
// OP_GOTO	-30	0	0
// OP_ADDRESS	28	173	2176
// OP_STOREP_F	213	2176	0
// OP_DONE	0	0	0
void () CamImpulses = 
{
    local float c;
    local entity ent;
    local string s;
    if(self.impulse == 100)
    {
        self.goalentity = world;
        CamGoIdle();
    }
    else
    {
        if((self.impulse > 100) && (self.impulse < 150))
        {
            self.goalentity = world;
            c = self.impulse - 100;
            ent = world;
            do
            {
                ent = CamCycle(ent);
                c = c - TRUE;
            } while ((c > FALSE) && (ent != world));
            
            if(ent != world)
            {
                
                if(ent.deadflag == DEAD_NO)
                {
                    CamInitFlybyMode(ent);
                    self.delay = time + MOVETYPE_BOUNCE;
                    self.search_time = time + 60;
                }
                
            }
            
        }
        else
        {
            if(self.impulse == 166)
            {
                self.classname = "observer";
                ToggleObserverMode(self);
            }
            else
            {
                if((self.impulse >= 180) && (self.impulse <= 189))
                {
                    c = self.impulse - 180;
                    CamSavePos(c);
                }
                else
                {
                    if((self.impulse >= 190) && (self.impulse <= 199))
                    {
                        c = self.impulse - 190;
                        CamLoadPos(c);
                    }
                    else
                    {
                        if(self.impulse == 200)
                        {
                            if(self.enemy != self)
                            {
                                CamInitFlybyMode(self.enemy);
                            }
                            else
                            {
                                ent = CamShoot();
                                
                                if(ent != world)
                                {
                                    CamInitFlybyMode(ent);
                                    self.delay = time + MOVETYPE_BOUNCE;
                                    self.search_time = time + 60;
                                }
                                
                            }
                            
                        }
                        else
                        {
                            if(self.impulse == 201)
                            {
                                if(self.enemy != self)
                                {
                                    self.state = CAM_FOLLOW;
                                }
                                else
                                {
                                    ent = CamShoot();
                                    
                                    if(ent != world)
                                    {
                                        self.movetarget = self.enemy = ent;
                                        
                                        if(self.aflag)
                                        {
                                            CamReport(self.enemy, "Now Taking");
                                        }
                                        
                                        self.state = CAM_FOLLOW;
                                        self.search_time = time + 60;
                                        self.mangle = VEC_ORIGIN;
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                if(self.impulse == 202)
                                {
                                    
                                    if((self.state != CAM_FLYBY) && (self.state != CAM_FIXED))
                                    {
                                        CamHandJump();
                                    }
                                    
                                    self.state = CAM_HAND;
                                    self.movetype = MOVETYPE_NONE;
                                    self.enemy = self;
                                    self.movetarget = world;
                                }
                                else
                                {
                                    if(self.impulse == 203)
                                    {
                                        self.state = CAM_FREE;
                                        self.movetype = MOVETYPE_FLY;
                                        self.enemy = self;
                                        self.movetarget = world;
                                    }
                                    else
                                    {
                                        if(self.impulse == 204)
                                        {
                                            self.state = CAM_NOCLIP;
                                            self.enemy = self;
                                            self.movetarget = world;
                                            self.movetype = MOVETYPE_NOCLIP;
                                        }
                                        else
                                        {
                                            if(self.impulse == 205)
                                            {
                                                
                                                if((self.state == CAM_FLYBY) || (self.state == CAM_HAND))
                                                {
                                                    CamSetAuto();
                                                    self.state = CAM_FIXED;
                                                    self.enemy = self;
                                                    self.movetarget = world;
                                                    self.search_time = time + 100000;
                                                    self.pausetime = time + MOVETYPE_WALK;
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(self.impulse == 210)
                                                {
                                                    self.aflag = !self.aflag;
                                                }
                                                else
                                                {
                                                    if(self.impulse == 211)
                                                    {
                                                        bprint("Current camera position: ");
                                                        bprint(vtos(self.origin));
                                                        bprint("\n");
                                                    }
                                                    else
                                                    {
                                                        if(self.impulse == 212)
                                                        {
                                                            self.aflag = TRUE;
                                                        }
                                                        else
                                                        {
                                                            if(self.impulse == 213)
                                                            {
                                                                self.aflag = FALSE;
                                                            }
                                                            else
                                                            {
                                                                if(self.impulse == 214)
                                                                {
                                                                    self.attack_state = TRUE;
                                                                }
                                                                else
                                                                {
                                                                    if(self.impulse == 215)
                                                                    {
                                                                        self.attack_state = FALSE;
                                                                    }
                                                                    else
                                                                    {
                                                                        if(self.impulse == 216)
                                                                        {
                                                                            
                                                                            if(self.enemy != self)
                                                                            {
                                                                                self.goalentity = self.enemy;
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                            if((self.impulse == 217) || (self.impulse == 161))
                                                                            {
                                                                                
                                                                                if(self.enemy != self)
                                                                                {
                                                                                    ent = CamCycle(world);
                                                                                    
                                                                                    while((ent != world) && (ent != self.enemy))
                                                                                    {
                                                                                        ent = CamCycle(ent);
                                                                                    }
                                                                                    
                                                                                    
                                                                                    if(ent != world)
                                                                                    {
                                                                                        c = TRUE;
                                                                                        
                                                                                        while(c)
                                                                                        {
                                                                                            ent = CamCycle(ent);
                                                                                            
                                                                                            if(ent == world)
                                                                                            {
                                                                                                ent = CamCycle(ent);
                                                                                            }
                                                                                            
                                                                                            if(ent == world)
                                                                                            {
                                                                                                c = FALSE;
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                
                                                                                                if(ent.deadflag == DEAD_NO)
                                                                                                {
                                                                                                    
                                                                                                    if(self.goalentity != world)
                                                                                                    {
                                                                                                        self.goalentity = ent;
                                                                                                    }
                                                                                                    
                                                                                                    CamInitFlybyMode(ent);
                                                                                                    self.delay = time + MOVETYPE_BOUNCE;
                                                                                                    self.search_time = time + 60;
                                                                                                    c = FALSE;
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
                    
                }
                
            }
            
        }
        
    }
    
    self.impulse = FALSE;
};


// CamUpdValues
// function begins at statement 1401, parm_start=2178
// OP_LOAD_ENT	28	181	2179
// OP_NE_E	2179	28	2180
// OP_LOAD_ENT	28	181	2181
// OP_LOAD_S	2181	129	2182
// OP_NE_S	2182	2183	2184
// OP_AND	2180	2184	2185
// OP_LOAD_ENT	28	181	2186
// OP_LOAD_F	2186	152	2187
// OP_GT	2187	213	2188
// OP_AND	2185	2188	2189
// OP_IFNOT	2189	44	0
// OP_BITOR	272	273	2190
// OP_BITOR	2190	274	2191
// OP_BITOR	2191	275	2192
// OP_STORE_F	2192	2178	0
// OP_ADDRESS	28	162	2193
// OP_LOAD_ENT	28	181	2194
// OP_LOAD_F	2194	162	2195
// OP_BITOR	2195	2178	2196
// OP_SUB_F	2196	2178	2197
// OP_STOREP_F	2197	2193	0
// OP_ADDRESS	28	152	2198
// OP_LOAD_ENT	28	181	2199
// OP_LOAD_F	2199	152	2200
// OP_STOREP_F	2200	2198	0
// OP_ADDRESS	28	188	2201
// OP_LOAD_ENT	28	181	2202
// OP_LOAD_F	2202	188	2203
// OP_STOREP_F	2203	2201	0
// OP_ADDRESS	28	158	2204
// OP_LOAD_ENT	28	181	2205
// OP_LOAD_F	2205	158	2206
// OP_STOREP_F	2206	2204	0
// OP_ADDRESS	28	159	2207
// OP_LOAD_ENT	28	181	2208
// OP_LOAD_F	2208	159	2209
// OP_STOREP_F	2209	2207	0
// OP_ADDRESS	28	160	2210
// OP_LOAD_ENT	28	181	2211
// OP_LOAD_F	2211	160	2212
// OP_STOREP_F	2212	2210	0
// OP_ADDRESS	28	161	2213
// OP_LOAD_ENT	28	181	2214
// OP_LOAD_F	2214	161	2215
// OP_STOREP_F	2215	2213	0
// OP_ADDRESS	28	154	2216
// OP_LOAD_ENT	28	181	2217
// OP_LOAD_F	2217	154	2218
// OP_STOREP_F	2218	2216	0
// OP_ADDRESS	28	157	2219
// OP_LOAD_ENT	28	181	2220
// OP_LOAD_F	2220	157	2221
// OP_STOREP_F	2221	2219	0
// OP_GOTO	19	0	0
// OP_ADDRESS	28	162	2222
// OP_STOREP_F	213	2222	0
// OP_ADDRESS	28	152	2223
// OP_STOREP_F	2224	2223	0
// OP_ADDRESS	28	188	2225
// OP_STOREP_F	2224	2225	0
// OP_ADDRESS	28	158	2226
// OP_STOREP_F	2224	2226	0
// OP_ADDRESS	28	159	2227
// OP_STOREP_F	2224	2227	0
// OP_ADDRESS	28	160	2228
// OP_STOREP_F	2224	2228	0
// OP_ADDRESS	28	161	2229
// OP_STOREP_F	2224	2229	0
// OP_ADDRESS	28	154	2230
// OP_STOREP_F	253	2230	0
// OP_ADDRESS	28	157	2231
// OP_STOREP_F	2224	2231	0
// OP_DONE	0	0	0
void () CamUpdValues = 
{
    local float it;
    if(((self.enemy != self) && (self.enemy.classname != "bodyque")) && (self.enemy.health > FALSE))
    {
        it = ((IT_INVISIBILITY | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD;
        self.items = (self.enemy.items | it) - it;
        self.health = self.enemy.health;
        self.armorvalue = self.enemy.armorvalue;
        self.ammo_shells = self.enemy.ammo_shells;
        self.ammo_nails = self.enemy.ammo_nails;
        self.ammo_rockets = self.enemy.ammo_rockets;
        self.ammo_cells = self.enemy.ammo_cells;
        self.weapon = self.enemy.weapon;
        self.currentammo = self.enemy.currentammo;
    }
    else
    {
        self.items = FALSE;
        self.health = 111;
        self.armorvalue = 111;
        self.ammo_shells = 111;
        self.ammo_nails = 111;
        self.ammo_rockets = 111;
        self.ammo_cells = 111;
        self.weapon = IT_AXE;
        self.currentammo = 111;
    }
    
};


// CamHealthVal
// function begins at statement 1474, parm_start=2233
// OP_LOAD_F	2233	152	2235
// OP_LOAD_F	2233	187	2236
// OP_SUB_F	214	2236	2237
// OP_DIV_F	2235	2237	2238
// OP_STORE_F	2238	2234	0
// OP_LOAD_F	2233	152	2239
// OP_LOAD_F	2233	188	2240
// OP_ADD_F	2239	2240	2241
// OP_GT	2234	2241	2242
// OP_IFNOT	2242	5	0
// OP_LOAD_F	2233	152	2243
// OP_LOAD_F	2233	188	2244
// OP_ADD_F	2243	2244	2245
// OP_STORE_F	2245	2234	0
// OP_RETURN	2234	0	0
// OP_DONE	0	0	0
float (entity ent) CamHealthVal = 
{
    local float alldmg;
    alldmg = ent.health / (TRUE - ent.armortype);
    
    if(alldmg > (ent.health + ent.armorvalue))
    {
        alldmg = ent.health + ent.armorvalue;
    }
    
    return alldmg;
};


// CamIdleThink
// function begins at statement 1490, parm_start=2247
// OP_STORE_ENT	28	2248	0
// OP_LOAD_ENT	28	423	2259
// OP_NE_E	2259	30	2260
// OP_IFNOT	2260	7	0
// OP_LOAD_ENT	28	423	2261
// OP_LOAD_F	2261	165	2262
// OP_EQ_F	2262	246	2263
// OP_IFNOT	2263	3	0
// OP_LOAD_ENT	28	423	2264
// OP_STORE_ENT	2264	2248	0
// OP_STORE_F	276	2256	0
// OP_CALL0	457	0	0
// OP_MUL_F	230	1	2265
// OP_STORE_F	2265	2255	0
// OP_LOAD_ENT	28	194	2266
// OP_NE_E	2266	30	2267
// OP_IFNOT	2267	10	0
// OP_LOAD_ENT	28	194	2268
// OP_LOAD_F	2268	165	2269
// OP_EQ_F	2269	246	2270
// OP_IFNOT	2270	4	0
// OP_LOAD_ENT	28	194	2271
// OP_STORE_ENT	2271	2248	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	28	2248	0
// OP_GOTO	93	0	0
// OP_LT	2255	214	2272
// OP_IFNOT	2272	24	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_NE_E	2247	30	2273
// OP_IFNOT	2273	18	0
// OP_LOAD_ENT	28	423	2274
// OP_NE_E	2247	2274	2275
// OP_LOAD_F	2247	165	2276
// OP_EQ_F	2276	246	2277
// OP_AND	2275	2277	2278
// OP_IFNOT	2278	8	0
// OP_STORE_V	2247	4	0
// OP_CALL1	2232	0	0
// OP_STORE_F	1	2255	0
// OP_LT	2256	2255	2279
// OP_IFNOT	2279	3	0
// OP_STORE_ENT	2247	2248	0
// OP_STORE_F	2255	2256	0
// OP_STORE_V	2247	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_GOTO	-18	0	0
// OP_GOTO	68	0	0
// OP_LT	2255	216	2280
// OP_IFNOT	2280	26	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_NE_E	2247	30	2281
// OP_IFNOT	2281	20	0
// OP_LOAD_ENT	28	423	2282
// OP_NE_E	2247	2282	2283
// OP_LOAD_F	2247	165	2284
// OP_EQ_F	2284	246	2285
// OP_AND	2283	2285	2286
// OP_IFNOT	2286	10	0
// OP_LOAD_F	2247	153	2287
// OP_STORE_F	2287	2255	0
// OP_LT	2255	213	2288
// OP_IFNOT	2288	2	0
// OP_STORE_F	213	2255	0
// OP_LT	2256	2255	2289
// OP_IFNOT	2289	3	0
// OP_STORE_ENT	2247	2248	0
// OP_STORE_F	2255	2256	0
// OP_STORE_V	2247	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_GOTO	-20	0	0
// OP_GOTO	41	0	0
// OP_STORE_F	213	2256	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_NE_E	2247	30	2290
// OP_IFNOT	2290	13	0
// OP_LOAD_ENT	28	423	2291
// OP_NE_E	2247	2291	2292
// OP_LOAD_F	2247	165	2293
// OP_EQ_F	2293	246	2294
// OP_AND	2292	2294	2295
// OP_IFNOT	2295	3	0
// OP_ADD_F	2256	214	2296
// OP_STORE_F	2296	2256	0
// OP_STORE_V	2247	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_GOTO	-13	0	0
// OP_GT	2256	213	2297
// OP_IFNOT	2297	21	0
// OP_CALL0	457	0	0
// OP_MUL_F	2256	1	2298
// OP_STORE_F	2298	2256	0
// OP_STORE_ENT	30	2247	0
// OP_STORE_V	2247	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2247	0
// OP_LOAD_ENT	28	423	2299
// OP_EQ_E	2247	2299	2300
// OP_LOAD_F	2247	165	2301
// OP_NE_F	2301	246	2302
// OP_OR	2300	2302	2303
// OP_IF	2303	-8	0
// OP_SUB_F	2256	214	2304
// OP_STORE_F	2304	2256	0
// OP_GT	2256	213	2305
// OP_IF	2305	-12	0
// OP_NE_E	2247	30	2306
// OP_IFNOT	2306	2	0
// OP_STORE_ENT	2247	2248	0
// OP_NE_E	2248	28	2307
// OP_IFNOT	2307	10	0
// OP_STORE_V	2248	4	0
// OP_CALL1	1629	0	0
// OP_ADDRESS	28	419	2308
// OP_ADD_F	31	235	2309
// OP_STOREP_F	2309	2308	0
// OP_ADDRESS	28	371	2310
// OP_ADD_F	31	2019	2311
// OP_STOREP_F	2311	2310	0
// OP_GOTO	164	0	0
// OP_ADDRESS	28	181	2312
// OP_STOREP_ENT	28	2312	0
// OP_LOAD_V	28	406	2313
// OP_STORE_V	2313	4	0
// OP_LOAD_V	28	410	2316
// OP_STORE_V	2316	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_ADDRESS	28	410	2319
// OP_STOREP_V	71	2319	0
// OP_CALL0	457	0	0
// OP_MUL_F	746	1	2322
// OP_SUB_F	2322	2323	2324
// OP_STORE_F	2324	2249	0
// OP_CALL0	457	0	0
// OP_MUL_F	1298	1	2325
// OP_STORE_F	2325	2250	0
// OP_STORE_F	213	2251	0
// OP_STORE_F	2250	2257	0
// OP_LOAD_V	28	105	2326
// OP_LOAD_V	28	406	2329
// OP_NE_V	2326	2329	2332
// OP_IFNOT	2332	10	0
// OP_LOAD_V	28	105	2333
// OP_LOAD_V	28	406	2336
// OP_SUB_V	2333	2336	2339
// OP_STORE_V	2339	2252	0
// OP_STORE_V	2252	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	2252	0
// OP_STORE_F	2253	2258	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	2258	0
// OP_STORE_V	2257	4	0
// OP_CALL1	1294	0	0
// OP_STORE_F	1	2257	0
// OP_STORE_V	2249	4	0
// OP_CALL1	452	0	0
// OP_MUL_FV	1909	59	2342
// OP_STORE_V	2342	2249	0
// OP_LOAD_V	28	414	2345
// OP_LOAD_V	28	406	2348
// OP_SUB_V	2345	2348	2351
// OP_STORE_V	2351	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2256	0
// OP_SUB_F	2257	2258	2354
// OP_STORE_V	2354	4	0
// OP_CALL1	1294	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	488	0	0
// OP_GT	1	2019	2355
// OP_IFNOT	2355	21	0
// OP_LOAD_V	28	406	2356
// OP_ADD_V	2356	2249	2359
// OP_STORE_V	2359	2252	0
// OP_LOAD_V	28	406	2362
// OP_STORE_V	2362	4	0
// OP_STORE_V	2252	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_STORE_V	71	2252	0
// OP_LOAD_V	28	406	2365
// OP_SUB_V	2252	2365	2368
// OP_STORE_V	2368	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2255	0
// OP_GT	2255	2256	2371
// OP_IFNOT	2371	4	0
// OP_ADDRESS	28	414	2372
// OP_STOREP_V	2252	2372	0
// OP_STORE_F	2255	2256	0
// OP_ADD_F	2257	1296	2375
// OP_STORE_F	2375	2257	0
// OP_STORE_V	2257	4	0
// OP_CALL1	1294	0	0
// OP_STORE_F	1	2257	0
// OP_SUB_F	2257	2258	2376
// OP_STORE_V	2376	4	0
// OP_CALL1	1294	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	488	0	0
// OP_GT	1	2019	2377
// OP_IFNOT	2377	21	0
// OP_LOAD_V	28	406	2378
// OP_SUB_V	2378	2249	2381
// OP_STORE_V	2381	2252	0
// OP_LOAD_V	28	406	2384
// OP_STORE_V	2384	4	0
// OP_STORE_V	2252	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_STORE_V	71	2252	0
// OP_LOAD_V	28	406	2387
// OP_SUB_V	2252	2387	2390
// OP_STORE_V	2390	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2255	0
// OP_GT	2255	2256	2393
// OP_IFNOT	2393	4	0
// OP_ADDRESS	28	414	2394
// OP_STOREP_V	2252	2394	0
// OP_STORE_F	2255	2256	0
// OP_LOAD_F	28	422	2397
// OP_LT	2397	31	2398
// OP_IFNOT	2398	10	0
// OP_ADDRESS	28	422	2399
// OP_ADD_F	31	228	2400
// OP_CALL0	457	0	0
// OP_MUL_F	216	1	2401
// OP_ADD_F	2400	2401	2402
// OP_STOREP_F	2402	2399	0
// OP_ADDRESS	28	410	2403
// OP_LOAD_V	28	414	2406
// OP_STOREP_V	2406	2403	0
// OP_LOAD_F	28	371	2409
// OP_LT	2409	31	2410
// OP_IFNOT	2410	43	0
// OP_LOAD_V	28	406	2411
// OP_LOAD_V	28	410	2414
// OP_SUB_V	2411	2414	2417
// OP_STORE_V	2417	2249	0
// OP_CALL0	457	0	0
// OP_MUL_F	1470	1	2420
// OP_ADD_F	230	2420	2421
// OP_STORE_V	2249	4	0
// OP_CALL1	459	0	0
// OP_MUL_FV	2421	1	2422
// OP_STORE_V	2422	2249	0
// OP_LOAD_V	28	410	2425
// OP_ADD_V	2425	2249	2428
// OP_STORE_V	2428	2249	0
// OP_LOAD_V	28	105	2431
// OP_STORE_V	2431	4	0
// OP_STORE_V	2249	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	2434
// OP_IFNOT	2434	13	0
// OP_ADDRESS	28	406	2435
// OP_STOREP_V	2249	2435	0
// OP_ADDRESS	28	414	2438
// OP_LOAD_V	28	410	2441
// OP_STOREP_V	2441	2438	0
// OP_ADDRESS	28	371	2444
// OP_ADD_F	31	217	2445
// OP_CALL0	457	0	0
// OP_MUL_F	230	1	2446
// OP_ADD_F	2445	2446	2447
// OP_STOREP_F	2447	2444	0
// OP_GOTO	9	0	0
// OP_ADDRESS	28	414	2448
// OP_LOAD_V	28	406	2451
// OP_STOREP_V	2451	2448	0
// OP_ADDRESS	28	371	2454
// OP_ADD_F	31	214	2455
// OP_CALL0	457	0	0
// OP_ADD_F	2455	1	2456
// OP_STOREP_F	2456	2454	0
// OP_DONE	0	0	0
void () CamIdleThink = 
{
    local entity ent;
    local entity ent2;
    local vector vec;
    local vector vec2;
    local float p1;
    local float p2;
    local float pa;
    local float pb;
    ent2 = self;
    
    if(self.movetarget != world)
    {
        
        if(self.movetarget.deadflag == DEAD_NO)
        {
            ent2 = self.movetarget;
        }
        
    }
    
    p2 = CONTENT_EMPTY;
    p1 = MOVETYPE_FLY * random();
    if(self.goalentity != world)
    {
        if(self.goalentity.deadflag == DEAD_NO)
        {
            ent2 = self.goalentity;
        }
        else
        {
            ent2 = self;
        }
        
    }
    else
    {
        if(p1 < TRUE)
        {
            ent = CamCycle(world);
            
            while(ent != world)
            {
                
                if((ent != self.movetarget) && (ent.deadflag == DEAD_NO))
                {
                    p1 = CamHealthVal(ent);
                    
                    if(p2 < p1)
                    {
                        ent2 = ent;
                        p2 = p1;
                    }
                    
                }
                
                ent = CamCycle(ent);
            }
            
        }
        else
        {
            if(p1 < FL_SWIM)
            {
                ent = CamCycle(world);
                
                while(ent != world)
                {
                    
                    if((ent != self.movetarget) && (ent.deadflag == DEAD_NO))
                    {
                        p1 = ent.frags;
                        
                        if(p1 < FALSE)
                        {
                            p1 = FALSE;
                        }
                        
                        
                        if(p2 < p1)
                        {
                            ent2 = ent;
                            p2 = p1;
                        }
                        
                    }
                    
                    ent = CamCycle(ent);
                }
                
            }
            else
            {
                p2 = FALSE;
                ent = CamCycle(world);
                
                while(ent != world)
                {
                    
                    if((ent != self.movetarget) && (ent.deadflag == DEAD_NO))
                    {
                        p2 = p2 + TRUE;
                    }
                    
                    ent = CamCycle(ent);
                }
                
                
                if(p2 > FALSE)
                {
                    p2 = p2 * random();
                    ent = world;
                    do
                    {
                        do
                        {
                            ent = CamCycle(ent);
                        } while ((ent == self.movetarget) || (ent.deadflag != DEAD_NO));
                        p2 = p2 - TRUE;
                    } while (p2 > FALSE);
                    
                    if(ent != world)
                    {
                        ent2 = ent;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    if(ent2 != self)
    {
        CamInitFlybyMode(ent2);
        self.delay = time + MOVETYPE_BOUNCE;
        self.search_time = time + 60;
    }
    else
    {
        self.enemy = self;
        traceline(self.dest, self.dest1, TRUE, self);
        self.dest1 = trace_endpos;
        vec_x = (GLOBALDEF729_40 * random()) - 20;
        vec_y = 360 * random();
        vec_z = FALSE;
        pa = vec_y;
        if(self.origin != self.dest)
        {
            vec2 = self.origin - self.dest;
            vec2 = vectoangles(vec2);
            pb = vec2_y;
        }
        else
        {
            pb = FALSE;
        }
        
        pa = CamReAngle(pa);
        makevectors(vec);
        vec = 2000 * v_forward;
        p2 = vlen(self.dest2 - self.dest);
        
        if((fabs(CamReAngle(pa - pb))) > 60)
        {
            vec2 = self.dest + vec;
            traceline(self.dest, vec2, TRUE, self);
            vec2 = trace_endpos;
            p1 = vlen(vec2 - self.dest);
            
            if(p1 > p2)
            {
                self.dest2 = vec2;
                p2 = p1;
            }
            
        }
        
        pa = pa + 180;
        pa = CamReAngle(pa);
        
        if((fabs(CamReAngle(pa - pb))) > 60)
        {
            vec2 = self.dest - vec;
            traceline(self.dest, vec2, TRUE, self);
            vec2 = trace_endpos;
            p1 = vlen(vec2 - self.dest);
            
            if(p1 > p2)
            {
                self.dest2 = vec2;
                p2 = p1;
            }
            
        }
        
        
        if(self.pausetime < time)
        {
            self.pausetime = (time + MOVETYPE_WALK) + (FL_SWIM * random());
            self.dest1 = self.dest2;
        }
        
        
        if(self.search_time < time)
        {
            vec = self.dest - self.dest1;
            vec = (MOVETYPE_FLY + (50 * random())) * normalize(vec);
            vec = self.dest1 + vec;
            traceline(self.origin, vec, TRUE, self);
            if(trace_fraction == TRUE)
            {
                self.dest = vec;
                self.dest2 = self.dest1;
                self.search_time = (time + FL_CLIENT) + (MOVETYPE_FLY * random());
            }
            else
            {
                self.dest2 = self.dest;
                self.search_time = (time + TRUE) + random();
            }
            
        }
        
    }
    
};


// CamFlyByThink
// function begins at statement 1783, parm_start=2458
// OP_LOAD_ENT	28	181	2467
// OP_LOAD_F	2467	165	2468
// OP_NE_F	2468	246	2469
// OP_IFNOT	2469	7	0
// OP_LT	31	310	2470
// OP_IFNOT	2470	3	0
// OP_CALL0	1588	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1600	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	406	2471
// OP_LOAD_ENT	28	181	2474
// OP_LOAD_V	2474	105	2475
// OP_SUB_V	2471	2475	2478
// OP_STORE_V	2478	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2459	0
// OP_LOAD_ENT	28	181	2481
// OP_STORE_V	2481	4	0
// OP_CALL1	1314	0	0
// OP_LOAD_F	28	437	2482
// OP_GT	2482	2459	2483
// OP_AND	1	2483	2484
// OP_LOAD_F	28	422	2485
// OP_GT	2485	31	2486
// OP_OR	2484	2486	2487
// OP_IFNOT	2487	7	0
// OP_ADDRESS	28	410	2488
// OP_LOAD_ENT	28	181	2491
// OP_STORE_V	2491	4	0
// OP_CALL1	1619	0	0
// OP_STOREP_V	1	2488	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	2492
// OP_STORE_V	2492	4	0
// OP_CALL1	1629	0	0
// OP_LOAD_F	28	372	2493
// OP_IFNOT	2493	5	0
// OP_ADDRESS	28	438	2494
// OP_STOREP_F	1225	2494	0
// OP_RETURN	0	0	0
// OP_GOTO	31	0	0
// OP_LOAD_ENT	28	181	2495
// OP_LOAD_V	2495	105	2496
// OP_LOAD_V	28	105	2499
// OP_SUB_V	2496	2499	2502
// OP_STORE_V	2502	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2459	0
// OP_LT	2459	2505	2506
// OP_IFNOT	2506	22	0
// OP_LOAD_ENT	28	181	2507
// OP_LOAD_F	2507	119	2508
// OP_LOAD_F	28	119	2509
// OP_SUB_F	2508	2509	2510
// OP_STORE_V	2510	4	0
// OP_CALL1	488	0	0
// OP_STORE_F	1	2460	0
// OP_GT	2460	1296	2511
// OP_IFNOT	2511	3	0
// OP_SUB_F	1298	2460	2512
// OP_STORE_F	2512	2460	0
// OP_LT	2460	309	2513
// OP_IFNOT	2513	9	0
// OP_CALL0	1839	0	0
// OP_STORE_V	1	2462	0
// OP_STORE_V	2462	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	438	2514
// OP_STOREP_F	1225	2514	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	2515
// OP_EQ_E	2515	30	2516
// OP_IFNOT	2516	58	0
// OP_STORE_F	213	2458	0
// OP_STORE_F	213	2459	0
// OP_LOAD_F	28	419	2517
// OP_LT	2517	31	2518
// OP_IFNOT	2518	29	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2465	0
// OP_NE_E	2465	30	2519
// OP_IFNOT	2519	24	0
// OP_ADD_F	2458	214	2520
// OP_STORE_F	2520	2458	0
// OP_LOAD_F	2465	165	2521
// OP_EQ_F	2521	246	2522
// OP_IFNOT	2522	15	0
// OP_LOAD_V	2465	105	2523
// OP_LOAD_V	28	105	2526
// OP_SUB_V	2523	2526	2529
// OP_STORE_V	2529	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2461	0
// OP_LT	2461	2532	2533
// OP_IFNOT	2533	7	0
// OP_LOAD_V	2465	105	2534
// OP_STORE_V	2534	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	3	0
// OP_ADD_F	2459	214	2537
// OP_STORE_F	2537	2459	0
// OP_STORE_V	2465	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2465	0
// OP_GOTO	-24	0	0
// OP_LT	2458	229	2538
// OP_IFNOT	2538	3	0
// OP_STORE_F	216	2458	0
// OP_GOTO	6	0	0
// OP_LT	2458	217	2539
// OP_IFNOT	2539	3	0
// OP_STORE_F	228	2458	0
// OP_GOTO	2	0	0
// OP_STORE_F	229	2458	0
// OP_GT	2459	2458	2540
// OP_IFNOT	2540	14	0
// OP_ADDRESS	28	181	2541
// OP_STOREP_ENT	28	2541	0
// OP_ADDRESS	28	423	2542
// OP_STOREP_ENT	30	2542	0
// OP_ADDRESS	28	438	2543
// OP_STOREP_F	1223	2543	0
// OP_ADDRESS	28	371	2544
// OP_ADD_F	31	765	2545
// OP_STOREP_F	2545	2544	0
// OP_ADDRESS	28	422	2546
// OP_ADD_F	31	228	2547
// OP_STOREP_F	2547	2546	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	371	2548
// OP_LT	2548	31	2549
// OP_IFNOT	2549	2	0
// OP_CALL0	1588	0	0
// OP_DONE	0	0	0
void () CamFlyByThink = 
{
    local float p0;
    local float p1;
    local float grad;
    local float p;
    local vector vec;
    local entity ent;
    local float ok;
    
    if(self.enemy.deadflag != DEAD_NO)
    {
        
        if(time < SVC_FINALE)
        {
            CamGoIdle();
            return;
        }
        
        CamGoDeath();
        return;
    }
    
    p1 = vlen(self.dest - self.enemy.origin);
    if((CamVisibleEnt(self.enemy) && (self.lip > p1)) || (self.pausetime > time))
    {
        self.dest1 = CamFlybyTarget(self.enemy);
    }
    else
    {
        CamInitFlybyMode(self.enemy);
    }
    
    if(self.attack_state)
    {
        self.state = CAM_FOLLOW;
        return;
    }
    else
    {
        p1 = vlen(self.enemy.origin - self.origin);
        
        if(p1 < 170)
        {
            grad = fabs(self.enemy.angles_y - self.angles_y);
            
            if(grad > 180)
            {
                grad = 360 - grad;
            }
            
            
            if(grad < SVC_INTERMISSION)
            {
                vec = GetFollowCam();
                
                if(CamVisible(vec))
                {
                    self.state = CAM_FOLLOW;
                    return;
                }
                
            }
            
        }
        
    }
    
    
    if(self.goalentity == world)
    {
        p0 = FALSE;
        p1 = FALSE;
        
        if(self.delay < time)
        {
            ent = CamCycle(world);
            
            while(ent != world)
            {
                p0 = p0 + TRUE;
                
                if(ent.deadflag == DEAD_NO)
                {
                    p = vlen(ent.origin - self.origin);
                    
                    if(p < 1500)
                    {
                        
                        if(CamVisible(ent.origin))
                        {
                            p1 = p1 + TRUE;
                        }
                        
                    }
                    
                }
                
                ent = CamCycle(ent);
            }
            
        }
        
        if(p0 < MOVETYPE_STEP)
        {
            p0 = FL_SWIM;
        }
        else
        {
            if(p0 < FL_CLIENT)
            {
                p0 = MOVETYPE_WALK;
            }
            else
            {
                p0 = MOVETYPE_STEP;
            }
            
        }
        
        
        if(p1 > p0)
        {
            self.enemy = self;
            self.movetarget = world;
            self.state = CAM_FIXED;
            self.search_time = time + GLOBALDEF748_15;
            self.pausetime = time + MOVETYPE_WALK;
            return;
        }
        
    }
    
    
    if(self.search_time < time)
    {
        CamGoIdle();
    }
    
};


// CamFollowThink
// function begins at statement 1920, parm_start=2551
// OP_LOAD_ENT	28	181	2555
// OP_LOAD_F	2555	165	2556
// OP_NE_F	2556	246	2557
// OP_IFNOT	2557	8	0
// OP_LT	31	310	2558
// OP_IFNOT	2558	3	0
// OP_CALL0	1588	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1600	0	0
// OP_RETURN	0	0	0
// OP_GOTO	23	0	0
// OP_LOAD_ENT	28	181	2559
// OP_STORE_V	2559	4	0
// OP_CALL1	1314	0	0
// OP_IFNOT	1	16	0
// OP_ADDRESS	28	406	2560
// OP_CALL0	1839	0	0
// OP_STOREP_V	1	2560	0
// OP_ADDRESS	28	410	2563
// OP_CALL0	1877	0	0
// OP_STOREP_V	1	2563	0
// OP_LOAD_V	28	406	2566
// OP_STORE_V	2566	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	277	2569
// OP_IFNOT	2569	4	0
// OP_LOAD_ENT	28	181	2570
// OP_STORE_V	2570	4	0
// OP_CALL1	1629	0	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	2571
// OP_STORE_V	2571	4	0
// OP_CALL1	1629	0	0
// OP_LOAD_F	28	371	2572
// OP_LT	2572	31	2573
// OP_IFNOT	2573	2	0
// OP_CALL0	1588	0	0
// OP_DONE	0	0	0
void () CamFollowThink = 
{
    local entity ent;
    local vector vec;
    if(self.enemy.deadflag != DEAD_NO)
    {
        
        if(time < SVC_FINALE)
        {
            CamGoIdle();
            return;
        }
        
        CamGoDeath();
        return;
    }
    else
    {
        if(CamVisibleEnt(self.enemy))
        {
            self.dest = GetFollowCam();
            self.dest1 = GetFollowTrg();
            
            if(pointcontents(self.dest) == CONTENT_SOLID)
            {
                CamInitFlybyMode(self.enemy);
            }
            
        }
        else
        {
            CamInitFlybyMode(self.enemy);
        }
        
    }
    
    
    if(self.search_time < time)
    {
        CamGoIdle();
    }
    
};


// CamFixedThink
// function begins at statement 1958, parm_start=2575
// OP_LOAD_F	28	177	2596
// OP_STORE_F	2596	2579	0
// OP_STORE_F	213	2581	0
// OP_STORE_F	2597	2582	0
// OP_STORE_F	2598	2583	0
// OP_STORE_F	2599	2584	0
// OP_STORE_F	2600	2585	0
// OP_STORE_V	286	2586	0
// OP_STORE_F	213	2595	0
// OP_STORE_V	30	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2578	0
// OP_NE_E	2578	30	2601
// OP_IFNOT	2601	69	0
// OP_LOAD_F	2578	165	2602
// OP_EQ_F	2602	246	2603
// OP_IFNOT	2603	62	0
// OP_LOAD_V	2578	105	2604
// OP_LOAD_V	28	105	2607
// OP_SUB_V	2604	2607	2610
// OP_STORE_V	2610	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2580	0
// OP_LT	2580	2532	2613
// OP_IFNOT	2613	54	0
// OP_LOAD_V	2578	105	2614
// OP_STORE_V	2614	4	0
// OP_CALL1	1303	0	0
// OP_IFNOT	1	50	0
// OP_ADD_F	2595	214	2617
// OP_STORE_F	2617	2595	0
// OP_LOAD_V	2578	105	2618
// OP_LOAD_V	28	105	2621
// OP_SUB_V	2618	2621	2624
// OP_STORE_V	2624	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	2575	0
// OP_SUB_F	2576	2579	2627
// OP_STORE_F	2627	2580	0
// OP_GT	2580	1296	2628
// OP_IFNOT	2628	4	0
// OP_SUB_F	2580	1298	2629
// OP_STORE_F	2629	2580	0
// OP_GOTO	-4	0	0
// OP_LT	2580	1300	2630
// OP_IFNOT	2630	4	0
// OP_ADD_F	2580	1298	2631
// OP_STORE_F	2631	2580	0
// OP_GOTO	-4	0	0
// OP_STORE_V	2580	4	0
// OP_CALL1	488	0	0
// OP_LT	1	2598	2632
// OP_IFNOT	2632	13	0
// OP_ADD_F	2581	214	2633
// OP_STORE_F	2633	2581	0
// OP_LOAD_V	2578	105	2634
// OP_ADD_V	2586	2634	2637
// OP_STORE_V	2637	2586	0
// OP_LT	2580	2583	2640
// OP_IFNOT	2640	2	0
// OP_STORE_F	2580	2583	0
// OP_GT	2580	2582	2641
// OP_IFNOT	2641	2	0
// OP_STORE_F	2580	2582	0
// OP_GOTO	14	0	0
// OP_GT	2580	213	2642
// OP_IFNOT	2642	7	0
// OP_LT	2580	2585	2643
// OP_IFNOT	2643	4	0
// OP_STORE_F	2580	2585	0
// OP_LOAD_V	2578	105	2644
// OP_STORE_V	2644	2589	0
// OP_GOTO	6	0	0
// OP_GT	2580	2584	2647
// OP_IFNOT	2647	4	0
// OP_STORE_F	2580	2584	0
// OP_LOAD_V	2578	105	2648
// OP_STORE_V	2648	2592	0
// OP_STORE_V	2578	4	0
// OP_CALL1	1230	0	0
// OP_STORE_ENT	1	2578	0
// OP_GOTO	-69	0	0
// OP_GT	2595	213	2651
// OP_IFNOT	2651	35	0
// OP_GT	2595	214	2652
// OP_IFNOT	2652	4	0
// OP_ADDRESS	28	422	2653
// OP_ADD_F	31	228	2654
// OP_STOREP_F	2654	2653	0
// OP_LT	2581	2595	2655
// OP_IFNOT	2655	20	0
// OP_EQ_F	2581	213	2656
// OP_SUB_F	2582	2584	2657
// OP_LE	2657	2658	2659
// OP_OR	2656	2659	2660
// OP_SUB_F	2585	2583	2661
// OP_LE	2661	2658	2662
// OP_OR	2660	2662	2663
// OP_IFNOT	2663	12	0
// OP_ADD_F	2581	214	2664
// OP_STORE_F	2664	2581	0
// OP_SUB_F	2582	2584	2665
// OP_SUB_F	2585	2583	2666
// OP_GT	2665	2666	2667
// OP_IFNOT	2667	4	0
// OP_ADD_V	2586	2589	2668
// OP_STORE_V	2668	2586	0
// OP_GOTO	3	0	0
// OP_ADD_V	2586	2592	2671
// OP_STORE_V	2671	2586	0
// OP_DIV_F	2586	2581	2674
// OP_STORE_F	2674	2586	0
// OP_DIV_F	2587	2581	2675
// OP_STORE_F	2675	2587	0
// OP_DIV_F	2588	2581	2676
// OP_STORE_F	2676	2588	0
// OP_ADDRESS	28	410	2677
// OP_STOREP_V	2586	2677	0
// OP_ADDRESS	28	406	2680
// OP_LOAD_V	28	105	2683
// OP_STOREP_V	2683	2680	0
// OP_LOAD_F	28	422	2686
// OP_LT	2686	31	2687
// OP_LOAD_F	28	371	2688
// OP_LT	2688	31	2689
// OP_OR	2687	2689	2690
// OP_IFNOT	2690	2	0
// OP_CALL0	1588	0	0
// OP_DONE	0	0	0
void () CamFixedThink = 
{
    local vector vec;
    local entity ent;
    local float cang;
    local float a;
    local float cscr;
    local float maxscr;
    local float minscr;
    local float maxlo;
    local float minhi;
    local vector scrv;
    local vector hiv;
    local vector lov;
    local float c;
    cang = self.v_angle_y;
    cscr = FALSE;
    maxscr = -45;
    minscr = 45;
    maxlo = -181;
    minhi = 181;
    scrv = VEC_ORIGIN;
    c = FALSE;
    ent = CamCycle(world);
    
    while(ent != world)
    {
        
        if(ent.deadflag == DEAD_NO)
        {
            a = vlen(ent.origin - self.origin);
            
            if(a < 1500)
            {
                
                if(CamVisible(ent.origin))
                {
                    c = c + TRUE;
                    vec = vectoangles(ent.origin - self.origin);
                    a = vec_y - cang;
                    
                    while(a > 180)
                    {
                        a = a - 360;
                    }
                    
                    
                    while(a < -180)
                    {
                        a = a + 360;
                    }
                    
                    if(fabs(a) < 45)
                    {
                        cscr = cscr + TRUE;
                        scrv = scrv + ent.origin;
                        
                        if(a < minscr)
                        {
                            minscr = a;
                        }
                        
                        
                        if(a > maxscr)
                        {
                            maxscr = a;
                        }
                        
                    }
                    else
                    {
                        if(a > FALSE)
                        {
                            
                            if(a < minhi)
                            {
                                minhi = a;
                                hiv = ent.origin;
                            }
                            
                        }
                        else
                        {
                            
                            if(a > maxlo)
                            {
                                maxlo = a;
                                lov = ent.origin;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        ent = CamCycle(ent);
    }
    
    
    if(c > FALSE)
    {
        
        if(c > TRUE)
        {
            self.pausetime = time + MOVETYPE_WALK;
        }
        
        
        if(cscr < c)
        {
            
            if(((cscr == FALSE) || ((maxscr - maxlo) <= 90)) || ((minhi - minscr) <= 90))
            {
                cscr = cscr + TRUE;
                if((maxscr - maxlo) > (minhi - minscr))
                {
                    scrv = scrv + hiv;
                }
                else
                {
                    scrv = scrv + lov;
                }
                
            }
            
        }
        
        scrv_x = scrv_x / cscr;
        scrv_y = scrv_y / cscr;
        scrv_z = scrv_z / cscr;
        self.dest1 = scrv;
    }
    
    self.dest = self.origin;
    
    if((self.pausetime < time) || (self.search_time < time))
    {
        CamGoIdle();
    }
    
};


// CamDeathThink
// function begins at statement 2087, parm_start=2692
// OP_LOAD_F	28	371	2693
// OP_LT	2693	31	2694
// OP_IFNOT	2694	3	0
// OP_CALL0	1588	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	2695
// OP_NE_E	2695	28	2696
// OP_IFNOT	2696	19	0
// OP_LOAD_V	28	105	2697
// OP_LOAD_V	28	406	2700
// OP_SUB_V	2697	2700	2703
// OP_STORE_V	2703	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	2692	0
// OP_GT	2692	214	2706
// OP_LOAD_V	28	400	2707
// OP_NE_V	2707	286	2710
// OP_OR	2706	2710	2711
// OP_IFNOT	2711	8	0
// OP_ADD_F	31	539	2712
// OP_STORE_F	2712	2692	0
// OP_LOAD_F	28	422	2713
// OP_LT	2713	2692	2714
// OP_IFNOT	2714	3	0
// OP_ADDRESS	28	422	2715
// OP_STOREP_F	2692	2715	0
// OP_LOAD_F	28	422	2716
// OP_GT	31	2716	2717
// OP_IFNOT	2717	3	0
// OP_CALL0	1588	0	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	181	2718
// OP_NE_E	2718	28	2719
// OP_IFNOT	2719	5	0
// OP_ADDRESS	28	410	2720
// OP_LOAD_ENT	28	181	2723
// OP_LOAD_V	2723	105	2724
// OP_STOREP_V	2724	2720	0
// OP_LOAD_ENT	28	181	2727
// OP_NE_E	2727	28	2728
// OP_IFNOT	2728	31	0
// OP_LOAD_V	28	105	2729
// OP_STORE_V	2729	4	0
// OP_LOAD_V	28	410	2732
// OP_STORE_V	2732	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	2735
// OP_IFNOT	2735	15	0
// OP_LOAD_ENT	28	181	2736
// OP_LOAD_V	2736	113	2737
// OP_EQ_V	2737	286	2740
// OP_IFNOT	2740	3	0
// OP_CALL0	1588	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	181	2741
// OP_STORE_V	2741	4	0
// OP_CALL1	1629	0	0
// OP_ADDRESS	28	438	2742
// OP_STOREP_F	1229	2742	0
// OP_ADDRESS	28	422	2743
// OP_ADD_F	31	216	2744
// OP_STOREP_F	2744	2743	0
// OP_LOAD_ENT	28	181	2745
// OP_LOAD_V	2745	113	2746
// OP_NE_V	2746	286	2749
// OP_IFNOT	2749	4	0
// OP_ADDRESS	28	422	2750
// OP_ADD_F	31	216	2751
// OP_STOREP_F	2751	2750	0
// OP_LOAD_V	28	406	2752
// OP_LOAD_V	28	410	2755
// OP_SUB_V	2752	2755	2758
// OP_STORE_V	2758	4	0
// OP_CALL1	462	0	0
// OP_GT	1	2019	2761
// OP_IFNOT	2761	17	0
// OP_ADDRESS	28	406	2762
// OP_LOAD_V	28	406	2765
// OP_LOAD_V	28	410	2768
// OP_SUB_V	2765	2768	2771
// OP_STOREP_V	2771	2762	0
// OP_ADDRESS	28	406	2774
// OP_LOAD_V	28	406	2777
// OP_STORE_V	2777	4	0
// OP_CALL1	459	0	0
// OP_STOREP_V	1	2774	0
// OP_ADDRESS	28	406	2780
// OP_LOAD_V	28	406	2784
// OP_MUL_FV	2783	2784	2787
// OP_LOAD_V	28	410	2790
// OP_ADD_V	2787	2790	2793
// OP_STOREP_V	2793	2780	0
// OP_DONE	0	0	0
void () CamDeathThink = 
{
    local float f;
    
    if(self.search_time < time)
    {
        CamGoIdle();
        return;
    }
    
    
    if(self.enemy != self)
    {
        f = vlen(self.origin - self.dest);
        
        if((f > TRUE) || (self.mangle != VEC_ORIGIN))
        {
            f = time + RA_PLAYERSTATTIME;
            
            if(self.pausetime < f)
            {
                self.pausetime = f;
            }
            
        }
        
    }
    
    if(time > self.pausetime)
    {
        CamGoIdle();
    }
    else
    {
        
        if(self.enemy != self)
        {
            self.dest1 = self.enemy.origin;
        }
        
    }
    
    
    if(self.enemy != self)
    {
        traceline(self.origin, self.dest1, TRUE, self);
        
        if(trace_fraction != TRUE)
        {
            if(self.enemy.velocity == VEC_ORIGIN)
            {
                CamGoIdle();
            }
            else
            {
                CamInitFlybyMode(self.enemy);
                self.state = CAM_DEATH;
                self.pausetime = time + FL_SWIM;
            }
            
        }
        
        
        if(self.enemy.velocity != VEC_ORIGIN)
        {
            self.pausetime = time + FL_SWIM;
        }
        
    }
    
    
    if((vlen(self.dest - self.dest1)) > 60)
    {
        self.dest = self.dest - self.dest1;
        self.dest = normalize(self.dest);
        self.dest = (59 * self.dest) + self.dest1;
    }
    
};


// CamThink
// function begins at statement 2182, parm_start=2797
// OP_CALL0	2177	0	0
// OP_ADDRESS	28	113	2797
// OP_STOREP_V	286	2797	0
// OP_ADDRESS	28	121	2800
// OP_STOREP_V	286	2800	0
// OP_LOAD_F	28	438	2803
// OP_EQ_F	2803	1222	2804
// OP_IFNOT	2804	6	0
// OP_CALL0	2246	0	0
// OP_STORE_V	214	4	0
// OP_STORE_V	2805	7	0
// OP_CALL2	1474	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	438	2806
// OP_EQ_F	2806	1224	2807
// OP_IFNOT	2807	6	0
// OP_CALL0	2457	0	0
// OP_STORE_V	213	4	0
// OP_STORE_V	745	7	0
// OP_CALL2	1474	0	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	438	2808
// OP_EQ_F	2808	1225	2809
// OP_IFNOT	2809	6	0
// OP_CALL0	2550	0	0
// OP_STORE_V	741	4	0
// OP_STORE_V	1663	7	0
// OP_CALL2	1474	0	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	438	2810
// OP_EQ_F	2810	1223	2811
// OP_IFNOT	2811	6	0
// OP_CALL0	2574	0	0
// OP_STORE_V	213	4	0
// OP_STORE_V	2805	7	0
// OP_CALL2	1474	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	438	2812
// OP_EQ_F	2812	1229	2813
// OP_IFNOT	2813	5	0
// OP_CALL0	2691	0	0
// OP_STORE_V	1997	4	0
// OP_STORE_V	2003	7	0
// OP_CALL2	1474	0	0
// OP_CALL0	1992	0	0
// OP_DONE	0	0	0
void () CamThink = 
{
    CamUpdValues();
    self.velocity = VEC_ORIGIN;
    self.avelocity = VEC_ORIGIN;
    if(self.state == CAM_IDLE)
    {
        CamIdleThink();
        CamUpdatePos(TRUE, 80);
    }
    else
    {
        if(self.state == CAM_FLYBY)
        {
            CamFlyByThink();
            CamUpdatePos(FALSE, GLOBALDEF728_500);
        }
        else
        {
            if(self.state == CAM_FOLLOW)
            {
                CamFollowThink();
                CamUpdatePos(GLOBALDEF724_800, 1000);
            }
            else
            {
                if(self.state == CAM_FIXED)
                {
                    CamFixedThink();
                    CamUpdatePos(FALSE, 80);
                }
                else
                {
                    
                    if(self.state == CAM_DEATH)
                    {
                        CamDeathThink();
                        CamUpdatePos(100, 150);
                    }
                    
                }
                
            }
            
        }
        
    }
    
    CamImpulses();
};

entity () SelectSpawnPoint;

// CamClientInit
// function begins at statement 2228, parm_start=2816
// OP_LOAD_S	28	129	2818
// OP_EQ_S	2818	2025	2819
// OP_IFNOT	2819	18	0
// OP_STORE_V	28	4	0
// OP_CALL1	1061	0	0
// OP_ADDRESS	28	129	2820
// OP_STOREP_S	1236	2820	0
// OP_CALL0	2814	0	0
// OP_STORE_ENT	1	2817	0
// OP_ADDRESS	28	105	2821
// OP_LOAD_V	2817	105	2824
// OP_ADD_V	2824	2827	2830
// OP_STOREP_V	2830	2821	0
// OP_ADDRESS	28	117	2833
// OP_LOAD_V	2817	117	2836
// OP_STOREP_V	2836	2833	0
// OP_ADDRESS	28	174	2839
// OP_STOREP_F	214	2839	0
// OP_SUB_F	809	214	2840
// OP_STORE_F	2840	809	0
// OP_LOAD_S	28	129	2841
// OP_NE_S	2841	1236	2842
// OP_IFNOT	2842	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	2843
// OP_LE	2843	213	2844
// OP_LOAD_F	28	165	2845
// OP_NE_F	2845	246	2846
// OP_OR	2844	2846	2847
// OP_IFNOT	2847	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	129	2848
// OP_STOREP_S	2849	2848	0
// OP_STORE_V	28	4	0
// OP_STORE_V	348	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	93	2850
// OP_STOREP_F	526	2850	0
// OP_BITAND	821	777	2851
// OP_IFNOT	2851	5	0
// OP_ADDRESS	28	574	2852
// OP_STOREP_F	213	2852	0
// OP_ADDRESS	28	573	2853
// OP_STOREP_F	213	2853	0
// OP_ADDRESS	28	155	2854
// OP_STOREP_S	348	2854	0
// OP_STORE_V	28	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	113	2855
// OP_STOREP_V	286	2855	0
// OP_ADDRESS	28	166	2858
// OP_STOREP_V	286	2858	0
// OP_ADDRESS	28	103	2861
// OP_STOREP_F	227	2861	0
// OP_ADDRESS	28	104	2862
// OP_STOREP_F	237	2862	0
// OP_ADDRESS	28	163	2863
// OP_STOREP_F	250	2863	0
// OP_ADDRESS	28	174	2864
// OP_STOREP_F	214	2864	0
// OP_ADDRESS	28	150	2865
// OP_STOREP_F	276	2865	0
// OP_ADDRESS	28	153	2866
// OP_STOREP_F	213	2866	0
// OP_ADDRESS	28	133	2867
// OP_STOREP_F	213	2867	0
// OP_ADDRESS	28	390	2868
// OP_STOREP_F	214	2868	0
// OP_ADDRESS	28	383	2869
// OP_STOREP_F	213	2869	0
// OP_ADDRESS	28	384	2870
// OP_STOREP_F	213	2870	0
// OP_ADDRESS	28	380	2871
// OP_STOREP_F	213	2871	0
// OP_ADDRESS	28	386	2872
// OP_STOREP_F	213	2872	0
// OP_ADDRESS	28	381	2873
// OP_STOREP_F	213	2873	0
// OP_ADDRESS	28	388	2874
// OP_STOREP_F	213	2874	0
// OP_ADDRESS	28	382	2875
// OP_STOREP_F	213	2875	0
// OP_ADDRESS	28	406	2876
// OP_LOAD_V	28	105	2879
// OP_STOREP_V	2879	2876	0
// OP_LOAD_V	28	175	2882
// OP_STORE_V	2882	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	28	410	2885
// OP_LOAD_V	28	406	2888
// OP_MUL_FV	1997	59	2891
// OP_ADD_V	2888	2891	2894
// OP_STOREP_V	2894	2885	0
// OP_ADDRESS	28	181	2897
// OP_STOREP_ENT	28	2897	0
// OP_ADDRESS	28	423	2898
// OP_STOREP_ENT	30	2898	0
// OP_ADDRESS	28	194	2899
// OP_STOREP_ENT	30	2899	0
// OP_ADDRESS	28	424	2900
// OP_STOREP_F	214	2900	0
// OP_ADDRESS	28	400	2901
// OP_STOREP_V	286	2901	0
// OP_ADDRESS	28	422	2904
// OP_STOREP_F	31	2904	0
// OP_ADDRESS	28	419	2905
// OP_STOREP_F	31	2905	0
// OP_ADDRESS	28	372	2906
// OP_STOREP_F	213	2906	0
// OP_CALL0	1588	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2907	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1164	0	0
// OP_ADD_F	809	214	2908
// OP_STORE_F	2908	809	0
// OP_DONE	0	0	0
void () CamClientInit = 
{
    local entity UNUSED;
    local entity ent2;
    
    if(self.classname == "observer")
    {
        func002357(self);
        self.classname = "player";
        ent2 = SelectSpawnPoint();
        self.origin = ent2.origin + '0 0 2';
        self.angles = ent2.angles;
        self.fixangle = TRUE;
        observerCount = observerCount - TRUE;
    }
    
    
    if(self.classname != "player")
    {
        return;
    }
    
    
    if((self.health <= FALSE) || (self.deadflag != DEAD_NO))
    {
        return;
    }
    
    self.classname = "KasCam";
    setmodel(self, string_null);
    self.modelindex = modelindex_player;
    
    if(obot_game_option_bitflags & GLOBALDEF760_32768)
    {
        self.field000251 = FALSE;
        self.clmodelindex = FALSE;
    }
    
    self.weaponmodel = string_null;
    setsize(self, VEC_ORIGIN, VEC_ORIGIN);
    self.velocity = VEC_ORIGIN;
    self.view_ofs = VEC_ORIGIN;
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    self.takedamage = DAMAGE_NO;
    self.fixangle = TRUE;
    self.nextthink = CONTENT_EMPTY;
    self.frags = FALSE;
    self.effects = FALSE;
    self.rad_time = TRUE;
    self.radsuit_finished = FALSE;
    self.invincible_time = FALSE;
    self.invincible_finished = FALSE;
    self.invisible_time = FALSE;
    self.invisible_finished = FALSE;
    self.super_time = FALSE;
    self.super_damage_finished = FALSE;
    self.dest = self.origin;
    makevectors(self.v_angle);
    self.dest1 = self.dest + (100 * v_forward);
    self.enemy = self;
    self.movetarget = world;
    self.goalentity = world;
    self.aflag = TRUE;
    self.mangle = VEC_ORIGIN;
    self.pausetime = time;
    self.delay = time;
    self.attack_state = FALSE;
    CamGoIdle();
    sprint(self, "KasCam activated\n");
    func002522(self);
    observerCount = observerCount + TRUE;
};


// CamSpawn
// function begins at statement 2348, parm_start=2910
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2913	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	2912	0
// OP_STORE_F	235	2910	0
// OP_GT	2910	213	2914
// OP_IFNOT	2914	18	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	2911	0
// OP_ADDRESS	2911	129	2915
// OP_STOREP_S	1940	2915	0
// OP_ADDRESS	2911	117	2916
// OP_LOAD_V	2912	117	2919
// OP_STOREP_V	2919	2916	0
// OP_ADDRESS	2911	175	2922
// OP_LOAD_V	2912	175	2925
// OP_STOREP_V	2925	2922	0
// OP_STORE_V	2911	4	0
// OP_LOAD_V	2912	105	2928
// OP_STORE_V	2928	7	0
// OP_CALL2	453	0	0
// OP_SUB_F	2910	214	2931
// OP_STORE_F	2931	2910	0
// OP_GOTO	-18	0	0
// OP_DONE	0	0	0
void () CamSpawn = 
{
    local float i;
    local entity ent;
    local entity start;
    start = find(world, classname, "info_player_start");
    i = MOVETYPE_BOUNCE;
    
    while(i > FALSE)
    {
        ent = spawn();
        ent.classname = "CamSavedPos";
        ent.angles = start.angles;
        ent.v_angle = start.v_angle;
        setorigin(ent, start.origin);
        i = i - TRUE;
    }
    
};


// CamDisconnect
// function begins at statement 2374, parm_start=2933
// OP_LOAD_S	28	129	2935
// OP_EQ_S	2935	2849	2936
// OP_IFNOT	2936	5	0
// OP_SUB_F	809	214	2937
// OP_STORE_F	2937	809	0
// OP_RETURN	213	0	0
// OP_GOTO	26	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2849	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	2933	0
// OP_IFNOT	2933	19	0
// OP_LOAD_ENT	2933	181	2938
// OP_EQ_E	2938	28	2939
// OP_IFNOT	2939	5	0
// OP_STORE_ENT	28	2934	0
// OP_STORE_ENT	2933	28	0
// OP_CALL0	1588	0	0
// OP_STORE_ENT	2934	28	0
// OP_LOAD_ENT	2933	423	2940
// OP_EQ_E	2940	28	2941
// OP_IFNOT	2941	3	0
// OP_ADDRESS	2933	423	2942
// OP_STOREP_ENT	30	2942	0
// OP_STORE_V	2933	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2849	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	2933	0
// OP_GOTO	-18	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CamDisconnect = 
{
    local entity cam;
    local entity oself;
    if(self.classname == "KasCam")
    {
        observerCount = observerCount - TRUE;
        return FALSE;
    }
    else
    {
        cam = find(world, classname, "KasCam");
        
        while(cam)
        {
            
            if(cam.enemy == self)
            {
                oself = self;
                self = cam;
                CamGoIdle();
                self = oself;
            }
            
            
            if(cam.movetarget == self)
            {
                cam.movetarget = world;
            }
            
            cam = find(cam, classname, "KasCam");
        }
        
        return TRUE;
    }
    
};


// CamCopyBody
// function begins at statement 2407, parm_start=2944
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2849	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	2947	0
// OP_IFNOT	2947	25	0
// OP_LOAD_ENT	2947	181	2948
// OP_EQ_E	2944	2948	2949
// OP_IFNOT	2949	11	0
// OP_LOAD_F	2947	438	2950
// OP_NE_F	2950	1229	2951
// OP_IFNOT	2951	5	0
// OP_STORE_ENT	28	2946	0
// OP_STORE_ENT	2947	28	0
// OP_CALL0	1600	0	0
// OP_STORE_ENT	2946	28	0
// OP_ADDRESS	2947	181	2952
// OP_STOREP_ENT	2945	2952	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	2947	181	2953
// OP_EQ_E	2945	2953	2954
// OP_IFNOT	2954	3	0
// OP_ADDRESS	2947	181	2955
// OP_STOREP_ENT	2947	2955	0
// OP_STORE_V	2947	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2849	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	2947	0
// OP_GOTO	-24	0	0
// OP_DONE	0	0	0
void (entity ent, entity que) CamCopyBody = 
{
    local entity oself;
    local entity cam;
    cam = find(world, classname, "KasCam");
    
    while(cam)
    {
        if(ent == cam.enemy)
        {
            
            if(cam.state != CAM_DEATH)
            {
                oself = self;
                self = cam;
                CamGoDeath();
                self = oself;
            }
            
            cam.enemy = que;
        }
        else
        {
            
            if(que == cam.enemy)
            {
                cam.enemy = cam;
            }
            
        }
        
        cam = find(cam, classname, "KasCam");
    }
    
};

