float (float v) anglemod;
void () knight_atk1;
void () knight_runatk1;
void () ogre_smash1;
void () ogre_swing1;
void () sham_smash1;
void () sham_swingr1;
void () sham_swingl1;
float () DemonCheckAttack;
void (float side) Demon_Melee;
void (vector dest3) ChooseTurn;
void () ai_face;
float enemy_vis;
float enemy_infront;
float enemy_range;
float enemy_yaw;
// knight_attack
// function begins at statement 659, parm_start=1154
// OP_LOAD_ENT	28	181	1155
// OP_LOAD_V	1155	105	1156
// OP_LOAD_ENT	28	181	1159
// OP_LOAD_V	1159	166	1160
// OP_ADD_V	1156	1160	1163
// OP_LOAD_V	28	105	1166
// OP_LOAD_V	28	166	1169
// OP_ADD_V	1166	1169	1172
// OP_SUB_V	1163	1172	1175
// OP_STORE_V	1175	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	1154	0
// OP_LT	1154	1178	1179
// OP_IFNOT	1179	3	0
// OP_CALL0	1138	0	0
// OP_GOTO	2	0	0
// OP_CALL0	1139	0	0
// OP_DONE	0	0	0
void () knight_attack = 
{
    local float len;
    len = vlen((self.enemy.origin + self.enemy.view_ofs) - (self.origin + self.view_ofs));
    if(len < 80)
    {
        knight_atk1();
    }
    else
    {
        knight_runatk1();
    }
    
};

// CheckAttack
// function begins at statement 677, parm_start=1181
// OP_LOAD_ENT	28	181	1189
// OP_STORE_ENT	1189	1187	0
// OP_LOAD_V	28	105	1190
// OP_LOAD_V	28	166	1193
// OP_ADD_V	1190	1193	1196
// OP_STORE_V	1196	1181	0
// OP_LOAD_V	1187	105	1199
// OP_LOAD_V	1187	166	1202
// OP_ADD_V	1199	1202	1205
// OP_STORE_V	1205	1184	0
// OP_STORE_V	1181	4	0
// OP_STORE_V	1184	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	1187	1208
// OP_IFNOT	1208	2	0
// OP_RETURN	213	0	0
// OP_AND	79	80	1209
// OP_IFNOT	1209	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	242	1210
// OP_IFNOT	1210	11	0
// OP_LOAD_FNC	28	360	1211
// OP_IFNOT	1211	9	0
// OP_LOAD_S	28	129	1212
// OP_EQ_S	1212	1213	1214
// OP_IFNOT	1214	3	0
// OP_CALL0	1153	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	360	1215
// OP_CALL0	1215	0	0
// OP_RETURN	214	0	0
// OP_LOAD_FNC	28	359	1216
// OP_NOT_FNC	1216	0	1217
// OP_IFNOT	1217	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	1218
// OP_LT	31	1218	1219
// OP_IFNOT	1219	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	245	1220
// OP_IFNOT	1220	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	242	1221
// OP_IFNOT	1221	5	0
// OP_STORE_F	1222	1188	0
// OP_ADDRESS	28	373	1223
// OP_STOREP_F	213	1223	0
// OP_GOTO	18	0	0
// OP_EQ_F	1151	243	1224
// OP_IFNOT	1224	7	0
// OP_LOAD_FNC	28	360	1225
// OP_IFNOT	1225	3	0
// OP_STORE_F	1226	1188	0
// OP_GOTO	2	0	0
// OP_STORE_F	1227	1188	0
// OP_GOTO	10	0	0
// OP_EQ_F	1151	244	1228
// OP_IFNOT	1228	7	0
// OP_LOAD_FNC	28	360	1229
// OP_IFNOT	1229	3	0
// OP_STORE_F	1230	1188	0
// OP_GOTO	2	0	0
// OP_STORE_F	993	1188	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	1188	0
// OP_CALL0	452	0	0
// OP_LT	1	1188	1231
// OP_IFNOT	1231	8	0
// OP_LOAD_FNC	28	359	1232
// OP_CALL0	1232	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	216	1	1233
// OP_STORE_V	1233	4	0
// OP_CALL1	1121	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
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
            if(self.classname == "monster_knight")
            {
                knight_attack();
            }
            else
            {
                self.th_melee();
            }
            
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
        self.attack_finished = FALSE;
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
                chance = FALSE;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(FL_SWIM * random());
        return TRUE;
    }
    
    return FALSE;
};

// ai_face
// function begins at statement 756, parm_start=1234
// OP_ADDRESS	28	191	1234
// OP_LOAD_ENT	28	181	1235
// OP_LOAD_V	1235	105	1236
// OP_LOAD_V	28	105	1239
// OP_SUB_V	1236	1239	1242
// OP_STORE_V	1242	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	1234	0
// OP_CALL0	491	0	0
// OP_DONE	0	0	0
void () ai_face = 
{
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
};

float (entity targ) infront;
float (entity targ) range;
// ai_charge
// function begins at statement 766, parm_start=1248
// OP_CALL0	1148	0	0
// OP_STORE_V	1248	4	0
// OP_CALL1	501	0	0
// OP_DONE	0	0	0
void (float d) ai_charge = 
{
    ai_face();
    movetogoal(d);
};

// ai_charge_side
// function begins at statement 770, parm_start=1250
// OP_ADDRESS	28	191	1254
// OP_LOAD_ENT	28	181	1255
// OP_LOAD_V	1255	105	1256
// OP_LOAD_V	28	105	1259
// OP_SUB_V	1256	1259	1262
// OP_STORE_V	1262	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	1254	0
// OP_CALL0	491	0	0
// OP_LOAD_V	28	117	1265
// OP_STORE_V	1265	4	0
// OP_CALL1	447	0	0
// OP_LOAD_ENT	28	181	1268
// OP_LOAD_V	1268	105	1269
// OP_MUL_FV	304	65	1272
// OP_SUB_V	1269	1272	1275
// OP_STORE_V	1275	1250	0
// OP_LOAD_V	28	105	1278
// OP_SUB_V	1250	1278	1281
// OP_STORE_V	1281	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	1253	0
// OP_STORE_V	1253	4	0
// OP_STORE_V	576	7	0
// OP_CALL2	477	0	0
// OP_DONE	0	0	0
void () ai_charge_side = 
{
    local vector dtemp;
    local float heading;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
    makevectors(self.angles);
    dtemp = self.enemy.origin - (SVC_INTERMISSION * v_right);
    heading = vectoyaw(dtemp - self.origin);
    walkmove(heading, KINDA_WANT);
};

// ai_melee
// function begins at statement 796, parm_start=1285
// OP_LOAD_ENT	28	181	1289
// OP_NOT_ENT	1289	0	1290
// OP_IFNOT	1290	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1291
// OP_LOAD_V	1291	105	1292
// OP_LOAD_V	28	105	1295
// OP_SUB_V	1292	1295	1298
// OP_STORE_V	1298	1285	0
// OP_STORE_V	1285	4	0
// OP_CALL1	457	0	0
// OP_GT	1	730	1301
// OP_IFNOT	1301	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	1	1	1302
// OP_CALL0	452	0	0
// OP_ADD_F	1302	1	1303
// OP_MUL_F	1303	228	1304
// OP_STORE_F	1304	1288	0
// OP_LOAD_ENT	28	181	1305
// OP_STORE_V	1305	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1288	13	0
// OP_CALL4	520	0	0
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
    ldmg = ((random() + random()) + random()) * MOVETYPE_WALK;
    T_Damage(self.enemy, self, self, ldmg);
};

// ai_melee_side
// function begins at statement 824, parm_start=1307
// OP_LOAD_ENT	28	181	1311
// OP_NOT_ENT	1311	0	1312
// OP_IFNOT	1312	2	0
// OP_RETURN	0	0	0
// OP_CALL0	1249	0	0
// OP_LOAD_ENT	28	181	1313
// OP_LOAD_V	1313	105	1314
// OP_LOAD_V	28	105	1317
// OP_SUB_V	1314	1317	1320
// OP_STORE_V	1320	1307	0
// OP_STORE_V	1307	4	0
// OP_CALL1	457	0	0
// OP_GT	1	730	1323
// OP_IFNOT	1323	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1324
// OP_STORE_V	1324	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_NOT_F	1	0	1325
// OP_IFNOT	1325	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	1	1	1326
// OP_CALL0	452	0	0
// OP_ADD_F	1326	1	1327
// OP_MUL_F	1327	228	1328
// OP_STORE_F	1328	1310	0
// OP_LOAD_ENT	28	181	1329
// OP_STORE_V	1329	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1310	13	0
// OP_CALL4	520	0	0
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
    ldmg = ((random() + random()) + random()) * MOVETYPE_WALK;
    T_Damage(self.enemy, self, self, ldmg);
};

// SoldierCheckAttack
// function begins at statement 860, parm_start=1331
// OP_LOAD_ENT	28	181	1339
// OP_STORE_ENT	1339	1337	0
// OP_LOAD_V	28	105	1340
// OP_LOAD_V	28	166	1343
// OP_ADD_V	1340	1343	1346
// OP_STORE_V	1346	1331	0
// OP_LOAD_V	1337	105	1349
// OP_LOAD_V	1337	166	1352
// OP_ADD_V	1349	1352	1355
// OP_STORE_V	1355	1334	0
// OP_STORE_V	1331	4	0
// OP_STORE_V	1334	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	1358
// OP_IFNOT	1358	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	1337	1359
// OP_IFNOT	1359	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	1360
// OP_LT	31	1360	1361
// OP_IFNOT	1361	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	245	1362
// OP_IFNOT	1362	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	242	1363
// OP_IFNOT	1363	3	0
// OP_STORE_F	1222	1338	0
// OP_GOTO	10	0	0
// OP_EQ_F	1151	243	1364
// OP_IFNOT	1364	3	0
// OP_STORE_F	1227	1338	0
// OP_GOTO	6	0	0
// OP_EQ_F	1151	244	1365
// OP_IFNOT	1365	3	0
// OP_STORE_F	1230	1338	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	1338	0
// OP_CALL0	452	0	0
// OP_LT	1	1338	1366
// OP_IFNOT	1366	15	0
// OP_LOAD_FNC	28	359	1367
// OP_CALL0	1367	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	214	1	1368
// OP_STORE_V	1368	4	0
// OP_CALL1	1121	0	0
// OP_CALL0	452	0	0
// OP_LT	1	1369	1370
// OP_IFNOT	1370	5	0
// OP_ADDRESS	28	365	1371
// OP_LOAD_F	28	365	1372
// OP_NOT_F	1372	0	1373
// OP_STOREP_F	1373	1371	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () SoldierCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
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
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            chance = 0.4;
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                chance = 0.05;
            }
            else
            {
                chance = FALSE;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(TRUE + random());
        
        if(random() < 0.3)
        {
            self.lefty = !self.lefty;
        }
        
        return TRUE;
    }
    
    return FALSE;
};

// ShamCheckAttack
// function begins at statement 920, parm_start=1375
// OP_EQ_F	1151	242	1383
// OP_IFNOT	1383	9	0
// OP_LOAD_ENT	28	181	1384
// OP_STORE_V	1384	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	1385
// OP_STOREP_F	370	1385	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	373	1386
// OP_LT	31	1386	1387
// OP_IFNOT	1387	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	1149	0	1388
// OP_IFNOT	1388	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1389
// OP_STORE_ENT	1389	1381	0
// OP_LOAD_V	28	105	1390
// OP_LOAD_V	28	166	1393
// OP_ADD_V	1390	1393	1396
// OP_STORE_V	1396	1375	0
// OP_LOAD_V	1381	105	1399
// OP_LOAD_V	1381	166	1402
// OP_ADD_V	1399	1402	1405
// OP_STORE_V	1405	1378	0
// OP_SUB_V	1375	1378	1408
// OP_STORE_V	1408	4	0
// OP_CALL1	457	0	0
// OP_GT	1	580	1411
// OP_IFNOT	1411	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	1375	4	0
// OP_STORE_V	1378	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	1412
// OP_IFNOT	1412	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	1381	1413
// OP_IFNOT	1413	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	245	1414
// OP_IFNOT	1414	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	367	1415
// OP_STOREP_F	371	1415	0
// OP_CALL0	452	0	0
// OP_MUL_F	216	1	1416
// OP_ADD_F	216	1416	1417
// OP_STORE_V	1417	4	0
// OP_CALL1	1121	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () ShamCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(CanDamage(self.enemy, self))
        {
            self.attack_state = AS_MELEE;
            return TRUE;
        }
        
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    
    if((vlen(spot1 - spot2)) > SEARCH_RADIUS)
    {
        return FALSE;
    }
    
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(FL_SWIM + (FL_SWIM * random()));
    return TRUE;
};

// OgreCheckAttack
// function begins at statement 976, parm_start=1419
// OP_EQ_F	1151	242	1427
// OP_IFNOT	1427	9	0
// OP_LOAD_ENT	28	181	1428
// OP_STORE_V	1428	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	1429
// OP_STOREP_F	370	1429	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	373	1430
// OP_LT	31	1430	1431
// OP_IFNOT	1431	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	1149	0	1432
// OP_IFNOT	1432	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1433
// OP_STORE_ENT	1433	1425	0
// OP_LOAD_V	28	105	1434
// OP_LOAD_V	28	166	1437
// OP_ADD_V	1434	1437	1440
// OP_STORE_V	1440	1419	0
// OP_LOAD_V	1425	105	1443
// OP_LOAD_V	1425	166	1446
// OP_ADD_V	1443	1446	1449
// OP_STORE_V	1449	1422	0
// OP_STORE_V	1419	4	0
// OP_STORE_V	1422	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_AND	79	80	1452
// OP_IFNOT	1452	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	1425	1453
// OP_IFNOT	1453	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	373	1454
// OP_LT	31	1454	1455
// OP_IFNOT	1455	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1151	245	1456
// OP_IFNOT	1456	3	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	1151	243	1457
// OP_IFNOT	1457	3	0
// OP_STORE_F	993	1426	0
// OP_GOTO	6	0	0
// OP_EQ_F	1151	244	1458
// OP_IFNOT	1458	3	0
// OP_STORE_F	1230	1426	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	1426	0
// OP_ADDRESS	28	367	1459
// OP_STOREP_F	371	1459	0
// OP_CALL0	452	0	0
// OP_MUL_F	216	1	1460
// OP_ADD_F	214	1460	1461
// OP_STORE_V	1461	4	0
// OP_CALL1	1121	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () OgreCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(CanDamage(self.enemy, self))
        {
            self.attack_state = AS_MELEE;
            return TRUE;
        }
        
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
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
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            chance = 0.1;
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                chance = 0.05;
            }
            else
            {
                chance = FALSE;
            }
            
        }
        
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(TRUE + (FL_SWIM * random()));
    return TRUE;
};

