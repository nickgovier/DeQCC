// info_null
// function begins at statement 11723, parm_start=7885
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () info_null = 
{
    remove(self);
};

// info_notnull
// function begins at statement 11726, parm_start=7886
// OP_DONE	0	0	0
void () info_notnull = 
{
};

float START_OFF = 1;
// light_use
// function begins at statement 11727, parm_start=7888
// OP_LOAD_F	28	195	7888
// OP_BITAND	7888	7886	7889
// OP_IFNOT	7889	10	0
// OP_LOAD_F	28	356	7890
// OP_STORE_V	7890	4	0
// OP_STORE_V	4333	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	195	7891
// OP_LOAD_F	28	195	7892
// OP_SUB_F	7892	7886	7893
// OP_STOREP_F	7893	7891	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	356	7894
// OP_STORE_V	7894	4	0
// OP_STORE_V	4346	7	0
// OP_CALL2	480	0	0
// OP_ADDRESS	28	195	7895
// OP_LOAD_F	28	195	7896
// OP_ADD_F	7896	7886	7897
// OP_STOREP_F	7897	7895	0
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
// function begins at statement 11748, parm_start=7899
// OP_LOAD_S	28	197	7899
// OP_NOT_S	7899	0	7900
// OP_IFNOT	7900	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	356	7901
// OP_GE	7901	959	7902
// OP_IFNOT	7902	15	0
// OP_ADDRESS	28	147	7903
// OP_STOREP_FNC	7887	7903	0
// OP_LOAD_F	28	195	7904
// OP_BITAND	7904	7886	7905
// OP_IFNOT	7905	6	0
// OP_LOAD_F	28	356	7906
// OP_STORE_V	7906	4	0
// OP_STORE_V	4346	7	0
// OP_CALL2	480	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	356	7907
// OP_STORE_V	7907	4	0
// OP_STORE_V	4333	7	0
// OP_CALL2	480	0	0
// OP_DONE	0	0	0
void () light = 
{
    
    if(!self.targetname)
    {
        remove(self);
        return;
    }
    
    
    if(self.style >= 32)
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
// function begins at statement 11772, parm_start=7909
// OP_LOAD_F	28	356	7909
// OP_GE	7909	959	7910
// OP_IFNOT	7910	15	0
// OP_ADDRESS	28	147	7911
// OP_STOREP_FNC	7887	7911	0
// OP_LOAD_F	28	195	7912
// OP_BITAND	7912	7886	7913
// OP_IFNOT	7913	6	0
// OP_LOAD_F	28	356	7914
// OP_STORE_V	7914	4	0
// OP_STORE_V	4346	7	0
// OP_CALL2	480	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	356	7915
// OP_STORE_V	7915	4	0
// OP_STORE_V	4333	7	0
// OP_CALL2	480	0	0
// OP_STORE_V	7916	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	7917
// OP_STORE_V	7917	4	0
// OP_STORE_V	7916	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () light_fluoro = 
{
    
    if(self.style >= 32)
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
// function begins at statement 11798, parm_start=7921
// OP_LOAD_F	28	356	7921
// OP_NOT_F	7921	0	7922
// OP_IFNOT	7922	3	0
// OP_ADDRESS	28	356	7923
// OP_STOREP_F	1931	7923	0
// OP_STORE_V	7924	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	7925
// OP_STORE_V	7925	4	0
// OP_STORE_V	7924	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () light_fluorospark = 
{
    
    if(!self.style)
    {
        self.style = 10;
    }
    
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 0.5, ATTN_STATIC);
};

// light_globe
// function begins at statement 11812, parm_start=7929
// OP_STORE_V	7929	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7929	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	504	0	0
// OP_DONE	0	0	0
void () light_globe = 
{
    precache_model("progs/s_light.spr");
    setmodel(self, "progs/s_light.spr");
    makestatic(self);
};

// FireAmbient
// function begins at statement 11820, parm_start=7931
// OP_STORE_V	7931	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	7932
// OP_STORE_V	7932	4	0
// OP_STORE_V	7931	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () FireAmbient = 
{
    precache_sound("ambience/fire1.wav");
    ambientsound(self.origin, "ambience/fire1.wav", 0.5, ATTN_STATIC);
};

// light_torch_small_walltorch
// function begins at statement 11829, parm_start=7936
// OP_STORE_V	7936	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7936	7	0
// OP_CALL2	450	0	0
// OP_CALL0	7930	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	504	0	0
// OP_DONE	0	0	0
void () light_torch_small_walltorch = 
{
    precache_model("progs/flame.mdl");
    setmodel(self, "progs/flame.mdl");
    FireAmbient();
    makestatic(self);
};

// light_flame_large_yellow
// function begins at statement 11838, parm_start=7938
// OP_STORE_V	7938	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7938	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	131	7939
// OP_STOREP_F	708	7939	0
// OP_CALL0	7930	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	504	0	0
// OP_DONE	0	0	0
void () light_flame_large_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    self.frame = 1;
    FireAmbient();
    makestatic(self);
};

// light_flame_small_yellow
// function begins at statement 11849, parm_start=7941
// OP_STORE_V	7938	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7938	7	0
// OP_CALL2	450	0	0
// OP_CALL0	7930	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	504	0	0
// OP_DONE	0	0	0
void () light_flame_small_yellow = 
{
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    FireAmbient();
    makestatic(self);
};

// light_flame_small_white
// function begins at statement 11858, parm_start=7942
// OP_STORE_V	7938	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	7938	7	0
// OP_CALL2	450	0	0
// OP_CALL0	7930	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	504	0	0
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
// function begins at statement 11867, parm_start=7945
// OP_STORE_V	4330	4	0
// OP_CALL1	466	0	0
// OP_ADDRESS	28	129	7945
// OP_STOREP_S	5556	7945	0
// OP_ADDRESS	28	150	7946
// OP_CALL0	453	0	0
// OP_MUL_F	1	1660	7947
// OP_ADD_F	31	7947	7948
// OP_STOREP_F	7948	7946	0
// OP_ADDRESS	28	148	7949
// OP_STOREP_FNC	7942	7949	0
// OP_LOAD_F	28	365	7950
// OP_NOT_F	7950	0	7951
// OP_IFNOT	7951	3	0
// OP_LOAD_F	28	365	7952
// OP_EQ_F	7952	1259	7953
// OP_DONE	0	0	0
void () misc_fireball = 
{
    precache_model("progs/lavaball.mdl");
    self.classname = "fireball";
    self.nextthink = time + (random() * 5);
    self.think = fire_fly;
    
    if(!self.speed)
    {
        self.speed == 1000; // DECOMPILATION WARNING: unused anonymous variable, possible == instead of =?
    }
    
};

// fire_fly
// function begins at statement 11884, parm_start=7954
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	7954	0
// OP_ADDRESS	7954	104	7955
// OP_STOREP_F	239	7955	0
// OP_ADDRESS	7954	103	7956
// OP_STOREP_F	232	7956	0
// OP_ADDRESS	7954	113	7957
// OP_STOREP_V	7960	7957	0
// OP_ADDRESS	7954	114	7963
// OP_CALL0	453	0	0
// OP_MUL_F	1	2165	7964
// OP_SUB_F	7964	2509	7965
// OP_STOREP_F	7965	7963	0
// OP_ADDRESS	7954	115	7966
// OP_CALL0	453	0	0
// OP_MUL_F	1	2165	7967
// OP_SUB_F	7967	2509	7968
// OP_STOREP_F	7968	7966	0
// OP_ADDRESS	7954	116	7969
// OP_LOAD_F	28	365	7970
// OP_CALL0	453	0	0
// OP_MUL_F	1	2246	7971
// OP_ADD_F	7970	7971	7972
// OP_STOREP_F	7972	7969	0
// OP_ADDRESS	7954	129	7973
// OP_STOREP_S	5556	7973	0
// OP_STORE_V	7954	4	0
// OP_STORE_V	4330	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	7954	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	7954	4	0
// OP_LOAD_V	28	105	7974
// OP_STORE_V	7974	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	7954	150	7977
// OP_ADD_F	31	1660	7978
// OP_STOREP_F	7978	7977	0
// OP_ADDRESS	7954	148	7979
// OP_STOREP_FNC	520	7979	0
// OP_ADDRESS	7954	146	7980
// OP_STOREP_FNC	7943	7980	0
// OP_ADDRESS	28	150	7981
// OP_CALL0	453	0	0
// OP_MUL_F	1	1660	7982
// OP_ADD_F	31	7982	7983
// OP_ADD_F	7983	819	7984
// OP_STOREP_F	7984	7981	0
// OP_ADDRESS	28	148	7985
// OP_STOREP_FNC	7942	7985	0
// OP_DONE	0	0	0
void () fire_fly = 
{
    local entity fireball;
    fireball = spawn();
    fireball.solid = SOLID_TRIGGER;
    fireball.movetype = MOVETYPE_TOSS;
    fireball.velocity = '0.000 0.000 1000.000';
    fireball.velocity_x = (random() * 100) - 50;
    fireball.velocity_y = (random() * 100) - 50;
    fireball.velocity_z = self.speed + (random() * 200);
    fireball.classname = "fireball";
    setmodel(fireball, "progs/lavaball.mdl");
    setsize(fireball, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(fireball, self.origin);
    fireball.nextthink = time + 5;
    fireball.think = SUB_Remove;
    fireball.touch = fire_touch;
    self.nextthink = (time + (random() * 5)) + 3;
    self.think = fire_fly;
};

// fire_touch
// function begins at statement 11937, parm_start=7986
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1017	13	0
// OP_CALL4	521	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () fire_touch = 
{
    T_Damage(other, self, self, 20);
    remove(self);
};

// barrel_explode
// function begins at statement 11945, parm_start=7987
// OP_ADDRESS	28	163	7987
// OP_STOREP_F	251	7987	0
// OP_ADDRESS	28	129	7988
// OP_STOREP_S	5539	7988	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	7989	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1994	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2865	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	105	7990
// OP_STORE_V	7990	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	6110	10	0
// OP_STORE_V	4017	13	0
// OP_CALL4	491	0	0
// OP_ADDRESS	28	108	7993
// OP_LOAD_F	28	108	7994
// OP_ADD_F	7994	959	7995
// OP_STOREP_F	7995	7993	0
// OP_CALL0	3163	0	0
// OP_DONE	0	0	0
void () barrel_explode = 
{
    self.takedamage = DAMAGE_NO;
    self.classname = "explo_box";
    T_RadiusDamage(self, self, 160, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", 1, ATTN_NORM);
    particle(self.origin, '0.000 0.000 0.000', 75, 255);
    self.origin_z = self.origin_z + 32;
    BecomeExplosion();
};

// misc_explobox
// function begins at statement 11972, parm_start=7997
// OP_ADDRESS	28	104	7998
// OP_STOREP_F	240	7998	0
// OP_ADDRESS	28	103	7999
// OP_STOREP_F	228	7999	0
// OP_STORE_V	8000	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8000	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	2865	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	152	8001
// OP_STOREP_F	1017	8001	0
// OP_ADDRESS	28	363	8002
// OP_STOREP_FNC	7986	8002	0
// OP_ADDRESS	28	163	8003
// OP_STOREP_F	253	8003	0
// OP_ADDRESS	28	108	8004
// OP_LOAD_F	28	108	8005
// OP_ADD_F	8005	929	8006
// OP_STOREP_F	8006	8004	0
// OP_LOAD_F	28	108	8007
// OP_STORE_F	8007	7997	0
// OP_CALL0	479	0	0
// OP_LOAD_F	28	108	8008
// OP_SUB_F	7997	8008	8009
// OP_GT	8009	2140	8010
// OP_IFNOT	8010	12	0
// OP_STORE_V	8011	4	0
// OP_CALL1	471	0	0
// OP_LOAD_V	28	105	8012
// OP_STORE_V	8012	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
    self.origin_z = self.origin_z + 2;
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
// function begins at statement 12012, parm_start=8016
// OP_ADDRESS	28	104	8017
// OP_STOREP_F	240	8017	0
// OP_ADDRESS	28	103	8018
// OP_STOREP_F	228	8018	0
// OP_STORE_V	8019	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8019	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	2865	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	152	8020
// OP_STOREP_F	1017	8020	0
// OP_ADDRESS	28	363	8021
// OP_STOREP_FNC	7986	8021	0
// OP_ADDRESS	28	163	8022
// OP_STOREP_F	253	8022	0
// OP_ADDRESS	28	108	8023
// OP_LOAD_F	28	108	8024
// OP_ADD_F	8024	929	8025
// OP_STOREP_F	8025	8023	0
// OP_LOAD_F	28	108	8026
// OP_STORE_F	8026	8016	0
// OP_CALL0	479	0	0
// OP_LOAD_F	28	108	8027
// OP_SUB_F	8016	8027	8028
// OP_GT	8028	2140	8029
// OP_IFNOT	8029	12	0
// OP_STORE_V	8011	4	0
// OP_CALL1	471	0	0
// OP_LOAD_V	28	105	8030
// OP_STORE_V	8030	4	0
// OP_CALL1	473	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	2094	4	0
// OP_CALL1	471	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
    self.origin_z = self.origin_z + 2;
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
// function begins at statement 12052, parm_start=8037
// OP_LOAD_F	28	195	8037
// OP_BITAND	8037	8034	8038
// OP_IFNOT	8038	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	105	8040
// OP_STORE_V	8040	4	0
// OP_LOAD_V	28	202	8043
// OP_STORE_V	8043	7	0
// OP_CALL2	8035	0	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2872	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	105	8046
// OP_STORE_V	8046	4	0
// OP_LOAD_V	28	202	8049
// OP_STORE_V	8049	7	0
// OP_CALL2	3460	0	0
// OP_ADDRESS	346	113	8052
// OP_LOAD_V	28	202	8055
// OP_MUL_VF	8055	1257	8058
// OP_STOREP_V	8058	8052	0
// OP_LOAD_F	28	195	8061
// OP_BITAND	8061	8033	8062
// OP_IFNOT	8062	3	0
// OP_ADDRESS	346	146	8063
// OP_STOREP_FNC	3459	8063	0
// OP_DONE	0	0	0
void () spikeshooter_use = 
{
    if(self.spawnflags & SPAWNFLAG_LASER)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", 1, ATTN_NORM);
        LaunchLaser(self.origin, self.movedir);
    }
    else
    {
        sound(self, CHAN_VOICE, "weapons/spike2.wav", 1, ATTN_NORM);
        launch_spike(self.origin, self.movedir);
        newmis.velocity = self.movedir * 500;
        
        if(self.spawnflags & SPAWNFLAG_SUPERSPIKE)
        {
            newmis.touch = superspike_touch;
        }
        
    }
    
};

// shooter_think
// function begins at statement 12088, parm_start=8065
// OP_CALL0	8036	0	0
// OP_ADDRESS	28	150	8065
// OP_LOAD_F	28	414	8066
// OP_ADD_F	31	8066	8067
// OP_STOREP_F	8067	8065	0
// OP_ADDRESS	346	113	8068
// OP_LOAD_V	28	202	8071
// OP_MUL_VF	8071	1257	8074
// OP_STOREP_V	8074	8068	0
// OP_DONE	0	0	0
void () shooter_think = 
{
    spikeshooter_use();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * 500;
};

// trap_spikeshooter
// function begins at statement 12098, parm_start=8078
// OP_CALL0	602	0	0
// OP_ADDRESS	28	147	8078
// OP_STOREP_FNC	8036	8078	0
// OP_LOAD_F	28	195	8079
// OP_BITAND	8079	8034	8080
// OP_IFNOT	8080	8	0
// OP_STORE_V	8081	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8039	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8082	4	0
// OP_CALL1	510	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	2872	4	0
// OP_CALL1	465	0	0
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
// function begins at statement 12114, parm_start=8084
// OP_CALL0	8077	0	0
// OP_LOAD_F	28	414	8084
// OP_EQ_F	8084	650	8085
// OP_IFNOT	8085	3	0
// OP_ADDRESS	28	414	8086
// OP_STOREP_F	708	8086	0
// OP_ADDRESS	28	150	8087
// OP_LOAD_F	28	150	8088
// OP_LOAD_F	28	414	8089
// OP_ADD_F	8088	8089	8090
// OP_LOAD_F	28	102	8091
// OP_ADD_F	8090	8091	8092
// OP_STOREP_F	8092	8087	0
// OP_ADDRESS	28	148	8093
// OP_STOREP_FNC	8064	8093	0
// OP_DONE	0	0	0
void () trap_shooter = 
{
    trap_spikeshooter();
    
    if(self.wait == 0)
    {
        self.wait = 1;
    }
    
    self.nextthink = (self.nextthink + self.wait) + self.ltime;
    self.think = shooter_think;
};

void () make_bubbles;
void () bubble_remove;
// air_bubbles
// function begins at statement 12130, parm_start=8097
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	4071	4	0
// OP_CALL1	466	0	0
// OP_ADDRESS	28	150	8097
// OP_ADD_F	31	708	8098
// OP_STOREP_F	8098	8097	0
// OP_ADDRESS	28	148	8099
// OP_STOREP_FNC	8094	8099	0
// OP_DONE	0	0	0
void () air_bubbles = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/s_bubble.spr");
    self.nextthink = time + 1;
    self.think = make_bubbles;
};

// make_bubbles
// function begins at statement 12142, parm_start=8100
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	8100	0
// OP_STORE_V	8100	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	8100	4	0
// OP_LOAD_V	28	105	8101
// OP_STORE_V	8101	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	8100	103	8104
// OP_STOREP_F	234	8104	0
// OP_ADDRESS	8100	104	8105
// OP_STOREP_F	238	8105	0
// OP_ADDRESS	8100	113	8106
// OP_STOREP_V	5866	8106	0
// OP_ADDRESS	8100	150	8109
// OP_ADD_F	31	1727	8110
// OP_STOREP_F	8110	8109	0
// OP_ADDRESS	8100	148	8111
// OP_STOREP_FNC	5587	8111	0
// OP_ADDRESS	8100	146	8112
// OP_STOREP_FNC	8095	8112	0
// OP_ADDRESS	8100	129	8113
// OP_STOREP_S	5873	8113	0
// OP_ADDRESS	8100	131	8114
// OP_STOREP_F	650	8114	0
// OP_ADDRESS	8100	422	8115
// OP_STOREP_F	650	8115	0
// OP_STORE_V	8100	4	0
// OP_STORE_V	1191	7	0
// OP_STORE_V	1194	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	150	8116
// OP_CALL0	453	0	0
// OP_ADD_F	31	1	8117
// OP_ADD_F	8117	1727	8118
// OP_STOREP_F	8118	8116	0
// OP_ADDRESS	28	148	8119
// OP_STOREP_FNC	8094	8119	0
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
    bubble.nextthink = time + 0.5;
    bubble.think = bubble_bob;
    bubble.touch = bubble_remove;
    bubble.classname = "bubble";
    bubble.frame = 0;
    bubble.cnt = 0;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.nextthink = (time + random()) + 0.5;
    self.think = make_bubbles;
};

// bubble_split
// function begins at statement 12182, parm_start=8121
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	8121	0
// OP_STORE_V	8121	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	8121	4	0
// OP_LOAD_V	28	105	8122
// OP_STORE_V	8122	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	8121	103	8125
// OP_STOREP_F	234	8125	0
// OP_ADDRESS	8121	104	8126
// OP_STOREP_F	238	8126	0
// OP_ADDRESS	8121	113	8127
// OP_LOAD_V	28	113	8130
// OP_STOREP_V	8130	8127	0
// OP_ADDRESS	8121	150	8133
// OP_ADD_F	31	1727	8134
// OP_STOREP_F	8134	8133	0
// OP_ADDRESS	8121	148	8135
// OP_STOREP_FNC	5587	8135	0
// OP_ADDRESS	8121	146	8136
// OP_STOREP_FNC	8095	8136	0
// OP_ADDRESS	8121	129	8137
// OP_STOREP_S	5873	8137	0
// OP_ADDRESS	8121	131	8138
// OP_STOREP_F	708	8138	0
// OP_ADDRESS	8121	422	8139
// OP_STOREP_F	1931	8139	0
// OP_STORE_V	8121	4	0
// OP_STORE_V	1191	7	0
// OP_STORE_V	1194	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	131	8140
// OP_STOREP_F	708	8140	0
// OP_ADDRESS	28	422	8141
// OP_STOREP_F	1931	8141	0
// OP_LOAD_F	28	189	8142
// OP_NE_F	8142	819	8143
// OP_IFNOT	8143	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
    bubble.frame = 1;
    bubble.cnt = 10;
    setsize(bubble, '-8.000 -8.000 -8.000', '8.000 8.000 8.000');
    self.frame = 1;
    self.cnt = 10;
    
    if(self.waterlevel != 3)
    {
        remove(self);
    }
    
};

// bubble_remove
// function begins at statement 12225, parm_start=8144
// OP_LOAD_S	29	129	8144
// OP_LOAD_S	28	129	8145
// OP_EQ_S	8144	8145	8146
// OP_IFNOT	8146	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
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
// function begins at statement 12233, parm_start=8147
// OP_ADDRESS	28	422	8156
// OP_LOAD_F	28	422	8157
// OP_ADD_F	8157	708	8158
// OP_STOREP_F	8158	8156	0
// OP_LOAD_F	28	422	8159
// OP_EQ_F	8159	1835	8160
// OP_IFNOT	8160	2	0
// OP_CALL0	8120	0	0
// OP_LOAD_F	28	422	8161
// OP_EQ_F	8161	1017	8162
// OP_IFNOT	8162	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	28	114	8163
// OP_CALL0	453	0	0
// OP_MUL_F	1	1017	8165
// OP_ADD_F	8164	8165	8166
// OP_ADD_F	8163	8166	8167
// OP_STORE_F	8167	8147	0
// OP_LOAD_F	28	115	8168
// OP_CALL0	453	0	0
// OP_MUL_F	1	1017	8169
// OP_ADD_F	8164	8169	8170
// OP_ADD_F	8168	8170	8171
// OP_STORE_F	8171	8148	0
// OP_LOAD_F	28	116	8172
// OP_ADD_F	8172	1931	8173
// OP_CALL0	453	0	0
// OP_MUL_F	1	1931	8174
// OP_ADD_F	8173	8174	8175
// OP_STORE_F	8175	8149	0
// OP_GT	8147	1931	8176
// OP_IFNOT	8176	2	0
// OP_STORE_F	1660	8147	0
// OP_LT	8147	8164	8177
// OP_IFNOT	8177	2	0
// OP_STORE_F	5572	8147	0
// OP_GT	8148	1931	8178
// OP_IFNOT	8178	2	0
// OP_STORE_F	1660	8148	0
// OP_LT	8148	8164	8179
// OP_IFNOT	8179	2	0
// OP_STORE_F	5572	8148	0
// OP_LT	8149	1931	8180
// OP_IFNOT	8180	2	0
// OP_STORE_F	2157	8149	0
// OP_GT	8149	1004	8181
// OP_IFNOT	8181	2	0
// OP_STORE_F	2171	8149	0
// OP_ADDRESS	28	114	8182
// OP_STOREP_F	8147	8182	0
// OP_ADDRESS	28	115	8183
// OP_STOREP_F	8148	8183	0
// OP_ADDRESS	28	116	8184
// OP_STOREP_F	8149	8184	0
// OP_ADDRESS	28	150	8185
// OP_ADD_F	31	1727	8186
// OP_STOREP_F	8186	8185	0
// OP_ADDRESS	28	148	8187
// OP_STOREP_FNC	5587	8187	0
// OP_DONE	0	0	0
void () bubble_bob = 
{
    local float rnd1;
    local float rnd2;
    local float rnd3;
    local vector vtmp1;
    local vector modi;
    self.cnt = self.cnt + 1;
    
    if(self.cnt == 4)
    {
        bubble_split();
    }
    
    
    if(self.cnt == 20)
    {
        remove(self);
    }
    
    rnd1 = self.velocity_x + (-10 + (random() * 20));
    rnd2 = self.velocity_y + (-10 + (random() * 20));
    rnd3 = (self.velocity_z + 10) + (random() * 10);
    
    if(rnd1 > 10)
    {
        rnd1 = 5;
    }
    
    
    if(rnd1 < -10)
    {
        rnd1 = -5;
    }
    
    
    if(rnd2 > 10)
    {
        rnd2 = 5;
    }
    
    
    if(rnd2 < -10)
    {
        rnd2 = -5;
    }
    
    
    if(rnd3 < 10)
    {
        rnd3 = 15;
    }
    
    
    if(rnd3 > 30)
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
// function begins at statement 12294, parm_start=8189
// OP_ADDRESS	28	103	8189
// OP_STOREP_F	228	8189	0
// OP_ADDRESS	28	104	8190
// OP_STOREP_F	238	8190	0
// OP_STORE_V	4321	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4321	7	0
// OP_CALL2	450	0	0
// OP_DONE	0	0	0
void () viewthing = 
{
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    precache_model("progs/player.mdl");
    setmodel(self, "progs/player.mdl");
};

// func_wall_use
// function begins at statement 12304, parm_start=8192
// OP_ADDRESS	28	131	8192
// OP_LOAD_F	28	131	8193
// OP_SUB_F	708	8193	8194
// OP_STOREP_F	8194	8192	0
// OP_DONE	0	0	0
void () func_wall_use = 
{
    self.frame = 1 - self.frame;
};

// func_wall
// function begins at statement 12309, parm_start=8196
// OP_ADDRESS	28	117	8196
// OP_STOREP_V	638	8196	0
// OP_ADDRESS	28	103	8199
// OP_STOREP_F	233	8199	0
// OP_ADDRESS	28	104	8200
// OP_STOREP_F	242	8200	0
// OP_ADDRESS	28	147	8201
// OP_STOREP_FNC	8191	8201	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8202
// OP_STORE_V	8202	7	0
// OP_CALL2	450	0	0
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
// function begins at statement 12322, parm_start=8204
// OP_ADDRESS	28	117	8204
// OP_STOREP_V	638	8204	0
// OP_ADDRESS	28	103	8207
// OP_STOREP_F	228	8207	0
// OP_ADDRESS	28	104	8208
// OP_STOREP_F	238	8208	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8209
// OP_STORE_V	8209	7	0
// OP_CALL2	450	0	0
// OP_CALL0	504	0	0
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
// function begins at statement 12334, parm_start=8211
// OP_LOAD_F	28	195	8211
// OP_BITAND	38	8211	8212
// OP_NOT_F	8212	0	8213
// OP_IFNOT	8213	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	8214
// OP_STOREP_V	638	8214	0
// OP_ADDRESS	28	103	8217
// OP_STOREP_F	233	8217	0
// OP_ADDRESS	28	104	8218
// OP_STOREP_F	242	8218	0
// OP_ADDRESS	28	147	8219
// OP_STOREP_FNC	8191	8219	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8220
// OP_STORE_V	8220	7	0
// OP_CALL2	450	0	0
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
// function begins at statement 12352, parm_start=8222
// OP_BITAND	38	2157	8222
// OP_EQ_F	8222	2157	8223
// OP_IFNOT	8223	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	8224
// OP_STOREP_V	638	8224	0
// OP_ADDRESS	28	103	8227
// OP_STOREP_F	233	8227	0
// OP_ADDRESS	28	104	8228
// OP_STOREP_F	242	8228	0
// OP_ADDRESS	28	147	8229
// OP_STOREP_FNC	8191	8229	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	8230
// OP_STORE_V	8230	7	0
// OP_CALL2	450	0	0
// OP_DONE	0	0	0
void () func_bossgate = 
{
    
    if((serverflags & 15) == 15)
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
// function begins at statement 12369, parm_start=8232
// OP_STORE_V	8232	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8233
// OP_STORE_V	8233	4	0
// OP_STORE_V	8232	7	0
// OP_STORE_V	708	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_suck_wind = 
{
    precache_sound("ambience/suck1.wav");
    ambientsound(self.origin, "ambience/suck1.wav", 1, ATTN_STATIC);
};

// ambient_drone
// function begins at statement 12378, parm_start=8237
// OP_STORE_V	8237	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8238
// OP_STORE_V	8238	4	0
// OP_STORE_V	8237	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_drone = 
{
    precache_sound("ambience/drone6.wav");
    ambientsound(self.origin, "ambience/drone6.wav", 0.5, ATTN_STATIC);
};

// ambient_flouro_buzz
// function begins at statement 12387, parm_start=8242
// OP_STORE_V	7924	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8242
// OP_STORE_V	8242	4	0
// OP_STORE_V	7924	7	0
// OP_STORE_V	708	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_flouro_buzz = 
{
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 1, ATTN_STATIC);
};

// ambient_drip
// function begins at statement 12396, parm_start=8246
// OP_STORE_V	8246	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8247
// OP_STORE_V	8247	4	0
// OP_STORE_V	8246	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_drip = 
{
    precache_sound("ambience/drip1.wav");
    ambientsound(self.origin, "ambience/drip1.wav", 0.5, ATTN_STATIC);
};

// ambient_comp_hum
// function begins at statement 12405, parm_start=8251
// OP_STORE_V	8251	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8252
// OP_STORE_V	8252	4	0
// OP_STORE_V	8251	7	0
// OP_STORE_V	708	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_comp_hum = 
{
    precache_sound("ambience/comp1.wav");
    ambientsound(self.origin, "ambience/comp1.wav", 1, ATTN_STATIC);
};

// ambient_thunder
// function begins at statement 12414, parm_start=8256
// OP_STORE_V	8256	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8257
// OP_STORE_V	8257	4	0
// OP_STORE_V	8256	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_thunder = 
{
    precache_sound("ambience/thunder1.wav");
    ambientsound(self.origin, "ambience/thunder1.wav", 0.5, ATTN_STATIC);
};

// ambient_light_buzz
// function begins at statement 12423, parm_start=8261
// OP_STORE_V	7916	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8261
// OP_STORE_V	8261	4	0
// OP_STORE_V	7916	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_light_buzz = 
{
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.5, ATTN_STATIC);
};

// ambient_swamp1
// function begins at statement 12432, parm_start=8265
// OP_STORE_V	8265	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8266
// OP_STORE_V	8266	4	0
// OP_STORE_V	8265	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_swamp1 = 
{
    precache_sound("ambience/swamp1.wav");
    ambientsound(self.origin, "ambience/swamp1.wav", 0.5, ATTN_STATIC);
};

// ambient_swamp2
// function begins at statement 12441, parm_start=8270
// OP_STORE_V	8270	4	0
// OP_CALL1	465	0	0
// OP_LOAD_V	28	105	8271
// OP_STORE_V	8271	4	0
// OP_STORE_V	8270	7	0
// OP_STORE_V	1727	10	0
// OP_STORE_V	329	13	0
// OP_CALL4	508	0	0
// OP_DONE	0	0	0
void () ambient_swamp2 = 
{
    precache_sound("ambience/swamp2.wav");
    ambientsound(self.origin, "ambience/swamp2.wav", 0.5, ATTN_STATIC);
};

// noise_think
// function begins at statement 12450, parm_start=8275
// OP_ADDRESS	28	150	8275
// OP_ADD_F	31	1727	8276
// OP_STOREP_F	8276	8275	0
// OP_STORE_V	28	4	0
// OP_STORE_V	708	7	0
// OP_STORE_V	8039	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	929	7	0
// OP_STORE_V	8082	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	819	7	0
// OP_STORE_V	1370	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1835	7	0
// OP_STORE_V	1372	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	1660	7	0
// OP_STORE_V	1374	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2107	7	0
// OP_STORE_V	1375	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2307	7	0
// OP_STORE_V	8277	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () noise_think = 
{
    self.nextthink = time + 0.5;
    sound(self, 1, "enforcer/enfire.wav", 1, ATTN_NORM);
    sound(self, 2, "enforcer/enfstop.wav", 1, ATTN_NORM);
    sound(self, 3, "enforcer/sight1.wav", 1, ATTN_NORM);
    sound(self, 4, "enforcer/sight2.wav", 1, ATTN_NORM);
    sound(self, 5, "enforcer/sight3.wav", 1, ATTN_NORM);
    sound(self, 6, "enforcer/sight4.wav", 1, ATTN_NORM);
    sound(self, 7, "enforcer/pain1.wav", 1, ATTN_NORM);
};

// misc_noisemaker
// function begins at statement 12496, parm_start=8279
// OP_STORE_V	8039	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8082	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1370	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1372	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1374	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1375	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8277	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8279	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8280	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	8281	4	0
// OP_CALL1	510	0	0
// OP_ADDRESS	28	150	8282
// OP_ADD_F	31	686	8283
// OP_CALL0	453	0	0
// OP_ADD_F	8283	1	8284
// OP_STOREP_F	8284	8282	0
// OP_ADDRESS	28	148	8285
// OP_STOREP_FNC	8274	8285	0
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

