float globaldef003469;
float globaldef003470;
// func000583
// function begins at statement 16326, parm_start=11160
// OP_CALL0	457	0	0
// OP_MUL_F	1	230	11162
// OP_STORE_F	11162	11160	0
// OP_LT	11160	214	11163
// OP_IFNOT	11163	3	0
// OP_STORE_S	6654	11161	0
// OP_GOTO	14	0	0
// OP_LT	11160	216	11164
// OP_IFNOT	11164	3	0
// OP_STORE_S	6655	11161	0
// OP_GOTO	10	0	0
// OP_LT	11160	228	11165
// OP_IFNOT	11165	3	0
// OP_STORE_S	6656	11161	0
// OP_GOTO	6	0	0
// OP_LT	11160	229	11166
// OP_IFNOT	11166	3	0
// OP_STORE_S	6657	11161	0
// OP_GOTO	2	0	0
// OP_STORE_S	6658	11161	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	11161	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func000583 = 
{
    local float globaldef003472;
    local string globaldef003473;
    globaldef003472 = random() * MOVETYPE_FLY;
    if(globaldef003472 < TRUE)
    {
        globaldef003473 = "misc/r_tele1.wav";
    }
    else
    {
        if(globaldef003472 < FL_SWIM)
        {
            globaldef003473 = "misc/r_tele2.wav";
        }
        else
        {
            if(globaldef003472 < MOVETYPE_WALK)
            {
                globaldef003473 = "misc/r_tele3.wav";
            }
            else
            {
                if(globaldef003472 < MOVETYPE_STEP)
                {
                    globaldef003473 = "misc/r_tele4.wav";
                }
                else
                {
                    globaldef003473 = "misc/r_tele5.wav";
                }
                
            }
            
        }
        
    }
    
    sound(self, CHAN_VOICE, globaldef003473, TRUE, ATTN_NORM);
    remove(self);
};

// func000584
// function begins at statement 16355, parm_start=11167
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	11001	0
// OP_ADDRESS	11001	105	11170
// OP_STOREP_V	11167	11170	0
// OP_ADDRESS	11001	150	11173
// OP_ADD_F	31	3267	11174
// OP_STOREP_F	11174	11173	0
// OP_ADDRESS	11001	148	11175
// OP_STOREP_FNC	11159	11175	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	324	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	11167	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	11168	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	11169	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void (vector globaldef003474) func000584 = 
{
    globaldef003441 = spawn();
    globaldef003441.origin = globaldef003474;
    globaldef003441.nextthink = time + 0.2;
    globaldef003441.think = func000583;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_TELEPORT);
    WriteCoord(MSG_BROADCAST, globaldef003474_x);
    WriteCoord(MSG_BROADCAST, 0);
    WriteCoord(MSG_BROADCAST, 0);
};

// func000585
// function begins at statement 16380, parm_start=11177
// OP_LOAD_ENT	28	201	11177
// OP_EQ_E	29	11177	11178
// OP_IFNOT	11178	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	11179
// OP_EQ_S	11179	1236	11180
// OP_LOAD_S	29	129	11181
// OP_EQ_S	11181	1241	11182
// OP_OR	11180	11182	11183
// OP_IFNOT	11183	21	0
// OP_LOAD_F	29	380	11184
// OP_GT	11184	31	11185
// OP_IFNOT	11185	3	0
// OP_ADDRESS	28	129	11186
// OP_STOREP_S	9197	11186	0
// OP_LOAD_ENT	28	201	11187
// OP_LOAD_S	11187	129	11188
// OP_NE_S	11188	1236	11189
// OP_IFNOT	11189	12	0
// OP_LOAD_ENT	28	201	11190
// OP_LOAD_S	11190	129	11191
// OP_NE_S	11191	1241	11192
// OP_IFNOT	11192	8	0
// OP_LOAD_ENT	28	201	11193
// OP_STORE_V	11193	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8339	13	0
// OP_CALL4	522	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	11194
// OP_IFNOT	11194	6	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8339	13	0
// OP_CALL4	522	0	0
// OP_DONE	0	0	0
void () func000585 = 
{
    
    if(other == self.owner)
    {
        return;
    }
    
    
    if((other.classname == "player") || (other.classname == "bot"))
    {
        
        if(other.invincible_finished > time)
        {
            self.classname = globaldef003000;
        }
        
        
        if(self.owner.classname != "player")
        {
            
            if(self.owner.classname != "bot")
            {
                func000201(self.owner, self, self, 50000);
                return;
            }
            
        }
        
    }
    
    
    if(other.health)
    {
        func000201(other, self, self, 50000);
    }
    
};

// func000586
// function begins at statement 16418, parm_start=11195
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	11199	0
// OP_ADDRESS	11199	129	11200
// OP_STOREP_S	9182	11200	0
// OP_ADDRESS	11199	103	11201
// OP_STOREP_F	227	11201	0
// OP_ADDRESS	11199	104	11202
// OP_STOREP_F	238	11202	0
// OP_ADDRESS	11199	117	11203
// OP_STOREP_V	286	11203	0
// OP_STORE_V	11199	4	0
// OP_LOAD_V	11198	134	11206
// OP_SUB_V	11206	11209	11212
// OP_STORE_V	11212	7	0
// OP_LOAD_V	11198	138	11215
// OP_ADD_V	11215	11209	11218
// OP_STORE_V	11218	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	11199	4	0
// OP_STORE_V	11195	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	11199	146	11221
// OP_STOREP_FNC	11176	11221	0
// OP_ADDRESS	11199	150	11222
// OP_ADD_F	31	3267	11223
// OP_STOREP_F	11223	11222	0
// OP_ADDRESS	11199	148	11224
// OP_STOREP_FNC	521	11224	0
// OP_ADDRESS	11199	201	11225
// OP_STOREP_ENT	11198	11225	0
// OP_STORE_F	216	33	0
// OP_DONE	0	0	0
void (vector globaldef003479, entity globaldef003483) func000586 = 
{
    local entity globaldef003484;
    globaldef003484 = spawn();
    globaldef003484.classname = globaldef002997;
    globaldef003484.movetype = MOVETYPE_NONE;
    globaldef003484.solid = SOLID_TRIGGER;
    globaldef003484.angles = VEC_ORIGIN;
    setsize(globaldef003484, globaldef003483.mins - '1 1 1', globaldef003483.maxs + '1 1 1');
    setorigin(globaldef003484, globaldef003479);
    globaldef003484.touch = func000585;
    globaldef003484.nextthink = time + 0.2;
    globaldef003484.think = SUB_Remove;
    globaldef003484.owner = globaldef003483;
    force_retouch = FL_SWIM;
};

// func000587
// function begins at statement 16450, parm_start=11227
// OP_BITAND	821	767	11231
// OP_IFNOT	11231	6	0
// OP_NE_E	29	541	11232
// OP_NE_E	29	542	11233
// OP_AND	11232	11233	11234
// OP_IFNOT	11234	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	197	11235
// OP_IFNOT	11235	5	0
// OP_LOAD_F	28	150	11236
// OP_LT	11236	31	11237
// OP_IFNOT	11237	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	195	11238
// OP_BITAND	11238	11157	11239
// OP_IFNOT	11239	8	0
// OP_LOAD_S	29	129	11240
// OP_NE_S	11240	1236	11241
// OP_IFNOT	11241	5	0
// OP_LOAD_S	29	129	11242
// OP_NE_S	11242	1241	11243
// OP_IFNOT	11243	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	11244
// OP_LE	11244	213	11245
// OP_LOAD_F	29	104	11246
// OP_NE_F	11246	240	11247
// OP_OR	11245	11247	11248
// OP_IFNOT	11248	2	0
// OP_RETURN	0	0	0
// OP_CALL0	520	0	0
// OP_LOAD_V	29	105	11249
// OP_STORE_V	11249	4	0
// OP_CALL1	7259	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	11252
// OP_STORE_V	11252	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	11227	0
// OP_NOT_ENT	11227	0	11253
// OP_IFNOT	11253	3	0
// OP_STORE_V	11254	4	0
// OP_CALL1	461	0	0
// OP_LOAD_V	11227	400	11255
// OP_STORE_V	11255	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	11227	105	11258
// OP_MUL_FV	219	59	11261
// OP_ADD_V	11258	11261	11264
// OP_STORE_V	11264	11228	0
// OP_STORE_V	11228	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	11227	105	11267
// OP_STORE_V	11267	4	0
// OP_STORE_V	29	7	0
// OP_CALL2	7260	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	29	105	11270
// OP_STORE_V	11270	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	757	13	0
// OP_CALL4	1120	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	11228	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	757	13	0
// OP_CALL4	1120	0	0
// OP_LOAD_S	29	129	11273
// OP_EQ_S	11273	1241	11274
// OP_IFNOT	11274	25	0
// OP_ADDRESS	29	598	11275
// OP_SUB_F	31	214	11276
// OP_STOREP_F	11276	11275	0
// OP_ADDRESS	29	371	11277
// OP_SUB_F	31	214	11278
// OP_STOREP_F	11278	11277	0
// OP_ADDRESS	29	175	11279
// OP_LOAD_V	11227	400	11282
// OP_STOREP_V	11282	11279	0
// OP_ADDRESS	29	191	11285
// OP_LOAD_F	11227	402	11286
// OP_STOREP_F	11286	11285	0
// OP_ADDRESS	29	611	11287
// OP_LOAD_F	11227	401	11288
// OP_STOREP_F	11288	11287	0
// OP_ADDRESS	29	113	11289
// OP_MUL_VF	59	540	11292
// OP_STOREP_V	11292	11289	0
// OP_ADDRESS	29	186	11295
// OP_ADD_F	31	1644	11296
// OP_STOREP_F	11296	11295	0
// OP_ADDRESS	29	378	11297
// OP_ADD_F	31	539	11298
// OP_STOREP_F	11298	11297	0
// OP_LOAD_F	29	575	11299
// OP_BITAND	11299	703	11300
// OP_IFNOT	11300	15	0
// OP_LOAD_ENT	28	622	11301
// OP_NOT_ENT	11301	0	11302
// OP_IFNOT	11302	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1199	0	0
// OP_LOAD_ENT	29	622	11303
// OP_STORE_V	11303	4	0
// OP_LOAD_ENT	28	622	11304
// OP_STORE_V	11304	7	0
// OP_CALL2	1202	0	0
// OP_ADDRESS	29	622	11305
// OP_LOAD_ENT	28	622	11306
// OP_STOREP_ENT	11306	11305	0
// OP_LOAD_F	29	152	11307
// OP_NOT_F	11307	0	11308
// OP_IFNOT	11308	12	0
// OP_ADDRESS	29	105	11309
// OP_LOAD_V	11227	105	11312
// OP_STOREP_V	11312	11309	0
// OP_ADDRESS	29	113	11315
// OP_LOAD_F	29	114	11318
// OP_MUL_VF	59	11318	11319
// OP_LOAD_F	29	115	11322
// OP_MUL_VF	59	11322	11323
// OP_ADD_V	11319	11323	11326
// OP_STOREP_V	11326	11315	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	11227	105	11329
// OP_STORE_V	11329	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	29	117	11332
// OP_LOAD_V	11227	400	11335
// OP_STOREP_V	11335	11332	0
// OP_LOAD_S	29	129	11338
// OP_EQ_S	11338	1236	11339
// OP_IFNOT	11339	16	0
// OP_ADDRESS	29	174	11340
// OP_STOREP_F	214	11340	0
// OP_ADDRESS	29	186	11341
// OP_ADD_F	31	5599	11342
// OP_STOREP_F	11342	11341	0
// OP_LOAD_F	29	182	11343
// OP_BITAND	11343	223	11344
// OP_IFNOT	11344	5	0
// OP_ADDRESS	29	182	11345
// OP_LOAD_F	29	182	11346
// OP_SUB_F	11346	223	11347
// OP_STOREP_F	11347	11345	0
// OP_ADDRESS	29	113	11348
// OP_MUL_VF	59	540	11351
// OP_STOREP_V	11351	11348	0
// OP_ADDRESS	29	182	11354
// OP_LOAD_F	29	182	11355
// OP_LOAD_F	29	182	11356
// OP_BITAND	11356	223	11357
// OP_SUB_F	11355	11357	11358
// OP_STOREP_F	11358	11354	0
// OP_DONE	0	0	0
void () func000587 = 
{
    local entity globaldef003487;
    local vector globaldef003488;
    
    if(globaldef000804 & globaldef000750)
    {
        
        if((other != globaldef000524) && (other != globaldef000525))
        {
            return;
        }
        
    }
    
    
    if(self.targetname)
    {
        
        if(self.nextthink < time)
        {
            return;
        }
        
    }
    
    
    if(self.spawnflags & globaldef003469)
    {
        
        if(other.classname != "player")
        {
            
            if(other.classname != "bot")
            {
                return;
            }
            
        }
        
    }
    
    
    if((other.health <= FALSE) || (other.solid != SOLID_SLIDEBOX))
    {
        return;
    }
    
    SUB_UseTargets();
    func000584(other.origin);
    globaldef003487 = find(world, targetname, self.target);
    
    if(!globaldef003487)
    {
        objerror("couldn't find teleporter target\n");
    }
    
    makevectors(globaldef003487.mangle);
    globaldef003488 = globaldef003487.origin + (FL_MONSTER * v_forward);
    func000584(globaldef003488);
    func000586(globaldef003487.origin, other);
    func002453(other, other.origin, TRUE, globaldef000740);
    func002453(other, globaldef003488, TRUE, globaldef000740);
    
    if(other.classname == "bot")
    {
        other.field000275 = time - TRUE;
        other.search_time = time - TRUE;
        other.v_angle = globaldef003487.mangle;
        other.ideal_yaw = globaldef003487.mangle_y;
        other.field000288 = globaldef003487.mangle_x;
        other.velocity = v_forward * globaldef000523;
        other.teleport_time = time + 0.4;
        other.attack_finished = time + globaldef000522;
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        
        if(!self.field000299)
        {
            func002676(other, self);
        }
        
        func002685(other.field000299, self.field000299);
        other.field000299 = self.field000299;
    }
    
    
    if(!other.health)
    {
        other.origin = globaldef003487.origin;
        other.velocity = (v_forward * other.velocity_x) + (v_forward * other.velocity_y);
        return;
    }
    
    setorigin(other, globaldef003487.origin);
    other.angles = globaldef003487.mangle;
    
    if(other.classname == "player")
    {
        other.fixangle = TRUE;
        other.teleport_time = time + 0.7;
        
        if(other.flags & FL_ONGROUND)
        {
            other.flags = other.flags - FL_ONGROUND;
        }
        
        other.velocity = v_forward * globaldef000523;
    }
    
    other.flags = other.flags - (other.flags & FL_ONGROUND);
};

