float globaldef001987;

// func000245
// function begins at statement 6255, parm_start=5255
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_SUB_F	5253	214	5255
// OP_STORE_F	5255	5253	0
// OP_DONE	0	0	0
void () func000245 = 
{
    remove(self);
    globaldef001987 = globaldef001987 - TRUE;
};


// func000246
// function begins at statement 6260, parm_start=5257
// OP_LOAD_S	29	129	5258
// OP_EQ_S	5258	5259	5260
// OP_IFNOT	5260	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	121	5261
// OP_STOREP_V	286	5261	0
// OP_ADDRESS	28	118	5264
// OP_STOREP_F	213	5264	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5265
// OP_ADD_V	5265	2827	5268
// OP_STORE_V	5268	7	0
// OP_CALL2	453	0	0
// OP_LOAD_V	28	105	5271
// OP_STORE_V	5271	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	5257	0
// OP_EQ_F	5257	278	5274
// OP_EQ_F	5257	279	5275
// OP_OR	5274	5275	5276
// OP_EQ_F	5257	280	5277
// OP_OR	5276	5277	5278
// OP_IFNOT	5278	4	0
// OP_ADDRESS	28	113	5279
// OP_STOREP_V	5282	5279	0
// OP_GOTO	16	0	0
// OP_EQ_F	5257	277	5285
// OP_IFNOT	5285	8	0
// OP_ADDRESS	28	148	5286
// OP_STOREP_FNC	5254	5286	0
// OP_ADDRESS	28	150	5287
// OP_ADD_F	31	3036	5288
// OP_STOREP_F	5288	5287	0
// OP_RETURN	0	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5289	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	113	5290
// OP_STORE_V	5290	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1997	5293
// OP_IFNOT	5293	7	0
// OP_ADDRESS	28	103	5294
// OP_STOREP_F	231	5294	0
// OP_ADDRESS	28	104	5295
// OP_STOREP_F	237	5295	0
// OP_ADDRESS	28	146	5296
// OP_STOREP_FNC	519	5296	0
// OP_DONE	0	0	0
void () func000246 = 
{
    local float globaldef001990;
    
    if(other.classname == "door")
    {
        return;
    }
    
    self.avelocity = VEC_ORIGIN;
    self.angles_x = FALSE;
    setorigin(self, self.origin + '0 0 2');
    globaldef001990 = pointcontents(self.origin);
    if(((globaldef001990 == CONTENT_WATER) || (globaldef001990 == CONTENT_SLIME)) || (globaldef001990 == CONTENT_LAVA))
    {
        self.velocity = '0 0 -100';
    }
    else
    {
        if(globaldef001990 == CONTENT_SOLID)
        {
            self.think = func000245;
            self.nextthink = time + 0.1;
            return;
        }
        else
        {
            sound(self, CHAN_WEAPON, "weapons/shellhit.wav", TRUE, ATTN_NORM);
        }
        
    }
    
    
    if(vlen(self.velocity) < 100)
    {
        self.movetype = MOVETYPE_TOSS;
        self.solid = SOLID_NOT;
        self.touch = SUB_Null;
    }
    
};


// func000247
// function begins at statement 6313, parm_start=5298
// OP_IFNOT	822	2	0
// OP_RETURN	0	0	0
// OP_BITAND	821	778	5306
// OP_IFNOT	5306	2	0
// OP_RETURN	0	0	0
// OP_GE	5253	744	5307
// OP_IFNOT	5307	11	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5308	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	5305	0
// OP_IFNOT	5305	5	0
// OP_STORE_V	5305	4	0
// OP_CALL1	465	0	0
// OP_SUB_F	5253	214	5309
// OP_STORE_F	5309	5253	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5304	0
// OP_ADDRESS	5304	201	5310
// OP_STOREP_ENT	28	5310	0
// OP_ADDRESS	5304	103	5311
// OP_STOREP_F	235	5311	0
// OP_ADDRESS	5304	104	5312
// OP_STOREP_F	239	5312	0
// OP_ADDRESS	5304	117	5313
// OP_STORE_V	5301	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	5313	0
// OP_ADDRESS	5304	146	5316
// OP_STOREP_FNC	5256	5316	0
// OP_ADDRESS	5304	129	5317
// OP_STOREP_S	5308	5317	0
// OP_ADDRESS	5304	148	5318
// OP_STOREP_FNC	5254	5318	0
// OP_ADDRESS	5304	150	5319
// OP_ADD_F	31	765	5320
// OP_STOREP_F	5320	5319	0
// OP_STORE_V	5304	4	0
// OP_STORE_V	5321	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5304	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	5304	4	0
// OP_STORE_V	5298	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	5304	113	5322
// OP_MUL_VF	5301	1470	5325
// OP_STOREP_V	5325	5322	0
// OP_ADDRESS	5304	114	5328
// OP_LOAD_F	5304	114	5329
// OP_CALL0	457	0	0
// OP_MUL_F	1	1470	5330
// OP_ADD_F	5329	5330	5331
// OP_SUB_F	5331	305	5332
// OP_STOREP_F	5332	5328	0
// OP_ADDRESS	5304	115	5333
// OP_LOAD_F	5304	115	5334
// OP_CALL0	457	0	0
// OP_MUL_F	1	1470	5335
// OP_ADD_F	5334	5335	5336
// OP_SUB_F	5336	305	5337
// OP_STOREP_F	5337	5333	0
// OP_ADDRESS	5304	116	5338
// OP_LOAD_F	5304	116	5339
// OP_CALL0	457	0	0
// OP_MUL_F	1	2003	5340
// OP_ADD_F	5339	5340	5341
// OP_ADD_F	5341	1470	5342
// OP_STOREP_F	5342	5338	0
// OP_ADDRESS	5304	122	5343
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	5344
// OP_SUB_F	5344	540	5345
// OP_STOREP_F	5345	5343	0
// OP_ADDRESS	5304	123	5346
// OP_CALL0	457	0	0
// OP_MUL_F	1	5347	5348
// OP_SUB_F	5348	2044	5349
// OP_STOREP_F	5349	5346	0
// OP_ADDRESS	5304	124	5350
// OP_CALL0	457	0	0
// OP_MUL_F	1	540	5351
// OP_SUB_F	5351	2003	5352
// OP_STOREP_F	5352	5350	0
// OP_ADD_F	5253	214	5353
// OP_STORE_F	5353	5253	0
// OP_DONE	0	0	0
void (vector globaldef001995, vector globaldef001999) func000247 = 
{
    local entity globaldef002003;
    local entity globaldef002004;
    
    if(globaldef000805)
    {
        return;
    }
    
    
    if(globaldef000804 & globaldef000761)
    {
        return;
    }
    
    
    if(globaldef001987 >= globaldef000727)
    {
        globaldef002004 = find(world, classname, "shellcase");
        
        if(globaldef002004)
        {
            remove(globaldef002004);
            globaldef001987 = globaldef001987 - TRUE;
        }
        
    }
    
    globaldef002003 = spawn();
    globaldef002003.owner = self;
    globaldef002003.movetype = MOVETYPE_BOUNCE;
    globaldef002003.solid = SOLID_BBOX;
    globaldef002003.angles = vectoangles(globaldef001999);
    globaldef002003.touch = func000246;
    globaldef002003.classname = "shellcase";
    globaldef002003.think = func000245;
    globaldef002003.nextthink = time + GLOBALDEFSEVENFOUREIGHT;
    setmodel(globaldef002003, "progs/shelcase.mdl");
    setsize(globaldef002003, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef002003, globaldef001995);
    globaldef002003.velocity = globaldef001999 * 50;
    globaldef002003.velocity_x = (globaldef002003.velocity_x + (random() * 50)) - SVC_SIGNONNUM;
    globaldef002003.velocity_y = (globaldef002003.velocity_y + (random() * 50)) - SVC_SIGNONNUM;
    globaldef002003.velocity_z = (globaldef002003.velocity_z + (random() * 150)) + 50;
    globaldef002003.avelocity_x = (random() * GLOBALDEFSEVENTWOTHREE) - GLOBALDEFFIVETWOTHREE;
    globaldef002003.avelocity_y = (random() * 400) - 200;
    globaldef002003.avelocity_z = (random() * GLOBALDEFFIVETWOTHREE) - 150;
    globaldef001987 = globaldef001987 + TRUE;
};

void () func000408;
void (vector globaldef002057, vector globaldef002061, float globaldef002065) func000254;
void () func000295;

// func000248
// function begins at statement 6403, parm_start=5358
// OP_STORE_V	5358	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5360	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5361	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5362	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5363	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5364	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5365	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5366	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5367	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5368	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	5369	4	0
// OP_CALL1	469	0	0
// OP_DONE	0	0	0
void () func000248 = 
{
    precache_sound("weapons/r_exp3.wav");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("weapons/sgun1.wav");
    precache_sound("weapons/guncock.wav");
    precache_sound("weapons/ric1.wav");
    precache_sound("weapons/ric2.wav");
    precache_sound("weapons/ric3.wav");
    precache_sound("weapons/spike2.wav");
    precache_sound("weapons/tink1.wav");
    precache_sound("weapons/grenade.wav");
    precache_sound("weapons/bounce.wav");
    precache_sound("weapons/shotgn2.wav");
};


// func000249
// function begins at statement 6428, parm_start=5371
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	5371
// OP_MUL_F	216	5371	5372
// OP_RETURN	5372	0	0
// OP_DONE	0	0	0
float () func000249 = 
{
    return FL_SWIM * (random() - GLOBALDEFFIVETWOTWO);
};


// func000250
// function begins at statement 6433, parm_start=5374
// OP_LOAD_V	5374	175	5376
// OP_STORE_V	5376	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	59	4	0
// OP_CALL1	459	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
vector (entity globaldef002026, float globaldef002027) func000250 = 
{
    makevectors(globaldef002026.v_angle);
    return normalize(v_forward);
};


// func000251
// function begins at statement 6440, parm_start=5380
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5386
// OP_STORE_V	5386	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	758	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_V	28	105	5389
// OP_ADD_V	5389	5392	5395
// OP_STORE_V	5395	5380	0
// OP_STORE_V	5380	4	0
// OP_MUL_VF	59	220	5398
// OP_ADD_V	5380	5398	5401
// OP_STORE_V	5401	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	5404
// OP_IFNOT	5404	2	0
// OP_RETURN	0	0	0
// OP_MUL_VF	59	229	5405
// OP_SUB_V	71	5405	5408
// OP_STORE_V	5408	5383	0
// OP_LOAD_F	78	163	5411
// OP_IFNOT	5411	13	0
// OP_ADDRESS	78	392	5412
// OP_STOREP_F	214	5412	0
// OP_STORE_V	5383	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	2323	10	0
// OP_CALL3	5355	0	0
// OP_STORE_V	78	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	2323	13	0
// OP_CALL4	522	0	0
// OP_GOTO	22	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5383	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5384	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	5385	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void () func000251 = 
{
    local vector globaldef002029;
    local vector globaldef002033;
    func002453(self, self.origin, TRUE, globaldef000741);
    globaldef002029 = self.origin + '0 0 16';
    traceline(globaldef002029, globaldef002029 + (v_forward * FL_GODMODE), FALSE, self);
    
    if(trace_fraction == TRUE)
    {
        return;
    }
    
    globaldef002033 = trace_endpos - (v_forward * MOVETYPE_STEP);
    if(trace_ent.takedamage)
    {
        trace_ent.axhitme = TRUE;
        func000254(globaldef002033, VEC_ORIGIN, 20);
        T_Damage(trace_ent, self, self, 20);
    }
    else
    {
        sound(self, CHAN_WEAPON, "player/axhit2.wav", TRUE, ATTN_NORM);
        WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
        WriteByte(MSG_BROADCAST, TE_GUNSHOT);
        WriteCoord(MSG_BROADCAST, globaldef002033_x);
        WriteCoord(MSG_BROADCAST, globaldef002033_y);
        WriteCoord(MSG_BROADCAST, globaldef002033_z);
    }
    
};


// func000252
// function begins at statement 6498, parm_start=5415
// OP_LOAD_V	28	113	5418
// OP_STORE_V	5418	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	5415	0
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	5421
// OP_MUL_VF	62	5421	5422
// OP_ADD_V	5415	5422	5425
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	5428
// OP_MUL_VF	65	5428	5429
// OP_ADD_V	5425	5429	5432
// OP_STORE_V	5432	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	5415	0
// OP_MUL_FV	216	74	5435
// OP_ADD_V	5415	5435	5438
// OP_STORE_V	5438	5415	0
// OP_MUL_VF	5415	2044	5441
// OP_STORE_V	5441	5415	0
// OP_RETURN	5415	0	0
// OP_DONE	0	0	0
vector () func000252 = 
{
    local vector globaldef002040;
    globaldef002040 = normalize(self.velocity);
    globaldef002040 = normalize((globaldef002040 + (v_up * (random() - GLOBALDEFFIVETWOTWO))) + (v_right * (random() - GLOBALDEFFIVETWOTWO)));
    globaldef002040 = globaldef002040 + (FL_SWIM * trace_plane_normal);
    globaldef002040 = globaldef002040 * 200;
    return globaldef002040;
};


// func000253
// function begins at statement 6520, parm_start=5445
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5451	0
// OP_ADDRESS	5451	201	5453
// OP_STOREP_ENT	28	5453	0
// OP_ADDRESS	5451	103	5454
// OP_STOREP_F	235	5454	0
// OP_ADDRESS	5451	104	5455
// OP_STOREP_F	237	5455	0
// OP_LOAD_V	28	117	5456
// OP_STORE_V	5456	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	5451	113	5459
// OP_STOREP_V	5448	5459	0
// OP_ADDRESS	5451	116	5462
// OP_LOAD_F	5451	116	5463
// OP_ADD_F	5463	738	5464
// OP_CALL0	457	0	0
// OP_MUL_F	1470	1	5465
// OP_ADD_F	5464	5465	5466
// OP_STOREP_F	5466	5462	0
// OP_ADDRESS	5451	121	5467
// OP_STOREP_V	5470	5467	0
// OP_ADDRESS	5451	150	5473
// OP_ADD_F	31	214	5474
// OP_STOREP_F	5474	5473	0
// OP_ADDRESS	5451	148	5475
// OP_STOREP_FNC	521	5475	0
// OP_STORE_V	5451	4	0
// OP_STORE_V	5476	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5451	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	5451	4	0
// OP_STORE_V	5445	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void (vector globaldef002045, vector globaldef002049) func000253 = 
{
    local entity globaldef002053;
    local entity globaldef002054;
    globaldef002053 = spawn();
    globaldef002053.owner = self;
    globaldef002053.movetype = MOVETYPE_BOUNCE;
    globaldef002053.solid = SOLID_NOT;
    makevectors(self.angles);
    globaldef002053.velocity = globaldef002049;
    globaldef002053.velocity_z = (globaldef002053.velocity_z + GLOBALDEFSEVENTWOONE) + (50 * random());
    globaldef002053.avelocity = '3000 1000 2000';
    globaldef002053.nextthink = time + TRUE;
    globaldef002053.think = SUB_Remove;
    setmodel(globaldef002053, "progs/zom_gib.mdl");
    setsize(globaldef002053, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef002053, globaldef002045);
};


// func000254
// function begins at statement 6558, parm_start=5477
// OP_STORE_V	5477	4	0
// OP_MUL_VF	5480	3036	5484
// OP_STORE_V	5484	7	0
// OP_STORE_V	5487	10	0
// OP_MUL_F	5483	216	5488
// OP_STORE_V	5488	13	0
// OP_CALL4	493	0	0
// OP_DONE	0	0	0
void (vector globaldef002057, vector globaldef002061, float globaldef002065) func000254 = 
{
    particle(globaldef002057, globaldef002061 * 0.1, 73, globaldef002065 * FL_SWIM);
};


// func000255
// function begins at statement 6566, parm_start=5490
// OP_CALL0	5414	0	0
// OP_MUL_VF	1	3267	5494
// OP_STORE_V	5494	5491	0
// OP_LOAD_V	28	105	5497
// OP_MUL_VF	5491	5500	5501
// OP_ADD_V	5497	5501	5504
// OP_STORE_V	5504	4	0
// OP_STORE_V	5491	7	0
// OP_STORE_V	5490	10	0
// OP_CALL3	5355	0	0
// OP_DONE	0	0	0
void (float globaldef002068) func000255 = 
{
    local vector globaldef002069;
    globaldef002069 = func000252() * 0.2;
    func000254(self.origin + (globaldef002069 * 0.01), globaldef002069, globaldef002068);
};

