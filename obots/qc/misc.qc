
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

float globaldef003568;

// func000622
// function begins at statement 17429, parm_start=11913
// OP_LOAD_F	28	195	11913
// OP_BITAND	11913	11911	11914
// OP_IFNOT	11914	10	0
// OP_LOAD_F	28	360	11915
// OP_STORE_V	11915	4	0
// OP_STORE_V	6695	7	0
// OP_CALL2	482	0	0
// OP_ADDRESS	28	195	11916
// OP_LOAD_F	28	195	11917
// OP_SUB_F	11917	11911	11918
// OP_STOREP_F	11918	11916	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	360	11919
// OP_STORE_V	11919	4	0
// OP_STORE_V	6708	7	0
// OP_CALL2	482	0	0
// OP_ADDRESS	28	195	11920
// OP_LOAD_F	28	195	11921
// OP_ADD_F	11921	11911	11922
// OP_STOREP_F	11922	11920	0
// OP_DONE	0	0	0
void () func000622 = 
{
    if(self.spawnflags & globaldef003568)
    {
        lightstyle(self.style, "m");
        self.spawnflags = self.spawnflags - globaldef003568;
    }
    else
    {
        lightstyle(self.style, "a");
        self.spawnflags = self.spawnflags + globaldef003568;
    }
    
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
    ambientsound(self.origin, "ambience/fl_hum1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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
    ambientsound(self.origin, "ambience/buzz1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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


// func000627
// function begins at statement 17522, parm_start=11956
// OP_STORE_V	11956	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	105	11957
// OP_STORE_V	11957	4	0
// OP_STORE_V	11956	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () func000627 = 
{
    precache_sound("ambience/fire1.wav");
    ambientsound(self.origin, "ambience/fire1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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


// func000633
// function begins at statement 17586, parm_start=11979
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	11979	0
// OP_ADDRESS	11979	104	11980
// OP_STOREP_F	238	11980	0
// OP_ADDRESS	11979	103	11981
// OP_STOREP_F	231	11981	0
// OP_ADDRESS	11979	113	11982
// OP_STOREP_V	11985	11982	0
// OP_ADDRESS	11979	114	11988
// OP_CALL0	457	0	0
// OP_MUL_F	1	1997	11989
// OP_SUB_F	11989	1470	11990
// OP_STOREP_F	11990	11988	0
// OP_ADDRESS	11979	115	11991
// OP_CALL0	457	0	0
// OP_MUL_F	1	1997	11992
// OP_SUB_F	11992	1470	11993
// OP_STOREP_F	11993	11991	0
// OP_ADDRESS	11979	116	11994
// OP_LOAD_F	28	369	11995
// OP_CALL0	457	0	0
// OP_MUL_F	1	2044	11996
// OP_ADD_F	11995	11996	11997
// OP_STOREP_F	11997	11994	0
// OP_ADDRESS	11979	129	11998
// OP_STOREP_S	9418	11998	0
// OP_STORE_V	11979	4	0
// OP_STORE_V	6694	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	11979	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	11979	4	0
// OP_LOAD_V	28	105	11999
// OP_STORE_V	11999	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	11979	150	12002
// OP_ADD_F	31	230	12003
// OP_STOREP_F	12003	12002	0
// OP_ADDRESS	11979	148	12004
// OP_STOREP_FNC	521	12004	0
// OP_ADDRESS	11979	146	12005
// OP_STOREP_FNC	11968	12005	0
// OP_ADDRESS	28	150	12006
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	12007
// OP_ADD_F	31	12007	12008
// OP_ADD_F	12008	228	12009
// OP_STOREP_F	12009	12006	0
// OP_ADDRESS	28	148	12010
// OP_STOREP_FNC	11967	12010	0
// OP_DONE	0	0	0
void () func000633 = 
{
    local entity globaldef003588;
    globaldef003588 = spawn();
    globaldef003588.solid = SOLID_TRIGGER;
    globaldef003588.movetype = MOVETYPE_TOSS;
    globaldef003588.velocity = '0 0 1000';
    globaldef003588.velocity_x = (random() * 100) - 50;
    globaldef003588.velocity_y = (random() * 100) - 50;
    globaldef003588.velocity_z = self.speed + (random() * 200);
    globaldef003588.classname = "fireball";
    setmodel(globaldef003588, "progs/lavaball.mdl");
    setsize(globaldef003588, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef003588, self.origin);
    globaldef003588.nextthink = time + MOVETYPE_FLY;
    globaldef003588.think = SUB_Remove;
    globaldef003588.touch = func000634;
    self.nextthink = (time + (random() * MOVETYPE_FLY)) + MOVETYPE_WALK;
    self.think = func000633;
};


// func000634
// function begins at statement 17639, parm_start=12011
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2323	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000634 = 
{
    T_Damage(other, self, self, 20);
    remove(self);
};


// func000635
// function begins at statement 17647, parm_start=12012
// OP_ADDRESS	28	163	12012
// OP_STOREP_F	250	12012	0
// OP_ADDRESS	28	129	12013
// OP_STOREP_S	9397	12013	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	12014	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	4216	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	5358	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12015
// OP_STORE_V	12015	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	9173	10	0
// OP_STORE_V	6491	13	0
// OP_CALL4	493	0	0
// OP_ADDRESS	28	108	12018
// OP_LOAD_F	28	108	12019
// OP_ADD_F	12019	219	12020
// OP_STOREP_F	12020	12018	0
// OP_CALL0	5703	0	0
// OP_DONE	0	0	0
void () func000635 = 
{
    self.takedamage = DAMAGE_NO;
    self.classname = "explo_box";
    T_RadiusDamage(self, self, 160, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", TRUE, ATTN_NORM);
    particle(self.origin, VEC_ORIGIN, 75, 255);
    self.origin_z = self.origin_z + FL_MONSTER;
    BecomeExplosion();
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
    
    if((globaldef003593 - self.origin_z) > GLOBALDEF721_250)
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
    
    if((globaldef003597 - self.origin_z) > GLOBALDEF721_250)
    {
        dprint("item fell out of level at ");
        dprint(vtos(self.origin));
        dprint("\n");
        remove(self);
    }
    
};

float globaldef003599;
float globaldef003600;
void (vector globaldef005434, vector globaldef005438) func002072;

// func000638
// function begins at statement 17754, parm_start=12062
// OP_LOAD_F	28	195	12062
// OP_BITAND	12062	12059	12063
// OP_IFNOT	12063	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12064	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12065
// OP_STORE_V	12065	4	0
// OP_LOAD_V	28	202	12068
// OP_STORE_V	12068	7	0
// OP_CALL2	12060	0	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	5365	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12071
// OP_STORE_V	12071	4	0
// OP_LOAD_V	28	202	12074
// OP_STORE_V	12074	7	0
// OP_CALL2	6018	0	0
// OP_ADDRESS	350	113	12077
// OP_LOAD_V	28	202	12080
// OP_MUL_VF	12080	745	12083
// OP_STOREP_V	12083	12077	0
// OP_LOAD_F	28	195	12086
// OP_BITAND	12086	12058	12087
// OP_IFNOT	12087	3	0
// OP_ADDRESS	350	146	12088
// OP_STOREP_FNC	6017	12088	0
// OP_DONE	0	0	0
void () func000638 = 
{
    if(self.spawnflags & globaldef003600)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", TRUE, ATTN_NORM);
        func002072(self.origin, self.movedir);
    }
    else
    {
        sound(self, CHAN_VOICE, "weapons/spike2.wav", TRUE, ATTN_NORM);
        launch_spike(self.origin, self.movedir);
        newmis.velocity = self.movedir * GLOBALDEF728_500;
        
        if(self.spawnflags & globaldef003599)
        {
            newmis.touch = superspike_touch;
        }
        
    }
    
};


// func000639
// function begins at statement 17790, parm_start=12090
// OP_CALL0	12061	0	0
// OP_ADDRESS	28	150	12090
// OP_LOAD_F	28	418	12091
// OP_ADD_F	31	12091	12092
// OP_STOREP_F	12092	12090	0
// OP_ADDRESS	350	113	12093
// OP_LOAD_V	28	202	12096
// OP_MUL_VF	12096	745	12099
// OP_STOREP_V	12099	12093	0
// OP_DONE	0	0	0
void () func000639 = 
{
    func000638();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * GLOBALDEF728_500;
};


// func000640
// function begins at statement 17800, parm_start=12103
// OP_CALL0	2956	0	0
// OP_ADDRESS	28	147	12103
// OP_STOREP_FNC	12061	12103	0
// OP_LOAD_F	28	195	12104
// OP_BITAND	12104	12059	12105
// OP_IFNOT	12105	8	0
// OP_STORE_V	12106	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	12064	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12107	4	0
// OP_CALL1	511	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5365	4	0
// OP_CALL1	469	0	0
// OP_DONE	0	0	0
void () func000640 = 
{
    SetMovedir();
    self.use = func000638;
    if(self.spawnflags & globaldef003600)
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


// func000644
// function begins at statement 17846, parm_start=12126
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	12126	0
// OP_STORE_V	12126	4	0
// OP_STORE_V	6690	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	12126	4	0
// OP_LOAD_V	28	105	12127
// OP_STORE_V	12127	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	12126	103	12130
// OP_STOREP_F	233	12130	0
// OP_ADDRESS	12126	104	12131
// OP_STOREP_F	237	12131	0
// OP_ADDRESS	12126	113	12132
// OP_STOREP_V	9696	12132	0
// OP_ADDRESS	12126	150	12135
// OP_ADD_F	31	539	12136
// OP_STOREP_F	12136	12135	0
// OP_ADDRESS	12126	148	12137
// OP_STOREP_FNC	9425	12137	0
// OP_ADDRESS	12126	146	12138
// OP_STOREP_FNC	12121	12138	0
// OP_ADDRESS	12126	129	12139
// OP_STOREP_S	9703	12139	0
// OP_ADDRESS	12126	131	12140
// OP_STOREP_F	213	12140	0
// OP_ADDRESS	12126	426	12141
// OP_STOREP_F	213	12141	0
// OP_STORE_V	12126	4	0
// OP_STORE_V	3520	7	0
// OP_STORE_V	3523	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	150	12142
// OP_CALL0	457	0	0
// OP_ADD_F	31	1	12143
// OP_ADD_F	12143	539	12144
// OP_STOREP_F	12144	12142	0
// OP_ADDRESS	28	148	12145
// OP_STOREP_FNC	12120	12145	0
// OP_DONE	0	0	0
void () func000644 = 
{
    local entity globaldef003613;
    globaldef003613 = spawn();
    setmodel(globaldef003613, "progs/s_bubble.spr");
    setorigin(globaldef003613, self.origin);
    globaldef003613.movetype = MOVETYPE_NOCLIP;
    globaldef003613.solid = SOLID_NOT;
    globaldef003613.velocity = '0 0 15';
    globaldef003613.nextthink = time + RA_PLAYERSTATTIME;
    globaldef003613.think = bubble_bob;
    globaldef003613.touch = func000646;
    globaldef003613.classname = "bubble";
    globaldef003613.frame = FALSE;
    globaldef003613.cnt = FALSE;
    setsize(globaldef003613, '-8 -8 -8', '8 8 8');
    self.nextthink = (time + random()) + RA_PLAYERSTATTIME;
    self.think = func000644;
};


// func000645
// function begins at statement 17886, parm_start=12147
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	12147	0
// OP_STORE_V	12147	4	0
// OP_STORE_V	6690	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	12147	4	0
// OP_LOAD_V	28	105	12148
// OP_STORE_V	12148	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	12147	103	12151
// OP_STOREP_F	233	12151	0
// OP_ADDRESS	12147	104	12152
// OP_STOREP_F	237	12152	0
// OP_ADDRESS	12147	113	12153
// OP_LOAD_V	28	113	12156
// OP_STOREP_V	12156	12153	0
// OP_ADDRESS	12147	150	12159
// OP_ADD_F	31	539	12160
// OP_STOREP_F	12160	12159	0
// OP_ADDRESS	12147	148	12161
// OP_STOREP_FNC	9425	12161	0
// OP_ADDRESS	12147	146	12162
// OP_STOREP_FNC	12121	12162	0
// OP_ADDRESS	12147	129	12163
// OP_STOREP_S	9703	12163	0
// OP_ADDRESS	12147	131	12164
// OP_STOREP_F	214	12164	0
// OP_ADDRESS	12147	426	12165
// OP_STOREP_F	235	12165	0
// OP_STORE_V	12147	4	0
// OP_STORE_V	3520	7	0
// OP_STORE_V	3523	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	131	12166
// OP_STOREP_F	214	12166	0
// OP_ADDRESS	28	426	12167
// OP_STOREP_F	235	12167	0
// OP_LOAD_F	28	189	12168
// OP_NE_F	12168	228	12169
// OP_IFNOT	12169	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000645 = 
{
    local entity globaldef003615;
    globaldef003615 = spawn();
    setmodel(globaldef003615, "progs/s_bubble.spr");
    setorigin(globaldef003615, self.origin);
    globaldef003615.movetype = MOVETYPE_NOCLIP;
    globaldef003615.solid = SOLID_NOT;
    globaldef003615.velocity = self.velocity;
    globaldef003615.nextthink = time + RA_PLAYERSTATTIME;
    globaldef003615.think = bubble_bob;
    globaldef003615.touch = func000646;
    globaldef003615.classname = "bubble";
    globaldef003615.frame = TRUE;
    globaldef003615.cnt = MOVETYPE_BOUNCE;
    setsize(globaldef003615, '-8 -8 -8', '8 8 8');
    self.frame = TRUE;
    self.cnt = MOVETYPE_BOUNCE;
    
    if(self.waterlevel != MOVETYPE_WALK)
    {
        remove(self);
    }
    
};


// func000646
// function begins at statement 17929, parm_start=12170
// OP_LOAD_S	29	129	12170
// OP_LOAD_S	28	129	12171
// OP_EQ_S	12170	12171	12172
// OP_IFNOT	12172	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000646 = 
{
    
    if(other.classname == self.classname)
    {
        return;
    }
    
    remove(self);
};


// bubble_bob
// function begins at statement 17937, parm_start=12173
// OP_ADDRESS	28	426	12182
// OP_LOAD_F	28	426	12183
// OP_ADD_F	12183	214	12184
// OP_STOREP_F	12184	12182	0
// OP_LOAD_F	28	426	12185
// OP_EQ_F	12185	229	12186
// OP_IFNOT	12186	2	0
// OP_CALL0	12146	0	0
// OP_LOAD_F	28	426	12187
// OP_EQ_F	12187	2323	12188
// OP_IFNOT	12188	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_LOAD_F	28	114	12189
// OP_CALL0	457	0	0
// OP_MUL_F	1	2323	12191
// OP_ADD_F	12190	12191	12192
// OP_ADD_F	12189	12192	12193
// OP_STORE_F	12193	12173	0
// OP_LOAD_F	28	115	12194
// OP_CALL0	457	0	0
// OP_MUL_F	1	2323	12195
// OP_ADD_F	12190	12195	12196
// OP_ADD_F	12194	12196	12197
// OP_STORE_F	12197	12174	0
// OP_LOAD_F	28	116	12198
// OP_ADD_F	12198	235	12199
// OP_CALL0	457	0	0
// OP_MUL_F	1	235	12200
// OP_ADD_F	12199	12200	12201
// OP_STORE_F	12201	12175	0
// OP_GT	12173	235	12202
// OP_IFNOT	12202	2	0
// OP_STORE_F	230	12173	0
// OP_LT	12173	12190	12203
// OP_IFNOT	12203	2	0
// OP_STORE_F	280	12173	0
// OP_GT	12174	235	12204
// OP_IFNOT	12204	2	0
// OP_STORE_F	230	12174	0
// OP_LT	12174	12190	12205
// OP_IFNOT	12205	2	0
// OP_STORE_F	280	12174	0
// OP_LT	12175	235	12206
// OP_IFNOT	12206	2	0
// OP_STORE_F	765	12175	0
// OP_GT	12175	309	12207
// OP_IFNOT	12207	2	0
// OP_STORE_F	305	12175	0
// OP_ADDRESS	28	114	12208
// OP_STOREP_F	12173	12208	0
// OP_ADDRESS	28	115	12209
// OP_STOREP_F	12174	12209	0
// OP_ADDRESS	28	116	12210
// OP_STOREP_F	12175	12210	0
// OP_ADDRESS	28	150	12211
// OP_ADD_F	31	539	12212
// OP_STOREP_F	12212	12211	0
// OP_ADDRESS	28	148	12213
// OP_STOREP_FNC	9425	12213	0
// OP_DONE	0	0	0
void () bubble_bob = 
{
    local float globaldef003616;
    local float globaldef003617;
    local float globaldef003618;
    local vector globaldef003619;
    local vector globaldef003623;
    self.cnt = self.cnt + TRUE;
    
    if(self.cnt == MOVETYPE_STEP)
    {
        func000645();
    }
    
    
    if(self.cnt == 20)
    {
        remove(self);
    }
    
    globaldef003616 = self.velocity_x + (-10 + (random() * 20));
    globaldef003617 = self.velocity_y + (-10 + (random() * 20));
    globaldef003618 = (self.velocity_z + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    
    if(globaldef003616 > MOVETYPE_BOUNCE)
    {
        globaldef003616 = MOVETYPE_FLY;
    }
    
    
    if(globaldef003616 < -10)
    {
        globaldef003616 = CONTENT_LAVA;
    }
    
    
    if(globaldef003617 > MOVETYPE_BOUNCE)
    {
        globaldef003617 = MOVETYPE_FLY;
    }
    
    
    if(globaldef003617 < -10)
    {
        globaldef003617 = CONTENT_LAVA;
    }
    
    
    if(globaldef003618 < MOVETYPE_BOUNCE)
    {
        globaldef003618 = GLOBALDEF748_15;
    }
    
    
    if(globaldef003618 > SVC_INTERMISSION)
    {
        globaldef003618 = SVC_SIGNONNUM;
    }
    
    self.velocity_x = globaldef003616;
    self.velocity_y = globaldef003617;
    self.velocity_z = globaldef003618;
    self.nextthink = time + RA_PLAYERSTATTIME;
    self.think = bubble_bob;
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


// func000649
// function begins at statement 18008, parm_start=12218
// OP_ADDRESS	28	131	12218
// OP_LOAD_F	28	131	12219
// OP_SUB_F	214	12219	12220
// OP_STOREP_F	12220	12218	0
// OP_DONE	0	0	0
void () func000649 = 
{
    self.frame = TRUE - self.frame;
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
    
    if((serverflags & GLOBALDEF748_15) == GLOBALDEF748_15)
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
    ambientsound(self.origin, "ambience/drone6.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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
    ambientsound(self.origin, "ambience/drip1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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
    ambientsound(self.origin, "ambience/thunder1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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
    ambientsound(self.origin, "ambience/fl_hum1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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
    ambientsound(self.origin, "ambience/swamp1.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
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
    ambientsound(self.origin, "ambience/swamp2.wav", RA_PLAYERSTATTIME, ATTN_STATIC);
};


// func000663
// function begins at statement 18155, parm_start=12301
// OP_ADDRESS	28	150	12301
// OP_ADD_F	31	539	12302
// OP_STOREP_F	12302	12301	0
// OP_STORE_V	28	4	0
// OP_STORE_V	214	7	0
// OP_STORE_V	12064	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	216	7	0
// OP_STORE_V	12107	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	228	7	0
// OP_STORE_V	3697	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	229	7	0
// OP_STORE_V	3699	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	230	7	0
// OP_STORE_V	3701	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	231	7	0
// OP_STORE_V	3702	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	232	7	0
// OP_STORE_V	12303	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000663 = 
{
    self.nextthink = time + RA_PLAYERSTATTIME;
    sound(self, TRUE, "enforcer/enfire.wav", TRUE, ATTN_NORM);
    sound(self, FL_SWIM, "enforcer/enfstop.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_WALK, "enforcer/sight1.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_STEP, "enforcer/sight2.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_FLY, "enforcer/sight3.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_TOSS, "enforcer/sight4.wav", TRUE, ATTN_NORM);
    sound(self, MOVETYPE_PUSH, "enforcer/pain1.wav", TRUE, ATTN_NORM);
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

