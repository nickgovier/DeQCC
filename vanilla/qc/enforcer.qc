// Laser_Touch
// function begins at statement 19926
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
    normalize(self.velocity);
    org = self.origin - (SECRET_NO_SHOOT * pointcontents(self.origin));
    if(other.health)
    {
        SpawnBlood(org, self.velocity * 0.200, 15.000);
        T_Damage(other, self, self.owner, 15.000);
    }
    else    
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
    remove(self);
};

// LaunchLaser
// function begins at statement 19984
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
// function begins at statement 20032
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
// function begins at statement 20054
// OP_STATE	337	11165	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand1 =
{
    *** UNPROCESSED OPCODE OP_STATE 337 11165 0
    ai_stand();
};

// enf_stand2
// function begins at statement 20057
// OP_STATE	9491	11166	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand2 =
{
    *** UNPROCESSED OPCODE OP_STATE 9491 11166 0
    ai_stand();
};

// enf_stand3
// function begins at statement 20060
// OP_STATE	7369	11167	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7369 11167 0
    ai_stand();
};

// enf_stand4
// function begins at statement 20063
// OP_STATE	370	11168	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand4 =
{
    *** UNPROCESSED OPCODE OP_STATE 370 11168 0
    ai_stand();
};

// enf_stand5
// function begins at statement 20066
// OP_STATE	6076	11169	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand5 =
{
    *** UNPROCESSED OPCODE OP_STATE 6076 11169 0
    ai_stand();
};

// enf_stand6
// function begins at statement 20069
// OP_STATE	313	11170	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand6 =
{
    *** UNPROCESSED OPCODE OP_STATE 313 11170 0
    ai_stand();
};

// enf_stand7
// function begins at statement 20072
// OP_STATE	314	11164	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () enf_stand7 =
{
    *** UNPROCESSED OPCODE OP_STATE 314 11164 0
    ai_stand();
};

// enf_walk1
// function begins at statement 20075
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
void () enf_walk1 =
{
    *** UNPROCESSED OPCODE OP_STATE 315 11172 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", SPAWN_CRUCIFIED, ATTN_IDLE);
    }
    
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk2
// function begins at statement 20088
// OP_STATE	6077	11174	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk2 =
{
    *** UNPROCESSED OPCODE OP_STATE 6077 11174 0
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk3
// function begins at statement 20092
// OP_STATE	317	11175	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk3 =
{
    *** UNPROCESSED OPCODE OP_STATE 317 11175 0
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk4
// function begins at statement 20096
// OP_STATE	318	11176	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk4 =
{
    *** UNPROCESSED OPCODE OP_STATE 318 11176 0
    ai_walk(AS_MELEE);
};

// enf_walk5
// function begins at statement 20100
// OP_STATE	319	11177	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk5 =
{
    *** UNPROCESSED OPCODE OP_STATE 319 11177 0
    ai_walk(SPAWN_CRUCIFIED);
};

// enf_walk6
// function begins at statement 20104
// OP_STATE	2250	11178	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk6 =
{
    *** UNPROCESSED OPCODE OP_STATE 2250 11178 0
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk7
// function begins at statement 20108
// OP_STATE	7768	11179	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk7 =
{
    *** UNPROCESSED OPCODE OP_STATE 7768 11179 0
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk8
// function begins at statement 20112
// OP_STATE	2901	11180	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk8 =
{
    *** UNPROCESSED OPCODE OP_STATE 2901 11180 0
    ai_walk(SPAWN_CRUCIFIED);
};

// enf_walk9
// function begins at statement 20116
// OP_STATE	1876	11181	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk9 =
{
    *** UNPROCESSED OPCODE OP_STATE 1876 11181 0
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk10
// function begins at statement 20120
// OP_STATE	6078	11182	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk10 =
{
    *** UNPROCESSED OPCODE OP_STATE 6078 11182 0
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk11
// function begins at statement 20124
// OP_STATE	4861	11183	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk11 =
{
    *** UNPROCESSED OPCODE OP_STATE 4861 11183 0
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk12
// function begins at statement 20128
// OP_STATE	3319	11184	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk12 =
{
    *** UNPROCESSED OPCODE OP_STATE 3319 11184 0
    ai_walk(SPAWN_CRUCIFIED);
};

// enf_walk13
// function begins at statement 20132
// OP_STATE	7776	11185	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk13 =
{
    *** UNPROCESSED OPCODE OP_STATE 7776 11185 0
    ai_walk(SPAWNFLAG_LASER);
};

// enf_walk14
// function begins at statement 20136
// OP_STATE	894	11186	0
// OP_STORE_V	370	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk14 =
{
    *** UNPROCESSED OPCODE OP_STATE 894 11186 0
    ai_walk(AS_MELEE);
};

// enf_walk15
// function begins at statement 20140
// OP_STATE	7779	11187	0
// OP_STORE_V	6076	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk15 =
{
    *** UNPROCESSED OPCODE OP_STATE 7779 11187 0
    ai_walk(SECRET_1ST_DOWN);
};

// enf_walk16
// function begins at statement 20144
// OP_STATE	7781	11171	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () enf_walk16 =
{
    *** UNPROCESSED OPCODE OP_STATE 7781 11171 0
    ai_walk(SPAWNFLAG_LASER);
};

// enf_run1
// function begins at statement 20148
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
void () enf_run1 =
{
    *** UNPROCESSED OPCODE OP_STATE 301 11189 0
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", SPAWN_CRUCIFIED, ATTN_IDLE);
    }
    
    ai_run(18.000);
};

// enf_run2
// function begins at statement 20161
// OP_STATE	4437	11191	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run2 =
{
    *** UNPROCESSED OPCODE OP_STATE 4437 11191 0
    ai_run(14.000);
};

// enf_run3
// function begins at statement 20165
// OP_STATE	1890	11192	0
// OP_STORE_V	315	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run3 =
{
    *** UNPROCESSED OPCODE OP_STATE 1890 11192 0
    ai_run(TE_WIZSPIKE);
};

// enf_run4
// function begins at statement 20169
// OP_STATE	7788	11193	0
// OP_STORE_V	2250	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run4 =
{
    *** UNPROCESSED OPCODE OP_STATE 7788 11193 0
    ai_run(12.000);
};

// enf_run5
// function begins at statement 20173
// OP_STATE	302	11194	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run5 =
{
    *** UNPROCESSED OPCODE OP_STATE 302 11194 0
    ai_run(14.000);
};

// enf_run6
// function begins at statement 20177
// OP_STATE	303	11195	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run6 =
{
    *** UNPROCESSED OPCODE OP_STATE 303 11195 0
    ai_run(14.000);
};

// enf_run7
// function begins at statement 20181
// OP_STATE	5105	11196	0
// OP_STORE_V	315	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5105 11196 0
    ai_run(TE_WIZSPIKE);
};

// enf_run8
// function begins at statement 20185
// OP_STATE	304	11188	0
// OP_STORE_V	319	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () enf_run8 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 11188 0
    ai_run(TE_TELEPORT);
};

// enf_atk1
// function begins at statement 20189
// OP_STATE	305	11198	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk1 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 11198 0
    ai_face();
};

// enf_atk2
// function begins at statement 20192
// OP_STATE	5674	11199	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5674 11199 0
    ai_face();
};

// enf_atk3
// function begins at statement 20195
// OP_STATE	307	11200	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk3 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 11200 0
    ai_face();
};

// enf_atk4
// function begins at statement 20198
// OP_STATE	5112	11201	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5112 11201 0
    ai_face();
};

// enf_atk5
// function begins at statement 20201
// OP_STATE	3072	11202	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk5 =
{
    *** UNPROCESSED OPCODE OP_STATE 3072 11202 0
    ai_face();
};

// enf_atk6
// function begins at statement 20204
// OP_STATE	5096	11203	0
// OP_CALL0	11125	0	0
// OP_DONE	0	0	0
void () enf_atk6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5096 11203 0
    enforcer_fire();
};

// enf_atk7
// function begins at statement 20207
// OP_STATE	5098	11204	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5098 11204 0
    ai_face();
};

// enf_atk8
// function begins at statement 20210
// OP_STATE	5100	11205	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5100 11205 0
    ai_face();
};

// enf_atk9
// function begins at statement 20213
// OP_STATE	3072	11206	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk9 =
{
    *** UNPROCESSED OPCODE OP_STATE 3072 11206 0
    ai_face();
};

// enf_atk10
// function begins at statement 20216
// OP_STATE	5096	11207	0
// OP_CALL0	11125	0	0
// OP_DONE	0	0	0
void () enf_atk10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5096 11207 0
    enforcer_fire();
};

// enf_atk11
// function begins at statement 20219
// OP_STATE	5098	11208	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5098 11208 0
    ai_face();
};

// enf_atk12
// function begins at statement 20222
// OP_STATE	5100	11209	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk12 =
{
    *** UNPROCESSED OPCODE OP_STATE 5100 11209 0
    ai_face();
};

// enf_atk13
// function begins at statement 20225
// OP_STATE	5102	11210	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () enf_atk13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5102 11210 0
    ai_face();
};

// enf_atk14
// function begins at statement 20228
// OP_STATE	1733	11188	0
// OP_CALL0	758	0	0
// OP_STORE_V	11197	4	0
// OP_CALL1	738	0	0
// OP_DONE	0	0	0
void () enf_atk14 =
{
    *** UNPROCESSED OPCODE OP_STATE 1733 11188 0
    ai_face();
    SUB_CheckRefire(enf_atk1);
};

// enf_paina1
// function begins at statement 20233
// OP_STATE	5377	11212	0
// OP_DONE	0	0	0
void () enf_paina1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5377 11212 0
};

// enf_paina2
// function begins at statement 20235
// OP_STATE	5379	11213	0
// OP_DONE	0	0	0
void () enf_paina2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5379 11213 0
};

// enf_paina3
// function begins at statement 20237
// OP_STATE	5381	11214	0
// OP_DONE	0	0	0
void () enf_paina3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5381 11214 0
};

// enf_paina4
// function begins at statement 20239
// OP_STATE	5383	11188	0
// OP_DONE	0	0	0
void () enf_paina4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5383 11188 0
};

// enf_painb1
// function begins at statement 20241
// OP_STATE	5384	11216	0
// OP_DONE	0	0	0
void () enf_painb1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5384 11216 0
};

// enf_painb2
// function begins at statement 20243
// OP_STATE	5386	11217	0
// OP_DONE	0	0	0
void () enf_painb2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5386 11217 0
};

// enf_painb3
// function begins at statement 20245
// OP_STATE	5388	11218	0
// OP_DONE	0	0	0
void () enf_painb3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5388 11218 0
};

// enf_painb4
// function begins at statement 20247
// OP_STATE	2739	11219	0
// OP_DONE	0	0	0
void () enf_painb4 =
{
    *** UNPROCESSED OPCODE OP_STATE 2739 11219 0
};

// enf_painb5
// function begins at statement 20249
// OP_STATE	5391	11188	0
// OP_DONE	0	0	0
void () enf_painb5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5391 11188 0
};

// enf_painc1
// function begins at statement 20251
// OP_STATE	5393	11221	0
// OP_DONE	0	0	0
void () enf_painc1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5393 11221 0
};

// enf_painc2
// function begins at statement 20253
// OP_STATE	5395	11222	0
// OP_DONE	0	0	0
void () enf_painc2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5395 11222 0
};

// enf_painc3
// function begins at statement 20255
// OP_STATE	5397	11223	0
// OP_DONE	0	0	0
void () enf_painc3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5397 11223 0
};

// enf_painc4
// function begins at statement 20257
// OP_STATE	5399	11224	0
// OP_DONE	0	0	0
void () enf_painc4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5399 11224 0
};

// enf_painc5
// function begins at statement 20259
// OP_STATE	5401	11225	0
// OP_DONE	0	0	0
void () enf_painc5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5401 11225 0
};

// enf_painc6
// function begins at statement 20261
// OP_STATE	788	11226	0
// OP_DONE	0	0	0
void () enf_painc6 =
{
    *** UNPROCESSED OPCODE OP_STATE 788 11226 0
};

// enf_painc7
// function begins at statement 20263
// OP_STATE	5404	11227	0
// OP_DONE	0	0	0
void () enf_painc7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5404 11227 0
};

// enf_painc8
// function begins at statement 20265
// OP_STATE	5406	11188	0
// OP_DONE	0	0	0
void () enf_painc8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5406 11188 0
};

// enf_paind1
// function begins at statement 20267
// OP_STATE	5408	11229	0
// OP_DONE	0	0	0
void () enf_paind1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5408 11229 0
};

// enf_paind2
// function begins at statement 20269
// OP_STATE	5410	11230	0
// OP_DONE	0	0	0
void () enf_paind2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5410 11230 0
};

// enf_paind3
// function begins at statement 20271
// OP_STATE	5411	11231	0
// OP_DONE	0	0	0
void () enf_paind3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5411 11231 0
};

// enf_paind4
// function begins at statement 20273
// OP_STATE	5413	11232	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5413 11232 0
    ai_painforward(SPAWNFLAG_LASER);
};

// enf_paind5
// function begins at statement 20277
// OP_STATE	5415	11233	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5415 11233 0
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind6
// function begins at statement 20281
// OP_STATE	5417	11234	0
// OP_DONE	0	0	0
void () enf_paind6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5417 11234 0
};

// enf_paind7
// function begins at statement 20283
// OP_STATE	5419	11235	0
// OP_DONE	0	0	0
void () enf_paind7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5419 11235 0
};

// enf_paind8
// function begins at statement 20285
// OP_STATE	1423	11236	0
// OP_DONE	0	0	0
void () enf_paind8 =
{
    *** UNPROCESSED OPCODE OP_STATE 1423 11236 0
};

// enf_paind9
// function begins at statement 20287
// OP_STATE	5422	11237	0
// OP_DONE	0	0	0
void () enf_paind9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5422 11237 0
};

// enf_paind10
// function begins at statement 20289
// OP_STATE	5424	11238	0
// OP_DONE	0	0	0
void () enf_paind10 =
{
    *** UNPROCESSED OPCODE OP_STATE 5424 11238 0
};

// enf_paind11
// function begins at statement 20291
// OP_STATE	5426	11239	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5426 11239 0
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind12
// function begins at statement 20295
// OP_STATE	5427	11240	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind12 =
{
    *** UNPROCESSED OPCODE OP_STATE 5427 11240 0
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind13
// function begins at statement 20299
// OP_STATE	5429	11241	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1348	0	0
// OP_DONE	0	0	0
void () enf_paind13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5429 11241 0
    ai_painforward(SPAWN_CRUCIFIED);
};

// enf_paind14
// function begins at statement 20303
// OP_STATE	5431	11242	0
// OP_DONE	0	0	0
void () enf_paind14 =
{
    *** UNPROCESSED OPCODE OP_STATE 5431 11242 0
};

// enf_paind15
// function begins at statement 20305
// OP_STATE	5433	11243	0
// OP_DONE	0	0	0
void () enf_paind15 =
{
    *** UNPROCESSED OPCODE OP_STATE 5433 11243 0
};

// enf_paind16
// function begins at statement 20307
// OP_STATE	5435	11244	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () enf_paind16 =
{
    *** UNPROCESSED OPCODE OP_STATE 5435 11244 0
    ai_pain(SPAWN_CRUCIFIED);
};

// enf_paind17
// function begins at statement 20311
// OP_STATE	5437	11245	0
// OP_STORE_V	9491	4	0
// OP_CALL1	1346	0	0
// OP_DONE	0	0	0
void () enf_paind17 =
{
    *** UNPROCESSED OPCODE OP_STATE 5437 11245 0
    ai_pain(SPAWN_CRUCIFIED);
};

// enf_paind18
// function begins at statement 20315
// OP_STATE	1884	11246	0
// OP_DONE	0	0	0
void () enf_paind18 =
{
    *** UNPROCESSED OPCODE OP_STATE 1884 11246 0
};

// enf_paind19
// function begins at statement 20317
// OP_STATE	5440	11188	0
// OP_DONE	0	0	0
void () enf_paind19 =
{
    *** UNPROCESSED OPCODE OP_STATE 5440 11188 0
};

// enf_pain
// function begins at statement 20319
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
    
    if(r < IMMEDIATE)
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
    else if(r < 0.400)
    {
        self.pain_finished = time + SPAWN_CRUCIFIED;
        enf_painb1();
    }
    else if(r < 0.700)
    {
        self.pain_finished = time + SPAWN_CRUCIFIED;
        enf_painc1();
    }
    else    
    {
        self.pain_finished = time + SPAWNFLAG_LASER;
        enf_paind1();
    }
    
};

// enf_die1
// function begins at statement 20366
// OP_STATE	5443	11266	0
// OP_DONE	0	0	0
void () enf_die1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5443 11266 0
};

// enf_die2
// function begins at statement 20368
// OP_STATE	5445	11267	0
// OP_DONE	0	0	0
void () enf_die2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5445 11267 0
};

// enf_die3
// function begins at statement 20370
// OP_STATE	5447	11268	0
// OP_ADDRESS	28	104	11269
// OP_STOREP_F	237	11269	0
// OP_ADDRESS	28	161	11270
// OP_STOREP_F	313	11270	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
void () enf_die3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5447 11268 0
    self.solid = SOLID_NOT;
    self.ammo_cells = TE_LIGHTNING1;
    DropBackpack();
};

// enf_die4
// function begins at statement 20377
// OP_STATE	5449	11271	0
// OP_STORE_V	2901	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5449 11271 0
    ai_forward(14.000);
};

// enf_die5
// function begins at statement 20381
// OP_STATE	1390	11272	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die5 =
{
    *** UNPROCESSED OPCODE OP_STATE 1390 11272 0
    ai_forward(SPAWNFLAG_LASER);
};

// enf_die6
// function begins at statement 20385
// OP_STATE	5452	11273	0
// OP_DONE	0	0	0
void () enf_die6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5452 11273 0
};

// enf_die7
// function begins at statement 20387
// OP_STATE	5454	11274	0
// OP_DONE	0	0	0
void () enf_die7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5454 11274 0
};

// enf_die8
// function begins at statement 20389
// OP_STATE	5456	11275	0
// OP_DONE	0	0	0
void () enf_die8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5456 11275 0
};

// enf_die9
// function begins at statement 20391
// OP_STATE	5458	11276	0
// OP_STORE_V	370	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die9 =
{
    *** UNPROCESSED OPCODE OP_STATE 5458 11276 0
    ai_forward(AS_MELEE);
};

// enf_die10
// function begins at statement 20395
// OP_STATE	2227	11277	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die10 =
{
    *** UNPROCESSED OPCODE OP_STATE 2227 11277 0
    ai_forward(TE_LIGHTNING1);
};

// enf_die11
// function begins at statement 20399
// OP_STATE	5351	11278	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5351 11278 0
    ai_forward(TE_LIGHTNING1);
};

// enf_die12
// function begins at statement 20403
// OP_STATE	5353	11279	0
// OP_STORE_V	313	4	0
// OP_CALL1	1338	0	0
// OP_DONE	0	0	0
void () enf_die12 =
{
    *** UNPROCESSED OPCODE OP_STATE 5353 11279 0
    ai_forward(TE_LIGHTNING1);
};

// enf_die13
// function begins at statement 20407
// OP_STATE	5355	11280	0
// OP_DONE	0	0	0
void () enf_die13 =
{
    *** UNPROCESSED OPCODE OP_STATE 5355 11280 0
};

// enf_die14
// function begins at statement 20409
// OP_STATE	5357	11280	0
// OP_DONE	0	0	0
void () enf_die14 =
{
    *** UNPROCESSED OPCODE OP_STATE 5357 11280 0
};

// enf_fdie1
// function begins at statement 20411
// OP_STATE	5359	11282	0
// OP_DONE	0	0	0
void () enf_fdie1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5359 11282 0
};

// enf_fdie2
// function begins at statement 20413
// OP_STATE	5361	11283	0
// OP_DONE	0	0	0
void () enf_fdie2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5361 11283 0
};

// enf_fdie3
// function begins at statement 20415
// OP_STATE	5363	11284	0
// OP_ADDRESS	28	104	11285
// OP_STOREP_F	237	11285	0
// OP_ADDRESS	28	161	11286
// OP_STOREP_F	313	11286	0
// OP_CALL0	2535	0	0
// OP_DONE	0	0	0
void () enf_fdie3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5363 11284 0
    self.solid = SOLID_NOT;
    self.ammo_cells = TE_LIGHTNING1;
    DropBackpack();
};

// enf_fdie4
// function begins at statement 20422
// OP_STATE	5365	11287	0
// OP_DONE	0	0	0
void () enf_fdie4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5365 11287 0
};

// enf_fdie5
// function begins at statement 20424
// OP_STATE	5367	11288	0
// OP_DONE	0	0	0
void () enf_fdie5 =
{
    *** UNPROCESSED OPCODE OP_STATE 5367 11288 0
};

// enf_fdie6
// function begins at statement 20426
// OP_STATE	912	11289	0
// OP_DONE	0	0	0
void () enf_fdie6 =
{
    *** UNPROCESSED OPCODE OP_STATE 912 11289 0
};

// enf_fdie7
// function begins at statement 20428
// OP_STATE	5369	11290	0
// OP_DONE	0	0	0
void () enf_fdie7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5369 11290 0
};

// enf_fdie8
// function begins at statement 20430
// OP_STATE	5371	11291	0
// OP_DONE	0	0	0
void () enf_fdie8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5371 11291 0
};

// enf_fdie9
// function begins at statement 20432
// OP_STATE	3872	11292	0
// OP_DONE	0	0	0
void () enf_fdie9 =
{
    *** UNPROCESSED OPCODE OP_STATE 3872 11292 0
};

// enf_fdie10
// function begins at statement 20434
// OP_STATE	260	11293	0
// OP_DONE	0	0	0
void () enf_fdie10 =
{
    *** UNPROCESSED OPCODE OP_STATE 260 11293 0
};

// enf_fdie11
// function begins at statement 20436
// OP_STATE	5375	11293	0
// OP_DONE	0	0	0
void () enf_fdie11 =
{
    *** UNPROCESSED OPCODE OP_STATE 5375 11293 0
};

// enf_die
// function begins at statement 20438
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
        ThrowHead(IMMEDIATE, self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "enforcer/death1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    if(random() > IMMEDIATE)
    {
        enf_die1();
    }
    else    
    {
        enf_fdie1();
    }
    
};

// monster_enforcer
// function begins at statement 20477
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
    precache_model2(IMMEDIATE);
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

