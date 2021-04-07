// Laser_Touch
// function begins at statement 17607, parm_start=10264
// OP_LOAD_ENT	28	201	10267
// OP_EQ_E	29	10267	10268
// OP_IFNOT	10268	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	10269
// OP_STORE_V	10269	4	0
// OP_CALL1	484	0	0
// OP_EQ_F	1	281	10272
// OP_IFNOT	10272	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8193	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	10273
// OP_LOAD_V	28	113	10276
// OP_STORE_V	10276	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	217	1	10279
// OP_SUB_V	10273	10279	10282
// OP_STORE_V	10282	10264	0
// OP_LOAD_F	29	152	10285
// OP_IFNOT	10285	14	0
// OP_STORE_V	10264	4	0
// OP_LOAD_V	28	113	10286
// OP_MUL_VF	10286	1226	10289
// OP_STORE_V	10289	7	0
// OP_STORE_V	2246	10	0
// OP_CALL3	3087	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	10292
// OP_STORE_V	10292	10	0
// OP_STORE_V	2246	13	0
// OP_CALL4	520	0	0
// OP_GOTO	16	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	10264	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	10265	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	10266	7	0
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
    
    sound(self, CHAN_WEAPON, "enforcer/enfstop.wav", TRUE, ATTN_STATIC);
    org = self.origin - (FL_CLIENT * normalize(self.velocity));
    if(other.health)
    {
        SpawnBlood(org, self.velocity * 0.2, 15);
        T_Damage(other, self, self.owner, 15);
    }
    else
    {
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, org_x);
        WriteCoord(MSG_BROADCAST, org_y);
        WriteCoord(MSG_BROADCAST, org_z);
    }
    
    remove(self);
};

// LaunchLaser
// function begins at statement 17665, parm_start=10293
// OP_LOAD_S	28	129	10299
// OP_EQ_S	10299	1655	10300
// OP_IFNOT	10300	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	8150	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	10296	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10296	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	345	0
// OP_ADDRESS	345	201	10301
// OP_STOREP_ENT	28	10301	0
// OP_ADDRESS	345	103	10302
// OP_STOREP_F	230	10302	0
// OP_ADDRESS	345	104	10303
// OP_STOREP_F	239	10303	0
// OP_ADDRESS	345	133	10304
// OP_STOREP_F	336	10304	0
// OP_STORE_V	345	4	0
// OP_STORE_V	8192	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	10293	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	345	113	10305
// OP_MUL_VF	10296	580	10308
// OP_STOREP_V	10308	10305	0
// OP_ADDRESS	345	117	10311
// OP_LOAD_V	345	113	10314
// OP_STORE_V	10314	4	0
// OP_CALL1	492	0	0
// OP_STOREP_V	1	10311	0
// OP_ADDRESS	345	150	10317
// OP_ADD_F	31	230	10318
// OP_STOREP_F	10318	10317	0
// OP_ADDRESS	345	148	10319
// OP_STOREP_FNC	519	10319	0
// OP_ADDRESS	345	146	10320
// OP_STOREP_FNC	10263	10320	0
// OP_DONE	0	0	0
void (vector org, vector vec) LaunchLaser = 
{
    
    if(self.classname == "monster_enforcer")
    {
        sound(self, CHAN_WEAPON, "enforcer/enfire.wav", TRUE, ATTN_NORM);
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
    newmis.velocity = vec * SEARCH_RADIUS;
    newmis.angles = vectoangles(newmis.velocity);
    newmis.nextthink = time + MOVETYPE_FLY;
    newmis.think = SUB_Remove;
    newmis.touch = Laser_Touch;
};

// enforcer_fire
// function begins at statement 17713, parm_start=10322
// OP_ADDRESS	28	133	10325
// OP_LOAD_F	28	133	10326
// OP_BITOR	10326	334	10327
// OP_STOREP_F	10327	10325	0
// OP_LOAD_V	28	117	10328
// OP_STORE_V	10328	4	0
// OP_CALL1	447	0	0
// OP_LOAD_V	28	105	10331
// OP_MUL_VF	59	304	10334
// OP_ADD_V	10331	10334	10337
// OP_MUL_VF	65	10340	10341
// OP_ADD_V	10337	10341	10344
// OP_ADD_V	10344	3119	10347
// OP_STORE_V	10347	10322	0
// OP_STORE_V	10322	4	0
// OP_LOAD_ENT	28	181	10350
// OP_LOAD_V	10350	105	10351
// OP_LOAD_V	28	105	10354
// OP_SUB_V	10351	10354	10357
// OP_STORE_V	10357	7	0
// OP_CALL2	8146	0	0
// OP_DONE	0	0	0
void () enforcer_fire = 
{
    local vector org;
    self.effects = self.effects | EF_MUZZLEFLASH;
    makevectors(self.angles);
    org = ((self.origin + (v_forward * SVC_INTERMISSION)) + (v_right * 8.5)) + '0 0 16';
    LaunchLaser(org, self.enemy.origin - self.origin);
};

// enf_stand1
// function begins at statement 17735, parm_start=10361
// OP_STATE	213	10361	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand1 = [0, enf_stand2]
{
    ai_stand();
};

// enf_stand2
// function begins at statement 17738, parm_start=10362
// OP_STATE	214	10362	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand2 = [1, enf_stand3]
{
    ai_stand();
};

// enf_stand3
// function begins at statement 17741, parm_start=10363
// OP_STATE	216	10363	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand3 = [2, enf_stand4]
{
    ai_stand();
};

// enf_stand4
// function begins at statement 17744, parm_start=10364
// OP_STATE	228	10364	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand4 = [3, enf_stand5]
{
    ai_stand();
};

// enf_stand5
// function begins at statement 17747, parm_start=10365
// OP_STATE	229	10365	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand5 = [4, enf_stand6]
{
    ai_stand();
};

// enf_stand6
// function begins at statement 17750, parm_start=10366
// OP_STATE	230	10366	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand6 = [5, enf_stand7]
{
    ai_stand();
};

// enf_stand7
// function begins at statement 17753, parm_start=10367
// OP_STATE	231	10360	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () enf_stand7 = [6, enf_stand1]
{
    ai_stand();
};

// enf_walk1
// function begins at statement 17756, parm_start=10368
// OP_STATE	232	10368	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	10369
// OP_IFNOT	10369	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8391	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk1 = [7, enf_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(FL_SWIM);
};

// enf_walk2
// function begins at statement 17769, parm_start=10370
// OP_STATE	217	10370	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk2 = [8, enf_walk3]
{
    ai_walk(MOVETYPE_STEP);
};

// enf_walk3
// function begins at statement 17773, parm_start=10371
// OP_STATE	234	10371	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk3 = [9, enf_walk4]
{
    ai_walk(MOVETYPE_STEP);
};

// enf_walk4
// function begins at statement 17777, parm_start=10372
// OP_STATE	235	10372	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk4 = [10, enf_walk5]
{
    ai_walk(MOVETYPE_WALK);
};

// enf_walk5
// function begins at statement 17781, parm_start=10373
// OP_STATE	236	10373	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk5 = [11, enf_walk6]
{
    ai_walk(TRUE);
};

// enf_walk6
// function begins at statement 17785, parm_start=10374
// OP_STATE	2717	10374	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk6 = [12, enf_walk7]
{
    ai_walk(FL_SWIM);
};

// enf_walk7
// function begins at statement 17789, parm_start=10375
// OP_STATE	8413	10375	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk7 = [13, enf_walk8]
{
    ai_walk(FL_SWIM);
};

// enf_walk8
// function begins at statement 17793, parm_start=10376
// OP_STATE	3382	10376	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk8 = [14, enf_walk9]
{
    ai_walk(TRUE);
};

// enf_walk9
// function begins at statement 17797, parm_start=10377
// OP_STATE	2246	10377	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk9 = [15, enf_walk10]
{
    ai_walk(FL_SWIM);
};

// enf_walk10
// function begins at statement 17801, parm_start=10378
// OP_STATE	218	10378	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk10 = [16, enf_walk11]
{
    ai_walk(MOVETYPE_STEP);
};

// enf_walk11
// function begins at statement 17805, parm_start=10379
// OP_STATE	5450	10379	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk11 = [17, enf_walk12]
{
    ai_walk(MOVETYPE_STEP);
};

// enf_walk12
// function begins at statement 17809, parm_start=10380
// OP_STATE	3866	10380	0
// OP_STORE_V	214	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk12 = [18, enf_walk13]
{
    ai_walk(TRUE);
};

// enf_walk13
// function begins at statement 17813, parm_start=10381
// OP_STATE	8422	10381	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk13 = [19, enf_walk14]
{
    ai_walk(FL_SWIM);
};

// enf_walk14
// function begins at statement 17817, parm_start=10382
// OP_STATE	576	10382	0
// OP_STORE_V	228	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk14 = [20, enf_walk15]
{
    ai_walk(MOVETYPE_WALK);
};

// enf_walk15
// function begins at statement 17821, parm_start=10383
// OP_STATE	8425	10383	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk15 = [21, enf_walk16]
{
    ai_walk(MOVETYPE_STEP);
};

// enf_walk16
// function begins at statement 17825, parm_start=10384
// OP_STATE	8428	10367	0
// OP_STORE_V	216	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () enf_walk16 = [22, enf_walk1]
{
    ai_walk(FL_SWIM);
};

// enf_run1
// function begins at statement 17829, parm_start=10385
// OP_STATE	301	10385	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	10386
// OP_IFNOT	10386	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8391	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	3866	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run1 = [23, enf_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "enforcer/idle1.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(18);
};

// enf_run2
// function begins at statement 17842, parm_start=10387
// OP_STATE	5005	10387	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run2 = [24, enf_run3]
{
    ai_run(14);
};

// enf_run3
// function begins at statement 17846, parm_start=10388
// OP_STATE	2261	10388	0
// OP_STORE_V	232	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run3 = [25, enf_run4]
{
    ai_run(MOVETYPE_PUSH);
};

// enf_run4
// function begins at statement 17850, parm_start=10389
// OP_STATE	8433	10389	0
// OP_STORE_V	2717	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run4 = [26, enf_run5]
{
    ai_run(12);
};

// enf_run5
// function begins at statement 17854, parm_start=10390
// OP_STATE	302	10390	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run5 = [27, enf_run6]
{
    ai_run(14);
};

// enf_run6
// function begins at statement 17858, parm_start=10391
// OP_STATE	303	10391	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run6 = [28, enf_run7]
{
    ai_run(14);
};

// enf_run7
// function begins at statement 17862, parm_start=10392
// OP_STATE	5692	10392	0
// OP_STORE_V	232	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run7 = [29, enf_run8]
{
    ai_run(MOVETYPE_PUSH);
};

// enf_run8
// function begins at statement 17866, parm_start=10393
// OP_STATE	304	10384	0
// OP_STORE_V	236	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () enf_run8 = [30, enf_run1]
{
    ai_run(MOVETYPE_BOUNCEMISSILE);
};

// enf_atk1
// function begins at statement 17870, parm_start=10394
// OP_STATE	305	10394	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk1 = [31, enf_atk2]
{
    ai_face();
};

// enf_atk2
// function begins at statement 17873, parm_start=10395
// OP_STATE	219	10395	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk2 = [32, enf_atk3]
{
    ai_face();
};

// enf_atk3
// function begins at statement 17876, parm_start=10396
// OP_STATE	307	10396	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk3 = [33, enf_atk4]
{
    ai_face();
};

// enf_atk4
// function begins at statement 17879, parm_start=10397
// OP_STATE	5699	10397	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk4 = [34, enf_atk5]
{
    ai_face();
};

// enf_atk5
// function begins at statement 17882, parm_start=10398
// OP_STATE	575	10398	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk5 = [35, enf_atk6]
{
    ai_face();
};

// enf_atk6
// function begins at statement 17885, parm_start=10399
// OP_STATE	5683	10399	0
// OP_CALL0	10321	0	0
// OP_DONE	0	0	0
void () enf_atk6 = [36, enf_atk7]
{
    enforcer_fire();
};

// enf_atk7
// function begins at statement 17888, parm_start=10400
// OP_STATE	5685	10400	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk7 = [37, enf_atk8]
{
    ai_face();
};

// enf_atk8
// function begins at statement 17891, parm_start=10401
// OP_STATE	5687	10401	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk8 = [38, enf_atk9]
{
    ai_face();
};

// enf_atk9
// function begins at statement 17894, parm_start=10402
// OP_STATE	575	10402	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk9 = [35, enf_atk10]
{
    ai_face();
};

// enf_atk10
// function begins at statement 17897, parm_start=10403
// OP_STATE	5683	10403	0
// OP_CALL0	10321	0	0
// OP_DONE	0	0	0
void () enf_atk10 = [36, enf_atk11]
{
    enforcer_fire();
};

// enf_atk11
// function begins at statement 17900, parm_start=10404
// OP_STATE	5685	10404	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk11 = [37, enf_atk12]
{
    ai_face();
};

// enf_atk12
// function begins at statement 17903, parm_start=10405
// OP_STATE	5687	10405	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk12 = [38, enf_atk13]
{
    ai_face();
};

// enf_atk13
// function begins at statement 17906, parm_start=10406
// OP_STATE	5689	10406	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () enf_atk13 = [39, enf_atk14]
{
    ai_face();
};

// enf_atk14
// function begins at statement 17909, parm_start=10407
// OP_STATE	2101	10384	0
// OP_CALL0	1148	0	0
// OP_STORE_V	10393	4	0
// OP_CALL1	1128	0	0
// OP_DONE	0	0	0
void () enf_atk14 = [40, enf_run1]
{
    ai_face();
    SUB_CheckRefire(enf_atk1);
};

// enf_paina1
// function begins at statement 17914, parm_start=10408
// OP_STATE	5977	10408	0
// OP_DONE	0	0	0
void () enf_paina1 = [66, enf_paina2]
{
};

// enf_paina2
// function begins at statement 17916, parm_start=10409
// OP_STATE	5979	10409	0
// OP_DONE	0	0	0
void () enf_paina2 = [67, enf_paina3]
{
};

// enf_paina3
// function begins at statement 17918, parm_start=10410
// OP_STATE	5981	10410	0
// OP_DONE	0	0	0
void () enf_paina3 = [68, enf_paina4]
{
};

// enf_paina4
// function begins at statement 17920, parm_start=10411
// OP_STATE	5983	10384	0
// OP_DONE	0	0	0
void () enf_paina4 = [69, enf_run1]
{
};

// enf_painb1
// function begins at statement 17922, parm_start=10412
// OP_STATE	5984	10412	0
// OP_DONE	0	0	0
void () enf_painb1 = [70, enf_painb2]
{
};

// enf_painb2
// function begins at statement 17924, parm_start=10413
// OP_STATE	5986	10413	0
// OP_DONE	0	0	0
void () enf_painb2 = [71, enf_painb3]
{
};

// enf_painb3
// function begins at statement 17926, parm_start=10414
// OP_STATE	5988	10414	0
// OP_DONE	0	0	0
void () enf_painb3 = [72, enf_painb4]
{
};

// enf_painb4
// function begins at statement 17928, parm_start=10415
// OP_STATE	3216	10415	0
// OP_DONE	0	0	0
void () enf_painb4 = [73, enf_painb5]
{
};

// enf_painb5
// function begins at statement 17930, parm_start=10416
// OP_STATE	5991	10384	0
// OP_DONE	0	0	0
void () enf_painb5 = [74, enf_run1]
{
};

// enf_painc1
// function begins at statement 17932, parm_start=10417
// OP_STATE	5993	10417	0
// OP_DONE	0	0	0
void () enf_painc1 = [75, enf_painc2]
{
};

// enf_painc2
// function begins at statement 17934, parm_start=10418
// OP_STATE	5995	10418	0
// OP_DONE	0	0	0
void () enf_painc2 = [76, enf_painc3]
{
};

// enf_painc3
// function begins at statement 17936, parm_start=10419
// OP_STATE	5997	10419	0
// OP_DONE	0	0	0
void () enf_painc3 = [77, enf_painc4]
{
};

// enf_painc4
// function begins at statement 17938, parm_start=10420
// OP_STATE	5999	10420	0
// OP_DONE	0	0	0
void () enf_painc4 = [78, enf_painc5]
{
};

// enf_painc5
// function begins at statement 17940, parm_start=10421
// OP_STATE	6001	10421	0
// OP_DONE	0	0	0
void () enf_painc5 = [79, enf_painc6]
{
};

// enf_painc6
// function begins at statement 17942, parm_start=10422
// OP_STATE	1178	10422	0
// OP_DONE	0	0	0
void () enf_painc6 = [80, enf_painc7]
{
};

// enf_painc7
// function begins at statement 17944, parm_start=10423
// OP_STATE	6004	10423	0
// OP_DONE	0	0	0
void () enf_painc7 = [81, enf_painc8]
{
};

// enf_painc8
// function begins at statement 17946, parm_start=10424
// OP_STATE	6006	10384	0
// OP_DONE	0	0	0
void () enf_painc8 = [82, enf_run1]
{
};

// enf_paind1
// function begins at statement 17948, parm_start=10425
// OP_STATE	6008	10425	0
// OP_DONE	0	0	0
void () enf_paind1 = [83, enf_paind2]
{
};

// enf_paind2
// function begins at statement 17950, parm_start=10426
// OP_STATE	6010	10426	0
// OP_DONE	0	0	0
void () enf_paind2 = [84, enf_paind3]
{
};

// enf_paind3
// function begins at statement 17952, parm_start=10427
// OP_STATE	6011	10427	0
// OP_DONE	0	0	0
void () enf_paind3 = [85, enf_paind4]
{
};

// enf_paind4
// function begins at statement 17954, parm_start=10428
// OP_STATE	6013	10428	0
// OP_STORE_V	216	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () enf_paind4 = [86, enf_paind5]
{
    ai_painforward(FL_SWIM);
};

// enf_paind5
// function begins at statement 17958, parm_start=10429
// OP_STATE	6015	10429	0
// OP_STORE_V	214	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () enf_paind5 = [87, enf_paind6]
{
    ai_painforward(TRUE);
};

// enf_paind6
// function begins at statement 17962, parm_start=10430
// OP_STATE	6017	10430	0
// OP_DONE	0	0	0
void () enf_paind6 = [88, enf_paind7]
{
};

// enf_paind7
// function begins at statement 17964, parm_start=10431
// OP_STATE	6019	10431	0
// OP_DONE	0	0	0
void () enf_paind7 = [89, enf_paind8]
{
};

// enf_paind8
// function begins at statement 17966, parm_start=10432
// OP_STATE	1789	10432	0
// OP_DONE	0	0	0
void () enf_paind8 = [90, enf_paind9]
{
};

// enf_paind9
// function begins at statement 17968, parm_start=10433
// OP_STATE	6022	10433	0
// OP_DONE	0	0	0
void () enf_paind9 = [91, enf_paind10]
{
};

// enf_paind10
// function begins at statement 17970, parm_start=10434
// OP_STATE	6024	10434	0
// OP_DONE	0	0	0
void () enf_paind10 = [92, enf_paind11]
{
};

// enf_paind11
// function begins at statement 17972, parm_start=10435
// OP_STATE	6026	10435	0
// OP_STORE_V	214	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () enf_paind11 = [93, enf_paind12]
{
    ai_painforward(TRUE);
};

// enf_paind12
// function begins at statement 17976, parm_start=10436
// OP_STATE	6027	10436	0
// OP_STORE_V	214	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () enf_paind12 = [94, enf_paind13]
{
    ai_painforward(TRUE);
};

// enf_paind13
// function begins at statement 17980, parm_start=10437
// OP_STATE	6029	10437	0
// OP_STORE_V	214	4	0
// OP_CALL1	1728	0	0
// OP_DONE	0	0	0
void () enf_paind13 = [95, enf_paind14]
{
    ai_painforward(TRUE);
};

// enf_paind14
// function begins at statement 17984, parm_start=10438
// OP_STATE	6031	10438	0
// OP_DONE	0	0	0
void () enf_paind14 = [96, enf_paind15]
{
};

// enf_paind15
// function begins at statement 17986, parm_start=10439
// OP_STATE	6033	10439	0
// OP_DONE	0	0	0
void () enf_paind15 = [97, enf_paind16]
{
};

// enf_paind16
// function begins at statement 17988, parm_start=10440
// OP_STATE	6035	10440	0
// OP_STORE_V	214	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () enf_paind16 = [98, enf_paind17]
{
    ai_pain(TRUE);
};

// enf_paind17
// function begins at statement 17992, parm_start=10441
// OP_STATE	736	10441	0
// OP_STORE_V	214	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () enf_paind17 = [99, enf_paind18]
{
    ai_pain(TRUE);
};

// enf_paind18
// function begins at statement 17996, parm_start=10442
// OP_STATE	574	10442	0
// OP_DONE	0	0	0
void () enf_paind18 = [100, enf_paind19]
{
};

// enf_paind19
// function begins at statement 17998, parm_start=10443
// OP_STATE	6039	10384	0
// OP_DONE	0	0	0
void () enf_paind19 = [101, enf_run1]
{
};

// enf_pain
// function begins at statement 18000, parm_start=10444
// OP_CALL0	452	0	0
// OP_STORE_F	1	10446	0
// OP_LOAD_F	28	374	10447
// OP_GT	10447	31	10448
// OP_IFNOT	10448	2	0
// OP_RETURN	0	0	0
// OP_LT	10446	677	10449
// OP_IFNOT	10449	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8387	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8389	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LT	10446	1226	10450
// OP_IFNOT	10450	6	0
// OP_ADDRESS	28	374	10451
// OP_ADD_F	31	214	10452
// OP_STOREP_F	10452	10451	0
// OP_CALL0	10407	0	0
// OP_GOTO	19	0	0
// OP_LT	10446	1227	10453
// OP_IFNOT	10453	6	0
// OP_ADDRESS	28	374	10454
// OP_ADD_F	31	214	10455
// OP_STOREP_F	10455	10454	0
// OP_CALL0	10411	0	0
// OP_GOTO	12	0	0
// OP_LT	10446	3328	10456
// OP_IFNOT	10456	6	0
// OP_ADDRESS	28	374	10457
// OP_ADD_F	31	214	10458
// OP_STOREP_F	10458	10457	0
// OP_CALL0	10416	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	374	10459
// OP_ADD_F	31	216	10460
// OP_STOREP_F	10460	10459	0
// OP_CALL0	10424	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) enf_pain = 
{
    local float r;
    r = random();
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    if(r < 0.5)
    {
        sound(self, CHAN_VOICE, "enforcer/pain1.wav", TRUE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_VOICE, "enforcer/pain2.wav", TRUE, ATTN_NORM);
    }
    
    if(r < 0.2)
    {
        self.pain_finished = time + TRUE;
        enf_paina1();
    }
    else
    {
        if(r < 0.4)
        {
            self.pain_finished = time + TRUE;
            enf_painb1();
        }
        else
        {
            if(r < 0.7)
            {
                self.pain_finished = time + TRUE;
                enf_painc1();
            }
            else
            {
                self.pain_finished = time + FL_SWIM;
                enf_paind1();
            }
            
        }
        
    }
    
};

// enf_die1
// function begins at statement 18047, parm_start=10462
// OP_STATE	6042	10462	0
// OP_DONE	0	0	0
void () enf_die1 = [41, enf_die2]
{
};

// enf_die2
// function begins at statement 18049, parm_start=10463
// OP_STATE	6044	10463	0
// OP_DONE	0	0	0
void () enf_die2 = [42, enf_die3]
{
};

// enf_die3
// function begins at statement 18051, parm_start=10464
// OP_STATE	6046	10464	0
// OP_ADDRESS	28	104	10465
// OP_STOREP_F	237	10465	0
// OP_ADDRESS	28	161	10466
// OP_STOREP_F	230	10466	0
// OP_CALL0	3034	0	0
// OP_DONE	0	0	0
void () enf_die3 = [43, enf_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = MOVETYPE_FLY;
    DropBackpack();
};

// enf_die4
// function begins at statement 18058, parm_start=10467
// OP_STATE	6048	10467	0
// OP_STORE_V	3382	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () enf_die4 = [44, enf_die5]
{
    ai_forward(14);
};

// enf_die5
// function begins at statement 18062, parm_start=10468
// OP_STATE	1770	10468	0
// OP_STORE_V	216	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () enf_die5 = [45, enf_die6]
{
    ai_forward(FL_SWIM);
};

// enf_die6
// function begins at statement 18066, parm_start=10469
// OP_STATE	6051	10469	0
// OP_DONE	0	0	0
void () enf_die6 = [46, enf_die7]
{
};

// enf_die7
// function begins at statement 18068, parm_start=10470
// OP_STATE	6053	10470	0
// OP_DONE	0	0	0
void () enf_die7 = [47, enf_die8]
{
};

// enf_die8
// function begins at statement 18070, parm_start=10471
// OP_STATE	6055	10471	0
// OP_DONE	0	0	0
void () enf_die8 = [48, enf_die9]
{
};

// enf_die9
// function begins at statement 18072, parm_start=10472
// OP_STATE	6057	10472	0
// OP_STORE_V	228	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () enf_die9 = [49, enf_die10]
{
    ai_forward(MOVETYPE_WALK);
};

// enf_die10
// function begins at statement 18076, parm_start=10473
// OP_STATE	756	10473	0
// OP_STORE_V	230	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () enf_die10 = [50, enf_die11]
{
    ai_forward(MOVETYPE_FLY);
};

// enf_die11
// function begins at statement 18080, parm_start=10474
// OP_STATE	5951	10474	0
// OP_STORE_V	230	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () enf_die11 = [51, enf_die12]
{
    ai_forward(MOVETYPE_FLY);
};

// enf_die12
// function begins at statement 18084, parm_start=10475
// OP_STATE	5953	10475	0
// OP_STORE_V	230	4	0
// OP_CALL1	1718	0	0
// OP_DONE	0	0	0
void () enf_die12 = [52, enf_die13]
{
    ai_forward(MOVETYPE_FLY);
};

// enf_die13
// function begins at statement 18088, parm_start=10476
// OP_STATE	5955	10476	0
// OP_DONE	0	0	0
void () enf_die13 = [53, enf_die14]
{
};

// enf_die14
// function begins at statement 18090, parm_start=10477
// OP_STATE	5957	10476	0
// OP_DONE	0	0	0
void () enf_die14 = [54, enf_die14]
{
};

// enf_fdie1
// function begins at statement 18092, parm_start=10478
// OP_STATE	5959	10478	0
// OP_DONE	0	0	0
void () enf_fdie1 = [55, enf_fdie2]
{
};

// enf_fdie2
// function begins at statement 18094, parm_start=10479
// OP_STATE	5961	10479	0
// OP_DONE	0	0	0
void () enf_fdie2 = [56, enf_fdie3]
{
};

// enf_fdie3
// function begins at statement 18096, parm_start=10480
// OP_STATE	5963	10480	0
// OP_ADDRESS	28	104	10481
// OP_STOREP_F	237	10481	0
// OP_ADDRESS	28	161	10482
// OP_STOREP_F	230	10482	0
// OP_CALL0	3034	0	0
// OP_DONE	0	0	0
void () enf_fdie3 = [57, enf_fdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_cells = MOVETYPE_FLY;
    DropBackpack();
};

// enf_fdie4
// function begins at statement 18103, parm_start=10483
// OP_STATE	5965	10483	0
// OP_DONE	0	0	0
void () enf_fdie4 = [58, enf_fdie5]
{
};

// enf_fdie5
// function begins at statement 18105, parm_start=10484
// OP_STATE	5967	10484	0
// OP_DONE	0	0	0
void () enf_fdie5 = [59, enf_fdie6]
{
};

// enf_fdie6
// function begins at statement 18107, parm_start=10485
// OP_STATE	730	10485	0
// OP_DONE	0	0	0
void () enf_fdie6 = [60, enf_fdie7]
{
};

// enf_fdie7
// function begins at statement 18109, parm_start=10486
// OP_STATE	5969	10486	0
// OP_DONE	0	0	0
void () enf_fdie7 = [61, enf_fdie8]
{
};

// enf_fdie8
// function begins at statement 18111, parm_start=10487
// OP_STATE	5971	10487	0
// OP_DONE	0	0	0
void () enf_fdie8 = [62, enf_fdie9]
{
};

// enf_fdie9
// function begins at statement 18113, parm_start=10488
// OP_STATE	4366	10488	0
// OP_DONE	0	0	0
void () enf_fdie9 = [63, enf_fdie10]
{
};

// enf_fdie10
// function begins at statement 18115, parm_start=10489
// OP_STATE	220	10489	0
// OP_DONE	0	0	0
void () enf_fdie10 = [64, enf_fdie11]
{
};

// enf_fdie11
// function begins at statement 18117, parm_start=10490
// OP_STATE	5975	10489	0
// OP_DONE	0	0	0
void () enf_fdie11 = [65, enf_fdie11]
{
};

// enf_die
// function begins at statement 18119, parm_start=10491
// OP_LOAD_F	28	152	10491
// OP_LT	10491	9250	10492
// OP_IFNOT	10492	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	10493	4	0
// OP_LOAD_F	28	152	10494
// OP_STORE_V	10494	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	10495
// OP_STORE_V	10495	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	10496
// OP_STORE_V	10496	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	10497
// OP_STORE_V	10497	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8390	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_GT	1	677	10498
// OP_IFNOT	10498	3	0
// OP_CALL0	10461	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10477	0	0
// OP_DONE	0	0	0
void () enf_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_mega.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "enforcer/death1.wav", TRUE, ATTN_NORM);
    if(random() > 0.5)
    {
        enf_die1();
    }
    else
    {
        enf_fdie1();
    }
    
};

// monster_enforcer
// function begins at statement 18158, parm_start=10500
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10500	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10493	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	8192	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	8390	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8150	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8193	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8391	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8387	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	8389	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1659	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1661	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1663	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1664	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	104	10501
// OP_STOREP_F	240	10501	0
// OP_ADDRESS	28	103	10502
// OP_STOREP_F	229	10502	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10500	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	9080	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	10503
// OP_STOREP_F	1178	10503	0
// OP_ADDRESS	28	356	10504
// OP_STOREP_FNC	10360	10504	0
// OP_ADDRESS	28	357	10505
// OP_STOREP_FNC	10367	10505	0
// OP_ADDRESS	28	358	10506
// OP_STOREP_FNC	10384	10506	0
// OP_ADDRESS	28	361	10507
// OP_STOREP_FNC	10443	10507	0
// OP_ADDRESS	28	362	10508
// OP_STOREP_FNC	10490	10508	0
// OP_ADDRESS	28	359	10509
// OP_STOREP_FNC	10393	10509	0
// OP_CALL0	6156	0	0
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
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 80;
    self.th_stand = enf_stand1;
    self.th_walk = enf_walk1;
    self.th_run = enf_run1;
    self.th_pain = enf_pain;
    self.th_die = enf_die;
    self.th_missile = enf_atk1;
    walkmonster_start();
};

