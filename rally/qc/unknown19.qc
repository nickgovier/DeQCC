// info_null
// function begins at statement 23933, parm_start=16921
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () info_null = 
{
    remove(self);
};

// info_notnull
// function begins at statement 23936, parm_start=16922
// OP_DONE	0	0	0
void () info_notnull = 
{
};

float START_OFF = 1;
// light_use
// function begins at statement 23937, parm_start=16924
// OP_LOAD_F	28	195	16924
// OP_BITAND	16924	16922	16925
// OP_IFNOT	16925	10	0
// OP_LOAD_F	28	369	16926
// OP_STORE_V	16926	4	0
// OP_STORE_V	3958	7	0
// OP_CALL2	493	0	0
// OP_ADDRESS	28	195	16927
// OP_LOAD_F	28	195	16928
// OP_SUB_F	16928	16922	16929
// OP_STOREP_F	16929	16927	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	369	16930
// OP_STORE_V	16930	4	0
// OP_STORE_V	4054	7	0
// OP_CALL2	493	0	0
// OP_ADDRESS	28	195	16931
// OP_LOAD_F	28	195	16932
// OP_ADD_F	16932	16922	16933
// OP_STOREP_F	16933	16931	0
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
// function begins at statement 23958, parm_start=16935
// OP_LOAD_S	28	197	16935
// OP_NOT_S	16935	0	16936
// OP_IFNOT	16936	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	369	16937
// OP_GE	16937	2657	16938
// OP_IFNOT	16938	15	0
// OP_ADDRESS	28	147	16939
// OP_STOREP_FNC	16923	16939	0
// OP_LOAD_F	28	195	16940
// OP_BITAND	16940	16922	16941
// OP_IFNOT	16941	6	0
// OP_LOAD_F	28	369	16942
// OP_STORE_V	16942	4	0
// OP_STORE_V	4054	7	0
// OP_CALL2	493	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	369	16943
// OP_STORE_V	16943	4	0
// OP_STORE_V	3958	7	0
// OP_CALL2	493	0	0
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
// function begins at statement 23982, parm_start=16945
// OP_LOAD_F	28	369	16945
// OP_GE	16945	2657	16946
// OP_IFNOT	16946	15	0
// OP_ADDRESS	28	147	16947
// OP_STOREP_FNC	16923	16947	0
// OP_LOAD_F	28	195	16948
// OP_BITAND	16948	16922	16949
// OP_IFNOT	16949	6	0
// OP_LOAD_F	28	369	16950
// OP_STORE_V	16950	4	0
// OP_STORE_V	4054	7	0
// OP_CALL2	493	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	369	16951
// OP_STORE_V	16951	4	0
// OP_STORE_V	3958	7	0
// OP_CALL2	493	0	0
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
    
};

// light_fluorospark
// function begins at statement 24000, parm_start=16953
// OP_LOAD_S	28	197	16954
// OP_EQ_S	16954	16955	16956
// OP_IFNOT	16956	22	0
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	16953	0
// OP_ADDRESS	16953	129	16957
// OP_STOREP_S	16958	16957	0
// OP_ADDRESS	16953	105	16959
// OP_LOAD_V	28	105	16962
// OP_STOREP_V	16962	16959	0
// OP_ADDRESS	16953	117	16965
// OP_LOAD_V	28	117	16968
// OP_STOREP_V	16968	16965	0
// OP_ADDRESS	16953	201	16971
// OP_STOREP_ENT	28	16971	0
// OP_STORE_ENT	16953	28	0
// OP_CALL0	16914	0	0
// OP_LOAD_ENT	28	201	16972
// OP_STORE_ENT	16972	28	0
// OP_LOAD_F	28	369	16973
// OP_STORE_V	16973	4	0
// OP_STORE_V	4054	7	0
// OP_CALL2	493	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	369	16974
// OP_NOT_F	16974	0	16975
// OP_IFNOT	16975	3	0
// OP_ADDRESS	28	369	16976
// OP_STOREP_F	855	16976	0
// OP_DONE	0	0	0
void () light_fluorospark = 
{
    local entity bolt;
    
    if(self.targetname == "lightning")
    {
        bolt = spawn();
        bolt.classname = "rally_lightning";
        bolt.origin = self.origin;
        bolt.angles = self.angles;
        bolt.owner = self;
        self = bolt;
        rally_lightning();
        self = self.owner;
        lightstyle(self.style, "a");
        return;
    }
    
    
    if(!self.style)
    {
        self.style = 10;
    }
    
};

// light_globe
// function begins at statement 24030, parm_start=16978
// OP_STORE_V	16978	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16978	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	517	0	0
// OP_DONE	0	0	0
void () light_globe = 
{
    precache_model("progs/s_light.spr");
    setmodel(self, "progs/s_light.spr");
    makestatic(self);
};

// FireAmbient
// function begins at statement 24038, parm_start=16980
// OP_STORE_V	16980	4	0
// OP_CALL1	478	0	0
// OP_DONE	0	0	0
void () FireAmbient = 
{
    precache_sound("ambience/fire1.wav");
};

// light_torch_small_walltorch
// function begins at statement 24041, parm_start=16982
// OP_EQ_F	35	855	16982
// OP_IFNOT	16982	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	16983	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16983	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	517	0	0
// OP_DONE	0	0	0
void () light_torch_small_walltorch = 
{
    
    if(deathmatch == 10)
    {
        return;
    }
    
    precache_model("progs/flame.mdl");
    setmodel(self, "progs/flame.mdl");
    makestatic(self);
};

// light_flame_large_yellow
// function begins at statement 24052, parm_start=16985
// OP_EQ_F	35	855	16985
// OP_IFNOT	16985	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	16986	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16986	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	131	16987
// OP_STOREP_F	819	16987	0
// OP_STORE_V	28	4	0
// OP_CALL1	517	0	0
// OP_DONE	0	0	0
void () light_flame_large_yellow = 
{
    
    if(deathmatch == 10)
    {
        return;
    }
    
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    self.frame = 1;
    makestatic(self);
};

// light_flame_small_yellow
// function begins at statement 24065, parm_start=16989
// OP_EQ_F	35	855	16989
// OP_IFNOT	16989	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	16986	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16986	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	517	0	0
// OP_DONE	0	0	0
void () light_flame_small_yellow = 
{
    
    if(deathmatch == 10)
    {
        return;
    }
    
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    makestatic(self);
};

// light_flame_small_white
// function begins at statement 24076, parm_start=16991
// OP_EQ_F	35	855	16991
// OP_IFNOT	16991	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	16986	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	16986	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	517	0	0
// OP_DONE	0	0	0
void () light_flame_small_white = 
{
    
    if(deathmatch == 10)
    {
        return;
    }
    
    precache_model("progs/flame2.mdl");
    setmodel(self, "progs/flame2.mdl");
    makestatic(self);
};

void () fire_fly;
void () fire_touch;
// misc_fireball
// function begins at statement 24087, parm_start=16995
// OP_STORE_V	12135	4	0
// OP_CALL1	479	0	0
// OP_ADDRESS	28	129	16995
// OP_STOREP_S	13460	16995	0
// OP_ADDRESS	28	150	16996
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	16997
// OP_ADD_F	31	16997	16998
// OP_STOREP_F	16998	16996	0
// OP_ADDRESS	28	148	16999
// OP_STOREP_FNC	16992	16999	0
// OP_LOAD_F	28	378	17000
// OP_NOT_F	17000	0	17001
// OP_IFNOT	17001	3	0
// OP_LOAD_F	28	378	17002
// OP_EQ_F	17002	3337	17003
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
// function begins at statement 24104, parm_start=17004
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	17004	0
// OP_ADDRESS	17004	104	17005
// OP_STOREP_F	244	17005	0
// OP_ADDRESS	17004	103	17006
// OP_STOREP_F	237	17006	0
// OP_ADDRESS	17004	113	17007
// OP_STOREP_V	9661	17007	0
// OP_ADDRESS	17004	114	17010
// OP_CALL0	466	0	0
// OP_MUL_F	1	1957	17011
// OP_SUB_F	17011	2611	17012
// OP_STOREP_F	17012	17010	0
// OP_ADDRESS	17004	115	17013
// OP_CALL0	466	0	0
// OP_MUL_F	1	1957	17014
// OP_SUB_F	17014	2611	17015
// OP_STOREP_F	17015	17013	0
// OP_ADDRESS	17004	116	17016
// OP_LOAD_F	28	378	17017
// OP_CALL0	466	0	0
// OP_MUL_F	1	4760	17018
// OP_ADD_F	17017	17018	17019
// OP_STOREP_F	17019	17016	0
// OP_ADDRESS	17004	129	17020
// OP_STOREP_S	13460	17020	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	12135	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	17004	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	926	10	0
// OP_CALL3	464	0	0
// OP_STORE_V	17004	4	0
// OP_LOAD_V	28	105	17021
// OP_STORE_V	17021	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	17004	150	17024
// OP_ADD_F	31	827	17025
// OP_STOREP_F	17025	17024	0
// OP_ADDRESS	17004	148	17026
// OP_STOREP_FNC	533	17026	0
// OP_ADDRESS	17004	146	17027
// OP_STOREP_FNC	16993	17027	0
// OP_ADDRESS	28	150	17028
// OP_CALL0	466	0	0
// OP_MUL_F	1	827	17029
// OP_ADD_F	31	17029	17030
// OP_ADD_F	17030	823	17031
// OP_STOREP_F	17031	17028	0
// OP_ADDRESS	28	148	17032
// OP_STOREP_FNC	16992	17032	0
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
// function begins at statement 24157, parm_start=17033
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1112	13	0
// OP_CALL4	534	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () fire_touch = 
{
    T_Damage(other, self, self, 20);
    remove(self);
};

// barrel_explode
// function begins at statement 24165, parm_start=17034
// OP_ADDRESS	28	163	17034
// OP_STOREP_F	256	17034	0
// OP_ADDRESS	28	129	17035
// OP_STOREP_S	13443	17035	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	11267	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	8274	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	9175	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	105	17036
// OP_STORE_V	17036	4	0
// OP_STORE_V	926	7	0
// OP_STORE_V	15157	10	0
// OP_STORE_V	11200	13	0
// OP_CALL4	504	0	0
// OP_ADDRESS	28	108	17039
// OP_LOAD_F	28	108	17040
// OP_ADD_F	17040	2657	17041
// OP_STOREP_F	17041	17039	0
// OP_CALL0	538	0	0
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
// function begins at statement 24192, parm_start=17043
// OP_ADDRESS	28	104	17044
// OP_STOREP_F	245	17044	0
// OP_ADDRESS	28	103	17045
// OP_STOREP_F	233	17045	0
// OP_STORE_V	17046	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17046	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9175	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	152	17047
// OP_STOREP_F	1112	17047	0
// OP_ADDRESS	28	376	17048
// OP_STOREP_FNC	17033	17048	0
// OP_ADDRESS	28	163	17049
// OP_STOREP_F	258	17049	0
// OP_ADDRESS	28	108	17050
// OP_LOAD_F	28	108	17051
// OP_ADD_F	17051	821	17052
// OP_STOREP_F	17052	17050	0
// OP_LOAD_F	28	108	17053
// OP_STORE_F	17053	17043	0
// OP_CALL0	492	0	0
// OP_LOAD_F	28	108	17054
// OP_SUB_F	17043	17054	17055
// OP_GT	17055	1135	17056
// OP_IFNOT	17056	12	0
// OP_STORE_V	17057	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	17058
// OP_STORE_V	17058	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
// function begins at statement 24232, parm_start=17062
// OP_ADDRESS	28	104	17063
// OP_STOREP_F	245	17063	0
// OP_ADDRESS	28	103	17064
// OP_STOREP_F	233	17064	0
// OP_STORE_V	17065	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17065	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	9175	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	152	17066
// OP_STOREP_F	1112	17066	0
// OP_ADDRESS	28	376	17067
// OP_STOREP_FNC	17033	17067	0
// OP_ADDRESS	28	163	17068
// OP_STOREP_F	258	17068	0
// OP_ADDRESS	28	108	17069
// OP_LOAD_F	28	108	17070
// OP_ADD_F	17070	821	17071
// OP_STOREP_F	17071	17069	0
// OP_LOAD_F	28	108	17072
// OP_STORE_F	17072	17062	0
// OP_CALL0	492	0	0
// OP_LOAD_F	28	108	17073
// OP_SUB_F	17062	17073	17074
// OP_GT	17074	1135	17075
// OP_IFNOT	17075	12	0
// OP_STORE_V	17057	4	0
// OP_CALL1	484	0	0
// OP_LOAD_V	28	105	17076
// OP_STORE_V	17076	4	0
// OP_CALL1	486	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	888	4	0
// OP_CALL1	484	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
// spikeshooter_use
// function begins at statement 24272, parm_start=17082
// OP_LOAD_F	28	195	17082
// OP_BITAND	17082	17080	17083
// OP_IFNOT	17083	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	10108	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_STORE_V	9182	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_LOAD_V	28	105	17084
// OP_STORE_V	17084	4	0
// OP_LOAD_V	28	202	17087
// OP_STORE_V	17087	7	0
// OP_CALL2	10137	0	0
// OP_ADDRESS	359	113	17090
// OP_LOAD_V	28	202	17093
// OP_MUL_VF	17093	1820	17096
// OP_STOREP_V	17096	17090	0
// OP_LOAD_F	28	195	17099
// OP_BITAND	17099	17079	17100
// OP_IFNOT	17100	3	0
// OP_ADDRESS	359	146	17101
// OP_STOREP_FNC	10136	17101	0
// OP_DONE	0	0	0
void () spikeshooter_use = 
{
    if(self.spawnflags & SPAWNFLAG_LASER)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", 1, ATTN_NORM);
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
// function begins at statement 24303, parm_start=17103
// OP_CALL0	17081	0	0
// OP_ADDRESS	28	150	17103
// OP_LOAD_F	28	427	17104
// OP_ADD_F	31	17104	17105
// OP_STOREP_F	17105	17103	0
// OP_ADDRESS	359	113	17106
// OP_LOAD_V	28	202	17109
// OP_MUL_VF	17109	1820	17112
// OP_STOREP_V	17112	17106	0
// OP_DONE	0	0	0
void () shooter_think = 
{
    spikeshooter_use();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * 500;
};

// trap_spikeshooter
// function begins at statement 24313, parm_start=17116
// OP_CALL0	7371	0	0
// OP_ADDRESS	28	147	17116
// OP_STOREP_FNC	17081	17116	0
// OP_LOAD_F	28	195	17117
// OP_BITAND	17117	17080	17118
// OP_IFNOT	17118	8	0
// OP_STORE_V	10089	4	0
// OP_CALL1	522	0	0
// OP_STORE_V	10108	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	17119	4	0
// OP_CALL1	523	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	9182	4	0
// OP_CALL1	478	0	0
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
// function begins at statement 24329, parm_start=17121
// OP_CALL0	17115	0	0
// OP_LOAD_F	28	427	17121
// OP_EQ_F	17121	817	17122
// OP_IFNOT	17122	3	0
// OP_ADDRESS	28	427	17123
// OP_STOREP_F	819	17123	0
// OP_ADDRESS	28	150	17124
// OP_LOAD_F	28	150	17125
// OP_LOAD_F	28	427	17126
// OP_ADD_F	17125	17126	17127
// OP_LOAD_F	28	102	17128
// OP_ADD_F	17127	17128	17129
// OP_STOREP_F	17129	17124	0
// OP_ADDRESS	28	148	17130
// OP_STOREP_FNC	17102	17130	0
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
// function begins at statement 24345, parm_start=17134
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10803	4	0
// OP_CALL1	479	0	0
// OP_ADDRESS	28	150	17134
// OP_ADD_F	31	819	17135
// OP_STOREP_F	17135	17134	0
// OP_ADDRESS	28	148	17136
// OP_STOREP_FNC	17131	17136	0
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
// function begins at statement 24357, parm_start=17137
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	17137	0
// OP_STORE_V	17137	4	0
// OP_STORE_V	10803	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	17137	4	0
// OP_LOAD_V	28	105	17138
// OP_STORE_V	17138	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	17137	103	17141
// OP_STOREP_F	239	17141	0
// OP_ADDRESS	17137	104	17142
// OP_STOREP_F	243	17142	0
// OP_ADDRESS	17137	113	17143
// OP_STOREP_V	14841	17143	0
// OP_ADDRESS	17137	150	17146
// OP_ADD_F	31	1182	17147
// OP_STOREP_F	17147	17146	0
// OP_ADDRESS	17137	148	17148
// OP_STOREP_FNC	14628	17148	0
// OP_ADDRESS	17137	146	17149
// OP_STOREP_FNC	17132	17149	0
// OP_ADDRESS	17137	129	17150
// OP_STOREP_S	14848	17150	0
// OP_ADDRESS	17137	131	17151
// OP_STOREP_F	817	17151	0
// OP_ADDRESS	17137	435	17152
// OP_STOREP_F	817	17152	0
// OP_STORE_V	17137	4	0
// OP_STORE_V	7771	7	0
// OP_STORE_V	7774	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	150	17153
// OP_CALL0	466	0	0
// OP_ADD_F	31	1	17154
// OP_ADD_F	17154	1182	17155
// OP_STOREP_F	17155	17153	0
// OP_ADDRESS	28	148	17156
// OP_STOREP_FNC	17131	17156	0
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
// function begins at statement 24397, parm_start=17158
// OP_CALL0	473	0	0
// OP_STORE_ENT	1	17158	0
// OP_STORE_V	17158	4	0
// OP_STORE_V	10803	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	17158	4	0
// OP_LOAD_V	28	105	17159
// OP_STORE_V	17159	7	0
// OP_CALL2	462	0	0
// OP_ADDRESS	17158	103	17162
// OP_STOREP_F	239	17162	0
// OP_ADDRESS	17158	104	17163
// OP_STOREP_F	243	17163	0
// OP_ADDRESS	17158	113	17164
// OP_LOAD_V	28	113	17167
// OP_STOREP_V	17167	17164	0
// OP_ADDRESS	17158	150	17170
// OP_ADD_F	31	1182	17171
// OP_STOREP_F	17171	17170	0
// OP_ADDRESS	17158	148	17172
// OP_STOREP_FNC	14628	17172	0
// OP_ADDRESS	17158	146	17173
// OP_STOREP_FNC	17132	17173	0
// OP_ADDRESS	17158	129	17174
// OP_STOREP_S	14848	17174	0
// OP_ADDRESS	17158	131	17175
// OP_STOREP_F	819	17175	0
// OP_ADDRESS	17158	435	17176
// OP_STOREP_F	855	17176	0
// OP_STORE_V	17158	4	0
// OP_STORE_V	7771	7	0
// OP_STORE_V	7774	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	131	17177
// OP_STOREP_F	819	17177	0
// OP_ADDRESS	28	435	17178
// OP_STOREP_F	855	17178	0
// OP_LOAD_F	28	189	17179
// OP_NE_F	17179	823	17180
// OP_IFNOT	17180	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
// function begins at statement 24440, parm_start=17181
// OP_LOAD_S	29	129	17181
// OP_LOAD_S	28	129	17182
// OP_EQ_S	17181	17182	17183
// OP_IFNOT	17183	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
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
// function begins at statement 24448, parm_start=17184
// OP_ADDRESS	28	435	17193
// OP_LOAD_F	28	435	17194
// OP_ADD_F	17194	819	17195
// OP_STOREP_F	17195	17193	0
// OP_LOAD_F	28	435	17196
// OP_EQ_F	17196	825	17197
// OP_IFNOT	17197	2	0
// OP_CALL0	17157	0	0
// OP_LOAD_F	28	435	17198
// OP_EQ_F	17198	1112	17199
// OP_IFNOT	17199	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_LOAD_F	28	114	17200
// OP_CALL0	466	0	0
// OP_MUL_F	1	1112	17201
// OP_ADD_F	1826	17201	17202
// OP_ADD_F	17200	17202	17203
// OP_STORE_F	17203	17184	0
// OP_LOAD_F	28	115	17204
// OP_CALL0	466	0	0
// OP_MUL_F	1	1112	17205
// OP_ADD_F	1826	17205	17206
// OP_ADD_F	17204	17206	17207
// OP_STORE_F	17207	17185	0
// OP_LOAD_F	28	116	17208
// OP_ADD_F	17208	855	17209
// OP_CALL0	466	0	0
// OP_MUL_F	1	855	17210
// OP_ADD_F	17209	17210	17211
// OP_STORE_F	17211	17186	0
// OP_GT	17184	855	17212
// OP_IFNOT	17212	2	0
// OP_STORE_F	827	17184	0
// OP_LT	17184	1826	17213
// OP_IFNOT	17213	2	0
// OP_STORE_F	1483	17184	0
// OP_GT	17185	855	17214
// OP_IFNOT	17214	2	0
// OP_STORE_F	827	17185	0
// OP_LT	17185	1826	17215
// OP_IFNOT	17215	2	0
// OP_STORE_F	1483	17185	0
// OP_LT	17186	855	17216
// OP_IFNOT	17216	2	0
// OP_STORE_F	845	17186	0
// OP_GT	17186	2522	17217
// OP_IFNOT	17217	2	0
// OP_STORE_F	1380	17186	0
// OP_ADDRESS	28	114	17218
// OP_STOREP_F	17184	17218	0
// OP_ADDRESS	28	115	17219
// OP_STOREP_F	17185	17219	0
// OP_ADDRESS	28	116	17220
// OP_STOREP_F	17186	17220	0
// OP_ADDRESS	28	150	17221
// OP_ADD_F	31	1182	17222
// OP_STOREP_F	17222	17221	0
// OP_ADDRESS	28	148	17223
// OP_STOREP_FNC	14628	17223	0
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
// function begins at statement 24509, parm_start=17225
// OP_ADDRESS	28	103	17225
// OP_STOREP_F	233	17225	0
// OP_ADDRESS	28	104	17226
// OP_STOREP_F	243	17226	0
// OP_STORE_V	12126	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12126	7	0
// OP_CALL2	463	0	0
// OP_DONE	0	0	0
void () viewthing = 
{
    self.movetype = MOVETYPE_NONE;
    self.solid = SOLID_NOT;
    precache_model("progs/player.mdl");
    setmodel(self, "progs/player.mdl");
};

// func_wall_use
// function begins at statement 24519, parm_start=17228
// OP_ADDRESS	28	131	17228
// OP_LOAD_F	28	131	17229
// OP_SUB_F	819	17229	17230
// OP_STOREP_F	17230	17228	0
// OP_DONE	0	0	0
void () func_wall_use = 
{
    self.frame = 1 - self.frame;
};

// func_wall
// function begins at statement 24524, parm_start=17232
// OP_ADDRESS	28	117	17232
// OP_STOREP_V	926	17232	0
// OP_ADDRESS	28	103	17235
// OP_STOREP_F	238	17235	0
// OP_ADDRESS	28	104	17236
// OP_STOREP_F	247	17236	0
// OP_ADDRESS	28	147	17237
// OP_STOREP_FNC	17227	17237	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	17238
// OP_STORE_V	17238	7	0
// OP_CALL2	463	0	0
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
// function begins at statement 24537, parm_start=17240
// OP_ADDRESS	28	117	17240
// OP_STOREP_V	926	17240	0
// OP_ADDRESS	28	103	17243
// OP_STOREP_F	233	17243	0
// OP_ADDRESS	28	104	17244
// OP_STOREP_F	243	17244	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	17245
// OP_STORE_V	17245	7	0
// OP_CALL2	463	0	0
// OP_CALL0	517	0	0
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
// function begins at statement 24549, parm_start=17247
// OP_LOAD_F	28	195	17247
// OP_BITAND	38	17247	17248
// OP_NOT_F	17248	0	17249
// OP_IFNOT	17249	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	17250
// OP_STOREP_V	926	17250	0
// OP_ADDRESS	28	103	17253
// OP_STOREP_F	238	17253	0
// OP_ADDRESS	28	104	17254
// OP_STOREP_F	247	17254	0
// OP_ADDRESS	28	147	17255
// OP_STOREP_FNC	17227	17255	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	17256
// OP_STORE_V	17256	7	0
// OP_CALL2	463	0	0
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
// function begins at statement 24567, parm_start=17258
// OP_BITAND	38	845	17258
// OP_EQ_F	17258	845	17259
// OP_IFNOT	17259	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	117	17260
// OP_STOREP_V	926	17260	0
// OP_ADDRESS	28	103	17263
// OP_STOREP_F	238	17263	0
// OP_ADDRESS	28	104	17264
// OP_STOREP_F	247	17264	0
// OP_ADDRESS	28	147	17265
// OP_STOREP_FNC	17227	17265	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	17266
// OP_STORE_V	17266	7	0
// OP_CALL2	463	0	0
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
// function begins at statement 24584, parm_start=17268
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17268	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17269
// OP_STORE_V	17269	4	0
// OP_STORE_V	17268	7	0
// OP_STORE_V	819	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_suck_wind = 
{
    remove(self);
    return;
    precache_sound("ambience/suck1.wav");
    ambientsound(self.origin, "ambience/suck1.wav", 1, ATTN_STATIC);
};

// ambient_drone
// function begins at statement 24596, parm_start=17273
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17273	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17274
// OP_STORE_V	17274	4	0
// OP_STORE_V	17273	7	0
// OP_STORE_V	1182	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_drone = 
{
    remove(self);
    return;
    precache_sound("ambience/drone6.wav");
    ambientsound(self.origin, "ambience/drone6.wav", 0.5, ATTN_STATIC);
};

// ambient_flouro_buzz
// function begins at statement 24608, parm_start=17278
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17278	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17279
// OP_STORE_V	17279	4	0
// OP_STORE_V	17278	7	0
// OP_STORE_V	819	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_flouro_buzz = 
{
    remove(self);
    return;
    precache_sound("ambience/buzz1.wav");
    ambientsound(self.origin, "ambience/buzz1.wav", 1, ATTN_STATIC);
};

// ambient_drip
// function begins at statement 24620, parm_start=17283
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17283	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17284
// OP_STORE_V	17284	4	0
// OP_STORE_V	17283	7	0
// OP_STORE_V	1182	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_drip = 
{
    remove(self);
    return;
    precache_sound("ambience/drip1.wav");
    ambientsound(self.origin, "ambience/drip1.wav", 0.5, ATTN_STATIC);
};

// ambient_comp_hum
// function begins at statement 24632, parm_start=17288
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17288	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17289
// OP_STORE_V	17289	4	0
// OP_STORE_V	17288	7	0
// OP_STORE_V	819	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_comp_hum = 
{
    remove(self);
    return;
    precache_sound("ambience/comp1.wav");
    ambientsound(self.origin, "ambience/comp1.wav", 1, ATTN_STATIC);
};

// ambient_thunder
// function begins at statement 24644, parm_start=17293
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17293	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17294
// OP_STORE_V	17294	4	0
// OP_STORE_V	17293	7	0
// OP_STORE_V	1182	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_thunder = 
{
    remove(self);
    return;
    precache_sound("ambience/thunder1.wav");
    ambientsound(self.origin, "ambience/thunder1.wav", 0.5, ATTN_STATIC);
};

// ambient_light_buzz
// function begins at statement 24656, parm_start=17298
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17298	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17299
// OP_STORE_V	17299	4	0
// OP_STORE_V	17298	7	0
// OP_STORE_V	1182	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_light_buzz = 
{
    remove(self);
    return;
    precache_sound("ambience/fl_hum1.wav");
    ambientsound(self.origin, "ambience/fl_hum1.wav", 0.5, ATTN_STATIC);
};

// ambient_swamp1
// function begins at statement 24668, parm_start=17303
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17303	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17304
// OP_STORE_V	17304	4	0
// OP_STORE_V	17303	7	0
// OP_STORE_V	1182	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_swamp1 = 
{
    remove(self);
    return;
    precache_sound("ambience/swamp1.wav");
    ambientsound(self.origin, "ambience/swamp1.wav", 0.5, ATTN_STATIC);
};

// ambient_swamp2
// function begins at statement 24680, parm_start=17308
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	17308	4	0
// OP_CALL1	478	0	0
// OP_LOAD_V	28	105	17309
// OP_STORE_V	17309	4	0
// OP_STORE_V	17308	7	0
// OP_STORE_V	1182	10	0
// OP_STORE_V	342	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ambient_swamp2 = 
{
    remove(self);
    return;
    precache_sound("ambience/swamp2.wav");
    ambientsound(self.origin, "ambience/swamp2.wav", 0.5, ATTN_STATIC);
};

// noise_think
// function begins at statement 24692, parm_start=17313
// OP_ADDRESS	28	150	17313
// OP_ADD_F	31	1182	17314
// OP_STOREP_F	17314	17313	0
// OP_STORE_V	28	4	0
// OP_STORE_V	819	7	0
// OP_STORE_V	10108	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	821	7	0
// OP_STORE_V	17119	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	823	7	0
// OP_STORE_V	7922	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	825	7	0
// OP_STORE_V	7924	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	827	7	0
// OP_STORE_V	7926	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	829	7	0
// OP_STORE_V	7927	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	839	7	0
// OP_STORE_V	17315	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
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
// function begins at statement 24738, parm_start=17317
// OP_STORE_V	10108	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	17119	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	7922	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	7924	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	7926	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	7927	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	17315	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	17317	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	17318	4	0
// OP_CALL1	523	0	0
// OP_STORE_V	17319	4	0
// OP_CALL1	523	0	0
// OP_ADDRESS	28	150	17320
// OP_ADD_F	31	2869	17321
// OP_CALL0	466	0	0
// OP_ADD_F	17321	1	17322
// OP_STOREP_F	17322	17320	0
// OP_ADDRESS	28	148	17323
// OP_STOREP_FNC	17312	17323	0
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

