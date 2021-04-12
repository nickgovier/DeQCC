void () func001852;
void () func001779;
void () func001917;

// func001747
// function begins at statement 24496, parm_start=15096
// OP_LOAD_ENT	28	181	15106
// OP_LOAD_V	15106	105	15107
// OP_LOAD_V	28	105	15110
// OP_SUB_V	15107	15110	15113
// OP_STORE_V	15113	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	15097	0
// OP_MUL_F	15096	231	15116
// OP_ADD_F	15098	15116	15117
// OP_STORE_F	15117	15098	0
// OP_STORE_V	15097	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	15118
// OP_LOAD_V	28	134	15121
// OP_ADD_V	15118	15121	15124
// OP_LOAD_V	28	142	15127
// OP_MUL_VF	15127	539	15130
// OP_ADD_V	15124	15130	15133
// OP_MUL_VF	59	2323	15136
// OP_ADD_V	15133	15136	15139
// OP_STORE_V	15139	15100	0
// OP_STORE_V	59	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	15103	0
// OP_SUB_F	213	15105	15142
// OP_CALL0	457	0	0
// OP_SUB_F	1	539	15143
// OP_MUL_F	15143	3036	15144
// OP_ADD_F	15142	15144	15145
// OP_STORE_F	15145	15105	0
// OP_STORE_V	15100	4	0
// OP_STORE_V	15103	7	0
// OP_CALL2	6018	0	0
// OP_ADDRESS	350	129	15146
// OP_STOREP_S	6118	15146	0
// OP_STORE_V	350	4	0
// OP_STORE_V	15147	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	350	113	15148
// OP_MUL_VF	15103	540	15151
// OP_STOREP_V	15151	15148	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	15154	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void (float globaldef005046) func001747 = 
{
    local vector globaldef005047;
    local vector globaldef005051;
    local vector globaldef005055;
    globaldef005047 = vectoangles(self.enemy.origin - self.origin);
    globaldef005047_y = globaldef005047_y + (globaldef005046 * MOVETYPE_TOSS);
    makevectors(globaldef005047);
    globaldef005051 = ((self.origin + self.mins) + (self.size * GLOBALDEFFIVETWOTWO)) + (v_forward * 20);
    globaldef005055 = normalize(v_forward);
    globaldef005055_z = (FALSE - globaldef005055_z) + ((random() - GLOBALDEFFIVETWOTWO) * 0.1);
    func000278(globaldef005051, globaldef005055);
    newmis.classname = "knightspike";
    setmodel(newmis, "progs/k_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = globaldef005055 * GLOBALDEFFIVETWOTHREE;
    sound(self, CHAN_WEAPON, "hknight/attack1.wav", TRUE, ATTN_NORM);
};


// func001748
// function begins at statement 24548, parm_start=15156
// OP_NOT_F	3191	0	15156
// OP_IFNOT	15156	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	378	15157
// OP_LT	31	15157	15158
// OP_IFNOT	15158	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	108	15159
// OP_LOAD_ENT	28	181	15160
// OP_LOAD_F	15160	108	15161
// OP_SUB_F	15159	15161	15162
// OP_STORE_V	15162	4	0
// OP_CALL1	488	0	0
// OP_GT	1	2323	15163
// OP_IFNOT	15163	2	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	15164
// OP_LOAD_ENT	28	181	15167
// OP_LOAD_V	15167	105	15168
// OP_SUB_V	15164	15168	15171
// OP_STORE_V	15171	4	0
// OP_CALL1	462	0	0
// OP_LT	1	2805	15174
// OP_IFNOT	15174	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	3163	0	0
// OP_CALL0	15092	0	0
// OP_DONE	0	0	0
void () func001748 = 
{
    
    if(!enemy_vis)
    {
        return;
    }
    
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    
    if((fabs(self.origin_z - self.enemy.origin_z)) > 20)
    {
        return;
    }
    
    
    if((vlen(self.origin - self.enemy.origin)) < 80)
    {
        return;
    }
    
    SUB_AttackFinished(FL_SWIM);
    func001852();
};


// func001749
// function begins at statement 24577, parm_start=15176
// OP_LOAD_F	28	378	15176
// OP_GT	31	15176	15177
// OP_IFNOT	15177	5	0
// OP_STORE_V	228	4	0
// OP_CALL1	3163	0	0
// OP_CALL0	15093	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_GT	1	539	15178
// OP_IFNOT	15178	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13254	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	13255	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001749 = 
{
    
    if(time > self.attack_finished)
    {
        SUB_AttackFinished(MOVETYPE_WALK);
        func001779();
        return;
    }
    
    if(random() > GLOBALDEFFIVETWOTWO)
    {
        sound(self, CHAN_WEAPON, "knight/sword2.wav", TRUE, ATTN_NORM);
    }
    else
    {
        sound(self, CHAN_WEAPON, "knight/sword1.wav", TRUE, ATTN_NORM);
    }
    
};


// func001750
// function begins at statement 24601, parm_start=15180
// OP_STATE	213	15180	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001750 = [0, func001751]
{
    ai_stand();
};


// func001751
// function begins at statement 24604, parm_start=15181
// OP_STATE	214	15181	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001751 = [1, func001752]
{
    ai_stand();
};


// func001752
// function begins at statement 24607, parm_start=15182
// OP_STATE	216	15182	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001752 = [2, func001753]
{
    ai_stand();
};


// func001753
// function begins at statement 24610, parm_start=15183
// OP_STATE	228	15183	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001753 = [3, func001754]
{
    ai_stand();
};


// func001754
// function begins at statement 24613, parm_start=15184
// OP_STATE	229	15184	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001754 = [4, func001755]
{
    ai_stand();
};


// func001755
// function begins at statement 24616, parm_start=15185
// OP_STATE	230	15185	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001755 = [5, func001756]
{
    ai_stand();
};


// func001756
// function begins at statement 24619, parm_start=15186
// OP_STATE	231	15186	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001756 = [6, func001757]
{
    ai_stand();
};


// func001757
// function begins at statement 24622, parm_start=15187
// OP_STATE	232	15187	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001757 = [7, func001758]
{
    ai_stand();
};


// func001758
// function begins at statement 24625, parm_start=15188
// OP_STATE	217	15179	0
// OP_CALL0	3802	0	0
// OP_DONE	0	0	0
void () func001758 = [8, func001750]
{
    ai_stand();
};


// func001759
// function begins at statement 24628, parm_start=15189
// OP_STATE	234	15189	0
// OP_CALL0	15094	0	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001759 = [9, func001760]
{
    func001917();
    ai_walk(FL_SWIM);
};


// func001760
// function begins at statement 24633, parm_start=15190
// OP_STATE	235	15190	0
// OP_STORE_V	230	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001760 = [10, func001761]
{
    ai_walk(MOVETYPE_FLY);
};


// func001761
// function begins at statement 24637, parm_start=15191
// OP_STATE	236	15191	0
// OP_STORE_V	230	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001761 = [11, func001762]
{
    ai_walk(MOVETYPE_FLY);
};


// func001762
// function begins at statement 24641, parm_start=15192
// OP_STATE	791	15192	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001762 = [12, func001763]
{
    ai_walk(MOVETYPE_STEP);
};


// func001763
// function begins at statement 24645, parm_start=15193
// OP_STATE	792	15193	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001763 = [13, func001764]
{
    ai_walk(MOVETYPE_STEP);
};


// func001764
// function begins at statement 24649, parm_start=15194
// OP_STATE	5693	15194	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001764 = [14, func001765]
{
    ai_walk(FL_SWIM);
};


// func001765
// function begins at statement 24653, parm_start=15195
// OP_STATE	765	15195	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001765 = [15, func001766]
{
    ai_walk(FL_SWIM);
};


// func001766
// function begins at statement 24657, parm_start=15196
// OP_STATE	218	15196	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001766 = [16, func001767]
{
    ai_walk(MOVETYPE_WALK);
};


// func001767
// function begins at statement 24661, parm_start=15197
// OP_STATE	6892	15197	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001767 = [17, func001768]
{
    ai_walk(MOVETYPE_WALK);
};


// func001768
// function begins at statement 24665, parm_start=15198
// OP_STATE	6133	15198	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001768 = [18, func001769]
{
    ai_walk(MOVETYPE_STEP);
};


// func001769
// function begins at statement 24669, parm_start=15199
// OP_STATE	6895	15199	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001769 = [19, func001770]
{
    ai_walk(MOVETYPE_WALK);
};


// func001770
// function begins at statement 24673, parm_start=15200
// OP_STATE	2323	15200	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001770 = [20, func001771]
{
    ai_walk(MOVETYPE_STEP);
};


// func001771
// function begins at statement 24677, parm_start=15201
// OP_STATE	12465	15201	0
// OP_STORE_V	231	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001771 = [21, func001772]
{
    ai_walk(MOVETYPE_TOSS);
};


// func001772
// function begins at statement 24681, parm_start=15202
// OP_STATE	12467	15202	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001772 = [22, func001773]
{
    ai_walk(FL_SWIM);
};


// func001773
// function begins at statement 24685, parm_start=15203
// OP_STATE	304	15203	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001773 = [23, func001774]
{
    ai_walk(FL_SWIM);
};


// func001774
// function begins at statement 24689, parm_start=15204
// OP_STATE	736	15204	0
// OP_STORE_V	229	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001774 = [24, func001775]
{
    ai_walk(MOVETYPE_STEP);
};


// func001775
// function begins at statement 24693, parm_start=15205
// OP_STATE	305	15205	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001775 = [25, func001776]
{
    ai_walk(MOVETYPE_WALK);
};


// func001776
// function begins at statement 24697, parm_start=15206
// OP_STATE	306	15206	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001776 = [26, func001777]
{
    ai_walk(MOVETYPE_WALK);
};


// func001777
// function begins at statement 24701, parm_start=15207
// OP_STATE	307	15207	0
// OP_STORE_V	228	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001777 = [27, func001778]
{
    ai_walk(MOVETYPE_WALK);
};


// func001778
// function begins at statement 24705, parm_start=15208
// OP_STATE	308	15188	0
// OP_STORE_V	216	4	0
// OP_CALL1	3794	0	0
// OP_DONE	0	0	0
void () func001778 = [28, func001759]
{
    ai_walk(FL_SWIM);
};


// func001779
// function begins at statement 24709, parm_start=15208
// OP_STATE	9664	15208	0
// OP_CALL0	15094	0	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3873	0	0
// OP_CALL0	15155	0	0
// OP_DONE	0	0	0
void () func001779 = [29, func001780]
{
    func001917();
    ai_run(20);
    func001748();
};


// func001780
// function begins at statement 24715, parm_start=15209
// OP_STATE	309	15209	0
// OP_STORE_V	305	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001780 = [30, func001781]
{
    ai_run(SVC_SIGNONNUM);
};


// func001781
// function begins at statement 24719, parm_start=15210
// OP_STATE	310	15210	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001781 = [31, func001782]
{
    ai_run(18);
};


// func001782
// function begins at statement 24723, parm_start=15211
// OP_STATE	219	15211	0
// OP_STORE_V	218	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001782 = [32, func001783]
{
    ai_run(FL_INWATER);
};


// func001783
// function begins at statement 24727, parm_start=15212
// OP_STATE	312	15212	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001783 = [33, func001784]
{
    ai_run(14);
};


// func001784
// function begins at statement 24731, parm_start=15213
// OP_STATE	9671	15213	0
// OP_STORE_V	305	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001784 = [34, func001785]
{
    ai_run(SVC_SIGNONNUM);
};


// func001785
// function begins at statement 24735, parm_start=15214
// OP_STATE	5878	15214	0
// OP_STORE_V	12465	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001785 = [35, func001786]
{
    ai_run(21);
};


// func001786
// function begins at statement 24739, parm_start=15215
// OP_STATE	9655	15093	0
// OP_STORE_V	792	4	0
// OP_CALL1	3873	0	0
// OP_DONE	0	0	0
void () func001786 = [36, func001779]
{
    ai_run(globaldef000775);
};


// func001787
// function begins at statement 24743, parm_start=15216
// OP_STATE	9657	15216	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	15217	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001787 = [37, func001788]
{
    sound(self, CHAN_VOICE, "hknight/pain1.wav", TRUE, ATTN_NORM);
};


// func001788
// function begins at statement 24751, parm_start=15218
// OP_STATE	9659	15218	0
// OP_DONE	0	0	0
void () func001788 = [38, func001789]
{
};


// func001789
// function begins at statement 24753, parm_start=15219
// OP_STATE	9661	15219	0
// OP_DONE	0	0	0
void () func001789 = [39, func001790]
{
};


// func001790
// function begins at statement 24755, parm_start=15220
// OP_STATE	746	15220	0
// OP_DONE	0	0	0
void () func001790 = [40, func001791]
{
};


// func001791
// function begins at statement 24757, parm_start=15221
// OP_STATE	9993	15093	0
// OP_DONE	0	0	0
void () func001791 = [41, func001779]
{
};


// func001792
// function begins at statement 24759, parm_start=15222
// OP_STATE	9995	15222	0
// OP_STORE_V	235	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func001792 = [42, func001793]
{
    ai_forward(MOVETYPE_BOUNCE);
};


// func001793
// function begins at statement 24763, parm_start=15223
// OP_STATE	9997	15223	0
// OP_STORE_V	217	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func001793 = [43, func001794]
{
    ai_forward(FL_CLIENT);
};


// func001794
// function begins at statement 24767, parm_start=15224
// OP_STATE	9999	15224	0
// OP_ADDRESS	28	104	15225
// OP_STOREP_F	237	15225	0
// OP_STORE_V	232	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func001794 = [44, func001795]
{
    self.solid = SOLID_NOT;
    ai_forward(MOVETYPE_PUSH);
};


// func001795
// function begins at statement 24773, parm_start=15226
// OP_STATE	2598	15226	0
// OP_DONE	0	0	0
void () func001795 = [45, func001796]
{
};


// func001796
// function begins at statement 24775, parm_start=15227
// OP_STATE	10002	15227	0
// OP_DONE	0	0	0
void () func001796 = [46, func001797]
{
};


// func001797
// function begins at statement 24777, parm_start=15228
// OP_STATE	10004	15228	0
// OP_DONE	0	0	0
void () func001797 = [47, func001798]
{
};


// func001798
// function begins at statement 24779, parm_start=15229
// OP_STATE	10006	15229	0
// OP_DONE	0	0	0
void () func001798 = [48, func001799]
{
};


// func001799
// function begins at statement 24781, parm_start=15230
// OP_STATE	10008	15230	0
// OP_STORE_V	235	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func001799 = [49, func001800]
{
    ai_forward(MOVETYPE_BOUNCE);
};


// func001800
// function begins at statement 24785, parm_start=15231
// OP_STATE	1470	15231	0
// OP_STORE_V	236	4	0
// OP_CALL1	3782	0	0
// OP_DONE	0	0	0
void () func001800 = [50, func001801]
{
    ai_forward(MOVETYPE_BOUNCEMISSILE);
};


// func001801
// function begins at statement 24789, parm_start=15232
// OP_STATE	9911	15232	0
// OP_DONE	0	0	0
void () func001801 = [51, func001802]
{
};


// func001802
// function begins at statement 24791, parm_start=15233
// OP_STATE	9913	15233	0
// OP_DONE	0	0	0
void () func001802 = [52, func001803]
{
};


// func001803
// function begins at statement 24793, parm_start=15234
// OP_STATE	9915	15233	0
// OP_DONE	0	0	0
void () func001803 = [53, func001803]
{
};


// func001804
// function begins at statement 24795, parm_start=15235
// OP_STATE	9917	15235	0
// OP_DONE	0	0	0
void () func001804 = [54, func001805]
{
};


// func001805
// function begins at statement 24797, parm_start=15236
// OP_STATE	9919	15236	0
// OP_DONE	0	0	0
void () func001805 = [55, func001806]
{
};


// func001806
// function begins at statement 24799, parm_start=15237
// OP_STATE	9921	15237	0
// OP_ADDRESS	28	104	15238
// OP_STOREP_F	237	15238	0
// OP_DONE	0	0	0
void () func001806 = [56, func001807]
{
    self.solid = SOLID_NOT;
};


// func001807
// function begins at statement 24803, parm_start=15239
// OP_STATE	9923	15239	0
// OP_DONE	0	0	0
void () func001807 = [57, func001808]
{
};


// func001808
// function begins at statement 24805, parm_start=15240
// OP_STATE	9925	15240	0
// OP_DONE	0	0	0
void () func001808 = [58, func001809]
{
};


// func001809
// function begins at statement 24807, parm_start=15241
// OP_STATE	2783	15241	0
// OP_DONE	0	0	0
void () func001809 = [59, func001810]
{
};


// func001810
// function begins at statement 24809, parm_start=15242
// OP_STATE	2019	15242	0
// OP_DONE	0	0	0
void () func001810 = [60, func001811]
{
};


// func001811
// function begins at statement 24811, parm_start=15243
// OP_STATE	9928	15243	0
// OP_DONE	0	0	0
void () func001811 = [61, func001812]
{
};


// func001812
// function begins at statement 24813, parm_start=15244
// OP_STATE	9930	15243	0
// OP_DONE	0	0	0
void () func001812 = [62, func001812]
{
};


// func001813
// function begins at statement 24815, parm_start=15245
// OP_LOAD_F	28	152	15245
// OP_LT	15245	9236	15246
// OP_IFNOT	15246	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6661	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	15247	4	0
// OP_LOAD_F	28	152	15248
// OP_STORE_V	15248	7	0
// OP_CALL2	9802	0	0
// OP_STORE_V	6687	4	0
// OP_LOAD_F	28	152	15249
// OP_STORE_V	15249	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6688	4	0
// OP_LOAD_F	28	152	15250
// OP_STORE_V	15250	7	0
// OP_CALL2	9771	0	0
// OP_STORE_V	6689	4	0
// OP_LOAD_F	28	152	15251
// OP_STORE_V	15251	7	0
// OP_CALL2	9771	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	15252	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	457	0	0
// OP_GT	1	539	15253
// OP_IFNOT	15253	3	0
// OP_CALL0	15221	0	0
// OP_GOTO	2	0	0
// OP_CALL0	15234	0	0
// OP_DONE	0	0	0
void () func001813 = 
{
    
    if(self.health < -40)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        func000462("progs/h_hellkn.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/death1.wav", TRUE, ATTN_NORM);
    if(random() > GLOBALDEFFIVETWOTWO)
    {
        func001792();
    }
    else
    {
        func001804();
    }
    
};

