// knight_stand1
// function begins at statement 14599, parm_start=9213
// OP_STATE	650	9213	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand1 = [0, knight_stand2]
{
    ai_stand();
};

// knight_stand2
// function begins at statement 14602, parm_start=9214
// OP_STATE	708	9214	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand2 = [1, knight_stand3]
{
    ai_stand();
};

// knight_stand3
// function begins at statement 14605, parm_start=9215
// OP_STATE	929	9215	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand3 = [2, knight_stand4]
{
    ai_stand();
};

// knight_stand4
// function begins at statement 14608, parm_start=9216
// OP_STATE	819	9216	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand4 = [3, knight_stand5]
{
    ai_stand();
};

// knight_stand5
// function begins at statement 14611, parm_start=9217
// OP_STATE	1835	9217	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand5 = [4, knight_stand6]
{
    ai_stand();
};

// knight_stand6
// function begins at statement 14614, parm_start=9218
// OP_STATE	1660	9218	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand6 = [5, knight_stand7]
{
    ai_stand();
};

// knight_stand7
// function begins at statement 14617, parm_start=9219
// OP_STATE	2107	9219	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand7 = [6, knight_stand8]
{
    ai_stand();
};

// knight_stand8
// function begins at statement 14620, parm_start=9220
// OP_STATE	2307	9220	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand8 = [7, knight_stand9]
{
    ai_stand();
};

// knight_stand9
// function begins at statement 14623, parm_start=9221
// OP_STATE	1502	9212	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () knight_stand9 = [8, knight_stand1]
{
    ai_stand();
};

// knight_walk1
// function begins at statement 14626, parm_start=9221
// OP_STATE	6072	9221	0
// OP_CALL0	453	0	0
// OP_LT	1	922	9222
// OP_IFNOT	9222	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9223	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	328	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk1 = [53, knight_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "knight/idle.wav", 1, ATTN_IDLE);
    }
    
    ai_walk(3);
};

// knight_walk2
// function begins at statement 14639, parm_start=9224
// OP_STATE	6074	9224	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk2 = [54, knight_walk3]
{
    ai_walk(2);
};

// knight_walk3
// function begins at statement 14643, parm_start=9225
// OP_STATE	6076	9225	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk3 = [55, knight_walk4]
{
    ai_walk(3);
};

// knight_walk4
// function begins at statement 14647, parm_start=9226
// OP_STATE	6078	9226	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk4 = [56, knight_walk5]
{
    ai_walk(4);
};

// knight_walk5
// function begins at statement 14651, parm_start=9227
// OP_STATE	6080	9227	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk5 = [57, knight_walk6]
{
    ai_walk(3);
};

// knight_walk6
// function begins at statement 14655, parm_start=9228
// OP_STATE	6082	9228	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk6 = [58, knight_walk7]
{
    ai_walk(3);
};

// knight_walk7
// function begins at statement 14659, parm_start=9229
// OP_STATE	6084	9229	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk7 = [59, knight_walk8]
{
    ai_walk(3);
};

// knight_walk8
// function begins at statement 14663, parm_start=9230
// OP_STATE	1035	9230	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk8 = [60, knight_walk9]
{
    ai_walk(4);
};

// knight_walk9
// function begins at statement 14667, parm_start=9231
// OP_STATE	6086	9231	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk9 = [61, knight_walk10]
{
    ai_walk(3);
};

// knight_walk10
// function begins at statement 14671, parm_start=9232
// OP_STATE	6088	9232	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk10 = [62, knight_walk11]
{
    ai_walk(3);
};

// knight_walk11
// function begins at statement 14675, parm_start=9233
// OP_STATE	4345	9233	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk11 = [63, knight_walk12]
{
    ai_walk(2);
};

// knight_walk12
// function begins at statement 14679, parm_start=9234
// OP_STATE	1684	9234	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk12 = [64, knight_walk13]
{
    ai_walk(3);
};

// knight_walk13
// function begins at statement 14683, parm_start=9235
// OP_STATE	6092	9235	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk13 = [65, knight_walk14]
{
    ai_walk(4);
};

// knight_walk14
// function begins at statement 14687, parm_start=9236
// OP_STATE	6094	1174	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () knight_walk14 = [66, knight_walk1]
{
    ai_walk(3);
};

// knight_run1
// function begins at statement 14691, parm_start=9237
// OP_STATE	3556	9237	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run1 = [9, knight_run2]
{
    ai_run(16);
};

// knight_run2
// function begins at statement 14695, parm_start=9238
// OP_STATE	1931	9238	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run2 = [10, knight_run3]
{
    ai_run(20);
};

// knight_run3
// function begins at statement 14699, parm_start=9239
// OP_STATE	3931	9239	0
// OP_STORE_V	8427	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run3 = [11, knight_run4]
{
    ai_run(13);
};

// knight_run4
// function begins at statement 14703, parm_start=9240
// OP_STATE	2532	9240	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run4 = [12, knight_run5]
{
    ai_run(7);
};

// knight_run5
// function begins at statement 14707, parm_start=9241
// OP_STATE	8427	9241	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run5 = [13, knight_run6]
{
    ai_run(16);
};

// knight_run6
// function begins at statement 14711, parm_start=9242
// OP_STATE	3153	9242	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run6 = [14, knight_run7]
{
    ai_run(20);
};

// knight_run7
// function begins at statement 14715, parm_start=9243
// OP_STATE	2157	9243	0
// OP_STORE_V	3153	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run7 = [15, knight_run8]
{
    ai_run(14);
};

// knight_run8
// function begins at statement 14719, parm_start=9244
// OP_STATE	3273	9236	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () knight_run8 = [16, knight_run1]
{
    ai_run(6);
};

// knight_runatk1
// function begins at statement 14723, parm_start=9244
// OP_STATE	5588	9244	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	9245
// OP_IFNOT	9245	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9246	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9247	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	1017	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_runatk1 = [17, knight_runatk2]
{
    if(random() > 0.5)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", 1, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", 1, ATTN_NORM);
    }
    
    ai_charge(20);
};

// knight_runatk2
// function begins at statement 14743, parm_start=9248
// OP_STATE	3576	9248	0
// OP_CALL0	981	0	0
// OP_DONE	0	0	0
void () knight_runatk2 = [18, knight_runatk3]
{
    ai_charge_side();
};

// knight_runatk3
// function begins at statement 14746, parm_start=9249
// OP_STATE	8435	9249	0
// OP_CALL0	981	0	0
// OP_DONE	0	0	0
void () knight_runatk3 = [19, knight_runatk4]
{
    ai_charge_side();
};

// knight_runatk4
// function begins at statement 14749, parm_start=9250
// OP_STATE	1017	9250	0
// OP_CALL0	981	0	0
// OP_DONE	0	0	0
void () knight_runatk4 = [20, knight_runatk5]
{
    ai_charge_side();
};

// knight_runatk5
// function begins at statement 14752, parm_start=9251
// OP_STATE	8438	9251	0
// OP_CALL0	1041	0	0
// OP_DONE	0	0	0
void () knight_runatk5 = [21, knight_runatk6]
{
    ai_melee_side();
};

// knight_runatk6
// function begins at statement 14755, parm_start=9252
// OP_STATE	8440	9252	0
// OP_CALL0	1041	0	0
// OP_DONE	0	0	0
void () knight_runatk6 = [22, knight_runatk7]
{
    ai_melee_side();
};

// knight_runatk7
// function begins at statement 14758, parm_start=9253
// OP_STATE	8442	9253	0
// OP_CALL0	1041	0	0
// OP_DONE	0	0	0
void () knight_runatk7 = [23, knight_runatk8]
{
    ai_melee_side();
};

// knight_runatk8
// function begins at statement 14761, parm_start=9254
// OP_STATE	4969	9254	0
// OP_CALL0	1041	0	0
// OP_DONE	0	0	0
void () knight_runatk8 = [24, knight_runatk9]
{
    ai_melee_side();
};

// knight_runatk9
// function begins at statement 14764, parm_start=9255
// OP_STATE	2171	9255	0
// OP_CALL0	1041	0	0
// OP_DONE	0	0	0
void () knight_runatk9 = [25, knight_runatk10]
{
    ai_melee_side();
};

// knight_runatk10
// function begins at statement 14767, parm_start=9256
// OP_STATE	8446	9256	0
// OP_CALL0	981	0	0
// OP_DONE	0	0	0
void () knight_runatk10 = [26, knight_runatk11]
{
    ai_charge_side();
};

// knight_runatk11
// function begins at statement 14770, parm_start=9257
// OP_STATE	8448	9236	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_runatk11 = [27, knight_run1]
{
    ai_charge(10);
};

// knight_atk1
// function begins at statement 14774, parm_start=9257
// OP_STATE	6162	9257	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9247	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk1 = [42, knight_atk2]
{
    sound(self, CHAN_WEAPON, "knight/sword1.wav", 1, ATTN_NORM);
    ai_charge(0);
};

// knight_atk2
// function begins at statement 14784, parm_start=9258
// OP_STATE	6166	9258	0
// OP_STORE_V	2307	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk2 = [44, knight_atk3]
{
    ai_charge(7);
};

// knight_atk3
// function begins at statement 14788, parm_start=9259
// OP_STATE	1572	9259	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk3 = [45, knight_atk4]
{
    ai_charge(4);
};

// knight_atk4
// function begins at statement 14792, parm_start=9260
// OP_STATE	6169	9260	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk4 = [46, knight_atk5]
{
    ai_charge(0);
};

// knight_atk5
// function begins at statement 14796, parm_start=9261
// OP_STATE	6171	9261	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk5 = [47, knight_atk6]
{
    ai_charge(3);
};

// knight_atk6
// function begins at statement 14800, parm_start=9262
// OP_STATE	6173	9262	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () knight_atk6 = [48, knight_atk7]
{
    ai_charge(4);
    ai_melee();
};

// knight_atk7
// function begins at statement 14805, parm_start=9263
// OP_STATE	6175	9263	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () knight_atk7 = [49, knight_atk8]
{
    ai_charge(1);
    ai_melee();
};

// knight_atk8
// function begins at statement 14810, parm_start=9264
// OP_STATE	2509	9264	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () knight_atk8 = [50, knight_atk9]
{
    ai_charge(3);
    ai_melee();
};

// knight_atk9
// function begins at statement 14815, parm_start=9265
// OP_STATE	6068	9265	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk9 = [51, knight_atk10]
{
    ai_charge(1);
};

// knight_atk10
// function begins at statement 14819, parm_start=9266
// OP_STATE	6070	9236	0
// OP_STORE_V	1660	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () knight_atk10 = [52, knight_run1]
{
    ai_charge(5);
};

// knight_pain1
// function begins at statement 14823, parm_start=9267
// OP_STATE	8450	9267	0
// OP_DONE	0	0	0
void () knight_pain1 = [28, knight_pain2]
{
};

// knight_pain2
// function begins at statement 14825, parm_start=9268
// OP_STATE	5829	9268	0
// OP_DONE	0	0	0
void () knight_pain2 = [29, knight_pain3]
{
};

// knight_pain3
// function begins at statement 14827, parm_start=9269
// OP_STATE	1004	9236	0
// OP_DONE	0	0	0
void () knight_pain3 = [30, knight_run1]
{
};

// knight_painb1
// function begins at statement 14829, parm_start=9270
// OP_STATE	3950	9270	0
// OP_STORE_V	650	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb1 = [31, knight_painb2]
{
    ai_painforward(0);
};

// knight_painb2
// function begins at statement 14833, parm_start=9271
// OP_STATE	959	9271	0
// OP_STORE_V	819	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb2 = [32, knight_painb3]
{
    ai_painforward(3);
};

// knight_painb3
// function begins at statement 14837, parm_start=9272
// OP_STATE	5835	9272	0
// OP_DONE	0	0	0
void () knight_painb3 = [33, knight_painb4]
{
};

// knight_painb4
// function begins at statement 14839, parm_start=9273
// OP_STATE	5837	9273	0
// OP_DONE	0	0	0
void () knight_painb4 = [34, knight_painb5]
{
};

// knight_painb5
// function begins at statement 14841, parm_start=9274
// OP_STATE	3325	9274	0
// OP_STORE_V	929	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb5 = [35, knight_painb6]
{
    ai_painforward(2);
};

// knight_painb6
// function begins at statement 14845, parm_start=9275
// OP_STATE	5820	9275	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb6 = [36, knight_painb7]
{
    ai_painforward(4);
};

// knight_painb7
// function begins at statement 14849, parm_start=9276
// OP_STATE	5822	9276	0
// OP_STORE_V	929	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb7 = [37, knight_painb8]
{
    ai_painforward(2);
};

// knight_painb8
// function begins at statement 14853, parm_start=9277
// OP_STATE	5824	9277	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb8 = [38, knight_painb9]
{
    ai_painforward(5);
};

// knight_painb9
// function begins at statement 14857, parm_start=9278
// OP_STATE	5826	9278	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb9 = [39, knight_painb10]
{
    ai_painforward(5);
};

// knight_painb10
// function begins at statement 14861, parm_start=9279
// OP_STATE	2007	9279	0
// OP_STORE_V	650	4	0
// OP_CALL1	1439	0	0
// OP_DONE	0	0	0
void () knight_painb10 = [40, knight_painb11]
{
    ai_painforward(0);
};

// knight_painb11
// function begins at statement 14865, parm_start=9280
// OP_STATE	6160	9236	0
// OP_DONE	0	0	0
void () knight_painb11 = [41, knight_run1]
{
};

// knight_pain
// function begins at statement 14867, parm_start=9281
// OP_LOAD_F	28	375	9284
// OP_GT	9284	31	9285
// OP_IFNOT	9285	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	9286
// OP_LE	9286	650	9287
// OP_IFNOT	9287	2	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_STORE_F	1	9283	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9288	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LT	9283	9289	9290
// OP_IFNOT	9290	6	0
// OP_CALL0	9266	0	0
// OP_ADDRESS	28	375	9291
// OP_ADD_F	31	708	9292
// OP_STOREP_F	9292	9291	0
// OP_GOTO	5	0	0
// OP_CALL0	9269	0	0
// OP_ADDRESS	28	375	9293
// OP_ADD_F	31	708	9294
// OP_STOREP_F	9294	9293	0
// OP_DONE	0	0	0
void (entity attacker, float damage) knight_pain = 
{
    local float r;
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    
    if(self.health <= 0)
    {
        return;
    }
    
    r = random();
    sound(self, CHAN_VOICE, "knight/khurt.wav", 1, ATTN_NORM);
    if(r < 0.85)
    {
        knight_pain1();
        self.pain_finished = time + 1;
    }
    else
    {
        knight_painb1();
        self.pain_finished = time + 1;
    }
    
};

// knight_bow1
// function begins at statement 14895, parm_start=9295
// OP_STATE	6096	9295	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow1 = [67, knight_bow2]
{
    ai_turn();
};

// knight_bow2
// function begins at statement 14898, parm_start=9296
// OP_STATE	6098	9296	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow2 = [68, knight_bow3]
{
    ai_turn();
};

// knight_bow3
// function begins at statement 14901, parm_start=9297
// OP_STATE	6100	9297	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow3 = [69, knight_bow4]
{
    ai_turn();
};

// knight_bow4
// function begins at statement 14904, parm_start=9298
// OP_STATE	6101	9298	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow4 = [70, knight_bow5]
{
    ai_turn();
};

// knight_bow5
// function begins at statement 14907, parm_start=9299
// OP_STATE	6103	9298	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow5 = [71, knight_bow5]
{
    ai_turn();
};

// knight_bow6
// function begins at statement 14910, parm_start=9299
// OP_STATE	6101	9299	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow6 = [70, knight_bow7]
{
    ai_turn();
};

// knight_bow7
// function begins at statement 14913, parm_start=9300
// OP_STATE	6100	9300	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow7 = [69, knight_bow8]
{
    ai_turn();
};

// knight_bow8
// function begins at statement 14916, parm_start=9301
// OP_STATE	6098	9301	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow8 = [68, knight_bow9]
{
    ai_turn();
};

// knight_bow9
// function begins at statement 14919, parm_start=9302
// OP_STATE	6096	9302	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow9 = [67, knight_bow10]
{
    ai_turn();
};

// knight_bow10
// function begins at statement 14922, parm_start=9303
// OP_STATE	6072	1174	0
// OP_CALL0	1545	0	0
// OP_DONE	0	0	0
void () knight_bow10 = [53, knight_walk1]
{
    ai_turn();
};

// knight_die1
// function begins at statement 14925, parm_start=9304
// OP_STATE	6112	9304	0
// OP_DONE	0	0	0
void () knight_die1 = [76, knight_die2]
{
};

// knight_die2
// function begins at statement 14927, parm_start=9305
// OP_STATE	6114	9305	0
// OP_DONE	0	0	0
void () knight_die2 = [77, knight_die3]
{
};

// knight_die3
// function begins at statement 14929, parm_start=9306
// OP_STATE	6116	9306	0
// OP_ADDRESS	28	104	9307
// OP_STOREP_F	238	9307	0
// OP_DONE	0	0	0
void () knight_die3 = [78, knight_die4]
{
    self.solid = SOLID_NOT;
};

// knight_die4
// function begins at statement 14933, parm_start=9308
// OP_STATE	6118	9308	0
// OP_DONE	0	0	0
void () knight_die4 = [79, knight_die5]
{
};

// knight_die5
// function begins at statement 14935, parm_start=9309
// OP_STATE	874	9309	0
// OP_DONE	0	0	0
void () knight_die5 = [80, knight_die6]
{
};

// knight_die6
// function begins at statement 14937, parm_start=9310
// OP_STATE	6121	9310	0
// OP_DONE	0	0	0
void () knight_die6 = [81, knight_die7]
{
};

// knight_die7
// function begins at statement 14939, parm_start=9311
// OP_STATE	6123	9311	0
// OP_DONE	0	0	0
void () knight_die7 = [82, knight_die8]
{
};

// knight_die8
// function begins at statement 14941, parm_start=9312
// OP_STATE	6125	9312	0
// OP_DONE	0	0	0
void () knight_die8 = [83, knight_die9]
{
};

// knight_die9
// function begins at statement 14943, parm_start=9313
// OP_STATE	6127	9313	0
// OP_DONE	0	0	0
void () knight_die9 = [84, knight_die10]
{
};

// knight_die10
// function begins at statement 14945, parm_start=9314
// OP_STATE	6128	9313	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () knight_die10 = [85, knight_die10]
{
    SUB_Remove();
};

// knight_dieb1
// function begins at statement 14948, parm_start=9315
// OP_STATE	6130	9315	0
// OP_DONE	0	0	0
void () knight_dieb1 = [86, knight_dieb2]
{
};

// knight_dieb2
// function begins at statement 14950, parm_start=9316
// OP_STATE	6132	9316	0
// OP_DONE	0	0	0
void () knight_dieb2 = [87, knight_dieb3]
{
};

// knight_dieb3
// function begins at statement 14952, parm_start=9317
// OP_STATE	6134	9317	0
// OP_ADDRESS	28	104	9318
// OP_STOREP_F	238	9318	0
// OP_DONE	0	0	0
void () knight_dieb3 = [88, knight_dieb4]
{
    self.solid = SOLID_NOT;
};

// knight_dieb4
// function begins at statement 14956, parm_start=9319
// OP_STATE	6136	9319	0
// OP_DONE	0	0	0
void () knight_dieb4 = [89, knight_dieb5]
{
};

// knight_dieb5
// function begins at statement 14958, parm_start=9320
// OP_STATE	1608	9320	0
// OP_DONE	0	0	0
void () knight_dieb5 = [90, knight_dieb6]
{
};

// knight_dieb6
// function begins at statement 14960, parm_start=9321
// OP_STATE	6139	9321	0
// OP_DONE	0	0	0
void () knight_dieb6 = [91, knight_dieb7]
{
};

// knight_dieb7
// function begins at statement 14962, parm_start=9322
// OP_STATE	6141	9322	0
// OP_DONE	0	0	0
void () knight_dieb7 = [92, knight_dieb8]
{
};

// knight_dieb8
// function begins at statement 14964, parm_start=9323
// OP_STATE	6143	9323	0
// OP_DONE	0	0	0
void () knight_dieb8 = [93, knight_dieb9]
{
};

// knight_dieb9
// function begins at statement 14966, parm_start=9324
// OP_STATE	6144	9324	0
// OP_DONE	0	0	0
void () knight_dieb9 = [94, knight_dieb10]
{
};

// knight_dieb10
// function begins at statement 14968, parm_start=9325
// OP_STATE	6146	9325	0
// OP_DONE	0	0	0
void () knight_dieb10 = [95, knight_dieb11]
{
};

// knight_dieb11
// function begins at statement 14970, parm_start=9326
// OP_STATE	6148	9325	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () knight_dieb11 = [96, knight_dieb11]
{
    SUB_Remove();
};

// knight_die
// function begins at statement 14973, parm_start=9327
// OP_LOAD_F	28	152	9327
// OP_LT	9327	5465	9328
// OP_IFNOT	9328	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	9329	4	0
// OP_LOAD_F	28	152	9330
// OP_STORE_V	9330	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	9331
// OP_STORE_V	9331	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	9332
// OP_STORE_V	9332	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	9333
// OP_STORE_V	9333	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	9334	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	9335
// OP_IFNOT	9335	3	0
// OP_CALL0	9303	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9314	0	0
// OP_DONE	0	0	0
void () knight_die = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
        ThrowHead("progs/h_knight.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "knight/kdeath.wav", 1, ATTN_NORM);
    if(random() < 0.5)
    {
        knight_die1();
    }
    else
    {
        knight_dieb1();
    }
    
};

// monster_knight
// function begins at statement 15012, parm_start=9337
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9337	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9329	4	0
// OP_CALL1	466	0	0
// OP_STORE_V	9334	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9288	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	1332	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9247	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9246	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9223	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	9338
// OP_STOREP_F	241	9338	0
// OP_ADDRESS	28	103	9339
// OP_STOREP_F	230	9339	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9337	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	9340	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	9343
// OP_STOREP_F	6110	9343	0
// OP_ADDRESS	28	357	9344
// OP_STOREP_FNC	9212	9344	0
// OP_ADDRESS	28	358	9345
// OP_STOREP_FNC	1174	9345	0
// OP_ADDRESS	28	359	9346
// OP_STOREP_FNC	9236	9346	0
// OP_ADDRESS	28	361	9347
// OP_STOREP_FNC	834	9347	0
// OP_ADDRESS	28	362	9348
// OP_STOREP_FNC	9280	9348	0
// OP_ADDRESS	28	363	9349
// OP_STOREP_FNC	9326	9349	0
// OP_CALL0	6238	0	0
// OP_DONE	0	0	0
void () monster_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/knight.mdl");
    precache_model("progs/h_knight.mdl");
    precache_sound("knight/kdeath.wav");
    precache_sound("knight/khurt.wav");
    precache_sound("knight/ksight.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    precache_sound("knight/idle.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/knight.mdl");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 40.000');
    self.health = 75;
    self.th_stand = knight_stand1;
    self.th_walk = knight_walk1;
    self.th_run = knight_run1;
    self.th_melee = knight_atk1;
    self.th_pain = knight_pain;
    self.th_die = knight_die;
    walkmonster_start();
};

