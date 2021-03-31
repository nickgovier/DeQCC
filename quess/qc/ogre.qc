// OgreGrenadeExplode
// function begins at statement 12524, parm_start=8287
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	8287
// OP_STORE_V	8287	7	0
// OP_STORE_V	2007	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	1994	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2865	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	302	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_STORE_V	312	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	106	8288
// OP_STORE_V	8288	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	107	8289
// OP_STORE_V	8289	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	338	4	0
// OP_LOAD_F	28	108	8290
// OP_STORE_V	8290	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	113	8291
// OP_STOREP_V	638	8291	0
// OP_ADDRESS	28	146	8294
// OP_STOREP_FNC	518	8294	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3169	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	104	8295
// OP_STOREP_F	238	8295	0
// OP_CALL0	3157	0	0
// OP_DONE	0	0	0
void () OgreGrenadeExplode = 
{
    T_RadiusDamage(self, self.owner, 40.000, world);
    sound(self, CHAN_VOICE, "weapons/r_exp3.wav", 1.000, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.velocity = '0.000 0.000 0.000';
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// OgreGrenadeTouch
// function begins at statement 12565, parm_start=8297
// OP_LOAD_ENT	28	201	8297
// OP_EQ_E	29	8297	8298
// OP_IFNOT	8298	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	8299
// OP_EQ_F	8299	253	8300
// OP_IFNOT	8300	3	0
// OP_CALL0	8286	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	2875	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_V	28	113	8301
// OP_EQ_V	8301	638	8304
// OP_IFNOT	8304	3	0
// OP_ADDRESS	28	121	8305
// OP_STOREP_V	638	8305	0
// OP_DONE	0	0	0
void () OgreGrenadeTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage == DAMAGE_AIM)
    {
        OgreGrenadeExplode();
        return;
    }
    
    sound(self, CHAN_VOICE, "weapons/bounce.wav", 1.000, ATTN_NORM);
    
    if(self.velocity == '0.000 0.000 0.000')
    {
        self.avelocity = '0.000 0.000 0.000';
    }
    
};

// OgreFireGrenade
// function begins at statement 12586, parm_start=8309
// OP_ADDRESS	28	133	8311
// OP_LOAD_F	28	133	8312
// OP_BITOR	8312	335	8313
// OP_STOREP_F	8313	8311	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	2874	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	8309	0
// OP_ADDRESS	8309	201	8314
// OP_STOREP_ENT	28	8314	0
// OP_ADDRESS	8309	103	8315
// OP_STOREP_F	236	8315	0
// OP_ADDRESS	8309	104	8316
// OP_STOREP_F	240	8316	0
// OP_LOAD_V	28	117	8317
// OP_STORE_V	8317	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	8309	113	8320
// OP_LOAD_ENT	28	181	8323
// OP_LOAD_V	8323	105	8324
// OP_LOAD_V	28	105	8327
// OP_SUB_V	8324	8327	8330
// OP_STORE_V	8330	4	0
// OP_CALL1	455	0	0
// OP_STOREP_V	1	8320	0
// OP_ADDRESS	8309	113	8333
// OP_LOAD_V	8309	113	8336
// OP_MUL_VF	8336	3343	8339
// OP_STOREP_V	8339	8333	0
// OP_ADDRESS	8309	116	8342
// OP_STOREP_F	2246	8342	0
// OP_ADDRESS	8309	121	8343
// OP_STOREP_V	3440	8343	0
// OP_ADDRESS	8309	117	8346
// OP_LOAD_V	8309	113	8349
// OP_STORE_V	8349	4	0
// OP_CALL1	493	0	0
// OP_STOREP_V	1	8346	0
// OP_ADDRESS	8309	146	8352
// OP_STOREP_FNC	8296	8352	0
// OP_ADDRESS	8309	150	8353
// OP_ADD_F	31	3451	8354
// OP_STOREP_F	8354	8353	0
// OP_ADDRESS	8309	148	8355
// OP_STOREP_FNC	8286	8355	0
// OP_STORE_V	8309	4	0
// OP_STORE_V	3454	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	8309	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	8309	4	0
// OP_LOAD_V	28	105	8356
// OP_STORE_V	8356	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void () OgreFireGrenade = 
{
    local entity missile;
    local entity mpuff;
    self.effects = self.effects | EF_MUZZLEFLASH;
    sound(self, CHAN_WEAPON, "weapons/grenade.wav", 1.000, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    makevectors(self.angles);
    missile.velocity = normalize(self.enemy.origin - self.origin);
    missile.velocity = missile.velocity * 600.000;
    missile.velocity_z = 200.000;
    missile.avelocity = '300.000 300.000 300.000';
    missile.angles = vectoangles(missile.velocity);
    missile.touch = OgreGrenadeTouch;
    missile.nextthink = time + 2.500;
    missile.think = OgreGrenadeExplode;
    setmodel(missile, "progs/grenade.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, self.origin);
};

// chainsaw
// function begins at statement 12647, parm_start=8360
// OP_LOAD_ENT	28	181	8365
// OP_NOT_ENT	8365	0	8366
// OP_IFNOT	8366	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	8367
// OP_STORE_V	8367	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	523	0	0
// OP_NOT_F	1	0	8368
// OP_IFNOT	8368	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_LOAD_ENT	28	181	8369
// OP_LOAD_V	8369	105	8370
// OP_LOAD_V	28	105	8373
// OP_SUB_V	8370	8373	8376
// OP_STORE_V	8376	8361	0
// OP_STORE_V	8361	4	0
// OP_CALL1	458	0	0
// OP_GT	1	2165	8379
// OP_IFNOT	8379	2	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_CALL0	453	0	0
// OP_ADD_F	1	1	8380
// OP_CALL0	453	0	0
// OP_ADD_F	8380	1	8381
// OP_MUL_F	8381	1835	8382
// OP_STORE_F	8382	8364	0
// OP_LOAD_ENT	28	181	8383
// OP_STORE_V	8383	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8364	13	0
// OP_CALL4	521	0	0
// OP_IFNOT	8360	23	0
// OP_LOAD_V	28	117	8384
// OP_STORE_V	8384	4	0
// OP_CALL1	448	0	0
// OP_EQ_F	8360	708	8387
// OP_IFNOT	8387	11	0
// OP_LOAD_V	28	105	8388
// OP_MUL_VF	59	3273	8391
// OP_ADD_V	8388	8391	8394
// OP_STORE_V	8394	4	0
// OP_CALL0	2877	0	0
// OP_MUL_F	1	2165	8397
// OP_MUL_FV	8397	65	8398
// OP_STORE_V	8398	7	0
// OP_CALL2	2945	0	0
// OP_GOTO	8	0	0
// OP_LOAD_V	28	105	8401
// OP_MUL_VF	59	3273	8404
// OP_ADD_V	8401	8404	8407
// OP_STORE_V	8407	4	0
// OP_MUL_FV	8360	65	8410
// OP_STORE_V	8410	7	0
// OP_CALL2	2945	0	0
// OP_DONE	0	0	0
void (float side) chainsaw = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    ai_charge(10.000);
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 100.000)
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 4.000;
    T_Damage(self.enemy, self, self, ldmg);
    
    if(side)
    {
        makevectors(self.angles);
        if(side == 1.000)
        {
            SpawnMeatSpray(self.origin + (v_forward * 16.000), (crandom() * 100.000) * v_right);
        }
        else
        {
            SpawnMeatSpray(self.origin + (v_forward * 16.000), side * v_right);
        }
        
    }
    
};

// ogre_stand1
// function begins at statement 12707, parm_start=8414
// OP_STATE	650	8414	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand1 = [0.000, ogre_stand2]
{
    ai_stand();
};

// ogre_stand2
// function begins at statement 12710, parm_start=8415
// OP_STATE	708	8415	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand2 = [1.000, ogre_stand3]
{
    ai_stand();
};

// ogre_stand3
// function begins at statement 12713, parm_start=8416
// OP_STATE	929	8416	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand3 = [2.000, ogre_stand4]
{
    ai_stand();
};

// ogre_stand4
// function begins at statement 12716, parm_start=8417
// OP_STATE	819	8417	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand4 = [3.000, ogre_stand5]
{
    ai_stand();
};

// ogre_stand5
// function begins at statement 12719, parm_start=8418
// OP_STATE	1835	8418	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand5 = [4.000, ogre_stand6]
{
    ai_stand();
};

// ogre_stand6
// function begins at statement 12722, parm_start=8419
// OP_STATE	1660	8419	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand6 = [5.000, ogre_stand7]
{
    ai_stand();
};

// ogre_stand7
// function begins at statement 12725, parm_start=8420
// OP_STATE	2107	8420	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand7 = [6.000, ogre_stand8]
{
    ai_stand();
};

// ogre_stand8
// function begins at statement 12728, parm_start=8421
// OP_STATE	2307	8421	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand8 = [7.000, ogre_stand9]
{
    ai_stand();
};

// ogre_stand9
// function begins at statement 12731, parm_start=8422
// OP_STATE	1502	8413	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () ogre_stand9 = [8.000, ogre_stand1]
{
    ai_stand();
};

// ogre_walk1
// function begins at statement 12734, parm_start=8423
// OP_STATE	3556	8423	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk1 = [9.000, ogre_walk2]
{
    ai_walk(3.000);
};

// ogre_walk2
// function begins at statement 12738, parm_start=8424
// OP_STATE	1931	8424	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk2 = [10.000, ogre_walk3]
{
    ai_walk(2.000);
};

// ogre_walk3
// function begins at statement 12742, parm_start=8425
// OP_STATE	3931	8425	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk3 = [11.000, ogre_walk4]
{
    ai_walk(2.000);
};

// ogre_walk4
// function begins at statement 12746, parm_start=8426
// OP_STATE	2532	8426	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk4 = [12.000, ogre_walk5]
{
    ai_walk(2.000);
};

// ogre_walk5
// function begins at statement 12750, parm_start=8427
// OP_STATE	8427	8428	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk5 = [13.000, ogre_walk6]
{
    ai_walk(2.000);
};

// ogre_walk6
// function begins at statement 12754, parm_start=8429
// OP_STATE	3153	8429	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1442	0	0
// OP_CALL0	453	0	0
// OP_LT	1	686	8430
// OP_IFNOT	8430	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1205	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () ogre_walk6 = [14.000, ogre_walk7]
{
    ai_walk(5.000);
    
    if(random() < 0.100)
    {
        sound(self, CHAN_VOICE, "ogre/ogdrag.wav", 1.000, ATTN_IDLE);
    }
    
};

// ogre_walk7
// function begins at statement 12767, parm_start=8431
// OP_STATE	2157	8431	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk7 = [15.000, ogre_walk8]
{
    ai_walk(3.000);
};

// ogre_walk8
// function begins at statement 12771, parm_start=8432
// OP_STATE	3273	8432	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk8 = [16.000, ogre_walk9]
{
    ai_walk(2.000);
};

// ogre_walk9
// function begins at statement 12775, parm_start=8433
// OP_STATE	5588	8433	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk9 = [17.000, ogre_walk10]
{
    ai_walk(3.000);
};

// ogre_walk10
// function begins at statement 12779, parm_start=8434
// OP_STATE	3576	8434	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk10 = [18.000, ogre_walk11]
{
    ai_walk(1.000);
};

// ogre_walk11
// function begins at statement 12783, parm_start=8435
// OP_STATE	8435	8436	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk11 = [19.000, ogre_walk12]
{
    ai_walk(2.000);
};

// ogre_walk12
// function begins at statement 12787, parm_start=8437
// OP_STATE	1017	8437	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk12 = [20.000, ogre_walk13]
{
    ai_walk(3.000);
};

// ogre_walk13
// function begins at statement 12791, parm_start=8438
// OP_STATE	8438	8439	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk13 = [21.000, ogre_walk14]
{
    ai_walk(3.000);
};

// ogre_walk14
// function begins at statement 12795, parm_start=8440
// OP_STATE	8440	8441	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk14 = [22.000, ogre_walk15]
{
    ai_walk(3.000);
};

// ogre_walk15
// function begins at statement 12799, parm_start=8442
// OP_STATE	8442	8443	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk15 = [23.000, ogre_walk16]
{
    ai_walk(3.000);
};

// ogre_walk16
// function begins at statement 12803, parm_start=8444
// OP_STATE	4969	8422	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () ogre_walk16 = [24.000, ogre_walk1]
{
    ai_walk(4.000);
};

// ogre_run1
// function begins at statement 12807, parm_start=8445
// OP_STATE	2171	8445	0
// OP_STORE_V	3556	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run1 = [25.000, ogre_run2]
{
    ai_run(9.000);
};

// ogre_run2
// function begins at statement 12811, parm_start=8446
// OP_STATE	8446	8447	0
// OP_STORE_V	2532	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run2 = [26.000, ogre_run3]
{
    ai_run(12.000);
};

// ogre_run3
// function begins at statement 12815, parm_start=8448
// OP_STATE	8448	8449	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run3 = [27.000, ogre_run4]
{
    ai_run(8.000);
};

// ogre_run4
// function begins at statement 12819, parm_start=8450
// OP_STATE	8450	8451	0
// OP_STORE_V	8440	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run4 = [28.000, ogre_run5]
{
    ai_run(22.000);
};

// ogre_run5
// function begins at statement 12823, parm_start=8452
// OP_STATE	5829	8452	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run5 = [29.000, ogre_run6]
{
    ai_run(16.000);
};

// ogre_run6
// function begins at statement 12827, parm_start=8453
// OP_STATE	1004	8453	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run6 = [30.000, ogre_run7]
{
    ai_run(4.000);
};

// ogre_run7
// function begins at statement 12831, parm_start=8454
// OP_STATE	3950	8454	0
// OP_STORE_V	8427	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run7 = [31.000, ogre_run8]
{
    ai_run(13.000);
};

// ogre_run8
// function begins at statement 12835, parm_start=8455
// OP_STATE	959	8444	0
// OP_STORE_V	4969	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () ogre_run8 = [32.000, ogre_run1]
{
    ai_run(24.000);
};

// ogre_swing1
// function begins at statement 12839, parm_start=8455
// OP_STATE	5835	8455	0
// OP_STORE_V	3931	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8456	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () ogre_swing1 = [33.000, ogre_swing2]
{
    ai_charge(11.000);
    sound(self, CHAN_WEAPON, "ogre/ogsawatk.wav", 1.000, ATTN_NORM);
};

// ogre_swing2
// function begins at statement 12849, parm_start=8457
// OP_STATE	5837	8457	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_swing2 = [34.000, ogre_swing3]
{
    ai_charge(1.000);
};

// ogre_swing3
// function begins at statement 12853, parm_start=8458
// OP_STATE	3325	8458	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_swing3 = [35.000, ogre_swing4]
{
    ai_charge(4.000);
};

// ogre_swing4
// function begins at statement 12857, parm_start=8459
// OP_STATE	5820	8459	0
// OP_STORE_V	8427	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_swing4 = [36.000, ogre_swing5]
{
    ai_charge(13.000);
};

// ogre_swing5
// function begins at statement 12861, parm_start=8460
// OP_STATE	5822	8460	0
// OP_STORE_V	3556	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8461
// OP_LOAD_F	28	119	8462
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8463
// OP_ADD_F	8462	8463	8464
// OP_STOREP_F	8464	8461	0
// OP_DONE	0	0	0
void () ogre_swing5 = [37.000, ogre_swing6]
{
    ai_charge(9.000);
    chainsaw(0.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing6
// function begins at statement 12873, parm_start=8465
// OP_STATE	5824	8465	0
// OP_STORE_V	2246	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8466
// OP_LOAD_F	28	119	8467
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8468
// OP_ADD_F	8467	8468	8469
// OP_STOREP_F	8469	8466	0
// OP_DONE	0	0	0
void () ogre_swing6 = [38.000, ogre_swing7]
{
    chainsaw(200.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing7
// function begins at statement 12883, parm_start=8470
// OP_STATE	5826	8470	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8471
// OP_LOAD_F	28	119	8472
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8473
// OP_ADD_F	8472	8473	8474
// OP_STOREP_F	8474	8471	0
// OP_DONE	0	0	0
void () ogre_swing7 = [39.000, ogre_swing8]
{
    chainsaw(0.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing8
// function begins at statement 12893, parm_start=8475
// OP_STATE	2007	8475	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8476
// OP_LOAD_F	28	119	8477
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8478
// OP_ADD_F	8477	8478	8479
// OP_STOREP_F	8479	8476	0
// OP_DONE	0	0	0
void () ogre_swing8 = [40.000, ogre_swing9]
{
    chainsaw(0.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing9
// function begins at statement 12903, parm_start=8480
// OP_STATE	6160	8480	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8481
// OP_LOAD_F	28	119	8482
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8483
// OP_ADD_F	8482	8483	8484
// OP_STOREP_F	8484	8481	0
// OP_DONE	0	0	0
void () ogre_swing9 = [41.000, ogre_swing10]
{
    chainsaw(0.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing10
// function begins at statement 12913, parm_start=8485
// OP_STATE	6162	8485	0
// OP_STORE_V	5931	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8486
// OP_LOAD_F	28	119	8487
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8488
// OP_ADD_F	8487	8488	8489
// OP_STOREP_F	8489	8486	0
// OP_DONE	0	0	0
void () ogre_swing10 = [42.000, ogre_swing11]
{
    chainsaw(-200.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing11
// function begins at statement 12923, parm_start=8490
// OP_STATE	6164	8490	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	119	8491
// OP_LOAD_F	28	119	8492
// OP_CALL0	453	0	0
// OP_MUL_F	1	2171	8493
// OP_ADD_F	8492	8493	8494
// OP_STOREP_F	8494	8491	0
// OP_DONE	0	0	0
void () ogre_swing11 = [43.000, ogre_swing12]
{
    chainsaw(0.000);
    self.angles_y = self.angles_y + (random() * 25.000);
};

// ogre_swing12
// function begins at statement 12933, parm_start=8495
// OP_STATE	6166	8495	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_swing12 = [44.000, ogre_swing13]
{
    ai_charge(3.000);
};

// ogre_swing13
// function begins at statement 12937, parm_start=8496
// OP_STATE	1572	8496	0
// OP_STORE_V	1502	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_swing13 = [45.000, ogre_swing14]
{
    ai_charge(8.000);
};

// ogre_swing14
// function begins at statement 12941, parm_start=8497
// OP_STATE	6169	8444	0
// OP_STORE_V	3556	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_swing14 = [46.000, ogre_run1]
{
    ai_charge(9.000);
};

// ogre_smash1
// function begins at statement 12945, parm_start=8497
// OP_STATE	6171	8497	0
// OP_STORE_V	2107	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	8456	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () ogre_smash1 = [47.000, ogre_smash2]
{
    ai_charge(6.000);
    sound(self, CHAN_WEAPON, "ogre/ogsawatk.wav", 1.000, ATTN_NORM);
};

// ogre_smash2
// function begins at statement 12955, parm_start=8498
// OP_STATE	6173	8498	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_smash2 = [48.000, ogre_smash3]
{
    ai_charge(0.000);
};

// ogre_smash3
// function begins at statement 12959, parm_start=8499
// OP_STATE	6175	8499	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_smash3 = [49.000, ogre_smash4]
{
    ai_charge(0.000);
};

// ogre_smash4
// function begins at statement 12963, parm_start=8500
// OP_STATE	2509	8500	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_smash4 = [50.000, ogre_smash5]
{
    ai_charge(1.000);
};

// ogre_smash5
// function begins at statement 12967, parm_start=8501
// OP_STATE	6068	8501	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_smash5 = [51.000, ogre_smash6]
{
    ai_charge(4.000);
};

// ogre_smash6
// function begins at statement 12971, parm_start=8502
// OP_STATE	6070	8502	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_DONE	0	0	0
void () ogre_smash6 = [52.000, ogre_smash7]
{
    ai_charge(4.000);
    chainsaw(0.000);
};

// ogre_smash7
// function begins at statement 12977, parm_start=8503
// OP_STATE	6072	8503	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_DONE	0	0	0
void () ogre_smash7 = [53.000, ogre_smash8]
{
    ai_charge(4.000);
    chainsaw(0.000);
};

// ogre_smash8
// function begins at statement 12983, parm_start=8504
// OP_STATE	6074	8504	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_DONE	0	0	0
void () ogre_smash8 = [54.000, ogre_smash9]
{
    ai_charge(10.000);
    chainsaw(0.000);
};

// ogre_smash9
// function begins at statement 12989, parm_start=8505
// OP_STATE	6076	8505	0
// OP_STORE_V	8427	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_DONE	0	0	0
void () ogre_smash9 = [55.000, ogre_smash10]
{
    ai_charge(13.000);
    chainsaw(0.000);
};

// ogre_smash10
// function begins at statement 12995, parm_start=8506
// OP_STATE	6078	8506	0
// OP_STORE_V	708	4	0
// OP_CALL1	8359	0	0
// OP_DONE	0	0	0
void () ogre_smash10 = [56.000, ogre_smash11]
{
    chainsaw(1.000);
};

// ogre_smash11
// function begins at statement 12999, parm_start=8507
// OP_STATE	6080	8507	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	8359	0	0
// OP_ADDRESS	28	150	8508
// OP_LOAD_F	28	150	8509
// OP_CALL0	453	0	0
// OP_MUL_F	1	922	8510
// OP_ADD_F	8509	8510	8511
// OP_STOREP_F	8511	8508	0
// OP_DONE	0	0	0
void () ogre_smash11 = [57.000, ogre_smash12]
{
    ai_charge(2.000);
    chainsaw(0.000);
    self.nextthink = self.nextthink + (random() * 0.200);
};

// ogre_smash12
// function begins at statement 13011, parm_start=8512
// OP_STATE	6082	8512	0
// OP_CALL0	944	0	0
// OP_DONE	0	0	0
void () ogre_smash12 = [58.000, ogre_smash13]
{
    ai_charge();
};

// ogre_smash13
// function begins at statement 13014, parm_start=8513
// OP_STATE	6084	8513	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_smash13 = [59.000, ogre_smash14]
{
    ai_charge(4.000);
};

// ogre_smash14
// function begins at statement 13018, parm_start=8514
// OP_STATE	1035	8444	0
// OP_STORE_V	2532	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () ogre_smash14 = [60.000, ogre_run1]
{
    ai_charge(12.000);
};

// ogre_nail1
// function begins at statement 13022, parm_start=8515
// OP_STATE	6086	8515	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () ogre_nail1 = [61.000, ogre_nail2]
{
    ai_face();
};

// ogre_nail2
// function begins at statement 13025, parm_start=8516
// OP_STATE	6088	8516	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () ogre_nail2 = [62.000, ogre_nail3]
{
    ai_face();
};

// ogre_nail3
// function begins at statement 13028, parm_start=8517
// OP_STATE	6088	8517	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () ogre_nail3 = [62.000, ogre_nail4]
{
    ai_face();
};

// ogre_nail4
// function begins at statement 13031, parm_start=8518
// OP_STATE	4345	8518	0
// OP_CALL0	844	0	0
// OP_CALL0	8308	0	0
// OP_DONE	0	0	0
void () ogre_nail4 = [63.000, ogre_nail5]
{
    ai_face();
    OgreFireGrenade();
};

// ogre_nail5
// function begins at statement 13035, parm_start=8519
// OP_STATE	1684	8519	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () ogre_nail5 = [64.000, ogre_nail6]
{
    ai_face();
};

// ogre_nail6
// function begins at statement 13038, parm_start=8520
// OP_STATE	6092	8520	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () ogre_nail6 = [65.000, ogre_nail7]
{
    ai_face();
};

// ogre_nail7
// function begins at statement 13041, parm_start=8521
// OP_STATE	6094	8444	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () ogre_nail7 = [66.000, ogre_run1]
{
    ai_face();
};

// ogre_pain1
// function begins at statement 13044, parm_start=8522
// OP_STATE	6096	8522	0
// OP_DONE	0	0	0
void () ogre_pain1 = [67.000, ogre_pain2]
{
};

// ogre_pain2
// function begins at statement 13046, parm_start=8523
// OP_STATE	6098	8523	0
// OP_DONE	0	0	0
void () ogre_pain2 = [68.000, ogre_pain3]
{
};

// ogre_pain3
// function begins at statement 13048, parm_start=8524
// OP_STATE	6100	8524	0
// OP_DONE	0	0	0
void () ogre_pain3 = [69.000, ogre_pain4]
{
};

// ogre_pain4
// function begins at statement 13050, parm_start=8525
// OP_STATE	6101	8525	0
// OP_DONE	0	0	0
void () ogre_pain4 = [70.000, ogre_pain5]
{
};

// ogre_pain5
// function begins at statement 13052, parm_start=8526
// OP_STATE	6103	8444	0
// OP_DONE	0	0	0
void () ogre_pain5 = [71.000, ogre_run1]
{
};

// ogre_painb1
// function begins at statement 13054, parm_start=8527
// OP_STATE	6105	8527	0
// OP_DONE	0	0	0
void () ogre_painb1 = [72.000, ogre_painb2]
{
};

// ogre_painb2
// function begins at statement 13056, parm_start=8528
// OP_STATE	2988	8528	0
// OP_DONE	0	0	0
void () ogre_painb2 = [73.000, ogre_painb3]
{
};

// ogre_painb3
// function begins at statement 13058, parm_start=8529
// OP_STATE	6108	8444	0
// OP_DONE	0	0	0
void () ogre_painb3 = [74.000, ogre_run1]
{
};

// ogre_painc1
// function begins at statement 13060, parm_start=8530
// OP_STATE	6110	8530	0
// OP_DONE	0	0	0
void () ogre_painc1 = [75.000, ogre_painc2]
{
};

// ogre_painc2
// function begins at statement 13062, parm_start=8531
// OP_STATE	6112	8531	0
// OP_DONE	0	0	0
void () ogre_painc2 = [76.000, ogre_painc3]
{
};

// ogre_painc3
// function begins at statement 13064, parm_start=8532
// OP_STATE	6114	8532	0
// OP_DONE	0	0	0
void () ogre_painc3 = [77.000, ogre_painc4]
{
};

// ogre_painc4
// function begins at statement 13066, parm_start=8533
// OP_STATE	6116	8533	0
// OP_DONE	0	0	0
void () ogre_painc4 = [78.000, ogre_painc5]
{
};

// ogre_painc5
// function begins at statement 13068, parm_start=8534
// OP_STATE	6118	8534	0
// OP_DONE	0	0	0
void () ogre_painc5 = [79.000, ogre_painc6]
{
};

// ogre_painc6
// function begins at statement 13070, parm_start=8535
// OP_STATE	874	8444	0
// OP_DONE	0	0	0
void () ogre_painc6 = [80.000, ogre_run1]
{
};

// ogre_paind1
// function begins at statement 13072, parm_start=8536
// OP_STATE	6121	8536	0
// OP_DONE	0	0	0
void () ogre_paind1 = [81.000, ogre_paind2]
{
};

// ogre_paind2
// function begins at statement 13074, parm_start=8537
// OP_STATE	6123	8537	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () ogre_paind2 = [82.000, ogre_paind3]
{
    ai_pain(10.000);
};

// ogre_paind3
// function begins at statement 13078, parm_start=8538
// OP_STATE	6125	8538	0
// OP_STORE_V	3556	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () ogre_paind3 = [83.000, ogre_paind4]
{
    ai_pain(9.000);
};

// ogre_paind4
// function begins at statement 13082, parm_start=8539
// OP_STATE	6127	8539	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () ogre_paind4 = [84.000, ogre_paind5]
{
    ai_pain(4.000);
};

// ogre_paind5
// function begins at statement 13086, parm_start=8540
// OP_STATE	6128	8540	0
// OP_DONE	0	0	0
void () ogre_paind5 = [85.000, ogre_paind6]
{
};

// ogre_paind6
// function begins at statement 13088, parm_start=8541
// OP_STATE	6130	8541	0
// OP_DONE	0	0	0
void () ogre_paind6 = [86.000, ogre_paind7]
{
};

// ogre_paind7
// function begins at statement 13090, parm_start=8542
// OP_STATE	6132	8542	0
// OP_DONE	0	0	0
void () ogre_paind7 = [87.000, ogre_paind8]
{
};

// ogre_paind8
// function begins at statement 13092, parm_start=8543
// OP_STATE	6134	8543	0
// OP_DONE	0	0	0
void () ogre_paind8 = [88.000, ogre_paind9]
{
};

// ogre_paind9
// function begins at statement 13094, parm_start=8544
// OP_STATE	6136	8544	0
// OP_DONE	0	0	0
void () ogre_paind9 = [89.000, ogre_paind10]
{
};

// ogre_paind10
// function begins at statement 13096, parm_start=8545
// OP_STATE	1608	8545	0
// OP_DONE	0	0	0
void () ogre_paind10 = [90.000, ogre_paind11]
{
};

// ogre_paind11
// function begins at statement 13098, parm_start=8546
// OP_STATE	6139	8546	0
// OP_DONE	0	0	0
void () ogre_paind11 = [91.000, ogre_paind12]
{
};

// ogre_paind12
// function begins at statement 13100, parm_start=8547
// OP_STATE	6141	8547	0
// OP_DONE	0	0	0
void () ogre_paind12 = [92.000, ogre_paind13]
{
};

// ogre_paind13
// function begins at statement 13102, parm_start=8548
// OP_STATE	6143	8548	0
// OP_DONE	0	0	0
void () ogre_paind13 = [93.000, ogre_paind14]
{
};

// ogre_paind14
// function begins at statement 13104, parm_start=8549
// OP_STATE	6144	8549	0
// OP_DONE	0	0	0
void () ogre_paind14 = [94.000, ogre_paind15]
{
};

// ogre_paind15
// function begins at statement 13106, parm_start=8550
// OP_STATE	6146	8550	0
// OP_DONE	0	0	0
void () ogre_paind15 = [95.000, ogre_paind16]
{
};

// ogre_paind16
// function begins at statement 13108, parm_start=8551
// OP_STATE	6148	8444	0
// OP_DONE	0	0	0
void () ogre_paind16 = [96.000, ogre_run1]
{
};

// ogre_paine1
// function begins at statement 13110, parm_start=8552
// OP_STATE	6150	8552	0
// OP_DONE	0	0	0
void () ogre_paine1 = [97.000, ogre_paine2]
{
};

// ogre_paine2
// function begins at statement 13112, parm_start=8553
// OP_STATE	6152	8553	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () ogre_paine2 = [98.000, ogre_paine3]
{
    ai_pain(10.000);
};

// ogre_paine3
// function begins at statement 13116, parm_start=8554
// OP_STATE	6154	8554	0
// OP_STORE_V	3556	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () ogre_paine3 = [99.000, ogre_paine4]
{
    ai_pain(9.000);
};

// ogre_paine4
// function begins at statement 13120, parm_start=8555
// OP_STATE	2165	8555	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () ogre_paine4 = [100.000, ogre_paine5]
{
    ai_pain(4.000);
};

// ogre_paine5
// function begins at statement 13124, parm_start=8556
// OP_STATE	6157	8556	0
// OP_DONE	0	0	0
void () ogre_paine5 = [101.000, ogre_paine6]
{
};

// ogre_paine6
// function begins at statement 13126, parm_start=8557
// OP_STATE	6159	8557	0
// OP_DONE	0	0	0
void () ogre_paine6 = [102.000, ogre_paine7]
{
};

// ogre_paine7
// function begins at statement 13128, parm_start=8558
// OP_STATE	5699	8558	0
// OP_DONE	0	0	0
void () ogre_paine7 = [103.000, ogre_paine8]
{
};

// ogre_paine8
// function begins at statement 13130, parm_start=8559
// OP_STATE	5714	8559	0
// OP_DONE	0	0	0
void () ogre_paine8 = [104.000, ogre_paine9]
{
};

// ogre_paine9
// function begins at statement 13132, parm_start=8560
// OP_STATE	5728	8560	0
// OP_DONE	0	0	0
void () ogre_paine9 = [105.000, ogre_paine10]
{
};

// ogre_paine10
// function begins at statement 13134, parm_start=8561
// OP_STATE	5741	8561	0
// OP_DONE	0	0	0
void () ogre_paine10 = [106.000, ogre_paine11]
{
};

// ogre_paine11
// function begins at statement 13136, parm_start=8562
// OP_STATE	5755	8562	0
// OP_DONE	0	0	0
void () ogre_paine11 = [107.000, ogre_paine12]
{
};

// ogre_paine12
// function begins at statement 13138, parm_start=8563
// OP_STATE	5761	8563	0
// OP_DONE	0	0	0
void () ogre_paine12 = [108.000, ogre_paine13]
{
};

// ogre_paine13
// function begins at statement 13140, parm_start=8564
// OP_STATE	5764	8564	0
// OP_DONE	0	0	0
void () ogre_paine13 = [109.000, ogre_paine14]
{
};

// ogre_paine14
// function begins at statement 13142, parm_start=8565
// OP_STATE	5767	8565	0
// OP_DONE	0	0	0
void () ogre_paine14 = [110.000, ogre_paine15]
{
};

// ogre_paine15
// function begins at statement 13144, parm_start=8566
// OP_STATE	5770	8444	0
// OP_DONE	0	0	0
void () ogre_paine15 = [111.000, ogre_run1]
{
};

// ogre_pain
// function begins at statement 13146, parm_start=8567
// OP_LOAD_F	28	375	8570
// OP_GT	8570	31	8571
// OP_IFNOT	8571	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8572	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_STORE_F	1	8569	0
// OP_LT	8569	3718	8573
// OP_IFNOT	8573	6	0
// OP_CALL0	8521	0	0
// OP_ADDRESS	28	375	8574
// OP_ADD_F	31	708	8575
// OP_STOREP_F	8575	8574	0
// OP_GOTO	26	0	0
// OP_LT	8569	1727	8576
// OP_IFNOT	8576	6	0
// OP_CALL0	8526	0	0
// OP_ADDRESS	28	375	8577
// OP_ADD_F	31	708	8578
// OP_STOREP_F	8578	8577	0
// OP_GOTO	19	0	0
// OP_LT	8569	3721	8579
// OP_IFNOT	8579	6	0
// OP_CALL0	8529	0	0
// OP_ADDRESS	28	375	8580
// OP_ADD_F	31	708	8581
// OP_STOREP_F	8581	8580	0
// OP_GOTO	12	0	0
// OP_LT	8569	8582	8583
// OP_IFNOT	8583	6	0
// OP_CALL0	8535	0	0
// OP_ADDRESS	28	375	8584
// OP_ADD_F	31	929	8585
// OP_STOREP_F	8585	8584	0
// OP_GOTO	5	0	0
// OP_CALL0	8551	0	0
// OP_ADDRESS	28	375	8586
// OP_ADD_F	31	929	8587
// OP_STOREP_F	8587	8586	0
// OP_DONE	0	0	0
void (entity attacker, float damage) ogre_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "ogre/ogpain1.wav", 1.000, ATTN_NORM);
    r = random();
    if(r < 0.250)
    {
        ogre_pain1();
        self.pain_finished = time + 1.000;
    }
    else
    {
        if(r < 0.500)
        {
            ogre_painb1();
            self.pain_finished = time + 1.000;
        }
        else
        {
            if(r < 0.750)
            {
                ogre_painc1();
                self.pain_finished = time + 1.000;
            }
            else
            {
                if(r < 0.880)
                {
                    ogre_paind1();
                    self.pain_finished = time + 2.000;
                }
                else
                {
                    ogre_paine1();
                    self.pain_finished = time + 2.000;
                }
                
            }
            
        }
        
    }
    
};

// ogre_die1
// function begins at statement 13191, parm_start=8589
// OP_STATE	5773	8589	0
// OP_DONE	0	0	0
void () ogre_die1 = [112.000, ogre_die2]
{
};

// ogre_die2
// function begins at statement 13193, parm_start=8590
// OP_STATE	5636	8590	0
// OP_DONE	0	0	0
void () ogre_die2 = [113.000, ogre_die3]
{
};

// ogre_die3
// function begins at statement 13195, parm_start=8591
// OP_STATE	5642	8591	0
// OP_ADDRESS	28	104	8592
// OP_STOREP_F	238	8592	0
// OP_ADDRESS	28	160	8593
// OP_STOREP_F	929	8593	0
// OP_DONE	0	0	0
void () ogre_die3 = [114.000, ogre_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_rockets = 2.000;
};

// ogre_die4
// function begins at statement 13201, parm_start=8594
// OP_STATE	5645	8594	0
// OP_DONE	0	0	0
void () ogre_die4 = [115.000, ogre_die5]
{
};

// ogre_die5
// function begins at statement 13203, parm_start=8595
// OP_STATE	5648	8595	0
// OP_DONE	0	0	0
void () ogre_die5 = [116.000, ogre_die6]
{
};

// ogre_die6
// function begins at statement 13205, parm_start=8596
// OP_STATE	5651	8596	0
// OP_DONE	0	0	0
void () ogre_die6 = [117.000, ogre_die7]
{
};

// ogre_die7
// function begins at statement 13207, parm_start=8597
// OP_STATE	5654	8597	0
// OP_DONE	0	0	0
void () ogre_die7 = [118.000, ogre_die8]
{
};

// ogre_die8
// function begins at statement 13209, parm_start=8598
// OP_STATE	5656	8598	0
// OP_DONE	0	0	0
void () ogre_die8 = [119.000, ogre_die9]
{
};

// ogre_die9
// function begins at statement 13211, parm_start=8599
// OP_STATE	1255	8599	0
// OP_DONE	0	0	0
void () ogre_die9 = [120.000, ogre_die10]
{
};

// ogre_die10
// function begins at statement 13213, parm_start=8600
// OP_STATE	5661	8600	0
// OP_DONE	0	0	0
void () ogre_die10 = [121.000, ogre_die11]
{
};

// ogre_die11
// function begins at statement 13215, parm_start=8601
// OP_STATE	5664	8601	0
// OP_DONE	0	0	0
void () ogre_die11 = [122.000, ogre_die12]
{
};

// ogre_die12
// function begins at statement 13217, parm_start=8602
// OP_STATE	8602	8603	0
// OP_DONE	0	0	0
void () ogre_die12 = [123.000, ogre_die13]
{
};

// ogre_die13
// function begins at statement 13219, parm_start=8604
// OP_STATE	8604	8605	0
// OP_DONE	0	0	0
void () ogre_die13 = [124.000, ogre_die14]
{
};

// ogre_die14
// function begins at statement 13221, parm_start=8606
// OP_STATE	5666	8605	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () ogre_die14 = [125.000, ogre_die14]
{
    SUB_Remove();
};

// ogre_bdie1
// function begins at statement 13224, parm_start=8607
// OP_STATE	5669	8607	0
// OP_DONE	0	0	0
void () ogre_bdie1 = [126.000, ogre_bdie2]
{
};

// ogre_bdie2
// function begins at statement 13226, parm_start=8608
// OP_STATE	5672	8608	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () ogre_bdie2 = [127.000, ogre_bdie3]
{
    ai_forward(5.000);
};

// ogre_bdie3
// function begins at statement 13230, parm_start=8609
// OP_STATE	5675	8609	0
// OP_ADDRESS	28	104	8610
// OP_STOREP_F	238	8610	0
// OP_ADDRESS	28	160	8611
// OP_STOREP_F	929	8611	0
// OP_DONE	0	0	0
void () ogre_bdie3 = [128.000, ogre_bdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_rockets = 2.000;
};

// ogre_bdie4
// function begins at statement 13236, parm_start=8612
// OP_STATE	8612	8613	0
// OP_STORE_V	708	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () ogre_bdie4 = [129.000, ogre_bdie5]
{
    ai_forward(1.000);
};

// ogre_bdie5
// function begins at statement 13240, parm_start=8614
// OP_STATE	8614	8615	0
// OP_STORE_V	819	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () ogre_bdie5 = [130.000, ogre_bdie6]
{
    ai_forward(3.000);
};

// ogre_bdie6
// function begins at statement 13244, parm_start=8616
// OP_STATE	5677	8616	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () ogre_bdie6 = [131.000, ogre_bdie7]
{
    ai_forward(7.000);
};

// ogre_bdie7
// function begins at statement 13248, parm_start=8617
// OP_STATE	5680	8617	0
// OP_STORE_V	2171	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () ogre_bdie7 = [132.000, ogre_bdie8]
{
    ai_forward(25.000);
};

// ogre_bdie8
// function begins at statement 13252, parm_start=8618
// OP_STATE	5683	8618	0
// OP_DONE	0	0	0
void () ogre_bdie8 = [133.000, ogre_bdie9]
{
};

// ogre_bdie9
// function begins at statement 13254, parm_start=8619
// OP_STATE	5686	8619	0
// OP_DONE	0	0	0
void () ogre_bdie9 = [134.000, ogre_bdie10]
{
};

// ogre_bdie10
// function begins at statement 13256, parm_start=8620
// OP_STATE	8620	8619	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () ogre_bdie10 = [135.000, ogre_bdie10]
{
    SUB_Remove();
};

// ogre_die
// function begins at statement 13259, parm_start=8622
// OP_LOAD_F	28	152	8622
// OP_LT	8622	8623	8624
// OP_IFNOT	8624	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	8625	4	0
// OP_LOAD_F	28	152	8626
// OP_STORE_V	8626	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	8627
// OP_STORE_V	8627	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	8628
// OP_STORE_V	8628	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	8629
// OP_STORE_V	8629	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	8630	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	8631
// OP_IFNOT	8631	3	0
// OP_CALL0	8588	0	0
// OP_GOTO	2	0	0
// OP_CALL0	8606	0	0
// OP_DONE	0	0	0
void () ogre_die = 
{
    
    if(self.health < -80.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1.000, ATTN_NORM);
        ThrowHead("progs/h_ogre.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "ogre/ogdth.wav", 1.000, ATTN_NORM);
    if(random() < 0.500)
    {
        ogre_die1();
    }
    else
    {
        ogre_bdie1();
    }
    
};

// ogre_melee
// function begins at statement 13298, parm_start=8633
// OP_CALL0	453	0	0
// OP_GT	1	1727	8633
// OP_IFNOT	8633	3	0
// OP_CALL0	836	0	0
// OP_GOTO	2	0	0
// OP_CALL0	837	0	0
// OP_DONE	0	0	0
void () ogre_melee = 
{
    if(random() > 0.500)
    {
        ogre_smash1();
    }
    else
    {
        ogre_swing1();
    }
    
};

// monster_ogre
// function begins at statement 13305, parm_start=8635
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	8635	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	8625	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	3454	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	1205	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8630	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8636	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8637	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8572	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	8456	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1329	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	8638
// OP_STOREP_F	241	8638	0
// OP_ADDRESS	28	103	8639
// OP_STOREP_F	230	8639	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8635	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	296	7	0
// OP_STORE_V	299	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	8640
// OP_STOREP_F	2246	8640	0
// OP_ADDRESS	28	357	8641
// OP_STOREP_FNC	8413	8641	0
// OP_ADDRESS	28	358	8642
// OP_STOREP_FNC	8422	8642	0
// OP_ADDRESS	28	359	8643
// OP_STOREP_FNC	8444	8643	0
// OP_ADDRESS	28	363	8644
// OP_STOREP_FNC	8621	8644	0
// OP_ADDRESS	28	361	8645
// OP_STOREP_FNC	8632	8645	0
// OP_ADDRESS	28	360	8646
// OP_STOREP_FNC	8514	8646	0
// OP_ADDRESS	28	362	8647
// OP_STOREP_FNC	8566	8647	0
// OP_CALL0	6238	0	0
// OP_DONE	0	0	0
void () monster_ogre = 
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
    self.health = 200.000;
    self.th_stand = ogre_stand1;
    self.th_walk = ogre_walk1;
    self.th_run = ogre_run1;
    self.th_die = ogre_die;
    self.th_melee = ogre_melee;
    self.th_missile = ogre_nail1;
    self.th_pain = ogre_pain;
    walkmonster_start();
};

// monster_ogre_marksman
// function begins at statement 13358, parm_start=8649
// OP_CALL0	8634	0	0
// OP_DONE	0	0	0
void () monster_ogre_marksman = 
{
    monster_ogre();
};

