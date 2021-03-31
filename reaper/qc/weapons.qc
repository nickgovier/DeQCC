void () player_run;
void (vector org, vector vel, float damage) SpawnBlood;
void () SuperDamageSound;
vector () botaim;
// W_Precache
// function begins at statement 3960, parm_start=3091
// OP_STORE_V	3091	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3092	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3093	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3094	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3095	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3096	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3097	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3098	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3099	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3100	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3101	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	3102	4	0
// OP_CALL1	464	0	0
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
// function begins at statement 3985, parm_start=3104
// OP_CALL0	452	0	0
// OP_SUB_F	1	677	3104
// OP_MUL_F	216	3104	3105
// OP_RETURN	3105	0	0
// OP_DONE	0	0	0
float () crandom = 
{
    return FL_SWIM * (random() - 0.500);
};

// W_FireAxe
// function begins at statement 3990, parm_start=3107
// OP_LOAD_V	28	105	3116
// OP_ADD_V	3116	3119	3122
// OP_STORE_V	3122	3107	0
// OP_STORE_V	59	3110	0
// OP_LOAD_S	28	129	3125
// OP_EQ_S	3125	2056	3126
// OP_IFNOT	3126	3	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3110	0
// OP_STORE_V	3107	4	0
// OP_MUL_VF	3110	220	3127
// OP_ADD_V	3107	3127	3130
// OP_STORE_V	3130	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	214	3133
// OP_IFNOT	3133	2	0
// OP_RETURN	0	0	0
// OP_MUL_VF	3110	229	3134
// OP_SUB_V	71	3134	3137
// OP_STORE_V	3137	3113	0
// OP_LOAD_F	78	163	3140
// OP_IFNOT	3140	13	0
// OP_ADDRESS	78	387	3141
// OP_STOREP_F	214	3141	0
// OP_STORE_V	3113	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	576	10	0
// OP_CALL3	3087	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	576	13	0
// OP_CALL4	520	0	0
// OP_GOTO	22	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3142	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3113	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3114	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3115	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () W_FireAxe = 
{
    local vector source;
    local vector dir;
    local vector org;
    source = self.origin + '0.000 0.000 16.000';
    dir = v_forward;
    
    if(self.classname == "dmbot")
    {
        dir = botaim();
    }
    
    traceline(source, source + (dir * FL_GODMODE), FALSE, self);
    
    if(trace_fraction == TRUE)
    {
        return;
    }
    
    org = trace_endpos - (dir * MOVETYPE_STEP);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = TRUE;
        SpawnBlood(org, VEC_ORIGIN, KINDA_WANT);
        T_Damage(trace_ent, self, self, KINDA_WANT);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", TRUE, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, 0.000);
        WriteCoord(MSG_BROADCAST, 0.000);
    }
    
};

// wall_velocity
// function begins at statement 4048, parm_start=3144
// OP_LOAD_V	28	113	3147
// OP_STORE_V	3147	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	3144	0
// OP_CALL0	452	0	0
// OP_SUB_F	1	677	3150
// OP_MUL_VF	62	3150	3151
// OP_ADD_V	3144	3151	3154
// OP_CALL0	452	0	0
// OP_SUB_F	1	677	3157
// OP_MUL_VF	65	3157	3158
// OP_ADD_V	3154	3158	3161
// OP_STORE_V	3161	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	3144	0
// OP_MUL_FV	216	74	3164
// OP_ADD_V	3144	3164	3167
// OP_STORE_V	3167	3144	0
// OP_MUL_VF	3144	2356	3170
// OP_STORE_V	3170	3144	0
// OP_RETURN	3144	0	0
// OP_DONE	0	0	0
vector () wall_velocity = 
{
    local vector vel;
    vel = normalize(self.velocity);
    vel = normalize((vel + (v_up * (random() - 0.500))) + (v_right * (random() - 0.500)));
    vel = vel + (FL_SWIM * trace_plane_normal);
    vel = vel * 200.000;
    return vel;
};

// SpawnMeatSpray
// function begins at statement 4070, parm_start=3174
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	3180	0
// OP_ADDRESS	3180	201	3182
// OP_STOREP_ENT	28	3182	0
// OP_ADDRESS	3180	103	3183
// OP_STOREP_F	235	3183	0
// OP_ADDRESS	3180	104	3184
// OP_STOREP_F	237	3184	0
// OP_LOAD_V	28	117	3185
// OP_STORE_V	3185	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	3180	113	3188
// OP_STOREP_V	3177	3188	0
// OP_ADDRESS	3180	116	3191
// OP_LOAD_F	3180	116	3192
// OP_ADD_F	3192	2229	3193
// OP_CALL0	452	0	0
// OP_MUL_F	756	1	3194
// OP_ADD_F	3193	3194	3195
// OP_STOREP_F	3195	3191	0
// OP_ADDRESS	3180	121	3196
// OP_STOREP_V	3199	3196	0
// OP_ADDRESS	3180	150	3202
// OP_ADD_F	31	214	3203
// OP_STOREP_F	3203	3202	0
// OP_ADDRESS	3180	148	3204
// OP_STOREP_FNC	519	3204	0
// OP_STORE_V	3180	4	0
// OP_STORE_V	3205	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3180	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	3180	4	0
// OP_STORE_V	3174	7	0
// OP_CALL2	448	0	0
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
    missile.velocity_z = (missile.velocity_z + 250.000) + (50.000 * random());
    missile.avelocity = '3000.000 1000.000 2000.000';
    missile.nextthink = time + TRUE;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/zom_gib.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, org);
};

// SpawnBlood
// function begins at statement 4108, parm_start=3206
// OP_STORE_V	3206	4	0
// OP_MUL_VF	3209	993	3213
// OP_STORE_V	3213	7	0
// OP_STORE_V	3216	10	0
// OP_MUL_F	3212	216	3217
// OP_STORE_V	3217	13	0
// OP_CALL4	490	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float damage) SpawnBlood = 
{
    particle(org, vel * 0.100, 73.000, damage * FL_SWIM);
};

// spawn_touchblood
// function begins at statement 4116, parm_start=3219
// OP_CALL0	3143	0	0
// OP_MUL_VF	1	1226	3223
// OP_STORE_V	3223	3220	0
// OP_LOAD_V	28	105	3226
// OP_MUL_VF	3220	3229	3230
// OP_ADD_V	3226	3230	3233
// OP_STORE_V	3233	4	0
// OP_STORE_V	3220	7	0
// OP_STORE_V	3219	10	0
// OP_CALL3	3087	0	0
// OP_DONE	0	0	0
void (float damage) spawn_touchblood = 
{
    local vector vel;
    vel = wall_velocity() * 0.200;
    SpawnBlood(self.origin + (vel * 0.010), vel, damage);
};

// SpawnChunk
// function begins at statement 4127, parm_start=3237
// OP_STORE_V	3237	4	0
// OP_MUL_VF	3240	3243	3244
// OP_STORE_V	3244	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	235	13	0
// OP_CALL4	490	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnChunk = 
{
    particle(org, vel * 0.020, FALSE, MOVETYPE_BOUNCE);
};

entity multi_ent;
float multi_damage;
// ClearMultiDamage
// function begins at statement 4134, parm_start=3250
// OP_STORE_ENT	30	3247	0
// OP_STORE_F	213	3248	0
// OP_DONE	0	0	0
void () ClearMultiDamage = 
{
    multi_ent = world;
    multi_damage = FALSE;
};

// ApplyMultiDamage
// function begins at statement 4137, parm_start=3251
// OP_NOT_ENT	3247	0	3251
// OP_IFNOT	3251	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	3247	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	3248	13	0
// OP_CALL4	520	0	0
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
// function begins at statement 4146, parm_start=3253
// OP_NOT_ENT	3253	0	3255
// OP_IFNOT	3255	2	0
// OP_RETURN	0	0	0
// OP_NE_E	3253	3247	3256
// OP_IFNOT	3256	5	0
// OP_CALL0	3250	0	0
// OP_STORE_F	3254	3248	0
// OP_STORE_ENT	3253	3247	0
// OP_GOTO	3	0	0
// OP_ADD_F	3248	3254	3257
// OP_STORE_F	3257	3248	0
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
// function begins at statement 4158, parm_start=3259
// OP_CALL0	3103	0	0
// OP_MUL_VF	62	1	3269
// OP_ADD_V	3260	3269	3272
// OP_CALL0	3103	0	0
// OP_MUL_VF	65	1	3275
// OP_ADD_V	3272	3275	3278
// OP_STORE_V	3278	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	3263	0
// OP_MUL_FV	216	74	3281
// OP_ADD_V	3263	3281	3284
// OP_STORE_V	3284	3263	0
// OP_MUL_VF	3263	2356	3287
// OP_STORE_V	3287	3263	0
// OP_MUL_VF	3260	229	3290
// OP_SUB_V	71	3290	3293
// OP_STORE_V	3293	3266	0
// OP_LOAD_F	78	163	3296
// OP_IFNOT	3296	10	0
// OP_STORE_V	3266	4	0
// OP_MUL_VF	3263	1226	3297
// OP_STORE_V	3297	7	0
// OP_STORE_V	3259	10	0
// OP_CALL3	3087	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3259	7	0
// OP_CALL2	3252	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3266	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3267	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3268	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void (float damage, vector dir) TraceAttack = 
{
    local vector vel;
    local vector org;
    vel = normalize((dir + (v_up * crandom())) + (v_right * crandom()));
    vel = vel + (FL_SWIM * trace_plane_normal);
    vel = vel * 200.000;
    org = trace_endpos - (dir * MOVETYPE_STEP);
    if(trace_ent.takedamage)
    {
        SpawnBlood(org, vel * 0.200, damage);
        AddMultiDamage(trace_ent, damage);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, 0.000);
        WriteCoord(MSG_BROADCAST, 0.000);
    }
    
};

// FireBullets
// function begins at statement 4202, parm_start=3301
// OP_LOAD_V	28	175	3314
// OP_STORE_V	3314	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	3317
// OP_MUL_VF	59	235	3320
// OP_ADD_V	3317	3320	3323
// OP_STORE_V	3323	3311	0
// OP_LOAD_F	28	97	3326
// OP_LOAD_F	28	145	3327
// OP_MUL_F	3327	3328	3329
// OP_ADD_F	3326	3329	3330
// OP_STORE_F	3330	3313	0
// OP_CALL0	3249	0	0
// OP_GT	3301	213	3331
// OP_IFNOT	3331	25	0
// OP_CALL0	3103	0	0
// OP_MUL_F	1	3305	3332
// OP_MUL_FV	3332	65	3333
// OP_ADD_V	3302	3333	3336
// OP_CALL0	3103	0	0
// OP_MUL_F	1	3306	3339
// OP_MUL_FV	3339	62	3340
// OP_ADD_V	3336	3340	3343
// OP_STORE_V	3343	3308	0
// OP_STORE_V	3311	4	0
// OP_MUL_VF	3308	225	3346
// OP_ADD_V	3311	3346	3349
// OP_STORE_V	3349	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	214	3352
// OP_IFNOT	3352	4	0
// OP_STORE_V	229	4	0
// OP_STORE_V	3308	7	0
// OP_CALL2	3258	0	0
// OP_SUB_F	3301	214	3353
// OP_STORE_F	3353	3301	0
// OP_GOTO	-25	0	0
// OP_CALL0	3250	0	0
// OP_DONE	0	0	0
void (float shotcount, vector dir, vector spread) FireBullets = 
{
    local vector direction;
    local vector src;
    makevectors(self.v_angle);
    src = self.origin + (v_forward * MOVETYPE_BOUNCE);
    src_z = self.absmin_z + (self.size_z * 0.700);
    ClearMultiDamage();
    
    while(shotcount > FALSE)
    {
        direction = (dir + ((crandom() * spread_x) * v_right)) + ((crandom() * 0.000) * v_up);
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
// function begins at statement 4243, parm_start=3355
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3094	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	3358
// OP_STOREP_F	277	3358	0
// OP_ADDRESS	28	157	3359
// OP_ADDRESS	28	158	3360
// OP_LOAD_F	28	158	3361
// OP_SUB_F	3361	214	3362
// OP_STOREP_F	3362	3360	0
// OP_STOREP_F	3362	3359	0
// OP_LOAD_S	28	129	3363
// OP_EQ_S	3363	2056	3364
// OP_IFNOT	3364	4	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3355	0
// OP_GOTO	5	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3365	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	3355	0
// OP_STORE_V	231	4	0
// OP_STORE_V	3355	7	0
// OP_STORE_V	3366	10	0
// OP_CALL3	3300	0	0
// OP_DONE	0	0	0
void () W_FireShotgun = 
{
    local vector dir;
    sound(self, CHAN_WEAPON, "weapons/guncock.wav", TRUE, ATTN_NORM);
    self.punchangle_x = CONTENT_SOLID;
    self.ammo_shells = self.ammo_shells - TRUE;
    self.currentammo = self.ammo_shells - TRUE;
    if(self.classname == "dmbot")
    {
        dir = botaim();
    }
    else
    {
        dir = aim(self, 100000.000);
    }
    
    FireBullets(MOVETYPE_TOSS, dir, '0.040 0.040 0.000');
};

// W_FireSuperShotgun
// function begins at statement 4272, parm_start=3370
// OP_LOAD_F	28	157	3373
// OP_EQ_F	3373	214	3374
// OP_IFNOT	3374	3	0
// OP_CALL0	3354	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3102	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	3375
// OP_STOREP_F	279	3375	0
// OP_ADDRESS	28	157	3376
// OP_ADDRESS	28	158	3377
// OP_LOAD_F	28	158	3378
// OP_SUB_F	3378	216	3379
// OP_STOREP_F	3379	3377	0
// OP_STOREP_F	3379	3376	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3365	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	3370	0
// OP_LOAD_S	28	129	3380
// OP_EQ_S	3380	2056	3381
// OP_IFNOT	3381	3	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3370	0
// OP_STORE_V	3382	4	0
// OP_STORE_V	3370	7	0
// OP_STORE_V	3383	10	0
// OP_CALL3	3300	0	0
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
    self.punchangle_x = CONTENT_SLIME;
    self.ammo_shells = self.ammo_shells - FL_SWIM;
    self.currentammo = self.ammo_shells - FL_SWIM;
    dir = aim(self, 100000.000);
    
    if(self.classname == "dmbot")
    {
        dir = botaim();
    }
    
    FireBullets(14.000, dir, '0.140 0.080 0.000');
};

// s_explode1
// function begins at statement 4305, parm_start=3387
// OP_STATE	213	3387	0
// OP_DONE	0	0	0
void () s_explode1 = [0.000, s_explode2]
{
};

// s_explode2
// function begins at statement 4307, parm_start=3388
// OP_STATE	214	3388	0
// OP_DONE	0	0	0
void () s_explode2 = [1.000, s_explode3]
{
};

// s_explode3
// function begins at statement 4309, parm_start=3389
// OP_STATE	216	3389	0
// OP_DONE	0	0	0
void () s_explode3 = [2.000, s_explode4]
{
};

// s_explode4
// function begins at statement 4311, parm_start=3390
// OP_STATE	228	3390	0
// OP_DONE	0	0	0
void () s_explode4 = [3.000, s_explode5]
{
};

// s_explode5
// function begins at statement 4313, parm_start=3391
// OP_STATE	229	3391	0
// OP_DONE	0	0	0
void () s_explode5 = [4.000, s_explode6]
{
};

// s_explode6
// function begins at statement 4315, parm_start=3392
// OP_STATE	230	519	0
// OP_DONE	0	0	0
void () s_explode6 = [5.000, SUB_Remove]
{
};

// BecomeExplosion
// function begins at statement 4317, parm_start=3393
// OP_ADDRESS	28	103	3393
// OP_STOREP_F	227	3393	0
// OP_ADDRESS	28	113	3394
// OP_STOREP_V	286	3394	0
// OP_ADDRESS	28	146	3397
// OP_STOREP_FNC	517	3397	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3398	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	104	3399
// OP_STOREP_F	237	3399	0
// OP_CALL0	3386	0	0
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
// function begins at statement 4330, parm_start=3400
// OP_LOAD_ENT	28	201	3401
// OP_EQ_E	29	3401	3402
// OP_IFNOT	3402	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3403
// OP_STORE_V	3403	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	3406
// OP_IFNOT	3406	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	576	3407
// OP_ADD_F	574	3407	3408
// OP_STORE_F	3408	3400	0
// OP_LOAD_F	29	152	3409
// OP_IFNOT	3409	12	0
// OP_LOAD_S	29	129	3410
// OP_EQ_S	3410	1623	3411
// OP_IFNOT	3411	3	0
// OP_MUL_F	3400	677	3412
// OP_STORE_F	3412	3400	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	3413
// OP_STORE_V	3413	10	0
// OP_STORE_V	3400	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	3414
// OP_STORE_V	3414	7	0
// OP_STORE_V	746	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	2088	0	0
// OP_ADDRESS	28	105	3415
// OP_LOAD_V	28	105	3418
// OP_LOAD_V	28	113	3421
// OP_STORE_V	3421	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	217	1	3424
// OP_SUB_V	3418	3424	3427
// OP_STOREP_V	3427	3415	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	106	3430
// OP_STORE_V	3430	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	107	3431
// OP_STORE_V	3431	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	108	3432
// OP_STORE_V	3432	7	0
// OP_CALL2	497	0	0
// OP_CALL0	3392	0	0
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
    
    damg = MUST_HAVE + (random() * KINDA_WANT);
    
    if(other.health)
    {
        
        if(other.classname == "monster_shambler")
        {
            damg = damg * 0.500;
        }
        
        T_Damage(other, self, self.owner, damg);
    }
    
    T_RadiusDamage(self, self.owner, 120.000, other);
    self.origin = self.origin - (FL_CLIENT * normalize(self.velocity));
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// W_FireRocket
// function begins at statement 4393, parm_start=3434
// OP_ADDRESS	28	157	3439
// OP_ADDRESS	28	160	3440
// OP_LOAD_F	28	160	3441
// OP_SUB_F	3441	214	3442
// OP_STOREP_F	3442	3440	0
// OP_STOREP_F	3442	3439	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3093	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	3443
// OP_STOREP_F	277	3443	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	3434	0
// OP_ADDRESS	3434	201	3444
// OP_STOREP_ENT	28	3444	0
// OP_ADDRESS	3434	103	3445
// OP_STOREP_F	234	3445	0
// OP_ADDRESS	3434	104	3446
// OP_STOREP_F	239	3446	0
// OP_LOAD_V	28	175	3447
// OP_STORE_V	3447	4	0
// OP_CALL1	447	0	0
// OP_LOAD_S	28	129	3450
// OP_EQ_S	3450	2056	3451
// OP_IFNOT	3451	8	0
// OP_ADDRESS	3434	113	3452
// OP_CALL0	3089	0	0
// OP_STOREP_V	1	3452	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3436	0
// OP_STORE_F	213	3438	0
// OP_GOTO	6	0	0
// OP_ADDRESS	3434	113	3455
// OP_STORE_V	28	4	0
// OP_STORE_V	1548	7	0
// OP_CALL2	486	0	0
// OP_STOREP_V	1	3455	0
// OP_ADDRESS	3434	113	3458
// OP_LOAD_V	3434	113	3461
// OP_MUL_VF	3461	1548	3464
// OP_STOREP_V	3464	3458	0
// OP_ADDRESS	3434	117	3467
// OP_LOAD_V	3434	113	3470
// OP_STORE_V	3470	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	3467	0
// OP_ADDRESS	3434	146	3473
// OP_STOREP_FNC	1847	3473	0
// OP_ADDRESS	3434	150	3474
// OP_ADD_F	31	230	3475
// OP_STOREP_F	3475	3474	0
// OP_ADDRESS	3434	148	3476
// OP_STOREP_FNC	519	3476	0
// OP_STORE_V	3434	4	0
// OP_STORE_V	3477	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3434	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_S	28	129	3478
// OP_EQ_S	3478	2056	3479
// OP_IFNOT	3479	9	0
// OP_STORE_V	3434	4	0
// OP_LOAD_V	28	105	3480
// OP_MUL_VF	3436	217	3483
// OP_ADD_V	3480	3483	3486
// OP_ADD_V	3486	3119	3489
// OP_STORE_V	3489	7	0
// OP_CALL2	448	0	0
// OP_GOTO	8	0	0
// OP_STORE_V	3434	4	0
// OP_LOAD_V	28	105	3492
// OP_MUL_VF	59	217	3495
// OP_ADD_V	3492	3495	3498
// OP_ADD_V	3498	3119	3501
// OP_STORE_V	3501	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () W_FireRocket = 
{
    local entity missile;
    local entity mpuff;
    local vector bfwd;
    self.ammo_rockets = self.ammo_rockets - TRUE;
    self.currentammo = self.ammo_rockets - TRUE;
    sound(self, CHAN_WEAPON, "weapons/sgun1.wav", TRUE, ATTN_NORM);
    self.punchangle_x = CONTENT_SOLID;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_FLYMISSILE;
    missile.solid = SOLID_BBOX;
    makevectors(self.v_angle);
    if(self.classname == "dmbot")
    {
        missile.velocity = botaim();
        bfwd = botaim();
        bfwd_z = FALSE;
    }
    else
    {
        missile.velocity = aim(self, 1000.000);
    }
    
    missile.velocity = missile.velocity * 1000.000;
    missile.angles = vectoangles(missile.velocity);
    missile.touch = T_MissileTouch;
    missile.nextthink = time + MOVETYPE_FLY;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/missile.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    if(self.classname == "dmbot")
    {
        setorigin(missile, (self.origin + (bfwd * FL_CLIENT)) + '0.000 0.000 16.000');
    }
    else
    {
        setorigin(missile, (self.origin + (v_forward * FL_CLIENT)) + '0.000 0.000 16.000');
    }
    
};

// LightningDamage
// function begins at statement 4475, parm_start=3505
// OP_SUB_V	3508	3505	3518
// OP_STORE_V	3518	3515	0
// OP_STORE_V	3515	4	0
// OP_CALL1	454	0	0
// OP_SUB_F	213	3516	3521
// OP_STORE_F	3521	3515	0
// OP_STORE_F	3515	3516	0
// OP_STORE_F	213	3517	0
// OP_MUL_VF	3515	218	3522
// OP_STORE_V	3522	3515	0
// OP_STORE_ENT	30	3514	0
// OP_STORE_ENT	30	3513	0
// OP_STORE_V	3505	4	0
// OP_STORE_V	3508	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LOAD_F	78	163	3525
// OP_IFNOT	3525	28	0
// OP_STORE_V	71	4	0
// OP_STORE_V	3526	7	0
// OP_STORE_V	3529	10	0
// OP_MUL_F	3512	229	3530
// OP_STORE_V	3530	13	0
// OP_CALL4	490	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3511	7	0
// OP_STORE_V	3511	10	0
// OP_STORE_V	3512	13	0
// OP_CALL4	520	0	0
// OP_LOAD_S	28	129	3531
// OP_EQ_S	3531	1102	3532
// OP_LOAD_S	28	129	3533
// OP_EQ_S	3533	2056	3534
// OP_OR	3532	3534	3535
// OP_IFNOT	3535	11	0
// OP_LOAD_S	29	129	3536
// OP_EQ_S	3536	1102	3537
// OP_LOAD_S	29	129	3538
// OP_EQ_S	3538	2056	3539
// OP_OR	3537	3539	3540
// OP_IFNOT	3540	5	0
// OP_ADDRESS	78	116	3541
// OP_LOAD_F	78	116	3542
// OP_ADD_F	3542	3543	3544
// OP_STOREP_F	3544	3541	0
// OP_STORE_ENT	78	3513	0
// OP_ADD_V	3505	3515	3545
// OP_STORE_V	3545	4	0
// OP_ADD_V	3508	3515	3548
// OP_STORE_V	3548	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	3513	3551
// OP_LOAD_F	78	163	3552
// OP_AND	3551	3552	3553
// OP_IFNOT	3553	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	3526	7	0
// OP_STORE_V	3529	10	0
// OP_MUL_F	3512	229	3554
// OP_STORE_V	3554	13	0
// OP_CALL4	490	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3511	7	0
// OP_STORE_V	3511	10	0
// OP_STORE_V	3512	13	0
// OP_CALL4	520	0	0
// OP_STORE_ENT	78	3514	0
// OP_SUB_V	3505	3515	3555
// OP_STORE_V	3555	4	0
// OP_SUB_V	3508	3515	3558
// OP_STORE_V	3558	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	3513	3561
// OP_NE_E	78	3514	3562
// OP_AND	3561	3562	3563
// OP_LOAD_F	78	163	3564
// OP_AND	3563	3564	3565
// OP_IFNOT	3565	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	3526	7	0
// OP_STORE_V	3529	10	0
// OP_MUL_F	3512	229	3566
// OP_STORE_V	3566	13	0
// OP_CALL4	490	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3511	7	0
// OP_STORE_V	3511	10	0
// OP_STORE_V	3512	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
void (vector p1, vector p2, entity from, float damage) LightningDamage = 
{
    local entity e1;
    local entity e2;
    local vector f;
    f = p2 - p1;
    normalize(f);
    f_x = FALSE - 0.000;
    f_y = f_x;
    f_z = FALSE;
    f = f * FL_INWATER;
    e2 = world;
    e1 = world;
    traceline(p1, p2, FALSE, self);
    
    if(trace_ent.takedamage)
    {
        particle(trace_endpos, '0.000 0.000 100.000', 225.000, damage * MOVETYPE_STEP);
        T_Damage(trace_ent, from, from, damage);
        
        if((self.classname == "player") || (self.classname == "dmbot"))
        {
            
            if((other.classname == "player") || (other.classname == "dmbot"))
            {
                trace_ent.velocity_z = trace_ent.velocity_z + 400.000;
            }
            
        }
        
    }
    
    e1 = trace_ent;
    traceline(p1 + f, p2 + f, FALSE, self);
    
    if((trace_ent != e1) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0.000 0.000 100.000', 225.000, damage * MOVETYPE_STEP);
        T_Damage(trace_ent, from, from, damage);
    }
    
    e2 = trace_ent;
    traceline(p1 - f, p2 - f, FALSE, self);
    
    if(((trace_ent != e1) && (trace_ent != e2)) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0.000 0.000 100.000', 225.000, damage * MOVETYPE_STEP);
        T_Damage(trace_ent, from, from, damage);
    }
    
};

float () CheckWaterLevel;
// W_FireLightning
// function begins at statement 4570, parm_start=3569
// OP_LOAD_F	28	161	3576
// OP_LT	3576	214	3577
// OP_IFNOT	3577	12	0
// OP_ADDRESS	28	154	3578
// OP_CALL0	2446	0	0
// OP_STOREP_F	1	3578	0
// OP_CALL0	2169	0	0
// OP_LOAD_S	28	129	3579
// OP_EQ_S	3579	2056	3580
// OP_IFNOT	3580	4	0
// OP_ADDRESS	28	148	3581
// OP_LOAD_FNC	28	358	3582
// OP_STOREP_FNC	3582	3581	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	3583
// OP_EQ_S	3583	2056	3584
// OP_IFNOT	3584	17	0
// OP_CALL0	3567	0	0
// OP_STORE_F	1	3575	0
// OP_GT	3575	214	3585
// OP_IFNOT	3585	12	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_F	28	161	3586
// OP_MUL_F	575	3586	3587
// OP_STORE_V	3587	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2088	0	0
// OP_ADDRESS	28	161	3588
// OP_STOREP_F	213	3588	0
// OP_CALL0	2169	0	0
// OP_RETURN	0	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	189	3589
// OP_GT	3589	214	3590
// OP_IFNOT	3590	12	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_F	28	161	3591
// OP_MUL_F	575	3591	3592
// OP_STORE_V	3592	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2088	0	0
// OP_ADDRESS	28	161	3593
// OP_STOREP_F	213	3593	0
// OP_CALL0	2169	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	400	3594
// OP_LT	3594	31	3595
// OP_IFNOT	3595	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3596	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	400	3597
// OP_ADD_F	31	2345	3598
// OP_STOREP_F	3598	3597	0
// OP_ADDRESS	28	126	3599
// OP_STOREP_F	277	3599	0
// OP_ADDRESS	28	157	3600
// OP_ADDRESS	28	161	3601
// OP_LOAD_F	28	161	3602
// OP_SUB_F	3602	214	3603
// OP_STOREP_F	3603	3601	0
// OP_STOREP_F	3603	3600	0
// OP_LOAD_V	28	105	3604
// OP_ADD_V	3604	3119	3607
// OP_STORE_V	3607	3572	0
// OP_STORE_V	59	3569	0
// OP_LOAD_S	28	129	3610
// OP_EQ_S	3610	2056	3611
// OP_IFNOT	3611	3	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3569	0
// OP_STORE_V	3572	4	0
// OP_MUL_VF	3569	580	3612
// OP_ADD_V	3572	3612	3615
// OP_STORE_V	3615	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	314	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3572	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3573	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3574	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	497	0	0
// OP_LOAD_V	28	105	3618
// OP_STORE_V	3618	4	0
// OP_MUL_VF	3569	229	3621
// OP_ADD_V	71	3621	3624
// OP_STORE_V	3624	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	304	13	0
// OP_CALL4	3504	0	0
// OP_DONE	0	0	0
void () W_FireLightning = 
{
    local vector dir;
    local vector org;
    local float wlevel;
    
    if(self.ammo_cells < TRUE)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        
        if(self.classname == "dmbot")
        {
            self.think = self.th_run;
        }
        
        return;
    }
    
    if(self.classname == "dmbot")
    {
        wlevel = CheckWaterLevel();
        
        if(wlevel > TRUE)
        {
            T_RadiusDamage(self, self, WANT * self.ammo_cells, world);
            self.ammo_cells = FALSE;
            W_SetCurrentAmmo();
            return;
        }
        
    }
    else
    {
        
        if(self.waterlevel > TRUE)
        {
            T_RadiusDamage(self, self, WANT * self.ammo_cells, world);
            self.ammo_cells = FALSE;
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
    
    if(self.t_width < time)
    {
        sound(self, CHAN_WEAPON, "weapons/lhit.wav", TRUE, ATTN_NORM);
        self.t_width = time + 0.600;
    }
    
    self.punchangle_x = CONTENT_SOLID;
    self.ammo_cells = self.ammo_cells - TRUE;
    self.currentammo = self.ammo_cells - TRUE;
    org = self.origin + '0.000 0.000 16.000';
    dir = v_forward;
    
    if(self.classname == "dmbot")
    {
        dir = botaim();
    }
    
    traceline(org, org + (dir * SEARCH_RADIUS), TRUE, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING2);
    WriteEntity(MSG_BROADCAST, self);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, 0.000);
    WriteCoord(MSG_BROADCAST, 0.000);
    WriteCoord(MSG_BROADCAST, trace_endpos_x);
    WriteCoord(MSG_BROADCAST, 0.000);
    WriteCoord(MSG_BROADCAST, 0.000);
    LightningDamage(self.origin, trace_endpos + (dir * MOVETYPE_STEP), self, SVC_INTERMISSION);
};

// GrenadeExplode
// function begins at statement 4689, parm_start=3628
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	3628
// OP_STORE_V	3628	7	0
// OP_STORE_V	746	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2088	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	106	3629
// OP_STORE_V	3629	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	107	3630
// OP_STORE_V	3630	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	108	3631
// OP_STORE_V	3631	7	0
// OP_CALL2	497	0	0
// OP_CALL0	3392	0	0
// OP_DONE	0	0	0
void () GrenadeExplode = 
{
    T_RadiusDamage(self, self.owner, 120.000, world);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// GrenadeTouch
// function begins at statement 4715, parm_start=3633
// OP_LOAD_ENT	28	201	3633
// OP_EQ_E	29	3633	3634
// OP_IFNOT	3634	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3635
// OP_EQ_F	3635	252	3636
// OP_IFNOT	3636	3	0
// OP_CALL0	3627	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3101	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	113	3637
// OP_EQ_V	3637	286	3640
// OP_IFNOT	3640	3	0
// OP_ADDRESS	28	121	3641
// OP_STOREP_V	286	3641	0
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
// function begins at statement 4736, parm_start=3645
// OP_ADDRESS	28	157	3647
// OP_ADDRESS	28	160	3648
// OP_LOAD_F	28	160	3649
// OP_SUB_F	3649	214	3650
// OP_STOREP_F	3650	3648	0
// OP_STOREP_F	3650	3647	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3100	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	3651
// OP_STOREP_F	277	3651	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	3645	0
// OP_ADDRESS	3645	201	3652
// OP_STOREP_ENT	28	3652	0
// OP_ADDRESS	3645	103	3653
// OP_STOREP_F	235	3653	0
// OP_ADDRESS	3645	104	3654
// OP_STOREP_F	239	3654	0
// OP_ADDRESS	3645	129	3655
// OP_STOREP_S	3656	3655	0
// OP_LOAD_V	28	175	3657
// OP_STORE_V	3657	4	0
// OP_CALL1	447	0	0
// OP_LOAD_F	28	176	3660
// OP_IFNOT	3660	15	0
// OP_ADDRESS	3645	113	3661
// OP_MUL_VF	59	580	3664
// OP_MUL_VF	62	2356	3667
// OP_ADD_V	3664	3667	3670
// OP_CALL0	3103	0	0
// OP_MUL_FV	1	65	3673
// OP_MUL_VF	3673	235	3676
// OP_ADD_V	3670	3676	3679
// OP_CALL0	3103	0	0
// OP_MUL_FV	1	62	3682
// OP_MUL_VF	3682	235	3685
// OP_ADD_V	3679	3685	3688
// OP_STOREP_V	3688	3661	0
// OP_GOTO	27	0	0
// OP_LOAD_S	28	129	3691
// OP_EQ_S	3691	2056	3692
// OP_IFNOT	3692	13	0
// OP_ADDRESS	3645	113	3693
// OP_CALL0	3089	0	0
// OP_STOREP_V	1	3693	0
// OP_ADDRESS	3645	113	3696
// OP_LOAD_V	3645	113	3699
// OP_MUL_VF	3699	580	3702
// OP_STOREP_V	3702	3696	0
// OP_ADDRESS	3645	116	3705
// OP_LOAD_F	3645	116	3706
// OP_ADD_F	3706	2356	3707
// OP_STOREP_F	3707	3705	0
// OP_GOTO	12	0	0
// OP_ADDRESS	3645	113	3708
// OP_STORE_V	28	4	0
// OP_STORE_V	3711	7	0
// OP_CALL2	486	0	0
// OP_STOREP_V	1	3708	0
// OP_ADDRESS	3645	113	3712
// OP_LOAD_V	3645	113	3715
// OP_MUL_VF	3715	580	3718
// OP_STOREP_V	3718	3712	0
// OP_ADDRESS	3645	116	3721
// OP_STOREP_F	2356	3721	0
// OP_ADDRESS	3645	121	3722
// OP_STOREP_V	3725	3722	0
// OP_ADDRESS	3645	117	3728
// OP_LOAD_V	3645	113	3731
// OP_STORE_V	3731	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	3728	0
// OP_ADDRESS	3645	146	3734
// OP_STOREP_FNC	3632	3734	0
// OP_ADDRESS	3645	150	3735
// OP_ADD_F	31	3736	3737
// OP_STOREP_F	3737	3735	0
// OP_ADDRESS	3645	148	3738
// OP_STOREP_FNC	3627	3738	0
// OP_STORE_V	3645	4	0
// OP_STORE_V	3739	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3645	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	3645	4	0
// OP_LOAD_V	28	105	3740
// OP_STORE_V	3740	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () W_FireGrenade = 
{
    local entity missile;
    local entity mpuff;
    self.ammo_rockets = self.ammo_rockets - TRUE;
    self.currentammo = self.ammo_rockets - TRUE;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", TRUE, ATTN_NORM);
    self.punchangle_x = CONTENT_SOLID;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "grenade";
    makevectors(self.v_angle);
    if(self.v_angle_x)
    {
        missile.velocity = (((v_forward * SEARCH_RADIUS) + (v_up * 200.000)) + ((crandom() * v_right) * MOVETYPE_BOUNCE)) + ((crandom() * v_up) * MOVETYPE_BOUNCE);
    }
    else
    {
        if(self.classname == "dmbot")
        {
            missile.velocity = botaim();
            missile.velocity = missile.velocity * SEARCH_RADIUS;
            missile.velocity_z = missile.velocity_z + 200.000;
        }
        else
        {
            missile.velocity = aim(self, 10000.000);
            missile.velocity = missile.velocity * SEARCH_RADIUS;
            missile.velocity_z = 200.000;
        }
        
    }
    
    missile.avelocity = '300.000 300.000 300.000';
    missile.angles = vectoangles(missile.velocity);
    missile.touch = GrenadeTouch;
    missile.nextthink = time + 2.500;
    missile.think = GrenadeExplode;
    setmodel(missile, "progs/grenade.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, self.origin);
};

void () spike_touch;
void () superspike_touch;
// launch_spike
// function begins at statement 4831, parm_start=3746
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	345	0
// OP_ADDRESS	345	201	3752
// OP_STOREP_ENT	28	3752	0
// OP_ADDRESS	345	103	3753
// OP_STOREP_F	234	3753	0
// OP_ADDRESS	345	104	3754
// OP_STOREP_F	239	3754	0
// OP_ADDRESS	345	117	3755
// OP_STORE_V	3749	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	3755	0
// OP_ADDRESS	345	146	3758
// OP_STOREP_FNC	3743	3758	0
// OP_ADDRESS	345	129	3759
// OP_STOREP_S	3760	3759	0
// OP_ADDRESS	345	148	3761
// OP_STOREP_FNC	519	3761	0
// OP_ADDRESS	345	150	3762
// OP_ADD_F	31	231	3763
// OP_STOREP_F	3763	3762	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3764	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3746	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	345	113	3765
// OP_MUL_VF	3749	1548	3768
// OP_STOREP_V	3768	3765	0
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
    newmis.velocity = dir * 1000.000;
};

// W_FireSuperSpikes
// function begins at statement 4866, parm_start=3772
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3098	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	373	3776
// OP_ADD_F	31	1226	3777
// OP_STOREP_F	3777	3776	0
// OP_ADDRESS	28	157	3778
// OP_ADDRESS	28	159	3779
// OP_LOAD_F	28	159	3780
// OP_SUB_F	3780	216	3781
// OP_STOREP_F	3781	3779	0
// OP_STOREP_F	3781	3778	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1548	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	3772	0
// OP_LOAD_S	28	129	3782
// OP_EQ_S	3782	2056	3783
// OP_IFNOT	3783	3	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3772	0
// OP_LOAD_V	28	105	3784
// OP_ADD_V	3784	3119	3787
// OP_STORE_V	3787	4	0
// OP_STORE_V	3772	7	0
// OP_CALL2	3745	0	0
// OP_ADDRESS	345	146	3790
// OP_STOREP_FNC	3744	3790	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3791	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	126	3792
// OP_STOREP_F	277	3792	0
// OP_DONE	0	0	0
void () W_FireSuperSpikes = 
{
    local vector dir;
    local entity old;
    sound(self, CHAN_WEAPON, "weapons/spike2.wav", TRUE, ATTN_NORM);
    self.attack_finished = time + 0.200;
    self.ammo_nails = self.ammo_nails - FL_SWIM;
    self.currentammo = self.ammo_nails - FL_SWIM;
    dir = aim(self, 1000.000);
    
    if(self.classname == "dmbot")
    {
        dir = botaim();
    }
    
    launch_spike(self.origin + '0.000 0.000 16.000', dir);
    newmis.touch = superspike_touch;
    setmodel(newmis, "progs/s_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    self.punchangle_x = CONTENT_SOLID;
};

// W_FireSpikes
// function begins at statement 4907, parm_start=3794
// OP_LOAD_V	28	175	3799
// OP_STORE_V	3799	4	0
// OP_CALL1	447	0	0
// OP_LOAD_F	28	159	3802
// OP_GE	3802	216	3803
// OP_LOAD_F	28	154	3804
// OP_EQ_F	3804	257	3805
// OP_AND	3803	3805	3806
// OP_IFNOT	3806	3	0
// OP_CALL0	3771	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	159	3807
// OP_LT	3807	214	3808
// OP_IFNOT	3808	12	0
// OP_ADDRESS	28	154	3809
// OP_CALL0	2446	0	0
// OP_STOREP_F	1	3809	0
// OP_CALL0	2169	0	0
// OP_LOAD_S	28	129	3810
// OP_EQ_S	3810	2056	3811
// OP_IFNOT	3811	4	0
// OP_ADDRESS	28	148	3812
// OP_LOAD_FNC	28	358	3813
// OP_STOREP_FNC	3813	3812	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3092	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	373	3814
// OP_ADD_F	31	1226	3815
// OP_STOREP_F	3815	3814	0
// OP_ADDRESS	28	157	3816
// OP_ADDRESS	28	159	3817
// OP_LOAD_F	28	159	3818
// OP_SUB_F	3818	214	3819
// OP_STOREP_F	3819	3817	0
// OP_STOREP_F	3819	3816	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1548	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	3795	0
// OP_LOAD_S	28	129	3820
// OP_EQ_S	3820	2056	3821
// OP_IFNOT	3821	3	0
// OP_CALL0	3089	0	0
// OP_STORE_V	1	3795	0
// OP_LOAD_V	28	105	3822
// OP_ADD_V	3822	3119	3825
// OP_MUL_VF	65	3794	3828
// OP_ADD_V	3825	3828	3831
// OP_STORE_V	3831	4	0
// OP_STORE_V	3795	7	0
// OP_CALL2	3745	0	0
// OP_ADDRESS	28	126	3834
// OP_STOREP_F	277	3834	0
// OP_DONE	0	0	0
void (float ox) W_FireSpikes = 
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
        
        if(self.classname == "dmbot")
        {
            self.think = self.th_run;
        }
        
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/rocket1i.wav", TRUE, ATTN_NORM);
    self.attack_finished = time + 0.200;
    self.ammo_nails = self.ammo_nails - TRUE;
    self.currentammo = self.ammo_nails - TRUE;
    dir = aim(self, 1000.000);
    
    if(self.classname == "dmbot")
    {
        dir = botaim();
    }
    
    launch_spike((self.origin + '0.000 0.000 16.000') + (v_right * ox), dir);
    self.punchangle_x = CONTENT_SOLID;
};

// spike_touch
// function begins at statement 4966, parm_start=3836
// OP_LOAD_ENT	28	201	3837
// OP_EQ_E	29	3837	3838
// OP_IFNOT	3838	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	3839
// OP_EQ_F	3839	238	3840
// OP_IFNOT	3840	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3841
// OP_STORE_V	3841	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	3844
// OP_IFNOT	3844	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3845
// OP_IFNOT	3845	10	0
// OP_STORE_V	234	4	0
// OP_CALL1	3218	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	3846
// OP_STORE_V	3846	10	0
// OP_STORE_V	234	13	0
// OP_CALL4	520	0	0
// OP_GOTO	33	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_LOAD_S	28	129	3847
// OP_EQ_S	3847	3848	3849
// OP_IFNOT	3849	5	0
// OP_STORE_V	337	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	493	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	28	129	3850
// OP_EQ_S	3850	3851	3852
// OP_IFNOT	3852	5	0
// OP_STORE_V	337	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	493	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	308	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	106	3853
// OP_STORE_V	3853	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	107	3854
// OP_STORE_V	3854	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	108	3855
// OP_STORE_V	3855	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
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
// function begins at statement 5028, parm_start=3856
// OP_LOAD_ENT	28	201	3857
// OP_EQ_E	29	3857	3858
// OP_IFNOT	3858	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	3859
// OP_EQ_F	3859	238	3860
// OP_IFNOT	3860	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3861
// OP_STORE_V	3861	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	3864
// OP_IFNOT	3864	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3865
// OP_IFNOT	3865	10	0
// OP_STORE_V	3866	4	0
// OP_CALL1	3218	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	3867
// OP_STORE_V	3867	10	0
// OP_STORE_V	3866	13	0
// OP_CALL4	520	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	309	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	106	3868
// OP_STORE_V	3868	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	107	3869
// OP_STORE_V	3869	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	108	3870
// OP_STORE_V	3870	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
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
        spawn_touchblood(18.000);
        T_Damage(other, self, self.owner, 18.000);
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
// function begins at statement 5076, parm_start=3871
// OP_LOAD_S	28	129	3871
// OP_EQ_S	3871	1102	3872
// OP_IFNOT	3872	2	0
// OP_CALL0	3086	0	0
// OP_ADDRESS	28	162	3873
// OP_LOAD_F	28	162	3874
// OP_LOAD_F	28	162	3875
// OP_BITOR	262	263	3876
// OP_BITOR	3876	264	3877
// OP_BITOR	3877	265	3878
// OP_BITAND	3875	3878	3879
// OP_SUB_F	3874	3879	3880
// OP_STOREP_F	3880	3873	0
// OP_LOAD_F	28	154	3881
// OP_EQ_F	3881	253	3882
// OP_IFNOT	3882	8	0
// OP_ADDRESS	28	157	3883
// OP_STOREP_F	213	3883	0
// OP_ADDRESS	28	155	3884
// OP_STOREP_S	3885	3884	0
// OP_ADDRESS	28	156	3886
// OP_STOREP_F	213	3886	0
// OP_GOTO	112	0	0
// OP_LOAD_F	28	154	3887
// OP_EQ_F	3887	254	3888
// OP_IFNOT	3888	13	0
// OP_ADDRESS	28	157	3889
// OP_LOAD_F	28	158	3890
// OP_STOREP_F	3890	3889	0
// OP_ADDRESS	28	155	3891
// OP_STOREP_S	3892	3891	0
// OP_ADDRESS	28	156	3893
// OP_STOREP_F	213	3893	0
// OP_ADDRESS	28	162	3894
// OP_LOAD_F	28	162	3895
// OP_BITOR	3895	262	3896
// OP_STOREP_F	3896	3894	0
// OP_GOTO	97	0	0
// OP_LOAD_F	28	154	3897
// OP_EQ_F	3897	255	3898
// OP_IFNOT	3898	13	0
// OP_ADDRESS	28	157	3899
// OP_LOAD_F	28	158	3900
// OP_STOREP_F	3900	3899	0
// OP_ADDRESS	28	155	3901
// OP_STOREP_S	3902	3901	0
// OP_ADDRESS	28	156	3903
// OP_STOREP_F	213	3903	0
// OP_ADDRESS	28	162	3904
// OP_LOAD_F	28	162	3905
// OP_BITOR	3905	262	3906
// OP_STOREP_F	3906	3904	0
// OP_GOTO	82	0	0
// OP_LOAD_F	28	154	3907
// OP_EQ_F	3907	256	3908
// OP_IFNOT	3908	13	0
// OP_ADDRESS	28	157	3909
// OP_LOAD_F	28	159	3910
// OP_STOREP_F	3910	3909	0
// OP_ADDRESS	28	155	3911
// OP_STOREP_S	3912	3911	0
// OP_ADDRESS	28	156	3913
// OP_STOREP_F	213	3913	0
// OP_ADDRESS	28	162	3914
// OP_LOAD_F	28	162	3915
// OP_BITOR	3915	263	3916
// OP_STOREP_F	3916	3914	0
// OP_GOTO	67	0	0
// OP_LOAD_F	28	154	3917
// OP_EQ_F	3917	257	3918
// OP_IFNOT	3918	13	0
// OP_ADDRESS	28	157	3919
// OP_LOAD_F	28	159	3920
// OP_STOREP_F	3920	3919	0
// OP_ADDRESS	28	155	3921
// OP_STOREP_S	3922	3921	0
// OP_ADDRESS	28	156	3923
// OP_STOREP_F	213	3923	0
// OP_ADDRESS	28	162	3924
// OP_LOAD_F	28	162	3925
// OP_BITOR	3925	263	3926
// OP_STOREP_F	3926	3924	0
// OP_GOTO	52	0	0
// OP_LOAD_F	28	154	3927
// OP_EQ_F	3927	258	3928
// OP_IFNOT	3928	13	0
// OP_ADDRESS	28	157	3929
// OP_LOAD_F	28	160	3930
// OP_STOREP_F	3930	3929	0
// OP_ADDRESS	28	155	3931
// OP_STOREP_S	3932	3931	0
// OP_ADDRESS	28	156	3933
// OP_STOREP_F	213	3933	0
// OP_ADDRESS	28	162	3934
// OP_LOAD_F	28	162	3935
// OP_BITOR	3935	264	3936
// OP_STOREP_F	3936	3934	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	3937
// OP_EQ_F	3937	259	3938
// OP_IFNOT	3938	13	0
// OP_ADDRESS	28	157	3939
// OP_LOAD_F	28	160	3940
// OP_STOREP_F	3940	3939	0
// OP_ADDRESS	28	155	3941
// OP_STOREP_S	3942	3941	0
// OP_ADDRESS	28	156	3943
// OP_STOREP_F	213	3943	0
// OP_ADDRESS	28	162	3944
// OP_LOAD_F	28	162	3945
// OP_BITOR	3945	264	3946
// OP_STOREP_F	3946	3944	0
// OP_GOTO	22	0	0
// OP_LOAD_F	28	154	3947
// OP_EQ_F	3947	260	3948
// OP_IFNOT	3948	13	0
// OP_ADDRESS	28	157	3949
// OP_LOAD_F	28	161	3950
// OP_STOREP_F	3950	3949	0
// OP_ADDRESS	28	155	3951
// OP_STOREP_S	3952	3951	0
// OP_ADDRESS	28	156	3953
// OP_STOREP_F	213	3953	0
// OP_ADDRESS	28	162	3954
// OP_LOAD_F	28	162	3955
// OP_BITOR	3955	265	3956
// OP_STOREP_F	3956	3954	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	157	3957
// OP_STOREP_F	213	3957	0
// OP_ADDRESS	28	155	3958
// OP_STOREP_S	959	3958	0
// OP_ADDRESS	28	156	3959
// OP_STOREP_F	213	3959	0
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
// function begins at statement 5211, parm_start=3960
// OP_LOAD_F	28	162	3961
// OP_STORE_F	3961	3960	0
// OP_LOAD_F	28	161	3962
// OP_GE	3962	214	3963
// OP_BITAND	3960	260	3964
// OP_AND	3963	3964	3965
// OP_IFNOT	3965	3	0
// OP_RETURN	260	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	159	3966
// OP_GE	3966	216	3967
// OP_BITAND	3960	257	3968
// OP_AND	3967	3968	3969
// OP_IFNOT	3969	3	0
// OP_RETURN	257	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	158	3970
// OP_GE	3970	216	3971
// OP_BITAND	3960	255	3972
// OP_AND	3971	3972	3973
// OP_IFNOT	3973	3	0
// OP_RETURN	255	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	159	3974
// OP_GE	3974	214	3975
// OP_BITAND	3960	256	3976
// OP_AND	3975	3976	3977
// OP_IFNOT	3977	3	0
// OP_RETURN	256	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	158	3978
// OP_GE	3978	214	3979
// OP_BITAND	3960	254	3980
// OP_AND	3979	3980	3981
// OP_IFNOT	3981	2	0
// OP_RETURN	254	0	0
// OP_RETURN	253	0	0
// OP_DONE	0	0	0
float () W_BestWeapon = 
{
    local float it;
    it = self.items;
    if((self.ammo_cells >= TRUE) && (it & IT_LIGHTNING))
    {
        return IT_LIGHTNING;
    }
    else
    {
        if((self.ammo_nails >= FL_SWIM) && (it & IT_SUPER_NAILGUN))
        {
            return IT_SUPER_NAILGUN;
        }
        else
        {
            if((self.ammo_shells >= FL_SWIM) && (it & IT_SUPER_SHOTGUN))
            {
                return IT_SUPER_SHOTGUN;
            }
            else
            {
                if((self.ammo_nails >= TRUE) && (it & IT_NAILGUN))
                {
                    return IT_NAILGUN;
                }
                else
                {
                    
                    if((self.ammo_shells >= TRUE) && (it & IT_SHOTGUN))
                    {
                        return IT_SHOTGUN;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return IT_AXE;
};

// W_CheckNoAmmo
// function begins at statement 5249, parm_start=3983
// OP_LOAD_F	28	157	3983
// OP_GT	3983	213	3984
// OP_IFNOT	3984	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	154	3985
// OP_EQ_F	3985	253	3986
// OP_IFNOT	3986	2	0
// OP_RETURN	214	0	0
// OP_ADDRESS	28	154	3987
// OP_CALL0	2446	0	0
// OP_STOREP_F	1	3987	0
// OP_CALL0	2169	0	0
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
// function begins at statement 5263, parm_start=3997
// OP_CALL0	3982	0	0
// OP_NOT_F	1	0	3998
// OP_IFNOT	3998	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	175	3999
// OP_STORE_V	3999	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	388	4002
// OP_ADD_F	31	214	4003
// OP_STOREP_F	4003	4002	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	625	0	0
// OP_LOAD_F	28	154	4004
// OP_EQ_F	4004	253	4005
// OP_IFNOT	4005	26	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	4006	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	3997	0
// OP_LT	3997	703	4007
// OP_IFNOT	4007	3	0
// OP_CALL0	3988	0	0
// OP_GOTO	10	0	0
// OP_LT	3997	677	4008
// OP_IFNOT	4008	3	0
// OP_CALL0	3989	0	0
// OP_GOTO	6	0	0
// OP_LT	3997	4009	4010
// OP_IFNOT	4010	3	0
// OP_CALL0	3990	0	0
// OP_GOTO	2	0	0
// OP_CALL0	3991	0	0
// OP_ADDRESS	28	373	4011
// OP_ADD_F	31	677	4012
// OP_STOREP_F	4012	4011	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	4013
// OP_EQ_F	4013	254	4014
// OP_IFNOT	4014	7	0
// OP_CALL0	3992	0	0
// OP_CALL0	3354	0	0
// OP_ADDRESS	28	373	4015
// OP_ADD_F	31	677	4016
// OP_STOREP_F	4016	4015	0
// OP_GOTO	51	0	0
// OP_LOAD_F	28	154	4017
// OP_EQ_F	4017	255	4018
// OP_IFNOT	4018	7	0
// OP_CALL0	3992	0	0
// OP_CALL0	3369	0	0
// OP_ADDRESS	28	373	4019
// OP_ADD_F	31	3328	4020
// OP_STOREP_F	4020	4019	0
// OP_GOTO	42	0	0
// OP_LOAD_F	28	154	4021
// OP_EQ_F	4021	256	4022
// OP_IFNOT	4022	3	0
// OP_CALL0	3993	0	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	4023
// OP_EQ_F	4023	257	4024
// OP_IFNOT	4024	3	0
// OP_CALL0	3993	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	154	4025
// OP_EQ_F	4025	258	4026
// OP_IFNOT	4026	7	0
// OP_CALL0	3995	0	0
// OP_CALL0	3644	0	0
// OP_ADDRESS	28	373	4027
// OP_ADD_F	31	2345	4028
// OP_STOREP_F	4028	4027	0
// OP_GOTO	23	0	0
// OP_LOAD_F	28	154	4029
// OP_EQ_F	4029	259	4030
// OP_IFNOT	4030	7	0
// OP_CALL0	3995	0	0
// OP_CALL0	3433	0	0
// OP_ADDRESS	28	373	4031
// OP_ADD_F	31	2355	4032
// OP_STOREP_F	4032	4031	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	154	4033
// OP_EQ_F	4033	260	4034
// OP_IFNOT	4034	11	0
// OP_CALL0	3994	0	0
// OP_ADDRESS	28	373	4035
// OP_ADD_F	31	993	4036
// OP_STOREP_F	4036	4035	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	4037	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
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
    signalnoise(self, self);
    if(self.weapon == IT_AXE)
    {
        sound(self, CHAN_WEAPON, "weapons/ax1.wav", TRUE, ATTN_NORM);
        r = random();
        if(r < 0.250)
        {
            player_axe1();
        }
        else
        {
            if(r < 0.500)
            {
                player_axeb1();
            }
            else
            {
                if(r < 0.750)
                {
                    player_axec1();
                }
                else
                {
                    player_axed1();
                }
                
            }
            
        }
        
        self.attack_finished = time + 0.500;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            player_shot1();
            W_FireShotgun();
            self.attack_finished = time + 0.500;
        }
        else
        {
            if(self.weapon == IT_SUPER_SHOTGUN)
            {
                player_shot1();
                W_FireSuperShotgun();
                self.attack_finished = time + 0.700;
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
                            self.attack_finished = time + 0.600;
                        }
                        else
                        {
                            if(self.weapon == IT_ROCKET_LAUNCHER)
                            {
                                player_rocket1();
                                W_FireRocket();
                                self.attack_finished = time + 0.800;
                            }
                            else
                            {
                                
                                if(self.weapon == IT_LIGHTNING)
                                {
                                    player_light1();
                                    self.attack_finished = time + 0.100;
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
// function begins at statement 5364, parm_start=4039
// OP_LOAD_F	28	162	4042
// OP_STORE_F	4042	4039	0
// OP_STORE_F	213	4040	0
// OP_LOAD_F	28	173	4043
// OP_EQ_F	4043	214	4044
// OP_IFNOT	4044	3	0
// OP_STORE_F	253	4041	0
// OP_GOTO	63	0	0
// OP_LOAD_F	28	173	4045
// OP_EQ_F	4045	216	4046
// OP_IFNOT	4046	7	0
// OP_STORE_F	254	4041	0
// OP_LOAD_F	28	158	4047
// OP_LT	4047	214	4048
// OP_IFNOT	4048	2	0
// OP_STORE_F	214	4040	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	173	4049
// OP_EQ_F	4049	228	4050
// OP_IFNOT	4050	7	0
// OP_STORE_F	255	4041	0
// OP_LOAD_F	28	158	4051
// OP_LT	4051	216	4052
// OP_IFNOT	4052	2	0
// OP_STORE_F	214	4040	0
// OP_GOTO	45	0	0
// OP_LOAD_F	28	173	4053
// OP_EQ_F	4053	229	4054
// OP_IFNOT	4054	7	0
// OP_STORE_F	256	4041	0
// OP_LOAD_F	28	159	4055
// OP_LT	4055	214	4056
// OP_IFNOT	4056	2	0
// OP_STORE_F	214	4040	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	173	4057
// OP_EQ_F	4057	230	4058
// OP_IFNOT	4058	7	0
// OP_STORE_F	257	4041	0
// OP_LOAD_F	28	159	4059
// OP_LT	4059	216	4060
// OP_IFNOT	4060	2	0
// OP_STORE_F	214	4040	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	4061
// OP_EQ_F	4061	231	4062
// OP_IFNOT	4062	7	0
// OP_STORE_F	258	4041	0
// OP_LOAD_F	28	160	4063
// OP_LT	4063	214	4064
// OP_IFNOT	4064	2	0
// OP_STORE_F	214	4040	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	173	4065
// OP_EQ_F	4065	232	4066
// OP_IFNOT	4066	7	0
// OP_STORE_F	259	4041	0
// OP_LOAD_F	28	160	4067
// OP_LT	4067	214	4068
// OP_IFNOT	4068	2	0
// OP_STORE_F	214	4040	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	173	4069
// OP_EQ_F	4069	217	4070
// OP_IFNOT	4070	6	0
// OP_STORE_F	260	4041	0
// OP_LOAD_F	28	161	4071
// OP_LT	4071	214	4072
// OP_IFNOT	4072	2	0
// OP_STORE_F	214	4040	0
// OP_ADDRESS	28	173	4073
// OP_STOREP_F	213	4073	0
// OP_LOAD_F	28	162	4074
// OP_BITAND	4074	4041	4075
// OP_NOT_F	4075	0	4076
// OP_IFNOT	4076	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4077	7	0
// OP_CALL2	469	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	4040	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4078	7	0
// OP_CALL2	469	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	154	4079
// OP_STOREP_F	4041	4079	0
// OP_CALL0	2169	0	0
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
// function begins at statement 5453, parm_start=4081
// OP_OR	35	36	4081
// OP_IFNOT	4081	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	160	4082
// OP_STOREP_F	574	4082	0
// OP_ADDRESS	28	159	4083
// OP_STOREP_F	2356	4083	0
// OP_ADDRESS	28	158	4084
// OP_STOREP_F	574	4084	0
// OP_ADDRESS	28	162	4085
// OP_LOAD_F	28	162	4086
// OP_BITOR	4086	253	4087
// OP_BITOR	4087	254	4088
// OP_BITOR	4088	255	4089
// OP_BITOR	4089	256	4090
// OP_BITOR	4090	257	4091
// OP_BITOR	4091	258	4092
// OP_BITOR	4092	259	4093
// OP_BITOR	4093	270	4094
// OP_BITOR	4094	271	4095
// OP_STOREP_F	4095	4085	0
// OP_ADDRESS	28	161	4096
// OP_STOREP_F	2356	4096	0
// OP_ADDRESS	28	162	4097
// OP_LOAD_F	28	162	4098
// OP_BITOR	4098	260	4099
// OP_STOREP_F	4099	4097	0
// OP_ADDRESS	28	154	4100
// OP_STOREP_F	259	4100	0
// OP_ADDRESS	28	173	4101
// OP_STOREP_F	213	4101	0
// OP_CALL0	2169	0	0
// OP_DONE	0	0	0
void () CheatCommand = 
{
    
    if(deathmatch || coop)
    {
        return;
    }
    
    self.ammo_rockets = MUST_HAVE;
    self.ammo_nails = 200.000;
    self.ammo_shells = MUST_HAVE;
    self.items = ((((((((self.items | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_KEY1) | IT_KEY2;
    self.ammo_cells = 200.000;
    self.items = self.items | IT_LIGHTNING;
    self.weapon = IT_ROCKET_LAUNCHER;
    self.impulse = FALSE;
    W_SetCurrentAmmo();
};

// CycleWeaponCommand
// function begins at statement 5486, parm_start=4103
// OP_LOAD_F	28	162	4105
// OP_STORE_F	4105	4103	0
// OP_ADDRESS	28	173	4106
// OP_STOREP_F	213	4106	0
// OP_IFNOT	214	86	0
// OP_STORE_F	213	4104	0
// OP_LOAD_F	28	154	4107
// OP_EQ_F	4107	260	4108
// OP_IFNOT	4108	4	0
// OP_ADDRESS	28	154	4109
// OP_STOREP_F	253	4109	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	154	4110
// OP_EQ_F	4110	253	4111
// OP_IFNOT	4111	8	0
// OP_ADDRESS	28	154	4112
// OP_STOREP_F	254	4112	0
// OP_LOAD_F	28	158	4113
// OP_LT	4113	214	4114
// OP_IFNOT	4114	2	0
// OP_STORE_F	214	4104	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	4115
// OP_EQ_F	4115	254	4116
// OP_IFNOT	4116	8	0
// OP_ADDRESS	28	154	4117
// OP_STOREP_F	255	4117	0
// OP_LOAD_F	28	158	4118
// OP_LT	4118	216	4119
// OP_IFNOT	4119	2	0
// OP_STORE_F	214	4104	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	154	4120
// OP_EQ_F	4120	255	4121
// OP_IFNOT	4121	8	0
// OP_ADDRESS	28	154	4122
// OP_STOREP_F	256	4122	0
// OP_LOAD_F	28	159	4123
// OP_LT	4123	214	4124
// OP_IFNOT	4124	2	0
// OP_STORE_F	214	4104	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	154	4125
// OP_EQ_F	4125	256	4126
// OP_IFNOT	4126	8	0
// OP_ADDRESS	28	154	4127
// OP_STOREP_F	257	4127	0
// OP_LOAD_F	28	159	4128
// OP_LT	4128	216	4129
// OP_IFNOT	4129	2	0
// OP_STORE_F	214	4104	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	154	4130
// OP_EQ_F	4130	257	4131
// OP_IFNOT	4131	8	0
// OP_ADDRESS	28	154	4132
// OP_STOREP_F	258	4132	0
// OP_LOAD_F	28	160	4133
// OP_LT	4133	214	4134
// OP_IFNOT	4134	2	0
// OP_STORE_F	214	4104	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	154	4135
// OP_EQ_F	4135	258	4136
// OP_IFNOT	4136	8	0
// OP_ADDRESS	28	154	4137
// OP_STOREP_F	259	4137	0
// OP_LOAD_F	28	160	4138
// OP_LT	4138	214	4139
// OP_IFNOT	4139	2	0
// OP_STORE_F	214	4104	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	4140
// OP_EQ_F	4140	259	4141
// OP_IFNOT	4141	7	0
// OP_ADDRESS	28	154	4142
// OP_STOREP_F	260	4142	0
// OP_LOAD_F	28	161	4143
// OP_LT	4143	214	4144
// OP_IFNOT	4144	2	0
// OP_STORE_F	214	4104	0
// OP_LOAD_F	28	162	4145
// OP_LOAD_F	28	154	4146
// OP_BITAND	4145	4146	4147
// OP_EQ_F	4104	213	4148
// OP_AND	4147	4148	4149
// OP_IFNOT	4149	3	0
// OP_CALL0	2169	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-85	0	0
// OP_DONE	0	0	0
void () CycleWeaponCommand = 
{
    local float it;
    local float am;
    it = self.items;
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

// QuadCheat
// function begins at statement 5577, parm_start=4151
// OP_OR	35	36	4151
// OP_IFNOT	4151	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	383	4152
// OP_STOREP_F	214	4152	0
// OP_ADDRESS	28	377	4153
// OP_ADD_F	31	304	4154
// OP_STOREP_F	4154	4153	0
// OP_ADDRESS	28	162	4155
// OP_LOAD_F	28	162	4156
// OP_BITOR	4156	275	4157
// OP_STOREP_F	4157	4155	0
// OP_STORE_V	4158	4	0
// OP_CALL1	470	0	0
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

void () botImpulseCommand;
// ImpulseCommands
// function begins at statement 5592, parm_start=4161
// OP_LOAD_F	28	173	4162
// OP_GE	4162	214	4163
// OP_LOAD_F	28	173	4164
// OP_LE	4164	217	4165
// OP_AND	4163	4165	4166
// OP_IFNOT	4166	3	0
// OP_CALL0	4038	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	173	4167
// OP_EQ_F	4167	235	4168
// OP_IFNOT	4168	3	0
// OP_CALL0	4102	0	0
// OP_GOTO	2	0	0
// OP_CALL0	4159	0	0
// OP_ADDRESS	28	173	4169
// OP_STOREP_F	213	4169	0
// OP_DONE	0	0	0
void () ImpulseCommands = 
{
    local string tmp;
    if((self.impulse >= TRUE) && (self.impulse <= FL_CLIENT))
    {
        W_ChangeWeapon();
    }
    else
    {
        if(self.impulse == MOVETYPE_BOUNCE)
        {
            CycleWeaponCommand();
        }
        else
        {
            botImpulseCommand();
        }
        
    }
    
    self.impulse = FALSE;
};

// W_WeaponFrame
// function begins at statement 5609, parm_start=4171
// OP_LOAD_F	28	373	4171
// OP_LT	31	4171	4172
// OP_IFNOT	4172	2	0
// OP_RETURN	0	0	0
// OP_CALL0	4160	0	0
// OP_LOAD_S	28	129	4173
// OP_EQ_S	4173	2455	4174
// OP_IFNOT	4174	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	4175
// OP_IFNOT	4175	3	0
// OP_CALL0	3088	0	0
// OP_CALL0	3996	0	0
// OP_DONE	0	0	0
void () W_WeaponFrame = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    ImpulseCommands();
    
    if(self.classname == "peeper")
    {
        return;
    }
    
    
    if(self.button0)
    {
        SuperDamageSound();
        W_Attack();
    }
    
};

// SuperDamageSound
// function begins at statement 5623, parm_start=4176
// OP_LOAD_F	28	377	4176
// OP_GT	4176	31	4177
// OP_IFNOT	4177	13	0
// OP_LOAD_F	28	384	4178
// OP_LT	4178	31	4179
// OP_IFNOT	4179	10	0
// OP_ADDRESS	28	384	4180
// OP_ADD_F	31	214	4181
// OP_STOREP_F	4181	4180	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	2974	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
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

