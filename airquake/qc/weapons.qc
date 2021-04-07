void () player_run;
void (vector org, vector vel, float damage) SpawnBlood;
void () SuperDamageSound;
void () AC_Flare;
void () AC_Die;
vector (float minim, float maxdist) AC_aim;
void () T_ACTouch;
float (entity e, float atype) check_ammo;
// W_Precache
// function begins at statement 2269, parm_start=2371
// OP_STORE_V	2371	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2372	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2373	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2374	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2375	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2376	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2377	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2378	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2379	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2380	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2381	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2382	4	0
// OP_CALL1	513	0	0
// OP_DONE	0	0	0
void () W_Precache = 
{
    precache_sound("weapons/r_exp3.wav");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("weapons/sgun1.wav");
    precache_sound("weapons/guncock.wav");
    precache_sound("weapons/ric1.wav");
    precache_sound("weapons/ric2.wav");
    precache_sound("weapons/ric3.wav");
    precache_sound("weapons/spike2.wav");
    precache_sound("weapons/tink1.wav");
    precache_sound("weapons/grenade.wav");
    precache_sound("weapons/bounce.wav");
    precache_sound("weapons/shotgn2.wav");
};

// crandom
// function begins at statement 2294, parm_start=2384
// OP_CALL0	501	0	0
// OP_SUB_F	1	972	2384
// OP_MUL_F	806	2384	2385
// OP_RETURN	2385	0	0
// OP_DONE	0	0	0
float () crandom = 
{
    return 2 * (random() - 0.5);
};

// wall_velocity
// function begins at statement 2299, parm_start=2387
// OP_LOAD_V	28	138	2390
// OP_STORE_V	2390	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	2387	0
// OP_CALL0	501	0	0
// OP_SUB_F	1	972	2393
// OP_MUL_VF	62	2393	2394
// OP_ADD_V	2387	2394	2397
// OP_CALL0	501	0	0
// OP_SUB_F	1	972	2400
// OP_MUL_VF	65	2400	2401
// OP_ADD_V	2397	2401	2404
// OP_STORE_V	2404	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	2387	0
// OP_MUL_FV	806	74	2407
// OP_ADD_V	2387	2407	2410
// OP_STORE_V	2410	2387	0
// OP_MUL_VF	2387	986	2413
// OP_STORE_V	2413	2387	0
// OP_RETURN	2387	0	0
// OP_DONE	0	0	0
vector () wall_velocity = 
{
    local vector vel;
    vel = normalize(self.velocity);
    vel = normalize((vel + (v_up * (random() - 0.5))) + (v_right * (random() - 0.5)));
    vel = vel + (2 * trace_plane_normal);
    vel = vel * 200;
    return vel;
};

// SpawnMeatSpray
// function begins at statement 2321, parm_start=2417
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	2423	0
// OP_ADDRESS	2423	226	2425
// OP_STOREP_ENT	28	2425	0
// OP_ADDRESS	2423	128	2426
// OP_STOREP_F	289	2426	0
// OP_ADDRESS	2423	129	2427
// OP_STOREP_F	291	2427	0
// OP_LOAD_V	28	142	2428
// OP_STORE_V	2428	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	2423	138	2431
// OP_STOREP_V	2420	2431	0
// OP_ADDRESS	2423	141	2434
// OP_LOAD_F	2423	141	2435
// OP_ADD_F	2435	1618	2436
// OP_CALL0	501	0	0
// OP_MUL_F	856	1	2437
// OP_ADD_F	2436	2437	2438
// OP_STOREP_F	2438	2434	0
// OP_ADDRESS	2423	146	2439
// OP_STOREP_V	2442	2439	0
// OP_ADDRESS	2423	175	2445
// OP_ADD_F	31	677	2446
// OP_STOREP_F	2446	2445	0
// OP_ADDRESS	2423	173	2447
// OP_STOREP_FNC	568	2447	0
// OP_STORE_V	2423	4	0
// OP_STORE_V	2448	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	2423	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	2423	4	0
// OP_STORE_V	2417	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnMeatSpray = 
{
    local entity missile;
    local entity mpuff;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_NOT;
    makevectors(self.angles);
    missile.velocity = vel;
    missile.velocity_z = (missile.velocity_z + 250) + (50 * random());
    missile.avelocity = '3000 1000 2000';
    missile.nextthink = time + 1;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/zom_gib.mdl");
    setsize(missile, '0 0 0', '0 0 0');
    setorigin(missile, org);
};

// SpawnBlood
// function begins at statement 2359, parm_start=2449
// OP_STORE_V	2449	4	0
// OP_MUL_VF	2452	655	2456
// OP_STORE_V	2456	7	0
// OP_STORE_V	2459	10	0
// OP_MUL_F	2455	806	2460
// OP_STORE_V	2460	13	0
// OP_CALL4	539	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float damage) SpawnBlood = 
{
    particle(org, vel * 0.1, 225, damage * 2);
};

// spawn_touchblood
// function begins at statement 2367, parm_start=2462
// OP_CALL0	2386	0	0
// OP_MUL_VF	1	1349	2466
// OP_STORE_V	2466	2463	0
// OP_LOAD_V	28	130	2469
// OP_MUL_VF	2463	2472	2473
// OP_ADD_V	2469	2473	2476
// OP_STORE_V	2476	4	0
// OP_STORE_V	2463	7	0
// OP_STORE_V	2462	10	0
// OP_CALL3	2363	0	0
// OP_DONE	0	0	0
void (float damage) spawn_touchblood = 
{
    local vector vel;
    vel = wall_velocity() * 0.2;
    SpawnBlood(self.origin + (vel * 0.01), vel, damage);
};

// SpawnChunk
// function begins at statement 2378, parm_start=2480
// OP_STORE_V	2480	4	0
// OP_MUL_VF	2483	2486	2487
// OP_STORE_V	2487	7	0
// OP_STORE_V	619	10	0
// OP_STORE_V	827	13	0
// OP_CALL4	539	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnChunk = 
{
    particle(org, vel * 0.02, 0, 10);
};

entity multi_ent;
float multi_damage;
// ClearMultiDamage
// function begins at statement 2385, parm_start=2493
// OP_STORE_ENT	30	2490	0
// OP_STORE_F	619	2491	0
// OP_DONE	0	0	0
void () ClearMultiDamage = 
{
    multi_ent = world;
    multi_damage = 0;
};

// ApplyMultiDamage
// function begins at statement 2388, parm_start=2494
// OP_NOT_ENT	2490	0	2494
// OP_IFNOT	2494	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	2490	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2491	13	0
// OP_CALL4	569	0	0
// OP_DONE	0	0	0
void () ApplyMultiDamage = 
{
    
    if(!multi_ent)
    {
        return;
    }
    
    T_Damage(multi_ent, self, self, multi_damage);
};

// AddMultiDamage
// function begins at statement 2397, parm_start=2496
// OP_NOT_ENT	2496	0	2498
// OP_IFNOT	2498	2	0
// OP_RETURN	0	0	0
// OP_NE_E	2496	2490	2499
// OP_IFNOT	2499	5	0
// OP_CALL0	2493	0	0
// OP_STORE_F	2497	2491	0
// OP_STORE_ENT	2496	2490	0
// OP_GOTO	3	0	0
// OP_ADD_F	2491	2497	2500
// OP_STORE_F	2500	2491	0
// OP_DONE	0	0	0
void (entity hit, float damage) AddMultiDamage = 
{
    
    if(!hit)
    {
        return;
    }
    
    if(hit != multi_ent)
    {
        ApplyMultiDamage();
        multi_damage = damage;
        multi_ent = hit;
    }
    else
    {
        multi_damage = multi_damage + damage;
    }
    
};

// TraceAttack
// function begins at statement 2409, parm_start=2502
// OP_CALL0	2383	0	0
// OP_MUL_VF	62	1	2512
// OP_ADD_V	2503	2512	2515
// OP_CALL0	2383	0	0
// OP_MUL_VF	65	1	2518
// OP_ADD_V	2515	2518	2521
// OP_STORE_V	2521	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	2506	0
// OP_MUL_FV	806	74	2524
// OP_ADD_V	2506	2524	2527
// OP_STORE_V	2527	2506	0
// OP_MUL_VF	2506	986	2530
// OP_STORE_V	2530	2506	0
// OP_MUL_VF	2503	808	2533
// OP_SUB_V	71	2533	2536
// OP_STORE_V	2536	2509	0
// OP_LOAD_F	78	188	2539
// OP_IFNOT	2539	10	0
// OP_STORE_V	2509	4	0
// OP_MUL_VF	2506	1349	2540
// OP_STORE_V	2540	7	0
// OP_STORE_V	2502	10	0
// OP_CALL3	2363	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	2502	7	0
// OP_CALL2	2495	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	359	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	2509	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	2510	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	2511	7	0
// OP_CALL2	546	0	0
// OP_DONE	0	0	0
void (float damage, vector dir) TraceAttack = 
{
    local vector vel;
    local vector org;
    vel = normalize((dir + (v_up * crandom())) + (v_right * crandom()));
    vel = vel + (2 * trace_plane_normal);
    vel = vel * 200;
    org = trace_endpos - (dir * 4);
    if(trace_ent.takedamage)
    {
        SpawnBlood(org, vel * 0.2, damage);
        AddMultiDamage(trace_ent, damage);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
};

// FireBullets
// function begins at statement 2453, parm_start=2544
// OP_LOAD_V	28	200	2557
// OP_STORE_V	2557	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	2560
// OP_MUL_VF	59	827	2563
// OP_ADD_V	2560	2563	2566
// OP_STORE_V	2566	2554	0
// OP_LOAD_F	28	122	2569
// OP_LOAD_F	28	170	2570
// OP_MUL_F	2570	2571	2572
// OP_ADD_F	2569	2572	2573
// OP_STORE_F	2573	2556	0
// OP_CALL0	2492	0	0
// OP_GT	2544	619	2574
// OP_IFNOT	2574	25	0
// OP_CALL0	2383	0	0
// OP_MUL_F	1	2548	2575
// OP_MUL_FV	2575	65	2576
// OP_ADD_V	2545	2576	2579
// OP_CALL0	2383	0	0
// OP_MUL_F	1	2549	2582
// OP_MUL_FV	2582	62	2583
// OP_ADD_V	2579	2583	2586
// OP_STORE_V	2586	2551	0
// OP_STORE_V	2554	4	0
// OP_MUL_VF	2551	832	2589
// OP_ADD_V	2554	2589	2592
// OP_STORE_V	2592	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_NE_F	70	677	2595
// OP_IFNOT	2595	4	0
// OP_STORE_V	808	4	0
// OP_STORE_V	2551	7	0
// OP_CALL2	2501	0	0
// OP_SUB_F	2544	677	2596
// OP_STORE_F	2596	2544	0
// OP_GOTO	-25	0	0
// OP_CALL0	2493	0	0
// OP_DONE	0	0	0
void (float shotcount, vector dir, vector spread) FireBullets = 
{
    local vector direction;
    local vector src;
    makevectors(self.v_angle);
    src = self.origin + (v_forward * 10);
    src_z = self.absmin_z + (self.size_z * 0.7);
    ClearMultiDamage();
    
    while(shotcount > 0)
    {
        direction = (dir + ((crandom() * spread_x) * v_right)) + ((crandom() * spread_y) * v_up);
        traceline(src, src + (direction * 2048), FALSE, self);
        
        if(trace_fraction != 1)
        {
            TraceAttack(4, direction);
        }
        
        shotcount = shotcount - 1;
    }
    
    ApplyMultiDamage();
};

// s_explode1
// function begins at statement 2494, parm_start=2598
// OP_STATE	619	2598	0
// OP_DONE	0	0	0
void () s_explode1 = [0, s_explode2]
{
};

// s_explode2
// function begins at statement 2496, parm_start=2599
// OP_STATE	677	2599	0
// OP_DONE	0	0	0
void () s_explode2 = [1, s_explode3]
{
};

// s_explode3
// function begins at statement 2498, parm_start=2600
// OP_STATE	806	2600	0
// OP_DONE	0	0	0
void () s_explode3 = [2, s_explode4]
{
};

// s_explode4
// function begins at statement 2500, parm_start=2601
// OP_STATE	788	2601	0
// OP_DONE	0	0	0
void () s_explode4 = [3, s_explode5]
{
};

// s_explode5
// function begins at statement 2502, parm_start=2602
// OP_STATE	808	2602	0
// OP_DONE	0	0	0
void () s_explode5 = [4, s_explode6]
{
};

// s_explode6
// function begins at statement 2504, parm_start=2603
// OP_STATE	813	568	0
// OP_DONE	0	0	0
void () s_explode6 = [5, SUB_Remove]
{
};

// BecomeExplosion
// function begins at statement 2506, parm_start=2604
// OP_ADDRESS	28	128	2604
// OP_STOREP_F	281	2604	0
// OP_ADDRESS	28	138	2605
// OP_STOREP_V	607	2605	0
// OP_ADDRESS	28	171	2608
// OP_STOREP_FNC	566	2608	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2609	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	129	2610
// OP_STOREP_F	291	2610	0
// OP_CALL0	2597	0	0
// OP_DONE	0	0	0
void () BecomeExplosion = 
{
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0 0 0';
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// T_MissileTouch
// function begins at statement 2519, parm_start=2611
// OP_LOAD_ENT	28	226	2612
// OP_EQ_E	29	2612	2613
// OP_IFNOT	2613	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	2614
// OP_STORE_V	2614	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	2617
// OP_IFNOT	2617	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_CALL0	501	0	0
// OP_MUL_F	1	1111	2619
// OP_ADD_F	2618	2619	2620
// OP_STORE_F	2620	2611	0
// OP_LOAD_F	29	177	2621
// OP_IFNOT	2621	12	0
// OP_LOAD_S	29	154	2622
// OP_EQ_S	2622	2358	2623
// OP_IFNOT	2623	3	0
// OP_MUL_F	2611	972	2624
// OP_STORE_F	2624	2611	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	2625
// OP_STORE_V	2625	10	0
// OP_STORE_V	2611	13	0
// OP_CALL4	569	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	226	2626
// OP_STORE_V	2626	7	0
// OP_STORE_V	2627	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	2232	0	0
// OP_ADDRESS	28	130	2628
// OP_LOAD_V	28	130	2631
// OP_LOAD_V	28	138	2634
// OP_STORE_V	2634	4	0
// OP_CALL1	503	0	0
// OP_MUL_FV	810	1	2637
// OP_SUB_V	2631	2637	2640
// OP_STOREP_V	2640	2628	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	2643
// OP_STORE_V	2643	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	2644
// OP_STORE_V	2644	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	2645
// OP_STORE_V	2645	7	0
// OP_CALL2	546	0	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () T_MissileTouch = 
{
    local float damg;
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    damg = 100 + (random() * 20);
    
    if(other.health)
    {
        
        if(other.classname == "monster_shambler")
        {
            damg = damg * 0.5;
        }
        
        T_Damage(other, self, self.owner, damg);
    }
    
    T_RadiusDamage(self, self.owner, 120, other);
    self.origin = self.origin - (8 * normalize(self.velocity));
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// LightningDamage
// function begins at statement 2582, parm_start=2647
// OP_SUB_V	2650	2647	2660
// OP_STORE_V	2660	2657	0
// OP_STORE_V	2657	4	0
// OP_CALL1	503	0	0
// OP_SUB_F	619	2658	2663
// OP_STORE_F	2663	2657	0
// OP_STORE_F	2657	2658	0
// OP_STORE_F	619	2659	0
// OP_MUL_VF	2657	812	2664
// OP_STORE_V	2664	2657	0
// OP_STORE_ENT	30	2656	0
// OP_STORE_ENT	30	2655	0
// OP_STORE_V	2647	4	0
// OP_STORE_V	2650	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LOAD_F	78	188	2667
// OP_IFNOT	2667	22	0
// OP_STORE_V	71	4	0
// OP_STORE_V	2668	7	0
// OP_STORE_V	2459	10	0
// OP_MUL_F	2654	808	2671
// OP_STORE_V	2671	13	0
// OP_CALL4	539	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	2653	7	0
// OP_STORE_V	2653	10	0
// OP_STORE_V	2654	13	0
// OP_CALL4	569	0	0
// OP_LOAD_S	28	154	2672
// OP_EQ_S	2672	766	2673
// OP_IFNOT	2673	8	0
// OP_LOAD_S	29	154	2674
// OP_EQ_S	2674	766	2675
// OP_IFNOT	2675	5	0
// OP_ADDRESS	78	141	2676
// OP_LOAD_F	78	141	2677
// OP_ADD_F	2677	2678	2679
// OP_STOREP_F	2679	2676	0
// OP_STORE_ENT	78	2655	0
// OP_ADD_V	2647	2657	2680
// OP_STORE_V	2680	4	0
// OP_ADD_V	2650	2657	2683
// OP_STORE_V	2683	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_NE_E	78	2655	2686
// OP_LOAD_F	78	188	2687
// OP_AND	2686	2687	2688
// OP_IFNOT	2688	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	2668	7	0
// OP_STORE_V	2459	10	0
// OP_MUL_F	2654	808	2689
// OP_STORE_V	2689	13	0
// OP_CALL4	539	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	2653	7	0
// OP_STORE_V	2653	10	0
// OP_STORE_V	2654	13	0
// OP_CALL4	569	0	0
// OP_STORE_ENT	78	2656	0
// OP_SUB_V	2647	2657	2690
// OP_STORE_V	2690	4	0
// OP_SUB_V	2650	2657	2693
// OP_STORE_V	2693	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_NE_E	78	2655	2696
// OP_NE_E	78	2656	2697
// OP_AND	2696	2697	2698
// OP_LOAD_F	78	188	2699
// OP_AND	2698	2699	2700
// OP_IFNOT	2700	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	2668	7	0
// OP_STORE_V	2459	10	0
// OP_MUL_F	2654	808	2701
// OP_STORE_V	2701	13	0
// OP_CALL4	539	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	2653	7	0
// OP_STORE_V	2653	10	0
// OP_STORE_V	2654	13	0
// OP_CALL4	569	0	0
// OP_DONE	0	0	0
void (vector p1, vector p2, entity from, float damage) LightningDamage = 
{
    local entity e1;
    local entity e2;
    local vector f;
    f = p2 - p1;
    normalize(f);
    f_x = 0 - f_y;
    f_y = f_x;
    f_z = 0;
    f = f * 16;
    e1 = e2 = world;
    traceline(p1, p2, FALSE, self);
    
    if(trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * 4);
        T_Damage(trace_ent, from, from, damage);
        
        if(self.classname == "player")
        {
            
            if(other.classname == "player")
            {
                trace_ent.velocity_z = trace_ent.velocity_z + 400;
            }
            
        }
        
    }
    
    e1 = trace_ent;
    traceline(p1 + f, p2 + f, FALSE, self);
    
    if((trace_ent != e1) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * 4);
        T_Damage(trace_ent, from, from, damage);
    }
    
    e2 = trace_ent;
    traceline(p1 - f, p2 - f, FALSE, self);
    
    if(((trace_ent != e1) && (trace_ent != e2)) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * 4);
        T_Damage(trace_ent, from, from, damage);
    }
    
};

void () spike_touch;
void () superspike_touch;
// launch_spike
// function begins at statement 2671, parm_start=2705
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	394	0
// OP_ADDRESS	394	226	2711
// OP_STOREP_ENT	28	2711	0
// OP_ADDRESS	394	128	2712
// OP_STOREP_F	288	2712	0
// OP_ADDRESS	394	129	2713
// OP_STOREP_F	293	2713	0
// OP_ADDRESS	394	142	2714
// OP_STORE_V	2708	4	0
// OP_CALL1	541	0	0
// OP_STOREP_V	1	2714	0
// OP_ADDRESS	394	171	2717
// OP_STOREP_FNC	2702	2717	0
// OP_ADDRESS	394	154	2718
// OP_STOREP_S	2719	2718	0
// OP_ADDRESS	394	173	2720
// OP_STOREP_FNC	568	2720	0
// OP_ADDRESS	394	175	2721
// OP_ADD_F	31	816	2722
// OP_STOREP_F	2722	2721	0
// OP_STORE_V	394	4	0
// OP_STORE_V	2723	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	335	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	394	4	0
// OP_STORE_V	2705	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	394	138	2724
// OP_MUL_VF	2708	1622	2727
// OP_STOREP_V	2727	2724	0
// OP_DONE	0	0	0
void (vector org, vector dir) launch_spike = 
{
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_FLYMISSILE;
    newmis.solid = SOLID_BBOX;
    newmis.angles = vectoangles(dir);
    newmis.touch = spike_touch;
    newmis.classname = "spike";
    newmis.think = SUB_Remove;
    newmis.nextthink = time + 6;
    setmodel(newmis, "progs/spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, org);
    newmis.velocity = dir * 1000;
};

.float hit_z;
// spike_touch
// function begins at statement 2706, parm_start=2731
// OP_LOAD_ENT	28	226	2732
// OP_EQ_E	29	2732	2733
// OP_IFNOT	2733	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	29	226	2734
// OP_LOAD_ENT	28	226	2735
// OP_EQ_E	2734	2735	2736
// OP_IFNOT	2736	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	129	2737
// OP_EQ_F	2737	292	2738
// OP_IFNOT	2738	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	2739
// OP_STORE_V	2739	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	2742
// OP_IFNOT	2742	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	188	2743
// OP_IFNOT	2743	10	0
// OP_STORE_V	824	4	0
// OP_CALL1	2461	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	2744
// OP_STORE_V	2744	10	0
// OP_STORE_V	824	13	0
// OP_CALL4	569	0	0
// OP_GOTO	33	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_LOAD_S	28	154	2745
// OP_EQ_S	2745	2746	2747
// OP_IFNOT	2747	5	0
// OP_STORE_V	386	4	0
// OP_STORE_V	364	7	0
// OP_CALL2	542	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	28	154	2748
// OP_EQ_S	2748	2749	2750
// OP_IFNOT	2750	5	0
// OP_STORE_V	386	4	0
// OP_STORE_V	365	7	0
// OP_CALL2	542	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	357	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	2751
// OP_STORE_V	2751	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	2752
// OP_STORE_V	2752	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	2753
// OP_STORE_V	2753	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () spike_touch = 
{
    local float rand;
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.owner == self.owner)
    {
        return;
    }
    
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    if(other.takedamage)
    {
        spawn_touchblood(9);
        T_Damage(other, self, self.owner, 9);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        if(self.classname == "wizspike")
        {
            WriteByte(MSG_BROADCAST, TE_WIZSPIKE);
        }
        else
        {
            if(self.classname == "knightspike")
            {
                WriteByte(MSG_BROADCAST, TE_KNIGHTSPIKE);
            }
            else
            {
                WriteByte(MSG_BROADCAST, TE_SPIKE);
            }
            
        }
        
        WriteCoord(MSG_BROADCAST, self.origin_x);
        WriteCoord(MSG_BROADCAST, self.origin_y);
        WriteCoord(MSG_BROADCAST, self.origin_z);
    }
    
    remove(self);
};

// superspike_touch
// function begins at statement 2773, parm_start=2754
// OP_LOAD_ENT	28	226	2755
// OP_EQ_E	29	2755	2756
// OP_IFNOT	2756	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	129	2757
// OP_EQ_F	2757	292	2758
// OP_IFNOT	2758	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	130	2759
// OP_STORE_V	2759	4	0
// OP_CALL1	533	0	0
// OP_EQ_F	1	330	2762
// OP_IFNOT	2762	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	188	2763
// OP_IFNOT	2763	10	0
// OP_STORE_V	2764	4	0
// OP_CALL1	2461	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	226	2765
// OP_STORE_V	2765	10	0
// OP_STORE_V	2764	13	0
// OP_CALL4	569	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	358	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	2766
// OP_STORE_V	2766	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	2767
// OP_STORE_V	2767	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	2768
// OP_STORE_V	2768	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () superspike_touch = 
{
    local float rand;
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.solid == SOLID_TRIGGER)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    if(other.takedamage)
    {
        spawn_touchblood(18);
        T_Damage(other, self, self.owner, 18);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_SUPERSPIKE);
        WriteCoord(MSG_BROADCAST, self.origin_x);
        WriteCoord(MSG_BROADCAST, self.origin_y);
        WriteCoord(MSG_BROADCAST, self.origin_z);
    }
    
    remove(self);
};

// W_SetCurrentAmmo
// function begins at statement 2821, parm_start=2770
// OP_LOAD_FNC	28	409	2770
// OP_IFNOT	2770	3	0
// OP_LOAD_FNC	28	409	2771
// OP_CALL0	2771	0	0
// OP_LOAD_F	28	253	2772
// OP_EQ_F	2772	677	2773
// OP_IFNOT	2773	4	0
// OP_ADDRESS	28	181	2774
// OP_STOREP_F	677	2774	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	181	2775
// OP_STOREP_F	619	2775	0
// OP_LOAD_F	28	253	2776
// OP_EQ_F	2776	806	2777
// OP_IFNOT	2777	3	0
// OP_ADDRESS	28	180	2778
// OP_STOREP_S	621	2778	0
// OP_LOAD_F	28	179	2779
// OP_EQ_F	2779	321	2780
// OP_IFNOT	2780	5	0
// OP_ADDRESS	28	182	2781
// OP_LOAD_F	28	183	2782
// OP_STOREP_F	2782	2781	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	179	2783
// OP_EQ_F	2783	322	2784
// OP_IFNOT	2784	5	0
// OP_ADDRESS	28	182	2785
// OP_LOAD_F	28	184	2786
// OP_STOREP_F	2786	2785	0
// OP_GOTO	17	0	0
// OP_LOAD_F	28	179	2787
// OP_EQ_F	2787	323	2788
// OP_IFNOT	2788	5	0
// OP_ADDRESS	28	182	2789
// OP_LOAD_F	28	185	2790
// OP_STOREP_F	2790	2789	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	179	2791
// OP_EQ_F	2791	324	2792
// OP_IFNOT	2792	5	0
// OP_ADDRESS	28	182	2793
// OP_LOAD_F	28	186	2794
// OP_STOREP_F	2794	2793	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	182	2795
// OP_STOREP_F	619	2795	0
// OP_DONE	0	0	0
void () W_SetCurrentAmmo = 
{
    
    if(self.th_melee)
    {
        self.th_melee();
    }
    
    if(self.wepv == 1)
    {
        self.weaponframe = 1;
    }
    else
    {
        self.weaponframe = 0;
    }
    
    
    if(self.wepv == 2)
    {
        self.weaponmodel = "";
    }
    
    if(self.weapon == IT_WEP1)
    {
        self.currentammo = self.ammo_shells;
    }
    else
    {
        if(self.weapon == IT_WEP2)
        {
            self.currentammo = self.ammo_nails;
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.currentammo = self.ammo_rockets;
            }
            else
            {
                if(self.weapon == IT_WEP4)
                {
                    self.currentammo = self.ammo_cells;
                }
                else
                {
                    self.currentammo = 0;
                }
                
            }
            
        }
        
    }
    
};

// W_BestWeapon
// function begins at statement 2869, parm_start=2797
// OP_LOAD_F	28	186	2798
// OP_GE	2798	677	2799
// OP_IFNOT	2799	2	0
// OP_RETURN	324	0	0
// OP_LOAD_F	28	185	2800
// OP_GE	2800	677	2801
// OP_IFNOT	2801	2	0
// OP_RETURN	323	0	0
// OP_LOAD_F	28	184	2802
// OP_GE	2802	806	2803
// OP_IFNOT	2803	2	0
// OP_RETURN	322	0	0
// OP_RETURN	321	0	0
// OP_DONE	0	0	0
float () W_BestWeapon = 
{
    local float it;
    
    if(self.ammo_cells >= 1)
    {
        return IT_WEP4;
    }
    
    
    if(self.ammo_rockets >= 1)
    {
        return IT_WEP3;
    }
    
    
    if(self.ammo_nails >= 2)
    {
        return IT_WEP2;
    }
    
    return IT_WEP1;
};

// W_CheckNoAmmo
// function begins at statement 2883, parm_start=2805
// OP_LOAD_F	28	182	2805
// OP_GT	2805	677	2806
// OP_IFNOT	2806	2	0
// OP_RETURN	268	0	0
// OP_ADDRESS	28	179	2807
// OP_CALL0	2796	0	0
// OP_STOREP_F	1	2807	0
// OP_CALL0	2769	0	0
// OP_RETURN	267	0	0
// OP_DONE	0	0	0
float () W_CheckNoAmmo = 
{
    
    if(self.currentammo > 1)
    {
        return TRUE;
    }
    
    self.weapon = W_BestWeapon();
    W_SetCurrentAmmo();
    return FALSE;
};

// W_ChangeWeapon
// function begins at statement 2893, parm_start=2809
// OP_LOAD_F	28	187	2812
// OP_STORE_F	2812	2809	0
// OP_STORE_F	619	2810	0
// OP_STORE_F	619	2811	0
// OP_LOAD_F	28	198	2813
// OP_EQ_F	2813	677	2814
// OP_IFNOT	2814	3	0
// OP_STORE_F	321	2811	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	198	2815
// OP_EQ_F	2815	806	2816
// OP_IFNOT	2816	3	0
// OP_STORE_F	322	2811	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	198	2817
// OP_EQ_F	2817	788	2818
// OP_IFNOT	2818	3	0
// OP_STORE_F	323	2811	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	198	2819
// OP_EQ_F	2819	808	2820
// OP_IFNOT	2820	2	0
// OP_STORE_F	324	2811	0
// OP_ADDRESS	28	198	2821
// OP_STOREP_F	619	2821	0
// OP_LOAD_F	28	187	2822
// OP_BITAND	2822	2811	2823
// OP_NOT_F	2823	0	2824
// OP_IFNOT	2824	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2825	7	0
// OP_CALL2	518	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	2810	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2826	7	0
// OP_CALL2	518	0	0
// OP_RETURN	0	0	0
// OP_NE_F	2811	619	2827
// OP_IFNOT	2827	4	0
// OP_ADDRESS	28	179	2828
// OP_STOREP_F	2811	2828	0
// OP_CALL0	2769	0	0
// OP_DONE	0	0	0
void () W_ChangeWeapon = 
{
    local float it;
    local float am;
    local float fl;
    it = self.items;
    am = 0;
    fl = 0;
    if(self.impulse == 1)
    {
        fl = IT_WEP1;
    }
    else
    {
        if(self.impulse == 2)
        {
            fl = IT_WEP2;
        }
        else
        {
            if(self.impulse == 3)
            {
                fl = IT_WEP3;
            }
            else
            {
                
                if(self.impulse == 4)
                {
                    fl = IT_WEP4;
                }
                
            }
            
        }
        
    }
    
    self.impulse = 0;
    
    if(!(self.items & fl))
    {
        sprint(self, "no weapon.\n");
        return;
    }
    
    
    if(am)
    {
        sprint(self, "not enough ammo.\n");
        return;
    }
    
    
    if(fl != 0)
    {
        self.weapon = fl;
        W_SetCurrentAmmo();
    }
    
};

// CheatCommand
// function begins at statement 2937, parm_start=2830
// OP_OR	35	36	2830
// OP_IFNOT	2830	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	246	2831
// OP_STOREP_F	1618	2831	0
// OP_ADDRESS	28	245	2832
// OP_STOREP_F	1618	2832	0
// OP_ADDRESS	28	247	2833
// OP_STOREP_F	1618	2833	0
// OP_ADDRESS	28	251	2834
// OP_STOREP_F	1618	2834	0
// OP_ADDRESS	28	248	2835
// OP_STOREP_F	1618	2835	0
// OP_ADDRESS	28	249	2836
// OP_STOREP_F	1618	2836	0
// OP_ADDRESS	28	252	2837
// OP_STOREP_F	1618	2837	0
// OP_ADDRESS	28	250	2838
// OP_STOREP_F	1618	2838	0
// OP_STORE_V	28	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	2369	0	0
// OP_ADDRESS	28	198	2839
// OP_STOREP_F	619	2839	0
// OP_CALL0	2769	0	0
// OP_DONE	0	0	0
void () CheatCommand = 
{
    
    if(deathmatch || coop)
    {
        return;
    }
    
    self.ammo_rock = 250;
    self.ammo_auto = 250;
    self.ammo_shel = 250;
    self.ammo_cell = 250;
    self.ammo_amsl = 250;
    self.ammo_smsl = 250;
    self.ammo_mine = 250;
    self.ammo_bomb = 250;
    check_ammo(self, 0);
    self.impulse = 0;
    W_SetCurrentAmmo();
};

// CycleWeaponCommand
// function begins at statement 2963, parm_start=2841
// OP_LOAD_F	28	187	2843
// OP_STORE_F	2843	2841	0
// OP_ADDRESS	28	198	2844
// OP_STOREP_F	619	2844	0
// OP_IFNOT	677	33	0
// OP_STORE_F	619	2842	0
// OP_LOAD_F	28	179	2845
// OP_EQ_F	2845	324	2846
// OP_IFNOT	2846	4	0
// OP_ADDRESS	28	179	2847
// OP_STOREP_F	321	2847	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	2848
// OP_EQ_F	2848	321	2849
// OP_IFNOT	2849	4	0
// OP_ADDRESS	28	179	2850
// OP_STOREP_F	322	2850	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	2851
// OP_EQ_F	2851	322	2852
// OP_IFNOT	2852	4	0
// OP_ADDRESS	28	179	2853
// OP_STOREP_F	323	2853	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	2854
// OP_EQ_F	2854	323	2855
// OP_IFNOT	2855	3	0
// OP_ADDRESS	28	179	2856
// OP_STOREP_F	324	2856	0
// OP_LOAD_F	28	179	2857
// OP_BITAND	2841	2857	2858
// OP_EQ_F	2842	619	2859
// OP_AND	2858	2859	2860
// OP_IFNOT	2860	3	0
// OP_CALL0	2769	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-32	0	0
// OP_DONE	0	0	0
void () CycleWeaponCommand = 
{
    local float it;
    local float am;
    it = self.items;
    self.impulse = 0;
    
    while(1)
    {
        am = 0;
        if(self.weapon == IT_WEP4)
        {
            self.weapon = IT_WEP1;
        }
        else
        {
            if(self.weapon == IT_WEP1)
            {
                self.weapon = IT_WEP2;
            }
            else
            {
                if(self.weapon == IT_WEP2)
                {
                    self.weapon = IT_WEP3;
                }
                else
                {
                    
                    if(self.weapon == IT_WEP3)
                    {
                        self.weapon = IT_WEP4;
                    }
                    
                }
                
            }
            
        }
        
        
        if((it & self.weapon) && (am == 0))
        {
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
};

// CycleWeaponReverseCommand
// function begins at statement 3001, parm_start=2862
// OP_LOAD_F	28	187	2864
// OP_STORE_F	2864	2862	0
// OP_ADDRESS	28	198	2865
// OP_STOREP_F	619	2865	0
// OP_IFNOT	677	33	0
// OP_STORE_F	619	2863	0
// OP_LOAD_F	28	179	2866
// OP_EQ_F	2866	324	2867
// OP_IFNOT	2867	4	0
// OP_ADDRESS	28	179	2868
// OP_STOREP_F	323	2868	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	179	2869
// OP_EQ_F	2869	323	2870
// OP_IFNOT	2870	4	0
// OP_ADDRESS	28	179	2871
// OP_STOREP_F	322	2871	0
// OP_GOTO	12	0	0
// OP_LOAD_F	28	179	2872
// OP_EQ_F	2872	322	2873
// OP_IFNOT	2873	4	0
// OP_ADDRESS	28	179	2874
// OP_STOREP_F	321	2874	0
// OP_GOTO	6	0	0
// OP_LOAD_F	28	179	2875
// OP_EQ_F	2875	321	2876
// OP_IFNOT	2876	3	0
// OP_ADDRESS	28	179	2877
// OP_STOREP_F	324	2877	0
// OP_LOAD_F	28	179	2878
// OP_BITAND	2862	2878	2879
// OP_EQ_F	2863	619	2880
// OP_AND	2879	2880	2881
// OP_IFNOT	2881	3	0
// OP_CALL0	2769	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-32	0	0
// OP_DONE	0	0	0
void () CycleWeaponReverseCommand = 
{
    local float it;
    local float am;
    it = self.items;
    self.impulse = 0;
    
    while(1)
    {
        am = 0;
        if(self.weapon == IT_WEP4)
        {
            self.weapon = IT_WEP3;
        }
        else
        {
            if(self.weapon == IT_WEP3)
            {
                self.weapon = IT_WEP2;
            }
            else
            {
                if(self.weapon == IT_WEP2)
                {
                    self.weapon = IT_WEP1;
                }
                else
                {
                    
                    if(self.weapon == IT_WEP1)
                    {
                        self.weapon = IT_WEP4;
                    }
                    
                }
                
            }
            
        }
        
        
        if((it & self.weapon) && (am == 0))
        {
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
};

// ServerflagsCommand
// function begins at statement 3039, parm_start=2883
// OP_MUL_F	38	806	2883
// OP_ADD_F	2883	677	2884
// OP_STORE_F	2884	38	0
// OP_DONE	0	0	0
void () ServerflagsCommand = 
{
    serverflags = (serverflags * 2) + 1;
};

// QuadCheat
// function begins at statement 3043, parm_start=2886
// OP_OR	35	36	2886
// OP_IFNOT	2886	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	432	2887
// OP_STOREP_F	677	2887	0
// OP_ADDRESS	28	426	2888
// OP_ADD_F	31	1130	2889
// OP_STOREP_F	2889	2888	0
// OP_ADDRESS	28	187	2890
// OP_LOAD_F	28	187	2891
// OP_BITOR	2891	320	2892
// OP_STOREP_F	2892	2890	0
// OP_STORE_V	2893	4	0
// OP_CALL1	519	0	0
// OP_DONE	0	0	0
void () QuadCheat = 
{
    
    if(deathmatch || coop)
    {
        return;
    }
    
    self.super_time = 1;
    self.super_damage_finished = time + 30;
    self.items = self.items | IT_QUAD;
    dprint("quad cheat\n");
};

// ImpulseCommands
// function begins at statement 3058, parm_start=2895
// OP_LOAD_F	28	198	2899
// OP_GE	2899	677	2900
// OP_LOAD_F	28	198	2901
// OP_LE	2901	808	2902
// OP_AND	2900	2902	2903
// OP_IFNOT	2903	2	0
// OP_CALL0	2808	0	0
// OP_LOAD_F	28	198	2904
// OP_EQ_F	2904	813	2905
// OP_LOAD_F	28	422	2906
// OP_LT	2906	31	2907
// OP_AND	2905	2907	2908
// OP_IFNOT	2908	5	0
// OP_CALL0	2365	0	0
// OP_ADDRESS	28	422	2909
// OP_ADD_F	31	677	2910
// OP_STOREP_F	2910	2909	0
// OP_LOAD_F	28	198	2911
// OP_GE	2911	819	2912
// OP_LOAD_F	28	198	2913
// OP_LE	2913	810	2914
// OP_AND	2912	2914	2915
// OP_IFNOT	2915	70	0
// OP_LOAD_F	28	198	2916
// OP_EQ_F	2916	819	2917
// OP_LOAD_ENT	28	206	2918
// OP_LOAD_F	2918	240	2919
// OP_GT	2919	619	2920
// OP_AND	2917	2920	2921
// OP_IFNOT	2921	9	0
// OP_LOAD_ENT	28	206	2922
// OP_ADDRESS	2922	240	2923
// OP_LOAD_ENT	28	206	2924
// OP_LOAD_F	2924	240	2925
// OP_SUB_F	2925	677	2926
// OP_STOREP_F	2926	2923	0
// OP_ADDRESS	28	435	2927
// OP_STOREP_F	31	2927	0
// OP_LOAD_F	28	198	2928
// OP_EQ_F	2928	810	2929
// OP_LOAD_ENT	28	206	2930
// OP_LOAD_F	2930	240	2931
// OP_LT	2931	808	2932
// OP_AND	2929	2932	2933
// OP_IFNOT	2933	9	0
// OP_LOAD_ENT	28	206	2934
// OP_ADDRESS	2934	240	2935
// OP_LOAD_ENT	28	206	2936
// OP_LOAD_F	2936	240	2937
// OP_ADD_F	2937	677	2938
// OP_STOREP_F	2938	2935	0
// OP_ADDRESS	28	435	2939
// OP_STOREP_F	31	2939	0
// OP_LOAD_ENT	28	206	2940
// OP_LOAD_F	2940	240	2941
// OP_EQ_F	2941	619	2942
// OP_IFNOT	2942	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2943	7	0
// OP_CALL2	518	0	0
// OP_GOTO	32	0	0
// OP_LOAD_ENT	28	206	2944
// OP_LOAD_F	2944	240	2945
// OP_EQ_F	2945	677	2946
// OP_IFNOT	2946	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2947	7	0
// OP_CALL2	518	0	0
// OP_GOTO	24	0	0
// OP_LOAD_ENT	28	206	2948
// OP_LOAD_F	2948	240	2949
// OP_EQ_F	2949	806	2950
// OP_IFNOT	2950	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2951	7	0
// OP_CALL2	518	0	0
// OP_GOTO	16	0	0
// OP_LOAD_ENT	28	206	2952
// OP_LOAD_F	2952	240	2953
// OP_EQ_F	2953	788	2954
// OP_IFNOT	2954	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2955	7	0
// OP_CALL2	518	0	0
// OP_GOTO	8	0	0
// OP_LOAD_ENT	28	206	2956
// OP_LOAD_F	2956	240	2957
// OP_EQ_F	2957	808	2958
// OP_IFNOT	2958	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2959	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	28	198	2960
// OP_EQ_F	2960	824	2961
// OP_IFNOT	2961	14	0
// OP_ADDRESS	28	256	2962
// OP_LOAD_F	28	256	2963
// OP_SUB_F	677	2963	2964
// OP_STOREP_F	2964	2962	0
// OP_LOAD_F	28	256	2965
// OP_IFNOT	2965	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2966	7	0
// OP_CALL2	518	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2967	7	0
// OP_CALL2	518	0	0
// OP_LOAD_F	28	198	2968
// OP_EQ_F	2968	830	2969
// OP_IFNOT	2969	2	0
// OP_CALL0	2829	0	0
// OP_LOAD_F	28	198	2970
// OP_EQ_F	2970	833	2971
// OP_IFNOT	2971	2	0
// OP_CALL0	2840	0	0
// OP_LOAD_F	28	198	2972
// OP_EQ_F	2972	836	2973
// OP_IFNOT	2973	2	0
// OP_CALL0	2882	0	0
// OP_LOAD_F	28	198	2974
// OP_EQ_F	2974	839	2975
// OP_IFNOT	2975	2	0
// OP_CALL0	2861	0	0
// OP_LOAD_F	28	198	2976
// OP_EQ_F	2976	2977	2978
// OP_IFNOT	2978	2	0
// OP_CALL0	2885	0	0
// OP_LOAD_F	28	198	2979
// OP_GE	2979	2618	2980
// OP_LOAD_F	28	198	2981
// OP_LE	2981	2982	2983
// OP_AND	2980	2983	2984
// OP_IFNOT	2984	56	0
// OP_ADDRESS	28	238	2985
// OP_LOAD_F	28	198	2986
// OP_SUB_F	2986	2618	2987
// OP_STOREP_F	2987	2985	0
// OP_LOAD_ENT	28	206	2988
// OP_LOAD_V	2988	142	2989
// OP_STORE_V	2989	2895	0
// OP_SUB_F	619	2895	2992
// OP_STORE_F	2992	2895	0
// OP_LOAD_F	28	238	2993
// OP_EQ_F	2993	677	2994
// OP_IFNOT	2994	6	0
// OP_ADD_F	2995	2896	2996
// OP_STORE_V	2996	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	2896	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	238	2997
// OP_EQ_F	2997	806	2998
// OP_IFNOT	2998	6	0
// OP_ADD_F	1827	2896	2999
// OP_STORE_V	2999	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	2896	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	238	3000
// OP_EQ_F	3000	788	3001
// OP_IFNOT	3001	5	0
// OP_ADD_F	1268	2896	3002
// OP_STORE_V	3002	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	2896	0
// OP_LOAD_F	28	238	3003
// OP_LT	3003	808	3004
// OP_IFNOT	3004	21	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	387	4	0
// OP_STORE_V	813	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_ENT	28	412	3005
// OP_STORE_V	3005	7	0
// OP_CALL2	549	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	827	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	2895	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	2896	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	619	7	0
// OP_CALL2	547	0	0
// OP_LOAD_F	28	198	3006
// OP_EQ_F	3006	3007	3008
// OP_IFNOT	3008	3	0
// OP_ADDRESS	28	238	3009
// OP_STOREP_F	619	3009	0
// OP_LOAD_F	28	198	3010
// OP_EQ_F	3010	3011	3012
// OP_IFNOT	3012	3	0
// OP_ADDRESS	28	414	3013
// OP_STOREP_F	689	3013	0
// OP_LOAD_F	28	198	3014
// OP_EQ_F	3014	3015	3016
// OP_IFNOT	3016	3	0
// OP_ADDRESS	28	414	3017
// OP_STOREP_F	677	3017	0
// OP_LOAD_F	28	198	3018
// OP_EQ_F	3018	3019	3020
// OP_IFNOT	3020	3	0
// OP_ADDRESS	28	414	3021
// OP_STOREP_F	619	3021	0
// OP_ADDRESS	28	198	3022
// OP_STOREP_F	619	3022	0
// OP_DONE	0	0	0
void () ImpulseCommands = 
{
    local vector v1;
    local entity e;
    
    if((self.impulse >= 1) && (self.impulse <= 4))
    {
        W_ChangeWeapon();
    }
    
    
    if((self.impulse == 5) && (self.attack_finished < time))
    {
        AC_Flare();
        self.attack_finished = time + 1;
    }
    
    
    if((self.impulse >= 7) && (self.impulse <= 8))
    {
        
        if((self.impulse == 7) && (self.enemy.thru > 0))
        {
            self.enemy.thru = self.enemy.thru - 1;
            self.fly_sound = time;
        }
        
        
        if((self.impulse == 8) && (self.enemy.thru < 4))
        {
            self.enemy.thru = self.enemy.thru + 1;
            self.fly_sound = time;
        }
        
        if(self.enemy.thru == 0)
        {
            sprint(self, "thrust: 0%\n");
        }
        else
        {
            if(self.enemy.thru == 1)
            {
                sprint(self, "thrust: 25%\n");
            }
            else
            {
                if(self.enemy.thru == 2)
                {
                    sprint(self, "thrust: 50%\n");
                }
                else
                {
                    if(self.enemy.thru == 3)
                    {
                        sprint(self, "thrust: 75%\n");
                    }
                    else
                    {
                        
                        if(self.enemy.thru == 4)
                        {
                            sprint(self, "thrust:100%\n");
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(self.impulse == 9)
    {
        self.missileview_on = 1 - self.missileview_on;
        if(self.missileview_on)
        {
            sprint(self, "Missile view on\n");
        }
        else
        {
            sprint(self, "Missile view off\n");
        }
        
    }
    
    
    if(self.impulse == 11)
    {
        CheatCommand();
    }
    
    
    if(self.impulse == 12)
    {
        CycleWeaponCommand();
    }
    
    
    if(self.impulse == 13)
    {
        ServerflagsCommand();
    }
    
    
    if(self.impulse == 14)
    {
        CycleWeaponReverseCommand();
    }
    
    
    if(self.impulse == 255)
    {
        QuadCheat();
    }
    
    
    if((self.impulse >= 100) && (self.impulse <= 104))
    {
        self.toyview = self.impulse - 100;
        v1 = self.enemy.angles;
        v1_x = 0 - v1_x;
        if(self.toyview == 1)
        {
            v1_y = anglemod(270 + v1_y);
        }
        else
        {
            if(self.toyview == 2)
            {
                v1_y = anglemod(180 + v1_y);
            }
            else
            {
                
                if(self.toyview == 3)
                {
                    v1_y = anglemod(90 + v1_y);
                }
                
            }
            
        }
        
        
        if(self.toyview < 4)
        {
            msg_entity = self;
            WriteByte(MSG_ONE, 5);
            WriteEntity(MSG_ONE, self.oldenemy);
            WriteByte(MSG_ONE, 10);
            WriteAngle(MSG_ONE, v1_x);
            WriteAngle(MSG_ONE, v1_y);
            WriteAngle(MSG_ONE, 0);
        }
        
    }
    
    
    if(self.impulse == 105)
    {
        self.toyview = 0;
    }
    
    
    if(self.impulse == 110)
    {
        self.lefty = -1;
    }
    
    
    if(self.impulse == 111)
    {
        self.lefty = 1;
    }
    
    
    if(self.impulse == 109)
    {
        self.lefty = 0;
    }
    
    self.impulse = 0;
};

// W_WeaponFrame
// function begins at statement 3270, parm_start=3024
// OP_LOAD_ENT	28	206	3025
// OP_LOAD_ENT	3025	226	3026
// OP_EQ_E	3026	28	3027
// OP_IFNOT	3027	3	0
// OP_LOAD_FNC	28	407	3028
// OP_CALL0	3028	0	0
// OP_CALL0	2894	0	0
// OP_LOAD_F	28	434	3029
// OP_GT	3029	31	3030
// OP_IFNOT	3030	5	0
// OP_ADDRESS	28	212	3031
// OP_LOAD_F	28	212	3032
// OP_BITOR	3032	806	3033
// OP_STOREP_F	3033	3031	0
// OP_ADDRESS	28	187	3034
// OP_LOAD_F	28	187	3035
// OP_LOAD_F	28	187	3036
// OP_BITOR	311	312	3037
// OP_BITOR	3037	313	3038
// OP_BITAND	3036	3038	3039
// OP_SUB_F	3035	3039	3040
// OP_STOREP_F	3040	3034	0
// OP_LOAD_F	28	212	3041
// OP_EQ_F	3041	677	3042
// OP_IFNOT	3042	6	0
// OP_ADDRESS	28	187	3043
// OP_LOAD_F	28	187	3044
// OP_ADD_F	3044	311	3045
// OP_STOREP_F	3045	3043	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	212	3046
// OP_EQ_F	3046	806	3047
// OP_IFNOT	3047	6	0
// OP_ADDRESS	28	187	3048
// OP_LOAD_F	28	187	3049
// OP_ADD_F	3049	312	3050
// OP_STOREP_F	3050	3048	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	212	3051
// OP_EQ_F	3051	788	3052
// OP_IFNOT	3052	5	0
// OP_ADDRESS	28	187	3053
// OP_LOAD_F	28	187	3054
// OP_ADD_F	3054	313	3055
// OP_STOREP_F	3055	3053	0
// OP_ADDRESS	28	212	3056
// OP_STOREP_F	619	3056	0
// OP_LOAD_F	28	422	3057
// OP_LT	31	3057	3058
// OP_IFNOT	3058	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	3059
// OP_IFNOT	3059	4	0
// OP_CALL0	2364	0	0
// OP_LOAD_FNC	28	408	3060
// OP_CALL0	3060	0	0
// OP_DONE	0	0	0
void () W_WeaponFrame = 
{
    local float i;
    
    if(self.enemy.owner == self)
    {
        self.th_run();
    }
    
    ImpulseCommands();
    
    if(self.rad_time > time)
    {
        self.armortype = self.armortype | 2;
    }
    
    self.items = self.items - (self.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3));
    if(self.armortype == 1)
    {
        self.items = self.items + IT_ARMOR1;
    }
    else
    {
        if(self.armortype == 2)
        {
            self.items = self.items + IT_ARMOR2;
        }
        else
        {
            
            if(self.armortype == 3)
            {
                self.items = self.items + IT_ARMOR3;
            }
            
        }
        
    }
    
    self.armortype = 0;
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    
    if(self.button0)
    {
        SuperDamageSound();
        self.th_missile();
    }
    
};

// SuperDamageSound
// function begins at statement 3327, parm_start=3061
// OP_LOAD_F	28	426	3061
// OP_GT	3061	31	3062
// OP_IFNOT	3062	14	0
// OP_LOAD_F	28	433	3063
// OP_LT	3063	31	3064
// OP_IFNOT	3064	11	0
// OP_ADDRESS	28	433	3065
// OP_ADD_F	31	677	3066
// OP_STOREP_F	3066	3065	0
// OP_LOAD_ENT	28	206	3067
// OP_STORE_V	3067	4	0
// OP_STORE_V	373	7	0
// OP_STORE_V	3068	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () SuperDamageSound = 
{
    
    if(self.super_damage_finished > time)
    {
        
        if(self.super_sound < time)
        {
            self.super_sound = time + 1;
            sound(self.enemy, CHAN_BODY, "items/damage3.wav", 1, ATTN_NORM);
        }
        
    }
    
    return;
};

