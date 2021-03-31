void () hknight_char_a1;
void () hknight_run1;
void () hk_idle_sound;
// hknight_shot
// function begins at statement 18725, parm_start=11092
// OP_LOAD_ENT	28	181	11102
// OP_LOAD_V	11102	105	11103
// OP_LOAD_V	28	105	11106
// OP_SUB_V	11103	11106	11109
// OP_STORE_V	11109	4	0
// OP_CALL1	493	0	0
// OP_STORE_V	1	11093	0
// OP_MUL_F	11092	2107	11112
// OP_ADD_F	11094	11112	11113
// OP_STORE_F	11113	11094	0
// OP_STORE_V	11093	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	11114
// OP_LOAD_V	28	134	11117
// OP_ADD_V	11114	11117	11120
// OP_LOAD_V	28	142	11123
// OP_MUL_VF	11123	1727	11126
// OP_ADD_V	11120	11126	11129
// OP_MUL_VF	59	1017	11132
// OP_ADD_V	11129	11132	11135
// OP_STORE_V	11135	11096	0
// OP_STORE_V	59	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	11099	0
// OP_SUB_F	650	11101	11138
// OP_CALL0	453	0	0
// OP_SUB_F	1	1727	11139
// OP_MUL_F	11139	686	11140
// OP_ADD_F	11138	11140	11141
// OP_STORE_F	11141	11101	0
// OP_STORE_V	11096	4	0
// OP_STORE_V	11099	7	0
// OP_CALL2	3460	0	0
// OP_ADDRESS	346	129	11142
// OP_STOREP_S	3561	11142	0
// OP_STORE_V	346	4	0
// OP_STORE_V	11143	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	346	4	0
// OP_STORE_V	287	7	0
// OP_STORE_V	287	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	346	113	11144
// OP_MUL_VF	11099	2845	11147
// OP_STOREP_V	11147	11144	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	11150	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void (float offset) hknight_shot = 
{
    local vector offang;
    local vector org;
    local vector vec;
    offang = vectoangles(self.enemy.origin - self.origin);
    offang_y = offang_y + (offset * 6.000);
    makevectors(offang);
    org = ((self.origin + self.mins) + (self.size * 0.500)) + (v_forward * 20.000);
    vec = normalize(v_forward);
    vec_z = (0.000 - vec_z) + ((random() - 0.500) * 0.100);
    launch_spike(org, vec);
    newmis.classname = "knightspike";
    setmodel(newmis, "progs/k_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = vec * 300.000;
    sound(self, CHAN_WEAPON, "hknight/attack1.wav", 1.000, ATTN_NORM);
};

// CheckForCharge
// function begins at statement 18777, parm_start=11152
// OP_NOT_F	845	0	11152
// OP_IFNOT	11152	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	374	11153
// OP_LT	31	11153	11154
// OP_IFNOT	11154	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	108	11155
// OP_LOAD_ENT	28	181	11156
// OP_LOAD_F	11156	108	11157
// OP_SUB_F	11155	11157	11158
// OP_STORE_V	11158	4	0
// OP_CALL1	486	0	0
// OP_GT	1	1017	11159
// OP_IFNOT	11159	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	11160
// OP_LOAD_ENT	28	181	11163
// OP_LOAD_V	11163	105	11164
// OP_SUB_V	11160	11164	11167
// OP_STORE_V	11167	4	0
// OP_CALL1	458	0	0
// OP_LT	1	874	11170
// OP_IFNOT	11170	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	929	4	0
// OP_CALL1	816	0	0
// OP_CALL0	11088	0	0
// OP_DONE	0	0	0
void () CheckForCharge = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    
    if((fabs(self.origin_z - self.enemy.origin_z)) > 20.000)
    {
        return;
    }
    
    
    if((vlen(self.origin - self.enemy.origin)) < 80.000)
    {
        return;
    }
    
    SUB_AttackFinished(2.000);
    hknight_char_a1();
};

// CheckContinueCharge
// function begins at statement 18806, parm_start=11172
// OP_LOAD_F	28	374	11172
// OP_GT	31	11172	11173
// OP_IFNOT	11173	5	0
// OP_STORE_V	819	4	0
// OP_CALL1	816	0	0
// OP_CALL0	11089	0	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	11174
// OP_IFNOT	11174	8	0
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
// OP_DONE	0	0	0
void () CheckContinueCharge = 
{
    
    if(time > self.attack_finished)
    {
        SUB_AttackFinished(3.000);
        hknight_run1();
        return;
    }
    
    if(random() > 0.500)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", 1.000, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", 1.000, ATTN_NORM);
    }
    
};

// hknight_stand1
// function begins at statement 18830, parm_start=11176
// OP_STATE	650	11176	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand1 = [0.000, hknight_stand2]
{
    ai_stand();
};

// hknight_stand2
// function begins at statement 18833, parm_start=11177
// OP_STATE	708	11177	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand2 = [1.000, hknight_stand3]
{
    ai_stand();
};

// hknight_stand3
// function begins at statement 18836, parm_start=11178
// OP_STATE	929	11178	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand3 = [2.000, hknight_stand4]
{
    ai_stand();
};

// hknight_stand4
// function begins at statement 18839, parm_start=11179
// OP_STATE	819	11179	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand4 = [3.000, hknight_stand5]
{
    ai_stand();
};

// hknight_stand5
// function begins at statement 18842, parm_start=11180
// OP_STATE	1835	11180	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand5 = [4.000, hknight_stand6]
{
    ai_stand();
};

// hknight_stand6
// function begins at statement 18845, parm_start=11181
// OP_STATE	1660	11181	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand6 = [5.000, hknight_stand7]
{
    ai_stand();
};

// hknight_stand7
// function begins at statement 18848, parm_start=11182
// OP_STATE	2107	11182	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand7 = [6.000, hknight_stand8]
{
    ai_stand();
};

// hknight_stand8
// function begins at statement 18851, parm_start=11183
// OP_STATE	2307	11183	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand8 = [7.000, hknight_stand9]
{
    ai_stand();
};

// hknight_stand9
// function begins at statement 18854, parm_start=11184
// OP_STATE	1502	11175	0
// OP_CALL0	1539	0	0
// OP_DONE	0	0	0
void () hknight_stand9 = [8.000, hknight_stand1]
{
    ai_stand();
};

// hknight_walk1
// function begins at statement 18857, parm_start=11185
// OP_STATE	3556	11185	0
// OP_CALL0	11090	0	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk1 = [9.000, hknight_walk2]
{
    hk_idle_sound();
    ai_walk(2.000);
};

// hknight_walk2
// function begins at statement 18862, parm_start=11186
// OP_STATE	1931	11186	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk2 = [10.000, hknight_walk3]
{
    ai_walk(5.000);
};

// hknight_walk3
// function begins at statement 18866, parm_start=11187
// OP_STATE	3931	11187	0
// OP_STORE_V	1660	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk3 = [11.000, hknight_walk4]
{
    ai_walk(5.000);
};

// hknight_walk4
// function begins at statement 18870, parm_start=11188
// OP_STATE	2532	11188	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk4 = [12.000, hknight_walk5]
{
    ai_walk(4.000);
};

// hknight_walk5
// function begins at statement 18874, parm_start=11189
// OP_STATE	8427	11189	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk5 = [13.000, hknight_walk6]
{
    ai_walk(4.000);
};

// hknight_walk6
// function begins at statement 18878, parm_start=11190
// OP_STATE	3153	11190	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk6 = [14.000, hknight_walk7]
{
    ai_walk(2.000);
};

// hknight_walk7
// function begins at statement 18882, parm_start=11191
// OP_STATE	2157	11191	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk7 = [15.000, hknight_walk8]
{
    ai_walk(2.000);
};

// hknight_walk8
// function begins at statement 18886, parm_start=11192
// OP_STATE	3273	11192	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk8 = [16.000, hknight_walk9]
{
    ai_walk(3.000);
};

// hknight_walk9
// function begins at statement 18890, parm_start=11193
// OP_STATE	5588	11193	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk9 = [17.000, hknight_walk10]
{
    ai_walk(3.000);
};

// hknight_walk10
// function begins at statement 18894, parm_start=11194
// OP_STATE	3576	11194	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk10 = [18.000, hknight_walk11]
{
    ai_walk(4.000);
};

// hknight_walk11
// function begins at statement 18898, parm_start=11195
// OP_STATE	8435	11195	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk11 = [19.000, hknight_walk12]
{
    ai_walk(3.000);
};

// hknight_walk12
// function begins at statement 18902, parm_start=11196
// OP_STATE	1017	11196	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk12 = [20.000, hknight_walk13]
{
    ai_walk(4.000);
};

// hknight_walk13
// function begins at statement 18906, parm_start=11197
// OP_STATE	8438	11197	0
// OP_STORE_V	2107	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk13 = [21.000, hknight_walk14]
{
    ai_walk(6.000);
};

// hknight_walk14
// function begins at statement 18910, parm_start=11198
// OP_STATE	8440	11198	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk14 = [22.000, hknight_walk15]
{
    ai_walk(2.000);
};

// hknight_walk15
// function begins at statement 18914, parm_start=11199
// OP_STATE	8442	11199	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk15 = [23.000, hknight_walk16]
{
    ai_walk(2.000);
};

// hknight_walk16
// function begins at statement 18918, parm_start=11200
// OP_STATE	4969	11200	0
// OP_STORE_V	1835	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk16 = [24.000, hknight_walk17]
{
    ai_walk(4.000);
};

// hknight_walk17
// function begins at statement 18922, parm_start=11201
// OP_STATE	2171	11201	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk17 = [25.000, hknight_walk18]
{
    ai_walk(3.000);
};

// hknight_walk18
// function begins at statement 18926, parm_start=11202
// OP_STATE	8446	11202	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk18 = [26.000, hknight_walk19]
{
    ai_walk(3.000);
};

// hknight_walk19
// function begins at statement 18930, parm_start=11203
// OP_STATE	8448	11203	0
// OP_STORE_V	819	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk19 = [27.000, hknight_walk20]
{
    ai_walk(3.000);
};

// hknight_walk20
// function begins at statement 18934, parm_start=11204
// OP_STATE	8450	11184	0
// OP_STORE_V	929	4	0
// OP_CALL1	1442	0	0
// OP_DONE	0	0	0
void () hknight_walk20 = [28.000, hknight_walk1]
{
    ai_walk(2.000);
};

// hknight_run1
// function begins at statement 18938, parm_start=11204
// OP_STATE	5829	11204	0
// OP_CALL0	11090	0	0
// OP_STORE_V	1017	4	0
// OP_CALL1	1617	0	0
// OP_CALL0	11151	0	0
// OP_DONE	0	0	0
void () hknight_run1 = [29.000, hknight_run2]
{
    hk_idle_sound();
    ai_run(20.000);
    CheckForCharge();
};

// hknight_run2
// function begins at statement 18944, parm_start=11205
// OP_STATE	1004	11205	0
// OP_STORE_V	2171	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run2 = [30.000, hknight_run3]
{
    ai_run(25.000);
};

// hknight_run3
// function begins at statement 18948, parm_start=11206
// OP_STATE	3950	11206	0
// OP_STORE_V	3576	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run3 = [31.000, hknight_run4]
{
    ai_run(18.000);
};

// hknight_run4
// function begins at statement 18952, parm_start=11207
// OP_STATE	959	11207	0
// OP_STORE_V	3273	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run4 = [32.000, hknight_run5]
{
    ai_run(16.000);
};

// hknight_run5
// function begins at statement 18956, parm_start=11208
// OP_STATE	5835	11208	0
// OP_STORE_V	3153	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run5 = [33.000, hknight_run6]
{
    ai_run(14.000);
};

// hknight_run6
// function begins at statement 18960, parm_start=11209
// OP_STATE	5837	11209	0
// OP_STORE_V	2171	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run6 = [34.000, hknight_run7]
{
    ai_run(25.000);
};

// hknight_run7
// function begins at statement 18964, parm_start=11210
// OP_STATE	3325	11210	0
// OP_STORE_V	8438	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run7 = [35.000, hknight_run8]
{
    ai_run(21.000);
};

// hknight_run8
// function begins at statement 18968, parm_start=11211
// OP_STATE	5820	11089	0
// OP_STORE_V	8427	4	0
// OP_CALL1	1617	0	0
// OP_DONE	0	0	0
void () hknight_run8 = [36.000, hknight_run1]
{
    ai_run(13.000);
};

// hknight_pain1
// function begins at statement 18972, parm_start=11212
// OP_STATE	5822	11212	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11213	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () hknight_pain1 = [37.000, hknight_pain2]
{
    sound(self, CHAN_VOICE, "hknight/pain1.wav", 1.000, ATTN_NORM);
};

// hknight_pain2
// function begins at statement 18980, parm_start=11214
// OP_STATE	5824	11214	0
// OP_DONE	0	0	0
void () hknight_pain2 = [38.000, hknight_pain3]
{
};

// hknight_pain3
// function begins at statement 18982, parm_start=11215
// OP_STATE	5826	11215	0
// OP_DONE	0	0	0
void () hknight_pain3 = [39.000, hknight_pain4]
{
};

// hknight_pain4
// function begins at statement 18984, parm_start=11216
// OP_STATE	2007	11216	0
// OP_DONE	0	0	0
void () hknight_pain4 = [40.000, hknight_pain5]
{
};

// hknight_pain5
// function begins at statement 18986, parm_start=11217
// OP_STATE	6160	11089	0
// OP_DONE	0	0	0
void () hknight_pain5 = [41.000, hknight_run1]
{
};

// hknight_die1
// function begins at statement 18988, parm_start=11218
// OP_STATE	6162	11218	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () hknight_die1 = [42.000, hknight_die2]
{
    ai_forward(10.000);
};

// hknight_die2
// function begins at statement 18992, parm_start=11219
// OP_STATE	6164	11219	0
// OP_STORE_V	1502	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () hknight_die2 = [43.000, hknight_die3]
{
    ai_forward(8.000);
};

// hknight_die3
// function begins at statement 18996, parm_start=11220
// OP_STATE	6166	11220	0
// OP_ADDRESS	28	104	11221
// OP_STOREP_F	238	11221	0
// OP_STORE_V	2307	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () hknight_die3 = [44.000, hknight_die4]
{
    self.solid = SOLID_NOT;
    ai_forward(7.000);
};

// hknight_die4
// function begins at statement 19002, parm_start=11222
// OP_STATE	1572	11222	0
// OP_DONE	0	0	0
void () hknight_die4 = [45.000, hknight_die5]
{
};

// hknight_die5
// function begins at statement 19004, parm_start=11223
// OP_STATE	6169	11223	0
// OP_DONE	0	0	0
void () hknight_die5 = [46.000, hknight_die6]
{
};

// hknight_die6
// function begins at statement 19006, parm_start=11224
// OP_STATE	6171	11224	0
// OP_DONE	0	0	0
void () hknight_die6 = [47.000, hknight_die7]
{
};

// hknight_die7
// function begins at statement 19008, parm_start=11225
// OP_STATE	6173	11225	0
// OP_DONE	0	0	0
void () hknight_die7 = [48.000, hknight_die8]
{
};

// hknight_die8
// function begins at statement 19010, parm_start=11226
// OP_STATE	6175	11226	0
// OP_STORE_V	1931	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () hknight_die8 = [49.000, hknight_die9]
{
    ai_forward(10.000);
};

// hknight_die9
// function begins at statement 19014, parm_start=11227
// OP_STATE	2509	11227	0
// OP_STORE_V	3931	4	0
// OP_CALL1	1429	0	0
// OP_DONE	0	0	0
void () hknight_die9 = [50.000, hknight_die10]
{
    ai_forward(11.000);
};

// hknight_die10
// function begins at statement 19018, parm_start=11228
// OP_STATE	6068	11228	0
// OP_DONE	0	0	0
void () hknight_die10 = [51.000, hknight_die11]
{
};

// hknight_die11
// function begins at statement 19020, parm_start=11229
// OP_STATE	6070	11229	0
// OP_DONE	0	0	0
void () hknight_die11 = [52.000, hknight_die12]
{
};

// hknight_die12
// function begins at statement 19022, parm_start=11230
// OP_STATE	6072	11229	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () hknight_die12 = [53.000, hknight_die12]
{
    SUB_Remove();
};

// hknight_dieb1
// function begins at statement 19025, parm_start=11231
// OP_STATE	6074	11231	0
// OP_DONE	0	0	0
void () hknight_dieb1 = [54.000, hknight_dieb2]
{
};

// hknight_dieb2
// function begins at statement 19027, parm_start=11232
// OP_STATE	6076	11232	0
// OP_DONE	0	0	0
void () hknight_dieb2 = [55.000, hknight_dieb3]
{
};

// hknight_dieb3
// function begins at statement 19029, parm_start=11233
// OP_STATE	6078	11233	0
// OP_ADDRESS	28	104	11234
// OP_STOREP_F	238	11234	0
// OP_DONE	0	0	0
void () hknight_dieb3 = [56.000, hknight_dieb4]
{
    self.solid = SOLID_NOT;
};

// hknight_dieb4
// function begins at statement 19033, parm_start=11235
// OP_STATE	6080	11235	0
// OP_DONE	0	0	0
void () hknight_dieb4 = [57.000, hknight_dieb5]
{
};

// hknight_dieb5
// function begins at statement 19035, parm_start=11236
// OP_STATE	6082	11236	0
// OP_DONE	0	0	0
void () hknight_dieb5 = [58.000, hknight_dieb6]
{
};

// hknight_dieb6
// function begins at statement 19037, parm_start=11237
// OP_STATE	6084	11237	0
// OP_DONE	0	0	0
void () hknight_dieb6 = [59.000, hknight_dieb7]
{
};

// hknight_dieb7
// function begins at statement 19039, parm_start=11238
// OP_STATE	1035	11238	0
// OP_DONE	0	0	0
void () hknight_dieb7 = [60.000, hknight_dieb8]
{
};

// hknight_dieb8
// function begins at statement 19041, parm_start=11239
// OP_STATE	6086	11239	0
// OP_DONE	0	0	0
void () hknight_dieb8 = [61.000, hknight_dieb9]
{
};

// hknight_dieb9
// function begins at statement 19043, parm_start=11240
// OP_STATE	6088	11239	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () hknight_dieb9 = [62.000, hknight_dieb9]
{
    SUB_Remove();
};

// hknight_die
// function begins at statement 19046, parm_start=11241
// OP_LOAD_F	28	152	11241
// OP_LT	11241	5465	11242
// OP_IFNOT	11242	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	4265	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_STORE_V	11243	4	0
// OP_LOAD_F	28	152	11244
// OP_STORE_V	11244	7	0
// OP_CALL2	5968	0	0
// OP_STORE_V	4324	4	0
// OP_LOAD_F	28	152	11245
// OP_STORE_V	11245	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4325	4	0
// OP_LOAD_F	28	152	11246
// OP_STORE_V	11246	7	0
// OP_CALL2	5939	0	0
// OP_STORE_V	4326	4	0
// OP_LOAD_F	28	152	11247
// OP_STORE_V	11247	7	0
// OP_CALL2	5939	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11248	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_CALL0	453	0	0
// OP_GT	1	1727	11249
// OP_IFNOT	11249	3	0
// OP_CALL0	11217	0	0
// OP_GOTO	2	0	0
// OP_CALL0	11230	0	0
// OP_DONE	0	0	0
void () hknight_die = 
{
    
    if(self.health < -40.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", 1.000, ATTN_NORM);
        ThrowHead("progs/h_hellkn.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/death1.wav", 1.000, ATTN_NORM);
    if(random() > 0.500)
    {
        hknight_die1();
    }
    else
    {
        hknight_dieb1();
    }
    
};

// hknight_magica1
// function begins at statement 19085, parm_start=11251
// OP_STATE	6118	11251	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica1 = [79.000, hknight_magica2]
{
    ai_face();
};

// hknight_magica2
// function begins at statement 19088, parm_start=11252
// OP_STATE	874	11252	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica2 = [80.000, hknight_magica3]
{
    ai_face();
};

// hknight_magica3
// function begins at statement 19091, parm_start=11253
// OP_STATE	6121	11253	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica3 = [81.000, hknight_magica4]
{
    ai_face();
};

// hknight_magica4
// function begins at statement 19094, parm_start=11254
// OP_STATE	6123	11254	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica4 = [82.000, hknight_magica5]
{
    ai_face();
};

// hknight_magica5
// function begins at statement 19097, parm_start=11255
// OP_STATE	6125	11255	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica5 = [83.000, hknight_magica6]
{
    ai_face();
};

// hknight_magica6
// function begins at statement 19100, parm_start=11256
// OP_STATE	6127	11256	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica6 = [84.000, hknight_magica7]
{
    ai_face();
};

// hknight_magica7
// function begins at statement 19103, parm_start=11257
// OP_STATE	6128	11257	0
// OP_STORE_V	3132	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magica7 = [85.000, hknight_magica8]
{
    hknight_shot(-2.000);
};

// hknight_magica8
// function begins at statement 19107, parm_start=11258
// OP_STATE	6130	11258	0
// OP_STORE_V	720	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magica8 = [86.000, hknight_magica9]
{
    hknight_shot(-1.000);
};

// hknight_magica9
// function begins at statement 19111, parm_start=11259
// OP_STATE	6132	11259	0
// OP_STORE_V	650	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magica9 = [87.000, hknight_magica10]
{
    hknight_shot(0.000);
};

// hknight_magica10
// function begins at statement 19115, parm_start=11260
// OP_STATE	6134	11260	0
// OP_STORE_V	708	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magica10 = [88.000, hknight_magica11]
{
    hknight_shot(1.000);
};

// hknight_magica11
// function begins at statement 19119, parm_start=11261
// OP_STATE	6136	11261	0
// OP_STORE_V	929	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magica11 = [89.000, hknight_magica12]
{
    hknight_shot(2.000);
};

// hknight_magica12
// function begins at statement 19123, parm_start=11262
// OP_STATE	1608	11262	0
// OP_STORE_V	819	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magica12 = [90.000, hknight_magica13]
{
    hknight_shot(3.000);
};

// hknight_magica13
// function begins at statement 19127, parm_start=11263
// OP_STATE	6139	11263	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica13 = [91.000, hknight_magica14]
{
    ai_face();
};

// hknight_magica14
// function begins at statement 19130, parm_start=11264
// OP_STATE	6141	11089	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magica14 = [92.000, hknight_run1]
{
    ai_face();
};

// hknight_magicb1
// function begins at statement 19133, parm_start=11265
// OP_STATE	6143	11265	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb1 = [93.000, hknight_magicb2]
{
    ai_face();
};

// hknight_magicb2
// function begins at statement 19136, parm_start=11266
// OP_STATE	6144	11266	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb2 = [94.000, hknight_magicb3]
{
    ai_face();
};

// hknight_magicb3
// function begins at statement 19139, parm_start=11267
// OP_STATE	6146	11267	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb3 = [95.000, hknight_magicb4]
{
    ai_face();
};

// hknight_magicb4
// function begins at statement 19142, parm_start=11268
// OP_STATE	6148	11268	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb4 = [96.000, hknight_magicb5]
{
    ai_face();
};

// hknight_magicb5
// function begins at statement 19145, parm_start=11269
// OP_STATE	6150	11269	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb5 = [97.000, hknight_magicb6]
{
    ai_face();
};

// hknight_magicb6
// function begins at statement 19148, parm_start=11270
// OP_STATE	6152	11270	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb6 = [98.000, hknight_magicb7]
{
    ai_face();
};

// hknight_magicb7
// function begins at statement 19151, parm_start=11271
// OP_STATE	6154	11271	0
// OP_STORE_V	3132	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicb7 = [99.000, hknight_magicb8]
{
    hknight_shot(-2.000);
};

// hknight_magicb8
// function begins at statement 19155, parm_start=11272
// OP_STATE	2165	11272	0
// OP_STORE_V	720	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicb8 = [100.000, hknight_magicb9]
{
    hknight_shot(-1.000);
};

// hknight_magicb9
// function begins at statement 19159, parm_start=11273
// OP_STATE	6157	11273	0
// OP_STORE_V	650	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicb9 = [101.000, hknight_magicb10]
{
    hknight_shot(0.000);
};

// hknight_magicb10
// function begins at statement 19163, parm_start=11274
// OP_STATE	6159	11274	0
// OP_STORE_V	708	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicb10 = [102.000, hknight_magicb11]
{
    hknight_shot(1.000);
};

// hknight_magicb11
// function begins at statement 19167, parm_start=11275
// OP_STATE	5699	11275	0
// OP_STORE_V	929	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicb11 = [103.000, hknight_magicb12]
{
    hknight_shot(2.000);
};

// hknight_magicb12
// function begins at statement 19171, parm_start=11276
// OP_STATE	5714	11276	0
// OP_STORE_V	819	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicb12 = [104.000, hknight_magicb13]
{
    hknight_shot(3.000);
};

// hknight_magicb13
// function begins at statement 19175, parm_start=11277
// OP_STATE	5728	11089	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicb13 = [105.000, hknight_run1]
{
    ai_face();
};

// hknight_magicc1
// function begins at statement 19178, parm_start=11278
// OP_STATE	10469	11278	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicc1 = [155.000, hknight_magicc2]
{
    ai_face();
};

// hknight_magicc2
// function begins at statement 19181, parm_start=11279
// OP_STATE	10471	11279	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicc2 = [156.000, hknight_magicc3]
{
    ai_face();
};

// hknight_magicc3
// function begins at statement 19184, parm_start=11280
// OP_STATE	10473	11280	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicc3 = [157.000, hknight_magicc4]
{
    ai_face();
};

// hknight_magicc4
// function begins at statement 19187, parm_start=11281
// OP_STATE	10475	11281	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicc4 = [158.000, hknight_magicc5]
{
    ai_face();
};

// hknight_magicc5
// function begins at statement 19190, parm_start=11282
// OP_STATE	10477	11282	0
// OP_CALL0	844	0	0
// OP_DONE	0	0	0
void () hknight_magicc5 = [159.000, hknight_magicc6]
{
    ai_face();
};

// hknight_magicc6
// function begins at statement 19193, parm_start=11283
// OP_STATE	7989	11283	0
// OP_STORE_V	3132	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicc6 = [160.000, hknight_magicc7]
{
    hknight_shot(-2.000);
};

// hknight_magicc7
// function begins at statement 19197, parm_start=11284
// OP_STATE	10480	11284	0
// OP_STORE_V	720	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicc7 = [161.000, hknight_magicc8]
{
    hknight_shot(-1.000);
};

// hknight_magicc8
// function begins at statement 19201, parm_start=11285
// OP_STATE	10482	11285	0
// OP_STORE_V	650	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicc8 = [162.000, hknight_magicc9]
{
    hknight_shot(0.000);
};

// hknight_magicc9
// function begins at statement 19205, parm_start=11286
// OP_STATE	10485	11286	0
// OP_STORE_V	708	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicc9 = [163.000, hknight_magicc10]
{
    hknight_shot(1.000);
};

// hknight_magicc10
// function begins at statement 19209, parm_start=11287
// OP_STATE	10487	11287	0
// OP_STORE_V	929	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicc10 = [164.000, hknight_magicc11]
{
    hknight_shot(2.000);
};

// hknight_magicc11
// function begins at statement 19213, parm_start=11288
// OP_STATE	10489	11089	0
// OP_STORE_V	819	4	0
// OP_CALL1	11091	0	0
// OP_DONE	0	0	0
void () hknight_magicc11 = [165.000, hknight_run1]
{
    hknight_shot(3.000);
};

// hknight_char_a1
// function begins at statement 19217, parm_start=11288
// OP_STATE	4345	11288	0
// OP_STORE_V	1017	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a1 = [63.000, hknight_char_a2]
{
    ai_charge(20.000);
};

// hknight_char_a2
// function begins at statement 19221, parm_start=11289
// OP_STATE	1684	11289	0
// OP_STORE_V	2171	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a2 = [64.000, hknight_char_a3]
{
    ai_charge(25.000);
};

// hknight_char_a3
// function begins at statement 19225, parm_start=11290
// OP_STATE	6092	11290	0
// OP_STORE_V	3576	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a3 = [65.000, hknight_char_a4]
{
    ai_charge(18.000);
};

// hknight_char_a4
// function begins at statement 19229, parm_start=11291
// OP_STATE	6094	11291	0
// OP_STORE_V	3273	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a4 = [66.000, hknight_char_a5]
{
    ai_charge(16.000);
};

// hknight_char_a5
// function begins at statement 19233, parm_start=11292
// OP_STATE	6096	11292	0
// OP_STORE_V	3153	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a5 = [67.000, hknight_char_a6]
{
    ai_charge(14.000);
};

// hknight_char_a6
// function begins at statement 19237, parm_start=11293
// OP_STATE	6098	11293	0
// OP_STORE_V	1017	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_a6 = [68.000, hknight_char_a7]
{
    ai_charge(20.000);
    ai_melee();
};

// hknight_char_a7
// function begins at statement 19242, parm_start=11294
// OP_STATE	6100	11294	0
// OP_STORE_V	8438	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_a7 = [69.000, hknight_char_a8]
{
    ai_charge(21.000);
    ai_melee();
};

// hknight_char_a8
// function begins at statement 19247, parm_start=11295
// OP_STATE	6101	11295	0
// OP_STORE_V	8427	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_a8 = [70.000, hknight_char_a9]
{
    ai_charge(13.000);
    ai_melee();
};

// hknight_char_a9
// function begins at statement 19252, parm_start=11296
// OP_STATE	6103	11296	0
// OP_STORE_V	1017	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_a9 = [71.000, hknight_char_a10]
{
    ai_charge(20.000);
    ai_melee();
};

// hknight_char_a10
// function begins at statement 19257, parm_start=11297
// OP_STATE	6105	11297	0
// OP_STORE_V	1017	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_a10 = [72.000, hknight_char_a11]
{
    ai_charge(20.000);
    ai_melee();
};

// hknight_char_a11
// function begins at statement 19262, parm_start=11298
// OP_STATE	2988	11298	0
// OP_STORE_V	3576	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_a11 = [73.000, hknight_char_a12]
{
    ai_charge(18.000);
    ai_melee();
};

// hknight_char_a12
// function begins at statement 19267, parm_start=11299
// OP_STATE	6108	11299	0
// OP_STORE_V	3273	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a12 = [74.000, hknight_char_a13]
{
    ai_charge(16.000);
};

// hknight_char_a13
// function begins at statement 19271, parm_start=11300
// OP_STATE	6110	11300	0
// OP_STORE_V	3153	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a13 = [75.000, hknight_char_a14]
{
    ai_charge(14.000);
};

// hknight_char_a14
// function begins at statement 19275, parm_start=11301
// OP_STATE	6112	11301	0
// OP_STORE_V	2171	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a14 = [76.000, hknight_char_a15]
{
    ai_charge(25.000);
};

// hknight_char_a15
// function begins at statement 19279, parm_start=11302
// OP_STATE	6114	11302	0
// OP_STORE_V	8438	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a15 = [77.000, hknight_char_a16]
{
    ai_charge(21.000);
};

// hknight_char_a16
// function begins at statement 19283, parm_start=11303
// OP_STATE	6116	11089	0
// OP_STORE_V	8427	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_char_a16 = [78.000, hknight_run1]
{
    ai_charge(13.000);
};

// hknight_char_b1
// function begins at statement 19287, parm_start=11304
// OP_STATE	5741	11304	0
// OP_CALL0	11171	0	0
// OP_STORE_V	8442	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_b1 = [106.000, hknight_char_b2]
{
    CheckContinueCharge();
    ai_charge(23.000);
    ai_melee();
};

// hknight_char_b2
// function begins at statement 19293, parm_start=11305
// OP_STATE	5755	11305	0
// OP_STORE_V	5588	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_b2 = [107.000, hknight_char_b3]
{
    ai_charge(17.000);
    ai_melee();
};

// hknight_char_b3
// function begins at statement 19298, parm_start=11306
// OP_STATE	5761	11306	0
// OP_STORE_V	2532	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_b3 = [108.000, hknight_char_b4]
{
    ai_charge(12.000);
    ai_melee();
};

// hknight_char_b4
// function begins at statement 19303, parm_start=11307
// OP_STATE	5764	11307	0
// OP_STORE_V	8440	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_b4 = [109.000, hknight_char_b5]
{
    ai_charge(22.000);
    ai_melee();
};

// hknight_char_b5
// function begins at statement 19308, parm_start=11308
// OP_STATE	5767	11308	0
// OP_STORE_V	3576	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_b5 = [110.000, hknight_char_b6]
{
    ai_charge(18.000);
    ai_melee();
};

// hknight_char_b6
// function begins at statement 19313, parm_start=11309
// OP_STATE	5770	11303	0
// OP_STORE_V	1502	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_char_b6 = [111.000, hknight_char_b1]
{
    ai_charge(8.000);
    ai_melee();
};

// hknight_slice1
// function begins at statement 19318, parm_start=11310
// OP_STATE	5773	11310	0
// OP_STORE_V	3556	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_slice1 = [112.000, hknight_slice2]
{
    ai_charge(9.000);
};

// hknight_slice2
// function begins at statement 19322, parm_start=11311
// OP_STATE	5636	11311	0
// OP_STORE_V	2107	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_slice2 = [113.000, hknight_slice3]
{
    ai_charge(6.000);
};

// hknight_slice3
// function begins at statement 19326, parm_start=11312
// OP_STATE	5642	11312	0
// OP_STORE_V	8427	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_slice3 = [114.000, hknight_slice4]
{
    ai_charge(13.000);
};

// hknight_slice4
// function begins at statement 19330, parm_start=11313
// OP_STATE	5645	11313	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_slice4 = [115.000, hknight_slice5]
{
    ai_charge(4.000);
};

// hknight_slice5
// function begins at statement 19334, parm_start=11314
// OP_STATE	5648	11314	0
// OP_STORE_V	2307	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_slice5 = [116.000, hknight_slice6]
{
    ai_charge(7.000);
    ai_melee();
};

// hknight_slice6
// function begins at statement 19339, parm_start=11315
// OP_STATE	5651	11315	0
// OP_STORE_V	2157	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_slice6 = [117.000, hknight_slice7]
{
    ai_charge(15.000);
    ai_melee();
};

// hknight_slice7
// function begins at statement 19344, parm_start=11316
// OP_STATE	5654	11316	0
// OP_STORE_V	1502	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_slice7 = [118.000, hknight_slice8]
{
    ai_charge(8.000);
    ai_melee();
};

// hknight_slice8
// function begins at statement 19349, parm_start=11317
// OP_STATE	5656	11317	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_slice8 = [119.000, hknight_slice9]
{
    ai_charge(2.000);
    ai_melee();
};

// hknight_slice9
// function begins at statement 19354, parm_start=11318
// OP_STATE	1255	11318	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_slice9 = [120.000, hknight_slice10]
{
    ai_melee();
};

// hknight_slice10
// function begins at statement 19357, parm_start=11319
// OP_STATE	5661	11089	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_slice10 = [121.000, hknight_run1]
{
    ai_charge(3.000);
};

// hknight_smash1
// function begins at statement 19361, parm_start=11320
// OP_STATE	5664	11320	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_smash1 = [122.000, hknight_smash2]
{
    ai_charge(1.000);
};

// hknight_smash2
// function begins at statement 19365, parm_start=11321
// OP_STATE	8602	11321	0
// OP_STORE_V	8427	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_smash2 = [123.000, hknight_smash3]
{
    ai_charge(13.000);
};

// hknight_smash3
// function begins at statement 19369, parm_start=11322
// OP_STATE	8604	11322	0
// OP_STORE_V	3556	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_smash3 = [124.000, hknight_smash4]
{
    ai_charge(9.000);
};

// hknight_smash4
// function begins at statement 19373, parm_start=11323
// OP_STATE	5666	11323	0
// OP_STORE_V	3931	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_smash4 = [125.000, hknight_smash5]
{
    ai_charge(11.000);
};

// hknight_smash5
// function begins at statement 19377, parm_start=11324
// OP_STATE	5669	11324	0
// OP_STORE_V	1931	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_smash5 = [126.000, hknight_smash6]
{
    ai_charge(10.000);
    ai_melee();
};

// hknight_smash6
// function begins at statement 19382, parm_start=11325
// OP_STATE	5672	11325	0
// OP_STORE_V	2307	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_smash6 = [127.000, hknight_smash7]
{
    ai_charge(7.000);
    ai_melee();
};

// hknight_smash7
// function begins at statement 19387, parm_start=11326
// OP_STATE	5675	11326	0
// OP_STORE_V	2532	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_smash7 = [128.000, hknight_smash8]
{
    ai_charge(12.000);
    ai_melee();
};

// hknight_smash8
// function begins at statement 19392, parm_start=11327
// OP_STATE	8612	11327	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_smash8 = [129.000, hknight_smash9]
{
    ai_charge(2.000);
    ai_melee();
};

// hknight_smash9
// function begins at statement 19397, parm_start=11328
// OP_STATE	8614	11328	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_smash9 = [130.000, hknight_smash10]
{
    ai_charge(3.000);
    ai_melee();
};

// hknight_smash10
// function begins at statement 19402, parm_start=11329
// OP_STATE	5677	11329	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_smash10 = [131.000, hknight_smash11]
{
    ai_charge(0.000);
};

// hknight_smash11
// function begins at statement 19406, parm_start=11330
// OP_STATE	5680	11089	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_smash11 = [132.000, hknight_run1]
{
    ai_charge(0.000);
};

// hknight_watk1
// function begins at statement 19410, parm_start=11331
// OP_STATE	5683	11331	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk1 = [133.000, hknight_watk2]
{
    ai_charge(2.000);
};

// hknight_watk2
// function begins at statement 19414, parm_start=11332
// OP_STATE	5686	11332	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk2 = [134.000, hknight_watk3]
{
    ai_charge(0.000);
};

// hknight_watk3
// function begins at statement 19418, parm_start=11333
// OP_STATE	8620	11333	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk3 = [135.000, hknight_watk4]
{
    ai_charge(0.000);
};

// hknight_watk4
// function begins at statement 19422, parm_start=11334
// OP_STATE	10436	11334	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk4 = [136.000, hknight_watk5]
{
    ai_melee();
};

// hknight_watk5
// function begins at statement 19425, parm_start=11335
// OP_STATE	5688	11335	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk5 = [137.000, hknight_watk6]
{
    ai_melee();
};

// hknight_watk6
// function begins at statement 19428, parm_start=11336
// OP_STATE	5691	11336	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk6 = [138.000, hknight_watk7]
{
    ai_melee();
};

// hknight_watk7
// function begins at statement 19431, parm_start=11337
// OP_STATE	5694	11337	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk7 = [139.000, hknight_watk8]
{
    ai_charge(1.000);
};

// hknight_watk8
// function begins at statement 19435, parm_start=11338
// OP_STATE	5697	11338	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk8 = [140.000, hknight_watk9]
{
    ai_charge(4.000);
};

// hknight_watk9
// function begins at statement 19439, parm_start=11339
// OP_STATE	10442	11339	0
// OP_STORE_V	1660	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk9 = [141.000, hknight_watk10]
{
    ai_charge(5.000);
};

// hknight_watk10
// function begins at statement 19443, parm_start=11340
// OP_STATE	10444	11340	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk10 = [142.000, hknight_watk11]
{
    ai_charge(3.000);
    ai_melee();
};

// hknight_watk11
// function begins at statement 19448, parm_start=11341
// OP_STATE	10446	11341	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk11 = [143.000, hknight_watk12]
{
    ai_charge(2.000);
    ai_melee();
};

// hknight_watk12
// function begins at statement 19453, parm_start=11342
// OP_STATE	10448	11342	0
// OP_STORE_V	929	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk12 = [144.000, hknight_watk13]
{
    ai_charge(2.000);
    ai_melee();
};

// hknight_watk13
// function begins at statement 19458, parm_start=11343
// OP_STATE	10450	11343	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk13 = [145.000, hknight_watk14]
{
    ai_charge(0.000);
};

// hknight_watk14
// function begins at statement 19462, parm_start=11344
// OP_STATE	10452	11344	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk14 = [146.000, hknight_watk15]
{
    ai_charge(0.000);
};

// hknight_watk15
// function begins at statement 19466, parm_start=11345
// OP_STATE	10454	11345	0
// OP_STORE_V	650	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk15 = [147.000, hknight_watk16]
{
    ai_charge(0.000);
};

// hknight_watk16
// function begins at statement 19470, parm_start=11346
// OP_STATE	10456	11346	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk16 = [148.000, hknight_watk17]
{
    ai_charge(1.000);
};

// hknight_watk17
// function begins at statement 19474, parm_start=11347
// OP_STATE	10458	11347	0
// OP_STORE_V	708	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk17 = [149.000, hknight_watk18]
{
    ai_charge(1.000);
    ai_melee();
};

// hknight_watk18
// function begins at statement 19479, parm_start=11348
// OP_STATE	2241	11348	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk18 = [150.000, hknight_watk19]
{
    ai_charge(3.000);
    ai_melee();
};

// hknight_watk19
// function begins at statement 19484, parm_start=11349
// OP_STATE	10461	11349	0
// OP_STORE_V	1835	4	0
// OP_CALL1	944	0	0
// OP_CALL0	1018	0	0
// OP_DONE	0	0	0
void () hknight_watk19 = [151.000, hknight_watk20]
{
    ai_charge(4.000);
    ai_melee();
};

// hknight_watk20
// function begins at statement 19489, parm_start=11350
// OP_STATE	10463	11350	0
// OP_STORE_V	2107	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk20 = [152.000, hknight_watk21]
{
    ai_charge(6.000);
};

// hknight_watk21
// function begins at statement 19493, parm_start=11351
// OP_STATE	10465	11351	0
// OP_STORE_V	2307	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk21 = [153.000, hknight_watk22]
{
    ai_charge(7.000);
};

// hknight_watk22
// function begins at statement 19497, parm_start=11352
// OP_STATE	10467	11089	0
// OP_STORE_V	819	4	0
// OP_CALL1	944	0	0
// OP_DONE	0	0	0
void () hknight_watk22 = [154.000, hknight_run1]
{
    ai_charge(3.000);
};

// hk_idle_sound
// function begins at statement 19501, parm_start=11352
// OP_CALL0	453	0	0
// OP_LT	1	720	11352
// OP_IFNOT	11352	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11353	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () hk_idle_sound = 
{
    
    if(random() < -1.000)
    {
        sound(self, CHAN_VOICE, "hknight/idle.wav", 1.000, ATTN_NORM);
    }
    
};

// hknight_pain
// function begins at statement 19511, parm_start=11355
// OP_LOAD_F	28	375	11357
// OP_GT	11357	31	11358
// OP_IFNOT	11358	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_STORE_V	11213	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_LOAD_F	28	375	11359
// OP_SUB_F	31	11359	11360
// OP_GT	11360	1660	11361
// OP_IFNOT	11361	6	0
// OP_CALL0	11211	0	0
// OP_ADDRESS	28	375	11362
// OP_ADD_F	31	708	11363
// OP_STOREP_F	11363	11362	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	1004	11364
// OP_GT	11364	11356	11365
// OP_IFNOT	11365	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	375	11366
// OP_ADD_F	31	708	11367
// OP_STOREP_F	11367	11366	0
// OP_CALL0	11211	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) hknight_pain = 
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/pain1.wav", 1.000, ATTN_NORM);
    
    if((time - self.pain_finished) > 5.000)
    {
        hknight_pain1();
        self.pain_finished = time + 1.000;
        return;
    }
    
    
    if((random() * 30.000) > damage)
    {
        return;
    }
    
    self.pain_finished = time + 1.000;
    hknight_pain1();
};

float hknight_type;
// hknight_melee
// function begins at statement 19540, parm_start=11370
// OP_ADD_F	11368	708	11370
// OP_STORE_F	11370	11368	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	11371	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_EQ_F	11368	708	11372
// OP_IFNOT	11372	3	0
// OP_CALL0	11309	0	0
// OP_GOTO	9	0	0
// OP_EQ_F	11368	929	11373
// OP_IFNOT	11373	3	0
// OP_CALL0	11319	0	0
// OP_GOTO	5	0	0
// OP_EQ_F	11368	819	11374
// OP_IFNOT	11374	3	0
// OP_CALL0	11330	0	0
// OP_STORE_F	650	11368	0
// OP_DONE	0	0	0
void () hknight_melee = 
{
    hknight_type = hknight_type + 1.000;
    sound(self, CHAN_WEAPON, "hknight/slash1.wav", 1.000, ATTN_NORM);
    if(hknight_type == 1.000)
    {
        hknight_slice1();
    }
    else
    {
        if(hknight_type == 2.000)
        {
            hknight_smash1();
        }
        else
        {
            
            if(hknight_type == 3.000)
            {
                hknight_watk1();
                hknight_type = 0.000;
            }
            
        }
        
    }
    
};

// monster_hell_knight
// function begins at statement 19561, parm_start=11376
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	11376	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11143	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11243	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	11150	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11248	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11213	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	1356	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11377	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	11371	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11353	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	11378	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	9247	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9246	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	104	11379
// OP_STOREP_F	241	11379	0
// OP_ADDRESS	28	103	11380
// OP_STOREP_F	230	11380	0
// OP_STORE_V	28	4	0
// OP_STORE_V	11376	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	2619	7	0
// OP_STORE_V	9340	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	152	11381
// OP_STOREP_F	2140	11381	0
// OP_ADDRESS	28	357	11382
// OP_STOREP_FNC	11175	11382	0
// OP_ADDRESS	28	358	11383
// OP_STOREP_FNC	11184	11383	0
// OP_ADDRESS	28	359	11384
// OP_STOREP_FNC	11089	11384	0
// OP_ADDRESS	28	361	11385
// OP_STOREP_FNC	11369	11385	0
// OP_ADDRESS	28	360	11386
// OP_STOREP_FNC	11277	11386	0
// OP_ADDRESS	28	362	11387
// OP_STOREP_FNC	11354	11387	0
// OP_ADDRESS	28	363	11388
// OP_STOREP_FNC	11240	11388	0
// OP_CALL0	6238	0	0
// OP_DONE	0	0	0
void () monster_hell_knight = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/hknight.mdl");
    precache_model2("progs/k_spike.mdl");
    precache_model2("progs/h_hellkn.mdl");
    precache_sound2("hknight/attack1.wav");
    precache_sound2("hknight/death1.wav");
    precache_sound2("hknight/pain1.wav");
    precache_sound2("hknight/sight1.wav");
    precache_sound("hknight/hit.wav");
    precache_sound2("hknight/slash1.wav");
    precache_sound2("hknight/idle.wav");
    precache_sound2("hknight/grunt.wav");
    precache_sound("knight/sword1.wav");
    precache_sound("knight/sword2.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/hknight.mdl");
    setsize(self, '-16.000 -16.000 -24.000', '16.000 16.000 40.000');
    self.health = 250.000;
    self.th_stand = hknight_stand1;
    self.th_walk = hknight_walk1;
    self.th_run = hknight_run1;
    self.th_melee = hknight_melee;
    self.th_missile = hknight_magicc1;
    self.th_pain = hknight_pain;
    self.th_die = hknight_die;
    walkmonster_start();
};

