void() dog_leap1;
void() dog_run1;
void() dog_bite;
// dog_bite
// function begins at statement 15652
OP_LOAD_ENT	28	181	9255
OP_NOT_ENT	9255	0	9256
OP_IFNOT	9256	2	0
OP_RETURN	0	0	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_LOAD_ENT	28	181	9257
OP_STORE_V	9257	4	0
OP_STORE_V	28	7	0
OP_CALL2	522	0	0
OP_NOT_F	1	0	9258
OP_IFNOT	9258	2	0
OP_RETURN	0	0	0
OP_LOAD_ENT	28	181	9259
OP_LOAD_V	9259	105	9260
OP_LOAD_V	28	105	9263
OP_SUB_V	9260	9263	9266
OP_STORE_V	9266	9251	0
OP_STORE_V	9251	4	0
OP_CALL1	457	0	0
OP_GT	1	1884	9269
OP_IFNOT	9269	2	0
OP_RETURN	0	0	0
OP_CALL0	452	0	0
OP_STORE_V	1	9270	0
OP_CALL0	452	0	0
OP_ADD_F	9270	1	9273
OP_CALL0	452	0	0
OP_ADD_F	9273	1	9274
OP_MUL_F	9274	6077	9275
OP_STORE_F	9275	9254	0
OP_LOAD_ENT	28	181	9276
OP_STORE_V	9276	4	0
OP_STORE_V	28	7	0
OP_STORE_V	28	10	0
OP_STORE_V	9254	13	0
OP_CALL4	520	0	0
OP_DONE	0	0	0
voidTODO () dog_bite =
{
    local vector delta;
    local float ldmg;
    // *** UNPROCESSED OPCODE OP_NOT_ENT 9255 0 9256
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    ai_charge(10.000);
    
    if(!CanDamage(self.enemy, self))
    {
        return; /* TODO retvalue? */
    }
    
    delta = self.enemy.origin - self.origin;
    // *** UNPROCESSED OPCODE OP_GT 1 1884 9269
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    random();
    random();
    // *** UNPROCESSED OPCODE OP_MUL_F 9274 6077 9275
    ldmg = ;
    T_Damage(self.enemy, self, self, ldmg);
};

void() Dog_JumpTouch;
// Dog_JumpTouch
// function begins at statement 15690
OP_LOAD_F	28	152	9279
OP_LE	9279	337	9280
OP_IFNOT	9280	2	0
OP_RETURN	0	0	0
OP_LOAD_F	29	163	9281
OP_IFNOT	9281	15	0
OP_LOAD_V	28	113	9282
OP_STORE_V	9282	4	0
OP_CALL1	457	0	0
OP_GT	1	2596	9285
OP_IFNOT	9285	10	0
OP_CALL0	452	0	0
OP_MUL_F	318	1	9286
OP_ADD_F	318	9286	9287
OP_STORE_F	9287	9278	0
OP_STORE_V	29	4	0
OP_STORE_V	28	7	0
OP_STORE_V	28	10	0
OP_STORE_V	9278	13	0
OP_CALL4	520	0	0
OP_STORE_V	28	4	0
OP_CALL1	483	0	0
OP_NOT_F	1	0	9288
OP_IFNOT	9288	12	0
OP_LOAD_F	28	182	9289
OP_BITAND	9289	223	9290
OP_IFNOT	9290	8	0
OP_ADDRESS	28	146	9291
OP_STOREP_FNC	517	9291	0
OP_ADDRESS	28	148	9292
OP_STOREP_FNC	9248	9292	0
OP_ADDRESS	28	150	9293
OP_ADD_F	31	603	9294
OP_STOREP_F	9294	9293	0
OP_RETURN	0	0	0
OP_ADDRESS	28	146	9295
OP_STOREP_FNC	517	9295	0
OP_ADDRESS	28	148	9296
OP_STOREP_FNC	9249	9296	0
OP_ADDRESS	28	150	9297
OP_ADD_F	31	603	9298
OP_STOREP_F	9298	9297	0
OP_DONE	0	0	0
voidTODO () Dog_JumpTouch =
{
    local float ldmg;
    
    if(self.health <= 0.000)
    {
        return; /* TODO retvalue? */
    }
    
    
    if(other.takedamage)
    {
        // *** UNPROCESSED OPCODE OP_GT 1 2596 9285
        
        if()
        {
            random();
            // *** UNPROCESSED OPCODE OP_MUL_F 318 1 9286
            ldmg = 10.000 + ;
            T_Damage(other, self, self, ldmg);
        }
        
    }
    
    
    if(!checkbottom(self))
    {
        
        if(self.flags & 512.000)
        {
            self.touch = SUB_Null;
            self.think = dog_leap1;
            self.nextthink = 0.000 + 0.100;
        }
        
        return; /* TODO retvalue? */
    }
    
    self.touch = SUB_Null;
    self.think = dog_run1;
    self.nextthink = 0.000 + 0.100;
};

void() dog_stand1;
// dog_stand1
// function begins at statement 15733
OP_STATE	5383	9300	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5383 9300 0
    ai_stand();
};

// dog_stand2
// function begins at statement 15736
OP_STATE	5384	9301	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5384 9301 0
    ai_stand();
};

// dog_stand3
// function begins at statement 15739
OP_STATE	5386	9302	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5386 9302 0
    ai_stand();
};

// dog_stand4
// function begins at statement 15742
OP_STATE	5388	9303	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5388 9303 0
    ai_stand();
};

// dog_stand5
// function begins at statement 15745
OP_STATE	2739	9304	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2739 9304 0
    ai_stand();
};

// dog_stand6
// function begins at statement 15748
OP_STATE	5391	9305	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5391 9305 0
    ai_stand();
};

// dog_stand7
// function begins at statement 15751
OP_STATE	5393	9306	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5393 9306 0
    ai_stand();
};

// dog_stand8
// function begins at statement 15754
OP_STATE	5395	9307	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5395 9307 0
    ai_stand();
};

// dog_stand9
// function begins at statement 15757
OP_STATE	5397	9299	0
OP_CALL0	1359	0	0
OP_DONE	0	0	0
voidTODO () dog_stand9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5397 9299 0
    ai_stand();
};

void() dog_walk1;
// dog_walk1
// function begins at statement 15760
OP_STATE	5399	9309	0
OP_CALL0	452	0	0
OP_LT	1	836	9310
OP_IFNOT	9310	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9311	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5399 9309 0
    
    if(random() < 0.200)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
    ai_walk(8.000);
};

// dog_walk2
// function begins at statement 15773
OP_STATE	5401	9312	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5401 9312 0
    ai_walk(8.000);
};

// dog_walk3
// function begins at statement 15777
OP_STATE	788	9313	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 788 9313 0
    ai_walk(8.000);
};

// dog_walk4
// function begins at statement 15781
OP_STATE	5404	9314	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5404 9314 0
    ai_walk(8.000);
};

// dog_walk5
// function begins at statement 15785
OP_STATE	5406	9315	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5406 9315 0
    ai_walk(8.000);
};

// dog_walk6
// function begins at statement 15789
OP_STATE	5408	9316	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5408 9316 0
    ai_walk(8.000);
};

// dog_walk7
// function begins at statement 15793
OP_STATE	5410	9317	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5410 9317 0
    ai_walk(8.000);
};

// dog_walk8
// function begins at statement 15797
OP_STATE	5411	9308	0
OP_STORE_V	6077	4	0
OP_CALL1	1351	0	0
OP_DONE	0	0	0
voidTODO () dog_walk8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5411 9308 0
    ai_walk(8.000);
};

// dog_run1
// function begins at statement 15801
OP_STATE	5456	9318	0
OP_CALL0	452	0	0
OP_LT	1	836	9319
OP_IFNOT	9319	7	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9311	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	327	16	0
OP_CALL5	453	0	0
OP_STORE_V	6078	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5456 9318 0
    
    if(random() < 0.200)
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 2.000);
    }
    
    ai_run(16.000);
};

// dog_run2
// function begins at statement 15814
OP_STATE	5458	9320	0
OP_STORE_V	5674	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5458 9320 0
    ai_run(32.000);
};

// dog_run3
// function begins at statement 15818
OP_STATE	2227	9321	0
OP_STORE_V	5674	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2227 9321 0
    ai_run(32.000);
};

// dog_run4
// function begins at statement 15822
OP_STATE	5351	9322	0
OP_STORE_V	894	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5351 9322 0
    ai_run(20.000);
};

// dog_run5
// function begins at statement 15826
OP_STATE	5353	9323	0
OP_STORE_V	260	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5353 9323 0
    ai_run(64.000);
};

// dog_run6
// function begins at statement 15830
OP_STATE	5355	9324	0
OP_STORE_V	5674	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5355 9324 0
    ai_run(32.000);
};

// dog_run7
// function begins at statement 15834
OP_STATE	5357	9325	0
OP_STORE_V	6078	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5357 9325 0
    ai_run(16.000);
};

// dog_run8
// function begins at statement 15838
OP_STATE	5359	9326	0
OP_STORE_V	5674	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5359 9326 0
    ai_run(32.000);
};

// dog_run9
// function begins at statement 15842
OP_STATE	5361	9327	0
OP_STORE_V	5674	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5361 9327 0
    ai_run(32.000);
};

// dog_run10
// function begins at statement 15846
OP_STATE	5363	9328	0
OP_STORE_V	894	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5363 9328 0
    ai_run(20.000);
};

// dog_run11
// function begins at statement 15850
OP_STATE	5365	9329	0
OP_STORE_V	260	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5365 9329 0
    ai_run(64.000);
};

// dog_run12
// function begins at statement 15854
OP_STATE	5367	9249	0
OP_STORE_V	5674	4	0
OP_CALL1	1432	0	0
OP_DONE	0	0	0
voidTODO () dog_run12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5367 9249 0
    ai_run(32.000);
};

void() dog_atta1;
// dog_atta1
// function begins at statement 15858
OP_STATE	337	9331	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 337 9331 0
    ai_charge(10.000);
};

// dog_atta2
// function begins at statement 15862
OP_STATE	7368	9332	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7368 9332 0
    ai_charge(10.000);
};

// dog_atta3
// function begins at statement 15866
OP_STATE	7369	9333	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7369 9333 0
    ai_charge(10.000);
};

// dog_atta4
// function begins at statement 15870
OP_STATE	370	9334	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9335	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_CALL0	9250	0	0
OP_DONE	0	0	0
voidTODO () dog_atta4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 370 9334 0
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
    dog_bite();
};

// dog_atta5
// function begins at statement 15879
OP_STATE	6076	9336	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6076 9336 0
    ai_charge(10.000);
};

// dog_atta6
// function begins at statement 15883
OP_STATE	313	9337	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 313 9337 0
    ai_charge(10.000);
};

// dog_atta7
// function begins at statement 15887
OP_STATE	314	9338	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 314 9338 0
    ai_charge(10.000);
};

// dog_atta8
// function begins at statement 15891
OP_STATE	315	9249	0
OP_STORE_V	318	4	0
OP_CALL1	857	0	0
OP_DONE	0	0	0
voidTODO () dog_atta8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 315 9249 0
    ai_charge(10.000);
};

// dog_leap1
// function begins at statement 15895
OP_STATE	912	9339	0
OP_CALL0	758	0	0
OP_DONE	0	0	0
voidTODO () dog_leap1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 912 9339 0
    ai_face();
};

// dog_leap2
// function begins at statement 15898
OP_STATE	5369	9340	0
OP_CALL0	758	0	0
OP_ADDRESS	28	146	9341
OP_STOREP_FNC	9277	9341	0
OP_LOAD_V	28	117	9342
OP_STORE_V	9342	4	0
OP_CALL1	447	0	0
OP_ADDRESS	28	108	9345
OP_LOAD_F	28	108	9346
OP_ADD_F	9346	7368	9347
OP_STOREP_F	9347	9345	0
OP_ADDRESS	28	113	9348
OP_MUL_VF	59	2596	9351
OP_ADD_V	9351	9354	9357
OP_STOREP_V	9357	9348	0
OP_LOAD_F	28	182	9360
OP_BITAND	9360	223	9361
OP_IFNOT	9361	5	0
OP_ADDRESS	28	182	9362
OP_LOAD_F	28	182	9363
OP_SUB_F	9363	223	9364
OP_STOREP_F	9364	9362	0
OP_DONE	0	0	0
voidTODO () dog_leap2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5369 9340 0
    ai_face();
    self.touch = Dog_JumpTouch;
    makevectors(self.angles);
    self.origin_z = self.origin_z + 1.000;
    // *** UNPROCESSED OPCODE OP_ADD_V 9351 9354 9357
    self.velocity = ;
    
    if(self.flags & 512.000)
    {
        // *** UNPROCESSED OPCODE OP_SUB_F 9363 223 9364
        self.flags = ;
    }
    
};

// dog_leap3
// function begins at statement 15921
OP_STATE	5371	9365	0
OP_DONE	0	0	0
voidTODO () dog_leap3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5371 9365 0
};

// dog_leap4
// function begins at statement 15923
OP_STATE	3872	9366	0
OP_DONE	0	0	0
voidTODO () dog_leap4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3872 9366 0
};

// dog_leap5
// function begins at statement 15925
OP_STATE	260	9367	0
OP_DONE	0	0	0
voidTODO () dog_leap5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 260 9367 0
};

// dog_leap6
// function begins at statement 15927
OP_STATE	5375	9368	0
OP_DONE	0	0	0
voidTODO () dog_leap6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5375 9368 0
};

// dog_leap7
// function begins at statement 15929
OP_STATE	5377	9369	0
OP_DONE	0	0	0
voidTODO () dog_leap7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5377 9369 0
};

// dog_leap8
// function begins at statement 15931
OP_STATE	5379	9370	0
OP_DONE	0	0	0
voidTODO () dog_leap8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5379 9370 0
};

// dog_leap9
// function begins at statement 15933
OP_STATE	5381	9370	0
OP_DONE	0	0	0
voidTODO () dog_leap9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5381 9370 0
};

void() dog_pain1;
// dog_pain1
// function begins at statement 15935
OP_STATE	7788	9372	0
OP_DONE	0	0	0
voidTODO () dog_pain1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7788 9372 0
};

// dog_pain2
// function begins at statement 15937
OP_STATE	302	9373	0
OP_DONE	0	0	0
voidTODO () dog_pain2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 302 9373 0
};

// dog_pain3
// function begins at statement 15939
OP_STATE	303	9374	0
OP_DONE	0	0	0
voidTODO () dog_pain3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 303 9374 0
};

// dog_pain4
// function begins at statement 15941
OP_STATE	5105	9375	0
OP_DONE	0	0	0
voidTODO () dog_pain4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5105 9375 0
};

// dog_pain5
// function begins at statement 15943
OP_STATE	304	9376	0
OP_DONE	0	0	0
voidTODO () dog_pain5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 304 9376 0
};

// dog_pain6
// function begins at statement 15945
OP_STATE	305	9249	0
OP_DONE	0	0	0
voidTODO () dog_pain6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 305 9249 0
};

void() dog_painb1;
// dog_painb1
// function begins at statement 15947
OP_STATE	5674	9378	0
OP_DONE	0	0	0
voidTODO () dog_painb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5674 9378 0
};

// dog_painb2
// function begins at statement 15949
OP_STATE	307	9379	0
OP_DONE	0	0	0
voidTODO () dog_painb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 307 9379 0
};

// dog_painb3
// function begins at statement 15951
OP_STATE	5112	9380	0
OP_STORE_V	6076	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () dog_painb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5112 9380 0
    ai_pain(4.000);
};

// dog_painb4
// function begins at statement 15955
OP_STATE	3072	9381	0
OP_STORE_V	2250	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () dog_painb4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3072 9381 0
    ai_pain(12.000);
};

// dog_painb5
// function begins at statement 15959
OP_STATE	5096	9382	0
OP_STORE_V	2250	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () dog_painb5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5096 9382 0
    ai_pain(12.000);
};

// dog_painb6
// function begins at statement 15963
OP_STATE	5098	9383	0
OP_STORE_V	7369	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () dog_painb6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5098 9383 0
    ai_pain(2.000);
};

// dog_painb7
// function begins at statement 15967
OP_STATE	5100	9384	0
OP_DONE	0	0	0
voidTODO () dog_painb7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5100 9384 0
};

// dog_painb8
// function begins at statement 15969
OP_STATE	5102	9385	0
OP_STORE_V	6076	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () dog_painb8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5102 9385 0
    ai_pain(4.000);
};

// dog_painb9
// function begins at statement 15973
OP_STATE	1733	9386	0
OP_DONE	0	0	0
voidTODO () dog_painb9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1733 9386 0
};

// dog_painb10
// function begins at statement 15975
OP_STATE	5443	9387	0
OP_STORE_V	318	4	0
OP_CALL1	1346	0	0
OP_DONE	0	0	0
voidTODO () dog_painb10 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5443 9387 0
    ai_pain(10.000);
};

// dog_painb11
// function begins at statement 15979
OP_STATE	5445	9388	0
OP_DONE	0	0	0
voidTODO () dog_painb11 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5445 9388 0
};

// dog_painb12
// function begins at statement 15981
OP_STATE	5447	9389	0
OP_DONE	0	0	0
voidTODO () dog_painb12 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5447 9389 0
};

// dog_painb13
// function begins at statement 15983
OP_STATE	5449	9390	0
OP_DONE	0	0	0
voidTODO () dog_painb13 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5449 9390 0
};

// dog_painb14
// function begins at statement 15985
OP_STATE	1390	9391	0
OP_DONE	0	0	0
voidTODO () dog_painb14 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1390 9391 0
};

// dog_painb15
// function begins at statement 15987
OP_STATE	5452	9392	0
OP_DONE	0	0	0
voidTODO () dog_painb15 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5452 9392 0
};

// dog_painb16
// function begins at statement 15989
OP_STATE	5454	9249	0
OP_DONE	0	0	0
voidTODO () dog_painb16 =
{
    // *** UNPROCESSED OPCODE OP_STATE 5454 9249 0
};

void() dog_pain;
// dog_pain
// function begins at statement 15991
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9394	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_CALL0	452	0	0
OP_GT	1	1491	9395
OP_IFNOT	9395	3	0
OP_CALL0	9371	0	0
OP_GOTO	2	0	0
OP_CALL0	9377	0	0
OP_DONE	0	0	0
voidTODO () dog_pain =
{
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
    // *** UNPROCESSED OPCODE OP_GT 1 1491 9395
    if()
    {
        dog_pain1();
    }
    else    
    {
        dog_painb1();
    }
    
};

void() dog_die1;
// dog_die1
// function begins at statement 16004
OP_STATE	6077	9397	0
OP_DONE	0	0	0
voidTODO () dog_die1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6077 9397 0
};

// dog_die2
// function begins at statement 16006
OP_STATE	317	9398	0
OP_DONE	0	0	0
voidTODO () dog_die2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 317 9398 0
};

// dog_die3
// function begins at statement 16008
OP_STATE	318	9399	0
OP_DONE	0	0	0
voidTODO () dog_die3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 318 9399 0
};

// dog_die4
// function begins at statement 16010
OP_STATE	319	9400	0
OP_DONE	0	0	0
voidTODO () dog_die4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 319 9400 0
};

// dog_die5
// function begins at statement 16012
OP_STATE	2250	9401	0
OP_DONE	0	0	0
voidTODO () dog_die5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2250 9401 0
};

// dog_die6
// function begins at statement 16014
OP_STATE	7768	9402	0
OP_DONE	0	0	0
voidTODO () dog_die6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7768 9402 0
};

// dog_die7
// function begins at statement 16016
OP_STATE	2901	9403	0
OP_DONE	0	0	0
voidTODO () dog_die7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 2901 9403 0
};

// dog_die8
// function begins at statement 16018
OP_STATE	1876	9404	0
OP_DONE	0	0	0
voidTODO () dog_die8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1876 9404 0
};

// dog_die9
// function begins at statement 16020
OP_STATE	6078	9404	0
OP_DONE	0	0	0
voidTODO () dog_die9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 6078 9404 0
};

void() dog_dieb1;
// dog_dieb1
// function begins at statement 16022
OP_STATE	4861	9406	0
OP_DONE	0	0	0
voidTODO () dog_dieb1 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4861 9406 0
};

// dog_dieb2
// function begins at statement 16024
OP_STATE	3319	9407	0
OP_DONE	0	0	0
voidTODO () dog_dieb2 =
{
    // *** UNPROCESSED OPCODE OP_STATE 3319 9407 0
};

// dog_dieb3
// function begins at statement 16026
OP_STATE	7776	9408	0
OP_DONE	0	0	0
voidTODO () dog_dieb3 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7776 9408 0
};

// dog_dieb4
// function begins at statement 16028
OP_STATE	894	9409	0
OP_DONE	0	0	0
voidTODO () dog_dieb4 =
{
    // *** UNPROCESSED OPCODE OP_STATE 894 9409 0
};

// dog_dieb5
// function begins at statement 16030
OP_STATE	7779	9410	0
OP_DONE	0	0	0
voidTODO () dog_dieb5 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7779 9410 0
};

// dog_dieb6
// function begins at statement 16032
OP_STATE	7781	9411	0
OP_DONE	0	0	0
voidTODO () dog_dieb6 =
{
    // *** UNPROCESSED OPCODE OP_STATE 7781 9411 0
};

// dog_dieb7
// function begins at statement 16034
OP_STATE	301	9412	0
OP_DONE	0	0	0
voidTODO () dog_dieb7 =
{
    // *** UNPROCESSED OPCODE OP_STATE 301 9412 0
};

// dog_dieb8
// function begins at statement 16036
OP_STATE	4437	9413	0
OP_DONE	0	0	0
voidTODO () dog_dieb8 =
{
    // *** UNPROCESSED OPCODE OP_STATE 4437 9413 0
};

// dog_dieb9
// function begins at statement 16038
OP_STATE	1890	9413	0
OP_DONE	0	0	0
voidTODO () dog_dieb9 =
{
    // *** UNPROCESSED OPCODE OP_STATE 1890 9413 0
};

void() dog_die;
// dog_die
// function begins at statement 16040
OP_LOAD_F	28	152	9415
OP_LT	9415	8839	9416
OP_IFNOT	9416	24	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	3826	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_LOAD_F	28	152	9417
OP_STORE_V	3854	4	0
OP_STORE_V	9417	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	9418
OP_STORE_V	3854	4	0
OP_STORE_V	9418	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	9419
OP_STORE_V	3854	4	0
OP_STORE_V	9419	7	0
OP_CALL2	5218	0	0
OP_LOAD_F	28	152	9421
OP_STORE_V	9420	4	0
OP_STORE_V	9421	7	0
OP_CALL2	5247	0	0
OP_RETURN	0	0	0
OP_STORE_V	28	4	0
OP_STORE_V	322	7	0
OP_STORE_V	9422	10	0
OP_STORE_V	7368	13	0
OP_STORE_V	326	16	0
OP_CALL5	453	0	0
OP_ADDRESS	28	104	9423
OP_STOREP_F	237	9423	0
OP_CALL0	452	0	0
OP_GT	1	1491	9424
OP_IFNOT	9424	3	0
OP_CALL0	9396	0	0
OP_GOTO	2	0	0
OP_CALL0	9405	0	0
OP_DONE	0	0	0
voidTODO () dog_die =
{
    
    if(self.health < (-35.000))
    {
        sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
        ThrowGib("IMMEDIATE", self.health);
        ThrowGib("IMMEDIATE", self.health);
        ThrowGib("IMMEDIATE", self.health);
        ThrowHead(, self.health);
        return; /* TODO retvalue? */
    }
    
    sound(self, 2.000, "IMMEDIATE", 1.000, 1.000);
    self.solid = 0.000;
    // *** UNPROCESSED OPCODE OP_GT 1 1491 9424
    if()
    {
        dog_die1();
    }
    else    
    {
        dog_dieb1();
    }
    
};

void() CheckDogMelee;
// CheckDogMelee
// function begins at statement 16081
OP_EQ_F	761	242	9426
OP_IFNOT	9426	4	0
OP_ADDRESS	28	367	9427
OP_STOREP_F	370	9427	0
OP_RETURN	214	0	0
OP_RETURN	213	0	0
OP_DONE	0	0	0
voidTODO () CheckDogMelee =
{
    
    if(0.000 == 0.000)
    {
        self.attack_state = 3.000;
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

void() CheckDogJump;
// CheckDogJump
// function begins at statement 16088
OP_LOAD_F	28	108	9433
OP_LOAD_F	28	137	9434
OP_ADD_F	9433	9434	9435
OP_LOAD_ENT	28	181	9436
OP_LOAD_F	9436	108	9437
OP_LOAD_ENT	28	181	9438
OP_LOAD_F	9438	137	9439
OP_ADD_F	9437	9439	9440
OP_LOAD_ENT	28	181	9441
OP_LOAD_F	9441	145	9442
OP_MUL_F	3464	9442	9443
OP_ADD_F	9440	9443	9444
OP_GT	9435	9444	9445
OP_IFNOT	9445	2	0
OP_RETURN	213	0	0
OP_LOAD_F	28	108	9446
OP_LOAD_F	28	141	9447
OP_ADD_F	9446	9447	9448
OP_LOAD_ENT	28	181	9449
OP_LOAD_F	9449	108	9450
OP_LOAD_ENT	28	181	9451
OP_LOAD_F	9451	137	9452
OP_ADD_F	9450	9452	9453
OP_LOAD_ENT	28	181	9454
OP_LOAD_F	9454	145	9455
OP_MUL_F	3461	9455	9456
OP_ADD_F	9453	9456	9457
OP_LT	9448	9457	9458
OP_IFNOT	9458	2	0
OP_RETURN	213	0	0
OP_LOAD_ENT	28	181	9459
OP_LOAD_V	9459	105	9460
OP_LOAD_V	28	105	9463
OP_SUB_V	9460	9463	9466
OP_STORE_V	9466	9429	0
OP_STORE_F	337	9431	0
OP_STORE_V	9429	4	0
OP_CALL1	457	0	0
OP_STORE_F	1	9432	0
OP_LT	9432	788	9469
OP_IFNOT	9469	2	0
OP_RETURN	213	0	0
OP_GT	9432	1960	9470
OP_IFNOT	9470	2	0
OP_RETURN	213	0	0
OP_RETURN	214	0	0
OP_DONE	0	0	0
voidTODO () CheckDogJump =
{
    local vector dist;
    local float d;
    // *** UNPROCESSED OPCODE OP_MUL_F 3464 9442 9443
    // *** UNPROCESSED OPCODE OP_GT 9435 9444 9445
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_MUL_F 3461 9455 9456
    
    if((self.origin_z + self.maxs_z) < ((self.enemy.origin_z + self.enemy.mins_z) + ))
    {
        return; /* TODO retvalue? */
    }
    
    dist = self.enemy.origin - self.origin;
     = 0.000;
    d = vlen(dist);
    
    if(d < 80.000)
    {
        return; /* TODO retvalue? */
    }
    
    // *** UNPROCESSED OPCODE OP_GT 9432 1960 9470
    
    if()
    {
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

// DogCheckAttack
// function begins at statement 16135
OP_CALL0	9425	0	0
OP_IFNOT	1	4	0
OP_ADDRESS	28	367	9474
OP_STOREP_F	370	9474	0
OP_RETURN	214	0	0
OP_CALL0	9428	0	0
OP_IFNOT	1	4	0
OP_ADDRESS	28	367	9475
OP_STOREP_F	371	9475	0
OP_RETURN	214	0	0
OP_RETURN	213	0	0
OP_DONE	0	0	0
voidTODO () DogCheckAttack =
{
    local vector vec;
    
    if(CheckDogMelee())
    {
        self.attack_state = 3.000;
        return; /* TODO retvalue? */
    }
    
    
    if(CheckDogJump())
    {
        self.attack_state = 4.000;
        return; /* TODO retvalue? */
    }
    
    return; /* TODO retvalue? */
};

void() monster_dog;
// monster_dog
// function begins at statement 16147
OP_IFNOT	35	4	0
OP_STORE_V	28	4	0
OP_CALL1	460	0	0
OP_RETURN	0	0	0
OP_STORE_V	9420	4	0
OP_CALL1	465	0	0
OP_STORE_V	9477	4	0
OP_CALL1	465	0	0
OP_STORE_V	9335	4	0
OP_CALL1	464	0	0
OP_STORE_V	9422	4	0
OP_CALL1	464	0	0
OP_STORE_V	9394	4	0
OP_CALL1	464	0	0
OP_STORE_V	1261	4	0
OP_CALL1	464	0	0
OP_STORE_V	9311	4	0
OP_CALL1	464	0	0
OP_ADDRESS	28	104	9478
OP_STOREP_F	240	9478	0
OP_ADDRESS	28	103	9479
OP_STOREP_F	229	9479	0
OP_STORE_V	28	4	0
OP_STORE_V	9477	7	0
OP_CALL2	449	0	0
OP_STORE_V	28	4	0
OP_STORE_V	295	7	0
OP_STORE_V	9480	10	0
OP_CALL3	450	0	0
OP_ADDRESS	28	152	9483
OP_STOREP_F	1890	9483	0
OP_ADDRESS	28	356	9484
OP_STOREP_FNC	9299	9484	0
OP_ADDRESS	28	357	9485
OP_STOREP_FNC	9308	9485	0
OP_ADDRESS	28	358	9486
OP_STOREP_FNC	9249	9486	0
OP_ADDRESS	28	361	9487
OP_STOREP_FNC	9393	9487	0
OP_ADDRESS	28	362	9488
OP_STOREP_FNC	9414	9488	0
OP_ADDRESS	28	360	9489
OP_STOREP_FNC	9330	9489	0
OP_ADDRESS	28	359	9490
OP_STOREP_FNC	9248	9490	0
OP_CALL0	5557	0	0
OP_DONE	0	0	0
voidTODO () monster_dog =
{
    
    if(0.000)
    {
        remove(self);
        return; /* TODO retvalue? */
    }
    
    precache_model();
    precache_model("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    precache_sound("IMMEDIATE");
    self.solid = 3.000;
    self.movetype = 4.000;
    setmodel(self, "IMMEDIATE");
    setsize(self, '-32.000 -32.000 -24.000', '32.000 32.000 40.000');
    self.health = 25.000;
    self.th_stand = dog_stand1;
    self.th_walk = dog_walk1;
    self.th_run = dog_run1;
    self.th_pain = dog_pain;
    self.th_die = dog_die;
    self.th_melee = dog_atta1;
    self.th_missile = dog_leap1;
    walkmonster_start();
};

