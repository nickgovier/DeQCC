// tbaby_stand1
// function begins at statement 17809, parm_start=10271
// OP_STATE	337	10270	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () tbaby_stand1 = [0, tbaby_stand1]
{
    ai_stand();
};

// tbaby_hang1
// function begins at statement 17812, parm_start=10272
// OP_STATE	337	10271	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () tbaby_hang1 = [0, tbaby_hang1]
{
    ai_stand();
};

// tbaby_walk1
// function begins at statement 17815, parm_start=10273
// OP_STATE	337	10273	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk1 = [0, tbaby_walk2]
{
    ai_turn();
};

// tbaby_walk2
// function begins at statement 17818, parm_start=10274
// OP_STATE	9491	10274	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk2 = [1, tbaby_walk3]
{
    ai_turn();
};

// tbaby_walk3
// function begins at statement 17821, parm_start=10275
// OP_STATE	7369	10275	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk3 = [2, tbaby_walk4]
{
    ai_turn();
};

// tbaby_walk4
// function begins at statement 17824, parm_start=10276
// OP_STATE	370	10276	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk4 = [3, tbaby_walk5]
{
    ai_turn();
};

// tbaby_walk5
// function begins at statement 17827, parm_start=10277
// OP_STATE	6076	10277	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk5 = [4, tbaby_walk6]
{
    ai_turn();
};

// tbaby_walk6
// function begins at statement 17830, parm_start=10278
// OP_STATE	313	10278	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk6 = [5, tbaby_walk7]
{
    ai_turn();
};

// tbaby_walk7
// function begins at statement 17833, parm_start=10279
// OP_STATE	314	10279	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk7 = [6, tbaby_walk8]
{
    ai_turn();
};

// tbaby_walk8
// function begins at statement 17836, parm_start=10280
// OP_STATE	315	10280	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk8 = [7, tbaby_walk9]
{
    ai_turn();
};

// tbaby_walk9
// function begins at statement 17839, parm_start=10281
// OP_STATE	6077	10281	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk9 = [8, tbaby_walk10]
{
    ai_turn();
};

// tbaby_walk10
// function begins at statement 17842, parm_start=10282
// OP_STATE	317	10282	0
// OP_CALL0	1363	0	0
// OP_DONE	0	0	0
void () tbaby_walk10 = [9, tbaby_walk11]
{
    ai_turn();
};

// tbaby_walk11
// function begins at statement 17845, parm_start=10283
// OP_STATE	318	10283	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk11 = [10, tbaby_walk12]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk12
// function begins at statement 17849, parm_start=10284
// OP_STATE	319	10284	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk12 = [11, tbaby_walk13]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk13
// function begins at statement 17853, parm_start=10285
// OP_STATE	2250	10285	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk13 = [12, tbaby_walk14]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk14
// function begins at statement 17857, parm_start=10286
// OP_STATE	7768	10286	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk14 = [13, tbaby_walk15]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk15
// function begins at statement 17861, parm_start=10287
// OP_STATE	2901	10287	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk15 = [14, tbaby_walk16]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk16
// function begins at statement 17865, parm_start=10288
// OP_STATE	1876	10288	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk16 = [15, tbaby_walk17]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk17
// function begins at statement 17869, parm_start=10289
// OP_STATE	6078	10289	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk17 = [16, tbaby_walk18]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk18
// function begins at statement 17873, parm_start=10290
// OP_STATE	4861	10290	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk18 = [17, tbaby_walk19]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk19
// function begins at statement 17877, parm_start=10291
// OP_STATE	3319	10291	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk19 = [18, tbaby_walk20]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk20
// function begins at statement 17881, parm_start=10292
// OP_STATE	7776	10292	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk20 = [19, tbaby_walk21]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk21
// function begins at statement 17885, parm_start=10293
// OP_STATE	894	10293	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk21 = [20, tbaby_walk22]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk22
// function begins at statement 17889, parm_start=10294
// OP_STATE	7779	10294	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk22 = [21, tbaby_walk23]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk23
// function begins at statement 17893, parm_start=10295
// OP_STATE	7781	10295	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk23 = [22, tbaby_walk24]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk24
// function begins at statement 17897, parm_start=10296
// OP_STATE	301	10296	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk24 = [23, tbaby_walk25]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_walk25
// function begins at statement 17901, parm_start=10297
// OP_STATE	4437	10272	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () tbaby_walk25 = [24, tbaby_walk1]
{
    ai_walk(SPAWNFLAG_LASER);
};

// tbaby_run1
// function begins at statement 17905, parm_start=10298
// OP_STATE	1890	10298	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run1 = [25, tbaby_run2]
{
    ai_face();
};

// tbaby_run2
// function begins at statement 17908, parm_start=10299
// OP_STATE	7788	10299	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run2 = [26, tbaby_run3]
{
    ai_face();
};

// tbaby_run3
// function begins at statement 17911, parm_start=10300
// OP_STATE	302	10300	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run3 = [27, tbaby_run4]
{
    ai_face();
};

// tbaby_run4
// function begins at statement 17914, parm_start=10301
// OP_STATE	303	10301	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run4 = [28, tbaby_run5]
{
    ai_face();
};

// tbaby_run5
// function begins at statement 17917, parm_start=10302
// OP_STATE	5105	10302	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run5 = [29, tbaby_run6]
{
    ai_face();
};

// tbaby_run6
// function begins at statement 17920, parm_start=10303
// OP_STATE	304	10303	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run6 = [30, tbaby_run7]
{
    ai_face();
};

// tbaby_run7
// function begins at statement 17923, parm_start=10304
// OP_STATE	305	10304	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run7 = [31, tbaby_run8]
{
    ai_face();
};

// tbaby_run8
// function begins at statement 17926, parm_start=10305
// OP_STATE	5674	10305	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run8 = [32, tbaby_run9]
{
    ai_face();
};

// tbaby_run9
// function begins at statement 17929, parm_start=10306
// OP_STATE	307	10306	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run9 = [33, tbaby_run10]
{
    ai_face();
};

// tbaby_run10
// function begins at statement 17932, parm_start=10307
// OP_STATE	5112	10307	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_run10 = [34, tbaby_run11]
{
    ai_face();
};

// tbaby_run11
// function begins at statement 17935, parm_start=10308
// OP_STATE	3072	10308	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run11 = [35, tbaby_run12]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run12
// function begins at statement 17939, parm_start=10309
// OP_STATE	5096	10309	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run12 = [36, tbaby_run13]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run13
// function begins at statement 17943, parm_start=10310
// OP_STATE	5098	10310	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run13 = [37, tbaby_run14]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run14
// function begins at statement 17947, parm_start=10311
// OP_STATE	5100	10311	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run14 = [38, tbaby_run15]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run15
// function begins at statement 17951, parm_start=10312
// OP_STATE	5102	10312	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run15 = [39, tbaby_run16]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run16
// function begins at statement 17955, parm_start=10313
// OP_STATE	1733	10313	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run16 = [40, tbaby_run17]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run17
// function begins at statement 17959, parm_start=10314
// OP_STATE	5443	10314	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run17 = [41, tbaby_run18]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run18
// function begins at statement 17963, parm_start=10315
// OP_STATE	5445	10315	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run18 = [42, tbaby_run19]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run19
// function begins at statement 17967, parm_start=10316
// OP_STATE	5447	10316	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run19 = [43, tbaby_run20]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run20
// function begins at statement 17971, parm_start=10317
// OP_STATE	5449	10317	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run20 = [44, tbaby_run21]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run21
// function begins at statement 17975, parm_start=10318
// OP_STATE	1390	10318	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run21 = [45, tbaby_run22]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run22
// function begins at statement 17979, parm_start=10319
// OP_STATE	5452	10319	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run22 = [46, tbaby_run23]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run23
// function begins at statement 17983, parm_start=10320
// OP_STATE	5454	10320	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run23 = [47, tbaby_run24]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run24
// function begins at statement 17987, parm_start=10321
// OP_STATE	5456	10321	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run24 = [48, tbaby_run25]
{
    ai_run(SPAWNFLAG_LASER);
};

// tbaby_run25
// function begins at statement 17991, parm_start=10322
// OP_STATE	5458	10297	0
// OP_STORE_V	7369	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () tbaby_run25 = [49, tbaby_run1]
{
    ai_run(SPAWNFLAG_LASER);
};

void () tbaby_jump1;
// Tar_JumpTouch
// function begins at statement 17995, parm_start=10324
// OP_LOAD_F	29	163	10325
// OP_LOAD_S	29	129	10326
// OP_LOAD_S	28	129	10327
// OP_NE_S	10326	10327	10328
// OP_AND	10325	10328	10329
// OP_IFNOT	10329	22	0
// OP_LOAD_V	28	113	10330
// OP_STORE_V	10330	4	0
// OP_CALL1	457	0	0
// OP_GT	1	3036	10333
// OP_IFNOT	10333	16	0
// OP_CALL0	452	0	0
// OP_MUL_F	318	1	10334
// OP_ADD_F	318	10334	10335
// OP_STORE_F	10335	10324	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	10324	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10336	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10337	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	483	0	0
// OP_NOT_F	1	0	10338
// OP_IFNOT	10338	14	0
// OP_LOAD_F	28	182	10339
// OP_BITAND	10339	223	10340
// OP_IFNOT	10340	10	0
// OP_ADDRESS	28	146	10341
// OP_STOREP_FNC	517	10341	0
// OP_ADDRESS	28	148	10342
// OP_STOREP_FNC	10297	10342	0
// OP_ADDRESS	28	103	10343
// OP_STOREP_F	229	10343	0
// OP_ADDRESS	28	150	10344
// OP_ADD_F	31	603	10345
// OP_STOREP_F	10345	10344	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	10346
// OP_STOREP_FNC	517	10346	0
// OP_ADDRESS	28	148	10347
// OP_STOREP_FNC	10322	10347	0
// OP_ADDRESS	28	150	10348
// OP_ADD_F	31	603	10349
// OP_STOREP_F	10349	10348	0
// OP_DONE	0	0	0
void () Tar_JumpTouch = 
{
    local float ldmg;
    if(other.takedamage && (other.classname != self.classname))
    {
        
        if(vlen(self.velocity) > 400)
        {
            ldmg = TE_LAVASPLASH + (TE_LAVASPLASH * random());
            T_Damage(other, self, self, ldmg);
            sound(self, CHAN_WEAPON, "blob/hit1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
        }
        
    }
    else
    {
        sound(self, CHAN_WEAPON, "blob/land1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = tbaby_run1;
            self.movetype = MOVETYPE_STEP;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = tbaby_jump1;
    self.nextthink = time + 0.1;
};

void () tbaby_jump5;
// tbaby_fly1
// function begins at statement 18053, parm_start=10352
// OP_STATE	5361	10352	0
// OP_DONE	0	0	0
void () tbaby_fly1 = [56, tbaby_fly2]
{
};

// tbaby_fly2
// function begins at statement 18055, parm_start=10353
// OP_STATE	5363	10353	0
// OP_DONE	0	0	0
void () tbaby_fly2 = [57, tbaby_fly3]
{
};

// tbaby_fly3
// function begins at statement 18057, parm_start=10354
// OP_STATE	5365	10354	0
// OP_DONE	0	0	0
void () tbaby_fly3 = [58, tbaby_fly4]
{
};

// tbaby_fly4
// function begins at statement 18059, parm_start=10355
// OP_STATE	5367	10351	0
// OP_ADDRESS	28	421	10355
// OP_LOAD_F	28	421	10356
// OP_ADD_F	10356	9491	10357
// OP_STOREP_F	10357	10355	0
// OP_LOAD_F	28	421	10358
// OP_EQ_F	10358	6076	10359
// OP_IFNOT	10359	2	0
// OP_CALL0	10350	0	0
// OP_DONE	0	0	0
void () tbaby_fly4 = [59, tbaby_fly1]
{
    self.cnt = self.cnt + SPAWN_CRUCIFIED;
    
    if(self.cnt == SECRET_1ST_DOWN)
    {
        tbaby_jump5();
    }
    
};

// tbaby_jump1
// function begins at statement 18069, parm_start=10360
// OP_STATE	2227	10360	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_jump1 = [50, tbaby_jump2]
{
    ai_face();
};

// tbaby_jump2
// function begins at statement 18072, parm_start=10361
// OP_STATE	5351	10361	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_jump2 = [51, tbaby_jump3]
{
    ai_face();
};

// tbaby_jump3
// function begins at statement 18075, parm_start=10362
// OP_STATE	5353	10362	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_jump3 = [52, tbaby_jump4]
{
    ai_face();
};

// tbaby_jump4
// function begins at statement 18078, parm_start=10363
// OP_STATE	5355	10350	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () tbaby_jump4 = [53, tbaby_jump5]
{
    ai_face();
};

// tbaby_jump5
// function begins at statement 18081, parm_start=10363
// OP_STATE	5357	10363	0
// OP_ADDRESS	28	103	10364
// OP_STOREP_F	235	10364	0
// OP_ADDRESS	28	146	10365
// OP_STOREP_FNC	10323	10365	0
// OP_LOAD_V	28	117	10366
// OP_STORE_V	10366	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	108	10369
// OP_LOAD_F	28	108	10370
// OP_ADD_F	10370	9491	10371
// OP_STOREP_F	10371	10369	0
// OP_ADDRESS	28	113	10372
// OP_MUL_VF	59	1029	10375
// OP_ADD_V	10375	9354	10378
// OP_STOREP_V	10378	10372	0
// OP_ADDRESS	28	116	10381
// OP_LOAD_F	28	116	10382
// OP_CALL0	452	0	0
// OP_MUL_F	1	1960	10383
// OP_ADD_F	10382	10383	10384
// OP_STOREP_F	10384	10381	0
// OP_LOAD_F	28	182	10385
// OP_BITAND	10385	223	10386
// OP_IFNOT	10386	5	0
// OP_ADDRESS	28	182	10387
// OP_LOAD_F	28	182	10388
// OP_SUB_F	10388	223	10389
// OP_STOREP_F	10389	10387	0
// OP_ADDRESS	28	421	10390
// OP_STOREP_F	337	10390	0
// OP_DONE	0	0	0
void () tbaby_jump5 = [54, tbaby_jump6]
{
    self.movetype = MOVETYPE_BOUNCE;
    self.touch = Tar_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + SPAWN_CRUCIFIED;
    self.velocity = (v_forward * 600) + '0 0 200';
    self.velocity_z = self.velocity_z + (random() * 150);
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
    self.cnt = MSG_BROADCAST;
};

// tbaby_jump6
// function begins at statement 18113, parm_start=10391
// OP_STATE	5359	10351	0
// OP_DONE	0	0	0
void () tbaby_jump6 = [55, tbaby_fly1]
{
};

// tbaby_die1
// function begins at statement 18115, parm_start=10392
// OP_STATE	912	10392	0
// OP_ADDRESS	28	163	10393
// OP_STOREP_F	250	10393	0
// OP_DONE	0	0	0
void () tbaby_die1 = [60, tbaby_die2]
{
    self.takedamage = DAMAGE_NO;
};

// tbaby_die2
// function begins at statement 18119, parm_start=10394
// OP_STATE	912	10297	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	1164	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1720	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10394	10	0
// OP_STORE_V	9491	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	105	10395
// OP_LOAD_V	28	105	10398
// OP_LOAD_V	28	113	10401
// OP_STORE_V	10401	4	0
// OP_CALL1	454	0	0
// OP_MUL_FV	6077	1	10404
// OP_SUB_V	10398	10404	10407
// OP_STOREP_V	10407	10395	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	312	7	0
// OP_CALL2	493	0	0
// OP_LOAD_F	28	106	10410
// OP_STORE_V	337	4	0
// OP_STORE_V	10410	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	107	10411
// OP_STORE_V	337	4	0
// OP_STORE_V	10411	7	0
// OP_CALL2	497	0	0
// OP_LOAD_F	28	108	10412
// OP_STORE_V	337	4	0
// OP_STORE_V	10412	7	0
// OP_CALL2	497	0	0
// OP_CALL0	2911	0	0
// OP_DONE	0	0	0
void () tbaby_die2 = [60, tbaby_run1]
{
    T_RadiusDamage(self, self, 120, world);
    sound(self, CHAN_VOICE, "blob/death1.wav", SPAWN_CRUCIFIED, ATTN_NORM);
    self.origin = self.origin - (SECRET_NO_SHOOT * normalize(self.velocity));
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_TAREXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    BecomeExplosion();
};

// monster_tarbaby
// function begins at statement 18159, parm_start=10414
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10414	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10394	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10336	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10337	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1269	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	104	10415
// OP_STOREP_F	240	10415	0
// OP_ADDRESS	28	103	10416
// OP_STOREP_F	229	10416	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10414	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	8669	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	10417
// OP_STOREP_F	788	10417	0
// OP_ADDRESS	28	356	10418
// OP_STOREP_FNC	10270	10418	0
// OP_ADDRESS	28	357	10419
// OP_STOREP_FNC	10272	10419	0
// OP_ADDRESS	28	358	10420
// OP_STOREP_FNC	10297	10420	0
// OP_ADDRESS	28	359	10421
// OP_STOREP_FNC	10322	10421	0
// OP_ADDRESS	28	360	10422
// OP_STOREP_FNC	10322	10422	0
// OP_ADDRESS	28	362	10423
// OP_STOREP_FNC	10391	10423	0
// OP_CALL0	5557	0	0
// OP_DONE	0	0	0
void () monster_tarbaby = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/tarbaby.mdl");
    precache_sound2("blob/death1.wav");
    precache_sound2("blob/hit1.wav");
    precache_sound2("blob/land1.wav");
    precache_sound2("blob/sight1.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/tarbaby.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 80;
    self.th_stand = tbaby_stand1;
    self.th_walk = tbaby_walk1;
    self.th_run = tbaby_run1;
    self.th_missile = tbaby_jump1;
    self.th_melee = tbaby_jump1;
    self.th_die = tbaby_die1;
    walkmonster_start();
};

