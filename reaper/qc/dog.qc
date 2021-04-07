void () dog_leap1;
void () dog_run1;
// dog_bite
// function begins at statement 15214, parm_start=9274
// OP_LOAD_ENT	28	181	9278
// OP_NOT_ENT	9278	0	9279
// OP_IFNOT	9279	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_LOAD_ENT	28	181	9280
// OP_STORE_V	9280	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	522	0	0
// OP_NOT_F	1	0	9281
// OP_IFNOT	9281	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	9282
// OP_LOAD_V	9282	105	9283
// OP_LOAD_V	28	105	9286
// OP_SUB_V	9283	9286	9289
// OP_STORE_V	9289	9274	0
// OP_STORE_V	9274	4	0
// OP_CALL1	457	0	0
// OP_GT	1	574	9292
// OP_IFNOT	9292	2	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_CALL0	452	0	0
// OP_ADD_F	1	1	9293
// OP_CALL0	452	0	0
// OP_ADD_F	9293	1	9294
// OP_MUL_F	9294	217	9295
// OP_STORE_F	9295	9277	0
// OP_LOAD_ENT	28	181	9296
// OP_STORE_V	9296	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	9277	13	0
// OP_CALL4	520	0	0
// OP_DONE	0	0	0
void () dog_bite = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge(MOVETYPE_BOUNCE);
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > MUST_HAVE)
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * FL_CLIENT;
    T_Damage(self.enemy, self, self, ldmg);
};

// Dog_JumpTouch
// function begins at statement 15251, parm_start=9298
// OP_LOAD_F	28	152	9299
// OP_LE	9299	213	9300
// OP_IFNOT	9300	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	9301
// OP_IFNOT	9301	15	0
// OP_LOAD_V	28	113	9302
// OP_STORE_V	9302	4	0
// OP_CALL1	457	0	0
// OP_GT	1	3070	9305
// OP_IFNOT	9305	10	0
// OP_CALL0	452	0	0
// OP_MUL_F	235	1	9306
// OP_ADD_F	235	9306	9307
// OP_STORE_F	9307	9298	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	9298	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	483	0	0
// OP_NOT_F	1	0	9308
// OP_IFNOT	9308	12	0
// OP_LOAD_F	28	182	9309
// OP_BITAND	9309	223	9310
// OP_IFNOT	9310	8	0
// OP_ADDRESS	28	146	9311
// OP_STOREP_FNC	517	9311	0
// OP_ADDRESS	28	148	9312
// OP_STOREP_FNC	9271	9312	0
// OP_ADDRESS	28	150	9313
// OP_ADD_F	31	993	9314
// OP_STOREP_F	9314	9313	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	9315
// OP_STOREP_FNC	517	9315	0
// OP_ADDRESS	28	148	9316
// OP_STOREP_FNC	9272	9316	0
// OP_ADDRESS	28	150	9317
// OP_ADD_F	31	993	9318
// OP_STOREP_F	9318	9317	0
// OP_DONE	0	0	0
void () Dog_JumpTouch = 
{
    local float ldmg;
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        
        if(vlen(self.velocity) > 300)
        {
            ldmg = MOVETYPE_BOUNCE + (MOVETYPE_BOUNCE * random());
            T_Damage(other, self, self, ldmg);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & FL_ONGROUND)
        {
            self.touch = SUB_Null;
            self.think = dog_leap1;
            self.nextthink = time + 0.1;
        }
        
        return;
    }
    
    self.touch = SUB_Null;
    self.think = dog_run1;
    self.nextthink = time + 0.1;
};

// dog_stand1
// function begins at statement 15294, parm_start=9320
// OP_STATE	5983	9320	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand1 = [69, dog_stand2]
{
    ai_stand();
};

// dog_stand2
// function begins at statement 15297, parm_start=9321
// OP_STATE	5984	9321	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand2 = [70, dog_stand3]
{
    ai_stand();
};

// dog_stand3
// function begins at statement 15300, parm_start=9322
// OP_STATE	5986	9322	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand3 = [71, dog_stand4]
{
    ai_stand();
};

// dog_stand4
// function begins at statement 15303, parm_start=9323
// OP_STATE	5988	9323	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand4 = [72, dog_stand5]
{
    ai_stand();
};

// dog_stand5
// function begins at statement 15306, parm_start=9324
// OP_STATE	3216	9324	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand5 = [73, dog_stand6]
{
    ai_stand();
};

// dog_stand6
// function begins at statement 15309, parm_start=9325
// OP_STATE	5991	9325	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand6 = [74, dog_stand7]
{
    ai_stand();
};

// dog_stand7
// function begins at statement 15312, parm_start=9326
// OP_STATE	5993	9326	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand7 = [75, dog_stand8]
{
    ai_stand();
};

// dog_stand8
// function begins at statement 15315, parm_start=9327
// OP_STATE	5995	9327	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand8 = [76, dog_stand9]
{
    ai_stand();
};

// dog_stand9
// function begins at statement 15318, parm_start=9328
// OP_STATE	5997	9319	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () dog_stand9 = [77, dog_stand1]
{
    ai_stand();
};

// dog_walk1
// function begins at statement 15321, parm_start=9329
// OP_STATE	5999	9329	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	9330
// OP_IFNOT	9330	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9331	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk1 = [78, dog_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "dog/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(FL_CLIENT);
};

// dog_walk2
// function begins at statement 15334, parm_start=9332
// OP_STATE	6001	9332	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk2 = [79, dog_walk3]
{
    ai_walk(FL_CLIENT);
};

// dog_walk3
// function begins at statement 15338, parm_start=9333
// OP_STATE	1178	9333	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk3 = [80, dog_walk4]
{
    ai_walk(FL_CLIENT);
};

// dog_walk4
// function begins at statement 15342, parm_start=9334
// OP_STATE	6004	9334	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk4 = [81, dog_walk5]
{
    ai_walk(FL_CLIENT);
};

// dog_walk5
// function begins at statement 15346, parm_start=9335
// OP_STATE	6006	9335	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk5 = [82, dog_walk6]
{
    ai_walk(FL_CLIENT);
};

// dog_walk6
// function begins at statement 15350, parm_start=9336
// OP_STATE	6008	9336	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk6 = [83, dog_walk7]
{
    ai_walk(FL_CLIENT);
};

// dog_walk7
// function begins at statement 15354, parm_start=9337
// OP_STATE	6010	9337	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk7 = [84, dog_walk8]
{
    ai_walk(FL_CLIENT);
};

// dog_walk8
// function begins at statement 15358, parm_start=9338
// OP_STATE	6011	9328	0
// OP_STORE_V	217	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () dog_walk8 = [85, dog_walk1]
{
    ai_walk(FL_CLIENT);
};

// dog_run1
// function begins at statement 15362, parm_start=9338
// OP_STATE	6055	9338	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	9339
// OP_IFNOT	9339	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9331	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	218	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run1 = [48, dog_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "dog/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(FL_INWATER);
};

// dog_run2
// function begins at statement 15375, parm_start=9340
// OP_STATE	6057	9340	0
// OP_STORE_V	219	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run2 = [49, dog_run3]
{
    ai_run(FL_MONSTER);
};

// dog_run3
// function begins at statement 15379, parm_start=9341
// OP_STATE	756	9341	0
// OP_STORE_V	219	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run3 = [50, dog_run4]
{
    ai_run(FL_MONSTER);
};

// dog_run4
// function begins at statement 15383, parm_start=9342
// OP_STATE	5951	9342	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run4 = [51, dog_run5]
{
    ai_run(KINDA_WANT);
};

// dog_run5
// function begins at statement 15387, parm_start=9343
// OP_STATE	5953	9343	0
// OP_STORE_V	220	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run5 = [52, dog_run6]
{
    ai_run(FL_GODMODE);
};

// dog_run6
// function begins at statement 15391, parm_start=9344
// OP_STATE	5955	9344	0
// OP_STORE_V	219	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run6 = [53, dog_run7]
{
    ai_run(FL_MONSTER);
};

// dog_run7
// function begins at statement 15395, parm_start=9345
// OP_STATE	5957	9345	0
// OP_STORE_V	218	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run7 = [54, dog_run8]
{
    ai_run(FL_INWATER);
};

// dog_run8
// function begins at statement 15399, parm_start=9346
// OP_STATE	5959	9346	0
// OP_STORE_V	219	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run8 = [55, dog_run9]
{
    ai_run(FL_MONSTER);
};

// dog_run9
// function begins at statement 15403, parm_start=9347
// OP_STATE	5961	9347	0
// OP_STORE_V	219	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run9 = [56, dog_run10]
{
    ai_run(FL_MONSTER);
};

// dog_run10
// function begins at statement 15407, parm_start=9348
// OP_STATE	5963	9348	0
// OP_STORE_V	576	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run10 = [57, dog_run11]
{
    ai_run(KINDA_WANT);
};

// dog_run11
// function begins at statement 15411, parm_start=9349
// OP_STATE	5965	9349	0
// OP_STORE_V	220	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run11 = [58, dog_run12]
{
    ai_run(FL_GODMODE);
};

// dog_run12
// function begins at statement 15415, parm_start=9350
// OP_STATE	5967	9272	0
// OP_STORE_V	219	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () dog_run12 = [59, dog_run1]
{
    ai_run(FL_MONSTER);
};

// dog_atta1
// function begins at statement 15419, parm_start=9351
// OP_STATE	213	9351	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta1 = [0, dog_atta2]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_atta2
// function begins at statement 15423, parm_start=9352
// OP_STATE	214	9352	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta2 = [1, dog_atta3]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_atta3
// function begins at statement 15427, parm_start=9353
// OP_STATE	216	9353	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta3 = [2, dog_atta4]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_atta4
// function begins at statement 15431, parm_start=9354
// OP_STATE	228	9354	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9355	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	9273	0	0
// OP_DONE	0	0	0
void () dog_atta4 = [3, dog_atta5]
{
    sound(self, CHAN_VOICE, "dog/dattack1.wav", TRUE, ATTN_NORM);
    dog_bite();
};

// dog_atta5
// function begins at statement 15440, parm_start=9356
// OP_STATE	229	9356	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta5 = [4, dog_atta6]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_atta6
// function begins at statement 15444, parm_start=9357
// OP_STATE	230	9357	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta6 = [5, dog_atta7]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_atta7
// function begins at statement 15448, parm_start=9358
// OP_STATE	231	9358	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta7 = [6, dog_atta8]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_atta8
// function begins at statement 15452, parm_start=9359
// OP_STATE	232	9272	0
// OP_STORE_V	235	4	0
// OP_CALL1	1247	0	0
// OP_DONE	0	0	0
void () dog_atta8 = [7, dog_run1]
{
    ai_charge(MOVETYPE_BOUNCE);
};

// dog_leap1
// function begins at statement 15456, parm_start=9359
// OP_STATE	730	9359	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () dog_leap1 = [60, dog_leap2]
{
    ai_face();
};

// dog_leap2
// function begins at statement 15459, parm_start=9360
// OP_STATE	5969	9360	0
// OP_CALL0	1148	0	0
// OP_ADDRESS	28	146	9361
// OP_STOREP_FNC	9297	9361	0
// OP_LOAD_V	28	117	9362
// OP_STORE_V	9362	4	0
// OP_CALL1	447	0	0
// OP_ADDRESS	28	108	9365
// OP_LOAD_F	28	108	9366
// OP_ADD_F	9366	214	9367
// OP_STOREP_F	9367	9365	0
// OP_ADDRESS	28	113	9368
// OP_MUL_VF	59	3070	9371
// OP_ADD_V	9371	9374	9377
// OP_STOREP_V	9377	9368	0
// OP_LOAD_F	28	182	9380
// OP_BITAND	9380	223	9381
// OP_IFNOT	9381	5	0
// OP_ADDRESS	28	182	9382
// OP_LOAD_F	28	182	9383
// OP_SUB_F	9383	223	9384
// OP_STOREP_F	9384	9382	0
// OP_DONE	0	0	0
void () dog_leap2 = [61, dog_leap3]
{
    ai_face();
    self.touch = Dog_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + TRUE;
    self.velocity = (v_forward * 300) + '0 0 200';
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
    }
    
};

// dog_leap3
// function begins at statement 15482, parm_start=9385
// OP_STATE	5971	9385	0
// OP_DONE	0	0	0
void () dog_leap3 = [62, dog_leap4]
{
};

// dog_leap4
// function begins at statement 15484, parm_start=9386
// OP_STATE	4366	9386	0
// OP_DONE	0	0	0
void () dog_leap4 = [63, dog_leap5]
{
};

// dog_leap5
// function begins at statement 15486, parm_start=9387
// OP_STATE	220	9387	0
// OP_DONE	0	0	0
void () dog_leap5 = [64, dog_leap6]
{
};

// dog_leap6
// function begins at statement 15488, parm_start=9388
// OP_STATE	5975	9388	0
// OP_DONE	0	0	0
void () dog_leap6 = [65, dog_leap7]
{
};

// dog_leap7
// function begins at statement 15490, parm_start=9389
// OP_STATE	5977	9389	0
// OP_DONE	0	0	0
void () dog_leap7 = [66, dog_leap8]
{
};

// dog_leap8
// function begins at statement 15492, parm_start=9390
// OP_STATE	5979	9390	0
// OP_DONE	0	0	0
void () dog_leap8 = [67, dog_leap9]
{
};

// dog_leap9
// function begins at statement 15494, parm_start=9391
// OP_STATE	5981	9390	0
// OP_DONE	0	0	0
void () dog_leap9 = [68, dog_leap9]
{
};

// dog_pain1
// function begins at statement 15496, parm_start=9392
// OP_STATE	8433	9392	0
// OP_DONE	0	0	0
void () dog_pain1 = [26, dog_pain2]
{
};

// dog_pain2
// function begins at statement 15498, parm_start=9393
// OP_STATE	302	9393	0
// OP_DONE	0	0	0
void () dog_pain2 = [27, dog_pain3]
{
};

// dog_pain3
// function begins at statement 15500, parm_start=9394
// OP_STATE	303	9394	0
// OP_DONE	0	0	0
void () dog_pain3 = [28, dog_pain4]
{
};

// dog_pain4
// function begins at statement 15502, parm_start=9395
// OP_STATE	5692	9395	0
// OP_DONE	0	0	0
void () dog_pain4 = [29, dog_pain5]
{
};

// dog_pain5
// function begins at statement 15504, parm_start=9396
// OP_STATE	304	9396	0
// OP_DONE	0	0	0
void () dog_pain5 = [30, dog_pain6]
{
};

// dog_pain6
// function begins at statement 15506, parm_start=9397
// OP_STATE	305	9272	0
// OP_DONE	0	0	0
void () dog_pain6 = [31, dog_run1]
{
};

// dog_painb1
// function begins at statement 15508, parm_start=9398
// OP_STATE	219	9398	0
// OP_DONE	0	0	0
void () dog_painb1 = [32, dog_painb2]
{
};

// dog_painb2
// function begins at statement 15510, parm_start=9399
// OP_STATE	307	9399	0
// OP_DONE	0	0	0
void () dog_painb2 = [33, dog_painb3]
{
};

// dog_painb3
// function begins at statement 15512, parm_start=9400
// OP_STATE	5699	9400	0
// OP_STORE_V	229	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () dog_painb3 = [34, dog_painb4]
{
    ai_pain(MOVETYPE_STEP);
};

// dog_painb4
// function begins at statement 15516, parm_start=9401
// OP_STATE	575	9401	0
// OP_STORE_V	2717	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () dog_painb4 = [35, dog_painb5]
{
    ai_pain(12);
};

// dog_painb5
// function begins at statement 15520, parm_start=9402
// OP_STATE	5683	9402	0
// OP_STORE_V	2717	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () dog_painb5 = [36, dog_painb6]
{
    ai_pain(12);
};

// dog_painb6
// function begins at statement 15524, parm_start=9403
// OP_STATE	5685	9403	0
// OP_STORE_V	216	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () dog_painb6 = [37, dog_painb7]
{
    ai_pain(FL_SWIM);
};

// dog_painb7
// function begins at statement 15528, parm_start=9404
// OP_STATE	5687	9404	0
// OP_DONE	0	0	0
void () dog_painb7 = [38, dog_painb8]
{
};

// dog_painb8
// function begins at statement 15530, parm_start=9405
// OP_STATE	5689	9405	0
// OP_STORE_V	229	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () dog_painb8 = [39, dog_painb9]
{
    ai_pain(MOVETYPE_STEP);
};

// dog_painb9
// function begins at statement 15534, parm_start=9406
// OP_STATE	2101	9406	0
// OP_DONE	0	0	0
void () dog_painb9 = [40, dog_painb10]
{
};

// dog_painb10
// function begins at statement 15536, parm_start=9407
// OP_STATE	6042	9407	0
// OP_STORE_V	235	4	0
// OP_CALL1	1726	0	0
// OP_DONE	0	0	0
void () dog_painb10 = [41, dog_painb11]
{
    ai_pain(MOVETYPE_BOUNCE);
};

// dog_painb11
// function begins at statement 15540, parm_start=9408
// OP_STATE	6044	9408	0
// OP_DONE	0	0	0
void () dog_painb11 = [42, dog_painb12]
{
};

// dog_painb12
// function begins at statement 15542, parm_start=9409
// OP_STATE	6046	9409	0
// OP_DONE	0	0	0
void () dog_painb12 = [43, dog_painb13]
{
};

// dog_painb13
// function begins at statement 15544, parm_start=9410
// OP_STATE	6048	9410	0
// OP_DONE	0	0	0
void () dog_painb13 = [44, dog_painb14]
{
};

// dog_painb14
// function begins at statement 15546, parm_start=9411
// OP_STATE	1770	9411	0
// OP_DONE	0	0	0
void () dog_painb14 = [45, dog_painb15]
{
};

// dog_painb15
// function begins at statement 15548, parm_start=9412
// OP_STATE	6051	9412	0
// OP_DONE	0	0	0
void () dog_painb15 = [46, dog_painb16]
{
};

// dog_painb16
// function begins at statement 15550, parm_start=9413
// OP_STATE	6053	9272	0
// OP_DONE	0	0	0
void () dog_painb16 = [47, dog_run1]
{
};

// dog_pain
// function begins at statement 15552, parm_start=9414
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9414	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_GT	1	677	9415
// OP_IFNOT	9415	3	0
// OP_CALL0	9391	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9397	0	0
// OP_DONE	0	0	0
void () dog_pain = 
{
    sound(self, CHAN_VOICE, "dog/dpain1.wav", TRUE, ATTN_NORM);
    if(random() > 0.5)
    {
        dog_pain1();
    }
    else
    {
        dog_painb1();
    }
    
};

// dog_die1
// function begins at statement 15565, parm_start=9417
// OP_STATE	217	9417	0
// OP_DONE	0	0	0
void () dog_die1 = [8, dog_die2]
{
};

// dog_die2
// function begins at statement 15567, parm_start=9418
// OP_STATE	234	9418	0
// OP_DONE	0	0	0
void () dog_die2 = [9, dog_die3]
{
};

// dog_die3
// function begins at statement 15569, parm_start=9419
// OP_STATE	235	9419	0
// OP_DONE	0	0	0
void () dog_die3 = [10, dog_die4]
{
};

// dog_die4
// function begins at statement 15571, parm_start=9420
// OP_STATE	236	9420	0
// OP_DONE	0	0	0
void () dog_die4 = [11, dog_die5]
{
};

// dog_die5
// function begins at statement 15573, parm_start=9421
// OP_STATE	2717	9421	0
// OP_DONE	0	0	0
void () dog_die5 = [12, dog_die6]
{
};

// dog_die6
// function begins at statement 15575, parm_start=9422
// OP_STATE	8413	9422	0
// OP_DONE	0	0	0
void () dog_die6 = [13, dog_die7]
{
};

// dog_die7
// function begins at statement 15577, parm_start=9423
// OP_STATE	3382	9423	0
// OP_DONE	0	0	0
void () dog_die7 = [14, dog_die8]
{
};

// dog_die8
// function begins at statement 15579, parm_start=9424
// OP_STATE	2246	9424	0
// OP_DONE	0	0	0
void () dog_die8 = [15, dog_die9]
{
};

// dog_die9
// function begins at statement 15581, parm_start=9425
// OP_STATE	218	9424	0
// OP_DONE	0	0	0
void () dog_die9 = [16, dog_die9]
{
};

// dog_dieb1
// function begins at statement 15583, parm_start=9426
// OP_STATE	5450	9426	0
// OP_DONE	0	0	0
void () dog_dieb1 = [17, dog_dieb2]
{
};

// dog_dieb2
// function begins at statement 15585, parm_start=9427
// OP_STATE	3866	9427	0
// OP_DONE	0	0	0
void () dog_dieb2 = [18, dog_dieb3]
{
};

// dog_dieb3
// function begins at statement 15587, parm_start=9428
// OP_STATE	8422	9428	0
// OP_DONE	0	0	0
void () dog_dieb3 = [19, dog_dieb4]
{
};

// dog_dieb4
// function begins at statement 15589, parm_start=9429
// OP_STATE	576	9429	0
// OP_DONE	0	0	0
void () dog_dieb4 = [20, dog_dieb5]
{
};

// dog_dieb5
// function begins at statement 15591, parm_start=9430
// OP_STATE	8425	9430	0
// OP_DONE	0	0	0
void () dog_dieb5 = [21, dog_dieb6]
{
};

// dog_dieb6
// function begins at statement 15593, parm_start=9431
// OP_STATE	8428	9431	0
// OP_DONE	0	0	0
void () dog_dieb6 = [22, dog_dieb7]
{
};

// dog_dieb7
// function begins at statement 15595, parm_start=9432
// OP_STATE	301	9432	0
// OP_DONE	0	0	0
void () dog_dieb7 = [23, dog_dieb8]
{
};

// dog_dieb8
// function begins at statement 15597, parm_start=9433
// OP_STATE	5005	9433	0
// OP_DONE	0	0	0
void () dog_dieb8 = [24, dog_dieb9]
{
};

// dog_dieb9
// function begins at statement 15599, parm_start=9434
// OP_STATE	2261	9433	0
// OP_DONE	0	0	0
void () dog_dieb9 = [25, dog_dieb9]
{
};

// dog_die
// function begins at statement 15601, parm_start=9435
// OP_LOAD_F	28	152	9435
// OP_LT	9435	9250	9436
// OP_IFNOT	9436	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	9437
// OP_STORE_V	9437	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	9438
// OP_STORE_V	9438	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	9439
// OP_STORE_V	9439	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	9440	4	0
// OP_LOAD_F	28	152	9441
// OP_STORE_V	9441	7	0
// OP_CALL2	5842	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9442	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	104	9443
// OP_STOREP_F	237	9443	0
// OP_CALL0	452	0	0
// OP_GT	1	677	9444
// OP_IFNOT	9444	3	0
// OP_CALL0	9416	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9425	0	0
// OP_DONE	0	0	0
void () dog_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        ThrowHead("progs/h_dog.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "dog/ddeath.wav", TRUE, ATTN_NORM);
    self.solid = SOLID_NOT;
    if(random() > 0.5)
    {
        dog_die1();
    }
    else
    {
        dog_dieb1();
    }
    
};

// CheckDogMelee
// function begins at statement 15642, parm_start=9446
// OP_EQ_F	1151	242	9446
// OP_IFNOT	9446	4	0
// OP_ADDRESS	28	367	9447
// OP_STOREP_F	370	9447	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckDogMelee = 
{
    
    if(enemy_range == RANGE_MELEE)
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    return FALSE;
};

// CheckDogJump
// function begins at statement 15649, parm_start=9449
// OP_LOAD_F	28	108	9453
// OP_LOAD_F	28	137	9454
// OP_ADD_F	9453	9454	9455
// OP_LOAD_ENT	28	181	9456
// OP_LOAD_F	9456	108	9457
// OP_LOAD_ENT	28	181	9458
// OP_LOAD_F	9458	137	9459
// OP_ADD_F	9457	9459	9460
// OP_LOAD_ENT	28	181	9461
// OP_LOAD_F	9461	145	9462
// OP_MUL_F	4009	9462	9463
// OP_ADD_F	9460	9463	9464
// OP_GT	9455	9464	9465
// OP_IFNOT	9465	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	108	9466
// OP_LOAD_F	28	141	9467
// OP_ADD_F	9466	9467	9468
// OP_LOAD_ENT	28	181	9469
// OP_LOAD_F	9469	108	9470
// OP_LOAD_ENT	28	181	9471
// OP_LOAD_F	9471	137	9472
// OP_ADD_F	9470	9472	9473
// OP_LOAD_ENT	28	181	9474
// OP_LOAD_F	9474	145	9475
// OP_MUL_F	703	9475	9476
// OP_ADD_F	9473	9476	9477
// OP_LT	9468	9477	9478
// OP_IFNOT	9478	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	9479
// OP_LOAD_V	9479	105	9480
// OP_LOAD_V	28	105	9483
// OP_SUB_V	9480	9483	9486
// OP_STORE_V	9486	9449	0
// OP_STORE_F	213	9451	0
// OP_STORE_V	9449	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	9452	0
// OP_LT	9452	1178	9489
// OP_IFNOT	9489	2	0
// OP_RETURN	213	0	0
// OP_GT	9452	2346	9490
// OP_IFNOT	9490	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () CheckDogJump = 
{
    local vector dist;
    local float d;
    
    if((self.origin_z + self.mins_z) > ((self.enemy.origin_z + self.enemy.mins_z) + (0.75 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + (0.25 * self.enemy.size_z)))
    {
        return FALSE;
    }
    
    dist = self.enemy.origin - self.origin;
    dist_z = FALSE;
    d = vlen(dist);
    
    if(d < 80)
    {
        return FALSE;
    }
    
    
    if(d > 150)
    {
        return FALSE;
    }
    
    return TRUE;
};

// DogCheckAttack
// function begins at statement 15696, parm_start=9492
// OP_CALL0	9445	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	9495
// OP_STOREP_F	370	9495	0
// OP_RETURN	214	0	0
// OP_CALL0	9448	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	367	9496
// OP_STOREP_F	371	9496	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () DogCheckAttack = 
{
    local vector vec;
    
    if(CheckDogMelee())
    {
        self.attack_state = AS_MELEE;
        return TRUE;
    }
    
    
    if(CheckDogJump())
    {
        self.attack_state = AS_MISSILE;
        return TRUE;
    }
    
    return FALSE;
};

// monster_dog
// function begins at statement 15708, parm_start=9498
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9440	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9498	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9355	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9442	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9414	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1641	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9331	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	9499
// OP_STOREP_F	240	9499	0
// OP_ADDRESS	28	103	9500
// OP_STOREP_F	229	9500	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9498	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	9501	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	9504
// OP_STOREP_F	2261	9504	0
// OP_ADDRESS	28	356	9505
// OP_STOREP_FNC	9319	9505	0
// OP_ADDRESS	28	357	9506
// OP_STOREP_FNC	9328	9506	0
// OP_ADDRESS	28	358	9507
// OP_STOREP_FNC	9272	9507	0
// OP_ADDRESS	28	361	9508
// OP_STOREP_FNC	9413	9508	0
// OP_ADDRESS	28	362	9509
// OP_STOREP_FNC	9434	9509	0
// OP_ADDRESS	28	360	9510
// OP_STOREP_FNC	9350	9510	0
// OP_ADDRESS	28	359	9511
// OP_STOREP_FNC	9271	9511	0
// OP_CALL0	6156	0	0
// OP_DONE	0	0	0
void () monster_dog = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/h_dog.mdl");
    precache_model("progs/dog.mdl");
    precache_sound("dog/dattack1.wav");
    precache_sound("dog/ddeath.wav");
    precache_sound("dog/dpain1.wav");
    precache_sound("dog/dsight.wav");
    precache_sound("dog/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/dog.mdl");
    setsize(self, VEC_HULL2_MIN, '32 32 40');
    self.health = 25;
    self.th_stand = dog_stand1;
    self.th_walk = dog_walk1;
    self.th_run = dog_run1;
    self.th_pain = dog_pain;
    self.th_die = dog_die;
    self.th_melee = dog_atta1;
    self.th_missile = dog_leap1;
    walkmonster_start();
};

