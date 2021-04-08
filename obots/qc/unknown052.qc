
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
    func000202(self, self.owner, globaldef000729, world);
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


// ogre_swing1
// function begins at statement 18571, parm_start=12480
// OP_STATE	312	12480	0
// OP_STORE_V	236	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	12481	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () ogre_swing1 = [33, func000703]
{
    ai_charge(MOVETYPE_BOUNCEMISSILE);
    sound(self, CHAN_WEAPON, "ogre/ogsawatk.wav", TRUE, ATTN_NORM);
};


// func000703
// function begins at statement 18581, parm_start=12482
// OP_STATE	9671	12482	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000703 = [34, func000704]
{
    ai_charge(TRUE);
};


// func000704
// function begins at statement 18585, parm_start=12483
// OP_STATE	5878	12483	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000704 = [35, func000705]
{
    ai_charge(MOVETYPE_STEP);
};


// func000705
// function begins at statement 18589, parm_start=12484
// OP_STATE	9655	12484	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000705 = [36, func000706]
{
    ai_charge(globaldef000775);
};


// func000706
// function begins at statement 18593, parm_start=12485
// OP_STATE	9657	12485	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12486
// OP_LOAD_F	28	119	12487
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12488
// OP_ADD_F	12487	12488	12489
// OP_STOREP_F	12489	12486	0
// OP_DONE	0	0	0
void () func000706 = [37, func000707]
{
    ai_charge(MOVETYPE_FLYMISSILE);
    func000668(FALSE);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000707
// function begins at statement 18605, parm_start=12490
// OP_STATE	9659	12490	0
// OP_STORE_V	2044	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12491
// OP_LOAD_F	28	119	12492
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12493
// OP_ADD_F	12492	12493	12494
// OP_STOREP_F	12494	12491	0
// OP_DONE	0	0	0
void () func000707 = [38, func000708]
{
    func000668(200);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000708
// function begins at statement 18615, parm_start=12495
// OP_STATE	9661	12495	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12496
// OP_LOAD_F	28	119	12497
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12498
// OP_ADD_F	12497	12498	12499
// OP_STOREP_F	12499	12496	0
// OP_DONE	0	0	0
void () func000708 = [39, func000709]
{
    func000668(FALSE);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000709
// function begins at statement 18625, parm_start=12500
// OP_STATE	746	12500	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12501
// OP_LOAD_F	28	119	12502
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12503
// OP_ADD_F	12502	12503	12504
// OP_STOREP_F	12504	12501	0
// OP_DONE	0	0	0
void () func000709 = [40, func000710]
{
    func000668(FALSE);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000710
// function begins at statement 18635, parm_start=12505
// OP_STATE	9993	12505	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12506
// OP_LOAD_F	28	119	12507
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12508
// OP_ADD_F	12507	12508	12509
// OP_STOREP_F	12509	12506	0
// OP_DONE	0	0	0
void () func000710 = [41, func000711]
{
    func000668(FALSE);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000711
// function begins at statement 18645, parm_start=12510
// OP_STATE	9995	12510	0
// OP_STORE_V	9761	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12511
// OP_LOAD_F	28	119	12512
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12513
// OP_ADD_F	12512	12513	12514
// OP_STOREP_F	12514	12511	0
// OP_DONE	0	0	0
void () func000711 = [42, func000712]
{
    func000668(-200);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000712
// function begins at statement 18655, parm_start=12515
// OP_STATE	9997	12515	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	119	12516
// OP_LOAD_F	28	119	12517
// OP_CALL0	457	0	0
// OP_MUL_F	1	305	12518
// OP_ADD_F	12517	12518	12519
// OP_STOREP_F	12519	12516	0
// OP_DONE	0	0	0
void () func000712 = [43, func000713]
{
    func000668(FALSE);
    self.angles_y = self.angles_y + (random() * SVC_SIGNONNUM);
};


// func000713
// function begins at statement 18665, parm_start=12520
// OP_STATE	9999	12520	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000713 = [44, func000714]
{
    ai_charge(MOVETYPE_WALK);
};


// func000714
// function begins at statement 18669, parm_start=12521
// OP_STATE	2598	12521	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000714 = [45, func000715]
{
    ai_charge(FL_CLIENT);
};


// func000715
// function begins at statement 18673, parm_start=12522
// OP_STATE	10002	12470	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000715 = [46, func000694]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};


// ogre_smash1
// function begins at statement 18677, parm_start=12522
// OP_STATE	10004	12522	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	12481	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () ogre_smash1 = [47, func000717]
{
    ai_charge(MOVETYPE_TOSS);
    sound(self, CHAN_WEAPON, "ogre/ogsawatk.wav", TRUE, ATTN_NORM);
};


// func000717
// function begins at statement 18687, parm_start=12523
// OP_STATE	10006	12523	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000717 = [48, func000718]
{
    ai_charge(FALSE);
};


// func000718
// function begins at statement 18691, parm_start=12524
// OP_STATE	10008	12524	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000718 = [49, func000719]
{
    ai_charge(FALSE);
};


// func000719
// function begins at statement 18695, parm_start=12525
// OP_STATE	1470	12525	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000719 = [50, func000720]
{
    ai_charge(TRUE);
};


// func000720
// function begins at statement 18699, parm_start=12526
// OP_STATE	9911	12526	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000720 = [51, func000721]
{
    ai_charge(MOVETYPE_STEP);
};


// func000721
// function begins at statement 18703, parm_start=12527
// OP_STATE	9913	12527	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_DONE	0	0	0
void () func000721 = [52, func000722]
{
    ai_charge(MOVETYPE_STEP);
    func000668(FALSE);
};


// func000722
// function begins at statement 18709, parm_start=12528
// OP_STATE	9915	12528	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_DONE	0	0	0
void () func000722 = [53, func000723]
{
    ai_charge(MOVETYPE_STEP);
    func000668(FALSE);
};


// func000723
// function begins at statement 18715, parm_start=12529
// OP_STATE	9917	12529	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_DONE	0	0	0
void () func000723 = [54, func000724]
{
    ai_charge(MOVETYPE_BOUNCE);
    func000668(FALSE);
};


// func000724
// function begins at statement 18721, parm_start=12530
// OP_STATE	9919	12530	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_DONE	0	0	0
void () func000724 = [55, func000725]
{
    ai_charge(globaldef000775);
    func000668(FALSE);
};


// func000725
// function begins at statement 18727, parm_start=12531
// OP_STATE	9921	12531	0
// OP_STORE_V	214	4	0
// OP_CALL1	12385	0	0
// OP_DONE	0	0	0
void () func000725 = [56, func000726]
{
    func000668(TRUE);
};


// func000726
// function begins at statement 18731, parm_start=12532
// OP_STATE	9923	12532	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_STORE_V	213	4	0
// OP_CALL1	12385	0	0
// OP_ADDRESS	28	150	12533
// OP_LOAD_F	28	150	12534
// OP_CALL0	457	0	0
// OP_MUL_F	1	3267	12535
// OP_ADD_F	12534	12535	12536
// OP_STOREP_F	12536	12533	0
// OP_DONE	0	0	0
void () func000726 = [57, func000727]
{
    ai_charge(FL_SWIM);
    func000668(FALSE);
    self.nextthink = self.nextthink + (random() * 0.2);
};


// func000727
// function begins at statement 18743, parm_start=12537
// OP_STATE	9925	12537	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000727 = [58, func000728]
{
    ai_charge(MOVETYPE_WALK);
};


// func000728
// function begins at statement 18747, parm_start=12538
// OP_STATE	2783	12538	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000728 = [59, func000729]
{
    ai_charge(MOVETYPE_STEP);
};


// func000729
// function begins at statement 18751, parm_start=12539
// OP_STATE	2019	12470	0
// OP_STORE_V	791	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func000729 = [60, func000694]
{
    ai_charge(globaldef000774);
};


// func000730
// function begins at statement 18755, parm_start=12540
// OP_STATE	9928	12540	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000730 = [61, func000731]
{
    ai_face();
};


// func000731
// function begins at statement 18758, parm_start=12541
// OP_STATE	9930	12541	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000731 = [62, func000732]
{
    ai_face();
};


// func000732
// function begins at statement 18761, parm_start=12542
// OP_STATE	9930	12542	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000732 = [62, func000733]
{
    ai_face();
};


// func000733
// function begins at statement 18764, parm_start=12543
// OP_STATE	6707	12543	0
// OP_CALL0	3190	0	0
// OP_CALL0	12334	0	0
// OP_DONE	0	0	0
void () func000733 = [63, func000734]
{
    ai_face();
    func000667();
};


// func000734
// function begins at statement 18768, parm_start=12544
// OP_STATE	220	12544	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000734 = [64, func000735]
{
    ai_face();
};


// func000735
// function begins at statement 18771, parm_start=12545
// OP_STATE	9934	12545	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000735 = [65, func000736]
{
    ai_face();
};


// func000736
// function begins at statement 18774, parm_start=12546
// OP_STATE	9936	12470	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func000736 = [66, func000694]
{
    ai_face();
};


// func000737
// function begins at statement 18777, parm_start=12547
// OP_STATE	9938	12547	0
// OP_DONE	0	0	0
void () func000737 = [67, func000738]
{
};


// func000738
// function begins at statement 18779, parm_start=12548
// OP_STATE	8193	12548	0
// OP_DONE	0	0	0
void () func000738 = [68, func000739]
{
};


// func000739
// function begins at statement 18781, parm_start=12549
// OP_STATE	8196	12549	0
// OP_DONE	0	0	0
void () func000739 = [69, func000740]
{
};


// func000740
// function begins at statement 18783, parm_start=12550
// OP_STATE	1536	12550	0
// OP_DONE	0	0	0
void () func000740 = [70, func000741]
{
};


// func000741
// function begins at statement 18785, parm_start=12551
// OP_STATE	8201	12470	0
// OP_DONE	0	0	0
void () func000741 = [71, func000694]
{
};


// func000742
// function begins at statement 18787, parm_start=12552
// OP_STATE	9943	12552	0
// OP_DONE	0	0	0
void () func000742 = [72, func000743]
{
};


// func000743
// function begins at statement 18789, parm_start=12553
// OP_STATE	5487	12553	0
// OP_DONE	0	0	0
void () func000743 = [73, func000744]
{
};


// func000744
// function begins at statement 18791, parm_start=12554
// OP_STATE	9946	12470	0
// OP_DONE	0	0	0
void () func000744 = [74, func000694]
{
};


// func000745
// function begins at statement 18793, parm_start=12555
// OP_STATE	9173	12555	0
// OP_DONE	0	0	0
void () func000745 = [75, func000746]
{
};


// func000746
// function begins at statement 18795, parm_start=12556
// OP_STATE	9949	12556	0
// OP_DONE	0	0	0
void () func000746 = [76, func000747]
{
};


// func000747
// function begins at statement 18797, parm_start=12557
// OP_STATE	9951	12557	0
// OP_DONE	0	0	0
void () func000747 = [77, func000748]
{
};


// func000748
// function begins at statement 18799, parm_start=12558
// OP_STATE	9953	12558	0
// OP_DONE	0	0	0
void () func000748 = [78, func000749]
{
};


// func000749
// function begins at statement 18801, parm_start=12559
// OP_STATE	9955	12559	0
// OP_DONE	0	0	0
void () func000749 = [79, func000750]
{
};


// func000750
// function begins at statement 18803, parm_start=12560
// OP_STATE	2805	12470	0
// OP_DONE	0	0	0
void () func000750 = [80, func000694]
{
};


// func000751
// function begins at statement 18805, parm_start=12561
// OP_STATE	8204	12561	0
// OP_DONE	0	0	0
void () func000751 = [81, func000752]
{
};


// func000752
// function begins at statement 18807, parm_start=12562
// OP_STATE	9959	12562	0
// OP_STORE_V	235	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func000752 = [82, func000753]
{
    ai_pain(MOVETYPE_BOUNCE);
};


// func000753
// function begins at statement 18811, parm_start=12563
// OP_STATE	9961	12563	0
// OP_STORE_V	234	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func000753 = [83, func000754]
{
    ai_pain(MOVETYPE_FLYMISSILE);
};


// func000754
// function begins at statement 18815, parm_start=12564
// OP_STATE	7694	12564	0
// OP_STORE_V	229	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func000754 = [84, func000755]
{
    ai_pain(MOVETYPE_STEP);
};


// func000755
// function begins at statement 18819, parm_start=12565
// OP_STATE	9963	12565	0
// OP_DONE	0	0	0
void () func000755 = [85, func000756]
{
};


// func000756
// function begins at statement 18821, parm_start=12566
// OP_STATE	9965	12566	0
// OP_DONE	0	0	0
void () func000756 = [86, func000757]
{
};


// func000757
// function begins at statement 18823, parm_start=12567
// OP_STATE	9967	12567	0
// OP_DONE	0	0	0
void () func000757 = [87, func000758]
{
};


// func000758
// function begins at statement 18825, parm_start=12568
// OP_STATE	9969	12568	0
// OP_DONE	0	0	0
void () func000758 = [88, func000759]
{
};


// func000759
// function begins at statement 18827, parm_start=12569
// OP_STATE	9971	12569	0
// OP_DONE	0	0	0
void () func000759 = [89, func000760]
{
};


// func000760
// function begins at statement 18829, parm_start=12570
// OP_STATE	2658	12570	0
// OP_DONE	0	0	0
void () func000760 = [90, func000761]
{
};


// func000761
// function begins at statement 18831, parm_start=12571
// OP_STATE	9974	12571	0
// OP_DONE	0	0	0
void () func000761 = [91, func000762]
{
};


// func000762
// function begins at statement 18833, parm_start=12572
// OP_STATE	9976	12572	0
// OP_DONE	0	0	0
void () func000762 = [92, func000763]
{
};


// func000763
// function begins at statement 18835, parm_start=12573
// OP_STATE	9978	12573	0
// OP_DONE	0	0	0
void () func000763 = [93, func000764]
{
};


// func000764
// function begins at statement 18837, parm_start=12574
// OP_STATE	9979	12574	0
// OP_DONE	0	0	0
void () func000764 = [94, func000765]
{
};


// func000765
// function begins at statement 18839, parm_start=12575
// OP_STATE	9981	12575	0
// OP_DONE	0	0	0
void () func000765 = [95, func000766]
{
};


// func000766
// function begins at statement 18841, parm_start=12576
// OP_STATE	9983	12470	0
// OP_DONE	0	0	0
void () func000766 = [96, func000694]
{
};


// func000767
// function begins at statement 18843, parm_start=12577
// OP_STATE	9985	12577	0
// OP_DONE	0	0	0
void () func000767 = [97, func000768]
{
};


// func000768
// function begins at statement 18845, parm_start=12578
// OP_STATE	9987	12578	0
// OP_STORE_V	235	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func000768 = [98, func000769]
{
    ai_pain(MOVETYPE_BOUNCE);
};


// func000769
// function begins at statement 18849, parm_start=12579
// OP_STATE	9989	12579	0
// OP_STORE_V	234	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func000769 = [99, func000770]
{
    ai_pain(MOVETYPE_FLYMISSILE);
};


// func000770
// function begins at statement 18853, parm_start=12580
// OP_STATE	1997	12580	0
// OP_STORE_V	229	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func000770 = [100, func000771]
{
    ai_pain(MOVETYPE_STEP);
};


// func000771
// function begins at statement 18857, parm_start=12581
// OP_STATE	8107	12581	0
// OP_DONE	0	0	0
void () func000771 = [101, func000772]
{
};


// func000772
// function begins at statement 18859, parm_start=12582
// OP_STATE	8109	12582	0
// OP_DONE	0	0	0
void () func000772 = [102, func000773]
{
};


// func000773
// function begins at statement 18861, parm_start=12583
// OP_STATE	8111	12583	0
// OP_DONE	0	0	0
void () func000773 = [103, func000774]
{
};


// func000774
// function begins at statement 18863, parm_start=12584
// OP_STATE	8114	12584	0
// OP_DONE	0	0	0
void () func000774 = [104, func000775]
{
};


// func000775
// function begins at statement 18865, parm_start=12585
// OP_STATE	9562	12585	0
// OP_DONE	0	0	0
void () func000775 = [105, func000776]
{
};


// func000776
// function begins at statement 18867, parm_start=12586
// OP_STATE	9577	12586	0
// OP_DONE	0	0	0
void () func000776 = [106, func000777]
{
};


// func000777
// function begins at statement 18869, parm_start=12587
// OP_STATE	9591	12587	0
// OP_DONE	0	0	0
void () func000777 = [107, func000778]
{
};


// func000778
// function begins at statement 18871, parm_start=12588
// OP_STATE	9597	12588	0
// OP_DONE	0	0	0
void () func000778 = [108, func000779]
{
};


// func000779
// function begins at statement 18873, parm_start=12589
// OP_STATE	9600	12589	0
// OP_DONE	0	0	0
void () func000779 = [109, func000780]
{
};


// func000780
// function begins at statement 18875, parm_start=12590
// OP_STATE	9603	12590	0
// OP_DONE	0	0	0
void () func000780 = [110, func000781]
{
};


// func000781
// function begins at statement 18877, parm_start=12591
// OP_STATE	2224	12470	0
// OP_DONE	0	0	0
void () func000781 = [111, func000694]
{
};


// func000782
// function begins at statement 18879, parm_start=12592
// OP_LOAD_F	28	379	12595
// OP_GT	12595	31	12596
// OP_IFNOT	12596	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12597	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	12594	0
// OP_LT	12594	6277	12598
// OP_IFNOT	12598	6	0
// OP_CALL0	12546	0	0
// OP_ADDRESS	28	379	12599
// OP_ADD_F	31	214	12600
// OP_STOREP_F	12600	12599	0
// OP_GOTO	26	0	0
// OP_LT	12594	539	12601
// OP_IFNOT	12601	6	0
// OP_CALL0	12551	0	0
// OP_ADDRESS	28	379	12602
// OP_ADD_F	31	214	12603
// OP_STOREP_F	12603	12602	0
// OP_GOTO	19	0	0
// OP_LT	12594	6280	12604
// OP_IFNOT	12604	6	0
// OP_CALL0	12554	0	0
// OP_ADDRESS	28	379	12605
// OP_ADD_F	31	214	12606
// OP_STOREP_F	12606	12605	0
// OP_GOTO	12	0	0
// OP_LT	12594	12607	12608
// OP_IFNOT	12608	6	0
// OP_CALL0	12560	0	0
// OP_ADDRESS	28	379	12609
// OP_ADD_F	31	216	12610
// OP_STOREP_F	12610	12609	0
// OP_GOTO	5	0	0
// OP_CALL0	12576	0	0
// OP_ADDRESS	28	379	12611
// OP_ADD_F	31	216	12612
// OP_STOREP_F	12612	12611	0
// OP_DONE	0	0	0
void (entity globaldef003785, float globaldef003786) func000782 = 
{
    local float globaldef003787;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "ogre/ogpain1.wav", TRUE, ATTN_NORM);
    globaldef003787 = random();
    if(globaldef003787 < 0.25)
    {
        func000737();
        self.pain_finished = time + TRUE;
    }
    else
    {
        if(globaldef003787 < globaldef000522)
        {
            func000742();
            self.pain_finished = time + TRUE;
        }
        else
        {
            if(globaldef003787 < 0.75)
            {
                func000745();
                self.pain_finished = time + TRUE;
            }
            else
            {
                if(globaldef003787 < 0.88)
                {
                    func000751();
                    self.pain_finished = time + FL_SWIM;
                }
                else
                {
                    func000767();
                    self.pain_finished = time + FL_SWIM;
                }
                
            }
            
        }
        
    }
    
};


// func000783
// function begins at statement 18924, parm_start=12614
// OP_STATE	9608	12614	0
// OP_DONE	0	0	0
void () func000783 = [112, func000784]
{
};


// func000784
// function begins at statement 18926, parm_start=12615
// OP_STATE	9473	12615	0
// OP_DONE	0	0	0
void () func000784 = [113, func000785]
{
};


// func000785
// function begins at statement 18928, parm_start=12616
// OP_STATE	9479	12616	0
// OP_ADDRESS	28	104	12617
// OP_STOREP_F	237	12617	0
// OP_ADDRESS	28	160	12618
// OP_STOREP_F	216	12618	0
// OP_CALL0	5177	0	0
// OP_DONE	0	0	0
void () func000785 = [114, func000786]
{
    self.solid = SOLID_NOT;
    self.ammo_rockets = FL_SWIM;
    func000244();
};


// func000786
// function begins at statement 18935, parm_start=12619
// OP_STATE	9482	12619	0
// OP_DONE	0	0	0
void () func000786 = [115, func000787]
{
};


// func000787
// function begins at statement 18937, parm_start=12620
// OP_STATE	9485	12620	0
// OP_DONE	0	0	0
void () func000787 = [116, func000788]
{
};


// func000788
// function begins at statement 18939, parm_start=12621
// OP_STATE	9488	12621	0
// OP_DONE	0	0	0
void () func000788 = [117, func000789]
{
};


// func000789
// function begins at statement 18941, parm_start=12622
// OP_STATE	9491	12622	0
// OP_DONE	0	0	0
void () func000789 = [118, func000790]
{
};


// func000790
// function begins at statement 18943, parm_start=12623
// OP_STATE	9493	12623	0
// OP_DONE	0	0	0
void () func000790 = [119, func000791]
{
};


// func000791
// function begins at statement 18945, parm_start=12624
// OP_STATE	3584	12624	0
// OP_DONE	0	0	0
void () func000791 = [120, func000792]
{
};


// func000792
// function begins at statement 18947, parm_start=12625
// OP_STATE	9498	12625	0
// OP_DONE	0	0	0
void () func000792 = [121, func000793]
{
};


// func000793
// function begins at statement 18949, parm_start=12626
// OP_STATE	9501	12626	0
// OP_DONE	0	0	0
void () func000793 = [122, func000794]
{
};


// func000794
// function begins at statement 18951, parm_start=12627
// OP_STATE	12627	12628	0
// OP_DONE	0	0	0
void () func000794 = [123, func000795]
{
};


// func000795
// function begins at statement 18953, parm_start=12629
// OP_STATE	12629	12630	0
// OP_DONE	0	0	0
void () func000795 = [124, func000796]
{
};


// func000796
// function begins at statement 18955, parm_start=12631
// OP_STATE	9503	12630	0
// OP_DONE	0	0	0
void () func000796 = [125, func000796]
{
};


// func000797
// function begins at statement 18957, parm_start=12632
// OP_STATE	9506	12632	0
// OP_DONE	0	0	0
void () func000797 = [126, func000798]
{
};


// func000798
// function begins at statement 18959, parm_start=12633
// OP_STATE	9509	12633	0
// OP_STORE_V	230	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func000798 = [127, func000799]
{
    ai_forward(MOVETYPE_FLY);
};


// func000799
// function begins at statement 18963, parm_start=12634
// OP_STATE	221	12634	0
// OP_ADDRESS	28	104	12635
// OP_STOREP_F	237	12635	0
// OP_ADDRESS	28	160	12636
// OP_STOREP_F	216	12636	0
// OP_CALL0	5177	0	0
// OP_DONE	0	0	0
void () func000799 = [128, func000800]
{
    self.solid = SOLID_NOT;
    self.ammo_rockets = FL_SWIM;
    func000244();
};


// func000800
// function begins at statement 18970, parm_start=12637
// OP_STATE	12637	12638	0
// OP_STORE_V	214	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func000800 = [129, func000801]
{
    ai_forward(TRUE);
};


// func000801
// function begins at statement 18974, parm_start=12639
// OP_STATE	12639	12640	0
// OP_STORE_V	228	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func000801 = [130, func000802]
{
    ai_forward(MOVETYPE_WALK);
};


// func000802
// function begins at statement 18978, parm_start=12641
// OP_STATE	9513	12641	0
// OP_STORE_V	232	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func000802 = [131, func000803]
{
    ai_forward(MOVETYPE_PUSH);
};


// func000803
// function begins at statement 18982, parm_start=12642
// OP_STATE	9516	12642	0
// OP_STORE_V	305	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func000803 = [132, func000804]
{
    ai_forward(SVC_SIGNONNUM);
};


// func000804
// function begins at statement 18986, parm_start=12643
// OP_STATE	9519	12643	0
// OP_DONE	0	0	0
void () func000804 = [133, func000805]
{
};


// func000805
// function begins at statement 18988, parm_start=12644
// OP_STATE	9522	12644	0
// OP_DONE	0	0	0
void () func000805 = [134, func000806]
{
};


// func000806
// function begins at statement 18990, parm_start=12645
// OP_STATE	12645	12644	0
// OP_DONE	0	0	0
void () func000806 = [135, func000806]
{
};


// func000807
// function begins at statement 18992, parm_start=12647
// OP_LOAD_F	28	152	12647
// OP_LT	12647	12648	12649
// OP_IFNOT	12649	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	12650	4	0
// OP_LOAD_F	28	152	12651
// OP_STORE_V	12651	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	12652
// OP_STORE_V	12652	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	12653
// OP_STORE_V	12653	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	12654
// OP_STORE_V	12654	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12655	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	12656
// OP_IFNOT	12656	3	0
// OP_CALL0	12613	0	0
// OP_GOTO	2	0	0
// OP_CALL0	12631	0	0
// OP_DONE	0	0	0
void () func000807 = 
{
    
    if(self.health < -80)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_ogre.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "ogre/ogdth.wav", TRUE, ATTN_NORM);
    if(random() < globaldef000522)
    {
        func000783();
    }
    else
    {
        func000797();
    }
    
};


// func000808
// function begins at statement 19031, parm_start=12658
// OP_CALL0	457	0	0
// OP_GT	1	539	12658
// OP_IFNOT	12658	3	0
// OP_CALL0	3182	0	0
// OP_GOTO	2	0	0
// OP_CALL0	3183	0	0
// OP_DONE	0	0	0
void () func000808 = 
{
    if(random() > globaldef000522)
    {
        ogre_smash1();
    }
    else
    {
        ogre_swing1();
    }
    
};


// func000809
// function begins at statement 19038, parm_start=12660
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	12660	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12650	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6012	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	3534	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12655	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12446	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12473	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12597	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	12481	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	3656	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	12661
// OP_STOREP_F	240	12661	0
// OP_ADDRESS	28	103	12662
// OP_STOREP_F	229	12662	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12660	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	12663
// OP_STOREP_F	2044	12663	0
// OP_ADDRESS	28	361	12664
// OP_STOREP_FNC	12439	12664	0
// OP_ADDRESS	28	362	12665
// OP_STOREP_FNC	12450	12665	0
// OP_ADDRESS	28	363	12666
// OP_STOREP_FNC	12470	12666	0
// OP_ADDRESS	28	367	12667
// OP_STOREP_FNC	12646	12667	0
// OP_ADDRESS	28	365	12668
// OP_STOREP_FNC	12657	12668	0
// OP_ADDRESS	28	364	12669
// OP_STOREP_FNC	12539	12669	0
// OP_ADDRESS	28	366	12670
// OP_STOREP_FNC	12591	12670	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () func000809 = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/ogre.mdl");
    precache_model("progs/h_ogre.mdl");
    precache_model("progs/grenade.mdl");
    precache_sound("ogre/ogdrag.wav");
    precache_sound("ogre/ogdth.wav");
    precache_sound("ogre/ogidle.wav");
    precache_sound("ogre/ogidle2.wav");
    precache_sound("ogre/ogpain1.wav");
    precache_sound("ogre/ogsawatk.wav");
    precache_sound("ogre/ogwake.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/ogre.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 200;
    self.th_stand = func000669;
    self.th_walk = func000678;
    self.th_run = func000694;
    self.th_die = func000807;
    self.th_melee = func000808;
    self.th_missile = func000730;
    self.th_pain = func000782;
    func000531();
};

