void () movetarget_f;
void () t_movetarget;
void () knight_walk1;
void () knight_bow6;
void () knight_bow1;
float current_yaw;
entity sight_entity;
float sight_entity_time;
// anglemod
// function begins at statement 653, parm_start=1180
// OP_GE	1180	1181	1182
// OP_IFNOT	1182	4	0
// OP_SUB_F	1180	1181	1183
// OP_STORE_F	1183	1180	0
// OP_GOTO	-4	0	0
// OP_LT	1180	650	1184
// OP_IFNOT	1184	4	0
// OP_ADD_F	1180	1181	1185
// OP_STORE_F	1185	1180	0
// OP_GOTO	-4	0	0
// OP_RETURN	1180	0	0
// OP_DONE	0	0	0
float (float v) anglemod = 
{
    
    while(v >= 360.000)
    {
        v = v - 360.000;
    }
    
    
    while(v < 0.000)
    {
        v = v + 360.000;
    }
    
    return v;
};

// movetarget_f
// function begins at statement 665, parm_start=1186
// OP_LOAD_S	28	197	1186
// OP_NOT_S	1186	0	1187
// OP_IFNOT	1187	3	0
// OP_STORE_V	1188	4	0
// OP_CALL1	457	0	0
// OP_ADDRESS	28	104	1189
// OP_STOREP_F	239	1189	0
// OP_ADDRESS	28	146	1190
// OP_STOREP_FNC	1173	1190	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1191	7	0
// OP_STORE_V	1194	10	0
// OP_CALL3	451	0	0
// OP_DONE	0	0	0
void () movetarget_f = 
{
    
    if(!self.targetname)
    {
        objerror("monster_movetarget: no targetname");
    }
    
    self.solid = SOLID_TRIGGER;
    self.touch = t_movetarget;
    setsize(self, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
};

// path_corner
// function begins at statement 679, parm_start=1198
// OP_CALL0	1172	0	0
// OP_DONE	0	0	0
void () path_corner = 
{
    movetarget_f();
};

// t_movetarget
// function begins at statement 681, parm_start=1198
// OP_LOAD_ENT	29	419	1199
// OP_NE_E	1199	28	1200
// OP_IFNOT	1200	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	181	1201
// OP_IFNOT	1201	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	1198	0
// OP_STORE_ENT	29	28	0
// OP_STORE_ENT	1198	29	0
// OP_LOAD_S	28	129	1202
// OP_EQ_S	1202	1203	1204
// OP_IFNOT	1204	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1205	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	194	1206
// OP_ADDRESS	28	419	1207
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	29	196	1208
// OP_STORE_V	1208	10	0
// OP_CALL3	464	0	0
// OP_STOREP_ENT	1	1207	0
// OP_STOREP_ENT	1	1206	0
// OP_ADDRESS	28	191	1209
// OP_LOAD_ENT	28	194	1210
// OP_LOAD_V	1210	105	1211
// OP_LOAD_V	28	105	1214
// OP_SUB_V	1211	1214	1217
// OP_STORE_V	1217	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	1209	0
// OP_LOAD_ENT	28	419	1220
// OP_NOT_ENT	1220	0	1221
// OP_IFNOT	1221	7	0
// OP_ADDRESS	28	418	1222
// OP_ADD_F	31	1223	1224
// OP_STOREP_F	1224	1222	0
// OP_LOAD_FNC	28	357	1225
// OP_CALL0	1225	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () t_movetarget = 
{
    local entity temp;
    
    if(other.movetarget != self)
    {
        return;
    }
    
    
    if(other.enemy)
    {
        return;
    }
    
    temp = self;
    self = other;
    other = temp;
    
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogdrag.wav", 1.000, ATTN_IDLE);
    }
    
    self.goalentity = self.movetarget = find(world, targetname, other.target);
    self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
    
    if(!self.movetarget)
    {
        self.pausetime = time + 999999.000;
        self.th_stand();
        return;
    }
    
};

// range
// function begins at statement 727, parm_start=1226
// OP_LOAD_V	28	105	1234
// OP_LOAD_V	28	166	1237
// OP_ADD_V	1234	1237	1240
// OP_STORE_V	1240	1227	0
// OP_LOAD_V	1226	105	1243
// OP_LOAD_V	1226	166	1246
// OP_ADD_V	1243	1246	1249
// OP_STORE_V	1249	1230	0
// OP_SUB_V	1227	1230	1252
// OP_STORE_V	1252	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	1233	0
// OP_LT	1233	1255	1256
// OP_IFNOT	1256	2	0
// OP_RETURN	243	0	0
// OP_LT	1233	1257	1258
// OP_IFNOT	1258	2	0
// OP_RETURN	244	0	0
// OP_LT	1233	1259	1260
// OP_IFNOT	1260	2	0
// OP_RETURN	245	0	0
// OP_RETURN	246	0	0
// OP_DONE	0	0	0
float (entity targ) range = 
{
    local vector spot1;
    local vector spot2;
    local float r;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    r = vlen(spot1 - spot2);
    
    if(r < 120.000)
    {
        return RANGE_MELEE;
    }
    
    
    if(r < 500.000)
    {
        return RANGE_NEAR;
    }
    
    
    if(r < 1000.000)
    {
        return RANGE_MID;
    }
    
    return RANGE_FAR;
};

// visible
// function begins at statement 750, parm_start=1261
// OP_LOAD_V	28	105	1268
// OP_LOAD_V	28	166	1271
// OP_ADD_V	1268	1271	1274
// OP_STORE_V	1274	1262	0
// OP_LOAD_V	1261	105	1277
// OP_LOAD_V	1261	166	1280
// OP_ADD_V	1277	1280	1283
// OP_STORE_V	1283	1265	0
// OP_STORE_V	1262	4	0
// OP_STORE_V	1265	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_AND	79	80	1286
// OP_IFNOT	1286	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	70	708	1287
// OP_IFNOT	1287	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) visible = 
{
    local vector spot1;
    local vector spot2;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, TRUE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_fraction == 1.000)
    {
        return TRUE;
    }
    
    return FALSE;
};

// infront
// function begins at statement 771, parm_start=1288
// OP_LOAD_V	28	117	1293
// OP_STORE_V	1293	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	1288	105	1296
// OP_LOAD_V	28	105	1299
// OP_SUB_V	1296	1299	1302
// OP_STORE_V	1302	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	1289	0
// OP_MUL_V	1289	59	1305
// OP_STORE_F	1305	1292	0
// OP_GT	1292	1104	1306
// OP_IFNOT	1306	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ) infront = 
{
    local vector vec;
    local float dot;
    makevectors(self.angles);
    vec = normalize(targ.origin - self.origin);
    dot = vec * v_forward;
    
    if(dot > 0.300)
    {
        return TRUE;
    }
    
    return FALSE;
};

// HuntTarget
// function begins at statement 787, parm_start=1308
// OP_ADDRESS	28	194	1308
// OP_LOAD_ENT	28	181	1309
// OP_STOREP_ENT	1309	1308	0
// OP_ADDRESS	28	148	1310
// OP_LOAD_FNC	28	359	1311
// OP_STOREP_FNC	1311	1310	0
// OP_ADDRESS	28	191	1312
// OP_LOAD_ENT	28	181	1313
// OP_LOAD_V	1313	105	1314
// OP_LOAD_V	28	105	1317
// OP_SUB_V	1314	1317	1320
// OP_STORE_V	1320	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	1312	0
// OP_ADDRESS	28	150	1323
// OP_ADD_F	31	686	1324
// OP_STOREP_F	1324	1323	0
// OP_STORE_V	708	4	0
// OP_CALL1	816	0	0
// OP_DONE	0	0	0
void () HuntTarget = 
{
    self.goalentity = self.enemy;
    self.think = self.th_run;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    self.nextthink = time + 0.100;
    SUB_AttackFinished(1.000);
};

// SightSound
// function begins at statement 807, parm_start=1326
// OP_LOAD_S	28	129	1327
// OP_EQ_S	1327	1203	1328
// OP_IFNOT	1328	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1329	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	152	0	0
// OP_LOAD_S	28	129	1330
// OP_EQ_S	1330	909	1331
// OP_IFNOT	1331	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1332	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	142	0	0
// OP_LOAD_S	28	129	1333
// OP_EQ_S	1333	1334	1335
// OP_IFNOT	1335	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1336	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	132	0	0
// OP_LOAD_S	28	129	1337
// OP_EQ_S	1337	1338	1339
// OP_IFNOT	1339	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1340	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	122	0	0
// OP_LOAD_S	28	129	1341
// OP_EQ_S	1341	1342	1343
// OP_IFNOT	1343	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1344	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	112	0	0
// OP_LOAD_S	28	129	1345
// OP_EQ_S	1345	1346	1347
// OP_IFNOT	1347	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1348	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	102	0	0
// OP_LOAD_S	28	129	1349
// OP_EQ_S	1349	1350	1351
// OP_IFNOT	1351	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1352	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	92	0	0
// OP_LOAD_S	28	129	1353
// OP_EQ_S	1353	1354	1355
// OP_IFNOT	1355	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1356	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	82	0	0
// OP_LOAD_S	28	129	1357
// OP_EQ_S	1357	1358	1359
// OP_IFNOT	1359	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1360	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	72	0	0
// OP_LOAD_S	28	129	1361
// OP_EQ_S	1361	1362	1363
// OP_IFNOT	1363	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1364	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	62	0	0
// OP_LOAD_S	28	129	1365
// OP_EQ_S	1365	1366	1367
// OP_IFNOT	1367	40	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	819	1368
// OP_STORE_V	1368	4	0
// OP_CALL1	481	0	0
// OP_STORE_F	1	1326	0
// OP_EQ_F	1326	708	1369
// OP_IFNOT	1369	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1370	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	25	0	0
// OP_EQ_F	1326	929	1371
// OP_IFNOT	1371	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1372	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	16	0	0
// OP_EQ_F	1326	650	1373
// OP_IFNOT	1373	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1374	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1375	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	28	129	1376
// OP_EQ_S	1376	1377	1378
// OP_IFNOT	1378	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1379	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	10	0	0
// OP_LOAD_S	28	129	1380
// OP_EQ_S	1380	1381	1382
// OP_IFNOT	1382	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1383	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () SightSound = 
{
    local float rsnd;
    if(self.classname == "monster_ogre")
    {
        sound(self, CHAN_VOICE, "ogre/ogwake.wav", 1.000, ATTN_NORM);
    }
    else
    {
        if(self.classname == "monster_knight")
        {
            sound(self, CHAN_VOICE, "knight/ksight.wav", 1.000, ATTN_NORM);
        }
        else
        {
            if(self.classname == "monster_shambler")
            {
                sound(self, CHAN_VOICE, "shambler/ssight.wav", 1.000, ATTN_NORM);
            }
            else
            {
                if(self.classname == "monster_demon1")
                {
                    sound(self, CHAN_VOICE, "demon/sight2.wav", 1.000, ATTN_NORM);
                }
                else
                {
                    if(self.classname == "monster_wizard")
                    {
                        sound(self, CHAN_VOICE, "wizard/wsight.wav", 1.000, ATTN_NORM);
                    }
                    else
                    {
                        if(self.classname == "monster_zombie")
                        {
                            sound(self, CHAN_VOICE, "zombie/z_idle.wav", 1.000, ATTN_NORM);
                        }
                        else
                        {
                            if(self.classname == "monster_dog")
                            {
                                sound(self, CHAN_VOICE, "dog/dsight.wav", 1.000, ATTN_NORM);
                            }
                            else
                            {
                                if(self.classname == "monster_hell_knight")
                                {
                                    sound(self, CHAN_VOICE, "hknight/sight1.wav", 1.000, ATTN_NORM);
                                }
                                else
                                {
                                    if(self.classname == "monster_tarbaby")
                                    {
                                        sound(self, CHAN_VOICE, "blob/sight1.wav", 1.000, ATTN_NORM);
                                    }
                                    else
                                    {
                                        if(self.classname == "monster_vomit")
                                        {
                                            sound(self, CHAN_VOICE, "vomitus/v_sight1.wav", 1.000, ATTN_NORM);
                                        }
                                        else
                                        {
                                            if(self.classname == "monster_enforcer")
                                            {
                                                rsnd = rint(random() * 3.000);
                                                if(rsnd == 1.000)
                                                {
                                                    sound(self, CHAN_VOICE, "enforcer/sight1.wav", 1.000, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    if(rsnd == 2.000)
                                                    {
                                                        sound(self, CHAN_VOICE, "enforcer/sight2.wav", 1.000, ATTN_NORM);
                                                    }
                                                    else
                                                    {
                                                        if(rsnd == 0.000)
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight3.wav", 1.000, ATTN_NORM);
                                                        }
                                                        else
                                                        {
                                                            sound(self, CHAN_VOICE, "enforcer/sight4.wav", 1.000, ATTN_NORM);
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                if(self.classname == "monster_army")
                                                {
                                                    sound(self, CHAN_VOICE, "soldier/sight1.wav", 1.000, ATTN_NORM);
                                                }
                                                else
                                                {
                                                    
                                                    if(self.classname == "monster_shalrath")
                                                    {
                                                        sound(self, CHAN_VOICE, "shalrath/sight.wav", 1.000, ATTN_NORM);
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
    
};

// FoundTarget
// function begins at statement 969, parm_start=1385
// OP_LOAD_ENT	28	181	1385
// OP_LOAD_S	1385	129	1386
// OP_EQ_S	1386	797	1387
// OP_IFNOT	1387	3	0
// OP_STORE_ENT	28	1178	0
// OP_STORE_F	31	1179	0
// OP_ADDRESS	28	389	1388
// OP_ADD_F	31	708	1389
// OP_STOREP_F	1389	1388	0
// OP_CALL0	1325	0	0
// OP_CALL0	1307	0	0
// OP_DONE	0	0	0
void () FoundTarget = 
{
    
    if(self.enemy.classname == "player")
    {
        sight_entity = self;
        sight_entity_time = time;
    }
    
    self.show_hostile = time + 1.000;
    SightSound();
    HuntTarget();
};

// FindTarget
// function begins at statement 981, parm_start=1391
// OP_RETURN	213	0	0
// OP_SUB_F	31	686	1393
// OP_GE	1179	1393	1394
// OP_LOAD_F	28	195	1395
// OP_BITAND	1395	819	1396
// OP_NOT_F	1396	0	1397
// OP_AND	1394	1397	1398
// OP_IFNOT	1398	8	0
// OP_STORE_ENT	1178	1391	0
// OP_LOAD_ENT	1391	181	1399
// OP_LOAD_ENT	28	181	1400
// OP_EQ_E	1399	1400	1401
// OP_IFNOT	1401	2	0
// OP_RETURN	0	0	0
// OP_GOTO	6	0	0
// OP_CALL0	463	0	0
// OP_STORE_ENT	1	1391	0
// OP_NOT_ENT	1391	0	1402
// OP_IFNOT	1402	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1403
// OP_EQ_E	1391	1403	1404
// OP_IFNOT	1404	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	1391	182	1405
// OP_BITAND	1405	221	1406
// OP_IFNOT	1406	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	1391	162	1407
// OP_BITAND	1407	273	1408
// OP_IFNOT	1408	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	1391	4	0
// OP_CALL1	943	0	0
// OP_STORE_F	1	1392	0
// OP_EQ_F	1392	246	1409
// OP_IFNOT	1409	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	1391	4	0
// OP_CALL1	823	0	0
// OP_NOT_F	1	0	1410
// OP_IFNOT	1410	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	1392	244	1411
// OP_IFNOT	1411	10	0
// OP_LOAD_F	1391	389	1412
// OP_LT	1412	31	1413
// OP_STORE_V	1391	4	0
// OP_CALL1	942	0	0
// OP_NOT_F	1	0	1414
// OP_AND	1413	1414	1415
// OP_IFNOT	1415	2	0
// OP_RETURN	213	0	0
// OP_GOTO	8	0	0
// OP_EQ_F	1392	245	1416
// OP_IFNOT	1416	6	0
// OP_STORE_V	1391	4	0
// OP_CALL1	942	0	0
// OP_NOT_F	1	0	1417
// OP_IFNOT	1417	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	181	1418
// OP_STOREP_ENT	1391	1418	0
// OP_LOAD_ENT	28	181	1419
// OP_LOAD_S	1419	129	1420
// OP_NE_S	1420	797	1421
// OP_IFNOT	1421	12	0
// OP_ADDRESS	28	181	1422
// OP_LOAD_ENT	28	181	1423
// OP_LOAD_ENT	1423	181	1424
// OP_STOREP_ENT	1424	1422	0
// OP_LOAD_ENT	28	181	1425
// OP_LOAD_S	1425	129	1426
// OP_NE_S	1426	797	1427
// OP_IFNOT	1427	4	0
// OP_ADDRESS	28	181	1428
// OP_STOREP_ENT	30	1428	0
// OP_RETURN	213	0	0
// OP_CALL0	1384	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () FindTarget = 
{
    local entity client;
    local float r;
    return FALSE;
    if((sight_entity_time >= (time - 0.100)) && (!(self.spawnflags & 3.000)))
    {
        client = sight_entity;
        
        if(client.enemy == self.enemy)
        {
            return;
        }
        
    }
    else
    {
        client = checkclient();
        
        if(!client)
        {
            return FALSE;
        }
        
    }
    
    
    if(client == self.enemy)
    {
        return FALSE;
    }
    
    
    if(client.flags & FL_NOTARGET)
    {
        return FALSE;
    }
    
    
    if(client.items & IT_INVISIBILITY)
    {
        return FALSE;
    }
    
    r = range(client);
    
    if(r == RANGE_FAR)
    {
        return FALSE;
    }
    
    
    if(!visible(client))
    {
        return FALSE;
    }
    
    if(r == RANGE_NEAR)
    {
        
        if((client.show_hostile < time) && !infront(client))
        {
            return FALSE;
        }
        
    }
    else
    {
        
        if(r == RANGE_MID)
        {
            
            if(!infront(client))
            {
                return FALSE;
            }
            
        }
        
    }
    
    self.enemy = client;
    
    if(self.enemy.classname != "player")
    {
        self.enemy = self.enemy.enemy;
        
        if(self.enemy.classname != "player")
        {
            self.enemy = world;
            return FALSE;
        }
        
    }
    
    FoundTarget();
    return TRUE;
};

// ai_forward
// function begins at statement 1062, parm_start=1430
// OP_LOAD_F	28	119	1431
// OP_STORE_V	1431	4	0
// OP_STORE_V	1430	7	0
// OP_CALL2	478	0	0
// OP_DONE	0	0	0
void (float dist) ai_forward = 
{
    walkmove(self.angles_y, dist);
};

// ai_back
// function begins at statement 1067, parm_start=1433
// OP_LOAD_F	28	119	1434
// OP_ADD_F	1434	1435	1436
// OP_STORE_V	1436	4	0
// OP_STORE_V	1433	7	0
// OP_CALL2	478	0	0
// OP_DONE	0	0	0
void (float dist) ai_back = 
{
    walkmove(self.angles_y + 180.000, dist);
};

// ai_pain
// function begins at statement 1073, parm_start=1438
// OP_STORE_V	1438	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void (float dist) ai_pain = 
{
    ai_back(dist);
};

// ai_painforward
// function begins at statement 1076, parm_start=1440
// OP_LOAD_F	28	191	1441
// OP_STORE_V	1441	4	0
// OP_STORE_V	1440	7	0
// OP_CALL2	478	0	0
// OP_DONE	0	0	0
void (float dist) ai_painforward = 
{
    walkmove(self.ideal_yaw, dist);
};

// ai_walk
// function begins at statement 1081, parm_start=1443
// OP_STORE_F	1443	342	0
// OP_LOAD_S	28	129	1458
// OP_EQ_S	1458	1459	1460
// OP_IFNOT	1460	4	0
// OP_STORE_V	1443	4	0
// OP_CALL1	502	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1390	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	119	1461
// OP_LOAD_F	28	191	1462
// OP_NE_F	1461	1462	1463
// OP_IFNOT	1463	2	0
// OP_CALL0	492	0	0
// OP_LOAD_F	28	106	1464
// OP_LOAD_ENT	28	194	1465
// OP_LOAD_F	1465	106	1466
// OP_EQ_F	1464	1466	1467
// OP_LOAD_F	28	107	1468
// OP_LOAD_ENT	28	194	1469
// OP_LOAD_F	1469	107	1470
// OP_EQ_F	1468	1470	1471
// OP_AND	1467	1471	1472
// OP_IFNOT	1472	9	0
// OP_LOAD_F	28	191	1473
// OP_LOAD_F	28	562	1474
// OP_NE_F	1473	1474	1475
// OP_IFNOT	1475	4	0
// OP_ADDRESS	28	191	1476
// OP_LOAD_F	28	562	1477
// OP_STOREP_F	1477	1476	0
// OP_CALL0	492	0	0
// OP_LOAD_V	28	105	1478
// OP_STORE_V	1478	1448	0
// OP_LOAD_ENT	28	194	1481
// OP_LOAD_V	1481	105	1482
// OP_STORE_V	1482	1451	0
// OP_STORE_F	650	1450	0
// OP_STORE_F	650	1453	0
// OP_SUB_V	1448	1451	1485
// OP_STORE_V	1485	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	1444	0
// OP_LOAD_ENT	28	194	1488
// OP_LOAD_V	1488	105	1489
// OP_LOAD_V	28	105	1492
// OP_SUB_V	1489	1492	1495
// OP_STORE_V	1495	1445	0
// OP_STORE_F	650	1447	0
// OP_STORE_V	1445	4	0
// OP_CALL1	455	0	0
// OP_MUL_VF	1	1443	1498
// OP_STORE_V	1498	1445	0
// OP_GE	1443	1444	1501
// OP_LE	1444	1502	1503
// OP_OR	1501	1503	1504
// OP_IFNOT	1504	54	0
// OP_ADDRESS	28	105	1505
// OP_LOAD_ENT	28	194	1508
// OP_LOAD_V	1508	105	1509
// OP_STOREP_V	1509	1505	0
// OP_CALL0	479	0	0
// OP_LOAD_F	28	119	1512
// OP_LOAD_F	28	562	1513
// OP_EQ_F	1512	1513	1514
// OP_IFNOT	1514	44	0
// OP_LOAD_S	28	129	1515
// OP_EQ_S	1515	1516	1517
// OP_LOAD_F	28	551	1518
// OP_STORE_V	1518	4	0
// OP_CALL1	583	0	0
// OP_EQ_F	1	1502	1519
// OP_LOAD_F	28	551	1520
// OP_STORE_V	1520	4	0
// OP_CALL1	583	0	0
// OP_EQ_F	1	708	1521
// OP_OR	1519	1521	1522
// OP_AND	1517	1522	1523
// OP_IFNOT	1523	2	0
// OP_CALL0	590	0	0
// OP_LOAD_FNC	28	357	1524
// OP_CALL0	1524	0	0
// OP_IFNOT	538	25	0
// OP_LOAD_V	536	105	1525
// OP_STORE_V	1525	4	0
// OP_CALL1	591	0	0
// OP_STORE_V	537	4	0
// OP_CALL1	592	0	0
// OP_STORE_V	1	1454	0
// OP_STORE_V	536	4	0
// OP_STORE_V	1454	7	0
// OP_CALL2	449	0	0
// OP_STORE_ENT	28	1457	0
// OP_STORE_ENT	536	28	0
// OP_CALL0	479	0	0
// OP_STORE_ENT	1457	28	0
// OP_ADDRESS	536	551	1528
// OP_STOREP_F	537	1528	0
// OP_LOAD_V	536	105	1529
// OP_STORE_V	1529	4	0
// OP_CALL1	591	0	0
// OP_STORE_V	536	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	1532	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_F	650	538	0
// OP_CALL0	593	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	1533
// OP_ADD_V	1533	1445	1536
// OP_STORE_V	1536	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void (float dist) ai_walk = 
{
    local float ftemp;
    local vector move_vec;
    local vector v1;
    local vector v2;
    local vector dest_org;
    local entity oldself;
    movedist = dist;
    
    if(self.classname == "monster_dragon")
    {
        movetogoal(dist);
        return;
    }
    
    
    if(FindTarget())
    {
        return;
    }
    
    
    if(self.angles_y != self.ideal_yaw)
    {
        ChangeYaw();
    }
    
    
    if((self.origin_x == self.goalentity.origin_x) && (self.origin_y == self.goalentity.origin_y))
    {
        
        if(self.ideal_yaw != self.orig_angle_y)
        {
            self.ideal_yaw = self.orig_angle_y;
        }
        
        ChangeYaw();
    }
    
    v1 = self.origin;
    v2 = self.goalentity.origin;
    v1_z = 0.000;
    v2_z = 0.000;
    ftemp = vlen(v1 - v2);
    move_vec = self.goalentity.origin - self.origin;
    move_vec_z = 0.000;
    move_vec = normalize(move_vec) * dist;
    
    if((dist >= ftemp) || (ftemp <= 8.000))
    {
        self.origin = self.goalentity.origin;
        droptofloor();
        
        if(self.angles_y == self.orig_angle_y)
        {
            
            if((self.classname == "chess_pawn") && ((GetY(self.location) == 8.000) || (GetY(self.location) == 1.000)))
            {
                become_queen();
            }
            
            self.th_stand();
            
            if(king_castle_move_flag)
            {
                spawn_tfog(castle_to_move.origin);
                dest_org = LocationToVector(castle_destination);
                setorigin(castle_to_move, dest_org);
                oldself = self;
                self = castle_to_move;
                droptofloor();
                self = oldself;
                castle_to_move.location = castle_destination;
                spawn_tfog(castle_to_move.origin);
                sound(castle_to_move, CHAN_AUTO, "misc/r_tele4.wav", 1.000, ATTN_NORM);
            }
            
            king_castle_move_flag = 0.000;
            next_turn();
        }
        
        return;
    }
    
    setorigin(self, self.origin + move_vec);
};

// ai_stand
// function begins at statement 1198, parm_start=1540
// OP_LOAD_ENT	28	181	1540
// OP_EQ_E	1540	30	1541
// OP_AND	539	1541	1542
// OP_IFNOT	1542	8	0
// OP_ADDRESS	28	181	1543
// OP_STORE_V	28	4	0
// OP_CALL1	594	0	0
// OP_STOREP_ENT	1	1543	0
// OP_NE_E	1	30	1544
// OP_IFNOT	1544	2	0
// OP_CALL0	1307	0	0
// OP_DONE	0	0	0
void () ai_stand = 
{
    
    if(king_dead && (self.enemy == world))
    {
        self.enemy = FindNewEnemy(self);
        
        if(FindNewEnemy(self) != world)
        {
            HuntTarget();
        }
        
    }
    
};

// ai_turn
// function begins at statement 1210, parm_start=1546
// OP_CALL0	1390	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	492	0	0
// OP_DONE	0	0	0
void () ai_turn = 
{
    
    if(FindTarget())
    {
        return;
    }
    
    ChangeYaw();
};

// ChooseTurn
// function begins at statement 1215, parm_start=1546
// OP_LOAD_V	28	105	1555
// OP_SUB_V	1555	1546	1558
// OP_STORE_V	1558	1549	0
// OP_STORE_F	75	1552	0
// OP_SUB_F	650	74	1561
// OP_STORE_F	1561	1553	0
// OP_STORE_F	650	1554	0
// OP_MUL_V	1549	1552	1562
// OP_GT	1562	650	1563
// OP_IFNOT	1563	5	0
// OP_SUB_F	650	75	1564
// OP_STORE_F	1564	1549	0
// OP_STORE_F	74	1550	0
// OP_GOTO	4	0	0
// OP_STORE_F	75	1549	0
// OP_SUB_F	650	74	1565
// OP_STORE_F	1565	1550	0
// OP_STORE_F	650	1551	0
// OP_ADDRESS	28	191	1566
// OP_STORE_V	1549	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	1566	0
// OP_DONE	0	0	0
void (vector dest3) ChooseTurn = 
{
    local vector dir;
    local vector newdir;
    dir = self.origin - dest3;
    newdir_x = 0.000;
    newdir_y = 0.000 - trace_plane_normal_x;
    newdir_z = 0.000;
    if((dir * newdir) > 0.000)
    {
        dir_x = 0.000 - 0.000;
        dir_y = trace_plane_normal_x;
    }
    else
    {
        dir_x = 0.000;
        dir_y = 0.000 - trace_plane_normal_x;
    }
    
    dir_z = 0.000;
    self.ideal_yaw = vectoyaw(dir);
};

// FacingIdeal
// function begins at statement 1238, parm_start=1568
// OP_LOAD_F	28	119	1569
// OP_LOAD_F	28	191	1570
// OP_SUB_F	1569	1570	1571
// OP_STORE_V	1571	4	0
// OP_CALL1	833	0	0
// OP_STORE_F	1	1568	0
// OP_GT	1568	1572	1573
// OP_LT	1568	1574	1575
// OP_AND	1573	1575	1576
// OP_IFNOT	1576	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () FacingIdeal = 
{
    local float delta;
    delta = anglemod(self.angles_y - self.ideal_yaw);
    
    if((delta > 45.000) && (delta < 315.000))
    {
        return FALSE;
    }
    
    return TRUE;
};

float () WizardCheckAttack;
float () DogCheckAttack;
// CheckAnyAttack
// function begins at statement 1251, parm_start=1580
// OP_NOT_F	845	0	1580
// OP_IFNOT	1580	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	1581
// OP_EQ_S	1581	1377	1582
// OP_IFNOT	1582	3	0
// OP_CALL0	1065	0	0
// OP_RETURN	1	0	0
// OP_LOAD_S	28	129	1583
// OP_EQ_S	1583	1203	1584
// OP_IFNOT	1584	3	0
// OP_CALL0	1128	0	0
// OP_RETURN	1	0	0
// OP_LOAD_S	28	129	1585
// OP_EQ_S	1585	1334	1586
// OP_IFNOT	1586	3	0
// OP_CALL0	1109	0	0
// OP_RETURN	1	0	0
// OP_LOAD_S	28	129	1587
// OP_EQ_S	1587	1338	1588
// OP_IFNOT	1588	3	0
// OP_CALL0	841	0	0
// OP_RETURN	1	0	0
// OP_LOAD_S	28	129	1589
// OP_EQ_S	1589	1350	1590
// OP_IFNOT	1590	3	0
// OP_CALL0	1578	0	0
// OP_RETURN	1	0	0
// OP_LOAD_S	28	129	1591
// OP_EQ_S	1591	1342	1592
// OP_IFNOT	1592	3	0
// OP_CALL0	1577	0	0
// OP_RETURN	1	0	0
// OP_CALL0	876	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
float () CheckAnyAttack = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    
    if(self.classname == "monster_army")
    {
        return SoldierCheckAttack();
    }
    
    
    if(self.classname == "monster_ogre")
    {
        return OgreCheckAttack();
    }
    
    
    if(self.classname == "monster_shambler")
    {
        return ShamCheckAttack();
    }
    
    
    if(self.classname == "monster_demon1")
    {
        return DemonCheckAttack();
    }
    
    
    if(self.classname == "monster_dog")
    {
        return DogCheckAttack();
    }
    
    
    if(self.classname == "monster_wizard")
    {
        return WizardCheckAttack();
    }
    
    return CheckAttack();
};

// ai_run_melee
// function begins at statement 1287, parm_start=1594
// OP_ADDRESS	28	191	1594
// OP_STOREP_F	848	1594	0
// OP_CALL0	492	0	0
// OP_CALL0	1567	0	0
// OP_IFNOT	1	5	0
// OP_LOAD_FNC	28	361	1595
// OP_CALL0	1595	0	0
// OP_ADDRESS	28	368	1596
// OP_STOREP_F	369	1596	0
// OP_DONE	0	0	0
void () ai_run_melee = 
{
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    
    if(FacingIdeal())
    {
        self.th_melee();
        self.attack_state = AS_STRAIGHT;
    }
    
};

// ai_run_missile
// function begins at statement 1297, parm_start=1598
// OP_ADDRESS	28	191	1598
// OP_STOREP_F	848	1598	0
// OP_CALL0	492	0	0
// OP_CALL0	1567	0	0
// OP_IFNOT	1	11	0
// OP_LOAD_S	28	129	1599
// OP_NE_S	1599	1516	1600
// OP_IFNOT	1600	4	0
// OP_LOAD_FNC	28	360	1601
// OP_CALL0	1601	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	361	1602
// OP_CALL0	1602	0	0
// OP_ADDRESS	28	368	1603
// OP_STOREP_F	369	1603	0
// OP_DONE	0	0	0
void () ai_run_missile = 
{
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    
    if(FacingIdeal())
    {
        if(self.classname != "chess_pawn")
        {
            self.th_missile();
        }
        else
        {
            self.th_melee();
        }
        
        self.attack_state = AS_STRAIGHT;
    }
    
};

// ai_run_slide
// function begins at statement 1313, parm_start=1605
// OP_ADDRESS	28	191	1606
// OP_STOREP_F	848	1606	0
// OP_CALL0	492	0	0
// OP_LOAD_F	28	366	1607
// OP_IFNOT	1607	3	0
// OP_STORE_F	1608	1605	0
// OP_GOTO	2	0	0
// OP_STORE_F	1609	1605	0
// OP_LOAD_F	28	191	1610
// OP_ADD_F	1610	1605	1611
// OP_STORE_V	1611	4	0
// OP_STORE_V	342	7	0
// OP_CALL2	478	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	366	1612
// OP_LOAD_F	28	366	1613
// OP_SUB_F	708	1613	1614
// OP_STOREP_F	1614	1612	0
// OP_LOAD_F	28	191	1615
// OP_SUB_F	1615	1605	1616
// OP_STORE_V	1616	4	0
// OP_STORE_V	342	7	0
// OP_CALL2	478	0	0
// OP_DONE	0	0	0
void () ai_run_slide = 
{
    local float ofs;
    self.ideal_yaw = enemy_yaw;
    ChangeYaw();
    if(self.lefty)
    {
        ofs = 90.000;
    }
    else
    {
        ofs = -90.000;
    }
    
    
    if(walkmove(self.ideal_yaw + ofs, movedist))
    {
        return;
    }
    
    self.lefty = 1.000 - self.lefty;
    walkmove(self.ideal_yaw - ofs, movedist);
};

// ai_run
// function begins at statement 1338, parm_start=1618
// OP_STORE_F	1618	342	0
// OP_NOT_F	539	0	1631
// OP_LOAD_ENT	28	181	1632
// OP_EQ_E	1632	527	1633
// OP_LOAD_ENT	28	181	1634
// OP_EQ_E	1634	526	1635
// OP_OR	1633	1635	1636
// OP_NOT_F	1636	0	1637
// OP_AND	1631	1637	1638
// OP_IFNOT	1638	5	0
// OP_ADDRESS	28	181	1639
// OP_STOREP_ENT	30	1639	0
// OP_LOAD_FNC	28	357	1640
// OP_CALL0	1640	0	0
// OP_LOAD_ENT	28	181	1641
// OP_LOAD_F	1641	152	1642
// OP_LE	1642	650	1643
// OP_IFNOT	1643	30	0
// OP_ADDRESS	28	181	1644
// OP_STOREP_ENT	30	1644	0
// OP_LOAD_ENT	28	364	1645
// OP_LOAD_F	1645	152	1646
// OP_GT	1646	650	1647
// OP_IFNOT	1647	5	0
// OP_ADDRESS	28	181	1648
// OP_LOAD_ENT	28	364	1649
// OP_STOREP_ENT	1649	1648	0
// OP_CALL0	1307	0	0
// OP_LOAD_ENT	28	181	1650
// OP_EQ_E	1650	30	1651
// OP_ADDRESS	28	181	1652
// OP_STORE_V	28	4	0
// OP_CALL1	594	0	0
// OP_STOREP_ENT	1	1652	0
// OP_NE_E	1	30	1653
// OP_AND	1651	1653	1654
// OP_IFNOT	1654	3	0
// OP_CALL0	1307	0	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	419	1655
// OP_IFNOT	1655	4	0
// OP_LOAD_FNC	28	358	1656
// OP_CALL0	1656	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	357	1657
// OP_CALL0	1657	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1658
// OP_STORE_V	1658	4	0
// OP_CALL1	823	0	0
// OP_STORE_F	1	845	0
// OP_IFNOT	845	4	0
// OP_ADDRESS	28	367	1659
// OP_ADD_F	31	1660	1661
// OP_STOREP_F	1661	1659	0
// OP_LOAD_ENT	28	181	1662
// OP_STORE_V	1662	4	0
// OP_CALL1	942	0	0
// OP_STORE_F	1	846	0
// OP_LOAD_ENT	28	181	1663
// OP_STORE_V	1663	4	0
// OP_CALL1	943	0	0
// OP_STORE_F	1	847	0
// OP_LOAD_ENT	28	181	1664
// OP_LOAD_V	1664	105	1665
// OP_LOAD_V	28	105	1668
// OP_SUB_V	1665	1668	1671
// OP_STORE_V	1671	4	0
// OP_CALL1	459	0	0
// OP_STORE_F	1	848	0
// OP_LOAD_V	28	105	1674
// OP_LOAD_ENT	28	181	1677
// OP_LOAD_V	1677	105	1678
// OP_SUB_V	1674	1678	1681
// OP_STORE_V	1681	4	0
// OP_CALL1	458	0	0
// OP_MUL_F	1684	819	1685
// OP_GT	1	1685	1686
// OP_NOT_F	539	0	1687
// OP_AND	1686	1687	1688
// OP_IFNOT	1688	3	0
// OP_ADDRESS	28	368	1689
// OP_STOREP_F	372	1689	0
// OP_LOAD_F	28	368	1690
// OP_EQ_F	1690	372	1691
// OP_IFNOT	1691	3	0
// OP_CALL0	1597	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	368	1692
// OP_EQ_F	1692	371	1693
// OP_IFNOT	1693	3	0
// OP_CALL0	1593	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1579	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	368	1694
// OP_EQ_F	1694	370	1695
// OP_IFNOT	1695	3	0
// OP_CALL0	1604	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	539	4	0
// OP_STORE_V	1618	4	0
// OP_CALL1	502	0	0
// OP_GOTO	20	0	0
// OP_LOAD_ENT	28	194	1696
// OP_LOAD_V	1696	105	1697
// OP_LOAD_V	28	105	1700
// OP_SUB_V	1697	1700	1703
// OP_STORE_V	1703	1622	0
// OP_STORE_F	650	1624	0
// OP_STORE_V	1622	4	0
// OP_CALL1	458	0	0
// OP_GT	1	959	1706
// OP_IFNOT	1706	10	0
// OP_STORE_V	1622	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	1622	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	1707
// OP_MUL_VF	1622	1618	1710
// OP_ADD_V	1707	1710	1713
// OP_STORE_V	1713	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void (float dist) ai_run = 
{
    local vector delta;
    local vector goal_vec;
    local float axis;
    local float direct;
    local float ang_rint;
    local float ang_floor;
    local float ang_ceil;
    local string str;
    movedist = dist;
    
    if(!king_dead && (!((self.enemy == current_enemy) || (self.enemy == current_selected))))
    {
        self.enemy = world;
        self.th_stand();
    }
    
    
    if(self.enemy.health <= 0.000)
    {
        self.enemy = world;
        
        if(self.oldenemy.health > 0.000)
        {
            self.enemy = self.oldenemy;
            HuntTarget();
        }
        
        self.enemy = FindNewEnemy(self);
        if((self.enemy == world) && (FindNewEnemy(self) != world))
        {
            HuntTarget();
        }
        else
        {
            if(self.movetarget)
            {
                self.th_walk();
            }
            else
            {
                self.th_stand();
            }
            
        }
        
        return;
    }
    
    enemy_vis = visible(self.enemy);
    
    if(enemy_vis)
    {
        self.search_time = time + 5.000;
    }
    
    enemy_infront = infront(self.enemy);
    enemy_range = range(self.enemy);
    enemy_yaw = vectoyaw(self.enemy.origin - self.origin);
    
    if(((vlen(self.origin - self.enemy.origin)) > (64.000 * 3.000)) && !king_dead)
    {
        self.attack_state = AS_MISSILE;
    }
    
    
    if(self.attack_state == AS_MISSILE)
    {
        ai_run_missile();
        return;
    }
    
    
    if(self.attack_state == AS_MELEE)
    {
        ai_run_melee();
        return;
    }
    
    
    if(CheckAnyAttack())
    {
        return;
    }
    
    
    if(self.attack_state == AS_SLIDING)
    {
        ai_run_slide();
        return;
    }
    
    if(king_dead)
    {
        movetogoal(dist);
    }
    else
    {
        goal_vec = self.goalentity.origin - self.origin;
        goal_vec_z = 0.000;
        
        if(vlen(goal_vec) > 32.000)
        {
            goal_vec = normalize(goal_vec);
            setorigin(self, self.origin + (goal_vec * dist));
        }
        
    }
    
};

