float SPAWN_CRUCIFIED = 1.000;
.float inpain;
void () zombie_die;
// zombie_stand1
// function begins at statement 16732, parm_start=10166
// OP_STATE	650	10166	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand1 = [0.000, zombie_stand2]
{
    ai_stand();
};

// zombie_stand2
// function begins at statement 16735, parm_start=10167
// OP_STATE	708	10167	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand2 = [1.000, zombie_stand3]
{
    ai_stand();
};

// zombie_stand3
// function begins at statement 16738, parm_start=10168
// OP_STATE	929	10168	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand3 = [2.000, zombie_stand4]
{
    ai_stand();
};

// zombie_stand4
// function begins at statement 16741, parm_start=10169
// OP_STATE	819	10169	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand4 = [3.000, zombie_stand5]
{
    ai_stand();
};

// zombie_stand5
// function begins at statement 16744, parm_start=10170
// OP_STATE	1835	10170	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand5 = [4.000, zombie_stand6]
{
    ai_stand();
};

// zombie_stand6
// function begins at statement 16747, parm_start=10171
// OP_STATE	1660	10171	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand6 = [5.000, zombie_stand7]
{
    ai_stand();
};

// zombie_stand7
// function begins at statement 16750, parm_start=10172
// OP_STATE	2107	10172	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand7 = [6.000, zombie_stand8]
{
    ai_stand();
};

// zombie_stand8
// function begins at statement 16753, parm_start=10173
// OP_STATE	2307	10173	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand8 = [7.000, zombie_stand9]
{
    ai_stand();
};

// zombie_stand9
// function begins at statement 16756, parm_start=10174
// OP_STATE	1502	10174	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand9 = [8.000, zombie_stand10]
{
    ai_stand();
};

// zombie_stand10
// function begins at statement 16759, parm_start=10175
// OP_STATE	3556	10175	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand10 = [9.000, zombie_stand11]
{
    ai_stand();
};

// zombie_stand11
// function begins at statement 16762, parm_start=10176
// OP_STATE	1931	10176	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand11 = [10.000, zombie_stand12]
{
    ai_stand();
};

// zombie_stand12
// function begins at statement 16765, parm_start=10177
// OP_STATE	3931	10177	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand12 = [11.000, zombie_stand13]
{
    ai_stand();
};

// zombie_stand13
// function begins at statement 16768, parm_start=10178
// OP_STATE	2532	10178	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand13 = [12.000, zombie_stand14]
{
    ai_stand();
};

// zombie_stand14
// function begins at statement 16771, parm_start=10179
// OP_STATE	8427	10179	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand14 = [13.000, zombie_stand15]
{
    ai_stand();
};

// zombie_stand15
// function begins at statement 16774, parm_start=10180
// OP_STATE	3153	10165	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () zombie_stand15 = [14.000, zombie_stand1]
{
    ai_stand();
};

// zombie_cruc1
// function begins at statement 16777, parm_start=10181
// OP_STATE	10181	10182	0
// OP_CALL0	453	0	0
// OP_LT	1	686	10183
// OP_IFNOT	10183	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10184	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	329	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_cruc1 = [192.000, zombie_cruc2]
{
    
    if(random() < 0.100)
    {
        sound(self, CHAN_VOICE, "zombie/idle_w2.wav", 1.000, ATTN_STATIC);
    }
    
};

// zombie_cruc2
// function begins at statement 16788, parm_start=10185
// OP_STATE	10185	10186	0
// OP_ADDRESS	28	150	10187
// OP_ADD_F	31	686	10188
// OP_CALL0	453	0	0
// OP_MUL_F	1	686	10189
// OP_ADD_F	10188	10189	10190
// OP_STOREP_F	10190	10187	0
// OP_DONE	0	0	0
void () zombie_cruc2 = [193.000, zombie_cruc3]
{
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

// zombie_cruc3
// function begins at statement 16796, parm_start=10191
// OP_STATE	10191	10192	0
// OP_ADDRESS	28	150	10193
// OP_ADD_F	31	686	10194
// OP_CALL0	453	0	0
// OP_MUL_F	1	686	10195
// OP_ADD_F	10194	10195	10196
// OP_STOREP_F	10196	10193	0
// OP_DONE	0	0	0
void () zombie_cruc3 = [194.000, zombie_cruc4]
{
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

// zombie_cruc4
// function begins at statement 16804, parm_start=10197
// OP_STATE	10197	10198	0
// OP_ADDRESS	28	150	10199
// OP_ADD_F	31	686	10200
// OP_CALL0	453	0	0
// OP_MUL_F	1	686	10201
// OP_ADD_F	10200	10201	10202
// OP_STOREP_F	10202	10199	0
// OP_DONE	0	0	0
void () zombie_cruc4 = [195.000, zombie_cruc5]
{
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

// zombie_cruc5
// function begins at statement 16812, parm_start=10203
// OP_STATE	10203	10204	0
// OP_ADDRESS	28	150	10205
// OP_ADD_F	31	686	10206
// OP_CALL0	453	0	0
// OP_MUL_F	1	686	10207
// OP_ADD_F	10206	10207	10208
// OP_STOREP_F	10208	10205	0
// OP_DONE	0	0	0
void () zombie_cruc5 = [196.000, zombie_cruc6]
{
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

// zombie_cruc6
// function begins at statement 16820, parm_start=10209
// OP_STATE	10209	10180	0
// OP_ADDRESS	28	150	10210
// OP_ADD_F	31	686	10211
// OP_CALL0	453	0	0
// OP_MUL_F	1	686	10212
// OP_ADD_F	10211	10212	10213
// OP_STOREP_F	10213	10210	0
// OP_DONE	0	0	0
void () zombie_cruc6 = [197.000, zombie_cruc1]
{
    self.nextthink = (time + 0.100) + (random() * 0.100);
};

// zombie_walk1
// function begins at statement 16828, parm_start=10215
// OP_STATE	2157	10215	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk1 = [15.000, zombie_walk2]
{
    ai_walk(0.000);
};

// zombie_walk2
// function begins at statement 16832, parm_start=10216
// OP_STATE	3273	10216	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk2 = [16.000, zombie_walk3]
{
    ai_walk(2.000);
};

// zombie_walk3
// function begins at statement 16836, parm_start=10217
// OP_STATE	5588	10217	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk3 = [17.000, zombie_walk4]
{
    ai_walk(3.000);
};

// zombie_walk4
// function begins at statement 16840, parm_start=10218
// OP_STATE	3576	10218	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk4 = [18.000, zombie_walk5]
{
    ai_walk(2.000);
};

// zombie_walk5
// function begins at statement 16844, parm_start=10219
// OP_STATE	8435	10219	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk5 = [19.000, zombie_walk6]
{
    ai_walk(1.000);
};

// zombie_walk6
// function begins at statement 16848, parm_start=10220
// OP_STATE	1017	10220	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk6 = [20.000, zombie_walk7]
{
    ai_walk(0.000);
};

// zombie_walk7
// function begins at statement 16852, parm_start=10221
// OP_STATE	8438	10221	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk7 = [21.000, zombie_walk8]
{
    ai_walk(0.000);
};

// zombie_walk8
// function begins at statement 16856, parm_start=10222
// OP_STATE	8440	10222	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk8 = [22.000, zombie_walk9]
{
    ai_walk(0.000);
};

// zombie_walk9
// function begins at statement 16860, parm_start=10223
// OP_STATE	8442	10223	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk9 = [23.000, zombie_walk10]
{
    ai_walk(0.000);
};

// zombie_walk10
// function begins at statement 16864, parm_start=10224
// OP_STATE	4969	10224	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk10 = [24.000, zombie_walk11]
{
    ai_walk(0.000);
};

// zombie_walk11
// function begins at statement 16868, parm_start=10225
// OP_STATE	2171	10225	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk11 = [25.000, zombie_walk12]
{
    ai_walk(2.000);
};

// zombie_walk12
// function begins at statement 16872, parm_start=10226
// OP_STATE	8446	10226	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk12 = [26.000, zombie_walk13]
{
    ai_walk(2.000);
};

// zombie_walk13
// function begins at statement 16876, parm_start=10227
// OP_STATE	8448	10227	0
// OP_STORE_V	708	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk13 = [27.000, zombie_walk14]
{
    ai_walk(1.000);
};

// zombie_walk14
// function begins at statement 16880, parm_start=10228
// OP_STATE	8450	10228	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk14 = [28.000, zombie_walk15]
{
    ai_walk(0.000);
};

// zombie_walk15
// function begins at statement 16884, parm_start=10229
// OP_STATE	5829	10229	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk15 = [29.000, zombie_walk16]
{
    ai_walk(0.000);
};

// zombie_walk16
// function begins at statement 16888, parm_start=10230
// OP_STATE	1004	10230	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk16 = [30.000, zombie_walk17]
{
    ai_walk(0.000);
};

// zombie_walk17
// function begins at statement 16892, parm_start=10231
// OP_STATE	3950	10231	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk17 = [31.000, zombie_walk18]
{
    ai_walk(0.000);
};

// zombie_walk18
// function begins at statement 16896, parm_start=10232
// OP_STATE	959	10232	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () zombie_walk18 = [32.000, zombie_walk19]
{
    ai_walk(0.000);
};

// zombie_walk19
// function begins at statement 16900, parm_start=10233
// OP_STATE	5835	10214	0
// OP_STORE_V	650	4	0
// OP_CALL1	1442	0	0
// OP_CALL0	453	0	0
// OP_LT	1	922	10233
// OP_IFNOT	10233	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1348	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_walk19 = [33.000, zombie_walk1]
{
    ai_walk(0.000);
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "zombie/z_idle.wav", 1.000, ATTN_IDLE);
    }
    
};

// zombie_run1
// function begins at statement 16913, parm_start=10235
// OP_STATE	5837	10235	0
// OP_STORE_V	708	4	0
// OP_CALL1	1617	0	0
// OP_ADDRESS	28	10163	10236
// OP_STOREP_F	650	10236	0
// OP_DONE	0	0	0
void () zombie_run1 = [34.000, zombie_run2]
{
    ai_run(1.000);
    self.inpain = 0.000;
};

// zombie_run2
// function begins at statement 16919, parm_start=10237
// OP_STATE	3325	10237	0
// OP_STORE_V	708	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run2 = [35.000, zombie_run3]
{
    ai_run(1.000);
};

// zombie_run3
// function begins at statement 16923, parm_start=10238
// OP_STATE	5820	10238	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run3 = [36.000, zombie_run4]
{
    ai_run(0.000);
};

// zombie_run4
// function begins at statement 16927, parm_start=10239
// OP_STATE	5822	10239	0
// OP_STORE_V	708	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run4 = [37.000, zombie_run5]
{
    ai_run(1.000);
};

// zombie_run5
// function begins at statement 16931, parm_start=10240
// OP_STATE	5824	10240	0
// OP_STORE_V	929	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run5 = [38.000, zombie_run6]
{
    ai_run(2.000);
};

// zombie_run6
// function begins at statement 16935, parm_start=10241
// OP_STATE	5826	10241	0
// OP_STORE_V	819	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run6 = [39.000, zombie_run7]
{
    ai_run(3.000);
};

// zombie_run7
// function begins at statement 16939, parm_start=10242
// OP_STATE	2007	10242	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run7 = [40.000, zombie_run8]
{
    ai_run(4.000);
};

// zombie_run8
// function begins at statement 16943, parm_start=10243
// OP_STATE	6160	10243	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run8 = [41.000, zombie_run9]
{
    ai_run(4.000);
};

// zombie_run9
// function begins at statement 16947, parm_start=10244
// OP_STATE	6162	10244	0
// OP_STORE_V	929	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run9 = [42.000, zombie_run10]
{
    ai_run(2.000);
};

// zombie_run10
// function begins at statement 16951, parm_start=10245
// OP_STATE	6164	10245	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run10 = [43.000, zombie_run11]
{
    ai_run(0.000);
};

// zombie_run11
// function begins at statement 16955, parm_start=10246
// OP_STATE	6166	10246	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run11 = [44.000, zombie_run12]
{
    ai_run(0.000);
};

// zombie_run12
// function begins at statement 16959, parm_start=10247
// OP_STATE	1572	10247	0
// OP_STORE_V	650	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run12 = [45.000, zombie_run13]
{
    ai_run(0.000);
};

// zombie_run13
// function begins at statement 16963, parm_start=10248
// OP_STATE	6169	10248	0
// OP_STORE_V	929	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run13 = [46.000, zombie_run14]
{
    ai_run(2.000);
};

// zombie_run14
// function begins at statement 16967, parm_start=10249
// OP_STATE	6171	10249	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run14 = [47.000, zombie_run15]
{
    ai_run(4.000);
};

// zombie_run15
// function begins at statement 16971, parm_start=10250
// OP_STATE	6173	10250	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run15 = [48.000, zombie_run16]
{
    ai_run(6.000);
};

// zombie_run16
// function begins at statement 16975, parm_start=10251
// OP_STATE	6175	10251	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run16 = [49.000, zombie_run17]
{
    ai_run(7.000);
};

// zombie_run17
// function begins at statement 16979, parm_start=10252
// OP_STATE	2509	10252	0
// OP_STORE_V	819	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () zombie_run17 = [50.000, zombie_run18]
{
    ai_run(3.000);
};

// zombie_run18
// function begins at statement 16983, parm_start=10253
// OP_STATE	6068	10234	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1617	0	0
// OP_CALL0	453	0	0
// OP_LT	1	922	10253
// OP_IFNOT	10253	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1348	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_GT	1	2245	10254
// OP_IFNOT	10254	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10255	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_run18 = [51.000, zombie_run1]
{
    ai_run(8.000);
    
    if(random() < 0.200)
    {
        sound(self, CHAN_VOICE, "zombie/z_idle.wav", 1.000, ATTN_IDLE);
    }
    
    
    if(random() > 0.800)
    {
        sound(self, CHAN_VOICE, "zombie/z_idle1.wav", 1.000, ATTN_IDLE);
    }
    
};

// ZombieGrenadeTouch
// function begins at statement 17005, parm_start=10257
// OP_LOAD_ENT	28	201	10257
// OP_EQ_E	29	10257	10258
// OP_IFNOT	10258	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	163	10259
// OP_IFNOT	10259	16	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_LOAD_ENT	28	201	10260
// OP_STORE_V	10260	10	0
// OP_STORE_V	2246	13	0
// OP_CALL4	521	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10261	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10262	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	113	10263
// OP_STOREP_V	638	10263	0
// OP_ADDRESS	28	121	10266
// OP_STOREP_V	638	10266	0
// OP_ADDRESS	28	146	10269
// OP_STOREP_FNC	520	10269	0
// OP_DONE	0	0	0
void () ZombieGrenadeTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.takedamage)
    {
        T_Damage(other, self, self.owner, 200.000);
        sound(self, CHAN_WEAPON, "zombie/z_hit.wav", 1.000, ATTN_NORM);
        remove(self);
        return;
    }
    
    sound(self, CHAN_WEAPON, "zombie/z_miss.wav", 1.000, ATTN_NORM);
    self.velocity = '0.000 0.000 0.000';
    self.avelocity = '0.000 0.000 0.000';
    self.touch = SUB_Remove;
};

// ZombieFireGrenade
// function begins at statement 17039, parm_start=10271
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10279	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	10274	0
// OP_ADDRESS	10274	201	10280
// OP_STOREP_ENT	28	10280	0
// OP_ADDRESS	10274	103	10281
// OP_STOREP_F	236	10281	0
// OP_ADDRESS	10274	104	10282
// OP_STOREP_F	240	10282	0
// OP_LOAD_V	28	105	10283
// OP_MUL_FV	10271	59	10286
// OP_ADD_V	10283	10286	10289
// OP_MUL_FV	10272	65	10292
// OP_ADD_V	10289	10292	10295
// OP_SUB_F	10273	4969	10298
// OP_MUL_FV	10298	62	10299
// OP_ADD_V	10295	10299	10302
// OP_STORE_V	10302	10276	0
// OP_LOAD_V	28	117	10305
// OP_STORE_V	10305	4	0
// OP_CALL1	448	0	0
// OP_ADDRESS	10274	113	10308
// OP_LOAD_ENT	28	181	10311
// OP_LOAD_V	10311	105	10312
// OP_SUB_V	10312	10276	10315
// OP_STORE_V	10315	4	0
// OP_CALL1	455	0	0
// OP_STOREP_V	1	10308	0
// OP_ADDRESS	10274	113	10318
// OP_LOAD_V	10274	113	10321
// OP_MUL_VF	10321	3343	10324
// OP_STOREP_V	10324	10318	0
// OP_ADDRESS	10274	116	10327
// OP_STOREP_F	2246	10327	0
// OP_ADDRESS	10274	121	10328
// OP_STOREP_V	2971	10328	0
// OP_ADDRESS	10274	146	10331
// OP_STOREP_FNC	10256	10331	0
// OP_ADDRESS	10274	150	10332
// OP_ADD_F	31	3451	10333
// OP_STOREP_F	10333	10332	0
// OP_ADDRESS	10274	148	10334
// OP_STOREP_FNC	520	10334	0
// OP_STORE_V	10274	4	0
// OP_STORE_V	2977	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	10274	4	0
// OP_STORE_V	638	7	0
// OP_STORE_V	638	10	0
// OP_CALL3	451	0	0
// OP_STORE_V	10274	4	0
// OP_STORE_V	10276	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void (vector st) ZombieFireGrenade = 
{
    local entity missile;
    local entity mpuff;
    local vector org;
    sound(self, CHAN_WEAPON, "zombie/z_shot1.wav", 1.000, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.movetype = MOVETYPE_BOUNCE;
    missile.solid = SOLID_BBOX;
    org = ((self.origin + (st_x * v_forward)) + (st_y * v_right)) + ((st_z - 24.000) * v_up);
    makevectors(self.angles);
    missile.velocity = normalize(self.enemy.origin - org);
    missile.velocity = missile.velocity * 600.000;
    missile.velocity_z = 200.000;
    missile.avelocity = '3000.000 1000.000 2000.000';
    missile.touch = ZombieGrenadeTouch;
    missile.nextthink = time + 2.500;
    missile.think = SUB_Remove;
    setmodel(missile, "progs/zom_gib.mdl");
    setsize(missile, '0.000 0.000 0.000', '0.000 0.000 0.000');
    setorigin(missile, org);
};

// zombie_atta1
// function begins at statement 17098, parm_start=10336
// OP_STATE	6070	10336	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta1 = [52.000, zombie_atta2]
{
    ai_face();
};

// zombie_atta2
// function begins at statement 17101, parm_start=10337
// OP_STATE	6072	10337	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta2 = [53.000, zombie_atta3]
{
    ai_face();
};

// zombie_atta3
// function begins at statement 17104, parm_start=10338
// OP_STATE	6074	10338	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta3 = [54.000, zombie_atta4]
{
    ai_face();
};

// zombie_atta4
// function begins at statement 17107, parm_start=10339
// OP_STATE	6076	10339	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta4 = [55.000, zombie_atta5]
{
    ai_face();
};

// zombie_atta5
// function begins at statement 17110, parm_start=10340
// OP_STATE	6078	10340	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta5 = [56.000, zombie_atta6]
{
    ai_face();
};

// zombie_atta6
// function begins at statement 17113, parm_start=10341
// OP_STATE	6080	10341	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta6 = [57.000, zombie_atta7]
{
    ai_face();
};

// zombie_atta7
// function begins at statement 17116, parm_start=10342
// OP_STATE	6082	10342	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta7 = [58.000, zombie_atta8]
{
    ai_face();
};

// zombie_atta8
// function begins at statement 17119, parm_start=10343
// OP_STATE	6084	10343	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta8 = [59.000, zombie_atta9]
{
    ai_face();
};

// zombie_atta9
// function begins at statement 17122, parm_start=10344
// OP_STATE	1035	10344	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta9 = [60.000, zombie_atta10]
{
    ai_face();
};

// zombie_atta10
// function begins at statement 17125, parm_start=10345
// OP_STATE	6086	10345	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta10 = [61.000, zombie_atta11]
{
    ai_face();
};

// zombie_atta11
// function begins at statement 17128, parm_start=10346
// OP_STATE	6088	10346	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta11 = [62.000, zombie_atta12]
{
    ai_face();
};

// zombie_atta12
// function begins at statement 17131, parm_start=10347
// OP_STATE	4345	10347	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_atta12 = [63.000, zombie_atta13]
{
    ai_face();
};

// zombie_atta13
// function begins at statement 17134, parm_start=10348
// OP_STATE	1684	10234	0
// OP_CALL0	844	0	0
// OP_STORE_V	10348	4	0
// OP_CALL1	10270	0	0
// OP_DONE	0	0	0
void () zombie_atta13 = [64.000, zombie_run1]
{
    ai_face();
    ZombieFireGrenade('-10.000 -22.000 30.000');
};

// zombie_attb1
// function begins at statement 17139, parm_start=10352
// OP_STATE	6092	10352	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb1 = [65.000, zombie_attb2]
{
    ai_face();
};

// zombie_attb2
// function begins at statement 17142, parm_start=10353
// OP_STATE	6094	10353	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb2 = [66.000, zombie_attb3]
{
    ai_face();
};

// zombie_attb3
// function begins at statement 17145, parm_start=10354
// OP_STATE	6096	10354	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb3 = [67.000, zombie_attb4]
{
    ai_face();
};

// zombie_attb4
// function begins at statement 17148, parm_start=10355
// OP_STATE	6098	10355	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb4 = [68.000, zombie_attb5]
{
    ai_face();
};

// zombie_attb5
// function begins at statement 17151, parm_start=10356
// OP_STATE	6100	10356	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb5 = [69.000, zombie_attb6]
{
    ai_face();
};

// zombie_attb6
// function begins at statement 17154, parm_start=10357
// OP_STATE	6101	10357	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb6 = [70.000, zombie_attb7]
{
    ai_face();
};

// zombie_attb7
// function begins at statement 17157, parm_start=10358
// OP_STATE	6103	10358	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb7 = [71.000, zombie_attb8]
{
    ai_face();
};

// zombie_attb8
// function begins at statement 17160, parm_start=10359
// OP_STATE	6105	10359	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb8 = [72.000, zombie_attb9]
{
    ai_face();
};

// zombie_attb9
// function begins at statement 17163, parm_start=10360
// OP_STATE	2988	10360	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb9 = [73.000, zombie_attb10]
{
    ai_face();
};

// zombie_attb10
// function begins at statement 17166, parm_start=10361
// OP_STATE	6108	10361	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb10 = [74.000, zombie_attb11]
{
    ai_face();
};

// zombie_attb11
// function begins at statement 17169, parm_start=10362
// OP_STATE	6110	10362	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb11 = [75.000, zombie_attb12]
{
    ai_face();
};

// zombie_attb12
// function begins at statement 17172, parm_start=10363
// OP_STATE	6112	10363	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb12 = [76.000, zombie_attb13]
{
    ai_face();
};

// zombie_attb13
// function begins at statement 17175, parm_start=10364
// OP_STATE	6114	10364	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attb13 = [77.000, zombie_attb14]
{
    ai_face();
};

// zombie_attb14
// function begins at statement 17178, parm_start=10365
// OP_STATE	6114	10234	0
// OP_CALL0	844	0	0
// OP_STORE_V	10365	4	0
// OP_CALL1	10270	0	0
// OP_DONE	0	0	0
void () zombie_attb14 = [77.000, zombie_run1]
{
    ai_face();
    ZombieFireGrenade('-10.000 -24.000 29.000');
};

// zombie_attc1
// function begins at statement 17183, parm_start=10369
// OP_STATE	6118	10369	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc1 = [79.000, zombie_attc2]
{
    ai_face();
};

// zombie_attc2
// function begins at statement 17186, parm_start=10370
// OP_STATE	874	10370	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc2 = [80.000, zombie_attc3]
{
    ai_face();
};

// zombie_attc3
// function begins at statement 17189, parm_start=10371
// OP_STATE	6121	10371	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc3 = [81.000, zombie_attc4]
{
    ai_face();
};

// zombie_attc4
// function begins at statement 17192, parm_start=10372
// OP_STATE	6123	10372	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc4 = [82.000, zombie_attc5]
{
    ai_face();
};

// zombie_attc5
// function begins at statement 17195, parm_start=10373
// OP_STATE	6125	10373	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc5 = [83.000, zombie_attc6]
{
    ai_face();
};

// zombie_attc6
// function begins at statement 17198, parm_start=10374
// OP_STATE	6127	10374	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc6 = [84.000, zombie_attc7]
{
    ai_face();
};

// zombie_attc7
// function begins at statement 17201, parm_start=10375
// OP_STATE	6128	10375	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc7 = [85.000, zombie_attc8]
{
    ai_face();
};

// zombie_attc8
// function begins at statement 17204, parm_start=10376
// OP_STATE	6130	10376	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc8 = [86.000, zombie_attc9]
{
    ai_face();
};

// zombie_attc9
// function begins at statement 17207, parm_start=10377
// OP_STATE	6132	10377	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc9 = [87.000, zombie_attc10]
{
    ai_face();
};

// zombie_attc10
// function begins at statement 17210, parm_start=10378
// OP_STATE	6134	10378	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc10 = [88.000, zombie_attc11]
{
    ai_face();
};

// zombie_attc11
// function begins at statement 17213, parm_start=10379
// OP_STATE	6136	10379	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () zombie_attc11 = [89.000, zombie_attc12]
{
    ai_face();
};

// zombie_attc12
// function begins at statement 17216, parm_start=10380
// OP_STATE	1608	10234	0
// OP_CALL0	844	0	0
// OP_STORE_V	10380	4	0
// OP_CALL1	10270	0	0
// OP_DONE	0	0	0
void () zombie_attc12 = [90.000, zombie_run1]
{
    ai_face();
    ZombieFireGrenade('-12.000 -19.000 29.000');
};

// zombie_missile
// function begins at statement 17221, parm_start=10384
// OP_CALL0	453	0	0
// OP_STORE_F	1	10384	0
// OP_LT	10384	1104	10385
// OP_IFNOT	10385	3	0
// OP_CALL0	10335	0	0
// OP_GOTO	6	0	0
// OP_LT	10384	2240	10386
// OP_IFNOT	10386	3	0
// OP_CALL0	10351	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10368	0	0
// OP_DONE	0	0	0
void () zombie_missile = 
{
    local float r;
    r = random();
    if(r < 0.300)
    {
        zombie_atta1();
    }
    else
    {
        if(r < 0.600)
        {
            zombie_attb1();
        }
        else
        {
            zombie_attc1();
        }
        
    }
    
};

// zombie_paina1
// function begins at statement 17233, parm_start=10388
// OP_STATE	6139	10388	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10389	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_paina1 = [91.000, zombie_paina2]
{
    sound(self, CHAN_VOICE, "zombie/z_pain.wav", 1.000, ATTN_NORM);
};

// zombie_paina2
// function begins at statement 17241, parm_start=10390
// OP_STATE	6141	10390	0
// OP_STORE_V	819	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_paina2 = [92.000, zombie_paina3]
{
    ai_painforward(3.000);
};

// zombie_paina3
// function begins at statement 17245, parm_start=10391
// OP_STATE	6143	10391	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_paina3 = [93.000, zombie_paina4]
{
    ai_painforward(1.000);
};

// zombie_paina4
// function begins at statement 17249, parm_start=10392
// OP_STATE	6144	10392	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paina4 = [94.000, zombie_paina5]
{
    ai_pain(1.000);
};

// zombie_paina5
// function begins at statement 17253, parm_start=10393
// OP_STATE	6146	10393	0
// OP_STORE_V	819	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paina5 = [95.000, zombie_paina6]
{
    ai_pain(3.000);
};

// zombie_paina6
// function begins at statement 17257, parm_start=10394
// OP_STATE	6148	10394	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paina6 = [96.000, zombie_paina7]
{
    ai_pain(1.000);
};

// zombie_paina7
// function begins at statement 17261, parm_start=10395
// OP_STATE	6150	10395	0
// OP_DONE	0	0	0
void () zombie_paina7 = [97.000, zombie_paina8]
{
};

// zombie_paina8
// function begins at statement 17263, parm_start=10396
// OP_STATE	6152	10396	0
// OP_DONE	0	0	0
void () zombie_paina8 = [98.000, zombie_paina9]
{
};

// zombie_paina9
// function begins at statement 17265, parm_start=10397
// OP_STATE	6154	10397	0
// OP_DONE	0	0	0
void () zombie_paina9 = [99.000, zombie_paina10]
{
};

// zombie_paina10
// function begins at statement 17267, parm_start=10398
// OP_STATE	2165	10398	0
// OP_DONE	0	0	0
void () zombie_paina10 = [100.000, zombie_paina11]
{
};

// zombie_paina11
// function begins at statement 17269, parm_start=10399
// OP_STATE	6157	10399	0
// OP_DONE	0	0	0
void () zombie_paina11 = [101.000, zombie_paina12]
{
};

// zombie_paina12
// function begins at statement 17271, parm_start=10400
// OP_STATE	6159	10234	0
// OP_DONE	0	0	0
void () zombie_paina12 = [102.000, zombie_run1]
{
};

// zombie_painb1
// function begins at statement 17273, parm_start=10401
// OP_STATE	5699	10401	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10402	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_painb1 = [103.000, zombie_painb2]
{
    sound(self, CHAN_VOICE, "zombie/z_pain1.wav", 1.000, ATTN_NORM);
};

// zombie_painb2
// function begins at statement 17281, parm_start=10403
// OP_STATE	5714	10403	0
// OP_STORE_V	929	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_painb2 = [104.000, zombie_painb3]
{
    ai_pain(2.000);
};

// zombie_painb3
// function begins at statement 17285, parm_start=10404
// OP_STATE	5728	10404	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_painb3 = [105.000, zombie_painb4]
{
    ai_pain(8.000);
};

// zombie_painb4
// function begins at statement 17289, parm_start=10405
// OP_STATE	5741	10405	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_painb4 = [106.000, zombie_painb5]
{
    ai_pain(6.000);
};

// zombie_painb5
// function begins at statement 17293, parm_start=10406
// OP_STATE	5755	10406	0
// OP_STORE_V	929	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_painb5 = [107.000, zombie_painb6]
{
    ai_pain(2.000);
};

// zombie_painb6
// function begins at statement 17297, parm_start=10407
// OP_STATE	5761	10407	0
// OP_DONE	0	0	0
void () zombie_painb6 = [108.000, zombie_painb7]
{
};

// zombie_painb7
// function begins at statement 17299, parm_start=10408
// OP_STATE	5764	10408	0
// OP_DONE	0	0	0
void () zombie_painb7 = [109.000, zombie_painb8]
{
};

// zombie_painb8
// function begins at statement 17301, parm_start=10409
// OP_STATE	5767	10409	0
// OP_DONE	0	0	0
void () zombie_painb8 = [110.000, zombie_painb9]
{
};

// zombie_painb9
// function begins at statement 17303, parm_start=10410
// OP_STATE	5770	10410	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	10411	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_painb9 = [111.000, zombie_painb10]
{
    sound(self, CHAN_BODY, "zombie/z_fall.wav", 1.000, ATTN_NORM);
};

// zombie_painb10
// function begins at statement 17311, parm_start=10412
// OP_STATE	5773	10412	0
// OP_DONE	0	0	0
void () zombie_painb10 = [112.000, zombie_painb11]
{
};

// zombie_painb11
// function begins at statement 17313, parm_start=10413
// OP_STATE	5636	10413	0
// OP_DONE	0	0	0
void () zombie_painb11 = [113.000, zombie_painb12]
{
};

// zombie_painb12
// function begins at statement 17315, parm_start=10414
// OP_STATE	5642	10414	0
// OP_DONE	0	0	0
void () zombie_painb12 = [114.000, zombie_painb13]
{
};

// zombie_painb13
// function begins at statement 17317, parm_start=10415
// OP_STATE	5645	10415	0
// OP_DONE	0	0	0
void () zombie_painb13 = [115.000, zombie_painb14]
{
};

// zombie_painb14
// function begins at statement 17319, parm_start=10416
// OP_STATE	5648	10416	0
// OP_DONE	0	0	0
void () zombie_painb14 = [116.000, zombie_painb15]
{
};

// zombie_painb15
// function begins at statement 17321, parm_start=10417
// OP_STATE	5651	10417	0
// OP_DONE	0	0	0
void () zombie_painb15 = [117.000, zombie_painb16]
{
};

// zombie_painb16
// function begins at statement 17323, parm_start=10418
// OP_STATE	5654	10418	0
// OP_DONE	0	0	0
void () zombie_painb16 = [118.000, zombie_painb17]
{
};

// zombie_painb17
// function begins at statement 17325, parm_start=10419
// OP_STATE	5656	10419	0
// OP_DONE	0	0	0
void () zombie_painb17 = [119.000, zombie_painb18]
{
};

// zombie_painb18
// function begins at statement 17327, parm_start=10420
// OP_STATE	1255	10420	0
// OP_DONE	0	0	0
void () zombie_painb18 = [120.000, zombie_painb19]
{
};

// zombie_painb19
// function begins at statement 17329, parm_start=10421
// OP_STATE	5661	10421	0
// OP_DONE	0	0	0
void () zombie_painb19 = [121.000, zombie_painb20]
{
};

// zombie_painb20
// function begins at statement 17331, parm_start=10422
// OP_STATE	5664	10422	0
// OP_DONE	0	0	0
void () zombie_painb20 = [122.000, zombie_painb21]
{
};

// zombie_painb21
// function begins at statement 17333, parm_start=10423
// OP_STATE	8602	10423	0
// OP_DONE	0	0	0
void () zombie_painb21 = [123.000, zombie_painb22]
{
};

// zombie_painb22
// function begins at statement 17335, parm_start=10424
// OP_STATE	8604	10424	0
// OP_DONE	0	0	0
void () zombie_painb22 = [124.000, zombie_painb23]
{
};

// zombie_painb23
// function begins at statement 17337, parm_start=10425
// OP_STATE	5666	10425	0
// OP_DONE	0	0	0
void () zombie_painb23 = [125.000, zombie_painb24]
{
};

// zombie_painb24
// function begins at statement 17339, parm_start=10426
// OP_STATE	5669	10426	0
// OP_DONE	0	0	0
void () zombie_painb24 = [126.000, zombie_painb25]
{
};

// zombie_painb25
// function begins at statement 17341, parm_start=10427
// OP_STATE	5672	10427	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_painb25 = [127.000, zombie_painb26]
{
    ai_painforward(1.000);
};

// zombie_painb26
// function begins at statement 17345, parm_start=10428
// OP_STATE	5675	10428	0
// OP_DONE	0	0	0
void () zombie_painb26 = [128.000, zombie_painb27]
{
};

// zombie_painb27
// function begins at statement 17347, parm_start=10429
// OP_STATE	8612	10429	0
// OP_DONE	0	0	0
void () zombie_painb27 = [129.000, zombie_painb28]
{
};

// zombie_painb28
// function begins at statement 17349, parm_start=10430
// OP_STATE	8614	10234	0
// OP_DONE	0	0	0
void () zombie_painb28 = [130.000, zombie_run1]
{
};

// zombie_painc1
// function begins at statement 17351, parm_start=10431
// OP_STATE	5677	10431	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10402	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_painc1 = [131.000, zombie_painc2]
{
    sound(self, CHAN_VOICE, "zombie/z_pain1.wav", 1.000, ATTN_NORM);
};

// zombie_painc2
// function begins at statement 17359, parm_start=10432
// OP_STATE	5680	10432	0
// OP_DONE	0	0	0
void () zombie_painc2 = [132.000, zombie_painc3]
{
};

// zombie_painc3
// function begins at statement 17361, parm_start=10433
// OP_STATE	5683	10433	0
// OP_STORE_V	819	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_painc3 = [133.000, zombie_painc4]
{
    ai_pain(3.000);
};

// zombie_painc4
// function begins at statement 17365, parm_start=10434
// OP_STATE	5686	10434	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_painc4 = [134.000, zombie_painc5]
{
    ai_pain(1.000);
};

// zombie_painc5
// function begins at statement 17369, parm_start=10435
// OP_STATE	8620	10435	0
// OP_DONE	0	0	0
void () zombie_painc5 = [135.000, zombie_painc6]
{
};

// zombie_painc6
// function begins at statement 17371, parm_start=10436
// OP_STATE	10436	10437	0
// OP_DONE	0	0	0
void () zombie_painc6 = [136.000, zombie_painc7]
{
};

// zombie_painc7
// function begins at statement 17373, parm_start=10438
// OP_STATE	5688	10438	0
// OP_DONE	0	0	0
void () zombie_painc7 = [137.000, zombie_painc8]
{
};

// zombie_painc8
// function begins at statement 17375, parm_start=10439
// OP_STATE	5691	10439	0
// OP_DONE	0	0	0
void () zombie_painc8 = [138.000, zombie_painc9]
{
};

// zombie_painc9
// function begins at statement 17377, parm_start=10440
// OP_STATE	5694	10440	0
// OP_DONE	0	0	0
void () zombie_painc9 = [139.000, zombie_painc10]
{
};

// zombie_painc10
// function begins at statement 17379, parm_start=10441
// OP_STATE	5697	10441	0
// OP_DONE	0	0	0
void () zombie_painc10 = [140.000, zombie_painc11]
{
};

// zombie_painc11
// function begins at statement 17381, parm_start=10442
// OP_STATE	10442	10443	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_painc11 = [141.000, zombie_painc12]
{
    ai_painforward(1.000);
};

// zombie_painc12
// function begins at statement 17385, parm_start=10444
// OP_STATE	10444	10445	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_painc12 = [142.000, zombie_painc13]
{
    ai_painforward(1.000);
};

// zombie_painc13
// function begins at statement 17389, parm_start=10446
// OP_STATE	10446	10447	0
// OP_DONE	0	0	0
void () zombie_painc13 = [143.000, zombie_painc14]
{
};

// zombie_painc14
// function begins at statement 17391, parm_start=10448
// OP_STATE	10448	10449	0
// OP_DONE	0	0	0
void () zombie_painc14 = [144.000, zombie_painc15]
{
};

// zombie_painc15
// function begins at statement 17393, parm_start=10450
// OP_STATE	10450	10451	0
// OP_DONE	0	0	0
void () zombie_painc15 = [145.000, zombie_painc16]
{
};

// zombie_painc16
// function begins at statement 17395, parm_start=10452
// OP_STATE	10452	10453	0
// OP_DONE	0	0	0
void () zombie_painc16 = [146.000, zombie_painc17]
{
};

// zombie_painc17
// function begins at statement 17397, parm_start=10454
// OP_STATE	10454	10455	0
// OP_DONE	0	0	0
void () zombie_painc17 = [147.000, zombie_painc18]
{
};

// zombie_painc18
// function begins at statement 17399, parm_start=10456
// OP_STATE	10456	10234	0
// OP_DONE	0	0	0
void () zombie_painc18 = [148.000, zombie_run1]
{
};

// zombie_paind1
// function begins at statement 17401, parm_start=10458
// OP_STATE	10458	10459	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10389	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () zombie_paind1 = [149.000, zombie_paind2]
{
    sound(self, CHAN_VOICE, "zombie/z_pain.wav", 1.000, ATTN_NORM);
};

// zombie_paind2
// function begins at statement 17409, parm_start=10460
// OP_STATE	2241	10460	0
// OP_DONE	0	0	0
void () zombie_paind2 = [150.000, zombie_paind3]
{
};

// zombie_paind3
// function begins at statement 17411, parm_start=10461
// OP_STATE	10461	10462	0
// OP_DONE	0	0	0
void () zombie_paind3 = [151.000, zombie_paind4]
{
};

// zombie_paind4
// function begins at statement 17413, parm_start=10463
// OP_STATE	10463	10464	0
// OP_DONE	0	0	0
void () zombie_paind4 = [152.000, zombie_paind5]
{
};

// zombie_paind5
// function begins at statement 17415, parm_start=10465
// OP_STATE	10465	10466	0
// OP_DONE	0	0	0
void () zombie_paind5 = [153.000, zombie_paind6]
{
};

// zombie_paind6
// function begins at statement 17417, parm_start=10467
// OP_STATE	10467	10468	0
// OP_DONE	0	0	0
void () zombie_paind6 = [154.000, zombie_paind7]
{
};

// zombie_paind7
// function begins at statement 17419, parm_start=10469
// OP_STATE	10469	10470	0
// OP_DONE	0	0	0
void () zombie_paind7 = [155.000, zombie_paind8]
{
};

// zombie_paind8
// function begins at statement 17421, parm_start=10471
// OP_STATE	10471	10472	0
// OP_DONE	0	0	0
void () zombie_paind8 = [156.000, zombie_paind9]
{
};

// zombie_paind9
// function begins at statement 17423, parm_start=10473
// OP_STATE	10473	10474	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paind9 = [157.000, zombie_paind10]
{
    ai_pain(1.000);
};

// zombie_paind10
// function begins at statement 17427, parm_start=10475
// OP_STATE	10475	10476	0
// OP_DONE	0	0	0
void () zombie_paind10 = [158.000, zombie_paind11]
{
};

// zombie_paind11
// function begins at statement 17429, parm_start=10477
// OP_STATE	10477	10478	0
// OP_DONE	0	0	0
void () zombie_paind11 = [159.000, zombie_paind12]
{
};

// zombie_paind12
// function begins at statement 17431, parm_start=10479
// OP_STATE	7989	10479	0
// OP_DONE	0	0	0
void () zombie_paind12 = [160.000, zombie_paind13]
{
};

// zombie_paind13
// function begins at statement 17433, parm_start=10480
// OP_STATE	10480	10234	0
// OP_CALL0	10164	0	0
// OP_DONE	0	0	0
void () zombie_paind13 = [161.000, zombie_run1]
{
    zombie_die();
};

// zombie_paine1
// function begins at statement 17436, parm_start=10482
// OP_STATE	10482	10234	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10389	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	152	10483
// OP_STOREP_F	1035	10483	0
// OP_CALL0	10164	0	0
// OP_DONE	0	0	0
void () zombie_paine1 = [162.000, zombie_run1]
{
    sound(self, CHAN_VOICE, "zombie/z_pain.wav", 1.000, ATTN_NORM);
    self.health = 60.000;
    zombie_die();
};

// zombie_paine2
// function begins at statement 17447, parm_start=10485
// OP_STATE	10485	10486	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine2 = [163.000, zombie_paine3]
{
    ai_pain(8.000);
};

// zombie_paine3
// function begins at statement 17451, parm_start=10487
// OP_STATE	10487	10488	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine3 = [164.000, zombie_paine4]
{
    ai_pain(5.000);
};

// zombie_paine4
// function begins at statement 17455, parm_start=10489
// OP_STATE	10489	10490	0
// OP_STORE_V	819	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine4 = [165.000, zombie_paine5]
{
    ai_pain(3.000);
};

// zombie_paine5
// function begins at statement 17459, parm_start=10491
// OP_STATE	10491	10492	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine5 = [166.000, zombie_paine6]
{
    ai_pain(1.000);
};

// zombie_paine6
// function begins at statement 17463, parm_start=10493
// OP_STATE	10493	10494	0
// OP_STORE_V	929	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine6 = [167.000, zombie_paine7]
{
    ai_pain(2.000);
};

// zombie_paine7
// function begins at statement 17467, parm_start=10495
// OP_STATE	10495	10496	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine7 = [168.000, zombie_paine8]
{
    ai_pain(1.000);
};

// zombie_paine8
// function begins at statement 17471, parm_start=10497
// OP_STATE	10497	10498	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine8 = [169.000, zombie_paine9]
{
    ai_pain(1.000);
};

// zombie_paine9
// function begins at statement 17475, parm_start=10499
// OP_STATE	10499	10500	0
// OP_STORE_V	929	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine9 = [170.000, zombie_paine10]
{
    ai_pain(2.000);
};

// zombie_paine10
// function begins at statement 17479, parm_start=10501
// OP_STATE	10501	10502	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	10411	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	104	10503
// OP_STOREP_F	238	10503	0
// OP_DONE	0	0	0
void () zombie_paine10 = [171.000, zombie_paine11]
{
    sound(self, CHAN_BODY, "zombie/z_fall.wav", 1.000, ATTN_NORM);
    self.solid = SOLID_NOT;
};

// zombie_paine11
// function begins at statement 17489, parm_start=10504
// OP_STATE	10504	10505	0
// OP_ADDRESS	28	150	10506
// OP_LOAD_F	28	150	10507
// OP_ADD_F	10507	1660	10508
// OP_STOREP_F	10508	10506	0
// OP_ADDRESS	28	152	10509
// OP_STOREP_F	1035	10509	0
// OP_DONE	0	0	0
void () zombie_paine11 = [172.000, zombie_paine12]
{
    self.nextthink = self.nextthink + 5.000;
    self.health = 60.000;
};

// zombie_paine12
// function begins at statement 17497, parm_start=10510
// OP_STATE	10510	10511	0
// OP_ADDRESS	28	152	10512
// OP_STOREP_F	1035	10512	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	1348	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	104	10513
// OP_STOREP_F	241	10513	0
// OP_STORE_V	650	4	0
// OP_STORE_V	650	7	0
// OP_CALL2	478	0	0
// OP_NOT_F	1	0	10514
// OP_IFNOT	10514	6	0
// OP_ADDRESS	28	148	10515
// OP_STOREP_FNC	10502	10515	0
// OP_ADDRESS	28	104	10516
// OP_STOREP_F	238	10516	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () zombie_paine12 = [173.000, zombie_paine13]
{
    self.health = 60.000;
    sound(self, CHAN_VOICE, "zombie/z_idle.wav", 1.000, ATTN_IDLE);
    self.solid = SOLID_SLIDEBOX;
    
    if(!walkmove(0.000, 0.000))
    {
        self.think = zombie_paine11;
        self.solid = SOLID_NOT;
        return;
    }
    
};

// zombie_paine13
// function begins at statement 17519, parm_start=10517
// OP_STATE	10517	10518	0
// OP_DONE	0	0	0
void () zombie_paine13 = [174.000, zombie_paine14]
{
};

// zombie_paine14
// function begins at statement 17521, parm_start=10519
// OP_STATE	10519	10520	0
// OP_DONE	0	0	0
void () zombie_paine14 = [175.000, zombie_paine15]
{
};

// zombie_paine15
// function begins at statement 17523, parm_start=10521
// OP_STATE	10521	10522	0
// OP_DONE	0	0	0
void () zombie_paine15 = [176.000, zombie_paine16]
{
};

// zombie_paine16
// function begins at statement 17525, parm_start=10523
// OP_STATE	10523	10524	0
// OP_DONE	0	0	0
void () zombie_paine16 = [177.000, zombie_paine17]
{
};

// zombie_paine17
// function begins at statement 17527, parm_start=10525
// OP_STATE	10525	10526	0
// OP_DONE	0	0	0
void () zombie_paine17 = [178.000, zombie_paine18]
{
};

// zombie_paine18
// function begins at statement 17529, parm_start=10527
// OP_STATE	10527	10528	0
// OP_DONE	0	0	0
void () zombie_paine18 = [179.000, zombie_paine19]
{
};

// zombie_paine19
// function begins at statement 17531, parm_start=10529
// OP_STATE	1435	10529	0
// OP_DONE	0	0	0
void () zombie_paine19 = [180.000, zombie_paine20]
{
};

// zombie_paine20
// function begins at statement 17533, parm_start=10530
// OP_STATE	10530	10531	0
// OP_DONE	0	0	0
void () zombie_paine20 = [181.000, zombie_paine21]
{
};

// zombie_paine21
// function begins at statement 17535, parm_start=10532
// OP_STATE	10532	10533	0
// OP_DONE	0	0	0
void () zombie_paine21 = [182.000, zombie_paine22]
{
};

// zombie_paine22
// function begins at statement 17537, parm_start=10534
// OP_STATE	10534	10535	0
// OP_DONE	0	0	0
void () zombie_paine22 = [183.000, zombie_paine23]
{
};

// zombie_paine23
// function begins at statement 17539, parm_start=10536
// OP_STATE	10536	10537	0
// OP_DONE	0	0	0
void () zombie_paine23 = [184.000, zombie_paine24]
{
};

// zombie_paine24
// function begins at statement 17541, parm_start=10538
// OP_STATE	10538	10539	0
// OP_DONE	0	0	0
void () zombie_paine24 = [185.000, zombie_paine25]
{
};

// zombie_paine25
// function begins at statement 17543, parm_start=10540
// OP_STATE	10540	10541	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_paine25 = [186.000, zombie_paine26]
{
    ai_painforward(5.000);
};

// zombie_paine26
// function begins at statement 17547, parm_start=10542
// OP_STATE	10542	10543	0
// OP_STORE_V	819	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_paine26 = [187.000, zombie_paine27]
{
    ai_painforward(3.000);
};

// zombie_paine27
// function begins at statement 17551, parm_start=10544
// OP_STATE	10544	10545	0
// OP_STORE_V	708	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () zombie_paine27 = [188.000, zombie_paine28]
{
    ai_painforward(1.000);
};

// zombie_paine28
// function begins at statement 17555, parm_start=10546
// OP_STATE	10546	10547	0
// OP_STORE_V	708	4	0
// OP_CALL1	1437	0	0
// OP_DONE	0	0	0
void () zombie_paine28 = [189.000, zombie_paine29]
{
    ai_pain(1.000);
};

// zombie_paine29
// function begins at statement 17559, parm_start=10548
// OP_STATE	10548	10549	0
// OP_DONE	0	0	0
void () zombie_paine29 = [190.000, zombie_paine30]
{
};

// zombie_paine30
// function begins at statement 17561, parm_start=10550
// OP_STATE	10550	10234	0
// OP_CALL0	10164	0	0
// OP_DONE	0	0	0
void () zombie_paine30 = [191.000, zombie_run1]
{
    zombie_die();
};

// zombie_die
// function begins at statement 17564, parm_start=10551
// OP_CALL0	596	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	10551	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	10552	4	0
// OP_LOAD_F	28	152	10553
// OP_STORE_V	10553	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	10554
// OP_STORE_V	10554	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	10555
// OP_STORE_V	10555	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	10556
// OP_STORE_V	10556	7	0
// OP_CALL2	5939	0	0
// OP_DONE	0	0	0
void () zombie_die = 
{
    CheckGameOver();
    sound(self, CHAN_VOICE, "zombie/z_gib.wav", 1.000, ATTN_NORM);
    ThrowHead("progs/h_zombie.mdl", self.health);
    ThrowGib("progs/gib1.mdl", self.health);
    ThrowGib("progs/gib2.mdl", self.health);
    ThrowGib("progs/gib3.mdl", self.health);
};

// zombie_pain
// function begins at statement 17588, parm_start=10558
// OP_ADDRESS	28	152	10561
// OP_STOREP_F	1035	10561	0
// OP_LT	10559	3556	10562
// OP_IFNOT	10562	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	10163	10563
// OP_EQ_F	10563	929	10564
// OP_IFNOT	10564	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	10163	10565
// OP_IFNOT	10565	5	0
// OP_ADDRESS	28	375	10566
// OP_ADD_F	31	819	10567
// OP_STOREP_F	10567	10566	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	10163	10568
// OP_STOREP_F	708	10568	0
// OP_CALL0	453	0	0
// OP_STORE_F	1	10560	0
// OP_LT	10560	1104	10569
// OP_IFNOT	10569	3	0
// OP_CALL0	10387	0	0
// OP_GOTO	6	0	0
// OP_LT	10560	2240	10570
// OP_IFNOT	10570	3	0
// OP_CALL0	10457	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10430	0	0
// OP_DONE	0	0	0
void (entity attacker, float take) zombie_pain = 
{
    local float r;
    self.health = 60.000;
    
    if(take < 9.000)
    {
        return;
    }
    
    
    if(self.inpain == 2.000)
    {
        return;
    }
    
    
    if(self.inpain)
    {
        self.pain_finished = time + 3.000;
        return;
    }
    
    self.inpain = 1.000;
    r = random();
    if(r < 0.300)
    {
        zombie_paina1();
    }
    else
    {
        if(r < 0.600)
        {
            zombie_paind1();
        }
        else
        {
            zombie_painc1();
        }
        
    }
    
};

// monster_zombie
// function begins at statement 17617, parm_start=10572
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10572	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	10552	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	2977	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	1348	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10255	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10279	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10551	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10389	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10402	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10411	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10262	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10261	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	10184	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	10573
// OP_STOREP_F	241	10573	0
// OP_ADDRESS	28	103	10574
// OP_STOREP_F	230	10574	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10572	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	9340	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	10575
// OP_STOREP_F	1035	10575	0
// OP_ADDRESS	28	357	10576
// OP_STOREP_FNC	10165	10576	0
// OP_ADDRESS	28	358	10577
// OP_STOREP_FNC	10214	10577	0
// OP_ADDRESS	28	359	10578
// OP_STOREP_FNC	10234	10578	0
// OP_ADDRESS	28	362	10579
// OP_STOREP_FNC	10557	10579	0
// OP_ADDRESS	28	363	10580
// OP_STOREP_FNC	10164	10580	0
// OP_ADDRESS	28	360	10581
// OP_STOREP_FNC	10383	10581	0
// OP_LOAD_F	28	195	10582
// OP_BITAND	10582	10162	10583
// OP_IFNOT	10583	5	0
// OP_ADDRESS	28	103	10584
// OP_STOREP_F	228	10584	0
// OP_CALL0	10180	0	0
// OP_GOTO	2	0	0
// OP_CALL0	6238	0	0
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
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 40.000');
    self.health = 60.000;
    self.th_stand = zombie_stand1;
    self.th_walk = zombie_walk1;
    self.th_run = zombie_run1;
    self.th_pain = zombie_pain;
    self.th_die = zombie_die;
    self.th_missile = zombie_missile;
    if(self.spawnflags & SPAWN_CRUCIFIED)
    {
        self.movetype = MOVETYPE_NONE;
        zombie_cruc1();
    }
    else
    {
        walkmonster_start();
    }
    
};

