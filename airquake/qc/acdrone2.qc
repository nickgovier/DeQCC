// drone_auto
// function begins at statement 29075, parm_start=19904
// OP_LOAD_V	28	142	19907
// OP_STORE_V	19907	19904	0
// OP_SUB_F	619	19904	19910
// OP_STORE_F	19910	19904	0
// OP_STORE_V	19904	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	19911
// OP_MUL_VF	59	827	19914
// OP_ADD_V	19911	19914	19917
// OP_STORE_V	19917	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	19920
// OP_STORE_V	19920	10	0
// OP_CALL3	4006	0	0
// OP_ADDRESS	28	158	19921
// OP_LOAD_F	28	158	19922
// OP_BITOR	19922	383	19923
// OP_STOREP_F	19923	19921	0
// OP_ADDRESS	28	422	19924
// OP_ADD_F	31	655	19925
// OP_STOREP_F	19925	19924	0
// OP_DONE	0	0	0
void () drone_auto = 
{
    local vector v0;
    v0 = self.angles;
    v0_x = 0 - v0_x;
    makevectors(v0);
    AC_spike(self.origin + (v_forward * 10), v_forward, self.enemy);
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.attack_finished = time + 0.1;
};

// drone_cannon
// function begins at statement 29097, parm_start=19927
// OP_LOAD_V	28	142	19930
// OP_STORE_V	19930	19927	0
// OP_SUB_F	619	19927	19933
// OP_STORE_F	19933	19927	0
// OP_STORE_V	19927	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	19934
// OP_MUL_VF	59	827	19937
// OP_ADD_V	19934	19937	19940
// OP_STORE_V	19940	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	19943
// OP_STORE_V	19943	10	0
// OP_CALL3	4006	0	0
// OP_ADDRESS	394	171	19944
// OP_STOREP_FNC	3892	19944	0
// OP_ADDRESS	394	469	19945
// OP_STOREP_F	856	19945	0
// OP_ADDRESS	394	175	19946
// OP_ADD_F	31	677	19947
// OP_STOREP_F	19947	19946	0
// OP_ADDRESS	28	158	19948
// OP_LOAD_F	28	158	19949
// OP_BITOR	19949	383	19950
// OP_STOREP_F	19950	19948	0
// OP_ADDRESS	28	422	19951
// OP_ADD_F	31	1349	19952
// OP_STOREP_F	19952	19951	0
// OP_DONE	0	0	0
void () drone_cannon = 
{
    local vector v0;
    v0 = self.angles;
    v0_x = 0 - v0_x;
    makevectors(v0);
    AC_spike(self.origin + (v_forward * 10), v_forward, self.enemy);
    newmis.touch = ACprojectile_touchboom;
    newmis.dmg = 50;
    newmis.nextthink = time + 1;
    self.effects = self.effects | EF_MUZZLEFLASH;
    self.attack_finished = time + 0.2;
};

// drone_bombs
// function begins at statement 29126, parm_start=19954
// OP_LOAD_V	28	142	19957
// OP_STORE_V	19957	19954	0
// OP_SUB_F	619	19954	19960
// OP_STORE_F	19960	19954	0
// OP_STORE_V	19954	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	19961
// OP_MUL_VF	62	827	19964
// OP_SUB_V	19961	19964	19967
// OP_MUL_VF	65	827	19970
// OP_SUB_V	19967	19970	19973
// OP_STORE_V	19973	4	0
// OP_LOAD_V	28	138	19976
// OP_MUL_VF	65	842	19979
// OP_SUB_V	19976	19979	19982
// OP_STORE_V	19982	7	0
// OP_LOAD_ENT	28	206	19985
// OP_STORE_V	19985	10	0
// OP_CALL3	4281	0	0
// OP_LOAD_V	28	130	19986
// OP_MUL_VF	62	827	19989
// OP_SUB_V	19986	19989	19992
// OP_MUL_VF	65	827	19995
// OP_ADD_V	19992	19995	19998
// OP_STORE_V	19998	4	0
// OP_LOAD_V	28	138	20001
// OP_MUL_VF	65	842	20004
// OP_ADD_V	20001	20004	20007
// OP_STORE_V	20007	7	0
// OP_LOAD_ENT	28	206	20010
// OP_STORE_V	20010	10	0
// OP_CALL3	4281	0	0
// OP_LOAD_V	28	130	20011
// OP_MUL_VF	62	827	20014
// OP_SUB_V	20011	20014	20017
// OP_MUL_VF	65	1111	20020
// OP_SUB_V	20017	20020	20023
// OP_STORE_V	20023	4	0
// OP_LOAD_V	28	138	20026
// OP_MUL_VF	65	1193	20029
// OP_SUB_V	20026	20029	20032
// OP_STORE_V	20032	7	0
// OP_LOAD_ENT	28	206	20035
// OP_STORE_V	20035	10	0
// OP_CALL3	4281	0	0
// OP_LOAD_V	28	130	20036
// OP_MUL_VF	62	827	20039
// OP_SUB_V	20036	20039	20042
// OP_MUL_VF	65	1111	20045
// OP_ADD_V	20042	20045	20048
// OP_STORE_V	20048	4	0
// OP_LOAD_V	28	138	20051
// OP_MUL_VF	65	1193	20054
// OP_ADD_V	20051	20054	20057
// OP_STORE_V	20057	7	0
// OP_LOAD_ENT	28	206	20060
// OP_STORE_V	20060	10	0
// OP_CALL3	4281	0	0
// OP_DONE	0	0	0
void () drone_bombs = 
{
    local vector v0;
    v0 = self.angles;
    v0_x = 0 - v0_x;
    makevectors(v0);
    AC_bomb((self.origin - (v_up * 10)) - (v_right * 10), self.velocity - (v_right * 15), self.enemy);
    AC_bomb((self.origin - (v_up * 10)) + (v_right * 10), self.velocity + (v_right * 15), self.enemy);
    AC_bomb((self.origin - (v_up * 10)) - (v_right * 20), self.velocity - (v_right * 45), self.enemy);
    AC_bomb((self.origin - (v_up * 10)) + (v_right * 20), self.velocity + (v_right * 45), self.enemy);
};

// drone_pave
// function begins at statement 29185, parm_start=20062
// OP_LOAD_V	28	142	20066
// OP_STORE_V	20066	20062	0
// OP_SUB_F	619	20062	20069
// OP_STORE_F	20069	20062	0
// OP_STORE_V	20062	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	20070
// OP_STORE_ENT	20070	20065	0
// OP_ADDRESS	28	206	20071
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	402	20072
// OP_STORE_V	20072	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	20071	0
// OP_LOAD_V	28	130	20073
// OP_MUL_VF	62	827	20076
// OP_SUB_V	20073	20076	20079
// OP_STORE_V	20079	4	0
// OP_LOAD_V	28	138	20082
// OP_MUL_VF	65	842	20085
// OP_SUB_V	20082	20085	20088
// OP_STORE_V	20088	7	0
// OP_LOAD_ENT	28	206	20091
// OP_STORE_V	20091	10	0
// OP_CALL3	4430	0	0
// OP_ADDRESS	28	206	20092
// OP_STOREP_ENT	20065	20092	0
// OP_DONE	0	0	0
void () drone_pave = 
{
    local vector v0;
    local entity e;
    v0 = self.angles;
    v0_x = 0 - v0_x;
    makevectors(v0);
    e = self.enemy;
    self.enemy = find(world, targetname, self.killtarget);
    AC_paveway(self.origin - (v_up * 10), self.velocity - (v_right * 15), self.enemy);
    self.enemy = e;
};

// drone_maver
// function begins at statement 29214, parm_start=20094
// OP_LOAD_V	28	142	20098
// OP_STORE_V	20098	20094	0
// OP_SUB_F	619	20094	20101
// OP_STORE_F	20101	20094	0
// OP_STORE_V	20094	4	0
// OP_CALL1	496	0	0
// OP_LOAD_ENT	28	206	20102
// OP_STORE_ENT	20102	20097	0
// OP_ADDRESS	28	206	20103
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	402	20104
// OP_STORE_V	20104	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	20103	0
// OP_LOAD_V	28	130	20105
// OP_MUL_VF	62	827	20108
// OP_SUB_V	20105	20108	20111
// OP_STORE_V	20111	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	20114
// OP_STORE_V	20114	10	0
// OP_CALL3	4972	0	0
// OP_ADDRESS	28	206	20115
// OP_STOREP_ENT	20097	20115	0
// OP_DONE	0	0	0
void () drone_maver = 
{
    local vector v0;
    local entity e;
    v0 = self.angles;
    v0_x = 0 - v0_x;
    makevectors(v0);
    e = self.enemy;
    self.enemy = find(world, targetname, self.killtarget);
    AC_maverick(self.origin - (v_up * 10), v_forward, self.enemy);
    self.enemy = e;
};

// drone_sider
// function begins at statement 29240, parm_start=20117
// OP_LOAD_V	28	142	20121
// OP_STORE_V	20121	20117	0
// OP_SUB_F	619	20117	20124
// OP_STORE_F	20124	20117	0
// OP_STORE_V	20117	4	0
// OP_CALL1	496	0	0
// OP_LOAD_V	28	130	20125
// OP_MUL_VF	62	827	20128
// OP_SUB_V	20125	20128	20131
// OP_STORE_V	20131	4	0
// OP_STORE_V	59	7	0
// OP_LOAD_ENT	28	206	20134
// OP_STORE_V	20134	10	0
// OP_CALL3	4899	0	0
// OP_ADDRESS	28	422	20135
// OP_ADD_F	31	806	20136
// OP_STOREP_F	20136	20135	0
// OP_DONE	0	0	0
void () drone_sider = 
{
    local vector v0;
    local entity e;
    v0 = self.angles;
    v0_x = 0 - v0_x;
    makevectors(v0);
    AC_sidewinder(self.origin - (v_up * 10), v_forward, self.enemy);
    self.attack_finished = time + 2;
};

// drone2_fly
// function begins at statement 29258, parm_start=20138
// OP_CALL0	1716	0	0
// OP_LOAD_ENT	28	467	20155
// OP_NOT_ENT	20155	0	20156
// OP_IFNOT	20156	8	0
// OP_ADDRESS	28	467	20157
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	20158
// OP_STORE_V	20158	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	20157	0
// OP_LOAD_F	28	415	20159
// OP_LT	20159	31	20160
// OP_IFNOT	20160	52	0
// OP_LOAD_ENT	28	206	20161
// OP_LOAD_V	20161	130	20162
// OP_LOAD_ENT	28	206	20165
// OP_LOAD_V	20165	159	20166
// OP_LOAD_ENT	28	206	20169
// OP_LOAD_V	20169	163	20170
// OP_ADD_V	20166	20170	20173
// OP_MUL_VF	20173	972	20176
// OP_ADD_V	20162	20176	20179
// OP_LOAD_V	28	130	20182
// OP_SUB_V	20179	20182	20185
// OP_STORE_V	20185	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20144	0
// OP_STORE_V	30	4	0
// OP_STORE_V	233	7	0
// OP_LOAD_S	28	233	20188
// OP_STORE_V	20188	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	20154	0
// OP_STORE_F	619	20153	0
// OP_IFNOT	20154	27	0
// OP_LOAD_S	20154	154	20189
// OP_EQ_S	20189	1526	20190
// OP_IFNOT	20190	17	0
// OP_LOAD_V	20154	130	20191
// OP_LOAD_V	28	130	20194
// OP_SUB_V	20191	20194	20197
// OP_STORE_V	20197	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20141	0
// OP_MUL_V	20141	20144	20200
// OP_STORE_F	20200	20152	0
// OP_GT	20152	20153	20201
// OP_IFNOT	20201	7	0
// OP_STORE_V	20154	4	0
// OP_CALL1	792	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	467	20202
// OP_STOREP_ENT	20154	20202	0
// OP_STORE_F	20152	20153	0
// OP_STORE_V	20154	4	0
// OP_STORE_V	233	7	0
// OP_LOAD_S	28	233	20203
// OP_STORE_V	20203	10	0
// OP_CALL3	512	0	0
// OP_STORE_ENT	1	20154	0
// OP_GOTO	-26	0	0
// OP_ADDRESS	28	415	20204
// OP_ADD_F	31	806	20205
// OP_STOREP_F	20205	20204	0
// OP_LOAD_ENT	28	206	20206
// OP_IFNOT	20206	8	0
// OP_LOAD_ENT	28	206	20207
// OP_STORE_V	20207	4	0
// OP_CALL1	792	0	0
// OP_NOT_F	1	0	20208
// OP_IFNOT	20208	3	0
// OP_ADDRESS	28	206	20209
// OP_STOREP_ENT	30	20209	0
// OP_ADDRESS	28	219	20210
// OP_LOAD_ENT	28	467	20211
// OP_STOREP_ENT	20211	20210	0
// OP_LOAD_ENT	28	219	20212
// OP_LOAD_V	20212	130	20213
// OP_STORE_V	20213	20141	0
// OP_LOAD_V	28	130	20216
// OP_SUB_V	20141	20216	20219
// OP_STORE_V	20219	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20147	0
// OP_LOAD_ENT	28	206	20222
// OP_LOAD_V	20222	130	20223
// OP_LOAD_ENT	28	206	20226
// OP_LOAD_V	20226	159	20227
// OP_LOAD_ENT	28	206	20230
// OP_LOAD_V	20230	163	20231
// OP_ADD_V	20227	20231	20234
// OP_MUL_VF	20234	972	20237
// OP_ADD_V	20223	20237	20240
// OP_LOAD_V	28	130	20243
// OP_SUB_V	20240	20243	20246
// OP_STORE_V	20246	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20144	0
// OP_MUL_V	20147	20144	20249
// OP_GT	20249	10247	20250
// OP_IFNOT	20250	14	0
// OP_ADDRESS	28	219	20251
// OP_LOAD_ENT	28	206	20252
// OP_STOREP_ENT	20252	20251	0
// OP_LOAD_ENT	28	206	20253
// OP_LOAD_V	20253	130	20254
// OP_LOAD_ENT	28	206	20257
// OP_LOAD_V	20257	159	20258
// OP_LOAD_ENT	28	206	20261
// OP_LOAD_V	20261	163	20262
// OP_ADD_V	20258	20262	20265
// OP_MUL_VF	20265	972	20268
// OP_ADD_V	20254	20268	20271
// OP_STORE_V	20271	20141	0
// OP_LOAD_V	28	130	20274
// OP_SUB_V	20141	20274	20277
// OP_STORE_V	20277	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	20151	0
// OP_LOAD_ENT	28	464	20280
// OP_NE_E	20280	30	20281
// OP_LOAD_ENT	28	464	20282
// OP_LOAD_ENT	28	467	20283
// OP_NE_E	20282	20283	20284
// OP_AND	20281	20284	20285
// OP_IFNOT	20285	45	0
// OP_LOAD_ENT	28	464	20286
// OP_LOAD_V	20286	130	20287
// OP_LOAD_V	28	130	20290
// OP_SUB_V	20287	20290	20293
// OP_STORE_V	20293	4	0
// OP_CALL1	506	0	0
// OP_STORE_F	1	20150	0
// OP_LOAD_ENT	28	219	20296
// OP_LOAD_V	20296	130	20297
// OP_LOAD_ENT	28	464	20300
// OP_LOAD_V	20300	130	20301
// OP_SUB_V	20297	20301	20304
// OP_STORE_V	20304	4	0
// OP_CALL1	506	0	0
// OP_DIV_F	20150	1	20307
// OP_STORE_F	20307	20150	0
// OP_MUL_F	20150	2571	20308
// OP_ADD_F	20308	1350	20309
// OP_STORE_F	20309	20150	0
// OP_GT	20150	677	20310
// OP_IFNOT	20310	2	0
// OP_STORE_F	677	20150	0
// OP_LOAD_ENT	28	464	20311
// OP_LOAD_V	20311	130	20312
// OP_LOAD_ENT	28	219	20315
// OP_LOAD_V	20315	130	20316
// OP_LOAD_ENT	28	464	20319
// OP_LOAD_V	20319	130	20320
// OP_SUB_V	20316	20320	20323
// OP_MUL_VF	20323	20150	20326
// OP_ADD_V	20312	20326	20329
// OP_STORE_V	20329	20141	0
// OP_EQ_F	20150	677	20332
// OP_IFNOT	20332	11	0
// OP_ADDRESS	28	464	20333
// OP_LOAD_ENT	28	219	20334
// OP_STOREP_ENT	20334	20333	0
// OP_ADDRESS	28	219	20335
// OP_LOAD_ENT	28	219	20336
// OP_LOAD_ENT	20336	219	20337
// OP_STOREP_ENT	20337	20335	0
// OP_ADDRESS	28	467	20338
// OP_LOAD_ENT	28	219	20339
// OP_STOREP_ENT	20339	20338	0
// OP_LOAD_V	28	130	20340
// OP_SUB_V	20141	20340	20343
// OP_STORE_V	20343	4	0
// OP_CALL1	541	0	0
// OP_STORE_V	1	20138	0
// OP_STORE_V	607	20141	0
// OP_LOAD_F	28	144	20346
// OP_SUB_F	20139	20346	20347
// OP_STORE_V	20347	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	20142	0
// OP_GT	20142	1827	20348
// OP_IFNOT	20348	3	0
// OP_SUB_F	20142	1459	20349
// OP_STORE_F	20349	20142	0
// OP_LOAD_F	28	143	20350
// OP_SUB_F	20138	20350	20351
// OP_STORE_V	20351	4	0
// OP_CALL1	1299	0	0
// OP_STORE_F	1	20141	0
// OP_GT	20141	1827	20352
// OP_IFNOT	20352	3	0
// OP_SUB_F	20141	1459	20353
// OP_STORE_F	20353	20141	0
// OP_STORE_V	607	20144	0
// OP_LT	20141	619	20354
// OP_IFNOT	20354	4	0
// OP_LOAD_F	28	179	20355
// OP_SUB_F	619	20355	20356
// OP_STORE_F	20356	20144	0
// OP_GT	20141	619	20357
// OP_IFNOT	20357	3	0
// OP_LOAD_F	28	179	20358
// OP_STORE_F	20358	20144	0
// OP_STORE_V	20141	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	179	20359
// OP_MUL_F	20359	655	20360
// OP_LT	1	20360	20361
// OP_IFNOT	20361	4	0
// OP_STORE_F	619	20144	0
// OP_ADDRESS	28	143	20362
// OP_STOREP_F	20138	20362	0
// OP_MUL_F	20142	813	20363
// OP_STORE_F	20363	20145	0
// OP_LOAD_F	28	179	20364
// OP_SUB_F	619	20364	20365
// OP_LT	20145	20365	20366
// OP_IFNOT	20366	4	0
// OP_LOAD_F	28	179	20367
// OP_SUB_F	619	20367	20368
// OP_STORE_F	20368	20145	0
// OP_LOAD_F	28	179	20369
// OP_GT	20145	20369	20370
// OP_IFNOT	20370	3	0
// OP_LOAD_F	28	179	20371
// OP_STORE_F	20371	20145	0
// OP_STORE_V	20142	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	179	20372
// OP_MUL_F	20372	655	20373
// OP_LT	1	20373	20374
// OP_IFNOT	20374	4	0
// OP_STORE_F	619	20145	0
// OP_ADDRESS	28	144	20375
// OP_STOREP_F	20139	20375	0
// OP_LOAD_ENT	28	206	20376
// OP_LOAD_ENT	28	219	20377
// OP_EQ_E	20376	20377	20378
// OP_IFNOT	20378	31	0
// OP_STORE_V	20142	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1145	20379
// OP_STORE_V	20141	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1145	20380
// OP_AND	20379	20380	20381
// OP_LOAD_F	28	177	20382
// OP_LT	20382	2627	20383
// OP_AND	20381	20383	20384
// OP_IFNOT	20384	5	0
// OP_STORE_F	677	20150	0
// OP_ADDRESS	28	240	20385
// OP_STOREP_F	808	20385	0
// OP_GOTO	15	0	0
// OP_STORE_F	619	20150	0
// OP_STORE_V	20142	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1268	20386
// OP_STORE_V	20141	4	0
// OP_CALL1	534	0	0
// OP_LT	1	1268	20387
// OP_AND	20386	20387	20388
// OP_IFNOT	20388	4	0
// OP_ADDRESS	28	240	20389
// OP_STOREP_F	808	20389	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	240	20390
// OP_STOREP_F	788	20390	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	240	20391
// OP_STOREP_F	808	20391	0
// OP_STORE_F	619	20150	0
// OP_SUB_F	619	20145	20392
// OP_LOAD_F	28	145	20393
// OP_SUB_F	20392	20393	20394
// OP_STORE_F	20394	20143	0
// OP_LT	20143	619	20395
// OP_IFNOT	20395	7	0
// OP_STORE_F	6193	20146	0
// OP_MUL_F	20143	827	20396
// OP_LT	20146	20396	20397
// OP_IFNOT	20397	3	0
// OP_MUL_F	20143	827	20398
// OP_STORE_F	20398	20146	0
// OP_GT	20143	619	20399
// OP_IFNOT	20399	7	0
// OP_STORE_F	986	20146	0
// OP_MUL_F	20143	827	20400
// OP_GT	20146	20400	20401
// OP_IFNOT	20401	3	0
// OP_MUL_F	20143	827	20402
// OP_STORE_F	20402	20146	0
// OP_STORE_V	20143	4	0
// OP_CALL1	534	0	0
// OP_LT	1	813	20403
// OP_IFNOT	20403	5	0
// OP_STORE_F	619	20146	0
// OP_ADDRESS	28	145	20404
// OP_SUB_F	619	20145	20405
// OP_STOREP_F	20405	20404	0
// OP_ADDRESS	28	146	20406
// OP_STOREP_V	20144	20406	0
// OP_LOAD_F	28	207	20409
// OP_BITAND	20409	277	20410
// OP_IFNOT	20410	7	0
// OP_ADDRESS	28	207	20411
// OP_LOAD_F	28	207	20412
// OP_SUB_F	20412	277	20413
// OP_STOREP_F	20413	20411	0
// OP_ADDRESS	28	176	20414
// OP_STOREP_ENT	30	20414	0
// OP_LOAD_F	28	177	20415
// OP_LOAD_F	28	210	20416
// OP_MUL_F	20416	1349	20417
// OP_LT	20415	20417	20418
// OP_IFNOT	20418	10	0
// OP_LOAD_S	28	155	20419
// OP_LOAD_S	28	234	20420
// OP_EQ_S	20419	20420	20421
// OP_IFNOT	20421	5	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	235	20422
// OP_STORE_V	20422	7	0
// OP_CALL2	498	0	0
// OP_GOTO	9	0	0
// OP_LOAD_S	28	155	20423
// OP_LOAD_S	28	235	20424
// OP_EQ_S	20423	20424	20425
// OP_IFNOT	20425	5	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	234	20426
// OP_STORE_V	20426	7	0
// OP_CALL2	498	0	0
// OP_IFNOT	20150	9	0
// OP_ADDRESS	28	157	20427
// OP_STOREP_F	677	20427	0
// OP_BITAND	112	808	20428
// OP_NOT_F	20428	0	20429
// OP_IFNOT	20429	3	0
// OP_ADDRESS	28	158	20430
// OP_STOREP_F	808	20430	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	157	20431
// OP_STOREP_F	619	20431	0
// OP_ADDRESS	28	158	20432
// OP_STOREP_F	619	20432	0
// OP_LOAD_V	28	142	20433
// OP_STORE_V	20433	4	0
// OP_CALL1	496	0	0
// OP_STORE_V	59	20147	0
// OP_SUB_F	619	20149	20436
// OP_STORE_F	20436	20149	0
// OP_LOAD_ENT	28	206	20437
// OP_NE_E	20437	30	20438
// OP_LOAD_F	28	422	20439
// OP_LT	20439	31	20440
// OP_AND	20438	20440	20441
// OP_IFNOT	20441	45	0
// OP_LOAD_ENT	28	206	20442
// OP_LOAD_V	20442	130	20443
// OP_LOAD_ENT	28	206	20446
// OP_LOAD_V	20446	159	20447
// OP_LOAD_ENT	28	206	20450
// OP_LOAD_V	20450	163	20451
// OP_ADD_V	20447	20451	20454
// OP_MUL_VF	20454	972	20457
// OP_ADD_V	20443	20457	20460
// OP_LOAD_V	28	130	20463
// OP_SUB_V	20460	20463	20466
// OP_STORE_V	20466	20138	0
// OP_STORE_V	20138	4	0
// OP_CALL1	503	0	0
// OP_STORE_V	1	20144	0
// OP_MUL_V	20144	20147	20469
// OP_GT	20469	1345	20470
// OP_IFNOT	20470	27	0
// OP_LOAD_F	28	404	20471
// OP_EQ_F	20471	677	20472
// OP_LOAD_F	28	404	20473
// OP_EQ_F	20473	813	20474
// OP_OR	20472	20474	20475
// OP_IFNOT	20475	15	0
// OP_STORE_V	20138	4	0
// OP_CALL1	506	0	0
// OP_LT	1	4839	20476
// OP_IFNOT	20476	4	0
// OP_LOAD_FNC	28	409	20477
// OP_CALL0	20477	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	20138	4	0
// OP_CALL1	506	0	0
// OP_LT	1	20478	20479
// OP_IFNOT	20479	3	0
// OP_LOAD_FNC	28	408	20480
// OP_CALL0	20480	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	20138	4	0
// OP_CALL1	506	0	0
// OP_LT	1	20481	20482
// OP_IFNOT	20482	3	0
// OP_LOAD_FNC	28	409	20483
// OP_CALL0	20483	0	0
// OP_NOT_F	20150	0	20484
// OP_IFNOT	20484	6	0
// OP_ADDRESS	28	413	20485
// OP_LOAD_F	28	240	20486
// OP_MUL_F	20486	5009	20487
// OP_STOREP_F	20487	20485	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	413	20488
// OP_STOREP_F	1620	20488	0
// OP_ADDRESS	28	138	20489
// OP_LOAD_F	28	413	20492
// OP_MUL_VF	20147	20492	20493
// OP_STOREP_V	20493	20489	0
// OP_CALL0	19624	0	0
// OP_ADDRESS	28	173	20496
// OP_STOREP_FNC	20137	20496	0
// OP_ADDRESS	28	175	20497
// OP_ADD_F	31	655	20498
// OP_STOREP_F	20498	20497	0
// OP_DONE	0	0	0
void () drone2_fly = 
{
    local vector v0;
    local vector v1;
    local vector v2;
    local vector v3;
    local float ab;
    local float dist;
    local float r;
    local float mr;
    local entity temp;
    FindTarget();
    
    if(!self.movetarget)
    {
        self.movetarget = find(world, targetname, self.target);
    }
    
    
    if(self.search_time < time)
    {
        v2 = normalize((self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5)) - self.origin);
        temp = find(world, noise, self.noise);
        mr = 0;
        
        while(temp)
        {
            
            if(temp.classname == "path_corner")
            {
                v1 = normalize(temp.origin - self.origin);
                r = v1 * v2;
                
                if(r > mr)
                {
                    
                    if(visible(temp))
                    {
                        self.movetarget = temp;
                        mr = r;
                    }
                    
                }
                
            }
            
            temp = find(temp, noise, self.noise);
        }
        
        self.search_time = time + 2;
    }
    
    
    if(self.enemy)
    {
        
        if(!visible(self.enemy))
        {
            self.enemy = world;
        }
        
    }
    
    self.goalentity = self.movetarget;
    v1 = self.goalentity.origin;
    v3 = normalize(v1 - self.origin);
    v2 = normalize((self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5)) - self.origin);
    
    if((v3 * v2) > 0.8)
    {
        self.goalentity = self.enemy;
        v1 = self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5);
    }
    
    dist = vlen(v1 - self.origin);
    
    if((self.trigger_field != world) && (self.trigger_field != self.movetarget))
    {
        ab = vlen(self.trigger_field.origin - self.origin);
        ab = ab / (vlen(self.goalentity.origin - self.trigger_field.origin));
        ab = (ab * 0.7) + 0.4;
        
        if(ab > 1)
        {
            ab = 1;
        }
        
        v1 = self.trigger_field.origin + ((self.goalentity.origin - self.trigger_field.origin) * ab);
        
        if(ab == 1)
        {
            self.trigger_field = self.goalentity;
            self.goalentity = self.goalentity.goalentity;
            self.movetarget = self.goalentity;
        }
        
    }
    
    v0 = vectoangles(v1 - self.origin);
    v1 = '0.000 0.000 0.000';
    v1_y = anglemod(0 - self.angles_y);
    
    if(0 > 180)
    {
        v1_y = 0 - 360;
    }
    
    v1_x = anglemod(v0_x - self.angles_x);
    
    if(v1_x > 180)
    {
        v1_x = v1_x - 360;
    }
    
    v2 = '0.000 0.000 0.000';
    
    if(v1_x < 0)
    {
        v2_x = 0 - self.weapon;
    }
    
    
    if(v1_x > 0)
    {
        v2_x = self.weapon;
    }
    
    
    if(fabs(v1_x) < (self.weapon * 0.1))
    {
        v2_x = 0;
        self.angles_x = v0_x;
    }
    
    v2_y = 0 * 5;
    
    if(0 < (0 - self.weapon))
    {
        v2_y = 0 - self.weapon;
    }
    
    
    if(0 > self.weapon)
    {
        v2_y = self.weapon;
    }
    
    
    if(fabs(0) < (self.weapon * 0.1))
    {
        v2_y = 0;
        self.angles_y = 0;
    }
    
    if(self.enemy == self.goalentity)
    {
        if(((fabs(0) < 25) && (fabs(v1_x) < 25)) && (self.health < 120))
        {
            ab = 1;
            self.thru = 4;
        }
        else
        {
            ab = 0;
            if((fabs(0) < 90) && (fabs(v1_x) < 90))
            {
                self.thru = 4;
            }
            else
            {
                self.thru = 3;
            }
            
        }
        
    }
    else
    {
        self.thru = 4;
        ab = 0;
    }
    
    v1_z = (0 - 0) - self.angles_z;
    
    if(0 < 0)
    {
        v2_z = -200;
        
        if(0 < (0 * 10))
        {
            v2_z = 0 * 10;
        }
        
    }
    
    
    if(0 > 0)
    {
        v2_z = 200;
        
        if(0 > (0 * 10))
        {
            v2_z = 0 * 10;
        }
        
    }
    
    
    if(fabs(0) < 5)
    {
        v2_z = 0;
        self.angles_z = 0 - 0;
    }
    
    self.avelocity = v2;
    
    if(self.flags & FL_ONGROUND)
    {
        self.flags = self.flags - FL_ONGROUND;
        self.groundentity = world;
    }
    
    if(self.health < (self.max_health * 0.2))
    {
        
        if(self.model == self.noise1)
        {
            setmodel(self, self.noise2);
        }
        
    }
    else
    {
        
        if(self.model == self.noise2)
        {
            setmodel(self, self.noise1);
        }
        
    }
    
    if(ab)
    {
        self.skin = 1;
        
        if(!(temp1 & 4))
        {
            self.effects = 4;
        }
        
    }
    else
    {
        self.skin = 0;
        self.effects = 0;
    }
    
    makevectors(self.angles);
    v3 = v_forward;
    v3_z = 0 - 0;
    
    if((self.enemy != world) && (self.attack_finished < time))
    {
        v0 = (self.enemy.origin + ((self.enemy.mins + self.enemy.maxs) * 0.5)) - self.origin;
        v2 = normalize(v0);
        
        if((v2 * v3) > 0.9)
        {
            if((self.style == 1) || (self.style == 5))
            {
                if(vlen(v0) < 800)
                {
                    self.th_melee();
                }
                else
                {
                    
                    if(vlen(v0) < 1600)
                    {
                        self.th_missile();
                    }
                    
                }
                
            }
            else
            {
                
                if(vlen(v0) < 1400)
                {
                    self.th_melee();
                }
                
            }
            
        }
        
    }
    
    if(!ab)
    {
        self.speed = self.thru * 75;
    }
    else
    {
        self.speed = 500;
    }
    
    self.velocity = v3 * self.speed;
    drone_sound();
    self.think = drone2_fly;
    self.nextthink = time + 0.1;
};

// drone2_start
// function begins at statement 29682, parm_start=20500
// OP_GT	35	619	20500
// OP_LOAD_F	28	209	20501
// OP_EQ_F	20501	619	20502
// OP_EQ_F	37	619	20503
// OP_OR	20502	20503	20504
// OP_AND	20500	20504	20505
// OP_IFNOT	20505	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	509	0	0
// OP_RETURN	0	0	0
// OP_NOT_F	35	0	20506
// OP_IFNOT	20506	3	0
// OP_ADD_F	40	677	20507
// OP_STORE_F	20507	40	0
// OP_ADDRESS	28	188	20508
// OP_STOREP_F	306	20508	0
// OP_ADDRESS	28	191	20509
// OP_STOREP_V	582	20509	0
// OP_ADDRESS	28	207	20512
// OP_LOAD_F	28	207	20513
// OP_BITOR	20513	273	20514
// OP_STOREP_F	20514	20512	0
// OP_LOAD_S	28	221	20515
// OP_IFNOT	20515	22	0
// OP_ADDRESS	28	219	20516
// OP_ADDRESS	28	467	20517
// OP_STORE_V	30	4	0
// OP_STORE_V	222	7	0
// OP_LOAD_S	28	221	20518
// OP_STORE_V	20518	10	0
// OP_CALL3	512	0	0
// OP_STOREP_ENT	1	20517	0
// OP_STOREP_ENT	1	20516	0
// OP_LOAD_ENT	28	467	20519
// OP_NOT_ENT	20519	0	20520
// OP_IFNOT	20520	10	0
// OP_STORE_V	15338	4	0
// OP_CALL1	519	0	0
// OP_LOAD_V	28	130	20521
// OP_STORE_V	20521	4	0
// OP_CALL1	521	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	519	0	0
// OP_STORE_V	2073	4	0
// OP_CALL1	519	0	0
// OP_ADDRESS	28	173	20524
// OP_STOREP_FNC	20137	20524	0
// OP_ADDRESS	28	175	20525
// OP_LOAD_F	28	175	20526
// OP_CALL0	501	0	0
// OP_MUL_F	1	972	20527
// OP_ADD_F	20526	20527	20528
// OP_STOREP_F	20528	20525	0
// OP_DONE	0	0	0
void () drone2_start = 
{
    
    if((deathmatch > 0) && ((self.team == 0) || (teamplay == 0)))
    {
        remove(self);
        return;
    }
    
    
    if(!deathmatch)
    {
        total_monsters = total_monsters + 1;
    }
    
    self.takedamage = DAMAGE_AIM;
    self.view_ofs = '0.000 0.000 1.000';
    self.flags = self.flags | FL_MONSTER;
    
    if(self.target)
    {
        self.goalentity = self.movetarget = find(world, targetname, self.target);
        
        if(!self.movetarget)
        {
            dprint("Monster can't find target at ");
            dprint(vtos(self.origin));
            dprint("\n");
        }
        
    }
    
    self.think = drone2_fly;
    self.nextthink = self.nextthink + (random() * 0.5);
};

// monster_drone2
// function begins at statement 29736, parm_start=20530
// OP_ADDRESS	28	129	20530
// OP_STOREP_F	294	20530	0
// OP_ADDRESS	28	128	20531
// OP_STOREP_F	284	20531	0
// OP_ADDRESS	28	404	20532
// OP_LOAD_F	28	232	20533
// OP_STOREP_F	20533	20532	0
// OP_LOAD_F	28	404	20534
// OP_EQ_F	20534	806	20535
// OP_IFNOT	20535	16	0
// OP_ADDRESS	28	234	20536
// OP_STOREP_S	8136	20536	0
// OP_ADDRESS	28	235	20537
// OP_STOREP_S	8139	20537	0
// OP_ADDRESS	28	210	20538
// OP_STOREP_F	1618	20538	0
// OP_ADDRESS	28	205	20539
// OP_STOREP_S	20540	20539	0
// OP_ADDRESS	28	408	20541
// OP_STOREP_FNC	20093	20541	0
// OP_ADDRESS	28	409	20542
// OP_STOREP_FNC	20116	20542	0
// OP_ADDRESS	28	179	20543
// OP_STOREP_F	1268	20543	0
// OP_GOTO	71	0	0
// OP_LOAD_F	28	404	20544
// OP_EQ_F	20544	788	20545
// OP_IFNOT	20545	16	0
// OP_ADDRESS	28	234	20546
// OP_STOREP_S	1802	20546	0
// OP_ADDRESS	28	235	20547
// OP_STOREP_S	1805	20547	0
// OP_ADDRESS	28	210	20548
// OP_STOREP_F	986	20548	0
// OP_ADDRESS	28	205	20549
// OP_STOREP_S	20550	20549	0
// OP_ADDRESS	28	408	20551
// OP_STOREP_FNC	20061	20551	0
// OP_ADDRESS	28	409	20552
// OP_STOREP_FNC	20116	20552	0
// OP_ADDRESS	28	179	20553
// OP_STOREP_F	1252	20553	0
// OP_GOTO	53	0	0
// OP_LOAD_F	28	404	20554
// OP_EQ_F	20554	808	20555
// OP_IFNOT	20555	16	0
// OP_ADDRESS	28	234	20556
// OP_STOREP_S	9059	20556	0
// OP_ADDRESS	28	235	20557
// OP_STOREP_S	9062	20557	0
// OP_ADDRESS	28	210	20558
// OP_STOREP_F	9086	20558	0
// OP_ADDRESS	28	205	20559
// OP_STOREP_S	20560	20559	0
// OP_ADDRESS	28	408	20561
// OP_STOREP_FNC	19953	20561	0
// OP_ADDRESS	28	409	20562
// OP_STOREP_FNC	19926	20562	0
// OP_ADDRESS	28	179	20563
// OP_STOREP_F	1228	20563	0
// OP_GOTO	35	0	0
// OP_LOAD_F	28	404	20564
// OP_EQ_F	20564	813	20565
// OP_IFNOT	20565	16	0
// OP_ADDRESS	28	234	20566
// OP_STOREP_S	9600	20566	0
// OP_ADDRESS	28	235	20567
// OP_STOREP_S	9603	20567	0
// OP_ADDRESS	28	210	20568
// OP_STOREP_F	9970	20568	0
// OP_ADDRESS	28	205	20569
// OP_STOREP_S	20570	20569	0
// OP_ADDRESS	28	408	20571
// OP_STOREP_FNC	20116	20571	0
// OP_ADDRESS	28	409	20572
// OP_STOREP_FNC	19903	20572	0
// OP_ADDRESS	28	179	20573
// OP_STOREP_F	3011	20573	0
// OP_GOTO	17	0	0
// OP_ADDRESS	28	404	20574
// OP_STOREP_F	677	20574	0
// OP_ADDRESS	28	234	20575
// OP_STOREP_S	7668	20575	0
// OP_ADDRESS	28	235	20576
// OP_STOREP_S	7671	20576	0
// OP_ADDRESS	28	210	20577
// OP_STOREP_F	986	20577	0
// OP_ADDRESS	28	205	20578
// OP_STOREP_S	19895	20578	0
// OP_ADDRESS	28	408	20579
// OP_STOREP_FNC	20116	20579	0
// OP_ADDRESS	28	409	20580
// OP_STOREP_FNC	19903	20580	0
// OP_ADDRESS	28	179	20581
// OP_STOREP_F	2618	20581	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	234	20582
// OP_STORE_V	20582	7	0
// OP_CALL2	498	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3562	7	0
// OP_STORE_V	3565	10	0
// OP_CALL3	499	0	0
// OP_LOAD_F	28	177	20583
// OP_NOT_F	20583	0	20584
// OP_IFNOT	20584	4	0
// OP_ADDRESS	28	177	20585
// OP_LOAD_F	28	210	20586
// OP_STOREP_F	20586	20585	0
// OP_CALL0	1068	0	0
// OP_ADDRESS	28	171	20587
// OP_STOREP_FNC	19656	20587	0
// OP_ADDRESS	28	411	20588
// OP_STOREP_FNC	19696	20588	0
// OP_ADDRESS	28	405	20589
// OP_STOREP_FNC	20137	20589	0
// OP_ADDRESS	28	406	20590
// OP_STOREP_FNC	20137	20590	0
// OP_ADDRESS	28	407	20591
// OP_STOREP_FNC	20137	20591	0
// OP_ADDRESS	28	173	20592
// OP_STOREP_FNC	20499	20592	0
// OP_ADDRESS	28	175	20593
// OP_ADD_F	31	655	20594
// OP_CALL0	501	0	0
// OP_MUL_F	1	655	20595
// OP_ADD_F	20594	20595	20596
// OP_STOREP_F	20596	20593	0
// OP_DONE	0	0	0
void () monster_drone2 = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_FLY;
    self.style = self.sounds;
    if(self.style == 2)
    {
        self.noise1 = "progs/plane2.mdl";
        self.noise2 = "progs/plane2b.mdl";
        self.max_health = 250;
        self.netname = "Fighter Bomber";
        self.th_missile = drone_maver;
        self.th_melee = drone_sider;
        self.weapon = 90;
    }
    else
    {
        if(self.style == 3)
        {
            self.noise1 = "progs/plane3.mdl";
            self.noise2 = "progs/plane3b.mdl";
            self.max_health = 200;
            self.netname = "Stealth Fighter";
            self.th_missile = drone_pave;
            self.th_melee = drone_sider;
            self.weapon = 80;
        }
        else
        {
            if(self.style == 4)
            {
                self.noise1 = "progs/plane4.mdl";
                self.noise2 = "progs/plane4b.mdl";
                self.max_health = 350;
                self.netname = "A-10";
                self.th_missile = drone_bombs;
                self.th_melee = drone_cannon;
                self.weapon = 70;
            }
            else
            {
                if(self.style == 5)
                {
                    self.noise1 = "progs/plane5.mdl";
                    self.noise2 = "progs/plane5b.mdl";
                    self.max_health = 170;
                    self.netname = "X-29";
                    self.th_missile = drone_sider;
                    self.th_melee = drone_auto;
                    self.weapon = 110;
                }
                else
                {
                    self.style = 1;
                    self.noise1 = "progs/plane1.mdl";
                    self.noise2 = "progs/plane1b.mdl";
                    self.max_health = 200;
                    self.netname = "Dogfighter";
                    self.th_missile = drone_sider;
                    self.th_melee = drone_auto;
                    self.weapon = 100;
                }
                
            }
            
        }
        
    }
    
    setmodel(self, self.noise1);
    setsize(self, '-16.000 -16.000 -16.000', '16.000 16.000 16.000');
    
    if(!self.health)
    {
        self.health = self.max_health;
    }
    
    setup_teament();
    self.touch = T_DroneTouch;
    self.th_die = drone_die;
    self.th_stand = drone2_fly;
    self.th_walk = drone2_fly;
    self.th_run = drone2_fly;
    self.think = drone2_start;
    self.nextthink = (time + 0.1) + (random() * 0.1);
};

