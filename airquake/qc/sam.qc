void () sam_aim;
void () sam_launch;
void () sam_run;
void () start_monster_sam;
// sam_stand
// function begins at statement 26410, parm_start=17998
// OP_STATE	619	17997	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	17998
// OP_BITAND	17998	277	17999
// OP_NOT_F	17999	0	18000
// OP_IFNOT	18000	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_CALL0	1716	0	0
// OP_NOT_F	1	0	18001
// OP_IFNOT	18001	5	0
// OP_ADDRESS	28	206	18002
// OP_STOREP_ENT	30	18002	0
// OP_CALL0	17993	0	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	173	18003
// OP_STOREP_FNC	17995	18003	0
// OP_ADDRESS	28	175	18004
// OP_ADD_F	31	655	18005
// OP_STOREP_F	18005	18004	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () sam_stand = [0.000, sam_stand]
{
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000.000);
    }
    
    if(!FindTarget())
    {
        self.enemy = world;
        sam_aim();
    }
    else
    {
        self.think = sam_run;
        self.nextthink = time + 0.100;
        return;
    }
    
};

// sam_walk
// function begins at statement 26435, parm_start=18007
// OP_STATE	619	17997	0
// OP_DONE	0	0	0
void () sam_walk = [0.000, sam_stand]
{
};

// sam_run
// function begins at statement 26437, parm_start=18007
// OP_STATE	619	17995	0
// OP_CALL0	933	0	0
// OP_LOAD_F	28	207	18007
// OP_BITAND	18007	277	18008
// OP_NOT_F	18008	0	18009
// OP_IFNOT	18009	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	1622	13	0
// OP_CALL4	569	0	0
// OP_LOAD_ENT	28	206	18010
// OP_STORE_V	18010	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	570	0	0
// OP_NOT_F	1	0	18011
// OP_LOAD_ENT	28	206	18012
// OP_LOAD_F	18012	188	18013
// OP_NOT_F	18013	0	18014
// OP_OR	18011	18014	18015
// OP_IFNOT	18015	10	0
// OP_ADDRESS	28	206	18016
// OP_STOREP_ENT	30	18016	0
// OP_ADDRESS	28	173	18017
// OP_LOAD_FNC	28	405	18018
// OP_STOREP_FNC	18018	18017	0
// OP_ADDRESS	28	175	18019
// OP_ADD_F	31	655	18020
// OP_STOREP_F	18020	18019	0
// OP_RETURN	0	0	0
// OP_CALL0	17993	0	0
// OP_DONE	0	0	0
void () sam_run = [0.000, sam_run]
{
    checkground();
    
    if(!(self.flags & FL_ONGROUND))
    {
        T_Damage(self, world, world, 1000.000);
    }
    
    
    if(!CanDamage(self.enemy, self) || !self.enemy.takedamage)
    {
        self.enemy = world;
        self.think = self.th_stand;
        self.nextthink = time + 0.100;
        return;
    }
    
    sam_aim();
};

// sam_death
// function begins at statement 26469, parm_start=18022
// OP_LOAD_ENT	28	464	18022
// OP_ADDRESS	18022	173	18023
// OP_STOREP_FNC	2603	18023	0
// OP_LOAD_ENT	28	464	18024
// OP_ADDRESS	18024	175	18025
// OP_ADD_F	31	655	18026
// OP_STOREP_F	18026	18025	0
// OP_NOT_F	35	0	18027
// OP_IFNOT	18027	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_GOTO	12	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	621	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	188	18028
// OP_STOREP_F	619	18028	0
// OP_ADDRESS	28	173	18029
// OP_STOREP_FNC	17996	18029	0
// OP_ADDRESS	28	175	18030
// OP_LOAD_F	28	462	18031
// OP_ADD_F	31	18031	18032
// OP_STOREP_F	18032	18030	0
// OP_DONE	0	0	0
void () sam_death = 
{
    self.trigger_field.think = BecomeExplosion;
    self.trigger_field.nextthink = time + 0.100;
    if(!deathmatch)
    {
        remove(self);
    }
    else
    {
        setmodel(self, "");
        self.takedamage = 0.000;
        self.think = start_monster_sam;
        self.nextthink = time + self.wait;
    }
    
};

// sam_die
// function begins at statement 26493, parm_start=18034
// OP_LOAD_F	28	177	18034
// OP_LT	18034	1891	18035
// OP_IFNOT	18035	10	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_STORE_V	12926	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_CALL0	5261	0	0
// OP_ADDRESS	28	129	18036
// OP_STOREP_F	291	18036	0
// OP_CALL0	18021	0	0
// OP_DONE	0	0	0
void () sam_die = 
{
    
    if(self.health < -90.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1.000, ATTN_NORM);
        Throw_ACgib();
        Throw_ACgib();
        Throw_ACgib();
    }
    
    self.solid = SOLID_NOT;
    sam_death();
};

// sam_aim
// function begins at statement 26509, parm_start=18037
// OP_LOAD_ENT	28	206	18047
// OP_EQ_E	18047	30	18048
// OP_IFNOT	18048	6	0
// OP_LOAD_V	28	130	18049
// OP_LOAD_V	28	227	18052
// OP_ADD_V	18049	18052	18055
// OP_STORE_V	18055	18043	0
// OP_GOTO	11	0	0
// OP_LOAD_ENT	28	206	18058
// OP_LOAD_V	18058	130	18059
// OP_LOAD_ENT	28	206	18062
// OP_LOAD_V	18062	159	18063
// OP_LOAD_ENT	28	206	18066
// OP_LOAD_V	18066	163	18067
// OP_ADD_V	18063	18067	18070
// OP_MUL_VF	18070	972	18073
// OP_ADD_V	18059	18073	18076
// OP_STORE_V	18076	18043	0
// OP_LOAD_V	28	130	18079
// OP_SUB_V	18043	18079	18082
// OP_STORE_V	18082	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	18046	0
// OP_LOAD_V	28	130	18085
// OP_SUB_V	18043	18085	18088
// OP_STORE_V	18088	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	18037	0
// OP_STORE_V	607	18040	0
// OP_LOAD_F	28	144	18091
// OP_SUB_F	18038	18091	18092
// OP_STORE_F	18092	18041	0
// OP_LOAD_ENT	28	464	18093
// OP_LOAD_F	18093	143	18094
// OP_SUB_F	18037	18094	18095
// OP_STORE_F	18095	18040	0
// OP_STORE_V	607	18037	0
// OP_LT	18040	619	18096
// OP_IFNOT	18096	3	0
// OP_ADD_F	18040	1459	18097
// OP_STORE_F	18097	18040	0
// OP_GT	18040	1827	18098
// OP_IFNOT	18098	3	0
// OP_SUB_F	18040	1459	18099
// OP_STORE_F	18099	18040	0
// OP_LT	18041	619	18100
// OP_IFNOT	18100	3	0
// OP_ADD_F	18041	1459	18101
// OP_STORE_F	18101	18041	0
// OP_GT	18041	1827	18102
// OP_IFNOT	18102	3	0
// OP_SUB_F	18041	1459	18103
// OP_STORE_F	18103	18041	0
// OP_STORE_V	18040	18037	0
// OP_LT	18037	6997	18104
// OP_IFNOT	18104	2	0
// OP_STORE_F	6997	18037	0
// OP_GT	18037	827	18105
// OP_IFNOT	18105	2	0
// OP_STORE_F	827	18037	0
// OP_LT	18038	6997	18106
// OP_IFNOT	18106	2	0
// OP_STORE_F	6997	18038	0
// OP_GT	18038	827	18107
// OP_IFNOT	18107	2	0
// OP_STORE_F	827	18038	0
// OP_LOAD_ENT	28	206	18108
// OP_IFNOT	18108	15	0
// OP_STORE_V	18037	4	0
// OP_CALL1	506	0	0
// OP_LT	1	827	18109
// OP_LT	18046	1624	18110
// OP_AND	18109	18110	18111
// OP_IFNOT	18111	9	0
// OP_LOAD_F	28	422	18112
// OP_GT	31	18112	18113
// OP_IFNOT	18113	6	0
// OP_LOAD_FNC	28	408	18114
// OP_CALL0	18114	0	0
// OP_ADDRESS	28	422	18115
// OP_ADD_F	31	806	18116
// OP_STOREP_F	18116	18115	0
// OP_LOAD_ENT	28	464	18117
// OP_ADDRESS	18117	143	18118
// OP_LOAD_ENT	28	464	18119
// OP_LOAD_F	18119	143	18120
// OP_ADD_F	18120	18037	18121
// OP_STORE_V	18121	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	18118	0
// OP_ADDRESS	28	144	18122
// OP_LOAD_F	28	144	18123
// OP_ADD_F	18123	18038	18124
// OP_STORE_V	18124	4	0
// OP_CALL1	1299	0	0
// OP_STOREP_F	1	18122	0
// OP_LOAD_ENT	28	464	18125
// OP_ADDRESS	18125	144	18126
// OP_LOAD_F	28	144	18127
// OP_STOREP_F	18127	18126	0
// OP_DONE	0	0	0
void () sam_aim = 
{
    local vector dir;
    local vector vtemp;
    local vector org;
    local float dist;
    if(self.enemy == world)
    {
        org = self.origin + self.movedir;
    }
    else
    {
        org = self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.500);
    }
    
    dist = vlen(org - self.origin);
    dir = vectoangles(org - self.origin);
    vtemp = '0.000 0.000 0.000';
    vtemp_y = dir_y - self.angles_y;
    vtemp_x = dir_x - self.trigger_field.angles_x;
    dir = '0.000 0.000 0.000';
    
    if(vtemp_x < 0.000)
    {
        vtemp_x = vtemp_x + 360.000;
    }
    
    
    if(vtemp_x > 180.000)
    {
        vtemp_x = vtemp_x - 360.000;
    }
    
    
    if(vtemp_y < 0.000)
    {
        vtemp_y = vtemp_y + 360.000;
    }
    
    
    if(vtemp_y > 180.000)
    {
        vtemp_y = vtemp_y - 360.000;
    }
    
    dir = vtemp;
    
    if(dir_x < -10.000)
    {
        dir_x = -10.000;
    }
    
    
    if(dir_x > 10.000)
    {
        dir_x = 10.000;
    }
    
    
    if(dir_y < -10.000)
    {
        dir_y = -10.000;
    }
    
    
    if(dir_y > 10.000)
    {
        dir_y = 10.000;
    }
    
    
    if(self.enemy)
    {
        
        if((vlen(dir) < 10.000) && (dist < 3000.000))
        {
            
            if(time > self.attack_finished)
            {
                self.th_missile();
                self.attack_finished = time + 2.000;
            }
            
        }
        
    }
    
    self.trigger_field.angles_x = anglemod(self.trigger_field.angles_x + dir_x);
    self.angles_y = anglemod(self.angles_y + dir_y);
    self.trigger_field.angles_y = self.angles_y;
};

// sam_launch
// function begins at statement 26610, parm_start=18128
// OP_LOAD_F	28	185	18132
// OP_NOT_F	18132	0	18133
// OP_IFNOT	18133	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	206	18134
// OP_LOAD_F	18134	239	18135
// OP_LOAD_ENT	28	206	18136
// OP_LOAD_F	18136	177	18137
// OP_MUL_F	18137	1798	18138
// OP_GT	18135	18138	18139
// OP_IFNOT	18139	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	185	18140
// OP_LOAD_F	28	185	18141
// OP_SUB_F	18141	677	18142
// OP_STOREP_F	18142	18140	0
// OP_LOAD_ENT	28	464	18143
// OP_LOAD_V	18143	142	18144
// OP_STORE_V	18144	18128	0
// OP_SUB_F	619	18128	18147
// OP_STORE_F	18147	18128	0
// OP_STORE_V	18128	4	0
// OP_CALL1	496	0	0
// OP_LOAD_F	28	185	18148
// OP_BITAND	18148	788	18149
// OP_MUL_F	18149	810	18150
// OP_SUB_F	18150	833	18151
// OP_STORE_F	18151	18131	0
// OP_LOAD_V	28	130	18152
// OP_MUL_VF	62	810	18155
// OP_ADD_V	18152	18155	18158
// OP_MUL_VF	65	18131	18161
// OP_ADD_V	18158	18161	18164
// OP_STORE_V	18164	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	18167
// OP_STORE_V	18167	10	0
// OP_CALL3	4829	0	0
// OP_DONE	0	0	0
void () sam_launch = 
{
    local vector v1;
    local float tmp;
    
    if(!self.ammo_rockets)
    {
        return;
    }
    
    
    if(self.enemy.pdmg > (self.enemy.health * 1.500))
    {
        return;
    }
    
    self.ammo_rockets = self.ammo_rockets - 1.000;
    v1 = self.trigger_field.angles;
    v1_x = 0.000 - v1_x;
    makevectors(v1);
    tmp = ((self.ammo_rockets & 3.000) * 8.000) - 12.000;
    AC_heatseeker((self.origin + (v_up * 8.000)) + (v_right * tmp), v_forward, self.enemy);
};

// start_monster_sam
// function begins at statement 26649, parm_start=18168
// OP_STORE_V	12970	4	0
// OP_CALL1	536	0	0
// OP_STORE_F	1	37	0
// OP_GT	35	619	18168
// OP_LOAD_F	28	209	18169
// OP_EQ_F	18169	619	18170
// OP_EQ_F	37	619	18171
// OP_OR	18170	18171	18172
// OP_AND	18168	18172	18173
// OP_IFNOT	18173	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	129	18174
// OP_STOREP_F	294	18174	0
// OP_ADDRESS	28	128	18175
// OP_STOREP_F	285	18175	0
// OP_ADDRESS	28	177	18176
// OP_LOAD_F	28	210	18177
// OP_STOREP_F	18177	18176	0
// OP_STORE_V	28	4	0
// OP_STORE_V	18178	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	18179	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_ADDRESS	28	405	18182
// OP_STOREP_FNC	17997	18182	0
// OP_ADDRESS	28	406	18183
// OP_STOREP_FNC	18006	18183	0
// OP_ADDRESS	28	407	18184
// OP_STOREP_FNC	17995	18184	0
// OP_ADDRESS	28	411	18185
// OP_STOREP_FNC	18033	18185	0
// OP_ADDRESS	28	408	18186
// OP_STOREP_FNC	17994	18186	0
// OP_LOAD_S	28	205	18187
// OP_NOT_S	18187	0	18188
// OP_IFNOT	18188	3	0
// OP_ADDRESS	28	205	18189
// OP_STOREP_S	18190	18189	0
// OP_CALL0	527	0	0
// OP_ADDRESS	28	188	18191
// OP_STOREP_F	306	18191	0
// OP_ADDRESS	28	216	18192
// OP_LOAD_V	28	142	18193
// OP_MUL_V	18193	6286	18196
// OP_STOREP_F	18196	18192	0
// OP_ADDRESS	28	191	18197
// OP_STOREP_V	582	18197	0
// OP_ADDRESS	28	172	18200
// OP_STOREP_FNC	15260	18200	0
// OP_ADDRESS	28	207	18201
// OP_LOAD_F	28	207	18202
// OP_BITOR	18202	273	18203
// OP_STOREP_F	18203	18201	0
// OP_CALL0	508	0	0
// OP_STORE_ENT	1	16178	0
// OP_ADDRESS	16178	226	18204
// OP_STOREP_ENT	28	18204	0
// OP_ADDRESS	16178	188	18205
// OP_STOREP_F	304	18205	0
// OP_STORE_V	16178	4	0
// OP_STORE_V	18206	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	464	18207
// OP_STOREP_ENT	16178	18207	0
// OP_ADDRESS	16178	142	18208
// OP_LOAD_V	28	142	18211
// OP_STOREP_V	18211	18208	0
// OP_STORE_V	16178	4	0
// OP_LOAD_V	28	130	18214
// OP_STORE_V	18214	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	185	18217
// OP_LOAD_F	28	468	18218
// OP_STOREP_F	18218	18217	0
// OP_LOAD_FNC	28	405	18219
// OP_CALL0	18219	0	0
// OP_DONE	0	0	0
void () start_monster_sam = 
{
    teamplay = cvar("teamplay");
    
    if((deathmatch > 0.000) && ((self.team == 0.000) || (teamplay == 0.000)))
    {
        remove(self);
        return;
    }
    
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_TOSS;
    self.health = self.max_health;
    setmodel(self, "progs/samba.mdl");
    setsize(self, '-16.000 -16.000 -20.000', '16.000 16.000 16.000');
    self.th_stand = sam_stand;
    self.th_walk = sam_walk;
    self.th_run = sam_run;
    self.th_die = sam_die;
    self.th_missile = sam_launch;
    
    if(!self.netname)
    {
        self.netname = "SAM launcher";
    }
    
    droptofloor();
    self.takedamage = DAMAGE_AIM;
    self.ideal_yaw = self.angles * '0.000 1.000 0.000';
    self.view_ofs = '0.000 0.000 1.000';
    self.use = monster_use;
    self.flags = self.flags | FL_MONSTER;
    stemp = spawn();
    stemp.owner = self;
    stemp.takedamage = DAMAGE_NO;
    setmodel(stemp, "progs/samtb.mdl");
    self.trigger_field = stemp;
    stemp.angles = self.angles;
    setorigin(stemp, self.origin);
    self.ammo_rockets = self.aflag;
    self.th_stand();
};

// monster_sam
// function begins at statement 26730, parm_start=18221
// OP_STORE_V	18178	4	0
// OP_CALL1	514	0	0
// OP_STORE_V	18206	4	0
// OP_CALL1	514	0	0
// OP_NOT_F	35	0	18224
// OP_IFNOT	18224	3	0
// OP_ADD_F	40	677	18225
// OP_STORE_F	18225	40	0
// OP_ADDRESS	28	134	18226
// OP_LOAD_V	28	130	18229
// OP_STOREP_V	18229	18226	0
// OP_LOAD_F	28	177	18232
// OP_NOT_F	18232	0	18233
// OP_IFNOT	18233	3	0
// OP_ADDRESS	28	177	18234
// OP_STOREP_F	2618	18234	0
// OP_ADDRESS	28	210	18235
// OP_LOAD_F	28	177	18236
// OP_STOREP_F	18236	18235	0
// OP_LOAD_F	28	144	18237
// OP_MUL_FV	18237	6286	18238
// OP_ADD_V	18238	18241	18244
// OP_STORE_V	18244	18221	0
// OP_STORE_V	18221	4	0
// OP_CALL1	496	0	0
// OP_ADDRESS	28	227	18247
// OP_STOREP_V	59	18247	0
// OP_CALL0	1068	0	0
// OP_LOAD_F	28	185	18250
// OP_NOT_F	18250	0	18251
// OP_IFNOT	18251	3	0
// OP_ADDRESS	28	185	18252
// OP_STOREP_F	808	18252	0
// OP_ADDRESS	28	468	18253
// OP_LOAD_F	28	185	18254
// OP_STOREP_F	18254	18253	0
// OP_LOAD_F	28	462	18255
// OP_NOT_F	18255	0	18256
// OP_IFNOT	18256	3	0
// OP_ADDRESS	28	462	18257
// OP_STOREP_F	1130	18257	0
// OP_ADDRESS	28	173	18258
// OP_STOREP_FNC	17996	18258	0
// OP_ADDRESS	28	175	18259
// OP_ADD_F	31	655	18260
// OP_CALL0	501	0	0
// OP_MUL_F	1	1687	18261
// OP_ADD_F	18260	18261	18262
// OP_STOREP_F	18262	18259	0
// OP_DONE	0	0	0
void () monster_sam = 
{
    local vector v1;
    precache_model("progs/samba.mdl");
    precache_model("progs/samtb.mdl");
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1.000;
    }
    
    self.oldorigin = self.origin;
    
    if(!self.health)
    {
        self.health = 100.000;
    }
    
    self.max_health = self.health;
    v1 = (self.angles_y * '0.000 1.000 0.000') + '-45.000 0.000 0.000';
    makevectors(v1);
    self.movedir = v_forward;
    setup_teament();
    
    if(!self.ammo_rockets)
    {
        self.ammo_rockets = 4.000;
    }
    
    self.aflag = self.ammo_rockets;
    
    if(!self.wait)
    {
        self.wait = 30.000;
    }
    
    self.think = start_monster_sam;
    self.nextthink = (time + 0.100) + (random() * 0.300);
};

