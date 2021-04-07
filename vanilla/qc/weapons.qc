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
    return WEAPON_ROCKET * (random() - 0.5);
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
    source = self.origin + '0 0 16';
    traceline(source, source + (v_forward * IT_LIGHTNING), FALSE, self);
    
    if(trace_fraction == WEAPON_SHOTGUN)
    {
        return;
    }
    
    org = trace_endpos - (v_forward * WEAPON_SPIKES);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = WEAPON_SHOTGUN;
        SpawnBlood(org, VEC_ORIGIN, 20);
        T_Damage(trace_ent, self, self, 20);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", WEAPON_SHOTGUN, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
};

// wall_velocity
// function begins at statement 3494, parm_start=2667
// OP_LOAD_V	28	113	2670
// OP_STORE_V	2670	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	2667	0
// OP_CALL0	452	0	0
// OP_SUB_F	1	1491	2673
// OP_MUL_VF	62	2673	2674
// OP_ADD_V	2667	2674	2677
// OP_CALL0	452	0	0
// OP_SUB_F	1	1491	2680
// OP_MUL_VF	65	2680	2681
// OP_ADD_V	2677	2681	2684
// OP_STORE_V	2684	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	2667	0
// OP_MUL_FV	2257	74	2687
// OP_ADD_V	2667	2687	2690
// OP_STORE_V	2690	2667	0
// OP_MUL_VF	2667	1965	2693
// OP_STORE_V	2693	2667	0
// OP_RETURN	2667	0	0
// OP_DONE	0	0	0
vector () wall_velocity = 
{
    local vector vel;
    vel = normalize(self.velocity);
    vel = normalize((vel + (v_up * (random() - 0.5))) + (v_right * (random() - 0.5)));
    vel = vel + (WEAPON_ROCKET * trace_plane_normal);
    vel = vel * 200;
    return vel;
};

// SpawnMeatSpray
// function begins at statement 3516, parm_start=2697
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	2703	0
// OP_ADDRESS	2703	201	2705
// OP_STOREP_ENT	28	2705	0
// OP_ADDRESS	2703	103	2706
// OP_STOREP_F	235	2706	0
// OP_ADDRESS	2703	104	2707
// OP_STOREP_F	237	2707	0
// OP_LOAD_V	28	117	2708
// OP_STORE_V	2708	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	2703	113	2711
// OP_STOREP_V	2700	2711	0
// OP_ADDRESS	2703	116	2714
// OP_LOAD_F	2703	116	2715
// OP_ADD_F	2715	1859	2716
// OP_CALL0	452	0	0
// OP_MUL_F	2227	1	2717
// OP_ADD_F	2716	2717	2718
// OP_STOREP_F	2718	2714	0
// OP_ADDRESS	2703	121	2719
// OP_STOREP_V	2722	2719	0
// OP_ADDRESS	2703	150	2725
// OP_ADD_F	31	2256	2726
// OP_STOREP_F	2726	2725	0
// OP_ADDRESS	2703	148	2727
// OP_STOREP_FNC	519	2727	0
// OP_STORE_V	2703	4	0
// OP_STORE_V	2728	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	2703	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	2703	4	0
// OP_STORE_V	2697	7	0
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
    missile.velocity_z = (missile.velocity_z + 250) + (50 * random());
    missile.avelocity = '3000 1000 2000';
    missile.nextthink = time + WEAPON_SHOTGUN;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/zom_gib.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, org);
};

// SpawnBlood
// function begins at statement 3554, parm_start=2729
// OP_MUL_VF	2732	603	2736
// OP_MUL_F	2735	2257	2740
// OP_STORE_V	2729	4	0
// OP_STORE_V	2736	7	0
// OP_STORE_V	2739	10	0
// OP_STORE_V	2740	13	0
// OP_CALL4	490	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float damage) SpawnBlood = 
{
    particle(org, vel * 0.1, 73, damage * WEAPON_ROCKET);
};

// spawn_touchblood
// function begins at statement 3562, parm_start=2742
// OP_CALL0	2666	0	0
// OP_MUL_VF	1	836	2746
// OP_STORE_V	2746	2743	0
// OP_LOAD_V	28	105	2749
// OP_MUL_VF	2743	2752	2753
// OP_ADD_V	2749	2753	2756
// OP_STORE_V	2756	4	0
// OP_STORE_V	2743	7	0
// OP_STORE_V	2742	10	0
// OP_CALL3	2613	0	0
// OP_DONE	0	0	0
void (float damage) spawn_touchblood = 
{
    local vector vel;
    vel = wall_velocity() * 0.2;
    SpawnBlood(self.origin + (vel * 0.01), vel, damage);
};

// SpawnChunk
// function begins at statement 3573, parm_start=2760
// OP_MUL_VF	2763	2766	2767
// OP_STORE_V	2760	4	0
// OP_STORE_V	2767	7	0
// OP_STORE_V	337	10	0
// OP_STORE_V	318	13	0
// OP_CALL4	490	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnChunk = 
{
    particle(org, vel * 0.02, MSG_BROADCAST, TE_LAVASPLASH);
};

entity multi_ent;
float multi_damage;
// ClearMultiDamage
// function begins at statement 3580, parm_start=2773
// OP_STORE_ENT	30	2770	0
// OP_STORE_F	337	2771	0
// OP_DONE	0	0	0
void () ClearMultiDamage = 
{
    multi_ent = world;
    multi_damage = MSG_BROADCAST;
};

// ApplyMultiDamage
// function begins at statement 3583, parm_start=2774
// OP_NOT_ENT	2770	0	2774
// OP_IFNOT	2774	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	2770	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2771	13	0
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
// function begins at statement 3592, parm_start=2776
// OP_NOT_ENT	2776	0	2778
// OP_IFNOT	2778	2	0
// OP_RETURN	0	0	0
// OP_NE_E	2776	2770	2779
// OP_IFNOT	2779	5	0
// OP_CALL0	2773	0	0
// OP_STORE_F	2777	2771	0
// OP_STORE_ENT	2776	2770	0
// OP_GOTO	3	0	0
// OP_ADD_F	2771	2777	2780
// OP_STORE_F	2780	2771	0
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
// function begins at statement 3604, parm_start=2782
// OP_CALL0	2628	0	0
// OP_MUL_VF	62	1	2792
// OP_ADD_V	2783	2792	2795
// OP_CALL0	2628	0	0
// OP_MUL_VF	65	1	2798
// OP_ADD_V	2795	2798	2801
// OP_STORE_V	2801	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	2786	0
// OP_MUL_FV	2257	74	2804
// OP_ADD_V	2786	2804	2807
// OP_STORE_V	2807	2786	0
// OP_MUL_VF	2786	1965	2810
// OP_STORE_V	2810	2786	0
// OP_MUL_VF	2783	2258	2813
// OP_SUB_V	71	2813	2816
// OP_STORE_V	2816	2789	0
// OP_LOAD_F	78	163	2819
// OP_IFNOT	2819	10	0
// OP_MUL_VF	2786	836	2820
// OP_STORE_V	2789	4	0
// OP_STORE_V	2820	7	0
// OP_STORE_V	2782	10	0
// OP_CALL3	2613	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	2782	7	0
// OP_CALL2	2775	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	2789	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	2790	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	2791	7	0
// OP_CALL2	497	0	0
// OP_DONE	0	0	0
void (float damage, vector dir) TraceAttack = 
{
    local vector vel;
    local vector org;
    vel = normalize((dir + (v_up * crandom())) + (v_right * crandom()));
    vel = vel + (WEAPON_ROCKET * trace_plane_normal);
    vel = vel * 200;
    org = trace_endpos - (dir * WEAPON_SPIKES);
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
// function begins at statement 3648, parm_start=2824
// OP_LOAD_V	28	175	2837
// OP_STORE_V	2837	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	2840
// OP_MUL_VF	59	318	2843
// OP_ADD_V	2840	2843	2846
// OP_STORE_V	2846	2834	0
// OP_LOAD_F	28	97	2849
// OP_LOAD_F	28	145	2850
// OP_MUL_F	2850	2851	2852
// OP_ADD_F	2849	2852	2853
// OP_STORE_F	2853	2836	0
// OP_CALL0	2772	0	0
// OP_GT	2824	337	2854
// OP_IFNOT	2854	25	0
// OP_CALL0	2628	0	0
// OP_MUL_F	1	2828	2855
// OP_MUL_FV	2855	65	2856
// OP_ADD_V	2825	2856	2859
// OP_CALL0	2628	0	0
// OP_MUL_F	1	2829	2862
// OP_MUL_FV	2862	62	2863
// OP_ADD_V	2859	2863	2866
// OP_STORE_V	2866	2831	0
// OP_MUL_VF	2831	265	2869
// OP_ADD_V	2834	2869	2872
// OP_STORE_V	2834	4	0
// OP_STORE_V	2872	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_F	70	2256	2875
// OP_IFNOT	2875	4	0
// OP_STORE_V	2258	4	0
// OP_STORE_V	2831	7	0
// OP_CALL2	2781	0	0
// OP_SUB_F	2824	2256	2876
// OP_STORE_F	2876	2824	0
// OP_GOTO	-25	0	0
// OP_CALL0	2773	0	0
// OP_DONE	0	0	0
void (float shotcount, vector dir, vector spread) FireBullets = 
{
    local vector direction;
    local vector src;
    makevectors(self.v_angle);
    src = self.origin + (v_forward * TE_LAVASPLASH);
    src_z = self.absmin_z + (self.size_z * 0.7);
    ClearMultiDamage();
    
    while(shotcount > MSG_BROADCAST)
    {
        direction = (dir + ((crandom() * spread_x) * v_right)) + ((crandom() * 0) * v_up);
        traceline(src, src + (direction * IT_CELLS), FALSE, self);
        
        if(trace_fraction != WEAPON_SHOTGUN)
        {
            TraceAttack(WEAPON_SPIKES, direction);
        }
        
        shotcount = shotcount - WEAPON_SHOTGUN;
    }
    
    ApplyMultiDamage();
};

// W_FireShotgun
// function begins at statement 3689, parm_start=2878
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2619	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	2881
// OP_STOREP_F	277	2881	0
// OP_ADDRESS	28	157	2882
// OP_ADDRESS	28	158	2883
// OP_LOAD_F	28	158	2884
// OP_SUB_F	2884	2256	2885
// OP_STOREP_F	2885	2883	0
// OP_STOREP_F	2885	2882	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2886	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	2878	0
// OP_STORE_V	314	4	0
// OP_STORE_V	2878	7	0
// OP_STORE_V	2887	10	0
// OP_CALL3	2823	0	0
// OP_DONE	0	0	0
void () W_FireShotgun = 
{
    local vector dir;
    sound(self, CHAN_WEAPON, "weapons/guncock.wav", WEAPON_SHOTGUN, ATTN_NORM);
    self.punchangle_x = CONTENT_SOLID;
    self.currentammo = self.ammo_shells = self.ammo_shells - WEAPON_SHOTGUN;
    dir = aim(self, 100000);
    FireBullets(TE_LIGHTNING2, dir, '0.04 0.04 0');
};

// W_FireSuperShotgun
// function begins at statement 3712, parm_start=2891
// OP_LOAD_F	28	157	2894
// OP_EQ_F	2894	2256	2895
// OP_IFNOT	2895	3	0
// OP_CALL0	2877	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2627	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	2896
// OP_STOREP_F	279	2896	0
// OP_ADDRESS	28	157	2897
// OP_ADDRESS	28	158	2898
// OP_LOAD_F	28	158	2899
// OP_SUB_F	2899	2257	2900
// OP_STOREP_F	2900	2898	0
// OP_STOREP_F	2900	2897	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2886	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	2891	0
// OP_STORE_V	2901	4	0
// OP_STORE_V	2891	7	0
// OP_STORE_V	2902	10	0
// OP_CALL3	2823	0	0
// OP_DONE	0	0	0
void () W_FireSuperShotgun = 
{
    local vector dir;
    
    if(self.currentammo == WEAPON_SHOTGUN)
    {
        W_FireShotgun();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/shotgn2.wav", WEAPON_SHOTGUN, ATTN_NORM);
    self.punchangle_x = CONTENT_SLIME;
    self.currentammo = self.ammo_shells = self.ammo_shells - WEAPON_ROCKET;
    dir = aim(self, 100000);
    FireBullets(14, dir, '0.14 0.08 0');
};

// s_explode1
// function begins at statement 3740, parm_start=2906
// OP_STATE	337	2906	0
// OP_DONE	0	0	0
void () s_explode1 = [0, s_explode2]
{
};

// s_explode2
// function begins at statement 3742, parm_start=2907
// OP_STATE	2256	2907	0
// OP_DONE	0	0	0
void () s_explode2 = [1, s_explode3]
{
};

// s_explode3
// function begins at statement 3744, parm_start=2908
// OP_STATE	2257	2908	0
// OP_DONE	0	0	0
void () s_explode3 = [2, s_explode4]
{
};

// s_explode4
// function begins at statement 3746, parm_start=2909
// OP_STATE	370	2909	0
// OP_DONE	0	0	0
void () s_explode4 = [3, s_explode5]
{
};

// s_explode5
// function begins at statement 3748, parm_start=2910
// OP_STATE	2258	2910	0
// OP_DONE	0	0	0
void () s_explode5 = [4, s_explode6]
{
};

// s_explode6
// function begins at statement 3750, parm_start=2911
// OP_STATE	313	519	0
// OP_DONE	0	0	0
void () s_explode6 = [5, SUB_Remove]
{
};

// BecomeExplosion
// function begins at statement 3752, parm_start=2912
// OP_ADDRESS	28	103	2912
// OP_STOREP_F	227	2912	0
// OP_ADDRESS	28	113	2913
// OP_STOREP_V	286	2913	0
// OP_ADDRESS	28	146	2916
// OP_STOREP_FNC	517	2916	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2917	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	104	2918
// OP_STOREP_F	237	2918	0
// OP_CALL0	2905	0	0
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
// function begins at statement 3765, parm_start=2919
// OP_LOAD_ENT	28	201	2920
// OP_EQ_E	29	2920	2921
// OP_IFNOT	2921	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	2922
// OP_STORE_V	2922	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	2925
// OP_IFNOT	2925	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	894	2926
// OP_ADD_F	1884	2926	2927
// OP_STORE_F	2927	2919	0
// OP_LOAD_F	29	152	2928
// OP_IFNOT	2928	12	0
// OP_LOAD_S	29	129	2929
// OP_EQ_S	2929	1243	2930
// OP_IFNOT	2930	3	0
// OP_MUL_F	2919	1491	2931
// OP_STORE_F	2931	2919	0
// OP_LOAD_ENT	28	201	2932
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	2932	10	0
// OP_STORE_V	2919	13	0
// OP_CALL4	520	0	0
// OP_LOAD_ENT	28	201	2933
// OP_STORE_V	28	4	0
// OP_STORE_V	2933	7	0
// OP_STORE_V	1164	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	1720	0	0
// OP_ADDRESS	28	105	2934
// OP_LOAD_V	28	105	2937
// OP_LOAD_V	28	113	2940
// OP_STORE_V	2940	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	2259	1	2943
// OP_SUB_V	2937	2943	2946
// OP_STOREP_V	2946	2934	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	2949
// OP_STORE_V	337	4	0
// OP_STORE_V	2949	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	2950
// OP_STORE_V	337	4	0
// OP_STORE_V	2950	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	2951
// OP_STORE_V	337	4	0
// OP_STORE_V	2951	7	0
// OP_CALL2	497	0	0
// OP_CALL0	2911	0	0
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
    self.origin = self.origin - (WEAPON_BIG * normalize(self.velocity));
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// W_FireRocket
// function begins at statement 3828, parm_start=2953
// OP_ADDRESS	28	157	2955
// OP_ADDRESS	28	160	2956
// OP_LOAD_F	28	160	2957
// OP_SUB_F	2957	2256	2958
// OP_STOREP_F	2958	2956	0
// OP_STOREP_F	2958	2955	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2618	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	2959
// OP_STOREP_F	277	2959	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	2953	0
// OP_ADDRESS	2953	201	2960
// OP_STOREP_ENT	28	2960	0
// OP_ADDRESS	2953	103	2961
// OP_STOREP_F	234	2961	0
// OP_ADDRESS	2953	104	2962
// OP_STOREP_F	239	2962	0
// OP_ADDRESS	2953	129	2963
// OP_STOREP_S	2964	2963	0
// OP_LOAD_V	28	175	2965
// OP_STORE_V	2965	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	2953	113	2968
// OP_STORE_V	28	4	0
// OP_STORE_V	1168	7	0
// OP_CALL2	486	0	0
// OP_STOREP_V	1	2968	0
// OP_ADDRESS	2953	113	2971
// OP_LOAD_V	2953	113	2974
// OP_MUL_VF	2974	1168	2977
// OP_STOREP_V	2977	2971	0
// OP_ADDRESS	2953	117	2980
// OP_LOAD_V	2953	113	2983
// OP_STORE_V	2983	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	2980	0
// OP_ADDRESS	2953	146	2986
// OP_STOREP_FNC	1480	2986	0
// OP_ADDRESS	2953	150	2987
// OP_ADD_F	31	313	2988
// OP_STOREP_F	2988	2987	0
// OP_ADDRESS	2953	148	2989
// OP_STOREP_FNC	519	2989	0
// OP_STORE_V	2953	4	0
// OP_STORE_V	2990	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	2953	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	2991
// OP_MUL_VF	59	2259	2994
// OP_ADD_V	2991	2994	2997
// OP_ADD_V	2997	2644	3000
// OP_STORE_V	2953	4	0
// OP_STORE_V	3000	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () W_FireRocket = 
{
    local entity missile;
    local entity mpuff;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - WEAPON_SHOTGUN;
    sound(self, CHAN_WEAPON, "weapons/sgun1.wav", WEAPON_SHOTGUN, ATTN_NORM);
    self.punchangle_x = CONTENT_SOLID;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_FLYMISSILE;
    missile.solid = SOLID_BBOX;
    missile.classname = "missile";
    makevectors(self.v_angle);
    missile.velocity = aim(self, 1000);
    missile.velocity = missile.velocity * 1000;
    missile.angles = vectoangles(missile.velocity);
    missile.touch = T_MissileTouch;
    missile.nextthink = time + TE_LIGHTNING1;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/missile.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, (self.origin + (v_forward * WEAPON_BIG)) + '0 0 16');
};

// LightningDamage
// function begins at statement 3891, parm_start=3004
// OP_SUB_V	3007	3004	3017
// OP_STORE_V	3017	3014	0
// OP_STORE_V	3014	4	0
// OP_CALL1	454	0	0
// OP_SUB_F	337	3015	3020
// OP_STORE_F	3020	3014	0
// OP_STORE_F	3014	3015	0
// OP_STORE_F	337	3016	0
// OP_MUL_VF	3014	258	3021
// OP_STORE_V	3021	3014	0
// OP_STORE_ENT	30	3013	0
// OP_STORE_ENT	30	3012	0
// OP_STORE_V	3004	4	0
// OP_STORE_V	3007	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_LOAD_F	78	163	3024
// OP_IFNOT	3024	22	0
// OP_MUL_F	3011	2258	3029
// OP_STORE_V	71	4	0
// OP_STORE_V	3025	7	0
// OP_STORE_V	3028	10	0
// OP_STORE_V	3029	13	0
// OP_CALL4	490	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3010	7	0
// OP_STORE_V	3010	10	0
// OP_STORE_V	3011	13	0
// OP_CALL4	520	0	0
// OP_LOAD_S	28	129	3030
// OP_EQ_S	3030	712	3031
// OP_IFNOT	3031	8	0
// OP_LOAD_S	29	129	3032
// OP_EQ_S	3032	712	3033
// OP_IFNOT	3033	5	0
// OP_ADDRESS	78	116	3034
// OP_LOAD_F	78	116	3035
// OP_ADD_F	3035	3036	3037
// OP_STOREP_F	3037	3034	0
// OP_STORE_ENT	78	3012	0
// OP_ADD_V	3004	3014	3038
// OP_ADD_V	3007	3014	3041
// OP_STORE_V	3038	4	0
// OP_STORE_V	3041	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	3012	3044
// OP_LOAD_F	78	163	3045
// OP_AND	3044	3045	3046
// OP_IFNOT	3046	12	0
// OP_MUL_F	3011	2258	3047
// OP_STORE_V	71	4	0
// OP_STORE_V	3025	7	0
// OP_STORE_V	3028	10	0
// OP_STORE_V	3047	13	0
// OP_CALL4	490	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3010	7	0
// OP_STORE_V	3010	10	0
// OP_STORE_V	3011	13	0
// OP_CALL4	520	0	0
// OP_STORE_ENT	78	3013	0
// OP_SUB_V	3004	3014	3048
// OP_SUB_V	3007	3014	3051
// OP_STORE_V	3048	4	0
// OP_STORE_V	3051	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	3012	3054
// OP_NE_E	78	3013	3055
// OP_AND	3054	3055	3056
// OP_LOAD_F	78	163	3057
// OP_AND	3056	3057	3058
// OP_IFNOT	3058	12	0
// OP_MUL_F	3011	2258	3059
// OP_STORE_V	71	4	0
// OP_STORE_V	3025	7	0
// OP_STORE_V	3028	10	0
// OP_STORE_V	3059	13	0
// OP_CALL4	490	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3010	7	0
// OP_STORE_V	3010	10	0
// OP_STORE_V	3011	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
void (vector p1, vector p2, entity from, float damage) LightningDamage = 
{
    local entity e1;
    local entity e2;
    local vector f;
    f = p2 - p1;
    normalize(f);
    f_x = MSG_BROADCAST - f_y;
    f_y = f_x;
    f_z = MSG_BROADCAST;
    f = f * IT_GRENADE_LAUNCHER;
    e1 = e2 = world;
    traceline(p1, p2, FALSE, self);
    
    if(trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * WEAPON_SPIKES);
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
        particle(trace_endpos, '0 0 100', 225, damage * WEAPON_SPIKES);
        T_Damage(trace_ent, from, from, damage);
    }
    
    e2 = trace_ent;
    traceline(p1 - f, p2 - f, FALSE, self);
    
    if(((trace_ent != e1) && (trace_ent != e2)) && trace_ent.takedamage)
    {
        particle(trace_endpos, '0 0 100', 225, damage * WEAPON_SPIKES);
        T_Damage(trace_ent, from, from, damage);
    }
    
};

// W_FireLightning
// function begins at statement 3980, parm_start=3061
// OP_LOAD_F	28	161	3065
// OP_LT	3065	2256	3066
// OP_IFNOT	3066	6	0
// OP_ADDRESS	28	154	3067
// OP_CALL0	2034	0	0
// OP_STOREP_F	1	3067	0
// OP_CALL0	1800	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	3068
// OP_GT	3068	2256	3069
// OP_IFNOT	3069	13	0
// OP_LOAD_F	28	161	3070
// OP_STORE_F	3070	3064	0
// OP_ADDRESS	28	161	3071
// OP_STOREP_F	337	3071	0
// OP_CALL0	1800	0	0
// OP_MUL_F	3072	3064	3073
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	3073	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1720	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	400	3074
// OP_LT	3074	31	3075
// OP_IFNOT	3075	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3076	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	400	3077
// OP_ADD_F	31	1959	3078
// OP_STOREP_F	3078	3077	0
// OP_ADDRESS	28	126	3079
// OP_STOREP_F	277	3079	0
// OP_ADDRESS	28	157	3080
// OP_ADDRESS	28	161	3081
// OP_LOAD_F	28	161	3082
// OP_SUB_F	3082	2256	3083
// OP_STOREP_F	3083	3081	0
// OP_STOREP_F	3083	3080	0
// OP_LOAD_V	28	105	3084
// OP_ADD_V	3084	2644	3087
// OP_STORE_V	3087	3061	0
// OP_MUL_VF	59	1029	3090
// OP_ADD_V	3061	3090	3093
// OP_STORE_V	3061	4	0
// OP_STORE_V	3093	7	0
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
// OP_STORE_V	3061	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3062	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	3063	7	0
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
// OP_LOAD_V	28	105	3096
// OP_MUL_VF	59	2258	3099
// OP_ADD_V	71	3099	3102
// OP_STORE_V	3096	4	0
// OP_STORE_V	3102	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	304	13	0
// OP_CALL4	3003	0	0
// OP_DONE	0	0	0
void () W_FireLightning = 
{
    local vector org;
    local float cells;
    
    if(self.ammo_cells < WEAPON_SHOTGUN)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    
    if(self.waterlevel > WEAPON_SHOTGUN)
    {
        cells = self.ammo_cells;
        self.ammo_cells = MSG_BROADCAST;
        W_SetCurrentAmmo();
        T_RadiusDamage(self, self, 35 * cells, world);
        return;
    }
    
    
    if(self.t_width < time)
    {
        sound(self, CHAN_WEAPON, "weapons/lhit.wav", WEAPON_SHOTGUN, ATTN_NORM);
        self.t_width = time + 0.6;
    }
    
    self.punchangle_x = CONTENT_SOLID;
    self.currentammo = self.ammo_cells = self.ammo_cells - WEAPON_SHOTGUN;
    org = self.origin + '0 0 16';
    traceline(org, org + (v_forward * 600), TRUE, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LIGHTNING2);
    WriteEntity(MSG_BROADCAST, self);
    WriteCoord(MSG_BROADCAST, org_x);
    WriteCoord(MSG_BROADCAST, org_y);
    WriteCoord(MSG_BROADCAST, org_z);
    WriteCoord(MSG_BROADCAST, trace_endpos_x);
    WriteCoord(MSG_BROADCAST, trace_endpos_y);
    WriteCoord(MSG_BROADCAST, trace_endpos_z);
    LightningDamage(self.origin, trace_endpos + (v_forward * WEAPON_SPIKES), self, SVC_INTERMISSION);
};

// GrenadeExplode
// function begins at statement 4069, parm_start=3106
// OP_LOAD_ENT	28	201	3106
// OP_STORE_V	28	4	0
// OP_STORE_V	3106	7	0
// OP_STORE_V	1164	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1720	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	3107
// OP_STORE_V	337	4	0
// OP_STORE_V	3107	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	3108
// OP_STORE_V	337	4	0
// OP_STORE_V	3108	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	3109
// OP_STORE_V	337	4	0
// OP_STORE_V	3109	7	0
// OP_CALL2	497	0	0
// OP_CALL0	2911	0	0
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
// function begins at statement 4095, parm_start=3111
// OP_LOAD_ENT	28	201	3111
// OP_EQ_E	29	3111	3112
// OP_IFNOT	3112	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3113
// OP_EQ_F	3113	252	3114
// OP_IFNOT	3114	3	0
// OP_CALL0	3105	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2626	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	113	3115
// OP_EQ_V	3115	286	3118
// OP_IFNOT	3118	3	0
// OP_ADDRESS	28	121	3119
// OP_STOREP_V	286	3119	0
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
    
    sound(self, CHAN_WEAPON, "weapons/bounce.wav", WEAPON_SHOTGUN, ATTN_NORM);
    
    if(self.velocity == VEC_ORIGIN)
    {
        self.avelocity = VEC_ORIGIN;
    }
    
};

// W_FireGrenade
// function begins at statement 4116, parm_start=3123
// OP_ADDRESS	28	157	3125
// OP_ADDRESS	28	160	3126
// OP_LOAD_F	28	160	3127
// OP_SUB_F	3127	2256	3128
// OP_STOREP_F	3128	3126	0
// OP_STOREP_F	3128	3125	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2625	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	126	3129
// OP_STOREP_F	277	3129	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	3123	0
// OP_ADDRESS	3123	201	3130
// OP_STOREP_ENT	28	3130	0
// OP_ADDRESS	3123	103	3131
// OP_STOREP_F	235	3131	0
// OP_ADDRESS	3123	104	3132
// OP_STOREP_F	239	3132	0
// OP_ADDRESS	3123	129	3133
// OP_STOREP_S	3134	3133	0
// OP_LOAD_V	28	175	3135
// OP_STORE_V	3135	4	0
// OP_CALL1	447	0	0
// OP_LOAD_F	28	176	3138
// OP_IFNOT	3138	15	0
// OP_ADDRESS	3123	113	3139
// OP_MUL_VF	59	1029	3142
// OP_MUL_VF	62	1965	3145
// OP_ADD_V	3142	3145	3148
// OP_CALL0	2628	0	0
// OP_MUL_FV	1	65	3151
// OP_MUL_VF	3151	318	3154
// OP_ADD_V	3148	3154	3157
// OP_CALL0	2628	0	0
// OP_MUL_FV	1	62	3160
// OP_MUL_VF	3160	318	3163
// OP_ADD_V	3157	3163	3166
// OP_STOREP_V	3166	3139	0
// OP_GOTO	12	0	0
// OP_ADDRESS	3123	113	3169
// OP_STORE_V	28	4	0
// OP_STORE_V	3172	7	0
// OP_CALL2	486	0	0
// OP_STOREP_V	1	3169	0
// OP_ADDRESS	3123	113	3173
// OP_LOAD_V	3123	113	3176
// OP_MUL_VF	3176	1029	3179
// OP_STOREP_V	3179	3173	0
// OP_ADDRESS	3123	116	3182
// OP_STOREP_F	1965	3182	0
// OP_ADDRESS	3123	121	3183
// OP_STOREP_V	3186	3183	0
// OP_ADDRESS	3123	117	3189
// OP_LOAD_V	3123	113	3192
// OP_STORE_V	3192	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	3189	0
// OP_ADDRESS	3123	146	3195
// OP_STOREP_FNC	3110	3195	0
// OP_ADDRESS	3123	150	3196
// OP_ADD_F	31	3197	3198
// OP_STOREP_F	3198	3196	0
// OP_ADDRESS	3123	148	3199
// OP_STOREP_FNC	3105	3199	0
// OP_STORE_V	3123	4	0
// OP_STORE_V	3200	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3123	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	3201
// OP_STORE_V	3123	4	0
// OP_STORE_V	3201	7	0
// OP_CALL2	448	0	0
// OP_DONE	0	0	0
void () W_FireGrenade = 
{
    local entity missile;
    local entity mpuff;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - WEAPON_SHOTGUN;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", WEAPON_SHOTGUN, ATTN_NORM);
    self.punchangle_x = CONTENT_SOLID;
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    missile.classname = "grenade";
    makevectors(self.v_angle);
    if(self.v_angle_x)
    {
        missile.velocity = (((v_forward * 600) + (v_up * 200)) + ((crandom() * v_right) * TE_LAVASPLASH)) + ((crandom() * v_up) * TE_LAVASPLASH);
    }
    else
    {
        missile.velocity = aim(self, 10000);
        missile.velocity = missile.velocity * 600;
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
// function begins at statement 4196, parm_start=3207
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	345	0
// OP_ADDRESS	345	201	3213
// OP_STOREP_ENT	28	3213	0
// OP_ADDRESS	345	103	3214
// OP_STOREP_F	234	3214	0
// OP_ADDRESS	345	104	3215
// OP_STOREP_F	239	3215	0
// OP_ADDRESS	345	117	3216
// OP_STORE_V	3210	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	3216	0
// OP_ADDRESS	345	146	3219
// OP_STOREP_FNC	3204	3219	0
// OP_ADDRESS	345	129	3220
// OP_STOREP_S	3221	3220	0
// OP_ADDRESS	345	148	3222
// OP_STOREP_FNC	519	3222	0
// OP_ADDRESS	345	150	3223
// OP_ADD_F	31	314	3224
// OP_STOREP_F	3224	3223	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3225	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3207	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	345	113	3226
// OP_MUL_VF	3210	1168	3229
// OP_STOREP_V	3229	3226	0
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
    newmis.nextthink = time + TE_LIGHTNING2;
    setmodel(newmis, "progs/spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, org);
    newmis.velocity = dir * 1000;
};

// W_FireSuperSpikes
// function begins at statement 4231, parm_start=3233
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2623	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	373	3237
// OP_ADD_F	31	836	3238
// OP_STOREP_F	3238	3237	0
// OP_ADDRESS	28	157	3239
// OP_ADDRESS	28	159	3240
// OP_LOAD_F	28	159	3241
// OP_SUB_F	3241	2257	3242
// OP_STOREP_F	3242	3240	0
// OP_STOREP_F	3242	3239	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1168	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	3233	0
// OP_LOAD_V	28	105	3243
// OP_ADD_V	3243	2644	3246
// OP_STORE_V	3246	4	0
// OP_STORE_V	3233	7	0
// OP_CALL2	3206	0	0
// OP_ADDRESS	345	146	3249
// OP_STOREP_FNC	3205	3249	0
// OP_STORE_V	345	4	0
// OP_STORE_V	3250	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	126	3251
// OP_STOREP_F	277	3251	0
// OP_DONE	0	0	0
void () W_FireSuperSpikes = 
{
    local vector dir;
    local entity old;
    sound(self, CHAN_WEAPON, "weapons/spike2.wav", WEAPON_SHOTGUN, ATTN_NORM);
    self.attack_finished = time + 0.2;
    self.currentammo = self.ammo_nails = self.ammo_nails - WEAPON_ROCKET;
    dir = aim(self, 1000);
    launch_spike(self.origin + '0 0 16', dir);
    newmis.touch = superspike_touch;
    setmodel(newmis, "progs/s_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    self.punchangle_x = CONTENT_SOLID;
};

// W_FireSpikes
// function begins at statement 4267, parm_start=3253
// OP_LOAD_V	28	175	3258
// OP_STORE_V	3258	4	0
// OP_CALL1	447	0	0
// OP_LOAD_F	28	159	3261
// OP_GE	3261	2257	3262
// OP_LOAD_F	28	154	3263
// OP_EQ_F	3263	257	3264
// OP_AND	3262	3264	3265
// OP_IFNOT	3265	3	0
// OP_CALL0	3232	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	159	3266
// OP_LT	3266	2256	3267
// OP_IFNOT	3267	6	0
// OP_ADDRESS	28	154	3268
// OP_CALL0	2034	0	0
// OP_STOREP_F	1	3268	0
// OP_CALL0	1800	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	2617	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	373	3269
// OP_ADD_F	31	836	3270
// OP_STOREP_F	3270	3269	0
// OP_ADDRESS	28	157	3271
// OP_ADDRESS	28	159	3272
// OP_LOAD_F	28	159	3273
// OP_SUB_F	3273	2256	3274
// OP_STOREP_F	3274	3272	0
// OP_STOREP_F	3274	3271	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1168	7	0
// OP_CALL2	486	0	0
// OP_STORE_V	1	3254	0
// OP_LOAD_V	28	105	3275
// OP_ADD_V	3275	2644	3278
// OP_MUL_VF	65	3253	3281
// OP_ADD_V	3278	3281	3284
// OP_STORE_V	3284	4	0
// OP_STORE_V	3254	7	0
// OP_CALL2	3206	0	0
// OP_ADDRESS	28	126	3287
// OP_STOREP_F	277	3287	0
// OP_DONE	0	0	0
void (float ox) W_FireSpikes = 
{
    local vector dir;
    local entity old;
    makevectors(self.v_angle);
    
    if((self.ammo_nails >= WEAPON_ROCKET) && (self.weapon == IT_SUPER_NAILGUN))
    {
        W_FireSuperSpikes();
        return;
    }
    
    
    if(self.ammo_nails < WEAPON_SHOTGUN)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/rocket1i.wav", WEAPON_SHOTGUN, ATTN_NORM);
    self.attack_finished = time + 0.2;
    self.currentammo = self.ammo_nails = self.ammo_nails - WEAPON_SHOTGUN;
    dir = aim(self, 1000);
    launch_spike((self.origin + '0 0 16') + (v_right * ox), dir);
    self.punchangle_x = CONTENT_SOLID;
};

.float hit_z;
// spike_touch
// function begins at statement 4315, parm_start=3289
// OP_LOAD_ENT	28	201	3290
// OP_EQ_E	29	3290	3291
// OP_IFNOT	3291	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	3292
// OP_EQ_F	3292	238	3293
// OP_IFNOT	3293	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3294
// OP_STORE_V	3294	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	3297
// OP_IFNOT	3297	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3298
// OP_IFNOT	3298	10	0
// OP_STORE_V	317	4	0
// OP_CALL1	2741	0	0
// OP_LOAD_ENT	28	201	3299
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	3299	10	0
// OP_STORE_V	317	13	0
// OP_CALL4	520	0	0
// OP_GOTO	33	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_LOAD_S	28	129	3300
// OP_EQ_S	3300	3301	3302
// OP_IFNOT	3302	5	0
// OP_STORE_V	337	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	493	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	28	129	3303
// OP_EQ_S	3303	3304	3305
// OP_IFNOT	3305	5	0
// OP_STORE_V	337	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	493	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	308	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	3306
// OP_STORE_V	337	4	0
// OP_STORE_V	3306	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	3307
// OP_STORE_V	337	4	0
// OP_STORE_V	3307	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	3308
// OP_STORE_V	337	4	0
// OP_STORE_V	3308	7	0
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
        spawn_touchblood(TE_LIGHTNING3);
        T_Damage(other, self, self.owner, TE_LIGHTNING3);
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
// function begins at statement 4377, parm_start=3309
// OP_LOAD_ENT	28	201	3310
// OP_EQ_E	29	3310	3311
// OP_IFNOT	3311	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	3312
// OP_EQ_F	3312	238	3313
// OP_IFNOT	3313	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3314
// OP_STORE_V	3314	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	3317
// OP_IFNOT	3317	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3318
// OP_IFNOT	3318	10	0
// OP_STORE_V	3319	4	0
// OP_CALL1	2741	0	0
// OP_LOAD_ENT	28	201	3320
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	3320	10	0
// OP_STORE_V	3319	13	0
// OP_CALL4	520	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	309	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	3321
// OP_STORE_V	337	4	0
// OP_STORE_V	3321	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	3322
// OP_STORE_V	337	4	0
// OP_STORE_V	3322	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	3323
// OP_STORE_V	337	4	0
// OP_STORE_V	3323	7	0
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
// function begins at statement 4425, parm_start=3324
// OP_CALL0	2612	0	0
// OP_ADDRESS	28	162	3324
// OP_LOAD_F	28	162	3325
// OP_LOAD_F	28	162	3326
// OP_BITOR	262	263	3327
// OP_BITOR	3327	264	3328
// OP_BITOR	3328	265	3329
// OP_BITAND	3326	3329	3330
// OP_SUB_F	3325	3330	3331
// OP_STOREP_F	3331	3324	0
// OP_LOAD_F	28	154	3332
// OP_EQ_F	3332	253	3333
// OP_IFNOT	3333	8	0
// OP_ADDRESS	28	157	3334
// OP_STOREP_F	337	3334	0
// OP_ADDRESS	28	155	3335
// OP_STOREP_S	3336	3335	0
// OP_ADDRESS	28	156	3337
// OP_STOREP_F	337	3337	0
// OP_GOTO	112	0	0
// OP_LOAD_F	28	154	3338
// OP_EQ_F	3338	254	3339
// OP_IFNOT	3339	13	0
// OP_ADDRESS	28	157	3340
// OP_LOAD_F	28	158	3341
// OP_STOREP_F	3341	3340	0
// OP_ADDRESS	28	155	3342
// OP_STOREP_S	3343	3342	0
// OP_ADDRESS	28	156	3344
// OP_STOREP_F	337	3344	0
// OP_ADDRESS	28	162	3345
// OP_LOAD_F	28	162	3346
// OP_BITOR	3346	262	3347
// OP_STOREP_F	3347	3345	0
// OP_GOTO	97	0	0
// OP_LOAD_F	28	154	3348
// OP_EQ_F	3348	255	3349
// OP_IFNOT	3349	13	0
// OP_ADDRESS	28	157	3350
// OP_LOAD_F	28	158	3351
// OP_STOREP_F	3351	3350	0
// OP_ADDRESS	28	155	3352
// OP_STOREP_S	3353	3352	0
// OP_ADDRESS	28	156	3354
// OP_STOREP_F	337	3354	0
// OP_ADDRESS	28	162	3355
// OP_LOAD_F	28	162	3356
// OP_BITOR	3356	262	3357
// OP_STOREP_F	3357	3355	0
// OP_GOTO	82	0	0
// OP_LOAD_F	28	154	3358
// OP_EQ_F	3358	256	3359
// OP_IFNOT	3359	13	0
// OP_ADDRESS	28	157	3360
// OP_LOAD_F	28	159	3361
// OP_STOREP_F	3361	3360	0
// OP_ADDRESS	28	155	3362
// OP_STOREP_S	3363	3362	0
// OP_ADDRESS	28	156	3364
// OP_STOREP_F	337	3364	0
// OP_ADDRESS	28	162	3365
// OP_LOAD_F	28	162	3366
// OP_BITOR	3366	263	3367
// OP_STOREP_F	3367	3365	0
// OP_GOTO	67	0	0
// OP_LOAD_F	28	154	3368
// OP_EQ_F	3368	257	3369
// OP_IFNOT	3369	13	0
// OP_ADDRESS	28	157	3370
// OP_LOAD_F	28	159	3371
// OP_STOREP_F	3371	3370	0
// OP_ADDRESS	28	155	3372
// OP_STOREP_S	3373	3372	0
// OP_ADDRESS	28	156	3374
// OP_STOREP_F	337	3374	0
// OP_ADDRESS	28	162	3375
// OP_LOAD_F	28	162	3376
// OP_BITOR	3376	263	3377
// OP_STOREP_F	3377	3375	0
// OP_GOTO	52	0	0
// OP_LOAD_F	28	154	3378
// OP_EQ_F	3378	258	3379
// OP_IFNOT	3379	13	0
// OP_ADDRESS	28	157	3380
// OP_LOAD_F	28	160	3381
// OP_STOREP_F	3381	3380	0
// OP_ADDRESS	28	155	3382
// OP_STOREP_S	3383	3382	0
// OP_ADDRESS	28	156	3384
// OP_STOREP_F	337	3384	0
// OP_ADDRESS	28	162	3385
// OP_LOAD_F	28	162	3386
// OP_BITOR	3386	264	3387
// OP_STOREP_F	3387	3385	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	3388
// OP_EQ_F	3388	259	3389
// OP_IFNOT	3389	13	0
// OP_ADDRESS	28	157	3390
// OP_LOAD_F	28	160	3391
// OP_STOREP_F	3391	3390	0
// OP_ADDRESS	28	155	3392
// OP_STOREP_S	3393	3392	0
// OP_ADDRESS	28	156	3394
// OP_STOREP_F	337	3394	0
// OP_ADDRESS	28	162	3395
// OP_LOAD_F	28	162	3396
// OP_BITOR	3396	264	3397
// OP_STOREP_F	3397	3395	0
// OP_GOTO	22	0	0
// OP_LOAD_F	28	154	3398
// OP_EQ_F	3398	260	3399
// OP_IFNOT	3399	13	0
// OP_ADDRESS	28	157	3400
// OP_LOAD_F	28	161	3401
// OP_STOREP_F	3401	3400	0
// OP_ADDRESS	28	155	3402
// OP_STOREP_S	3403	3402	0
// OP_ADDRESS	28	156	3404
// OP_STOREP_F	337	3404	0
// OP_ADDRESS	28	162	3405
// OP_LOAD_F	28	162	3406
// OP_BITOR	3406	265	3407
// OP_STOREP_F	3407	3405	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	157	3408
// OP_STOREP_F	337	3408	0
// OP_ADDRESS	28	155	3409
// OP_STOREP_S	569	3409	0
// OP_ADDRESS	28	156	3410
// OP_STOREP_F	337	3410	0
// OP_DONE	0	0	0
void () W_SetCurrentAmmo = 
{
    player_run();
    self.items = self.items - (self.items & (((IT_SHELLS | IT_NAILS) | IT_ROCKETS) | IT_CELLS));
    if(self.weapon == IT_AXE)
    {
        self.currentammo = MSG_BROADCAST;
        self.weaponmodel = "progs/v_axe.mdl";
        self.weaponframe = MSG_BROADCAST;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            self.currentammo = self.ammo_shells;
            self.weaponmodel = "progs/v_shot.mdl";
            self.weaponframe = MSG_BROADCAST;
            self.items = self.items | IT_SHELLS;
        }
        else
        {
            if(self.weapon == IT_SUPER_SHOTGUN)
            {
                self.currentammo = self.ammo_shells;
                self.weaponmodel = "progs/v_shot2.mdl";
                self.weaponframe = MSG_BROADCAST;
                self.items = self.items | IT_SHELLS;
            }
            else
            {
                if(self.weapon == IT_NAILGUN)
                {
                    self.currentammo = self.ammo_nails;
                    self.weaponmodel = "progs/v_nail.mdl";
                    self.weaponframe = MSG_BROADCAST;
                    self.items = self.items | IT_NAILS;
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.currentammo = self.ammo_nails;
                        self.weaponmodel = "progs/v_nail2.mdl";
                        self.weaponframe = MSG_BROADCAST;
                        self.items = self.items | IT_NAILS;
                    }
                    else
                    {
                        if(self.weapon == IT_GRENADE_LAUNCHER)
                        {
                            self.currentammo = self.ammo_rockets;
                            self.weaponmodel = "progs/v_rock.mdl";
                            self.weaponframe = MSG_BROADCAST;
                            self.items = self.items | IT_ROCKETS;
                        }
                        else
                        {
                            if(self.weapon == IT_ROCKET_LAUNCHER)
                            {
                                self.currentammo = self.ammo_rockets;
                                self.weaponmodel = "progs/v_rock2.mdl";
                                self.weaponframe = MSG_BROADCAST;
                                self.items = self.items | IT_ROCKETS;
                            }
                            else
                            {
                                if(self.weapon == IT_LIGHTNING)
                                {
                                    self.currentammo = self.ammo_cells;
                                    self.weaponmodel = "progs/v_light.mdl";
                                    self.weaponframe = MSG_BROADCAST;
                                    self.items = self.items | IT_CELLS;
                                }
                                else
                                {
                                    self.currentammo = MSG_BROADCAST;
                                    self.weaponmodel = "";
                                    self.weaponframe = MSG_BROADCAST;
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
// function begins at statement 4557, parm_start=3411
// OP_LOAD_F	28	162	3412
// OP_STORE_F	3412	3411	0
// OP_LOAD_F	28	189	3413
// OP_LE	3413	2256	3414
// OP_LOAD_F	28	161	3415
// OP_GE	3415	2256	3416
// OP_AND	3414	3416	3417
// OP_BITAND	3411	260	3418
// OP_AND	3417	3418	3419
// OP_IFNOT	3419	2	0
// OP_RETURN	260	0	0
// OP_LOAD_F	28	159	3420
// OP_GE	3420	2257	3421
// OP_BITAND	3411	257	3422
// OP_AND	3421	3422	3423
// OP_IFNOT	3423	2	0
// OP_RETURN	257	0	0
// OP_LOAD_F	28	158	3424
// OP_GE	3424	2257	3425
// OP_BITAND	3411	255	3426
// OP_AND	3425	3426	3427
// OP_IFNOT	3427	2	0
// OP_RETURN	255	0	0
// OP_LOAD_F	28	159	3428
// OP_GE	3428	2256	3429
// OP_BITAND	3411	256	3430
// OP_AND	3429	3430	3431
// OP_IFNOT	3431	2	0
// OP_RETURN	256	0	0
// OP_LOAD_F	28	158	3432
// OP_GE	3432	2256	3433
// OP_BITAND	3411	254	3434
// OP_AND	3433	3434	3435
// OP_IFNOT	3435	2	0
// OP_RETURN	254	0	0
// OP_RETURN	253	0	0
// OP_DONE	0	0	0
float () W_BestWeapon = 
{
    local float it;
    it = self.items;
    
    if(((self.waterlevel <= WEAPON_SHOTGUN) && (self.ammo_cells >= WEAPON_SHOTGUN)) && (it & IT_LIGHTNING))
    {
        return IT_LIGHTNING;
    }
    
    
    if((self.ammo_nails >= WEAPON_ROCKET) && (it & IT_SUPER_NAILGUN))
    {
        return IT_SUPER_NAILGUN;
    }
    
    
    if((self.ammo_shells >= WEAPON_ROCKET) && (it & IT_SUPER_SHOTGUN))
    {
        return IT_SUPER_SHOTGUN;
    }
    
    
    if((self.ammo_nails >= WEAPON_SHOTGUN) && (it & IT_NAILGUN))
    {
        return IT_NAILGUN;
    }
    
    
    if((self.ammo_shells >= WEAPON_SHOTGUN) && (it & IT_SHOTGUN))
    {
        return IT_SHOTGUN;
    }
    
    return IT_AXE;
};

// W_CheckNoAmmo
// function begins at statement 4594, parm_start=3437
// OP_LOAD_F	28	157	3437
// OP_GT	3437	337	3438
// OP_IFNOT	3438	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	154	3439
// OP_EQ_F	3439	253	3440
// OP_IFNOT	3440	2	0
// OP_RETURN	214	0	0
// OP_ADDRESS	28	154	3441
// OP_CALL0	2034	0	0
// OP_STOREP_F	1	3441	0
// OP_CALL0	1800	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () W_CheckNoAmmo = 
{
    
    if(self.currentammo > MSG_BROADCAST)
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
// function begins at statement 4608, parm_start=3451
// OP_CALL0	3436	0	0
// OP_NOT_F	1	0	3452
// OP_IFNOT	3452	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	175	3453
// OP_STORE_V	3453	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	388	3456
// OP_ADD_F	31	2256	3457
// OP_STOREP_F	3457	3456	0
// OP_LOAD_F	28	154	3458
// OP_EQ_F	3458	253	3459
// OP_IFNOT	3459	26	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3460	10	0
// OP_STORE_V	2256	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_STORE_F	1	3451	0
// OP_LT	3451	3461	3462
// OP_IFNOT	3462	3	0
// OP_CALL0	3442	0	0
// OP_GOTO	10	0	0
// OP_LT	3451	1491	3463
// OP_IFNOT	3463	3	0
// OP_CALL0	3443	0	0
// OP_GOTO	6	0	0
// OP_LT	3451	3464	3465
// OP_IFNOT	3465	3	0
// OP_CALL0	3444	0	0
// OP_GOTO	2	0	0
// OP_CALL0	3445	0	0
// OP_ADDRESS	28	373	3466
// OP_ADD_F	31	1491	3467
// OP_STOREP_F	3467	3466	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	3468
// OP_EQ_F	3468	254	3469
// OP_IFNOT	3469	7	0
// OP_CALL0	3446	0	0
// OP_CALL0	2877	0	0
// OP_ADDRESS	28	373	3470
// OP_ADD_F	31	1491	3471
// OP_STOREP_F	3471	3470	0
// OP_GOTO	51	0	0
// OP_LOAD_F	28	154	3472
// OP_EQ_F	3472	255	3473
// OP_IFNOT	3473	7	0
// OP_CALL0	3446	0	0
// OP_CALL0	2890	0	0
// OP_ADDRESS	28	373	3474
// OP_ADD_F	31	2851	3475
// OP_STOREP_F	3475	3474	0
// OP_GOTO	42	0	0
// OP_LOAD_F	28	154	3476
// OP_EQ_F	3476	256	3477
// OP_IFNOT	3477	3	0
// OP_CALL0	3447	0	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	3478
// OP_EQ_F	3478	257	3479
// OP_IFNOT	3479	3	0
// OP_CALL0	3447	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	154	3480
// OP_EQ_F	3480	258	3481
// OP_IFNOT	3481	7	0
// OP_CALL0	3449	0	0
// OP_CALL0	3122	0	0
// OP_ADDRESS	28	373	3482
// OP_ADD_F	31	1959	3483
// OP_STOREP_F	3483	3482	0
// OP_GOTO	23	0	0
// OP_LOAD_F	28	154	3484
// OP_EQ_F	3484	259	3485
// OP_IFNOT	3485	7	0
// OP_CALL0	3449	0	0
// OP_CALL0	2952	0	0
// OP_ADDRESS	28	373	3486
// OP_ADD_F	31	1964	3487
// OP_STOREP_F	3487	3486	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	154	3488
// OP_EQ_F	3488	260	3489
// OP_IFNOT	3489	11	0
// OP_CALL0	3448	0	0
// OP_ADDRESS	28	373	3490
// OP_ADD_F	31	603	3491
// OP_STOREP_F	3491	3490	0
// OP_STORE_V	28	4	0
// OP_STORE_V	320	7	0
// OP_STORE_V	3492	10	0
// OP_STORE_V	2256	13	0
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
    self.show_hostile = time + WEAPON_SHOTGUN;
    if(self.weapon == IT_AXE)
    {
        sound(self, CHAN_WEAPON, "weapons/ax1.wav", WEAPON_SHOTGUN, ATTN_NORM);
        r = random();
        if(r < 0.25)
        {
            player_axe1();
        }
        else
        {
            if(r < 0.5)
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
        
        self.attack_finished = time + 0.5;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            player_shot1();
            W_FireShotgun();
            self.attack_finished = time + 0.5;
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
                                    sound(self, CHAN_AUTO, "weapons/lstart.wav", WEAPON_SHOTGUN, ATTN_NORM);
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
// function begins at statement 4706, parm_start=3494
// OP_LOAD_F	28	162	3497
// OP_STORE_F	3497	3494	0
// OP_STORE_F	337	3495	0
// OP_LOAD_F	28	173	3498
// OP_EQ_F	3498	2256	3499
// OP_IFNOT	3499	3	0
// OP_STORE_F	253	3496	0
// OP_GOTO	63	0	0
// OP_LOAD_F	28	173	3500
// OP_EQ_F	3500	2257	3501
// OP_IFNOT	3501	7	0
// OP_STORE_F	254	3496	0
// OP_LOAD_F	28	158	3502
// OP_LT	3502	2256	3503
// OP_IFNOT	3503	2	0
// OP_STORE_F	2256	3495	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	173	3504
// OP_EQ_F	3504	370	3505
// OP_IFNOT	3505	7	0
// OP_STORE_F	255	3496	0
// OP_LOAD_F	28	158	3506
// OP_LT	3506	2257	3507
// OP_IFNOT	3507	2	0
// OP_STORE_F	2256	3495	0
// OP_GOTO	45	0	0
// OP_LOAD_F	28	173	3508
// OP_EQ_F	3508	2258	3509
// OP_IFNOT	3509	7	0
// OP_STORE_F	256	3496	0
// OP_LOAD_F	28	159	3510
// OP_LT	3510	2256	3511
// OP_IFNOT	3511	2	0
// OP_STORE_F	2256	3495	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	173	3512
// OP_EQ_F	3512	313	3513
// OP_IFNOT	3513	7	0
// OP_STORE_F	257	3496	0
// OP_LOAD_F	28	159	3514
// OP_LT	3514	2257	3515
// OP_IFNOT	3515	2	0
// OP_STORE_F	2256	3495	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	3516
// OP_EQ_F	3516	314	3517
// OP_IFNOT	3517	7	0
// OP_STORE_F	258	3496	0
// OP_LOAD_F	28	160	3518
// OP_LT	3518	2256	3519
// OP_IFNOT	3519	2	0
// OP_STORE_F	2256	3495	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	173	3520
// OP_EQ_F	3520	315	3521
// OP_IFNOT	3521	7	0
// OP_STORE_F	259	3496	0
// OP_LOAD_F	28	160	3522
// OP_LT	3522	2256	3523
// OP_IFNOT	3523	2	0
// OP_STORE_F	2256	3495	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	173	3524
// OP_EQ_F	3524	2259	3525
// OP_IFNOT	3525	6	0
// OP_STORE_F	260	3496	0
// OP_LOAD_F	28	161	3526
// OP_LT	3526	2256	3527
// OP_IFNOT	3527	2	0
// OP_STORE_F	2256	3495	0
// OP_ADDRESS	28	173	3528
// OP_STOREP_F	337	3528	0
// OP_LOAD_F	28	162	3529
// OP_BITAND	3529	3496	3530
// OP_NOT_F	3530	0	3531
// OP_IFNOT	3531	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3532	7	0
// OP_CALL2	469	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	3495	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3533	7	0
// OP_CALL2	469	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	154	3534
// OP_STOREP_F	3496	3534	0
// OP_CALL0	1800	0	0
// OP_DONE	0	0	0
void () W_ChangeWeapon = 
{
    local float it;
    local float am;
    local float fl;
    it = self.items;
    am = MSG_BROADCAST;
    if(self.impulse == WEAPON_SHOTGUN)
    {
        fl = IT_AXE;
    }
    else
    {
        if(self.impulse == WEAPON_ROCKET)
        {
            fl = IT_SHOTGUN;
            
            if(self.ammo_shells < WEAPON_SHOTGUN)
            {
                am = WEAPON_SHOTGUN;
            }
            
        }
        else
        {
            if(self.impulse == AS_MELEE)
            {
                fl = IT_SUPER_SHOTGUN;
                
                if(self.ammo_shells < WEAPON_ROCKET)
                {
                    am = WEAPON_SHOTGUN;
                }
                
            }
            else
            {
                if(self.impulse == WEAPON_SPIKES)
                {
                    fl = IT_NAILGUN;
                    
                    if(self.ammo_nails < WEAPON_SHOTGUN)
                    {
                        am = WEAPON_SHOTGUN;
                    }
                    
                }
                else
                {
                    if(self.impulse == TE_LIGHTNING1)
                    {
                        fl = IT_SUPER_NAILGUN;
                        
                        if(self.ammo_nails < WEAPON_ROCKET)
                        {
                            am = WEAPON_SHOTGUN;
                        }
                        
                    }
                    else
                    {
                        if(self.impulse == TE_LIGHTNING2)
                        {
                            fl = IT_GRENADE_LAUNCHER;
                            
                            if(self.ammo_rockets < WEAPON_SHOTGUN)
                            {
                                am = WEAPON_SHOTGUN;
                            }
                            
                        }
                        else
                        {
                            if(self.impulse == TE_WIZSPIKE)
                            {
                                fl = IT_ROCKET_LAUNCHER;
                                
                                if(self.ammo_rockets < WEAPON_SHOTGUN)
                                {
                                    am = WEAPON_SHOTGUN;
                                }
                                
                            }
                            else
                            {
                                
                                if(self.impulse == WEAPON_BIG)
                                {
                                    fl = IT_LIGHTNING;
                                    
                                    if(self.ammo_cells < WEAPON_SHOTGUN)
                                    {
                                        am = WEAPON_SHOTGUN;
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    self.impulse = MSG_BROADCAST;
    
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
// function begins at statement 4795, parm_start=3536
// OP_IFNOT	35	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	160	3536
// OP_STOREP_F	1884	3536	0
// OP_ADDRESS	28	159	3537
// OP_STOREP_F	1965	3537	0
// OP_ADDRESS	28	158	3538
// OP_STOREP_F	1884	3538	0
// OP_ADDRESS	28	162	3539
// OP_LOAD_F	28	162	3540
// OP_BITOR	3540	253	3541
// OP_BITOR	3541	254	3542
// OP_BITOR	3542	255	3543
// OP_BITOR	3543	256	3544
// OP_BITOR	3544	257	3545
// OP_BITOR	3545	258	3546
// OP_BITOR	3546	259	3547
// OP_BITOR	3547	270	3548
// OP_BITOR	3548	271	3549
// OP_STOREP_F	3549	3539	0
// OP_ADDRESS	28	161	3550
// OP_STOREP_F	1965	3550	0
// OP_ADDRESS	28	162	3551
// OP_LOAD_F	28	162	3552
// OP_BITOR	3552	260	3553
// OP_STOREP_F	3553	3551	0
// OP_ADDRESS	28	154	3554
// OP_STOREP_F	259	3554	0
// OP_ADDRESS	28	173	3555
// OP_STOREP_F	337	3555	0
// OP_CALL0	1800	0	0
// OP_DONE	0	0	0
void () CheatCommand = 
{
    
    if(deathmatch)
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
    self.impulse = MSG_BROADCAST;
    W_SetCurrentAmmo();
};

// CycleWeaponCommand
// function begins at statement 4827, parm_start=3557
// OP_LOAD_F	28	162	3559
// OP_STORE_F	3559	3557	0
// OP_ADDRESS	28	173	3560
// OP_STOREP_F	337	3560	0
// OP_IFNOT	2256	85	0
// OP_STORE_F	337	3558	0
// OP_LOAD_F	28	154	3561
// OP_EQ_F	3561	260	3562
// OP_IFNOT	3562	4	0
// OP_ADDRESS	28	154	3563
// OP_STOREP_F	253	3563	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	154	3564
// OP_EQ_F	3564	253	3565
// OP_IFNOT	3565	8	0
// OP_ADDRESS	28	154	3566
// OP_STOREP_F	254	3566	0
// OP_LOAD_F	28	158	3567
// OP_LT	3567	2256	3568
// OP_IFNOT	3568	2	0
// OP_STORE_F	2256	3558	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	3569
// OP_EQ_F	3569	254	3570
// OP_IFNOT	3570	8	0
// OP_ADDRESS	28	154	3571
// OP_STOREP_F	255	3571	0
// OP_LOAD_F	28	158	3572
// OP_LT	3572	2257	3573
// OP_IFNOT	3573	2	0
// OP_STORE_F	2256	3558	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	154	3574
// OP_EQ_F	3574	255	3575
// OP_IFNOT	3575	8	0
// OP_ADDRESS	28	154	3576
// OP_STOREP_F	256	3576	0
// OP_LOAD_F	28	159	3577
// OP_LT	3577	2256	3578
// OP_IFNOT	3578	2	0
// OP_STORE_F	2256	3558	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	154	3579
// OP_EQ_F	3579	256	3580
// OP_IFNOT	3580	8	0
// OP_ADDRESS	28	154	3581
// OP_STOREP_F	257	3581	0
// OP_LOAD_F	28	159	3582
// OP_LT	3582	2257	3583
// OP_IFNOT	3583	2	0
// OP_STORE_F	2256	3558	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	154	3584
// OP_EQ_F	3584	257	3585
// OP_IFNOT	3585	8	0
// OP_ADDRESS	28	154	3586
// OP_STOREP_F	258	3586	0
// OP_LOAD_F	28	160	3587
// OP_LT	3587	2256	3588
// OP_IFNOT	3588	2	0
// OP_STORE_F	2256	3558	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	154	3589
// OP_EQ_F	3589	258	3590
// OP_IFNOT	3590	8	0
// OP_ADDRESS	28	154	3591
// OP_STOREP_F	259	3591	0
// OP_LOAD_F	28	160	3592
// OP_LT	3592	2256	3593
// OP_IFNOT	3593	2	0
// OP_STORE_F	2256	3558	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	3594
// OP_EQ_F	3594	259	3595
// OP_IFNOT	3595	7	0
// OP_ADDRESS	28	154	3596
// OP_STOREP_F	260	3596	0
// OP_LOAD_F	28	161	3597
// OP_LT	3597	2256	3598
// OP_IFNOT	3598	2	0
// OP_STORE_F	2256	3558	0
// OP_LOAD_F	28	154	3599
// OP_BITAND	3557	3599	3600
// OP_EQ_F	3558	337	3601
// OP_AND	3600	3601	3602
// OP_IFNOT	3602	3	0
// OP_CALL0	1800	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-84	0	0
// OP_DONE	0	0	0
void () CycleWeaponCommand = 
{
    local float it;
    local float am;
    it = self.items;
    self.impulse = MSG_BROADCAST;
    
    while(WEAPON_SHOTGUN)
    {
        am = MSG_BROADCAST;
        if(self.weapon == IT_LIGHTNING)
        {
            self.weapon = IT_AXE;
        }
        else
        {
            if(self.weapon == IT_AXE)
            {
                self.weapon = IT_SHOTGUN;
                
                if(self.ammo_shells < WEAPON_SHOTGUN)
                {
                    am = WEAPON_SHOTGUN;
                }
                
            }
            else
            {
                if(self.weapon == IT_SHOTGUN)
                {
                    self.weapon = IT_SUPER_SHOTGUN;
                    
                    if(self.ammo_shells < WEAPON_ROCKET)
                    {
                        am = WEAPON_SHOTGUN;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_SHOTGUN)
                    {
                        self.weapon = IT_NAILGUN;
                        
                        if(self.ammo_nails < WEAPON_SHOTGUN)
                        {
                            am = WEAPON_SHOTGUN;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_NAILGUN)
                        {
                            self.weapon = IT_SUPER_NAILGUN;
                            
                            if(self.ammo_nails < WEAPON_ROCKET)
                            {
                                am = WEAPON_SHOTGUN;
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_SUPER_NAILGUN)
                            {
                                self.weapon = IT_GRENADE_LAUNCHER;
                                
                                if(self.ammo_rockets < WEAPON_SHOTGUN)
                                {
                                    am = WEAPON_SHOTGUN;
                                }
                                
                            }
                            else
                            {
                                if(self.weapon == IT_GRENADE_LAUNCHER)
                                {
                                    self.weapon = IT_ROCKET_LAUNCHER;
                                    
                                    if(self.ammo_rockets < WEAPON_SHOTGUN)
                                    {
                                        am = WEAPON_SHOTGUN;
                                    }
                                    
                                }
                                else
                                {
                                    
                                    if(self.weapon == IT_ROCKET_LAUNCHER)
                                    {
                                        self.weapon = IT_LIGHTNING;
                                        
                                        if(self.ammo_cells < WEAPON_SHOTGUN)
                                        {
                                            am = WEAPON_SHOTGUN;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if((it & self.weapon) && (am == MSG_BROADCAST))
        {
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
};

// CycleWeaponReverseCommand
// function begins at statement 4917, parm_start=3604
// OP_LOAD_F	28	162	3606
// OP_STORE_F	3606	3604	0
// OP_ADDRESS	28	173	3607
// OP_STOREP_F	337	3607	0
// OP_IFNOT	2256	85	0
// OP_STORE_F	337	3605	0
// OP_LOAD_F	28	154	3608
// OP_EQ_F	3608	260	3609
// OP_IFNOT	3609	8	0
// OP_ADDRESS	28	154	3610
// OP_STOREP_F	259	3610	0
// OP_LOAD_F	28	160	3611
// OP_LT	3611	2256	3612
// OP_IFNOT	3612	2	0
// OP_STORE_F	2256	3605	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	154	3613
// OP_EQ_F	3613	259	3614
// OP_IFNOT	3614	8	0
// OP_ADDRESS	28	154	3615
// OP_STOREP_F	258	3615	0
// OP_LOAD_F	28	160	3616
// OP_LT	3616	2256	3617
// OP_IFNOT	3617	2	0
// OP_STORE_F	2256	3605	0
// OP_GOTO	56	0	0
// OP_LOAD_F	28	154	3618
// OP_EQ_F	3618	258	3619
// OP_IFNOT	3619	8	0
// OP_ADDRESS	28	154	3620
// OP_STOREP_F	257	3620	0
// OP_LOAD_F	28	159	3621
// OP_LT	3621	2257	3622
// OP_IFNOT	3622	2	0
// OP_STORE_F	2256	3605	0
// OP_GOTO	46	0	0
// OP_LOAD_F	28	154	3623
// OP_EQ_F	3623	257	3624
// OP_IFNOT	3624	8	0
// OP_ADDRESS	28	154	3625
// OP_STOREP_F	256	3625	0
// OP_LOAD_F	28	159	3626
// OP_LT	3626	2256	3627
// OP_IFNOT	3627	2	0
// OP_STORE_F	2256	3605	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	154	3628
// OP_EQ_F	3628	256	3629
// OP_IFNOT	3629	8	0
// OP_ADDRESS	28	154	3630
// OP_STOREP_F	255	3630	0
// OP_LOAD_F	28	158	3631
// OP_LT	3631	2257	3632
// OP_IFNOT	3632	2	0
// OP_STORE_F	2256	3605	0
// OP_GOTO	26	0	0
// OP_LOAD_F	28	154	3633
// OP_EQ_F	3633	255	3634
// OP_IFNOT	3634	8	0
// OP_ADDRESS	28	154	3635
// OP_STOREP_F	254	3635	0
// OP_LOAD_F	28	158	3636
// OP_LT	3636	2256	3637
// OP_IFNOT	3637	2	0
// OP_STORE_F	2256	3605	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	154	3638
// OP_EQ_F	3638	254	3639
// OP_IFNOT	3639	4	0
// OP_ADDRESS	28	154	3640
// OP_STOREP_F	253	3640	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	3641
// OP_EQ_F	3641	253	3642
// OP_IFNOT	3642	7	0
// OP_ADDRESS	28	154	3643
// OP_STOREP_F	260	3643	0
// OP_LOAD_F	28	161	3644
// OP_LT	3644	2256	3645
// OP_IFNOT	3645	2	0
// OP_STORE_F	2256	3605	0
// OP_LOAD_F	28	154	3646
// OP_BITAND	3604	3646	3647
// OP_EQ_F	3605	337	3648
// OP_AND	3647	3648	3649
// OP_IFNOT	3649	3	0
// OP_CALL0	1800	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-84	0	0
// OP_DONE	0	0	0
void () CycleWeaponReverseCommand = 
{
    local float it;
    local float am;
    it = self.items;
    self.impulse = MSG_BROADCAST;
    
    while(WEAPON_SHOTGUN)
    {
        am = MSG_BROADCAST;
        if(self.weapon == IT_LIGHTNING)
        {
            self.weapon = IT_ROCKET_LAUNCHER;
            
            if(self.ammo_rockets < WEAPON_SHOTGUN)
            {
                am = WEAPON_SHOTGUN;
            }
            
        }
        else
        {
            if(self.weapon == IT_ROCKET_LAUNCHER)
            {
                self.weapon = IT_GRENADE_LAUNCHER;
                
                if(self.ammo_rockets < WEAPON_SHOTGUN)
                {
                    am = WEAPON_SHOTGUN;
                }
                
            }
            else
            {
                if(self.weapon == IT_GRENADE_LAUNCHER)
                {
                    self.weapon = IT_SUPER_NAILGUN;
                    
                    if(self.ammo_nails < WEAPON_ROCKET)
                    {
                        am = WEAPON_SHOTGUN;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.weapon = IT_NAILGUN;
                        
                        if(self.ammo_nails < WEAPON_SHOTGUN)
                        {
                            am = WEAPON_SHOTGUN;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_NAILGUN)
                        {
                            self.weapon = IT_SUPER_SHOTGUN;
                            
                            if(self.ammo_shells < WEAPON_ROCKET)
                            {
                                am = WEAPON_SHOTGUN;
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_SUPER_SHOTGUN)
                            {
                                self.weapon = IT_SHOTGUN;
                                
                                if(self.ammo_shells < WEAPON_SHOTGUN)
                                {
                                    am = WEAPON_SHOTGUN;
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
                                        
                                        if(self.ammo_cells < WEAPON_SHOTGUN)
                                        {
                                            am = WEAPON_SHOTGUN;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if((it & self.weapon) && (am == MSG_BROADCAST))
        {
            W_SetCurrentAmmo();
            return;
        }
        
    }
    
};

// ServerflagsCommand
// function begins at statement 5007, parm_start=3651
// OP_IFNOT	35	2	0
// OP_RETURN	0	0	0
// OP_MUL_F	38	2257	3651
// OP_ADD_F	3651	2256	3652
// OP_STORE_F	3652	38	0
// OP_DONE	0	0	0
void () ServerflagsCommand = 
{
    
    if(deathmatch)
    {
        return;
    }
    
    serverflags = (serverflags * WEAPON_ROCKET) + WEAPON_SHOTGUN;
};

// QuadCheat
// function begins at statement 5013, parm_start=3654
// OP_IFNOT	35	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	383	3654
// OP_STOREP_F	2256	3654	0
// OP_ADDRESS	28	377	3655
// OP_ADD_F	31	304	3656
// OP_STOREP_F	3656	3655	0
// OP_ADDRESS	28	162	3657
// OP_LOAD_F	28	162	3658
// OP_BITOR	3658	275	3659
// OP_STOREP_F	3659	3657	0
// OP_STORE_V	3660	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () QuadCheat = 
{
    
    if(deathmatch)
    {
        return;
    }
    
    self.super_time = WEAPON_SHOTGUN;
    self.super_damage_finished = time + SVC_INTERMISSION;
    self.items = self.items | IT_QUAD;
    dprint("quad cheat\n");
};

// ImpulseCommands
// function begins at statement 5027, parm_start=3662
// OP_LOAD_F	28	173	3662
// OP_GE	3662	2256	3663
// OP_LOAD_F	28	173	3664
// OP_LE	3664	2259	3665
// OP_AND	3663	3665	3666
// OP_IFNOT	3666	2	0
// OP_CALL0	3493	0	0
// OP_LOAD_F	28	173	3667
// OP_EQ_F	3667	317	3668
// OP_IFNOT	3668	2	0
// OP_CALL0	3535	0	0
// OP_LOAD_F	28	173	3669
// OP_EQ_F	3669	318	3670
// OP_IFNOT	3670	2	0
// OP_CALL0	3556	0	0
// OP_LOAD_F	28	173	3671
// OP_EQ_F	3671	319	3672
// OP_IFNOT	3672	2	0
// OP_CALL0	3650	0	0
// OP_LOAD_F	28	173	3673
// OP_EQ_F	3673	2250	3674
// OP_IFNOT	3674	2	0
// OP_CALL0	3603	0	0
// OP_LOAD_F	28	173	3675
// OP_EQ_F	3675	3676	3677
// OP_IFNOT	3677	2	0
// OP_CALL0	3653	0	0
// OP_ADDRESS	28	173	3678
// OP_STOREP_F	337	3678	0
// OP_DONE	0	0	0
void () ImpulseCommands = 
{
    
    if((self.impulse >= WEAPON_SHOTGUN) && (self.impulse <= WEAPON_BIG))
    {
        W_ChangeWeapon();
    }
    
    
    if(self.impulse == TE_LIGHTNING3)
    {
        CheatCommand();
    }
    
    
    if(self.impulse == TE_LAVASPLASH)
    {
        CycleWeaponCommand();
    }
    
    
    if(self.impulse == TE_TELEPORT)
    {
        ServerflagsCommand();
    }
    
    
    if(self.impulse == 12)
    {
        CycleWeaponReverseCommand();
    }
    
    
    if(self.impulse == 255)
    {
        QuadCheat();
    }
    
    self.impulse = MSG_BROADCAST;
};

// W_WeaponFrame
// function begins at statement 5057, parm_start=3680
// OP_LOAD_F	28	373	3680
// OP_LT	31	3680	3681
// OP_IFNOT	3681	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	173	3682
// OP_IFNOT	3682	2	0
// OP_CALL0	3661	0	0
// OP_LOAD_F	28	170	3683
// OP_IFNOT	3683	3	0
// OP_CALL0	2614	0	0
// OP_CALL0	3450	0	0
// OP_DONE	0	0	0
void () W_WeaponFrame = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    
    if(self.impulse)
    {
        ImpulseCommands();
    }
    
    
    if(self.button0)
    {
        SuperDamageSound();
        W_Attack();
    }
    
};

// SuperDamageSound
// function begins at statement 5069, parm_start=3684
// OP_LOAD_F	28	377	3684
// OP_GT	3684	31	3685
// OP_IFNOT	3685	13	0
// OP_LOAD_F	28	384	3686
// OP_LT	3686	31	3687
// OP_IFNOT	3687	10	0
// OP_ADDRESS	28	384	3688
// OP_ADD_F	31	2256	3689
// OP_STOREP_F	3689	3688	0
// OP_STORE_V	28	4	0
// OP_STORE_V	324	7	0
// OP_STORE_V	2473	10	0
// OP_STORE_V	2256	13	0
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
            self.super_sound = time + WEAPON_SHOTGUN;
            sound(self, CHAN_BODY, "items/damage3.wav", WEAPON_SHOTGUN, ATTN_NORM);
        }
        
    }
    
    return;
};

