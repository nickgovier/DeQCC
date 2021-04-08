
// func000665
// function begins at statement 18229, parm_start=12313
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	12313
// OP_STORE_V	12313	7	0
// OP_STORE_V	746	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	4216	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	5358	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	12314
// OP_STORE_V	12314	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	12315
// OP_STORE_V	12315	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	12316
// OP_STORE_V	12316	7	0
// OP_CALL2	500	0	0
// OP_ADDRESS	28	113	12317
// OP_STOREP_V	286	12317	0
// OP_ADDRESS	28	146	12320
// OP_STOREP_FNC	519	12320	0
// OP_STORE_V	28	4	0
// OP_STORE_V	5709	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	104	12321
// OP_STOREP_F	237	12321	0
// OP_CALL0	5697	0	0
// OP_DONE	0	0	0
void () func000665 = 
{
    T_RadiusDamage(self, self.owner, GLOBALDEFSEVENTWONINE, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", TRUE, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.velocity = VEC_ORIGIN;
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    func000264();
};


// func000666
// function begins at statement 18270, parm_start=12323
// OP_LOAD_ENT	28	201	12323
// OP_EQ_E	29	12323	12324
// OP_IFNOT	12324	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	12325
// OP_EQ_F	12325	252	12326
// OP_IFNOT	12326	3	0
// OP_CALL0	12312	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	5368	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	113	12327
// OP_EQ_V	12327	286	12330
// OP_IFNOT	12330	3	0
// OP_ADDRESS	28	121	12331
// OP_STOREP_V	286	12331	0
// OP_DONE	0	0	0
void () func000666 = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage == DAMAGE_AIM)
    {
        func000665();
        return;
    }
    
    sound(self, CHAN_VOICE, "weapons/bounce.wav", TRUE, ATTN_NORM);
    
    if(self.velocity == VEC_ORIGIN)
    {
        self.avelocity = VEC_ORIGIN;
    }
    
};


// func000667
// function begins at statement 18291, parm_start=12335
// OP_ADDRESS	28	133	12337
// OP_LOAD_F	28	133	12338
// OP_BITOR	12338	339	12339
// OP_STOREP_F	12339	12337	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5367	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	12335	0
// OP_ADDRESS	12335	201	12340
// OP_STOREP_ENT	28	12340	0
// OP_ADDRESS	12335	103	12341
// OP_STOREP_F	235	12341	0
// OP_ADDRESS	12335	104	12342
// OP_STOREP_F	239	12342	0
// OP_LOAD_V	28	117	12343
// OP_STORE_V	12343	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	12335	113	12346
// OP_LOAD_ENT	28	181	12349
// OP_LOAD_V	12349	105	12350
// OP_LOAD_V	28	105	12353
// OP_SUB_V	12350	12353	12356
// OP_STORE_V	12356	4	0
// OP_CALL1	459	0	0
// OP_STOREP_V	1	12346	0
// OP_ADDRESS	12335	113	12359
// OP_LOAD_V	12335	113	12362
// OP_MUL_VF	12362	740	12365
// OP_STOREP_V	12365	12359	0
// OP_ADDRESS	12335	116	12368
// OP_STOREP_F	2044	12368	0
// OP_ADDRESS	12335	121	12369
// OP_STOREP_V	5998	12369	0
// OP_ADDRESS	12335	117	12372
// OP_LOAD_V	12335	113	12375
// OP_STORE_V	12375	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	12372	0
// OP_ADDRESS	12335	146	12378
// OP_STOREP_FNC	12322	12378	0
// OP_ADDRESS	12335	150	12379
// OP_ADD_F	31	6009	12380
// OP_STOREP_F	12380	12379	0
// OP_ADDRESS	12335	148	12381
// OP_STOREP_FNC	12312	12381	0
// OP_STORE_V	12335	4	0
// OP_STORE_V	6012	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	12335	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	12335	4	0
// OP_LOAD_V	28	105	12382
// OP_STORE_V	12382	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void () func000667 = 
{
    local entity globaldef003659;
    local entity globaldef003660;
    self.effects = self.effects | EF_MUZZLEFLASH;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", TRUE, ATTN_NORM);
    globaldef003659 = spawn();
    globaldef003659.owner = self;
    globaldef003659.movetype = MOVETYPE_BOUNCE;
    globaldef003659.solid = SOLID_BBOX;
    makevectors(self.angles);
    globaldef003659.velocity = normalize(self.enemy.origin - self.origin);
    globaldef003659.velocity = globaldef003659.velocity * GLOBALDEFSEVENTWOTHREE;
    globaldef003659.velocity_z = 200;
    globaldef003659.avelocity = '300 300 300';
    globaldef003659.angles = vectoangles(globaldef003659.velocity);
    globaldef003659.touch = func000666;
    globaldef003659.nextthink = time + 2.5;
    globaldef003659.think = func000665;
    setmodel(globaldef003659, "progs/grenade.mdl");
    setsize(globaldef003659, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef003659, self.origin);
};


// func000668
// function begins at statement 18352, parm_start=12386
// OP_LOAD_ENT	28	181	12391
// OP_NOT_ENT	12391	0	12392
// OP_IFNOT	12392	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	12393
// OP_STORE_V	12393	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	524	0	0
// OP_NOT_F	1	0	12394
// OP_IFNOT	12394	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_LOAD_ENT	28	181	12395
// OP_LOAD_V	12395	105	12396
// OP_LOAD_V	28	105	12399
// OP_SUB_V	12396	12399	12402
// OP_STORE_V	12402	12387	0
// OP_STORE_V	12387	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1997	12405
// OP_IFNOT	12405	2	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_CALL0	457	0	0
// OP_ADD_F	1	1	12406
// OP_CALL0	457	0	0
// OP_ADD_F	12406	1	12407
// OP_MUL_F	12407	229	12408
// OP_STORE_F	12408	12390	0
// OP_LOAD_ENT	28	181	12409
// OP_STORE_V	12409	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	12390	13	0
// OP_CALL4	522	0	0
// OP_IFNOT	12386	23	0
// OP_LOAD_V	28	117	12410
// OP_STORE_V	12410	4	0
// OP_CALL1	452	0	0
// OP_EQ_F	12386	214	12413
// OP_IFNOT	12413	11	0
// OP_LOAD_V	28	105	12414
// OP_MUL_VF	59	218	12417
// OP_ADD_V	12414	12417	12420
// OP_STORE_V	12420	4	0
// OP_CALL0	5370	0	0
// OP_MUL_F	1	1997	12423
// OP_MUL_FV	12423	65	12424
// OP_STORE_V	12424	7	0
// OP_CALL2	5444	0	0
// OP_GOTO	8	0	0
// OP_LOAD_V	28	105	12427
// OP_MUL_VF	59	218	12430
// OP_ADD_V	12427	12430	12433
// OP_STORE_V	12433	4	0
// OP_MUL_FV	12386	65	12436
// OP_STORE_V	12436	7	0
// OP_CALL2	5444	0	0
// OP_DONE	0	0	0
void (float globaldef003662) func000668 = 
{
    local vector globaldef003663;
    local float globaldef003667;
    
    if(!self.enemy)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    ai_charge(MOVETYPE_BOUNCE);
    globaldef003663 = self.enemy.origin - self.origin;
    
    if(vlen(globaldef003663) > 100)
    {
        return;
    }
    
    random();
    globaldef003667 = ((random() + random()) + random()) * MOVETYPE_STEP;
    T_Damage(self.enemy, self, self, globaldef003667);
    
    if(globaldef003662)
    {
        makevectors(self.angles);
        if(globaldef003662 == TRUE)
        {
            func000253(self.origin + (v_forward * FL_INWATER), (func000249() * 100) * v_right);
        }
        else
        {
            func000253(self.origin + (v_forward * FL_INWATER), globaldef003662 * v_right);
        }
        
    }
    
};


// func000669
// function begins at statement 18412, parm_start=12440
// OP_STATE	213	12440	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000669 = [0, func000670]
{
    ai_stand();
};


// func000670
// function begins at statement 18415, parm_start=12441
// OP_STATE	214	12441	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000670 = [1, func000671]
{
    ai_stand();
};


// func000671
// function begins at statement 18418, parm_start=12442
// OP_STATE	216	12442	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000671 = [2, func000672]
{
    ai_stand();
};


// func000672
// function begins at statement 18421, parm_start=12443
// OP_STATE	228	12443	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000672 = [3, func000673]
{
    ai_stand();
};


// func000673
// function begins at statement 18424, parm_start=12444
// OP_STATE	229	12444	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	12445
// OP_IFNOT	12445	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12446	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000673 = [4, func000674]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "ogre/ogidle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_stand();
};


// func000674
// function begins at statement 18436, parm_start=12447
// OP_STATE	230	12447	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000674 = [5, func000675]
{
    ai_stand();
};


// func000675
// function begins at statement 18439, parm_start=12448
// OP_STATE	231	12448	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000675 = [6, func000676]
{
    ai_stand();
};


// func000676
// function begins at statement 18442, parm_start=12449
// OP_STATE	232	12449	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000676 = [7, func000677]
{
    ai_stand();
};


// func000677
// function begins at statement 18445, parm_start=12450
// OP_STATE	217	12439	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func000677 = [8, func000669]
{
    ai_stand();
};


// func000678
// function begins at statement 18448, parm_start=12451
// OP_STATE	234	12451	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000678 = [9, func000679]
{
    ai_walk(MOVETYPE_WALK);
};


// func000679
// function begins at statement 18452, parm_start=12452
// OP_STATE	235	12452	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000679 = [10, func000680]
{
    ai_walk(FL_SWIM);
};


// func000680
// function begins at statement 18456, parm_start=12453
// OP_STATE	236	12453	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	12454
// OP_IFNOT	12454	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12446	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000680 = [11, func000681]
{
    ai_walk(FL_SWIM);
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "ogre/ogidle.wav", TRUE, ATTN_IDLE);
    }
    
};


// func000681
// function begins at statement 18469, parm_start=12455
// OP_STATE	791	12455	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000681 = [12, func000682]
{
    ai_walk(FL_SWIM);
};


// func000682
// function begins at statement 18473, parm_start=12456
// OP_STATE	792	12456	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000682 = [13, func000683]
{
    ai_walk(FL_SWIM);
};


// func000683
// function begins at statement 18477, parm_start=12457
// OP_STATE	5693	12457	0
// OP_STORE_V	230	4	0
// OP_CALL1	3794	0	0
// OP_CALL0	457	0	0
// OP_LT	1	3036	12458
// OP_IFNOT	12458	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3534	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000683 = [14, func000684]
{
    ai_walk(MOVETYPE_FLY);
    
    if(random() < 0.1)
    {
        sound(self, CHAN_VOICE, "ogre/ogdrag.wav", TRUE, ATTN_IDLE);
    }
    
};


// func000684
// function begins at statement 18490, parm_start=12459
// OP_STATE	765	12459	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000684 = [15, func000685]
{
    ai_walk(MOVETYPE_WALK);
};


// func000685
// function begins at statement 18494, parm_start=12460
// OP_STATE	218	12460	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000685 = [16, func000686]
{
    ai_walk(FL_SWIM);
};


// func000686
// function begins at statement 18498, parm_start=12461
// OP_STATE	6892	12461	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000686 = [17, func000687]
{
    ai_walk(MOVETYPE_WALK);
};


// func000687
// function begins at statement 18502, parm_start=12462
// OP_STATE	6133	12462	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000687 = [18, func000688]
{
    ai_walk(TRUE);
};


// func000688
// function begins at statement 18506, parm_start=12463
// OP_STATE	6895	12463	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000688 = [19, func000689]
{
    ai_walk(FL_SWIM);
};


// func000689
// function begins at statement 18510, parm_start=12464
// OP_STATE	2323	12464	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000689 = [20, func000690]
{
    ai_walk(MOVETYPE_WALK);
};


// func000690
// function begins at statement 18514, parm_start=12465
// OP_STATE	12465	12466	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000690 = [21, func000691]
{
    ai_walk(MOVETYPE_WALK);
};


// func000691
// function begins at statement 18518, parm_start=12467
// OP_STATE	12467	12468	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000691 = [22, func000692]
{
    ai_walk(MOVETYPE_WALK);
};


// func000692
// function begins at statement 18522, parm_start=12469
// OP_STATE	304	12469	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000692 = [23, func000693]
{
    ai_walk(MOVETYPE_WALK);
};


// func000693
// function begins at statement 18526, parm_start=12470
// OP_STATE	736	12450	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func000693 = [24, func000678]
{
    ai_walk(MOVETYPE_STEP);
};


// func000694
// function begins at statement 18530, parm_start=12471
// OP_STATE	305	12471	0
// OP_STORE_V	234	4	0
// OP_CALL1	3873	0	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	12472
// OP_IFNOT	12472	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12473	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000694 = [25, func000695]
{
    ai_run(MOVETYPE_FLYMISSILE);
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "ogre/ogidle2.wav", TRUE, ATTN_IDLE);
    }
    
};


// func000695
// function begins at statement 18543, parm_start=12474
// OP_STATE	306	12474	0
// OP_STORE_V	791	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000695 = [26, func000696]
{
    ai_run(globaldef000774);
};


// func000696
// function begins at statement 18547, parm_start=12475
// OP_STATE	307	12475	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000696 = [27, func000697]
{
    ai_run(FL_CLIENT);
};


// func000697
// function begins at statement 18551, parm_start=12476
// OP_STATE	308	12476	0
// OP_STORE_V	12467	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000697 = [28, func000698]
{
    ai_run(22);
};


// func000698
// function begins at statement 18555, parm_start=12477
// OP_STATE	9664	12477	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000698 = [29, func000699]
{
    ai_run(FL_INWATER);
};


// func000699
// function begins at statement 18559, parm_start=12478
// OP_STATE	309	12478	0
// OP_STORE_V	229	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000699 = [30, func000700]
{
    ai_run(MOVETYPE_STEP);
};


// func000700
// function begins at statement 18563, parm_start=12479
// OP_STATE	310	12479	0
// OP_STORE_V	792	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000700 = [31, func000701]
{
    ai_run(globaldef000775);
};


// func000701
// function begins at statement 18567, parm_start=12480
// OP_STATE	219	12470	0
// OP_STORE_V	736	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func000701 = [32, func000694]
{
    ai_run(globaldef000719);
};

