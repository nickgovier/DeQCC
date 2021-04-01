// info_null
// function begins at statement 24839, parm_start=17120
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () info_null = 
{
    remove(self);
};

// info_sky
// function begins at statement 24842, parm_start=17121
// OP_LOAD_F	28	133	17121
// OP_STORE_F	17121	93	0
// OP_DONE	0	0	0
void () info_sky = 
{
    sky_z = self.origin_z;
};

// info_mins
// function begins at statement 24845, parm_start=17123
// OP_LOAD_V	28	130	17123
// OP_STORE_V	17123	94	0
// OP_DONE	0	0	0
void () info_mins = 
{
    minims = self.origin;
};

// info_maxs
// function begins at statement 24848, parm_start=17127
// OP_LOAD_V	28	130	17127
// OP_STORE_V	17127	97	0
// OP_DONE	0	0	0
void () info_maxs = 
{
    maxims = self.origin;
};

// info_notnull
// function begins at statement 24851, parm_start=17131
// OP_DONE	0	0	0
void () info_notnull = 
{
};

float START_OFF = 1.000;
// light_use
// function begins at statement 24852, parm_start=17133
// OP_LOAD_F	28	220	17133
// OP_BITAND	17133	17131	17134
// OP_IFNOT	17134	10	0
// OP_LOAD_F	28	404	17135
// OP_STORE_V	17135	4	0
// OP_STORE_V	12957	7	0
// OP_CALL2	528	0	0
// OP_ADDRESS	28	220	17136
// OP_LOAD_F	28	220	17137
// OP_SUB_F	17137	17131	17138
// OP_STOREP_F	17138	17136	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	404	17139
// OP_STORE_V	17139	4	0
// OP_STORE_V	12969	7	0
// OP_CALL2	528	0	0
// OP_ADDRESS	28	220	17140
// OP_LOAD_F	28	220	17141
// OP_ADD_F	17141	17131	17142
// OP_STOREP_F	17142	17140	0
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
// function begins at statement 24873, parm_start=17144
// OP_LOAD_S	28	222	17144
// OP_NOT_S	17144	0	17145
// OP_IFNOT	17145	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	404	17146
// OP_GE	17146	815	17147
// OP_IFNOT	17147	15	0
// OP_ADDRESS	28	172	17148
// OP_STOREP_FNC	17132	17148	0
// OP_LOAD_F	28	220	17149
// OP_BITAND	17149	17131	17150
// OP_IFNOT	17150	6	0
// OP_LOAD_F	28	404	17151
// OP_STORE_V	17151	4	0
// OP_STORE_V	12969	7	0
// OP_CALL2	528	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	404	17152
// OP_STORE_V	17152	4	0
// OP_STORE_V	12957	7	0
// OP_CALL2	528	0	0
// OP_DONE	0	0	0
void () light = 
{
    
    if(!self.targetname)
    {
        remove(self);
        return;
    }
    
    
    if(self.style >= 32.000)
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
// function begins at statement 24897, parm_start=17154
// OP_LOAD_F	28	404	17154
// OP_GE	17154	815	17155
// OP_IFNOT	17155	15	0
// OP_ADDRESS	28	172	17156
// OP_STOREP_FNC	17132	17156	0
// OP_LOAD_F	28	220	17157
// OP_BITAND	17157	17131	17158
// OP_IFNOT	17158	6	0
// OP_LOAD_F	28	404	17159
// OP_STORE_V	17159	4	0
// OP_STORE_V	12969	7	0
// OP_CALL2	528	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	404	17160
// OP_STORE_V	17160	4	0
// OP_STORE_V	12957	7	0
// OP_CALL2	528	0	0
// OP_STORE_V	17161	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17162
// OP_STORE_V	17162	4	0
// OP_STORE_V	17161	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () light_fluoro = 
{
    
    if(self.style >= 32.000)
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
// function begins at statement 24923, parm_start=17166
// OP_LOAD_F	28	404	17166
// OP_NOT_F	17166	0	17167
// OP_IFNOT	17167	3	0
// OP_ADDRESS	28	404	17168
// OP_STOREP_F	827	17168	0
// OP_STORE_V	17169	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17170
// OP_STORE_V	17170	4	0
// OP_STORE_V	17169	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () light_fluorospark = 
{
    
    if(!self.style)
    {
        self.style = 10.000;
    }
    
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 0.500, ATTN_STATIC);
};

// light_globe
// function begins at statement 24937, parm_start=17174
// OP_STORE_V	17174	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17174	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	552	0	0
// OP_DONE	0	0	0
void () light_globe = 
{
    precache_model("progs/s_light.spr");
    setmodel(self, "progs/s_light.spr");
    makestatic(self);
};

// light_street
// function begins at statement 24945, parm_start=17176
// OP_STORE_V	17176	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17176	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	129	17177
// OP_STOREP_F	293	17177	0
// OP_LOAD_F	28	220	17178
// OP_BITAND	17178	812	17179
// OP_NOT_F	17179	0	17180
// OP_IFNOT	17180	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17181	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	552	0	0
// OP_DONE	0	0	0
void () light_street = 
{
    precache_model("progs/lamp.mdl");
    setmodel(self, "progs/lamp.mdl");
    self.solid = SOLID_BBOX;
    if(!(self.spawnflags & 16.000))
    {
        setsize(self, '-8.000 -8.000 -64.000', '8.000 8.000 8.000');
    }
    else
    {
        makestatic(self);
    }
    
};

// FireAmbient
// function begins at statement 24964, parm_start=17185
// OP_STORE_V	17185	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17186
// OP_STORE_V	17186	4	0
// OP_STORE_V	17185	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () FireAmbient = 
{
    precache_sound("ambience/fire1.wav");
    ambientsound(self.origin, "ambience/fire1.wav", 0.500, ATTN_STATIC);
};

// light_torch_small_walltorch
// function begins at statement 24973, parm_start=17190
// OP_STORE_V	17190	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17190	7	0
// OP_CALL2	498	0	0
// OP_CALL0	17184	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	552	0	0
// OP_DONE	0	0	0
void () light_torch_small_walltorch = 
{
    precache_model("progs/flame.mdl");
    setmodel(self, "progs/flame.mdl");
    FireAmbient();
    makestatic(self);
};

// light_flame_large_yellow
// function begins at statement 24982, parm_start=17192
// OP_STORE_V	17192	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17192	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	156	17193
// OP_STOREP_F	677	17193	0
// OP_CALL0	17184	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	552	0	0
// OP_DONE	0	0	0
void () light_flame_large_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    self.frame = 1.000;
    FireAmbient();
    makestatic(self);
};

// light_flame_small_yellow
// function begins at statement 24993, parm_start=17195
// OP_STORE_V	17192	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17192	7	0
// OP_CALL2	498	0	0
// OP_CALL0	17184	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	552	0	0
// OP_DONE	0	0	0
void () light_flame_small_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    FireAmbient();
    makestatic(self);
};

// light_flame_small_white
// function begins at statement 25002, parm_start=17196
// OP_STORE_V	17192	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17192	7	0
// OP_CALL2	498	0	0
// OP_CALL0	17184	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	552	0	0
// OP_DONE	0	0	0
void () light_flame_small_white = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    FireAmbient();
    makestatic(self);
};

void () fire_fly;
// misc_fireball
// function begins at statement 25011, parm_start=17198
// OP_STORE_V	5169	4	0
// OP_CALL1	514	0	0
// OP_ADDRESS	28	154	17198
// OP_STOREP_S	5274	17198	0
// OP_ADDRESS	28	175	17199
// OP_CALL0	501	0	0
// OP_MUL_F	1	813	17200
// OP_ADD_F	31	17200	17201
// OP_STOREP_F	17201	17199	0
// OP_ADDRESS	28	173	17202
// OP_STOREP_FNC	17196	17202	0
// OP_LOAD_F	28	413	17203
// OP_NOT_F	17203	0	17204
// OP_IFNOT	17204	3	0
// OP_LOAD_F	28	413	17205
// OP_EQ_F	17205	1622	17206
// OP_DONE	0	0	0
void () misc_fireball = 
{
    precache_model("progs/lavaball.mdl");
    self.classname = "fireball";
    self.nextthink = time + (random() * 5.000);
    self.think = fire_fly;
    
    if(!self.speed)
    {
        self.speed == 1000.000; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?
    }
    
};

// fire_fly
// function begins at statement 25028, parm_start=17207
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	17207	0
// OP_ADDRESS	17207	129	17208
// OP_STOREP_F	292	17208	0
// OP_ADDRESS	17207	128	17209
// OP_STOREP_F	285	17209	0
// OP_ADDRESS	17207	138	17210
// OP_STOREP_V	17213	17210	0
// OP_ADDRESS	17207	139	17216
// OP_CALL0	501	0	0
// OP_MUL_F	1	2618	17217
// OP_SUB_F	17217	856	17218
// OP_STOREP_F	17218	17216	0
// OP_ADDRESS	17207	140	17219
// OP_CALL0	501	0	0
// OP_MUL_F	1	2618	17220
// OP_SUB_F	17220	856	17221
// OP_STOREP_F	17221	17219	0
// OP_ADDRESS	17207	141	17222
// OP_LOAD_F	28	413	17223
// OP_CALL0	501	0	0
// OP_MUL_F	1	986	17224
// OP_ADD_F	17223	17224	17225
// OP_STOREP_F	17225	17222	0
// OP_ADDRESS	17207	154	17226
// OP_STOREP_S	5274	17226	0
// OP_STORE_V	17207	4	0
// OP_STORE_V	5169	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	17207	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	607	10	0
// OP_CALL3	499	0	0
// OP_STORE_V	17207	4	0
// OP_LOAD_V	28	130	17227
// OP_STORE_V	17227	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	17207	175	17230
// OP_ADD_F	31	813	17231
// OP_STOREP_F	17231	17230	0
// OP_ADDRESS	17207	173	17232
// OP_STOREP_FNC	568	17232	0
// OP_ADDRESS	17207	171	17233
// OP_STOREP_FNC	5191	17233	0
// OP_ADDRESS	28	175	17234
// OP_CALL0	501	0	0
// OP_MUL_F	1	813	17235
// OP_ADD_F	31	17235	17236
// OP_ADD_F	17236	788	17237
// OP_STOREP_F	17237	17234	0
// OP_ADDRESS	28	173	17238
// OP_STOREP_FNC	17196	17238	0
// OP_DONE	0	0	0
void () fire_fly = 
{
    local entity fireball;
    fireball = spawn();
    fireball.solid = SOLID_TRIGGER;
    fireball.movetype = MOVETYPE_TOSS;
    fireball.velocity = '0.000 0.000 1000.000';
    fireball.velocity_x = (random() * 100.000) - 50.000;
    fireball.velocity_y = (random() * 100.000) - 50.000;
    fireball.velocity_z = self.speed + (random() * 200.000);
    fireball.classname = "fireball";
    setmodel(fireball, "progs/lavaball.mdl");
    setsize(fireball, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(fireball, self.origin);
    fireball.nextthink = time + 5.000;
    fireball.think = SUB_Remove;
    fireball.touch = fire_touch;
    self.nextthink = (time + (random() * 5.000)) + 3.000;
    self.think = fire_fly;
};

// fire_touch
// function begins at statement 25081, parm_start=17239
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1111	13	0
// OP_CALL4	569	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () fire_touch = 
{
    T_Damage(other, self, self, 20.000);
    remove(self);
};

// barrel_explode
// function begins at statement 25089, parm_start=17240
// OP_ADDRESS	28	188	17240
// OP_STOREP_F	304	17240	0
// OP_ADDRESS	28	154	17241
// OP_STOREP_S	5367	17241	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	5005	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2232	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	2371	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	28	130	17242
// OP_STORE_V	17242	4	0
// OP_STORE_V	607	7	0
// OP_STORE_V	5009	10	0
// OP_STORE_V	2977	13	0
// OP_CALL4	539	0	0
// OP_ADDRESS	28	133	17245
// OP_LOAD_F	28	133	17246
// OP_ADD_F	17246	815	17247
// OP_STOREP_F	17247	17245	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () barrel_explode = 
{
    self.takedamage = DAMAGE_NO;
    self.classname = "explo_box";
    T_RadiusDamage(self, self, 160.000, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", 1.000, ATTN_NORM);
    particle(self.origin, '0.000 0.000 0.000', 75.000, 255.000);
    self.origin_z = self.origin_z + 32.000;
    BecomeExplosion();
};

// misc_explobox
// function begins at statement 25116, parm_start=17249
// OP_ADDRESS	28	129	17250
// OP_STOREP_F	293	17250	0
// OP_ADDRESS	28	128	17251
// OP_STOREP_F	281	17251	0
// OP_STORE_V	17252	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17252	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	2371	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	177	17253
// OP_STOREP_F	1111	17253	0
// OP_ADDRESS	28	411	17254
// OP_STOREP_FNC	17239	17254	0
// OP_ADDRESS	28	188	17255
// OP_STOREP_F	306	17255	0
// OP_ADDRESS	28	133	17256
// OP_LOAD_F	28	133	17257
// OP_ADD_F	17257	806	17258
// OP_STOREP_F	17258	17256	0
// OP_LOAD_F	28	133	17259
// OP_STORE_F	17259	17249	0
// OP_CALL0	527	0	0
// OP_LOAD_F	28	133	17260
// OP_SUB_F	17249	17260	17261
// OP_GT	17261	1618	17262
// OP_IFNOT	17262	12	0
// OP_STORE_V	17263	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	17264
// OP_STORE_V	17264	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () misc_explobox = 
{
    local float oldz;
    self.solid = SOLID_BBOX;
    self.movetype = MOVETYPE_NONE;
    precache_model("maps/b_explob.bsp");
    setmodel(self, "maps/b_explob.bsp");
    precache_sound("weapons/r_exp3.wav");
    self.health = 20.000;
    self.th_die = barrel_explode;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + 2.000;
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
// function begins at statement 25156, parm_start=17268
// OP_ADDRESS	28	129	17269
// OP_STOREP_F	293	17269	0
// OP_ADDRESS	28	128	17270
// OP_STOREP_F	281	17270	0
// OP_STORE_V	17271	4	0
// OP_CALL1	557	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17271	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	2371	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	177	17272
// OP_STOREP_F	1111	17272	0
// OP_ADDRESS	28	411	17273
// OP_STOREP_FNC	17239	17273	0
// OP_ADDRESS	28	188	17274
// OP_STOREP_F	306	17274	0
// OP_ADDRESS	28	133	17275
// OP_LOAD_F	28	133	17276
// OP_ADD_F	17276	806	17277
// OP_STOREP_F	17277	17275	0
// OP_LOAD_F	28	133	17278
// OP_STORE_F	17278	17268	0
// OP_CALL0	527	0	0
// OP_LOAD_F	28	133	17279
// OP_SUB_F	17268	17279	17280
// OP_GT	17280	1618	17281
// OP_IFNOT	17281	12	0
// OP_STORE_V	17263	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	17282
// OP_STORE_V	17282	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () misc_explobox2 = 
{
    local float oldz;
    self.solid = SOLID_BBOX;
    self.movetype = MOVETYPE_NONE;
    precache_model2("maps/b_exbox2.bsp");
    setmodel(self, "maps/b_exbox2.bsp");
    precache_sound("weapons/r_exp3.wav");
    self.health = 20.000;
    self.th_die = barrel_explode;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + 2.000;
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
// spikeshooter_use
// function begins at statement 25196, parm_start=17288
// OP_LOAD_F	28	220	17288
// OP_BITAND	17288	17286	17289
// OP_IFNOT	17289	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	4113	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_LOAD_V	28	130	17290
// OP_STORE_V	17290	4	0
// OP_LOAD_V	28	227	17293
// OP_STORE_V	17293	7	0
// OP_CALL2	4138	0	0
// OP_GOTO	17	0	0
// OP_LOAD_V	28	130	17296
// OP_STORE_V	17296	4	0
// OP_LOAD_V	28	227	17299
// OP_STORE_V	17299	7	0
// OP_STORE_V	30	10	0
// OP_CALL3	4006	0	0
// OP_LOAD_F	28	220	17302
// OP_BITAND	17302	17285	17303
// OP_IFNOT	17303	8	0
// OP_ADDRESS	394	171	17304
// OP_STOREP_FNC	3962	17304	0
// OP_ADDRESS	394	469	17305
// OP_STOREP_F	856	17305	0
// OP_ADDRESS	394	175	17306
// OP_ADD_F	31	677	17307
// OP_STOREP_F	17307	17306	0
// OP_DONE	0	0	0
void () spikeshooter_use = 
{
    if(self.spawnflags & SPAWNFLAG_LASER)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", 1.000, ATTN_NORM);
        LaunchLaser(self.origin, self.movedir);
    }
    else
    {
        AC_spike(self.origin, self.movedir, world);
        
        if(self.spawnflags & SPAWNFLAG_SUPERSPIKE)
        {
            newmis.touch = ACsuperspike_touch;
            newmis.dmg = 50.000;
            newmis.nextthink = time + 1.000;
        }
        
    }
    
};

// shooter_think
// function begins at statement 25228, parm_start=17309
// OP_CALL0	17287	0	0
// OP_ADDRESS	28	175	17309
// OP_LOAD_F	28	462	17310
// OP_ADD_F	31	17310	17311
// OP_STOREP_F	17311	17309	0
// OP_ADDRESS	394	138	17312
// OP_LOAD_V	28	227	17315
// OP_MUL_VF	17315	1620	17318
// OP_STOREP_V	17318	17312	0
// OP_DONE	0	0	0
void () shooter_think = 
{
    spikeshooter_use();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * 500.000;
};

// trap_spikeshooter
// function begins at statement 25238, parm_start=17322
// OP_CALL0	571	0	0
// OP_ADDRESS	28	172	17322
// OP_STOREP_FNC	17287	17322	0
// OP_LOAD_F	28	220	17323
// OP_BITAND	17323	17286	17324
// OP_IFNOT	17324	8	0
// OP_STORE_V	4122	4	0
// OP_CALL1	557	0	0
// OP_STORE_V	4113	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	4083	4	0
// OP_CALL1	558	0	0
// OP_GOTO	5	0	0
// OP_STORE_V	2378	4	0
// OP_CALL1	513	0	0
// OP_STORE_V	2723	4	0
// OP_CALL1	514	0	0
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
        precache_model("progs/spike.mdl");
    }
    
};

// trap_shooter
// function begins at statement 25256, parm_start=17326
// OP_CALL0	17321	0	0
// OP_LOAD_F	28	462	17326
// OP_EQ_F	17326	619	17327
// OP_IFNOT	17327	3	0
// OP_ADDRESS	28	462	17328
// OP_STOREP_F	677	17328	0
// OP_ADDRESS	28	175	17329
// OP_LOAD_F	28	175	17330
// OP_LOAD_F	28	462	17331
// OP_ADD_F	17330	17331	17332
// OP_LOAD_F	28	127	17333
// OP_ADD_F	17332	17333	17334
// OP_STOREP_F	17334	17329	0
// OP_ADDRESS	28	173	17335
// OP_STOREP_FNC	17308	17335	0
// OP_DONE	0	0	0
void () trap_shooter = 
{
    trap_spikeshooter();
    
    if(self.wait == 0.000)
    {
        self.wait = 1.000;
    }
    
    self.nextthink = (self.nextthink + self.wait) + self.ltime;
    self.think = shooter_think;
};

// tmine_boom
// function begins at statement 25272, parm_start=17337
// OP_ADDRESS	28	133	17337
// OP_LOAD_F	28	133	17338
// OP_ADD_F	17338	677	17339
// OP_STOREP_F	17339	17337	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	986	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	2232	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	350	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_STORE_V	360	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	131	17340
// OP_STORE_V	17340	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	132	17341
// OP_STORE_V	17341	7	0
// OP_CALL2	546	0	0
// OP_STORE_V	386	4	0
// OP_LOAD_F	28	133	17342
// OP_STORE_V	17342	7	0
// OP_CALL2	546	0	0
// OP_CALL0	2603	0	0
// OP_DONE	0	0	0
void () tmine_boom = 
{
    self.origin_z = self.origin_z + 1.000;
    T_RadiusDamage(self, self, 200.000, self);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// tmine_touch
// function begins at statement 25301, parm_start=17344
// OP_EQ_E	29	30	17344
// OP_IFNOT	17344	2	0
// OP_RETURN	0	0	0
// OP_CALL0	17336	0	0
// OP_DONE	0	0	0
void () tmine_touch = 
{
    
    if(other == world)
    {
        return;
    }
    
    tmine_boom();
};

// tmine_activated
// function begins at statement 25306, parm_start=17346
// OP_LOAD_V	28	130	17346
// OP_ADD_V	17346	582	17349
// OP_STORE_V	17349	4	0
// OP_LOAD_V	28	130	17352
// OP_ADD_V	17352	4229	17355
// OP_STORE_V	17355	7	0
// OP_STORE_V	267	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	510	0	0
// OP_LT	70	677	17358
// OP_IFNOT	17358	6	0
// OP_ADDRESS	28	173	17359
// OP_STOREP_FNC	17336	17359	0
// OP_ADDRESS	28	175	17360
// OP_STOREP_F	655	17360	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	173	17361
// OP_STOREP_FNC	17345	17361	0
// OP_ADDRESS	28	175	17362
// OP_ADD_F	31	655	17363
// OP_STOREP_F	17363	17362	0
// OP_DONE	0	0	0
void () tmine_activated = 
{
    traceline(self.origin + '0.000 0.000 1.000', self.origin + '0.000 0.000 24.000', FALSE, self);
    
    if(trace_fraction < 1.000)
    {
        self.think = tmine_boom;
        self.nextthink = 0.100;
        return;
    }
    
    self.think = tmine_activated;
    self.nextthink = time + 0.100;
};

// tmine_start
// function begins at statement 25328, parm_start=17365
// OP_STORE_V	28	4	0
// OP_STORE_V	3622	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17365	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	129	17368
// OP_STOREP_F	294	17368	0
// OP_ADDRESS	28	128	17369
// OP_STOREP_F	285	17369	0
// OP_ADDRESS	28	142	17370
// OP_STOREP_V	607	17370	0
// OP_ADDRESS	28	138	17373
// OP_STOREP_V	607	17373	0
// OP_ADDRESS	28	411	17376
// OP_STOREP_FNC	17336	17376	0
// OP_ADDRESS	28	177	17377
// OP_STOREP_F	677	17377	0
// OP_ADDRESS	28	188	17378
// OP_STOREP_F	305	17378	0
// OP_ADDRESS	28	138	17379
// OP_STOREP_V	607	17379	0
// OP_CALL0	527	0	0
// OP_ADDRESS	28	171	17382
// OP_STOREP_FNC	17343	17382	0
// OP_ADDRESS	28	173	17383
// OP_STOREP_FNC	17345	17383	0
// OP_ADDRESS	28	175	17384
// OP_ADD_F	31	655	17385
// OP_STOREP_F	17385	17384	0
// OP_DONE	0	0	0
void () tmine_start = 
{
    setmodel(self, "progs/mine.mdl");
    setsize(self, '-8.000 -8.000 -1.000', '8.000 8.000 8.000');
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_TOSS;
    self.angles = '0.000 0.000 0.000';
    self.velocity = '0.000 0.000 0.000';
    self.th_die = tmine_boom;
    self.health = 1.000;
    self.takedamage = DAMAGE_YES;
    self.velocity = '0.000 0.000 0.000';
    droptofloor();
    self.touch = tmine_touch;
    self.think = tmine_activated;
    self.nextthink = time + 0.100;
};

// trap_mine
// function begins at statement 25360, parm_start=17387
// OP_ADDRESS	28	173	17387
// OP_STOREP_FNC	17364	17387	0
// OP_ADDRESS	28	175	17388
// OP_ADD_F	31	1687	17389
// OP_STOREP_F	17389	17388	0
// OP_DONE	0	0	0
void () trap_mine = 
{
    self.think = tmine_start;
    self.nextthink = time + 0.300;
};

void () make_bubbles;
void () bubble_remove;
// air_bubbles
// function begins at statement 25366, parm_start=17393
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	12949	4	0
// OP_CALL1	514	0	0
// OP_ADDRESS	28	175	17393
// OP_ADD_F	31	677	17394
// OP_STOREP_F	17394	17393	0
// OP_ADDRESS	28	173	17395
// OP_STOREP_FNC	17390	17395	0
// OP_DONE	0	0	0
void () air_bubbles = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/s_bubble.spr");
    self.nextthink = time + 1.000;
    self.think = make_bubbles;
};

// make_bubbles
// function begins at statement 25378, parm_start=17396
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	17396	0
// OP_STORE_V	17396	4	0
// OP_STORE_V	12949	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	17396	4	0
// OP_LOAD_V	28	130	17397
// OP_STORE_V	17397	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	17396	128	17400
// OP_STOREP_F	287	17400	0
// OP_ADDRESS	17396	129	17401
// OP_STOREP_F	291	17401	0
// OP_ADDRESS	17396	138	17402
// OP_STOREP_V	14957	17402	0
// OP_ADDRESS	17396	175	17405
// OP_ADD_F	31	972	17406
// OP_STOREP_F	17406	17405	0
// OP_ADDRESS	17396	173	17407
// OP_STOREP_FNC	14676	17407	0
// OP_ADDRESS	17396	171	17408
// OP_STOREP_FNC	17391	17408	0
// OP_ADDRESS	17396	154	17409
// OP_STOREP_S	14964	17409	0
// OP_ADDRESS	17396	156	17410
// OP_STOREP_F	619	17410	0
// OP_ADDRESS	17396	470	17411
// OP_STOREP_F	619	17411	0
// OP_STORE_V	17396	4	0
// OP_STORE_V	1470	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	175	17412
// OP_CALL0	501	0	0
// OP_ADD_F	31	1	17413
// OP_ADD_F	17413	972	17414
// OP_STOREP_F	17414	17412	0
// OP_ADDRESS	28	173	17415
// OP_STOREP_FNC	17390	17415	0
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
    bubble.frame = 0.000;
    bubble.cnt = 0.000;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.nextthink = (time + random()) + 0.500;
    self.think = make_bubbles;
};

// bubble_split
// function begins at statement 25418, parm_start=17417
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	17417	0
// OP_STORE_V	17417	4	0
// OP_STORE_V	12949	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	17417	4	0
// OP_LOAD_V	28	130	17418
// OP_STORE_V	17418	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	17417	128	17421
// OP_STOREP_F	287	17421	0
// OP_ADDRESS	17417	129	17422
// OP_STOREP_F	291	17422	0
// OP_ADDRESS	17417	138	17423
// OP_LOAD_V	28	138	17426
// OP_STOREP_V	17426	17423	0
// OP_ADDRESS	17417	175	17429
// OP_ADD_F	31	972	17430
// OP_STOREP_F	17430	17429	0
// OP_ADDRESS	17417	173	17431
// OP_STOREP_FNC	14676	17431	0
// OP_ADDRESS	17417	171	17432
// OP_STOREP_FNC	17391	17432	0
// OP_ADDRESS	17417	154	17433
// OP_STOREP_S	14964	17433	0
// OP_ADDRESS	17417	156	17434
// OP_STOREP_F	677	17434	0
// OP_ADDRESS	17417	470	17435
// OP_STOREP_F	827	17435	0
// OP_STORE_V	17417	4	0
// OP_STORE_V	1470	7	0
// OP_STORE_V	1473	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	156	17436
// OP_STOREP_F	677	17436	0
// OP_ADDRESS	28	470	17437
// OP_STOREP_F	827	17437	0
// OP_LOAD_F	28	214	17438
// OP_NE_F	17438	788	17439
// OP_IFNOT	17439	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
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
    bubble.frame = 1.000;
    bubble.cnt = 10.000;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.frame = 1.000;
    self.cnt = 10.000;
    
    if(self.waterlevel != 3.000)
    {
        remove(self);
    }
    
};

// bubble_remove
// function begins at statement 25461, parm_start=17440
// OP_LOAD_S	29	154	17440
// OP_LOAD_S	28	154	17441
// OP_EQ_S	17440	17441	17442
// OP_IFNOT	17442	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
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
// function begins at statement 25469, parm_start=17443
// OP_ADDRESS	28	470	17452
// OP_LOAD_F	28	470	17453
// OP_ADD_F	17453	677	17454
// OP_STOREP_F	17454	17452	0
// OP_LOAD_F	28	470	17455
// OP_EQ_F	17455	808	17456
// OP_IFNOT	17456	2	0
// OP_CALL0	17416	0	0
// OP_LOAD_F	28	470	17457
// OP_EQ_F	17457	1111	17458
// OP_IFNOT	17458	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_LOAD_F	28	139	17459
// OP_CALL0	501	0	0
// OP_MUL_F	1	1111	17460
// OP_ADD_F	6997	17460	17461
// OP_ADD_F	17459	17461	17462
// OP_STORE_F	17462	17443	0
// OP_LOAD_F	28	140	17463
// OP_CALL0	501	0	0
// OP_MUL_F	1	1111	17464
// OP_ADD_F	6997	17464	17465
// OP_ADD_F	17463	17465	17466
// OP_STORE_F	17466	17444	0
// OP_LOAD_F	28	141	17467
// OP_ADD_F	17467	827	17468
// OP_CALL0	501	0	0
// OP_MUL_F	1	827	17469
// OP_ADD_F	17468	17469	17470
// OP_STORE_F	17470	17445	0
// OP_GT	17443	827	17471
// OP_IFNOT	17471	2	0
// OP_STORE_F	813	17443	0
// OP_LT	17443	6997	17472
// OP_IFNOT	17472	2	0
// OP_STORE_F	17473	17443	0
// OP_GT	17444	827	17474
// OP_IFNOT	17474	2	0
// OP_STORE_F	813	17444	0
// OP_LT	17444	6997	17475
// OP_IFNOT	17475	2	0
// OP_STORE_F	17473	17444	0
// OP_LT	17445	827	17476
// OP_IFNOT	17476	2	0
// OP_STORE_F	842	17445	0
// OP_GT	17445	1130	17477
// OP_IFNOT	17477	2	0
// OP_STORE_F	1145	17445	0
// OP_ADDRESS	28	139	17478
// OP_STOREP_F	17443	17478	0
// OP_ADDRESS	28	140	17479
// OP_STOREP_F	17444	17479	0
// OP_ADDRESS	28	141	17480
// OP_STOREP_F	17445	17480	0
// OP_ADDRESS	28	175	17481
// OP_ADD_F	31	972	17482
// OP_STOREP_F	17482	17481	0
// OP_ADDRESS	28	173	17483
// OP_STOREP_FNC	14676	17483	0
// OP_DONE	0	0	0
void () bubble_bob = 
{
    local float rnd1;
    local float rnd2;
    local float rnd3;
    local vector vtmp1;
    local vector modi;
    self.cnt = self.cnt + 1.000;
    
    if(self.cnt == 4.000)
    {
        bubble_split();
    }
    
    
    if(self.cnt == 20.000)
    {
        remove(self);
    }
    
    rnd1 = self.velocity_x + (-10.000 + (random() * 20.000));
    rnd2 = self.velocity_y + (-10.000 + (random() * 20.000));
    rnd3 = (self.velocity_z + 10.000) + (random() * 10.000);
    
    if(rnd1 > 10.000)
    {
        rnd1 = 5.000;
    }
    
    
    if(rnd1 < -10.000)
    {
        rnd1 = -5.000;
    }
    
    
    if(rnd2 > 10.000)
    {
        rnd2 = 5.000;
    }
    
    
    if(rnd2 < -10.000)
    {
        rnd2 = -5.000;
    }
    
    
    if(rnd3 < 10.000)
    {
        rnd3 = 15.000;
    }
    
    
    if(rnd3 > 30.000)
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
// function begins at statement 25530, parm_start=17485
// OP_ADDRESS	28	128	17485
// OP_STOREP_F	281	17485	0
// OP_ADDRESS	28	129	17486
// OP_STOREP_F	291	17486	0
// OP_STORE_V	3774	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3774	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () viewthing = 
{
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    precache_model("progs/player.mdl");
    setmodel(self, "progs/player.mdl");
};

// func_wall_use
// function begins at statement 25540, parm_start=17488
// OP_ADDRESS	28	156	17488
// OP_LOAD_F	28	156	17489
// OP_SUB_F	677	17489	17490
// OP_STOREP_F	17490	17488	0
// OP_DONE	0	0	0
void () func_wall_use = 
{
    self.frame = 1.000 - self.frame;
};

// func_wall
// function begins at statement 25545, parm_start=17492
// OP_ADDRESS	28	142	17492
// OP_STOREP_V	607	17492	0
// OP_ADDRESS	28	128	17495
// OP_STOREP_F	286	17495	0
// OP_ADDRESS	28	129	17496
// OP_STOREP_F	295	17496	0
// OP_ADDRESS	28	172	17497
// OP_STOREP_FNC	17487	17497	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	17498
// OP_STORE_V	17498	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () func_wall = 
{
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_wall_use;
    setmodel(self, self.model);
};

// func_illusionary
// function begins at statement 25558, parm_start=17500
// OP_ADDRESS	28	142	17500
// OP_STOREP_V	607	17500	0
// OP_ADDRESS	28	128	17503
// OP_STOREP_F	281	17503	0
// OP_ADDRESS	28	129	17504
// OP_STOREP_F	291	17504	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	17505
// OP_STORE_V	17505	7	0
// OP_CALL2	498	0	0
// OP_CALL0	552	0	0
// OP_DONE	0	0	0
void () func_illusionary = 
{
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    setmodel(self, self.model);
    makestatic();
};

// func_episodegate
// function begins at statement 25570, parm_start=17507
// OP_LOAD_F	28	220	17507
// OP_BITAND	38	17507	17508
// OP_NOT_F	17508	0	17509
// OP_IFNOT	17509	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	142	17510
// OP_STOREP_V	607	17510	0
// OP_ADDRESS	28	128	17513
// OP_STOREP_F	286	17513	0
// OP_ADDRESS	28	129	17514
// OP_STOREP_F	295	17514	0
// OP_ADDRESS	28	172	17515
// OP_STOREP_FNC	17487	17515	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	17516
// OP_STORE_V	17516	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () func_episodegate = 
{
    
    if(!(serverflags & self.spawnflags))
    {
        return;
    }
    
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_wall_use;
    setmodel(self, self.model);
};

// func_bossgate
// function begins at statement 25588, parm_start=17518
// OP_BITAND	38	842	17518
// OP_EQ_F	17518	842	17519
// OP_IFNOT	17519	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	142	17520
// OP_STOREP_V	607	17520	0
// OP_ADDRESS	28	128	17523
// OP_STOREP_F	286	17523	0
// OP_ADDRESS	28	129	17524
// OP_STOREP_F	295	17524	0
// OP_ADDRESS	28	172	17525
// OP_STOREP_FNC	17487	17525	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	17526
// OP_STORE_V	17526	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void () func_bossgate = 
{
    
    if((serverflags & 15.000) == 15.000)
    {
        return;
    }
    
    self.angles = '0.000 0.000 0.000';
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func_wall_use;
    setmodel(self, self.model);
};

// ambient_suck_wind
// function begins at statement 25605, parm_start=17528
// OP_STORE_V	17528	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17529
// OP_STORE_V	17529	4	0
// OP_STORE_V	17528	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_suck_wind = 
{
    precache_sound("ambience/suck1.wav");
    ambientsound(self.origin, "ambience/suck1.wav", 1.000, ATTN_STATIC);
};

// ambient_drone
// function begins at statement 25614, parm_start=17533
// OP_STORE_V	17533	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17534
// OP_STORE_V	17534	4	0
// OP_STORE_V	17533	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_drone = 
{
    precache_sound("ambience/drone6.wav");
    ambientsound(self.origin, "ambience/drone6.wav", 0.500, ATTN_STATIC);
};

// ambient_flouro_buzz
// function begins at statement 25623, parm_start=17538
// OP_STORE_V	17169	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17538
// OP_STORE_V	17538	4	0
// OP_STORE_V	17169	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_flouro_buzz = 
{
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 1.000, ATTN_STATIC);
};

// ambient_drip
// function begins at statement 25632, parm_start=17542
// OP_STORE_V	17542	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17543
// OP_STORE_V	17543	4	0
// OP_STORE_V	17542	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_drip = 
{
    precache_sound("ambience/drip1.wav");
    ambientsound(self.origin, "ambience/drip1.wav", 0.500, ATTN_STATIC);
};

// ambient_comp_hum
// function begins at statement 25641, parm_start=17547
// OP_STORE_V	17547	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17548
// OP_STORE_V	17548	4	0
// OP_STORE_V	17547	7	0
// OP_STORE_V	677	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_comp_hum = 
{
    precache_sound("ambience/comp1.wav");
    ambientsound(self.origin, "ambience/comp1.wav", 1.000, ATTN_STATIC);
};

// ambient_thunder
// function begins at statement 25650, parm_start=17552
// OP_STORE_V	17552	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17553
// OP_STORE_V	17553	4	0
// OP_STORE_V	17552	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_thunder = 
{
    precache_sound("ambience/thunder1.wav");
    ambientsound(self.origin, "ambience/thunder1.wav", 0.500, ATTN_STATIC);
};

// ambient_light_buzz
// function begins at statement 25659, parm_start=17557
// OP_STORE_V	17161	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17557
// OP_STORE_V	17557	4	0
// OP_STORE_V	17161	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_light_buzz = 
{
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.500, ATTN_STATIC);
};

// ambient_swamp1
// function begins at statement 25668, parm_start=17561
// OP_STORE_V	17561	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17562
// OP_STORE_V	17562	4	0
// OP_STORE_V	17561	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_swamp1 = 
{
    precache_sound("ambience/swamp1.wav");
    ambientsound(self.origin, "ambience/swamp1.wav", 0.500, ATTN_STATIC);
};

// ambient_swamp2
// function begins at statement 25677, parm_start=17566
// OP_STORE_V	17566	4	0
// OP_CALL1	513	0	0
// OP_LOAD_V	28	130	17567
// OP_STORE_V	17567	4	0
// OP_STORE_V	17566	7	0
// OP_STORE_V	972	10	0
// OP_STORE_V	377	13	0
// OP_CALL4	556	0	0
// OP_DONE	0	0	0
void () ambient_swamp2 = 
{
    precache_sound("ambience/swamp2.wav");
    ambientsound(self.origin, "ambience/swamp2.wav", 0.500, ATTN_STATIC);
};

// noise_think
// function begins at statement 25686, parm_start=17571
// OP_ADDRESS	28	175	17571
// OP_ADD_F	31	972	17572
// OP_STOREP_F	17572	17571	0
// OP_STORE_V	28	4	0
// OP_STORE_V	677	7	0
// OP_STORE_V	4113	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	806	7	0
// OP_STORE_V	4083	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	788	7	0
// OP_STORE_V	17573	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	808	7	0
// OP_STORE_V	17574	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	813	7	0
// OP_STORE_V	17575	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	816	7	0
// OP_STORE_V	17576	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	819	7	0
// OP_STORE_V	17577	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_DONE	0	0	0
void () noise_think = 
{
    self.nextthink = time + 0.500;
    sound(self, 1.000, "enforcer/enfire.wav", 1.000, ATTN_NORM);
    sound(self, 2.000, "enforcer/enfstop.wav", 1.000, ATTN_NORM);
    sound(self, 3.000, "enforcer/sight1.wav", 1.000, ATTN_NORM);
    sound(self, 4.000, "enforcer/sight2.wav", 1.000, ATTN_NORM);
    sound(self, 5.000, "enforcer/sight3.wav", 1.000, ATTN_NORM);
    sound(self, 6.000, "enforcer/sight4.wav", 1.000, ATTN_NORM);
    sound(self, 7.000, "enforcer/pain1.wav", 1.000, ATTN_NORM);
};

// misc_noisemaker
// function begins at statement 25732, parm_start=17579
// OP_STORE_V	4113	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	4083	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17573	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17574	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17575	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17576	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17577	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17579	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17580	4	0
// OP_CALL1	558	0	0
// OP_STORE_V	17581	4	0
// OP_CALL1	558	0	0
// OP_ADDRESS	28	175	17582
// OP_ADD_F	31	655	17583
// OP_CALL0	501	0	0
// OP_ADD_F	17583	1	17584
// OP_STOREP_F	17584	17582	0
// OP_ADDRESS	28	173	17585
// OP_STOREP_FNC	17570	17585	0
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

// cutcam_think
// function begins at statement 25760, parm_start=17587
// OP_STORE_V	30	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	17587	0
// OP_IFNOT	17587	40	0
// OP_LOAD_F	17587	404	17588
// OP_LT	17588	677	17589
// OP_LOAD_ENT	17587	412	17590
// OP_NE_E	17590	30	17591
// OP_AND	17589	17591	17592
// OP_IFNOT	17592	28	0
// OP_STORE_ENT	17587	81	0
// OP_LOAD_ENT	17587	412	17593
// OP_STORE_V	17593	4	0
// OP_LOAD_V	28	130	17594
// OP_STORE_V	17594	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	387	4	0
// OP_STORE_V	827	7	0
// OP_CALL2	542	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_F	28	445	17597
// OP_STORE_V	17597	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_F	28	446	17598
// OP_STORE_V	17598	7	0
// OP_CALL2	547	0	0
// OP_STORE_V	387	4	0
// OP_LOAD_F	28	447	17599
// OP_STORE_V	17599	7	0
// OP_CALL2	547	0	0
// OP_LOAD_S	28	231	17600
// OP_IFNOT	17600	5	0
// OP_STORE_V	17587	4	0
// OP_LOAD_S	28	231	17601
// OP_STORE_V	17601	7	0
// OP_CALL2	518	0	0
// OP_STORE_V	17587	4	0
// OP_STORE_V	154	7	0
// OP_STORE_V	766	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	17587	0
// OP_GOTO	-39	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_DONE	0	0	0
void () cutcam_think = 
{
    local entity e;
    e = find(world, classname, "player");
    
    while(e)
    {
        
        if((e.style < 1.000) && (e.oldenemy != world))
        {
            msg_entity = e;
            setorigin(e.oldenemy, self.origin);
            WriteByte(MSG_ONE, 10.000);
            WriteAngle(MSG_ONE, self.mangle_x);
            WriteAngle(MSG_ONE, self.mangle_y);
            WriteAngle(MSG_ONE, self.mangle_z);
            
            if(self.message)
            {
                sprint(e, self.message);
            }
            
        }
        
        e = find(e, classname, "player");
    }
    
    remove(self);
};

// info_cutcam
// function begins at statement 25808, parm_start=17603
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	462	17603
// OP_NOT_F	17603	0	17604
// OP_IFNOT	17604	3	0
// OP_ADDRESS	28	462	17605
// OP_STOREP_F	1687	17605	0
// OP_ADDRESS	28	173	17606
// OP_STOREP_FNC	17586	17606	0
// OP_ADDRESS	28	175	17607
// OP_LOAD_F	28	462	17608
// OP_ADD_F	31	17608	17609
// OP_STOREP_F	17609	17607	0
// OP_DONE	0	0	0
void () info_cutcam = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    
    if(!self.wait)
    {
        self.wait = 0.300;
    }
    
    self.think = cutcam_think;
    self.nextthink = time + self.wait;
};

