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
    globaldef005051 = ((self.origin + self.mins) + (self.size * RA_PLAYERSTATTIME)) + (v_forward * 20);
    globaldef005055 = normalize(v_forward);
    globaldef005055_z = (FALSE - globaldef005055_z) + ((random() - RA_PLAYERSTATTIME) * 0.1);
    launch_spike(globaldef005051, globaldef005055);
    newmis.classname = "knightspike";
    setmodel(newmis, "progs/k_spike.mdl");
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = globaldef005055 * RA_MAXIDLETIME;
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
    
    if(random() > RA_PLAYERSTATTIME)
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
    ai_run(GLOBALDEF775_13);
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
        ThrowHead("progs/h_hellkn.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/death1.wav", TRUE, ATTN_NORM);
    if(random() > RA_PLAYERSTATTIME)
    {
        func001792();
    }
    else
    {
        func001804();
    }
    
};


// hknight_magica1
// function begins at statement 24854, parm_start=15255
// OP_STATE	9955	15255	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () hknight_magica1 = [79, func001815]
{
    ai_face();
};


// func001815
// function begins at statement 24857, parm_start=15256
// OP_STATE	2805	15256	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001815 = [80, func001816]
{
    ai_face();
};


// func001816
// function begins at statement 24860, parm_start=15257
// OP_STATE	8204	15257	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001816 = [81, func001817]
{
    ai_face();
};


// func001817
// function begins at statement 24863, parm_start=15258
// OP_STATE	9959	15258	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001817 = [82, func001818]
{
    ai_face();
};


// func001818
// function begins at statement 24866, parm_start=15259
// OP_STATE	9961	15259	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001818 = [83, func001819]
{
    ai_face();
};


// func001819
// function begins at statement 24869, parm_start=15260
// OP_STATE	7694	15260	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001819 = [84, func001820]
{
    ai_face();
};


// func001820
// function begins at statement 24872, parm_start=15261
// OP_STATE	9963	15261	0
// OP_STORE_V	277	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001820 = [85, func001821]
{
    func001747(CONTENT_SOLID);
};


// func001821
// function begins at statement 24876, parm_start=15262
// OP_STATE	9965	15262	0
// OP_STORE_V	276	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001821 = [86, func001822]
{
    func001747(CONTENT_EMPTY);
};


// func001822
// function begins at statement 24880, parm_start=15263
// OP_STATE	9967	15263	0
// OP_STORE_V	213	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001822 = [87, func001823]
{
    func001747(FALSE);
};


// func001823
// function begins at statement 24884, parm_start=15264
// OP_STATE	9969	15264	0
// OP_STORE_V	214	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001823 = [88, func001824]
{
    func001747(TRUE);
};


// func001824
// function begins at statement 24888, parm_start=15265
// OP_STATE	9971	15265	0
// OP_STORE_V	216	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001824 = [89, func001825]
{
    func001747(FL_SWIM);
};


// func001825
// function begins at statement 24892, parm_start=15266
// OP_STATE	2658	15266	0
// OP_STORE_V	228	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001825 = [90, func001826]
{
    func001747(MOVETYPE_WALK);
};


// func001826
// function begins at statement 24896, parm_start=15267
// OP_STATE	9974	15267	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001826 = [91, func001827]
{
    ai_face();
};


// func001827
// function begins at statement 24899, parm_start=15268
// OP_STATE	9976	15093	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001827 = [92, func001779]
{
    ai_face();
};


// hknight_magicb1
// function begins at statement 24902, parm_start=15269
// OP_STATE	9978	15269	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () hknight_magicb1 = [93, func001829]
{
    ai_face();
};


// func001829
// function begins at statement 24905, parm_start=15270
// OP_STATE	9979	15270	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001829 = [94, func001830]
{
    ai_face();
};


// func001830
// function begins at statement 24908, parm_start=15271
// OP_STATE	9981	15271	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001830 = [95, func001831]
{
    ai_face();
};


// func001831
// function begins at statement 24911, parm_start=15272
// OP_STATE	9983	15272	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001831 = [96, func001832]
{
    ai_face();
};


// func001832
// function begins at statement 24914, parm_start=15273
// OP_STATE	9985	15273	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001832 = [97, func001833]
{
    ai_face();
};


// func001833
// function begins at statement 24917, parm_start=15274
// OP_STATE	9987	15274	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001833 = [98, func001834]
{
    ai_face();
};


// func001834
// function begins at statement 24920, parm_start=15275
// OP_STATE	9989	15275	0
// OP_STORE_V	277	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001834 = [99, func001835]
{
    func001747(CONTENT_SOLID);
};


// func001835
// function begins at statement 24924, parm_start=15276
// OP_STATE	1997	15276	0
// OP_STORE_V	276	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001835 = [100, func001836]
{
    func001747(CONTENT_EMPTY);
};


// func001836
// function begins at statement 24928, parm_start=15277
// OP_STATE	8107	15277	0
// OP_STORE_V	213	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001836 = [101, func001837]
{
    func001747(FALSE);
};


// func001837
// function begins at statement 24932, parm_start=15278
// OP_STATE	8109	15278	0
// OP_STORE_V	214	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001837 = [102, func001838]
{
    func001747(TRUE);
};


// func001838
// function begins at statement 24936, parm_start=15279
// OP_STATE	8111	15279	0
// OP_STORE_V	216	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001838 = [103, func001839]
{
    func001747(FL_SWIM);
};


// func001839
// function begins at statement 24940, parm_start=15280
// OP_STATE	8114	15280	0
// OP_STORE_V	228	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001839 = [104, func001840]
{
    func001747(MOVETYPE_WALK);
};


// func001840
// function begins at statement 24944, parm_start=15281
// OP_STATE	9562	15093	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001840 = [105, func001779]
{
    ai_face();
};


// func001841
// function begins at statement 24947, parm_start=15282
// OP_STATE	14471	15282	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001841 = [155, func001842]
{
    ai_face();
};


// func001842
// function begins at statement 24950, parm_start=15283
// OP_STATE	14473	15283	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001842 = [156, func001843]
{
    ai_face();
};


// func001843
// function begins at statement 24953, parm_start=15284
// OP_STATE	14475	15284	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001843 = [157, func001844]
{
    ai_face();
};


// func001844
// function begins at statement 24956, parm_start=15285
// OP_STATE	14477	15285	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001844 = [158, func001845]
{
    ai_face();
};


// func001845
// function begins at statement 24959, parm_start=15286
// OP_STATE	14479	15286	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001845 = [159, func001846]
{
    ai_face();
};


// func001846
// function begins at statement 24962, parm_start=15287
// OP_STATE	12014	15287	0
// OP_STORE_V	277	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001846 = [160, func001847]
{
    func001747(CONTENT_SOLID);
};


// func001847
// function begins at statement 24966, parm_start=15288
// OP_STATE	2155	15288	0
// OP_STORE_V	276	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001847 = [161, func001848]
{
    func001747(CONTENT_EMPTY);
};


// func001848
// function begins at statement 24970, parm_start=15289
// OP_STATE	14483	15289	0
// OP_STORE_V	213	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001848 = [162, func001849]
{
    func001747(FALSE);
};


// func001849
// function begins at statement 24974, parm_start=15290
// OP_STATE	14486	15290	0
// OP_STORE_V	214	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001849 = [163, func001850]
{
    func001747(TRUE);
};


// func001850
// function begins at statement 24978, parm_start=15291
// OP_STATE	14488	15291	0
// OP_STORE_V	216	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001850 = [164, func001851]
{
    func001747(FL_SWIM);
};


// func001851
// function begins at statement 24982, parm_start=15292
// OP_STATE	14490	15093	0
// OP_STORE_V	228	4	0
// OP_CALL1	15095	0	0
// OP_DONE	0	0	0
void () func001851 = [165, func001779]
{
    func001747(MOVETYPE_WALK);
};


// func001852
// function begins at statement 24986, parm_start=15292
// OP_STATE	6707	15292	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001852 = [63, func001853]
{
    ai_charge(20);
};


// func001853
// function begins at statement 24990, parm_start=15293
// OP_STATE	220	15293	0
// OP_STORE_V	305	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001853 = [64, func001854]
{
    ai_charge(SVC_SIGNONNUM);
};


// func001854
// function begins at statement 24994, parm_start=15294
// OP_STATE	9934	15294	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001854 = [65, func001855]
{
    ai_charge(18);
};


// func001855
// function begins at statement 24998, parm_start=15295
// OP_STATE	9936	15295	0
// OP_STORE_V	218	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001855 = [66, func001856]
{
    ai_charge(FL_INWATER);
};


// func001856
// function begins at statement 25002, parm_start=15296
// OP_STATE	9938	15296	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001856 = [67, func001857]
{
    ai_charge(14);
};


// func001857
// function begins at statement 25006, parm_start=15297
// OP_STATE	8193	15297	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001857 = [68, func001858]
{
    ai_charge(20);
    ai_melee();
};


// func001858
// function begins at statement 25011, parm_start=15298
// OP_STATE	8196	15298	0
// OP_STORE_V	12465	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001858 = [69, func001859]
{
    ai_charge(21);
    ai_melee();
};


// func001859
// function begins at statement 25016, parm_start=15299
// OP_STATE	1536	15299	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001859 = [70, func001860]
{
    ai_charge(GLOBALDEF775_13);
    ai_melee();
};


// func001860
// function begins at statement 25021, parm_start=15300
// OP_STATE	8201	15300	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001860 = [71, func001861]
{
    ai_charge(20);
    ai_melee();
};


// func001861
// function begins at statement 25026, parm_start=15301
// OP_STATE	9943	15301	0
// OP_STORE_V	2323	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001861 = [72, func001862]
{
    ai_charge(20);
    ai_melee();
};


// func001862
// function begins at statement 25031, parm_start=15302
// OP_STATE	5487	15302	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001862 = [73, func001863]
{
    ai_charge(18);
    ai_melee();
};


// func001863
// function begins at statement 25036, parm_start=15303
// OP_STATE	9946	15303	0
// OP_STORE_V	218	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001863 = [74, func001864]
{
    ai_charge(FL_INWATER);
};


// func001864
// function begins at statement 25040, parm_start=15304
// OP_STATE	9173	15304	0
// OP_STORE_V	5693	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001864 = [75, func001865]
{
    ai_charge(14);
};


// func001865
// function begins at statement 25044, parm_start=15305
// OP_STATE	9949	15305	0
// OP_STORE_V	305	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001865 = [76, func001866]
{
    ai_charge(SVC_SIGNONNUM);
};


// func001866
// function begins at statement 25048, parm_start=15306
// OP_STATE	9951	15306	0
// OP_STORE_V	12465	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001866 = [77, func001867]
{
    ai_charge(21);
};


// func001867
// function begins at statement 25052, parm_start=15307
// OP_STATE	9953	15093	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001867 = [78, func001779]
{
    ai_charge(GLOBALDEF775_13);
};


// func001868
// function begins at statement 25056, parm_start=15308
// OP_STATE	9577	15308	0
// OP_CALL0	15175	0	0
// OP_STORE_V	304	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001868 = [106, func001869]
{
    func001749();
    ai_charge(SVC_TEMPENTITY);
    ai_melee();
};


// func001869
// function begins at statement 25062, parm_start=15309
// OP_STATE	9591	15309	0
// OP_STORE_V	6892	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001869 = [107, func001870]
{
    ai_charge(17);
    ai_melee();
};


// func001870
// function begins at statement 25067, parm_start=15310
// OP_STATE	9597	15310	0
// OP_STORE_V	791	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001870 = [108, func001871]
{
    ai_charge(GLOBALDEF774_12);
    ai_melee();
};


// func001871
// function begins at statement 25072, parm_start=15311
// OP_STATE	9600	15311	0
// OP_STORE_V	12467	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001871 = [109, func001872]
{
    ai_charge(22);
    ai_melee();
};


// func001872
// function begins at statement 25077, parm_start=15312
// OP_STATE	9603	15312	0
// OP_STORE_V	6133	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001872 = [110, func001873]
{
    ai_charge(18);
    ai_melee();
};


// func001873
// function begins at statement 25082, parm_start=15313
// OP_STATE	2224	15307	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001873 = [111, func001868]
{
    ai_charge(FL_CLIENT);
    ai_melee();
};


// func001874
// function begins at statement 25087, parm_start=15314
// OP_STATE	9608	15314	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001874 = [112, func001875]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};


// func001875
// function begins at statement 25091, parm_start=15315
// OP_STATE	9473	15315	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001875 = [113, func001876]
{
    ai_charge(MOVETYPE_TOSS);
};


// func001876
// function begins at statement 25095, parm_start=15316
// OP_STATE	9479	15316	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001876 = [114, func001877]
{
    ai_charge(GLOBALDEF775_13);
};


// func001877
// function begins at statement 25099, parm_start=15317
// OP_STATE	9482	15317	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001877 = [115, func001878]
{
    ai_charge(MOVETYPE_STEP);
};


// func001878
// function begins at statement 25103, parm_start=15318
// OP_STATE	9485	15318	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001878 = [116, func001879]
{
    ai_charge(MOVETYPE_PUSH);
    ai_melee();
};


// func001879
// function begins at statement 25108, parm_start=15319
// OP_STATE	9488	15319	0
// OP_STORE_V	765	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001879 = [117, func001880]
{
    ai_charge(GLOBALDEF748_15);
    ai_melee();
};


// func001880
// function begins at statement 25113, parm_start=15320
// OP_STATE	9491	15320	0
// OP_STORE_V	217	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001880 = [118, func001881]
{
    ai_charge(FL_CLIENT);
    ai_melee();
};


// func001881
// function begins at statement 25118, parm_start=15321
// OP_STATE	9493	15321	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001881 = [119, func001882]
{
    ai_charge(FL_SWIM);
    ai_melee();
};


// func001882
// function begins at statement 25123, parm_start=15322
// OP_STATE	3584	15322	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001882 = [120, func001883]
{
    ai_melee();
};


// func001883
// function begins at statement 25126, parm_start=15323
// OP_STATE	9498	15093	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001883 = [121, func001779]
{
    ai_charge(MOVETYPE_WALK);
};


// func001884
// function begins at statement 25130, parm_start=15324
// OP_STATE	9501	15324	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001884 = [122, func001885]
{
    ai_charge(TRUE);
};


// func001885
// function begins at statement 25134, parm_start=15325
// OP_STATE	12627	15325	0
// OP_STORE_V	792	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001885 = [123, func001886]
{
    ai_charge(GLOBALDEF775_13);
};


// func001886
// function begins at statement 25138, parm_start=15326
// OP_STATE	12629	15326	0
// OP_STORE_V	234	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001886 = [124, func001887]
{
    ai_charge(MOVETYPE_FLYMISSILE);
};


// func001887
// function begins at statement 25142, parm_start=15327
// OP_STATE	9503	15327	0
// OP_STORE_V	236	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001887 = [125, func001888]
{
    ai_charge(MOVETYPE_BOUNCEMISSILE);
};


// func001888
// function begins at statement 25146, parm_start=15328
// OP_STATE	9506	15328	0
// OP_STORE_V	235	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001888 = [126, func001889]
{
    ai_charge(MOVETYPE_BOUNCE);
    ai_melee();
};


// func001889
// function begins at statement 25151, parm_start=15329
// OP_STATE	9509	15329	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001889 = [127, func001890]
{
    ai_charge(MOVETYPE_PUSH);
    ai_melee();
};


// func001890
// function begins at statement 25156, parm_start=15330
// OP_STATE	221	15330	0
// OP_STORE_V	791	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001890 = [128, func001891]
{
    ai_charge(GLOBALDEF774_12);
    ai_melee();
};


// func001891
// function begins at statement 25161, parm_start=15331
// OP_STATE	12637	15331	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001891 = [129, func001892]
{
    ai_charge(FL_SWIM);
    ai_melee();
};


// func001892
// function begins at statement 25166, parm_start=15332
// OP_STATE	12639	15332	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001892 = [130, func001893]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};


// func001893
// function begins at statement 25171, parm_start=15333
// OP_STATE	9513	15333	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001893 = [131, func001894]
{
    ai_charge(FALSE);
};


// func001894
// function begins at statement 25175, parm_start=15334
// OP_STATE	9516	15093	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001894 = [132, func001779]
{
    ai_charge(FALSE);
};


// func001895
// function begins at statement 25179, parm_start=15335
// OP_STATE	9519	15335	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001895 = [133, func001896]
{
    ai_charge(FL_SWIM);
};


// func001896
// function begins at statement 25183, parm_start=15336
// OP_STATE	9522	15336	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001896 = [134, func001897]
{
    ai_charge(FALSE);
};


// func001897
// function begins at statement 25187, parm_start=15337
// OP_STATE	12645	15337	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001897 = [135, func001898]
{
    ai_charge(FALSE);
};


// func001898
// function begins at statement 25191, parm_start=15338
// OP_STATE	14438	15338	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001898 = [136, func001899]
{
    ai_melee();
};


// func001899
// function begins at statement 25194, parm_start=15339
// OP_STATE	9524	15339	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001899 = [137, func001900]
{
    ai_melee();
};


// func001900
// function begins at statement 25197, parm_start=15340
// OP_STATE	9527	15340	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001900 = [138, func001901]
{
    ai_melee();
};


// func001901
// function begins at statement 25200, parm_start=15341
// OP_STATE	9530	15341	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001901 = [139, func001902]
{
    ai_charge(TRUE);
};


// func001902
// function begins at statement 25204, parm_start=15342
// OP_STATE	9533	15342	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001902 = [140, func001903]
{
    ai_charge(MOVETYPE_STEP);
};


// func001903
// function begins at statement 25208, parm_start=15343
// OP_STATE	14444	15343	0
// OP_STORE_V	230	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001903 = [141, func001904]
{
    ai_charge(MOVETYPE_FLY);
};


// func001904
// function begins at statement 25212, parm_start=15344
// OP_STATE	14446	15344	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001904 = [142, func001905]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};


// func001905
// function begins at statement 25217, parm_start=15345
// OP_STATE	14448	15345	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001905 = [143, func001906]
{
    ai_charge(FL_SWIM);
    ai_melee();
};


// func001906
// function begins at statement 25222, parm_start=15346
// OP_STATE	14450	15346	0
// OP_STORE_V	216	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001906 = [144, func001907]
{
    ai_charge(FL_SWIM);
    ai_melee();
};


// func001907
// function begins at statement 25227, parm_start=15347
// OP_STATE	14452	15347	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001907 = [145, func001908]
{
    ai_charge(FALSE);
};


// func001908
// function begins at statement 25231, parm_start=15348
// OP_STATE	14454	15348	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001908 = [146, func001909]
{
    ai_charge(FALSE);
};


// func001909
// function begins at statement 25235, parm_start=15349
// OP_STATE	14456	15349	0
// OP_STORE_V	213	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001909 = [147, func001910]
{
    ai_charge(FALSE);
};


// func001910
// function begins at statement 25239, parm_start=15350
// OP_STATE	14458	15350	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001910 = [148, func001911]
{
    ai_charge(TRUE);
};


// func001911
// function begins at statement 25243, parm_start=15351
// OP_STATE	14460	15351	0
// OP_STORE_V	214	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001911 = [149, func001912]
{
    ai_charge(TRUE);
    ai_melee();
};


// func001912
// function begins at statement 25248, parm_start=15352
// OP_STATE	2003	15352	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001912 = [150, func001913]
{
    ai_charge(MOVETYPE_WALK);
    ai_melee();
};


// func001913
// function begins at statement 25253, parm_start=15353
// OP_STATE	14463	15353	0
// OP_STORE_V	229	4	0
// OP_CALL1	3287	0	0
// OP_CALL0	3324	0	0
// OP_DONE	0	0	0
void () func001913 = [151, func001914]
{
    ai_charge(MOVETYPE_STEP);
    ai_melee();
};


// func001914
// function begins at statement 25258, parm_start=15354
// OP_STATE	14465	15354	0
// OP_STORE_V	231	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001914 = [152, func001915]
{
    ai_charge(MOVETYPE_TOSS);
};


// func001915
// function begins at statement 25262, parm_start=15355
// OP_STATE	14467	15355	0
// OP_STORE_V	232	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001915 = [153, func001916]
{
    ai_charge(MOVETYPE_PUSH);
};


// func001916
// function begins at statement 25266, parm_start=15356
// OP_STATE	14469	15093	0
// OP_STORE_V	228	4	0
// OP_CALL1	3287	0	0
// OP_DONE	0	0	0
void () func001916 = [154, func001779]
{
    ai_charge(MOVETYPE_WALK);
};


// func001917
// function begins at statement 25270, parm_start=15356
// OP_CALL0	457	0	0
// OP_LT	1	3267	15356
// OP_IFNOT	15356	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	15357	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001917 = 
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "hknight/idle.wav", TRUE, ATTN_NORM);
    }
    
};


// func001918
// function begins at statement 25280, parm_start=15359
// OP_LOAD_F	28	379	15361
// OP_GT	15361	31	15362
// OP_IFNOT	15362	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	15217	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	379	15363
// OP_SUB_F	31	15363	15364
// OP_GT	15364	230	15365
// OP_IFNOT	15365	6	0
// OP_CALL0	15215	0	0
// OP_ADDRESS	28	379	15366
// OP_ADD_F	31	214	15367
// OP_STOREP_F	15367	15366	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	309	15368
// OP_GT	15368	15360	15369
// OP_IFNOT	15369	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	379	15370
// OP_ADD_F	31	214	15371
// OP_STOREP_F	15371	15370	0
// OP_CALL0	15215	0	0
// OP_DONE	0	0	0
void (entity globaldef005233, float globaldef005234) func001918 = 
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "hknight/pain1.wav", TRUE, ATTN_NORM);
    
    if((time - self.pain_finished) > MOVETYPE_FLY)
    {
        func001787();
        self.pain_finished = time + TRUE;
        return;
    }
    
    
    if((random() * SVC_INTERMISSION) > globaldef005234)
    {
        return;
    }
    
    self.pain_finished = time + TRUE;
    func001787();
};

float globaldef005235;

// func001919
// function begins at statement 25309, parm_start=15374
// OP_ADD_F	15372	214	15374
// OP_STORE_F	15374	15372	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	15375	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_EQ_F	15372	214	15376
// OP_IFNOT	15376	3	0
// OP_CALL0	15313	0	0
// OP_GOTO	9	0	0
// OP_EQ_F	15372	216	15377
// OP_IFNOT	15377	3	0
// OP_CALL0	15323	0	0
// OP_GOTO	5	0	0
// OP_EQ_F	15372	228	15378
// OP_IFNOT	15378	3	0
// OP_CALL0	15334	0	0
// OP_STORE_F	213	15372	0
// OP_DONE	0	0	0
void () func001919 = 
{
    globaldef005235 = globaldef005235 + TRUE;
    sound(self, CHAN_WEAPON, "hknight/slash1.wav", TRUE, ATTN_NORM);
    if(globaldef005235 == TRUE)
    {
        func001874();
    }
    else
    {
        if(globaldef005235 == FL_SWIM)
        {
            func001884();
        }
        else
        {
            
            if(globaldef005235 == MOVETYPE_WALK)
            {
                func001895();
                globaldef005235 = FALSE;
            }
            
        }
        
    }
    
};


// monster_hell_knight
// function begins at statement 25330, parm_start=15380
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	15380	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15147	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15247	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	15154	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15252	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15217	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	3683	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15381	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	15375	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15357	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	15382	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	13255	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	13254	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	104	15383
// OP_STOREP_F	240	15383	0
// OP_ADDRESS	28	103	15384
// OP_STOREP_F	229	15384	0
// OP_STORE_V	28	4	0
// OP_STORE_V	15380	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	13346	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	152	15385
// OP_STOREP_F	738	15385	0
// OP_ADDRESS	28	361	15386
// OP_STOREP_FNC	15179	15386	0
// OP_ADDRESS	28	362	15387
// OP_STOREP_FNC	15188	15387	0
// OP_ADDRESS	28	363	15388
// OP_STOREP_FNC	15093	15388	0
// OP_ADDRESS	28	365	15389
// OP_STOREP_FNC	15373	15389	0
// OP_ADDRESS	28	364	15390
// OP_STOREP_FNC	15281	15390	0
// OP_ADDRESS	28	366	15391
// OP_STOREP_FNC	15358	15391	0
// OP_ADDRESS	28	367	15392
// OP_STOREP_FNC	15244	15392	0
// OP_CALL0	10107	0	0
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
    setsize(self, VEC_HULL_MIN, '16 16 40');
    self.health = GLOBALDEF721_250;
    self.th_stand = func001750;
    self.th_walk = func001759;
    self.th_run = func001779;
    self.th_melee = func001919;
    self.th_missile = func001841;
    self.th_pain = func001918;
    self.th_die = func001813;
    walkmonster_start();
};

