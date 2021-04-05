void () shalrath_pain;
void () ShalMissile;
// shal_stand
// function begins at statement 17172, parm_start=10063
// OP_STATE	301	10062	0
// OP_CALL0	1739	0	0
// OP_DONE	0	0	0
void () shal_stand = [23, shal_stand]
{
    ai_stand();
};

// shal_walk1
// function begins at statement 17175, parm_start=10064
// OP_STATE	5005	10064	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	10065
// OP_IFNOT	10065	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10066	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk1 = [24, shal_walk2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "shalrath/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_walk(MOVETYPE_TOSS);
};

// shal_walk2
// function begins at statement 17188, parm_start=10067
// OP_STATE	2261	10067	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk2 = [25, shal_walk3]
{
    ai_walk(MOVETYPE_STEP);
};

// shal_walk3
// function begins at statement 17192, parm_start=10068
// OP_STATE	8433	10068	0
// OP_STORE_V	213	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk3 = [26, shal_walk4]
{
    ai_walk(FALSE);
};

// shal_walk4
// function begins at statement 17196, parm_start=10069
// OP_STATE	302	10069	0
// OP_STORE_V	213	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk4 = [27, shal_walk5]
{
    ai_walk(FALSE);
};

// shal_walk5
// function begins at statement 17200, parm_start=10070
// OP_STATE	303	10070	0
// OP_STORE_V	213	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk5 = [28, shal_walk6]
{
    ai_walk(FALSE);
};

// shal_walk6
// function begins at statement 17204, parm_start=10071
// OP_STATE	5692	10071	0
// OP_STORE_V	213	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk6 = [29, shal_walk7]
{
    ai_walk(FALSE);
};

// shal_walk7
// function begins at statement 17208, parm_start=10072
// OP_STATE	304	10072	0
// OP_STORE_V	230	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk7 = [30, shal_walk8]
{
    ai_walk(MOVETYPE_FLY);
};

// shal_walk8
// function begins at statement 17212, parm_start=10073
// OP_STATE	305	10073	0
// OP_STORE_V	231	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk8 = [31, shal_walk9]
{
    ai_walk(MOVETYPE_TOSS);
};

// shal_walk9
// function begins at statement 17216, parm_start=10074
// OP_STATE	219	10074	0
// OP_STORE_V	230	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk9 = [32, shal_walk10]
{
    ai_walk(MOVETYPE_FLY);
};

// shal_walk10
// function begins at statement 17220, parm_start=10075
// OP_STATE	307	10075	0
// OP_STORE_V	213	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk10 = [33, shal_walk11]
{
    ai_walk(FALSE);
};

// shal_walk11
// function begins at statement 17224, parm_start=10076
// OP_STATE	5699	10076	0
// OP_STORE_V	229	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk11 = [34, shal_walk12]
{
    ai_walk(MOVETYPE_STEP);
};

// shal_walk12
// function begins at statement 17228, parm_start=10077
// OP_STATE	301	10063	0
// OP_STORE_V	230	4	0
// OP_CALL1	1731	0	0
// OP_DONE	0	0	0
void () shal_walk12 = [23, shal_walk1]
{
    ai_walk(MOVETYPE_FLY);
};

// shal_run1
// function begins at statement 17232, parm_start=10078
// OP_STATE	5005	10078	0
// OP_CALL0	452	0	0
// OP_LT	1	1226	10079
// OP_IFNOT	10079	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10066	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	231	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run1 = [24, shal_run2]
{
    
    if(random() < 0.2)
    {
        sound(self, CHAN_VOICE, "shalrath/idle.wav", TRUE, ATTN_IDLE);
    }
    
    ai_run(MOVETYPE_TOSS);
};

// shal_run2
// function begins at statement 17245, parm_start=10080
// OP_STATE	2261	10080	0
// OP_STORE_V	229	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run2 = [25, shal_run3]
{
    ai_run(MOVETYPE_STEP);
};

// shal_run3
// function begins at statement 17249, parm_start=10081
// OP_STATE	8433	10081	0
// OP_STORE_V	213	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run3 = [26, shal_run4]
{
    ai_run(FALSE);
};

// shal_run4
// function begins at statement 17253, parm_start=10082
// OP_STATE	302	10082	0
// OP_STORE_V	213	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run4 = [27, shal_run5]
{
    ai_run(FALSE);
};

// shal_run5
// function begins at statement 17257, parm_start=10083
// OP_STATE	303	10083	0
// OP_STORE_V	213	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run5 = [28, shal_run6]
{
    ai_run(FALSE);
};

// shal_run6
// function begins at statement 17261, parm_start=10084
// OP_STATE	5692	10084	0
// OP_STORE_V	213	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run6 = [29, shal_run7]
{
    ai_run(FALSE);
};

// shal_run7
// function begins at statement 17265, parm_start=10085
// OP_STATE	304	10085	0
// OP_STORE_V	230	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run7 = [30, shal_run8]
{
    ai_run(MOVETYPE_FLY);
};

// shal_run8
// function begins at statement 17269, parm_start=10086
// OP_STATE	305	10086	0
// OP_STORE_V	231	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run8 = [31, shal_run9]
{
    ai_run(MOVETYPE_TOSS);
};

// shal_run9
// function begins at statement 17273, parm_start=10087
// OP_STATE	219	10087	0
// OP_STORE_V	230	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run9 = [32, shal_run10]
{
    ai_run(MOVETYPE_FLY);
};

// shal_run10
// function begins at statement 17277, parm_start=10088
// OP_STATE	307	10088	0
// OP_STORE_V	213	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run10 = [33, shal_run11]
{
    ai_run(FALSE);
};

// shal_run11
// function begins at statement 17281, parm_start=10089
// OP_STATE	5699	10089	0
// OP_STORE_V	229	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run11 = [34, shal_run12]
{
    ai_run(MOVETYPE_STEP);
};

// shal_run12
// function begins at statement 17285, parm_start=10090
// OP_STATE	301	10077	0
// OP_STORE_V	230	4	0
// OP_CALL1	1798	0	0
// OP_DONE	0	0	0
void () shal_run12 = [23, shal_run1]
{
    ai_run(MOVETYPE_FLY);
};

// shal_attack1
// function begins at statement 17289, parm_start=10091
// OP_STATE	213	10091	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10092	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack1 = [0, shal_attack2]
{
    sound(self, CHAN_VOICE, "shalrath/attack.wav", TRUE, ATTN_NORM);
    ai_face();
};

// shal_attack2
// function begins at statement 17298, parm_start=10093
// OP_STATE	214	10093	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack2 = [1, shal_attack3]
{
    ai_face();
};

// shal_attack3
// function begins at statement 17301, parm_start=10094
// OP_STATE	216	10094	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack3 = [2, shal_attack4]
{
    ai_face();
};

// shal_attack4
// function begins at statement 17304, parm_start=10095
// OP_STATE	228	10095	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack4 = [3, shal_attack5]
{
    ai_face();
};

// shal_attack5
// function begins at statement 17307, parm_start=10096
// OP_STATE	229	10096	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack5 = [4, shal_attack6]
{
    ai_face();
};

// shal_attack6
// function begins at statement 17310, parm_start=10097
// OP_STATE	230	10097	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack6 = [5, shal_attack7]
{
    ai_face();
};

// shal_attack7
// function begins at statement 17313, parm_start=10098
// OP_STATE	231	10098	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack7 = [6, shal_attack8]
{
    ai_face();
};

// shal_attack8
// function begins at statement 17316, parm_start=10099
// OP_STATE	232	10099	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack8 = [7, shal_attack9]
{
    ai_face();
};

// shal_attack9
// function begins at statement 17319, parm_start=10100
// OP_STATE	217	10100	0
// OP_CALL0	10061	0	0
// OP_DONE	0	0	0
void () shal_attack9 = [8, shal_attack10]
{
    ShalMissile();
};

// shal_attack10
// function begins at statement 17322, parm_start=10101
// OP_STATE	234	10101	0
// OP_CALL0	1148	0	0
// OP_DONE	0	0	0
void () shal_attack10 = [9, shal_attack11]
{
    ai_face();
};

// shal_attack11
// function begins at statement 17325, parm_start=10102
// OP_STATE	235	10077	0
// OP_DONE	0	0	0
void () shal_attack11 = [10, shal_run1]
{
};

// shal_pain1
// function begins at statement 17327, parm_start=10103
// OP_STATE	236	10103	0
// OP_DONE	0	0	0
void () shal_pain1 = [11, shal_pain2]
{
};

// shal_pain2
// function begins at statement 17329, parm_start=10104
// OP_STATE	2717	10104	0
// OP_DONE	0	0	0
void () shal_pain2 = [12, shal_pain3]
{
};

// shal_pain3
// function begins at statement 17331, parm_start=10105
// OP_STATE	8413	10105	0
// OP_DONE	0	0	0
void () shal_pain3 = [13, shal_pain4]
{
};

// shal_pain4
// function begins at statement 17333, parm_start=10106
// OP_STATE	3382	10106	0
// OP_DONE	0	0	0
void () shal_pain4 = [14, shal_pain5]
{
};

// shal_pain5
// function begins at statement 17335, parm_start=10107
// OP_STATE	2246	10077	0
// OP_DONE	0	0	0
void () shal_pain5 = [15, shal_run1]
{
};

// shal_death1
// function begins at statement 17337, parm_start=10108
// OP_STATE	218	10108	0
// OP_DONE	0	0	0
void () shal_death1 = [16, shal_death2]
{
};

// shal_death2
// function begins at statement 17339, parm_start=10109
// OP_STATE	5450	10109	0
// OP_DONE	0	0	0
void () shal_death2 = [17, shal_death3]
{
};

// shal_death3
// function begins at statement 17341, parm_start=10110
// OP_STATE	3866	10110	0
// OP_DONE	0	0	0
void () shal_death3 = [18, shal_death4]
{
};

// shal_death4
// function begins at statement 17343, parm_start=10111
// OP_STATE	8422	10111	0
// OP_DONE	0	0	0
void () shal_death4 = [19, shal_death5]
{
};

// shal_death5
// function begins at statement 17345, parm_start=10112
// OP_STATE	576	10112	0
// OP_DONE	0	0	0
void () shal_death5 = [20, shal_death6]
{
};

// shal_death6
// function begins at statement 17347, parm_start=10113
// OP_STATE	8425	10113	0
// OP_DONE	0	0	0
void () shal_death6 = [21, shal_death7]
{
};

// shal_death7
// function begins at statement 17349, parm_start=10114
// OP_STATE	8428	10113	0
// OP_DONE	0	0	0
void () shal_death7 = [22, shal_death7]
{
};

// shalrath_pain
// function begins at statement 17351, parm_start=10114
// OP_LOAD_F	28	374	10114
// OP_GT	10114	31	10115
// OP_IFNOT	10115	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10116	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	10102	0	0
// OP_ADDRESS	28	374	10117
// OP_ADD_F	31	228	10118
// OP_STOREP_F	10118	10117	0
// OP_DONE	0	0	0
void () shalrath_pain = 
{
    
    if(self.pain_finished > time)
    {
        return;
    }
    
    sound(self, CHAN_VOICE, "shalrath/pain.wav", TRUE, ATTN_NORM);
    shal_pain1();
    self.pain_finished = time + MOVETYPE_WALK;
};

// shalrath_die
// function begins at statement 17366, parm_start=10120
// OP_LOAD_F	28	152	10120
// OP_LT	10120	1790	10121
// OP_IFNOT	10121	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	4319	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	10122	4	0
// OP_LOAD_F	28	152	10123
// OP_STORE_V	10123	7	0
// OP_CALL2	5842	0	0
// OP_STORE_V	4345	4	0
// OP_LOAD_F	28	152	10124
// OP_STORE_V	10124	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4346	4	0
// OP_LOAD_F	28	152	10125
// OP_STORE_V	10125	7	0
// OP_CALL2	5803	0	0
// OP_STORE_V	4347	4	0
// OP_LOAD_F	28	152	10126
// OP_STORE_V	10126	7	0
// OP_CALL2	5803	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	10127	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	10107	0	0
// OP_ADDRESS	28	104	10128
// OP_STOREP_F	237	10128	0
// OP_DONE	0	0	0
void () shalrath_die = 
{
    
    if(self.health < -90)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", TRUE, ATTN_NORM);
        ThrowHead("progs/h_shal.mdl", self.health);
        ThrowGib("progs/gib1.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib3.mdl", self.health);
        return;
    }
    
    sound(self, CHAN_VOICE, "shalrath/death.wav", TRUE, ATTN_NORM);
    shal_death1();
    self.solid = SOLID_NOT;
};

void () ShalMissileTouch;
void () ShalHome;
// ShalMissile
// function begins at statement 17402, parm_start=10131
// OP_LOAD_ENT	28	181	10137
// OP_LOAD_V	10137	105	10138
// OP_ADD_V	10138	6226	10141
// OP_LOAD_V	28	105	10144
// OP_SUB_V	10141	10144	10147
// OP_STORE_V	10147	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10132	0
// OP_LOAD_ENT	28	181	10150
// OP_LOAD_V	10150	105	10151
// OP_LOAD_V	28	105	10154
// OP_SUB_V	10151	10154	10157
// OP_STORE_V	10157	4	0
// OP_CALL1	457	0	0
// OP_STORE_F	1	10135	0
// OP_MUL_F	10135	10160	10161
// OP_STORE_F	10161	10136	0
// OP_LT	10136	993	10162
// OP_IFNOT	10162	2	0
// OP_STORE_F	993	10136	0
// OP_ADDRESS	28	133	10163
// OP_LOAD_F	28	133	10164
// OP_BITOR	10164	334	10165
// OP_STOREP_F	10165	10163	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	10166	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	10131	0
// OP_ADDRESS	10131	201	10167
// OP_STOREP_ENT	28	10167	0
// OP_ADDRESS	10131	104	10168
// OP_STOREP_F	239	10168	0
// OP_ADDRESS	10131	103	10169
// OP_STOREP_F	234	10169	0
// OP_STORE_V	10131	4	0
// OP_STORE_V	10170	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	10131	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	10131	105	10171
// OP_LOAD_V	28	105	10174
// OP_ADD_V	10174	6226	10177
// OP_STOREP_V	10177	10171	0
// OP_ADDRESS	10131	113	10180
// OP_MUL_VF	10132	3543	10183
// OP_STOREP_V	10183	10180	0
// OP_ADDRESS	10131	121	10186
// OP_STOREP_V	3725	10186	0
// OP_ADDRESS	10131	150	10189
// OP_ADD_F	10136	31	10190
// OP_STOREP_F	10190	10189	0
// OP_ADDRESS	10131	148	10191
// OP_STOREP_FNC	10130	10191	0
// OP_ADDRESS	10131	181	10192
// OP_LOAD_ENT	28	181	10193
// OP_STOREP_ENT	10193	10192	0
// OP_ADDRESS	10131	146	10194
// OP_STOREP_FNC	10129	10194	0
// OP_DONE	0	0	0
void () ShalMissile = 
{
    local entity missile;
    local vector dir;
    local float dist;
    local float flytime;
    dir = normalize((self.enemy.origin + '0.000 0.000 10.000') - self.origin);
    dist = vlen(self.enemy.origin - self.origin);
    flytime = dist * 0.002;
    
    if(flytime < 0.1)
    {
        flytime = 0.1;
    }
    
    self.effects = self.effects | EF_MUZZLEFLASH;
    sound(self, CHAN_WEAPON, "shalrath/attack2.wav", TRUE, ATTN_NORM);
    missile = spawn();
    missile.owner = self;
    missile.solid = SOLID_BBOX;
    missile.movetype = MOVETYPE_FLYMISSILE;
    setmodel(missile, "progs/v_spike.mdl");
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    missile.origin = self.origin + '0.000 0.000 10.000';
    missile.velocity = dir * 400;
    missile.avelocity = '300.000 300.000 300.000';
    missile.nextthink = flytime + time;
    missile.think = ShalHome;
    missile.enemy = self.enemy;
    missile.touch = ShalMissileTouch;
};

// ShalHome
// function begins at statement 17467, parm_start=10195
// OP_LOAD_ENT	28	181	10201
// OP_LOAD_V	10201	105	10202
// OP_ADD_V	10202	6226	10205
// OP_STORE_V	10205	10198	0
// OP_LOAD_ENT	28	181	10208
// OP_LOAD_F	10208	152	10209
// OP_LT	10209	214	10210
// OP_IFNOT	10210	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	105	10211
// OP_SUB_V	10198	10211	10214
// OP_STORE_V	10214	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	10195	0
// OP_EQ_F	349	228	10217
// OP_IFNOT	10217	5	0
// OP_ADDRESS	28	113	10218
// OP_MUL_VF	10195	10221	10222
// OP_STOREP_V	10222	10218	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	113	10225
// OP_MUL_VF	10195	2229	10228
// OP_STOREP_V	10228	10225	0
// OP_ADDRESS	28	150	10231
// OP_ADD_F	31	1226	10232
// OP_STOREP_F	10232	10231	0
// OP_ADDRESS	28	148	10233
// OP_STOREP_FNC	10130	10233	0
// OP_DONE	0	0	0
void () ShalHome = 
{
    local vector dir;
    local vector vtemp;
    vtemp = self.enemy.origin + '0.000 0.000 10.000';
    
    if(self.enemy.health < TRUE)
    {
        remove(self);
        return;
    }
    
    dir = normalize(vtemp - self.origin);
    if(skill == MOVETYPE_WALK)
    {
        self.velocity = dir * 350;
    }
    else
    {
        self.velocity = dir * 250;
    }
    
    self.nextthink = time + 0.2;
    self.think = ShalHome;
};

// ShalMissileTouch
// function begins at statement 17498, parm_start=10234
// OP_LOAD_ENT	28	201	10234
// OP_EQ_E	29	10234	10235
// OP_IFNOT	10235	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	10236
// OP_EQ_S	10236	1635	10237
// OP_IFNOT	10237	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	5630	13	0
// OP_CALL4	520	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_ENT	28	201	10238
// OP_STORE_V	10238	7	0
// OP_STORE_V	2101	10	0
// OP_STORE_V	30	13	0
// OP_CALL4	2088	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	3091	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	301	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	493	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	106	10239
// OP_STORE_V	10239	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	107	10240
// OP_STORE_V	10240	7	0
// OP_CALL2	497	0	0
// OP_STORE_V	337	4	0
// OP_LOAD_F	28	108	10241
// OP_STORE_V	10241	7	0
// OP_CALL2	497	0	0
// OP_ADDRESS	28	113	10242
// OP_STOREP_V	286	10242	0
// OP_ADDRESS	28	146	10245
// OP_STOREP_FNC	517	10245	0
// OP_STORE_V	28	4	0
// OP_STORE_V	3398	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	104	10246
// OP_STOREP_F	237	10246	0
// OP_CALL0	3386	0	0
// OP_DONE	0	0	0
void () ShalMissileTouch = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if(other.classname == "monster_zombie")
    {
        T_Damage(other, self, self, 110);
    }
    
    T_RadiusDamage(self, self.owner, 40, world);
    sound(self, CHAN_WEAPON, "weapons/r_exp3.wav", TRUE, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.velocity = VEC_ORIGIN;
    self.touch = SUB_Null;
    setmodel(self, "progs/s_explod.spr");
    self.solid = SOLID_NOT;
    s_explode1();
};

// monster_shalrath
// function begins at statement 17551, parm_start=10248
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	10248	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10122	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10170	4	0
// OP_CALL1	508	0	0
// OP_STORE_V	10092	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10166	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10127	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10066	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	10116	4	0
// OP_CALL1	509	0	0
// OP_STORE_V	1672	4	0
// OP_CALL1	509	0	0
// OP_ADDRESS	28	104	10249
// OP_STOREP_F	240	10249	0
// OP_ADDRESS	28	103	10250
// OP_STOREP_F	229	10250	0
// OP_STORE_V	28	4	0
// OP_STORE_V	10248	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	295	7	0
// OP_STORE_V	298	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	10251
// OP_STOREP_F	3543	10251	0
// OP_ADDRESS	28	356	10252
// OP_STOREP_FNC	10062	10252	0
// OP_ADDRESS	28	357	10253
// OP_STOREP_FNC	10063	10253	0
// OP_ADDRESS	28	358	10254
// OP_STOREP_FNC	10077	10254	0
// OP_ADDRESS	28	362	10255
// OP_STOREP_FNC	10119	10255	0
// OP_ADDRESS	28	361	10256
// OP_STOREP_FNC	10060	10256	0
// OP_ADDRESS	28	359	10257
// OP_STOREP_FNC	10090	10257	0
// OP_ADDRESS	28	148	10258
// OP_STOREP_FNC	6156	10258	0
// OP_ADDRESS	28	150	10259
// OP_ADD_F	31	993	10260
// OP_CALL0	452	0	0
// OP_MUL_F	1	993	10261
// OP_ADD_F	10260	10261	10262
// OP_STOREP_F	10262	10259	0
// OP_DONE	0	0	0
void () monster_shalrath = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model2("progs/shalrath.mdl");
    precache_model2("progs/h_shal.mdl");
    precache_model2("progs/v_spike.mdl");
    precache_sound2("shalrath/attack.wav");
    precache_sound2("shalrath/attack2.wav");
    precache_sound2("shalrath/death.wav");
    precache_sound2("shalrath/idle.wav");
    precache_sound2("shalrath/pain.wav");
    precache_sound2("shalrath/sight.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/shalrath.mdl");
    setsize(self, VEC_HULL2_MIN, VEC_HULL2_MAX);
    self.health = 400;
    self.th_stand = shal_stand;
    self.th_walk = shal_walk1;
    self.th_run = shal_run1;
    self.th_die = shalrath_die;
    self.th_pain = shalrath_pain;
    self.th_missile = shal_attack1;
    self.think = walkmonster_start;
    self.nextthink = (time + 0.1) + (random() * 0.1);
};

