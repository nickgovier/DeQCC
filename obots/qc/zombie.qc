float globaldef004524;
.float inpain;

// func001359
// function begins at statement 22490, parm_start=14168
// OP_STATE	213	14168	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001359 = [0, func001360]
{
    ai_stand();
};


// func001360
// function begins at statement 22493, parm_start=14169
// OP_STATE	214	14169	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001360 = [1, func001361]
{
    ai_stand();
};


// func001361
// function begins at statement 22496, parm_start=14170
// OP_STATE	216	14170	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001361 = [2, func001362]
{
    ai_stand();
};


// func001362
// function begins at statement 22499, parm_start=14171
// OP_STATE	228	14171	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001362 = [3, func001363]
{
    ai_stand();
};


// func001363
// function begins at statement 22502, parm_start=14172
// OP_STATE	229	14172	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001363 = [4, func001364]
{
    ai_stand();
};


// func001364
// function begins at statement 22505, parm_start=14173
// OP_STATE	230	14173	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001364 = [5, func001365]
{
    ai_stand();
};


// func001365
// function begins at statement 22508, parm_start=14174
// OP_STATE	231	14174	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001365 = [6, func001366]
{
    ai_stand();
};


// func001366
// function begins at statement 22511, parm_start=14175
// OP_STATE	232	14175	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001366 = [7, func001367]
{
    ai_stand();
};


// func001367
// function begins at statement 22514, parm_start=14176
// OP_STATE	217	14176	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001367 = [8, func001368]
{
    ai_stand();
};


// func001368
// function begins at statement 22517, parm_start=14177
// OP_STATE	234	14177	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001368 = [9, func001369]
{
    ai_stand();
};


// func001369
// function begins at statement 22520, parm_start=14178
// OP_STATE	235	14178	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001369 = [10, func001370]
{
    ai_stand();
};


// func001370
// function begins at statement 22523, parm_start=14179
// OP_STATE	236	14179	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001370 = [11, func001371]
{
    ai_stand();
};


// func001371
// function begins at statement 22526, parm_start=14180
// OP_STATE	791	14180	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001371 = [12, func001372]
{
    ai_stand();
};


// func001372
// function begins at statement 22529, parm_start=14181
// OP_STATE	792	14181	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001372 = [13, func001373]
{
    ai_stand();
};


// func001373
// function begins at statement 22532, parm_start=14182
// OP_STATE	5693	14167	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001373 = [14, func001359]
{
    ai_stand();
};


// func001374
// function begins at statement 22535, parm_start=14183
// OP_STATE	14183	14184	0
// OP_CALL0	457	0	0
// OP_LT	1	3036	14185
// OP_IFNOT	14185	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14186	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	333	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001374 = [192, func001375]
{
    
    if(random() < 0.1)
    {
        sound(self, CHAN_VOICE, "zombie/idle_w2.wav", TRUE, ATTN_STATIC);
    }
    
};


// func001375
// function begins at statement 22546, parm_start=14187
// OP_STATE	14187	14188	0
// OP_ADDRESS	28	150	14189
// OP_ADD_F	31	3036	14190
// OP_CALL0	457	0	0
// OP_MUL_F	1	3036	14191
// OP_ADD_F	14190	14191	14192
// OP_STOREP_F	14192	14189	0
// OP_DONE	0	0	0
void () func001375 = [193, func001376]
{
    self.nextthink = (time + 0.1) + (random() * 0.1);
};


// func001376
// function begins at statement 22554, parm_start=14193
// OP_STATE	14193	14194	0
// OP_ADDRESS	28	150	14195
// OP_ADD_F	31	3036	14196
// OP_CALL0	457	0	0
// OP_MUL_F	1	3036	14197
// OP_ADD_F	14196	14197	14198
// OP_STOREP_F	14198	14195	0
// OP_DONE	0	0	0
void () func001376 = [194, func001377]
{
    self.nextthink = (time + 0.1) + (random() * 0.1);
};


// func001377
// function begins at statement 22562, parm_start=14199
// OP_STATE	14199	14200	0
// OP_ADDRESS	28	150	14201
// OP_ADD_F	31	3036	14202
// OP_CALL0	457	0	0
// OP_MUL_F	1	3036	14203
// OP_ADD_F	14202	14203	14204
// OP_STOREP_F	14204	14201	0
// OP_DONE	0	0	0
void () func001377 = [195, func001378]
{
    self.nextthink = (time + 0.1) + (random() * 0.1);
};


// func001378
// function begins at statement 22570, parm_start=14205
// OP_STATE	14205	14206	0
// OP_ADDRESS	28	150	14207
// OP_ADD_F	31	3036	14208
// OP_CALL0	457	0	0
// OP_MUL_F	1	3036	14209
// OP_ADD_F	14208	14209	14210
// OP_STOREP_F	14210	14207	0
// OP_DONE	0	0	0
void () func001378 = [196, func001379]
{
    self.nextthink = (time + 0.1) + (random() * 0.1);
};


// func001379
// function begins at statement 22578, parm_start=14211
// OP_STATE	14211	14182	0
// OP_ADDRESS	28	150	14212
// OP_ADD_F	31	3036	14213
// OP_CALL0	457	0	0
// OP_MUL_F	1	3036	14214
// OP_ADD_F	14213	14214	14215
// OP_STOREP_F	14215	14212	0
// OP_DONE	0	0	0
void () func001379 = [197, func001374]
{
    self.nextthink = (time + 0.1) + (random() * 0.1);
};


// func001380
// function begins at statement 22586, parm_start=14217
// OP_STATE	765	14217	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001380 = [15, func001381]
{
    ai_walk(FALSE);
};


// func001381
// function begins at statement 22590, parm_start=14218
// OP_STATE	218	14218	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001381 = [16, func001382]
{
    ai_walk(FL_SWIM);
};


// func001382
// function begins at statement 22594, parm_start=14219
// OP_STATE	6892	14219	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001382 = [17, func001383]
{
    ai_walk(MOVETYPE_WALK);
};


// func001383
// function begins at statement 22598, parm_start=14220
// OP_STATE	6133	14220	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001383 = [18, func001384]
{
    ai_walk(FL_SWIM);
};


// func001384
// function begins at statement 22602, parm_start=14221
// OP_STATE	6895	14221	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001384 = [19, func001385]
{
    ai_walk(TRUE);
};


// func001385
// function begins at statement 22606, parm_start=14222
// OP_STATE	2323	14222	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001385 = [20, func001386]
{
    ai_walk(FALSE);
};


// func001386
// function begins at statement 22610, parm_start=14223
// OP_STATE	12465	14223	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001386 = [21, func001387]
{
    ai_walk(FALSE);
};


// func001387
// function begins at statement 22614, parm_start=14224
// OP_STATE	12467	14224	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001387 = [22, func001388]
{
    ai_walk(FALSE);
};


// func001388
// function begins at statement 22618, parm_start=14225
// OP_STATE	304	14225	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001388 = [23, func001389]
{
    ai_walk(FALSE);
};


// func001389
// function begins at statement 22622, parm_start=14226
// OP_STATE	736	14226	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001389 = [24, func001390]
{
    ai_walk(FALSE);
};


// func001390
// function begins at statement 22626, parm_start=14227
// OP_STATE	305	14227	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001390 = [25, func001391]
{
    ai_walk(FL_SWIM);
};


// func001391
// function begins at statement 22630, parm_start=14228
// OP_STATE	306	14228	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001391 = [26, func001392]
{
    ai_walk(FL_SWIM);
};


// func001392
// function begins at statement 22634, parm_start=14229
// OP_STATE	307	14229	0
// OP_STORE_V	214	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001392 = [27, func001393]
{
    ai_walk(TRUE);
};


// func001393
// function begins at statement 22638, parm_start=14230
// OP_STATE	308	14230	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001393 = [28, func001394]
{
    ai_walk(FALSE);
};


// func001394
// function begins at statement 22642, parm_start=14231
// OP_STATE	9664	14231	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001394 = [29, func001395]
{
    ai_walk(FALSE);
};


// func001395
// function begins at statement 22646, parm_start=14232
// OP_STATE	309	14232	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001395 = [30, func001396]
{
    ai_walk(FALSE);
};


// func001396
// function begins at statement 22650, parm_start=14233
// OP_STATE	310	14233	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001396 = [31, func001397]
{
    ai_walk(FALSE);
};


// func001397
// function begins at statement 22654, parm_start=14234
// OP_STATE	219	14234	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001397 = [32, func001398]
{
    ai_walk(FALSE);
};


// func001398
// function begins at statement 22658, parm_start=14235
// OP_STATE	312	14216	0
// OP_STORE_V	213	4	0
// OP_CALL1	3794	0	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	14235
// OP_IFNOT	14235	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3675	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001398 = [33, func001380]
{
    ai_walk(FALSE);
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "zombie/z_idle.wav", TRUE, ATTN_IDLE);
    }
    
};


// func001399
// function begins at statement 22671, parm_start=14237
// OP_STATE	9671	14237	0
// OP_STORE_V	214	4	0
// OP_CALL1	3873	0	0
// OP_ADDRESS	28	14166	14238
// OP_STOREP_F	213	14238	0
// OP_DONE	0	0	0
void () func001399 = [34, func001400]
{
    ai_run(TRUE);
    self.inpain = FALSE;
};


// func001400
// function begins at statement 22677, parm_start=14239
// OP_STATE	5878	14239	0
// OP_STORE_V	214	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001400 = [35, func001401]
{
    ai_run(TRUE);
};


// func001401
// function begins at statement 22681, parm_start=14240
// OP_STATE	9655	14240	0
// OP_STORE_V	213	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001401 = [36, func001402]
{
    ai_run(FALSE);
};


// func001402
// function begins at statement 22685, parm_start=14241
// OP_STATE	9657	14241	0
// OP_STORE_V	214	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001402 = [37, func001403]
{
    ai_run(TRUE);
};


// func001403
// function begins at statement 22689, parm_start=14242
// OP_STATE	9659	14242	0
// OP_STORE_V	216	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001403 = [38, func001404]
{
    ai_run(FL_SWIM);
};


// func001404
// function begins at statement 22693, parm_start=14243
// OP_STATE	9661	14243	0
// OP_STORE_V	228	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001404 = [39, func001405]
{
    ai_run(MOVETYPE_WALK);
};


// func001405
// function begins at statement 22697, parm_start=14244
// OP_STATE	746	14244	0
// OP_STORE_V	229	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001405 = [40, func001406]
{
    ai_run(MOVETYPE_STEP);
};


// func001406
// function begins at statement 22701, parm_start=14245
// OP_STATE	9993	14245	0
// OP_STORE_V	229	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001406 = [41, func001407]
{
    ai_run(MOVETYPE_STEP);
};


// func001407
// function begins at statement 22705, parm_start=14246
// OP_STATE	9995	14246	0
// OP_STORE_V	216	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001407 = [42, func001408]
{
    ai_run(FL_SWIM);
};


// func001408
// function begins at statement 22709, parm_start=14247
// OP_STATE	9997	14247	0
// OP_STORE_V	213	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001408 = [43, func001409]
{
    ai_run(FALSE);
};


// func001409
// function begins at statement 22713, parm_start=14248
// OP_STATE	9999	14248	0
// OP_STORE_V	213	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001409 = [44, func001410]
{
    ai_run(FALSE);
};


// func001410
// function begins at statement 22717, parm_start=14249
// OP_STATE	2598	14249	0
// OP_STORE_V	213	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001410 = [45, func001411]
{
    ai_run(FALSE);
};


// func001411
// function begins at statement 22721, parm_start=14250
// OP_STATE	10002	14250	0
// OP_STORE_V	216	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001411 = [46, func001412]
{
    ai_run(FL_SWIM);
};


// func001412
// function begins at statement 22725, parm_start=14251
// OP_STATE	10004	14251	0
// OP_STORE_V	229	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001412 = [47, func001413]
{
    ai_run(MOVETYPE_STEP);
};


// func001413
// function begins at statement 22729, parm_start=14252
// OP_STATE	10006	14252	0
// OP_STORE_V	231	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001413 = [48, func001414]
{
    ai_run(MOVETYPE_TOSS);
};


// func001414
// function begins at statement 22733, parm_start=14253
// OP_STATE	10008	14253	0
// OP_STORE_V	232	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001414 = [49, func001415]
{
    ai_run(MOVETYPE_PUSH);
};


// func001415
// function begins at statement 22737, parm_start=14254
// OP_STATE	1470	14254	0
// OP_STORE_V	228	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001415 = [50, func001416]
{
    ai_run(MOVETYPE_WALK);
};


// func001416
// function begins at statement 22741, parm_start=14255
// OP_STATE	9911	14236	0
// OP_STORE_V	217	4	0
// OP_CALL1	3873	0	0
// OP_CALL0	457	0	0
// OP_LT	1	3267	14255
// OP_IFNOT	14255	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3675	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_GT	1	4478	14256
// OP_IFNOT	14256	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14257	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001416 = [51, func001399]
{
    ai_run(FL_CLIENT);
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "zombie/z_idle.wav", TRUE, ATTN_IDLE);
    }
    
    
    if(random() > 0.8)
    {
        sound(self, CHAN_VOICE, "zombie/z_idle1.wav", TRUE, ATTN_IDLE);
    }
    
};


// func001417
// function begins at statement 22763, parm_start=14259
// OP_LOAD_ENT	28	201	14259
// OP_EQ_E	29	14259	14260
// OP_IFNOT	14260	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	14261
// OP_IFNOT	14261	16	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	14262
// OP_STORE_V	14262	10	0
// OP_STORE_V	235	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	14263	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	14264	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	113	14265
// OP_STOREP_V	286	14265	0
// OP_ADDRESS	28	121	14268
// OP_STOREP_V	286	14268	0
// OP_ADDRESS	28	146	14271
// OP_STOREP_FNC	521	14271	0
// OP_DONE	0	0	0
void () func001417 = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        T_Damage(other, self, self.owner, MOVETYPE_BOUNCE);
        sound(self, CHAN_WEAPON, "zombie/z_hit.wav", TRUE, ATTN_NORM);
        remove(self);
        return;
    }
    
    sound(self, CHAN_WEAPON, "zombie/z_miss.wav", TRUE, ATTN_NORM);
    self.velocity = VEC_ORIGIN;
    self.avelocity = VEC_ORIGIN;
    self.touch = SUB_Remove;
};


// func001418
// function begins at statement 22797, parm_start=14273
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	14281	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	14276	0
// OP_ADDRESS	14276	201	14282
// OP_STOREP_ENT	28	14282	0
// OP_ADDRESS	14276	103	14283
// OP_STOREP_F	235	14283	0
// OP_ADDRESS	14276	104	14284
// OP_STOREP_F	239	14284	0
// OP_LOAD_V	28	105	14285
// OP_MUL_FV	14273	59	14288
// OP_ADD_V	14285	14288	14291
// OP_MUL_FV	14274	65	14294
// OP_ADD_V	14291	14294	14297
// OP_SUB_F	14275	736	14300
// OP_MUL_FV	14300	62	14301
// OP_ADD_V	14297	14301	14304
// OP_STORE_V	14304	14278	0
// OP_LOAD_V	28	117	14307
// OP_STORE_V	14307	4	0
// OP_CALL1	452	0	0
// OP_ADDRESS	14276	113	14310
// OP_LOAD_ENT	28	181	14313
// OP_LOAD_V	14313	105	14314
// OP_SUB_V	14314	14278	14317
// OP_STORE_V	14317	4	0
// OP_CALL1	459	0	0
// OP_STOREP_V	1	14310	0
// OP_ADDRESS	14276	113	14320
// OP_LOAD_V	14276	113	14323
// OP_MUL_VF	14323	740	14326
// OP_STOREP_V	14326	14320	0
// OP_ADDRESS	14276	116	14329
// OP_STOREP_F	2044	14329	0
// OP_ADDRESS	14276	121	14330
// OP_STOREP_V	5470	14330	0
// OP_ADDRESS	14276	146	14333
// OP_STOREP_FNC	14258	14333	0
// OP_ADDRESS	14276	150	14334
// OP_ADD_F	31	6009	14335
// OP_STOREP_F	14335	14334	0
// OP_ADDRESS	14276	148	14336
// OP_STOREP_FNC	521	14336	0
// OP_STORE_V	14276	4	0
// OP_STORE_V	5476	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	14276	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	14276	4	0
// OP_STORE_V	14278	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void (vector globaldef004596) func001418 = 
{
    local entity globaldef004600;
    local entity globaldef004601;
    local vector globaldef004602;
    sound(self, CHAN_WEAPON, "zombie/z_shot1.wav", TRUE, ATTN_NORM);
    globaldef004600 = spawn();
    globaldef004600.owner = self;
    globaldef004600.movetype = MOVETYPE_BOUNCE;
    globaldef004600.solid = SOLID_BBOX;
    globaldef004602 = ((self.origin + (globaldef004596_x * v_forward)) + (globaldef004596_y * v_right)) + ((globaldef004596_z - OBOT_MAXBOTS) * v_up);
    makevectors(self.angles);
    globaldef004600.velocity = normalize(self.enemy.origin - globaldef004602);
    globaldef004600.velocity = globaldef004600.velocity * GLOBALDEF723_600;
    globaldef004600.velocity_z = 200;
    globaldef004600.avelocity = '3000 1000 2000';
    globaldef004600.touch = func001417;
    globaldef004600.nextthink = time + 2.5;
    globaldef004600.think = SUB_Remove;
    setmodel(globaldef004600, "progs/zom_gib.mdl");
    setsize(globaldef004600, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(globaldef004600, globaldef004602);
};


// func001419
// function begins at statement 22856, parm_start=14338
// OP_STATE	9913	14338	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001419 = [52, func001420]
{
    ai_face();
};


// func001420
// function begins at statement 22859, parm_start=14339
// OP_STATE	9915	14339	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001420 = [53, func001421]
{
    ai_face();
};


// func001421
// function begins at statement 22862, parm_start=14340
// OP_STATE	9917	14340	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001421 = [54, func001422]
{
    ai_face();
};


// func001422
// function begins at statement 22865, parm_start=14341
// OP_STATE	9919	14341	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001422 = [55, func001423]
{
    ai_face();
};


// func001423
// function begins at statement 22868, parm_start=14342
// OP_STATE	9921	14342	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001423 = [56, func001424]
{
    ai_face();
};


// func001424
// function begins at statement 22871, parm_start=14343
// OP_STATE	9923	14343	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001424 = [57, func001425]
{
    ai_face();
};


// func001425
// function begins at statement 22874, parm_start=14344
// OP_STATE	9925	14344	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001425 = [58, func001426]
{
    ai_face();
};


// func001426
// function begins at statement 22877, parm_start=14345
// OP_STATE	2783	14345	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001426 = [59, func001427]
{
    ai_face();
};


// func001427
// function begins at statement 22880, parm_start=14346
// OP_STATE	2019	14346	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001427 = [60, func001428]
{
    ai_face();
};


// func001428
// function begins at statement 22883, parm_start=14347
// OP_STATE	9928	14347	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001428 = [61, func001429]
{
    ai_face();
};


// func001429
// function begins at statement 22886, parm_start=14348
// OP_STATE	9930	14348	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001429 = [62, func001430]
{
    ai_face();
};


// func001430
// function begins at statement 22889, parm_start=14349
// OP_STATE	6707	14349	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001430 = [63, func001431]
{
    ai_face();
};


// func001431
// function begins at statement 22892, parm_start=14350
// OP_STATE	220	14236	0
// OP_CALL0	3190	0	0
// OP_STORE_V	14350	4	0
// OP_CALL1	14272	0	0
// OP_DONE	0	0	0
void () func001431 = [64, func001399]
{
    ai_face();
    func001418('-10 -22 30');
};


// func001432
// function begins at statement 22897, parm_start=14354
// OP_STATE	9934	14354	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001432 = [65, func001433]
{
    ai_face();
};


// func001433
// function begins at statement 22900, parm_start=14355
// OP_STATE	9936	14355	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001433 = [66, func001434]
{
    ai_face();
};


// func001434
// function begins at statement 22903, parm_start=14356
// OP_STATE	9938	14356	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001434 = [67, func001435]
{
    ai_face();
};


// func001435
// function begins at statement 22906, parm_start=14357
// OP_STATE	8193	14357	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001435 = [68, func001436]
{
    ai_face();
};


// func001436
// function begins at statement 22909, parm_start=14358
// OP_STATE	8196	14358	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001436 = [69, func001437]
{
    ai_face();
};


// func001437
// function begins at statement 22912, parm_start=14359
// OP_STATE	1536	14359	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001437 = [70, func001438]
{
    ai_face();
};


// func001438
// function begins at statement 22915, parm_start=14360
// OP_STATE	8201	14360	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001438 = [71, func001439]
{
    ai_face();
};


// func001439
// function begins at statement 22918, parm_start=14361
// OP_STATE	9943	14361	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001439 = [72, func001440]
{
    ai_face();
};


// func001440
// function begins at statement 22921, parm_start=14362
// OP_STATE	5487	14362	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001440 = [73, func001441]
{
    ai_face();
};


// func001441
// function begins at statement 22924, parm_start=14363
// OP_STATE	9946	14363	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001441 = [74, func001442]
{
    ai_face();
};


// func001442
// function begins at statement 22927, parm_start=14364
// OP_STATE	9173	14364	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001442 = [75, func001443]
{
    ai_face();
};


// func001443
// function begins at statement 22930, parm_start=14365
// OP_STATE	9949	14365	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001443 = [76, func001444]
{
    ai_face();
};


// func001444
// function begins at statement 22933, parm_start=14366
// OP_STATE	9951	14366	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001444 = [77, func001445]
{
    ai_face();
};


// func001445
// function begins at statement 22936, parm_start=14367
// OP_STATE	9951	14236	0
// OP_CALL0	3190	0	0
// OP_STORE_V	14367	4	0
// OP_CALL1	14272	0	0
// OP_DONE	0	0	0
void () func001445 = [77, func001399]
{
    ai_face();
    func001418('-10 -24 29');
};


// func001446
// function begins at statement 22941, parm_start=14371
// OP_STATE	9955	14371	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001446 = [79, func001447]
{
    ai_face();
};


// func001447
// function begins at statement 22944, parm_start=14372
// OP_STATE	2805	14372	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001447 = [80, func001448]
{
    ai_face();
};


// func001448
// function begins at statement 22947, parm_start=14373
// OP_STATE	8204	14373	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001448 = [81, func001449]
{
    ai_face();
};


// func001449
// function begins at statement 22950, parm_start=14374
// OP_STATE	9959	14374	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001449 = [82, func001450]
{
    ai_face();
};


// func001450
// function begins at statement 22953, parm_start=14375
// OP_STATE	9961	14375	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001450 = [83, func001451]
{
    ai_face();
};


// func001451
// function begins at statement 22956, parm_start=14376
// OP_STATE	7694	14376	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001451 = [84, func001452]
{
    ai_face();
};


// func001452
// function begins at statement 22959, parm_start=14377
// OP_STATE	9963	14377	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001452 = [85, func001453]
{
    ai_face();
};


// func001453
// function begins at statement 22962, parm_start=14378
// OP_STATE	9965	14378	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001453 = [86, func001454]
{
    ai_face();
};


// func001454
// function begins at statement 22965, parm_start=14379
// OP_STATE	9967	14379	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001454 = [87, func001455]
{
    ai_face();
};


// func001455
// function begins at statement 22968, parm_start=14380
// OP_STATE	9969	14380	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001455 = [88, func001456]
{
    ai_face();
};


// func001456
// function begins at statement 22971, parm_start=14381
// OP_STATE	9971	14381	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001456 = [89, func001457]
{
    ai_face();
};


// func001457
// function begins at statement 22974, parm_start=14382
// OP_STATE	2658	14236	0
// OP_CALL0	3190	0	0
// OP_STORE_V	14382	4	0
// OP_CALL1	14272	0	0
// OP_DONE	0	0	0
void () func001457 = [90, func001399]
{
    ai_face();
    func001418('-12 -19 29');
};


// func001458
// function begins at statement 22979, parm_start=14386
// OP_CALL0	457	0	0
// OP_STORE_F	1	14386	0
// OP_LT	14386	3409	14387
// OP_IFNOT	14387	3	0
// OP_CALL0	14337	0	0
// OP_GOTO	6	0	0
// OP_LT	14386	4474	14388
// OP_IFNOT	14388	3	0
// OP_CALL0	14353	0	0
// OP_GOTO	2	0	0
// OP_CALL0	14370	0	0
// OP_DONE	0	0	0
void () func001458 = 
{
    local float globaldef004650;
    globaldef004650 = random();
    if(globaldef004650 < 0.3)
    {
        func001419();
    }
    else
    {
        if(globaldef004650 < 0.6)
        {
            func001432();
        }
        else
        {
            func001446();
        }
        
    }
    
};


// func001459
// function begins at statement 22991, parm_start=14390
// OP_STATE	9974	14390	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14391	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001459 = [91, func001460]
{
    sound(self, CHAN_VOICE, "zombie/z_pain.wav", TRUE, ATTN_NORM);
};


// func001460
// function begins at statement 22999, parm_start=14392
// OP_STATE	9976	14392	0
// OP_STORE_V	228	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001460 = [92, func001461]
{
    ai_painforward(MOVETYPE_WALK);
};


// func001461
// function begins at statement 23003, parm_start=14393
// OP_STATE	9978	14393	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001461 = [93, func001462]
{
    ai_painforward(TRUE);
};


// func001462
// function begins at statement 23007, parm_start=14394
// OP_STATE	9979	14394	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001462 = [94, func001463]
{
    ai_pain(TRUE);
};


// func001463
// function begins at statement 23011, parm_start=14395
// OP_STATE	9981	14395	0
// OP_STORE_V	228	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001463 = [95, func001464]
{
    ai_pain(MOVETYPE_WALK);
};


// func001464
// function begins at statement 23015, parm_start=14396
// OP_STATE	9983	14396	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001464 = [96, func001465]
{
    ai_pain(TRUE);
};


// func001465
// function begins at statement 23019, parm_start=14397
// OP_STATE	9985	14397	0
// OP_DONE	0	0	0
void () func001465 = [97, func001466]
{
};


// func001466
// function begins at statement 23021, parm_start=14398
// OP_STATE	9987	14398	0
// OP_DONE	0	0	0
void () func001466 = [98, func001467]
{
};


// func001467
// function begins at statement 23023, parm_start=14399
// OP_STATE	9989	14399	0
// OP_DONE	0	0	0
void () func001467 = [99, func001468]
{
};


// func001468
// function begins at statement 23025, parm_start=14400
// OP_STATE	1997	14400	0
// OP_DONE	0	0	0
void () func001468 = [100, func001469]
{
};


// func001469
// function begins at statement 23027, parm_start=14401
// OP_STATE	8107	14401	0
// OP_DONE	0	0	0
void () func001469 = [101, func001470]
{
};


// func001470
// function begins at statement 23029, parm_start=14402
// OP_STATE	8109	14236	0
// OP_DONE	0	0	0
void () func001470 = [102, func001399]
{
};


// func001471
// function begins at statement 23031, parm_start=14403
// OP_STATE	8111	14403	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14404	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001471 = [103, func001472]
{
    sound(self, CHAN_VOICE, "zombie/z_pain1.wav", TRUE, ATTN_NORM);
};


// func001472
// function begins at statement 23039, parm_start=14405
// OP_STATE	8114	14405	0
// OP_STORE_V	216	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001472 = [104, func001473]
{
    ai_pain(FL_SWIM);
};


// func001473
// function begins at statement 23043, parm_start=14406
// OP_STATE	9562	14406	0
// OP_STORE_V	217	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001473 = [105, func001474]
{
    ai_pain(FL_CLIENT);
};


// func001474
// function begins at statement 23047, parm_start=14407
// OP_STATE	9577	14407	0
// OP_STORE_V	231	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001474 = [106, func001475]
{
    ai_pain(MOVETYPE_TOSS);
};


// func001475
// function begins at statement 23051, parm_start=14408
// OP_STATE	9591	14408	0
// OP_STORE_V	216	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001475 = [107, func001476]
{
    ai_pain(FL_SWIM);
};


// func001476
// function begins at statement 23055, parm_start=14409
// OP_STATE	9597	14409	0
// OP_DONE	0	0	0
void () func001476 = [108, func001477]
{
};


// func001477
// function begins at statement 23057, parm_start=14410
// OP_STATE	9600	14410	0
// OP_DONE	0	0	0
void () func001477 = [109, func001478]
{
};


// func001478
// function begins at statement 23059, parm_start=14411
// OP_STATE	9603	14411	0
// OP_DONE	0	0	0
void () func001478 = [110, func001479]
{
};


// func001479
// function begins at statement 23061, parm_start=14412
// OP_STATE	2224	14412	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	14413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001479 = [111, func001480]
{
    sound(self, CHAN_BODY, "zombie/z_fall.wav", TRUE, ATTN_NORM);
};


// func001480
// function begins at statement 23069, parm_start=14414
// OP_STATE	9608	14414	0
// OP_DONE	0	0	0
void () func001480 = [112, func001481]
{
};


// func001481
// function begins at statement 23071, parm_start=14415
// OP_STATE	9473	14415	0
// OP_DONE	0	0	0
void () func001481 = [113, func001482]
{
};


// func001482
// function begins at statement 23073, parm_start=14416
// OP_STATE	9479	14416	0
// OP_DONE	0	0	0
void () func001482 = [114, func001483]
{
};


// func001483
// function begins at statement 23075, parm_start=14417
// OP_STATE	9482	14417	0
// OP_DONE	0	0	0
void () func001483 = [115, func001484]
{
};


// func001484
// function begins at statement 23077, parm_start=14418
// OP_STATE	9485	14418	0
// OP_DONE	0	0	0
void () func001484 = [116, func001485]
{
};


// func001485
// function begins at statement 23079, parm_start=14419
// OP_STATE	9488	14419	0
// OP_DONE	0	0	0
void () func001485 = [117, func001486]
{
};


// func001486
// function begins at statement 23081, parm_start=14420
// OP_STATE	9491	14420	0
// OP_DONE	0	0	0
void () func001486 = [118, func001487]
{
};


// func001487
// function begins at statement 23083, parm_start=14421
// OP_STATE	9493	14421	0
// OP_DONE	0	0	0
void () func001487 = [119, func001488]
{
};


// func001488
// function begins at statement 23085, parm_start=14422
// OP_STATE	3584	14422	0
// OP_DONE	0	0	0
void () func001488 = [120, func001489]
{
};


// func001489
// function begins at statement 23087, parm_start=14423
// OP_STATE	9498	14423	0
// OP_DONE	0	0	0
void () func001489 = [121, func001490]
{
};


// func001490
// function begins at statement 23089, parm_start=14424
// OP_STATE	9501	14424	0
// OP_DONE	0	0	0
void () func001490 = [122, func001491]
{
};


// func001491
// function begins at statement 23091, parm_start=14425
// OP_STATE	12627	14425	0
// OP_DONE	0	0	0
void () func001491 = [123, func001492]
{
};


// func001492
// function begins at statement 23093, parm_start=14426
// OP_STATE	12629	14426	0
// OP_DONE	0	0	0
void () func001492 = [124, func001493]
{
};


// func001493
// function begins at statement 23095, parm_start=14427
// OP_STATE	9503	14427	0
// OP_DONE	0	0	0
void () func001493 = [125, func001494]
{
};


// func001494
// function begins at statement 23097, parm_start=14428
// OP_STATE	9506	14428	0
// OP_DONE	0	0	0
void () func001494 = [126, func001495]
{
};


// func001495
// function begins at statement 23099, parm_start=14429
// OP_STATE	9509	14429	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001495 = [127, func001496]
{
    ai_painforward(TRUE);
};


// func001496
// function begins at statement 23103, parm_start=14430
// OP_STATE	221	14430	0
// OP_DONE	0	0	0
void () func001496 = [128, func001497]
{
};


// func001497
// function begins at statement 23105, parm_start=14431
// OP_STATE	12637	14431	0
// OP_DONE	0	0	0
void () func001497 = [129, func001498]
{
};


// func001498
// function begins at statement 23107, parm_start=14432
// OP_STATE	12639	14236	0
// OP_DONE	0	0	0
void () func001498 = [130, func001399]
{
};


// func001499
// function begins at statement 23109, parm_start=14433
// OP_STATE	9513	14433	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14404	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001499 = [131, func001500]
{
    sound(self, CHAN_VOICE, "zombie/z_pain1.wav", TRUE, ATTN_NORM);
};


// func001500
// function begins at statement 23117, parm_start=14434
// OP_STATE	9516	14434	0
// OP_DONE	0	0	0
void () func001500 = [132, func001501]
{
};


// func001501
// function begins at statement 23119, parm_start=14435
// OP_STATE	9519	14435	0
// OP_STORE_V	228	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001501 = [133, func001502]
{
    ai_pain(MOVETYPE_WALK);
};


// func001502
// function begins at statement 23123, parm_start=14436
// OP_STATE	9522	14436	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001502 = [134, func001503]
{
    ai_pain(TRUE);
};


// func001503
// function begins at statement 23127, parm_start=14437
// OP_STATE	12645	14437	0
// OP_DONE	0	0	0
void () func001503 = [135, func001504]
{
};


// func001504
// function begins at statement 23129, parm_start=14438
// OP_STATE	14438	14439	0
// OP_DONE	0	0	0
void () func001504 = [136, func001505]
{
};


// func001505
// function begins at statement 23131, parm_start=14440
// OP_STATE	9524	14440	0
// OP_DONE	0	0	0
void () func001505 = [137, func001506]
{
};


// func001506
// function begins at statement 23133, parm_start=14441
// OP_STATE	9527	14441	0
// OP_DONE	0	0	0
void () func001506 = [138, func001507]
{
};


// func001507
// function begins at statement 23135, parm_start=14442
// OP_STATE	9530	14442	0
// OP_DONE	0	0	0
void () func001507 = [139, func001508]
{
};


// func001508
// function begins at statement 23137, parm_start=14443
// OP_STATE	9533	14443	0
// OP_DONE	0	0	0
void () func001508 = [140, func001509]
{
};


// func001509
// function begins at statement 23139, parm_start=14444
// OP_STATE	14444	14445	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001509 = [141, func001510]
{
    ai_painforward(TRUE);
};


// func001510
// function begins at statement 23143, parm_start=14446
// OP_STATE	14446	14447	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001510 = [142, func001511]
{
    ai_painforward(TRUE);
};


// func001511
// function begins at statement 23147, parm_start=14448
// OP_STATE	14448	14449	0
// OP_DONE	0	0	0
void () func001511 = [143, func001512]
{
};


// func001512
// function begins at statement 23149, parm_start=14450
// OP_STATE	14450	14451	0
// OP_DONE	0	0	0
void () func001512 = [144, func001513]
{
};


// func001513
// function begins at statement 23151, parm_start=14452
// OP_STATE	14452	14453	0
// OP_DONE	0	0	0
void () func001513 = [145, func001514]
{
};


// func001514
// function begins at statement 23153, parm_start=14454
// OP_STATE	14454	14455	0
// OP_DONE	0	0	0
void () func001514 = [146, func001515]
{
};


// func001515
// function begins at statement 23155, parm_start=14456
// OP_STATE	14456	14457	0
// OP_DONE	0	0	0
void () func001515 = [147, func001516]
{
};


// func001516
// function begins at statement 23157, parm_start=14458
// OP_STATE	14458	14236	0
// OP_DONE	0	0	0
void () func001516 = [148, func001399]
{
};


// func001517
// function begins at statement 23159, parm_start=14460
// OP_STATE	14460	14461	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14391	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001517 = [149, func001518]
{
    sound(self, CHAN_VOICE, "zombie/z_pain.wav", TRUE, ATTN_NORM);
};


// func001518
// function begins at statement 23167, parm_start=14462
// OP_STATE	2003	14462	0
// OP_DONE	0	0	0
void () func001518 = [150, func001519]
{
};


// func001519
// function begins at statement 23169, parm_start=14463
// OP_STATE	14463	14464	0
// OP_DONE	0	0	0
void () func001519 = [151, func001520]
{
};


// func001520
// function begins at statement 23171, parm_start=14465
// OP_STATE	14465	14466	0
// OP_DONE	0	0	0
void () func001520 = [152, func001521]
{
};


// func001521
// function begins at statement 23173, parm_start=14467
// OP_STATE	14467	14468	0
// OP_DONE	0	0	0
void () func001521 = [153, func001522]
{
};


// func001522
// function begins at statement 23175, parm_start=14469
// OP_STATE	14469	14470	0
// OP_DONE	0	0	0
void () func001522 = [154, func001523]
{
};


// func001523
// function begins at statement 23177, parm_start=14471
// OP_STATE	14471	14472	0
// OP_DONE	0	0	0
void () func001523 = [155, func001524]
{
};


// func001524
// function begins at statement 23179, parm_start=14473
// OP_STATE	14473	14474	0
// OP_DONE	0	0	0
void () func001524 = [156, func001525]
{
};


// func001525
// function begins at statement 23181, parm_start=14475
// OP_STATE	14475	14476	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001525 = [157, func001526]
{
    ai_pain(TRUE);
};


// func001526
// function begins at statement 23185, parm_start=14477
// OP_STATE	14477	14478	0
// OP_DONE	0	0	0
void () func001526 = [158, func001527]
{
};


// func001527
// function begins at statement 23187, parm_start=14479
// OP_STATE	14479	14480	0
// OP_DONE	0	0	0
void () func001527 = [159, func001528]
{
};


// func001528
// function begins at statement 23189, parm_start=14481
// OP_STATE	12014	14481	0
// OP_DONE	0	0	0
void () func001528 = [160, func001529]
{
};


// func001529
// function begins at statement 23191, parm_start=14482
// OP_STATE	2155	14236	0
// OP_DONE	0	0	0
void () func001529 = [161, func001399]
{
};


// func001530
// function begins at statement 23193, parm_start=14483
// OP_STATE	14483	14484	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14391	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	152	14485
// OP_STOREP_F	2019	14485	0
// OP_DONE	0	0	0
void () func001530 = [162, func001531]
{
    sound(self, CHAN_VOICE, "zombie/z_pain.wav", TRUE, ATTN_NORM);
    self.health = 60;
};


// func001531
// function begins at statement 23203, parm_start=14486
// OP_STATE	14486	14487	0
// OP_STORE_V	217	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001531 = [163, func001532]
{
    ai_pain(FL_CLIENT);
};


// func001532
// function begins at statement 23207, parm_start=14488
// OP_STATE	14488	14489	0
// OP_STORE_V	230	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001532 = [164, func001533]
{
    ai_pain(MOVETYPE_FLY);
};


// func001533
// function begins at statement 23211, parm_start=14490
// OP_STATE	14490	14491	0
// OP_STORE_V	228	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001533 = [165, func001534]
{
    ai_pain(MOVETYPE_WALK);
};


// func001534
// function begins at statement 23215, parm_start=14492
// OP_STATE	2022	14492	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001534 = [166, func001535]
{
    ai_pain(TRUE);
};


// func001535
// function begins at statement 23219, parm_start=14493
// OP_STATE	14493	14494	0
// OP_STORE_V	216	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001535 = [167, func001536]
{
    ai_pain(FL_SWIM);
};


// func001536
// function begins at statement 23223, parm_start=14495
// OP_STATE	14495	14496	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001536 = [168, func001537]
{
    ai_pain(TRUE);
};


// func001537
// function begins at statement 23227, parm_start=14497
// OP_STATE	14497	14498	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001537 = [169, func001538]
{
    ai_pain(TRUE);
};


// func001538
// function begins at statement 23231, parm_start=14499
// OP_STATE	2505	14499	0
// OP_STORE_V	216	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001538 = [170, func001539]
{
    ai_pain(FL_SWIM);
};


// func001539
// function begins at statement 23235, parm_start=14500
// OP_STATE	14500	14501	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	14413	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	104	14502
// OP_STOREP_F	237	14502	0
// OP_DONE	0	0	0
void () func001539 = [171, func001540]
{
    sound(self, CHAN_BODY, "zombie/z_fall.wav", TRUE, ATTN_NORM);
    self.solid = SOLID_NOT;
};


// func001540
// function begins at statement 23245, parm_start=14503
// OP_STATE	14503	14504	0
// OP_ADDRESS	28	150	14505
// OP_LOAD_F	28	150	14506
// OP_ADD_F	14506	230	14507
// OP_STOREP_F	14507	14505	0
// OP_ADDRESS	28	152	14508
// OP_STOREP_F	2019	14508	0
// OP_DONE	0	0	0
void () func001540 = [172, func001541]
{
    self.nextthink = self.nextthink + MOVETYPE_FLY;
    self.health = 60;
};


// func001541
// function begins at statement 23253, parm_start=14509
// OP_STATE	14509	14510	0
// OP_ADDRESS	28	152	14511
// OP_STOREP_F	2019	14511	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	3675	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	104	14512
// OP_STOREP_F	240	14512	0
// OP_STORE_V	213	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	480	0	0
// OP_NOT_F	1	0	14513
// OP_IFNOT	14513	6	0
// OP_ADDRESS	28	148	14514
// OP_STOREP_FNC	14501	14514	0
// OP_ADDRESS	28	104	14515
// OP_STOREP_F	237	14515	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func001541 = [173, func001542]
{
    self.health = 60;
    sound(self, CHAN_VOICE, "zombie/z_idle.wav", TRUE, ATTN_IDLE);
    self.solid = SOLID_SLIDEBOX;
    
    if(!walkmove(FALSE, FALSE))
    {
        self.think = func001540;
        self.solid = SOLID_NOT;
        return;
    }
    
};


// func001542
// function begins at statement 23275, parm_start=14516
// OP_STATE	14516	14517	0
// OP_DONE	0	0	0
void () func001542 = [174, func001543]
{
};


// func001543
// function begins at statement 23277, parm_start=14518
// OP_STATE	14518	14519	0
// OP_DONE	0	0	0
void () func001543 = [175, func001544]
{
};


// func001544
// function begins at statement 23279, parm_start=14520
// OP_STATE	14520	14521	0
// OP_DONE	0	0	0
void () func001544 = [176, func001545]
{
};


// func001545
// function begins at statement 23281, parm_start=14522
// OP_STATE	14522	14523	0
// OP_DONE	0	0	0
void () func001545 = [177, func001546]
{
};


// func001546
// function begins at statement 23283, parm_start=14524
// OP_STATE	14524	14525	0
// OP_DONE	0	0	0
void () func001546 = [178, func001547]
{
};


// func001547
// function begins at statement 23285, parm_start=14526
// OP_STATE	14526	14527	0
// OP_DONE	0	0	0
void () func001547 = [179, func001548]
{
};


// func001548
// function begins at statement 23287, parm_start=14528
// OP_STATE	1296	14528	0
// OP_DONE	0	0	0
void () func001548 = [180, func001549]
{
};


// func001549
// function begins at statement 23289, parm_start=14529
// OP_STATE	2600	14529	0
// OP_DONE	0	0	0
void () func001549 = [181, func001550]
{
};


// func001550
// function begins at statement 23291, parm_start=14530
// OP_STATE	14530	14531	0
// OP_DONE	0	0	0
void () func001550 = [182, func001551]
{
};


// func001551
// function begins at statement 23293, parm_start=14532
// OP_STATE	14532	14533	0
// OP_DONE	0	0	0
void () func001551 = [183, func001552]
{
};


// func001552
// function begins at statement 23295, parm_start=14534
// OP_STATE	14534	14535	0
// OP_DONE	0	0	0
void () func001552 = [184, func001553]
{
};


// func001553
// function begins at statement 23297, parm_start=14536
// OP_STATE	14536	14537	0
// OP_DONE	0	0	0
void () func001553 = [185, func001554]
{
};


// func001554
// function begins at statement 23299, parm_start=14538
// OP_STATE	14538	14539	0
// OP_STORE_V	230	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001554 = [186, func001555]
{
    ai_painforward(MOVETYPE_FLY);
};


// func001555
// function begins at statement 23303, parm_start=14540
// OP_STATE	14540	14541	0
// OP_STORE_V	228	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001555 = [187, func001556]
{
    ai_painforward(MOVETYPE_WALK);
};


// func001556
// function begins at statement 23307, parm_start=14542
// OP_STATE	14542	14543	0
// OP_STORE_V	214	4	0
// OP_CALL1	3791	0	0
// OP_DONE	0	0	0
void () func001556 = [188, func001557]
{
    ai_painforward(TRUE);
};


// func001557
// function begins at statement 23311, parm_start=14544
// OP_STATE	2029	14544	0
// OP_STORE_V	214	4	0
// OP_CALL1	3789	0	0
// OP_DONE	0	0	0
void () func001557 = [189, func001558]
{
    ai_pain(TRUE);
};


// func001558
// function begins at statement 23315, parm_start=14545
// OP_STATE	2035	14545	0
// OP_DONE	0	0	0
void () func001558 = [190, func001559]
{
};


// func001559
// function begins at statement 23317, parm_start=14546
// OP_STATE	14546	14236	0
// OP_DONE	0	0	0
void () func001559 = [191, func001399]
{
};


// func001560
// function begins at statement 23319, parm_start=14548
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14548	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	14549	4	0
// OP_LOAD_F	28	152	14550
// OP_STORE_V	14550	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	14551
// OP_STORE_V	14551	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	14552
// OP_STORE_V	14552	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	14553
// OP_STORE_V	14553	7	0
// OP_CALL2	9771	0	0
// OP_DONE	0	0	0
void () func001560 = 
{
    sound(self, CHAN_VOICE, "zombie/z_gib.wav", TRUE, ATTN_NORM);
    ThrowHead("progs/h_zombie.mdl", self.health);
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
};


// func001561
// function begins at statement 23342, parm_start=14555
// OP_ADDRESS	28	152	14558
// OP_STOREP_F	2019	14558	0
// OP_LT	14556	234	14559
// OP_IFNOT	14559	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	14166	14560
// OP_EQ_F	14560	216	14561
// OP_IFNOT	14561	2	0
// OP_RETURN	0	0	0
// OP_GE	14556	305	14562
// OP_IFNOT	14562	5	0
// OP_ADDRESS	28	14166	14563
// OP_STOREP_F	216	14563	0
// OP_CALL0	14482	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	14166	14564
// OP_IFNOT	14564	5	0
// OP_ADDRESS	28	379	14565
// OP_ADD_F	31	228	14566
// OP_STOREP_F	14566	14565	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	379	14567
// OP_GT	14567	31	14568
// OP_IFNOT	14568	5	0
// OP_ADDRESS	28	14166	14569
// OP_STOREP_F	216	14569	0
// OP_CALL0	14482	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	14166	14570
// OP_STOREP_F	214	14570	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	14557	0
// OP_LT	14557	6277	14571
// OP_IFNOT	14571	3	0
// OP_CALL0	14389	0	0
// OP_GOTO	10	0	0
// OP_LT	14557	539	14572
// OP_IFNOT	14572	3	0
// OP_CALL0	14402	0	0
// OP_GOTO	6	0	0
// OP_LT	14557	6280	14573
// OP_IFNOT	14573	3	0
// OP_CALL0	14432	0	0
// OP_GOTO	2	0	0
// OP_CALL0	14459	0	0
// OP_DONE	0	0	0
void (entity globaldef004802, float globaldef004803) func001561 = 
{
    local float globaldef004804;
    self.health = 60;
    
    if(globaldef004803 < MOVETYPE_FLYMISSILE)
    {
        return;
    }
    
    
    if(self.inpain == FL_SWIM)
    {
        return;
    }
    
    
    if(globaldef004803 >= SVC_SIGNONNUM)
    {
        self.inpain = FL_SWIM;
        func001530();
        return;
    }
    
    
    if(self.inpain)
    {
        self.pain_finished = time + MOVETYPE_WALK;
        return;
    }
    
    
    if(self.pain_finished > time)
    {
        self.inpain = FL_SWIM;
        func001530();
        return;
    }
    
    self.inpain = TRUE;
    globaldef004804 = random();
    if(globaldef004804 < 0.25)
    {
        func001459();
    }
    else
    {
        if(globaldef004804 < RA_PLAYERSTATTIME)
        {
            func001471();
        }
        else
        {
            if(globaldef004804 < 0.75)
            {
                func001499();
            }
            else
            {
                func001517();
            }
            
        }
        
    }
    
};


// monster_zombie
// function begins at statement 23388, parm_start=14575
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14575	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	14549	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5476	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	3675	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14257	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14281	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14548	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14391	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14404	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14413	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14264	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14263	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14186	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	14576
// OP_STOREP_F	240	14576	0
// OP_ADDRESS	28	103	14577
// OP_STOREP_F	229	14577	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14575	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	14578
// OP_STOREP_F	2019	14578	0
// OP_ADDRESS	28	361	14579
// OP_STOREP_FNC	14167	14579	0
// OP_ADDRESS	28	362	14580
// OP_STOREP_FNC	14216	14580	0
// OP_ADDRESS	28	363	14581
// OP_STOREP_FNC	14236	14581	0
// OP_ADDRESS	28	366	14582
// OP_STOREP_FNC	14554	14582	0
// OP_ADDRESS	28	367	14583
// OP_STOREP_FNC	14547	14583	0
// OP_ADDRESS	28	364	14584
// OP_STOREP_FNC	14385	14584	0
// OP_LOAD_F	28	195	14585
// OP_BITAND	14585	14165	14586
// OP_IFNOT	14586	5	0
// OP_ADDRESS	28	103	14587
// OP_STOREP_F	227	14587	0
// OP_CALL0	14182	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10107	0	0
// OP_DONE	0	0	0
void () monster_zombie = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/zombie.mdl");
    precache_model("progs/h_zombie.mdl");
    precache_model("progs/zom_gib.mdl");
    precache_sound("zombie/z_idle.wav");
    precache_sound("zombie/z_idle1.wav");
    precache_sound("zombie/z_shot1.wav");
    precache_sound("zombie/z_gib.wav");
    precache_sound("zombie/z_pain.wav");
    precache_sound("zombie/z_pain1.wav");
    precache_sound("zombie/z_fall.wav");
    precache_sound("zombie/z_miss.wav");
    precache_sound("zombie/z_hit.wav");
    precache_sound("zombie/idle_w2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/zombie.mdl");
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = 60;
    self.th_stand = func001359;
    self.th_walk = func001380;
    self.th_run = func001399;
    self.th_pain = func001561;
    self.th_die = func001560;
    self.th_missile = func001458;
    if(self.spawnflags & globaldef004524)
    {
        self.movetype = MOVETYPE_NONE;
        func001374();
    }
    else
    {
        walkmonster_start();
    }
    
};

