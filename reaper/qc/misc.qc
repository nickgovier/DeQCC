// info_null
// function begins at statement 12174, parm_start=7996
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () info_null = 
{
    remove(self);
};

// info_notnull
// function begins at statement 12177, parm_start=7997
// OP_DONE	0	0	0
void () info_notnull = 
{
};

float START_OFF = 1.000;
// light_use
// function begins at statement 12178, parm_start=7999
// OP_LOAD_F	28	195	7999
// OP_BITAND	7999	7997	8000
// OP_IFNOT	8000	10	0
// OP_LOAD_F	28	355	8001
// OP_STORE_V	8001	4	0
// OP_STORE_V	4354	7	0
// OP_CALL2	479	0	0
// OP_ADDRESS	28	195	8002
// OP_LOAD_F	28	195	8003
// OP_SUB_F	8003	7997	8004
// OP_STOREP_F	8004	8002	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	355	8005
// OP_STORE_V	8005	4	0
// OP_STORE_V	4367	7	0
// OP_CALL2	479	0	0
// OP_ADDRESS	28	195	8006
// OP_LOAD_F	28	195	8007
// OP_ADD_F	8007	7997	8008
// OP_STOREP_F	8008	8006	0
// OP_DONE	0	0	0
void () light_use = 
{
    if(self.spawnflags & START_OFF)
    {
        lightstyle(self.style, "m");
        self.spawnflags = self.spawnflags - START_OFF;
    }
    else
    {
        lightstyle(self.style, "a");
        self.spawnflags = self.spawnflags + START_OFF;
    }
    
};

// light
// function begins at statement 12199, parm_start=8010
// OP_LOAD_S	28	197	8010
// OP_NOT_S	8010	0	8011
// OP_IFNOT	8011	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	355	8012
// OP_GE	8012	219	8013
// OP_IFNOT	8013	15	0
// OP_ADDRESS	28	147	8014
// OP_STOREP_FNC	7998	8014	0
// OP_LOAD_F	28	195	8015
// OP_BITAND	8015	7997	8016
// OP_IFNOT	8016	6	0
// OP_LOAD_F	28	355	8017
// OP_STORE_V	8017	4	0
// OP_STORE_V	4367	7	0
// OP_CALL2	479	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	355	8018
// OP_STORE_V	8018	4	0
// OP_STORE_V	4354	7	0
// OP_CALL2	479	0	0
// OP_DONE	0	0	0
void () light = 
{
    
    if(!self.targetname)
    {
        remove(self);
        return;
    }
    
    
    if(self.style >= FL_MONSTER)
    {
        self.use = light_use;
        if(self.spawnflags & START_OFF)
        {
            lightstyle(self.style, "a");
        }
        else
        {
            lightstyle(self.style, "m");
        }
        
    }
    
};

// light_fluoro
// function begins at statement 12223, parm_start=8020
// OP_LOAD_F	28	355	8020
// OP_GE	8020	219	8021
// OP_IFNOT	8021	15	0
// OP_ADDRESS	28	147	8022
// OP_STOREP_FNC	7998	8022	0
// OP_LOAD_F	28	195	8023
// OP_BITAND	8023	7997	8024
// OP_IFNOT	8024	6	0
// OP_LOAD_F	28	355	8025
// OP_STORE_V	8025	4	0
// OP_STORE_V	4367	7	0
// OP_CALL2	479	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	355	8026
// OP_STORE_V	8026	4	0
// OP_STORE_V	4354	7	0
// OP_CALL2	479	0	0
// OP_STORE_V	8027	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8028
// OP_STORE_V	8028	4	0
// OP_STORE_V	8027	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () light_fluoro = 
{
    
    if(self.style >= FL_MONSTER)
    {
        self.use = light_use;
        if(self.spawnflags & START_OFF)
        {
            lightstyle(self.style, "a");
        }
        else
        {
            lightstyle(self.style, "m");
        }
        
    }
    
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.500, ATTN_STATIC);
};

// light_fluorospark
// function begins at statement 12249, parm_start=8032
// OP_LOAD_F	28	355	8032
// OP_NOT_F	8032	0	8033
// OP_IFNOT	8033	3	0
// OP_ADDRESS	28	355	8034
// OP_STOREP_F	235	8034	0
// OP_STORE_V	8035	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8036
// OP_STORE_V	8036	4	0
// OP_STORE_V	8035	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () light_fluorospark = 
{
    
    if(!self.style)
    {
        self.style = MOVETYPE_BOUNCE;
    }
    
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 0.500, ATTN_STATIC);
};

// light_globe
// function begins at statement 12263, parm_start=8040
// OP_STORE_V	4349	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4349	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () light_globe = 
{
    precache_model("progs/s_light.spr");
    setmodel(self, "progs/s_light.spr");
    makestatic(self);
};

// FireAmbient
// function begins at statement 12271, parm_start=8041
// OP_STORE_V	8041	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8042
// OP_STORE_V	8042	4	0
// OP_STORE_V	8041	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () FireAmbient = 
{
    precache_sound("ambience/fire1.wav");
    ambientsound(self.origin, "ambience/fire1.wav", 0.500, ATTN_STATIC);
};

// light_torch_small_walltorch
// function begins at statement 12280, parm_start=8046
// OP_STORE_V	8046	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8046	7	0
// OP_CALL2	449	0	0
// OP_CALL0	8040	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () light_torch_small_walltorch = 
{
    precache_model("progs/flame.mdl");
    setmodel(self, "progs/flame.mdl");
    FireAmbient();
    makestatic(self);
};

// light_flame_large_yellow
// function begins at statement 12289, parm_start=8048
// OP_STORE_V	8048	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8048	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	131	8049
// OP_STOREP_F	214	8049	0
// OP_CALL0	8040	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () light_flame_large_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    self.frame = TRUE;
    FireAmbient();
    makestatic(self);
};

// light_flame_small_yellow
// function begins at statement 12300, parm_start=8051
// OP_STORE_V	8048	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8048	7	0
// OP_CALL2	449	0	0
// OP_CALL0	8040	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () light_flame_small_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    FireAmbient();
    makestatic(self);
};

// light_flame_small_white
// function begins at statement 12309, parm_start=8052
// OP_STORE_V	8048	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8048	7	0
// OP_CALL2	449	0	0
// OP_CALL0	8040	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () light_flame_small_white = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    FireAmbient();
    makestatic(self);
};

void () fire_fly;
void () fire_touch;
// misc_fireball
// function begins at statement 12318, parm_start=8055
// OP_STORE_V	4353	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	129	8055
// OP_STOREP_S	5442	8055	0
// OP_ADDRESS	28	150	8056
// OP_CALL0	452	0	0
// OP_MUL_F	1	230	8057
// OP_ADD_F	31	8057	8058
// OP_STOREP_F	8058	8056	0
// OP_ADDRESS	28	148	8059
// OP_STOREP_FNC	8052	8059	0
// OP_LOAD_F	28	364	8060
// OP_NOT_F	8060	0	8061
// OP_IFNOT	8061	3	0
// OP_LOAD_F	28	364	8062
// OP_EQ_F	8062	1548	8063
// OP_DONE	0	0	0
void () misc_fireball = 
{
    precache_model("progs/lavaball.mdl");
    self.classname = "fireball";
    self.nextthink = time + (random() * MOVETYPE_FLY);
    self.think = fire_fly;
    
    if(!self.speed)
    {
        self.speed == 1000.000; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?
    }
    
};

// fire_fly
// function begins at statement 12335, parm_start=8064
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	8064	0
// OP_ADDRESS	8064	104	8065
// OP_STOREP_F	238	8065	0
// OP_ADDRESS	8064	103	8066
// OP_STOREP_F	231	8066	0
// OP_ADDRESS	8064	113	8067
// OP_STOREP_V	8070	8067	0
// OP_ADDRESS	8064	114	8073
// OP_CALL0	452	0	0
// OP_MUL_F	1	574	8074
// OP_SUB_F	8074	756	8075
// OP_STOREP_F	8075	8073	0
// OP_ADDRESS	8064	115	8076
// OP_CALL0	452	0	0
// OP_MUL_F	1	574	8077
// OP_SUB_F	8077	756	8078
// OP_STOREP_F	8078	8076	0
// OP_ADDRESS	8064	116	8079
// OP_LOAD_F	28	364	8080
// OP_CALL0	452	0	0
// OP_MUL_F	1	2356	8081
// OP_ADD_F	8080	8081	8082
// OP_STOREP_F	8082	8079	0
// OP_ADDRESS	8064	129	8083
// OP_STOREP_S	5442	8083	0
// OP_STORE_V	8064	4	0
// OP_STORE_V	4353	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	8064	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	8064	4	0
// OP_LOAD_V	28	105	8084
// OP_STORE_V	8084	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	8064	150	8087
// OP_ADD_F	31	230	8088
// OP_STOREP_F	8088	8087	0
// OP_ADDRESS	8064	148	8089
// OP_STOREP_FNC	519	8089	0
// OP_ADDRESS	8064	146	8090
// OP_STOREP_FNC	8053	8090	0
// OP_ADDRESS	28	150	8091
// OP_CALL0	452	0	0
// OP_MUL_F	1	230	8092
// OP_ADD_F	31	8092	8093
// OP_ADD_F	8093	228	8094
// OP_STOREP_F	8094	8091	0
// OP_ADDRESS	28	148	8095
// OP_STOREP_FNC	8052	8095	0
// OP_DONE	0	0	0
void () fire_fly = 
{
    local entity fireball;
    fireball = spawn();
    fireball.solid = SOLID_TRIGGER;
    fireball.movetype = MOVETYPE_TOSS;
    fireball.velocity = '0.000 0.000 1000.000';
    fireball.velocity_x = (random() * MUST_HAVE) - 50.000;
    fireball.velocity_y = (random() * MUST_HAVE) - 50.000;
    fireball.velocity_z = self.speed + (random() * 200.000);
    fireball.classname = "fireball";
    setmodel(fireball, "progs/lavaball.mdl");
    setsize(fireball, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(fireball, self.origin);
    fireball.nextthink = time + MOVETYPE_FLY;
    fireball.think = SUB_Remove;
    fireball.touch = fire_touch;
    self.nextthink = (time + (random() * MOVETYPE_FLY)) + MOVETYPE_WALK;
    self.think = fire_fly;
};

// fire_touch
// function begins at statement 12388, parm_start=8096
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	576	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () fire_touch = 
{
    T_Damage(other, self, self, KINDA_WANT);
    remove(self);
};

// barrel_explode
// function begins at statement 12396, parm_start=8097
// OP_ADDRESS	28	163	8097
// OP_STOREP_F	250	8097	0
// OP_ADDRESS	28	129	8098
// OP_STOREP_S	5421	8098	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	8099	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2088	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3091	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	8100
// OP_STORE_V	8100	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	5993	10	0
// OP_STORE_V	8103	13	0
// OP_CALL4	490	0	0
// OP_ADDRESS	28	108	8104
// OP_LOAD_F	28	108	8105
// OP_ADD_F	8105	219	8106
// OP_STOREP_F	8106	8104	0
// OP_CALL0	3392	0	0
// OP_DONE	0	0	0
void () barrel_explode = 
{
    self.takedamage = DAMAGE_NO;
    self.classname = "explo_box";
    T_RadiusDamage(self, self, 160.000, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", TRUE, ATTN_NORM);
    particle(self.origin, VEC_ORIGIN, 75.000, 255.000);
    self.origin_z = self.origin_z + FL_MONSTER;
    BecomeExplosion();
};

// misc_explobox
// function begins at statement 12423, parm_start=8108
// OP_ADDRESS	28	104	8109
// OP_STOREP_F	239	8109	0
// OP_ADDRESS	28	103	8110
// OP_STOREP_F	227	8110	0
// OP_STORE_V	8111	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8111	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3091	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	152	8112
// OP_STOREP_F	576	8112	0
// OP_ADDRESS	28	362	8113
// OP_STOREP_FNC	8096	8113	0
// OP_ADDRESS	28	163	8114
// OP_STOREP_F	252	8114	0
// OP_ADDRESS	28	108	8115
// OP_LOAD_F	28	108	8116
// OP_ADD_F	8116	216	8117
// OP_STOREP_F	8117	8115	0
// OP_LOAD_F	28	108	8118
// OP_STORE_F	8118	8108	0
// OP_CALL0	478	0	0
// OP_LOAD_F	28	108	8119
// OP_SUB_F	8108	8119	8120
// OP_GT	8120	2229	8121
// OP_IFNOT	8121	12	0
// OP_STORE_V	8122	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	8123
// OP_STORE_V	8123	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () misc_explobox = 
{
    local float oldz;
    self.solid = SOLID_BBOX;
    self.movetype = MOVETYPE_NONE;
    precache_model("maps/b_explob.bsp");
    setmodel(self, "maps/b_explob.bsp");
    precache_sound("weapons/r_exp3.wav");
    self.health = KINDA_WANT;
    self.th_die = barrel_explode;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + FL_SWIM;
    oldz = self.origin_z;
    droptofloor();
    
    if((oldz - self.origin_z) > 250.000)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

// misc_explobox2
// function begins at statement 12463, parm_start=8127
// OP_ADDRESS	28	104	8128
// OP_STOREP_F	239	8128	0
// OP_ADDRESS	28	103	8129
// OP_STOREP_F	227	8129	0
// OP_STORE_V	8130	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8130	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	3091	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	152	8131
// OP_STOREP_F	576	8131	0
// OP_ADDRESS	28	362	8132
// OP_STOREP_FNC	8096	8132	0
// OP_ADDRESS	28	163	8133
// OP_STOREP_F	252	8133	0
// OP_ADDRESS	28	108	8134
// OP_LOAD_F	28	108	8135
// OP_ADD_F	8135	216	8136
// OP_STOREP_F	8136	8134	0
// OP_LOAD_F	28	108	8137
// OP_STORE_F	8137	8127	0
// OP_CALL0	478	0	0
// OP_LOAD_F	28	108	8138
// OP_SUB_F	8127	8138	8139
// OP_GT	8139	2229	8140
// OP_IFNOT	8140	12	0
// OP_STORE_V	8122	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	8141
// OP_STORE_V	8141	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () misc_explobox2 = 
{
    local float oldz;
    self.solid = SOLID_BBOX;
    self.movetype = MOVETYPE_NONE;
    precache_model2("maps/b_exbox2.bsp");
    setmodel(self, "maps/b_exbox2.bsp");
    precache_sound("weapons/r_exp3.wav");
    self.health = KINDA_WANT;
    self.th_die = barrel_explode;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + FL_SWIM;
    oldz = self.origin_z;
    droptofloor();
    
    if((oldz - self.origin_z) > 250.000)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

float SPAWNFLAG_SUPERSPIKE = 1.000;
float SPAWNFLAG_LASER = 2.000;
void (vector org, vector vec) LaunchLaser;
// spikeshooter_use
// function begins at statement 12503, parm_start=8148
// OP_LOAD_F	28	195	8148
// OP_BITAND	8148	8145	8149
// OP_IFNOT	8149	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8150	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	8151
// OP_STORE_V	8151	4	0
// OP_LOAD_V	28	202	8154
// OP_STORE_V	8154	7	0
// OP_CALL2	8146	0	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3098	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	8157
// OP_STORE_V	8157	4	0
// OP_LOAD_V	28	202	8160
// OP_STORE_V	8160	7	0
// OP_CALL2	3745	0	0
// OP_ADDRESS	345	113	8163
// OP_LOAD_V	28	202	8166
// OP_MUL_VF	8166	1546	8169
// OP_STOREP_V	8169	8163	0
// OP_LOAD_F	28	195	8172
// OP_BITAND	8172	8144	8173
// OP_IFNOT	8173	3	0
// OP_ADDRESS	345	146	8174
// OP_STOREP_FNC	3744	8174	0
// OP_DONE	0	0	0
void () spikeshooter_use = 
{
    if(self.spawnflags & SPAWNFLAG_LASER)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", TRUE, ATTN_NORM);
        LaunchLaser(self.origin, self.movedir);
    }
    else
    {
        sound(self, CHAN_VOICE, "weapons/spike2.wav", TRUE, ATTN_NORM);
        launch_spike(self.origin, self.movedir);
        newmis.velocity = self.movedir * 500.000;
        
        if(self.spawnflags & SPAWNFLAG_SUPERSPIKE)
        {
            newmis.touch = superspike_touch;
        }
        
    }
    
};

// shooter_think
// function begins at statement 12539, parm_start=8176
// OP_CALL0	8147	0	0
// OP_ADDRESS	28	150	8176
// OP_LOAD_F	28	413	8177
// OP_ADD_F	31	8177	8178
// OP_STOREP_F	8178	8176	0
// OP_ADDRESS	345	113	8179
// OP_LOAD_V	28	202	8182
// OP_MUL_VF	8182	1546	8185
// OP_STOREP_V	8185	8179	0
// OP_DONE	0	0	0
void () shooter_think = 
{
    spikeshooter_use();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * 500.000;
};

// trap_spikeshooter
// function begins at statement 12549, parm_start=8189
// OP_CALL0	916	0	0
// OP_ADDRESS	28	147	8189
// OP_STOREP_FNC	8147	8189	0
// OP_LOAD_F	28	195	8190
// OP_BITAND	8190	8145	8191
// OP_IFNOT	8191	8	0
// OP_STORE_V	8192	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	8150	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8193	4	0
// OP_CALL1	509	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	3098	4	0
// OP_CALL1	464	0	0
// OP_DONE	0	0	0
void () trap_spikeshooter = 
{
    SetMovedir();
    self.use = spikeshooter_use;
    if(self.spawnflags & SPAWNFLAG_LASER)
    {
        precache_model2("progs/laser.mdl");
        precache_sound2("enforcer/enfire.wav");
        precache_sound2("enforcer/enfstop.wav");
    }
    else
    {
        precache_sound("weapons/spike2.wav");
    }
    
};

// trap_shooter
// function begins at statement 12565, parm_start=8195
// OP_CALL0	8188	0	0
// OP_LOAD_F	28	413	8195
// OP_EQ_F	8195	213	8196
// OP_IFNOT	8196	3	0
// OP_ADDRESS	28	413	8197
// OP_STOREP_F	214	8197	0
// OP_ADDRESS	28	150	8198
// OP_LOAD_F	28	150	8199
// OP_LOAD_F	28	413	8200
// OP_ADD_F	8199	8200	8201
// OP_LOAD_F	28	102	8202
// OP_ADD_F	8201	8202	8203
// OP_STOREP_F	8203	8198	0
// OP_ADDRESS	28	148	8204
// OP_STOREP_FNC	8175	8204	0
// OP_DONE	0	0	0
void () trap_shooter = 
{
    trap_spikeshooter();
    
    if(self.wait == FALSE)
    {
        self.wait = TRUE;
    }
    
    self.nextthink = (self.nextthink + self.wait) + self.ltime;
    self.think = shooter_think;
};

void () make_bubbles;
void () bubble_remove;
// air_bubbles
// function begins at statement 12581, parm_start=8208
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	4348	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	150	8208
// OP_ADD_F	31	214	8209
// OP_STOREP_F	8209	8208	0
// OP_ADDRESS	28	148	8210
// OP_STOREP_FNC	8205	8210	0
// OP_DONE	0	0	0
void () air_bubbles = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/s_bubble.spr");
    self.nextthink = time + TRUE;
    self.think = make_bubbles;
};

// make_bubbles
// function begins at statement 12593, parm_start=8211
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	8211	0
// OP_STORE_V	8211	4	0
// OP_STORE_V	4348	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	8211	4	0
// OP_LOAD_V	28	105	8212
// OP_STORE_V	8212	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	8211	103	8215
// OP_STOREP_F	233	8215	0
// OP_ADDRESS	8211	104	8216
// OP_STOREP_F	237	8216	0
// OP_ADDRESS	8211	113	8217
// OP_STOREP_V	5728	8217	0
// OP_ADDRESS	8211	150	8220
// OP_ADD_F	31	677	8221
// OP_STOREP_F	8221	8220	0
// OP_ADDRESS	8211	148	8222
// OP_STOREP_FNC	5449	8222	0
// OP_ADDRESS	8211	146	8223
// OP_STOREP_FNC	8206	8223	0
// OP_ADDRESS	8211	129	8224
// OP_STOREP_S	5735	8224	0
// OP_ADDRESS	8211	131	8225
// OP_STOREP_F	213	8225	0
// OP_ADDRESS	8211	421	8226
// OP_STOREP_F	213	8226	0
// OP_STORE_V	8211	4	0
// OP_STORE_V	1481	7	0
// OP_STORE_V	1484	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	150	8227
// OP_CALL0	452	0	0
// OP_ADD_F	31	1	8228
// OP_ADD_F	8228	677	8229
// OP_STOREP_F	8229	8227	0
// OP_ADDRESS	28	148	8230
// OP_STOREP_FNC	8205	8230	0
// OP_DONE	0	0	0
void () make_bubbles = 
{
    local entity bubble;
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.origin);
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0.000 0.000 15.000';
    bubble.nextthink = time + 0.500;
    bubble.think = bubble_bob;
    bubble.touch = bubble_remove;
    bubble.classname = "bubble";
    bubble.frame = FALSE;
    bubble.cnt = FALSE;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.nextthink = (time + random()) + 0.500;
    self.think = make_bubbles;
};

// bubble_split
// function begins at statement 12633, parm_start=8232
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	8232	0
// OP_STORE_V	8232	4	0
// OP_STORE_V	4348	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	8232	4	0
// OP_LOAD_V	28	105	8233
// OP_STORE_V	8233	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	8232	103	8236
// OP_STOREP_F	233	8236	0
// OP_ADDRESS	8232	104	8237
// OP_STOREP_F	237	8237	0
// OP_ADDRESS	8232	113	8238
// OP_LOAD_V	28	113	8241
// OP_STOREP_V	8241	8238	0
// OP_ADDRESS	8232	150	8244
// OP_ADD_F	31	677	8245
// OP_STOREP_F	8245	8244	0
// OP_ADDRESS	8232	148	8246
// OP_STOREP_FNC	5449	8246	0
// OP_ADDRESS	8232	146	8247
// OP_STOREP_FNC	8206	8247	0
// OP_ADDRESS	8232	129	8248
// OP_STOREP_S	5735	8248	0
// OP_ADDRESS	8232	131	8249
// OP_STOREP_F	214	8249	0
// OP_ADDRESS	8232	421	8250
// OP_STOREP_F	235	8250	0
// OP_STORE_V	8232	4	0
// OP_STORE_V	1481	7	0
// OP_STORE_V	1484	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	131	8251
// OP_STOREP_F	214	8251	0
// OP_ADDRESS	28	421	8252
// OP_STOREP_F	235	8252	0
// OP_LOAD_F	28	189	8253
// OP_NE_F	8253	228	8254
// OP_IFNOT	8254	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () bubble_split = 
{
    local entity bubble;
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.origin);
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = self.velocity;
    bubble.nextthink = time + 0.500;
    bubble.think = bubble_bob;
    bubble.touch = bubble_remove;
    bubble.classname = "bubble";
    bubble.frame = TRUE;
    bubble.cnt = MOVETYPE_BOUNCE;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.frame = TRUE;
    self.cnt = MOVETYPE_BOUNCE;
    
    if(self.waterlevel != MOVETYPE_WALK)
    {
        remove(self);
    }
    
};

// bubble_remove
// function begins at statement 12676, parm_start=8255
// OP_LOAD_S	29	129	8255
// OP_LOAD_S	28	129	8256
// OP_EQ_S	8255	8256	8257
// OP_IFNOT	8257	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () bubble_remove = 
{
    
    if(other.classname == self.classname)
    {
        return;
    }
    
    remove(self);
};

// bubble_bob
// function begins at statement 12684, parm_start=8258
// OP_ADDRESS	28	421	8267
// OP_LOAD_F	28	421	8268
// OP_ADD_F	8268	214	8269
// OP_STOREP_F	8269	8267	0
// OP_LOAD_F	28	421	8270
// OP_EQ_F	8270	229	8271
// OP_IFNOT	8271	2	0
// OP_CALL0	8231	0	0
// OP_LOAD_F	28	421	8272
// OP_EQ_F	8272	576	8273
// OP_IFNOT	8273	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_LOAD_F	28	114	8274
// OP_CALL0	452	0	0
// OP_MUL_F	1	576	8275
// OP_ADD_F	4751	8275	8276
// OP_ADD_F	8274	8276	8277
// OP_STORE_F	8277	8258	0
// OP_LOAD_F	28	115	8278
// OP_CALL0	452	0	0
// OP_MUL_F	1	576	8279
// OP_ADD_F	4751	8279	8280
// OP_ADD_F	8278	8280	8281
// OP_STORE_F	8281	8259	0
// OP_LOAD_F	28	116	8282
// OP_ADD_F	8282	235	8283
// OP_CALL0	452	0	0
// OP_MUL_F	1	235	8284
// OP_ADD_F	8283	8284	8285
// OP_STORE_F	8285	8260	0
// OP_GT	8258	235	8286
// OP_IFNOT	8286	2	0
// OP_STORE_F	230	8258	0
// OP_LT	8258	4751	8287
// OP_IFNOT	8287	2	0
// OP_STORE_F	280	8258	0
// OP_GT	8259	235	8288
// OP_IFNOT	8288	2	0
// OP_STORE_F	230	8259	0
// OP_LT	8259	4751	8289
// OP_IFNOT	8289	2	0
// OP_STORE_F	280	8259	0
// OP_LT	8260	235	8290
// OP_IFNOT	8290	2	0
// OP_STORE_F	2246	8260	0
// OP_GT	8260	304	8291
// OP_IFNOT	8291	2	0
// OP_STORE_F	2261	8260	0
// OP_ADDRESS	28	114	8292
// OP_STOREP_F	8258	8292	0
// OP_ADDRESS	28	115	8293
// OP_STOREP_F	8259	8293	0
// OP_ADDRESS	28	116	8294
// OP_STOREP_F	8260	8294	0
// OP_ADDRESS	28	150	8295
// OP_ADD_F	31	677	8296
// OP_STOREP_F	8296	8295	0
// OP_ADDRESS	28	148	8297
// OP_STOREP_FNC	5449	8297	0
// OP_DONE	0	0	0
void () bubble_bob = 
{
    local float rnd1;
    local float rnd2;
    local float rnd3;
    local vector vtmp1;
    local vector modi;
    self.cnt = self.cnt + TRUE;
    
    if(self.cnt == MOVETYPE_STEP)
    {
        bubble_split();
    }
    
    
    if(self.cnt == KINDA_WANT)
    {
        remove(self);
    }
    
    rnd1 = self.velocity_x + (-10.000 + (random() * KINDA_WANT));
    rnd2 = self.velocity_y + (-10.000 + (random() * KINDA_WANT));
    rnd3 = (self.velocity_z + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    
    if(rnd1 > MOVETYPE_BOUNCE)
    {
        rnd1 = MOVETYPE_FLY;
    }
    
    
    if(rnd1 < -10.000)
    {
        rnd1 = CONTENT_LAVA;
    }
    
    
    if(rnd2 > MOVETYPE_BOUNCE)
    {
        rnd2 = MOVETYPE_FLY;
    }
    
    
    if(rnd2 < -10.000)
    {
        rnd2 = CONTENT_LAVA;
    }
    
    
    if(rnd3 < MOVETYPE_BOUNCE)
    {
        rnd3 = 15.000;
    }
    
    
    if(rnd3 > SVC_INTERMISSION)
    {
        rnd3 = 25.000;
    }
    
    self.velocity_x = rnd1;
    self.velocity_y = rnd2;
    self.velocity_z = rnd3;
    self.nextthink = time + 0.500;
    self.think = bubble_bob;
};

// viewthing
// function begins at statement 12745, parm_start=8299
// OP_ADDRESS	28	103	8299
// OP_STOREP_F	227	8299	0
// OP_ADDRESS	28	104	8300
// OP_STOREP_F	237	8300	0
// OP_STORE_V	4342	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4342	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () viewthing = 
{
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    precache_model("progs/player.mdl");
    setmodel(self, "progs/player.mdl");
};

// func_wall_use
// function begins at statement 12755, parm_start=8302
// OP_ADDRESS	28	131	8302
// OP_LOAD_F	28	131	8303
// OP_SUB_F	214	8303	8304
// OP_STOREP_F	8304	8302	0
// OP_DONE	0	0	0
void () func_wall_use = 
{
    self.frame = TRUE - self.frame;
};

// func_wall
// function begins at statement 12760, parm_start=8306
// OP_ADDRESS	28	117	8306
// OP_STOREP_V	286	8306	0
// OP_ADDRESS	28	103	8309
// OP_STOREP_F	232	8309	0
// OP_ADDRESS	28	104	8310
// OP_STOREP_F	241	8310	0
// OP_ADDRESS	28	147	8311
// OP_STOREP_FNC	8301	8311	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8312
// OP_STORE_V	8312	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () func_wall = 
{
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_wall_use;
    setmodel(self, self.model);
};

// func_illusionary
// function begins at statement 12773, parm_start=8314
// OP_ADDRESS	28	117	8314
// OP_STOREP_V	286	8314	0
// OP_ADDRESS	28	103	8317
// OP_STOREP_F	227	8317	0
// OP_ADDRESS	28	104	8318
// OP_STOREP_F	237	8318	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8319
// OP_STORE_V	8319	7	0
// OP_CALL2	449	0	0
// OP_CALL0	503	0	0
// OP_DONE	0	0	0
void () func_illusionary = 
{
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    setmodel(self, self.model);
    makestatic();
};

// func_episodegate
// function begins at statement 12785, parm_start=8321
// OP_LOAD_F	28	195	8321
// OP_BITAND	38	8321	8322
// OP_NOT_F	8322	0	8323
// OP_IFNOT	8323	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	8324
// OP_STOREP_V	286	8324	0
// OP_ADDRESS	28	103	8327
// OP_STOREP_F	232	8327	0
// OP_ADDRESS	28	104	8328
// OP_STOREP_F	241	8328	0
// OP_ADDRESS	28	147	8329
// OP_STOREP_FNC	8301	8329	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8330
// OP_STORE_V	8330	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () func_episodegate = 
{
    
    if(!(serverflags & self.spawnflags))
    {
        return;
    }
    
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_wall_use;
    setmodel(self, self.model);
};

// func_bossgate
// function begins at statement 12803, parm_start=8332
// OP_BITAND	38	2246	8332
// OP_EQ_F	8332	2246	8333
// OP_IFNOT	8333	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	8334
// OP_STOREP_V	286	8334	0
// OP_ADDRESS	28	103	8337
// OP_STOREP_F	232	8337	0
// OP_ADDRESS	28	104	8338
// OP_STOREP_F	241	8338	0
// OP_ADDRESS	28	147	8339
// OP_STOREP_FNC	8301	8339	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8340
// OP_STORE_V	8340	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () func_bossgate = 
{
    
    if((serverflags & 15.000) == 15.000)
    {
        return;
    }
    
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_wall_use;
    setmodel(self, self.model);
};

// ambient_suck_wind
// function begins at statement 12820, parm_start=8342
// OP_STORE_V	8342	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8343
// OP_STORE_V	8343	4	0
// OP_STORE_V	8342	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_suck_wind = 
{
    precache_sound("ambience/suck1.wav");
    ambientsound(self.origin, "ambience/suck1.wav", TRUE, ATTN_STATIC);
};

// ambient_drone
// function begins at statement 12829, parm_start=8347
// OP_STORE_V	8347	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8348
// OP_STORE_V	8348	4	0
// OP_STORE_V	8347	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_drone = 
{
    precache_sound("ambience/drone6.wav");
    ambientsound(self.origin, "ambience/drone6.wav", 0.500, ATTN_STATIC);
};

// ambient_flouro_buzz
// function begins at statement 12838, parm_start=8352
// OP_STORE_V	8035	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8352
// OP_STORE_V	8352	4	0
// OP_STORE_V	8035	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_flouro_buzz = 
{
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", TRUE, ATTN_STATIC);
};

// ambient_drip
// function begins at statement 12847, parm_start=8356
// OP_STORE_V	8356	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8357
// OP_STORE_V	8357	4	0
// OP_STORE_V	8356	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_drip = 
{
    precache_sound("ambience/drip1.wav");
    ambientsound(self.origin, "ambience/drip1.wav", 0.500, ATTN_STATIC);
};

// ambient_comp_hum
// function begins at statement 12856, parm_start=8361
// OP_STORE_V	8361	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8362
// OP_STORE_V	8362	4	0
// OP_STORE_V	8361	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_comp_hum = 
{
    precache_sound("ambience/comp1.wav");
    ambientsound(self.origin, "ambience/comp1.wav", TRUE, ATTN_STATIC);
};

// ambient_thunder
// function begins at statement 12865, parm_start=8366
// OP_STORE_V	8366	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8367
// OP_STORE_V	8367	4	0
// OP_STORE_V	8366	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_thunder = 
{
    precache_sound("ambience/thunder1.wav");
    ambientsound(self.origin, "ambience/thunder1.wav", 0.500, ATTN_STATIC);
};

// ambient_light_buzz
// function begins at statement 12874, parm_start=8371
// OP_STORE_V	8027	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8371
// OP_STORE_V	8371	4	0
// OP_STORE_V	8027	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_light_buzz = 
{
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.500, ATTN_STATIC);
};

// ambient_swamp1
// function begins at statement 12883, parm_start=8375
// OP_STORE_V	8375	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8376
// OP_STORE_V	8376	4	0
// OP_STORE_V	8375	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_swamp1 = 
{
    precache_sound("ambience/swamp1.wav");
    ambientsound(self.origin, "ambience/swamp1.wav", 0.500, ATTN_STATIC);
};

// ambient_swamp2
// function begins at statement 12892, parm_start=8380
// OP_STORE_V	8380	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	8381
// OP_STORE_V	8381	4	0
// OP_STORE_V	8380	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_swamp2 = 
{
    precache_sound("ambience/swamp2.wav");
    ambientsound(self.origin, "ambience/swamp2.wav", 0.500, ATTN_STATIC);
};

// noise_think
// function begins at statement 12901, parm_start=8385
// OP_ADDRESS	28	150	8385
// OP_ADD_F	31	677	8386
// OP_STOREP_F	8386	8385	0
// OP_STORE_V	28	4	0
// OP_STORE_V	214	7	0
// OP_STORE_V	8150	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	216	7	0
// OP_STORE_V	8193	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	228	7	0
// OP_STORE_V	1659	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	229	7	0
// OP_STORE_V	1661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	230	7	0
// OP_STORE_V	1663	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	231	7	0
// OP_STORE_V	1664	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	232	7	0
// OP_STORE_V	8387	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () noise_think = 
{
    self.nextthink = time + 0.500;
    sound(self, TRUE, "enforcer/enfire.wav", TRUE, ATTN_NORM);
    sound(self, FL_SWIM, "enforcer/enfstop.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_WALK, "enforcer/sight1.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_STEP, "enforcer/sight2.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_FLY, "enforcer/sight3.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_TOSS, "enforcer/sight4.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_PUSH, "enforcer/pain1.wav", TRUE, ATTN_NORM);
};

// misc_noisemaker
// function begins at statement 12947, parm_start=8389
// OP_STORE_V	8150	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8193	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1659	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1661	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1663	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1664	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8387	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8389	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8390	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8391	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	150	8392
// OP_ADD_F	31	993	8393
// OP_CALL0	452	0	0
// OP_ADD_F	8393	1	8394
// OP_STOREP_F	8394	8392	0
// OP_ADDRESS	28	148	8395
// OP_STOREP_FNC	8384	8395	0
// OP_DONE	0	0	0
void () misc_noisemaker = 
{
    precache_sound2("enforcer/enfire.wav");
    precache_sound2("enforcer/enfstop.wav");
    precache_sound2("enforcer/sight1.wav");
    precache_sound2("enforcer/sight2.wav");
    precache_sound2("enforcer/sight3.wav");
    precache_sound2("enforcer/sight4.wav");
    precache_sound2("enforcer/pain1.wav");
    precache_sound2("enforcer/pain2.wav");
    precache_sound2("enforcer/death1.wav");
    precache_sound2("enforcer/idle1.wav");
    self.nextthink = (time + 0.100) + random();
    self.think = noise_think;
};

