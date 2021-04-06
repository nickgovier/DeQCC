// info_null
// function begins at statement 17425, parm_start=11910
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () info_null = 
{
    remove(self);
};

// info_notnull
// function begins at statement 17428, parm_start=11911
// OP_DONE	0	0	0
void () info_notnull = 
{
};

// light
// function begins at statement 17450, parm_start=11924
// OP_LOAD_S	28	197	11924
// OP_NOT_S	11924	0	11925
// OP_IFNOT	11925	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	360	11926
// OP_GE	11926	219	11927
// OP_IFNOT	11927	15	0
// OP_ADDRESS	28	147	11928
// OP_STOREP_FNC	11912	11928	0
// OP_LOAD_F	28	195	11929
// OP_BITAND	11929	11911	11930
// OP_IFNOT	11930	6	0
// OP_LOAD_F	28	360	11931
// OP_STORE_V	11931	4	0
// OP_STORE_V	6708	7	0
// OP_CALL2	482	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	360	11932
// OP_STORE_V	11932	4	0
// OP_STORE_V	6695	7	0
// OP_CALL2	482	0	0
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
        self.use = func000622;
        if(self.spawnflags & globaldef003568)
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
// function begins at statement 17474, parm_start=11934
// OP_LOAD_F	28	360	11934
// OP_GE	11934	219	11935
// OP_IFNOT	11935	15	0
// OP_ADDRESS	28	147	11936
// OP_STOREP_FNC	11912	11936	0
// OP_LOAD_F	28	195	11937
// OP_BITAND	11937	11911	11938
// OP_IFNOT	11938	6	0
// OP_LOAD_F	28	360	11939
// OP_STORE_V	11939	4	0
// OP_STORE_V	6708	7	0
// OP_CALL2	482	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	360	11940
// OP_STORE_V	11940	4	0
// OP_STORE_V	6695	7	0
// OP_CALL2	482	0	0
// OP_STORE_V	11941	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	11942
// OP_STORE_V	11942	4	0
// OP_STORE_V	11941	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () light_fluoro = 
{
    
    if(self.style >= FL_MONSTER)
    {
        self.use = func000622;
        if(self.spawnflags & globaldef003568)
        {
            lightstyle(self.style, "a");
        }
        else
        {
            lightstyle(self.style, "m");
        }
        
    }
    
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", globaldef000522, ATTN_STATIC);
};

// light_fluorospark
// function begins at statement 17500, parm_start=11946
// OP_LOAD_F	28	360	11946
// OP_NOT_F	11946	0	11947
// OP_IFNOT	11947	3	0
// OP_ADDRESS	28	360	11948
// OP_STOREP_F	235	11948	0
// OP_STORE_V	11949	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	11950
// OP_STORE_V	11950	4	0
// OP_STORE_V	11949	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () light_fluorospark = 
{
    
    if(!self.style)
    {
        self.style = MOVETYPE_BOUNCE;
    }
    
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", globaldef000522, ATTN_STATIC);
};

// light_globe
// function begins at statement 17514, parm_start=11954
// OP_STORE_V	11954	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11954	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	506	0	0
// OP_DONE	0	0	0
void () light_globe = 
{
    precache_model("progs/s_light.spr");
    setmodel(self, "progs/s_light.spr");
    makestatic(self);
};

// light_torch_small_walltorch
// function begins at statement 17531, parm_start=11961
// OP_STORE_V	11961	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11961	7	0
// OP_CALL2	454	0	0
// OP_CALL0	11955	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	506	0	0
// OP_DONE	0	0	0
void () light_torch_small_walltorch = 
{
    precache_model("progs/flame.mdl");
    setmodel(self, "progs/flame.mdl");
    func000627();
    makestatic(self);
};

// light_flame_large_yellow
// function begins at statement 17540, parm_start=11963
// OP_STORE_V	11963	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11963	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	131	11964
// OP_STOREP_F	214	11964	0
// OP_CALL0	11955	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	506	0	0
// OP_DONE	0	0	0
void () light_flame_large_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    self.frame = TRUE;
    func000627();
    makestatic(self);
};

// light_flame_small_yellow
// function begins at statement 17551, parm_start=11966
// OP_STORE_V	11963	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11963	7	0
// OP_CALL2	454	0	0
// OP_CALL0	11955	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	506	0	0
// OP_DONE	0	0	0
void () light_flame_small_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    func000627();
    makestatic(self);
};

// light_flame_small_white
// function begins at statement 17560, parm_start=11967
// OP_STORE_V	11963	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11963	7	0
// OP_CALL2	454	0	0
// OP_CALL0	11955	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	506	0	0
// OP_DONE	0	0	0
void () light_flame_small_white = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    func000627();
    makestatic(self);
};

void () func000633;
void () func000634;
// misc_fireball
// function begins at statement 17569, parm_start=11970
// OP_STORE_V	6694	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	129	11970
// OP_STOREP_S	9418	11970	0
// OP_ADDRESS	28	150	11971
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	11972
// OP_ADD_F	31	11972	11973
// OP_STOREP_F	11973	11971	0
// OP_ADDRESS	28	148	11974
// OP_STOREP_FNC	11967	11974	0
// OP_LOAD_F	28	369	11975
// OP_NOT_F	11975	0	11976
// OP_IFNOT	11976	3	0
// OP_LOAD_F	28	369	11977
// OP_EQ_F	11977	1663	11978
// OP_DONE	0	0	0
void () misc_fireball = 
{
    precache_model("progs/lavaball.mdl");
    self.classname = "fireball";
    self.nextthink = time + (random() * MOVETYPE_FLY);
    self.think = func000633;
    
    if(!self.speed)
    {
        self.speed == 1000; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?
    }
    
};

// misc_explobox
// function begins at statement 17674, parm_start=12022
// OP_ADDRESS	28	104	12023
// OP_STOREP_F	239	12023	0
// OP_ADDRESS	28	103	12024
// OP_STOREP_F	227	12024	0
// OP_STORE_V	12025	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12025	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5358	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	152	12026
// OP_STOREP_F	2323	12026	0
// OP_ADDRESS	28	367	12027
// OP_STOREP_FNC	12011	12027	0
// OP_ADDRESS	28	163	12028
// OP_STOREP_F	252	12028	0
// OP_ADDRESS	28	108	12029
// OP_LOAD_F	28	108	12030
// OP_ADD_F	12030	216	12031
// OP_STOREP_F	12031	12029	0
// OP_LOAD_F	28	108	12032
// OP_STORE_F	12032	12022	0
// OP_CALL0	481	0	0
// OP_LOAD_F	28	108	12033
// OP_SUB_F	12022	12033	12034
// OP_GT	12034	738	12035
// OP_IFNOT	12035	12	0
// OP_STORE_V	12036	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	12037
// OP_STORE_V	12037	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () misc_explobox = 
{
    local float globaldef003593;
    self.solid = SOLID_BBOX;
    self.movetype = MOVETYPE_NONE;
    precache_model("maps/b_explob.bsp");
    setmodel(self, "maps/b_explob.bsp");
    precache_sound("weapons/r_exp3.wav");
    self.health = 20;
    self.th_die = func000635;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + FL_SWIM;
    globaldef003593 = self.origin_z;
    droptofloor();
    
    if((globaldef003593 - self.origin_z) > globaldef000721)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

// misc_explobox2
// function begins at statement 17714, parm_start=12041
// OP_ADDRESS	28	104	12042
// OP_STOREP_F	239	12042	0
// OP_ADDRESS	28	103	12043
// OP_STOREP_F	227	12043	0
// OP_STORE_V	12044	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12044	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5358	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	152	12045
// OP_STOREP_F	2323	12045	0
// OP_ADDRESS	28	367	12046
// OP_STOREP_FNC	12011	12046	0
// OP_ADDRESS	28	163	12047
// OP_STOREP_F	252	12047	0
// OP_ADDRESS	28	108	12048
// OP_LOAD_F	28	108	12049
// OP_ADD_F	12049	216	12050
// OP_STOREP_F	12050	12048	0
// OP_LOAD_F	28	108	12051
// OP_STORE_F	12051	12041	0
// OP_CALL0	481	0	0
// OP_LOAD_F	28	108	12052
// OP_SUB_F	12041	12052	12053
// OP_GT	12053	738	12054
// OP_IFNOT	12054	12	0
// OP_STORE_V	12036	4	0
// OP_CALL1	473	0	0
// OP_LOAD_V	28	105	12055
// OP_STORE_V	12055	4	0
// OP_CALL1	475	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () misc_explobox2 = 
{
    local float globaldef003597;
    self.solid = SOLID_BBOX;
    self.movetype = MOVETYPE_NONE;
    precache_model2("maps/b_exbox2.bsp");
    setmodel(self, "maps/b_exbox2.bsp");
    precache_sound("weapons/r_exp3.wav");
    self.health = 20;
    self.th_die = func000635;
    self.takedamage = DAMAGE_AIM;
    self.origin_z = self.origin_z + FL_SWIM;
    globaldef003597 = self.origin_z;
    droptofloor();
    
    if((globaldef003597 - self.origin_z) > globaldef000721)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

// trap_spikeshooter
// function begins at statement 17816, parm_start=12109
// OP_CALL0	12102	0	0
// OP_DONE	0	0	0
void () trap_spikeshooter = 
{
    func000640();
};

// trap_shooter
// function begins at statement 17818, parm_start=12110
// OP_CALL0	12102	0	0
// OP_LOAD_F	28	418	12110
// OP_EQ_F	12110	213	12111
// OP_IFNOT	12111	3	0
// OP_ADDRESS	28	418	12112
// OP_STOREP_F	214	12112	0
// OP_ADDRESS	28	150	12113
// OP_LOAD_F	28	150	12114
// OP_LOAD_F	28	418	12115
// OP_ADD_F	12114	12115	12116
// OP_LOAD_F	28	102	12117
// OP_ADD_F	12116	12117	12118
// OP_STOREP_F	12118	12113	0
// OP_ADDRESS	28	148	12119
// OP_STOREP_FNC	12089	12119	0
// OP_DONE	0	0	0
void () trap_shooter = 
{
    func000640();
    
    if(self.wait == FALSE)
    {
        self.wait = TRUE;
    }
    
    self.nextthink = (self.nextthink + self.wait) + self.ltime;
    self.think = func000639;
};

void () func000644;
void () func000646;
// air_bubbles
// function begins at statement 17834, parm_start=12123
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	6690	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	150	12123
// OP_ADD_F	31	214	12124
// OP_STOREP_F	12124	12123	0
// OP_ADDRESS	28	148	12125
// OP_STOREP_FNC	12120	12125	0
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
    self.think = func000644;
};

// viewthing
// function begins at statement 17998, parm_start=12215
// OP_ADDRESS	28	103	12215
// OP_STOREP_F	227	12215	0
// OP_ADDRESS	28	104	12216
// OP_STOREP_F	237	12216	0
// OP_STORE_V	6684	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6684	7	0
// OP_CALL2	454	0	0
// OP_DONE	0	0	0
void () viewthing = 
{
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    precache_model("progs/player.mdl");
    setmodel(self, "progs/player.mdl");
};

// func_wall
// function begins at statement 18013, parm_start=12222
// OP_ADDRESS	28	117	12222
// OP_STOREP_V	286	12222	0
// OP_ADDRESS	28	103	12225
// OP_STOREP_F	232	12225	0
// OP_ADDRESS	28	104	12226
// OP_STOREP_F	241	12226	0
// OP_ADDRESS	28	147	12227
// OP_STOREP_FNC	12217	12227	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	12228
// OP_STORE_V	12228	7	0
// OP_CALL2	454	0	0
// OP_DONE	0	0	0
void () func_wall = 
{
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func000649;
    setmodel(self, self.model);
};

// func_illusionary
// function begins at statement 18026, parm_start=12230
// OP_ADDRESS	28	117	12230
// OP_STOREP_V	286	12230	0
// OP_ADDRESS	28	103	12233
// OP_STOREP_F	227	12233	0
// OP_ADDRESS	28	104	12234
// OP_STOREP_F	237	12234	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	12235
// OP_STORE_V	12235	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	506	0	0
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
// function begins at statement 18039, parm_start=12237
// OP_LOAD_F	28	195	12237
// OP_BITAND	38	12237	12238
// OP_NOT_F	12238	0	12239
// OP_IFNOT	12239	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	12240
// OP_STOREP_V	286	12240	0
// OP_ADDRESS	28	103	12243
// OP_STOREP_F	232	12243	0
// OP_ADDRESS	28	104	12244
// OP_STOREP_F	241	12244	0
// OP_ADDRESS	28	147	12245
// OP_STOREP_FNC	12217	12245	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	12246
// OP_STORE_V	12246	7	0
// OP_CALL2	454	0	0
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
    self.use = func000649;
    setmodel(self, self.model);
};

// func_bossgate
// function begins at statement 18057, parm_start=12248
// OP_BITAND	38	765	12248
// OP_EQ_F	12248	765	12249
// OP_IFNOT	12249	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	12250
// OP_STOREP_V	286	12250	0
// OP_ADDRESS	28	103	12253
// OP_STOREP_F	232	12253	0
// OP_ADDRESS	28	104	12254
// OP_STOREP_F	241	12254	0
// OP_ADDRESS	28	147	12255
// OP_STOREP_FNC	12217	12255	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	12256
// OP_STORE_V	12256	7	0
// OP_CALL2	454	0	0
// OP_DONE	0	0	0
void () func_bossgate = 
{
    
    if((serverflags & globaldef000748) == globaldef000748)
    {
        return;
    }
    
    self.angles = VEC_ORIGIN;
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    self.use = func000649;
    setmodel(self, self.model);
};

// ambient_suck_wind
// function begins at statement 18074, parm_start=12258
// OP_STORE_V	12258	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12259
// OP_STORE_V	12259	4	0
// OP_STORE_V	12258	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_suck_wind = 
{
    precache_sound("ambience/suck1.wav");
    ambientsound(self.origin, "ambience/suck1.wav", TRUE, ATTN_STATIC);
};

// ambient_drone
// function begins at statement 18083, parm_start=12263
// OP_STORE_V	12263	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12264
// OP_STORE_V	12264	4	0
// OP_STORE_V	12263	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_drone = 
{
    precache_sound("ambience/drone6.wav");
    ambientsound(self.origin, "ambience/drone6.wav", globaldef000522, ATTN_STATIC);
};

// ambient_flouro_buzz
// function begins at statement 18092, parm_start=12268
// OP_STORE_V	11949	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12268
// OP_STORE_V	12268	4	0
// OP_STORE_V	11949	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_flouro_buzz = 
{
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", TRUE, ATTN_STATIC);
};

// ambient_drip
// function begins at statement 18101, parm_start=12272
// OP_STORE_V	12272	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12273
// OP_STORE_V	12273	4	0
// OP_STORE_V	12272	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_drip = 
{
    precache_sound("ambience/drip1.wav");
    ambientsound(self.origin, "ambience/drip1.wav", globaldef000522, ATTN_STATIC);
};

// ambient_comp_hum
// function begins at statement 18110, parm_start=12277
// OP_STORE_V	12277	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12278
// OP_STORE_V	12278	4	0
// OP_STORE_V	12277	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_comp_hum = 
{
    precache_sound("ambience/comp1.wav");
    ambientsound(self.origin, "ambience/comp1.wav", TRUE, ATTN_STATIC);
};

// ambient_thunder
// function begins at statement 18119, parm_start=12282
// OP_STORE_V	12282	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12283
// OP_STORE_V	12283	4	0
// OP_STORE_V	12282	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_thunder = 
{
    precache_sound("ambience/thunder1.wav");
    ambientsound(self.origin, "ambience/thunder1.wav", globaldef000522, ATTN_STATIC);
};

// ambient_light_buzz
// function begins at statement 18128, parm_start=12287
// OP_STORE_V	11941	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12287
// OP_STORE_V	12287	4	0
// OP_STORE_V	11941	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_light_buzz = 
{
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", globaldef000522, ATTN_STATIC);
};

// ambient_swamp1
// function begins at statement 18137, parm_start=12291
// OP_STORE_V	12291	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12292
// OP_STORE_V	12292	4	0
// OP_STORE_V	12291	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_swamp1 = 
{
    precache_sound("ambience/swamp1.wav");
    ambientsound(self.origin, "ambience/swamp1.wav", globaldef000522, ATTN_STATIC);
};

// ambient_swamp2
// function begins at statement 18146, parm_start=12296
// OP_STORE_V	12296	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	12297
// OP_STORE_V	12297	4	0
// OP_STORE_V	12296	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () ambient_swamp2 = 
{
    precache_sound("ambience/swamp2.wav");
    ambientsound(self.origin, "ambience/swamp2.wav", globaldef000522, ATTN_STATIC);
};

// misc_noisemaker
// function begins at statement 18201, parm_start=12305
// OP_STORE_V	12064	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12107	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3697	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3699	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3701	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3702	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12303	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12305	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12306	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12307	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	150	12308
// OP_ADD_F	31	3036	12309
// OP_CALL0	457	0	0
// OP_ADD_F	12309	1	12310
// OP_STOREP_F	12310	12308	0
// OP_ADDRESS	28	148	12311
// OP_STOREP_FNC	12300	12311	0
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
    self.think = func000663;
};

