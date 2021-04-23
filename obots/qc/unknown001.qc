
// func002267
// function begins at statement 27441, parm_start=16238
// OP_ADDRESS	16238	132	16240
// OP_LOAD_F	16239	574	16241
// OP_STOREP_F	16241	16240	0
// OP_ADDRESS	16238	93	16242
// OP_LOAD_F	16239	573	16243
// OP_STOREP_F	16243	16242	0
// OP_ADDRESS	16238	130	16244
// OP_STOREP_S	6684	16244	0
// OP_DONE	0	0	0
void (entity globaldef005702, entity globaldef005703) func002267 = 
{
    globaldef005702.skin = globaldef005703.field000251;
    globaldef005702.modelindex = globaldef005703.clmodelindex;
    globaldef005702.model = "progs/player.mdl";
};


// func002268
// function begins at statement 27450, parm_start=16245
// OP_LOAD_F	16245	608	16252
// OP_STORE_V	16252	4	0
// OP_CALL1	1054	0	0
// OP_STORE_ENT	1	16246	0
// OP_NOT_ENT	16246	0	16253
// OP_IFNOT	16253	3	0
// OP_STORE_V	16254	4	0
// OP_CALL1	461	0	0
// OP_STORE_V	16246	4	0
// OP_STORE_V	16245	7	0
// OP_CALL2	1055	0	0
// OP_ADDRESS	16245	132	16255
// OP_STOREP_F	213	16255	0
// OP_ADDRESS	16245	93	16256
// OP_STOREP_F	213	16256	0
// OP_ADDRESS	16246	131	16257
// OP_LOAD_F	16245	131	16258
// OP_STOREP_F	16258	16257	0
// OP_ADDRESS	16246	162	16259
// OP_LOAD_F	16245	162	16260
// OP_STOREP_F	16260	16259	0
// OP_ADDRESS	16246	133	16261
// OP_LOAD_F	16245	133	16262
// OP_STOREP_F	16262	16261	0
// OP_ADDRESS	16246	117	16263
// OP_LOAD_V	16245	117	16266
// OP_STOREP_V	16266	16263	0
// OP_ADDRESS	16246	175	16269
// OP_LOAD_V	16245	175	16272
// OP_STOREP_V	16272	16269	0
// OP_ADDRESS	16246	183	16275
// OP_LOAD_F	16245	608	16276
// OP_ADD_F	16276	214	16277
// OP_STOREP_F	16277	16275	0
// OP_LOAD_V	16245	105	16278
// OP_STORE_V	16278	16247	0
// OP_LOAD_F	16245	575	16281
// OP_BITAND	16281	712	16282
// OP_IFNOT	16282	34	0
// OP_LOAD_F	16246	108	16283
// OP_LOAD_F	16245	108	16284
// OP_SUB_F	16284	214	16285
// OP_GE	16283	16285	16286
// OP_LOAD_F	16245	575	16287
// OP_BITAND	16287	700	16288
// OP_NOT_F	16288	0	16289
// OP_OR	16286	16289	16290
// OP_IFNOT	16290	6	0
// OP_ADDRESS	16245	575	16291
// OP_LOAD_F	16245	575	16292
// OP_SUB_F	16292	712	16293
// OP_STOREP_F	16293	16291	0
// OP_GOTO	20	0	0
// OP_LOAD_F	16246	108	16294
// OP_LOAD_F	16245	108	16295
// OP_SUB_F	16294	16295	16296
// OP_LOAD_F	16245	137	16297
// OP_LE	16296	16297	16298
// OP_IFNOT	16298	6	0
// OP_ADDRESS	16246	108	16299
// OP_LOAD_F	16245	108	16300
// OP_LOAD_F	16245	137	16301
// OP_ADD_F	16300	16301	16302
// OP_STOREP_F	16302	16299	0
// OP_LOAD_F	16246	108	16303
// OP_LOAD_F	16245	108	16304
// OP_LOAD_F	16246	108	16305
// OP_SUB_F	16304	16305	16306
// OP_MUL_F	16306	32	16307
// OP_DIV_F	16307	3036	16308
// OP_ADD_F	16303	16308	16309
// OP_STORE_F	16309	16249	0
// OP_STORE_V	16246	4	0
// OP_STORE_V	16247	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	16246	4	0
// OP_LOAD_V	16245	134	16310
// OP_STORE_V	16310	7	0
// OP_LOAD_V	16245	138	16313
// OP_STORE_V	16313	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	16246	113	16316
// OP_LOAD_V	16245	113	16319
// OP_STOREP_V	16319	16316	0
// OP_DONE	0	0	0
void (entity globaldef005704) func002268 = 
{
    local entity globaldef005705;
    local vector globaldef005706;
    local float globaldef005710;
    local float globaldef005711;
    globaldef005705 = GetClientEntity(globaldef005704.clientnumber);
    
    if(!globaldef005705)
    {
        objerror("bot with invalid client number");
    }
    
    func002267(globaldef005705, globaldef005704);
    globaldef005704.skin = FALSE;
    globaldef005704.modelindex = FALSE;
    globaldef005705.frame = globaldef005704.frame;
    globaldef005705.items = globaldef005704.items;
    globaldef005705.effects = globaldef005704.effects;
    globaldef005705.angles = globaldef005704.angles;
    globaldef005705.v_angle = globaldef005704.v_angle;
    globaldef005705.colormap = globaldef005704.clientnumber + TRUE;
    globaldef005706 = globaldef005704.origin;
    
    if(globaldef005704.botflags & globaldef000695)
    {
        if((globaldef005705.origin_z >= (globaldef005704.origin_z - TRUE)) || (!(globaldef005704.botflags & globaldef000683)))
        {
            globaldef005704.botflags = globaldef005704.botflags - globaldef000695;
        }
        else
        {
            
            if((globaldef005705.origin_z - globaldef005704.origin_z) <= globaldef005704.mins_z)
            {
                globaldef005705.origin_z = globaldef005704.origin_z + globaldef005704.mins_z;
            }
            
            globaldef005706_z = globaldef005705.origin_z + (((globaldef005704.origin_z - globaldef005705.origin_z) * frametime) / 0.1);
        }
        
    }
    
    setorigin(globaldef005705, globaldef005706);
    setsize(globaldef005705, globaldef005704.mins, globaldef005704.maxs);
    globaldef005705.velocity = globaldef005704.velocity;
};


// func002269
// function begins at statement 27535, parm_start=16323
// OP_STORE_ENT	28	16324	0
// OP_STORE_ENT	16323	28	0
// OP_CALL0	8749	0	0
// OP_STORE_ENT	16324	28	0
// OP_DONE	0	0	0
void (entity globaldef005714) func002269 = 
{
    local entity globaldef005715;
    globaldef005715 = self;
    self = globaldef005714;
    CheckWaterJump();
    self = globaldef005715;
};


// func002270
// function begins at statement 27540, parm_start=16326
// OP_STORE_ENT	28	16327	0
// OP_STORE_ENT	16326	28	0
// OP_CALL0	8657	0	0
// OP_STORE_ENT	16327	28	0
// OP_DONE	0	0	0
void (entity globaldef005717) func002270 = 
{
    local entity globaldef005718;
    globaldef005718 = self;
    self = globaldef005717;
    WaterMove();
    self = globaldef005718;
};


// func002271
// function begins at statement 27545, parm_start=16329
// OP_LOAD_F	16329	575	16338
// OP_BITAND	16338	700	16339
// OP_IFNOT	16339	36	0
// OP_LOAD_V	16329	113	16340
// OP_STORE_V	16340	16335	0
// OP_STORE_F	213	16337	0
// OP_STORE_V	16335	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	16333	0
// OP_IFNOT	16333	29	0
// OP_STORE_V	16343	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	16330	0
// OP_STORE_V	16344	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	16331	0
// OP_LT	16333	16331	16345
// OP_IFNOT	16345	3	0
// OP_STORE_F	16331	16332	0
// OP_GOTO	2	0	0
// OP_STORE_F	16333	16332	0
// OP_MUL_F	3036	16332	16346
// OP_MUL_F	16346	16330	16347
// OP_SUB_F	16333	16347	16348
// OP_STORE_F	16348	16334	0
// OP_LT	16334	213	16349
// OP_IFNOT	16349	2	0
// OP_STORE_F	213	16334	0
// OP_DIV_F	16334	16333	16350
// OP_STORE_F	16350	16334	0
// OP_ADDRESS	16329	114	16351
// OP_LOAD_F	16329	114	16352
// OP_MUL_F	16352	16334	16353
// OP_STOREP_F	16353	16351	0
// OP_ADDRESS	16329	115	16354
// OP_LOAD_F	16329	115	16355
// OP_MUL_F	16355	16334	16356
// OP_STOREP_F	16356	16354	0
// OP_DONE	0	0	0
void (entity globaldef005720) func002271 = 
{
    local float globaldef005721;
    local float globaldef005722;
    local float globaldef005723;
    local float globaldef005724;
    local float globaldef005725;
    local vector globaldef005726;
    
    if(globaldef005720.botflags & globaldef000683)
    {
        globaldef005726 = globaldef005720.velocity;
        globaldef005726_z = FALSE;
        globaldef005724 = vlen(globaldef005726);
        
        if(globaldef005724)
        {
            globaldef005721 = cvar("sv_friction");
            globaldef005722 = cvar("sv_stopspeed");
            if(globaldef005724 < globaldef005722)
            {
                globaldef005723 = globaldef005722;
            }
            else
            {
                globaldef005723 = globaldef005724;
            }
            
            globaldef005725 = globaldef005724 - ((0.1 * globaldef005723) * globaldef005721);
            
            if(globaldef005725 < FALSE)
            {
                globaldef005725 = FALSE;
            }
            
            globaldef005725 = globaldef005725 / globaldef005724;
            globaldef005720.velocity_x = globaldef005720.velocity_x * globaldef005725;
            globaldef005720.velocity_y = globaldef005720.velocity_y * globaldef005725;
        }
        
    }
    
};


// func002272
// function begins at statement 27584, parm_start=16358
// OP_LOAD_V	16358	105	16363
// OP_STORE_V	16363	16360	0
// OP_LOAD_F	16358	137	16366
// OP_ADD_F	16362	16366	16367
// OP_ADD_F	16367	214	16368
// OP_STORE_F	16368	16362	0
// OP_STORE_V	16360	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	16359	0
// OP_EQ_F	16359	276	16369
// OP_IFNOT	16369	6	0
// OP_ADDRESS	16358	190	16370
// OP_STOREP_F	276	16370	0
// OP_ADDRESS	16358	189	16371
// OP_STOREP_F	213	16371	0
// OP_RETURN	0	0	0
// OP_ADDRESS	16358	190	16372
// OP_STOREP_F	16359	16372	0
// OP_ADDRESS	16358	189	16373
// OP_STOREP_F	214	16373	0
// OP_ADD_F	16362	308	16374
// OP_STORE_F	16374	16362	0
// OP_STORE_V	16360	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	16359	0
// OP_EQ_F	16359	276	16375
// OP_IFNOT	16375	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	16358	189	16376
// OP_STOREP_F	216	16376	0
// OP_ADD_F	16362	6133	16377
// OP_STORE_F	16377	16362	0
// OP_STORE_V	16360	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	16359	0
// OP_NE_F	16359	276	16378
// OP_IFNOT	16378	3	0
// OP_ADDRESS	16358	189	16379
// OP_STOREP_F	228	16379	0
// OP_DONE	0	0	0
void (entity globaldef005733) func002272 = 
{
    local float globaldef005734;
    local vector globaldef005735;
    globaldef005735 = globaldef005733.origin;
    globaldef005735_z = (globaldef005735_z + globaldef005733.mins_z) + TRUE;
    globaldef005734 = pointcontents(globaldef005735);
    
    if(globaldef005734 == CONTENT_EMPTY)
    {
        globaldef005733.watertype = CONTENT_EMPTY;
        globaldef005733.waterlevel = FALSE;
        return;
    }
    
    globaldef005733.watertype = globaldef005734;
    globaldef005733.waterlevel = TRUE;
    globaldef005735_z = globaldef005735_z + SVC_FOUNDSECRET;
    globaldef005734 = pointcontents(globaldef005735);
    
    if(globaldef005734 == CONTENT_EMPTY)
    {
        return;
    }
    
    globaldef005733.waterlevel = FL_SWIM;
    globaldef005735_z = globaldef005735_z + 18;
    globaldef005734 = pointcontents(globaldef005735);
    
    if(globaldef005734 != CONTENT_EMPTY)
    {
        globaldef005733.waterlevel = MOVETYPE_WALK;
    }
    
};


// func002273
// function begins at statement 27624, parm_start=16380
// OP_ADDRESS	16380	575	16387
// OP_LOAD_F	16380	575	16388
// OP_LOAD_F	16380	575	16389
// OP_BITAND	16389	702	16390
// OP_SUB_F	16388	16390	16391
// OP_STOREP_F	16391	16387	0
// OP_ADDRESS	16380	575	16392
// OP_LOAD_F	16380	575	16393
// OP_LOAD_F	16380	575	16394
// OP_BITAND	16394	700	16395
// OP_SUB_F	16393	16395	16396
// OP_STOREP_F	16396	16392	0
// OP_STORE_V	829	4	0
// OP_LOAD_V	16380	134	16397
// OP_STORE_V	16397	7	0
// OP_LOAD_V	16380	138	16400
// OP_STORE_V	16400	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	829	4	0
// OP_LOAD_V	16380	105	16403
// OP_STORE_V	16403	7	0
// OP_CALL2	453	0	0
// OP_LOAD_ENT	16380	201	16406
// OP_STORE_ENT	16406	16386	0
// OP_ADDRESS	16380	201	16407
// OP_STOREP_ENT	829	16407	0
// OP_STORE_ENT	28	16385	0
// OP_STORE_ENT	829	28	0
// OP_CALL0	481	0	0
// OP_STORE_F	1	16381	0
// OP_STORE_ENT	16385	28	0
// OP_ADDRESS	16380	201	16408
// OP_STOREP_ENT	16386	16408	0
// OP_NOT_F	16381	0	16409
// OP_IFNOT	16409	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	16380	108	16410
// OP_LOAD_F	829	108	16411
// OP_SUB_F	16410	16411	16412
// OP_STORE_V	16412	4	0
// OP_CALL1	488	0	0
// OP_LE	1	539	16413
// OP_IFNOT	16413	16	0
// OP_ADDRESS	16380	575	16414
// OP_LOAD_F	16380	575	16415
// OP_BITOR	16415	700	16416
// OP_STOREP_F	16416	16414	0
// OP_ADDRESS	16380	151	16417
// OP_LOAD_ENT	829	151	16418
// OP_STOREP_ENT	16418	16417	0
// OP_LOAD_ENT	829	151	16419
// OP_EQ_E	16419	30	16420
// OP_IFNOT	16420	5	0
// OP_ADDRESS	16380	575	16421
// OP_LOAD_F	16380	575	16422
// OP_BITOR	16422	702	16423
// OP_STOREP_F	16423	16421	0
// OP_GOTO	3	0	0
// OP_ADDRESS	16380	151	16424
// OP_STOREP_ENT	30	16424	0
// OP_DONE	0	0	0
void (entity globaldef005739) func002273 = 
{
    local float globaldef005740;
    local vector globaldef005741;
    local entity globaldef005745;
    local entity globaldef005746;
    globaldef005739.botflags = globaldef005739.botflags - (globaldef005739.botflags & globaldef000685);
    globaldef005739.botflags = globaldef005739.botflags - (globaldef005739.botflags & globaldef000683);
    setsize(floorTestEnt, globaldef005739.mins, globaldef005739.maxs);
    setorigin(floorTestEnt, globaldef005739.origin);
    globaldef005746 = globaldef005739.owner;
    globaldef005739.owner = floorTestEnt;
    globaldef005745 = self;
    self = floorTestEnt;
    globaldef005740 = droptofloor();
    self = globaldef005745;
    globaldef005739.owner = globaldef005746;
    
    if(!globaldef005740)
    {
        return;
    }
    
    if((fabs(globaldef005739.origin_z - floorTestEnt.origin_z)) <= RA_PLAYERSTATTIME)
    {
        globaldef005739.botflags = globaldef005739.botflags | globaldef000683;
        globaldef005739.groundentity = floorTestEnt.groundentity;
        
        if(floorTestEnt.groundentity == world)
        {
            globaldef005739.botflags = globaldef005739.botflags | globaldef000685;
        }
        
    }
    else
    {
        globaldef005739.groundentity = world;
    }
    
};

