void () aag_aim;
void () aag_launch;
void () aag_run;
void () start_monster_aag;
// aag_stand
// function begins at statement 26780, parm_start=18268
// OP_STATE	619	18267	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	18268
// OP_BITAND	18268	277	18269
// OP_NOT_F	18269	0	18270
// OP_IFNOT	18270	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_LOAD_ENT	28	226	18271
// OP_LOAD_S	18271	154	18272
// OP_EQ_S	18272	766	18273
// OP_IFNOT	18273	5	0
// OP_ADDRESS	28	206	18274
// OP_STOREP_ENT	28	18274	0
// OP_CALL0	18263	0	0
// OP_RETURN	0	0	0
// OP_CALL0	1716	0	0
// OP_NOT_F	1	0	18275
// OP_IFNOT	18275	5	0
// OP_ADDRESS	28	206	18276
// OP_STOREP_ENT	30	18276	0
// OP_CALL0	18263	0	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	173	18277
// OP_STOREP_FNC	18265	18277	0
// OP_ADDRESS	28	175	18278
// OP_ADD_F	31	655	18279
// OP_STOREP_F	18279	18278	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () aag_stand = [0, aag_stand]
{
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000);
    }
    
    
    if(self.owner.classname == "player")
    {
        self.enemy = self;
        aag_aim();
        return;
    }
    
    if(!FindTarget())
    {
        self.enemy = world;
        aag_aim();
    }
    else
    {
        self.think = aag_run;
        self.nextthink = time + 0.1;
        return;
    }
    
};

// aag_walk
// function begins at statement 26813, parm_start=18281
// OP_STATE	619	18267	0
// OP_DONE	0	0	0
void () aag_walk = [0, aag_stand]
{
};

// aag_run
// function begins at statement 26815, parm_start=18281
// OP_STATE	619	18265	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	18281
// OP_BITAND	18281	277	18282
// OP_NOT_F	18282	0	18283
// OP_IFNOT	18283	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_CALL0	1716	0	0
// OP_LOAD_ENT	28	206	18284
// OP_STORE_V	18284	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	570	0	0
// OP_NOT_F	1	0	18285
// OP_LOAD_ENT	28	206	18286
// OP_LOAD_F	18286	188	18287
// OP_NOT_F	18287	0	18288
// OP_OR	18285	18288	18289
// OP_IFNOT	18289	10	0
// OP_ADDRESS	28	206	18290
// OP_STOREP_ENT	30	18290	0
// OP_ADDRESS	28	173	18291
// OP_LOAD_FNC	28	405	18292
// OP_STOREP_FNC	18292	18291	0
// OP_ADDRESS	28	175	18293
// OP_ADD_F	31	655	18294
// OP_STOREP_F	18294	18293	0
// OP_RETURN	0	0	0
// OP_CALL0	18263	0	0
// OP_DONE	0	0	0
void () aag_run = [0, aag_run]
{
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000);
    }
    
    FindTarget();
    
    if(!CanDamage(self.enemy, self) || !self.enemy.takedamage)
    {
        self.enemy = world;
        self.think = self.th_stand;
        self.nextthink = time + 0.1;
        return;
    }
    
    aag_aim();
};

// aag_death
// function begins at statement 26848, parm_start=18296
// OP_LOAD_ENT	28	464	18296
// OP_ADDRESS	18296	173	18297
// OP_STOREP_FNC	2603	18297	0
// OP_LOAD_ENT	28	464	18298
// OP_ADDRESS	18298	175	18299
// OP_ADD_F	31	655	18300
// OP_STOREP_F	18300	18299	0
// OP_NOT_F	35	0	18301
// OP_IFNOT	18301	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_GOTO	12	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	621	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	188	18302
// OP_STOREP_F	619	18302	0
// OP_ADDRESS	28	173	18303
// OP_STOREP_FNC	18266	18303	0
// OP_ADDRESS	28	175	18304
// OP_LOAD_F	28	462	18305
// OP_ADD_F	31	18305	18306
// OP_STOREP_F	18306	18304	0
// OP_DONE	0	0	0
void () aag_death = 
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
        self.think = start_monster_aag;
        self.nextthink = time + self.wait;
    }
    
};

// aag_die
// function begins at statement 26872, parm_start=18308
// OP_LOAD_F	28	177	18308
// OP_LT	18308	1891	18309
// OP_IFNOT	18309	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12926	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_ADDRESS	28	129	18310
// OP_STOREP_F	291	18310	0
// OP_CALL0	18295	0	0
// OP_DONE	0	0	0
void () aag_die = 
{
    
    if(self.health < -90)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
    }
    
    self.solid = SOLID_NOT;
    aag_death();
};

// aag_aim
// function begins at statement 26888, parm_start=18311
// OP_LOAD_ENT	28	226	18325
// OP_LOAD_S	18325	154	18326
// OP_NE_S	18326	766	18327
// OP_IFNOT	18327	53	0
// OP_LOAD_ENT	28	206	18328
// OP_EQ_E	18328	30	18329
// OP_IFNOT	18329	6	0
// OP_LOAD_V	28	130	18330
// OP_LOAD_V	28	227	18333
// OP_ADD_V	18330	18333	18336
// OP_STORE_V	18336	18317	0
// OP_GOTO	27	0	0
// OP_LOAD_ENT	28	206	18339
// OP_LOAD_V	18339	130	18340
// OP_LOAD_ENT	28	206	18343
// OP_LOAD_V	18343	159	18344
// OP_LOAD_ENT	28	206	18347
// OP_LOAD_V	18347	163	18348
// OP_ADD_V	18344	18348	18351
// OP_MUL_VF	18351	972	18354
// OP_ADD_V	18340	18354	18357
// OP_STORE_V	18357	18317	0
// OP_LOAD_ENT	28	206	18360
// OP_LOAD_S	18360	154	18361
// OP_EQ_S	18361	1550	18362
// OP_IFNOT	18362	6	0
// OP_LOAD_ENT	28	206	18363
// OP_LOAD_ENT	18363	226	18364
// OP_LOAD_V	18364	138	18365
// OP_STORE_V	18365	18320	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	206	18368
// OP_LOAD_V	18368	138	18369
// OP_STORE_V	18369	18320	0
// OP_LOAD_F	28	413	18372
// OP_MUL_VF	18320	18372	18373
// OP_ADD_V	18317	18373	18376
// OP_STORE_V	18376	18314	0
// OP_LOAD_V	28	130	18379
// OP_SUB_V	18314	18379	18382
// OP_STORE_V	18382	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	18323	0
// OP_DIV_F	18323	5116	18385
// OP_STORE_F	18385	18323	0
// OP_ADDRESS	28	413	18386
// OP_STOREP_F	18323	18386	0
// OP_MUL_VF	18320	18323	18387
// OP_ADD_V	18317	18387	18390
// OP_STORE_V	18390	18317	0
// OP_LOAD_V	28	130	18393
// OP_SUB_V	18317	18393	18396
// OP_STORE_V	18396	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	18311	0
// OP_GOTO	15	0	0
// OP_LOAD_ENT	28	226	18399
// OP_LOAD_V	18399	200	18400
// OP_STORE_V	18400	18311	0
// OP_SUB_F	619	18311	18403
// OP_STORE_F	18403	18311	0
// OP_LOAD_ENT	28	226	18404
// OP_LOAD_F	18404	195	18405
// OP_STORE_F	18405	18324	0
// OP_LOAD_ENT	28	226	18406
// OP_LOAD_ENT	18406	206	18407
// OP_NE_E	18407	28	18408
// OP_IFNOT	18408	3	0
// OP_ADDRESS	28	226	18409
// OP_STOREP_ENT	30	18409	0
// OP_STORE_V	607	18314	0
// OP_LOAD_F	28	144	18410
// OP_SUB_F	18312	18410	18411
// OP_STORE_F	18411	18315	0
// OP_LOAD_ENT	28	464	18412
// OP_LOAD_F	18412	143	18413
// OP_SUB_F	18311	18413	18414
// OP_STORE_F	18414	18314	0
// OP_STORE_V	607	18311	0
// OP_LT	18314	619	18415
// OP_IFNOT	18415	3	0
// OP_ADD_F	18314	1459	18416
// OP_STORE_F	18416	18314	0
// OP_GT	18314	1827	18417
// OP_IFNOT	18417	3	0
// OP_SUB_F	18314	1459	18418
// OP_STORE_F	18418	18314	0
// OP_LT	18315	619	18419
// OP_IFNOT	18419	3	0
// OP_ADD_F	18315	1459	18420
// OP_STORE_F	18420	18315	0
// OP_GT	18315	1827	18421
// OP_IFNOT	18421	3	0
// OP_SUB_F	18315	1459	18422
// OP_STORE_F	18422	18315	0
// OP_STORE_V	18314	18311	0
// OP_LT	18311	6997	18423
// OP_IFNOT	18423	2	0
// OP_STORE_F	6997	18311	0
// OP_GT	18311	827	18424
// OP_IFNOT	18424	2	0
// OP_STORE_F	827	18311	0
// OP_LT	18312	6997	18425
// OP_IFNOT	18425	2	0
// OP_STORE_F	6997	18312	0
// OP_GT	18312	827	18426
// OP_IFNOT	18426	2	0
// OP_STORE_F	827	18312	0
// OP_LOAD_ENT	28	226	18427
// OP_LOAD_S	18427	154	18428
// OP_NE_S	18428	766	18429
// OP_IFNOT	18429	18	0
// OP_LOAD_ENT	28	206	18430
// OP_IFNOT	18430	16	0
// OP_STORE_V	18311	4	0
// OP_CALL1	506	0	0
// OP_LT	1	827	18431
// OP_IFNOT	18431	12	0
// OP_LOAD_V	28	130	18432
// OP_STORE_V	18432	4	0
// OP_STORE_V	18317	7	0
// OP_STORE_V	268	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	510	0	0
// OP_EQ_F	70	677	18435
// OP_LE	18323	677	18436
// OP_AND	18435	18436	18437
// OP_IFNOT	18437	2	0
// OP_STORE_F	677	18324	0
// OP_LOAD_F	28	422	18438
// OP_GT	31	18438	18439
// OP_EQ_F	18324	677	18440
// OP_AND	18439	18440	18441
// OP_IFNOT	18441	6	0
// OP_LOAD_FNC	28	408	18442
// OP_CALL0	18442	0	0
// OP_ADDRESS	28	422	18443
// OP_ADD_F	31	972	18444
// OP_STOREP_F	18444	18443	0
// OP_LOAD_ENT	28	464	18445
// OP_ADDRESS	18445	143	18446
// OP_LOAD_ENT	28	464	18447
// OP_LOAD_F	18447	143	18448
// OP_ADD_F	18448	18311	18449
// OP_STORE_V	18449	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	18446	0
// OP_ADDRESS	28	144	18450
// OP_LOAD_F	28	144	18451
// OP_ADD_F	18451	18312	18452
// OP_STORE_V	18452	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	18450	0
// OP_LOAD_ENT	28	464	18453
// OP_ADDRESS	18453	144	18454
// OP_LOAD_F	28	144	18455
// OP_STOREP_F	18455	18454	0
// OP_DONE	0	0	0
void () aag_aim = 
{
    local vector dir;
    local vector vtemp;
    local vector org;
    local vector vel;
    local float dist;
    local float ff;
    if(self.owner.classname != "player")
    {
        if(self.enemy == world)
        {
            org = self.origin + self.movedir;
        }
        else
        {
            org = self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5);
            if(self.enemy.classname == "tank")
            {
                vel = self.enemy.owner.velocity;
            }
            else
            {
                vel = self.enemy.velocity;
            }
            
            vtemp = org + (vel * self.speed);
        }
        
        dist = vlen(vtemp - self.origin);
        dist = dist / 1200;
        self.speed = dist;
        org = org + (vel * dist);
        dir = vectoangles(org - self.origin);
    }
    else
    {
        dir = self.owner.v_angle;
        dir_x = 0 - dir_x;
        ff = self.owner.button0;
        
        if(self.owner.enemy != self)
        {
            self.owner = world;
        }
        
    }
    
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
    
    
    if(self.owner.classname != "player")
    {
        
        if(self.enemy)
        {
            
            if(vlen(dir) < 10)
            {
                traceline(self.origin, org, TRUE, world);
                
                if((trace_fraction == 1) && (dist <= 1))
                {
                    ff = 1;
                }
                
            }
            
        }
        
    }
    
    
    if((time > self.attack_finished) && (ff == 1))
    {
        self.th_missile();
        self.attack_finished = time + 0.5;
    }
    
    self.trigger_field.angles_x = anglemod(self.trigger_field.angles_x + dir_x);
    self.angles_y = anglemod(self.angles_y + dir_y);
    self.trigger_field.angles_y = self.angles_y;
};

// aag_launch
// function begins at statement 27046, parm_start=18456
// OP_LOAD_F	28	186	18459
// OP_NOT_F	18459	0	18460
// OP_IFNOT	18460	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	186	18461
// OP_LOAD_F	28	186	18462
// OP_SUB_F	18462	677	18463
// OP_STOREP_F	18463	18461	0
// OP_LOAD_ENT	28	464	18464
// OP_LOAD_V	18464	142	18465
// OP_STORE_V	18465	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	18456	0
// OP_SUB_F	619	18458	18468
// OP_STORE_F	18468	18458	0
// OP_LOAD_F	28	220	18469
// OP_BITAND	18469	806	18470
// OP_IFNOT	18470	52	0
// OP_LOAD_F	28	186	18471
// OP_BITAND	18471	677	18472
// OP_IFNOT	18472	14	0
// OP_LOAD_V	28	130	18473
// OP_MUL_VF	65	839	18476
// OP_ADD_V	18473	18476	18479
// OP_STORE_V	18479	4	0
// OP_CALL0	2383	0	0
// OP_MUL_FV	1	65	18482
// OP_MUL_VF	18482	1014	18485
// OP_ADD_V	18456	18485	18488
// OP_STORE_V	18488	7	0
// OP_LOAD_ENT	28	206	18491
// OP_STORE_V	18491	10	0
// OP_CALL3	5084	0	0
// OP_GOTO	13	0	0
// OP_LOAD_V	28	130	18492
// OP_MUL_VF	65	839	18495
// OP_SUB_V	18492	18495	18498
// OP_STORE_V	18498	4	0
// OP_CALL0	2383	0	0
// OP_MUL_FV	1	65	18501
// OP_MUL_VF	18501	1014	18504
// OP_ADD_V	18456	18504	18507
// OP_STORE_V	18507	7	0
// OP_LOAD_ENT	28	206	18510
// OP_STORE_V	18510	10	0
// OP_CALL3	5084	0	0
// OP_ADDRESS	394	173	18511
// OP_STOREP_FNC	3864	18511	0
// OP_LOAD_F	28	413	18512
// OP_LT	18512	972	18513
// OP_IFNOT	18513	3	0
// OP_ADDRESS	28	413	18514
// OP_STOREP_F	972	18514	0
// OP_ADDRESS	394	175	18515
// OP_LOAD_F	28	413	18516
// OP_ADD_F	31	18516	18517
// OP_STOREP_F	18517	18515	0
// OP_ADDRESS	394	171	18518
// OP_STOREP_FNC	3892	18518	0
// OP_ADDRESS	394	469	18519
// OP_STOREP_F	1203	18519	0
// OP_LOAD_ENT	28	206	18520
// OP_ADDRESS	18520	239	18521
// OP_LOAD_ENT	28	206	18522
// OP_LOAD_F	18522	239	18523
// OP_LOAD_F	394	469	18524
// OP_ADD_F	18523	18524	18525
// OP_STOREP_F	18525	18521	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	186	18526
// OP_BITAND	18526	677	18527
// OP_IFNOT	18527	10	0
// OP_LOAD_V	28	130	18528
// OP_MUL_VF	65	839	18531
// OP_ADD_V	18528	18531	18534
// OP_STORE_V	18534	4	0
// OP_STORE_V	18456	7	0
// OP_LOAD_ENT	28	206	18537
// OP_STORE_V	18537	10	0
// OP_CALL3	5084	0	0
// OP_GOTO	9	0	0
// OP_LOAD_V	28	130	18538
// OP_MUL_VF	65	839	18541
// OP_SUB_V	18538	18541	18544
// OP_STORE_V	18544	4	0
// OP_STORE_V	18456	7	0
// OP_LOAD_ENT	28	206	18547
// OP_STORE_V	18547	10	0
// OP_CALL3	5084	0	0
// OP_DONE	0	0	0
void () aag_launch = 
{
    local vector v1;
    
    if(!self.ammo_cells)
    {
        return;
    }
    
    self.ammo_cells = self.ammo_cells - 1;
    makevectors(self.trigger_field.angles);
    v1 = v_forward;
    v1_z = 0 - v1_z;
    if(self.spawnflags & 2)
    {
        if(self.ammo_cells & 1)
        {
            AC_plasma(self.origin + (v_right * 14), v1 + ((crandom() * v_right) * 0.04), self.enemy);
        }
        else
        {
            AC_plasma(self.origin - (v_right * 14), v1 + ((crandom() * v_right) * 0.04), self.enemy);
        }
        
        newmis.think = ACprojectile_expireboom;
        
        if(self.speed < 0.5)
        {
            self.speed = 0.5;
        }
        
        newmis.nextthink = time + self.speed;
        newmis.touch = ACprojectile_touchboom;
        newmis.dmg = 60;
        self.enemy.pdmg = self.enemy.pdmg + newmis.dmg;
    }
    else
    {
        if(self.ammo_cells & 1)
        {
            AC_plasma(self.origin + (v_right * 14), v1, self.enemy);
        }
        else
        {
            AC_plasma(self.origin - (v_right * 14), v1, self.enemy);
        }
        
    }
    
};

// start_monster_aag
// function begins at statement 27136, parm_start=18548
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_STORE_F	1	37	0
// OP_GT	35	619	18548
// OP_IFNOT	18548	9	0
// OP_LOAD_F	28	209	18549
// OP_EQ_F	18549	619	18550
// OP_EQ_F	37	619	18551
// OP_OR	18550	18551	18552
// OP_IFNOT	18552	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	129	18553
// OP_STOREP_F	294	18553	0
// OP_ADDRESS	28	128	18554
// OP_STOREP_F	285	18554	0
// OP_ADDRESS	28	177	18555
// OP_LOAD_F	28	210	18556
// OP_STOREP_F	18556	18555	0
// OP_STORE_V	28	4	0
// OP_STORE_V	18557	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	18179	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	405	18558
// OP_STOREP_FNC	18267	18558	0
// OP_ADDRESS	28	406	18559
// OP_STOREP_FNC	18280	18559	0
// OP_ADDRESS	28	407	18560
// OP_STOREP_FNC	18265	18560	0
// OP_ADDRESS	28	411	18561
// OP_STOREP_FNC	18307	18561	0
// OP_ADDRESS	28	408	18562
// OP_STOREP_FNC	18264	18562	0
// OP_LOAD_S	28	205	18563
// OP_NOT_S	18563	0	18564
// OP_IFNOT	18564	3	0
// OP_ADDRESS	28	205	18565
// OP_STOREP_S	18566	18565	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	134	18567
// OP_STORE_V	18567	7	0
// OP_CALL2	497	0	0
// OP_CALL0	527	0	0
// OP_ADDRESS	28	188	18570
// OP_STOREP_F	306	18570	0
// OP_ADDRESS	28	216	18571
// OP_LOAD_V	28	142	18572
// OP_MUL_V	18572	6286	18575
// OP_STOREP_F	18575	18571	0
// OP_ADDRESS	28	191	18576
// OP_STOREP_V	582	18576	0
// OP_ADDRESS	28	172	18579
// OP_STOREP_FNC	15260	18579	0
// OP_ADDRESS	28	207	18580
// OP_LOAD_F	28	207	18581
// OP_BITOR	18581	273	18582
// OP_STOREP_F	18582	18580	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16178	0
// OP_ADDRESS	16178	226	18583
// OP_STOREP_ENT	28	18583	0
// OP_ADDRESS	16178	188	18584
// OP_STOREP_F	304	18584	0
// OP_STORE_V	16178	4	0
// OP_STORE_V	18585	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	464	18586
// OP_STOREP_ENT	16178	18586	0
// OP_ADDRESS	16178	142	18587
// OP_LOAD_V	28	142	18590
// OP_STOREP_V	18590	18587	0
// OP_STORE_V	16178	4	0
// OP_LOAD_V	28	130	18593
// OP_STORE_V	18593	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	186	18596
// OP_LOAD_F	28	468	18597
// OP_STOREP_F	18597	18596	0
// OP_LOAD_FNC	28	405	18598
// OP_CALL0	18598	0	0
// OP_DONE	0	0	0
void () start_monster_aag = 
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
    setmodel(self, "progs/aagba.mdl");
    setsize(self, '-16 -16 -20', '16 16 16');
    self.th_stand = aag_stand;
    self.th_walk = aag_walk;
    self.th_run = aag_run;
    self.th_die = aag_die;
    self.th_missile = aag_launch;
    
    if(!self.netname)
    {
        self.netname = "Anti-aircraft gun";
    }
    
    setorigin(self, self.oldorigin);
    droptofloor();
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0 1 0';
    self.view_ofs = '0 0 1';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    stemp = spawn();
    stemp.owner = self;
    stemp.takedamage = DAMAGE_NO;
    setmodel(stemp, "progs/aagtb.mdl");
    self.trigger_field = stemp;
    stemp.angles = self.angles;
    setorigin(stemp, self.origin);
    self.ammo_cells = self.aflag;
    self.th_stand();
};

// monster_aag
// function begins at statement 27221, parm_start=18600
// OP_STORE_V	18557	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	18585	4	0
// OP_CALL1	514	0	0
// OP_NOT_F	35	0	18603
// OP_IFNOT	18603	3	0
// OP_ADD_F	40	677	18604
// OP_STORE_F	18604	40	0
// OP_ADDRESS	28	134	18605
// OP_LOAD_V	28	130	18608
// OP_STOREP_V	18608	18605	0
// OP_LOAD_F	28	177	18611
// OP_NOT_F	18611	0	18612
// OP_IFNOT	18612	3	0
// OP_ADDRESS	28	177	18613
// OP_STOREP_F	2618	18613	0
// OP_ADDRESS	28	210	18614
// OP_LOAD_F	28	177	18615
// OP_STOREP_F	18615	18614	0
// OP_LOAD_F	28	144	18616
// OP_MUL_FV	18616	6286	18617
// OP_ADD_V	18617	18620	18623
// OP_STORE_V	18623	18600	0
// OP_STORE_V	18600	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	28	227	18626
// OP_STOREP_V	59	18626	0
// OP_CALL0	1068	0	0
// OP_LOAD_F	28	186	18629
// OP_NOT_F	18629	0	18630
// OP_IFNOT	18630	3	0
// OP_ADDRESS	28	186	18631
// OP_STOREP_F	18632	18631	0
// OP_ADDRESS	28	468	18633
// OP_LOAD_F	28	186	18634
// OP_STOREP_F	18634	18633	0
// OP_LOAD_F	28	462	18635
// OP_NOT_F	18635	0	18636
// OP_IFNOT	18636	3	0
// OP_ADDRESS	28	462	18637
// OP_STOREP_F	1130	18637	0
// OP_ADDRESS	28	173	18638
// OP_STOREP_FNC	18266	18638	0
// OP_ADDRESS	28	175	18639
// OP_ADD_F	31	655	18640
// OP_CALL0	501	0	0
// OP_MUL_F	1	1687	18641
// OP_ADD_F	18640	18641	18642
// OP_STOREP_F	18642	18639	0
// OP_DONE	0	0	0
void () monster_aag = 
{
    local vector v1;
    precache_model("progs/aagba.mdl");
    precache_model("progs/aagtb.mdl");
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.health)
    {
        self.health = 100;
    }
    
    self.max_health = self.health;
    v1 = (self.angles_y * '0 1 0') + '-20 0 0';
    makevectors(v1);
    self.movedir = v_forward;
    setup_teament();
    
    if(!self.ammo_cells)
    {
        self.ammo_cells = 5000;
    }
    
    self.aflag = self.ammo_cells;
    
    if(!self.wait)
    {
        self.wait = 30;
    }
    
    self.think = start_monster_aag;
    self.nextthink = (time + 0.1) + (random() * 0.3);
};

