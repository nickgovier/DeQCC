void () player_run;
void (vector org, vector vel, float damage) SpawnBlood;
void () SuperDamageSound;

// W_Precache
// function begins at statement 6403, parm_start=5358
// OP_STORE_V	5358	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5360	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5361	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5362	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5363	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5364	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5365	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5366	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5367	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5368	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5369	4	0
// OP_CALL1	469	0	0
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
// function begins at statement 6428, parm_start=5371
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	5371
// OP_MUL_F	216	5371	5372
// OP_RETURN	5372	0	0
// OP_DONE	0	0	0
float () crandom = 
{
    return FL_SWIM * (random() - RA_PLAYERSTATTIME);
};


// aim_obot
// function begins at statement 6433, parm_start=5374
// OP_LOAD_V	5374	175	5376
// OP_STORE_V	5376	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	59	4	0
// OP_CALL1	459	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
vector (entity e, float speed_UNUSED) aim_obot = 
{
    makevectors(e.v_angle);
    return normalize(v_forward);
};


// W_FireAxe
// function begins at statement 6440, parm_start=5380
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5386
// OP_STORE_V	5386	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_V	28	105	5389
// OP_ADD_V	5389	5392	5395
// OP_STORE_V	5395	5380	0
// OP_STORE_V	5380	4	0
// OP_MUL_VF	59	220	5398
// OP_ADD_V	5380	5398	5401
// OP_STORE_V	5401	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	5404
// OP_IFNOT	5404	2	0
// OP_RETURN	0	0	0
// OP_MUL_VF	59	229	5405
// OP_SUB_V	71	5405	5408
// OP_STORE_V	5408	5383	0
// OP_LOAD_F	78	163	5411
// OP_IFNOT	5411	13	0
// OP_ADDRESS	78	392	5412
// OP_STOREP_F	214	5412	0
// OP_STORE_V	5383	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2323	10	0
// OP_CALL3	5355	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2323	13	0
// OP_CALL4	522	0	0
// OP_GOTO	22	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5383	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5384	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5385	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void () W_FireAxe = 
{
    local vector source;
    local vector org;
    CreateBotSound(self, self.origin, TRUE, BOTSOUND_FIRE);
    source = self.origin + '0 0 16';
    traceline(source, source + (v_forward * FL_GODMODE), FALSE, self);
    
    if(trace_fraction == TRUE)
    {
        return;
    }
    
    org = trace_endpos - (v_forward * MOVETYPE_STEP);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = TRUE;
        SpawnBlood(org, VEC_ORIGIN, 20);
        T_Damage(trace_ent, self, self, 20);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", TRUE, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
};


// wall_velocity
// function begins at statement 6498, parm_start=5415
// OP_LOAD_V	28	113	5418
// OP_STORE_V	5418	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	5415	0
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	5421
// OP_MUL_VF	62	5421	5422
// OP_ADD_V	5415	5422	5425
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	5428
// OP_MUL_VF	65	5428	5429
// OP_ADD_V	5425	5429	5432
// OP_STORE_V	5432	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	5415	0
// OP_MUL_FV	216	74	5435
// OP_ADD_V	5415	5435	5438
// OP_STORE_V	5438	5415	0
// OP_MUL_VF	5415	2044	5441
// OP_STORE_V	5441	5415	0
// OP_RETURN	5415	0	0
// OP_DONE	0	0	0
vector () wall_velocity = 
{
    local vector vel;
    vel = normalize(self.velocity);
    vel = normalize((vel + (v_up * (random() - RA_PLAYERSTATTIME))) + (v_right * (random() - RA_PLAYERSTATTIME)));
    vel = vel + (FL_SWIM * trace_plane_normal);
    vel = vel * 200;
    return vel;
};


// SpawnMeatSpray
// function begins at statement 6520, parm_start=5445
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5451	0
// OP_ADDRESS	5451	201	5453
// OP_STOREP_ENT	28	5453	0
// OP_ADDRESS	5451	103	5454
// OP_STOREP_F	235	5454	0
// OP_ADDRESS	5451	104	5455
// OP_STOREP_F	237	5455	0
// OP_LOAD_V	28	117	5456
// OP_STORE_V	5456	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	5451	113	5459
// OP_STOREP_V	5448	5459	0
// OP_ADDRESS	5451	116	5462
// OP_LOAD_F	5451	116	5463
// OP_ADD_F	5463	738	5464
// OP_CALL0	457	0	0
// OP_MUL_F	1470	1	5465
// OP_ADD_F	5464	5465	5466
// OP_STOREP_F	5466	5462	0
// OP_ADDRESS	5451	121	5467
// OP_STOREP_V	5470	5467	0
// OP_ADDRESS	5451	150	5473
// OP_ADD_F	31	214	5474
// OP_STOREP_F	5474	5473	0
// OP_ADDRESS	5451	148	5475
// OP_STOREP_FNC	521	5475	0
// OP_STORE_V	5451	4	0
// OP_STORE_V	5476	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5451	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	5451	4	0
// OP_STORE_V	5445	7	0
// OP_CALL2	453	0	0
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
    missile.velocity_z = (missile.velocity_z + GLOBALDEF721_250) + (50 * random());
    missile.avelocity = '3000 1000 2000';
    missile.nextthink = time + TRUE;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/zom_gib.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, org);
};


// SpawnBlood
// function begins at statement 6558, parm_start=5477
// OP_STORE_V	5477	4	0
// OP_MUL_VF	5480	3036	5484
// OP_STORE_V	5484	7	0
// OP_STORE_V	5487	10	0
// OP_MUL_F	5483	216	5488
// OP_STORE_V	5488	13	0
// OP_CALL4	493	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float damage) SpawnBlood = 
{
    particle(org, vel * 0.1, 73, damage * FL_SWIM);
};


// spawn_touchblood
// function begins at statement 6566, parm_start=5490
// OP_CALL0	5414	0	0
// OP_MUL_VF	1	3267	5494
// OP_STORE_V	5494	5491	0
// OP_LOAD_V	28	105	5497
// OP_MUL_VF	5491	5500	5501
// OP_ADD_V	5497	5501	5504
// OP_STORE_V	5504	4	0
// OP_STORE_V	5491	7	0
// OP_STORE_V	5490	10	0
// OP_CALL3	5355	0	0
// OP_DONE	0	0	0
void (float damage) spawn_touchblood = 
{
    local vector vel;
    vel = wall_velocity() * 0.2;
    SpawnBlood(self.origin + (vel * 0.01), vel, damage);
};


// SpawnChunk
// function begins at statement 6577, parm_start=5508
// OP_STORE_V	5508	4	0
// OP_MUL_VF	5511	5514	5515
// OP_STORE_V	5515	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	235	13	0
// OP_CALL4	493	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnChunk = 
{
    particle(org, vel * 0.02, FALSE, MOVETYPE_BOUNCE);
};

entity multi_ent;
float multi_damage;

// ClearMultiDamage
// function begins at statement 6584, parm_start=5521
// OP_STORE_ENT	30	5518	0
// OP_STORE_F	213	5519	0
// OP_DONE	0	0	0
void () ClearMultiDamage = 
{
    multi_ent = world;
    multi_damage = FALSE;
};


// ApplyMultiDamage
// function begins at statement 6587, parm_start=5522
// OP_NOT_ENT	5518	0	5522
// OP_IFNOT	5522	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	5518	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	5519	13	0
// OP_CALL4	522	0	0
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
// function begins at statement 6596, parm_start=5524
// OP_NOT_ENT	5524	0	5526
// OP_IFNOT	5526	2	0
// OP_RETURN	0	0	0
// OP_NE_E	5524	5518	5527
// OP_IFNOT	5527	5	0
// OP_CALL0	5521	0	0
// OP_STORE_F	5525	5519	0
// OP_STORE_ENT	5524	5518	0
// OP_GOTO	3	0	0
// OP_ADD_F	5519	5525	5528
// OP_STORE_F	5528	5519	0
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
// function begins at statement 6608, parm_start=5530
// OP_CALL0	5370	0	0
// OP_MUL_VF	62	1	5540
// OP_ADD_V	5531	5540	5543
// OP_CALL0	5370	0	0
// OP_MUL_VF	65	1	5546
// OP_ADD_V	5543	5546	5549
// OP_STORE_V	5549	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	5534	0
// OP_MUL_FV	216	74	5552
// OP_ADD_V	5534	5552	5555
// OP_STORE_V	5555	5534	0
// OP_MUL_VF	5534	2044	5558
// OP_STORE_V	5558	5534	0
// OP_MUL_VF	5531	229	5561
// OP_SUB_V	71	5561	5564
// OP_STORE_V	5564	5537	0
// OP_LOAD_F	78	163	5567
// OP_IFNOT	5567	10	0
// OP_STORE_V	5537	4	0
// OP_MUL_VF	5534	3267	5568
// OP_STORE_V	5568	7	0
// OP_STORE_V	5530	10	0
// OP_CALL3	5355	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	5530	7	0
// OP_CALL2	5523	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5537	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5538	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5539	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void (float damage, vector dir) TraceAttack = 
{
    local vector vel;
    local vector org;
    vel = normalize((dir + (v_up * crandom())) + (v_right * crandom()));
    vel = vel + (FL_SWIM * trace_plane_normal);
    vel = vel * 200;
    org = trace_endpos - (dir * MOVETYPE_STEP);
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
// function begins at statement 6652, parm_start=5572
// OP_LOAD_V	28	175	5585
// OP_STORE_V	5585	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	5588
// OP_MUL_VF	59	235	5591
// OP_ADD_V	5588	5591	5594
// OP_STORE_V	5594	5582	0
// OP_LOAD_F	28	97	5597
// OP_LOAD_F	28	145	5598
// OP_MUL_F	5598	5599	5600
// OP_ADD_F	5597	5600	5601
// OP_STORE_F	5601	5584	0
// OP_CALL0	5520	0	0
// OP_GT	5572	213	5602
// OP_IFNOT	5602	25	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	5576	5603
// OP_MUL_FV	5603	65	5604
// OP_ADD_V	5573	5604	5607
// OP_CALL0	5370	0	0
// OP_MUL_F	1	5577	5610
// OP_MUL_FV	5610	62	5611
// OP_ADD_V	5607	5611	5614
// OP_STORE_V	5614	5579	0
// OP_STORE_V	5582	4	0
// OP_MUL_VF	5579	225	5617
// OP_ADD_V	5582	5617	5620
// OP_STORE_V	5620	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	5623
// OP_IFNOT	5623	4	0
// OP_STORE_V	229	4	0
// OP_STORE_V	5579	7	0
// OP_CALL2	5529	0	0
// OP_SUB_F	5572	214	5624
// OP_STORE_F	5624	5572	0
// OP_GOTO	-25	0	0
// OP_CALL0	5521	0	0
// OP_DONE	0	0	0
void (float shotcount, vector dir, vector spread) FireBullets = 
{
    local vector direction;
    local vector src;
    makevectors(self.v_angle);
    src = self.origin + (v_forward * MOVETYPE_BOUNCE);
    src_z = self.absmin_z + (self.size_z * 0.7);
    ClearMultiDamage();
    
    while(shotcount > FALSE)
    {
        direction = (dir + ((crandom() * spread_x) * v_right)) + ((crandom() * spread_y) * v_up);
        traceline(src, src + (direction * FL_WATERJUMP), FALSE, self);
        
        if(trace_fraction != TRUE)
        {
            TraceAttack(MOVETYPE_STEP, direction);
        }
        
        shotcount = shotcount - TRUE;
    }
    
    ApplyMultiDamage();
};


// W_FireShotgun
// function begins at statement 6693, parm_start=5626
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5361	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5629
// OP_STORE_V	5629	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	126	5632
// OP_STOREP_F	277	5632	0
// OP_ADDRESS	28	157	5633
// OP_ADDRESS	28	158	5634
// OP_LOAD_F	28	158	5635
// OP_SUB_F	5635	214	5636
// OP_STOREP_F	5636	5634	0
// OP_STOREP_F	5636	5633	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2110	7	0
// OP_CALL2	5373	0	0
// OP_STORE_V	1	5626	0
// OP_LOAD_V	28	105	5637
// OP_ADD_V	5637	5640	5643
// OP_MUL_VF	59	218	5646
// OP_ADD_V	5643	5646	5649
// OP_STORE_V	5649	4	0
// OP_STORE_V	5626	7	0
// OP_CALL2	5297	0	0
// OP_STORE_V	231	4	0
// OP_STORE_V	5626	7	0
// OP_STORE_V	5652	10	0
// OP_CALL3	5571	0	0
// OP_DONE	0	0	0
void () W_FireShotgun = 
{
    local vector dir;
    sound(self, CHAN_WEAPON, "weapons/guncock.wav", TRUE, ATTN_NORM);
    CreateBotSound(self, self.origin, TRUE, BOTSOUND_FIRE);
    self.punchangle_x = CONTENT_SOLID;
    self.currentammo = self.ammo_shells = self.ammo_shells - TRUE;
    dir = aim_obot(self, 100000);
    EjectShell_spawn((self.origin + '0 0 12') + (v_forward * FL_INWATER), dir);
    FireBullets(MOVETYPE_TOSS, dir, '0.04 0.04 0');
};


// W_FireSuperShotgun
// function begins at statement 6729, parm_start=5656
// OP_LOAD_F	28	157	5659
// OP_EQ_F	5659	214	5660
// OP_IFNOT	5660	3	0
// OP_CALL0	5625	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5369	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5661
// OP_STORE_V	5661	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	126	5664
// OP_STOREP_F	279	5664	0
// OP_ADDRESS	28	157	5665
// OP_ADDRESS	28	158	5666
// OP_LOAD_F	28	158	5667
// OP_SUB_F	5667	216	5668
// OP_STOREP_F	5668	5666	0
// OP_STOREP_F	5668	5665	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2110	7	0
// OP_CALL2	5373	0	0
// OP_STORE_V	1	5656	0
// OP_LOAD_V	28	105	5669
// OP_ADD_V	5669	5640	5672
// OP_MUL_VF	59	218	5675
// OP_ADD_V	5672	5675	5678
// OP_STORE_V	5678	4	0
// OP_STORE_V	5656	7	0
// OP_CALL2	5297	0	0
// OP_LOAD_V	28	105	5681
// OP_ADD_V	5681	5640	5684
// OP_MUL_VF	59	218	5687
// OP_ADD_V	5684	5687	5690
// OP_STORE_V	5690	4	0
// OP_STORE_V	5656	7	0
// OP_CALL2	5297	0	0
// OP_STORE_V	5693	4	0
// OP_STORE_V	5656	7	0
// OP_STORE_V	5694	10	0
// OP_CALL3	5571	0	0
// OP_DONE	0	0	0
void () W_FireSuperShotgun = 
{
    local vector dir;
    
    if(self.currentammo == TRUE)
    {
        W_FireShotgun();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/shotgn2.wav", TRUE, ATTN_NORM);
    CreateBotSound(self, self.origin, TRUE, BOTSOUND_FIRE);
    self.punchangle_x = CONTENT_SLIME;
    self.currentammo = self.ammo_shells = self.ammo_shells - FL_SWIM;
    dir = aim_obot(self, 100000);
    EjectShell_spawn((self.origin + '0 0 12') + (v_forward * FL_INWATER), dir);
    EjectShell_spawn((self.origin + '0 0 12') + (v_forward * FL_INWATER), dir);
    FireBullets(14, dir, '0.14 0.08 0');
};


// s_explode1
// function begins at statement 6777, parm_start=5698
// OP_STATE	213	5698	0
// OP_DONE	0	0	0
void () s_explode1 = [0, s_explode2]
{
};


// s_explode2
// function begins at statement 6779, parm_start=5699
// OP_STATE	214	5699	0
// OP_DONE	0	0	0
void () s_explode2 = [1, s_explode3]
{
};


// s_explode3
// function begins at statement 6781, parm_start=5700
// OP_STATE	216	5700	0
// OP_DONE	0	0	0
void () s_explode3 = [2, s_explode4]
{
};


// s_explode4
// function begins at statement 6783, parm_start=5701
// OP_STATE	228	5701	0
// OP_DONE	0	0	0
void () s_explode4 = [3, s_explode5]
{
};


// s_explode5
// function begins at statement 6785, parm_start=5702
// OP_STATE	229	5702	0
// OP_DONE	0	0	0
void () s_explode5 = [4, s_explode6]
{
};


// s_explode6
// function begins at statement 6787, parm_start=5703
// OP_STATE	230	521	0
// OP_DONE	0	0	0
void () s_explode6 = [5, SUB_Remove]
{
};


// BecomeExplosion
// function begins at statement 6789, parm_start=5704
// OP_ADDRESS	28	103	5704
// OP_STOREP_F	227	5704	0
// OP_ADDRESS	28	113	5705
// OP_STOREP_V	286	5705	0
// OP_ADDRESS	28	146	5708
// OP_STOREP_FNC	519	5708	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5709	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	104	5710
// OP_STOREP_F	237	5710	0
// OP_CALL0	5697	0	0
// OP_DONE	0	0	0
void () BecomeExplosion = 
{
    self.movetype = MOVETYPE_NONE;
    self.velocity = VEC_ORIGIN;
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};


// T_MissileTouch
// function begins at statement 6802, parm_start=5711
// OP_LOAD_ENT	28	201	5712
// OP_EQ_E	29	5712	5713
// OP_IFNOT	5713	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	5714
// OP_STORE_V	5714	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	281	5717
// OP_IFNOT	5717	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	2323	5718
// OP_ADD_F	1997	5718	5719
// OP_STORE_F	5719	5711	0
// OP_LOAD_F	29	152	5720
// OP_IFNOT	5720	12	0
// OP_LOAD_S	29	129	5721
// OP_EQ_S	5721	3661	5722
// OP_IFNOT	5722	3	0
// OP_MUL_F	5711	539	5723
// OP_STORE_F	5723	5711	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	5724
// OP_STORE_V	5724	10	0
// OP_STORE_V	5711	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	5725
// OP_STORE_V	5725	7	0
// OP_STORE_V	3584	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	4216	0	0
// OP_LOAD_ENT	28	201	5726
// OP_STORE_V	5726	4	0
// OP_LOAD_V	28	105	5727
// OP_STORE_V	5727	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	105	5730
// OP_LOAD_V	28	105	5733
// OP_LOAD_V	28	113	5736
// OP_STORE_V	5736	4	0
// OP_CALL1	459	0	0
// OP_MUL_FV	217	1	5739
// OP_SUB_V	5733	5739	5742
// OP_STOREP_V	5742	5730	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	5745
// OP_STORE_V	5745	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	5746
// OP_STORE_V	5746	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	5747
// OP_STORE_V	5747	7	0
// OP_CALL2	500	0	0
// OP_CALL0	5703	0	0
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
            damg = damg * RA_PLAYERSTATTIME;
        }
        
        T_Damage(other, self, self.owner, damg);
    }
    
    T_RadiusDamage(self, self.owner, 120, other);
    CreateBotSound(self.owner, self.origin, TRUE, BOTSOUND_FIRE);
    self.origin = self.origin - (FL_CLIENT * normalize(self.velocity));
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};


// W_FireRocket
// function begins at statement 6872, parm_start=5749
// OP_ADDRESS	28	157	5751
// OP_ADDRESS	28	160	5752
// OP_LOAD_F	28	160	5753
// OP_SUB_F	5753	214	5754
// OP_STOREP_F	5754	5752	0
// OP_STOREP_F	5754	5751	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5360	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5755
// OP_STORE_V	5755	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	126	5758
// OP_STOREP_F	277	5758	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5749	0
// OP_ADDRESS	5749	201	5759
// OP_STOREP_ENT	28	5759	0
// OP_ADDRESS	5749	103	5760
// OP_STOREP_F	234	5760	0
// OP_ADDRESS	5749	104	5761
// OP_STOREP_F	239	5761	0
// OP_ADDRESS	5749	129	5762
// OP_STOREP_S	5763	5762	0
// OP_LOAD_V	28	175	5764
// OP_STORE_V	5764	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	5749	113	5767
// OP_STORE_V	28	4	0
// OP_STORE_V	1663	7	0
// OP_CALL2	5373	0	0
// OP_STOREP_V	1	5767	0
// OP_ADDRESS	5749	113	5770
// OP_LOAD_V	5749	113	5773
// OP_MUL_VF	5773	1663	5776
// OP_STOREP_V	5776	5770	0
// OP_ADDRESS	5749	117	5779
// OP_LOAD_V	5749	113	5782
// OP_STORE_V	5782	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	5779	0
// OP_ADDRESS	5749	146	5785
// OP_STOREP_FNC	3922	5785	0
// OP_ADDRESS	5749	150	5786
// OP_ADD_F	31	230	5787
// OP_STOREP_F	5787	5786	0
// OP_ADDRESS	5749	148	5788
// OP_STOREP_FNC	521	5788	0
// OP_STORE_V	5749	4	0
// OP_STORE_V	5789	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5749	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	5749	4	0
// OP_LOAD_V	28	105	5790
// OP_MUL_VF	59	217	5793
// OP_ADD_V	5790	5793	5796
// OP_ADD_V	5796	5392	5799
// OP_STORE_V	5799	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void () W_FireRocket = 
{
    local entity missile;
    local entity mpuff;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - TRUE;
    sound(self, CHAN_WEAPON, "weapons/sgun1.wav", TRUE, ATTN_NORM);
    CreateBotSound(self, self.origin, TRUE, BOTSOUND_FIRE);
    self.punchangle_x = CONTENT_SOLID;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_FLYMISSILE;
    missile.solid = SOLID_BBOX;
    missile.classname = "missile";
    makevectors(self.v_angle);
    missile.velocity = aim_obot(self, 1000);
    missile.velocity = missile.velocity * 1000;
    missile.angles = vectoangles(missile.velocity);
    missile.touch = T_MissileTouch;
    missile.nextthink = time + MOVETYPE_FLY;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/missile.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, (self.origin + (v_forward * FL_CLIENT)) + '0 0 16');
};


// LightningDamage
// function begins at statement 6941, parm_start=5803
// OP_SUB_V	5806	5803	5816
// OP_STORE_V	5816	5813	0
// OP_STORE_V	5813	4	0
// OP_CALL1	459	0	0
// OP_SUB_F	213	5814	5819
// OP_STORE_F	5819	5813	0
// OP_STORE_F	5813	5814	0
// OP_STORE_F	213	5815	0
// OP_MUL_VF	5813	218	5820
// OP_STORE_V	5820	5813	0
// OP_STORE_ENT	30	5811	0
// OP_STORE_ENT	30	5812	0
// OP_STORE_V	5803	4	0
// OP_STORE_V	5806	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LOAD_F	78	163	5823
// OP_IFNOT	5823	28	0
// OP_STORE_V	71	4	0
// OP_STORE_V	5824	7	0
// OP_STORE_V	5827	10	0
// OP_MUL_F	5810	229	5828
// OP_STORE_V	5828	13	0
// OP_CALL4	493	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	5809	7	0
// OP_STORE_V	5809	10	0
// OP_STORE_V	5810	13	0
// OP_CALL4	522	0	0
// OP_LOAD_S	28	129	5829
// OP_EQ_S	5829	1236	5830
// OP_LOAD_S	28	129	5831
// OP_EQ_S	5831	1241	5832
// OP_OR	5830	5832	5833
// OP_IFNOT	5833	11	0
// OP_LOAD_S	29	129	5834
// OP_EQ_S	5834	1236	5835
// OP_LOAD_S	29	129	5836
// OP_EQ_S	5836	1241	5837
// OP_OR	5835	5837	5838
// OP_IFNOT	5838	5	0
// OP_ADDRESS	78	116	5839
// OP_LOAD_F	78	116	5840
// OP_ADD_F	5840	5347	5841
// OP_STOREP_F	5841	5839	0
// OP_STORE_ENT	78	5811	0
// OP_ADD_V	5803	5813	5842
// OP_STORE_V	5842	4	0
// OP_ADD_V	5806	5813	5845
// OP_STORE_V	5845	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_NE_E	78	5811	5848
// OP_LOAD_F	78	163	5849
// OP_AND	5848	5849	5850
// OP_IFNOT	5850	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	5824	7	0
// OP_STORE_V	5827	10	0
// OP_MUL_F	5810	229	5851
// OP_STORE_V	5851	13	0
// OP_CALL4	493	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	5809	7	0
// OP_STORE_V	5809	10	0
// OP_STORE_V	5810	13	0
// OP_CALL4	522	0	0
// OP_STORE_ENT	78	5812	0
// OP_SUB_V	5803	5813	5852
// OP_STORE_V	5852	4	0
// OP_SUB_V	5806	5813	5855
// OP_STORE_V	5855	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_NE_E	78	5811	5858
// OP_NE_E	78	5812	5859
// OP_AND	5858	5859	5860
// OP_LOAD_F	78	163	5861
// OP_AND	5860	5861	5862
// OP_IFNOT	5862	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	5824	7	0
// OP_STORE_V	5827	10	0
// OP_MUL_F	5810	229	5863
// OP_STORE_V	5863	13	0
// OP_CALL4	493	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	5809	7	0
// OP_STORE_V	5809	10	0
// OP_STORE_V	5810	13	0
// OP_CALL4	522	0	0
// OP_DONE	0	0	0
void (vector p1, vector p2, entity from, float damage) LightningDamage = 
{
    local entity e1;
    local entity e2;
    local vector f;
    f = p2 - p1;
    normalize(f);
    f_x = FALSE - f_y;
    f_y = f_x;
    f_z = FALSE;
    f = f * FL_INWATER;
    e2 = e1 = world;
    traceline(p1, p2, FALSE, self);
    
    if(trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * MOVETYPE_STEP);
        T_Damage(trace_ent, from, from, damage);
        
        if((self.classname == "player") || (self.classname == "bot"))
        {
            
            if((other.classname == "player") || (other.classname == "bot"))
            {
                trace_ent.velocity_z = trace_ent.velocity_z + 400;
            }
            
        }
        
    }
    
    e1 = trace_ent;
    traceline(p1 + f, p2 + f, FALSE, self);
    
    if((trace_ent != e1) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * MOVETYPE_STEP);
        T_Damage(trace_ent, from, from, damage);
    }
    
    e2 = trace_ent;
    traceline(p1 - f, p2 - f, FALSE, self);
    
    if(((trace_ent != e1) && (trace_ent != e2)) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * MOVETYPE_STEP);
        T_Damage(trace_ent, from, from, damage);
    }
    
};


// W_FireLightning
// function begins at statement 7036, parm_start=5865
// OP_LOAD_F	28	161	5869
// OP_LT	5869	214	5870
// OP_IFNOT	5870	6	0
// OP_ADDRESS	28	154	5871
// OP_CALL0	4567	0	0
// OP_STOREP_F	1	5871	0
// OP_CALL0	4295	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	5872
// OP_GT	5872	214	5873
// OP_IFNOT	5873	18	0
// OP_BITAND	821	767	5874
// OP_IFNOT	5874	4	0
// OP_ADDRESS	28	161	5875
// OP_STOREP_F	213	5875	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	161	5876
// OP_STORE_F	5876	5868	0
// OP_ADDRESS	28	161	5877
// OP_STOREP_F	213	5877	0
// OP_CALL0	4295	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_MUL_F	5878	5868	5879
// OP_STORE_V	5879	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	4216	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	405	5880
// OP_LT	5880	31	5881
// OP_IFNOT	5881	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5882	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5883
// OP_STORE_V	5883	7	0
// OP_STORE_V	3036	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	405	5886
// OP_ADD_F	31	4474	5887
// OP_STOREP_F	5887	5886	0
// OP_ADDRESS	28	126	5888
// OP_STOREP_F	277	5888	0
// OP_ADDRESS	28	157	5889
// OP_ADDRESS	28	161	5890
// OP_LOAD_F	28	161	5891
// OP_SUB_F	5891	214	5892
// OP_STOREP_F	5892	5890	0
// OP_STOREP_F	5892	5889	0
// OP_LOAD_V	28	105	5893
// OP_ADD_V	5893	5392	5896
// OP_STORE_V	5896	5865	0
// OP_STORE_V	5865	4	0
// OP_MUL_VF	59	740	5899
// OP_ADD_V	5865	5899	5902
// OP_STORE_V	5902	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	319	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	503	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5865	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5866	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5867	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	500	0	0
// OP_LOAD_V	28	105	5905
// OP_STORE_V	5905	4	0
// OP_MUL_VF	59	229	5908
// OP_ADD_V	71	5908	5911
// OP_STORE_V	5911	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	309	13	0
// OP_CALL4	5802	0	0
// OP_DONE	0	0	0
void () W_FireLightning = 
{
    local vector org;
    local float cells;
    
    if(self.ammo_cells < TRUE)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    
    if(self.waterlevel > TRUE)
    {
        
        if(globaldef000804 & OBOT_ROCKETARENA)
        {
            self.ammo_cells = FALSE;
            return;
        }
        
        cells = self.ammo_cells;
        self.ammo_cells = FALSE;
        W_SetCurrentAmmo();
        T_RadiusDamage(self, self, 35 * cells, world);
        return;
    }
    
    
    if(self.t_width < time)
    {
        sound(self, CHAN_WEAPON, "weapons/lhit.wav", TRUE, ATTN_NORM);
        CreateBotSound(self, self.origin, 0.1, BOTSOUND_FIRE);
        self.t_width = time + 0.6;
    }
    
    self.punchangle_x = CONTENT_SOLID;
    self.currentammo = self.ammo_cells = self.ammo_cells - TRUE;
    org = self.origin + '0 0 16';
    traceline(org, org + (v_forward * GLOBALDEF723_600), TRUE, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING2);
    WriteEntity(MSG_BROADCAST, self);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, org_y);
    WriteCoord(MSG_BROADCAST, org_z);
    WriteCoord(MSG_BROADCAST, trace_endpos_x);
    WriteCoord(MSG_BROADCAST, trace_endpos_y);
    WriteCoord(MSG_BROADCAST, trace_endpos_z);
    LightningDamage(self.origin, trace_endpos + (v_forward * MOVETYPE_STEP), self, SVC_INTERMISSION);
};


// GrenadeExplode
// function begins at statement 7136, parm_start=5915
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	5915
// OP_STORE_V	5915	7	0
// OP_STORE_V	3584	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	4216	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	5916
// OP_STORE_V	5916	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	5917
// OP_STORE_V	5917	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	5918
// OP_STORE_V	5918	7	0
// OP_CALL2	500	0	0
// OP_CALL0	5703	0	0
// OP_DONE	0	0	0
void () GrenadeExplode = 
{
    T_RadiusDamage(self, self.owner, 120, world);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};


// GrenadeTouch
// function begins at statement 7162, parm_start=5920
// OP_LOAD_ENT	28	201	5920
// OP_EQ_E	29	5920	5921
// OP_IFNOT	5921	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	5922
// OP_EQ_F	5922	252	5923
// OP_IFNOT	5923	3	0
// OP_CALL0	5914	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5368	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	113	5924
// OP_EQ_V	5924	286	5927
// OP_IFNOT	5927	3	0
// OP_ADDRESS	28	121	5928
// OP_STOREP_V	286	5928	0
// OP_DONE	0	0	0
void () GrenadeTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage == DAMAGE_AIM)
    {
        GrenadeExplode();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/bounce.wav", TRUE, ATTN_NORM);
    
    if(self.velocity == VEC_ORIGIN)
    {
        self.avelocity = VEC_ORIGIN;
    }
    
};


// W_FireGrenade
// function begins at statement 7183, parm_start=5932
// OP_ADDRESS	28	157	5934
// OP_ADDRESS	28	160	5935
// OP_LOAD_F	28	160	5936
// OP_SUB_F	5936	214	5937
// OP_STOREP_F	5937	5935	0
// OP_STOREP_F	5937	5934	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5367	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5938
// OP_STORE_V	5938	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	126	5941
// OP_STOREP_F	277	5941	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5932	0
// OP_ADDRESS	5932	201	5942
// OP_STOREP_ENT	28	5942	0
// OP_ADDRESS	5932	103	5943
// OP_STOREP_F	235	5943	0
// OP_ADDRESS	5932	104	5944
// OP_STOREP_F	239	5944	0
// OP_ADDRESS	5932	129	5945
// OP_STOREP_S	5946	5945	0
// OP_LOAD_V	28	175	5947
// OP_STORE_V	5947	4	0
// OP_CALL1	452	0	0
// OP_LOAD_F	28	176	5950
// OP_IFNOT	5950	15	0
// OP_ADDRESS	5932	113	5951
// OP_MUL_VF	59	740	5954
// OP_MUL_VF	62	2044	5957
// OP_ADD_V	5954	5957	5960
// OP_CALL0	5370	0	0
// OP_MUL_FV	1	65	5963
// OP_MUL_VF	5963	235	5966
// OP_ADD_V	5960	5966	5969
// OP_CALL0	5370	0	0
// OP_MUL_FV	1	62	5972
// OP_MUL_VF	5972	235	5975
// OP_ADD_V	5969	5975	5978
// OP_STOREP_V	5978	5951	0
// OP_GOTO	12	0	0
// OP_ADDRESS	5932	113	5981
// OP_STORE_V	28	4	0
// OP_STORE_V	5984	7	0
// OP_CALL2	5373	0	0
// OP_STOREP_V	1	5981	0
// OP_ADDRESS	5932	113	5985
// OP_LOAD_V	5932	113	5988
// OP_MUL_VF	5988	740	5991
// OP_STOREP_V	5991	5985	0
// OP_ADDRESS	5932	116	5994
// OP_STOREP_F	2044	5994	0
// OP_ADDRESS	5932	121	5995
// OP_STOREP_V	5998	5995	0
// OP_ADDRESS	5932	117	6001
// OP_LOAD_V	5932	113	6004
// OP_STORE_V	6004	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	6001	0
// OP_ADDRESS	5932	146	6007
// OP_STOREP_FNC	5919	6007	0
// OP_ADDRESS	5932	150	6008
// OP_ADD_F	31	6009	6010
// OP_STOREP_F	6010	6008	0
// OP_ADDRESS	5932	148	6011
// OP_STOREP_FNC	5914	6011	0
// OP_STORE_V	5932	4	0
// OP_STORE_V	6012	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5932	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	5932	4	0
// OP_LOAD_V	28	105	6013
// OP_STORE_V	6013	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void () W_FireGrenade = 
{
    local entity missile;
    local entity mpuff;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - TRUE;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", TRUE, ATTN_NORM);
    CreateBotSound(self, self.origin, TRUE, BOTSOUND_FIRE);
    self.punchangle_x = CONTENT_SOLID;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "grenade";
    makevectors(self.v_angle);
    if(self.v_angle_x)
    {
        missile.velocity = (((v_forward * GLOBALDEF723_600) + (v_up * 200)) + ((crandom() * v_right) * MOVETYPE_BOUNCE)) + ((crandom() * v_up) * MOVETYPE_BOUNCE);
    }
    else
    {
        missile.velocity = aim_obot(self, 10000);
        missile.velocity = missile.velocity * GLOBALDEF723_600;
        missile.velocity_z = 200;
    }
    
    missile.avelocity = '300 300 300';
    missile.angles = vectoangles(missile.velocity);
    missile.touch = GrenadeTouch;
    missile.nextthink = time + 2.5;
    missile.think = GrenadeExplode;
    setmodel(missile, "progs/grenade.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, self.origin);
};

void () spike_touch;
void () superspike_touch;

// launch_spike
// function begins at statement 7269, parm_start=6019
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	350	0
// OP_ADDRESS	350	201	6025
// OP_STOREP_ENT	28	6025	0
// OP_ADDRESS	350	103	6026
// OP_STOREP_F	234	6026	0
// OP_ADDRESS	350	104	6027
// OP_STOREP_F	239	6027	0
// OP_ADDRESS	350	117	6028
// OP_STORE_V	6022	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	6028	0
// OP_ADDRESS	350	146	6031
// OP_STOREP_FNC	6016	6031	0
// OP_ADDRESS	350	129	6032
// OP_STOREP_S	6033	6032	0
// OP_ADDRESS	350	148	6034
// OP_STOREP_FNC	521	6034	0
// OP_ADDRESS	350	150	6035
// OP_ADD_F	31	231	6036
// OP_STOREP_F	6036	6035	0
// OP_STORE_V	350	4	0
// OP_STORE_V	6037	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	6019	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	350	113	6038
// OP_MUL_VF	6022	1663	6041
// OP_STOREP_V	6041	6038	0
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
    newmis.nextthink = time + MOVETYPE_TOSS;
    setmodel(newmis, "progs/spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, org);
    newmis.velocity = dir * 1000;
};


// W_FireSuperSpikes
// function begins at statement 7304, parm_start=6045
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5365	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6049
// OP_STORE_V	6049	7	0
// OP_STORE_V	3036	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	157	6052
// OP_ADDRESS	28	159	6053
// OP_LOAD_F	28	159	6054
// OP_SUB_F	6054	216	6055
// OP_STOREP_F	6055	6053	0
// OP_STOREP_F	6055	6052	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1663	7	0
// OP_CALL2	5373	0	0
// OP_STORE_V	1	6045	0
// OP_LOAD_V	28	105	6056
// OP_ADD_V	6056	5392	6059
// OP_STORE_V	6059	4	0
// OP_STORE_V	6045	7	0
// OP_CALL2	6018	0	0
// OP_ADDRESS	350	146	6062
// OP_STOREP_FNC	6017	6062	0
// OP_STORE_V	350	4	0
// OP_STORE_V	6063	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	126	6064
// OP_STOREP_F	277	6064	0
// OP_DONE	0	0	0
void () W_FireSuperSpikes = 
{
    local vector dir;
    local entity old;
    sound(self, CHAN_WEAPON, "weapons/spike2.wav", TRUE, ATTN_NORM);
    CreateBotSound(self, self.origin, 0.1, BOTSOUND_FIRE);
    self.currentammo = self.ammo_nails = self.ammo_nails - FL_SWIM;
    dir = aim_obot(self, 1000);
    launch_spike(self.origin + '0 0 16', dir);
    newmis.touch = superspike_touch;
    setmodel(newmis, "progs/s_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    self.punchangle_x = CONTENT_SOLID;
};


// W_FireSpikes
// function begins at statement 7343, parm_start=6066
// OP_LOAD_V	28	175	6071
// OP_STORE_V	6071	4	0
// OP_CALL1	452	0	0
// OP_LOAD_F	28	159	6074
// OP_GE	6074	216	6075
// OP_LOAD_F	28	154	6076
// OP_EQ_F	6076	257	6077
// OP_AND	6075	6077	6078
// OP_IFNOT	6078	3	0
// OP_CALL0	6044	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	159	6079
// OP_LT	6079	214	6080
// OP_IFNOT	6080	6	0
// OP_ADDRESS	28	154	6081
// OP_CALL0	4567	0	0
// OP_STOREP_F	1	6081	0
// OP_CALL0	4295	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5359	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	6082
// OP_STORE_V	6082	7	0
// OP_STORE_V	3036	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_ADDRESS	28	157	6085
// OP_ADDRESS	28	159	6086
// OP_LOAD_F	28	159	6087
// OP_SUB_F	6087	214	6088
// OP_STOREP_F	6088	6086	0
// OP_STOREP_F	6088	6085	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1663	7	0
// OP_CALL2	5373	0	0
// OP_STORE_V	1	6067	0
// OP_LOAD_V	28	105	6089
// OP_ADD_V	6089	5392	6092
// OP_MUL_VF	65	6066	6095
// OP_ADD_V	6092	6095	6098
// OP_STORE_V	6098	4	0
// OP_STORE_V	6067	7	0
// OP_CALL2	6018	0	0
// OP_ADDRESS	28	126	6101
// OP_STOREP_F	277	6101	0
// OP_DONE	0	0	0
void (float globaldef002210) W_FireSpikes = 
{
    local vector dir;
    local entity old;
    makevectors(self.v_angle);
    
    if((self.ammo_nails >= FL_SWIM) && (self.weapon == IT_SUPER_NAILGUN))
    {
        W_FireSuperSpikes();
        return;
    }
    
    
    if(self.ammo_nails < TRUE)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/rocket1i.wav", TRUE, ATTN_NORM);
    CreateBotSound(self, self.origin, 0.1, BOTSOUND_FIRE);
    self.currentammo = self.ammo_nails = self.ammo_nails - TRUE;
    dir = aim_obot(self, 1000);
    launch_spike((self.origin + '0 0 16') + (v_right * globaldef002210), dir);
    self.punchangle_x = CONTENT_SOLID;
};

.float hit_z;

// spike_touch
// function begins at statement 7394, parm_start=6103
// OP_LOAD_ENT	28	201	6104
// OP_EQ_E	29	6104	6105
// OP_IFNOT	6105	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	6106
// OP_EQ_F	6106	238	6107
// OP_IFNOT	6107	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	6108
// OP_STORE_V	6108	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	281	6111
// OP_IFNOT	6111	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	6112
// OP_IFNOT	6112	10	0
// OP_STORE_V	234	4	0
// OP_CALL1	5489	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	6113
// OP_STORE_V	6113	10	0
// OP_STORE_V	234	13	0
// OP_CALL4	522	0	0
// OP_GOTO	33	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_LOAD_S	28	129	6114
// OP_EQ_S	6114	6115	6116
// OP_IFNOT	6116	5	0
// OP_STORE_V	342	4	0
// OP_STORE_V	320	7	0
// OP_CALL2	496	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	28	129	6117
// OP_EQ_S	6117	6118	6119
// OP_IFNOT	6119	5	0
// OP_STORE_V	342	4	0
// OP_STORE_V	321	7	0
// OP_CALL2	496	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	313	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	6120
// OP_STORE_V	6120	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	6121
// OP_STORE_V	6121	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	6122
// OP_STORE_V	6122	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () spike_touch = 
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
        spawn_touchblood(MOVETYPE_FLYMISSILE);
        T_Damage(other, self, self.owner, MOVETYPE_FLYMISSILE);
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
// function begins at statement 7456, parm_start=6123
// OP_LOAD_ENT	28	201	6124
// OP_EQ_E	29	6124	6125
// OP_IFNOT	6125	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	6126
// OP_EQ_F	6126	238	6127
// OP_IFNOT	6127	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	6128
// OP_STORE_V	6128	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	281	6131
// OP_IFNOT	6131	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	6132
// OP_IFNOT	6132	10	0
// OP_STORE_V	6133	4	0
// OP_CALL1	5489	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	6134
// OP_STORE_V	6134	10	0
// OP_STORE_V	6133	13	0
// OP_CALL4	522	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	314	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	6135
// OP_STORE_V	6135	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	6136
// OP_STORE_V	6136	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	6137
// OP_STORE_V	6137	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
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
// function begins at statement 7504, parm_start=6138
// OP_LOAD_S	28	129	6138
// OP_EQ_S	6138	1236	6139
// OP_IFNOT	6139	2	0
// OP_CALL0	5354	0	0
// OP_ADDRESS	28	162	6140
// OP_LOAD_F	28	162	6141
// OP_LOAD_F	28	162	6142
// OP_BITOR	262	263	6143
// OP_BITOR	6143	264	6144
// OP_BITOR	6144	265	6145
// OP_BITAND	6142	6145	6146
// OP_SUB_F	6141	6146	6147
// OP_STOREP_F	6147	6140	0
// OP_LOAD_F	28	154	6148
// OP_EQ_F	6148	253	6149
// OP_IFNOT	6149	8	0
// OP_ADDRESS	28	157	6150
// OP_STOREP_F	213	6150	0
// OP_ADDRESS	28	155	6151
// OP_STOREP_S	6152	6151	0
// OP_ADDRESS	28	156	6153
// OP_STOREP_F	213	6153	0
// OP_GOTO	112	0	0
// OP_LOAD_F	28	154	6154
// OP_EQ_F	6154	254	6155
// OP_IFNOT	6155	13	0
// OP_ADDRESS	28	157	6156
// OP_LOAD_F	28	158	6157
// OP_STOREP_F	6157	6156	0
// OP_ADDRESS	28	155	6158
// OP_STOREP_S	6159	6158	0
// OP_ADDRESS	28	156	6160
// OP_STOREP_F	213	6160	0
// OP_ADDRESS	28	162	6161
// OP_LOAD_F	28	162	6162
// OP_BITOR	6162	262	6163
// OP_STOREP_F	6163	6161	0
// OP_GOTO	97	0	0
// OP_LOAD_F	28	154	6164
// OP_EQ_F	6164	255	6165
// OP_IFNOT	6165	13	0
// OP_ADDRESS	28	157	6166
// OP_LOAD_F	28	158	6167
// OP_STOREP_F	6167	6166	0
// OP_ADDRESS	28	155	6168
// OP_STOREP_S	6169	6168	0
// OP_ADDRESS	28	156	6170
// OP_STOREP_F	213	6170	0
// OP_ADDRESS	28	162	6171
// OP_LOAD_F	28	162	6172
// OP_BITOR	6172	262	6173
// OP_STOREP_F	6173	6171	0
// OP_GOTO	82	0	0
// OP_LOAD_F	28	154	6174
// OP_EQ_F	6174	256	6175
// OP_IFNOT	6175	13	0
// OP_ADDRESS	28	157	6176
// OP_LOAD_F	28	159	6177
// OP_STOREP_F	6177	6176	0
// OP_ADDRESS	28	155	6178
// OP_STOREP_S	6179	6178	0
// OP_ADDRESS	28	156	6180
// OP_STOREP_F	213	6180	0
// OP_ADDRESS	28	162	6181
// OP_LOAD_F	28	162	6182
// OP_BITOR	6182	263	6183
// OP_STOREP_F	6183	6181	0
// OP_GOTO	67	0	0
// OP_LOAD_F	28	154	6184
// OP_EQ_F	6184	257	6185
// OP_IFNOT	6185	13	0
// OP_ADDRESS	28	157	6186
// OP_LOAD_F	28	159	6187
// OP_STOREP_F	6187	6186	0
// OP_ADDRESS	28	155	6188
// OP_STOREP_S	6189	6188	0
// OP_ADDRESS	28	156	6190
// OP_STOREP_F	213	6190	0
// OP_ADDRESS	28	162	6191
// OP_LOAD_F	28	162	6192
// OP_BITOR	6192	263	6193
// OP_STOREP_F	6193	6191	0
// OP_GOTO	52	0	0
// OP_LOAD_F	28	154	6194
// OP_EQ_F	6194	258	6195
// OP_IFNOT	6195	13	0
// OP_ADDRESS	28	157	6196
// OP_LOAD_F	28	160	6197
// OP_STOREP_F	6197	6196	0
// OP_ADDRESS	28	155	6198
// OP_STOREP_S	6199	6198	0
// OP_ADDRESS	28	156	6200
// OP_STOREP_F	213	6200	0
// OP_ADDRESS	28	162	6201
// OP_LOAD_F	28	162	6202
// OP_BITOR	6202	264	6203
// OP_STOREP_F	6203	6201	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	6204
// OP_EQ_F	6204	259	6205
// OP_IFNOT	6205	13	0
// OP_ADDRESS	28	157	6206
// OP_LOAD_F	28	160	6207
// OP_STOREP_F	6207	6206	0
// OP_ADDRESS	28	155	6208
// OP_STOREP_S	6209	6208	0
// OP_ADDRESS	28	156	6210
// OP_STOREP_F	213	6210	0
// OP_ADDRESS	28	162	6211
// OP_LOAD_F	28	162	6212
// OP_BITOR	6212	264	6213
// OP_STOREP_F	6213	6211	0
// OP_GOTO	22	0	0
// OP_LOAD_F	28	154	6214
// OP_EQ_F	6214	260	6215
// OP_IFNOT	6215	13	0
// OP_ADDRESS	28	157	6216
// OP_LOAD_F	28	161	6217
// OP_STOREP_F	6217	6216	0
// OP_ADDRESS	28	155	6218
// OP_STOREP_S	6219	6218	0
// OP_ADDRESS	28	156	6220
// OP_STOREP_F	213	6220	0
// OP_ADDRESS	28	162	6221
// OP_LOAD_F	28	162	6222
// OP_BITOR	6222	265	6223
// OP_STOREP_F	6223	6221	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	157	6224
// OP_STOREP_F	213	6224	0
// OP_ADDRESS	28	155	6225
// OP_STOREP_S	3002	6225	0
// OP_ADDRESS	28	156	6226
// OP_STOREP_F	213	6226	0
// OP_DONE	0	0	0
void () W_SetCurrentAmmo = 
{
    
    if(self.classname == "player")
    {
        player_run();
    }
    
    self.items = self.items - (self.items & (((IT_SHELLS | IT_NAILS) | IT_ROCKETS) | IT_CELLS));
    if(self.weapon == IT_AXE)
    {
        self.currentammo = FALSE;
        self.weaponmodel = "progs/v_axe.mdl";
        self.weaponframe = FALSE;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            self.currentammo = self.ammo_shells;
            self.weaponmodel = "progs/v_shot.mdl";
            self.weaponframe = FALSE;
            self.items = self.items | IT_SHELLS;
        }
        else
        {
            if(self.weapon == IT_SUPER_SHOTGUN)
            {
                self.currentammo = self.ammo_shells;
                self.weaponmodel = "progs/v_shot2.mdl";
                self.weaponframe = FALSE;
                self.items = self.items | IT_SHELLS;
            }
            else
            {
                if(self.weapon == IT_NAILGUN)
                {
                    self.currentammo = self.ammo_nails;
                    self.weaponmodel = "progs/v_nail.mdl";
                    self.weaponframe = FALSE;
                    self.items = self.items | IT_NAILS;
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.currentammo = self.ammo_nails;
                        self.weaponmodel = "progs/v_nail2.mdl";
                        self.weaponframe = FALSE;
                        self.items = self.items | IT_NAILS;
                    }
                    else
                    {
                        if(self.weapon == IT_GRENADE_LAUNCHER)
                        {
                            self.currentammo = self.ammo_rockets;
                            self.weaponmodel = "progs/v_rock.mdl";
                            self.weaponframe = FALSE;
                            self.items = self.items | IT_ROCKETS;
                        }
                        else
                        {
                            if(self.weapon == IT_ROCKET_LAUNCHER)
                            {
                                self.currentammo = self.ammo_rockets;
                                self.weaponmodel = "progs/v_rock2.mdl";
                                self.weaponframe = FALSE;
                                self.items = self.items | IT_ROCKETS;
                            }
                            else
                            {
                                if(self.weapon == IT_LIGHTNING)
                                {
                                    self.currentammo = self.ammo_cells;
                                    self.weaponmodel = "progs/v_light.mdl";
                                    self.weaponframe = FALSE;
                                    self.items = self.items | IT_CELLS;
                                }
                                else
                                {
                                    self.currentammo = FALSE;
                                    self.weaponmodel = "";
                                    self.weaponframe = FALSE;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// W_BestWeapon
// function begins at statement 7639, parm_start=6227
// OP_LOAD_F	28	162	6228
// OP_STORE_F	6228	6227	0
// OP_LOAD_F	28	189	6229
// OP_LE	6229	214	6230
// OP_LOAD_F	28	161	6231
// OP_GE	6231	214	6232
// OP_AND	6230	6232	6233
// OP_BITAND	6227	260	6234
// OP_AND	6233	6234	6235
// OP_IFNOT	6235	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	28	159	6236
// OP_GE	6236	216	6237
// OP_BITAND	6227	257	6238
// OP_AND	6237	6238	6239
// OP_IFNOT	6239	2	0
// OP_RETURN	257	0	0
// OP_LOAD_F	28	158	6240
// OP_GE	6240	216	6241
// OP_BITAND	6227	255	6242
// OP_AND	6241	6242	6243
// OP_IFNOT	6243	2	0
// OP_RETURN	255	0	0
// OP_LOAD_F	28	159	6244
// OP_GE	6244	214	6245
// OP_BITAND	6227	256	6246
// OP_AND	6245	6246	6247
// OP_IFNOT	6247	2	0
// OP_RETURN	256	0	0
// OP_LOAD_F	28	158	6248
// OP_GE	6248	214	6249
// OP_BITAND	6227	254	6250
// OP_AND	6249	6250	6251
// OP_IFNOT	6251	2	0
// OP_RETURN	254	0	0
// OP_RETURN	253	0	0
// OP_DONE	0	0	0
float () W_BestWeapon = 
{
    local float it;
    it = self.items;
    
    if(((self.waterlevel <= TRUE) && (self.ammo_cells >= TRUE)) && (it & IT_LIGHTNING))
    {
        return IT_LIGHTNING;
    }
    
    
    if((self.ammo_nails >= FL_SWIM) && (it & IT_SUPER_NAILGUN))
    {
        return IT_SUPER_NAILGUN;
    }
    
    
    if((self.ammo_shells >= FL_SWIM) && (it & IT_SUPER_SHOTGUN))
    {
        return IT_SUPER_SHOTGUN;
    }
    
    
    if((self.ammo_nails >= TRUE) && (it & IT_NAILGUN))
    {
        return IT_NAILGUN;
    }
    
    
    if((self.ammo_shells >= TRUE) && (it & IT_SHOTGUN))
    {
        return IT_SHOTGUN;
    }
    
    return IT_AXE;
};


// W_CheckNoAmmo
// function begins at statement 7676, parm_start=6253
// OP_LOAD_F	28	157	6253
// OP_GT	6253	213	6254
// OP_IFNOT	6254	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	154	6255
// OP_EQ_F	6255	253	6256
// OP_IFNOT	6256	2	0
// OP_RETURN	214	0	0
// OP_ADDRESS	28	154	6257
// OP_CALL0	4567	0	0
// OP_STOREP_F	1	6257	0
// OP_CALL0	4295	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () W_CheckNoAmmo = 
{
    
    if(self.currentammo > FALSE)
    {
        return TRUE;
    }
    
    
    if(self.weapon == IT_AXE)
    {
        return TRUE;
    }
    
    self.weapon = W_BestWeapon();
    W_SetCurrentAmmo();
    return FALSE;
};

void () player_axe1;
void () player_axeb1;
void () player_axec1;
void () player_axed1;
void () player_shot1;
void () player_nail1;
void () player_light1;
void () player_rocket1;

// W_Attack
// function begins at statement 7690, parm_start=6267
// OP_CALL0	6252	0	0
// OP_NOT_F	1	0	6268
// OP_IFNOT	6268	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	175	6269
// OP_STORE_V	6269	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	28	393	6272
// OP_ADD_F	31	214	6273
// OP_STOREP_F	6273	6272	0
// OP_LOAD_F	28	154	6274
// OP_EQ_F	6274	253	6275
// OP_IFNOT	6275	26	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	6276	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	6267	0
// OP_LT	6267	6277	6278
// OP_IFNOT	6278	3	0
// OP_CALL0	6258	0	0
// OP_GOTO	10	0	0
// OP_LT	6267	539	6279
// OP_IFNOT	6279	3	0
// OP_CALL0	6259	0	0
// OP_GOTO	6	0	0
// OP_LT	6267	6280	6281
// OP_IFNOT	6281	3	0
// OP_CALL0	6260	0	0
// OP_GOTO	2	0	0
// OP_CALL0	6261	0	0
// OP_ADDRESS	28	378	6282
// OP_ADD_F	31	539	6283
// OP_STOREP_F	6283	6282	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	6284
// OP_EQ_F	6284	254	6285
// OP_IFNOT	6285	7	0
// OP_CALL0	6262	0	0
// OP_CALL0	5625	0	0
// OP_ADDRESS	28	378	6286
// OP_ADD_F	31	539	6287
// OP_STOREP_F	6287	6286	0
// OP_GOTO	51	0	0
// OP_LOAD_F	28	154	6288
// OP_EQ_F	6288	255	6289
// OP_IFNOT	6289	7	0
// OP_CALL0	6262	0	0
// OP_CALL0	5655	0	0
// OP_ADDRESS	28	378	6290
// OP_ADD_F	31	5599	6291
// OP_STOREP_F	6291	6290	0
// OP_GOTO	42	0	0
// OP_LOAD_F	28	154	6292
// OP_EQ_F	6292	256	6293
// OP_IFNOT	6293	3	0
// OP_CALL0	6263	0	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	6294
// OP_EQ_F	6294	257	6295
// OP_IFNOT	6295	3	0
// OP_CALL0	6263	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	154	6296
// OP_EQ_F	6296	258	6297
// OP_IFNOT	6297	7	0
// OP_CALL0	6265	0	0
// OP_CALL0	5931	0	0
// OP_ADDRESS	28	378	6298
// OP_ADD_F	31	4474	6299
// OP_STOREP_F	6299	6298	0
// OP_GOTO	23	0	0
// OP_LOAD_F	28	154	6300
// OP_EQ_F	6300	259	6301
// OP_IFNOT	6301	7	0
// OP_CALL0	6265	0	0
// OP_CALL0	5748	0	0
// OP_ADDRESS	28	378	6302
// OP_ADD_F	31	4478	6303
// OP_STOREP_F	6303	6302	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	154	6304
// OP_EQ_F	6304	260	6305
// OP_IFNOT	6305	11	0
// OP_CALL0	6264	0	0
// OP_ADDRESS	28	378	6306
// OP_ADD_F	31	3036	6307
// OP_STOREP_F	6307	6306	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	6308	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () W_Attack = 
{
    local float r;
    
    if(!W_CheckNoAmmo())
    {
        return;
    }
    
    makevectors(self.v_angle);
    self.show_hostile = time + TRUE;
    if(self.weapon == IT_AXE)
    {
        sound(self, CHAN_WEAPON, "weapons/ax1.wav", TRUE, ATTN_NORM);
        r = random();
        if(r < 0.25)
        {
            player_axe1();
        }
        else
        {
            if(r < RA_PLAYERSTATTIME)
            {
                player_axeb1();
            }
            else
            {
                if(r < 0.75)
                {
                    player_axec1();
                }
                else
                {
                    player_axed1();
                }
                
            }
            
        }
        
        self.attack_finished = time + RA_PLAYERSTATTIME;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            player_shot1();
            W_FireShotgun();
            self.attack_finished = time + RA_PLAYERSTATTIME;
        }
        else
        {
            if(self.weapon == IT_SUPER_SHOTGUN)
            {
                player_shot1();
                W_FireSuperShotgun();
                self.attack_finished = time + 0.7;
            }
            else
            {
                if(self.weapon == IT_NAILGUN)
                {
                    player_nail1();
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        player_nail1();
                    }
                    else
                    {
                        if(self.weapon == IT_GRENADE_LAUNCHER)
                        {
                            player_rocket1();
                            W_FireGrenade();
                            self.attack_finished = time + 0.6;
                        }
                        else
                        {
                            if(self.weapon == IT_ROCKET_LAUNCHER)
                            {
                                player_rocket1();
                                W_FireRocket();
                                self.attack_finished = time + 0.8;
                            }
                            else
                            {
                                
                                if(self.weapon == IT_LIGHTNING)
                                {
                                    player_light1();
                                    self.attack_finished = time + 0.1;
                                    sound(self, CHAN_AUTO, "weapons/lstart.wav", TRUE, ATTN_NORM);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// W_ChangeWeapon
// function begins at statement 7788, parm_start=6310
// OP_LOAD_F	28	162	6313
// OP_STORE_F	6313	6310	0
// OP_STORE_F	213	6311	0
// OP_LOAD_F	28	173	6314
// OP_EQ_F	6314	214	6315
// OP_IFNOT	6315	3	0
// OP_STORE_F	253	6312	0
// OP_GOTO	63	0	0
// OP_LOAD_F	28	173	6316
// OP_EQ_F	6316	216	6317
// OP_IFNOT	6317	7	0
// OP_STORE_F	254	6312	0
// OP_LOAD_F	28	158	6318
// OP_LT	6318	214	6319
// OP_IFNOT	6319	2	0
// OP_STORE_F	214	6311	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	173	6320
// OP_EQ_F	6320	228	6321
// OP_IFNOT	6321	7	0
// OP_STORE_F	255	6312	0
// OP_LOAD_F	28	158	6322
// OP_LT	6322	216	6323
// OP_IFNOT	6323	2	0
// OP_STORE_F	214	6311	0
// OP_GOTO	45	0	0
// OP_LOAD_F	28	173	6324
// OP_EQ_F	6324	229	6325
// OP_IFNOT	6325	7	0
// OP_STORE_F	256	6312	0
// OP_LOAD_F	28	159	6326
// OP_LT	6326	214	6327
// OP_IFNOT	6327	2	0
// OP_STORE_F	214	6311	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	173	6328
// OP_EQ_F	6328	230	6329
// OP_IFNOT	6329	7	0
// OP_STORE_F	257	6312	0
// OP_LOAD_F	28	159	6330
// OP_LT	6330	216	6331
// OP_IFNOT	6331	2	0
// OP_STORE_F	214	6311	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	6332
// OP_EQ_F	6332	231	6333
// OP_IFNOT	6333	7	0
// OP_STORE_F	258	6312	0
// OP_LOAD_F	28	160	6334
// OP_LT	6334	214	6335
// OP_IFNOT	6335	2	0
// OP_STORE_F	214	6311	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	173	6336
// OP_EQ_F	6336	232	6337
// OP_IFNOT	6337	7	0
// OP_STORE_F	259	6312	0
// OP_LOAD_F	28	160	6338
// OP_LT	6338	214	6339
// OP_IFNOT	6339	2	0
// OP_STORE_F	214	6311	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	173	6340
// OP_EQ_F	6340	217	6341
// OP_IFNOT	6341	6	0
// OP_STORE_F	260	6312	0
// OP_LOAD_F	28	161	6342
// OP_LT	6342	214	6343
// OP_IFNOT	6343	2	0
// OP_STORE_F	214	6311	0
// OP_ADDRESS	28	173	6344
// OP_STOREP_F	213	6344	0
// OP_LOAD_F	28	162	6345
// OP_BITAND	6345	6312	6346
// OP_NOT_F	6346	0	6347
// OP_IFNOT	6347	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6348	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	6311	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6349	7	0
// OP_CALL2	928	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	154	6350
// OP_STOREP_F	6312	6350	0
// OP_CALL0	4295	0	0
// OP_DONE	0	0	0
void () W_ChangeWeapon = 
{
    local float it;
    local float am;
    local float fl;
    it = self.items;
    am = FALSE;
    if(self.impulse == TRUE)
    {
        fl = IT_AXE;
    }
    else
    {
        if(self.impulse == FL_SWIM)
        {
            fl = IT_SHOTGUN;
            
            if(self.ammo_shells < TRUE)
            {
                am = TRUE;
            }
            
        }
        else
        {
            if(self.impulse == MOVETYPE_WALK)
            {
                fl = IT_SUPER_SHOTGUN;
                
                if(self.ammo_shells < FL_SWIM)
                {
                    am = TRUE;
                }
                
            }
            else
            {
                if(self.impulse == MOVETYPE_STEP)
                {
                    fl = IT_NAILGUN;
                    
                    if(self.ammo_nails < TRUE)
                    {
                        am = TRUE;
                    }
                    
                }
                else
                {
                    if(self.impulse == MOVETYPE_FLY)
                    {
                        fl = IT_SUPER_NAILGUN;
                        
                        if(self.ammo_nails < FL_SWIM)
                        {
                            am = TRUE;
                        }
                        
                    }
                    else
                    {
                        if(self.impulse == MOVETYPE_TOSS)
                        {
                            fl = IT_GRENADE_LAUNCHER;
                            
                            if(self.ammo_rockets < TRUE)
                            {
                                am = TRUE;
                            }
                            
                        }
                        else
                        {
                            if(self.impulse == MOVETYPE_PUSH)
                            {
                                fl = IT_ROCKET_LAUNCHER;
                                
                                if(self.ammo_rockets < TRUE)
                                {
                                    am = TRUE;
                                }
                                
                            }
                            else
                            {
                                
                                if(self.impulse == FL_CLIENT)
                                {
                                    fl = IT_LIGHTNING;
                                    
                                    if(self.ammo_cells < TRUE)
                                    {
                                        am = TRUE;
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
    
    self.weapon = fl;
    W_SetCurrentAmmo();
};


// CheatCommand
// function begins at statement 7877, parm_start=6352
// OP_OR	35	36	6352
// OP_IFNOT	6352	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	160	6353
// OP_STOREP_F	1997	6353	0
// OP_ADDRESS	28	159	6354
// OP_STOREP_F	2044	6354	0
// OP_ADDRESS	28	158	6355
// OP_STOREP_F	1997	6355	0
// OP_ADDRESS	28	162	6356
// OP_LOAD_F	28	162	6357
// OP_BITOR	6357	253	6358
// OP_BITOR	6358	254	6359
// OP_BITOR	6359	255	6360
// OP_BITOR	6360	256	6361
// OP_BITOR	6361	257	6362
// OP_BITOR	6362	258	6363
// OP_BITOR	6363	259	6364
// OP_BITOR	6364	270	6365
// OP_BITOR	6365	271	6366
// OP_STOREP_F	6366	6356	0
// OP_ADDRESS	28	161	6367
// OP_STOREP_F	2044	6367	0
// OP_ADDRESS	28	162	6368
// OP_LOAD_F	28	162	6369
// OP_BITOR	6369	260	6370
// OP_STOREP_F	6370	6368	0
// OP_ADDRESS	28	154	6371
// OP_STOREP_F	259	6371	0
// OP_ADDRESS	28	173	6372
// OP_STOREP_F	213	6372	0
// OP_CALL0	4295	0	0
// OP_DONE	0	0	0
void () CheatCommand = 
{
    
    if(deathmatch || coop)
    {
        return;
    }
    
    self.ammo_rockets = 100;
    self.ammo_nails = 200;
    self.ammo_shells = 100;
    self.items = ((((((((self.items | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_KEY1) | IT_KEY2;
    self.ammo_cells = 200;
    self.items = self.items | IT_LIGHTNING;
    self.weapon = IT_ROCKET_LAUNCHER;
    self.impulse = FALSE;
    W_SetCurrentAmmo();
};


// CycleWeaponCommand
// function begins at statement 7910, parm_start=6374
// OP_ADDRESS	28	173	6375
// OP_STOREP_F	213	6375	0
// OP_IFNOT	214	86	0
// OP_STORE_F	213	6374	0
// OP_LOAD_F	28	154	6376
// OP_EQ_F	6376	260	6377
// OP_IFNOT	6377	4	0
// OP_ADDRESS	28	154	6378
// OP_STOREP_F	253	6378	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	154	6379
// OP_EQ_F	6379	253	6380
// OP_IFNOT	6380	8	0
// OP_ADDRESS	28	154	6381
// OP_STOREP_F	254	6381	0
// OP_LOAD_F	28	158	6382
// OP_LT	6382	214	6383
// OP_IFNOT	6383	2	0
// OP_STORE_F	214	6374	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	6384
// OP_EQ_F	6384	254	6385
// OP_IFNOT	6385	8	0
// OP_ADDRESS	28	154	6386
// OP_STOREP_F	255	6386	0
// OP_LOAD_F	28	158	6387
// OP_LT	6387	216	6388
// OP_IFNOT	6388	2	0
// OP_STORE_F	214	6374	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	154	6389
// OP_EQ_F	6389	255	6390
// OP_IFNOT	6390	8	0
// OP_ADDRESS	28	154	6391
// OP_STOREP_F	256	6391	0
// OP_LOAD_F	28	159	6392
// OP_LT	6392	214	6393
// OP_IFNOT	6393	2	0
// OP_STORE_F	214	6374	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	154	6394
// OP_EQ_F	6394	256	6395
// OP_IFNOT	6395	8	0
// OP_ADDRESS	28	154	6396
// OP_STOREP_F	257	6396	0
// OP_LOAD_F	28	159	6397
// OP_LT	6397	216	6398
// OP_IFNOT	6398	2	0
// OP_STORE_F	214	6374	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	154	6399
// OP_EQ_F	6399	257	6400
// OP_IFNOT	6400	8	0
// OP_ADDRESS	28	154	6401
// OP_STOREP_F	258	6401	0
// OP_LOAD_F	28	160	6402
// OP_LT	6402	214	6403
// OP_IFNOT	6403	2	0
// OP_STORE_F	214	6374	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	154	6404
// OP_EQ_F	6404	258	6405
// OP_IFNOT	6405	8	0
// OP_ADDRESS	28	154	6406
// OP_STOREP_F	259	6406	0
// OP_LOAD_F	28	160	6407
// OP_LT	6407	214	6408
// OP_IFNOT	6408	2	0
// OP_STORE_F	214	6374	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	6409
// OP_EQ_F	6409	259	6410
// OP_IFNOT	6410	7	0
// OP_ADDRESS	28	154	6411
// OP_STOREP_F	260	6411	0
// OP_LOAD_F	28	161	6412
// OP_LT	6412	214	6413
// OP_IFNOT	6413	2	0
// OP_STORE_F	214	6374	0
// OP_LOAD_F	28	162	6414
// OP_LOAD_F	28	154	6415
// OP_BITAND	6414	6415	6416
// OP_EQ_F	6374	213	6417
// OP_AND	6416	6417	6418
// OP_IFNOT	6418	3	0
// OP_CALL0	4295	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-85	0	0
// OP_DONE	0	0	0
void () CycleWeaponCommand = 
{
    local float am;
    self.impulse = FALSE;
    
    while(TRUE)
    {
        am = FALSE;
        if(self.weapon == IT_LIGHTNING)
        {
            self.weapon = IT_AXE;
        }
        else
        {
            if(self.weapon == IT_AXE)
            {
                self.weapon = IT_SHOTGUN;
                
                if(self.ammo_shells < TRUE)
                {
                    am = TRUE;
                }
                
            }
            else
            {
                if(self.weapon == IT_SHOTGUN)
                {
                    self.weapon = IT_SUPER_SHOTGUN;
                    
                    if(self.ammo_shells < FL_SWIM)
                    {
                        am = TRUE;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_SHOTGUN)
                    {
                        self.weapon = IT_NAILGUN;
                        
                        if(self.ammo_nails < TRUE)
                        {
                            am = TRUE;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_NAILGUN)
                        {
                            self.weapon = IT_SUPER_NAILGUN;
                            
                            if(self.ammo_nails < FL_SWIM)
                            {
                                am = TRUE;
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_SUPER_NAILGUN)
                            {
                                self.weapon = IT_GRENADE_LAUNCHER;
                                
                                if(self.ammo_rockets < TRUE)
                                {
                                    am = TRUE;
                                }
                                
                            }
                            else
                            {
                                if(self.weapon == IT_GRENADE_LAUNCHER)
                                {
                                    self.weapon = IT_ROCKET_LAUNCHER;
                                    
                                    if(self.ammo_rockets < TRUE)
                                    {
                                        am = TRUE;
                                    }
                                    
                                }
                                else
                                {
                                    
                                    if(self.weapon == IT_ROCKET_LAUNCHER)
                                    {
                                        self.weapon = IT_LIGHTNING;
                                        
                                        if(self.ammo_cells < TRUE)
                                        {
                                            am = TRUE;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if((self.items & self.weapon) && (am == FALSE))
        {
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
};


// CycleWeaponReverseCommand
// function begins at statement 7999, parm_start=6420
// OP_ADDRESS	28	173	6422
// OP_STOREP_F	213	6422	0
// OP_IFNOT	214	86	0
// OP_STORE_F	213	6421	0
// OP_LOAD_F	28	154	6423
// OP_EQ_F	6423	260	6424
// OP_IFNOT	6424	8	0
// OP_ADDRESS	28	154	6425
// OP_STOREP_F	259	6425	0
// OP_LOAD_F	28	160	6426
// OP_LT	6426	214	6427
// OP_IFNOT	6427	2	0
// OP_STORE_F	214	6421	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	154	6428
// OP_EQ_F	6428	259	6429
// OP_IFNOT	6429	8	0
// OP_ADDRESS	28	154	6430
// OP_STOREP_F	258	6430	0
// OP_LOAD_F	28	160	6431
// OP_LT	6431	214	6432
// OP_IFNOT	6432	2	0
// OP_STORE_F	214	6421	0
// OP_GOTO	56	0	0
// OP_LOAD_F	28	154	6433
// OP_EQ_F	6433	258	6434
// OP_IFNOT	6434	8	0
// OP_ADDRESS	28	154	6435
// OP_STOREP_F	257	6435	0
// OP_LOAD_F	28	159	6436
// OP_LT	6436	216	6437
// OP_IFNOT	6437	2	0
// OP_STORE_F	214	6421	0
// OP_GOTO	46	0	0
// OP_LOAD_F	28	154	6438
// OP_EQ_F	6438	257	6439
// OP_IFNOT	6439	8	0
// OP_ADDRESS	28	154	6440
// OP_STOREP_F	256	6440	0
// OP_LOAD_F	28	159	6441
// OP_LT	6441	214	6442
// OP_IFNOT	6442	2	0
// OP_STORE_F	214	6421	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	154	6443
// OP_EQ_F	6443	256	6444
// OP_IFNOT	6444	8	0
// OP_ADDRESS	28	154	6445
// OP_STOREP_F	255	6445	0
// OP_LOAD_F	28	158	6446
// OP_LT	6446	216	6447
// OP_IFNOT	6447	2	0
// OP_STORE_F	214	6421	0
// OP_GOTO	26	0	0
// OP_LOAD_F	28	154	6448
// OP_EQ_F	6448	255	6449
// OP_IFNOT	6449	8	0
// OP_ADDRESS	28	154	6450
// OP_STOREP_F	254	6450	0
// OP_LOAD_F	28	158	6451
// OP_LT	6451	214	6452
// OP_IFNOT	6452	2	0
// OP_STORE_F	214	6421	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	154	6453
// OP_EQ_F	6453	254	6454
// OP_IFNOT	6454	4	0
// OP_ADDRESS	28	154	6455
// OP_STOREP_F	253	6455	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	6456
// OP_EQ_F	6456	253	6457
// OP_IFNOT	6457	7	0
// OP_ADDRESS	28	154	6458
// OP_STOREP_F	260	6458	0
// OP_LOAD_F	28	161	6459
// OP_LT	6459	214	6460
// OP_IFNOT	6460	2	0
// OP_STORE_F	214	6421	0
// OP_LOAD_F	28	162	6461
// OP_LOAD_F	28	154	6462
// OP_BITAND	6461	6462	6463
// OP_EQ_F	6421	213	6464
// OP_AND	6463	6464	6465
// OP_IFNOT	6465	3	0
// OP_CALL0	4295	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-85	0	0
// OP_DONE	0	0	0
void () CycleWeaponReverseCommand = 
{
    local float it;
    local float am;
    self.impulse = FALSE;
    
    while(TRUE)
    {
        am = FALSE;
        if(self.weapon == IT_LIGHTNING)
        {
            self.weapon = IT_ROCKET_LAUNCHER;
            
            if(self.ammo_rockets < TRUE)
            {
                am = TRUE;
            }
            
        }
        else
        {
            if(self.weapon == IT_ROCKET_LAUNCHER)
            {
                self.weapon = IT_GRENADE_LAUNCHER;
                
                if(self.ammo_rockets < TRUE)
                {
                    am = TRUE;
                }
                
            }
            else
            {
                if(self.weapon == IT_GRENADE_LAUNCHER)
                {
                    self.weapon = IT_SUPER_NAILGUN;
                    
                    if(self.ammo_nails < FL_SWIM)
                    {
                        am = TRUE;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.weapon = IT_NAILGUN;
                        
                        if(self.ammo_nails < TRUE)
                        {
                            am = TRUE;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_NAILGUN)
                        {
                            self.weapon = IT_SUPER_SHOTGUN;
                            
                            if(self.ammo_shells < FL_SWIM)
                            {
                                am = TRUE;
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_SUPER_SHOTGUN)
                            {
                                self.weapon = IT_SHOTGUN;
                                
                                if(self.ammo_shells < TRUE)
                                {
                                    am = TRUE;
                                }
                                
                            }
                            else
                            {
                                if(self.weapon == IT_SHOTGUN)
                                {
                                    self.weapon = IT_AXE;
                                }
                                else
                                {
                                    
                                    if(self.weapon == IT_AXE)
                                    {
                                        self.weapon = IT_LIGHTNING;
                                        
                                        if(self.ammo_cells < TRUE)
                                        {
                                            am = TRUE;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if((self.items & self.weapon) && (am == FALSE))
        {
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
};


// ServerflagsCommand
// function begins at statement 8088, parm_start=6467
// OP_MUL_F	38	216	6467
// OP_ADD_F	6467	214	6468
// OP_STORE_F	6468	38	0
// OP_DONE	0	0	0
void () ServerflagsCommand = 
{
    serverflags = (serverflags * FL_SWIM) + TRUE;
};


// QuadCheat
// function begins at statement 8092, parm_start=6470
// OP_OR	35	36	6470
// OP_IFNOT	6470	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	388	6471
// OP_STOREP_F	214	6471	0
// OP_ADDRESS	28	382	6472
// OP_ADD_F	31	309	6473
// OP_STOREP_F	6473	6472	0
// OP_ADDRESS	28	162	6474
// OP_LOAD_F	28	162	6475
// OP_BITOR	6475	275	6476
// OP_STOREP_F	6476	6474	0
// OP_STORE_V	6477	4	0
// OP_CALL1	473	0	0
// OP_DONE	0	0	0
void () QuadCheat = 
{
    
    if(deathmatch || coop)
    {
        return;
    }
    
    self.super_time = TRUE;
    self.super_damage_finished = time + SVC_INTERMISSION;
    self.items = self.items | IT_QUAD;
    dprint("quad cheat\n");
};


// ImpulseCommands
// function begins at statement 8107, parm_start=6479
// OP_LOAD_F	28	173	6479
// OP_GE	6479	214	6480
// OP_LOAD_F	28	173	6481
// OP_LE	6481	217	6482
// OP_AND	6480	6482	6483
// OP_IFNOT	6483	3	0
// OP_CALL0	6309	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	173	6484
// OP_EQ_F	6484	234	6485
// OP_IFNOT	6485	3	0
// OP_CALL0	6351	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	173	6486
// OP_EQ_F	6486	235	6487
// OP_IFNOT	6487	3	0
// OP_CALL0	6373	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	173	6488
// OP_EQ_F	6488	791	6489
// OP_IFNOT	6489	3	0
// OP_CALL0	6419	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	173	6490
// OP_EQ_F	6490	6491	6492
// OP_IFNOT	6492	2	0
// OP_CALL0	6469	0	0
// OP_LOAD_F	28	173	6493
// OP_EQ_F	6493	738	6494
// OP_IFNOT	6494	2	0
// OP_CALL0	2815	0	0
// OP_CALL0	1221	0	0
// OP_ADDRESS	28	173	6495
// OP_STOREP_F	213	6495	0
// OP_DONE	0	0	0
void () ImpulseCommands = 
{
    if((self.impulse >= TRUE) && (self.impulse <= FL_CLIENT))
    {
        W_ChangeWeapon();
    }
    else
    {
        if(self.impulse == MOVETYPE_FLYMISSILE)
        {
            CheatCommand();
        }
        else
        {
            if(self.impulse == MOVETYPE_BOUNCE)
            {
                CycleWeaponCommand();
            }
            else
            {
                if(self.impulse == BOTSHIRTPANTS_12)
                {
                    CycleWeaponReverseCommand();
                }
                else
                {
                    
                    if(self.impulse == 255)
                    {
                        QuadCheat();
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(self.impulse == GLOBALDEF721_250)
    {
        CamClientInit();
    }
    
    rocket_arena_impulses();
    self.impulse = FALSE;
};


// W_WeaponFrame
// function begins at statement 8142, parm_start=6497
// OP_LOAD_F	28	378	6497
// OP_LT	31	6497	6498
// OP_IFNOT	6498	2	0
// OP_RETURN	0	0	0
// OP_CALL0	6478	0	0
// OP_BITAND	821	767	6499
// OP_IFNOT	6499	8	0
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_NE_E	28	541	6500
// OP_NE_E	28	542	6501
// OP_AND	6500	6501	6502
// OP_IFNOT	6502	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	6503
// OP_IFNOT	6503	3	0
// OP_CALL0	5356	0	0
// OP_CALL0	6266	0	0
// OP_DONE	0	0	0
void () W_WeaponFrame = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    ImpulseCommands();
    
    if(globaldef000804 & OBOT_ROCKETARENA)
    {
        
        if(globaldef000799)
        {
            return;
        }
        
        
        if((self != winner) && (self != loser))
        {
            return;
        }
        
    }
    
    
    if(self.button0)
    {
        SuperDamageSound();
        W_Attack();
    }
    
};


// SuperDamageSound
// function begins at statement 8161, parm_start=6504
// OP_LOAD_F	28	382	6504
// OP_GT	6504	31	6505
// OP_IFNOT	6505	13	0
// OP_LOAD_F	28	389	6506
// OP_LT	6506	31	6507
// OP_IFNOT	6507	10	0
// OP_ADDRESS	28	389	6508
// OP_ADD_F	31	214	6509
// OP_STOREP_F	6509	6508	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	5078	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () SuperDamageSound = 
{
    
    if(self.super_damage_finished > time)
    {
        
        if(self.super_sound < time)
        {
            self.super_sound = time + TRUE;
            sound(self, CHAN_BODY, "items/damage3.wav", TRUE, ATTN_NORM);
        }
        
    }
    
    return;
};

