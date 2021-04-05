// monster_use
// function begins at statement 22012, parm_start=15261
// OP_LOAD_ENT	28	206	15261
// OP_IFNOT	15261	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	177	15262
// OP_LE	15262	619	15263
// OP_IFNOT	15263	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	395	187	15264
// OP_BITAND	15264	317	15265
// OP_IFNOT	15265	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	395	207	15266
// OP_BITAND	15266	275	15267
// OP_IFNOT	15267	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	395	226	15268
// OP_LOAD_S	15268	154	15269
// OP_NE_S	15269	766	15270
// OP_IFNOT	15270	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	15271
// OP_STOREP_ENT	395	15271	0
// OP_ADDRESS	28	175	15272
// OP_ADD_F	31	655	15273
// OP_STOREP_F	15273	15272	0
// OP_ADDRESS	28	173	15274
// OP_STOREP_FNC	1709	15274	0
// OP_DONE	0	0	0
void () monster_use = 
{
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.health <= 0)
    {
        return;
    }
    
    
    if(activator.items & IT_INVISIBILITY)
    {
        return;
    }
    
    
    if(activator.flags & FL_NOTARGET)
    {
        return;
    }
    
    
    if(activator.owner.classname != "player")
    {
        return;
    }
    
    self.enemy = activator;
    self.nextthink = time + 0.1;
    self.think = FoundTarget;
};

// monster_death_use
// function begins at statement 22040, parm_start=15275
// OP_LOAD_F	28	207	15278
// OP_BITAND	15278	269	15279
// OP_IFNOT	15279	5	0
// OP_ADDRESS	28	207	15280
// OP_LOAD_F	28	207	15281
// OP_SUB_F	15281	269	15282
// OP_STOREP_F	15282	15280	0
// OP_LOAD_F	28	207	15283
// OP_BITAND	15283	270	15284
// OP_IFNOT	15284	5	0
// OP_ADDRESS	28	207	15285
// OP_LOAD_F	28	207	15286
// OP_SUB_F	15286	270	15287
// OP_STOREP_F	15287	15285	0
// OP_LOAD_S	28	221	15288
// OP_NOT_S	15288	0	15289
// OP_IFNOT	15289	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	15290
// OP_STORE_ENT	15290	395	0
// OP_CALL0	567	0	0
// OP_DONE	0	0	0
void () monster_death_use = 
{
    local entity ent;
    local entity otemp;
    local entity stemp;
    
    if(self.flags & FL_FLY)
    {
        self.flags = self.flags - FL_FLY;
    }
    
    
    if(self.flags & FL_SWIM)
    {
        self.flags = self.flags - FL_SWIM;
    }
    
    
    if(!self.target)
    {
        return;
    }
    
    activator = self.enemy;
    SUB_UseTargets();
};

// walkmonster_start_go
// function begins at statement 22062, parm_start=15292
// OP_ADDRESS	28	133	15294
// OP_LOAD_F	28	133	15295
// OP_ADD_F	15295	677	15296
// OP_STOREP_F	15296	15294	0
// OP_CALL0	527	0	0
// OP_STORE_V	619	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	526	0	0
// OP_NOT_F	1	0	15297
// OP_IFNOT	15297	10	0
// OP_STORE_V	15298	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	15299
// OP_STORE_V	15299	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	188	15302
// OP_STOREP_F	306	15302	0
// OP_ADDRESS	28	216	15303
// OP_LOAD_V	28	142	15304
// OP_MUL_V	15304	6286	15307
// OP_STOREP_F	15307	15303	0
// OP_LOAD_F	28	217	15308
// OP_NOT_F	15308	0	15309
// OP_IFNOT	15309	3	0
// OP_ADDRESS	28	217	15310
// OP_STOREP_F	1111	15310	0
// OP_ADDRESS	28	191	15311
// OP_STOREP_V	15314	15311	0
// OP_ADDRESS	28	172	15317
// OP_STOREP_FNC	15260	15317	0
// OP_ADDRESS	28	207	15318
// OP_LOAD_F	28	207	15319
// OP_BITOR	15319	273	15320
// OP_STOREP_F	15320	15318	0
// OP_LOAD_S	28	221	15321
// OP_IFNOT	15321	42	0
// OP_ADDRESS	28	219	15322
// OP_ADDRESS	28	467	15323
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	15324
// OP_STORE_V	15324	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	15323	0
// OP_STOREP_ENT	1	15322	0
// OP_ADDRESS	28	216	15325
// OP_LOAD_ENT	28	219	15326
// OP_LOAD_V	15326	130	15327
// OP_LOAD_V	28	130	15330
// OP_SUB_V	15327	15330	15333
// OP_STORE_V	15333	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	15325	0
// OP_LOAD_ENT	28	467	15336
// OP_NOT_ENT	15336	0	15337
// OP_IFNOT	15337	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	15339
// OP_STORE_V	15339	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_LOAD_ENT	28	467	15342
// OP_LOAD_S	15342	154	15343
// OP_EQ_S	15343	1526	15344
// OP_IFNOT	15344	4	0
// OP_LOAD_FNC	28	406	15345
// OP_CALL0	15345	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	466	15346
// OP_STOREP_F	15347	15346	0
// OP_LOAD_FNC	28	405	15348
// OP_CALL0	15348	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	466	15349
// OP_STOREP_F	15347	15349	0
// OP_LOAD_FNC	28	405	15350
// OP_CALL0	15350	0	0
// OP_ADDRESS	28	175	15351
// OP_LOAD_F	28	175	15352
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	15353
// OP_ADD_F	15352	15353	15354
// OP_STOREP_F	15354	15351	0
// OP_DONE	0	0	0
void () walkmonster_start_go = 
{
    local string stemp;
    local entity etemp;
    self.origin_z = self.origin_z + 1;
    droptofloor();
    
    if(!walkmove(0, 0))
    {
        dprint("walkmonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 20;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        if(self.movetarget.classname == "path_corner")
        {
            self.th_walk();
        }
        else
        {
            self.pausetime = 100000000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * 0.5);
};

// walkmonster_start
// function begins at statement 22154, parm_start=15356
// OP_ADDRESS	28	175	15356
// OP_LOAD_F	28	175	15357
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	15358
// OP_ADD_F	15357	15358	15359
// OP_STOREP_F	15359	15356	0
// OP_ADDRESS	28	173	15360
// OP_STOREP_FNC	15291	15360	0
// OP_ADD_F	40	677	15361
// OP_STORE_F	15361	40	0
// OP_DONE	0	0	0
void () walkmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.5);
    self.think = walkmonster_start_go;
    total_monsters = total_monsters + 1;
};

// flymonster_start_go
// function begins at statement 22165, parm_start=15363
// OP_ADDRESS	28	188	15363
// OP_STOREP_F	306	15363	0
// OP_ADDRESS	28	216	15364
// OP_LOAD_V	28	142	15365
// OP_MUL_V	15365	6286	15368
// OP_STOREP_F	15368	15364	0
// OP_LOAD_F	28	217	15369
// OP_NOT_F	15369	0	15370
// OP_IFNOT	15370	3	0
// OP_ADDRESS	28	217	15371
// OP_STOREP_F	827	15371	0
// OP_ADDRESS	28	191	15372
// OP_STOREP_V	15314	15372	0
// OP_ADDRESS	28	172	15375
// OP_STOREP_FNC	15260	15375	0
// OP_ADDRESS	28	207	15376
// OP_LOAD_F	28	207	15377
// OP_BITOR	15377	269	15378
// OP_STOREP_F	15378	15376	0
// OP_ADDRESS	28	207	15379
// OP_LOAD_F	28	207	15380
// OP_BITOR	15380	273	15381
// OP_STOREP_F	15381	15379	0
// OP_STORE_V	619	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	526	0	0
// OP_NOT_F	1	0	15382
// OP_IFNOT	15382	10	0
// OP_STORE_V	15383	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	15384
// OP_STORE_V	15384	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_LOAD_S	28	221	15387
// OP_IFNOT	15387	34	0
// OP_ADDRESS	28	219	15388
// OP_ADDRESS	28	467	15389
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	15390
// OP_STORE_V	15390	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	15389	0
// OP_STOREP_ENT	1	15388	0
// OP_LOAD_ENT	28	467	15391
// OP_NOT_ENT	15391	0	15392
// OP_IFNOT	15392	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	15393
// OP_STORE_V	15393	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_LOAD_ENT	28	467	15396
// OP_LOAD_S	15396	154	15397
// OP_EQ_S	15397	1526	15398
// OP_IFNOT	15398	4	0
// OP_LOAD_FNC	28	406	15399
// OP_CALL0	15399	0	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	466	15400
// OP_STOREP_F	15347	15400	0
// OP_LOAD_FNC	28	405	15401
// OP_CALL0	15401	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	466	15402
// OP_STOREP_F	15347	15402	0
// OP_LOAD_FNC	28	405	15403
// OP_CALL0	15403	0	0
// OP_DONE	0	0	0
void () flymonster_start_go = 
{
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 10;
    }
    
    self.view_ofs = '0.000 0.000 25.000';
    self.use = monster_use;
    self.flags = self.flags | FL_FLY;
    self.flags = self.flags | FL_MONSTER;
    
    if(!walkmove(0, 0))
    {
        dprint("flymonster in wall at: ");
        dprint(vtos(self.origin));
        dprint("\n");
    }
    
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        if(self.movetarget.classname == "path_corner")
        {
            self.th_walk();
        }
        else
        {
            self.pausetime = 100000000;
        }
        
        self.th_stand();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
};

// flymonster_start
// function begins at statement 22242, parm_start=15405
// OP_ADDRESS	28	175	15405
// OP_LOAD_F	28	175	15406
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	15407
// OP_ADD_F	15406	15407	15408
// OP_STOREP_F	15408	15405	0
// OP_ADDRESS	28	173	15409
// OP_STOREP_FNC	15362	15409	0
// OP_ADD_F	40	677	15410
// OP_STORE_F	15410	40	0
// OP_DONE	0	0	0
void () flymonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.5);
    self.think = flymonster_start_go;
    total_monsters = total_monsters + 1;
};

// swimmonster_start_go
// function begins at statement 22253, parm_start=15412
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	188	15412
// OP_STOREP_F	306	15412	0
// OP_ADD_F	40	677	15413
// OP_STORE_F	15413	40	0
// OP_ADDRESS	28	216	15414
// OP_LOAD_V	28	142	15415
// OP_MUL_V	15415	6286	15418
// OP_STOREP_F	15418	15414	0
// OP_LOAD_F	28	217	15419
// OP_NOT_F	15419	0	15420
// OP_IFNOT	15420	3	0
// OP_ADDRESS	28	217	15421
// OP_STOREP_F	827	15421	0
// OP_ADDRESS	28	191	15422
// OP_STOREP_V	15425	15422	0
// OP_ADDRESS	28	172	15428
// OP_STOREP_FNC	15260	15428	0
// OP_ADDRESS	28	207	15429
// OP_LOAD_F	28	207	15430
// OP_BITOR	15430	270	15431
// OP_STOREP_F	15431	15429	0
// OP_ADDRESS	28	207	15432
// OP_LOAD_F	28	207	15433
// OP_BITOR	15433	273	15434
// OP_STOREP_F	15434	15432	0
// OP_LOAD_S	28	221	15435
// OP_IFNOT	15435	33	0
// OP_ADDRESS	28	219	15436
// OP_ADDRESS	28	467	15437
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	15438
// OP_STORE_V	15438	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	15437	0
// OP_STOREP_ENT	1	15436	0
// OP_LOAD_ENT	28	467	15439
// OP_NOT_ENT	15439	0	15440
// OP_IFNOT	15440	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	15441
// OP_STORE_V	15441	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	216	15444
// OP_LOAD_ENT	28	219	15445
// OP_LOAD_V	15445	130	15446
// OP_LOAD_V	28	130	15449
// OP_SUB_V	15446	15449	15452
// OP_STORE_V	15452	4	0
// OP_CALL1	507	0	0
// OP_STOREP_F	1	15444	0
// OP_LOAD_FNC	28	406	15455
// OP_CALL0	15455	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	466	15456
// OP_STOREP_F	15347	15456	0
// OP_LOAD_FNC	28	405	15457
// OP_CALL0	15457	0	0
// OP_ADDRESS	28	175	15458
// OP_LOAD_F	28	175	15459
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	15460
// OP_ADD_F	15459	15460	15461
// OP_STOREP_F	15461	15458	0
// OP_DONE	0	0	0
void () swimmonster_start_go = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    self.takedamage = DAMAGE_AIM;
    total_monsters = total_monsters + 1;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    
    if(!self.yaw_speed)
    {
        self.yaw_speed = 10;
    }
    
    self.view_ofs = '0.000 0.000 10.000';
    self.use = monster_use;
    self.flags = self.flags | FL_SWIM;
    self.flags = self.flags | FL_MONSTER;
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
        self.ideal_yaw = vectoyaw(self.goalentity.origin - self.origin);
        self.th_walk();
    }
    else
    {
        self.pausetime = 100000000;
        self.th_stand();
    }
    
    self.nextthink = self.nextthink + (random() * 0.5);
};

// swimmonster_start
// function begins at statement 22327, parm_start=15463
// OP_ADDRESS	28	175	15463
// OP_LOAD_F	28	175	15464
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	15465
// OP_ADD_F	15464	15465	15466
// OP_STOREP_F	15466	15463	0
// OP_ADDRESS	28	173	15467
// OP_STOREP_FNC	15411	15467	0
// OP_ADD_F	40	677	15468
// OP_STORE_F	15468	40	0
// OP_DONE	0	0	0
void () swimmonster_start = 
{
    self.nextthink = self.nextthink + (random() * 0.5);
    self.think = swimmonster_start_go;
    total_monsters = total_monsters + 1;
};

