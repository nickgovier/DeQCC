// Laser_Touch
// function begins at statement 19926, parm_start=11068
// OP_LOAD_ENT	28	201	11071
// OP_EQ_E	29	11071	11072
// OP_IFNOT	11072	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	11073
// OP_STORE_V	11073	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	11076
// OP_IFNOT	11076	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	7417	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	11077
// OP_LOAD_V	28	113	11080
// OP_STORE_V	11080	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	6077	1	11083
// OP_SUB_V	11077	11083	11086
// OP_STORE_V	11086	11068	0
// OP_LOAD_F	29	152	11089
// OP_IFNOT	11089	14	0
// OP_LOAD_V	28	113	11090
// OP_MUL_VF	11090	836	11093
// OP_STORE_V	11068	4	0
// OP_STORE_V	11093	7	0
// OP_STORE_V	1876	10	0
// OP_CALL3	2613	0	0
// OP_LOAD_ENT	28	201	11096
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	11096	10	0
// OP_STORE_V	1876	13	0
// OP_CALL4	520	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	11068	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	11069	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	11070	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () Laser_Touch = 
{
    local vector org;
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(pointcontents(self.origin) == CONTENT_SKY)
    {
        remove(self);
        return;
    }
    
    sound(self, CHAN_WEAPON, "enforcer/enfstop.wav", SPAWN_CRUCIFIED, ATTN_STATIC);
    org = self.origin - (SECRET_NO_SHOOT * normalize(self.velocity));
    if(other.health)
    {
        SpawnBlood(org, self.velocity * 0.200, 15.000);
        T_Damage(other, self, self.owner, 15.000);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, 0.000);
        WriteCoord(MSG_BROADCAST, 0.000);
    }
    
    remove(self);
};

// LaunchLaser
// function begins at statement 19984, parm_start=11097
// OP_LOAD_S	28	129	11103
// OP_EQ_S	11103	1275	11104
// OP_IFNOT	11104	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	7374	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	11100	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	11100	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	345	0
// OP_ADDRESS	345	201	11105
// OP_STOREP_ENT	28	11105	0
// OP_ADDRESS	345	103	11106
// OP_STOREP_F	230	11106	0
// OP_ADDRESS	345	104	11107
// OP_STOREP_F	239	11107	0
// OP_ADDRESS	345	133	11108
// OP_STOREP_F	336	11108	0
// OP_STORE_V	345	4	0
// OP_STORE_V	7416	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	11097	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	345	113	11109
// OP_MUL_VF	11100	1029	11112
// OP_STOREP_V	11112	11109	0
// OP_ADDRESS	345	117	11115
// OP_LOAD_V	345	113	11118
// OP_STORE_V	11118	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	11115	0
// OP_ADDRESS	345	150	11121
// OP_ADD_F	31	313	11122
// OP_STOREP_F	11122	11121	0
// OP_ADDRESS	345	148	11123
// OP_STOREP_FNC	519	11123	0
// OP_ADDRESS	345	146	11124
// OP_STOREP_FNC	11067	11124	0
// OP_DONE	0	0	0
void (vector org, vector vec) LaunchLaser = 
{
    
    if(self.classname == "monster_enforcer")
    {
        sound(self, CHAN_WEAPON, "enforcer/enfire.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    
    vec = normalize(vec);
    newmis = spawn();
    newmis.owner = self;
    newmis.movetype = MOVETYPE_FLY;
    newmis.solid = SOLID_BBOX;
    newmis.effects = EF_DIMLIGHT;
    setmodel(newmis, "progs/laser.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(newmis, org);
    newmis.velocity = vec * 600.000;
    newmis.angles = vectoangles(newmis.velocity);
    newmis.nextthink = time + TE_LIGHTNING1;
    newmis.think = SUB_Remove;
    newmis.touch = Laser_Touch;
};

// enforcer_fire
// function begins at statement 20032, parm_start=11126
// OP_ADDRESS	28	133	11129
// OP_LOAD_F	28	133	11130
// OP_BITOR	11130	334	11131
// OP_STOREP_F	11131	11129	0
// OP_LOAD_V	28	117	11132
// OP_STORE_V	11132	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	11135
// OP_MUL_VF	59	304	11138
// OP_ADD_V	11135	11138	11141
// OP_MUL_VF	65	11144	11145
// OP_ADD_V	11141	11145	11148
// OP_ADD_V	11148	2644	11151
// OP_STORE_V	11151	11126	0
// OP_LOAD_ENT	28	181	11154
// OP_LOAD_V	11154	105	11155
// OP_LOAD_V	28	105	11158
// OP_SUB_V	11155	11158	11161
// OP_STORE_V	11126	4	0
// OP_STORE_V	11161	7	0
// OP_CALL2	7370	0	0
// OP_DONE	0	0	0
void () enforcer_fire = 
{
    local vector org;
    self.effects = self.effects | EF_MUZZLEFLASH;
    makevectors(self.angles);
    org = ((self.origin + (v_forward * SVC_INTERMISSION)) + (v_right * 8.500)) + '0.000 0.000 16.000';
    LaunchLaser(org, self.enemy.origin - self.origin);
};

// enf_stand1
// function begins at statement 20054, parm_start=11165
// OP_STATE	337	11165	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand1 = [0.000, enf_stand2]
{
    ai_stand();
};

// enf_stand2
// function begins at statement 20057, parm_start=11166
// OP_STATE	9491	11166	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand2 = [1.000, enf_stand3]
{
    ai_stand();
};

// enf_stand3
// function begins at statement 20060, parm_start=11167
// OP_STATE	7369	11167	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand3 = [2.000, enf_stand4]
{
    ai_stand();
};

// enf_stand4
// function begins at statement 20063, parm_start=11168
// OP_STATE	370	11168	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand4 = [3.000, enf_stand5]
{
    ai_stand();
};

// enf_stand5
// function begins at statement 20066, parm_start=11169
// OP_STATE	6076	11169	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand5 = [4.000, enf_stand6]
{
    ai_stand();
};

// enf_stand6
// function begins at statement 20069, parm_start=11170
// OP_STATE	313	11170	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand6 = [5.000, enf_stand7]
{
    ai_stand();
};

// enf_stand7
// function begins at statement 20072, parm_start=11171
// OP_STATE	314	11164	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand7 = [6.000, enf_stand1]
{
    ai_stand();
};

// enf_walk1
// function begins at statement 20075, parm_start=11172
// OP_STATE	315	11172	0
// OP_CALL0	452	0	0
// OP_LT	1	836	11173
// OP_IFNOT	11173	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7616	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk1 = [7.000, enf_walk2]
{
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", SPAWN_CRUCIFIED, ATTN_IDLE);
    }
    
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk2
// function begins at statement 20088, parm_start=11174
// OP_STATE	6077	11174	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk2 = [8.000, enf_walk3]
{
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk3
// function begins at statement 20092, parm_start=11175
// OP_STATE	317	11175	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk3 = [9.000, enf_walk4]
{
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk4
// function begins at statement 20096, parm_start=11176
// OP_STATE	318	11176	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk4 = [10.000, enf_walk5]
{
    ai_walk(AS_MELEE);
};

// enf_walk5
// function begins at statement 20100, parm_start=11177
// OP_STATE	319	11177	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk5 = [11.000, enf_walk6]
{
    ai_walk(SPAWN_CRUCIFIED);
};

// enf_walk6
// function begins at statement 20104, parm_start=11178
// OP_STATE	2250	11178	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk6 = [12.000, enf_walk7]
{
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk7
// function begins at statement 20108, parm_start=11179
// OP_STATE	7768	11179	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk7 = [13.000, enf_walk8]
{
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk8
// function begins at statement 20112, parm_start=11180
// OP_STATE	2901	11180	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk8 = [14.000, enf_walk9]
{
    ai_walk(SPAWN_CRUCIFIED);
};

// enf_walk9
// function begins at statement 20116, parm_start=11181
// OP_STATE	1876	11181	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk9 = [15.000, enf_walk10]
{
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk10
// function begins at statement 20120, parm_start=11182
// OP_STATE	6078	11182	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk10 = [16.000, enf_walk11]
{
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk11
// function begins at statement 20124, parm_start=11183
// OP_STATE	4861	11183	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk11 = [17.000, enf_walk12]
{
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk12
// function begins at statement 20128, parm_start=11184
// OP_STATE	3319	11184	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk12 = [18.000, enf_walk13]
{
    ai_walk(SPAWN_CRUCIFIED);
};

// enf_walk13
// function begins at statement 20132, parm_start=11185
// OP_STATE	7776	11185	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk13 = [19.000, enf_walk14]
{
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk14
// function begins at statement 20136, parm_start=11186
// OP_STATE	894	11186	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk14 = [20.000, enf_walk15]
{
    ai_walk(AS_MELEE);
};

// enf_walk15
// function begins at statement 20140, parm_start=11187
// OP_STATE	7779	11187	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk15 = [21.000, enf_walk16]
{
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk16
// function begins at statement 20144, parm_start=11188
// OP_STATE	7781	11171	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk16 = [22.000, enf_walk1]
{
    ai_walk(SPAWNFLAG_LASER);
};

// enf_run1
// function begins at statement 20148, parm_start=11189
// OP_STATE	301	11189	0
// OP_CALL0	452	0	0
// OP_LT	1	836	11190
// OP_IFNOT	11190	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7616	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	3319	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run1 = [23.000, enf_run2]
{
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", SPAWN_CRUCIFIED, ATTN_IDLE);
    }
    
    ai_run(18.000);
};

// enf_run2
// function begins at statement 20161, parm_start=11191
// OP_STATE	4437	11191	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run2 = [24.000, enf_run3]
{
    ai_run(14.000);
};

// enf_run3
// function begins at statement 20165, parm_start=11192
// OP_STATE	1890	11192	0
// OP_STORE_V	315	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run3 = [25.000, enf_run4]
{
    ai_run(TE_WIZSPIKE);
};

// enf_run4
// function begins at statement 20169, parm_start=11193
// OP_STATE	7788	11193	0
// OP_STORE_V	2250	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run4 = [26.000, enf_run5]
{
    ai_run(12.000);
};

// enf_run5
// function begins at statement 20173, parm_start=11194
// OP_STATE	302	11194	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run5 = [27.000, enf_run6]
{
    ai_run(14.000);
};

// enf_run6
// function begins at statement 20177, parm_start=11195
// OP_STATE	303	11195	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run6 = [28.000, enf_run7]
{
    ai_run(14.000);
};

// enf_run7
// function begins at statement 20181, parm_start=11196
// OP_STATE	5105	11196	0
// OP_STORE_V	315	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run7 = [29.000, enf_run8]
{
    ai_run(TE_WIZSPIKE);
};

// enf_run8
// function begins at statement 20185, parm_start=11197
// OP_STATE	304	11188	0
// OP_STORE_V	319	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run8 = [30.000, enf_run1]
{
    ai_run(TE_TELEPORT);
};

// enf_atk1
// function begins at statement 20189, parm_start=11198
// OP_STATE	305	11198	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk1 = [31.000, enf_atk2]
{
    ai_face();
};

// enf_atk2
// function begins at statement 20192, parm_start=11199
// OP_STATE	5674	11199	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk2 = [32.000, enf_atk3]
{
    ai_face();
};

// enf_atk3
// function begins at statement 20195, parm_start=11200
// OP_STATE	307	11200	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk3 = [33.000, enf_atk4]
{
    ai_face();
};

// enf_atk4
// function begins at statement 20198, parm_start=11201
// OP_STATE	5112	11201	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk4 = [34.000, enf_atk5]
{
    ai_face();
};

// enf_atk5
// function begins at statement 20201, parm_start=11202
// OP_STATE	3072	11202	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk5 = [35.000, enf_atk6]
{
    ai_face();
};

// enf_atk6
// function begins at statement 20204, parm_start=11203
// OP_STATE	5096	11203	0
// OP_CALL0	11125	0	0
// OP_DONE	0	0	0
void () enf_atk6 = [36.000, enf_atk7]
{
    enforcer_fire();
};

// enf_atk7
// function begins at statement 20207, parm_start=11204
// OP_STATE	5098	11204	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk7 = [37.000, enf_atk8]
{
    ai_face();
};

// enf_atk8
// function begins at statement 20210, parm_start=11205
// OP_STATE	5100	11205	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk8 = [38.000, enf_atk9]
{
    ai_face();
};

// enf_atk9
// function begins at statement 20213, parm_start=11206
// OP_STATE	3072	11206	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk9 = [35.000, enf_atk10]
{
    ai_face();
};

// enf_atk10
// function begins at statement 20216, parm_start=11207
// OP_STATE	5096	11207	0
// OP_CALL0	11125	0	0
// OP_DONE	0	0	0
void () enf_atk10 = [36.000, enf_atk11]
{
    enforcer_fire();
};

// enf_atk11
// function begins at statement 20219, parm_start=11208
// OP_STATE	5098	11208	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk11 = [37.000, enf_atk12]
{
    ai_face();
};

// enf_atk12
// function begins at statement 20222, parm_start=11209
// OP_STATE	5100	11209	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk12 = [38.000, enf_atk13]
{
    ai_face();
};

// enf_atk13
// function begins at statement 20225, parm_start=11210
// OP_STATE	5102	11210	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk13 = [39.000, enf_atk14]
{
    ai_face();
};

// enf_atk14
// function begins at statement 20228, parm_start=11211
// OP_STATE	1733	11188	0
// OP_CALL0	758	0	0
// OP_STORE_V	11197	4	0
// OP_CALL1	738	0	0
// OP_DONE	0	0	0
void () enf_atk14 = [40.000, enf_run1]
{
    ai_face();
    SUB_CheckRefire(enf_atk1);
};

// enf_paina1
// function begins at statement 20233, parm_start=11212
// OP_STATE	5377	11212	0
// OP_DONE	0	0	0
void () enf_paina1 = [66.000, enf_paina2]
{
};

// enf_paina2
// function begins at statement 20235, parm_start=11213
// OP_STATE	5379	11213	0
// OP_DONE	0	0	0
void () enf_paina2 = [67.000, enf_paina3]
{
};

// enf_paina3
// function begins at statement 20237, parm_start=11214
// OP_STATE	5381	11214	0
// OP_DONE	0	0	0
void () enf_paina3 = [68.000, enf_paina4]
{
};

// enf_paina4
// function begins at statement 20239, parm_start=11215
// OP_STATE	5383	11188	0
// OP_DONE	0	0	0
void () enf_paina4 = [69.000, enf_run1]
{
};

// enf_painb1
// function begins at statement 20241, parm_start=11216
// OP_STATE	5384	11216	0
// OP_DONE	0	0	0
void () enf_painb1 = [70.000, enf_painb2]
{
};

// enf_painb2
// function begins at statement 20243, parm_start=11217
// OP_STATE	5386	11217	0
// OP_DONE	0	0	0
void () enf_painb2 = [71.000, enf_painb3]
{
};

// enf_painb3
// function begins at statement 20245, parm_start=11218
// OP_STATE	5388	11218	0
// OP_DONE	0	0	0
void () enf_painb3 = [72.000, enf_painb4]
{
};

// enf_painb4
// function begins at statement 20247, parm_start=11219
// OP_STATE	2739	11219	0
// OP_DONE	0	0	0
void () enf_painb4 = [73.000, enf_painb5]
{
};

// enf_painb5
// function begins at statement 20249, parm_start=11220
// OP_STATE	5391	11188	0
// OP_DONE	0	0	0
void () enf_painb5 = [74.000, enf_run1]
{
};

// enf_painc1
// function begins at statement 20251, parm_start=11221
// OP_STATE	5393	11221	0
// OP_DONE	0	0	0
void () enf_painc1 = [75.000, enf_painc2]
{
};

// enf_painc2
// function begins at statement 20253, parm_start=11222
// OP_STATE	5395	11222	0
// OP_DONE	0	0	0
void () enf_painc2 = [76.000, enf_painc3]
{
};

// enf_painc3
// function begins at statement 20255, parm_start=11223
// OP_STATE	5397	11223	0
// OP_DONE	0	0	0
void () enf_painc3 = [77.000, enf_painc4]
{
};

// enf_painc4
// function begins at statement 20257, parm_start=11224
// OP_STATE	5399	11224	0
// OP_DONE	0	0	0
void () enf_painc4 = [78.000, enf_painc5]
{
};

// enf_painc5
// function begins at statement 20259, parm_start=11225
// OP_STATE	5401	11225	0
// OP_DONE	0	0	0
void () enf_painc5 = [79.000, enf_painc6]
{
};

// enf_painc6
// function begins at statement 20261, parm_start=11226
// OP_STATE	788	11226	0
// OP_DONE	0	0	0
void () enf_painc6 = [80.000, enf_painc7]
{
};

// enf_painc7
// function begins at statement 20263, parm_start=11227
// OP_STATE	5404	11227	0
// OP_DONE	0	0	0
void () enf_painc7 = [81.000, enf_painc8]
{
};

// enf_painc8
// function begins at statement 20265, parm_start=11228
// OP_STATE	5406	11188	0
// OP_DONE	0	0	0
void () enf_painc8 = [82.000, enf_run1]
{
};

// enf_paind1
// function begins at statement 20267, parm_start=11229
// OP_STATE	5408	11229	0
// OP_DONE	0	0	0
void () enf_paind1 = [83.000, enf_paind2]
{
};

// enf_paind2
// function begins at statement 20269, parm_start=11230
// OP_STATE	5410	11230	0
// OP_DONE	0	0	0
void () enf_paind2 = [84.000, enf_paind3]
{
};

// enf_paind3
// function begins at statement 20271, parm_start=11231
// OP_STATE	5411	11231	0
// OP_DONE	0	0	0
void () enf_paind3 = [85.000, enf_paind4]
{
};

// enf_paind4
// function begins at statement 20273, parm_start=11232
// OP_STATE	5413	11232	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind4 = [86.000, enf_paind5]
{
    ai_painforward(SPAWNFLAG_LASER);
};

// enf_paind5
// function begins at statement 20277, parm_start=11233
// OP_STATE	5415	11233	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind5 = [87.000, enf_paind6]
{
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind6
// function begins at statement 20281, parm_start=11234
// OP_STATE	5417	11234	0
// OP_DONE	0	0	0
void () enf_paind6 = [88.000, enf_paind7]
{
};

// enf_paind7
// function begins at statement 20283, parm_start=11235
// OP_STATE	5419	11235	0
// OP_DONE	0	0	0
void () enf_paind7 = [89.000, enf_paind8]
{
};

// enf_paind8
// function begins at statement 20285, parm_start=11236
// OP_STATE	1423	11236	0
// OP_DONE	0	0	0
void () enf_paind8 = [90.000, enf_paind9]
{
};

// enf_paind9
// function begins at statement 20287, parm_start=11237
// OP_STATE	5422	11237	0
// OP_DONE	0	0	0
void () enf_paind9 = [91.000, enf_paind10]
{
};

// enf_paind10
// function begins at statement 20289, parm_start=11238
// OP_STATE	5424	11238	0
// OP_DONE	0	0	0
void () enf_paind10 = [92.000, enf_paind11]
{
};

// enf_paind11
// function begins at statement 20291, parm_start=11239
// OP_STATE	5426	11239	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind11 = [93.000, enf_paind12]
{
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind12
// function begins at statement 20295, parm_start=11240
// OP_STATE	5427	11240	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind12 = [94.000, enf_paind13]
{
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind13
// function begins at statement 20299, parm_start=11241
// OP_STATE	5429	11241	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind13 = [95.000, enf_paind14]
{
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind14
// function begins at statement 20303, parm_start=11242
// OP_STATE	5431	11242	0
// OP_DONE	0	0	0
void () enf_paind14 = [96.000, enf_paind15]
{
};

// enf_paind15
// function begins at statement 20305, parm_start=11243
// OP_STATE	5433	11243	0
// OP_DONE	0	0	0
void () enf_paind15 = [97.000, enf_paind16]
{
};

// enf_paind16
// function begins at statement 20307, parm_start=11244
// OP_STATE	5435	11244	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () enf_paind16 = [98.000, enf_paind17]
{
    ai_pain(SPAWN_CRUCIFIED);
};

// enf_paind17
// function begins at statement 20311, parm_start=11245
// OP_STATE	5437	11245	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () enf_paind17 = [99.000, enf_paind18]
{
    ai_pain(SPAWN_CRUCIFIED);
};

// enf_paind18
// function begins at statement 20315, parm_start=11246
// OP_STATE	1884	11246	0
// OP_DONE	0	0	0
void () enf_paind18 = [100.000, enf_paind19]
{
};

// enf_paind19
// function begins at statement 20317, parm_start=11247
// OP_STATE	5440	11188	0
// OP_DONE	0	0	0
void () enf_paind19 = [101.000, enf_run1]
{
};

// enf_pain
// function begins at statement 20319, parm_start=11248
// OP_CALL0	452	0	0
// OP_STORE_F	1	11250	0
// OP_LOAD_F	28	374	11251
// OP_GT	11251	31	11252
// OP_IFNOT	11252	2	0
// OP_RETURN	0	0	0
// OP_LT	11250	1491	11253
// OP_IFNOT	11253	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7612	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7614	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LT	11250	836	11254
// OP_IFNOT	11254	6	0
// OP_ADDRESS	28	374	11255
// OP_ADD_F	31	9491	11256
// OP_STOREP_F	11256	11255	0
// OP_CALL0	11211	0	0
// OP_GOTO	19	0	0
// OP_LT	11250	837	11257
// OP_IFNOT	11257	6	0
// OP_ADDRESS	28	374	11258
// OP_ADD_F	31	9491	11259
// OP_STOREP_F	11259	11258	0
// OP_CALL0	11215	0	0
// OP_GOTO	12	0	0
// OP_LT	11250	2851	11260
// OP_IFNOT	11260	6	0
// OP_ADDRESS	28	374	11261
// OP_ADD_F	31	9491	11262
// OP_STOREP_F	11262	11261	0
// OP_CALL0	11220	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	374	11263
// OP_ADD_F	31	7369	11264
// OP_STOREP_F	11264	11263	0
// OP_CALL0	11228	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) enf_pain = 
{
    local float r;
    r = random();
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    if(r < 0.500)
    {
        sound(self, CHAN_VOICE, "enforcer/pain1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_VOICE, "enforcer/pain2.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    
    if(r < 0.200)
    {
        self.pain_finished = time + SPAWN_CRUCIFIED;
        enf_paina1();
    }
    else
    {
        if(r < 0.400)
        {
            self.pain_finished = time + SPAWN_CRUCIFIED;
            enf_painb1();
        }
        else
        {
            if(r < 0.700)
            {
                self.pain_finished = time + SPAWN_CRUCIFIED;
                enf_painc1();
            }
            else
            {
                self.pain_finished = time + SPAWNFLAG_LASER;
                enf_paind1();
            }
            
        }
        
    }
    
};

// enf_die1
// function begins at statement 20366, parm_start=11266
// OP_STATE	5443	11266	0
// OP_DONE	0	0	0
void () enf_die1 = [41.000, enf_die2]
{
};

// enf_die2
// function begins at statement 20368, parm_start=11267
// OP_STATE	5445	11267	0
// OP_DONE	0	0	0
void () enf_die2 = [42.000, enf_die3]
{
};

// enf_die3
// function begins at statement 20370, parm_start=11268
// OP_STATE	5447	11268	0
// OP_ADDRESS	28	104	11269
// OP_STOREP_F	237	11269	0
// OP_ADDRESS	28	161	11270
// OP_STOREP_F	313	11270	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
void () enf_die3 = [43.000, enf_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = TE_LIGHTNING1;
    DropBackpack();
};

// enf_die4
// function begins at statement 20377, parm_start=11271
// OP_STATE	5449	11271	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die4 = [44.000, enf_die5]
{
    ai_forward(14.000);
};

// enf_die5
// function begins at statement 20381, parm_start=11272
// OP_STATE	1390	11272	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die5 = [45.000, enf_die6]
{
    ai_forward(SPAWNFLAG_LASER);
};

// enf_die6
// function begins at statement 20385, parm_start=11273
// OP_STATE	5452	11273	0
// OP_DONE	0	0	0
void () enf_die6 = [46.000, enf_die7]
{
};

// enf_die7
// function begins at statement 20387, parm_start=11274
// OP_STATE	5454	11274	0
// OP_DONE	0	0	0
void () enf_die7 = [47.000, enf_die8]
{
};

// enf_die8
// function begins at statement 20389, parm_start=11275
// OP_STATE	5456	11275	0
// OP_DONE	0	0	0
void () enf_die8 = [48.000, enf_die9]
{
};

// enf_die9
// function begins at statement 20391, parm_start=11276
// OP_STATE	5458	11276	0
// OP_STORE_V	370	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die9 = [49.000, enf_die10]
{
    ai_forward(AS_MELEE);
};

// enf_die10
// function begins at statement 20395, parm_start=11277
// OP_STATE	2227	11277	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die10 = [50.000, enf_die11]
{
    ai_forward(TE_LIGHTNING1);
};

// enf_die11
// function begins at statement 20399, parm_start=11278
// OP_STATE	5351	11278	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die11 = [51.000, enf_die12]
{
    ai_forward(TE_LIGHTNING1);
};

// enf_die12
// function begins at statement 20403, parm_start=11279
// OP_STATE	5353	11279	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die12 = [52.000, enf_die13]
{
    ai_forward(TE_LIGHTNING1);
};

// enf_die13
// function begins at statement 20407, parm_start=11280
// OP_STATE	5355	11280	0
// OP_DONE	0	0	0
void () enf_die13 = [53.000, enf_die14]
{
};

// enf_die14
// function begins at statement 20409, parm_start=11281
// OP_STATE	5357	11280	0
// OP_DONE	0	0	0
void () enf_die14 = [54.000, enf_die14]
{
};

// enf_fdie1
// function begins at statement 20411, parm_start=11282
// OP_STATE	5359	11282	0
// OP_DONE	0	0	0
void () enf_fdie1 = [55.000, enf_fdie2]
{
};

// enf_fdie2
// function begins at statement 20413, parm_start=11283
// OP_STATE	5361	11283	0
// OP_DONE	0	0	0
void () enf_fdie2 = [56.000, enf_fdie3]
{
};

// enf_fdie3
// function begins at statement 20415, parm_start=11284
// OP_STATE	5363	11284	0
// OP_ADDRESS	28	104	11285
// OP_STOREP_F	237	11285	0
// OP_ADDRESS	28	161	11286
// OP_STOREP_F	313	11286	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
void () enf_fdie3 = [57.000, enf_fdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = TE_LIGHTNING1;
    DropBackpack();
};

// enf_fdie4
// function begins at statement 20422, parm_start=11287
// OP_STATE	5365	11287	0
// OP_DONE	0	0	0
void () enf_fdie4 = [58.000, enf_fdie5]
{
};

// enf_fdie5
// function begins at statement 20424, parm_start=11288
// OP_STATE	5367	11288	0
// OP_DONE	0	0	0
void () enf_fdie5 = [59.000, enf_fdie6]
{
};

// enf_fdie6
// function begins at statement 20426, parm_start=11289
// OP_STATE	912	11289	0
// OP_DONE	0	0	0
void () enf_fdie6 = [60.000, enf_fdie7]
{
};

// enf_fdie7
// function begins at statement 20428, parm_start=11290
// OP_STATE	5369	11290	0
// OP_DONE	0	0	0
void () enf_fdie7 = [61.000, enf_fdie8]
{
};

// enf_fdie8
// function begins at statement 20430, parm_start=11291
// OP_STATE	5371	11291	0
// OP_DONE	0	0	0
void () enf_fdie8 = [62.000, enf_fdie9]
{
};

// enf_fdie9
// function begins at statement 20432, parm_start=11292
// OP_STATE	3872	11292	0
// OP_DONE	0	0	0
void () enf_fdie9 = [63.000, enf_fdie10]
{
};

// enf_fdie10
// function begins at statement 20434, parm_start=11293
// OP_STATE	260	11293	0
// OP_DONE	0	0	0
void () enf_fdie10 = [64.000, enf_fdie11]
{
};

// enf_fdie11
// function begins at statement 20436, parm_start=11294
// OP_STATE	5375	11293	0
// OP_DONE	0	0	0
void () enf_fdie11 = [65.000, enf_fdie11]
{
};

// enf_die
// function begins at statement 20438, parm_start=11295
// OP_LOAD_F	28	152	11295
// OP_LT	11295	8839	11296
// OP_IFNOT	11296	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	11298
// OP_STORE_V	11297	4	0
// OP_STORE_V	11298	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	11299
// OP_STORE_V	3852	4	0
// OP_STORE_V	11299	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	11300
// OP_STORE_V	3853	4	0
// OP_STORE_V	11300	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	11301
// OP_STORE_V	3854	4	0
// OP_STORE_V	11301	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	7615	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_GT	1	1491	11302
// OP_IFNOT	11302	3	0
// OP_CALL0	11265	0	0
// OP_GOTO	2	0	0
// OP_CALL0	11281	0	0
// OP_DONE	0	0	0
void () enf_die = 
{
    
    if(self.health < -35.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWN_CRUCIFIED, ATTN_NORM);
        ThrowHead("progs/h_mega.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "enforcer/death1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    if(random() > 0.500)
    {
        enf_die1();
    }
    else
    {
        enf_fdie1();
    }
    
};

// monster_enforcer
// function begins at statement 20477, parm_start=11304
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	11304	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	11297	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	7416	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	7615	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7374	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7417	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7616	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7612	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	7614	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1279	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1281	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1283	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1284	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	104	11305
// OP_STOREP_F	240	11305	0
// OP_ADDRESS	28	103	11306
// OP_STOREP_F	229	11306	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11304	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	8669	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	11307
// OP_STOREP_F	788	11307	0
// OP_ADDRESS	28	356	11308
// OP_STOREP_FNC	11164	11308	0
// OP_ADDRESS	28	357	11309
// OP_STOREP_FNC	11171	11309	0
// OP_ADDRESS	28	358	11310
// OP_STOREP_FNC	11188	11310	0
// OP_ADDRESS	28	361	11311
// OP_STOREP_FNC	11247	11311	0
// OP_ADDRESS	28	362	11312
// OP_STOREP_FNC	11294	11312	0
// OP_ADDRESS	28	359	11313
// OP_STOREP_FNC	11197	11313	0
// OP_CALL0	5557	0	0
// OP_DONE	0	0	0
void () monster_enforcer = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/enforcer.mdl");
    precache_model2("progs/h_mega.mdl");
    precache_model2("progs/laser.mdl");
    precache_sound2("enforcer/death1.wav");
    precache_sound2("enforcer/enfire.wav");
    precache_sound2("enforcer/enfstop.wav");
    precache_sound2("enforcer/idle1.wav");
    precache_sound2("enforcer/pain1.wav");
    precache_sound2("enforcer/pain2.wav");
    precache_sound2("enforcer/sight1.wav");
    precache_sound2("enforcer/sight2.wav");
    precache_sound2("enforcer/sight3.wav");
    precache_sound2("enforcer/sight4.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/enforcer.mdl");
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = 80.000;
    self.th_stand = enf_stand1;
    self.th_walk = enf_walk1;
    self.th_run = enf_run1;
    self.th_pain = enf_pain;
    self.th_die = enf_die;
    self.th_missile = enf_atk1;
    walkmonster_start();
};

