float (float v) anglemod;
void (vector dest3) ChooseTurn;
void () ai_face;
float enemy_vis;
float enemy_infront;
float enemy_range;
float enemy_yaw;
// CheckAttack
// function begins at statement 943, parm_start=1307
// OP_LOAD_ENT	28	206	1315
// OP_STORE_ENT	1315	1313	0
// OP_LOAD_V	28	130	1316
// OP_LOAD_V	28	191	1319
// OP_ADD_V	1316	1319	1322
// OP_STORE_V	1322	1307	0
// OP_LOAD_V	1313	130	1325
// OP_LOAD_V	1313	191	1328
// OP_ADD_V	1325	1328	1331
// OP_STORE_V	1331	1310	0
// OP_STORE_V	1307	4	0
// OP_STORE_V	1310	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_NE_E	78	1313	1334
// OP_IFNOT	1334	2	0
// OP_RETURN	267	0	0
// OP_AND	79	80	1335
// OP_IFNOT	1335	2	0
// OP_RETURN	267	0	0
// OP_EQ_F	1304	296	1336
// OP_IFNOT	1336	6	0
// OP_LOAD_FNC	28	409	1337
// OP_IFNOT	1337	4	0
// OP_LOAD_FNC	28	409	1338
// OP_CALL0	1338	0	0
// OP_RETURN	268	0	0
// OP_LOAD_FNC	28	408	1339
// OP_NOT_FNC	1339	0	1340
// OP_IFNOT	1340	2	0
// OP_RETURN	267	0	0
// OP_LOAD_F	28	422	1341
// OP_LT	31	1341	1342
// OP_IFNOT	1342	2	0
// OP_RETURN	267	0	0
// OP_EQ_F	1304	299	1343
// OP_IFNOT	1343	2	0
// OP_RETURN	267	0	0
// OP_EQ_F	1304	296	1344
// OP_IFNOT	1344	5	0
// OP_STORE_F	1345	1314	0
// OP_ADDRESS	28	422	1346
// OP_STOREP_F	619	1346	0
// OP_GOTO	18	0	0
// OP_EQ_F	1304	297	1347
// OP_IFNOT	1347	7	0
// OP_LOAD_FNC	28	409	1348
// OP_IFNOT	1348	3	0
// OP_STORE_F	1349	1314	0
// OP_GOTO	2	0	0
// OP_STORE_F	1350	1314	0
// OP_GOTO	10	0	0
// OP_EQ_F	1304	298	1351
// OP_IFNOT	1351	7	0
// OP_LOAD_FNC	28	409	1352
// OP_IFNOT	1352	3	0
// OP_STORE_F	1353	1314	0
// OP_GOTO	2	0	0
// OP_STORE_F	655	1314	0
// OP_GOTO	2	0	0
// OP_STORE_F	619	1314	0
// OP_CALL0	501	0	0
// OP_LT	1	1314	1354
// OP_IFNOT	1354	8	0
// OP_LOAD_FNC	28	408	1355
// OP_CALL0	1355	0	0
// OP_CALL0	501	0	0
// OP_MUL_F	806	1	1356
// OP_STORE_V	1356	4	0
// OP_CALL1	785	0	0
// OP_RETURN	268	0	0
// OP_RETURN	267	0	0
// OP_DONE	0	0	0
float () CheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(self.th_melee)
        {
            self.th_melee();
            return TRUE;
        }
        
    }
    
    
    if(!self.th_missile)
    {
        return FALSE;
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    if(enemy_range == RANGE_MELEE)
    {
        chance = 0.9;
        self.attack_finished = 0;
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            if(self.th_melee)
            {
                chance = 0.2;
            }
            else
            {
                chance = 0.4;
            }
            
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                if(self.th_melee)
                {
                    chance = 0.05;
                }
                else
                {
                    chance = 0.1;
                }
                
            }
            else
            {
                chance = 0;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(2 * random());
        return TRUE;
    }
    
    return FALSE;
};

// ai_face
// function begins at statement 1017, parm_start=1357
// OP_ADDRESS	28	216	1357
// OP_LOAD_ENT	28	206	1358
// OP_LOAD_V	1358	130	1359
// OP_LOAD_V	28	130	1362
// OP_SUB_V	1359	1362	1365
// OP_STORE_V	1365	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	1357	0
// OP_CALL0	540	0	0
// OP_DONE	0	0	0
void () ai_face = 
{
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
};

float (entity targ) infront;
float (entity targ) range;
// ai_charge
// function begins at statement 1027, parm_start=1371
// OP_CALL0	1301	0	0
// OP_STORE_V	1371	4	0
// OP_CALL1	550	0	0
// OP_DONE	0	0	0
void (float d) ai_charge = 
{
    ai_face();
    movetogoal(d);
};

// ai_charge_side
// function begins at statement 1031, parm_start=1373
// OP_ADDRESS	28	216	1377
// OP_LOAD_ENT	28	206	1378
// OP_LOAD_V	1378	130	1379
// OP_LOAD_V	28	130	1382
// OP_SUB_V	1379	1382	1385
// OP_STORE_V	1385	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	1377	0
// OP_CALL0	540	0	0
// OP_LOAD_V	28	142	1388
// OP_STORE_V	1388	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	1391
// OP_LOAD_V	1391	130	1392
// OP_MUL_FV	1130	65	1395
// OP_SUB_V	1392	1395	1398
// OP_STORE_V	1398	1373	0
// OP_LOAD_V	28	130	1401
// OP_SUB_V	1373	1401	1404
// OP_STORE_V	1404	4	0
// OP_CALL1	507	0	0
// OP_STORE_F	1	1376	0
// OP_STORE_V	1376	4	0
// OP_STORE_V	1111	7	0
// OP_CALL2	526	0	0
// OP_DONE	0	0	0
void () ai_charge_side = 
{
    local vector dtemp;
    local float heading;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
    makevectors(self.angles);
    dtemp = self.enemy.origin - (30 * v_right);
    heading = vectoyaw(dtemp - self.origin);
    walkmove(heading, 20);
};

// ai_melee
// function begins at statement 1057, parm_start=1408
// OP_LOAD_ENT	28	206	1412
// OP_NOT_ENT	1412	0	1413
// OP_IFNOT	1413	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	1414
// OP_LOAD_V	1414	130	1415
// OP_LOAD_V	28	130	1418
// OP_SUB_V	1415	1418	1421
// OP_STORE_V	1421	1408	0
// OP_STORE_V	1408	4	0
// OP_CALL1	506	0	0
// OP_GT	1	1203	1424
// OP_IFNOT	1424	2	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_CALL0	501	0	0
// OP_ADD_F	1	1	1425
// OP_CALL0	501	0	0
// OP_ADD_F	1425	1	1426
// OP_MUL_F	1426	788	1427
// OP_STORE_F	1427	1411	0
// OP_LOAD_ENT	28	206	1428
// OP_STORE_V	1428	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1411	13	0
// OP_CALL4	569	0	0
// OP_DONE	0	0	0
void () ai_melee = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 60)
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 3;
    T_Damage(self.enemy, self, self, ldmg);
};

// ai_melee_side
// function begins at statement 1085, parm_start=1430
// OP_LOAD_ENT	28	206	1434
// OP_NOT_ENT	1434	0	1435
// OP_IFNOT	1435	2	0
// OP_RETURN	0	0	0
// OP_CALL0	1372	0	0
// OP_LOAD_ENT	28	206	1436
// OP_LOAD_V	1436	130	1437
// OP_LOAD_V	28	130	1440
// OP_SUB_V	1437	1440	1443
// OP_STORE_V	1443	1430	0
// OP_STORE_V	1430	4	0
// OP_CALL1	506	0	0
// OP_GT	1	1203	1446
// OP_IFNOT	1446	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	1447
// OP_STORE_V	1447	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	570	0	0
// OP_NOT_F	1	0	1448
// OP_IFNOT	1448	2	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_CALL0	501	0	0
// OP_ADD_F	1	1	1449
// OP_CALL0	501	0	0
// OP_ADD_F	1449	1	1450
// OP_MUL_F	1450	788	1451
// OP_STORE_F	1451	1433	0
// OP_LOAD_ENT	28	206	1452
// OP_STORE_V	1452	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1433	13	0
// OP_CALL4	569	0	0
// OP_DONE	0	0	0
void () ai_melee_side = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge_side();
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 60)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 3;
    T_Damage(self.enemy, self, self, ldmg);
};

