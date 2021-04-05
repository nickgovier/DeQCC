void (vector p) boss_missile;
// boss_face
// function begins at statement 24766, parm_start=17326
// OP_LOAD_ENT	28	181	17326
// OP_LOAD_F	17326	152	17327
// OP_LE	17327	817	17328
// OP_CALL0	466	0	0
// OP_LT	1	9319	17329
// OP_OR	17328	17329	17330
// OP_IFNOT	17330	18	0
// OP_ADDRESS	28	181	17331
// OP_LOAD_ENT	28	181	17332
// OP_STORE_V	17332	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STOREP_ENT	1	17331	0
// OP_LOAD_ENT	28	181	17333
// OP_NOT_ENT	17333	0	17334
// OP_IFNOT	17334	8	0
// OP_ADDRESS	28	181	17335
// OP_LOAD_ENT	28	181	17336
// OP_STORE_V	17336	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STOREP_ENT	1	17335	0
// OP_CALL0	7590	0	0
// OP_DONE	0	0	0
void () boss_face = 
{
    
    if((self.enemy.health <= 0) || (random() < 0.02))
    {
        self.enemy = find(self.enemy, classname, "player");
        
        if(!self.enemy)
        {
            self.enemy = find(self.enemy, classname, "player");
        }
        
    }
    
    ai_face();
};

// boss_rise1
// function begins at statement 24792, parm_start=17338
// OP_STATE	817	17338	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	17339	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () boss_rise1 = [0, boss_rise2]
{
    sound(self, CHAN_WEAPON, "boss1/out1.wav", 1, ATTN_NONE);
};

// boss_rise2
// function begins at statement 24800, parm_start=17340
// OP_STATE	819	17340	0
// OP_STORE_V	28	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	17341	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () boss_rise2 = [1, boss_rise3]
{
    sound(self, CHAN_ITEM, "boss1/sight1.wav", 1, ATTN_NONE);
};

// boss_rise3
// function begins at statement 24808, parm_start=17342
// OP_STATE	821	17342	0
// OP_DONE	0	0	0
void () boss_rise3 = [2, boss_rise4]
{
};

// boss_rise4
// function begins at statement 24810, parm_start=17343
// OP_STATE	823	17343	0
// OP_DONE	0	0	0
void () boss_rise4 = [3, boss_rise5]
{
};

// boss_rise5
// function begins at statement 24812, parm_start=17344
// OP_STATE	825	17344	0
// OP_DONE	0	0	0
void () boss_rise5 = [4, boss_rise6]
{
};

// boss_rise6
// function begins at statement 24814, parm_start=17345
// OP_STATE	827	17345	0
// OP_DONE	0	0	0
void () boss_rise6 = [5, boss_rise7]
{
};

// boss_rise7
// function begins at statement 24816, parm_start=17346
// OP_STATE	829	17346	0
// OP_DONE	0	0	0
void () boss_rise7 = [6, boss_rise8]
{
};

// boss_rise8
// function begins at statement 24818, parm_start=17347
// OP_STATE	839	17347	0
// OP_DONE	0	0	0
void () boss_rise8 = [7, boss_rise9]
{
};

// boss_rise9
// function begins at statement 24820, parm_start=17348
// OP_STATE	843	17348	0
// OP_DONE	0	0	0
void () boss_rise9 = [8, boss_rise10]
{
};

// boss_rise10
// function begins at statement 24822, parm_start=17349
// OP_STATE	847	17349	0
// OP_DONE	0	0	0
void () boss_rise10 = [9, boss_rise11]
{
};

// boss_rise11
// function begins at statement 24824, parm_start=17350
// OP_STATE	855	17350	0
// OP_DONE	0	0	0
void () boss_rise11 = [10, boss_rise12]
{
};

// boss_rise12
// function begins at statement 24826, parm_start=17351
// OP_STATE	831	17351	0
// OP_DONE	0	0	0
void () boss_rise12 = [11, boss_rise13]
{
};

// boss_rise13
// function begins at statement 24828, parm_start=17352
// OP_STATE	834	17352	0
// OP_DONE	0	0	0
void () boss_rise13 = [12, boss_rise14]
{
};

// boss_rise14
// function begins at statement 24830, parm_start=17353
// OP_STATE	837	17353	0
// OP_DONE	0	0	0
void () boss_rise14 = [13, boss_rise15]
{
};

// boss_rise15
// function begins at statement 24832, parm_start=17354
// OP_STATE	841	17354	0
// OP_DONE	0	0	0
void () boss_rise15 = [14, boss_rise16]
{
};

// boss_rise16
// function begins at statement 24834, parm_start=17355
// OP_STATE	845	17355	0
// OP_DONE	0	0	0
void () boss_rise16 = [15, boss_rise17]
{
};

// boss_rise17
// function begins at statement 24836, parm_start=17356
// OP_STATE	2670	17356	0
// OP_DONE	0	0	0
void () boss_rise17 = [16, boss_missile1]
{
};

// boss_idle1
// function begins at statement 24838, parm_start=17358
// OP_STATE	4041	17358	0
// OP_DONE	0	0	0
void () boss_idle1 = [17, boss_idle2]
{
};

// boss_idle2
// function begins at statement 24840, parm_start=17359
// OP_STATE	3974	17359	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle2 = [18, boss_idle3]
{
    boss_face();
};

// boss_idle3
// function begins at statement 24843, parm_start=17360
// OP_STATE	3981	17360	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle3 = [19, boss_idle4]
{
    boss_face();
};

// boss_idle4
// function begins at statement 24846, parm_start=17361
// OP_STATE	1112	17361	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle4 = [20, boss_idle5]
{
    boss_face();
};

// boss_idle5
// function begins at statement 24849, parm_start=17362
// OP_STATE	10944	17362	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle5 = [21, boss_idle6]
{
    boss_face();
};

// boss_idle6
// function begins at statement 24852, parm_start=17363
// OP_STATE	17363	17364	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle6 = [22, boss_idle7]
{
    boss_face();
};

// boss_idle7
// function begins at statement 24855, parm_start=17365
// OP_STATE	17365	17366	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle7 = [23, boss_idle8]
{
    boss_face();
};

// boss_idle8
// function begins at statement 24858, parm_start=17367
// OP_STATE	13015	17367	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle8 = [24, boss_idle9]
{
    boss_face();
};

// boss_idle9
// function begins at statement 24861, parm_start=17368
// OP_STATE	1380	17368	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle9 = [25, boss_idle10]
{
    boss_face();
};

// boss_idle10
// function begins at statement 24864, parm_start=17369
// OP_STATE	17369	17370	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle10 = [26, boss_idle11]
{
    boss_face();
};

// boss_idle11
// function begins at statement 24867, parm_start=17371
// OP_STATE	17371	17372	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle11 = [27, boss_idle12]
{
    boss_face();
};

// boss_idle12
// function begins at statement 24870, parm_start=17373
// OP_STATE	17373	17374	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle12 = [28, boss_idle13]
{
    boss_face();
};

// boss_idle13
// function begins at statement 24873, parm_start=17375
// OP_STATE	14808	17375	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle13 = [29, boss_idle14]
{
    boss_face();
};

// boss_idle14
// function begins at statement 24876, parm_start=17376
// OP_STATE	2522	17376	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle14 = [30, boss_idle15]
{
    boss_face();
};

// boss_idle15
// function begins at statement 24879, parm_start=17377
// OP_STATE	10956	17377	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle15 = [31, boss_idle16]
{
    boss_face();
};

// boss_idle16
// function begins at statement 24882, parm_start=17378
// OP_STATE	2657	17378	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle16 = [32, boss_idle17]
{
    boss_face();
};

// boss_idle17
// function begins at statement 24885, parm_start=17379
// OP_STATE	14813	17379	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle17 = [33, boss_idle18]
{
    boss_face();
};

// boss_idle18
// function begins at statement 24888, parm_start=17380
// OP_STATE	14815	17380	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle18 = [34, boss_idle19]
{
    boss_face();
};

// boss_idle19
// function begins at statement 24891, parm_start=17381
// OP_STATE	5499	17381	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle19 = [35, boss_idle20]
{
    boss_face();
};

// boss_idle20
// function begins at statement 24894, parm_start=17382
// OP_STATE	5405	17382	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle20 = [36, boss_idle21]
{
    boss_face();
};

// boss_idle21
// function begins at statement 24897, parm_start=17383
// OP_STATE	5376	17383	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle21 = [37, boss_idle22]
{
    boss_face();
};

// boss_idle22
// function begins at statement 24900, parm_start=17384
// OP_STATE	14803	17384	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle22 = [38, boss_idle23]
{
    boss_face();
};

// boss_idle23
// function begins at statement 24903, parm_start=17385
// OP_STATE	14805	17385	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle23 = [39, boss_idle24]
{
    boss_face();
};

// boss_idle24
// function begins at statement 24906, parm_start=17386
// OP_STATE	1632	17386	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle24 = [40, boss_idle25]
{
    boss_face();
};

// boss_idle25
// function begins at statement 24909, parm_start=17387
// OP_STATE	10987	17387	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle25 = [41, boss_idle26]
{
    boss_face();
};

// boss_idle26
// function begins at statement 24912, parm_start=17388
// OP_STATE	10994	17388	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle26 = [42, boss_idle27]
{
    boss_face();
};

// boss_idle27
// function begins at statement 24915, parm_start=17389
// OP_STATE	11000	17389	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle27 = [43, boss_idle28]
{
    boss_face();
};

// boss_idle28
// function begins at statement 24918, parm_start=17390
// OP_STATE	15203	17390	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle28 = [44, boss_idle29]
{
    boss_face();
};

// boss_idle29
// function begins at statement 24921, parm_start=17391
// OP_STATE	2558	17391	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle29 = [45, boss_idle30]
{
    boss_face();
};

// boss_idle30
// function begins at statement 24924, parm_start=17392
// OP_STATE	15206	17392	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle30 = [46, boss_idle31]
{
    boss_face();
};

// boss_idle31
// function begins at statement 24927, parm_start=17393
// OP_STATE	15208	17357	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_idle31 = [47, boss_idle1]
{
    boss_face();
};

// boss_missile1
// function begins at statement 24930, parm_start=17393
// OP_STATE	15127	17393	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile1 = [57, boss_missile2]
{
    boss_face();
};

// boss_missile2
// function begins at statement 24933, parm_start=17394
// OP_STATE	15129	17394	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile2 = [58, boss_missile3]
{
    boss_face();
};

// boss_missile3
// function begins at statement 24936, parm_start=17395
// OP_STATE	15131	17395	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile3 = [59, boss_missile4]
{
    boss_face();
};

// boss_missile4
// function begins at statement 24939, parm_start=17396
// OP_STATE	2228	17396	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile4 = [60, boss_missile5]
{
    boss_face();
};

// boss_missile5
// function begins at statement 24942, parm_start=17397
// OP_STATE	15133	17397	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile5 = [61, boss_missile6]
{
    boss_face();
};

// boss_missile6
// function begins at statement 24945, parm_start=17398
// OP_STATE	15135	17398	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile6 = [62, boss_missile7]
{
    boss_face();
};

// boss_missile7
// function begins at statement 24948, parm_start=17399
// OP_STATE	12183	17399	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile7 = [63, boss_missile8]
{
    boss_face();
};

// boss_missile8
// function begins at statement 24951, parm_start=17400
// OP_STATE	2223	17400	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile8 = [64, boss_missile9]
{
    boss_face();
};

// boss_missile9
// function begins at statement 24954, parm_start=17401
// OP_STATE	15139	17401	0
// OP_STORE_V	17402	4	0
// OP_CALL1	17324	0	0
// OP_DONE	0	0	0
void () boss_missile9 = [65, boss_missile10]
{
    boss_missile('100.000 100.000 200.000');
};

// boss_missile10
// function begins at statement 24958, parm_start=17405
// OP_STATE	15141	17405	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile10 = [66, boss_missile11]
{
    boss_face();
};

// boss_missile11
// function begins at statement 24961, parm_start=17406
// OP_STATE	15143	17406	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile11 = [67, boss_missile12]
{
    boss_face();
};

// boss_missile12
// function begins at statement 24964, parm_start=17407
// OP_STATE	15145	17407	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile12 = [68, boss_missile13]
{
    boss_face();
};

// boss_missile13
// function begins at statement 24967, parm_start=17408
// OP_STATE	15147	17408	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile13 = [69, boss_missile14]
{
    boss_face();
};

// boss_missile14
// function begins at statement 24970, parm_start=17409
// OP_STATE	15148	17409	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile14 = [70, boss_missile15]
{
    boss_face();
};

// boss_missile15
// function begins at statement 24973, parm_start=17410
// OP_STATE	15150	17410	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile15 = [71, boss_missile16]
{
    boss_face();
};

// boss_missile16
// function begins at statement 24976, parm_start=17411
// OP_STATE	15152	17411	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile16 = [72, boss_missile17]
{
    boss_face();
};

// boss_missile17
// function begins at statement 24979, parm_start=17412
// OP_STATE	9292	17412	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile17 = [73, boss_missile18]
{
    boss_face();
};

// boss_missile18
// function begins at statement 24982, parm_start=17413
// OP_STATE	15155	17413	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile18 = [74, boss_missile19]
{
    boss_face();
};

// boss_missile19
// function begins at statement 24985, parm_start=17414
// OP_STATE	15157	17414	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile19 = [75, boss_missile20]
{
    boss_face();
};

// boss_missile20
// function begins at statement 24988, parm_start=17415
// OP_STATE	15159	17415	0
// OP_STORE_V	17416	4	0
// OP_CALL1	17324	0	0
// OP_DONE	0	0	0
void () boss_missile20 = [76, boss_missile21]
{
    boss_missile('100.000 -100.000 200.000');
};

// boss_missile21
// function begins at statement 24992, parm_start=17419
// OP_STATE	15161	17419	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile21 = [77, boss_missile22]
{
    boss_face();
};

// boss_missile22
// function begins at statement 24995, parm_start=17420
// OP_STATE	15163	17420	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile22 = [78, boss_missile23]
{
    boss_face();
};

// boss_missile23
// function begins at statement 24998, parm_start=17421
// OP_STATE	15165	17356	0
// OP_CALL0	17325	0	0
// OP_DONE	0	0	0
void () boss_missile23 = [79, boss_missile1]
{
    boss_face();
};

// boss_shocka1
// function begins at statement 25001, parm_start=17422
// OP_STATE	2677	17422	0
// OP_DONE	0	0	0
void () boss_shocka1 = [80, boss_shocka2]
{
};

// boss_shocka2
// function begins at statement 25003, parm_start=17423
// OP_STATE	11033	17423	0
// OP_DONE	0	0	0
void () boss_shocka2 = [81, boss_shocka3]
{
};

// boss_shocka3
// function begins at statement 25005, parm_start=17424
// OP_STATE	15169	17424	0
// OP_DONE	0	0	0
void () boss_shocka3 = [82, boss_shocka4]
{
};

// boss_shocka4
// function begins at statement 25007, parm_start=17425
// OP_STATE	15171	17425	0
// OP_DONE	0	0	0
void () boss_shocka4 = [83, boss_shocka5]
{
};

// boss_shocka5
// function begins at statement 25009, parm_start=17426
// OP_STATE	15173	17426	0
// OP_DONE	0	0	0
void () boss_shocka5 = [84, boss_shocka6]
{
};

// boss_shocka6
// function begins at statement 25011, parm_start=17427
// OP_STATE	11037	17427	0
// OP_DONE	0	0	0
void () boss_shocka6 = [85, boss_shocka7]
{
};

// boss_shocka7
// function begins at statement 25013, parm_start=17428
// OP_STATE	11043	17428	0
// OP_DONE	0	0	0
void () boss_shocka7 = [86, boss_shocka8]
{
};

// boss_shocka8
// function begins at statement 25015, parm_start=17429
// OP_STATE	15176	17429	0
// OP_DONE	0	0	0
void () boss_shocka8 = [87, boss_shocka9]
{
};

// boss_shocka9
// function begins at statement 25017, parm_start=17430
// OP_STATE	15178	17430	0
// OP_DONE	0	0	0
void () boss_shocka9 = [88, boss_shocka10]
{
};

// boss_shocka10
// function begins at statement 25019, parm_start=17431
// OP_STATE	15180	17356	0
// OP_DONE	0	0	0
void () boss_shocka10 = [89, boss_missile1]
{
};

// boss_shockb1
// function begins at statement 25021, parm_start=17432
// OP_STATE	7023	17432	0
// OP_DONE	0	0	0
void () boss_shockb1 = [90, boss_shockb2]
{
};

// boss_shockb2
// function begins at statement 25023, parm_start=17433
// OP_STATE	11051	17433	0
// OP_DONE	0	0	0
void () boss_shockb2 = [91, boss_shockb3]
{
};

// boss_shockb3
// function begins at statement 25025, parm_start=17434
// OP_STATE	11055	17434	0
// OP_DONE	0	0	0
void () boss_shockb3 = [92, boss_shockb4]
{
};

// boss_shockb4
// function begins at statement 25027, parm_start=17435
// OP_STATE	11060	17435	0
// OP_DONE	0	0	0
void () boss_shockb4 = [93, boss_shockb5]
{
};

// boss_shockb5
// function begins at statement 25029, parm_start=17436
// OP_STATE	15185	17436	0
// OP_DONE	0	0	0
void () boss_shockb5 = [94, boss_shockb6]
{
};

// boss_shockb6
// function begins at statement 25031, parm_start=17437
// OP_STATE	15187	17437	0
// OP_DONE	0	0	0
void () boss_shockb6 = [95, boss_shockb7]
{
};

// boss_shockb7
// function begins at statement 25033, parm_start=17438
// OP_STATE	7023	17438	0
// OP_DONE	0	0	0
void () boss_shockb7 = [90, boss_shockb8]
{
};

// boss_shockb8
// function begins at statement 25035, parm_start=17439
// OP_STATE	11051	17439	0
// OP_DONE	0	0	0
void () boss_shockb8 = [91, boss_shockb9]
{
};

// boss_shockb9
// function begins at statement 25037, parm_start=17440
// OP_STATE	11055	17440	0
// OP_DONE	0	0	0
void () boss_shockb9 = [92, boss_shockb10]
{
};

// boss_shockb10
// function begins at statement 25039, parm_start=17441
// OP_STATE	11060	17356	0
// OP_DONE	0	0	0
void () boss_shockb10 = [93, boss_missile1]
{
};

// boss_shockc1
// function begins at statement 25041, parm_start=17442
// OP_STATE	15189	17442	0
// OP_DONE	0	0	0
void () boss_shockc1 = [96, boss_shockc2]
{
};

// boss_shockc2
// function begins at statement 25043, parm_start=17443
// OP_STATE	15191	17443	0
// OP_DONE	0	0	0
void () boss_shockc2 = [97, boss_shockc3]
{
};

// boss_shockc3
// function begins at statement 25045, parm_start=17444
// OP_STATE	15193	17444	0
// OP_DONE	0	0	0
void () boss_shockc3 = [98, boss_shockc4]
{
};

// boss_shockc4
// function begins at statement 25047, parm_start=17445
// OP_STATE	15195	17445	0
// OP_DONE	0	0	0
void () boss_shockc4 = [99, boss_shockc5]
{
};

// boss_shockc5
// function begins at statement 25049, parm_start=17446
// OP_STATE	1957	17446	0
// OP_DONE	0	0	0
void () boss_shockc5 = [100, boss_shockc6]
{
};

// boss_shockc6
// function begins at statement 25051, parm_start=17447
// OP_STATE	11067	17447	0
// OP_DONE	0	0	0
void () boss_shockc6 = [101, boss_shockc7]
{
};

// boss_shockc7
// function begins at statement 25053, parm_start=17448
// OP_STATE	15199	17448	0
// OP_DONE	0	0	0
void () boss_shockc7 = [102, boss_shockc8]
{
};

// boss_shockc8
// function begins at statement 25055, parm_start=17449
// OP_STATE	14698	17449	0
// OP_DONE	0	0	0
void () boss_shockc8 = [103, boss_shockc9]
{
};

// boss_shockc9
// function begins at statement 25057, parm_start=17450
// OP_STATE	14710	17450	0
// OP_DONE	0	0	0
void () boss_shockc9 = [104, boss_shockc10]
{
};

// boss_shockc10
// function begins at statement 25059, parm_start=17451
// OP_STATE	14721	17451	0
// OP_DONE	0	0	0
void () boss_shockc10 = [105, boss_death1]
{
};

// boss_death1
// function begins at statement 25061, parm_start=17452
// OP_STATE	3330	17452	0
// OP_STORE_V	28	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	17453	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_DONE	0	0	0
void () boss_death1 = [48, boss_death2]
{
    sound(self, CHAN_ITEM, "boss1/death.wav", 1, ATTN_NONE);
};

// boss_death2
// function begins at statement 25069, parm_start=17454
// OP_STATE	15211	17454	0
// OP_DONE	0	0	0
void () boss_death2 = [49, boss_death3]
{
};

// boss_death3
// function begins at statement 25071, parm_start=17455
// OP_STATE	2611	17455	0
// OP_DONE	0	0	0
void () boss_death3 = [50, boss_death4]
{
};

// boss_death4
// function begins at statement 25073, parm_start=17456
// OP_STATE	15118	17456	0
// OP_DONE	0	0	0
void () boss_death4 = [51, boss_death5]
{
};

// boss_death5
// function begins at statement 25075, parm_start=17457
// OP_STATE	15120	17457	0
// OP_DONE	0	0	0
void () boss_death5 = [52, boss_death6]
{
};

// boss_death6
// function begins at statement 25077, parm_start=17458
// OP_STATE	2779	17458	0
// OP_DONE	0	0	0
void () boss_death6 = [53, boss_death7]
{
};

// boss_death7
// function begins at statement 25079, parm_start=17459
// OP_STATE	15123	17459	0
// OP_DONE	0	0	0
void () boss_death7 = [54, boss_death8]
{
};

// boss_death8
// function begins at statement 25081, parm_start=17460
// OP_STATE	11012	17460	0
// OP_DONE	0	0	0
void () boss_death8 = [55, boss_death9]
{
};

// boss_death9
// function begins at statement 25083, parm_start=17461
// OP_STATE	11018	17461	0
// OP_STORE_V	28	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	17339	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	332	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	106	17462
// OP_STORE_V	17462	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	107	17463
// OP_STORE_V	17463	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	108	17464
// OP_STORE_V	17464	7	0
// OP_CALL2	511	0	0
// OP_DONE	0	0	0
void () boss_death9 = [56, boss_death10]
{
    sound(self, CHAN_ITEM, "boss1/out1.wav", 1, ATTN_NONE);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
};

// boss_death10
// function begins at statement 25109, parm_start=17465
// OP_STATE	11018	17461	0
// OP_ADD_F	42	819	17465
// OP_STORE_F	17465	42	0
// OP_STORE_V	353	4	0
// OP_STORE_V	316	7	0
// OP_CALL2	507	0	0
// OP_STORE_F	819	12321	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	29	0
// OP_NE_E	29	30	17466
// OP_IFNOT	17466	20	0
// OP_ADDRESS	29	166	17467
// OP_STOREP_V	926	17467	0
// OP_ADDRESS	29	150	17470
// OP_ADD_F	31	1182	17471
// OP_STOREP_F	17471	17470	0
// OP_ADDRESS	29	163	17472
// OP_STOREP_F	256	17472	0
// OP_ADDRESS	29	104	17473
// OP_STOREP_F	243	17473	0
// OP_ADDRESS	29	103	17474
// OP_STOREP_F	233	17474	0
// OP_ADDRESS	29	93	17475
// OP_STOREP_F	817	17475	0
// OP_STORE_V	29	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	29	0
// OP_GOTO	-20	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	318	7	0
// OP_CALL2	507	0	0
// OP_CALL0	532	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	474	0	0
// OP_DONE	0	0	0
void () boss_death10 = [56, boss_death10]
{
    killed_monsters = killed_monsters + 1;
    WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    intermission_running = 1;
    other = find(world, classname, "player");
    
    while(other != world)
    {
        other.view_ofs = '0.000 0.000 0.000';
        other.nextthink = time + 0.5;
        other.takedamage = DAMAGE_NO;
        other.solid = SOLID_NOT;
        other.movetype = MOVETYPE_NONE;
        other.modelindex = 0;
        other = find(other, classname, "player");
    }
    
    WriteByte(MSG_ALL, SVC_INTERMISSION);
    SUB_UseTargets();
    remove(self);
};

// boss_missile
// function begins at statement 25149, parm_start=17476
// OP_LOAD_ENT	28	181	17492
// OP_LOAD_V	17492	105	17493
// OP_LOAD_V	28	105	17496
// OP_SUB_V	17493	17496	17499
// OP_STORE_V	17499	4	0
// OP_CALL1	506	0	0
// OP_STORE_V	1	17479	0
// OP_STORE_V	17479	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	28	105	17502
// OP_MUL_FV	17476	59	17505
// OP_ADD_V	17502	17505	17508
// OP_MUL_FV	17477	65	17511
// OP_ADD_V	17508	17511	17514
// OP_MUL_FV	17478	1215	17517
// OP_ADD_V	17514	17517	17520
// OP_STORE_V	17520	17482	0
// OP_GT	363	819	17523
// OP_IFNOT	17523	18	0
// OP_LOAD_ENT	28	181	17524
// OP_LOAD_V	17524	105	17525
// OP_SUB_V	17525	17482	17528
// OP_STORE_V	17528	4	0
// OP_CALL1	471	0	0
// OP_DIV_F	1	2299	17531
// OP_STORE_F	17531	17491	0
// OP_LOAD_ENT	28	181	17532
// OP_LOAD_V	17532	113	17533
// OP_STORE_V	17533	17485	0
// OP_STORE_F	817	17487	0
// OP_LOAD_ENT	28	181	17536
// OP_LOAD_V	17536	105	17537
// OP_MUL_FV	17491	17485	17540
// OP_ADD_V	17537	17540	17543
// OP_STORE_V	17543	17488	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	17546
// OP_LOAD_V	17546	105	17547
// OP_STORE_V	17547	17488	0
// OP_SUB_V	17488	17482	17550
// OP_STORE_V	17550	4	0
// OP_CALL1	468	0	0
// OP_STORE_V	1	17485	0
// OP_STORE_V	17482	4	0
// OP_STORE_V	17485	7	0
// OP_CALL2	10137	0	0
// OP_STORE_V	359	4	0
// OP_STORE_V	17553	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	359	133	17554
// OP_STOREP_F	817	17554	0
// OP_ADDRESS	359	121	17555
// OP_STOREP_V	17558	17555	0
// OP_STORE_V	359	4	0
// OP_STORE_V	300	7	0
// OP_STORE_V	300	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	359	113	17561
// OP_MUL_VF	17485	1820	17564
// OP_STOREP_V	17564	17561	0
// OP_ADDRESS	359	146	17567
// OP_STOREP_FNC	7268	17567	0
// OP_STORE_V	28	4	0
// OP_STORE_V	335	7	0
// OP_STORE_V	17568	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	359	647	17569
// OP_STOREP_F	31	17569	0
// OP_ADDRESS	359	181	17570
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	880	10	0
// OP_CALL3	477	0	0
// OP_STOREP_ENT	1	17570	0
// OP_ADDRESS	359	148	17571
// OP_STOREP_FNC	7269	17571	0
// OP_ADDRESS	359	150	17572
// OP_ADD_F	31	1988	17573
// OP_STOREP_F	17573	17572	0
// OP_ADDRESS	359	201	17574
// OP_STOREP_ENT	28	17574	0
// OP_LOAD_ENT	28	181	17575
// OP_LOAD_F	17575	152	17576
// OP_LE	17576	817	17577
// OP_LOAD_ENT	28	181	17578
// OP_LOAD_F	17578	682	17579
// OP_EQ_F	17579	817	17580
// OP_AND	17577	17580	17581
// OP_IFNOT	17581	2	0
// OP_CALL0	17357	0	0
// OP_DONE	0	0	0
void (vector p) boss_missile = 
{
    local vector offang;
    local vector org;
    local vector vec;
    local vector d;
    local float t;
    offang = vectoangles(self.enemy.origin - self.origin);
    makevectors(offang);
    org = ((self.origin + (p_x * v_forward)) + (0 * v_right)) + (0 * '0.000 0.000 1.000');
    if(skill > 1)
    {
        t = (vlen(self.enemy.origin - org)) / 300;
        vec = self.enemy.velocity;
        vec_z = 0;
        d = self.enemy.origin + (t * vec);
    }
    else
    {
        d = self.enemy.origin;
    }
    
    vec = normalize(d - org);
    launch_spike(org, vec);
    setmodel(newmis, "models/lavaball.mdl");
    newmis.effects = 0;
    newmis.avelocity = '200.000 100.000 300.000';
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = vec * 500;
    newmis.touch = T_MissileTouch;
    sound(self, CHAN_WEAPON, "boss1/throw.wav", 1, ATTN_NONE);
    newmis.last_idle = time;
    newmis.enemy = find(world, classname, "player");
    newmis.think = RocketSeek;
    newmis.nextthink = time + 0.05;
    newmis.owner = self;
    
    if((self.enemy.health <= 0) && (self.enemy.cult_cars == 0))
    {
        boss_idle1();
    }
    
};

// boss_awake
// function begins at statement 25242, parm_start=17583
// OP_ADDRESS	28	104	17583
// OP_STOREP_F	246	17583	0
// OP_ADDRESS	28	103	17584
// OP_STOREP_F	235	17584	0
// OP_ADDRESS	28	163	17585
// OP_STOREP_F	258	17585	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17586	7	0
// OP_CALL2	463	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	17587	7	0
// OP_STORE_V	17590	10	0
// OP_CALL3	464	0	0
// OP_ADDRESS	28	152	17593
// OP_STOREP_F	3337	17593	0
// OP_ADDRESS	28	181	17594
// OP_STOREP_ENT	360	17594	0
// OP_STORE_V	351	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	332	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	106	17595
// OP_STORE_V	17595	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	107	17596
// OP_STORE_V	17596	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	351	4	0
// OP_LOAD_F	28	108	17597
// OP_STORE_V	17597	7	0
// OP_CALL2	511	0	0
// OP_ADDRESS	28	192	17598
// OP_STOREP_F	1112	17598	0
// OP_CALL0	17337	0	0
// OP_DONE	0	0	0
void () boss_awake = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.takedamage = DAMAGE_AIM;
    setmodel(self, "progs/boss.mdl");
    setsize(self, '-128.000 -128.000 -24.000', '128.000 128.000 256.000');
    self.health = 1000;
    self.enemy = activator;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.yaw_speed = 20;
    boss_rise1();
};

// monster_boss
// function begins at statement 25281, parm_start=17600
// OP_STORE_V	17586	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	17553	4	0
// OP_CALL1	479	0	0
// OP_STORE_V	9176	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	17339	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	17341	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	12085	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	17568	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	17600	4	0
// OP_CALL1	478	0	0
// OP_STORE_V	17453	4	0
// OP_CALL1	478	0	0
// OP_ADD_F	40	819	17601
// OP_STORE_F	17601	40	0
// OP_ADDRESS	28	376	17602
// OP_STOREP_FNC	17451	17602	0
// OP_ADDRESS	28	147	17603
// OP_STOREP_FNC	17582	17603	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    precache_model("progs/boss.mdl");
    precache_model("models/lavaball.mdl");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("boss1/out1.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("misc/power.wav");
    precache_sound("boss1/throw.wav");
    precache_sound("boss1/pain.wav");
    precache_sound("boss1/death.wav");
    total_monsters = total_monsters + 1;
    self.th_die = boss_death1;
    self.use = boss_awake;
};

entity le1;
entity le2;
float lightning_end;
// lightning_fire
// function begins at statement 25306, parm_start=17608
// OP_GE	31	17606	17614
// OP_IFNOT	17614	6	0
// OP_STORE_ENT	17604	28	0
// OP_CALL0	15324	0	0
// OP_STORE_ENT	17605	28	0
// OP_CALL0	15324	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	17604	134	17615
// OP_LOAD_V	17604	138	17618
// OP_ADD_V	17615	17618	17621
// OP_MUL_VF	17621	1182	17624
// OP_STORE_V	17624	17608	0
// OP_LOAD_F	17604	97	17627
// OP_SUB_F	17627	2670	17628
// OP_STORE_F	17628	17610	0
// OP_LOAD_V	17605	134	17629
// OP_LOAD_V	17605	138	17632
// OP_ADD_V	17629	17632	17635
// OP_MUL_VF	17635	1182	17638
// OP_STORE_V	17638	17611	0
// OP_LOAD_F	17605	97	17641
// OP_SUB_F	17641	2670	17642
// OP_STORE_F	17642	17613	0
// OP_SUB_V	17611	17608	17643
// OP_STORE_V	17643	4	0
// OP_CALL1	468	0	0
// OP_MUL_VF	1	1957	17646
// OP_SUB_V	17611	17646	17649
// OP_STORE_V	17649	17611	0
// OP_ADDRESS	28	150	17652
// OP_ADD_F	31	2869	17653
// OP_STOREP_F	17653	17652	0
// OP_ADDRESS	28	148	17654
// OP_STOREP_FNC	17607	17654	0
// OP_STORE_V	353	4	0
// OP_STORE_V	315	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	331	7	0
// OP_CALL2	507	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	514	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	17608	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	17609	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	17610	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	17611	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	17612	7	0
// OP_CALL2	511	0	0
// OP_STORE_V	353	4	0
// OP_STORE_V	17613	7	0
// OP_CALL2	511	0	0
// OP_DONE	0	0	0
void () lightning_fire = 
{
    local vector p1;
    local vector p2;
    
    if(time >= lightning_end)
    {
        self = le1;
        door_go_down();
        self = le2;
        door_go_down();
        return;
    }
    
    p1 = (le1.mins + le1.maxs) * 0.5;
    p1_z = le1.absmin_z - 16;
    p2 = (le2.mins + le2.maxs) * 0.5;
    p2_z = le2.absmin_z - 16;
    p2 = p2 - ((normalize(p2 - p1)) * 100);
    self.nextthink = time + 0.1;
    self.think = lightning_fire;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, p1_x);
    WriteCoord(MSG_ALL, 0);
    WriteCoord(MSG_ALL, 0);
    WriteCoord(MSG_ALL, p2_x);
    WriteCoord(MSG_ALL, 0);
    WriteCoord(MSG_ALL, 0);
};

// lightning_use
// function begins at statement 25368, parm_start=17656
// OP_ADD_F	31	819	17656
// OP_GE	17606	17656	17657
// OP_IFNOT	17657	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	16955	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17604	0
// OP_STORE_V	17604	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	16955	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	17605	0
// OP_NOT_ENT	17604	0	17658
// OP_NOT_ENT	17605	0	17659
// OP_OR	17658	17659	17660
// OP_IFNOT	17660	4	0
// OP_STORE_V	17661	4	0
// OP_CALL1	484	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	17604	447	17662
// OP_NE_F	17662	296	17663
// OP_LOAD_F	17604	447	17664
// OP_NE_F	17664	297	17665
// OP_AND	17663	17665	17666
// OP_LOAD_F	17605	447	17667
// OP_NE_F	17667	296	17668
// OP_LOAD_F	17605	447	17669
// OP_NE_F	17669	297	17670
// OP_AND	17668	17670	17671
// OP_OR	17666	17671	17672
// OP_LOAD_F	17604	447	17673
// OP_LOAD_F	17605	447	17674
// OP_NE_F	17673	17674	17675
// OP_OR	17672	17675	17676
// OP_IFNOT	17676	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	17604	150	17677
// OP_STOREP_F	1228	17677	0
// OP_ADDRESS	17605	150	17678
// OP_STOREP_F	1228	17678	0
// OP_ADD_F	31	819	17679
// OP_STORE_F	17679	17606	0
// OP_STORE_V	28	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	12085	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_CALL0	17607	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7228	10	0
// OP_CALL3	477	0	0
// OP_STORE_ENT	1	28	0
// OP_NOT_ENT	28	0	17680
// OP_IFNOT	17680	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	17681
// OP_STOREP_ENT	360	17681	0
// OP_LOAD_F	17604	447	17682
// OP_EQ_F	17682	296	17683
// OP_LOAD_F	28	152	17684
// OP_GT	17684	817	17685
// OP_AND	17683	17685	17686
// OP_IFNOT	17686	25	0
// OP_STORE_V	28	4	0
// OP_STORE_V	337	7	0
// OP_STORE_V	17600	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	339	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	152	17687
// OP_LOAD_F	28	152	17688
// OP_SUB_F	17688	819	17689
// OP_STOREP_F	17689	17687	0
// OP_LOAD_F	28	152	17690
// OP_GE	17690	821	17691
// OP_IFNOT	17691	3	0
// OP_CALL0	17421	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	152	17692
// OP_EQ_F	17692	819	17693
// OP_IFNOT	17693	3	0
// OP_CALL0	17431	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	17694
// OP_EQ_F	17694	817	17695
// OP_IFNOT	17695	2	0
// OP_CALL0	17441	0	0
// OP_DONE	0	0	0
void () lightning_use = 
{
    
    if(lightning_end >= (time + 1))
    {
        return;
    }
    
    le1 = find(world, target, "lightning");
    le2 = find(le1, target, "lightning");
    
    if(!le1 || !le2)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((le1.state != STATE_TOP) && (le1.state != STATE_BOTTOM)) || ((le2.state != STATE_TOP) && (le2.state != STATE_BOTTOM))) || (le1.state != le2.state))
    {
        return;
    }
    
    le1.nextthink = -1;
    le2.nextthink = -1;
    lightning_end = time + 1;
    sound(self, CHAN_ITEM, "misc/power.wav", 1, ATTN_NONE);
    lightning_fire();
    self = find(world, classname, "monster_boss");
    
    if(!self)
    {
        return;
    }
    
    self.enemy = activator;
    
    if((le1.state == STATE_TOP) && (self.health > 0))
    {
        sound(self, CHAN_ITEM, "boss1/pain.wav", 1, ATTN_NONE);
        self.health = self.health - 1;
        if(self.health >= 2)
        {
            boss_shocka1();
        }
        else
        {
            if(self.health == 1)
            {
                boss_shockb1();
            }
            else
            {
                
                if(self.health == 0)
                {
                    boss_shockc1();
                }
                
            }
            
        }
        
    }
    
};

// event_lightning
// function begins at statement 25460, parm_start=17697
// OP_ADDRESS	28	147	17697
// OP_STOREP_FNC	17655	17697	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = lightning_use;
};

