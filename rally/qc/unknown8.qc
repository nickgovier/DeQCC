void () player_run;
void (vector org, vector vel, float damage) SpawnBlood;
void () SuperDamageSound;
void () SpawnBot;
.float sight_out;
// W_Precache
// function begins at statement 11764, parm_start=9175
// OP_STORE_V	9175	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9176	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9177	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9178	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9179	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9180	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9181	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9182	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9183	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9184	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9185	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	9186	4	0
// OP_CALL1	478	0	0
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
// function begins at statement 11789, parm_start=9188
// OP_CALL0	466	0	0
// OP_SUB_F	1	1182	9188
// OP_MUL_F	821	9188	9189
// OP_RETURN	9189	0	0
// OP_DONE	0	0	0
float () crandom = 
{
    return 2 * (random() - 0.5);
};

// W_FireAxe
// function begins at statement 11794, parm_start=9191
// OP_LOAD_V	28	105	9197
// OP_ADD_V	9197	1535	9200
// OP_STORE_V	9200	9191	0
// OP_STORE_V	9191	4	0
// OP_MUL_VF	59	2223	9203
// OP_ADD_V	9191	9203	9206
// OP_STORE_V	9206	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	9209
// OP_IFNOT	9209	2	0
// OP_RETURN	0	0	0
// OP_MUL_VF	59	825	9210
// OP_SUB_V	71	9210	9213
// OP_STORE_V	9213	9194	0
// OP_LOAD_F	78	163	9216
// OP_IFNOT	9216	13	0
// OP_ADDRESS	78	401	9217
// OP_STOREP_F	819	9217	0
// OP_STORE_V	9194	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	1112	10	0
// OP_CALL3	9170	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1112	13	0
// OP_CALL4	534	0	0
// OP_GOTO	22	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9218	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	324	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	9194	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	9195	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	9196	7	0
// OP_CALL2	511	0	0
// OP_DONE	0	0	0
void () W_FireAxe = 
{
    local vector source;
    local vector org;
    source = self.origin + '0.000 0.000 16.000';
    traceline(source, source + (v_forward * 64), FALSE, self);
    
    if(trace_fraction == 1)
    {
        return;
    }
    
    org = trace_endpos - (v_forward * 4);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = 1;
        SpawnBlood(org, '0.000 0.000 0.000', 20);
        T_Damage(trace_ent, self, self, 20);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", 1, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, 0);
        WriteCoord(MSG_BROADCAST, 0);
    }
    
};

// wall_velocity
// function begins at statement 11846, parm_start=9220
// OP_LOAD_V	28	113	9223
// OP_STORE_V	9223	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	9220	0
// OP_CALL0	466	0	0
// OP_SUB_F	1	1182	9226
// OP_MUL_VF	62	9226	9227
// OP_ADD_V	9220	9227	9230
// OP_CALL0	466	0	0
// OP_SUB_F	1	1182	9233
// OP_MUL_VF	65	9233	9234
// OP_ADD_V	9230	9234	9237
// OP_STORE_V	9237	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	9220	0
// OP_MUL_FV	821	74	9240
// OP_ADD_V	9220	9240	9243
// OP_STORE_V	9243	9220	0
// OP_MUL_VF	9220	4760	9246
// OP_STORE_V	9246	9220	0
// OP_RETURN	9220	0	0
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
// function begins at statement 11868, parm_start=9250
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	9256	0
// OP_ADDRESS	9256	201	9258
// OP_STOREP_ENT	28	9258	0
// OP_ADDRESS	9256	103	9259
// OP_STOREP_F	241	9259	0
// OP_ADDRESS	9256	104	9260
// OP_STOREP_F	243	9260	0
// OP_LOAD_V	28	117	9261
// OP_STORE_V	9261	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	9256	113	9264
// OP_STOREP_V	9253	9264	0
// OP_ADDRESS	9256	116	9267
// OP_LOAD_F	9256	116	9268
// OP_ADD_F	9268	1135	9269
// OP_CALL0	466	0	0
// OP_MUL_F	2611	1	9270
// OP_ADD_F	9269	9270	9271
// OP_STOREP_F	9271	9267	0
// OP_ADDRESS	9256	121	9272
// OP_STOREP_V	9275	9272	0
// OP_ADDRESS	9256	150	9278
// OP_ADD_F	31	819	9279
// OP_STOREP_F	9279	9278	0
// OP_ADDRESS	9256	148	9280
// OP_STOREP_FNC	533	9280	0
// OP_STORE_V	9256	4	0
// OP_STORE_V	9281	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9256	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	9256	4	0
// OP_STORE_V	9250	7	0
// OP_CALL2	462	0	0
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
    missile.avelocity = '3000.000 1000.000 2000.000';
    missile.nextthink = time + 1;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/zom_gib.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, org);
};

// SpawnBlood
// function begins at statement 11906, parm_start=9282
// OP_STORE_V	9282	4	0
// OP_MUL_VF	9285	2869	9289
// OP_STORE_V	9289	7	0
// OP_STORE_V	9292	10	0
// OP_MUL_F	9288	821	9293
// OP_STORE_V	9293	13	0
// OP_CALL4	504	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float damage) SpawnBlood = 
{
    particle(org, vel * 0.1, 73, damage * 2);
};

// spawn_touchblood
// function begins at statement 11914, parm_start=9295
// OP_CALL0	9219	0	0
// OP_MUL_VF	1	1152	9299
// OP_STORE_V	9299	9296	0
// OP_LOAD_V	28	105	9302
// OP_MUL_VF	9296	9305	9306
// OP_ADD_V	9302	9306	9309
// OP_STORE_V	9309	4	0
// OP_STORE_V	9296	7	0
// OP_STORE_V	9295	10	0
// OP_CALL3	9170	0	0
// OP_DONE	0	0	0
void (float damage) spawn_touchblood = 
{
    local vector vel;
    vel = wall_velocity() * 0.2;
    SpawnBlood(self.origin + (vel * 0.01), vel, damage);
};

// SpawnChunk
// function begins at statement 11925, parm_start=9313
// OP_STORE_V	9313	4	0
// OP_MUL_VF	9316	9319	9320
// OP_STORE_V	9320	7	0
// OP_STORE_V	817	10	0
// OP_STORE_V	855	13	0
// OP_CALL4	504	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnChunk = 
{
    particle(org, vel * 0.02, 0, 10);
};

entity multi_ent;
float multi_damage;
// ClearMultiDamage
// function begins at statement 11932, parm_start=9326
// OP_STORE_ENT	30	9323	0
// OP_STORE_F	817	9324	0
// OP_DONE	0	0	0
void () ClearMultiDamage = 
{
    multi_ent = world;
    multi_damage = 0;
};

// ApplyMultiDamage
// function begins at statement 11935, parm_start=9327
// OP_NOT_ENT	9323	0	9327
// OP_IFNOT	9327	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	9323	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	9324	13	0
// OP_CALL4	534	0	0
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
// function begins at statement 11944, parm_start=9329
// OP_NOT_ENT	9329	0	9331
// OP_IFNOT	9331	2	0
// OP_RETURN	0	0	0
// OP_NE_E	9329	9323	9332
// OP_IFNOT	9332	5	0
// OP_CALL0	9326	0	0
// OP_STORE_F	9330	9324	0
// OP_STORE_ENT	9329	9323	0
// OP_GOTO	3	0	0
// OP_ADD_F	9324	9330	9333
// OP_STORE_F	9333	9324	0
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
// function begins at statement 11956, parm_start=9335
// OP_CALL0	9187	0	0
// OP_MUL_VF	62	1	9345
// OP_ADD_V	9336	9345	9348
// OP_CALL0	9187	0	0
// OP_MUL_VF	65	1	9351
// OP_ADD_V	9348	9351	9354
// OP_STORE_V	9354	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	9339	0
// OP_MUL_FV	821	74	9357
// OP_ADD_V	9339	9357	9360
// OP_STORE_V	9360	9339	0
// OP_MUL_VF	9339	4760	9363
// OP_STORE_V	9363	9339	0
// OP_MUL_VF	9336	825	9366
// OP_SUB_V	71	9366	9369
// OP_STORE_V	9369	9342	0
// OP_LOAD_F	78	163	9372
// OP_IFNOT	9372	10	0
// OP_STORE_V	9342	4	0
// OP_MUL_VF	9339	1152	9373
// OP_STORE_V	9373	7	0
// OP_STORE_V	9335	10	0
// OP_CALL3	9170	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	9335	7	0
// OP_CALL2	9328	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	324	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	9342	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	9343	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	9344	7	0
// OP_CALL2	511	0	0
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
        WriteCoord(MSG_BROADCAST, 0);
        WriteCoord(MSG_BROADCAST, 0);
    }
    
};

// FireBullets
// function begins at statement 12000, parm_start=9377
// OP_LOAD_V	28	175	9390
// OP_STORE_V	9390	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	9393
// OP_MUL_VF	59	855	9396
// OP_ADD_V	9393	9396	9399
// OP_STORE_V	9399	9387	0
// OP_LOAD_F	28	97	9402
// OP_LOAD_F	28	145	9403
// OP_MUL_F	9403	2619	9404
// OP_ADD_F	9402	9404	9405
// OP_STORE_F	9405	9389	0
// OP_CALL0	9325	0	0
// OP_GT	9377	817	9406
// OP_IFNOT	9406	25	0
// OP_CALL0	9187	0	0
// OP_MUL_F	1	9381	9407
// OP_MUL_FV	9407	65	9408
// OP_ADD_V	9378	9408	9411
// OP_CALL0	9187	0	0
// OP_MUL_F	1	9382	9414
// OP_MUL_FV	9414	62	9415
// OP_ADD_V	9411	9415	9418
// OP_STORE_V	9418	9384	0
// OP_STORE_V	9387	4	0
// OP_MUL_VF	9384	9421	9422
// OP_ADD_V	9387	9422	9425
// OP_STORE_V	9425	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_NE_F	70	819	9428
// OP_IFNOT	9428	4	0
// OP_STORE_V	825	4	0
// OP_STORE_V	9384	7	0
// OP_CALL2	9334	0	0
// OP_SUB_F	9377	819	9429
// OP_STORE_F	9429	9377	0
// OP_GOTO	-25	0	0
// OP_CALL0	9326	0	0
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
        direction = (dir + ((crandom() * spread_x) * v_right)) + ((crandom() * 0) * v_up);
        traceline(src, src + (direction * 2048), FALSE, self);
        
        if(trace_fraction != 1)
        {
            TraceAttack(4, direction);
        }
        
        shotcount = shotcount - 1;
    }
    
    ApplyMultiDamage();
};

// W_FireShotgun
// function begins at statement 12041, parm_start=9431
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9178	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	126	9434
// OP_STOREP_F	947	9434	0
// OP_ADDRESS	28	157	9435
// OP_ADDRESS	28	158	9436
// OP_LOAD_F	28	158	9437
// OP_SUB_F	9437	819	9438
// OP_STOREP_F	9438	9436	0
// OP_STOREP_F	9438	9435	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9439	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	1	9431	0
// OP_STORE_V	829	4	0
// OP_STORE_V	9431	7	0
// OP_STORE_V	9440	10	0
// OP_CALL3	9376	0	0
// OP_DONE	0	0	0
void () W_FireShotgun = 
{
    local vector dir;
    sound(self, CHAN_WEAPON, "weapons/guncock.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
    self.currentammo = self.ammo_shells = self.ammo_shells - 1;
    dir = aim(self, 100000);
    FireBullets(6, dir, '0.040 0.040 0.000');
};

// W_FireSuperShotgun
// function begins at statement 12064, parm_start=9444
// OP_LOAD_F	28	157	9447
// OP_EQ_F	9447	819	9448
// OP_IFNOT	9448	3	0
// OP_CALL0	9430	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9186	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	126	9449
// OP_STOREP_F	9450	9449	0
// OP_ADDRESS	28	157	9451
// OP_ADDRESS	28	158	9452
// OP_LOAD_F	28	158	9453
// OP_SUB_F	9453	821	9454
// OP_STOREP_F	9454	9452	0
// OP_STOREP_F	9454	9451	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9439	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	1	9444	0
// OP_STORE_V	841	4	0
// OP_STORE_V	9444	7	0
// OP_STORE_V	9455	10	0
// OP_CALL3	9376	0	0
// OP_DONE	0	0	0
void () W_FireSuperShotgun = 
{
    local vector dir;
    
    if(self.currentammo == 1)
    {
        W_FireShotgun();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/shotgn2.wav", 1, ATTN_NORM);
    self.punchangle_x = -4;
    self.currentammo = self.ammo_shells = self.ammo_shells - 2;
    dir = aim(self, 100000);
    FireBullets(14, dir, '0.140 0.080 0.000');
};

// s_explode1
// function begins at statement 12092, parm_start=9459
// OP_STATE	817	9459	0
// OP_DONE	0	0	0
void () s_explode1 = [0, s_explode2]
{
};

// s_explode2
// function begins at statement 12094, parm_start=9460
// OP_STATE	819	9460	0
// OP_DONE	0	0	0
void () s_explode2 = [1, s_explode3]
{
};

// s_explode3
// function begins at statement 12096, parm_start=9461
// OP_STATE	821	9461	0
// OP_DONE	0	0	0
void () s_explode3 = [2, s_explode4]
{
};

// s_explode4
// function begins at statement 12098, parm_start=9462
// OP_STATE	823	9462	0
// OP_DONE	0	0	0
void () s_explode4 = [3, s_explode5]
{
};

// s_explode5
// function begins at statement 12100, parm_start=9463
// OP_STATE	825	9463	0
// OP_DONE	0	0	0
void () s_explode5 = [4, s_explode6]
{
};

// s_explode6
// function begins at statement 12102, parm_start=9464
// OP_STATE	827	533	0
// OP_DONE	0	0	0
void () s_explode6 = [5, SUB_Remove]
{
};

// BecomeExplosion
// function begins at statement 12104, parm_start=9464
// OP_ADDRESS	28	103	9464
// OP_STOREP_F	233	9464	0
// OP_ADDRESS	28	113	9465
// OP_STOREP_V	926	9465	0
// OP_ADDRESS	28	146	9468
// OP_STOREP_FNC	531	9468	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9469	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	104	9470
// OP_STOREP_F	243	9470	0
// OP_CALL0	9458	0	0
// OP_DONE	0	0	0
void () BecomeExplosion = 
{
    self.movetype = MOVETYPE_NONE;
    self.velocity = '0.000 0.000 0.000';
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// T_MissileTouch
// function begins at statement 12117, parm_start=9471
// OP_LOAD_ENT	28	201	9472
// OP_EQ_E	29	9472	9473
// OP_IFNOT	9473	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	9474
// OP_STORE_V	9474	4	0
// OP_CALL1	498	0	0
// OP_EQ_F	1	295	9477
// OP_IFNOT	9477	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_CALL0	466	0	0
// OP_MUL_F	1	1112	9478
// OP_ADD_F	2611	9478	9479
// OP_STORE_F	9479	9471	0
// OP_LOAD_S	29	129	9480
// OP_EQ_S	9480	7244	9481
// OP_IFNOT	9481	4	0
// OP_MUL_F	9471	827	9482
// OP_STORE_F	9482	9471	0
// OP_GOTO	6	0	0
// OP_LOAD_S	29	129	9483
// OP_EQ_S	9483	3609	9484
// OP_IFNOT	9484	3	0
// OP_MUL_F	9471	821	9485
// OP_STORE_F	9485	9471	0
// OP_LOAD_F	29	152	9486
// OP_IFNOT	9486	12	0
// OP_LOAD_S	29	129	9487
// OP_EQ_S	9487	7886	9488
// OP_IFNOT	9488	3	0
// OP_MUL_F	9471	1182	9489
// OP_STORE_F	9489	9471	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	9490
// OP_STORE_V	9490	10	0
// OP_STORE_V	9471	13	0
// OP_CALL4	534	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	9491
// OP_STORE_V	9491	7	0
// OP_STORE_V	5807	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	8274	0	0
// OP_ADDRESS	28	105	9492
// OP_LOAD_V	28	105	9495
// OP_LOAD_V	28	113	9498
// OP_STORE_V	9498	4	0
// OP_CALL1	468	0	0
// OP_MUL_FV	843	1	9501
// OP_SUB_V	9495	9501	9504
// OP_STOREP_V	9504	9492	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	325	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	106	9507
// OP_STORE_V	9507	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	107	9508
// OP_STORE_V	9508	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	108	9509
// OP_STORE_V	9509	7	0
// OP_CALL2	511	0	0
// OP_CALL0	538	0	0
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
    
    damg = 50 + (random() * 20);
    if(other.classname == "rally_kangaroo")
    {
        damg = damg * 5;
    }
    else
    {
        
        if(other.classname == "rally_dude")
        {
            damg = damg * 2;
        }
        
    }
    
    
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

// W_FireRocket
// function begins at statement 12191, parm_start=9511
// OP_ADDRESS	28	157	9520
// OP_ADDRESS	28	160	9521
// OP_LOAD_F	28	160	9522
// OP_SUB_F	9522	819	9523
// OP_STOREP_F	9523	9521	0
// OP_STOREP_F	9523	9520	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9177	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	126	9524
// OP_STOREP_F	947	9524	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	9511	0
// OP_ADDRESS	9511	647	9525
// OP_STOREP_F	31	9525	0
// OP_ADDRESS	9511	201	9526
// OP_STOREP_ENT	28	9526	0
// OP_ADDRESS	9511	103	9527
// OP_STOREP_F	240	9527	0
// OP_ADDRESS	9511	104	9528
// OP_STOREP_F	245	9528	0
// OP_STORE_V	59	9517	0
// OP_LOAD_V	28	175	9529
// OP_STORE_V	9529	9514	0
// OP_STORE_F	817	9514	0
// OP_STORE_V	9514	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	59	9514	0
// OP_LOAD_V	28	105	9532
// OP_STORE_V	9532	4	0
// OP_STORE_V	9514	7	0
// OP_STORE_V	9535	10	0
// OP_STORE_V	2558	13	0
// OP_STORE_V	7234	16	0
// OP_STORE_V	28	19	0
// OP_CALL6	7210	0	0
// OP_STORE_ENT	1	9513	0
// OP_NE_E	1	30	9536
// OP_IFNOT	9536	15	0
// OP_LOAD_S	9513	129	9537
// OP_EQ_S	9537	880	9538
// OP_IFNOT	9538	4	0
// OP_STORE_V	9513	4	0
// OP_STORE_V	9539	7	0
// OP_CALL2	876	0	0
// OP_ADDRESS	9511	181	9540
// OP_STOREP_ENT	9513	9540	0
// OP_ADDRESS	9511	150	9541
// OP_ADD_F	31	32	9542
// OP_STOREP_F	9542	9541	0
// OP_ADDRESS	9511	148	9543
// OP_STOREP_FNC	7269	9543	0
// OP_GOTO	6	0	0
// OP_ADDRESS	9511	150	9544
// OP_ADD_F	31	827	9545
// OP_STOREP_F	9545	9544	0
// OP_ADDRESS	9511	148	9546
// OP_STOREP_FNC	533	9546	0
// OP_STORE_V	9517	59	0
// OP_ADDRESS	9511	113	9547
// OP_STOREP_V	59	9547	0
// OP_ADDRESS	9511	113	9550
// OP_LOAD_V	9511	113	9553
// OP_LOAD_V	28	113	9556
// OP_STORE_V	9556	4	0
// OP_CALL1	471	0	0
// OP_ADD_F	1	2127	9559
// OP_MUL_VF	9553	9559	9560
// OP_STOREP_V	9560	9550	0
// OP_ADDRESS	9511	117	9563
// OP_LOAD_V	9511	113	9566
// OP_STORE_V	9566	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	9563	0
// OP_ADDRESS	9511	146	9569
// OP_STOREP_FNC	7268	9569	0
// OP_STORE_V	9511	4	0
// OP_STORE_V	9570	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9511	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	9511	4	0
// OP_LOAD_ENT	28	548	9571
// OP_LOAD_V	9571	105	9572
// OP_MUL_VF	59	843	9575
// OP_ADD_V	9572	9575	9578
// OP_MUL_VF	62	843	9581
// OP_ADD_V	9578	9581	9584
// OP_STORE_V	9584	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () W_FireRocket = 
{
    local entity missile;
    local entity mpuff;
    local entity missile_enemy;
    local vector dir;
    local vector old_forward;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - 1;
    sound(self, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
    missile = spawn();
    missile.last_idle = time;
    missile.owner = self;
    missile.movetype = MOVETYPE_FLYMISSILE;
    missile.solid = SOLID_BBOX;
    old_forward = v_forward;
    dir = self.v_angle;
    dir_x = 0;
    makevectors(dir);
    dir = v_forward;
    missile_enemy = FindSightEnemy(self.origin, dir, 1500, 45, "all", self);
    if(FindSightEnemy(self.origin, dir, 1500, 45, "all", self) != world)
    {
        
        if(missile_enemy.classname == "player")
        {
            commentary(missile_enemy, "process/buzztst1.wav");
        }
        
        missile.enemy = missile_enemy;
        missile.nextthink = time + frametime;
        missile.think = RocketSeek;
    }
    else
    {
        missile.nextthink = time + 5;
        missile.think = SUB_Remove;
    }
    
    v_forward = old_forward;
    missile.velocity = v_forward;
    missile.velocity = missile.velocity * (vlen(self.velocity) + 600);
    missile.angles = vectoangles(missile.velocity);
    missile.touch = T_MissileTouch;
    setmodel(missile, "models/missile.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, (self.veh_body.origin + (v_forward * 8)) + (v_up * 8));
};

// LightningDamage
// function begins at statement 12287, parm_start=9588
// OP_SUB_V	9591	9588	9601
// OP_STORE_V	9601	9598	0
// OP_STORE_V	9598	4	0
// OP_CALL1	468	0	0
// OP_SUB_F	817	9599	9604
// OP_STORE_F	9604	9598	0
// OP_STORE_F	9598	9599	0
// OP_STORE_F	817	9600	0
// OP_MUL_VF	9598	2670	9605
// OP_STORE_V	9605	9598	0
// OP_STORE_ENT	30	9597	0
// OP_STORE_ENT	30	9596	0
// OP_STORE_V	9588	4	0
// OP_STORE_V	9591	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_LOAD_F	78	163	9608
// OP_IFNOT	9608	22	0
// OP_STORE_V	71	4	0
// OP_STORE_V	9609	7	0
// OP_STORE_V	9612	10	0
// OP_MUL_F	9595	825	9613
// OP_STORE_V	9613	13	0
// OP_CALL4	504	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	9594	7	0
// OP_STORE_V	9594	10	0
// OP_STORE_V	9595	13	0
// OP_CALL4	534	0	0
// OP_LOAD_S	28	129	9614
// OP_EQ_S	9614	880	9615
// OP_IFNOT	9615	8	0
// OP_LOAD_S	29	129	9616
// OP_EQ_S	9616	880	9617
// OP_IFNOT	9617	5	0
// OP_ADDRESS	78	116	9618
// OP_LOAD_F	78	116	9619
// OP_ADD_F	9619	1948	9620
// OP_STOREP_F	9620	9618	0
// OP_STORE_ENT	78	9596	0
// OP_ADD_V	9588	9598	9621
// OP_STORE_V	9621	4	0
// OP_ADD_V	9591	9598	9624
// OP_STORE_V	9624	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_NE_E	78	9596	9627
// OP_LOAD_F	78	163	9628
// OP_AND	9627	9628	9629
// OP_IFNOT	9629	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	9609	7	0
// OP_STORE_V	9612	10	0
// OP_MUL_F	9595	825	9630
// OP_STORE_V	9630	13	0
// OP_CALL4	504	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	9594	7	0
// OP_STORE_V	9594	10	0
// OP_STORE_V	9595	13	0
// OP_CALL4	534	0	0
// OP_STORE_ENT	78	9597	0
// OP_SUB_V	9588	9598	9631
// OP_STORE_V	9631	4	0
// OP_SUB_V	9591	9598	9634
// OP_STORE_V	9634	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_NE_E	78	9596	9637
// OP_NE_E	78	9597	9638
// OP_AND	9637	9638	9639
// OP_LOAD_F	78	163	9640
// OP_AND	9639	9640	9641
// OP_IFNOT	9641	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	9609	7	0
// OP_STORE_V	9612	10	0
// OP_MUL_F	9595	825	9642
// OP_STORE_V	9642	13	0
// OP_CALL4	504	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	9594	7	0
// OP_STORE_V	9594	10	0
// OP_STORE_V	9595	13	0
// OP_CALL4	534	0	0
// OP_DONE	0	0	0
void (vector p1, vector p2, entity from, float damage) LightningDamage = 
{
    local entity e1;
    local entity e2;
    local vector f;
    f = p2 - p1;
    normalize(f);
    f_x = 0 - 0;
    f_y = f_x;
    f_z = 0;
    f = f * 16;
    e1 = e2 = world;
    traceline(p1, p2, FALSE, self);
    
    if(trace_ent.takedamage)
    {
        particle(trace_endpos, '0.000 0.000 100.000', 225, damage * 4);
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
        particle(trace_endpos, '0.000 0.000 100.000', 225, damage * 4);
        T_Damage(trace_ent, from, from, damage);
    }
    
    e2 = trace_ent;
    traceline(p1 - f, p2 - f, FALSE, self);
    
    if(((trace_ent != e1) && (trace_ent != e2)) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0.000 0.000 100.000', 225, damage * 4);
        T_Damage(trace_ent, from, from, damage);
    }
    
};

// W_FireLightning
// function begins at statement 12376, parm_start=9644
// OP_DONE	0	0	0
void () W_FireLightning = 
{
    local vector org;
};

// GrenadeExplode
// function begins at statement 12377, parm_start=9648
// OP_LOAD_ENT	28	181	9648
// OP_STORE_V	9648	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	2228	10	0
// OP_LOAD_ENT	28	181	9649
// OP_STORE_V	9649	13	0
// OP_CALL4	8274	0	0
// OP_LOAD_ENT	28	181	9650
// OP_LOAD_S	9650	129	9651
// OP_EQ_S	9651	880	9652
// OP_IFNOT	9652	42	0
// OP_LOAD_ENT	28	181	9653
// OP_ADDRESS	9653	113	9654
// OP_LOAD_ENT	28	181	9657
// OP_LOAD_V	9657	113	9658
// OP_ADD_V	9658	9661	9664
// OP_STOREP_V	9664	9654	0
// OP_LOAD_ENT	28	181	9667
// OP_STORE_V	9667	4	0
// OP_LOAD_ENT	28	181	9668
// OP_LOAD_V	9668	105	9669
// OP_ADD_V	9669	916	9672
// OP_STORE_V	9672	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	181	9675
// OP_LOAD_F	9675	182	9676
// OP_BITAND	9676	228	9677
// OP_IFNOT	9677	7	0
// OP_LOAD_ENT	28	181	9678
// OP_ADDRESS	9678	182	9679
// OP_LOAD_ENT	28	181	9680
// OP_LOAD_F	9680	182	9681
// OP_SUB_F	9681	228	9682
// OP_STOREP_F	9682	9679	0
// OP_LOAD_ENT	28	181	9683
// OP_ADDRESS	9683	662	9684
// OP_LOAD_ENT	28	181	9685
// OP_LOAD_F	9685	182	9686
// OP_STOREP_F	9686	9684	0
// OP_LOAD_ENT	28	181	9687
// OP_LOAD_ENT	9687	548	9688
// OP_ADDRESS	9688	598	9689
// OP_CALL0	466	0	0
// OP_MUL_F	1	1112	9690
// OP_SUB_F	9690	855	9691
// OP_STOREP_F	9691	9689	0
// OP_LOAD_ENT	28	181	9692
// OP_ADDRESS	9692	644	9693
// OP_LOAD_ENT	28	181	9694
// OP_LOAD_F	9694	644	9695
// OP_BITOR	9695	700	9696
// OP_STOREP_F	9696	9693	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	325	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_ENT	28	181	9697
// OP_LOAD_F	9697	106	9698
// OP_STORE_V	9698	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_ENT	28	181	9699
// OP_LOAD_F	9699	107	9700
// OP_STORE_V	9700	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_ENT	28	181	9701
// OP_LOAD_F	9701	108	9702
// OP_STORE_V	9702	7	0
// OP_CALL2	511	0	0
// OP_CALL0	538	0	0
// OP_LOAD_ENT	28	181	9703
// OP_ADDRESS	9703	673	9704
// OP_STOREP_ENT	30	9704	0
// OP_DONE	0	0	0
void () GrenadeExplode = 
{
    T_RadiusDamage(self.enemy, world, 60, self.enemy);
    
    if(self.enemy.classname == "player")
    {
        self.enemy.velocity = self.enemy.velocity + '0.000 0.000 1000.000';
        setorigin(self.enemy, self.enemy.origin + '0.000 0.000 4.000');
        
        if(self.enemy.flags & FL_ONGROUND)
        {
            self.enemy.flags = self.enemy.flags - FL_ONGROUND;
        }
        
        self.enemy.last_flags = self.enemy.flags;
        self.enemy.veh_body.roll_velocity_z = (random() * 20) - 10;
        self.enemy.racing_flags = self.enemy.racing_flags | QR_MINE_EXPLODED;
    }
    
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.enemy.origin_x);
    WriteCoord(MSG_BROADCAST, self.enemy.origin_y);
    WriteCoord(MSG_BROADCAST, self.enemy.origin_z);
    BecomeExplosion();
    self.enemy.mine_attached = world;
};

// GrenadeDetonateThink
// function begins at statement 12455, parm_start=9706
// OP_LOAD_ENT	28	181	9706
// OP_STORE_V	9706	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9707	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_F	28	591	9708
// OP_SUB_F	31	9708	9709
// OP_LT	9709	827	9710
// OP_IFNOT	9710	5	0
// OP_ADDRESS	28	150	9711
// OP_ADD_F	31	819	9712
// OP_STOREP_F	9712	9711	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	591	9713
// OP_SUB_F	31	9713	9714
// OP_LT	9714	829	9715
// OP_IFNOT	9715	5	0
// OP_ADDRESS	28	150	9716
// OP_ADD_F	31	1182	9717
// OP_STOREP_F	9717	9716	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	591	9718
// OP_SUB_F	31	9718	9719
// OP_LT	9719	839	9720
// OP_IFNOT	9720	5	0
// OP_ADDRESS	28	150	9721
// OP_ADD_F	31	5540	9722
// OP_STOREP_F	9722	9721	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	591	9723
// OP_SUB_F	31	9723	9724
// OP_LT	9724	843	9725
// OP_IFNOT	9725	5	0
// OP_ADDRESS	28	150	9726
// OP_ADD_F	31	2869	9727
// OP_STOREP_F	9727	9726	0
// OP_GOTO	16	0	0
// OP_IFNOT	35	8	0
// OP_LOAD_ENT	28	181	9728
// OP_STORE_V	9728	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2677	13	0
// OP_CALL4	534	0	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	28	181	9729
// OP_STORE_V	9729	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2522	13	0
// OP_CALL4	534	0	0
// OP_CALL0	9647	0	0
// OP_DONE	0	0	0
void () GrenadeDetonateThink = 
{
    sound(self.enemy, CHAN_AUTO, "rally/minebeep.wav", 1, ATTN_NORM);
    if((time - self.last_engine) < 5)
    {
        self.nextthink = time + 1;
    }
    else
    {
        if((time - self.last_engine) < 6)
        {
            self.nextthink = time + 0.5;
        }
        else
        {
            if((time - self.last_engine) < 7)
            {
                self.nextthink = time + 0.25;
            }
            else
            {
                if((time - self.last_engine) < 8)
                {
                    self.nextthink = time + 0.1;
                }
                else
                {
                    if(deathmatch)
                    {
                        T_Damage(self.enemy, self, self, 80);
                    }
                    else
                    {
                        T_Damage(self.enemy, self, self, 30);
                    }
                    
                    GrenadeExplode();
                }
                
            }
            
        }
        
    }
    
};

// GrenadeTouch
// function begins at statement 12510, parm_start=9731
// OP_LOAD_ENT	29	673	9731
// OP_NE_E	9731	30	9732
// OP_IFNOT	9732	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	9733
// OP_EQ_S	9733	880	9734
// OP_IFNOT	9734	29	0
// OP_ADDRESS	28	104	9735
// OP_STOREP_F	243	9735	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9707	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	181	9736
// OP_STOREP_ENT	29	9736	0
// OP_ADDRESS	28	148	9737
// OP_STOREP_FNC	9705	9737	0
// OP_ADDRESS	28	150	9738
// OP_ADD_F	31	819	9739
// OP_STOREP_F	9739	9738	0
// OP_ADDRESS	28	591	9740
// OP_STOREP_F	31	9740	0
// OP_ADDRESS	28	133	9741
// OP_STOREP_F	817	9741	0
// OP_STORE_V	28	4	0
// OP_STORE_V	357	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	9742	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	29	673	9743
// OP_STOREP_ENT	28	9743	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9185	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	113	9744
// OP_EQ_V	9744	926	9747
// OP_IFNOT	9747	5	0
// OP_ADDRESS	28	121	9748
// OP_STOREP_V	926	9748	0
// OP_ADDRESS	28	117	9751
// OP_STOREP_V	926	9751	0
// OP_DONE	0	0	0
void () GrenadeTouch = 
{
    
    if(other.mine_attached != world)
    {
        return;
    }
    
    
    if(other.classname == "player")
    {
        self.solid = SOLID_NOT;
        sound(self, CHAN_AUTO, "rally/minebeep.wav", 1, ATTN_NORM);
        self.enemy = other;
        self.think = GrenadeDetonateThink;
        self.nextthink = time + 1;
        self.last_engine = time;
        self.effects = 0;
        setmodel(self, string_null);
        sprint(other, "Detonator will explode in 5 seconds\n");
        other.mine_attached = self;
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/bounce.wav", 1, ATTN_NORM);
    
    if(self.velocity == '0.000 0.000 0.000')
    {
        self.avelocity = '0.000 0.000 0.000';
        self.angles = '0.000 0.000 0.000';
    }
    
};

// GrenadeThink
// function begins at statement 12559, parm_start=9755
// OP_LOAD_F	28	647	9755
// OP_LT	9755	31	9756
// OP_IFNOT	9756	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	103	9757
// OP_EQ_F	9757	241	9758
// OP_LOAD_V	28	109	9759
// OP_LOAD_V	28	105	9762
// OP_EQ_V	9759	9762	9765
// OP_AND	9758	9765	9766
// OP_IFNOT	9766	10	0
// OP_ADDRESS	28	103	9767
// OP_STOREP_F	233	9767	0
// OP_ADDRESS	28	104	9768
// OP_STOREP_F	244	9768	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	9769
// OP_ADD_V	9769	916	9772
// OP_STORE_V	9772	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	109	9775
// OP_LOAD_V	28	105	9778
// OP_STOREP_V	9778	9775	0
// OP_ADDRESS	28	150	9781
// OP_ADD_F	31	1182	9782
// OP_STOREP_F	9782	9781	0
// OP_DONE	0	0	0
void () GrenadeThink = 
{
    
    if(self.last_idle < time)
    {
        remove(self);
        return;
    }
    
    
    if((self.movetype == MOVETYPE_BOUNCE) && (self.oldorigin == self.origin))
    {
        self.movetype = MOVETYPE_NONE;
        self.solid = SOLID_TRIGGER;
        setorigin(self, self.origin + '0.000 0.000 4.000');
    }
    
    self.oldorigin = self.origin;
    self.nextthink = time + 0.5;
};

// W_FireGrenade
// function begins at statement 12588, parm_start=9784
// OP_ADDRESS	28	157	9786
// OP_ADDRESS	28	160	9787
// OP_LOAD_F	28	160	9788
// OP_SUB_F	9788	819	9789
// OP_STOREP_F	9789	9787	0
// OP_STOREP_F	9789	9786	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9184	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	126	9790
// OP_STOREP_F	947	9790	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	9784	0
// OP_ADDRESS	9784	201	9791
// OP_STOREP_ENT	28	9791	0
// OP_ADDRESS	9784	103	9792
// OP_STOREP_F	241	9792	0
// OP_ADDRESS	9784	104	9793
// OP_STOREP_F	245	9793	0
// OP_ADDRESS	9784	129	9794
// OP_STOREP_S	9795	9794	0
// OP_LOAD_ENT	28	548	9796
// OP_LOAD_V	9796	117	9797
// OP_STORE_V	9797	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	9784	113	9800
// OP_STOREP_V	1584	9800	0
// OP_ADDRESS	9784	121	9803
// OP_STOREP_V	9806	9803	0
// OP_ADDRESS	9784	146	9809
// OP_STOREP_FNC	9730	9809	0
// OP_ADDRESS	9784	647	9810
// OP_ADD_F	31	855	9811
// OP_STOREP_F	9811	9810	0
// OP_ADDRESS	9784	109	9812
// OP_LOAD_V	9784	105	9815
// OP_STOREP_V	9815	9812	0
// OP_ADDRESS	9784	150	9818
// OP_ADD_F	31	819	9819
// OP_STOREP_F	9819	9818	0
// OP_ADDRESS	9784	148	9820
// OP_STOREP_FNC	9754	9820	0
// OP_STORE_V	9784	4	0
// OP_STORE_V	9821	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9784	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	9784	4	0
// OP_LOAD_V	28	105	9822
// OP_STORE_V	9822	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () W_FireGrenade = 
{
    local entity missile;
    local entity mpuff;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - 1;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "grenade";
    makevectors(self.veh_body.angles);
    missile.velocity = '0.000 0.000 200.000';
    missile.avelocity = '0.000 300.000 0.000';
    missile.touch = GrenadeTouch;
    missile.last_idle = time + 10;
    missile.oldorigin = missile.origin;
    missile.nextthink = time + 1;
    missile.think = GrenadeThink;
    setmodel(missile, "models/detnator.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, self.origin);
};

// MineExplode
// function begins at statement 12645, parm_start=9826
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	9826
// OP_STORE_V	9826	7	0
// OP_STORE_V	2677	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	8274	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	325	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	106	9827
// OP_STORE_V	9827	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	107	9828
// OP_STORE_V	9828	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	108	9829
// OP_STORE_V	9829	7	0
// OP_CALL2	511	0	0
// OP_CALL0	538	0	0
// OP_DONE	0	0	0
void () MineExplode = 
{
    T_RadiusDamage(self, self.owner, 80, other);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// MineTouch
// function begins at statement 12671, parm_start=9831
// OP_LOAD_ENT	28	201	9831
// OP_EQ_E	29	9831	9832
// OP_IFNOT	9832	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	9833
// OP_EQ_F	9833	258	9834
// OP_IFNOT	9834	9	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	9835
// OP_STORE_V	9835	10	0
// OP_STORE_V	2677	13	0
// OP_CALL4	534	0	0
// OP_CALL0	9825	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9185	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	113	9836
// OP_EQ_V	9836	926	9839
// OP_IFNOT	9839	3	0
// OP_ADDRESS	28	121	9840
// OP_STOREP_V	926	9840	0
// OP_DONE	0	0	0
void () MineTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage == DAMAGE_AIM)
    {
        T_Damage(other, self, self.owner, 80);
        MineExplode();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/bounce.wav", 1, ATTN_NORM);
    
    if(self.velocity == '0.000 0.000 0.000')
    {
        self.avelocity = '0.000 0.000 0.000';
    }
    
};

void () MineThink;
// SpawnMine
// function begins at statement 12698, parm_start=9845
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	9852	0
// OP_ADDRESS	9852	201	9853
// OP_LOAD_ENT	28	201	9854
// OP_STOREP_ENT	9854	9853	0
// OP_ADDRESS	9852	103	9855
// OP_STOREP_F	241	9855	0
// OP_ADDRESS	9852	104	9856
// OP_STOREP_F	245	9856	0
// OP_ADDRESS	9852	129	9857
// OP_STOREP_S	9858	9857	0
// OP_MUL_VF	59	823	9859
// OP_MUL_VF	65	9848	9862
// OP_ADD_V	9859	9862	9865
// OP_STORE_V	9865	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	9849	0
// OP_ADDRESS	9852	113	9868
// OP_LOAD_V	28	113	9871
// OP_STORE_V	9871	4	0
// OP_CALL1	471	0	0
// OP_MUL_VF	9849	1	9874
// OP_STOREP_V	9874	9868	0
// OP_ADDRESS	9852	116	9877
// OP_LOAD_F	28	116	9878
// OP_STOREP_F	9878	9877	0
// OP_ADDRESS	9852	121	9879
// OP_STOREP_V	3496	9879	0
// OP_ADDRESS	9852	117	9882
// OP_LOAD_V	9852	113	9885
// OP_STORE_V	9885	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	9882	0
// OP_ADDRESS	9852	146	9888
// OP_STOREP_FNC	9830	9888	0
// OP_ADDRESS	9852	647	9889
// OP_STOREP_F	31	9889	0
// OP_ADDRESS	9852	109	9890
// OP_LOAD_V	9852	105	9893
// OP_STOREP_V	9893	9890	0
// OP_ADDRESS	9852	150	9896
// OP_ADD_F	31	2869	9897
// OP_STOREP_F	9897	9896	0
// OP_ADDRESS	9852	148	9898
// OP_STOREP_FNC	9843	9898	0
// OP_STORE_V	9852	4	0
// OP_STORE_V	9899	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	9852	131	9900
// OP_STOREP_F	819	9900	0
// OP_STORE_V	9852	4	0
// OP_STORE_V	6124	7	0
// OP_STORE_V	9901	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	9852	4	0
// OP_LOAD_V	28	105	9904
// OP_MUL_VF	65	834	9907
// OP_MUL_VF	9907	9848	9910
// OP_ADD_V	9904	9910	9913
// OP_STORE_V	9913	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void (vector org, float right) SpawnMine = 
{
    local vector vel_norm;
    local entity missile;
    missile = spawn();
    missile.owner = self.owner;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "mine";
    vel_norm = normalize((v_forward * 3) + (v_right * right));
    missile.velocity = vel_norm * vlen(self.velocity);
    missile.velocity_z = self.velocity_z;
    missile.avelocity = '300.000 300.000 300.000';
    missile.angles = vectoangles(missile.velocity);
    missile.touch = MineTouch;
    missile.last_idle = time;
    missile.oldorigin = missile.origin;
    missile.nextthink = time + 0.1;
    missile.think = MineThink;
    setmodel(missile, "models/mine.mdl");
    missile.frame = 1;
    setsize(missile, '-4.000 -4.000 0.000', '4.000 4.000 4.000');
    setorigin(missile, self.origin + ((v_right * 12) * right));
};

// MineThink
// function begins at statement 12760, parm_start=9916
// OP_LOAD_F	28	647	9921
// OP_SUB_F	31	823	9922
// OP_LT	9921	9922	9923
// OP_IFNOT	9923	3	0
// OP_CALL0	9825	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	131	9924
// OP_NE_F	9924	819	9925
// OP_LOAD_F	28	647	9926
// OP_SUB_F	31	1182	9927
// OP_LT	9926	9927	9928
// OP_AND	9925	9928	9929
// OP_IFNOT	9929	25	0
// OP_CALL0	466	0	0
// OP_LT	1	1992	9930
// OP_IFNOT	9930	16	0
// OP_LOAD_V	28	113	9931
// OP_STORE_V	9931	9916	0
// OP_STORE_V	9916	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	9916	0
// OP_STORE_V	9916	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	9934
// OP_STORE_V	9934	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	9844	0	0
// OP_LOAD_V	28	105	9937
// OP_STORE_V	9937	4	0
// OP_STORE_V	1228	7	0
// OP_CALL2	9844	0	0
// OP_ADDRESS	28	116	9940
// OP_LOAD_F	28	116	9941
// OP_MUL_F	9941	3083	9942
// OP_STOREP_F	9942	9940	0
// OP_ADDRESS	28	131	9943
// OP_STOREP_F	819	9943	0
// OP_LOAD_ENT	28	181	9944
// OP_EQ_E	9944	30	9945
// OP_IFNOT	9945	22	0
// OP_LOAD_V	28	105	9946
// OP_STORE_V	9946	4	0
// OP_STORE_V	2223	7	0
// OP_CALL2	481	0	0
// OP_STORE_ENT	1	9920	0
// OP_NE_E	9920	30	9949
// OP_LOAD_F	9920	163	9950
// OP_NE_F	9950	258	9951
// OP_AND	9949	9951	9952
// OP_IFNOT	9952	4	0
// OP_LOAD_ENT	9920	164	9953
// OP_STORE_ENT	9953	9920	0
// OP_GOTO	-7	0	0
// OP_NE_E	9920	30	9954
// OP_LOAD_ENT	28	201	9955
// OP_NE_E	9920	9955	9956
// OP_AND	9954	9956	9957
// OP_IFNOT	9957	4	0
// OP_STORE_ENT	9920	29	0
// OP_CALL0	9830	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	113	9958
// OP_STORE_V	9958	4	0
// OP_CALL1	471	0	0
// OP_LT	1	1112	9961
// OP_IFNOT	9961	7	0
// OP_ADDRESS	28	148	9962
// OP_STOREP_FNC	533	9962	0
// OP_ADDRESS	28	150	9963
// OP_ADD_F	31	827	9964
// OP_STOREP_F	9964	9963	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	9965
// OP_ADD_F	31	2869	9966
// OP_STOREP_F	9966	9965	0
// OP_DONE	0	0	0
void () MineThink = 
{
    local vector old_vel;
    local float dist;
    local entity trav;
    
    if(self.last_idle < (time - 3))
    {
        MineExplode();
        return;
    }
    
    
    if((self.frame != 1) && (self.last_idle < (time - 0.5)))
    {
        
        if(random() < 0.15)
        {
            old_vel = self.velocity;
            old_vel = vectoangles(old_vel);
            makevectors(old_vel);
            SpawnMine(self.origin, 1);
            SpawnMine(self.origin, -1);
        }
        
        self.velocity_z = self.velocity_z * 0.75;
        self.frame = 1;
    }
    
    
    if(self.enemy == world)
    {
        trav = findradius(self.origin, 64);
        
        while((trav != world) && (trav.takedamage != DAMAGE_AIM))
        {
            trav = trav.chain;
        }
        
        
        if((trav != world) && (trav != self.owner))
        {
            other = trav;
            MineTouch();
            return;
        }
        
    }
    
    if(vlen(self.velocity) < 20)
    {
        self.think = SUB_Remove;
        self.nextthink = time + 5;
    }
    else
    {
        self.nextthink = time + 0.1;
    }
    
};

// W_FireMine
// function begins at statement 12836, parm_start=9968
// OP_LOAD_F	28	157	9970
// OP_GE	9970	823	9971
// OP_IFNOT	9971	8	0
// OP_ADDRESS	28	157	9972
// OP_ADDRESS	28	160	9973
// OP_LOAD_F	28	160	9974
// OP_SUB_F	9974	823	9975
// OP_STOREP_F	9975	9973	0
// OP_STOREP_F	9975	9972	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	9976
// OP_ADDRESS	28	160	9977
// OP_STOREP_F	817	9977	0
// OP_STOREP_F	817	9976	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9184	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	126	9978
// OP_STOREP_F	947	9978	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	9968	0
// OP_ADDRESS	9968	201	9979
// OP_STOREP_ENT	28	9979	0
// OP_ADDRESS	9968	103	9980
// OP_STOREP_F	241	9980	0
// OP_ADDRESS	9968	104	9981
// OP_STOREP_F	245	9981	0
// OP_ADDRESS	9968	129	9982
// OP_STOREP_S	9858	9982	0
// OP_LOAD_ENT	28	548	9983
// OP_LOAD_V	9983	117	9984
// OP_LOAD_V	28	580	9987
// OP_SUB_V	9984	9987	9990
// OP_STORE_V	9990	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	9968	113	9993
// OP_LOAD_V	28	113	9996
// OP_STORE_V	9996	4	0
// OP_CALL1	471	0	0
// OP_MUL_F	1	883	9999
// OP_ADD_F	1957	9999	10000
// OP_MUL_VF	59	10000	10001
// OP_STOREP_V	10001	9993	0
// OP_ADDRESS	9968	116	10004
// OP_STOREP_F	1135	10004	0
// OP_ADDRESS	9968	121	10005
// OP_STOREP_V	3496	10005	0
// OP_ADDRESS	9968	117	10008
// OP_LOAD_V	9968	113	10011
// OP_STORE_V	10011	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	10008	0
// OP_ADDRESS	9968	146	10014
// OP_STOREP_FNC	9830	10014	0
// OP_ADDRESS	9968	647	10015
// OP_STOREP_F	31	10015	0
// OP_ADDRESS	9968	109	10016
// OP_LOAD_V	9968	105	10019
// OP_STOREP_V	10019	10016	0
// OP_ADDRESS	9968	150	10022
// OP_ADD_F	31	2869	10023
// OP_STOREP_F	10023	10022	0
// OP_ADDRESS	9968	148	10024
// OP_STOREP_FNC	9843	10024	0
// OP_STORE_V	9968	4	0
// OP_STORE_V	9899	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9968	4	0
// OP_STORE_V	6124	7	0
// OP_STORE_V	9901	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	9968	4	0
// OP_LOAD_V	28	105	10025
// OP_STORE_V	10025	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void () W_FireMine = 
{
    local entity missile;
    local entity mpuff;
    if(self.currentammo >= 3)
    {
        self.currentammo = self.ammo_rockets = self.ammo_rockets - 3;
    }
    else
    {
        self.ammo_rockets = 0;
        self.currentammo = 0;
    }
    
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "mine";
    makevectors(self.veh_body.angles - self.body_roll);
    missile.velocity = v_forward * (100 + (vlen(self.velocity) * 1.5));
    missile.velocity_z = 250;
    missile.avelocity = '300.000 300.000 300.000';
    missile.angles = vectoangles(missile.velocity);
    missile.touch = MineTouch;
    missile.last_idle = time;
    missile.oldorigin = missile.origin;
    missile.nextthink = time + 0.1;
    missile.think = MineThink;
    setmodel(missile, "models/mine.mdl");
    setsize(missile, '-4.000 -4.000 0.000', '4.000 4.000 4.000');
    setorigin(missile, self.origin);
};

// LaserTouch
// function begins at statement 12915, parm_start=10029
// OP_LOAD_ENT	28	201	10029
// OP_EQ_E	29	10029	10030
// OP_IFNOT	10030	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	10031
// OP_EQ_F	10031	258	10032
// OP_IFNOT	10032	12	0
// OP_STORE_V	1112	4	0
// OP_CALL1	9294	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	10033
// OP_STORE_V	10033	10	0
// OP_STORE_V	1112	13	0
// OP_CALL4	534	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	592	10034
// OP_STOREP_F	31	10034	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	10035	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	113	10036
// OP_EQ_V	10036	926	10039
// OP_IFNOT	10039	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () LaserTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage == DAMAGE_AIM)
    {
        spawn_touchblood(20);
        T_Damage(other, self, self.owner, 20);
        remove(self);
        return;
    }
    
    self.last_jump_z = time;
    sound(self, CHAN_AUTO, "rally/process/spark4.wav", 1, ATTN_NORM);
    
    if(self.velocity == '0.000 0.000 0.000')
    {
        remove(self);
    }
    
};

// spawn_laser
// function begins at statement 12947, parm_start=10041
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10044	0
// OP_ADDRESS	10044	201	10049
// OP_STOREP_ENT	28	10049	0
// OP_ADDRESS	10044	103	10050
// OP_STOREP_F	241	10050	0
// OP_ADDRESS	10044	104	10051
// OP_STOREP_F	245	10051	0
// OP_ADDRESS	10044	129	10052
// OP_STOREP_S	10053	10052	0
// OP_STORE_V	10041	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	10046	0
// OP_ADDRESS	10044	113	10054
// OP_LOAD_V	28	113	10058
// OP_STORE_V	10058	4	0
// OP_CALL1	471	0	0
// OP_MUL_F	1	883	10061
// OP_ADD_F	10057	10061	10062
// OP_MUL_VF	10046	10062	10063
// OP_STOREP_V	10063	10054	0
// OP_ADDRESS	10044	117	10066
// OP_LOAD_V	10044	113	10069
// OP_STORE_V	10069	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	10066	0
// OP_ADDRESS	10044	567	10072
// OP_LOAD_V	10044	113	10075
// OP_STOREP_V	10075	10072	0
// OP_ADDRESS	10044	146	10078
// OP_STOREP_FNC	10028	10078	0
// OP_ADDRESS	10044	592	10079
// OP_STOREP_F	817	10079	0
// OP_ADDRESS	10044	109	10080
// OP_LOAD_V	10044	105	10083
// OP_STOREP_V	10083	10080	0
// OP_ADDRESS	10044	150	10086
// OP_ADD_F	31	3083	10087
// OP_STOREP_F	10087	10086	0
// OP_ADDRESS	10044	148	10088
// OP_STOREP_FNC	533	10088	0
// OP_STORE_V	10044	4	0
// OP_STORE_V	10089	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	10044	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	10044	4	0
// OP_LOAD_V	28	105	10090
// OP_MUL_VF	10046	825	10093
// OP_ADD_V	10090	10093	10096
// OP_STORE_V	10096	7	0
// OP_CALL2	462	0	0
// OP_DONE	0	0	0
void (vector dir) spawn_laser = 
{
    local entity missile;
    local entity mpuff;
    local vector vect;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "laser";
    vect = normalize(dir);
    missile.velocity = vect * (2000 + (vlen(self.velocity) * 1.5));
    missile.angles = vectoangles(missile.velocity);
    missile.old_velocity = missile.velocity;
    missile.touch = LaserTouch;
    missile.last_jump_z = 0;
    missile.oldorigin = missile.origin;
    missile.nextthink = time + 0.75;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/laser.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, self.origin + (vect * 4));
};

// W_FireLaser
// function begins at statement 13002, parm_start=10100
// OP_LOAD_F	28	157	10100
// OP_GE	10100	821	10101
// OP_IFNOT	10101	8	0
// OP_ADDRESS	28	157	10102
// OP_ADDRESS	28	217	10103
// OP_LOAD_F	28	217	10104
// OP_SUB_F	10104	821	10105
// OP_STOREP_F	10105	10103	0
// OP_STOREP_F	10105	10102	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	10106
// OP_ADDRESS	28	217	10107
// OP_STOREP_F	817	10107	0
// OP_STOREP_F	817	10106	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	10108	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	126	10109
// OP_STOREP_F	947	10109	0
// OP_LOAD_ENT	28	548	10110
// OP_LOAD_V	10110	117	10111
// OP_LOAD_V	28	580	10114
// OP_SUB_V	10111	10114	10117
// OP_STORE_V	10117	4	0
// OP_CALL1	461	0	0
// OP_MUL_F	1228	61	10120
// OP_STORE_F	10120	61	0
// OP_STORE_V	61	4	0
// OP_CALL1	499	0	0
// OP_LT	1	2869	10121
// OP_IFNOT	10121	2	0
// OP_STORE_F	817	61	0
// OP_STORE_V	67	4	0
// OP_CALL1	499	0	0
// OP_LT	1	2869	10122
// OP_IFNOT	10122	2	0
// OP_STORE_F	817	67	0
// OP_STORE_V	59	4	0
// OP_CALL1	10040	0	0
// OP_MUL_VF	59	825	10123
// OP_ADD_V	10123	65	10126
// OP_STORE_V	10126	4	0
// OP_CALL1	10040	0	0
// OP_MUL_VF	59	825	10129
// OP_SUB_V	10129	65	10132
// OP_STORE_V	10132	4	0
// OP_CALL1	10040	0	0
// OP_DONE	0	0	0
void () W_FireLaser = 
{
    if(self.currentammo >= 2)
    {
        self.currentammo = self.ammo_roobar = self.ammo_roobar - 2;
    }
    else
    {
        self.ammo_roobar = 0;
        self.currentammo = 0;
    }
    
    sound(self, CHAN_WEAPON, "enforcer/enfire.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
    makevectors(self.veh_body.angles - self.body_roll);
    v_forward_z = -1 * 0;
    
    if(fabs(0) < 0.1)
    {
        v_forward_z = 0;
    }
    
    
    if(fabs(0) < 0.1)
    {
        v_right_z = 0;
    }
    
    spawn_laser(v_forward);
    spawn_laser((v_forward * 4) + v_right);
    spawn_laser((v_forward * 4) - v_right);
};

void () spike_touch;
void () superspike_touch;
// launch_spike
// function begins at statement 13053, parm_start=10138
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	359	0
// OP_ADDRESS	359	201	10144
// OP_STOREP_ENT	28	10144	0
// OP_ADDRESS	359	103	10145
// OP_STOREP_F	240	10145	0
// OP_ADDRESS	359	104	10146
// OP_STOREP_F	245	10146	0
// OP_ADDRESS	359	117	10147
// OP_STORE_V	10141	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	10147	0
// OP_ADDRESS	359	146	10150
// OP_STOREP_FNC	10135	10150	0
// OP_ADDRESS	359	129	10151
// OP_STOREP_S	10152	10151	0
// OP_ADDRESS	359	148	10153
// OP_STOREP_FNC	533	10153	0
// OP_ADDRESS	359	150	10154
// OP_ADD_F	31	829	10155
// OP_STOREP_F	10155	10154	0
// OP_STORE_V	359	4	0
// OP_STORE_V	10156	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	359	4	0
// OP_STORE_V	300	7	0
// OP_STORE_V	300	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	359	4	0
// OP_STORE_V	10138	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	359	113	10157
// OP_MUL_VF	10141	9535	10160
// OP_STOREP_V	10160	10157	0
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
    newmis.velocity = dir * 1500;
};

// W_FireSuperSpikes
// function begins at statement 13088, parm_start=10164
// OP_LOAD_ENT	28	548	10168
// OP_LOAD_V	10168	117	10169
// OP_STORE_V	10169	10164	0
// OP_LOAD_F	28	182	10172
// OP_BITAND	10172	228	10173
// OP_IFNOT	10173	12	0
// OP_LOAD_V	28	105	10174
// OP_STORE_V	10174	4	0
// OP_LOAD_V	28	105	10177
// OP_SUB_V	10177	2284	10180
// OP_STORE_V	10180	7	0
// OP_STORE_V	219	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_V	74	1215	10183
// OP_IFNOT	10183	2	0
// OP_STORE_F	817	10164	0
// OP_MUL_F	1228	10164	10184
// OP_STORE_F	10184	10164	0
// OP_STORE_V	10164	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	157	10185
// OP_ADDRESS	28	159	10186
// OP_LOAD_F	28	159	10187
// OP_SUB_F	10187	819	10188
// OP_STOREP_F	10188	10186	0
// OP_STOREP_F	10188	10185	0
// OP_ADDRESS	28	387	10189
// OP_ADD_F	31	1152	10190
// OP_STOREP_F	10190	10189	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9182	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	387	10191
// OP_ADD_F	31	1152	10192
// OP_STOREP_F	10192	10191	0
// OP_LOAD_V	28	105	10193
// OP_ADD_V	10193	1666	10196
// OP_STORE_V	10196	4	0
// OP_LOAD_V	28	105	10199
// OP_ADD_V	10199	1666	10202
// OP_MUL_VF	59	9421	10205
// OP_ADD_V	10202	10205	10208
// OP_STORE_V	10208	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_NE_E	78	30	10211
// OP_IFNOT	10211	12	0
// OP_LOAD_F	78	163	10212
// OP_NE_F	10212	256	10213
// OP_IFNOT	10213	8	0
// OP_STORE_V	855	4	0
// OP_CALL1	9294	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1632	13	0
// OP_CALL4	534	0	0
// OP_GOTO	18	0	0
// OP_LT	70	819	10214
// OP_IFNOT	10214	16	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	324	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	511	0	0
// OP_DONE	0	0	0
void () W_FireSuperSpikes = 
{
    local vector dir;
    local entity old;
    dir = self.veh_body.angles;
    
    if(self.flags & FL_ONGROUND)
    {
        traceline(self.origin, self.origin - '0.000 0.000 64.000', TRUE, self);
        
        if(trace_plane_normal == '0.000 0.000 1.000')
        {
            dir_x = 0;
        }
        
    }
    
    dir_x = -1 * dir_x;
    makevectors(dir);
    self.currentammo = self.ammo_nails = self.ammo_nails - 1;
    self.attack_finished = time + 0.2;
    sound(self, CHAN_WEAPON, "weapons/spike2.wav", 1, ATTN_NORM);
    self.attack_finished = time + 0.2;
    traceline(self.origin + '0.000 0.000 8.000', (self.origin + '0.000 0.000 8.000') + (v_forward * 2048), FALSE, self);
    if(trace_ent != world)
    {
        
        if(trace_ent.takedamage != DAMAGE_NO)
        {
            spawn_touchblood(10);
            T_Damage(trace_ent, self, self, 40);
        }
        
    }
    else
    {
        
        if(trace_fraction < 1)
        {
            WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
            WriteByte(MSG_BROADCAST, TE_GUNSHOT);
            WriteCoord(MSG_BROADCAST, trace_endpos_x);
            WriteCoord(MSG_BROADCAST, 0);
            WriteCoord(MSG_BROADCAST, 0);
        }
        
    }
    
};

// W_FireSpikes
// function begins at statement 13169, parm_start=10216
// OP_LOAD_F	28	159	10221
// OP_LT	10221	819	10222
// OP_IFNOT	10222	6	0
// OP_ADDRESS	28	154	10223
// OP_CALL0	8577	0	0
// OP_STOREP_F	1	10223	0
// OP_CALL0	931	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	10224
// OP_EQ_F	10224	263	10225
// OP_IFNOT	10225	3	0
// OP_CALL0	10163	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	9176	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	387	10226
// OP_ADD_F	31	1152	10227
// OP_STOREP_F	10227	10226	0
// OP_ADDRESS	28	157	10228
// OP_ADDRESS	28	159	10229
// OP_LOAD_F	28	159	10230
// OP_SUB_F	10230	819	10231
// OP_STOREP_F	10231	10229	0
// OP_STOREP_F	10231	10228	0
// OP_STORE_V	59	10217	0
// OP_LOAD_ENT	28	548	10232
// OP_LOAD_V	10232	105	10233
// OP_MUL_VF	65	10216	10236
// OP_ADD_V	10233	10236	10239
// OP_STORE_V	10239	4	0
// OP_STORE_V	10217	7	0
// OP_CALL2	10137	0	0
// OP_ADDRESS	28	126	10242
// OP_STOREP_F	947	10242	0
// OP_DONE	0	0	0
void (float ox) W_FireSpikes = 
{
    local vector dir;
    local entity old;
    
    if(self.ammo_nails < 1)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    
    if(self.weapon == IT_SUPER_NAILGUN)
    {
        W_FireSuperSpikes();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/rocket1i.wav", 1, ATTN_NORM);
    self.attack_finished = time + 0.2;
    self.currentammo = self.ammo_nails = self.ammo_nails - 1;
    dir = v_forward;
    launch_spike(self.veh_body.origin + (v_right * ox), dir);
    self.punchangle_x = -2;
};

.float hit_z;
// spike_touch
// function begins at statement 13208, parm_start=10244
// OP_LOAD_ENT	28	201	10245
// OP_EQ_E	29	10245	10246
// OP_IFNOT	10246	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	10247
// OP_EQ_F	10247	244	10248
// OP_IFNOT	10248	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	10249
// OP_STORE_V	10249	4	0
// OP_CALL1	498	0	0
// OP_EQ_F	1	295	10252
// OP_IFNOT	10252	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	10253
// OP_IFNOT	10253	36	0
// OP_STORE_V	845	4	0
// OP_CALL1	9294	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	10254
// OP_STORE_V	10254	10	0
// OP_STORE_V	845	13	0
// OP_CALL4	534	0	0
// OP_CALL0	466	0	0
// OP_STORE_F	1	10244	0
// OP_LT	10244	2575	10255
// OP_IFNOT	10255	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9179	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	16	0	0
// OP_LT	10244	5974	10256
// OP_IFNOT	10256	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9180	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9181	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	33	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_LOAD_S	28	129	10257
// OP_EQ_S	10257	10258	10259
// OP_IFNOT	10259	5	0
// OP_STORE_V	351	4	0
// OP_STORE_V	329	7	0
// OP_CALL2	507	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	28	129	10260
// OP_EQ_S	10260	10261	10262
// OP_IFNOT	10262	5	0
// OP_STORE_V	351	4	0
// OP_STORE_V	330	7	0
// OP_CALL2	507	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	322	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	106	10263
// OP_STORE_V	10263	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	107	10264
// OP_STORE_V	10264	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	108	10265
// OP_STORE_V	10265	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
        spawn_touchblood(15);
        T_Damage(other, self, self.owner, 15);
        rand = random();
        if(rand < 0.3)
        {
            sound(other, CHAN_AUTO, "weapons/ric1.wav", 1, ATTN_NORM);
        }
        else
        {
            if(rand < 0.65)
            {
                sound(other, CHAN_AUTO, "weapons/ric2.wav", 1, ATTN_NORM);
            }
            else
            {
                sound(other, CHAN_AUTO, "weapons/ric3.wav", 1, ATTN_NORM);
            }
            
        }
        
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
// function begins at statement 13296, parm_start=10266
// OP_LOAD_ENT	28	201	10267
// OP_EQ_E	29	10267	10268
// OP_IFNOT	10268	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	10269
// OP_EQ_F	10269	244	10270
// OP_IFNOT	10270	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	10271
// OP_STORE_V	10271	4	0
// OP_CALL1	498	0	0
// OP_EQ_F	1	295	10274
// OP_IFNOT	10274	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	10275
// OP_IFNOT	10275	36	0
// OP_STORE_V	3974	4	0
// OP_CALL1	9294	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	10276
// OP_STORE_V	10276	10	0
// OP_STORE_V	2522	13	0
// OP_CALL4	534	0	0
// OP_CALL0	466	0	0
// OP_STORE_F	1	10266	0
// OP_LT	10266	2575	10277
// OP_IFNOT	10277	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9179	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	16	0	0
// OP_LT	10266	5974	10278
// OP_IFNOT	10278	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9180	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	9181	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	323	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	106	10279
// OP_STORE_V	10279	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	107	10280
// OP_STORE_V	10280	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	108	10281
// OP_STORE_V	10281	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
        T_Damage(other, self, self.owner, 30);
        rand = random();
        if(rand < 0.3)
        {
            sound(other, CHAN_AUTO, "weapons/ric1.wav", 1, ATTN_NORM);
        }
        else
        {
            if(rand < 0.65)
            {
                sound(other, CHAN_AUTO, "weapons/ric2.wav", 1, ATTN_NORM);
            }
            else
            {
                sound(other, CHAN_AUTO, "weapons/ric3.wav", 1, ATTN_NORM);
            }
            
        }
        
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
// function begins at statement 13370, parm_start=10282
// OP_ADDRESS	28	162	10282
// OP_LOAD_F	28	162	10283
// OP_LOAD_F	28	162	10284
// OP_BITOR	269	270	10285
// OP_BITOR	10285	283	10286
// OP_BITOR	10286	282	10287
// OP_BITOR	10287	271	10288
// OP_BITAND	10284	10288	10289
// OP_SUB_F	10283	10289	10290
// OP_STOREP_F	10290	10282	0
// OP_LOAD_F	28	154	10291
// OP_EQ_F	10291	277	10292
// OP_IFNOT	10292	19	0
// OP_ADDRESS	28	157	10293
// OP_LOAD_F	28	217	10294
// OP_STOREP_F	10294	10293	0
// OP_ADDRESS	28	162	10295
// OP_LOAD_F	28	162	10296
// OP_BITOR	10296	271	10297
// OP_STOREP_F	10297	10295	0
// OP_LOAD_S	28	129	10298
// OP_EQ_S	10298	880	10299
// OP_IFNOT	10299	8	0
// OP_GT	738	819	10300
// OP_IFNOT	10300	6	0
// OP_LOAD_ENT	28	548	10301
// OP_ADDRESS	10301	93	10302
// OP_LOAD_F	28	685	10303
// OP_ADD_F	10303	819	10304
// OP_STOREP_F	10304	10302	0
// OP_GOTO	123	0	0
// OP_LOAD_F	28	154	10305
// OP_EQ_F	10305	280	10306
// OP_IFNOT	10306	19	0
// OP_ADDRESS	28	157	10307
// OP_LOAD_F	28	217	10308
// OP_STOREP_F	10308	10307	0
// OP_ADDRESS	28	162	10309
// OP_LOAD_F	28	162	10310
// OP_BITOR	10310	271	10311
// OP_STOREP_F	10311	10309	0
// OP_LOAD_S	28	129	10312
// OP_EQ_S	10312	880	10313
// OP_IFNOT	10313	8	0
// OP_GT	738	819	10314
// OP_IFNOT	10314	6	0
// OP_LOAD_ENT	28	548	10315
// OP_ADDRESS	10315	93	10316
// OP_LOAD_F	28	685	10317
// OP_ADD_F	10317	821	10318
// OP_STOREP_F	10318	10316	0
// OP_GOTO	102	0	0
// OP_LOAD_F	28	154	10319
// OP_EQ_F	10319	263	10320
// OP_IFNOT	10320	19	0
// OP_ADDRESS	28	157	10321
// OP_LOAD_F	28	159	10322
// OP_STOREP_F	10322	10321	0
// OP_ADDRESS	28	162	10323
// OP_LOAD_F	28	162	10324
// OP_BITOR	10324	269	10325
// OP_STOREP_F	10325	10323	0
// OP_LOAD_S	28	129	10326
// OP_EQ_S	10326	880	10327
// OP_IFNOT	10327	8	0
// OP_GT	738	819	10328
// OP_IFNOT	10328	6	0
// OP_LOAD_ENT	28	548	10329
// OP_ADDRESS	10329	93	10330
// OP_LOAD_F	28	685	10331
// OP_ADD_F	10331	823	10332
// OP_STOREP_F	10332	10330	0
// OP_GOTO	81	0	0
// OP_LOAD_F	28	154	10333
// OP_EQ_F	10333	279	10334
// OP_IFNOT	10334	19	0
// OP_ADDRESS	28	157	10335
// OP_LOAD_F	28	160	10336
// OP_STOREP_F	10336	10335	0
// OP_ADDRESS	28	162	10337
// OP_LOAD_F	28	162	10338
// OP_BITOR	10338	270	10339
// OP_STOREP_F	10339	10337	0
// OP_LOAD_S	28	129	10340
// OP_EQ_S	10340	880	10341
// OP_IFNOT	10341	8	0
// OP_GT	738	819	10342
// OP_IFNOT	10342	6	0
// OP_LOAD_ENT	28	548	10343
// OP_ADDRESS	10343	93	10344
// OP_LOAD_F	28	685	10345
// OP_ADD_F	10345	825	10346
// OP_STOREP_F	10346	10344	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	10347
// OP_EQ_F	10347	278	10348
// OP_IFNOT	10348	19	0
// OP_ADDRESS	28	157	10349
// OP_LOAD_F	28	160	10350
// OP_STOREP_F	10350	10349	0
// OP_ADDRESS	28	162	10351
// OP_LOAD_F	28	162	10352
// OP_BITOR	10352	270	10353
// OP_STOREP_F	10353	10351	0
// OP_LOAD_S	28	129	10354
// OP_EQ_S	10354	880	10355
// OP_IFNOT	10355	8	0
// OP_GT	738	819	10356
// OP_IFNOT	10356	6	0
// OP_LOAD_ENT	28	548	10357
// OP_ADDRESS	10357	93	10358
// OP_LOAD_F	28	685	10359
// OP_ADD_F	10359	827	10360
// OP_STOREP_F	10360	10358	0
// OP_GOTO	39	0	0
// OP_LOAD_F	28	154	10361
// OP_EQ_F	10361	265	10362
// OP_IFNOT	10362	19	0
// OP_ADDRESS	28	157	10363
// OP_LOAD_F	28	160	10364
// OP_STOREP_F	10364	10363	0
// OP_ADDRESS	28	162	10365
// OP_LOAD_F	28	162	10366
// OP_BITOR	10366	270	10367
// OP_STOREP_F	10367	10365	0
// OP_LOAD_S	28	129	10368
// OP_EQ_S	10368	880	10369
// OP_IFNOT	10369	8	0
// OP_GT	738	819	10370
// OP_IFNOT	10370	6	0
// OP_LOAD_ENT	28	548	10371
// OP_ADDRESS	10371	93	10372
// OP_LOAD_F	28	685	10373
// OP_ADD_F	10373	829	10374
// OP_STOREP_F	10374	10372	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	154	10375
// OP_EQ_F	10375	276	10376
// OP_IFNOT	10376	13	0
// OP_ADDRESS	28	157	10377
// OP_STOREP_F	817	10377	0
// OP_LOAD_S	28	129	10378
// OP_EQ_S	10378	880	10379
// OP_IFNOT	10379	7	0
// OP_GT	738	819	10380
// OP_IFNOT	10380	5	0
// OP_LOAD_ENT	28	548	10381
// OP_ADDRESS	10381	93	10382
// OP_LOAD_F	28	685	10383
// OP_STOREP_F	10383	10382	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	157	10384
// OP_STOREP_F	817	10384	0
// OP_DONE	0	0	0
void () W_SetCurrentAmmo = 
{
    self.items = self.items - (self.items & ((((IT_NAILS | IT_ROCKETS) | IT_DETONATORS) | IT_MINES) | IT_CELLS));
    if(self.weapon == IT_ROOBAR)
    {
        self.currentammo = self.ammo_roobar;
        self.items = self.items | IT_CELLS;
        
        if(self.classname == "player")
        {
            
            if(rally_type_index > 1)
            {
                self.veh_body.modelindex = self.basemodel + 1;
            }
            
        }
        
    }
    else
    {
        if(self.weapon == IT_LASER_GUN)
        {
            self.currentammo = self.ammo_roobar;
            self.items = self.items | IT_CELLS;
            
            if(self.classname == "player")
            {
                
                if(rally_type_index > 1)
                {
                    self.veh_body.modelindex = self.basemodel + 2;
                }
                
            }
            
        }
        else
        {
            if(self.weapon == IT_SUPER_NAILGUN)
            {
                self.currentammo = self.ammo_nails;
                self.items = self.items | IT_NAILS;
                
                if(self.classname == "player")
                {
                    
                    if(rally_type_index > 1)
                    {
                        self.veh_body.modelindex = self.basemodel + 3;
                    }
                    
                }
                
            }
            else
            {
                if(self.weapon == IT_MINE_LAUNCHER)
                {
                    self.currentammo = self.ammo_rockets;
                    self.items = self.items | IT_ROCKETS;
                    
                    if(self.classname == "player")
                    {
                        
                        if(rally_type_index > 1)
                        {
                            self.veh_body.modelindex = self.basemodel + 4;
                        }
                        
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_DETONATOR)
                    {
                        self.currentammo = self.ammo_rockets;
                        self.items = self.items | IT_ROCKETS;
                        
                        if(self.classname == "player")
                        {
                            
                            if(rally_type_index > 1)
                            {
                                self.veh_body.modelindex = self.basemodel + 5;
                            }
                            
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_ROCKET_LAUNCHER)
                        {
                            self.currentammo = self.ammo_rockets;
                            self.items = self.items | IT_ROCKETS;
                            
                            if(self.classname == "player")
                            {
                                
                                if(rally_type_index > 1)
                                {
                                    self.veh_body.modelindex = self.basemodel + 6;
                                }
                                
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_NULL)
                            {
                                self.currentammo = 0;
                                
                                if(self.classname == "player")
                                {
                                    
                                    if(rally_type_index > 1)
                                    {
                                        self.veh_body.modelindex = self.basemodel;
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                self.currentammo = 0;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// W_BestWeapon
// function begins at statement 13524, parm_start=10385
// OP_LOAD_F	28	162	10386
// OP_STORE_F	10386	10385	0
// OP_LOAD_F	28	160	10387
// OP_GE	10387	819	10388
// OP_BITAND	10385	265	10389
// OP_AND	10388	10389	10390
// OP_IFNOT	10390	3	0
// OP_RETURN	265	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	217	10391
// OP_GE	10391	819	10392
// OP_BITAND	10385	277	10393
// OP_AND	10392	10393	10394
// OP_IFNOT	10394	3	0
// OP_RETURN	277	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	160	10395
// OP_GE	10395	819	10396
// OP_BITAND	10385	279	10397
// OP_AND	10396	10397	10398
// OP_IFNOT	10398	3	0
// OP_RETURN	279	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	159	10399
// OP_GE	10399	821	10400
// OP_BITAND	10385	263	10401
// OP_AND	10400	10401	10402
// OP_IFNOT	10402	3	0
// OP_RETURN	263	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	160	10403
// OP_GE	10403	819	10404
// OP_BITAND	10385	278	10405
// OP_AND	10404	10405	10406
// OP_IFNOT	10406	3	0
// OP_RETURN	278	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	217	10407
// OP_GE	10407	819	10408
// OP_BITAND	10385	280	10409
// OP_AND	10408	10409	10410
// OP_IFNOT	10410	2	0
// OP_RETURN	280	0	0
// OP_RETURN	276	0	0
// OP_DONE	0	0	0
float () W_BestWeapon = 
{
    local float it;
    it = self.items;
    if((self.ammo_rockets >= 1) && (it & IT_ROCKET_LAUNCHER))
    {
        return IT_ROCKET_LAUNCHER;
    }
    else
    {
        if((self.ammo_roobar >= 1) && (it & IT_ROOBAR))
        {
            return IT_ROOBAR;
        }
        else
        {
            if((self.ammo_rockets >= 1) && (it & IT_MINE_LAUNCHER))
            {
                return IT_MINE_LAUNCHER;
            }
            else
            {
                if((self.ammo_nails >= 2) && (it & IT_SUPER_NAILGUN))
                {
                    return IT_SUPER_NAILGUN;
                }
                else
                {
                    if((self.ammo_rockets >= 1) && (it & IT_DETONATOR))
                    {
                        return IT_DETONATOR;
                    }
                    else
                    {
                        
                        if((self.ammo_roobar >= 1) && (it & IT_LASER_GUN))
                        {
                            return IT_LASER_GUN;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return IT_NULL;
};

// W_CheckNoAmmo
// function begins at statement 13569, parm_start=10412
// OP_LOAD_F	28	157	10412
// OP_GT	10412	817	10413
// OP_IFNOT	10413	2	0
// OP_RETURN	219	0	0
// OP_ADDRESS	28	154	10414
// OP_CALL0	8577	0	0
// OP_STOREP_F	1	10414	0
// OP_CALL0	931	0	0
// OP_RETURN	218	0	0
// OP_DONE	0	0	0
float () W_CheckNoAmmo = 
{
    
    if(self.currentammo > 0)
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
// function begins at statement 13579, parm_start=10423
// OP_CALL0	5890	0	0
// OP_LOAD_F	28	182	10427
// OP_BITAND	10427	692	10428
// OP_NOT_F	10428	0	10429
// OP_LOAD_F	28	665	10430
// OP_SUB_F	31	800	10431
// OP_GT	10430	10431	10432
// OP_AND	10429	10432	10433
// OP_IFNOT	10433	2	0
// OP_RETURN	0	0	0
// OP_LT	738	821	10434
// OP_IFNOT	10434	2	0
// OP_RETURN	0	0	0
// OP_EQ_F	738	821	10435
// OP_LOAD_F	28	640	10436
// OP_LT	10436	819	10437
// OP_AND	10435	10437	10438
// OP_IFNOT	10438	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10439	7	0
// OP_CALL2	520	0	0
// OP_RETURN	0	0	0
// OP_CALL0	10411	0	0
// OP_NOT_F	1	0	10440
// OP_IFNOT	10440	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	10441
// OP_EQ_F	10441	276	10442
// OP_IFNOT	10442	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	548	10443
// OP_LOAD_V	10443	117	10444
// OP_STORE_V	10444	10424	0
// OP_LOAD_F	28	118	10447
// OP_NE_F	10447	817	10448
// OP_IFNOT	10448	3	0
// OP_MUL_F	1228	10424	10449
// OP_STORE_F	10449	10424	0
// OP_SUB_F	10424	821	10450
// OP_STORE_F	10450	10424	0
// OP_STORE_F	817	10426	0
// OP_STORE_V	10424	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	28	154	10451
// OP_EQ_F	10451	263	10452
// OP_IFNOT	10452	3	0
// OP_CALL0	10420	0	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	154	10453
// OP_EQ_F	10453	279	10454
// OP_IFNOT	10454	7	0
// OP_CALL0	10422	0	0
// OP_CALL0	9967	0	0
// OP_ADDRESS	28	387	10455
// OP_ADD_F	31	819	10456
// OP_STOREP_F	10456	10455	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	154	10457
// OP_EQ_F	10457	278	10458
// OP_IFNOT	10458	7	0
// OP_CALL0	10422	0	0
// OP_CALL0	9783	0	0
// OP_ADDRESS	28	387	10459
// OP_ADD_F	31	2233	10460
// OP_STOREP_F	10460	10459	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	154	10461
// OP_EQ_F	10461	265	10462
// OP_IFNOT	10462	7	0
// OP_CALL0	10422	0	0
// OP_CALL0	9510	0	0
// OP_ADDRESS	28	387	10463
// OP_ADD_F	31	2236	10464
// OP_STOREP_F	10464	10463	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	154	10465
// OP_EQ_F	10465	280	10466
// OP_IFNOT	10466	6	0
// OP_CALL0	10422	0	0
// OP_CALL0	10099	0	0
// OP_ADDRESS	28	387	10467
// OP_ADD_F	31	1182	10468
// OP_STOREP_F	10468	10467	0
// OP_DONE	0	0	0
void () W_Attack = 
{
    local float r;
    local vector gun_aim;
    CheckDriverReady();
    
    if((!(self.flags & QR_START_READY)) && (self.ignition_time > (time - SNDLEN_IGNITION)))
    {
        return;
    }
    
    
    if(rally_type_index < 2)
    {
        return;
    }
    
    
    if((rally_type_index == 2) && (self.last_lap < 1))
    {
        centerprint(self, "NO WEAPONS DURING FIRST LAP!");
        return;
    }
    
    
    if(!W_CheckNoAmmo())
    {
        return;
    }
    
    
    if(self.weapon == IT_NULL)
    {
        return;
    }
    
    gun_aim = self.veh_body.angles;
    
    if(self.angles_x != 0)
    {
        gun_aim_x = -1 * gun_aim_x;
    }
    
    gun_aim_x = gun_aim_x - 2;
    gun_aim_z = 0;
    makevectors(gun_aim);
    if(self.weapon == IT_SUPER_NAILGUN)
    {
        player_nail1();
    }
    else
    {
        if(self.weapon == IT_MINE_LAUNCHER)
        {
            player_rocket1();
            W_FireMine();
            self.attack_finished = time + 1;
        }
        else
        {
            if(self.weapon == IT_DETONATOR)
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
                    
                    if(self.weapon == IT_LASER_GUN)
                    {
                        player_rocket1();
                        W_FireLaser();
                        self.attack_finished = time + 0.5;
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// W_ChangeWeapon
// function begins at statement 13663, parm_start=10470
// OP_LOAD_F	28	162	10473
// OP_STORE_F	10473	10470	0
// OP_STORE_F	817	10471	0
// OP_LT	738	821	10474
// OP_IFNOT	10474	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	173	10475
// OP_EQ_F	10475	819	10476
// OP_IFNOT	10476	2	0
// OP_STORE_F	276	10472	0
// OP_LOAD_F	28	173	10477
// OP_EQ_F	10477	821	10478
// OP_IFNOT	10478	7	0
// OP_STORE_F	277	10472	0
// OP_LOAD_F	28	217	10479
// OP_LT	10479	819	10480
// OP_IFNOT	10480	2	0
// OP_STORE_F	819	10471	0
// OP_GOTO	45	0	0
// OP_LOAD_F	28	173	10481
// OP_EQ_F	10481	823	10482
// OP_IFNOT	10482	7	0
// OP_STORE_F	280	10472	0
// OP_LOAD_F	28	217	10483
// OP_LT	10483	819	10484
// OP_IFNOT	10484	2	0
// OP_STORE_F	819	10471	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	173	10485
// OP_EQ_F	10485	825	10486
// OP_IFNOT	10486	7	0
// OP_STORE_F	263	10472	0
// OP_LOAD_F	28	159	10487
// OP_LT	10487	819	10488
// OP_IFNOT	10488	2	0
// OP_STORE_F	819	10471	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	10489
// OP_EQ_F	10489	827	10490
// OP_IFNOT	10490	7	0
// OP_STORE_F	278	10472	0
// OP_LOAD_F	28	160	10491
// OP_LT	10491	819	10492
// OP_IFNOT	10492	2	0
// OP_STORE_F	819	10471	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	173	10493
// OP_EQ_F	10493	829	10494
// OP_IFNOT	10494	7	0
// OP_STORE_F	279	10472	0
// OP_LOAD_F	28	160	10495
// OP_LT	10495	819	10496
// OP_IFNOT	10496	2	0
// OP_STORE_F	819	10471	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	173	10497
// OP_EQ_F	10497	839	10498
// OP_IFNOT	10498	6	0
// OP_STORE_F	265	10472	0
// OP_LOAD_F	28	160	10499
// OP_LT	10499	819	10500
// OP_IFNOT	10500	2	0
// OP_STORE_F	819	10471	0
// OP_ADDRESS	28	173	10501
// OP_STOREP_F	817	10501	0
// OP_LOAD_F	28	162	10502
// OP_BITAND	10502	10472	10503
// OP_NOT_F	10503	0	10504
// OP_EQ_F	10472	276	10505
// OP_NOT_F	10505	0	10506
// OP_AND	10504	10506	10507
// OP_IFNOT	10507	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10508	7	0
// OP_CALL2	483	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	10471	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10509	7	0
// OP_CALL2	483	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	154	10510
// OP_STOREP_F	10472	10510	0
// OP_CALL0	931	0	0
// OP_DONE	0	0	0
void () W_ChangeWeapon = 
{
    local float it;
    local float am;
    local float fl;
    it = self.items;
    am = 0;
    
    if(rally_type_index < 2)
    {
        return;
    }
    
    
    if(self.impulse == 1)
    {
        fl = IT_NULL;
    }
    
    if(self.impulse == 2)
    {
        fl = IT_ROOBAR;
        
        if(self.ammo_roobar < 1)
        {
            am = 1;
        }
        
    }
    else
    {
        if(self.impulse == 3)
        {
            fl = IT_LASER_GUN;
            
            if(self.ammo_roobar < 1)
            {
                am = 1;
            }
            
        }
        else
        {
            if(self.impulse == 4)
            {
                fl = IT_SUPER_NAILGUN;
                
                if(self.ammo_nails < 1)
                {
                    am = 1;
                }
                
            }
            else
            {
                if(self.impulse == 5)
                {
                    fl = IT_DETONATOR;
                    
                    if(self.ammo_rockets < 1)
                    {
                        am = 1;
                    }
                    
                }
                else
                {
                    if(self.impulse == 6)
                    {
                        fl = IT_MINE_LAUNCHER;
                        
                        if(self.ammo_rockets < 1)
                        {
                            am = 1;
                        }
                        
                    }
                    else
                    {
                        
                        if(self.impulse == 7)
                        {
                            fl = IT_ROCKET_LAUNCHER;
                            
                            if(self.ammo_rockets < 1)
                            {
                                am = 1;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self.impulse = 0;
    
    if((!(self.items & fl)) && (!(fl == IT_NULL)))
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

// GiveDukesLaunchers
// function begins at statement 13748, parm_start=10512
// OP_STORE_ENT	30	10512	0
// OP_STORE_V	10512	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	3609	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	10512	0
// OP_NE_E	1	30	10513
// OP_IFNOT	10513	4	0
// OP_ADDRESS	10512	160	10514
// OP_STOREP_F	1957	10514	0
// OP_GOTO	-9	0	0
// OP_DONE	0	0	0
void () GiveDukesLaunchers = 
{
    local entity trav;
    trav = world;
    trav = find(trav, classname, "rally_dude");
    
    while(find(trav, classname, "rally_dude") != world)
    {
        trav.ammo_rockets = 100;
    }
    
};

void () Awake_Boss;
// CheatCommand
// function begins at statement 13760, parm_start=10517
// OP_EQ_F	738	825	10517
// OP_IFNOT	10517	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10518	7	0
// OP_CALL2	483	0	0
// OP_ADDRESS	28	152	10519
// OP_STOREP_F	819	10519	0
// OP_CALL0	10511	0	0
// OP_RETURN	0	0	0
// OP_OR	35	36	10520
// OP_IFNOT	10520	2	0
// OP_RETURN	0	0	0
// OP_LE	738	819	10521
// OP_IFNOT	10521	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	160	10522
// OP_STOREP_F	1957	10522	0
// OP_ADDRESS	28	159	10523
// OP_STOREP_F	4760	10523	0
// OP_ADDRESS	28	160	10524
// OP_STOREP_F	1957	10524	0
// OP_ADDRESS	28	217	10525
// OP_STOREP_F	1957	10525	0
// OP_ADDRESS	28	162	10526
// OP_LOAD_F	28	162	10527
// OP_BITOR	10527	277	10528
// OP_BITOR	10528	280	10529
// OP_BITOR	10529	263	10530
// OP_BITOR	10530	279	10531
// OP_BITOR	10531	278	10532
// OP_BITOR	10532	265	10533
// OP_BITOR	10533	284	10534
// OP_BITOR	10534	285	10535
// OP_STOREP_F	10535	10526	0
// OP_ADDRESS	28	154	10536
// OP_STOREP_F	265	10536	0
// OP_ADDRESS	28	173	10537
// OP_STOREP_F	817	10537	0
// OP_CALL0	931	0	0
// OP_DONE	0	0	0
void () CheatCommand = 
{
    
    if(rally_type_index == 4)
    {
        sprint(self, "That wasn't very wise..\n");
        self.health = 1;
        GiveDukesLaunchers();
        return;
    }
    
    
    if(deathmatch || coop)
    {
        return;
    }
    
    
    if(rally_type_index <= 1)
    {
        return;
    }
    
    self.ammo_rockets = 100;
    self.ammo_nails = 200;
    self.ammo_rockets = 100;
    self.ammo_roobar = 100;
    self.items = (((((((self.items | IT_ROOBAR) | IT_LASER_GUN) | IT_SUPER_NAILGUN) | IT_MINE_LAUNCHER) | IT_DETONATOR) | IT_ROCKET_LAUNCHER) | IT_KEY1) | IT_KEY2;
    self.weapon = IT_ROCKET_LAUNCHER;
    self.impulse = 0;
    W_SetCurrentAmmo();
};

// CycleWeaponCommand
// function begins at statement 13800, parm_start=10539
// OP_LT	738	821	10542
// OP_IFNOT	10542	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	162	10543
// OP_STORE_F	10543	10539	0
// OP_ADDRESS	28	173	10544
// OP_STOREP_F	817	10544	0
// OP_STORE_F	817	10541	0
// OP_LT	10541	855	10545
// OP_IFNOT	10545	72	0
// OP_STORE_F	817	10540	0
// OP_LOAD_F	28	154	10546
// OP_EQ_F	10546	265	10547
// OP_IFNOT	10547	8	0
// OP_ADDRESS	28	154	10548
// OP_STOREP_F	277	10548	0
// OP_LOAD_F	28	217	10549
// OP_LT	10549	819	10550
// OP_IFNOT	10550	2	0
// OP_STORE_F	819	10540	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	154	10551
// OP_EQ_F	10551	277	10552
// OP_IFNOT	10552	8	0
// OP_ADDRESS	28	154	10553
// OP_STOREP_F	280	10553	0
// OP_LOAD_F	28	217	10554
// OP_LT	10554	819	10555
// OP_IFNOT	10555	2	0
// OP_STORE_F	819	10540	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	154	10556
// OP_EQ_F	10556	280	10557
// OP_IFNOT	10557	8	0
// OP_ADDRESS	28	154	10558
// OP_STOREP_F	263	10558	0
// OP_LOAD_F	28	159	10559
// OP_LT	10559	819	10560
// OP_IFNOT	10560	2	0
// OP_STORE_F	819	10540	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	154	10561
// OP_EQ_F	10561	263	10562
// OP_IFNOT	10562	8	0
// OP_ADDRESS	28	154	10563
// OP_STOREP_F	279	10563	0
// OP_LOAD_F	28	160	10564
// OP_LT	10564	819	10565
// OP_IFNOT	10565	2	0
// OP_STORE_F	819	10540	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	154	10566
// OP_EQ_F	10566	279	10567
// OP_IFNOT	10567	8	0
// OP_ADDRESS	28	154	10568
// OP_STOREP_F	278	10568	0
// OP_LOAD_F	28	160	10569
// OP_LT	10569	819	10570
// OP_IFNOT	10570	2	0
// OP_STORE_F	819	10540	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	10571
// OP_EQ_F	10571	278	10572
// OP_IFNOT	10572	7	0
// OP_ADDRESS	28	154	10573
// OP_STOREP_F	265	10573	0
// OP_LOAD_F	28	160	10574
// OP_LT	10574	819	10575
// OP_IFNOT	10575	2	0
// OP_STORE_F	819	10540	0
// OP_LOAD_F	28	162	10576
// OP_LOAD_F	28	154	10577
// OP_BITAND	10576	10577	10578
// OP_EQ_F	10540	817	10579
// OP_AND	10578	10579	10580
// OP_IFNOT	10580	3	0
// OP_CALL0	931	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	10541	819	10581
// OP_STORE_F	10581	10541	0
// OP_GOTO	-72	0	0
// OP_DONE	0	0	0
void () CycleWeaponCommand = 
{
    local float it;
    local float am;
    local float i;
    
    if(rally_type_index < 2)
    {
        return;
    }
    
    it = self.items;
    self.impulse = 0;
    i = 0;
    
    while(i < 10)
    {
        am = 0;
        if(self.weapon == IT_ROCKET_LAUNCHER)
        {
            self.weapon = IT_ROOBAR;
            
            if(self.ammo_roobar < 1)
            {
                am = 1;
            }
            
        }
        else
        {
            if(self.weapon == IT_ROOBAR)
            {
                self.weapon = IT_LASER_GUN;
                
                if(self.ammo_roobar < 1)
                {
                    am = 1;
                }
                
            }
            else
            {
                if(self.weapon == IT_LASER_GUN)
                {
                    self.weapon = IT_SUPER_NAILGUN;
                    
                    if(self.ammo_nails < 1)
                    {
                        am = 1;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.weapon = IT_MINE_LAUNCHER;
                        
                        if(self.ammo_rockets < 1)
                        {
                            am = 1;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_MINE_LAUNCHER)
                        {
                            self.weapon = IT_DETONATOR;
                            
                            if(self.ammo_rockets < 1)
                            {
                                am = 1;
                            }
                            
                        }
                        else
                        {
                            
                            if(self.weapon == IT_DETONATOR)
                            {
                                self.weapon = IT_ROCKET_LAUNCHER;
                                
                                if(self.ammo_rockets < 1)
                                {
                                    am = 1;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if((self.items & self.weapon) && (am == 0))
        {
            W_SetCurrentAmmo();
            return;
        }
        
        i = i + 1;
    }
    
};

// ServerflagsCommand
// function begins at statement 13882, parm_start=10583
// OP_MUL_F	38	821	10583
// OP_ADD_F	10583	819	10584
// OP_STORE_F	10584	38	0
// OP_DONE	0	0	0
void () ServerflagsCommand = 
{
    serverflags = (serverflags * 2) + 1;
};

// QuadCheat
// function begins at statement 13886, parm_start=10586
// OP_OR	35	36	10586
// OP_IFNOT	10586	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	397	10587
// OP_STOREP_F	819	10587	0
// OP_ADDRESS	28	391	10588
// OP_ADD_F	31	2522	10589
// OP_STOREP_F	10589	10588	0
// OP_ADDRESS	28	162	10590
// OP_LOAD_F	28	162	10591
// OP_BITOR	10591	289	10592
// OP_STOREP_F	10592	10590	0
// OP_STORE_V	10593	4	0
// OP_CALL1	484	0	0
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

// ID
// function begins at statement 13901, parm_start=10595
// OP_DONE	0	0	0
void () ID = 
{
};

void (float opt) Remove_chase_cam;
vector CHASECAM_CLOSE = '15.000 0.000 10.000';
vector CHASECAM_FAR = '30.000 0.000 32.000';
float chasecam_alt;
float chasecam_dist;
float chasecam_zofs;
// Chase_cam_setweapon
// function begins at statement 13902, parm_start=10606
// OP_STORE_ENT	28	10607	0
// OP_STORE_ENT	10606	28	0
// OP_CALL0	931	0	0
// OP_STORE_ENT	10607	28	0
// OP_DONE	0	0	0
void (entity player_ent) Chase_cam_setweapon = 
{
    local entity e;
    e = self;
    self = player_ent;
    W_SetCurrentAmmo();
    self = e;
};

// Start_chase_cam
// function begins at statement 13907, parm_start=10609
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10610	0
// OP_ADDRESS	10610	201	10611
// OP_STOREP_ENT	10609	10611	0
// OP_ADDRESS	10609	625	10612
// OP_STOREP_ENT	10610	10612	0
// OP_LOAD_ENT	10610	201	10613
// OP_ADDRESS	10613	378	10614
// OP_LOAD_ENT	10610	201	10615
// OP_LOAD_F	10615	378	10616
// OP_BITOR	10616	214	10617
// OP_STOREP_F	10617	10614	0
// OP_ADDRESS	10610	104	10618
// OP_STOREP_F	243	10618	0
// OP_ADDRESS	10610	103	10619
// OP_STOREP_F	239	10619	0
// OP_ADDRESS	10610	117	10620
// OP_LOAD_ENT	10610	201	10623
// OP_LOAD_V	10623	117	10624
// OP_STOREP_V	10624	10620	0
// OP_STORE_V	10610	4	0
// OP_STORE_V	1283	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	10610	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	10610	4	0
// OP_LOAD_ENT	10610	201	10627
// OP_LOAD_V	10627	105	10628
// OP_STORE_V	10628	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	10610	599	10631
// OP_LOAD_V	10610	105	10634
// OP_STOREP_V	10634	10631	0
// OP_ADDRESS	10610	129	10637
// OP_STOREP_S	10638	10637	0
// OP_ADDRESS	10610	150	10639
// OP_ADD_F	31	1988	10640
// OP_STOREP_F	10640	10639	0
// OP_ADDRESS	10610	148	10641
// OP_STOREP_FNC	4235	10641	0
// OP_LOAD_ENT	10610	201	10642
// OP_STORE_ENT	10642	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	745	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	10610	7	0
// OP_CALL2	514	0	0
// OP_STORE_V	10609	4	0
// OP_CALL1	10605	0	0
// OP_ADDRESS	10610	158	10643
// OP_STOREP_F	10603	10643	0
// OP_ADDRESS	10610	161	10644
// OP_STOREP_F	817	10644	0
// OP_DONE	0	0	0
void (entity cam_owner) Start_chase_cam = 
{
    local entity chase_cam;
    chase_cam = spawn();
    chase_cam.owner = cam_owner;
    cam_owner.chasecam = chase_cam;
    chase_cam.owner.speed = chase_cam.owner.speed | CHSCAM_ON;
    chase_cam.solid = SOLID_NOT;
    chase_cam.movetype = MOVETYPE_NOCLIP;
    chase_cam.angles = chase_cam.owner.angles;
    setmodel(chase_cam, "models/null.mdl");
    setsize(chase_cam, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(chase_cam, chase_cam.owner.origin);
    chase_cam.last_roll = chase_cam.origin;
    chase_cam.classname = "chase_cam";
    chase_cam.nextthink = time + 0.05;
    chase_cam.think = Keep_cam_chasing_owner;
    msg_entity = chase_cam.owner;
    WriteByte(MSG_ONE, SVC_SETVIEWPORT);
    WriteEntity(MSG_ONE, chase_cam);
    Chase_cam_setweapon(cam_owner);
    chase_cam.ammo_shells = chasecam_dist;
    chase_cam.ammo_cells = 0;
};

// Reable_chase_cam
// function begins at statement 13964, parm_start=10646
// OP_ADDRESS	28	150	10646
// OP_ADD_F	31	2869	10647
// OP_STOREP_F	10647	10646	0
// OP_LOAD_ENT	28	201	10648
// OP_LOAD_F	10648	152	10649
// OP_LE	10649	817	10650
// OP_IFNOT	10650	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	10651
// OP_LOAD_F	10651	189	10652
// OP_IFNOT	10652	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	10653
// OP_STORE_V	10653	4	0
// OP_CALL1	10608	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () Reable_chase_cam = 
{
    self.nextthink = time + 0.1;
    
    if(self.owner.health <= 0)
    {
        remove(self);
        return;
    }
    
    
    if(self.owner.waterlevel)
    {
        return;
    }
    
    Start_chase_cam(self.owner);
    remove(self);
};

// Remove_chase_cam
// function begins at statement 13984, parm_start=10654
// OP_LOAD_ENT	28	201	10655
// OP_LOAD_F	10655	378	10656
// OP_BITAND	10656	214	10657
// OP_IFNOT	10657	7	0
// OP_LOAD_ENT	28	201	10658
// OP_ADDRESS	10658	378	10659
// OP_LOAD_ENT	28	201	10660
// OP_LOAD_F	10660	378	10661
// OP_SUB_F	10661	214	10662
// OP_STOREP_F	10662	10659	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	113	10663
// OP_STOREP_V	926	10663	0
// OP_LOAD_ENT	28	201	10666
// OP_STORE_ENT	10666	81	0
// OP_LOAD_ENT	28	201	10667
// OP_STORE_V	10667	4	0
// OP_CALL1	10605	0	0
// OP_NOT_F	10654	0	10668
// OP_IFNOT	10668	7	0
// OP_ADDRESS	28	150	10669
// OP_ADD_F	31	2869	10670
// OP_STOREP_F	10670	10669	0
// OP_ADDRESS	28	148	10671
// OP_STOREP_FNC	10645	10671	0
// OP_GOTO	3	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void (float opt) Remove_chase_cam = 
{
    
    if(self.owner.speed & CHSCAM_ON)
    {
        self.owner.speed = self.owner.speed - CHSCAM_ON;
    }
    
    setmodel(self, "");
    self.velocity = '0.000 0.000 0.000';
    msg_entity = self.owner;
    Chase_cam_setweapon(self.owner);
    if(!opt)
    {
        self.nextthink = time + 0.1;
        self.think = Reable_chase_cam;
    }
    else
    {
        remove(self);
    }
    
};

// Toggle_chase_cam
// function begins at statement 14015, parm_start=10673
// OP_LOAD_F	28	378	10673
// OP_BITAND	10673	212	10674
// OP_IFNOT	10674	6	0
// OP_ADDRESS	28	378	10675
// OP_LOAD_F	28	378	10676
// OP_SUB_F	10676	212	10677
// OP_STOREP_F	10677	10675	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	378	10678
// OP_LOAD_F	28	378	10679
// OP_ADD_F	10679	212	10680
// OP_STOREP_F	10680	10678	0
// OP_LT	738	823	10681
// OP_IFNOT	10681	4	0
// OP_ADDRESS	28	613	10682
// OP_STOREP_F	790	10682	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	613	10683
// OP_DIV_F	790	821	10684
// OP_STOREP_F	10684	10683	0
// OP_DONE	0	0	0
void () Toggle_chase_cam = 
{
    if(self.speed & CHSCAM_FAR)
    {
        self.speed = self.speed - CHSCAM_FAR;
    }
    else
    {
        self.speed = self.speed + CHSCAM_FAR;
    }
    
    if(rally_type_index < 3)
    {
        self.chasecam_zoom = DEFAULT_CHASECAM_ZOOM;
    }
    else
    {
        self.chasecam_zoom = DEFAULT_CHASECAM_ZOOM / 2;
    }
    
};

// Toggle_chase_type
// function begins at statement 14036, parm_start=10686
// OP_LOAD_F	28	378	10686
// OP_BITAND	10686	213	10687
// OP_IFNOT	10687	9	0
// OP_ADDRESS	28	378	10688
// OP_LOAD_F	28	378	10689
// OP_SUB_F	10689	213	10690
// OP_STOREP_F	10690	10688	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10691	7	0
// OP_CALL2	483	0	0
// OP_GOTO	8	0	0
// OP_ADDRESS	28	378	10692
// OP_LOAD_F	28	378	10693
// OP_BITOR	10693	213	10694
// OP_STOREP_F	10694	10692	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10695	7	0
// OP_CALL2	483	0	0
// OP_DONE	0	0	0
void () Toggle_chase_type = 
{
    if(self.speed & CHSCAM_ALT)
    {
        self.speed = self.speed - CHSCAM_ALT;
        sprint(self, "View tracking: normal\n");
    }
    else
    {
        self.speed = self.speed | CHSCAM_ALT;
        sprint(self, "View tracking: strafeing\n");
    }
    
};

// SDR_SightThink
// function begins at statement 14055, parm_start=10697
// OP_LOAD_ENT	28	201	10700
// OP_LOAD_ENT	10700	548	10701
// OP_LOAD_V	10701	117	10702
// OP_STORE_V	10702	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	201	10705
// OP_LOAD_ENT	10705	548	10706
// OP_LOAD_V	10706	105	10707
// OP_MUL_VF	59	2657	10710
// OP_ADD_V	10707	10710	10713
// OP_STORE_V	10713	10697	0
// OP_STORE_V	10697	4	0
// OP_MUL_VF	59	9421	10716
// OP_ADD_V	10697	10716	10719
// OP_STORE_V	10719	7	0
// OP_STORE_V	218	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	10722
// OP_IFNOT	10722	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	78	163	10723
// OP_IFNOT	10723	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10724	7	0
// OP_CALL2	463	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10725	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	117	10726
// OP_STORE_V	59	4	0
// OP_CALL1	506	0	0
// OP_STOREP_V	1	10726	0
// OP_STORE_V	28	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	150	10729
// OP_ADD_F	31	1988	10730
// OP_STOREP_F	10730	10729	0
// OP_DONE	0	0	0
void () SDR_SightThink = 
{
    local vector org;
    makevectors(self.owner.veh_body.angles);
    org = self.owner.veh_body.origin + (v_forward * 32);
    traceline(org, org + (v_forward * 2048), FALSE, self);
    
    if(trace_fraction == 1)
    {
        setmodel(self, "");
        return;
    }
    
    if(trace_ent.takedamage)
    {
        setmodel(self, "progs/cross2.mdl");
    }
    else
    {
        setmodel(self, "progs/cross1.mdl");
    }
    
    self.angles = vectoangles(v_forward);
    setorigin(self, trace_endpos);
    self.nextthink = time + 0.05;
};

// SDR_SightMake
// function begins at statement 14099, parm_start=10732
// OP_ADDRESS	28	9173	10733
// OP_STOREP_F	219	10733	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10732	0
// OP_ADDRESS	10732	201	10734
// OP_STOREP_ENT	28	10734	0
// OP_ADDRESS	10732	103	10735
// OP_STOREP_F	239	10735	0
// OP_ADDRESS	10732	104	10736
// OP_STOREP_F	243	10736	0
// OP_STORE_V	10732	4	0
// OP_STORE_V	10725	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	10732	129	10737
// OP_STOREP_S	10738	10737	0
// OP_STORE_V	10732	4	0
// OP_LOAD_V	28	105	10739
// OP_STORE_V	10739	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	10732	148	10742
// OP_STOREP_FNC	10696	10742	0
// OP_ADDRESS	10732	150	10743
// OP_ADD_F	31	1988	10744
// OP_STOREP_F	10744	10743	0
// OP_DONE	0	0	0
void () SDR_SightMake = 
{
    local entity cross;
    self.sight_out = TRUE;
    cross = spawn();
    cross.owner = self;
    cross.movetype = MOVETYPE_NOCLIP;
    cross.solid = SOLID_NOT;
    setmodel(cross, "progs/cross1.mdl");
    cross.classname = "laser_sight";
    setorigin(cross, self.origin);
    cross.think = SDR_SightThink;
    cross.nextthink = time + 0.05;
};

// LaserTargeterTrack
// function begins at statement 14124, parm_start=10746
// OP_LOAD_ENT	28	201	10752
// OP_LOAD_F	10752	378	10753
// OP_BITAND	10753	215	10754
// OP_NOT_F	10754	0	10755
// OP_IFNOT	10755	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	201	10756
// OP_LOAD_ENT	10756	548	10757
// OP_LOAD_V	10757	117	10758
// OP_STORE_V	10758	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	201	10761
// OP_LOAD_V	10761	105	10762
// OP_MUL_VF	59	2657	10765
// OP_ADD_V	10762	10765	10768
// OP_STORE_V	10768	10749	0
// OP_STORE_V	59	10746	0
// OP_STORE_V	10749	4	0
// OP_MUL_VF	10746	9421	10771
// OP_ADD_V	10749	10771	10774
// OP_STORE_V	10774	7	0
// OP_STORE_V	218	10	0
// OP_LOAD_ENT	28	201	10777
// OP_STORE_V	10777	13	0
// OP_CALL4	475	0	0
// OP_MUL_FV	2869	10749	10778
// OP_MUL_FV	2319	71	10781
// OP_ADD_V	10778	10781	10784
// OP_STORE_V	10784	10749	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10749	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	150	10787
// OP_ADD_F	31	2869	10788
// OP_STOREP_F	10788	10787	0
// OP_DONE	0	0	0
void () LaserTargeterTrack = 
{
    local vector dir;
    local vector src;
    
    if(!(self.owner.speed & LASERTARG_ON))
    {
        remove(self);
        return;
    }
    
    makevectors(self.owner.veh_body.angles);
    src = self.owner.origin + (v_forward * 32);
    dir = v_forward;
    traceline(src, src + (dir * 2048), FALSE, self.owner);
    src = (0.1 * src) + (0.9 * trace_endpos);
    setorigin(self, src);
    self.nextthink = time + 0.1;
};

// LaserTargeterToggle
// function begins at statement 14162, parm_start=10789
// OP_LOAD_F	10789	378	10791
// OP_BITAND	10791	215	10792
// OP_IFNOT	10792	6	0
// OP_ADDRESS	10789	378	10793
// OP_LOAD_F	10789	378	10794
// OP_SUB_F	10794	215	10795
// OP_STOREP_F	10795	10793	0
// OP_GOTO	32	0	0
// OP_GT	738	819	10796
// OP_IFNOT	10796	30	0
// OP_ADDRESS	10789	378	10797
// OP_LOAD_F	10789	378	10798
// OP_BITOR	10798	215	10799
// OP_STOREP_F	10799	10797	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10790	0
// OP_ADDRESS	10790	201	10800
// OP_STOREP_ENT	10789	10800	0
// OP_ADDRESS	10790	103	10801
// OP_STOREP_F	233	10801	0
// OP_ADDRESS	10790	104	10802
// OP_STOREP_F	243	10802	0
// OP_STORE_V	10790	4	0
// OP_STORE_V	10803	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	10790	4	0
// OP_STORE_V	300	7	0
// OP_STORE_V	300	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	10790	4	0
// OP_LOAD_ENT	10790	201	10804
// OP_LOAD_V	10804	105	10805
// OP_STORE_V	10805	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	10790	150	10808
// OP_ADD_F	31	2869	10809
// OP_STOREP_F	10809	10808	0
// OP_ADDRESS	10790	148	10810
// OP_STOREP_FNC	10745	10810	0
// OP_DONE	0	0	0
void (entity targ_owner) LaserTargeterToggle = 
{
    local entity e;
    if(targ_owner.speed & LASERTARG_ON)
    {
        targ_owner.speed = targ_owner.speed - LASERTARG_ON;
    }
    else
    {
        
        if(rally_type_index > 1)
        {
            targ_owner.speed = targ_owner.speed | LASERTARG_ON;
            e = spawn();
            e.owner = targ_owner;
            e.movetype = MOVETYPE_NONE;
            e.solid = SOLID_NOT;
            setmodel(e, "progs/s_bubble.spr");
            setsize(e, VEC_ORIGIN, VEC_ORIGIN);
            setorigin(e, e.owner.origin);
            e.nextthink = time + 0.1;
            e.think = LaserTargeterTrack;
        }
        
    }
    
};

// Chase_cam_lvlstart_think
// function begins at statement 14202, parm_start=10812
// OP_LOAD_ENT	28	201	10813
// OP_LOAD_F	10813	378	10814
// OP_BITAND	10814	214	10815
// OP_IFNOT	10815	4	0
// OP_LOAD_ENT	28	201	10816
// OP_STORE_V	10816	4	0
// OP_CALL1	10608	0	0
// OP_LOAD_ENT	28	201	10817
// OP_LOAD_F	10817	378	10818
// OP_BITAND	10818	215	10819
// OP_IFNOT	10819	10	0
// OP_LOAD_ENT	28	201	10820
// OP_ADDRESS	10820	378	10821
// OP_LOAD_ENT	28	201	10822
// OP_LOAD_F	10822	378	10823
// OP_SUB_F	10823	215	10824
// OP_STOREP_F	10824	10821	0
// OP_LOAD_ENT	28	201	10825
// OP_STORE_V	10825	4	0
// OP_CALL1	1155	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () Chase_cam_lvlstart_think = 
{
    local string s;
    
    if(self.owner.speed & CHSCAM_ON)
    {
        Start_chase_cam(self.owner);
    }
    
    
    if(self.owner.speed & LASERTARG_ON)
    {
        self.owner.speed = self.owner.speed - LASERTARG_ON;
        LaserTargeterToggle(self.owner);
    }
    
    remove(self);
};

// Chase_cam_level_start
// function begins at statement 14225, parm_start=10827
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10827	0
// OP_ADDRESS	10827	201	10828
// OP_STOREP_ENT	28	10828	0
// OP_ADDRESS	10827	103	10829
// OP_STOREP_F	233	10829	0
// OP_ADDRESS	10827	104	10830
// OP_STOREP_F	243	10830	0
// OP_STORE_V	10827	4	0
// OP_STORE_V	4128	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	10827	4	0
// OP_STORE_V	300	7	0
// OP_STORE_V	300	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	10827	4	0
// OP_LOAD_ENT	10827	201	10831
// OP_LOAD_V	10831	105	10832
// OP_STORE_V	10832	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	10827	150	10835
// OP_ADD_F	31	1152	10836
// OP_STOREP_F	10836	10835	0
// OP_ADDRESS	10827	148	10837
// OP_STOREP_FNC	10811	10837	0
// OP_DONE	0	0	0
void () Chase_cam_level_start = 
{
    local entity e;
    e = spawn();
    e.owner = self;
    e.movetype = MOVETYPE_NONE;
    e.solid = SOLID_NOT;
    setmodel(e, "");
    setsize(e, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(e, e.owner.origin);
    e.nextthink = time + 0.2;
    e.think = Chase_cam_lvlstart_think;
};

// Choose_multiskin
// function begins at statement 14251, parm_start=10839
// OP_EQ_F	10839	4760	10840
// OP_IFNOT	10840	11	0
// OP_ADDRESS	28	132	10841
// OP_LOAD_F	28	132	10842
// OP_ADD_F	10842	819	10843
// OP_STOREP_F	10843	10841	0
// OP_LOAD_F	28	132	10844
// OP_EQ_F	10844	3981	10845
// OP_IFNOT	10845	3	0
// OP_ADDRESS	28	132	10846
// OP_STOREP_F	817	10846	0
// OP_GOTO	10	0	0
// OP_ADDRESS	28	132	10847
// OP_LOAD_F	28	132	10848
// OP_SUB_F	10848	819	10849
// OP_STOREP_F	10849	10847	0
// OP_LOAD_F	28	132	10850
// OP_EQ_F	10850	1228	10851
// OP_IFNOT	10851	3	0
// OP_ADDRESS	28	132	10852
// OP_STOREP_F	3974	10852	0
// OP_LOAD_F	28	132	10853
// OP_EQ_F	10853	817	10854
// OP_IFNOT	10854	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10855	7	0
// OP_CALL2	520	0	0
// OP_GOTO	126	0	0
// OP_LOAD_F	28	132	10856
// OP_EQ_F	10856	819	10857
// OP_IFNOT	10857	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10858	7	0
// OP_CALL2	520	0	0
// OP_GOTO	119	0	0
// OP_LOAD_F	28	132	10859
// OP_EQ_F	10859	821	10860
// OP_IFNOT	10860	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10861	7	0
// OP_CALL2	520	0	0
// OP_GOTO	112	0	0
// OP_LOAD_F	28	132	10862
// OP_EQ_F	10862	823	10863
// OP_IFNOT	10863	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10864	7	0
// OP_CALL2	520	0	0
// OP_GOTO	105	0	0
// OP_LOAD_F	28	132	10865
// OP_EQ_F	10865	825	10866
// OP_IFNOT	10866	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10867	7	0
// OP_CALL2	520	0	0
// OP_GOTO	98	0	0
// OP_LOAD_F	28	132	10868
// OP_EQ_F	10868	827	10869
// OP_IFNOT	10869	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10870	7	0
// OP_CALL2	520	0	0
// OP_GOTO	91	0	0
// OP_LOAD_F	28	132	10871
// OP_EQ_F	10871	829	10872
// OP_IFNOT	10872	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10873	7	0
// OP_CALL2	520	0	0
// OP_GOTO	84	0	0
// OP_LOAD_F	28	132	10874
// OP_EQ_F	10874	839	10875
// OP_IFNOT	10875	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10876	7	0
// OP_CALL2	520	0	0
// OP_GOTO	77	0	0
// OP_LOAD_F	28	132	10877
// OP_EQ_F	10877	843	10878
// OP_IFNOT	10878	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10879	7	0
// OP_CALL2	520	0	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	132	10880
// OP_EQ_F	10880	847	10881
// OP_IFNOT	10881	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10882	7	0
// OP_CALL2	520	0	0
// OP_GOTO	63	0	0
// OP_LOAD_F	28	132	10883
// OP_EQ_F	10883	855	10884
// OP_IFNOT	10884	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10885	7	0
// OP_CALL2	520	0	0
// OP_GOTO	56	0	0
// OP_LOAD_F	28	132	10886
// OP_EQ_F	10886	831	10887
// OP_IFNOT	10887	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10888	7	0
// OP_CALL2	520	0	0
// OP_GOTO	49	0	0
// OP_LOAD_F	28	132	10889
// OP_EQ_F	10889	834	10890
// OP_IFNOT	10890	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10891	7	0
// OP_CALL2	520	0	0
// OP_GOTO	42	0	0
// OP_LOAD_F	28	132	10892
// OP_EQ_F	10892	837	10893
// OP_IFNOT	10893	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10894	7	0
// OP_CALL2	520	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	132	10895
// OP_EQ_F	10895	841	10896
// OP_IFNOT	10896	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10897	7	0
// OP_CALL2	520	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	132	10898
// OP_EQ_F	10898	845	10899
// OP_IFNOT	10899	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10900	7	0
// OP_CALL2	520	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	132	10901
// OP_EQ_F	10901	2670	10902
// OP_IFNOT	10902	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10903	7	0
// OP_CALL2	520	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	132	10904
// OP_EQ_F	10904	4041	10905
// OP_IFNOT	10905	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10906	7	0
// OP_CALL2	520	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	132	10907
// OP_EQ_F	10907	3974	10908
// OP_IFNOT	10908	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10909	7	0
// OP_CALL2	520	0	0
// OP_DONE	0	0	0
void (float imp) Choose_multiskin = 
{
    if(imp == 200)
    {
        self.skin = self.skin + 1;
        
        if(self.skin == 19)
        {
            self.skin = 0;
        }
        
    }
    else
    {
        self.skin = self.skin - 1;
        
        if(self.skin == -1)
        {
            self.skin = 18;
        }
        
    }
    
    if(self.skin == 0)
    {
        centerprint(self, "SKIN: the Good Guy Himself (1)");
    }
    else
    {
        if(self.skin == 1)
        {
            centerprint(self, "SKIN: Duke Nukem 3d (2)");
        }
        else
        {
            if(self.skin == 2)
            {
                centerprint(self, "SKIN: Mr. Toad (3)");
            }
            else
            {
                if(self.skin == 3)
                {
                    centerprint(self, "SKIN: the Stormtrooper (4)");
                }
                else
                {
                    if(self.skin == 4)
                    {
                        centerprint(self, "SKIN: Max (5)");
                    }
                    else
                    {
                        if(self.skin == 5)
                        {
                            centerprint(self, "SKIN: the Terminator (6)");
                        }
                        else
                        {
                            if(self.skin == 6)
                            {
                                centerprint(self, "SKIN: Judge Dredd (7)");
                            }
                            else
                            {
                                if(self.skin == 7)
                                {
                                    centerprint(self, "SKIN: Camouflaged soldier (8)");
                                }
                                else
                                {
                                    if(self.skin == 8)
                                    {
                                        centerprint(self, "SKIN: Captain Picard (9)");
                                    }
                                    else
                                    {
                                        if(self.skin == 9)
                                        {
                                            centerprint(self, "SKIN: the Wizzard (10)");
                                        }
                                        else
                                        {
                                            if(self.skin == 10)
                                            {
                                                centerprint(self, "SKIN: the Predator (11)");
                                            }
                                            else
                                            {
                                                if(self.skin == 11)
                                                {
                                                    centerprint(self, "SKIN: Skeleton (12)");
                                                }
                                                else
                                                {
                                                    if(self.skin == 12)
                                                    {
                                                        centerprint(self, "SKIN: Wan-Fu (13)");
                                                    }
                                                    else
                                                    {
                                                        if(self.skin == 13)
                                                        {
                                                            centerprint(self, "SKIN: Henry Rollins (14)");
                                                        }
                                                        else
                                                        {
                                                            if(self.skin == 14)
                                                            {
                                                                centerprint(self, "SKIN: He-Man (15)");
                                                            }
                                                            else
                                                            {
                                                                if(self.skin == 15)
                                                                {
                                                                    centerprint(self, "SKIN: Boba (16)");
                                                                }
                                                                else
                                                                {
                                                                    if(self.skin == 16)
                                                                    {
                                                                        centerprint(self, "SKIN: Superman (17)");
                                                                    }
                                                                    else
                                                                    {
                                                                        if(self.skin == 17)
                                                                        {
                                                                            centerprint(self, "SKIN: NYPD Cop (18)");
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                            if(self.skin == 18)
                                                                            {
                                                                                centerprint(self, "SKIN: Red/Yellow women dude (19)");
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
    
};

void () rally_spawn_dude;
// ImpulseCommands
// function begins at statement 14405, parm_start=10911
// OP_LOAD_F	28	173	10915
// OP_EQ_F	10915	817	10916
// OP_IFNOT	10916	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	644	10917
// OP_BITAND	10917	698	10918
// OP_IFNOT	10918	19	0
// OP_LOAD_F	28	173	10919
// OP_EQ_F	10919	1885	10920
// OP_IFNOT	10920	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1228	7	0
// OP_CALL2	7125	0	0
// OP_ADDRESS	28	173	10921
// OP_STOREP_F	817	10921	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	173	10922
// OP_EQ_F	10922	10923	10924
// OP_IFNOT	10924	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	819	7	0
// OP_CALL2	7125	0	0
// OP_ADDRESS	28	173	10925
// OP_STOREP_F	817	10925	0
// OP_RETURN	0	0	0
// OP_IFNOT	732	13	0
// OP_LOAD_F	28	173	10926
// OP_STORE_F	10926	729	0
// OP_STORE_V	10927	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	729	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	10911	0
// OP_STORE_V	10911	4	0
// OP_CALL1	482	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	482	0	0
// OP_STORE_F	218	732	0
// OP_LOAD_F	28	173	10928
// OP_GE	10928	819	10929
// OP_LOAD_F	28	173	10930
// OP_LE	10930	843	10931
// OP_AND	10929	10931	10932
// OP_IFNOT	10932	3	0
// OP_CALL0	10469	0	0
// OP_GOTO	234	0	0
// OP_LOAD_F	28	173	10933
// OP_EQ_F	10933	847	10934
// OP_IFNOT	10934	3	0
// OP_CALL0	10516	0	0
// OP_GOTO	229	0	0
// OP_LOAD_F	28	173	10935
// OP_EQ_F	10935	855	10936
// OP_IFNOT	10936	3	0
// OP_CALL0	10538	0	0
// OP_GOTO	224	0	0
// OP_LOAD_F	28	173	10937
// OP_EQ_F	10937	831	10938
// OP_IFNOT	10938	3	0
// OP_CALL0	10582	0	0
// OP_GOTO	219	0	0
// OP_LOAD_F	28	173	10939
// OP_EQ_F	10939	1112	10940
// OP_IFNOT	10940	18	0
// OP_LOAD_F	28	628	10941
// OP_LT	10941	823	10942
// OP_IFNOT	10942	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5215	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	334	7	0
// OP_STORE_V	5216	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	342	16	0
// OP_CALL5	467	0	0
// OP_GOTO	199	0	0
// OP_LOAD_F	28	173	10943
// OP_EQ_F	10943	10944	10945
// OP_IFNOT	10945	21	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	10946	10	0
// OP_CALL3	477	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10912	0
// OP_ADDRESS	10912	129	10947
// OP_STOREP_S	10946	10947	0
// OP_ADDRESS	10912	148	10948
// OP_STOREP_FNC	857	10948	0
// OP_ADDRESS	10912	150	10949
// OP_ADD_F	31	1182	10950
// OP_STOREP_F	10950	10949	0
// OP_ADDRESS	10912	158	10951
// OP_STOREP_F	819	10951	0
// OP_ADDRESS	10912	161	10952
// OP_STOREP_F	819	10952	0
// OP_GOTO	176	0	0
// OP_LOAD_F	28	173	10953
// OP_EQ_F	10953	2522	10954
// OP_IFNOT	10954	3	0
// OP_CALL0	10672	0	0
// OP_GOTO	171	0	0
// OP_LOAD_F	28	173	10955
// OP_EQ_F	10955	10956	10957
// OP_IFNOT	10957	19	0
// OP_ADDRESS	28	613	10958
// OP_LOAD_F	28	613	10959
// OP_ADD_F	10959	855	10960
// OP_STOREP_F	10960	10958	0
// OP_LOAD_F	28	613	10961
// OP_STORE_V	10961	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	10911	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10962	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10911	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_GOTO	150	0	0
// OP_LOAD_F	28	173	10963
// OP_EQ_F	10963	2657	10964
// OP_IFNOT	10964	24	0
// OP_ADDRESS	28	613	10965
// OP_LOAD_F	28	613	10966
// OP_SUB_F	10966	855	10967
// OP_STOREP_F	10967	10965	0
// OP_LOAD_F	28	613	10968
// OP_LT	10968	817	10969
// OP_IFNOT	10969	3	0
// OP_ADDRESS	28	613	10970
// OP_STOREP_F	817	10970	0
// OP_LOAD_F	28	613	10971
// OP_STORE_V	10971	4	0
// OP_CALL1	485	0	0
// OP_STORE_S	1	10911	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10962	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10911	7	0
// OP_CALL2	483	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	888	7	0
// OP_CALL2	483	0	0
// OP_GOTO	124	0	0
// OP_LOAD_F	28	173	10972
// OP_EQ_F	10972	1632	10973
// OP_IFNOT	10973	52	0
// OP_LOAD_F	28	611	10974
// OP_EQ_F	10974	715	10975
// OP_IFNOT	10975	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1117	7	0
// OP_CALL2	480	0	0
// OP_LOAD_F	28	611	10976
// OP_EQ_F	10976	714	10977
// OP_IFNOT	10977	22	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10978	7	0
// OP_CALL2	480	0	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	1112	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	177	10979
// OP_STORE_V	10979	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	178	10980
// OP_STORE_V	10980	7	0
// OP_CALL2	512	0	0
// OP_ADDRESS	28	611	10981
// OP_STOREP_F	713	10981	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10982	7	0
// OP_CALL2	480	0	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	5499	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	177	10983
// OP_STORE_V	10983	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	178	10984
// OP_STORE_V	10984	7	0
// OP_CALL2	512	0	0
// OP_ADDRESS	28	611	10985
// OP_STOREP_F	714	10985	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	173	10986
// OP_EQ_F	10986	10987	10988
// OP_IFNOT	10988	33	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1117	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1115	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10989	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10978	7	0
// OP_CALL2	480	0	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	1112	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	119	10990
// OP_STORE_V	10990	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	120	10991
// OP_STORE_V	10991	7	0
// OP_CALL2	512	0	0
// OP_ADDRESS	28	611	10992
// OP_STOREP_F	713	10992	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	173	10993
// OP_EQ_F	10993	10994	10995
// OP_IFNOT	10995	32	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1117	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10989	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1115	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10982	7	0
// OP_CALL2	480	0	0
// OP_STORE_ENT	28	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	5499	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	119	10996
// OP_STORE_V	10996	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_LOAD_F	28	120	10997
// OP_STORE_V	10997	7	0
// OP_CALL2	512	0	0
// OP_ADDRESS	28	611	10998
// OP_STOREP_F	714	10998	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_LOAD_F	28	173	10999
// OP_EQ_F	10999	11000	11001
// OP_NOT_F	35	0	11002
// OP_AND	11001	11002	11003
// OP_IFNOT	11003	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10978	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11004	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11005	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11006	7	0
// OP_CALL2	520	0	0
// OP_ADDRESS	28	611	11007
// OP_STOREP_F	715	11007	0
// OP_GOTO	322	0	0
// OP_LOAD_F	28	173	11008
// OP_EQ_F	11008	2611	11009
// OP_IFNOT	11009	5	0
// OP_NOT_F	35	0	11010
// OP_IFNOT	11010	2	0
// OP_CALL0	6438	0	0
// OP_GOTO	315	0	0
// OP_LOAD_F	28	173	11011
// OP_EQ_F	11011	11012	11013
// OP_IFNOT	11013	6	0
// OP_ADDRESS	28	684	11014
// OP_LOAD_F	28	684	11015
// OP_BITOR	11015	704	11016
// OP_STOREP_F	11016	11014	0
// OP_GOTO	307	0	0
// OP_LOAD_F	28	173	11017
// OP_EQ_F	11017	11018	11019
// OP_IFNOT	11019	8	0
// OP_ADDRESS	28	684	11020
// OP_LOAD_F	28	684	11021
// OP_LOAD_F	28	684	11022
// OP_BITAND	11022	704	11023
// OP_SUB_F	11021	11023	11024
// OP_STOREP_F	11024	11020	0
// OP_GOTO	297	0	0
// OP_LOAD_F	28	173	11025
// OP_EQ_F	11025	2228	11026
// OP_IFNOT	11026	3	0
// OP_STORE_F	219	732	0
// OP_GOTO	292	0	0
// OP_LOAD_F	28	173	11027
// OP_EQ_F	11027	2677	11028
// OP_IFNOT	11028	8	0
// OP_ADDRESS	28	606	11029
// OP_STOREP_F	219	11029	0
// OP_ADDRESS	28	604	11030
// OP_STOREP_F	218	11030	0
// OP_ADDRESS	28	605	11031
// OP_STOREP_F	218	11031	0
// OP_GOTO	282	0	0
// OP_LOAD_F	28	173	11032
// OP_EQ_F	11032	11033	11034
// OP_IFNOT	11034	4	0
// OP_ADDRESS	28	606	11035
// OP_STOREP_F	218	11035	0
// OP_GOTO	276	0	0
// OP_LOAD_F	28	173	11036
// OP_EQ_F	11036	11037	11038
// OP_IFNOT	11038	8	0
// OP_ADDRESS	28	606	11039
// OP_STOREP_F	218	11039	0
// OP_ADDRESS	28	605	11040
// OP_STOREP_F	219	11040	0
// OP_ADDRESS	28	604	11041
// OP_STOREP_F	219	11041	0
// OP_GOTO	266	0	0
// OP_LOAD_F	28	173	11042
// OP_EQ_F	11042	11043	11044
// OP_IFNOT	11044	4	0
// OP_ADDRESS	28	605	11045
// OP_STOREP_F	218	11045	0
// OP_GOTO	260	0	0
// OP_LOAD_F	28	173	11046
// OP_EQ_F	11046	7023	11047
// OP_IFNOT	11047	6	0
// OP_ADDRESS	28	607	11048
// OP_STOREP_F	219	11048	0
// OP_ADDRESS	28	608	11049
// OP_STOREP_F	218	11049	0
// OP_GOTO	252	0	0
// OP_LOAD_F	28	173	11050
// OP_EQ_F	11050	11051	11052
// OP_IFNOT	11052	4	0
// OP_ADDRESS	28	607	11053
// OP_STOREP_F	218	11053	0
// OP_GOTO	246	0	0
// OP_LOAD_F	28	173	11054
// OP_EQ_F	11054	11055	11056
// OP_IFNOT	11056	6	0
// OP_ADDRESS	28	607	11057
// OP_STOREP_F	218	11057	0
// OP_ADDRESS	28	608	11058
// OP_STOREP_F	219	11058	0
// OP_GOTO	238	0	0
// OP_LOAD_F	28	173	11059
// OP_EQ_F	11059	11060	11061
// OP_IFNOT	11061	4	0
// OP_ADDRESS	28	608	11062
// OP_STOREP_F	218	11062	0
// OP_GOTO	232	0	0
// OP_LOAD_F	28	173	11063
// OP_EQ_F	11063	1957	11064
// OP_IFNOT	11064	5	0
// OP_ADDRESS	28	688	11065
// OP_STOREP_F	819	11065	0
// OP_STORE_F	819	689	0
// OP_GOTO	225	0	0
// OP_LOAD_F	28	173	11066
// OP_EQ_F	11066	11067	11068
// OP_IFNOT	11068	5	0
// OP_ADDRESS	28	688	11069
// OP_STOREP_F	821	11069	0
// OP_STORE_F	821	689	0
// OP_GOTO	218	0	0
// OP_LOAD_F	28	173	11070
// OP_GE	11070	5807	11071
// OP_LOAD_F	28	173	11072
// OP_LE	11072	11073	11074
// OP_AND	11071	11074	11075
// OP_IFNOT	11075	14	0
// OP_LOAD_F	28	173	11076
// OP_EQ_F	11076	11073	11077
// OP_IFNOT	11077	4	0
// OP_ADDRESS	28	612	11078
// OP_STOREP_F	1112	11078	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	612	11079
// OP_LOAD_F	28	173	11080
// OP_SUB_F	11080	5807	11081
// OP_STOREP_F	11081	11079	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	199	0	0
// OP_LOAD_F	28	173	11082
// OP_EQ_F	11082	4760	11083
// OP_IFNOT	11083	16	0
// OP_LOAD_ENT	28	548	11084
// OP_ADDRESS	11084	132	11085
// OP_LOAD_ENT	28	548	11086
// OP_LOAD_F	11086	132	11087
// OP_ADD_F	11087	819	11088
// OP_STOREP_F	11088	11085	0
// OP_LOAD_ENT	28	548	11089
// OP_LOAD_F	11089	132	11090
// OP_LOAD_F	28	579	11091
// OP_GT	11090	11091	11092
// OP_IFNOT	11092	4	0
// OP_LOAD_ENT	28	548	11093
// OP_ADDRESS	11093	132	11094
// OP_STOREP_F	819	11094	0
// OP_GOTO	181	0	0
// OP_LOAD_F	28	173	11095
// OP_EQ_F	11095	11096	11097
// OP_LOAD_F	28	644	11098
// OP_BITAND	11098	692	11099
// OP_NOT_F	11099	0	11100
// OP_AND	11097	11100	11101
// OP_IFNOT	11101	23	0
// OP_LOAD_F	28	579	11102
// OP_GT	11102	819	11103
// OP_LOAD_F	28	132	11104
// OP_EQ_F	11104	817	11105
// OP_AND	11103	11105	11106
// OP_IFNOT	11106	4	0
// OP_ADDRESS	28	132	11107
// OP_STOREP_F	819	11107	0
// OP_GOTO	12	0	0
// OP_ADDRESS	28	628	11108
// OP_LOAD_F	28	628	11109
// OP_ADD_F	11109	819	11110
// OP_STOREP_F	11110	11108	0
// OP_ADDRESS	28	132	11111
// OP_STOREP_F	817	11111	0
// OP_LOAD_F	28	628	11112
// OP_GT	11112	791	11113
// OP_IFNOT	11113	3	0
// OP_ADDRESS	28	628	11114
// OP_STOREP_F	821	11114	0
// OP_CALL0	932	0	0
// OP_GOTO	152	0	0
// OP_LOAD_F	28	173	11115
// OP_EQ_F	11115	11116	11117
// OP_IFNOT	11117	9	0
// OP_ADDRESS	28	628	11118
// OP_STOREP_F	821	11118	0
// OP_ADDRESS	28	132	11119
// OP_STOREP_F	817	11119	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	141	0	0
// OP_LOAD_F	28	173	11120
// OP_EQ_F	11120	11121	11122
// OP_IFNOT	11122	9	0
// OP_ADDRESS	28	628	11123
// OP_STOREP_F	821	11123	0
// OP_ADDRESS	28	132	11124
// OP_STOREP_F	819	11124	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	130	0	0
// OP_LOAD_F	28	173	11125
// OP_EQ_F	11125	11126	11127
// OP_IFNOT	11127	9	0
// OP_ADDRESS	28	628	11128
// OP_STOREP_F	823	11128	0
// OP_ADDRESS	28	132	11129
// OP_STOREP_F	817	11129	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	119	0	0
// OP_LOAD_F	28	173	11130
// OP_EQ_F	11130	11131	11132
// OP_IFNOT	11132	9	0
// OP_ADDRESS	28	628	11133
// OP_STOREP_F	825	11133	0
// OP_ADDRESS	28	132	11134
// OP_STOREP_F	817	11134	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	108	0	0
// OP_LOAD_F	28	173	11135
// OP_EQ_F	11135	11136	11137
// OP_IFNOT	11137	9	0
// OP_ADDRESS	28	628	11138
// OP_STOREP_F	825	11138	0
// OP_ADDRESS	28	132	11139
// OP_STOREP_F	819	11139	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	97	0	0
// OP_LOAD_F	28	173	11140
// OP_EQ_F	11140	11141	11142
// OP_IFNOT	11142	9	0
// OP_ADDRESS	28	628	11143
// OP_STOREP_F	827	11143	0
// OP_ADDRESS	28	132	11144
// OP_STOREP_F	817	11144	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	86	0	0
// OP_LOAD_F	28	173	11145
// OP_EQ_F	11145	11146	11147
// OP_IFNOT	11147	9	0
// OP_ADDRESS	28	628	11148
// OP_STOREP_F	827	11148	0
// OP_ADDRESS	28	132	11149
// OP_STOREP_F	819	11149	0
// OP_CALL0	932	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	75	0	0
// OP_LOAD_F	28	173	11150
// OP_EQ_F	11150	2295	11151
// OP_IFNOT	11151	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11152	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	173	11153
// OP_EQ_F	11153	11154	11155
// OP_IFNOT	11155	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11156	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	155	11157
// OP_STOREP_S	1367	11157	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	55	0	0
// OP_LOAD_F	28	173	11158
// OP_EQ_F	11158	11159	11160
// OP_IFNOT	11160	9	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11156	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	155	11161
// OP_STOREP_S	11162	11161	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	44	0	0
// OP_LOAD_F	28	173	11163
// OP_GE	11163	11164	11165
// OP_LOAD_F	28	173	11166
// OP_LE	11166	11167	11168
// OP_AND	11165	11168	11169
// OP_IFNOT	11169	9	0
// OP_ADDRESS	28	613	11170
// OP_LOAD_F	28	173	11171
// OP_SUB_F	11171	11164	11172
// OP_MUL_F	11172	855	11173
// OP_STOREP_F	11173	11170	0
// OP_STORE_V	28	4	0
// OP_CALL1	930	0	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	173	11174
// OP_EQ_F	11174	1177	11175
// OP_IFNOT	11175	23	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	10913	0
// OP_ADDRESS	10913	129	11176
// OP_STOREP_S	11177	11176	0
// OP_ADDRESS	10913	117	11178
// OP_LOAD_V	28	117	11181
// OP_STOREP_V	11181	11178	0
// OP_STORE_V	10913	4	0
// OP_LOAD_V	28	105	11184
// OP_LOAD_V	28	555	11187
// OP_MUL_VF	11187	2223	11190
// OP_ADD_V	11184	11190	11193
// OP_ADD_V	11193	7028	11196
// OP_STORE_V	11196	7	0
// OP_CALL2	462	0	0
// OP_STORE_ENT	28	10914	0
// OP_STORE_ENT	10913	28	0
// OP_CALL0	10910	0	0
// OP_STORE_ENT	10914	28	0
// OP_STORE_V	10913	4	0
// OP_CALL1	474	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	173	11199
// OP_EQ_F	11199	11200	11201
// OP_IFNOT	11201	2	0
// OP_CALL0	10585	0	0
// OP_ADDRESS	28	173	11202
// OP_STOREP_F	817	11202	0
// OP_DONE	0	0	0
void () ImpulseCommands = 
{
    local string stemp;
    local entity e_credits;
    local entity dude;
    local entity oself;
    
    if(self.impulse == 0)
    {
        return;
    }
    
    
    if(self.racing_flags & QR_OBSERVER)
    {
        if(self.impulse == 150)
        {
            SetObserverSpot(self, -1);
            self.impulse = 0;
        }
        else
        {
            
            if(self.impulse == 151)
            {
                SetObserverSpot(self, 1);
                self.impulse = 0;
            }
            
        }
        
        return;
    }
    
    
    if(SetInterRaceTime)
    {
        inter_race_time = self.impulse;
        bprint("Inter-Race time set at: ");
        stemp = ftos(inter_race_time);
        bprint(stemp);
        bprint("\n");
        SetInterRaceTime = FALSE;
    }
    
    if((self.impulse >= 1) && (self.impulse <= 8))
    {
        W_ChangeWeapon();
    }
    else
    {
        if(self.impulse == 9)
        {
            CheatCommand();
        }
        else
        {
            if(self.impulse == 10)
            {
                CycleWeaponCommand();
            }
            else
            {
                if(self.impulse == 11)
                {
                    ServerflagsCommand();
                }
                else
                {
                    if(self.impulse == 20)
                    {
                        if(self.car_index < 3)
                        {
                            sound(self, CHAN_AUTO, "rally/meepmeep.wav", 1, ATTN_STATIC);
                        }
                        else
                        {
                            sound(self, CHAN_AUTO, "rally/nexus/horn.wav", 1, ATTN_STATIC);
                        }
                        
                    }
                    else
                    {
                        if(self.impulse == 21)
                        {
                            
                            if(find(world, classname, "credits"))
                            {
                                return;
                            }
                            
                            e_credits = spawn();
                            e_credits.classname = "credits";
                            e_credits.think = StartDemoCredits;
                            e_credits.nextthink = time + 0.5;
                            e_credits.ammo_shells = 1;
                            e_credits.ammo_cells = 1;
                        }
                        else
                        {
                            if(self.impulse == 30)
                            {
                                Toggle_chase_cam();
                            }
                            else
                            {
                                if(self.impulse == 31)
                                {
                                    self.chasecam_zoom = self.chasecam_zoom + 10;
                                    stemp = ftos(self.chasecam_zoom);
                                    sprint(self, "Zoom set at: ");
                                    sprint(self, stemp);
                                    sprint(self, "\n");
                                }
                                else
                                {
                                    if(self.impulse == 32)
                                    {
                                        self.chasecam_zoom = self.chasecam_zoom - 10;
                                        
                                        if(self.chasecam_zoom < 0)
                                        {
                                            self.chasecam_zoom = 0;
                                        }
                                        
                                        stemp = ftos(self.chasecam_zoom);
                                        sprint(self, "Zoom set at: ");
                                        sprint(self, stemp);
                                        sprint(self, "\n");
                                    }
                                    else
                                    {
                                        if(self.impulse == 40)
                                        {
                                            
                                            if(self.cam == CAM_INCAR)
                                            {
                                                stuffcmd(self, "cl_anglespeedkey 1.5\n");
                                            }
                                            
                                            if(self.cam == CAM_CHASEFAR)
                                            {
                                                stuffcmd(self, "fov 90\n");
                                                msg_entity = self;
                                                WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
                                                WriteAngle(MSG_ONE, 20);
                                                WriteAngle(MSG_ONE, self.v_angle_y);
                                                WriteAngle(MSG_ONE, self.v_angle_z);
                                                self.cam = CAM_CHASECLOSE;
                                            }
                                            else
                                            {
                                                stuffcmd(self, "fov 110\n");
                                                msg_entity = self;
                                                WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
                                                WriteAngle(MSG_ONE, 35);
                                                WriteAngle(MSG_ONE, self.v_angle_y);
                                                WriteAngle(MSG_ONE, self.v_angle_z);
                                                self.cam = CAM_CHASEFAR;
                                            }
                                            
                                        }
                                        else
                                        {
                                            if(self.impulse == 41)
                                            {
                                                stuffcmd(self, "cl_anglespeedkey 1.5\n");
                                                stuffcmd(self, "+mlook\n");
                                                stuffcmd(self, "-speed\n");
                                                stuffcmd(self, "fov 90\n");
                                                msg_entity = self;
                                                WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
                                                WriteAngle(MSG_ONE, 20);
                                                WriteAngle(MSG_ONE, self.angles_y);
                                                WriteAngle(MSG_ONE, self.angles_z);
                                                self.cam = CAM_CHASECLOSE;
                                                CallClientPrefs(self);
                                            }
                                            else
                                            {
                                                
                                                if(self.impulse == 42)
                                                {
                                                    stuffcmd(self, "cl_anglespeedkey 1.5\n");
                                                    stuffcmd(self, "-speed\n");
                                                    stuffcmd(self, "+mlook\n");
                                                    stuffcmd(self, "fov 110\n");
                                                    msg_entity = self;
                                                    WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
                                                    WriteAngle(MSG_ONE, 35);
                                                    WriteAngle(MSG_ONE, self.angles_y);
                                                    WriteAngle(MSG_ONE, self.angles_z);
                                                    self.cam = CAM_CHASEFAR;
                                                    CallClientPrefs(self);
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
    
    if((self.impulse == 43) && !deathmatch)
    {
        stuffcmd(self, "fov 90\n");
        stuffcmd(self, "cl_anglespeedkey 6\n");
        stuffcmd(self, "+speed\n");
        centerprint(self, "In-Car view selected, use keys to steer\n\nPress C to change back to chasecam");
        self.cam = CAM_INCAR;
    }
    else
    {
        if(self.impulse == 50)
        {
            
            if(!deathmatch)
            {
                ToggleHeadlights();
            }
            
        }
        else
        {
            if(self.impulse == 55)
            {
                self.misc_flags = self.misc_flags | MISC_HORN_ON;
            }
            else
            {
                if(self.impulse == 56)
                {
                    self.misc_flags = self.misc_flags - (self.misc_flags & MISC_HORN_ON);
                }
                else
                {
                    if(self.impulse == 60)
                    {
                        SetInterRaceTime = TRUE;
                    }
                    else
                    {
                        if(self.impulse == 80)
                        {
                            self.accelerating = TRUE;
                            self.reversing = FALSE;
                            self.reversekey = FALSE;
                        }
                        else
                        {
                            if(self.impulse == 81)
                            {
                                self.accelerating = FALSE;
                            }
                            else
                            {
                                if(self.impulse == 85)
                                {
                                    self.accelerating = FALSE;
                                    self.reversekey = TRUE;
                                    self.reversing = TRUE;
                                }
                                else
                                {
                                    if(self.impulse == 86)
                                    {
                                        self.reversekey = FALSE;
                                    }
                                    else
                                    {
                                        if(self.impulse == 90)
                                        {
                                            self.zoomin = TRUE;
                                            self.zoomout = FALSE;
                                        }
                                        else
                                        {
                                            if(self.impulse == 91)
                                            {
                                                self.zoomin = FALSE;
                                            }
                                            else
                                            {
                                                if(self.impulse == 92)
                                                {
                                                    self.zoomin = FALSE;
                                                    self.zoomout = TRUE;
                                                }
                                                else
                                                {
                                                    if(self.impulse == 93)
                                                    {
                                                        self.zoomout = FALSE;
                                                    }
                                                    else
                                                    {
                                                        if(self.impulse == 100)
                                                        {
                                                            self.start_challenge = 1;
                                                            challenge = 1;
                                                        }
                                                        else
                                                        {
                                                            if(self.impulse == 101)
                                                            {
                                                                self.start_challenge = 2;
                                                                challenge = 2;
                                                            }
                                                            else
                                                            {
                                                                if((self.impulse >= 120) && (self.impulse <= 130))
                                                                {
                                                                    if(self.impulse == 130)
                                                                    {
                                                                        self.tracking_speed = 20;
                                                                    }
                                                                    else
                                                                    {
                                                                        self.tracking_speed = self.impulse - 120;
                                                                    }
                                                                    
                                                                    CallClientPrefs(self);
                                                                }
                                                                else
                                                                {
                                                                    if(self.impulse == 200)
                                                                    {
                                                                        self.veh_body.skin = self.veh_body.skin + 1;
                                                                        
                                                                        if(self.veh_body.skin > self.num_skins)
                                                                        {
                                                                            self.veh_body.skin = 1;
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        if((self.impulse == 201) && (!(self.racing_flags & QR_START_READY)))
                                                                        {
                                                                            if((self.num_skins > 1) && (self.skin == 0))
                                                                            {
                                                                                self.skin = 1;
                                                                            }
                                                                            else
                                                                            {
                                                                                self.car_index = self.car_index + 1;
                                                                                self.skin = 0;
                                                                                
                                                                                if(self.car_index > NUM_CARS)
                                                                                {
                                                                                    self.car_index = 2;
                                                                                }
                                                                                
                                                                            }
                                                                            
                                                                            SetCarDetails();
                                                                        }
                                                                        else
                                                                        {
                                                                            if(self.impulse == 210)
                                                                            {
                                                                                self.car_index = 2;
                                                                                self.skin = 0;
                                                                                SetCarDetails();
                                                                                CallClientPrefs(self);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(self.impulse == 211)
                                                                                {
                                                                                    self.car_index = 2;
                                                                                    self.skin = 1;
                                                                                    SetCarDetails();
                                                                                    CallClientPrefs(self);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(self.impulse == 212)
                                                                                    {
                                                                                        self.car_index = 3;
                                                                                        self.skin = 0;
                                                                                        SetCarDetails();
                                                                                        CallClientPrefs(self);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if(self.impulse == 213)
                                                                                        {
                                                                                            self.car_index = 4;
                                                                                            self.skin = 0;
                                                                                            SetCarDetails();
                                                                                            CallClientPrefs(self);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if(self.impulse == 214)
                                                                                            {
                                                                                                self.car_index = 4;
                                                                                                self.skin = 1;
                                                                                                SetCarDetails();
                                                                                                CallClientPrefs(self);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if(self.impulse == 215)
                                                                                                {
                                                                                                    self.car_index = 5;
                                                                                                    self.skin = 0;
                                                                                                    SetCarDetails();
                                                                                                    CallClientPrefs(self);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if(self.impulse == 216)
                                                                                                    {
                                                                                                        self.car_index = 5;
                                                                                                        self.skin = 1;
                                                                                                        SetCarDetails();
                                                                                                        CallClientPrefs(self);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if(self.impulse == 220)
                                                                                                        {
                                                                                                            stuffcmd(self, "r_drawviewmodel 0\n");
                                                                                                            CallClientPrefs(self);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if(self.impulse == 221)
                                                                                                            {
                                                                                                                stuffcmd(self, "r_drawviewmodel 1\n");
                                                                                                                self.weaponmodel = "models/wheel.mdl";
                                                                                                                CallClientPrefs(self);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if(self.impulse == 222)
                                                                                                                {
                                                                                                                    stuffcmd(self, "r_drawviewmodel 1\n");
                                                                                                                    self.weaponmodel = "models/wheelsm.mdl";
                                                                                                                    CallClientPrefs(self);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if((self.impulse >= 230) && (self.impulse <= 240))
                                                                                                                    {
                                                                                                                        self.chasecam_zoom = (self.impulse - 230) * 10;
                                                                                                                        CallClientPrefs(self);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if(self.impulse == 254)
                                                                                                                        {
                                                                                                                            dude = spawn();
                                                                                                                            dude.classname = "rally_spawn_dude";
                                                                                                                            dude.angles = self.angles;
                                                                                                                            setorigin(dude, (self.origin + (self.veh_dir * 64)) + '0.000 0.000 32.000');
                                                                                                                            oself = self;
                                                                                                                            self = dude;
                                                                                                                            rally_spawn_dude();
                                                                                                                            self = oself;
                                                                                                                            remove(dude);
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
            
        }
        
    }
    
    self.impulse = 0;
};

// W_WeaponFrame
// function begins at statement 15028, parm_start=11204
// OP_LOAD_F	28	387	11204
// OP_LT	31	11204	11205
// OP_IFNOT	11205	2	0
// OP_RETURN	0	0	0
// OP_CALL0	540	0	0
// OP_LOAD_F	28	170	11206
// OP_IFNOT	11206	3	0
// OP_CALL0	9171	0	0
// OP_CALL0	539	0	0
// OP_DONE	0	0	0
void () W_WeaponFrame = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    ImpulseCommands();
    
    if(self.button0)
    {
        SuperDamageSound();
        W_Attack();
    }
    
};

// SuperDamageSound
// function begins at statement 15038, parm_start=11207
// OP_LOAD_F	28	391	11207
// OP_GT	11207	31	11208
// OP_IFNOT	11208	13	0
// OP_LOAD_F	28	398	11209
// OP_LT	11209	31	11210
// OP_IFNOT	11210	10	0
// OP_ADDRESS	28	398	11211
// OP_ADD_F	31	819	11212
// OP_STOREP_F	11212	11211	0
// OP_STORE_V	28	4	0
// OP_STORE_V	338	7	0
// OP_STORE_V	9062	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () SuperDamageSound = 
{
    
    if(self.super_damage_finished > time)
    {
        
        if(self.super_sound < time)
        {
            self.super_sound = time + 1;
            sound(self, CHAN_BODY, "items/damage3.wav", 1, ATTN_NORM);
        }
        
    }
    
    return;
};

// oldchasecam
// function begins at statement 15055, parm_start=11214
// OP_LOAD_ENT	28	201	11230
// OP_LOAD_F	11230	611	11231
// OP_EQ_F	11231	714	11232
// OP_IFNOT	11232	7	0
// OP_LOAD_ENT	28	201	11233
// OP_LOAD_F	11233	613	11234
// OP_ADD_F	10599	11234	11235
// OP_STORE_F	11235	10603	0
// OP_STORE_F	10601	10604	0
// OP_GOTO	6	0	0
// OP_LOAD_ENT	28	201	11236
// OP_LOAD_F	11236	613	11237
// OP_ADD_F	10596	11237	11238
// OP_STORE_F	11238	10603	0
// OP_STORE_F	10598	10604	0
// OP_LOAD_ENT	28	201	11239
// OP_LOAD_F	11239	177	11240
// OP_STORE_F	11240	11218	0
// OP_STORE_V	11217	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	4913	4	0
// OP_CALL1	501	0	0
// OP_MUL_VF	59	1	11241
// OP_LOAD_ENT	28	201	11244
// OP_LOAD_V	11244	113	11245
// OP_SUB_V	11241	11245	11248
// OP_STORE_V	11248	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	843	11251
// OP_ADD_F	11251	2223	11252
// OP_STORE_F	11252	11228	0
// OP_STORE_V	4913	4	0
// OP_CALL1	501	0	0
// OP_MUL_VF	65	1	11253
// OP_LOAD_ENT	28	201	11256
// OP_LOAD_V	11256	113	11257
// OP_SUB_V	11253	11257	11260
// OP_STORE_V	11260	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	843	11263
// OP_STORE_F	11263	11229	0
// OP_STORE_V	59	11217	0
// OP_LOAD_ENT	28	201	11264
// OP_LOAD_F	11264	378	11265
// OP_BITAND	11265	213	11266
// OP_IFNOT	11266	20	0
// OP_LT	11228	11267	11268
// OP_LOAD_ENT	28	201	11269
// OP_LOAD_F	11269	176	11270
// OP_LT	11270	11271	11272
// OP_OR	11268	11272	11273
// OP_IFNOT	11273	4	0
// OP_ADDRESS	28	161	11274
// OP_STOREP_F	817	11274	0
// OP_GOTO	10	0	0
// OP_LT	11229	2677	11275
// OP_IFNOT	11275	4	0
// OP_ADDRESS	28	161	11276
// OP_STOREP_F	819	11276	0
// OP_GOTO	5	0	0
// OP_GT	11229	11277	11278
// OP_IFNOT	11278	3	0
// OP_ADDRESS	28	161	11279
// OP_STOREP_F	821	11279	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	161	11280
// OP_STOREP_F	817	11280	0
// OP_LOAD_ENT	28	201	11281
// OP_LOAD_V	11281	175	11282
// OP_STORE_V	11282	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	201	11285
// OP_LOAD_V	11285	105	11286
// OP_LOAD_F	28	158	11289
// OP_MUL_VF	59	11289	11290
// OP_SUB_V	11286	11290	11293
// OP_STORE_V	11293	11214	0
// OP_LOAD_F	28	161	11296
// OP_NOT_F	11296	0	11297
// OP_IFNOT	11297	26	0
// OP_LOAD_ENT	28	201	11298
// OP_LOAD_F	11298	176	11299
// OP_GT	11299	2670	11300
// OP_IFNOT	11300	19	0
// OP_LOAD_ENT	28	201	11301
// OP_LOAD_F	11301	176	11302
// OP_SUB_F	11302	2670	11303
// OP_MUL_VF	11217	11303	11304
// OP_ADD_V	11214	11304	11307
// OP_STORE_V	11307	11214	0
// OP_LOAD_ENT	28	201	11310
// OP_LOAD_F	11310	176	11311
// OP_SUB_F	11311	2670	11312
// OP_MUL_F	11312	1152	11313
// OP_SUB_F	10604	11313	11314
// OP_STORE_F	11314	11224	0
// OP_LT	11224	817	11315
// OP_IFNOT	11315	2	0
// OP_STORE_F	817	11224	0
// OP_ADD_F	11216	11224	11316
// OP_STORE_F	11316	11216	0
// OP_GOTO	3	0	0
// OP_ADD_F	11216	10604	11317
// OP_STORE_F	11317	11216	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	161	11318
// OP_EQ_F	11318	819	11319
// OP_IFNOT	11319	5	0
// OP_MUL_VF	65	10604	11320
// OP_SUB_V	11214	11320	11323
// OP_STORE_V	11323	11214	0
// OP_GOTO	4	0	0
// OP_MUL_VF	65	10604	11326
// OP_ADD_V	11214	11326	11329
// OP_STORE_V	11329	11214	0
// OP_LOAD_ENT	28	201	11332
// OP_LOAD_V	11332	105	11333
// OP_STORE_V	11333	4	0
// OP_STORE_V	11214	7	0
// OP_STORE_V	219	10	0
// OP_LOAD_ENT	28	201	11336
// OP_STORE_V	11336	13	0
// OP_CALL4	475	0	0
// OP_MUL_VF	59	821	11337
// OP_ADD_V	71	11337	11340
// OP_STORE_V	11340	11214	0
// OP_ADDRESS	28	158	11343
// OP_LOAD_ENT	28	201	11344
// OP_LOAD_V	11344	105	11345
// OP_SUB_V	71	11345	11348
// OP_STORE_V	11348	4	0
// OP_CALL1	471	0	0
// OP_ADD_F	855	1	11351
// OP_STOREP_F	11351	11343	0
// OP_STORE_V	11214	4	0
// OP_ADD_V	11214	7028	11352
// OP_STORE_V	11352	7	0
// OP_STORE_V	219	10	0
// OP_LOAD_ENT	28	201	11355
// OP_STORE_V	11355	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	11356
// OP_IFNOT	11356	13	0
// OP_SUB_V	71	7028	11357
// OP_STORE_V	11357	11217	0
// OP_STORE_V	11214	4	0
// OP_SUB_V	11214	7028	11360
// OP_STORE_V	11360	7	0
// OP_STORE_V	219	10	0
// OP_LOAD_ENT	28	201	11363
// OP_STORE_V	11363	13	0
// OP_CALL4	475	0	0
// OP_EQ_F	70	819	11364
// OP_IFNOT	11364	2	0
// OP_STORE_V	11217	11214	0
// OP_LOAD_ENT	28	201	11365
// OP_LOAD_ENT	11365	548	11366
// OP_LOAD_V	11366	117	11367
// OP_LOAD_ENT	28	201	11370
// OP_LOAD_V	11370	580	11371
// OP_SUB_V	11367	11371	11374
// OP_STORE_V	11374	4	0
// OP_CALL1	461	0	0
// OP_GT	61	817	11377
// OP_IFNOT	11377	5	0
// OP_MUL_F	61	10603	11378
// OP_MUL_F	11378	1182	11379
// OP_ADD_F	11216	11379	11380
// OP_STORE_F	11380	11216	0
// OP_LOAD_ENT	28	201	11381
// OP_LOAD_F	11381	613	11382
// OP_LE	11382	1112	11383
// OP_LT	61	817	11384
// OP_AND	11383	11384	11385
// OP_IFNOT	11385	4	0
// OP_MUL_F	61	2657	11386
// OP_SUB_F	11216	11386	11387
// OP_STORE_F	11387	11216	0
// OP_LOAD_V	28	105	11388
// OP_SUB_V	11214	11388	11391
// OP_STORE_V	11391	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	11217	0
// OP_LOAD_V	28	105	11394
// OP_SUB_V	11214	11394	11397
// OP_STORE_V	11397	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11223	0
// OP_ADDRESS	28	595	11400
// OP_MUL_VF	11217	11223	11403
// OP_MUL_VF	11403	855	11406
// OP_STOREP_V	11406	11400	0
// OP_LOAD_V	28	595	11409
// OP_MUL_VF	11409	32	11412
// OP_STORE_V	11412	4	0
// OP_CALL1	471	0	0
// OP_LT	1	11223	11415
// OP_IFNOT	11415	8	0
// OP_ADDRESS	28	599	11416
// OP_LOAD_V	28	599	11419
// OP_LOAD_V	28	595	11422
// OP_MUL_VF	11422	32	11425
// OP_ADD_V	11419	11425	11428
// OP_STOREP_V	11428	11416	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	599	11431
// OP_STOREP_V	11214	11431	0
// OP_ADDRESS	28	602	11434
// OP_STOREP_F	11216	11434	0
// OP_LOAD_ENT	28	201	11435
// OP_LOAD_V	11435	105	11436
// OP_LOAD_V	28	599	11439
// OP_SUB_V	11436	11439	11442
// OP_STORE_V	11442	4	0
// OP_CALL1	471	0	0
// OP_GT	1	11445	11446
// OP_IFNOT	11446	13	0
// OP_ADDRESS	28	599	11447
// OP_LOAD_ENT	28	201	11450
// OP_LOAD_V	11450	105	11451
// OP_LOAD_V	28	599	11454
// OP_LOAD_ENT	28	201	11457
// OP_LOAD_V	11457	105	11458
// OP_SUB_V	11454	11458	11461
// OP_STORE_V	11461	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	11445	11464
// OP_ADD_V	11451	11464	11467
// OP_STOREP_V	11467	11447	0
// OP_LOAD_ENT	28	201	11470
// OP_LOAD_F	11470	613	11471
// OP_STORE_F	11471	11227	0
// OP_LOAD_ENT	28	201	11472
// OP_LOAD_V	11472	105	11473
// OP_LOAD_V	28	599	11476
// OP_LOAD_ENT	28	201	11479
// OP_LOAD_V	11479	105	11480
// OP_SUB_V	11476	11480	11483
// OP_STORE_V	11483	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	11227	11486
// OP_ADD_V	11473	11486	11489
// OP_STORE_V	11489	11214	0
// OP_STORE_F	11216	11225	0
// OP_LOAD_ENT	28	201	11492
// OP_LOAD_V	11492	113	11493
// OP_STORE_V	11493	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11226	0
// OP_LOAD_F	28	108	11496
// OP_GT	11216	11496	11497
// OP_IFNOT	11497	17	0
// OP_LOAD_F	28	108	11498
// OP_DIV_F	11226	778	11500
// OP_MUL_F	11499	11500	11501
// OP_ADD_F	11501	1112	11502
// OP_MUL_F	11502	32	11503
// OP_ADD_F	11498	11503	11504
// OP_STORE_F	11504	11216	0
// OP_GT	11216	11225	11505
// OP_IFNOT	11505	2	0
// OP_STORE_F	11225	11216	0
// OP_SUB_F	11216	11225	11506
// OP_LT	11506	11507	11508
// OP_IFNOT	11508	3	0
// OP_SUB_F	11225	2657	11509
// OP_STORE_F	11509	11216	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	108	11510
// OP_DIV_F	11226	778	11511
// OP_MUL_F	11499	11511	11512
// OP_ADD_F	11512	1112	11513
// OP_MUL_F	11513	32	11514
// OP_SUB_F	11510	11514	11515
// OP_STORE_F	11515	11216	0
// OP_LT	11216	11225	11516
// OP_IFNOT	11516	2	0
// OP_STORE_F	11225	11216	0
// OP_SUB_F	11216	11225	11517
// OP_GT	11517	2657	11518
// OP_IFNOT	11518	3	0
// OP_ADD_F	11225	2657	11519
// OP_STORE_F	11519	11216	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11214	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	158	11520
// OP_LOAD_F	28	158	11521
// OP_ADD_F	11521	825	11522
// OP_STOREP_F	11522	11520	0
// OP_LOAD_F	28	158	11523
// OP_GT	11523	10603	11524
// OP_IFNOT	11524	3	0
// OP_ADDRESS	28	158	11525
// OP_STOREP_F	10603	11525	0
// OP_LOAD_V	28	109	11526
// OP_LOAD_V	28	105	11529
// OP_EQ_V	11526	11529	11532
// OP_IFNOT	11532	7	0
// OP_GT	11223	2522	11533
// OP_IFNOT	11533	5	0
// OP_ADDRESS	28	159	11534
// OP_LOAD_F	28	159	11535
// OP_ADD_F	11535	819	11536
// OP_STOREP_F	11536	11534	0
// OP_LOAD_F	28	159	11537
// OP_GT	11537	823	11538
// OP_IFNOT	11538	7	0
// OP_LOAD_ENT	28	201	11539
// OP_STORE_V	11539	4	0
// OP_CALL1	10608	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	109	11540
// OP_LOAD_V	28	105	11543
// OP_STOREP_V	11543	11540	0
// OP_DONE	0	0	0
void () oldchasecam = 
{
    local vector spot2;
    local vector dir;
    local vector cam_angles;
    local float dist;
    local float cap;
    local float ftemp;
    local float vel_speed;
    local float dist2;
    local float f_f;
    local float f_r;
    if(self.owner.cam == CAM_CHASEFAR)
    {
        chasecam_dist = CHASECAM_FAR_x + self.owner.chasecam_zoom;
        chasecam_zofs = 32;
    }
    else
    {
        chasecam_dist = CHASECAM_CLOSE_x + self.owner.chasecam_zoom;
        chasecam_zofs = 10;
    }
    
    dir_y = self.owner.v_angle_y;
    makevectors(dir);
    f_f = ((vlen((v_forward * cvar("sv_maxspeed")) - self.owner.velocity)) / 8) + 64;
    f_r = (vlen((v_right * cvar("sv_maxspeed")) - self.owner.velocity)) / 8;
    dir = v_forward;
    if(self.owner.speed & CHSCAM_ALT)
    {
        if((f_f < 160) || (self.owner.v_angle_x < -45))
        {
            self.ammo_cells = 0;
        }
        else
        {
            if(f_r < 80)
            {
                self.ammo_cells = 1;
            }
            else
            {
                
                if(f_r > 560)
                {
                    self.ammo_cells = 2;
                }
                
            }
            
        }
        
    }
    else
    {
        self.ammo_cells = 0;
    }
    
    makevectors(self.owner.v_angle);
    spot2 = self.owner.origin - (v_forward * self.ammo_shells);
    if(!self.ammo_cells)
    {
        if(self.owner.v_angle_x > 16)
        {
            spot2 = spot2 + (dir * (self.owner.v_angle_x - 16));
            cap = chasecam_zofs - ((self.owner.v_angle_x - 16) * 0.2);
            
            if(cap < 0)
            {
                cap = 0;
            }
            
            spot2_z = 0 + cap;
        }
        else
        {
            spot2_z = 0 + chasecam_zofs;
        }
        
    }
    else
    {
        if(self.ammo_cells == 1)
        {
            spot2 = spot2 - (v_right * chasecam_zofs);
        }
        else
        {
            spot2 = spot2 + (v_right * chasecam_zofs);
        }
        
    }
    
    traceline(self.owner.origin, spot2, TRUE, self.owner);
    spot2 = trace_endpos + (v_forward * 2);
    self.ammo_shells = 10 + (vlen(trace_endpos - self.owner.origin));
    traceline(spot2, spot2 + '0.000 0.000 32.000', TRUE, self.owner);
    
    if(trace_fraction < 1)
    {
        dir = trace_endpos - '0.000 0.000 32.000';
        traceline(spot2, spot2 - '0.000 0.000 32.000', TRUE, self.owner);
        
        if(trace_fraction == 1)
        {
            spot2 = dir;
        }
        
    }
    
    makevectors(self.owner.veh_body.angles - self.owner.body_roll);
    
    if(0 > 0)
    {
        spot2_z = 0 + ((0 * chasecam_dist) * 0.5);
    }
    
    
    if((self.owner.chasecam_zoom <= 20) && (0 < 0))
    {
        spot2_z = 0 - (0 * 32);
    }
    
    dir = normalize(spot2 - self.origin);
    dist = vlen(spot2 - self.origin);
    self.roll_velocity = (dir * dist) * 10;
    if((vlen(self.roll_velocity * frametime)) < dist)
    {
        self.last_roll = self.last_roll + (self.roll_velocity * frametime);
    }
    else
    {
        self.last_roll = spot2;
    }
    
    self.last_roll_z = 0;
    
    if((vlen(self.owner.origin - self.last_roll)) > 256)
    {
        self.last_roll = self.owner.origin + ((normalize(self.last_roll - self.owner.origin)) * 256);
    }
    
    dist2 = self.owner.chasecam_zoom;
    spot2 = self.owner.origin + ((normalize(self.last_roll - self.owner.origin)) * dist2);
    ftemp = 0;
    vel_speed = vlen(self.owner.velocity);
    if(0 > self.origin_z)
    {
        spot2_z = self.origin_z + (((6400 * (vel_speed / MAX_SPEED)) + 20) * frametime);
        
        if(0 > ftemp)
        {
            spot2_z = ftemp;
        }
        
        
        if((0 - ftemp) < -32)
        {
            spot2_z = ftemp - 32;
        }
        
    }
    else
    {
        spot2_z = self.origin_z - (((6400 * (vel_speed / MAX_SPEED)) + 20) * frametime);
        
        if(0 < ftemp)
        {
            spot2_z = ftemp;
        }
        
        
        if((0 - ftemp) > 32)
        {
            spot2_z = ftemp + 32;
        }
        
    }
    
    setorigin(self, spot2);
    self.ammo_shells = self.ammo_shells + 4;
    
    if(self.ammo_shells > chasecam_dist)
    {
        self.ammo_shells = chasecam_dist;
    }
    
    
    if(self.oldorigin == self.origin)
    {
        
        if(dist > 30)
        {
            self.ammo_nails = self.ammo_nails + 1;
        }
        
    }
    
    
    if(self.ammo_nails > 3)
    {
        Start_chase_cam(self.owner);
        remove(self);
        return;
    }
    
    self.oldorigin = self.origin;
};

// Keep_cam_chasing_owner
// function begins at statement 15373, parm_start=11546
// OP_LOAD_ENT	28	201	11564
// OP_LOAD_F	11564	611	11565
// OP_NE_F	11565	715	11566
// OP_LOAD_ENT	28	201	11567
// OP_LOAD_F	11567	611	11568
// OP_NE_F	11568	716	11569
// OP_AND	11566	11569	11570
// OP_IFNOT	11570	248	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11571
// OP_LOAD_ENT	28	201	11574
// OP_LOAD_V	11574	575	11575
// OP_ADD_V	11571	11575	11578
// OP_STORE_V	11578	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	11581
// OP_LOAD_F	11581	611	11582
// OP_EQ_F	11582	714	11583
// OP_IFNOT	11583	7	0
// OP_LOAD_ENT	28	201	11584
// OP_LOAD_F	11584	613	11585
// OP_ADD_F	10599	11585	11586
// OP_STORE_F	11586	10603	0
// OP_STORE_F	10601	10604	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	201	11587
// OP_LOAD_F	11587	613	11588
// OP_ADD_F	10596	11588	11589
// OP_STORE_F	11589	10603	0
// OP_STORE_F	10598	10604	0
// OP_LOAD_ENT	28	201	11590
// OP_LOAD_F	11590	612	11591
// OP_STORE_F	11591	11563	0
// OP_LT	10603	827	11592
// OP_IFNOT	11592	2	0
// OP_STORE_F	827	10603	0
// OP_LOAD_ENT	28	201	11593
// OP_LOAD_V	11593	175	11594
// OP_STORE_V	11594	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	59	11549	0
// OP_LOAD_ENT	28	201	11597
// OP_LOAD_V	11597	113	11598
// OP_STORE_V	11598	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11561	0
// OP_LOAD_ENT	28	201	11601
// OP_LOAD_V	11601	113	11602
// OP_NE_V	11602	926	11605
// OP_IFNOT	11605	7	0
// OP_LOAD_ENT	28	201	11606
// OP_LOAD_V	11606	113	11607
// OP_STORE_V	11607	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	11555	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	28	201	11610
// OP_LOAD_ENT	11610	548	11611
// OP_LOAD_V	11611	117	11612
// OP_STORE_V	11612	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	59	11555	0
// OP_DIV_F	778	823	11615
// OP_GT	11561	11615	11616
// OP_LOAD_ENT	28	201	11617
// OP_LOAD_F	11617	611	11618
// OP_EQ_F	11618	713	11619
// OP_AND	11616	11619	11620
// OP_LOAD_F	28	644	11621
// OP_BITAND	11621	703	11622
// OP_NOT_F	11622	0	11623
// OP_AND	11620	11623	11624
// OP_IFNOT	11624	65	0
// OP_LOAD_ENT	28	201	11625
// OP_LOAD_V	11625	105	11626
// OP_DIV_F	11561	778	11629
// OP_LOAD_ENT	28	201	11630
// OP_LOAD_F	11630	613	11631
// OP_MUL_F	11631	1182	11632
// OP_MUL_F	11629	11632	11633
// OP_ADD_F	10603	11633	11634
// OP_MUL_FV	11634	11555	11635
// OP_SUB_V	11626	11635	11638
// OP_MUL_VF	1215	10604	11641
// OP_ADD_V	11638	11641	11644
// OP_STORE_V	11644	11546	0
// OP_LOAD_F	28	108	11647
// OP_STORE_F	11647	11548	0
// OP_LOAD_ENT	28	201	11648
// OP_LOAD_ENT	11648	548	11649
// OP_LOAD_V	11649	117	11650
// OP_LOAD_ENT	28	201	11653
// OP_LOAD_V	11653	580	11654
// OP_SUB_V	11650	11654	11657
// OP_STORE_V	11657	4	0
// OP_CALL1	461	0	0
// OP_MUL_F	1228	61	11660
// OP_STORE_F	11660	61	0
// OP_GT	61	817	11661
// OP_IFNOT	11661	5	0
// OP_MUL_F	61	10603	11662
// OP_MUL_F	11662	1182	11663
// OP_ADD_F	11548	11663	11664
// OP_STORE_F	11664	11548	0
// OP_LOAD_V	28	105	11665
// OP_SUB_V	11546	11665	11668
// OP_STORE_V	11668	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	5807	11671
// OP_MUL_VF	11671	32	11674
// OP_STORE_V	11674	11552	0
// OP_LOAD_V	28	105	11677
// OP_SUB_V	11546	11677	11680
// OP_STORE_V	11680	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11562	0
// OP_STORE_V	11552	4	0
// OP_CALL1	471	0	0
// OP_GT	11562	1	11683
// OP_IFNOT	11683	7	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11684
// OP_ADD_V	11684	11552	11687
// OP_STORE_V	11687	7	0
// OP_CALL2	462	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11546	7	0
// OP_CALL2	462	0	0
// OP_LOAD_V	28	105	11690
// OP_LOAD_ENT	28	201	11693
// OP_LOAD_V	11693	105	11694
// OP_SUB_V	11690	11694	11697
// OP_STORE_V	11697	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11562	0
// OP_GOTO	2	0	0
// OP_STORE_F	10603	11562	0
// OP_LOAD_ENT	28	201	11700
// OP_LOAD_V	11700	105	11701
// OP_MUL_FV	11562	11549	11704
// OP_SUB_V	11701	11704	11707
// OP_MUL_VF	1215	10604	11710
// OP_ADD_V	11707	11710	11713
// OP_STORE_V	11713	11546	0
// OP_LOAD_ENT	28	201	11716
// OP_LOAD_V	11716	105	11717
// OP_LOAD_ENT	28	201	11720
// OP_LOAD_V	11720	105	11721
// OP_SUB_V	11546	11721	11724
// OP_STORE_V	11724	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	11562	11727
// OP_ADD_V	11717	11727	11730
// OP_STORE_V	11730	11546	0
// OP_LOAD_ENT	28	201	11733
// OP_LOAD_F	11733	611	11734
// OP_EQ_F	11734	713	11735
// OP_LOAD_F	28	644	11736
// OP_BITAND	11736	703	11737
// OP_NOT_F	11737	0	11738
// OP_AND	11735	11738	11739
// OP_IFNOT	11739	35	0
// OP_LOAD_V	28	105	11740
// OP_SUB_V	11546	11740	11743
// OP_STORE_V	11743	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11562	0
// OP_LOAD_V	28	105	11746
// OP_SUB_V	11546	11746	11749
// OP_STORE_V	11749	4	0
// OP_CALL1	468	0	0
// OP_LOAD_ENT	28	201	11752
// OP_LOAD_F	11752	613	11753
// OP_MUL_F	11563	1112	11754
// OP_ADD_F	11753	11754	11755
// OP_MUL_F	11562	1748	11756
// OP_GT	11562	2670	11757
// OP_MUL_F	11756	11757	11758
// OP_ADD_F	11755	11758	11759
// OP_MUL_VF	1	11759	11760
// OP_MUL_VF	11760	32	11763
// OP_STORE_V	11763	11552	0
// OP_STORE_V	11552	4	0
// OP_CALL1	471	0	0
// OP_GT	11562	1	11766
// OP_IFNOT	11766	7	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11767
// OP_ADD_V	11767	11552	11770
// OP_STORE_V	11770	7	0
// OP_CALL2	462	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11546	7	0
// OP_CALL2	462	0	0
// OP_GOTO	10	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11546	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	28	644	11773
// OP_LOAD_F	28	644	11774
// OP_LOAD_F	28	644	11775
// OP_BITAND	11775	703	11776
// OP_SUB_F	11774	11776	11777
// OP_STOREP_F	11777	11773	0
// OP_ADDRESS	28	113	11778
// OP_STOREP_V	926	11778	0
// OP_LOAD_V	28	105	11781
// OP_STORE_V	11781	4	0
// OP_LOAD_ENT	28	201	11784
// OP_LOAD_V	11784	105	11785
// OP_STORE_V	11785	7	0
// OP_STORE_V	218	10	0
// OP_LOAD_ENT	28	201	11788
// OP_STORE_V	11788	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	11789
// OP_IFNOT	11789	13	0
// OP_LOAD_V	28	105	11790
// OP_LOAD_ENT	28	201	11793
// OP_LOAD_V	11793	105	11794
// OP_SUB_V	11790	11794	11797
// OP_STORE_V	11797	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	11552	0
// OP_STORE_V	28	4	0
// OP_MUL_VF	11552	825	11800
// OP_SUB_V	71	11800	11803
// OP_STORE_V	11803	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	11806
// OP_LOAD_V	11806	105	11807
// OP_STORE_V	11807	4	0
// OP_LOAD_V	28	105	11810
// OP_STORE_V	11810	7	0
// OP_STORE_V	218	10	0
// OP_LOAD_ENT	28	201	11813
// OP_STORE_V	11813	13	0
// OP_CALL4	475	0	0
// OP_LT	70	819	11814
// OP_IFNOT	11814	13	0
// OP_LOAD_V	28	105	11815
// OP_LOAD_ENT	28	201	11818
// OP_LOAD_V	11818	105	11819
// OP_SUB_V	11815	11819	11822
// OP_STORE_V	11822	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	11552	0
// OP_STORE_V	28	4	0
// OP_MUL_VF	11552	825	11825
// OP_SUB_V	71	11825	11828
// OP_STORE_V	11828	7	0
// OP_CALL2	462	0	0
// OP_GOTO	137	0	0
// OP_LOAD_ENT	28	201	11831
// OP_LOAD_F	11831	611	11832
// OP_EQ_F	11832	716	11833
// OP_IFNOT	11833	87	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11834
// OP_LOAD_ENT	28	201	11837
// OP_LOAD_V	11837	575	11838
// OP_ADD_V	11834	11838	11841
// OP_STORE_V	11841	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	11844
// OP_LOAD_ENT	11844	548	11845
// OP_LOAD_V	11845	117	11846
// OP_LOAD_ENT	28	201	11849
// OP_LOAD_V	11849	580	11850
// OP_SUB_V	11846	11850	11853
// OP_STORE_V	11853	4	0
// OP_CALL1	461	0	0
// OP_LOAD_ENT	28	201	11856
// OP_LOAD_V	11856	105	11857
// OP_MUL_VF	59	3330	11860
// OP_SUB_V	11857	11860	11863
// OP_MUL_VF	62	2657	11866
// OP_ADD_V	11863	11866	11869
// OP_STORE_V	11869	11546	0
// OP_LOAD_V	28	105	11872
// OP_SUB_V	11546	11872	11875
// OP_STORE_V	11875	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	1632	11878
// OP_MUL_VF	11878	32	11881
// OP_STORE_V	11881	11552	0
// OP_LOAD_V	28	105	11884
// OP_SUB_V	11546	11884	11887
// OP_STORE_V	11887	4	0
// OP_CALL1	471	0	0
// OP_STORE_F	1	11562	0
// OP_STORE_V	11552	4	0
// OP_CALL1	471	0	0
// OP_GT	11562	1	11890
// OP_IFNOT	11890	7	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	11891
// OP_ADD_V	11891	11552	11894
// OP_STORE_V	11894	7	0
// OP_CALL2	462	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11546	7	0
// OP_CALL2	462	0	0
// OP_LOAD_ENT	28	201	11897
// OP_LOAD_V	11897	105	11898
// OP_LOAD_V	28	105	11901
// OP_SUB_V	11898	11901	11904
// OP_STORE_V	11904	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	11558	0
// OP_STORE_V	11558	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	11558	0
// OP_MUL_F	1228	11558	11907
// OP_STORE_F	11907	11558	0
// OP_GT	11558	865	11908
// OP_IFNOT	11908	4	0
// OP_SUB_F	11558	867	11909
// OP_STORE_F	11909	11558	0
// OP_GOTO	5	0	0
// OP_LT	11558	4428	11910
// OP_IFNOT	11910	3	0
// OP_ADD_F	11558	867	11911
// OP_STORE_F	11911	11558	0
// OP_LOAD_ENT	28	201	11912
// OP_STORE_ENT	11912	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	11558	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	11559	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	11560	7	0
// OP_CALL2	512	0	0
// OP_LOAD_ENT	28	201	11913
// OP_ADDRESS	11913	675	11914
// OP_STOREP_F	11559	11914	0
// OP_GOTO	47	0	0
// OP_LOAD_ENT	28	201	11915
// OP_STORE_ENT	11915	28	0
// OP_LOAD_ENT	28	548	11916
// OP_STORE_V	11916	4	0
// OP_LOAD_ENT	28	625	11917
// OP_STORE_V	11917	7	0
// OP_STORE_V	817	10	0
// OP_STORE_V	947	13	0
// OP_STORE_V	839	16	0
// OP_CALL5	1441	0	0
// OP_LOAD_ENT	28	625	11918
// OP_STORE_ENT	11918	28	0
// OP_LOAD_ENT	28	201	11919
// OP_LOAD_ENT	11919	548	11920
// OP_LOAD_V	11920	117	11921
// OP_STORE_V	11921	11558	0
// OP_MUL_F	1228	11558	11924
// OP_STORE_F	11924	11558	0
// OP_ADD_F	11558	845	11925
// OP_STORE_F	11925	11558	0
// OP_GT	11558	865	11926
// OP_IFNOT	11926	4	0
// OP_SUB_F	11558	867	11927
// OP_STORE_F	11927	11558	0
// OP_GOTO	5	0	0
// OP_LT	11558	4428	11928
// OP_IFNOT	11928	3	0
// OP_ADD_F	11558	867	11929
// OP_STORE_F	11929	11558	0
// OP_LOAD_ENT	28	201	11930
// OP_STORE_ENT	11930	81	0
// OP_STORE_V	352	4	0
// OP_STORE_V	747	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	11558	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	11559	7	0
// OP_CALL2	512	0	0
// OP_STORE_V	352	4	0
// OP_STORE_V	11560	7	0
// OP_CALL2	512	0	0
// OP_LOAD_ENT	28	201	11931
// OP_ADDRESS	11931	174	11932
// OP_STOREP_F	219	11932	0
// OP_DONE	0	0	0
void () Keep_cam_chasing_owner = 
{
    local vector spot;
    local vector view_dir;
    local vector ideal_vec;
    local vector veh_vel;
    local vector cam_angles;
    local float veh_speed;
    local float ideal_dist;
    local float track_speed;
    if((self.owner.cam != CAM_INCAR) && (self.owner.cam != CAM_TEST))
    {
        setorigin(self, self.origin + self.owner.lastmove);
        if(self.owner.cam == CAM_CHASEFAR)
        {
            chasecam_dist = CHASECAM_FAR_x + self.owner.chasecam_zoom;
            chasecam_zofs = 32;
        }
        else
        {
            chasecam_dist = CHASECAM_CLOSE_x + self.owner.chasecam_zoom;
            chasecam_zofs = 10;
            track_speed = self.owner.tracking_speed;
        }
        
        
        if(chasecam_dist < 5)
        {
            chasecam_dist = 5;
        }
        
        makevectors(self.owner.v_angle);
        view_dir = v_forward;
        veh_speed = vlen(self.owner.velocity);
        if(self.owner.velocity != '0.000 0.000 0.000')
        {
            veh_vel = normalize(self.owner.velocity);
        }
        else
        {
            makevectors(self.owner.veh_body.angles);
            veh_vel = v_forward;
        }
        
        if(((veh_speed > (MAX_SPEED / 3)) && (self.owner.cam == CAM_CHASECLOSE)) && (!(self.racing_flags & QR_RESPAWN_FLAG)))
        {
            spot = (self.owner.origin - ((chasecam_dist + ((veh_speed / MAX_SPEED) * (self.owner.chasecam_zoom * 0.5))) * veh_vel)) + ('0.000 0.000 1.000' * chasecam_zofs);
            spot_z = self.origin_z;
            makevectors(self.owner.veh_body.angles - self.owner.body_roll);
            v_forward_z = -1 * 0;
            
            if(0 > 0)
            {
                spot_z = 0 + ((0 * chasecam_dist) * 0.5);
            }
            
            ideal_vec = ((normalize(spot - self.origin)) * 120) * frametime;
            ideal_dist = vlen(spot - self.origin);
            if(ideal_dist > vlen(ideal_vec))
            {
                setorigin(self, self.origin + ideal_vec);
            }
            else
            {
                setorigin(self, spot);
            }
            
            ideal_dist = vlen(self.origin - self.owner.origin);
        }
        else
        {
            ideal_dist = chasecam_dist;
        }
        
        spot = (self.owner.origin - (ideal_dist * view_dir)) + ('0.000 0.000 1.000' * chasecam_zofs);
        spot = self.owner.origin + ((normalize(spot - self.owner.origin)) * ideal_dist);
        if((self.owner.cam == CAM_CHASECLOSE) && (!(self.racing_flags & QR_RESPAWN_FLAG)))
        {
            ideal_dist = vlen(spot - self.origin);
            ideal_vec = ((normalize(spot - self.origin)) * ((self.owner.chasecam_zoom + (track_speed * 20)) + ((ideal_dist * 2.5) * (ideal_dist > 16)))) * frametime;
            if(ideal_dist > vlen(ideal_vec))
            {
                setorigin(self, self.origin + ideal_vec);
            }
            else
            {
                setorigin(self, spot);
            }
            
        }
        else
        {
            setorigin(self, spot);
            self.racing_flags = self.racing_flags - (self.racing_flags & QR_RESPAWN_FLAG);
        }
        
        self.velocity = '0.000 0.000 0.000';
        traceline(self.origin, self.owner.origin, FALSE, self.owner);
        
        if(trace_fraction < 1)
        {
            ideal_vec = normalize(self.origin - self.owner.origin);
            setorigin(self, trace_endpos - (ideal_vec * 4));
        }
        
        traceline(self.owner.origin, self.origin, FALSE, self.owner);
        
        if(trace_fraction < 1)
        {
            ideal_vec = normalize(self.origin - self.owner.origin);
            setorigin(self, trace_endpos - (ideal_vec * 4));
        }
        
    }
    else
    {
        if(self.owner.cam == CAM_TEST)
        {
            setorigin(self, self.origin + self.owner.lastmove);
            makevectors(self.owner.veh_body.angles - self.owner.body_roll);
            spot = (self.owner.origin - (v_forward * 48)) + (v_up * 32);
            ideal_vec = ((normalize(spot - self.origin)) * 40) * frametime;
            ideal_dist = vlen(spot - self.origin);
            if(ideal_dist > vlen(ideal_vec))
            {
                setorigin(self, self.origin + ideal_vec);
            }
            else
            {
                setorigin(self, spot);
            }
            
            cam_angles = normalize(self.owner.origin - self.origin);
            cam_angles = vectoangles(cam_angles);
            cam_angles_x = -1 * cam_angles_x;
            if(cam_angles_x > 180)
            {
                cam_angles_x = cam_angles_x - 360;
            }
            else
            {
                
                if(cam_angles_x < -180)
                {
                    cam_angles_x = cam_angles_x + 360;
                }
                
            }
            
            msg_entity = self.owner;
            WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
            WriteAngle(MSG_ONE, cam_angles_x);
            WriteAngle(MSG_ONE, 0);
            WriteAngle(MSG_ONE, 0);
            self.owner.last_heading = 0;
        }
        else
        {
            self = self.owner;
            SetVehPosition(self.veh_body, self.chasecam, 0, -2, 7);
            self = self.chasecam;
            cam_angles = self.owner.veh_body.angles;
            cam_angles_x = -1 * cam_angles_x;
            cam_angles_x = cam_angles_x + 15;
            if(cam_angles_x > 180)
            {
                cam_angles_x = cam_angles_x - 360;
            }
            else
            {
                
                if(cam_angles_x < -180)
                {
                    cam_angles_x = cam_angles_x + 360;
                }
                
            }
            
            msg_entity = self.owner;
            WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
            WriteAngle(MSG_ONE, cam_angles_x);
            WriteAngle(MSG_ONE, 0);
            WriteAngle(MSG_ONE, 0);
            self.owner.fixangle = TRUE;
        }
        
    }
    
};

