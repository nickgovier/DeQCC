// func000644
// function begins at statement 17846, parm_start=12126
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	12126	0
// OP_STORE_V	12126	4	0
// OP_STORE_V	6690	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	12126	4	0
// OP_LOAD_V	28	105	12127
// OP_STORE_V	12127	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	12126	103	12130
// OP_STOREP_F	233	12130	0
// OP_ADDRESS	12126	104	12131
// OP_STOREP_F	237	12131	0
// OP_ADDRESS	12126	113	12132
// OP_STOREP_V	9696	12132	0
// OP_ADDRESS	12126	150	12135
// OP_ADD_F	31	539	12136
// OP_STOREP_F	12136	12135	0
// OP_ADDRESS	12126	148	12137
// OP_STOREP_FNC	9425	12137	0
// OP_ADDRESS	12126	146	12138
// OP_STOREP_FNC	12121	12138	0
// OP_ADDRESS	12126	129	12139
// OP_STOREP_S	9703	12139	0
// OP_ADDRESS	12126	131	12140
// OP_STOREP_F	213	12140	0
// OP_ADDRESS	12126	426	12141
// OP_STOREP_F	213	12141	0
// OP_STORE_V	12126	4	0
// OP_STORE_V	3520	7	0
// OP_STORE_V	3523	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	150	12142
// OP_CALL0	457	0	0
// OP_ADD_F	31	1	12143
// OP_ADD_F	12143	539	12144
// OP_STOREP_F	12144	12142	0
// OP_ADDRESS	28	148	12145
// OP_STOREP_FNC	12120	12145	0
// OP_DONE	0	0	0
void () func000644 = 
{
    local entity globaldef003613;
    globaldef003613 = spawn();
    setmodel(globaldef003613, "progs/s_bubble.spr");
    setorigin(globaldef003613, self.origin);
    globaldef003613.movetype = MOVETYPE_NOCLIP;
    globaldef003613.solid = SOLID_NOT;
    globaldef003613.velocity = '0 0 15';
    globaldef003613.nextthink = time + globaldef000522;
    globaldef003613.think = func000647;
    globaldef003613.touch = func000646;
    globaldef003613.classname = "bubble";
    globaldef003613.frame = FALSE;
    globaldef003613.cnt = FALSE;
    setsize(globaldef003613, '-8 -8 -8', '8 8 8');
    self.nextthink = (time + random()) + globaldef000522;
    self.think = func000644;
};

// func000645
// function begins at statement 17886, parm_start=12147
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	12147	0
// OP_STORE_V	12147	4	0
// OP_STORE_V	6690	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	12147	4	0
// OP_LOAD_V	28	105	12148
// OP_STORE_V	12148	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	12147	103	12151
// OP_STOREP_F	233	12151	0
// OP_ADDRESS	12147	104	12152
// OP_STOREP_F	237	12152	0
// OP_ADDRESS	12147	113	12153
// OP_LOAD_V	28	113	12156
// OP_STOREP_V	12156	12153	0
// OP_ADDRESS	12147	150	12159
// OP_ADD_F	31	539	12160
// OP_STOREP_F	12160	12159	0
// OP_ADDRESS	12147	148	12161
// OP_STOREP_FNC	9425	12161	0
// OP_ADDRESS	12147	146	12162
// OP_STOREP_FNC	12121	12162	0
// OP_ADDRESS	12147	129	12163
// OP_STOREP_S	9703	12163	0
// OP_ADDRESS	12147	131	12164
// OP_STOREP_F	214	12164	0
// OP_ADDRESS	12147	426	12165
// OP_STOREP_F	235	12165	0
// OP_STORE_V	12147	4	0
// OP_STORE_V	3520	7	0
// OP_STORE_V	3523	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	131	12166
// OP_STOREP_F	214	12166	0
// OP_ADDRESS	28	426	12167
// OP_STOREP_F	235	12167	0
// OP_LOAD_F	28	189	12168
// OP_NE_F	12168	228	12169
// OP_IFNOT	12169	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000645 = 
{
    local entity globaldef003615;
    globaldef003615 = spawn();
    setmodel(globaldef003615, "progs/s_bubble.spr");
    setorigin(globaldef003615, self.origin);
    globaldef003615.movetype = MOVETYPE_NOCLIP;
    globaldef003615.solid = SOLID_NOT;
    globaldef003615.velocity = self.velocity;
    globaldef003615.nextthink = time + globaldef000522;
    globaldef003615.think = func000647;
    globaldef003615.touch = func000646;
    globaldef003615.classname = "bubble";
    globaldef003615.frame = TRUE;
    globaldef003615.cnt = MOVETYPE_BOUNCE;
    setsize(globaldef003615, '-8 -8 -8', '8 8 8');
    self.frame = TRUE;
    self.cnt = MOVETYPE_BOUNCE;
    
    if(self.waterlevel != MOVETYPE_WALK)
    {
        remove(self);
    }
    
};

// func000646
// function begins at statement 17929, parm_start=12170
// OP_LOAD_S	29	129	12170
// OP_LOAD_S	28	129	12171
// OP_EQ_S	12170	12171	12172
// OP_IFNOT	12172	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000646 = 
{
    
    if(other.classname == self.classname)
    {
        return;
    }
    
    remove(self);
};

// func000647
// function begins at statement 17937, parm_start=12173
// OP_ADDRESS	28	426	12182
// OP_LOAD_F	28	426	12183
// OP_ADD_F	12183	214	12184
// OP_STOREP_F	12184	12182	0
// OP_LOAD_F	28	426	12185
// OP_EQ_F	12185	229	12186
// OP_IFNOT	12186	2	0
// OP_CALL0	12146	0	0
// OP_LOAD_F	28	426	12187
// OP_EQ_F	12187	2323	12188
// OP_IFNOT	12188	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_LOAD_F	28	114	12189
// OP_CALL0	457	0	0
// OP_MUL_F	1	2323	12191
// OP_ADD_F	12190	12191	12192
// OP_ADD_F	12189	12192	12193
// OP_STORE_F	12193	12173	0
// OP_LOAD_F	28	115	12194
// OP_CALL0	457	0	0
// OP_MUL_F	1	2323	12195
// OP_ADD_F	12190	12195	12196
// OP_ADD_F	12194	12196	12197
// OP_STORE_F	12197	12174	0
// OP_LOAD_F	28	116	12198
// OP_ADD_F	12198	235	12199
// OP_CALL0	457	0	0
// OP_MUL_F	1	235	12200
// OP_ADD_F	12199	12200	12201
// OP_STORE_F	12201	12175	0
// OP_GT	12173	235	12202
// OP_IFNOT	12202	2	0
// OP_STORE_F	230	12173	0
// OP_LT	12173	12190	12203
// OP_IFNOT	12203	2	0
// OP_STORE_F	280	12173	0
// OP_GT	12174	235	12204
// OP_IFNOT	12204	2	0
// OP_STORE_F	230	12174	0
// OP_LT	12174	12190	12205
// OP_IFNOT	12205	2	0
// OP_STORE_F	280	12174	0
// OP_LT	12175	235	12206
// OP_IFNOT	12206	2	0
// OP_STORE_F	765	12175	0
// OP_GT	12175	309	12207
// OP_IFNOT	12207	2	0
// OP_STORE_F	305	12175	0
// OP_ADDRESS	28	114	12208
// OP_STOREP_F	12173	12208	0
// OP_ADDRESS	28	115	12209
// OP_STOREP_F	12174	12209	0
// OP_ADDRESS	28	116	12210
// OP_STOREP_F	12175	12210	0
// OP_ADDRESS	28	150	12211
// OP_ADD_F	31	539	12212
// OP_STOREP_F	12212	12211	0
// OP_ADDRESS	28	148	12213
// OP_STOREP_FNC	9425	12213	0
// OP_DONE	0	0	0
void () func000647 = 
{
    local float globaldef003616;
    local float globaldef003617;
    local float globaldef003618;
    local vector globaldef003619;
    local vector globaldef003623;
    self.cnt = self.cnt + TRUE;
    
    if(self.cnt == MOVETYPE_STEP)
    {
        func000645();
    }
    
    
    if(self.cnt == 20)
    {
        remove(self);
    }
    
    globaldef003616 = self.velocity_x + (-10 + (random() * 20));
    globaldef003617 = self.velocity_y + (-10 + (random() * 20));
    globaldef003618 = (self.velocity_z + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    
    if(globaldef003616 > MOVETYPE_BOUNCE)
    {
        globaldef003616 = MOVETYPE_FLY;
    }
    
    
    if(globaldef003616 < -10)
    {
        globaldef003616 = CONTENT_LAVA;
    }
    
    
    if(globaldef003617 > MOVETYPE_BOUNCE)
    {
        globaldef003617 = MOVETYPE_FLY;
    }
    
    
    if(globaldef003617 < -10)
    {
        globaldef003617 = CONTENT_LAVA;
    }
    
    
    if(globaldef003618 < MOVETYPE_BOUNCE)
    {
        globaldef003618 = globaldef000748;
    }
    
    
    if(globaldef003618 > SVC_INTERMISSION)
    {
        globaldef003618 = SVC_SIGNONNUM;
    }
    
    self.velocity_x = globaldef003616;
    self.velocity_y = globaldef003617;
    self.velocity_z = globaldef003618;
    self.nextthink = time + globaldef000522;
    self.think = func000647;
};

