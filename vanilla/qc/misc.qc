// info_null
// function begins at statement 11129, parm_start=7221
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () info_null = 
{
    remove(self);
};

// info_notnull
// function begins at statement 11132, parm_start=7222
// OP_DONE	0	0	0
void () info_notnull = 
{
};

float START_OFF = 1;
// light_use
// function begins at statement 11133, parm_start=7224
// OP_LOAD_F	28	195	7224
// OP_BITAND	7224	7222	7225
// OP_IFNOT	7225	10	0
// OP_LOAD_F	28	355	7226
// OP_STORE_V	7226	4	0
// OP_STORE_V	3860	7	0
// OP_CALL2	479	0	0
// OP_ADDRESS	28	195	7227
// OP_LOAD_F	28	195	7228
// OP_SUB_F	7228	7222	7229
// OP_STOREP_F	7229	7227	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	355	7230
// OP_STORE_V	7230	4	0
// OP_STORE_V	3873	7	0
// OP_CALL2	479	0	0
// OP_ADDRESS	28	195	7231
// OP_LOAD_F	28	195	7232
// OP_ADD_F	7232	7222	7233
// OP_STOREP_F	7233	7231	0
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
// function begins at statement 11154, parm_start=7235
// OP_LOAD_S	28	197	7235
// OP_NOT_S	7235	0	7236
// OP_IFNOT	7236	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	355	7237
// OP_GE	7237	5674	7238
// OP_IFNOT	7238	15	0
// OP_ADDRESS	28	147	7239
// OP_STOREP_FNC	7223	7239	0
// OP_LOAD_F	28	195	7240
// OP_BITAND	7240	7222	7241
// OP_IFNOT	7241	6	0
// OP_LOAD_F	28	355	7242
// OP_STORE_V	7242	4	0
// OP_STORE_V	3873	7	0
// OP_CALL2	479	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	355	7243
// OP_STORE_V	7243	4	0
// OP_STORE_V	3860	7	0
// OP_CALL2	479	0	0
// OP_DONE	0	0	0
void () light = 
{
    
    if(!self.targetname)
    {
        remove(self);
        return;
    }
    
    
    if(self.style >= DOOR_TOGGLE)
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
// function begins at statement 11178, parm_start=7245
// OP_LOAD_F	28	355	7245
// OP_GE	7245	5674	7246
// OP_IFNOT	7246	15	0
// OP_ADDRESS	28	147	7247
// OP_STOREP_FNC	7223	7247	0
// OP_LOAD_F	28	195	7248
// OP_BITAND	7248	7222	7249
// OP_IFNOT	7249	6	0
// OP_LOAD_F	28	355	7250
// OP_STORE_V	7250	4	0
// OP_STORE_V	3873	7	0
// OP_CALL2	479	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	355	7251
// OP_STORE_V	7251	4	0
// OP_STORE_V	3860	7	0
// OP_CALL2	479	0	0
// OP_STORE_V	7252	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7253
// OP_STORE_V	7253	4	0
// OP_STORE_V	7252	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () light_fluoro = 
{
    
    if(self.style >= DOOR_TOGGLE)
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
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.5, ATTN_STATIC);
};

// light_fluorospark
// function begins at statement 11204, parm_start=7257
// OP_LOAD_F	28	355	7257
// OP_NOT_F	7257	0	7258
// OP_IFNOT	7258	3	0
// OP_ADDRESS	28	355	7259
// OP_STOREP_F	318	7259	0
// OP_STORE_V	7260	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7261
// OP_STORE_V	7261	4	0
// OP_STORE_V	7260	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () light_fluorospark = 
{
    
    if(!self.style)
    {
        self.style = TE_LAVASPLASH;
    }
    
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 0.5, ATTN_STATIC);
};

// light_globe
// function begins at statement 11218, parm_start=7265
// OP_STORE_V	7265	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7265	7	0
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
// function begins at statement 11226, parm_start=7267
// OP_STORE_V	7267	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7268
// OP_STORE_V	7268	4	0
// OP_STORE_V	7267	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () FireAmbient = 
{
    precache_sound("ambience/fire1.wav");
    ambientsound(self.origin, "ambience/fire1.wav", 0.5, ATTN_STATIC);
};

// light_torch_small_walltorch
// function begins at statement 11235, parm_start=7272
// OP_STORE_V	7272	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7272	7	0
// OP_CALL2	449	0	0
// OP_CALL0	7266	0	0
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
// function begins at statement 11244, parm_start=7274
// OP_STORE_V	7274	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7274	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	131	7275
// OP_STOREP_F	7222	7275	0
// OP_CALL0	7266	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () light_flame_large_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    self.frame = START_OFF;
    FireAmbient();
    makestatic(self);
};

// light_flame_small_yellow
// function begins at statement 11255, parm_start=7277
// OP_STORE_V	7274	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7274	7	0
// OP_CALL2	449	0	0
// OP_CALL0	7266	0	0
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
// function begins at statement 11264, parm_start=7278
// OP_STORE_V	7274	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7274	7	0
// OP_CALL2	449	0	0
// OP_CALL0	7266	0	0
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
// function begins at statement 11273, parm_start=7281
// OP_STORE_V	3859	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	129	7281
// OP_STOREP_S	4832	7281	0
// OP_ADDRESS	28	150	7282
// OP_CALL0	452	0	0
// OP_MUL_F	1	313	7283
// OP_ADD_F	31	7283	7284
// OP_STOREP_F	7284	7282	0
// OP_ADDRESS	28	148	7285
// OP_STOREP_FNC	7278	7285	0
// OP_LOAD_F	28	364	7286
// OP_NOT_F	7286	0	7287
// OP_IFNOT	7287	3	0
// OP_ADDRESS	28	364	7288
// OP_STOREP_F	1168	7288	0
// OP_DONE	0	0	0
void () misc_fireball = 
{
    precache_model("progs/lavaball.mdl");
    self.classname = "fireball";
    self.nextthink = time + (random() * TE_LIGHTNING1);
    self.think = fire_fly;
    
    if(!self.speed)
    {
        self.speed = 1000;
    }
    
};

// fire_fly
// function begins at statement 11290, parm_start=7289
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7289	0
// OP_ADDRESS	7289	104	7290
// OP_STOREP_F	238	7290	0
// OP_ADDRESS	7289	103	7291
// OP_STOREP_F	231	7291	0
// OP_ADDRESS	7289	113	7292
// OP_STOREP_V	7295	7292	0
// OP_ADDRESS	7289	114	7298
// OP_CALL0	452	0	0
// OP_MUL_F	1	1884	7299
// OP_SUB_F	7299	2227	7300
// OP_STOREP_F	7300	7298	0
// OP_ADDRESS	7289	115	7301
// OP_CALL0	452	0	0
// OP_MUL_F	1	1884	7302
// OP_SUB_F	7302	2227	7303
// OP_STOREP_F	7303	7301	0
// OP_ADDRESS	7289	116	7304
// OP_LOAD_F	28	364	7305
// OP_CALL0	452	0	0
// OP_MUL_F	1	1965	7306
// OP_ADD_F	7305	7306	7307
// OP_STOREP_F	7307	7304	0
// OP_ADDRESS	7289	129	7308
// OP_STOREP_S	4832	7308	0
// OP_STORE_V	7289	4	0
// OP_STORE_V	3859	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	7289	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	7309
// OP_STORE_V	7289	4	0
// OP_STORE_V	7309	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	7289	150	7312
// OP_ADD_F	31	313	7313
// OP_STOREP_F	7313	7312	0
// OP_ADDRESS	7289	148	7314
// OP_STOREP_FNC	519	7314	0
// OP_ADDRESS	7289	146	7315
// OP_STOREP_FNC	7279	7315	0
// OP_ADDRESS	28	150	7316
// OP_CALL0	452	0	0
// OP_MUL_F	1	313	7317
// OP_ADD_F	31	7317	7318
// OP_ADD_F	7318	370	7319
// OP_STOREP_F	7319	7316	0
// OP_ADDRESS	28	148	7320
// OP_STOREP_FNC	7278	7320	0
// OP_DONE	0	0	0
void () fire_fly = 
{
    local entity fireball;
    fireball = spawn();
    fireball.solid = SOLID_TRIGGER;
    fireball.movetype = MOVETYPE_TOSS;
    fireball.velocity = '0 0 1000';
    fireball.velocity_x = (random() * 100) - 50;
    fireball.velocity_y = (random() * 100) - 50;
    fireball.velocity_z = self.speed + (random() * 200);
    fireball.classname = "fireball";
    setmodel(fireball, "progs/lavaball.mdl");
    setsize(fireball, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(fireball, self.origin);
    fireball.nextthink = time + TE_LIGHTNING1;
    fireball.think = SUB_Remove;
    fireball.touch = fire_touch;
    self.nextthink = (time + (random() * TE_LIGHTNING1)) + AS_MELEE;
    self.think = fire_fly;
};

// fire_touch
// function begins at statement 11343, parm_start=7321
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	894	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () fire_touch = 
{
    T_Damage(other, self, self, 20);
    remove(self);
};

// barrel_explode
// function begins at statement 11351, parm_start=7322
// OP_ADDRESS	28	163	7322
// OP_STOREP_F	250	7322	0
// OP_ADDRESS	28	129	7323
// OP_STOREP_S	4815	7323	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	7324	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1720	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2616	10	0
// OP_STORE_V	7222	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	7325
// OP_STORE_V	7325	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	5393	10	0
// OP_STORE_V	3676	13	0
// OP_CALL4	490	0	0
// OP_ADDRESS	28	108	7328
// OP_LOAD_F	28	108	7329
// OP_ADD_F	7329	5674	7330
// OP_STOREP_F	7330	7328	0
// OP_CALL0	2911	0	0
// OP_DONE	0	0	0
void () barrel_explode = 
{
    self.takedamage = DAMAGE_NO;
    self.classname = "explo_box";
    T_RadiusDamage(self, self, 160, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", START_OFF, ATTN_NORM);
    particle(self.origin, VEC_ORIGIN, 75, 255);
    self.origin_z = self.origin_z + DOOR_TOGGLE;
    BecomeExplosion();
};

// misc_explobox
// function begins at statement 11378, parm_start=7332
// OP_ADDRESS	28	104	7333
// OP_STOREP_F	239	7333	0
// OP_ADDRESS	28	103	7334
// OP_STOREP_F	227	7334	0
// OP_STORE_V	7335	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7335	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	2616	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	152	7336
// OP_STOREP_F	894	7336	0
// OP_ADDRESS	28	362	7337
// OP_STOREP_FNC	7321	7337	0
// OP_ADDRESS	28	163	7338
// OP_STOREP_F	252	7338	0
// OP_ADDRESS	28	108	7339
// OP_LOAD_F	28	108	7340
// OP_ADD_F	7340	6564	7341
// OP_STOREP_F	7341	7339	0
// OP_LOAD_F	28	108	7342
// OP_STORE_F	7342	7332	0
// OP_CALL0	478	0	0
// OP_LOAD_F	28	108	7343
// OP_SUB_F	7332	7343	7344
// OP_GT	7344	1859	7345
// OP_IFNOT	7345	12	0
// OP_STORE_V	7346	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	7347
// OP_STORE_V	7347	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	1814	4	0
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
    self.health = 20;
    self.th_die = barrel_explode;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + SILENT;
    oldz = self.origin_z;
    droptofloor();
    
    if((oldz - self.origin_z) > 250)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

// misc_explobox2
// function begins at statement 11418, parm_start=7351
// OP_ADDRESS	28	104	7352
// OP_STOREP_F	239	7352	0
// OP_ADDRESS	28	103	7353
// OP_STOREP_F	227	7353	0
// OP_STORE_V	7354	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7354	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	2616	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	152	7355
// OP_STOREP_F	894	7355	0
// OP_ADDRESS	28	362	7356
// OP_STOREP_FNC	7321	7356	0
// OP_ADDRESS	28	163	7357
// OP_STOREP_F	252	7357	0
// OP_ADDRESS	28	108	7358
// OP_LOAD_F	28	108	7359
// OP_ADD_F	7359	6564	7360
// OP_STOREP_F	7360	7358	0
// OP_LOAD_F	28	108	7361
// OP_STORE_F	7361	7351	0
// OP_CALL0	478	0	0
// OP_LOAD_F	28	108	7362
// OP_SUB_F	7351	7362	7363
// OP_GT	7363	1859	7364
// OP_IFNOT	7364	12	0
// OP_STORE_V	7346	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	105	7365
// OP_STORE_V	7365	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	1814	4	0
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
    self.health = 20;
    self.th_die = barrel_explode;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + SILENT;
    oldz = self.origin_z;
    droptofloor();
    
    if((oldz - self.origin_z) > 250)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

float SPAWNFLAG_SUPERSPIKE = 1;
float SPAWNFLAG_LASER = 2;
void (vector org, vector vec) LaunchLaser;
// spikeshooter_use
// function begins at statement 11458, parm_start=7372
// OP_LOAD_F	28	195	7372
// OP_BITAND	7372	7369	7373
// OP_IFNOT	7373	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7374	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	7375
// OP_LOAD_V	28	202	7378
// OP_STORE_V	7375	4	0
// OP_STORE_V	7378	7	0
// OP_CALL2	7370	0	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2623	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	7381
// OP_LOAD_V	28	202	7384
// OP_STORE_V	7381	4	0
// OP_STORE_V	7384	7	0
// OP_CALL2	3206	0	0
// OP_ADDRESS	345	113	7387
// OP_LOAD_V	28	202	7390
// OP_MUL_VF	7390	1166	7393
// OP_STOREP_V	7393	7387	0
// OP_LOAD_F	28	195	7396
// OP_BITAND	7396	7368	7397
// OP_IFNOT	7397	3	0
// OP_ADDRESS	345	146	7398
// OP_STOREP_FNC	3205	7398	0
// OP_DONE	0	0	0
void () spikeshooter_use = 
{
    if(self.spawnflags & SPAWNFLAG_LASER)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        LaunchLaser(self.origin, self.movedir);
    }
    else
    {
        sound(self, CHAN_VOICE, "weapons/spike2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        launch_spike(self.origin, self.movedir);
        newmis.velocity = self.movedir * 500;
        
        if(self.spawnflags & SPAWNFLAG_SUPERSPIKE)
        {
            newmis.touch = superspike_touch;
        }
        
    }
    
};

// shooter_think
// function begins at statement 11494, parm_start=7400
// OP_CALL0	7371	0	0
// OP_ADDRESS	28	150	7400
// OP_LOAD_F	28	413	7401
// OP_ADD_F	31	7401	7402
// OP_STOREP_F	7402	7400	0
// OP_ADDRESS	345	113	7403
// OP_LOAD_V	28	202	7406
// OP_MUL_VF	7406	1166	7409
// OP_STOREP_V	7409	7403	0
// OP_DONE	0	0	0
void () shooter_think = 
{
    spikeshooter_use();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * 500;
};

// trap_spikeshooter
// function begins at statement 11504, parm_start=7413
// OP_CALL0	523	0	0
// OP_ADDRESS	28	147	7413
// OP_STOREP_FNC	7371	7413	0
// OP_LOAD_F	28	195	7414
// OP_BITAND	7414	7369	7415
// OP_IFNOT	7415	8	0
// OP_STORE_V	7416	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	7374	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7417	4	0
// OP_CALL1	509	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	2623	4	0
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
// function begins at statement 11520, parm_start=7419
// OP_CALL0	7412	0	0
// OP_LOAD_F	28	413	7419
// OP_EQ_F	7419	337	7420
// OP_IFNOT	7420	3	0
// OP_ADDRESS	28	413	7421
// OP_STOREP_F	7368	7421	0
// OP_ADDRESS	28	150	7422
// OP_LOAD_F	28	150	7423
// OP_LOAD_F	28	413	7424
// OP_ADD_F	7423	7424	7425
// OP_LOAD_F	28	102	7426
// OP_ADD_F	7425	7426	7427
// OP_STOREP_F	7427	7422	0
// OP_ADDRESS	28	148	7428
// OP_STOREP_FNC	7399	7428	0
// OP_DONE	0	0	0
void () trap_shooter = 
{
    trap_spikeshooter();
    
    if(self.wait == MSG_BROADCAST)
    {
        self.wait = SPAWNFLAG_SUPERSPIKE;
    }
    
    self.nextthink = (self.nextthink + self.wait) + self.ltime;
    self.think = shooter_think;
};

void () make_bubbles;
void () bubble_remove;
// air_bubbles
// function begins at statement 11536, parm_start=7432
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	3855	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	150	7432
// OP_ADD_F	31	7368	7433
// OP_STOREP_F	7433	7432	0
// OP_ADDRESS	28	148	7434
// OP_STOREP_FNC	7429	7434	0
// OP_DONE	0	0	0
void () air_bubbles = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/s_bubble.spr");
    self.nextthink = time + SPAWNFLAG_SUPERSPIKE;
    self.think = make_bubbles;
};

// make_bubbles
// function begins at statement 11548, parm_start=7435
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7435	0
// OP_STORE_V	7435	4	0
// OP_STORE_V	3855	7	0
// OP_CALL2	449	0	0
// OP_LOAD_V	28	105	7436
// OP_STORE_V	7435	4	0
// OP_STORE_V	7436	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	7435	103	7439
// OP_STOREP_F	233	7439	0
// OP_ADDRESS	7435	104	7440
// OP_STOREP_F	237	7440	0
// OP_ADDRESS	7435	113	7441
// OP_STOREP_V	5145	7441	0
// OP_ADDRESS	7435	150	7444
// OP_ADD_F	31	1491	7445
// OP_STOREP_F	7445	7444	0
// OP_ADDRESS	7435	148	7446
// OP_STOREP_FNC	4860	7446	0
// OP_ADDRESS	7435	146	7447
// OP_STOREP_FNC	7430	7447	0
// OP_ADDRESS	7435	129	7448
// OP_STOREP_S	5152	7448	0
// OP_ADDRESS	7435	131	7449
// OP_STOREP_F	337	7449	0
// OP_ADDRESS	7435	421	7450
// OP_STOREP_F	337	7450	0
// OP_STORE_V	7435	4	0
// OP_STORE_V	1100	7	0
// OP_STORE_V	1103	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	150	7451
// OP_CALL0	452	0	0
// OP_ADD_F	31	1	7452
// OP_ADD_F	7452	1491	7453
// OP_STOREP_F	7453	7451	0
// OP_ADDRESS	28	148	7454
// OP_STOREP_FNC	7429	7454	0
// OP_DONE	0	0	0
void () make_bubbles = 
{
    local entity bubble;
    bubble = spawn();
    setmodel(bubble, "progs/s_bubble.spr");
    setorigin(bubble, self.origin);
    bubble.movetype = MOVETYPE_NOCLIP;
    bubble.solid = SOLID_NOT;
    bubble.velocity = '0 0 15';
    bubble.nextthink = time + 0.5;
    bubble.think = bubble_bob;
    bubble.touch = bubble_remove;
    bubble.classname = "bubble";
    bubble.frame = MSG_BROADCAST;
    bubble.cnt = MSG_BROADCAST;
    setsize(bubble, '-8 -8 -8', '8 8 8');
    self.nextthink = (time + random()) + 0.5;
    self.think = make_bubbles;
};

// bubble_split
// function begins at statement 11588, parm_start=7456
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	7456	0
// OP_STORE_V	7456	4	0
// OP_STORE_V	3855	7	0
// OP_CALL2	449	0	0
// OP_LOAD_V	28	105	7457
// OP_STORE_V	7456	4	0
// OP_STORE_V	7457	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	7456	103	7460
// OP_STOREP_F	233	7460	0
// OP_ADDRESS	7456	104	7461
// OP_STOREP_F	237	7461	0
// OP_ADDRESS	7456	113	7462
// OP_LOAD_V	28	113	7465
// OP_STOREP_V	7465	7462	0
// OP_ADDRESS	7456	150	7468
// OP_ADD_F	31	1491	7469
// OP_STOREP_F	7469	7468	0
// OP_ADDRESS	7456	148	7470
// OP_STOREP_FNC	4860	7470	0
// OP_ADDRESS	7456	146	7471
// OP_STOREP_FNC	7430	7471	0
// OP_ADDRESS	7456	129	7472
// OP_STOREP_S	5152	7472	0
// OP_ADDRESS	7456	131	7473
// OP_STOREP_F	7368	7473	0
// OP_ADDRESS	7456	421	7474
// OP_STOREP_F	318	7474	0
// OP_STORE_V	7456	4	0
// OP_STORE_V	1100	7	0
// OP_STORE_V	1103	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	131	7475
// OP_STOREP_F	7368	7475	0
// OP_ADDRESS	28	421	7476
// OP_STOREP_F	318	7476	0
// OP_LOAD_F	28	189	7477
// OP_NE_F	7477	370	7478
// OP_IFNOT	7478	3	0
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
    bubble.nextthink = time + 0.5;
    bubble.think = bubble_bob;
    bubble.touch = bubble_remove;
    bubble.classname = "bubble";
    bubble.frame = SPAWNFLAG_SUPERSPIKE;
    bubble.cnt = TE_LAVASPLASH;
    setsize(bubble, '-8 -8 -8', '8 8 8');
    self.frame = SPAWNFLAG_SUPERSPIKE;
    self.cnt = TE_LAVASPLASH;
    
    if(self.waterlevel != AS_MELEE)
    {
        remove(self);
    }
    
};

// bubble_remove
// function begins at statement 11631, parm_start=7479
// OP_LOAD_S	29	129	7479
// OP_LOAD_S	28	129	7480
// OP_EQ_S	7479	7480	7481
// OP_IFNOT	7481	2	0
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
// function begins at statement 11639, parm_start=7482
// OP_ADDRESS	28	421	7491
// OP_LOAD_F	28	421	7492
// OP_ADD_F	7492	7368	7493
// OP_STOREP_F	7493	7491	0
// OP_LOAD_F	28	421	7494
// OP_EQ_F	7494	6076	7495
// OP_IFNOT	7495	2	0
// OP_CALL0	7455	0	0
// OP_LOAD_F	28	421	7496
// OP_EQ_F	7496	894	7497
// OP_IFNOT	7497	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_LOAD_F	28	114	7498
// OP_CALL0	452	0	0
// OP_MUL_F	1	894	7500
// OP_ADD_F	7499	7500	7501
// OP_ADD_F	7498	7501	7502
// OP_STORE_F	7502	7482	0
// OP_LOAD_F	28	115	7503
// OP_CALL0	452	0	0
// OP_MUL_F	1	894	7504
// OP_ADD_F	7499	7504	7505
// OP_ADD_F	7503	7505	7506
// OP_STORE_F	7506	7483	0
// OP_LOAD_F	28	116	7507
// OP_ADD_F	7507	318	7508
// OP_CALL0	452	0	0
// OP_MUL_F	1	318	7509
// OP_ADD_F	7508	7509	7510
// OP_STORE_F	7510	7484	0
// OP_GT	7482	318	7511
// OP_IFNOT	7511	2	0
// OP_STORE_F	313	7482	0
// OP_LT	7482	7499	7512
// OP_IFNOT	7512	2	0
// OP_STORE_F	280	7482	0
// OP_GT	7483	318	7513
// OP_IFNOT	7513	2	0
// OP_STORE_F	313	7483	0
// OP_LT	7483	7499	7514
// OP_IFNOT	7514	2	0
// OP_STORE_F	280	7483	0
// OP_LT	7484	318	7515
// OP_IFNOT	7515	2	0
// OP_STORE_F	1876	7484	0
// OP_GT	7484	304	7516
// OP_IFNOT	7516	2	0
// OP_STORE_F	1890	7484	0
// OP_ADDRESS	28	114	7517
// OP_STOREP_F	7482	7517	0
// OP_ADDRESS	28	115	7518
// OP_STOREP_F	7483	7518	0
// OP_ADDRESS	28	116	7519
// OP_STOREP_F	7484	7519	0
// OP_ADDRESS	28	150	7520
// OP_ADD_F	31	1491	7521
// OP_STOREP_F	7521	7520	0
// OP_ADDRESS	28	148	7522
// OP_STOREP_FNC	4860	7522	0
// OP_DONE	0	0	0
void () bubble_bob = 
{
    local float rnd1;
    local float rnd2;
    local float rnd3;
    local vector vtmp1;
    local vector modi;
    self.cnt = self.cnt + SPAWNFLAG_SUPERSPIKE;
    
    if(self.cnt == SECRET_1ST_DOWN)
    {
        bubble_split();
    }
    
    
    if(self.cnt == 20)
    {
        remove(self);
    }
    
    rnd1 = self.velocity_x + (-10 + (random() * 20));
    rnd2 = self.velocity_y + (-10 + (random() * 20));
    rnd3 = (self.velocity_z + TE_LAVASPLASH) + (random() * TE_LAVASPLASH);
    
    if(rnd1 > TE_LAVASPLASH)
    {
        rnd1 = TE_LIGHTNING1;
    }
    
    
    if(rnd1 < -10)
    {
        rnd1 = CONTENT_LAVA;
    }
    
    
    if(rnd2 > TE_LAVASPLASH)
    {
        rnd2 = TE_LIGHTNING1;
    }
    
    
    if(rnd2 < -10)
    {
        rnd2 = CONTENT_LAVA;
    }
    
    
    if(rnd3 < TE_LAVASPLASH)
    {
        rnd3 = 15;
    }
    
    
    if(rnd3 > SVC_INTERMISSION)
    {
        rnd3 = 25;
    }
    
    self.velocity_x = rnd1;
    self.velocity_y = rnd2;
    self.velocity_z = rnd3;
    self.nextthink = time + 0.5;
    self.think = bubble_bob;
};

// viewthing
// function begins at statement 11700, parm_start=7524
// OP_ADDRESS	28	103	7524
// OP_STOREP_F	227	7524	0
// OP_ADDRESS	28	104	7525
// OP_STOREP_F	237	7525	0
// OP_STORE_V	3849	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3849	7	0
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
// function begins at statement 11710, parm_start=7527
// OP_ADDRESS	28	131	7527
// OP_LOAD_F	28	131	7528
// OP_SUB_F	7368	7528	7529
// OP_STOREP_F	7529	7527	0
// OP_DONE	0	0	0
void () func_wall_use = 
{
    self.frame = SPAWNFLAG_SUPERSPIKE - self.frame;
};

// func_wall
// function begins at statement 11715, parm_start=7531
// OP_ADDRESS	28	117	7531
// OP_STOREP_V	286	7531	0
// OP_ADDRESS	28	103	7534
// OP_STOREP_F	232	7534	0
// OP_ADDRESS	28	104	7535
// OP_STOREP_F	241	7535	0
// OP_ADDRESS	28	147	7536
// OP_STOREP_FNC	7526	7536	0
// OP_LOAD_S	28	130	7537
// OP_STORE_V	28	4	0
// OP_STORE_V	7537	7	0
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
// function begins at statement 11728, parm_start=7539
// OP_ADDRESS	28	117	7539
// OP_STOREP_V	286	7539	0
// OP_ADDRESS	28	103	7542
// OP_STOREP_F	227	7542	0
// OP_ADDRESS	28	104	7543
// OP_STOREP_F	237	7543	0
// OP_LOAD_S	28	130	7544
// OP_STORE_V	28	4	0
// OP_STORE_V	7544	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	503	0	0
// OP_DONE	0	0	0
void () func_illusionary = 
{
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    setmodel(self, self.model);
    makestatic(self);
};

// func_episodegate
// function begins at statement 11741, parm_start=7546
// OP_LOAD_F	28	195	7546
// OP_BITAND	38	7546	7547
// OP_NOT_F	7547	0	7548
// OP_IFNOT	7548	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	7549
// OP_STOREP_V	286	7549	0
// OP_ADDRESS	28	103	7552
// OP_STOREP_F	232	7552	0
// OP_ADDRESS	28	104	7553
// OP_STOREP_F	241	7553	0
// OP_ADDRESS	28	147	7554
// OP_STOREP_FNC	7526	7554	0
// OP_LOAD_S	28	130	7555
// OP_STORE_V	28	4	0
// OP_STORE_V	7555	7	0
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
// function begins at statement 11759, parm_start=7557
// OP_BITAND	38	1876	7557
// OP_EQ_F	7557	1876	7558
// OP_IFNOT	7558	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	7559
// OP_STOREP_V	286	7559	0
// OP_ADDRESS	28	103	7562
// OP_STOREP_F	232	7562	0
// OP_ADDRESS	28	104	7563
// OP_STOREP_F	241	7563	0
// OP_ADDRESS	28	147	7564
// OP_STOREP_FNC	7526	7564	0
// OP_LOAD_S	28	130	7565
// OP_STORE_V	28	4	0
// OP_STORE_V	7565	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () func_bossgate = 
{
    
    if((serverflags & 15) == 15)
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
// function begins at statement 11776, parm_start=7567
// OP_STORE_V	7567	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7568
// OP_STORE_V	7568	4	0
// OP_STORE_V	7567	7	0
// OP_STORE_V	7368	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_suck_wind = 
{
    precache_sound("ambience/suck1.wav");
    ambientsound(self.origin, "ambience/suck1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_STATIC);
};

// ambient_drone
// function begins at statement 11785, parm_start=7572
// OP_STORE_V	7572	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7573
// OP_STORE_V	7573	4	0
// OP_STORE_V	7572	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_drone = 
{
    precache_sound("ambience/drone6.wav");
    ambientsound(self.origin, "ambience/drone6.wav", 0.5, ATTN_STATIC);
};

// ambient_flouro_buzz
// function begins at statement 11794, parm_start=7577
// OP_STORE_V	7260	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7577
// OP_STORE_V	7577	4	0
// OP_STORE_V	7260	7	0
// OP_STORE_V	7368	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_flouro_buzz = 
{
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_STATIC);
};

// ambient_drip
// function begins at statement 11803, parm_start=7581
// OP_STORE_V	7581	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7582
// OP_STORE_V	7582	4	0
// OP_STORE_V	7581	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_drip = 
{
    precache_sound("ambience/drip1.wav");
    ambientsound(self.origin, "ambience/drip1.wav", 0.5, ATTN_STATIC);
};

// ambient_comp_hum
// function begins at statement 11812, parm_start=7586
// OP_STORE_V	7586	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7587
// OP_STORE_V	7587	4	0
// OP_STORE_V	7586	7	0
// OP_STORE_V	7368	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_comp_hum = 
{
    precache_sound("ambience/comp1.wav");
    ambientsound(self.origin, "ambience/comp1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_STATIC);
};

// ambient_thunder
// function begins at statement 11821, parm_start=7591
// OP_STORE_V	7591	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7592
// OP_STORE_V	7592	4	0
// OP_STORE_V	7591	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_thunder = 
{
    precache_sound("ambience/thunder1.wav");
    ambientsound(self.origin, "ambience/thunder1.wav", 0.5, ATTN_STATIC);
};

// ambient_light_buzz
// function begins at statement 11830, parm_start=7596
// OP_STORE_V	7252	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7596
// OP_STORE_V	7596	4	0
// OP_STORE_V	7252	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_light_buzz = 
{
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.5, ATTN_STATIC);
};

// ambient_swamp1
// function begins at statement 11839, parm_start=7600
// OP_STORE_V	7600	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7601
// OP_STORE_V	7601	4	0
// OP_STORE_V	7600	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_swamp1 = 
{
    precache_sound("ambience/swamp1.wav");
    ambientsound(self.origin, "ambience/swamp1.wav", 0.5, ATTN_STATIC);
};

// ambient_swamp2
// function begins at statement 11848, parm_start=7605
// OP_STORE_V	7605	4	0
// OP_CALL1	464	0	0
// OP_LOAD_V	28	105	7606
// OP_STORE_V	7606	4	0
// OP_STORE_V	7605	7	0
// OP_STORE_V	1491	10	0
// OP_STORE_V	328	13	0
// OP_CALL4	507	0	0
// OP_DONE	0	0	0
void () ambient_swamp2 = 
{
    precache_sound("ambience/swamp2.wav");
    ambientsound(self.origin, "ambience/swamp2.wav", 0.5, ATTN_STATIC);
};

// noise_think
// function begins at statement 11857, parm_start=7610
// OP_ADDRESS	28	150	7610
// OP_ADD_F	31	1491	7611
// OP_STOREP_F	7611	7610	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7368	7	0
// OP_STORE_V	7374	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7369	7	0
// OP_STORE_V	7417	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	370	7	0
// OP_STORE_V	1279	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6076	7	0
// OP_STORE_V	1281	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	313	7	0
// OP_STORE_V	1283	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	314	7	0
// OP_STORE_V	1284	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	315	7	0
// OP_STORE_V	7612	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () noise_think = 
{
    self.nextthink = time + 0.5;
    sound(self, SPAWNFLAG_SUPERSPIKE, "enforcer/enfire.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    sound(self, SPAWNFLAG_LASER, "enforcer/enfstop.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    sound(self, AS_MELEE, "enforcer/sight1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    sound(self, SECRET_1ST_DOWN, "enforcer/sight2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    sound(self, TE_LIGHTNING1, "enforcer/sight3.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    sound(self, TE_LIGHTNING2, "enforcer/sight4.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    sound(self, TE_WIZSPIKE, "enforcer/pain1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
};

// misc_noisemaker
// function begins at statement 11903, parm_start=7614
// OP_STORE_V	7374	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7417	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1279	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1281	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1283	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1284	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7612	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7614	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7615	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7616	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	150	7617
// OP_ADD_F	31	603	7618
// OP_CALL0	452	0	0
// OP_ADD_F	7618	1	7619
// OP_STOREP_F	7619	7617	0
// OP_ADDRESS	28	148	7620
// OP_STOREP_FNC	7609	7620	0
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
    self.nextthink = (time + 0.1) + random();
    self.think = noise_think;
};

