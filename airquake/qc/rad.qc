void () rad_run;
void () rad_aim;
void () start_monster_rad;
void () rad_assign;
// RadFindTarget
// function begins at statement 27844, parm_start=19155
// OP_LOAD_S	28	243	19162
// OP_EQ_S	19162	101	19163
// OP_IFNOT	19163	3	0
// OP_STORE_S	102	19160	0
// OP_GOTO	10	0	0
// OP_LOAD_S	28	243	19164
// OP_EQ_S	19164	102	19165
// OP_IFNOT	19165	6	0
// OP_IFNOT	35	3	0
// OP_STORE_S	103	19160	0
// OP_GOTO	2	0	0
// OP_STORE_S	101	19160	0
// OP_GOTO	2	0	0
// OP_STORE_S	102	19160	0
// OP_STORE_F	1624	19159	0
// OP_LOAD_ENT	28	206	19166
// OP_LOAD_F	19166	177	19167
// OP_GT	19167	619	19168
// OP_IFNOT	19168	8	0
// OP_LOAD_ENT	28	206	19169
// OP_LOAD_V	19169	130	19170
// OP_LOAD_V	28	130	19173
// OP_SUB_V	19170	19173	19176
// OP_STORE_V	19176	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	19159	0
// OP_LOAD_V	28	130	19179
// OP_STORE_V	19179	4	0
// OP_STORE_V	1624	7	0
// OP_CALL2	516	0	0
// OP_STORE_ENT	1	19155	0
// OP_ADDRESS	28	198	19182
// OP_STOREP_F	619	19182	0
// OP_IFNOT	19155	227	0
// OP_LOAD_S	19155	243	19183
// OP_EQ_S	19183	19160	19184
// OP_IFNOT	19184	221	0
// OP_LOAD_F	19155	188	19185
// OP_EQ_F	19185	306	19186
// OP_LOAD_F	19155	129	19187
// OP_NE_F	19187	295	19188
// OP_AND	19186	19188	19189
// OP_IFNOT	19189	215	0
// OP_LOAD_F	19155	177	19190
// OP_GT	19190	619	19191
// OP_LOAD_S	19155	154	19192
// OP_NE_S	19192	766	19193
// OP_AND	19191	19193	19194
// OP_IFNOT	19194	209	0
// OP_LOAD_S	19155	155	19195
// OP_EQ_S	19195	1802	19196
// OP_LOAD_F	19155	255	19197
// OP_GT	19197	31	19198
// OP_AND	19196	19198	19199
// OP_IFNOT	19199	5	0
// OP_ADDRESS	28	198	19200
// OP_LOAD_F	28	198	19201
// OP_STOREP_F	19201	19200	0
// OP_GOTO	199	0	0
// OP_LOAD_S	19155	155	19202
// OP_EQ_S	19202	12005	19203
// OP_LOAD_ENT	19155	226	19204
// OP_LOAD_F	19204	422	19205
// OP_LT	19205	31	19206
// OP_AND	19203	19206	19207
// OP_LOAD_ENT	19155	226	19208
// OP_LOAD_F	19208	404	19209
// OP_EQ_F	19209	824	19210
// OP_AND	19207	19210	19211
// OP_IFNOT	19211	5	0
// OP_ADDRESS	28	198	19212
// OP_LOAD_F	28	198	19213
// OP_STOREP_F	19213	19212	0
// OP_GOTO	184	0	0
// OP_STORE_V	19155	4	0
// OP_CALL1	792	0	0
// OP_IFNOT	1	181	0
// OP_ADDRESS	28	198	19214
// OP_LOAD_F	28	198	19215
// OP_ADD_F	19215	677	19216
// OP_STOREP_F	19216	19214	0
// OP_LOAD_V	19155	130	19217
// OP_LOAD_V	28	130	19220
// OP_SUB_V	19217	19220	19223
// OP_STORE_V	19223	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	19158	0
// OP_LT	19158	19159	19226
// OP_IFNOT	19226	4	0
// OP_STORE_F	19158	19159	0
// OP_ADDRESS	28	206	19227
// OP_STOREP_ENT	19155	19227	0
// OP_LOAD_F	19155	434	19228
// OP_LT	19228	31	19229
// OP_IFNOT	19229	160	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12955	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	1280	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1088	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	205	19230
// OP_STORE_V	19230	7	0
// OP_CALL2	922	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19231	7	0
// OP_CALL2	922	0	0
// OP_LOAD_ENT	19155	226	19232
// OP_LOAD_S	19232	154	19233
// OP_EQ_S	19233	766	19234
// OP_IFNOT	19234	53	0
// OP_LOAD_ENT	19155	226	19235
// OP_LOAD_F	19235	404	19236
// OP_EQ_F	19236	677	19237
// OP_IFNOT	19237	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19238	7	0
// OP_CALL2	922	0	0
// OP_GOTO	44	0	0
// OP_LOAD_ENT	19155	226	19239
// OP_LOAD_F	19239	404	19240
// OP_EQ_F	19240	806	19241
// OP_IFNOT	19241	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19242	7	0
// OP_CALL2	922	0	0
// OP_GOTO	36	0	0
// OP_LOAD_ENT	19155	226	19243
// OP_LOAD_F	19243	404	19244
// OP_EQ_F	19244	788	19245
// OP_IFNOT	19245	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19246	7	0
// OP_CALL2	922	0	0
// OP_GOTO	28	0	0
// OP_LOAD_ENT	19155	226	19247
// OP_LOAD_F	19247	404	19248
// OP_EQ_F	19248	808	19249
// OP_IFNOT	19249	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19250	7	0
// OP_CALL2	922	0	0
// OP_GOTO	20	0	0
// OP_LOAD_ENT	19155	226	19251
// OP_LOAD_F	19251	404	19252
// OP_EQ_F	19252	813	19253
// OP_IFNOT	19253	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19254	7	0
// OP_CALL2	922	0	0
// OP_GOTO	12	0	0
// OP_LOAD_ENT	19155	226	19255
// OP_LOAD_F	19255	404	19256
// OP_EQ_F	19256	816	19257
// OP_IFNOT	19257	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19258	7	0
// OP_CALL2	922	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19259	7	0
// OP_CALL2	922	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19260	7	0
// OP_CALL2	922	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	19155	205	19261
// OP_STORE_V	19261	7	0
// OP_CALL2	922	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19262	7	0
// OP_CALL2	922	0	0
// OP_LOAD_V	19155	130	19263
// OP_LOAD_V	28	130	19266
// OP_SUB_V	19263	19266	19269
// OP_STORE_V	19269	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	59	0
// OP_STORE_F	60	19158	0
// OP_GT	19158	1248	19272
// OP_LE	19158	14861	19273
// OP_AND	19272	19273	19274
// OP_IFNOT	19274	3	0
// OP_STORE_S	19275	19161	0
// OP_GOTO	42	0	0
// OP_GT	19158	1136	19276
// OP_LE	19158	1248	19277
// OP_AND	19276	19277	19278
// OP_IFNOT	19278	3	0
// OP_STORE_S	19279	19161	0
// OP_GOTO	36	0	0
// OP_GT	19158	19280	19281
// OP_LE	19158	1136	19282
// OP_OR	19281	19282	19283
// OP_IFNOT	19283	3	0
// OP_STORE_S	19284	19161	0
// OP_GOTO	30	0	0
// OP_GT	19158	19285	19286
// OP_LE	19158	19280	19287
// OP_AND	19286	19287	19288
// OP_IFNOT	19288	3	0
// OP_STORE_S	19289	19161	0
// OP_GOTO	24	0	0
// OP_GT	19158	19290	19291
// OP_LE	19158	19285	19292
// OP_AND	19291	19292	19293
// OP_IFNOT	19293	3	0
// OP_STORE_S	19294	19161	0
// OP_GOTO	18	0	0
// OP_GT	19158	19295	19296
// OP_LE	19158	19290	19297
// OP_AND	19296	19297	19298
// OP_IFNOT	19298	3	0
// OP_STORE_S	19299	19161	0
// OP_GOTO	12	0	0
// OP_GT	19158	19300	19301
// OP_LE	19158	19295	19302
// OP_AND	19301	19302	19303
// OP_IFNOT	19303	3	0
// OP_STORE_S	19304	19161	0
// OP_GOTO	6	0	0
// OP_GT	19158	14861	19305
// OP_LE	19158	19300	19306
// OP_AND	19305	19306	19307
// OP_IFNOT	19307	2	0
// OP_STORE_S	19308	19161	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19161	7	0
// OP_CALL2	922	0	0
// OP_LOAD_F	19155	133	19309
// OP_LOAD_F	28	133	19310
// OP_SUB_F	19309	19310	19311
// OP_GT	19311	1622	19312
// OP_IFNOT	19312	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19313	7	0
// OP_CALL2	922	0	0
// OP_GOTO	9	0	0
// OP_LOAD_F	19155	133	19314
// OP_LOAD_F	28	133	19315
// OP_SUB_F	19314	19315	19316
// OP_LT	19316	2618	19317
// OP_IFNOT	19317	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19318	7	0
// OP_CALL2	922	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2073	7	0
// OP_CALL2	922	0	0
// OP_ADDRESS	19155	434	19319
// OP_ADD_F	31	788	19320
// OP_STOREP_F	19320	19319	0
// OP_LOAD_ENT	19155	189	19321
// OP_STORE_ENT	19321	19155	0
// OP_GOTO	-226	0	0
// OP_RETURN	268	0	0
// OP_DONE	0	0	0
float () RadFindTarget = 
{
    local entity e;
    local entity client;
    local entity e2;
    local float r;
    local float mr;
    local string teststr;
    local string dirstr;
    if(self.ts == T0)
    {
        teststr = T1;
    }
    else
    {
        if(self.ts == T1)
        {
            if(deathmatch)
            {
                teststr = T2;
            }
            else
            {
                teststr = T0;
            }
            
        }
        else
        {
            teststr = T1;
        }
        
    }
    
    mr = 3000;
    
    if(self.enemy.health > 0)
    {
        mr = vlen(self.enemy.origin - self.origin);
    }
    
    e = findradius(self.origin, 3000);
    self.impulse = 0;
    
    while(e)
    {
        
        if(e.ts == teststr)
        {
            
            if((e.takedamage == DAMAGE_AIM) && (e.solid != SOLID_BSP))
            {
                
                if((e.health > 0) && (e.classname != "player"))
                {
                    if((e.model == "progs/plane3.mdl") && (e.unstealth_finished > time))
                    {
                        self.impulse = self.impulse;
                    }
                    else
                    {
                        if(((e.model == "progs/humba.mdl") && (e.owner.attack_finished < time)) && (e.owner.style == 9))
                        {
                            self.impulse = self.impulse;
                        }
                        else
                        {
                            
                            if(visible(e))
                            {
                                self.impulse = self.impulse + 1;
                                r = vlen(e.origin - self.origin);
                                
                                if(r < mr)
                                {
                                    mr = r;
                                    self.enemy = e;
                                }
                                
                                
                                if(e.rad_time < time)
                                {
                                    sound(self, CHAN_VOICE, "speech/rw_a_al.wav", 1, ATTN_NORM);
                                    send_voicemsg(84, self);
                                    teamprint(self, self.netname);
                                    teamprint(self, ": Enemy ");
                                    if(e.owner.classname == "player")
                                    {
                                        if(e.owner.style == 1)
                                        {
                                            teamprint(self, "Dogfighter (");
                                        }
                                        else
                                        {
                                            if(e.owner.style == 2)
                                            {
                                                teamprint(self, "Fighter Bomber (");
                                            }
                                            else
                                            {
                                                if(e.owner.style == 3)
                                                {
                                                    teamprint(self, "Stealth Fighter (");
                                                }
                                                else
                                                {
                                                    if(e.owner.style == 4)
                                                    {
                                                        teamprint(self, "Bomber (");
                                                    }
                                                    else
                                                    {
                                                        if(e.owner.style == 5)
                                                        {
                                                            teamprint(self, "X-29 (");
                                                        }
                                                        else
                                                        {
                                                            if(e.owner.style == 6)
                                                            {
                                                                teamprint(self, "Helicopter (");
                                                            }
                                                            else
                                                            {
                                                                teamprint(self, "Ground vehicle (");
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        teamprint(self, "vehicle (");
                                    }
                                    
                                    teamprint(self, e.netname);
                                    teamprint(self, ") in ");
                                    v_forward = vectoangles(e.origin - self.origin);
                                    r = v_forward_y;
                                    if((r > 67) && (r <= 112))
                                    {
                                        dirstr = "north";
                                    }
                                    else
                                    {
                                        if((r > 22) && (r <= 67))
                                        {
                                            dirstr = "northeast";
                                        }
                                        else
                                        {
                                            if((r > 337) || (r <= 22))
                                            {
                                                dirstr = "east";
                                            }
                                            else
                                            {
                                                if((r > 292) && (r <= 337))
                                                {
                                                    dirstr = "southeast";
                                                }
                                                else
                                                {
                                                    if((r > 247) && (r <= 292))
                                                    {
                                                        dirstr = "south";
                                                    }
                                                    else
                                                    {
                                                        if((r > 202) && (r <= 247))
                                                        {
                                                            dirstr = "southwest";
                                                        }
                                                        else
                                                        {
                                                            if((r > 157) && (r <= 202))
                                                            {
                                                                dirstr = "west";
                                                            }
                                                            else
                                                            {
                                                                
                                                                if((r > 112) && (r <= 157))
                                                                {
                                                                    dirstr = "northwest";
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    teamprint(self, dirstr);
                                    if((e.origin_z - self.origin_z) > 1000)
                                    {
                                        teamprint(self, " high");
                                    }
                                    else
                                    {
                                        
                                        if((e.origin_z - self.origin_z) < 100)
                                        {
                                            teamprint(self, " low");
                                        }
                                        
                                    }
                                    
                                    teamprint(self, "\n");
                                }
                                
                                e.rad_time = time + 3;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    return TRUE;
};

// rad_stand
// function begins at statement 28106, parm_start=19323
// OP_STATE	619	19322	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	19325
// OP_BITAND	19325	277	19326
// OP_NOT_F	19326	0	19327
// OP_IFNOT	19327	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_LOAD_F	28	434	19328
// OP_LT	19328	31	19329
// OP_IFNOT	19329	5	0
// OP_CALL0	19154	0	0
// OP_ADDRESS	28	434	19330
// OP_ADD_F	31	677	19331
// OP_STOREP_F	19331	19330	0
// OP_LOAD_ENT	28	206	19332
// OP_NE_E	19332	30	19333
// OP_IFNOT	19333	38	0
// OP_LOAD_V	28	130	19334
// OP_LOAD_ENT	28	206	19337
// OP_LOAD_V	19337	130	19338
// OP_SUB_V	19334	19338	19341
// OP_STORE_V	19341	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	19324	0
// OP_GT	19324	1624	19344
// OP_IFNOT	19344	3	0
// OP_ADDRESS	28	206	19345
// OP_STOREP_ENT	30	19345	0
// OP_LOAD_ENT	28	206	19346
// OP_STORE_V	19346	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	19347
// OP_IFNOT	19347	3	0
// OP_ADDRESS	28	206	19348
// OP_STOREP_ENT	30	19348	0
// OP_LOAD_ENT	28	206	19349
// OP_LOAD_F	19349	177	19350
// OP_LT	19350	677	19351
// OP_IFNOT	19351	3	0
// OP_ADDRESS	28	206	19352
// OP_STOREP_ENT	30	19352	0
// OP_LOAD_ENT	28	206	19353
// OP_LOAD_S	19353	155	19354
// OP_EQ_S	19354	1802	19355
// OP_LOAD_ENT	28	206	19356
// OP_LOAD_F	19356	255	19357
// OP_LT	19357	31	19358
// OP_AND	19355	19358	19359
// OP_IFNOT	19359	6	0
// OP_CALL0	501	0	0
// OP_LT	1	1349	19360
// OP_IFNOT	19360	3	0
// OP_ADDRESS	28	206	19361
// OP_STOREP_ENT	30	19361	0
// OP_LOAD_ENT	28	206	19362
// OP_NE_E	19362	30	19363
// OP_LOAD_F	28	422	19364
// OP_LT	19364	31	19365
// OP_AND	19363	19365	19366
// OP_IFNOT	19366	32	0
// OP_LOAD_ENT	28	206	19367
// OP_STORE_V	19367	4	0
// OP_CALL1	792	0	0
// OP_IFNOT	1	28	0
// OP_LOAD_ENT	28	206	19368
// OP_LOAD_ENT	19368	226	19369
// OP_LOAD_S	19369	154	19370
// OP_EQ_S	19370	766	19371
// OP_IFNOT	19371	19	0
// OP_LOAD_ENT	28	206	19372
// OP_LOAD_ENT	19372	226	19373
// OP_LOAD_F	19373	434	19374
// OP_LT	19374	31	19375
// OP_IFNOT	19375	6	0
// OP_LOAD_ENT	28	206	19376
// OP_LOAD_ENT	19376	226	19377
// OP_STORE_V	19377	4	0
// OP_STORE_V	19378	7	0
// OP_CALL2	515	0	0
// OP_LOAD_ENT	28	206	19379
// OP_LOAD_ENT	19379	226	19380
// OP_ADDRESS	19380	212	19381
// OP_LOAD_ENT	28	206	19382
// OP_LOAD_ENT	19382	226	19383
// OP_LOAD_F	19383	212	19384
// OP_BITOR	19384	677	19385
// OP_STOREP_F	19385	19381	0
// OP_ADDRESS	28	422	19386
// OP_ADD_F	31	677	19387
// OP_STOREP_F	19387	19386	0
// OP_CALL0	19153	0	0
// OP_CALL0	19151	0	0
// OP_DONE	0	0	0
void () rad_stand = [0, rad_stand]
{
    local entity e;
    local float n;
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000);
    }
    
    
    if(self.rad_time < time)
    {
        RadFindTarget();
        self.rad_time = time + 1;
    }
    
    
    if(self.enemy != world)
    {
        n = vlen(self.origin - self.enemy.origin);
        
        if(n > 3000)
        {
            self.enemy = world;
        }
        
        
        if(!visible(self.enemy))
        {
            self.enemy = world;
        }
        
        
        if(self.enemy.health < 1)
        {
            self.enemy = world;
        }
        
        
        if((self.enemy.model == "progs/plane3.mdl") && (self.enemy.unstealth_finished < time))
        {
            
            if(random() < 0.2)
            {
                self.enemy = world;
            }
            
        }
        
    }
    
    
    if((self.enemy != world) && (self.attack_finished < time))
    {
        
        if(visible(self.enemy))
        {
            
            if(self.enemy.owner.classname == "player")
            {
                
                if(self.enemy.owner.rad_time < time)
                {
                    stuffcmd(self.enemy.owner, "play in2.wav\n");
                }
                
                self.enemy.owner.armortype = self.enemy.owner.armortype | 1;
            }
            
            self.attack_finished = time + 1;
            rad_assign();
        }
        
    }
    
    rad_aim();
};

// rad_walk
// function begins at statement 28203, parm_start=19389
// OP_STATE	619	19322	0
// OP_DONE	0	0	0
void () rad_walk = [0, rad_stand]
{
};

// rad_run
// function begins at statement 28205, parm_start=19389
// OP_STATE	619	19322	0
// OP_DONE	0	0	0
void () rad_run = [0, rad_stand]
{
};

// rad_death
// function begins at statement 28207, parm_start=19390
// OP_LOAD_ENT	28	464	19390
// OP_ADDRESS	19390	173	19391
// OP_STOREP_FNC	2603	19391	0
// OP_LOAD_ENT	28	464	19392
// OP_ADDRESS	19392	175	19393
// OP_ADD_F	31	655	19394
// OP_STOREP_F	19394	19393	0
// OP_NOT_F	35	0	19395
// OP_IFNOT	19395	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_GOTO	12	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	621	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	188	19396
// OP_STOREP_F	619	19396	0
// OP_ADDRESS	28	173	19397
// OP_STOREP_FNC	19152	19397	0
// OP_ADDRESS	28	175	19398
// OP_LOAD_F	28	462	19399
// OP_ADD_F	31	19399	19400
// OP_STOREP_F	19400	19398	0
// OP_DONE	0	0	0
void () rad_death = 
{
    self.trigger_field.think = BecomeExplosion;
    self.trigger_field.nextthink = time + 0.1;
    if(!deathmatch)
    {
        remove(self);
    }
    else
    {
        setmodel(self, "");
        self.takedamage = 0;
        self.think = start_monster_rad;
        self.nextthink = time + self.wait;
    }
    
};

// rad_die
// function begins at statement 28231, parm_start=19402
// OP_LOAD_F	28	177	19402
// OP_LT	19402	1891	19403
// OP_IFNOT	19403	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12926	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_ADDRESS	28	129	19404
// OP_STOREP_F	291	19404	0
// OP_CALL0	19389	0	0
// OP_DONE	0	0	0
void () rad_die = 
{
    
    if(self.health < -90)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
    }
    
    self.solid = SOLID_NOT;
    rad_death();
};

// rad_aim
// function begins at statement 28247, parm_start=19405
// OP_LOAD_F	28	144	19418
// OP_MUL_FV	19418	6286	19419
// OP_ADD_V	19419	19422	19425
// OP_STORE_V	19425	19405	0
// OP_STORE_V	19405	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	19428
// OP_ADD_V	19428	59	19431
// OP_STORE_V	19431	19411	0
// OP_LOAD_V	28	130	19434
// OP_SUB_V	19411	19434	19437
// OP_STORE_V	19437	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	19405	0
// OP_STORE_V	607	19408	0
// OP_LOAD_F	28	144	19440
// OP_SUB_F	19406	19440	19441
// OP_STORE_F	19441	19409	0
// OP_LOAD_ENT	28	464	19442
// OP_LOAD_F	19442	143	19443
// OP_SUB_F	19405	19443	19444
// OP_STORE_F	19444	19408	0
// OP_STORE_V	607	19405	0
// OP_LT	19408	619	19445
// OP_IFNOT	19445	3	0
// OP_ADD_F	19408	1459	19446
// OP_STORE_F	19446	19408	0
// OP_GT	19408	1827	19447
// OP_IFNOT	19447	3	0
// OP_SUB_F	19408	1459	19448
// OP_STORE_F	19448	19408	0
// OP_LT	19409	619	19449
// OP_IFNOT	19449	3	0
// OP_ADD_F	19409	1459	19450
// OP_STORE_F	19450	19409	0
// OP_GT	19409	1827	19451
// OP_IFNOT	19451	3	0
// OP_SUB_F	19409	1459	19452
// OP_STORE_F	19452	19409	0
// OP_STORE_V	19408	19405	0
// OP_LT	19405	6997	19453
// OP_IFNOT	19453	2	0
// OP_STORE_F	6997	19405	0
// OP_GT	19405	827	19454
// OP_IFNOT	19454	2	0
// OP_STORE_F	827	19405	0
// OP_LT	19406	6997	19455
// OP_IFNOT	19455	2	0
// OP_STORE_F	6997	19406	0
// OP_GT	19406	827	19456
// OP_IFNOT	19456	2	0
// OP_STORE_F	827	19406	0
// OP_LOAD_ENT	28	464	19457
// OP_ADDRESS	19457	143	19458
// OP_LOAD_ENT	28	464	19459
// OP_LOAD_F	19459	143	19460
// OP_ADD_F	19460	19405	19461
// OP_STORE_V	19461	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	19458	0
// OP_ADDRESS	28	144	19462
// OP_LOAD_F	28	144	19463
// OP_ADD_F	19463	19406	19464
// OP_STORE_V	19464	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	19462	0
// OP_LOAD_ENT	28	464	19465
// OP_ADDRESS	19465	144	19466
// OP_LOAD_F	28	144	19467
// OP_STOREP_F	19467	19466	0
// OP_DONE	0	0	0
void () rad_aim = 
{
    local vector dir;
    local vector vtemp;
    local vector org;
    local vector vel;
    local float dist;
    dir = (self.angles_y * '0 1 0') + '-30 10 0';
    makevectors(dir);
    org = self.origin + v_forward;
    dir = vectoangles(org - self.origin);
    vtemp = '0 0 0';
    vtemp_y = dir_y - self.angles_y;
    vtemp_x = dir_x - self.trigger_field.angles_x;
    dir = '0 0 0';
    
    if(vtemp_x < 0)
    {
        vtemp_x = vtemp_x + 360;
    }
    
    
    if(vtemp_x > 180)
    {
        vtemp_x = vtemp_x - 360;
    }
    
    
    if(vtemp_y < 0)
    {
        vtemp_y = vtemp_y + 360;
    }
    
    
    if(vtemp_y > 180)
    {
        vtemp_y = vtemp_y - 360;
    }
    
    dir = vtemp;
    
    if(dir_x < -10)
    {
        dir_x = -10;
    }
    
    
    if(dir_x > 10)
    {
        dir_x = 10;
    }
    
    
    if(dir_y < -10)
    {
        dir_y = -10;
    }
    
    
    if(dir_y > 10)
    {
        dir_y = 10;
    }
    
    self.trigger_field.angles_x = anglemod(self.trigger_field.angles_x + dir_x);
    self.angles_y = anglemod(self.angles_y + dir_y);
    self.trigger_field.angles_y = self.angles_y;
};

// rad_assign
// function begins at statement 28318, parm_start=19468
// OP_STORE_ENT	28	16178	0
// OP_LOAD_ENT	28	206	19472
// OP_STORE_ENT	19472	19469	0
// OP_STORE_V	30	4	0
// OP_STORE_V	243	7	0
// OP_LOAD_S	28	243	19473
// OP_STORE_V	19473	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	19468	0
// OP_IFNOT	19468	72	0
// OP_LOAD_F	19468	177	19474
// OP_GT	19474	619	19475
// OP_IFNOT	19475	62	0
// OP_LOAD_S	19468	154	19476
// OP_EQ_S	19476	5343	19477
// OP_LOAD_S	19468	154	19478
// OP_EQ_S	19478	5347	19479
// OP_OR	19477	19479	19480
// OP_IFNOT	19480	56	0
// OP_LOAD_FNC	19468	407	19481
// OP_IFNOT	19481	54	0
// OP_LOAD_ENT	19468	206	19482
// OP_LOAD_F	19482	239	19483
// OP_LOAD_ENT	19468	206	19484
// OP_LOAD_F	19484	177	19485
// OP_MUL_F	19485	1798	19486
// OP_GT	19483	19486	19487
// OP_IFNOT	19487	3	0
// OP_ADDRESS	19468	206	19488
// OP_STOREP_ENT	30	19488	0
// OP_STORE_F	1624	19470	0
// OP_LOAD_ENT	19468	206	19489
// OP_IFNOT	19489	8	0
// OP_LOAD_ENT	19468	206	19490
// OP_LOAD_V	19490	130	19491
// OP_LOAD_V	19468	130	19494
// OP_SUB_V	19491	19494	19497
// OP_STORE_V	19497	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	19470	0
// OP_LOAD_ENT	16178	206	19500
// OP_LOAD_V	19500	130	19501
// OP_LOAD_V	19468	130	19504
// OP_SUB_V	19501	19504	19507
// OP_STORE_V	19507	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	19471	0
// OP_LT	19471	19470	19510
// OP_LOAD_F	19469	239	19511
// OP_LOAD_F	19469	177	19512
// OP_MUL_F	19512	1798	19513
// OP_LT	19511	19513	19514
// OP_AND	19510	19514	19515
// OP_IFNOT	19515	21	0
// OP_STORE_F	19471	19470	0
// OP_LOAD_V	19468	130	19516
// OP_STORE_V	19516	4	0
// OP_LOAD_ENT	28	206	19519
// OP_LOAD_V	19519	130	19520
// OP_STORE_V	19520	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	19523
// OP_IFNOT	19523	10	0
// OP_STORE_ENT	19468	28	0
// OP_ADDRESS	28	206	19524
// OP_STOREP_ENT	19469	19524	0
// OP_ADDRESS	28	173	19525
// OP_LOAD_FNC	28	407	19526
// OP_STOREP_FNC	19526	19525	0
// OP_ADDRESS	28	175	19527
// OP_ADD_F	31	655	19528
// OP_STOREP_F	19528	19527	0
// OP_STORE_V	19468	4	0
// OP_STORE_V	243	7	0
// OP_LOAD_S	28	243	19529
// OP_STORE_V	19529	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	19468	0
// OP_GOTO	-71	0	0
// OP_STORE_ENT	16178	28	0
// OP_DONE	0	0	0
void () rad_assign = 
{
    local entity e;
    local entity temp;
    local float mr;
    local float r;
    stemp = self;
    temp = self.enemy;
    e = find(world, ts, self.ts);
    
    while(e)
    {
        
        if(e.health > 0)
        {
            
            if((e.classname == "monster_sam") || (e.classname == "monster_aag"))
            {
                
                if(e.th_run)
                {
                    
                    if(e.enemy.pdmg > (e.enemy.health * 1.5))
                    {
                        e.enemy = world;
                    }
                    
                    mr = 3000;
                    
                    if(e.enemy)
                    {
                        mr = vlen(e.enemy.origin - e.origin);
                    }
                    
                    r = vlen(stemp.enemy.origin - e.origin);
                    
                    if((r < mr) && (temp.pdmg < (temp.health * 1.5)))
                    {
                        mr = r;
                        traceline(e.origin, self.enemy.origin, TRUE, world);
                        
                        if(trace_fraction == 1)
                        {
                            self = e;
                            self.enemy = temp;
                            self.think = self.th_run;
                            self.nextthink = time + 0.1;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        e = find(e, ts, self.ts);
    }
    
    self = stemp;
};

// start_monster_rad
// function begins at statement 28401, parm_start=19530
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_STORE_F	1	37	0
// OP_GT	35	619	19530
// OP_IFNOT	19530	9	0
// OP_LOAD_F	28	209	19531
// OP_EQ_F	19531	619	19532
// OP_EQ_F	37	619	19533
// OP_OR	19532	19533	19534
// OP_IFNOT	19534	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	129	19535
// OP_STOREP_F	294	19535	0
// OP_ADDRESS	28	128	19536
// OP_STOREP_F	285	19536	0
// OP_ADDRESS	28	177	19537
// OP_LOAD_F	28	210	19538
// OP_STOREP_F	19538	19537	0
// OP_STORE_V	28	4	0
// OP_STORE_V	19539	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10915	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	405	19540
// OP_STOREP_FNC	19322	19540	0
// OP_ADDRESS	28	406	19541
// OP_STOREP_FNC	19388	19541	0
// OP_ADDRESS	28	407	19542
// OP_STOREP_FNC	19150	19542	0
// OP_ADDRESS	28	411	19543
// OP_STOREP_FNC	19401	19543	0
// OP_ADDRESS	28	408	19544
// OP_STOREP_FNC	19153	19544	0
// OP_LOAD_S	28	205	19545
// OP_NOT_S	19545	0	19546
// OP_IFNOT	19546	3	0
// OP_ADDRESS	28	205	19547
// OP_STOREP_S	19548	19547	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	19549
// OP_STORE_V	19549	7	0
// OP_CALL2	497	0	0
// OP_CALL0	527	0	0
// OP_ADDRESS	28	188	19552
// OP_STOREP_F	306	19552	0
// OP_ADDRESS	28	216	19553
// OP_LOAD_V	28	142	19554
// OP_MUL_V	19554	6286	19557
// OP_STOREP_F	19557	19553	0
// OP_ADDRESS	28	191	19558
// OP_STOREP_V	582	19558	0
// OP_ADDRESS	28	172	19561
// OP_STOREP_FNC	15260	19561	0
// OP_GT	35	619	19562
// OP_LOAD_F	28	209	19563
// OP_NE_F	19563	677	19564
// OP_OR	19562	19564	19565
// OP_IFNOT	19565	5	0
// OP_ADDRESS	28	207	19566
// OP_LOAD_F	28	207	19567
// OP_BITOR	19567	273	19568
// OP_STOREP_F	19568	19566	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16178	0
// OP_ADDRESS	16178	226	19569
// OP_STOREP_ENT	28	19569	0
// OP_ADDRESS	16178	188	19570
// OP_STOREP_F	304	19570	0
// OP_STORE_V	16178	4	0
// OP_STORE_V	19571	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	464	19572
// OP_STOREP_ENT	16178	19572	0
// OP_ADDRESS	16178	142	19573
// OP_LOAD_V	28	142	19576
// OP_STOREP_V	19576	19573	0
// OP_STORE_V	16178	4	0
// OP_LOAD_V	28	130	19579
// OP_STORE_V	19579	7	0
// OP_CALL2	497	0	0
// OP_LOAD_FNC	28	405	19582
// OP_CALL0	19582	0	0
// OP_DONE	0	0	0
void () start_monster_rad = 
{
    teamplay = cvar("teamplay");
    
    if(deathmatch > 0)
    {
        
        if((self.team == 0) || (teamplay == 0))
        {
            remove(self);
            return;
        }
        
    }
    
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_TOSS;
    self.health = self.max_health;
    setmodel(self, "progs/radba.mdl");
    setsize(self, '-16 -16 -24', '16 16 16');
    self.th_stand = rad_stand;
    self.th_walk = rad_walk;
    self.th_run = rad_run;
    self.th_die = rad_die;
    self.th_missile = rad_assign;
    
    if(!self.netname)
    {
        self.netname = "Radar";
    }
    
    setorigin(self, self.oldorigin);
    droptofloor();
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0 1 0';
    self.view_ofs = '0 0 1';
    self.use = monster_use;
    
    if((deathmatch > 0) || (self.team != 1))
    {
        self.flags = self.flags | FL_MONSTER;
    }
    
    stemp = spawn();
    stemp.owner = self;
    stemp.takedamage = DAMAGE_NO;
    setmodel(stemp, "progs/radpl.mdl");
    self.trigger_field = stemp;
    stemp.angles = self.angles;
    setorigin(stemp, self.origin);
    self.th_stand();
};

// monster_rad
// function begins at statement 28488, parm_start=19584
// OP_STORE_V	19539	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	19571	4	0
// OP_CALL1	514	0	0
// OP_EQ_F	35	619	19587
// OP_LOAD_F	28	209	19588
// OP_NE_F	19588	677	19589
// OP_AND	19587	19589	19590
// OP_IFNOT	19590	3	0
// OP_ADD_F	40	677	19591
// OP_STORE_F	19591	40	0
// OP_ADDRESS	28	134	19592
// OP_LOAD_V	28	130	19595
// OP_STOREP_V	19595	19592	0
// OP_LOAD_F	28	177	19598
// OP_NOT_F	19598	0	19599
// OP_IFNOT	19599	3	0
// OP_ADDRESS	28	177	19600
// OP_STOREP_F	2618	19600	0
// OP_ADDRESS	28	210	19601
// OP_LOAD_F	28	177	19602
// OP_STOREP_F	19602	19601	0
// OP_LOAD_F	28	144	19603
// OP_MUL_FV	19603	6286	19604
// OP_ADD_V	19604	19607	19610
// OP_STORE_V	19610	19584	0
// OP_STORE_V	19584	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	28	227	19613
// OP_STOREP_V	59	19613	0
// OP_CALL0	1068	0	0
// OP_LOAD_F	28	462	19616
// OP_NOT_F	19616	0	19617
// OP_IFNOT	19617	3	0
// OP_ADDRESS	28	462	19618
// OP_STOREP_F	2627	19618	0
// OP_ADDRESS	28	173	19619
// OP_STOREP_FNC	19152	19619	0
// OP_ADDRESS	28	175	19620
// OP_ADD_F	31	655	19621
// OP_CALL0	501	0	0
// OP_MUL_F	1	1687	19622
// OP_ADD_F	19621	19622	19623
// OP_STOREP_F	19623	19620	0
// OP_DONE	0	0	0
void () monster_rad = 
{
    local vector v1;
    precache_model("progs/radba.mdl");
    precache_model("progs/radpl.mdl");
    
    if((deathmatch == 0) && (self.team != 1))
    {
        total_monsters = total_monsters + 1;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.health)
    {
        self.health = 100;
    }
    
    self.max_health = self.health;
    v1 = (self.angles_y * '0 1 0') + '-30 0 0';
    makevectors(v1);
    self.movedir = v_forward;
    setup_teament();
    
    if(!self.wait)
    {
        self.wait = 120;
    }
    
    self.think = start_monster_rad;
    self.nextthink = (time + 0.1) + (random() * 0.3);
};

