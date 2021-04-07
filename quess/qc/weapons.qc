void () player_run;
void () SuperDamageSound;
.float sight_out;
// W_Precache
// function begins at statement 3500, parm_start=2865
// OP_STORE_V	2865	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2866	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2867	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2868	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2869	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2870	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2871	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2872	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2873	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2874	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2875	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	2876	4	0
// OP_CALL1	465	0	0
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
// function begins at statement 3525, parm_start=2878
// OP_CALL0	453	0	0
// OP_SUB_F	1	1727	2878
// OP_MUL_F	929	2878	2879
// OP_RETURN	2879	0	0
// OP_DONE	0	0	0
float () crandom = 
{
    return 2 * (random() - 0.5);
};

// W_FireAxe
// function begins at statement 3530, parm_start=2881
// OP_LOAD_V	28	175	2887
// OP_STORE_V	2887	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	2890
// OP_ADD_V	2890	2893	2896
// OP_STORE_V	2896	2881	0
// OP_STORE_V	2881	4	0
// OP_MUL_VF	59	1684	2899
// OP_ADD_V	2881	2899	2902
// OP_STORE_V	2902	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	2905
// OP_IFNOT	2905	2	0
// OP_RETURN	0	0	0
// OP_MUL_VF	59	1835	2906
// OP_SUB_V	71	2906	2909
// OP_STORE_V	2909	2884	0
// OP_LOAD_F	78	163	2912
// OP_IFNOT	2912	13	0
// OP_ADDRESS	78	388	2913
// OP_STOREP_F	708	2913	0
// OP_STORE_V	2884	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	1017	10	0
// OP_CALL3	586	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1017	13	0
// OP_CALL4	521	0	0
// OP_GOTO	22	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2914	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	2884	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	2885	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	2886	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () W_FireAxe = 
{
    local vector source;
    local vector org;
    makevectors(self.v_angle);
    source = self.origin + '0 0 16';
    traceline(source, source + (v_forward * 64), FALSE, self);
    
    if(trace_fraction == 1)
    {
        return;
    }
    
    org = trace_endpos - (v_forward * 4);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = 1;
        SpawnBlood(org, '0 0 0', 20);
        T_Damage(trace_ent, self, self, 20);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", 1, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
};

// wall_velocity
// function begins at statement 3585, parm_start=2916
// OP_LOAD_V	28	113	2919
// OP_STORE_V	2919	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	2916	0
// OP_CALL0	453	0	0
// OP_SUB_F	1	1727	2922
// OP_MUL_VF	62	2922	2923
// OP_ADD_V	2916	2923	2926
// OP_CALL0	453	0	0
// OP_SUB_F	1	1727	2929
// OP_MUL_VF	65	2929	2930
// OP_ADD_V	2926	2930	2933
// OP_STORE_V	2933	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	2916	0
// OP_MUL_FV	929	74	2936
// OP_ADD_V	2916	2936	2939
// OP_STORE_V	2939	2916	0
// OP_MUL_VF	2916	2246	2942
// OP_STORE_V	2942	2916	0
// OP_RETURN	2916	0	0
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
// function begins at statement 3607, parm_start=2946
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	2952	0
// OP_ADDRESS	2952	201	2954
// OP_STOREP_ENT	28	2954	0
// OP_ADDRESS	2952	103	2955
// OP_STOREP_F	236	2955	0
// OP_ADDRESS	2952	104	2956
// OP_STOREP_F	238	2956	0
// OP_LOAD_V	28	117	2957
// OP_STORE_V	2957	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	2952	113	2960
// OP_STOREP_V	2949	2960	0
// OP_ADDRESS	2952	116	2963
// OP_LOAD_F	2952	116	2964
// OP_ADD_F	2964	2140	2965
// OP_CALL0	453	0	0
// OP_MUL_F	2509	1	2966
// OP_ADD_F	2965	2966	2967
// OP_STOREP_F	2967	2963	0
// OP_ADDRESS	2952	121	2968
// OP_STOREP_V	2971	2968	0
// OP_ADDRESS	2952	150	2974
// OP_ADD_F	31	708	2975
// OP_STOREP_F	2975	2974	0
// OP_ADDRESS	2952	148	2976
// OP_STOREP_FNC	520	2976	0
// OP_STORE_V	2952	4	0
// OP_STORE_V	2977	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	2952	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	2952	4	0
// OP_STORE_V	2946	7	0
// OP_CALL2	449	0	0
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
// function begins at statement 3645, parm_start=2978
// OP_STORE_V	2978	4	0
// OP_MUL_VF	2981	686	2985
// OP_STORE_V	2985	7	0
// OP_STORE_V	2988	10	0
// OP_MUL_F	2984	929	2989
// OP_STORE_V	2989	13	0
// OP_CALL4	491	0	0
// OP_DONE	0	0	0
void (vector org, vector vel, float damage) SpawnBlood = 
{
    particle(org, vel * 0.1, 73, damage * 2);
};

// spawn_touchblood
// function begins at statement 3653, parm_start=2991
// OP_CALL0	2915	0	0
// OP_MUL_VF	1	922	2995
// OP_STORE_V	2995	2992	0
// OP_LOAD_V	28	105	2998
// OP_MUL_VF	2992	3001	3002
// OP_ADD_V	2998	3002	3005
// OP_STORE_V	3005	4	0
// OP_STORE_V	2992	7	0
// OP_STORE_V	2991	10	0
// OP_CALL3	586	0	0
// OP_DONE	0	0	0
void (float damage) spawn_touchblood = 
{
    local vector vel;
    vel = wall_velocity() * 0.2;
    SpawnBlood(self.origin + (vel * 0.01), vel, damage);
};

// SpawnChunk
// function begins at statement 3664, parm_start=3009
// OP_STORE_V	3009	4	0
// OP_MUL_VF	3012	3015	3016
// OP_STORE_V	3016	7	0
// OP_STORE_V	650	10	0
// OP_STORE_V	1931	13	0
// OP_CALL4	491	0	0
// OP_DONE	0	0	0
void (vector org, vector vel) SpawnChunk = 
{
    particle(org, vel * 0.02, 0, 10);
};

entity multi_ent;
float multi_damage;
// ClearMultiDamage
// function begins at statement 3671, parm_start=3022
// OP_STORE_ENT	30	3019	0
// OP_STORE_F	650	3020	0
// OP_DONE	0	0	0
void () ClearMultiDamage = 
{
    multi_ent = world;
    multi_damage = 0;
};

// ApplyMultiDamage
// function begins at statement 3674, parm_start=3023
// OP_NOT_ENT	3019	0	3023
// OP_IFNOT	3023	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	3019	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	3020	13	0
// OP_CALL4	521	0	0
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
// function begins at statement 3683, parm_start=3025
// OP_NOT_ENT	3025	0	3027
// OP_IFNOT	3027	2	0
// OP_RETURN	0	0	0
// OP_NE_E	3025	3019	3028
// OP_IFNOT	3028	5	0
// OP_CALL0	3022	0	0
// OP_STORE_F	3026	3020	0
// OP_STORE_ENT	3025	3019	0
// OP_GOTO	3	0	0
// OP_ADD_F	3020	3026	3029
// OP_STORE_F	3029	3020	0
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
// function begins at statement 3695, parm_start=3031
// OP_CALL0	2877	0	0
// OP_MUL_VF	62	1	3041
// OP_ADD_V	3032	3041	3044
// OP_CALL0	2877	0	0
// OP_MUL_VF	65	1	3047
// OP_ADD_V	3044	3047	3050
// OP_STORE_V	3050	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	3035	0
// OP_MUL_FV	929	74	3053
// OP_ADD_V	3035	3053	3056
// OP_STORE_V	3056	3035	0
// OP_MUL_VF	3035	2246	3059
// OP_STORE_V	3059	3035	0
// OP_MUL_VF	3032	1835	3062
// OP_SUB_V	71	3062	3065
// OP_STORE_V	3065	3038	0
// OP_LOAD_F	78	163	3068
// OP_IFNOT	3068	10	0
// OP_STORE_V	3038	4	0
// OP_MUL_VF	3035	922	3069
// OP_STORE_V	3069	7	0
// OP_STORE_V	3031	10	0
// OP_CALL3	586	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3031	7	0
// OP_CALL2	3024	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	3038	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	3039	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	3040	7	0
// OP_CALL2	498	0	0
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
// function begins at statement 3739, parm_start=3073
// OP_LOAD_V	28	175	3086
// OP_STORE_V	3086	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	3089
// OP_MUL_VF	59	1931	3092
// OP_ADD_V	3089	3092	3095
// OP_STORE_V	3095	3083	0
// OP_LOAD_F	28	97	3098
// OP_LOAD_F	28	145	3099
// OP_MUL_F	3099	3100	3101
// OP_ADD_F	3098	3101	3102
// OP_STORE_F	3102	3085	0
// OP_CALL0	3021	0	0
// OP_GT	3073	650	3103
// OP_IFNOT	3103	25	0
// OP_CALL0	2877	0	0
// OP_MUL_F	1	3077	3104
// OP_MUL_FV	3104	65	3105
// OP_ADD_V	3074	3105	3108
// OP_CALL0	2877	0	0
// OP_MUL_F	1	3078	3111
// OP_MUL_FV	3111	62	3112
// OP_ADD_V	3108	3112	3115
// OP_STORE_V	3115	3080	0
// OP_STORE_V	3083	4	0
// OP_MUL_VF	3080	3118	3119
// OP_ADD_V	3083	3119	3122
// OP_STORE_V	3122	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_NE_F	70	708	3125
// OP_IFNOT	3125	4	0
// OP_STORE_V	1835	4	0
// OP_STORE_V	3080	7	0
// OP_CALL2	3030	0	0
// OP_SUB_F	3073	708	3126
// OP_STORE_F	3126	3073	0
// OP_GOTO	-25	0	0
// OP_CALL0	3022	0	0
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
// function begins at statement 3780, parm_start=3128
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2868	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	126	3131
// OP_STOREP_F	3132	3131	0
// OP_ADDRESS	28	157	3133
// OP_ADDRESS	28	158	3134
// OP_LOAD_F	28	158	3135
// OP_SUB_F	3135	708	3136
// OP_STOREP_F	3136	3134	0
// OP_STOREP_F	3136	3133	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3137	7	0
// OP_CALL2	487	0	0
// OP_STORE_V	1	3128	0
// OP_STORE_V	2107	4	0
// OP_STORE_V	3128	7	0
// OP_STORE_V	3138	10	0
// OP_CALL3	3072	0	0
// OP_DONE	0	0	0
void () W_FireShotgun = 
{
    local vector dir;
    sound(self, CHAN_WEAPON, "weapons/guncock.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
    self.currentammo = self.ammo_shells = self.ammo_shells - 1;
    dir = aim(self, 100000);
    FireBullets(6, dir, '0.04 0.04 0');
};

// W_FireSuperShotgun
// function begins at statement 3803, parm_start=3142
// OP_LOAD_F	28	157	3145
// OP_EQ_F	3145	708	3146
// OP_IFNOT	3146	3	0
// OP_CALL0	3127	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2876	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	126	3147
// OP_STOREP_F	3148	3147	0
// OP_ADDRESS	28	157	3149
// OP_ADDRESS	28	158	3150
// OP_LOAD_F	28	158	3151
// OP_SUB_F	3151	929	3152
// OP_STOREP_F	3152	3150	0
// OP_STOREP_F	3152	3149	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3137	7	0
// OP_CALL2	487	0	0
// OP_STORE_V	1	3142	0
// OP_STORE_V	3153	4	0
// OP_STORE_V	3142	7	0
// OP_STORE_V	3154	10	0
// OP_CALL3	3072	0	0
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
    FireBullets(14, dir, '0.14 0.08 0');
};

// s_explode1
// function begins at statement 3831, parm_start=3158
// OP_STATE	650	3158	0
// OP_DONE	0	0	0
void () s_explode1 = [0, s_explode2]
{
};

// s_explode2
// function begins at statement 3833, parm_start=3159
// OP_STATE	708	3159	0
// OP_DONE	0	0	0
void () s_explode2 = [1, s_explode3]
{
};

// s_explode3
// function begins at statement 3835, parm_start=3160
// OP_STATE	929	3160	0
// OP_DONE	0	0	0
void () s_explode3 = [2, s_explode4]
{
};

// s_explode4
// function begins at statement 3837, parm_start=3161
// OP_STATE	819	3161	0
// OP_DONE	0	0	0
void () s_explode4 = [3, s_explode5]
{
};

// s_explode5
// function begins at statement 3839, parm_start=3162
// OP_STATE	1835	3162	0
// OP_DONE	0	0	0
void () s_explode5 = [4, s_explode6]
{
};

// s_explode6
// function begins at statement 3841, parm_start=3163
// OP_STATE	1660	520	0
// OP_DONE	0	0	0
void () s_explode6 = [5, SUB_Remove]
{
};

// BecomeExplosion
// function begins at statement 3843, parm_start=3164
// OP_ADDRESS	28	103	3164
// OP_STOREP_F	228	3164	0
// OP_ADDRESS	28	113	3165
// OP_STOREP_V	638	3165	0
// OP_ADDRESS	28	146	3168
// OP_STOREP_FNC	518	3168	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3169	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	104	3170
// OP_STOREP_F	238	3170	0
// OP_CALL0	3157	0	0
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
// function begins at statement 3856, parm_start=3171
// OP_LOAD_ENT	28	201	3172
// OP_EQ_E	29	3172	3173
// OP_IFNOT	3173	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3174
// OP_STORE_V	3174	4	0
// OP_CALL1	485	0	0
// OP_EQ_F	1	282	3177
// OP_IFNOT	3177	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	1017	3178
// OP_ADD_F	2165	3178	3179
// OP_STORE_F	3179	3171	0
// OP_LOAD_F	29	152	3180
// OP_IFNOT	3180	12	0
// OP_LOAD_S	29	129	3181
// OP_EQ_S	3181	1334	3182
// OP_IFNOT	3182	3	0
// OP_MUL_F	3171	1727	3183
// OP_STORE_F	3183	3171	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	3184
// OP_STORE_V	3184	10	0
// OP_STORE_V	3171	13	0
// OP_CALL4	521	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	3185
// OP_STORE_V	3185	7	0
// OP_STORE_V	1255	10	0
// OP_STORE_V	29	13	0
// OP_CALL4	1994	0	0
// OP_ADDRESS	28	105	3186
// OP_LOAD_V	28	105	3189
// OP_LOAD_V	28	113	3192
// OP_STORE_V	3192	4	0
// OP_CALL1	455	0	0
// OP_MUL_FV	1502	1	3195
// OP_SUB_V	3189	3195	3198
// OP_STOREP_V	3198	3186	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	312	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	3201
// OP_STORE_V	3201	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	3202
// OP_STORE_V	3202	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	3203
// OP_STORE_V	3203	7	0
// OP_CALL2	498	0	0
// OP_CALL0	3163	0	0
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

// W_FireRocket
// function begins at statement 3919, parm_start=3205
// OP_ADDRESS	28	157	3207
// OP_ADDRESS	28	160	3208
// OP_LOAD_F	28	160	3209
// OP_SUB_F	3209	708	3210
// OP_STOREP_F	3210	3208	0
// OP_STOREP_F	3210	3207	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2867	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	126	3211
// OP_STOREP_F	3132	3211	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	3205	0
// OP_ADDRESS	3205	201	3212
// OP_STOREP_ENT	28	3212	0
// OP_ADDRESS	3205	103	3213
// OP_STOREP_F	235	3213	0
// OP_ADDRESS	3205	104	3214
// OP_STOREP_F	240	3214	0
// OP_ADDRESS	3205	129	3215
// OP_STOREP_S	3216	3215	0
// OP_LOAD_V	28	175	3217
// OP_STORE_V	3217	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	3205	113	3220
// OP_STORE_V	28	4	0
// OP_STORE_V	1259	7	0
// OP_CALL2	487	0	0
// OP_STOREP_V	1	3220	0
// OP_ADDRESS	3205	113	3223
// OP_LOAD_V	3205	113	3226
// OP_MUL_VF	3226	1259	3229
// OP_STOREP_V	3229	3223	0
// OP_ADDRESS	3205	117	3232
// OP_LOAD_V	3205	113	3235
// OP_STORE_V	3235	4	0
// OP_CALL1	493	0	0
// OP_STOREP_V	1	3232	0
// OP_ADDRESS	3205	146	3238
// OP_STOREP_FNC	1716	3238	0
// OP_ADDRESS	3205	150	3239
// OP_ADD_F	31	1660	3240
// OP_STOREP_F	3240	3239	0
// OP_ADDRESS	3205	148	3241
// OP_STOREP_FNC	520	3241	0
// OP_STORE_V	3205	4	0
// OP_STORE_V	3242	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	3205	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	3205	4	0
// OP_LOAD_V	28	105	3243
// OP_MUL_VF	59	1502	3246
// OP_ADD_V	3243	3246	3249
// OP_ADD_V	3249	2893	3252
// OP_STORE_V	3252	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () W_FireRocket = 
{
    local entity missile;
    local entity mpuff;
    self.currentammo = self.ammo_rockets = self.ammo_rockets - 1;
    sound(self, CHAN_WEAPON, "weapons/sgun1.wav", 1, ATTN_NORM);
    self.punchangle_x = -2;
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
    missile.nextthink = time + 5;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/missile.mdl");
    setsize(missile, '0 0 0', '0 0 0');
    setorigin(missile, (self.origin + (v_forward * 8)) + '0 0 16');
};

// LightningDamage
// function begins at statement 3982, parm_start=3256
// OP_SUB_V	3259	3256	3269
// OP_STORE_V	3269	3266	0
// OP_STORE_V	3266	4	0
// OP_CALL1	455	0	0
// OP_SUB_F	650	3267	3272
// OP_STORE_F	3272	3266	0
// OP_STORE_F	3266	3267	0
// OP_STORE_F	650	3268	0
// OP_MUL_VF	3266	3273	3274
// OP_STORE_V	3274	3266	0
// OP_STORE_ENT	30	3265	0
// OP_STORE_ENT	30	3264	0
// OP_STORE_V	3256	4	0
// OP_STORE_V	3259	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_LOAD_F	78	163	3277
// OP_IFNOT	3277	22	0
// OP_STORE_V	71	4	0
// OP_STORE_V	3278	7	0
// OP_STORE_V	3281	10	0
// OP_MUL_F	3263	1835	3282
// OP_STORE_V	3282	13	0
// OP_CALL4	491	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3262	7	0
// OP_STORE_V	3262	10	0
// OP_STORE_V	3263	13	0
// OP_CALL4	521	0	0
// OP_LOAD_S	28	129	3283
// OP_EQ_S	3283	797	3284
// OP_IFNOT	3284	8	0
// OP_LOAD_S	29	129	3285
// OP_EQ_S	3285	797	3286
// OP_IFNOT	3286	5	0
// OP_ADDRESS	78	116	3287
// OP_LOAD_F	78	116	3288
// OP_ADD_F	3288	3289	3290
// OP_STOREP_F	3290	3287	0
// OP_STORE_ENT	78	3264	0
// OP_ADD_V	3256	3266	3291
// OP_STORE_V	3291	4	0
// OP_ADD_V	3259	3266	3294
// OP_STORE_V	3294	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_NE_E	78	3264	3297
// OP_LOAD_F	78	163	3298
// OP_AND	3297	3298	3299
// OP_IFNOT	3299	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	3278	7	0
// OP_STORE_V	3281	10	0
// OP_MUL_F	3263	1835	3300
// OP_STORE_V	3300	13	0
// OP_CALL4	491	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3262	7	0
// OP_STORE_V	3262	10	0
// OP_STORE_V	3263	13	0
// OP_CALL4	521	0	0
// OP_STORE_ENT	78	3265	0
// OP_SUB_V	3256	3266	3301
// OP_STORE_V	3301	4	0
// OP_SUB_V	3259	3266	3304
// OP_STORE_V	3304	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_NE_E	78	3264	3307
// OP_NE_E	78	3265	3308
// OP_AND	3307	3308	3309
// OP_LOAD_F	78	163	3310
// OP_AND	3309	3310	3311
// OP_IFNOT	3311	12	0
// OP_STORE_V	71	4	0
// OP_STORE_V	3278	7	0
// OP_STORE_V	3281	10	0
// OP_MUL_F	3263	1835	3312
// OP_STORE_V	3312	13	0
// OP_CALL4	491	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	3262	7	0
// OP_STORE_V	3262	10	0
// OP_STORE_V	3263	13	0
// OP_CALL4	521	0	0
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

// W_FireLightning
// function begins at statement 4071, parm_start=3314
// OP_LOAD_F	28	161	3318
// OP_LT	3318	708	3319
// OP_IFNOT	3319	6	0
// OP_ADDRESS	28	154	3320
// OP_CALL0	2316	0	0
// OP_STOREP_F	1	3320	0
// OP_CALL0	2080	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	3321
// OP_GT	3321	708	3322
// OP_IFNOT	3322	13	0
// OP_LOAD_F	28	161	3323
// OP_STORE_F	3323	3317	0
// OP_ADDRESS	28	161	3324
// OP_STOREP_F	650	3324	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_MUL_F	3325	3317	3326
// OP_STORE_V	3326	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1994	0	0
// OP_CALL0	2080	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	401	3327
// OP_LT	3327	31	3328
// OP_IFNOT	3328	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3329	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	401	3330
// OP_ADD_F	31	2240	3331
// OP_STOREP_F	3331	3330	0
// OP_ADDRESS	28	126	3332
// OP_STOREP_F	3132	3332	0
// OP_ADDRESS	28	157	3333
// OP_ADDRESS	28	161	3334
// OP_LOAD_F	28	161	3335
// OP_SUB_F	3335	708	3336
// OP_STOREP_F	3336	3334	0
// OP_STOREP_F	3336	3333	0
// OP_LOAD_V	28	105	3337
// OP_ADD_V	3337	2893	3340
// OP_STORE_V	3340	3314	0
// OP_STORE_V	3314	4	0
// OP_MUL_VF	59	3343	3344
// OP_ADD_V	3314	3344	3347
// OP_STORE_V	3347	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	501	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	3314	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	3315	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	3316	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	72	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	73	7	0
// OP_CALL2	498	0	0
// OP_LOAD_V	28	105	3350
// OP_STORE_V	3350	4	0
// OP_MUL_VF	59	1835	3353
// OP_ADD_V	71	3353	3356
// OP_STORE_V	3356	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1004	13	0
// OP_CALL4	3255	0	0
// OP_DONE	0	0	0
void () W_FireLightning = 
{
    local vector org;
    local float cells;
    
    if(self.ammo_cells < 1)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    
    if(self.waterlevel > 1)
    {
        cells = self.ammo_cells;
        self.ammo_cells = 0;
        T_RadiusDamage(self, self, 35 * cells, world);
        W_SetCurrentAmmo();
        return;
    }
    
    
    if(self.t_width < time)
    {
        sound(self, CHAN_WEAPON, "weapons/lhit.wav", 1, ATTN_NORM);
        self.t_width = time + 0.6;
    }
    
    self.punchangle_x = -2;
    self.currentammo = self.ammo_cells = self.ammo_cells - 1;
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
    LightningDamage(self.origin, trace_endpos + (v_forward * 4), self, 30);
};

// GrenadeExplode
// function begins at statement 4160, parm_start=3360
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	3360
// OP_STORE_V	3360	7	0
// OP_STORE_V	1255	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1994	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	312	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	3361
// OP_STORE_V	3361	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	3362
// OP_STORE_V	3362	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	3363
// OP_STORE_V	3363	7	0
// OP_CALL2	498	0	0
// OP_CALL0	3163	0	0
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
// function begins at statement 4186, parm_start=3365
// OP_LOAD_ENT	28	201	3365
// OP_EQ_E	29	3365	3366
// OP_IFNOT	3366	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3367
// OP_EQ_F	3367	253	3368
// OP_IFNOT	3368	3	0
// OP_CALL0	3359	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2875	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	113	3369
// OP_EQ_V	3369	638	3372
// OP_IFNOT	3372	3	0
// OP_ADDRESS	28	121	3373
// OP_STOREP_V	638	3373	0
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
    
    sound(self, CHAN_WEAPON, "weapons/bounce.wav", 1, ATTN_NORM);
    
    if(self.velocity == '0 0 0')
    {
        self.avelocity = '0 0 0';
    }
    
};

// W_FireGrenade
// function begins at statement 4207, parm_start=3377
// OP_ADDRESS	28	157	3379
// OP_ADDRESS	28	160	3380
// OP_LOAD_F	28	160	3381
// OP_SUB_F	3381	708	3382
// OP_STOREP_F	3382	3380	0
// OP_STOREP_F	3382	3379	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2874	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	126	3383
// OP_STOREP_F	3132	3383	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	3377	0
// OP_ADDRESS	3377	201	3384
// OP_STOREP_ENT	28	3384	0
// OP_ADDRESS	3377	103	3385
// OP_STOREP_F	236	3385	0
// OP_ADDRESS	3377	104	3386
// OP_STOREP_F	240	3386	0
// OP_ADDRESS	3377	129	3387
// OP_STOREP_S	3388	3387	0
// OP_LOAD_V	28	175	3389
// OP_STORE_V	3389	4	0
// OP_CALL1	448	0	0
// OP_LOAD_F	28	176	3392
// OP_IFNOT	3392	15	0
// OP_ADDRESS	3377	113	3393
// OP_MUL_VF	59	3343	3396
// OP_MUL_VF	62	2246	3399
// OP_ADD_V	3396	3399	3402
// OP_CALL0	2877	0	0
// OP_MUL_FV	1	65	3405
// OP_MUL_VF	3405	1931	3408
// OP_ADD_V	3402	3408	3411
// OP_CALL0	2877	0	0
// OP_MUL_FV	1	62	3414
// OP_MUL_VF	3414	1931	3417
// OP_ADD_V	3411	3417	3420
// OP_STOREP_V	3420	3393	0
// OP_GOTO	12	0	0
// OP_ADDRESS	3377	113	3423
// OP_STORE_V	28	4	0
// OP_STORE_V	3426	7	0
// OP_CALL2	487	0	0
// OP_STOREP_V	1	3423	0
// OP_ADDRESS	3377	113	3427
// OP_LOAD_V	3377	113	3430
// OP_MUL_VF	3430	3343	3433
// OP_STOREP_V	3433	3427	0
// OP_ADDRESS	3377	116	3436
// OP_STOREP_F	2246	3436	0
// OP_ADDRESS	3377	121	3437
// OP_STOREP_V	3440	3437	0
// OP_ADDRESS	3377	117	3443
// OP_LOAD_V	3377	113	3446
// OP_STORE_V	3446	4	0
// OP_CALL1	493	0	0
// OP_STOREP_V	1	3443	0
// OP_ADDRESS	3377	146	3449
// OP_STOREP_FNC	3364	3449	0
// OP_ADDRESS	3377	150	3450
// OP_ADD_F	31	3451	3452
// OP_STOREP_F	3452	3450	0
// OP_ADDRESS	3377	148	3453
// OP_STOREP_FNC	3359	3453	0
// OP_STORE_V	3377	4	0
// OP_STORE_V	3454	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	3377	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	3377	4	0
// OP_LOAD_V	28	105	3455
// OP_STORE_V	3455	7	0
// OP_CALL2	449	0	0
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
    makevectors(self.v_angle);
    if(self.v_angle_x)
    {
        missile.velocity = (((v_forward * 600) + (v_up * 200)) + ((crandom() * v_right) * 10)) + ((crandom() * v_up) * 10);
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
    setsize(missile, '0 0 0', '0 0 0');
    setorigin(missile, self.origin);
};

void () spike_touch;
void () superspike_touch;
// launch_spike
// function begins at statement 4287, parm_start=3461
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	346	0
// OP_ADDRESS	346	201	3467
// OP_STOREP_ENT	28	3467	0
// OP_ADDRESS	346	103	3468
// OP_STOREP_F	235	3468	0
// OP_ADDRESS	346	104	3469
// OP_STOREP_F	240	3469	0
// OP_ADDRESS	346	117	3470
// OP_STORE_V	3464	4	0
// OP_CALL1	493	0	0
// OP_STOREP_V	1	3470	0
// OP_ADDRESS	346	146	3473
// OP_STOREP_FNC	3458	3473	0
// OP_ADDRESS	346	129	3474
// OP_STOREP_S	3475	3474	0
// OP_ADDRESS	346	148	3476
// OP_STOREP_FNC	520	3476	0
// OP_ADDRESS	346	150	3477
// OP_ADD_F	31	2107	3478
// OP_STOREP_F	3478	3477	0
// OP_STORE_V	346	4	0
// OP_STORE_V	3479	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	287	7	0
// OP_STORE_V	287	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	3461	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	346	113	3480
// OP_MUL_VF	3464	1259	3483
// OP_STOREP_V	3483	3480	0
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

// W_FireSuperSpikes
// function begins at statement 4322, parm_start=3487
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2872	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	374	3491
// OP_ADD_F	31	922	3492
// OP_STOREP_F	3492	3491	0
// OP_ADDRESS	28	157	3493
// OP_ADDRESS	28	159	3494
// OP_LOAD_F	28	159	3495
// OP_SUB_F	3495	929	3496
// OP_STOREP_F	3496	3494	0
// OP_STOREP_F	3496	3493	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1259	7	0
// OP_CALL2	487	0	0
// OP_STORE_V	1	3487	0
// OP_LOAD_V	28	105	3497
// OP_ADD_V	3497	2893	3500
// OP_STORE_V	3500	4	0
// OP_STORE_V	3487	7	0
// OP_CALL2	3460	0	0
// OP_ADDRESS	346	146	3503
// OP_STOREP_FNC	3459	3503	0
// OP_STORE_V	346	4	0
// OP_STORE_V	3504	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	287	7	0
// OP_STORE_V	287	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	126	3505
// OP_STOREP_F	3132	3505	0
// OP_DONE	0	0	0
void () W_FireSuperSpikes = 
{
    local vector dir;
    local entity old;
    sound(self, CHAN_WEAPON, "weapons/spike2.wav", 1, ATTN_NORM);
    self.attack_finished = time + 0.2;
    self.currentammo = self.ammo_nails = self.ammo_nails - 2;
    dir = aim(self, 1000);
    launch_spike(self.origin + '0 0 16', dir);
    newmis.touch = superspike_touch;
    setmodel(newmis, "progs/s_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    self.punchangle_x = -2;
};

// W_FireSpikes
// function begins at statement 4358, parm_start=3507
// OP_LOAD_V	28	175	3512
// OP_STORE_V	3512	4	0
// OP_CALL1	448	0	0
// OP_LOAD_F	28	159	3515
// OP_GE	3515	929	3516
// OP_LOAD_F	28	154	3517
// OP_EQ_F	3517	258	3518
// OP_AND	3516	3518	3519
// OP_IFNOT	3519	3	0
// OP_CALL0	3486	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	159	3520
// OP_LT	3520	708	3521
// OP_IFNOT	3521	6	0
// OP_ADDRESS	28	154	3522
// OP_CALL0	2316	0	0
// OP_STOREP_F	1	3522	0
// OP_CALL0	2080	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2866	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	374	3523
// OP_ADD_F	31	922	3524
// OP_STOREP_F	3524	3523	0
// OP_ADDRESS	28	157	3525
// OP_ADDRESS	28	159	3526
// OP_LOAD_F	28	159	3527
// OP_SUB_F	3527	708	3528
// OP_STOREP_F	3528	3526	0
// OP_STOREP_F	3528	3525	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1259	7	0
// OP_CALL2	487	0	0
// OP_STORE_V	1	3508	0
// OP_LOAD_V	28	105	3529
// OP_ADD_V	3529	2893	3532
// OP_MUL_VF	65	3507	3535
// OP_ADD_V	3532	3535	3538
// OP_STORE_V	3538	4	0
// OP_STORE_V	3508	7	0
// OP_CALL2	3460	0	0
// OP_ADDRESS	28	126	3541
// OP_STOREP_F	3132	3541	0
// OP_DONE	0	0	0
void (float ox) W_FireSpikes = 
{
    local vector dir;
    local entity old;
    makevectors(self.v_angle);
    
    if((self.ammo_nails >= 2) && (self.weapon == IT_SUPER_NAILGUN))
    {
        W_FireSuperSpikes();
        return;
    }
    
    
    if(self.ammo_nails < 1)
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
        return;
    }
    
    sound(self, CHAN_WEAPON, "weapons/rocket1i.wav", 1, ATTN_NORM);
    self.attack_finished = time + 0.2;
    self.currentammo = self.ammo_nails = self.ammo_nails - 1;
    dir = aim(self, 1000);
    launch_spike((self.origin + '0 0 16') + (v_right * ox), dir);
    self.punchangle_x = -2;
};

.float hit_z;
// spike_touch
// function begins at statement 4406, parm_start=3543
// OP_LOAD_ENT	28	201	3544
// OP_EQ_E	29	3544	3545
// OP_IFNOT	3545	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	3546
// OP_EQ_F	3546	239	3547
// OP_IFNOT	3547	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3548
// OP_STORE_V	3548	4	0
// OP_CALL1	485	0	0
// OP_EQ_F	1	282	3551
// OP_IFNOT	3551	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	526	181	3552
// OP_EQ_E	29	3552	3553
// OP_IFNOT	3553	42	0
// OP_LOAD_F	29	163	3554
// OP_IFNOT	3554	8	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	3555
// OP_STORE_V	3555	10	0
// OP_STORE_V	3556	13	0
// OP_CALL4	521	0	0
// OP_GOTO	33	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_LOAD_S	28	129	3557
// OP_EQ_S	3557	3558	3559
// OP_IFNOT	3559	5	0
// OP_STORE_V	338	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	494	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	28	129	3560
// OP_EQ_S	3560	3561	3562
// OP_IFNOT	3562	5	0
// OP_STORE_V	338	4	0
// OP_STORE_V	317	7	0
// OP_CALL2	494	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	309	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	3563
// OP_STORE_V	3563	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	3564
// OP_STORE_V	3564	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	3565
// OP_STORE_V	3565	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
    
    
    if(other == current_selected.enemy)
    {
        if(other.takedamage)
        {
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
        
    }
    
    remove(self);
};

// superspike_touch
// function begins at statement 4469, parm_start=3566
// OP_LOAD_ENT	28	201	3567
// OP_EQ_E	29	3567	3568
// OP_IFNOT	3568	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	104	3569
// OP_EQ_F	3569	239	3570
// OP_IFNOT	3570	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	3571
// OP_STORE_V	3571	4	0
// OP_CALL1	485	0	0
// OP_EQ_F	1	282	3574
// OP_IFNOT	3574	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	3575
// OP_IFNOT	3575	10	0
// OP_STORE_V	3576	4	0
// OP_CALL1	2990	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	3577
// OP_STORE_V	3577	10	0
// OP_STORE_V	3576	13	0
// OP_CALL4	521	0	0
// OP_GOTO	19	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	3578
// OP_STORE_V	3578	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	3579
// OP_STORE_V	3579	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	3580
// OP_STORE_V	3580	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
// function begins at statement 4517, parm_start=3581
// OP_CALL0	2861	0	0
// OP_ADDRESS	28	162	3581
// OP_LOAD_F	28	162	3582
// OP_LOAD_F	28	162	3583
// OP_BITOR	263	264	3584
// OP_BITOR	3584	265	3585
// OP_BITOR	3585	266	3586
// OP_BITAND	3583	3586	3587
// OP_SUB_F	3582	3587	3588
// OP_STOREP_F	3588	3581	0
// OP_LOAD_F	28	154	3589
// OP_EQ_F	3589	254	3590
// OP_IFNOT	3590	8	0
// OP_ADDRESS	28	157	3591
// OP_STOREP_F	650	3591	0
// OP_ADDRESS	28	155	3592
// OP_STOREP_S	3593	3592	0
// OP_ADDRESS	28	156	3594
// OP_STOREP_F	650	3594	0
// OP_GOTO	112	0	0
// OP_LOAD_F	28	154	3595
// OP_EQ_F	3595	255	3596
// OP_IFNOT	3596	13	0
// OP_ADDRESS	28	157	3597
// OP_LOAD_F	28	158	3598
// OP_STOREP_F	3598	3597	0
// OP_ADDRESS	28	155	3599
// OP_STOREP_S	3600	3599	0
// OP_ADDRESS	28	156	3601
// OP_STOREP_F	650	3601	0
// OP_ADDRESS	28	162	3602
// OP_LOAD_F	28	162	3603
// OP_BITOR	3603	263	3604
// OP_STOREP_F	3604	3602	0
// OP_GOTO	97	0	0
// OP_LOAD_F	28	154	3605
// OP_EQ_F	3605	256	3606
// OP_IFNOT	3606	13	0
// OP_ADDRESS	28	157	3607
// OP_LOAD_F	28	158	3608
// OP_STOREP_F	3608	3607	0
// OP_ADDRESS	28	155	3609
// OP_STOREP_S	3610	3609	0
// OP_ADDRESS	28	156	3611
// OP_STOREP_F	650	3611	0
// OP_ADDRESS	28	162	3612
// OP_LOAD_F	28	162	3613
// OP_BITOR	3613	263	3614
// OP_STOREP_F	3614	3612	0
// OP_GOTO	82	0	0
// OP_LOAD_F	28	154	3615
// OP_EQ_F	3615	257	3616
// OP_IFNOT	3616	13	0
// OP_ADDRESS	28	157	3617
// OP_LOAD_F	28	159	3618
// OP_STOREP_F	3618	3617	0
// OP_ADDRESS	28	155	3619
// OP_STOREP_S	3620	3619	0
// OP_ADDRESS	28	156	3621
// OP_STOREP_F	650	3621	0
// OP_ADDRESS	28	162	3622
// OP_LOAD_F	28	162	3623
// OP_BITOR	3623	264	3624
// OP_STOREP_F	3624	3622	0
// OP_GOTO	67	0	0
// OP_LOAD_F	28	154	3625
// OP_EQ_F	3625	258	3626
// OP_IFNOT	3626	13	0
// OP_ADDRESS	28	157	3627
// OP_LOAD_F	28	159	3628
// OP_STOREP_F	3628	3627	0
// OP_ADDRESS	28	155	3629
// OP_STOREP_S	3630	3629	0
// OP_ADDRESS	28	156	3631
// OP_STOREP_F	650	3631	0
// OP_ADDRESS	28	162	3632
// OP_LOAD_F	28	162	3633
// OP_BITOR	3633	264	3634
// OP_STOREP_F	3634	3632	0
// OP_GOTO	52	0	0
// OP_LOAD_F	28	154	3635
// OP_EQ_F	3635	259	3636
// OP_IFNOT	3636	13	0
// OP_ADDRESS	28	157	3637
// OP_LOAD_F	28	160	3638
// OP_STOREP_F	3638	3637	0
// OP_ADDRESS	28	155	3639
// OP_STOREP_S	3640	3639	0
// OP_ADDRESS	28	156	3641
// OP_STOREP_F	650	3641	0
// OP_ADDRESS	28	162	3642
// OP_LOAD_F	28	162	3643
// OP_BITOR	3643	265	3644
// OP_STOREP_F	3644	3642	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	3645
// OP_EQ_F	3645	260	3646
// OP_IFNOT	3646	13	0
// OP_ADDRESS	28	157	3647
// OP_LOAD_F	28	160	3648
// OP_STOREP_F	3648	3647	0
// OP_ADDRESS	28	155	3649
// OP_STOREP_S	3650	3649	0
// OP_ADDRESS	28	156	3651
// OP_STOREP_F	650	3651	0
// OP_ADDRESS	28	162	3652
// OP_LOAD_F	28	162	3653
// OP_BITOR	3653	265	3654
// OP_STOREP_F	3654	3652	0
// OP_GOTO	22	0	0
// OP_LOAD_F	28	154	3655
// OP_EQ_F	3655	261	3656
// OP_IFNOT	3656	13	0
// OP_ADDRESS	28	157	3657
// OP_LOAD_F	28	161	3658
// OP_STOREP_F	3658	3657	0
// OP_ADDRESS	28	155	3659
// OP_STOREP_S	3660	3659	0
// OP_ADDRESS	28	156	3661
// OP_STOREP_F	650	3661	0
// OP_ADDRESS	28	162	3662
// OP_LOAD_F	28	162	3663
// OP_BITOR	3663	266	3664
// OP_STOREP_F	3664	3662	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	157	3665
// OP_STOREP_F	650	3665	0
// OP_ADDRESS	28	155	3666
// OP_STOREP_S	652	3666	0
// OP_ADDRESS	28	156	3667
// OP_STOREP_F	650	3667	0
// OP_DONE	0	0	0
void () W_SetCurrentAmmo = 
{
    player_run();
    self.items = self.items - (self.items & (((IT_SHELLS | IT_NAILS) | IT_ROCKETS) | IT_CELLS));
    if(self.weapon == IT_AXE)
    {
        self.currentammo = 0;
        self.weaponmodel = "progs/v_axe.mdl";
        self.weaponframe = 0;
    }
    else
    {
        if(self.weapon == IT_SHOTGUN)
        {
            self.currentammo = self.ammo_shells;
            self.weaponmodel = "progs/v_shot.mdl";
            self.weaponframe = 0;
            self.items = self.items | IT_SHELLS;
        }
        else
        {
            if(self.weapon == IT_SUPER_SHOTGUN)
            {
                self.currentammo = self.ammo_shells;
                self.weaponmodel = "progs/v_shot2.mdl";
                self.weaponframe = 0;
                self.items = self.items | IT_SHELLS;
            }
            else
            {
                if(self.weapon == IT_NAILGUN)
                {
                    self.currentammo = self.ammo_nails;
                    self.weaponmodel = "progs/v_nail.mdl";
                    self.weaponframe = 0;
                    self.items = self.items | IT_NAILS;
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.currentammo = self.ammo_nails;
                        self.weaponmodel = "progs/v_nail2.mdl";
                        self.weaponframe = 0;
                        self.items = self.items | IT_NAILS;
                    }
                    else
                    {
                        if(self.weapon == IT_GRENADE_LAUNCHER)
                        {
                            self.currentammo = self.ammo_rockets;
                            self.weaponmodel = "progs/v_rock.mdl";
                            self.weaponframe = 0;
                            self.items = self.items | IT_ROCKETS;
                        }
                        else
                        {
                            if(self.weapon == IT_ROCKET_LAUNCHER)
                            {
                                self.currentammo = self.ammo_rockets;
                                self.weaponmodel = "progs/v_rock2.mdl";
                                self.weaponframe = 0;
                                self.items = self.items | IT_ROCKETS;
                            }
                            else
                            {
                                if(self.weapon == IT_LIGHTNING)
                                {
                                    self.currentammo = self.ammo_cells;
                                    self.weaponmodel = "progs/v_light.mdl";
                                    self.weaponframe = 0;
                                    self.items = self.items | IT_CELLS;
                                }
                                else
                                {
                                    self.currentammo = 0;
                                    self.weaponmodel = "";
                                    self.weaponframe = 0;
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
// function begins at statement 4649, parm_start=3668
// OP_LOAD_F	28	162	3669
// OP_STORE_F	3669	3668	0
// OP_LOAD_F	28	161	3670
// OP_GE	3670	708	3671
// OP_BITAND	3668	261	3672
// OP_AND	3671	3672	3673
// OP_IFNOT	3673	3	0
// OP_RETURN	261	0	0
// OP_GOTO	28	0	0
// OP_LOAD_F	28	159	3674
// OP_GE	3674	929	3675
// OP_BITAND	3668	258	3676
// OP_AND	3675	3676	3677
// OP_IFNOT	3677	3	0
// OP_RETURN	258	0	0
// OP_GOTO	21	0	0
// OP_LOAD_F	28	158	3678
// OP_GE	3678	929	3679
// OP_BITAND	3668	256	3680
// OP_AND	3679	3680	3681
// OP_IFNOT	3681	3	0
// OP_RETURN	256	0	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	159	3682
// OP_GE	3682	708	3683
// OP_BITAND	3668	257	3684
// OP_AND	3683	3684	3685
// OP_IFNOT	3685	3	0
// OP_RETURN	257	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	158	3686
// OP_GE	3686	708	3687
// OP_BITAND	3668	255	3688
// OP_AND	3687	3688	3689
// OP_IFNOT	3689	2	0
// OP_RETURN	255	0	0
// OP_RETURN	254	0	0
// OP_DONE	0	0	0
float () W_BestWeapon = 
{
    local float it;
    it = self.items;
    if((self.ammo_cells >= 1) && (it & IT_LIGHTNING))
    {
        return IT_LIGHTNING;
    }
    else
    {
        if((self.ammo_nails >= 2) && (it & IT_SUPER_NAILGUN))
        {
            return IT_SUPER_NAILGUN;
        }
        else
        {
            if((self.ammo_shells >= 2) && (it & IT_SUPER_SHOTGUN))
            {
                return IT_SUPER_SHOTGUN;
            }
            else
            {
                if((self.ammo_nails >= 1) && (it & IT_NAILGUN))
                {
                    return IT_NAILGUN;
                }
                else
                {
                    
                    if((self.ammo_shells >= 1) && (it & IT_SHOTGUN))
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
// function begins at statement 4687, parm_start=3691
// OP_LOAD_F	28	157	3691
// OP_GT	3691	650	3692
// OP_IFNOT	3692	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	154	3693
// OP_EQ_F	3693	254	3694
// OP_IFNOT	3694	2	0
// OP_RETURN	214	0	0
// OP_ADDRESS	28	154	3695
// OP_CALL0	2316	0	0
// OP_STOREP_F	1	3695	0
// OP_CALL0	2080	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () W_CheckNoAmmo = 
{
    
    if(self.currentammo > 0)
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
// function begins at statement 4701, parm_start=3705
// OP_CALL0	3690	0	0
// OP_NOT_F	1	0	3709
// OP_IFNOT	3709	2	0
// OP_RETURN	0	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	175	3710
// OP_STORE_V	3710	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	28	389	3713
// OP_ADD_F	31	708	3714
// OP_STOREP_F	3714	3713	0
// OP_LOAD_F	28	154	3715
// OP_EQ_F	3715	254	3716
// OP_IFNOT	3716	26	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3717	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_STORE_F	1	3705	0
// OP_LT	3705	3718	3719
// OP_IFNOT	3719	3	0
// OP_CALL0	3696	0	0
// OP_GOTO	10	0	0
// OP_LT	3705	1727	3720
// OP_IFNOT	3720	3	0
// OP_CALL0	3697	0	0
// OP_GOTO	6	0	0
// OP_LT	3705	3721	3722
// OP_IFNOT	3722	3	0
// OP_CALL0	3698	0	0
// OP_GOTO	2	0	0
// OP_CALL0	3699	0	0
// OP_ADDRESS	28	374	3723
// OP_ADD_F	31	1727	3724
// OP_STOREP_F	3724	3723	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	3725
// OP_EQ_F	3725	255	3726
// OP_IFNOT	3726	7	0
// OP_CALL0	3700	0	0
// OP_CALL0	3127	0	0
// OP_ADDRESS	28	374	3727
// OP_ADD_F	31	1727	3728
// OP_STOREP_F	3728	3727	0
// OP_GOTO	51	0	0
// OP_LOAD_F	28	154	3729
// OP_EQ_F	3729	256	3730
// OP_IFNOT	3730	7	0
// OP_CALL0	3700	0	0
// OP_CALL0	3141	0	0
// OP_ADDRESS	28	374	3731
// OP_ADD_F	31	3100	3732
// OP_STOREP_F	3732	3731	0
// OP_GOTO	42	0	0
// OP_LOAD_F	28	154	3733
// OP_EQ_F	3733	257	3734
// OP_IFNOT	3734	3	0
// OP_CALL0	3701	0	0
// OP_GOTO	37	0	0
// OP_LOAD_F	28	154	3735
// OP_EQ_F	3735	258	3736
// OP_IFNOT	3736	3	0
// OP_CALL0	3701	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	154	3737
// OP_EQ_F	3737	259	3738
// OP_IFNOT	3738	7	0
// OP_CALL0	3703	0	0
// OP_CALL0	3376	0	0
// OP_ADDRESS	28	374	3739
// OP_ADD_F	31	2240	3740
// OP_STOREP_F	3740	3739	0
// OP_GOTO	23	0	0
// OP_LOAD_F	28	154	3741
// OP_EQ_F	3741	260	3742
// OP_IFNOT	3742	7	0
// OP_CALL0	3703	0	0
// OP_CALL0	3204	0	0
// OP_ADDRESS	28	374	3743
// OP_ADD_F	31	2245	3744
// OP_STOREP_F	3744	3743	0
// OP_GOTO	14	0	0
// OP_LOAD_F	28	154	3745
// OP_EQ_F	3745	261	3746
// OP_IFNOT	3746	11	0
// OP_CALL0	3702	0	0
// OP_ADDRESS	28	374	3747
// OP_ADD_F	31	686	3748
// OP_STOREP_F	3748	3747	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3749	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () W_Attack = 
{
    local float r;
    local vector dest_org;
    
    if(!W_CheckNoAmmo())
    {
        return;
    }
    
    return;
    makevectors(self.v_angle);
    self.show_hostile = time + 1;
    if(self.weapon == IT_AXE)
    {
        sound(self, CHAN_WEAPON, "weapons/ax1.wav", 1, ATTN_NORM);
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
                                    sound(self, CHAN_AUTO, "weapons/lstart.wav", 1, ATTN_NORM);
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
// function begins at statement 4800, parm_start=3751
// OP_LOAD_F	28	162	3754
// OP_STORE_F	3754	3751	0
// OP_STORE_F	650	3752	0
// OP_LOAD_F	28	173	3755
// OP_EQ_F	3755	708	3756
// OP_IFNOT	3756	3	0
// OP_STORE_F	254	3753	0
// OP_GOTO	63	0	0
// OP_LOAD_F	28	173	3757
// OP_EQ_F	3757	929	3758
// OP_IFNOT	3758	7	0
// OP_STORE_F	255	3753	0
// OP_LOAD_F	28	158	3759
// OP_LT	3759	708	3760
// OP_IFNOT	3760	2	0
// OP_STORE_F	708	3752	0
// OP_GOTO	54	0	0
// OP_LOAD_F	28	173	3761
// OP_EQ_F	3761	819	3762
// OP_IFNOT	3762	7	0
// OP_STORE_F	256	3753	0
// OP_LOAD_F	28	158	3763
// OP_LT	3763	929	3764
// OP_IFNOT	3764	2	0
// OP_STORE_F	708	3752	0
// OP_GOTO	45	0	0
// OP_LOAD_F	28	173	3765
// OP_EQ_F	3765	1835	3766
// OP_IFNOT	3766	7	0
// OP_STORE_F	257	3753	0
// OP_LOAD_F	28	159	3767
// OP_LT	3767	708	3768
// OP_IFNOT	3768	2	0
// OP_STORE_F	708	3752	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	173	3769
// OP_EQ_F	3769	1660	3770
// OP_IFNOT	3770	7	0
// OP_STORE_F	258	3753	0
// OP_LOAD_F	28	159	3771
// OP_LT	3771	929	3772
// OP_IFNOT	3772	2	0
// OP_STORE_F	708	3752	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	3773
// OP_EQ_F	3773	2107	3774
// OP_IFNOT	3774	7	0
// OP_STORE_F	259	3753	0
// OP_LOAD_F	28	160	3775
// OP_LT	3775	708	3776
// OP_IFNOT	3776	2	0
// OP_STORE_F	708	3752	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	173	3777
// OP_EQ_F	3777	2307	3778
// OP_IFNOT	3778	7	0
// OP_STORE_F	260	3753	0
// OP_LOAD_F	28	160	3779
// OP_LT	3779	708	3780
// OP_IFNOT	3780	2	0
// OP_STORE_F	708	3752	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	173	3781
// OP_EQ_F	3781	1502	3782
// OP_IFNOT	3782	6	0
// OP_STORE_F	261	3753	0
// OP_LOAD_F	28	161	3783
// OP_LT	3783	708	3784
// OP_IFNOT	3784	2	0
// OP_STORE_F	708	3752	0
// OP_ADDRESS	28	173	3785
// OP_STOREP_F	650	3785	0
// OP_LOAD_F	28	162	3786
// OP_BITAND	3786	3753	3787
// OP_NOT_F	3787	0	3788
// OP_IFNOT	3788	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3789	7	0
// OP_CALL2	470	0	0
// OP_RETURN	0	0	0
// OP_IFNOT	3752	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3790	7	0
// OP_CALL2	470	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	154	3791
// OP_STOREP_F	3753	3791	0
// OP_CALL0	2080	0	0
// OP_DONE	0	0	0
void () W_ChangeWeapon = 
{
    local float it;
    local float am;
    local float fl;
    it = self.items;
    am = 0;
    if(self.impulse == 1)
    {
        fl = IT_AXE;
    }
    else
    {
        if(self.impulse == 2)
        {
            fl = IT_SHOTGUN;
            
            if(self.ammo_shells < 1)
            {
                am = 1;
            }
            
        }
        else
        {
            if(self.impulse == 3)
            {
                fl = IT_SUPER_SHOTGUN;
                
                if(self.ammo_shells < 2)
                {
                    am = 1;
                }
                
            }
            else
            {
                if(self.impulse == 4)
                {
                    fl = IT_NAILGUN;
                    
                    if(self.ammo_nails < 1)
                    {
                        am = 1;
                    }
                    
                }
                else
                {
                    if(self.impulse == 5)
                    {
                        fl = IT_SUPER_NAILGUN;
                        
                        if(self.ammo_nails < 2)
                        {
                            am = 1;
                        }
                        
                    }
                    else
                    {
                        if(self.impulse == 6)
                        {
                            fl = IT_GRENADE_LAUNCHER;
                            
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
                            else
                            {
                                
                                if(self.impulse == 8)
                                {
                                    fl = IT_LIGHTNING;
                                    
                                    if(self.ammo_cells < 1)
                                    {
                                        am = 1;
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
// function begins at statement 4889, parm_start=3793
// OP_OR	35	36	3793
// OP_IFNOT	3793	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	160	3794
// OP_STOREP_F	2165	3794	0
// OP_ADDRESS	28	159	3795
// OP_STOREP_F	2246	3795	0
// OP_ADDRESS	28	158	3796
// OP_STOREP_F	2165	3796	0
// OP_ADDRESS	28	162	3797
// OP_LOAD_F	28	162	3798
// OP_BITOR	3798	254	3799
// OP_BITOR	3799	255	3800
// OP_BITOR	3800	256	3801
// OP_BITOR	3801	257	3802
// OP_BITOR	3802	258	3803
// OP_BITOR	3803	259	3804
// OP_BITOR	3804	260	3805
// OP_BITOR	3805	271	3806
// OP_BITOR	3806	272	3807
// OP_STOREP_F	3807	3797	0
// OP_ADDRESS	28	161	3808
// OP_STOREP_F	2246	3808	0
// OP_ADDRESS	28	162	3809
// OP_LOAD_F	28	162	3810
// OP_BITOR	3810	261	3811
// OP_STOREP_F	3811	3809	0
// OP_ADDRESS	28	154	3812
// OP_STOREP_F	260	3812	0
// OP_ADDRESS	28	173	3813
// OP_STOREP_F	650	3813	0
// OP_CALL0	2080	0	0
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
    self.impulse = 0;
    W_SetCurrentAmmo();
};

// CycleWeaponCommand
// function begins at statement 4922, parm_start=3815
// OP_LOAD_F	28	162	3817
// OP_STORE_F	3817	3815	0
// OP_ADDRESS	28	173	3818
// OP_STOREP_F	650	3818	0
// OP_IFNOT	708	85	0
// OP_STORE_F	650	3816	0
// OP_LOAD_F	28	154	3819
// OP_EQ_F	3819	261	3820
// OP_IFNOT	3820	4	0
// OP_ADDRESS	28	154	3821
// OP_STOREP_F	254	3821	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	154	3822
// OP_EQ_F	3822	254	3823
// OP_IFNOT	3823	8	0
// OP_ADDRESS	28	154	3824
// OP_STOREP_F	255	3824	0
// OP_LOAD_F	28	158	3825
// OP_LT	3825	708	3826
// OP_IFNOT	3826	2	0
// OP_STORE_F	708	3816	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	154	3827
// OP_EQ_F	3827	255	3828
// OP_IFNOT	3828	8	0
// OP_ADDRESS	28	154	3829
// OP_STOREP_F	256	3829	0
// OP_LOAD_F	28	158	3830
// OP_LT	3830	929	3831
// OP_IFNOT	3831	2	0
// OP_STORE_F	708	3816	0
// OP_GOTO	50	0	0
// OP_LOAD_F	28	154	3832
// OP_EQ_F	3832	256	3833
// OP_IFNOT	3833	8	0
// OP_ADDRESS	28	154	3834
// OP_STOREP_F	257	3834	0
// OP_LOAD_F	28	159	3835
// OP_LT	3835	708	3836
// OP_IFNOT	3836	2	0
// OP_STORE_F	708	3816	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	154	3837
// OP_EQ_F	3837	257	3838
// OP_IFNOT	3838	8	0
// OP_ADDRESS	28	154	3839
// OP_STOREP_F	258	3839	0
// OP_LOAD_F	28	159	3840
// OP_LT	3840	929	3841
// OP_IFNOT	3841	2	0
// OP_STORE_F	708	3816	0
// OP_GOTO	30	0	0
// OP_LOAD_F	28	154	3842
// OP_EQ_F	3842	258	3843
// OP_IFNOT	3843	8	0
// OP_ADDRESS	28	154	3844
// OP_STOREP_F	259	3844	0
// OP_LOAD_F	28	160	3845
// OP_LT	3845	708	3846
// OP_IFNOT	3846	2	0
// OP_STORE_F	708	3816	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	154	3847
// OP_EQ_F	3847	259	3848
// OP_IFNOT	3848	8	0
// OP_ADDRESS	28	154	3849
// OP_STOREP_F	260	3849	0
// OP_LOAD_F	28	160	3850
// OP_LT	3850	708	3851
// OP_IFNOT	3851	2	0
// OP_STORE_F	708	3816	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	3852
// OP_EQ_F	3852	260	3853
// OP_IFNOT	3853	7	0
// OP_ADDRESS	28	154	3854
// OP_STOREP_F	261	3854	0
// OP_LOAD_F	28	161	3855
// OP_LT	3855	708	3856
// OP_IFNOT	3856	2	0
// OP_STORE_F	708	3816	0
// OP_LOAD_F	28	154	3857
// OP_BITAND	3815	3857	3858
// OP_EQ_F	3816	650	3859
// OP_AND	3858	3859	3860
// OP_IFNOT	3860	3	0
// OP_CALL0	2080	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-84	0	0
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
        if(self.weapon == IT_LIGHTNING)
        {
            self.weapon = IT_AXE;
        }
        else
        {
            if(self.weapon == IT_AXE)
            {
                self.weapon = IT_SHOTGUN;
                
                if(self.ammo_shells < 1)
                {
                    am = 1;
                }
                
            }
            else
            {
                if(self.weapon == IT_SHOTGUN)
                {
                    self.weapon = IT_SUPER_SHOTGUN;
                    
                    if(self.ammo_shells < 2)
                    {
                        am = 1;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_SHOTGUN)
                    {
                        self.weapon = IT_NAILGUN;
                        
                        if(self.ammo_nails < 1)
                        {
                            am = 1;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_NAILGUN)
                        {
                            self.weapon = IT_SUPER_NAILGUN;
                            
                            if(self.ammo_nails < 2)
                            {
                                am = 1;
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_SUPER_NAILGUN)
                            {
                                self.weapon = IT_GRENADE_LAUNCHER;
                                
                                if(self.ammo_rockets < 1)
                                {
                                    am = 1;
                                }
                                
                            }
                            else
                            {
                                if(self.weapon == IT_GRENADE_LAUNCHER)
                                {
                                    self.weapon = IT_ROCKET_LAUNCHER;
                                    
                                    if(self.ammo_rockets < 1)
                                    {
                                        am = 1;
                                    }
                                    
                                }
                                else
                                {
                                    
                                    if(self.weapon == IT_ROCKET_LAUNCHER)
                                    {
                                        self.weapon = IT_LIGHTNING;
                                        
                                        if(self.ammo_cells < 1)
                                        {
                                            am = 1;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
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
// function begins at statement 5012, parm_start=3862
// OP_LOAD_F	28	162	3864
// OP_STORE_F	3864	3862	0
// OP_ADDRESS	28	173	3865
// OP_STOREP_F	650	3865	0
// OP_IFNOT	708	85	0
// OP_STORE_F	650	3863	0
// OP_LOAD_F	28	154	3866
// OP_EQ_F	3866	261	3867
// OP_IFNOT	3867	8	0
// OP_ADDRESS	28	154	3868
// OP_STOREP_F	260	3868	0
// OP_LOAD_F	28	160	3869
// OP_LT	3869	708	3870
// OP_IFNOT	3870	2	0
// OP_STORE_F	708	3863	0
// OP_GOTO	66	0	0
// OP_LOAD_F	28	154	3871
// OP_EQ_F	3871	260	3872
// OP_IFNOT	3872	8	0
// OP_ADDRESS	28	154	3873
// OP_STOREP_F	259	3873	0
// OP_LOAD_F	28	160	3874
// OP_LT	3874	708	3875
// OP_IFNOT	3875	2	0
// OP_STORE_F	708	3863	0
// OP_GOTO	56	0	0
// OP_LOAD_F	28	154	3876
// OP_EQ_F	3876	259	3877
// OP_IFNOT	3877	8	0
// OP_ADDRESS	28	154	3878
// OP_STOREP_F	258	3878	0
// OP_LOAD_F	28	159	3879
// OP_LT	3879	929	3880
// OP_IFNOT	3880	2	0
// OP_STORE_F	708	3863	0
// OP_GOTO	46	0	0
// OP_LOAD_F	28	154	3881
// OP_EQ_F	3881	258	3882
// OP_IFNOT	3882	8	0
// OP_ADDRESS	28	154	3883
// OP_STOREP_F	257	3883	0
// OP_LOAD_F	28	159	3884
// OP_LT	3884	708	3885
// OP_IFNOT	3885	2	0
// OP_STORE_F	708	3863	0
// OP_GOTO	36	0	0
// OP_LOAD_F	28	154	3886
// OP_EQ_F	3886	257	3887
// OP_IFNOT	3887	8	0
// OP_ADDRESS	28	154	3888
// OP_STOREP_F	256	3888	0
// OP_LOAD_F	28	158	3889
// OP_LT	3889	929	3890
// OP_IFNOT	3890	2	0
// OP_STORE_F	708	3863	0
// OP_GOTO	26	0	0
// OP_LOAD_F	28	154	3891
// OP_EQ_F	3891	256	3892
// OP_IFNOT	3892	8	0
// OP_ADDRESS	28	154	3893
// OP_STOREP_F	255	3893	0
// OP_LOAD_F	28	158	3894
// OP_LT	3894	708	3895
// OP_IFNOT	3895	2	0
// OP_STORE_F	708	3863	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	154	3896
// OP_EQ_F	3896	255	3897
// OP_IFNOT	3897	4	0
// OP_ADDRESS	28	154	3898
// OP_STOREP_F	254	3898	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	154	3899
// OP_EQ_F	3899	254	3900
// OP_IFNOT	3900	7	0
// OP_ADDRESS	28	154	3901
// OP_STOREP_F	261	3901	0
// OP_LOAD_F	28	161	3902
// OP_LT	3902	708	3903
// OP_IFNOT	3903	2	0
// OP_STORE_F	708	3863	0
// OP_LOAD_F	28	154	3904
// OP_BITAND	3862	3904	3905
// OP_EQ_F	3863	650	3906
// OP_AND	3905	3906	3907
// OP_IFNOT	3907	3	0
// OP_CALL0	2080	0	0
// OP_RETURN	0	0	0
// OP_GOTO	-84	0	0
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
        if(self.weapon == IT_LIGHTNING)
        {
            self.weapon = IT_ROCKET_LAUNCHER;
            
            if(self.ammo_rockets < 1)
            {
                am = 1;
            }
            
        }
        else
        {
            if(self.weapon == IT_ROCKET_LAUNCHER)
            {
                self.weapon = IT_GRENADE_LAUNCHER;
                
                if(self.ammo_rockets < 1)
                {
                    am = 1;
                }
                
            }
            else
            {
                if(self.weapon == IT_GRENADE_LAUNCHER)
                {
                    self.weapon = IT_SUPER_NAILGUN;
                    
                    if(self.ammo_nails < 2)
                    {
                        am = 1;
                    }
                    
                }
                else
                {
                    if(self.weapon == IT_SUPER_NAILGUN)
                    {
                        self.weapon = IT_NAILGUN;
                        
                        if(self.ammo_nails < 1)
                        {
                            am = 1;
                        }
                        
                    }
                    else
                    {
                        if(self.weapon == IT_NAILGUN)
                        {
                            self.weapon = IT_SUPER_SHOTGUN;
                            
                            if(self.ammo_shells < 2)
                            {
                                am = 1;
                            }
                            
                        }
                        else
                        {
                            if(self.weapon == IT_SUPER_SHOTGUN)
                            {
                                self.weapon = IT_SHOTGUN;
                                
                                if(self.ammo_shells < 1)
                                {
                                    am = 1;
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
                                        
                                        if(self.ammo_cells < 1)
                                        {
                                            am = 1;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
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
// function begins at statement 5102, parm_start=3909
// OP_MUL_F	38	929	3909
// OP_ADD_F	3909	708	3910
// OP_STORE_F	3910	38	0
// OP_DONE	0	0	0
void () ServerflagsCommand = 
{
    serverflags = (serverflags * 2) + 1;
};

// QuadCheat
// function begins at statement 5106, parm_start=3912
// OP_OR	35	36	3912
// OP_IFNOT	3912	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	384	3913
// OP_STOREP_F	708	3913	0
// OP_ADDRESS	28	378	3914
// OP_ADD_F	31	1004	3915
// OP_STOREP_F	3915	3914	0
// OP_ADDRESS	28	162	3916
// OP_LOAD_F	28	162	3917
// OP_BITOR	3917	276	3918
// OP_STOREP_F	3918	3916	0
// OP_STORE_V	3919	4	0
// OP_CALL1	471	0	0
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
// function begins at statement 5121, parm_start=3921
// OP_LOAD_F	28	173	3921
// OP_GE	3921	708	3922
// OP_LOAD_F	28	173	3923
// OP_LE	3923	1502	3924
// OP_AND	3922	3924	3925
// OP_IFNOT	3925	3	0
// OP_CALL0	3750	0	0
// OP_GOTO	84	0	0
// OP_LOAD_F	28	173	3926
// OP_EQ_F	3926	3556	3927
// OP_IFNOT	3927	3	0
// OP_CALL0	3792	0	0
// OP_GOTO	79	0	0
// OP_LOAD_F	28	173	3928
// OP_EQ_F	3928	1931	3929
// OP_IFNOT	3929	3	0
// OP_CALL0	3814	0	0
// OP_GOTO	74	0	0
// OP_LOAD_F	28	173	3930
// OP_EQ_F	3930	3931	3932
// OP_IFNOT	3932	3	0
// OP_CALL0	3908	0	0
// OP_GOTO	69	0	0
// OP_LOAD_F	28	173	3933
// OP_EQ_F	3933	2532	3934
// OP_IFNOT	3934	3	0
// OP_CALL0	3861	0	0
// OP_GOTO	64	0	0
// OP_LOAD_F	28	173	3935
// OP_EQ_F	3935	1017	3936
// OP_IFNOT	3936	23	0
// OP_NOT_F	545	0	3937
// OP_NE_E	28	524	3938
// OP_AND	3937	3938	3939
// OP_IFNOT	3939	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	524	549	3940
// OP_BITAND	3940	570	3941
// OP_IFNOT	3941	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3942	7	0
// OP_CALL2	470	0	0
// OP_STORE_ENT	30	536	0
// OP_STORE_F	213	538	0
// OP_ADDRESS	546	133	3943
// OP_STOREP_F	650	3943	0
// OP_ADDRESS	28	549	3944
// OP_LOAD_F	28	549	3945
// OP_LOAD_F	28	549	3946
// OP_BITAND	3946	570	3947
// OP_SUB_F	3945	3947	3948
// OP_STOREP_F	3948	3944	0
// OP_GOTO	39	0	0
// OP_LOAD_F	28	173	3949
// OP_EQ_F	3949	3950	3951
// OP_IFNOT	3951	36	0
// OP_IFNOT	545	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	555	3952
// OP_LOAD_F	3952	549	3953
// OP_BITAND	3953	572	3954
// OP_IFNOT	3954	30	0
// OP_NE_E	524	28	3955
// OP_AND	3955	525	3956
// OP_IFNOT	3956	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3957	7	0
// OP_CALL2	470	0	0
// OP_ADDRESS	28	173	3958
// OP_STOREP_F	650	3958	0
// OP_RETURN	0	0	0
// OP_EQ_E	524	28	3959
// OP_NOT_F	525	0	3960
// OP_AND	3959	3960	3961
// OP_IFNOT	3961	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3962	7	0
// OP_CALL2	470	0	0
// OP_ADDRESS	28	173	3963
// OP_STOREP_F	650	3963	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3964	7	0
// OP_CALL2	467	0	0
// OP_LOAD_ENT	28	555	3965
// OP_STORE_V	3965	4	0
// OP_STORE_V	3964	7	0
// OP_CALL2	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3966	7	0
// OP_CALL2	467	0	0
// OP_LOAD_F	28	173	3967
// OP_EQ_F	3967	2509	3968
// OP_IFNOT	3968	39	0
// OP_LOAD_F	28	182	3969
// OP_BITAND	3969	215	3970
// OP_NOT_F	3970	0	3971
// OP_IFNOT	3971	18	0
// OP_ADDRESS	28	103	3972
// OP_STOREP_F	228	3972	0
// OP_ADDRESS	28	104	3973
// OP_STOREP_F	238	3973	0
// OP_ADDRESS	28	182	3974
// OP_LOAD_F	28	182	3975
// OP_BITOR	3975	215	3976
// OP_STOREP_F	3976	3974	0
// OP_ADDRESS	28	182	3977
// OP_LOAD_F	28	182	3978
// OP_BITOR	3978	220	3979
// OP_STOREP_F	3979	3977	0
// OP_ADDRESS	28	182	3980
// OP_LOAD_F	28	182	3981
// OP_BITOR	3981	216	3982
// OP_STOREP_F	3982	3980	0
// OP_GOTO	17	0	0
// OP_ADDRESS	28	103	3983
// OP_STOREP_F	229	3983	0
// OP_ADDRESS	28	104	3984
// OP_STOREP_F	238	3984	0
// OP_ADDRESS	28	182	3985
// OP_LOAD_F	28	182	3986
// OP_LOAD_F	28	182	3987
// OP_BITAND	3987	215	3988
// OP_SUB_F	3986	3988	3989
// OP_STOREP_F	3989	3985	0
// OP_ADDRESS	28	182	3990
// OP_LOAD_F	28	182	3991
// OP_LOAD_F	28	182	3992
// OP_BITAND	3992	220	3993
// OP_SUB_F	3991	3993	3994
// OP_STOREP_F	3994	3990	0
// OP_GOTO	55	0	0
// OP_LOAD_F	28	173	3995
// OP_EQ_F	3995	1035	3996
// OP_IFNOT	3996	13	0
// OP_NOT_F	545	0	3997
// OP_NE_E	524	28	3998
// OP_AND	3997	3998	3999
// OP_IFNOT	3999	2	0
// OP_RETURN	0	0	0
// OP_NOT_F	525	0	4000
// OP_IFNOT	4000	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4001	7	0
// OP_CALL2	600	0	0
// OP_CALL0	593	0	0
// OP_GOTO	40	0	0
// OP_LOAD_F	28	173	4002
// OP_EQ_F	4002	2165	4003
// OP_IFNOT	4003	3	0
// OP_CALL0	584	0	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	173	4004
// OP_EQ_F	4004	4005	4006
// OP_IFNOT	4006	6	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	567	4007
// OP_STORE_V	4007	7	0
// OP_CALL2	507	0	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	4008
// OP_EQ_F	4008	2246	4009
// OP_IFNOT	4009	20	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4010	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4011	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4012	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4013	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4014	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4015	7	0
// OP_CALL2	470	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	173	4016
// OP_EQ_F	4016	4017	4018
// OP_IFNOT	4018	2	0
// OP_CALL0	3911	0	0
// OP_ADDRESS	28	173	4019
// OP_STOREP_F	650	4019	0
// OP_DONE	0	0	0
void () ImpulseCommands = 
{
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
                    if(self.impulse == 12)
                    {
                        CycleWeaponReverseCommand();
                    }
                    else
                    {
                        if(self.impulse == 20)
                        {
                            
                            if(!single_player && (self != current_turn))
                            {
                                return;
                            }
                            
                            
                            if(current_turn.chess_flags & CF_SELECTED_PIECE)
                            {
                                sprint(self, "Selection cleared.\n");
                                castle_to_move = world;
                                king_castle_move_flag = FALSE;
                                light_ent.effects = 0;
                            }
                            
                            self.chess_flags = self.chess_flags - (self.chess_flags & CF_SELECTED_PIECE);
                        }
                        else
                        {
                            
                            if(self.impulse == 31)
                            {
                                
                                if(single_player)
                                {
                                    return;
                                }
                                
                                
                                if(self.opponent.chess_flags & CF_CHECK_NOTIFY)
                                {
                                    
                                    if((current_turn != self) && action_flag)
                                    {
                                        sprint(self, "Must declare check-mate before opponent moves\n");
                                        self.impulse = 0;
                                        return;
                                    }
                                    
                                    
                                    if((current_turn == self) && !action_flag)
                                    {
                                        sprint(self, "Must declare check-mate during or before your\nopponent's turn\n");
                                        self.impulse = 0;
                                        return;
                                    }
                                    
                                    stuffcmd(self, "play voice/chckmate.wav\n");
                                    stuffcmd(self.opponent, "play voice/chckmate.wav\n");
                                    stuffcmd(self, "say Check-mate!\n");
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    if(self.impulse == 50)
    {
        if(!(self.flags & FL_FLY))
        {
            self.movetype = MOVETYPE_NONE;
            self.solid = SOLID_NOT;
            self.flags = self.flags | FL_FLY;
            self.flags = self.flags | FL_GODMODE;
            self.flags = self.flags | FL_SWIM;
        }
        else
        {
            self.movetype = MOVETYPE_WALK;
            self.solid = SOLID_NOT;
            self.flags = self.flags - (self.flags & FL_FLY);
            self.flags = self.flags - (self.flags & FL_GODMODE);
        }
        
    }
    else
    {
        if(self.impulse == 60)
        {
            
            if(!single_player && (current_turn != self))
            {
                return;
            }
            
            
            if(!action_flag)
            {
                mycentreprint(current_turn, "Turn passed\n");
                next_turn();
            }
            
        }
        else
        {
            if(self.impulse == 100)
            {
                ProcessSelection();
            }
            else
            {
                if(self.impulse == 199)
                {
                    centerprint(self, self.last_message);
                }
                else
                {
                    if(self.impulse == 200)
                    {
                        sprint(self, "\nW         toggle Mouse\n");
                        sprint(self, "Shift     move forward\n");
                        sprint(self, "R         show last message\n");
                        sprint(self, "C         toggle Camera\n");
                        sprint(self, "M         notify Check-Mate\n");
                        sprint(self, "P         Pass turn\n");
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
    
    self.impulse = 0;
};

// W_WeaponFrame
// function begins at statement 5310, parm_start=4021
// OP_LOAD_F	28	374	4021
// OP_LT	31	4021	4022
// OP_IFNOT	4022	2	0
// OP_RETURN	0	0	0
// OP_CALL0	3920	0	0
// OP_LOAD_F	28	170	4023
// OP_IFNOT	4023	3	0
// OP_CALL0	2862	0	0
// OP_CALL0	3704	0	0
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
// function begins at statement 5320, parm_start=4024
// OP_LOAD_F	28	378	4024
// OP_GT	4024	31	4025
// OP_IFNOT	4025	13	0
// OP_LOAD_F	28	385	4026
// OP_LT	4026	31	4027
// OP_IFNOT	4027	10	0
// OP_ADDRESS	28	385	4028
// OP_ADD_F	31	708	4029
// OP_STOREP_F	4029	4028	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	2761	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
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

// SDR_SightThink
// function begins at statement 5337, parm_start=4031
// OP_LOAD_ENT	28	201	4034
// OP_LOAD_V	4034	175	4035
// OP_STORE_V	4035	4	0
// OP_CALL1	448	0	0
// OP_LOAD_ENT	28	201	4038
// OP_LOAD_V	4038	105	4039
// OP_MUL_VF	59	959	4042
// OP_ADD_V	4039	4042	4045
// OP_STORE_V	4045	4031	0
// OP_STORE_V	4031	4	0
// OP_MUL_VF	59	4048	4049
// OP_ADD_V	4031	4049	4052
// OP_STORE_V	4052	7	0
// OP_NE_E	526	30	4055
// OP_STORE_V	4055	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	462	0	0
// OP_EQ_F	70	708	4056
// OP_IFNOT	4056	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	652	7	0
// OP_CALL2	450	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	78	163	4057
// OP_IFNOT	4057	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4058	7	0
// OP_CALL2	450	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4059	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	117	4060
// OP_STORE_V	59	4	0
// OP_CALL1	493	0	0
// OP_STOREP_V	1	4060	0
// OP_STORE_V	28	4	0
// OP_STORE_V	71	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	150	4063
// OP_ADD_F	31	926	4064
// OP_STOREP_F	4064	4063	0
// OP_DONE	0	0	0
void () SDR_SightThink = 
{
    local vector org;
    makevectors(self.owner.v_angle);
    org = self.owner.origin + (v_forward * 32);
    traceline(org, org + (v_forward * 4048), current_selected != world, world);
    
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
// function begins at statement 5380, parm_start=4066
// OP_ADDRESS	28	2863	4067
// OP_STOREP_F	214	4067	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	4066	0
// OP_ADDRESS	4066	201	4068
// OP_STOREP_ENT	28	4068	0
// OP_ADDRESS	4066	103	4069
// OP_STOREP_F	234	4069	0
// OP_ADDRESS	4066	104	4070
// OP_STOREP_F	238	4070	0
// OP_STORE_V	4066	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	4066	129	4072
// OP_STOREP_S	4073	4072	0
// OP_STORE_V	4066	4	0
// OP_LOAD_V	28	105	4074
// OP_STORE_V	4074	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	4066	148	4077
// OP_STOREP_FNC	4030	4077	0
// OP_ADDRESS	4066	150	4078
// OP_ADD_F	31	926	4079
// OP_STOREP_F	4079	4078	0
// OP_DONE	0	0	0
void () SDR_SightMake = 
{
    local entity cross;
    self.sight_out = TRUE;
    cross = spawn();
    cross.owner = self;
    cross.movetype = MOVETYPE_NOCLIP;
    cross.solid = SOLID_NOT;
    setmodel(cross, "progs/s_bubble.spr");
    cross.classname = "laser_sight";
    setorigin(cross, self.origin);
    cross.think = SDR_SightThink;
    cross.nextthink = time + 0.05;
};

// LaserTargeterTrack
// function begins at statement 5405, parm_start=4081
// OP_LOAD_ENT	28	201	4087
// OP_LOAD_V	4087	175	4088
// OP_STORE_V	4088	4	0
// OP_CALL1	448	0	0
// OP_LOAD_ENT	28	201	4091
// OP_LOAD_V	4091	105	4092
// OP_STORE_V	4092	4084	0
// OP_STORE_V	59	4081	0
// OP_STORE_V	4084	4	0
// OP_MUL_VF	4081	4048	4095
// OP_ADD_V	4084	4095	4098
// OP_STORE_V	4098	7	0
// OP_NE_E	526	30	4101
// OP_STORE_V	4101	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_MUL_FV	686	4084	4102
// OP_MUL_FV	918	71	4105
// OP_ADD_V	4102	4105	4108
// OP_STORE_V	4108	4084	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4084	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	150	4111
// OP_ADD_F	31	686	4112
// OP_STOREP_F	4112	4111	0
// OP_DONE	0	0	0
void () LaserTargeterTrack = 
{
    local vector dir;
    local vector src;
    makevectors(self.owner.v_angle);
    src = self.owner.origin;
    dir = v_forward;
    traceline(src, src + (dir * 4048), current_selected != world, self);
    src = (0.1 * src) + (0.9 * trace_endpos);
    setorigin(self, src);
    self.nextthink = time + 0.1;
};

// LaserTargeterToggle
// function begins at statement 5432, parm_start=4114
// OP_ADDRESS	4114	365	4116
// OP_LOAD_F	4114	365	4117
// OP_BITOR	4117	574	4118
// OP_STOREP_F	4118	4116	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	4115	0
// OP_ADDRESS	4115	201	4119
// OP_STOREP_ENT	4114	4119	0
// OP_ADDRESS	4115	103	4120
// OP_STOREP_F	228	4120	0
// OP_ADDRESS	4115	104	4121
// OP_STOREP_F	238	4121	0
// OP_STORE_V	4115	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	4115	4	0
// OP_STORE_V	287	7	0
// OP_STORE_V	287	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	4115	4	0
// OP_LOAD_ENT	4115	201	4122
// OP_LOAD_V	4122	105	4123
// OP_STORE_V	4123	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	4114	568	4126
// OP_STOREP_ENT	4115	4126	0
// OP_ADDRESS	4115	150	4127
// OP_ADD_F	31	686	4128
// OP_STOREP_F	4128	4127	0
// OP_ADDRESS	4115	148	4129
// OP_STOREP_FNC	4080	4129	0
// OP_DONE	0	0	0
void (entity targ_owner) LaserTargeterToggle = 
{
    local entity e;
    targ_owner.speed = targ_owner.speed | LASERTARG_ON;
    e = spawn();
    e.owner = targ_owner;
    e.movetype = MOVETYPE_NONE;
    e.solid = SOLID_NOT;
    setmodel(e, "progs/s_bubble.spr");
    setsize(e, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(e, e.owner.origin);
    targ_owner.pointer = e;
    e.nextthink = time + 0.1;
    e.think = LaserTargeterTrack;
};

