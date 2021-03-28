void () player_run;
void (vector org, vector vel, float damage) SpawnBlood;
void () SuperDamageSound;
// W_Precache
// function begins at statement 3409, parm_start=2616
// OP_STORE_V	2616	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2617	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2618	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2619	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2620	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2621	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2622	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2623	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2624	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2625	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2626	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	2627	4	0
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
// function begins at statement 3434, parm_start=2629
// OP_CALL0	452	0	0
// OP_SUB_F	1	1491	2629
// OP_MUL_F	2257	2629	2630
// OP_RETURN	2630	0	0
// OP_DONE	0	0	0
float () crandom =
{
    return WEAPON_ROCKET * (random() - 0.500);
};

// W_FireAxe
// function begins at statement 3439, parm_start=2632
// OP_LOAD_V	28	175	2638
// OP_STORE_V	2638	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	2641
// OP_ADD_V	2641	2644	2647
// OP_STORE_V	2647	2632	0
// OP_MUL_VF	59	260	2650
// OP_ADD_V	2632	2650	2653
// OP_STORE_V	2632	4	0
// OP_STORE_V	2653	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_EQ_F	70	2256	2656
// OP_IFNOT	2656	2	0
// OP_RETURN	0	0	0
// OP_MUL_VF	59	2258	2657
// OP_SUB_V	71	2657	2660
// OP_STORE_V	2660	2635	0
// OP_LOAD_F	78	163	2663
// OP_IFNOT	2663	13	0
// OP_ADDRESS	78	387	2664
// OP_STOREP_F	2256	2664	0
// OP_STORE_V	2635	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	894	10	0
// OP_CALL3	2613	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	894	13	0
// OP_CALL4	520	0	0
// OP_GOTO	22	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2665	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	2635	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	2636	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	2637	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void () W_FireAxe =
{
    local vector source;
    local vector org;
    makevectors(self.v_angle);
    source = self.origin + '0.000 0.000 16.000';
    traceline(source, source + (v_forward * IT_LIGHTNING), FALSE, self);
    
    if(trace_fraction == WEAPON_SHOTGUN)
    {
        return;
    }
    
    org = trace_endpos - (v_forward * WEAPON_SPIKES);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = WEAPON_SHOTGUN;
        SpawnBlood(org, VEC_ORIGIN, 20.000);
        T_Damage(trace_ent, self, self, 20.000);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", WEAPON_SHOTGUN, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
