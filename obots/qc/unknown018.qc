// func000376
// function begins at statement 11166, parm_start=8248
// OP_IFNOT	38	5	0
// OP_LOAD_S	30	130	8248
// OP_EQ_S	8248	6583	8249
// OP_IFNOT	8249	2	0
// OP_CALL0	90	0	0
// OP_ADDRESS	28	162	8250
// OP_STOREP_F	43	8250	0
// OP_ADDRESS	28	152	8251
// OP_STOREP_F	44	8251	0
// OP_ADDRESS	28	188	8252
// OP_STOREP_F	45	8252	0
// OP_ADDRESS	28	158	8253
// OP_STOREP_F	46	8253	0
// OP_ADDRESS	28	159	8254
// OP_STOREP_F	47	8254	0
// OP_ADDRESS	28	160	8255
// OP_STOREP_F	48	8255	0
// OP_ADDRESS	28	161	8256
// OP_STOREP_F	49	8256	0
// OP_ADDRESS	28	154	8257
// OP_STOREP_F	50	8257	0
// OP_ADDRESS	28	187	8258
// OP_MUL_F	51	5500	8259
// OP_STOREP_F	8259	8258	0
// OP_ADDRESS	28	572	8260
// OP_STOREP_F	52	8260	0
// OP_DONE	0	0	0
void () func000376 = 
{
    
    if(serverflags)
    {
        
        if(world.model == "maps/start.bsp")
        {
            SetNewParms();
        }
        
    }
    
    self.items = parm1;
    self.health = parm2;
    self.armorvalue = parm3;
    self.ammo_shells = parm4;
    self.ammo_nails = parm5;
    self.ammo_rockets = parm6;
    self.ammo_cells = parm7;
    self.weapon = parm8;
    self.armortype = parm9 * 0.01;
    self.field000249 = parm10;
};

// func000377
// function begins at statement 11193, parm_start=8261
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8263	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8261	0
// OP_IFNOT	8261	22	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	229	8264
// OP_STORE_F	8264	8262	0
// OP_GT	8262	214	8265
// OP_IFNOT	8265	16	0
// OP_STORE_V	8261	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8263	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8261	0
// OP_NOT_ENT	8261	0	8266
// OP_IFNOT	8266	6	0
// OP_STORE_V	8261	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8263	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8261	0
// OP_SUB_F	8262	214	8267
// OP_STORE_F	8267	8262	0
// OP_GOTO	-16	0	0
// OP_RETURN	8261	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2913	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8261	0
// OP_IFNOT	8261	2	0
// OP_RETURN	8261	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7689	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8261	0
// OP_IFNOT	8261	2	0
// OP_RETURN	8261	0	0
// OP_STORE_V	8268	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
entity () func000377 = 
{
    local entity globaldef002867;
    local float globaldef002868;
    globaldef002867 = find(world, classname, "info_intermission");
    
    if(globaldef002867)
    {
        globaldef002868 = random() * MOVETYPE_STEP;
        
        while(globaldef002868 > TRUE)
        {
            globaldef002867 = find(globaldef002867, classname, "info_intermission");
            
            if(!globaldef002867)
            {
                globaldef002867 = find(globaldef002867, classname, "info_intermission");
            }
            
            globaldef002868 = globaldef002868 - TRUE;
        }
        
        return globaldef002867;
    }
    
    globaldef002867 = find(world, classname, "info_player_start");
    
    if(globaldef002867)
    {
        return globaldef002867;
    }
    
    globaldef002867 = find(world, classname, "testplayerstart");
    
    if(globaldef002867)
    {
        return globaldef002867;
    }
    
    objerror("FindIntermission: no spot");
};

string globaldef002871;
// func000378
// function begins at statement 11237, parm_start=8271
// OP_STORE_V	34	4	0
// OP_STORE_V	8269	7	0
// OP_CALL2	7481	0	0
// OP_DONE	0	0	0
void () func000378 = 
{
    func000348(mapname, globaldef002871);
};

// func000379
// function begins at statement 11241, parm_start=8272
// OP_IFNOT	35	3	0
// OP_CALL0	8270	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	31	214	8272
// OP_STORE_F	8272	8214	0
// OP_ADD_F	8213	214	8273
// OP_STORE_F	8273	8213	0
// OP_EQ_F	8213	216	8274
// OP_IFNOT	8274	92	0
// OP_LOAD_S	30	130	8275
// OP_EQ_S	8275	6590	8276
// OP_IFNOT	8276	29	0
// OP_STORE_V	344	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	6635	4	0
// OP_CALL1	490	0	0
// OP_NOT_F	1	0	8277
// OP_IFNOT	8277	8	0
// OP_STORE_V	344	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	8278	7	0
// OP_CALL2	502	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	8279	7	0
// OP_CALL2	502	0	0
// OP_RETURN	0	0	0
// OP_GOTO	60	0	0
// OP_LOAD_S	30	130	8280
// OP_EQ_S	8280	6597	8281
// OP_IFNOT	8281	18	0
// OP_STORE_V	344	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	8282	7	0
// OP_CALL2	502	0	0
// OP_RETURN	0	0	0
// OP_GOTO	40	0	0
// OP_LOAD_S	30	130	8283
// OP_EQ_S	8283	6604	8284
// OP_IFNOT	8284	18	0
// OP_STORE_V	344	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	8285	7	0
// OP_CALL2	502	0	0
// OP_RETURN	0	0	0
// OP_GOTO	20	0	0
// OP_LOAD_S	30	130	8286
// OP_EQ_S	8286	6612	8287
// OP_IFNOT	8287	17	0
// OP_STORE_V	344	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	216	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	8288	7	0
// OP_CALL2	502	0	0
// OP_RETURN	0	0	0
// OP_CALL0	8270	0	0
// OP_EQ_F	8213	228	8289
// OP_IFNOT	8289	19	0
// OP_STORE_V	6635	4	0
// OP_CALL1	490	0	0
// OP_NOT_F	1	0	8290
// OP_IFNOT	8290	5	0
// OP_STORE_V	344	4	0
// OP_STORE_V	312	7	0
// OP_CALL2	496	0	0
// OP_RETURN	0	0	0
// OP_BITAND	38	765	8291
// OP_EQ_F	8291	765	8292
// OP_IFNOT	8292	8	0
// OP_STORE_V	344	4	0
// OP_STORE_V	310	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	8293	7	0
// OP_CALL2	502	0	0
// OP_RETURN	0	0	0
// OP_CALL0	8270	0	0
// OP_DONE	0	0	0
void () func000379 = 
{
    
    if(deathmatch)
    {
        func000378();
        return;
    }
    
    globaldef002864 = time + TRUE;
    globaldef002863 = globaldef002863 + TRUE;
    
    if(globaldef002863 == FL_SWIM)
    {
        if(world.model == "maps/e1m7.bsp")
        {
            WriteByte(MSG_ALL, SVC_CDTRACK);
            WriteByte(MSG_ALL, FL_SWIM);
            WriteByte(MSG_ALL, MOVETYPE_WALK);
            if(!cvar("registered"))
            {
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task in...");
            }
            else
            {
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "As the corpse of the monstrous entity\nChthon sinks back into the lava whence\nit rose, you grip the Rune of Earth\nMagic tightly. Now that you have\nconquered the Dimension of the Doomed,\nrealm of Earth Magic, you are ready to\ncomplete your task. A...");
            }
            
            return;
        }
        else
        {
            if(world.model == "maps/e2m6.bsp")
            {
                WriteByte(MSG_ALL, SVC_CDTRACK);
                WriteByte(MSG_ALL, FL_SWIM);
                WriteByte(MSG_ALL, MOVETYPE_WALK);
                WriteByte(MSG_ALL, SVC_FINALE);
                WriteString(MSG_ALL, "The Rune of Black Magic throbs evilly in\nyour hand and whispers dark thoughts\ninto your brain. You learn the inmost\nlore of the Hell-Mother; Shub-Niggurath!\nYou now know that she is behind all the\nterrible plotting which has led to so\nmuch death...");
                return;
            }
            else
            {
                if(world.model == "maps/e3m6.bsp")
                {
                    WriteByte(MSG_ALL, SVC_CDTRACK);
                    WriteByte(MSG_ALL, FL_SWIM);
                    WriteByte(MSG_ALL, MOVETYPE_WALK);
                    WriteByte(MSG_ALL, SVC_FINALE);
                    WriteString(MSG_ALL, "The charred viscera of diabolic horrors\nbubble viscously as you seize the Rune\nof Hell Magic. Its heat scorches your\nhand, and its terrible secrets blight\nyour mind. Gathering the shreds of your\ncourage, you shake the devil's shackles\nfrom your ...");
                    return;
                }
                else
                {
                    
                    if(world.model == "maps/e4m7.bsp")
                    {
                        WriteByte(MSG_ALL, SVC_CDTRACK);
                        WriteByte(MSG_ALL, FL_SWIM);
                        WriteByte(MSG_ALL, MOVETYPE_WALK);
                        WriteByte(MSG_ALL, SVC_FINALE);
                        WriteString(MSG_ALL, "Despite the awful might of the Elder\nWorld, you have achieved the Rune of\nElder Magic, capstone of all types of\narcane wisdom. Beyond good and evil,\nbeyond life and death, the Rune\npulsates, heavy with import. Patient and\npotent, the Elder Being...");
                        return;
                    }
                    
                }
                
            }
            
        }
        
        func000378();
    }
    
    
    if(globaldef002863 == MOVETYPE_WALK)
    {
        
        if(!cvar("registered"))
        {
            WriteByte(MSG_ALL, SVC_SELLSCREEN);
            return;
        }
        
        
        if((serverflags & globaldef000748) == globaldef000748)
        {
            WriteByte(MSG_ALL, SVC_FINALE);
            WriteString(MSG_ALL, "Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront he...");
            return;
        }
        
    }
    
    func000378();
};

// func000380
// function begins at statement 11363, parm_start=8295
// OP_LT	31	8214	8295
// OP_IFNOT	8295	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	8296
// OP_NOT_F	8296	0	8297
// OP_LOAD_F	28	171	8298
// OP_NOT_F	8298	0	8299
// OP_AND	8297	8299	8300
// OP_LOAD_F	28	172	8301
// OP_NOT_F	8301	0	8302
// OP_AND	8300	8302	8303
// OP_IFNOT	8303	2	0
// OP_RETURN	0	0	0
// OP_CALL0	8271	0	0
// OP_DONE	0	0	0
void () func000380 = 
{
    
    if(time < globaldef002864)
    {
        return;
    }
    
    
    if((!self.button0 && !self.button1) && !self.button2)
    {
        return;
    }
    
    func000379();
};

// func000381
// function begins at statement 11378, parm_start=8305
// OP_STORE_F	214	8213	0
// OP_CALL0	1212	0	0
// OP_CALL0	1165	0	0
// OP_IFNOT	35	4	0
// OP_ADD_F	31	230	8306
// OP_STORE_F	8306	8214	0
// OP_GOTO	3	0	0
// OP_ADD_F	31	216	8307
// OP_STORE_F	8307	8214	0
// OP_STORE_V	344	4	0
// OP_STORE_V	311	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	228	7	0
// OP_CALL2	496	0	0
// OP_CALL0	8005	0	0
// OP_STORE_ENT	1	8305	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	29	0
// OP_NE_E	29	30	8308
// OP_IFNOT	8308	32	0
// OP_ADDRESS	29	166	8309
// OP_STOREP_V	286	8309	0
// OP_ADDRESS	29	175	8312
// OP_LOAD_V	8305	400	8315
// OP_STOREP_V	8315	8312	0
// OP_ADDRESS	29	117	8318
// OP_LOAD_V	8305	400	8321
// OP_STOREP_V	8321	8318	0
// OP_ADDRESS	29	174	8324
// OP_STOREP_F	214	8324	0
// OP_ADDRESS	29	150	8325
// OP_ADD_F	31	539	8326
// OP_STOREP_F	8326	8325	0
// OP_ADDRESS	29	163	8327
// OP_STOREP_F	250	8327	0
// OP_ADDRESS	29	104	8328
// OP_STOREP_F	237	8328	0
// OP_ADDRESS	29	103	8329
// OP_STOREP_F	227	8329	0
// OP_ADDRESS	29	93	8330
// OP_STOREP_F	213	8330	0
// OP_STORE_V	29	4	0
// OP_LOAD_V	8305	105	8331
// OP_STORE_V	8331	7	0
// OP_CALL2	453	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	29	0
// OP_GOTO	-32	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	309	7	0
// OP_CALL2	496	0	0
// OP_DONE	0	0	0
void () func000381 = 
{
    local entity globaldef002882;
    globaldef002863 = TRUE;
    func002704();
    func002523();
    if(deathmatch)
    {
        globaldef002864 = time + MOVETYPE_FLY;
    }
    else
    {
        globaldef002864 = time + FL_SWIM;
    }
    
    WriteByte(MSG_ALL, SVC_CDTRACK);
    WriteByte(MSG_ALL, MOVETYPE_WALK);
    WriteByte(MSG_ALL, MOVETYPE_WALK);
    globaldef002882 = func000377();
    other = find(world, classname, "player");
    
    while(other != world)
    {
        other.view_ofs = VEC_ORIGIN;
        other.v_angle = globaldef002882.mangle;
        other.angles = globaldef002882.mangle;
        other.fixangle = TRUE;
        other.nextthink = time + globaldef000522;
        other.takedamage = DAMAGE_NO;
        other.solid = SOLID_NOT;
        other.movetype = MOVETYPE_NONE;
        other.modelindex = FALSE;
        setorigin(other, globaldef002882.origin);
        other = find(other, classname, "player");
    }
    
    WriteByte(MSG_ALL, SVC_INTERMISSION);
};

// func000382
// function begins at statement 11440, parm_start=8335
// OP_LOAD_S	29	129	8336
// OP_NE_S	8336	1236	8337
// OP_IFNOT	8337	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8338	4	0
// OP_CALL1	490	0	0
// OP_IFNOT	1	7	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	8339	13	0
// OP_CALL4	522	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	606	8340
// OP_STORE_V	8340	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	29	180	8341
// OP_STORE_V	8341	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8342	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	28	356	8343
// OP_STORE_S	8343	8269	0
// OP_CALL0	520	0	0
// OP_LOAD_F	28	195	8344
// OP_BITAND	8344	214	8345
// OP_EQ_F	35	213	8346
// OP_AND	8345	8346	8347
// OP_IFNOT	8347	3	0
// OP_CALL0	8270	0	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	146	8348
// OP_STOREP_FNC	519	8348	0
// OP_ADDRESS	28	148	8349
// OP_STOREP_FNC	8304	8349	0
// OP_ADDRESS	28	150	8350
// OP_ADD_F	31	3036	8351
// OP_STOREP_F	8351	8350	0
// OP_DONE	0	0	0
void () func000382 = 
{
    local entity globaldef002884;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(cvar("noexit"))
    {
        func000201(other, self, self, 50000);
        return;
    }
    
    bprint(other.field000283);
    bprint(other.netname);
    bprint(" exited the level\n");
    globaldef002871 = self.map;
    SUB_UseTargets();
    
    if((self.spawnflags & TRUE) && (deathmatch == FALSE))
    {
        func000378();
        return;
    }
    
    self.touch = SUB_Null;
    self.think = func000381;
    self.nextthink = time + 0.1;
};

