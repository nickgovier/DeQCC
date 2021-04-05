void () army_fire;
// army_stand1
// function begins at statement 15059, parm_start=9352
// OP_STATE	650	9352	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand1 = [0, army_stand2]
{
    ai_stand();
};

// army_stand2
// function begins at statement 15062, parm_start=9353
// OP_STATE	708	9353	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand2 = [1, army_stand3]
{
    ai_stand();
};

// army_stand3
// function begins at statement 15065, parm_start=9354
// OP_STATE	929	9354	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand3 = [2, army_stand4]
{
    ai_stand();
};

// army_stand4
// function begins at statement 15068, parm_start=9355
// OP_STATE	819	9355	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand4 = [3, army_stand5]
{
    ai_stand();
};

// army_stand5
// function begins at statement 15071, parm_start=9356
// OP_STATE	1835	9351	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand5 = [4, army_stand1]
{
    ai_stand();
};

// army_stand6
// function begins at statement 15074, parm_start=9357
// OP_STATE	1660	9357	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand6 = [5, army_stand7]
{
    ai_stand();
};

// army_stand7
// function begins at statement 15077, parm_start=9358
// OP_STATE	2107	9358	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand7 = [6, army_stand8]
{
    ai_stand();
};

// army_stand8
// function begins at statement 15080, parm_start=9359
// OP_STATE	2307	9351	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () army_stand8 = [7, army_stand1]
{
    ai_stand();
};

// army_walk1
// function begins at statement 15083, parm_start=9360
// OP_STATE	1608	9360	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk1 = [90, army_walk2]
{
    ai_walk(1);
};

// army_walk2
// function begins at statement 15087, parm_start=9361
// OP_STATE	6139	9361	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk2 = [91, army_walk3]
{
    ai_walk(1);
};

// army_walk3
// function begins at statement 15091, parm_start=9362
// OP_STATE	6141	9362	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk3 = [92, army_walk4]
{
    ai_walk(1);
};

// army_walk4
// function begins at statement 15095, parm_start=9363
// OP_STATE	6143	9363	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk4 = [93, army_walk5]
{
    ai_walk(1);
};

// army_walk5
// function begins at statement 15099, parm_start=9364
// OP_STATE	6144	9364	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk5 = [94, army_walk6]
{
    ai_walk(2);
};

// army_walk6
// function begins at statement 15103, parm_start=9365
// OP_STATE	6146	9365	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk6 = [95, army_walk7]
{
    ai_walk(3);
};

// army_walk7
// function begins at statement 15107, parm_start=9366
// OP_STATE	6148	9366	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk7 = [96, army_walk8]
{
    ai_walk(4);
};

// army_walk8
// function begins at statement 15111, parm_start=9367
// OP_STATE	6150	9367	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk8 = [97, army_walk9]
{
    ai_walk(4);
};

// army_walk9
// function begins at statement 15115, parm_start=9368
// OP_STATE	6152	9368	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk9 = [98, army_walk10]
{
    ai_walk(2);
};

// army_walk10
// function begins at statement 15119, parm_start=9369
// OP_STATE	6154	9369	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk10 = [99, army_walk11]
{
    ai_walk(2);
};

// army_walk11
// function begins at statement 15123, parm_start=9370
// OP_STATE	2165	9370	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk11 = [100, army_walk12]
{
    ai_walk(2);
};

// army_walk12
// function begins at statement 15127, parm_start=9371
// OP_STATE	6157	9371	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk12 = [101, army_walk13]
{
    ai_walk(1);
};

// army_walk13
// function begins at statement 15131, parm_start=9372
// OP_STATE	6159	9372	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk13 = [102, army_walk14]
{
    ai_walk(0);
};

// army_walk14
// function begins at statement 15135, parm_start=9373
// OP_STATE	5699	9373	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk14 = [103, army_walk15]
{
    ai_walk(1);
};

// army_walk15
// function begins at statement 15139, parm_start=9374
// OP_STATE	5714	9374	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk15 = [104, army_walk16]
{
    ai_walk(1);
};

// army_walk16
// function begins at statement 15143, parm_start=9375
// OP_STATE	5728	9375	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk16 = [105, army_walk17]
{
    ai_walk(1);
};

// army_walk17
// function begins at statement 15147, parm_start=9376
// OP_STATE	5741	9376	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk17 = [106, army_walk18]
{
    ai_walk(3);
};

// army_walk18
// function begins at statement 15151, parm_start=9377
// OP_STATE	5755	9377	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk18 = [107, army_walk19]
{
    ai_walk(3);
};

// army_walk19
// function begins at statement 15155, parm_start=9378
// OP_STATE	5761	9378	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk19 = [108, army_walk20]
{
    ai_walk(3);
};

// army_walk20
// function begins at statement 15159, parm_start=9379
// OP_STATE	5764	9379	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk20 = [109, army_walk21]
{
    ai_walk(3);
};

// army_walk21
// function begins at statement 15163, parm_start=9380
// OP_STATE	5767	9380	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk21 = [110, army_walk22]
{
    ai_walk(2);
};

// army_walk22
// function begins at statement 15167, parm_start=9381
// OP_STATE	5770	9381	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk22 = [111, army_walk23]
{
    ai_walk(1);
};

// army_walk23
// function begins at statement 15171, parm_start=9382
// OP_STATE	5773	9382	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk23 = [112, army_walk24]
{
    ai_walk(1);
};

// army_walk24
// function begins at statement 15175, parm_start=9383
// OP_STATE	5636	9359	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () army_walk24 = [113, army_walk1]
{
    ai_walk(1);
};

// army_run1
// function begins at statement 15179, parm_start=9384
// OP_STATE	2988	9384	0
// OP_STORE_V	3931	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run1 = [73, army_run2]
{
    ai_run(11);
};

// army_run2
// function begins at statement 15183, parm_start=9385
// OP_STATE	6108	9385	0
// OP_STORE_V	2157	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run2 = [74, army_run3]
{
    ai_run(15);
};

// army_run3
// function begins at statement 15187, parm_start=9386
// OP_STATE	6110	9386	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run3 = [75, army_run4]
{
    ai_run(10);
};

// army_run4
// function begins at statement 15191, parm_start=9387
// OP_STATE	6112	9387	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run4 = [76, army_run5]
{
    ai_run(10);
};

// army_run5
// function begins at statement 15195, parm_start=9388
// OP_STATE	6114	9388	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run5 = [77, army_run6]
{
    ai_run(8);
};

// army_run6
// function begins at statement 15199, parm_start=9389
// OP_STATE	6116	9389	0
// OP_STORE_V	2157	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run6 = [78, army_run7]
{
    ai_run(15);
};

// army_run7
// function begins at statement 15203, parm_start=9390
// OP_STATE	6118	9390	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run7 = [79, army_run8]
{
    ai_run(10);
};

// army_run8
// function begins at statement 15207, parm_start=9391
// OP_STATE	874	9383	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () army_run8 = [80, army_run1]
{
    ai_run(8);
};

// army_atk1
// function begins at statement 15211, parm_start=9392
// OP_STATE	6121	9392	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk1 = [81, army_atk2]
{
    ai_face();
};

// army_atk2
// function begins at statement 15214, parm_start=9393
// OP_STATE	6123	9393	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk2 = [82, army_atk3]
{
    ai_face();
};

// army_atk3
// function begins at statement 15217, parm_start=9394
// OP_STATE	6125	9394	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk3 = [83, army_atk4]
{
    ai_face();
};

// army_atk4
// function begins at statement 15220, parm_start=9395
// OP_STATE	6127	9395	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk4 = [84, army_atk5]
{
    ai_face();
};

// army_atk5
// function begins at statement 15223, parm_start=9396
// OP_STATE	6128	9396	0
// OP_CALL0	844	0	0
// OP_CALL0	9350	0	0
// OP_ADDRESS	28	133	9397
// OP_LOAD_F	28	133	9398
// OP_BITOR	9398	335	9399
// OP_STOREP_F	9399	9397	0
// OP_DONE	0	0	0
void () army_atk5 = [85, army_atk6]
{
    ai_face();
    army_fire();
    self.effects = self.effects | EF_MUZZLEFLASH;
};

// army_atk6
// function begins at statement 15231, parm_start=9400
// OP_STATE	6130	9400	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk6 = [86, army_atk7]
{
    ai_face();
};

// army_atk7
// function begins at statement 15234, parm_start=9401
// OP_STATE	6132	9401	0
// OP_CALL0	844	0	0
// OP_STORE_V	9391	4	0
// OP_CALL1	824	0	0
// OP_DONE	0	0	0
void () army_atk7 = [87, army_atk8]
{
    ai_face();
    SUB_CheckRefire(army_atk1);
};

// army_atk8
// function begins at statement 15239, parm_start=9402
// OP_STATE	6134	9402	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk8 = [88, army_atk9]
{
    ai_face();
};

// army_atk9
// function begins at statement 15242, parm_start=9403
// OP_STATE	6136	9383	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () army_atk9 = [89, army_run1]
{
    ai_face();
};

// army_pain1
// function begins at statement 15245, parm_start=9404
// OP_STATE	2007	9404	0
// OP_DONE	0	0	0
void () army_pain1 = [40, army_pain2]
{
};

// army_pain2
// function begins at statement 15247, parm_start=9405
// OP_STATE	6160	9405	0
// OP_DONE	0	0	0
void () army_pain2 = [41, army_pain3]
{
};

// army_pain3
// function begins at statement 15249, parm_start=9406
// OP_STATE	6162	9406	0
// OP_DONE	0	0	0
void () army_pain3 = [42, army_pain4]
{
};

// army_pain4
// function begins at statement 15251, parm_start=9407
// OP_STATE	6164	9407	0
// OP_DONE	0	0	0
void () army_pain4 = [43, army_pain5]
{
};

// army_pain5
// function begins at statement 15253, parm_start=9408
// OP_STATE	6166	9408	0
// OP_DONE	0	0	0
void () army_pain5 = [44, army_pain6]
{
};

// army_pain6
// function begins at statement 15255, parm_start=9409
// OP_STATE	1572	9383	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () army_pain6 = [45, army_run1]
{
    ai_pain(1);
};

// army_painb1
// function begins at statement 15259, parm_start=9410
// OP_STATE	6169	9410	0
// OP_DONE	0	0	0
void () army_painb1 = [46, army_painb2]
{
};

// army_painb2
// function begins at statement 15261, parm_start=9411
// OP_STATE	6171	9411	0
// OP_STORE_V	8427	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painb2 = [47, army_painb3]
{
    ai_painforward(13);
};

// army_painb3
// function begins at statement 15265, parm_start=9412
// OP_STATE	6173	9412	0
// OP_STORE_V	3556	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painb3 = [48, army_painb4]
{
    ai_painforward(9);
};

// army_painb4
// function begins at statement 15269, parm_start=9413
// OP_STATE	6175	9413	0
// OP_DONE	0	0	0
void () army_painb4 = [49, army_painb5]
{
};

// army_painb5
// function begins at statement 15271, parm_start=9414
// OP_STATE	2509	9414	0
// OP_DONE	0	0	0
void () army_painb5 = [50, army_painb6]
{
};

// army_painb6
// function begins at statement 15273, parm_start=9415
// OP_STATE	6068	9415	0
// OP_DONE	0	0	0
void () army_painb6 = [51, army_painb7]
{
};

// army_painb7
// function begins at statement 15275, parm_start=9416
// OP_STATE	6070	9416	0
// OP_DONE	0	0	0
void () army_painb7 = [52, army_painb8]
{
};

// army_painb8
// function begins at statement 15277, parm_start=9417
// OP_STATE	6072	9417	0
// OP_DONE	0	0	0
void () army_painb8 = [53, army_painb9]
{
};

// army_painb9
// function begins at statement 15279, parm_start=9418
// OP_STATE	6074	9418	0
// OP_DONE	0	0	0
void () army_painb9 = [54, army_painb10]
{
};

// army_painb10
// function begins at statement 15281, parm_start=9419
// OP_STATE	6076	9419	0
// OP_DONE	0	0	0
void () army_painb10 = [55, army_painb11]
{
};

// army_painb11
// function begins at statement 15283, parm_start=9420
// OP_STATE	6078	9420	0
// OP_DONE	0	0	0
void () army_painb11 = [56, army_painb12]
{
};

// army_painb12
// function begins at statement 15285, parm_start=9421
// OP_STATE	6080	9421	0
// OP_STORE_V	929	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () army_painb12 = [57, army_painb13]
{
    ai_pain(2);
};

// army_painb13
// function begins at statement 15289, parm_start=9422
// OP_STATE	6082	9422	0
// OP_DONE	0	0	0
void () army_painb13 = [58, army_painb14]
{
};

// army_painb14
// function begins at statement 15291, parm_start=9423
// OP_STATE	6084	9383	0
// OP_DONE	0	0	0
void () army_painb14 = [59, army_run1]
{
};

// army_painc1
// function begins at statement 15293, parm_start=9424
// OP_STATE	1035	9424	0
// OP_DONE	0	0	0
void () army_painc1 = [60, army_painc2]
{
};

// army_painc2
// function begins at statement 15295, parm_start=9425
// OP_STATE	6086	9425	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () army_painc2 = [61, army_painc3]
{
    ai_pain(1);
};

// army_painc3
// function begins at statement 15299, parm_start=9426
// OP_STATE	6088	9426	0
// OP_DONE	0	0	0
void () army_painc3 = [62, army_painc4]
{
};

// army_painc4
// function begins at statement 15301, parm_start=9427
// OP_STATE	4345	9427	0
// OP_DONE	0	0	0
void () army_painc4 = [63, army_painc5]
{
};

// army_painc5
// function begins at statement 15303, parm_start=9428
// OP_STATE	1684	9428	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painc5 = [64, army_painc6]
{
    ai_painforward(1);
};

// army_painc6
// function begins at statement 15307, parm_start=9429
// OP_STATE	6092	9429	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painc6 = [65, army_painc7]
{
    ai_painforward(1);
};

// army_painc7
// function begins at statement 15311, parm_start=9430
// OP_STATE	6094	9430	0
// OP_DONE	0	0	0
void () army_painc7 = [66, army_painc8]
{
};

// army_painc8
// function begins at statement 15313, parm_start=9431
// OP_STATE	6096	9431	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () army_painc8 = [67, army_painc9]
{
    ai_pain(1);
};

// army_painc9
// function begins at statement 15317, parm_start=9432
// OP_STATE	6098	9432	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painc9 = [68, army_painc10]
{
    ai_painforward(4);
};

// army_painc10
// function begins at statement 15321, parm_start=9433
// OP_STATE	6100	9433	0
// OP_STORE_V	819	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painc10 = [69, army_painc11]
{
    ai_painforward(3);
};

// army_painc11
// function begins at statement 15325, parm_start=9434
// OP_STATE	6101	9434	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painc11 = [70, army_painc12]
{
    ai_painforward(6);
};

// army_painc12
// function begins at statement 15329, parm_start=9435
// OP_STATE	6103	9435	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () army_painc12 = [71, army_painc13]
{
    ai_painforward(8);
};

// army_painc13
// function begins at statement 15333, parm_start=9436
// OP_STATE	6105	9383	0
// OP_DONE	0	0	0
void () army_painc13 = [72, army_run1]
{
};

// army_pain
// function begins at statement 15335, parm_start=9437
// OP_LOAD_F	28	375	9440
// OP_GT	9440	31	9441
// OP_IFNOT	9441	2	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_STORE_F	1	9439	0
// OP_LT	9439	922	9442
// OP_IFNOT	9442	12	0
// OP_ADDRESS	28	375	9443
// OP_ADD_F	31	2240	9444
// OP_STOREP_F	9444	9443	0
// OP_CALL0	9403	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9445	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	24	0	0
// OP_LT	9439	2240	9446
// OP_IFNOT	9446	12	0
// OP_ADDRESS	28	375	9447
// OP_ADD_F	31	9448	9449
// OP_STOREP_F	9449	9447	0
// OP_CALL0	9409	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9450	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	11	0	0
// OP_ADDRESS	28	375	9451
// OP_ADD_F	31	9448	9452
// OP_STOREP_F	9452	9451	0
// OP_CALL0	9423	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9450	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) army_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    r = random();
    if(r < 0.2)
    {
        self.pain_finished = time + 0.6;
        army_pain1();
        sound(self, CHAN_VOICE, "soldier/pain1.wav", 1, ATTN_NORM);
    }
    else
    {
        if(r < 0.6)
        {
            self.pain_finished = time + 1.1;
            army_painb1();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", 1, ATTN_NORM);
        }
        else
        {
            self.pain_finished = time + 1.1;
            army_painc1();
            sound(self, CHAN_VOICE, "soldier/pain2.wav", 1, ATTN_NORM);
        }
        
    }
    
};

// army_fire
// function begins at statement 15378, parm_start=9453
// OP_CALL0	844	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9457	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_ENT	28	181	9458
// OP_STORE_ENT	9458	9456	0
// OP_LOAD_V	9456	105	9459
// OP_LOAD_V	9456	113	9462
// OP_MUL_VF	9462	922	9465
// OP_SUB_V	9459	9465	9468
// OP_STORE_V	9468	9453	0
// OP_LOAD_V	28	105	9471
// OP_SUB_V	9453	9471	9474
// OP_STORE_V	9474	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	9453	0
// OP_STORE_V	1835	4	0
// OP_STORE_V	9453	7	0
// OP_STORE_V	9477	10	0
// OP_CALL3	3072	0	0
// OP_DONE	0	0	0
void () army_fire = 
{
    local vector dir;
    local entity en;
    ai_face();
    sound(self, CHAN_WEAPON, "soldier/sattck1.wav", 1, ATTN_NORM);
    en = self.enemy;
    dir = en.origin - (en.velocity * 0.2);
    dir = normalize(dir - self.origin);
    FireBullets(4, dir, '0.100 0.100 0.000');
};

// army_die1
// function begins at statement 15402, parm_start=9481
// OP_STATE	1502	9481	0
// OP_DONE	0	0	0
void () army_die1 = [8, army_die2]
{
};

// army_die2
// function begins at statement 15404, parm_start=9482
// OP_STATE	3556	9482	0
// OP_DONE	0	0	0
void () army_die2 = [9, army_die3]
{
};

// army_die3
// function begins at statement 15406, parm_start=9483
// OP_STATE	1931	9483	0
// OP_ADDRESS	28	104	9484
// OP_STOREP_F	238	9484	0
// OP_ADDRESS	28	158	9485
// OP_STOREP_F	1660	9485	0
// OP_DONE	0	0	0
void () army_die3 = [10, army_die4]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = 5;
};

// army_die4
// function begins at statement 15412, parm_start=9486
// OP_STATE	3931	9486	0
// OP_DONE	0	0	0
void () army_die4 = [11, army_die5]
{
};

// army_die5
// function begins at statement 15414, parm_start=9487
// OP_STATE	2532	9487	0
// OP_DONE	0	0	0
void () army_die5 = [12, army_die6]
{
};

// army_die6
// function begins at statement 15416, parm_start=9488
// OP_STATE	8427	9488	0
// OP_DONE	0	0	0
void () army_die6 = [13, army_die7]
{
};

// army_die7
// function begins at statement 15418, parm_start=9489
// OP_STATE	3153	9489	0
// OP_DONE	0	0	0
void () army_die7 = [14, army_die8]
{
};

// army_die8
// function begins at statement 15420, parm_start=9490
// OP_STATE	2157	9490	0
// OP_DONE	0	0	0
void () army_die8 = [15, army_die9]
{
};

// army_die9
// function begins at statement 15422, parm_start=9491
// OP_STATE	3273	9491	0
// OP_DONE	0	0	0
void () army_die9 = [16, army_die10]
{
};

// army_die10
// function begins at statement 15424, parm_start=9492
// OP_STATE	5588	9491	0
// OP_DONE	0	0	0
void () army_die10 = [17, army_die10]
{
};

// army_cdie1
// function begins at statement 15426, parm_start=9493
// OP_STATE	3576	9493	0
// OP_DONE	0	0	0
void () army_cdie1 = [18, army_cdie2]
{
};

// army_cdie2
// function begins at statement 15428, parm_start=9494
// OP_STATE	8435	9494	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_cdie2 = [19, army_cdie3]
{
    ai_back(5);
};

// army_cdie3
// function begins at statement 15432, parm_start=9495
// OP_STATE	1017	9495	0
// OP_ADDRESS	28	104	9496
// OP_STOREP_F	238	9496	0
// OP_ADDRESS	28	158	9497
// OP_STOREP_F	1660	9497	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_cdie3 = [20, army_cdie4]
{
    self.solid = SOLID_NOT;
    self.ammo_shells = 5;
    ai_back(4);
};

// army_cdie4
// function begins at statement 15440, parm_start=9498
// OP_STATE	8438	9498	0
// OP_STORE_V	8427	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_cdie4 = [21, army_cdie5]
{
    ai_back(13);
};

// army_cdie5
// function begins at statement 15444, parm_start=9499
// OP_STATE	8440	9499	0
// OP_STORE_V	819	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_cdie5 = [22, army_cdie6]
{
    ai_back(3);
};

// army_cdie6
// function begins at statement 15448, parm_start=9500
// OP_STATE	8442	9500	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () army_cdie6 = [23, army_cdie7]
{
    ai_back(4);
};

// army_cdie7
// function begins at statement 15452, parm_start=9501
// OP_STATE	4969	9501	0
// OP_DONE	0	0	0
void () army_cdie7 = [24, army_cdie8]
{
};

// army_cdie8
// function begins at statement 15454, parm_start=9502
// OP_STATE	2171	9502	0
// OP_DONE	0	0	0
void () army_cdie8 = [25, army_cdie9]
{
};

// army_cdie9
// function begins at statement 15456, parm_start=9503
// OP_STATE	8446	9503	0
// OP_DONE	0	0	0
void () army_cdie9 = [26, army_cdie10]
{
};

// army_cdie10
// function begins at statement 15458, parm_start=9504
// OP_STATE	8448	9504	0
// OP_DONE	0	0	0
void () army_cdie10 = [27, army_cdie11]
{
};

// army_cdie11
// function begins at statement 15460, parm_start=9505
// OP_STATE	8450	9504	0
// OP_DONE	0	0	0
void () army_cdie11 = [28, army_cdie11]
{
};

// army_die
// function begins at statement 15462, parm_start=9506
// OP_LOAD_F	28	152	9506
// OP_LT	9506	9507	9508
// OP_IFNOT	9508	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	9509	4	0
// OP_LOAD_F	28	152	9510
// OP_STORE_V	9510	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	9511
// OP_STORE_V	9511	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	9512
// OP_STORE_V	9512	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	9513
// OP_STORE_V	9513	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9514	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	9515
// OP_IFNOT	9515	3	0
// OP_CALL0	9480	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9492	0	0
// OP_DONE	0	0	0
void () army_die = 
{
    
    if(self.health < -35)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowHead("progs/h_guard.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "soldier/death1.wav", 1, ATTN_NORM);
    if(random() < 0.5)
    {
        army_die1();
    }
    else
    {
        army_cdie1();
    }
    
};

// monster_army
// function begins at statement 15501, parm_start=9517
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9517	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9509	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	4324	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	4325	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	4326	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9514	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9518	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9445	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9450	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9457	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1379	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	4265	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	9519
// OP_STOREP_F	241	9519	0
// OP_ADDRESS	28	103	9520
// OP_STOREP_F	230	9520	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9517	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	9340	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	9521
// OP_STOREP_F	1004	9521	0
// OP_ADDRESS	28	357	9522
// OP_STOREP_FNC	9351	9522	0
// OP_ADDRESS	28	358	9523
// OP_STOREP_FNC	9359	9523	0
// OP_ADDRESS	28	359	9524
// OP_STOREP_FNC	9383	9524	0
// OP_ADDRESS	28	360	9525
// OP_STOREP_FNC	9391	9525	0
// OP_ADDRESS	28	362	9526
// OP_STOREP_FNC	9436	9526	0
// OP_ADDRESS	28	363	9527
// OP_STOREP_FNC	9505	9527	0
// OP_CALL0	6238	0	0
// OP_DONE	0	0	0
void () monster_army = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/soldier.mdl");
    precache_model("progs/h_guard.mdl");
    precache_model("progs/gib1.mdl");
    precache_model("progs/gib2.mdl");
    precache_model("progs/gib3.mdl");
    precache_sound("soldier/death1.wav");
    precache_sound("soldier/idle.wav");
    precache_sound("soldier/pain1.wav");
    precache_sound("soldier/pain2.wav");
    precache_sound("soldier/sattck1.wav");
    precache_sound("soldier/sight1.wav");
    precache_sound("player/udeath.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/soldier.mdl");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 40.000');
    self.health = 30;
    self.th_stand = army_stand1;
    self.th_walk = army_walk1;
    self.th_run = army_run1;
    self.th_missile = army_atk1;
    self.th_pain = army_pain;
    self.th_die = army_die;
    walkmonster_start();
};

