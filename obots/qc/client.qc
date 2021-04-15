void () player_pain;
void () player_stand1;
float intermission_running;
float intermission_exittime;

// info_intermission
// function begins at statement 11104, parm_start=8216
// OP_DONE	0	0	0
void () info_intermission = 
{
};


// SetChangeParms
// function begins at statement 11105, parm_start=8216
// OP_ADDRESS	28	162	8216
// OP_LOAD_F	28	162	8217
// OP_LOAD_F	28	162	8218
// OP_BITOR	270	271	8219
// OP_BITOR	8219	272	8220
// OP_BITOR	8220	273	8221
// OP_BITOR	8221	274	8222
// OP_BITOR	8222	275	8223
// OP_BITAND	8218	8223	8224
// OP_SUB_F	8217	8224	8225
// OP_STOREP_F	8225	8216	0
// OP_LOAD_F	28	152	8226
// OP_GT	8226	1997	8227
// OP_IFNOT	8227	3	0
// OP_ADDRESS	28	152	8228
// OP_STOREP_F	1997	8228	0
// OP_LOAD_F	28	152	8229
// OP_LT	8229	1470	8230
// OP_IFNOT	8230	3	0
// OP_ADDRESS	28	152	8231
// OP_STOREP_F	1470	8231	0
// OP_LOAD_F	28	162	8232
// OP_STORE_F	8232	43	0
// OP_LOAD_F	28	152	8233
// OP_STORE_F	8233	44	0
// OP_LOAD_F	28	188	8234
// OP_STORE_F	8234	45	0
// OP_LOAD_F	28	158	8235
// OP_LT	8235	305	8236
// OP_IFNOT	8236	3	0
// OP_STORE_F	305	46	0
// OP_GOTO	3	0	0
// OP_LOAD_F	28	158	8237
// OP_STORE_F	8237	46	0
// OP_LOAD_F	28	159	8238
// OP_STORE_F	8238	47	0
// OP_LOAD_F	28	160	8239
// OP_STORE_F	8239	48	0
// OP_LOAD_F	28	161	8240
// OP_STORE_F	8240	49	0
// OP_LOAD_F	28	154	8241
// OP_STORE_F	8241	50	0
// OP_LOAD_F	28	187	8242
// OP_MUL_F	8242	1997	8243
// OP_STORE_F	8243	51	0
// OP_LOAD_F	28	572	8244
// OP_STORE_F	8244	52	0
// OP_DONE	0	0	0
void () SetChangeParms = 
{
    self.items = self.items - (self.items & (((((IT_KEY1 | IT_KEY2) | IT_INVISIBILITY) | IT_INVULNERABILITY) | IT_SUIT) | IT_QUAD));
    
    if(self.health > 100)
    {
        self.health = 100;
    }
    
    
    if(self.health < 50)
    {
        self.health = 50;
    }
    
    parm1 = self.items;
    parm2 = self.health;
    parm3 = self.armorvalue;
    if(self.ammo_shells < SVC_SIGNONNUM)
    {
        parm4 = SVC_SIGNONNUM;
    }
    else
    {
        parm4 = self.ammo_shells;
    }
    
    parm5 = self.ammo_nails;
    parm6 = self.ammo_rockets;
    parm7 = self.ammo_cells;
    parm8 = self.weapon;
    parm9 = self.armortype * 100;
    parm10 = self.field000249;
};


// SetNewParms
// function begins at statement 11153, parm_start=8245
// OP_BITOR	254	253	8245
// OP_STORE_F	8245	43	0
// OP_STORE_F	1997	44	0
// OP_STORE_F	213	45	0
// OP_STORE_F	305	46	0
// OP_STORE_F	213	47	0
// OP_STORE_F	213	48	0
// OP_STORE_F	213	49	0
// OP_STORE_F	4838	50	0
// OP_STORE_F	213	51	0
// OP_LOAD_F	28	572	8246
// OP_STORE_F	8246	52	0
// OP_DONE	0	0	0
void () SetNewParms = 
{
    parm1 = IT_SHOTGUN | IT_AXE;
    parm2 = 100;
    parm3 = FALSE;
    parm4 = SVC_SIGNONNUM;
    parm5 = FALSE;
    parm6 = FALSE;
    parm7 = FALSE;
    parm8 = WEAPON_SHOTGUN;
    parm9 = FALSE;
    parm10 = self.field000249;
};


// DecodeLevelParms
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
void () DecodeLevelParms = 
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


// FindIntermission
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
entity () FindIntermission = 
{
    local entity spot;
    local float cyc;
    spot = find(world, classname, "info_intermission");
    
    if(spot)
    {
        cyc = random() * MOVETYPE_STEP;
        
        while(cyc > TRUE)
        {
            spot = find(spot, classname, "info_intermission");
            
            if(!spot)
            {
                spot = find(spot, classname, "info_intermission");
            }
            
            cyc = cyc - TRUE;
        }
        
        return spot;
    }
    
    spot = find(world, classname, "info_player_start");
    
    if(spot)
    {
        return spot;
    }
    
    spot = find(world, classname, "testplayerstart");
    
    if(spot)
    {
        return spot;
    }
    
    objerror("FindIntermission: no spot");
};

string nextmap;

// GotoNextMap
// function begins at statement 11237, parm_start=8271
// OP_STORE_V	34	4	0
// OP_STORE_V	8269	7	0
// OP_CALL2	7481	0	0
// OP_DONE	0	0	0
void () GotoNextMap = 
{
    rocket_arena_gotonextmap(mapname, nextmap);
};


// ExitIntermission
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
void () ExitIntermission = 
{
    
    if(deathmatch)
    {
        GotoNextMap();
        return;
    }
    
    intermission_exittime = time + TRUE;
    intermission_running = intermission_running + TRUE;
    
    if(intermission_running == FL_SWIM)
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
        
        GotoNextMap();
    }
    
    
    if(intermission_running == MOVETYPE_WALK)
    {
        
        if(!cvar("registered"))
        {
            WriteByte(MSG_ALL, SVC_SELLSCREEN);
            return;
        }
        
        
        if((serverflags & GLOBALDEF748_15) == GLOBALDEF748_15)
        {
            WriteByte(MSG_ALL, SVC_FINALE);
            WriteString(MSG_ALL, "Now, you have all four Runes. You sense\ntremendous invisible forces moving to\nunseal ancient barriers. Shub-Niggurath\nhad hoped to use the Runes Herself to\nclear off the Earth, but now instead,\nyou will use them to enter her home and\nconfront he...");
            return;
        }
        
    }
    
    GotoNextMap();
};


// IntermissionThink
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
void () IntermissionThink = 
{
    
    if(time < intermission_exittime)
    {
        return;
    }
    
    
    if((!self.button0 && !self.button1) && !self.button2)
    {
        return;
    }
    
    ExitIntermission();
};


// execute_changelevel
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
void () execute_changelevel = 
{
    local entity pos;
    intermission_running = TRUE;
    func002704();
    func002523();
    if(deathmatch)
    {
        intermission_exittime = time + MOVETYPE_FLY;
    }
    else
    {
        intermission_exittime = time + FL_SWIM;
    }
    
    WriteByte(MSG_ALL, SVC_CDTRACK);
    WriteByte(MSG_ALL, MOVETYPE_WALK);
    WriteByte(MSG_ALL, MOVETYPE_WALK);
    pos = FindIntermission();
    other = find(world, classname, "player");
    
    while(other != world)
    {
        other.view_ofs = VEC_ORIGIN;
        other.v_angle = pos.mangle;
        other.angles = pos.mangle;
        other.fixangle = TRUE;
        other.nextthink = time + RA_PLAYERSTATTIME;
        other.takedamage = DAMAGE_NO;
        other.solid = SOLID_NOT;
        other.movetype = MOVETYPE_NONE;
        other.modelindex = FALSE;
        setorigin(other, pos.origin);
        other = find(other, classname, "player");
    }
    
    WriteByte(MSG_ALL, SVC_INTERMISSION);
};


// changelevel_touch
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
void () changelevel_touch = 
{
    local entity pos;
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(cvar("noexit"))
    {
        T_Damage(other, self, self, 50000);
        return;
    }
    
    bprint(other.teamname);
    bprint(other.netname);
    bprint(" exited the level\n");
    nextmap = self.map;
    SUB_UseTargets();
    
    if((self.spawnflags & TRUE) && (deathmatch == FALSE))
    {
        GotoNextMap();
        return;
    }
    
    self.touch = SUB_Null;
    self.think = execute_changelevel;
    self.nextthink = time + 0.1;
};


// trigger_changelevel
// function begins at statement 11479, parm_start=8353
// OP_LOAD_S	28	356	8353
// OP_NOT_S	8353	0	8354
// OP_IFNOT	8354	3	0
// OP_STORE_V	8355	4	0
// OP_CALL1	461	0	0
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	8356
// OP_STOREP_FNC	8334	8356	0
// OP_DONE	0	0	0
void () trigger_changelevel = 
{
    
    if(!self.map)
    {
        objerror("changelevel trigger doesn't have map");
    }
    
    InitTrigger();
    self.touch = changelevel_touch;
};

void () set_suicide_frame;

// respawn
// function begins at statement 11488, parm_start=8359
// OP_IFNOT	36	9	0
// OP_STORE_V	28	4	0
// OP_CALL1	6795	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	513	0	0
// OP_LOAD_F	28	572	8359
// OP_STORE_F	8359	52	0
// OP_CALL0	88	0	0
// OP_GOTO	9	0	0
// OP_IFNOT	35	6	0
// OP_STORE_V	28	4	0
// OP_CALL1	6795	0	0
// OP_CALL0	90	0	0
// OP_CALL0	88	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	8360	4	0
// OP_CALL1	491	0	0
// OP_DONE	0	0	0
void () respawn = 
{
    if(coop)
    {
        CopyToBodyQue(self);
        setspawnparms(self);
        parm10 = self.field000249;
        PutClientInServer();
    }
    else
    {
        if(deathmatch)
        {
            CopyToBodyQue(self);
            SetNewParms();
            PutClientInServer();
        }
        else
        {
            localcmd("restart\n");
        }
        
    }
    
};


// ClientKill
// function begins at statement 11506, parm_start=8361
// OP_BITAND	821	767	8361
// OP_IFNOT	8361	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8362
// OP_NE_S	8362	1236	8363
// OP_IFNOT	8363	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	180	8364
// OP_STORE_V	8364	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	8365	4	0
// OP_CALL1	472	0	0
// OP_CALL0	8357	0	0
// OP_ADDRESS	28	93	8366
// OP_STOREP_F	526	8366	0
// OP_ADDRESS	28	153	8367
// OP_LOAD_F	28	153	8368
// OP_SUB_F	8368	216	8369
// OP_STOREP_F	8369	8367	0
// OP_CALL0	8358	0	0
// OP_DONE	0	0	0
void () ClientKill = 
{
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        return;
    }
    
    
    if(self.classname != "player")
    {
        return;
    }
    
    bprint(self.netname);
    bprint(" suicides\n");
    set_suicide_frame();
    self.modelindex = modelindex_player;
    self.frags = self.frags - FL_SWIM;
    respawn();
};


// CheckSpawnPoint
// function begins at statement 11527, parm_start=8371
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (vector v) CheckSpawnPoint = 
{
    return FALSE;
};


// SelectSpawnPoint
// function begins at statement 11529, parm_start=8374
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	7689	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8374	0
// OP_IFNOT	8374	2	0
// OP_RETURN	8374	0	0
// OP_IFNOT	36	17	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8376	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_EQ_E	6621	30	8377
// OP_IFNOT	8377	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2913	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_NE_E	6621	30	8378
// OP_IFNOT	8378	2	0
// OP_RETURN	6621	0	0
// OP_GOTO	33	0	0
// OP_IFNOT	35	32	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	8375	0
// OP_GT	8375	8380	8381
// OP_IFNOT	8381	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_GT	8375	8382	8383
// OP_IFNOT	8383	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_EQ_E	6621	30	8384
// OP_IFNOT	8384	6	0
// OP_STORE_V	6621	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8379	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	6621	0
// OP_NE_E	6621	30	8385
// OP_IFNOT	8385	2	0
// OP_RETURN	6621	0	0
// OP_BITAND	38	765	8386
// OP_IFNOT	8386	8	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8387	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8374	0
// OP_IFNOT	8374	2	0
// OP_RETURN	8374	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2913	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8374	0
// OP_NOT_ENT	8374	0	8388
// OP_IFNOT	8388	3	0
// OP_STORE_V	8389	4	0
// OP_CALL1	460	0	0
// OP_RETURN	8374	0	0
// OP_DONE	0	0	0
entity () SelectSpawnPoint = 
{
    local entity spot;
    local float pcount;
    spot = find(world, classname, "testplayerstart");
    
    if(spot)
    {
        return spot;
    }
    
    if(coop)
    {
        lastspawn = find(lastspawn, classname, "info_player_coop");
        
        if(lastspawn == world)
        {
            lastspawn = find(lastspawn, classname, "info_player_start");
        }
        
        
        if(lastspawn != world)
        {
            return lastspawn;
        }
        
    }
    else
    {
        
        if(deathmatch)
        {
            lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            pcount = random();
            
            if(pcount > 0.33)
            {
                lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            }
            
            
            if(pcount > 0.66)
            {
                lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            }
            
            
            if(lastspawn == world)
            {
                lastspawn = find(lastspawn, classname, "info_player_deathmatch");
            }
            
            
            if(lastspawn != world)
            {
                return lastspawn;
            }
            
        }
        
    }
    
    
    if(serverflags & GLOBALDEF748_15)
    {
        spot = find(world, classname, "info_player_start2");
        
        if(spot)
        {
            return spot;
        }
        
    }
    
    spot = find(world, classname, "info_player_start");
    
    if(!spot)
    {
        error("PutClientInServer: no info_player_start on level");
    }
    
    return spot;
};


// FullLoadout
// function begins at statement 11605, parm_start=8391
// OP_ADDRESS	8391	152	8392
// OP_STOREP_F	738	8392	0
// OP_ADDRESS	8391	188	8393
// OP_STOREP_F	2044	8393	0
// OP_ADDRESS	8391	187	8394
// OP_STOREP_F	4478	8394	0
// OP_ADDRESS	8391	158	8395
// OP_STOREP_F	1997	8395	0
// OP_ADDRESS	8391	159	8396
// OP_STOREP_F	2044	8396	0
// OP_ADDRESS	8391	160	8397
// OP_STOREP_F	1997	8397	0
// OP_ADDRESS	8391	161	8398
// OP_STOREP_F	1997	8398	0
// OP_ADDRESS	8391	162	8399
// OP_LOAD_F	8391	162	8400
// OP_BITOR	8400	253	8401
// OP_BITOR	8401	254	8402
// OP_BITOR	8402	255	8403
// OP_BITOR	8403	256	8404
// OP_BITOR	8404	257	8405
// OP_BITOR	8405	258	8406
// OP_BITOR	8406	259	8407
// OP_BITOR	8407	260	8408
// OP_BITOR	8408	268	8409
// OP_BITOR	8409	273	8410
// OP_STOREP_F	8410	8399	0
// OP_ADDRESS	8391	154	8411
// OP_STOREP_F	260	8411	0
// OP_ADDRESS	8391	384	8412
// OP_ADD_F	31	214	8413
// OP_STOREP_F	8413	8412	0
// OP_ADDRESS	8391	380	8414
// OP_ADD_F	31	228	8415
// OP_STOREP_F	8415	8414	0
// OP_DONE	0	0	0
void (entity ent) FullLoadout = 
{
    ent.health = GLOBALDEF721_250;
    ent.armorvalue = 200;
    ent.armortype = 0.8;
    ent.ammo_shells = 100;
    ent.ammo_nails = 200;
    ent.ammo_rockets = 100;
    ent.ammo_cells = 100;
    ent.items = (((((((((ent.items | IT_AXE) | IT_SHOTGUN) | IT_SUPER_SHOTGUN) | IT_NAILGUN) | IT_SUPER_NAILGUN) | IT_GRENADE_LAUNCHER) | IT_ROCKET_LAUNCHER) | IT_LIGHTNING) | IT_ARMOR3) | IT_INVULNERABILITY;
    ent.weapon = IT_LIGHTNING;
    ent.invincible_time = time + TRUE;
    ent.invincible_finished = time + MOVETYPE_WALK;
};

void () PlayerDie;

// PutClientInServer
// function begins at statement 11641, parm_start=8417
// OP_ADDRESS	28	129	8419
// OP_STOREP_S	1236	8419	0
// OP_ADDRESS	28	152	8420
// OP_STOREP_F	1997	8420	0
// OP_ADDRESS	28	163	8421
// OP_STOREP_F	252	8421	0
// OP_ADDRESS	28	104	8422
// OP_STOREP_F	240	8422	0
// OP_ADDRESS	28	103	8423
// OP_STOREP_F	228	8423	0
// OP_ADDRESS	28	393	8424
// OP_STOREP_F	213	8424	0
// OP_ADDRESS	28	185	8425
// OP_STOREP_F	1997	8425	0
// OP_ADDRESS	28	182	8426
// OP_STOREP_F	217	8426	0
// OP_ADDRESS	28	396	8427
// OP_ADD_F	31	791	8428
// OP_STOREP_F	8428	8427	0
// OP_ADDRESS	28	425	8429
// OP_STOREP_F	216	8429	0
// OP_ADDRESS	28	382	8430
// OP_STOREP_F	213	8430	0
// OP_ADDRESS	28	383	8431
// OP_STOREP_F	213	8431	0
// OP_ADDRESS	28	381	8432
// OP_STOREP_F	213	8432	0
// OP_ADDRESS	28	380	8433
// OP_STOREP_F	213	8433	0
// OP_ADDRESS	28	133	8434
// OP_STOREP_F	213	8434	0
// OP_ADDRESS	28	384	8435
// OP_STOREP_F	213	8435	0
// OP_CALL0	8247	0	0
// OP_EQ_F	35	229	8436
// OP_IFNOT	8436	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	8390	0	0
// OP_CALL0	4295	0	0
// OP_ADDRESS	28	378	8437
// OP_STOREP_F	31	8437	0
// OP_ADDRESS	28	366	8438
// OP_STOREP_FNC	8211	8438	0
// OP_ADDRESS	28	367	8439
// OP_STOREP_FNC	8416	8439	0
// OP_ADDRESS	28	165	8440
// OP_STOREP_F	246	8440	0
// OP_ADDRESS	28	422	8441
// OP_STOREP_F	213	8441	0
// OP_NOT_F	527	0	8442
// OP_IFNOT	8442	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6686	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	8443
// OP_STORE_F	8443	527	0
// OP_NOT_F	525	0	8444
// OP_IFNOT	8444	6	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6685	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	8445
// OP_STORE_F	8445	525	0
// OP_STORE_V	28	4	0
// OP_STORE_V	6684	7	0
// OP_CALL2	454	0	0
// OP_LOAD_F	28	93	8446
// OP_STORE_F	8446	526	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	292	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	28	166	8447
// OP_STOREP_V	8450	8447	0
// OP_STORE_V	28	4	0
// OP_CALL1	7623	0	0
// OP_STORE_ENT	1	8417	0
// OP_BITAND	821	767	8453
// OP_IFNOT	8453	4	0
// OP_STORE_V	8379	4	0
// OP_CALL1	1220	0	0
// OP_STORE_ENT	1	8417	0
// OP_ADDRESS	28	105	8454
// OP_LOAD_V	8417	105	8457
// OP_ADD_V	8457	2827	8460
// OP_STOREP_V	8460	8454	0
// OP_ADDRESS	28	117	8463
// OP_LOAD_V	8417	117	8466
// OP_STOREP_V	8466	8463	0
// OP_ADDRESS	28	174	8469
// OP_STOREP_F	214	8469	0
// OP_ADDRESS	28	132	8470
// OP_LOAD_F	28	572	8471
// OP_STOREP_F	8471	8470	0
// OP_ADDRESS	28	113	8472
// OP_STOREP_V	8475	8472	0
// OP_ADDRESS	28	576	8478
// OP_STOREP_V	8475	8478	0
// OP_ADDRESS	28	580	8481
// OP_LOAD_V	28	105	8484
// OP_STOREP_V	8484	8481	0
// OP_ADDRESS	28	584	8487
// OP_STOREP_F	213	8487	0
// OP_ADDRESS	28	622	8488
// OP_STOREP_ENT	30	8488	0
// OP_ADDRESS	28	688	8489
// OP_STOREP_F	716	8489	0
// OP_LOAD_F	28	575	8490
// OP_BITAND	8490	703	8491
// OP_IFNOT	8491	7	0
// OP_SUB_F	802	214	8492
// OP_STORE_F	8492	802	0
// OP_ADDRESS	28	575	8493
// OP_LOAD_F	28	575	8494
// OP_SUB_F	8494	703	8495
// OP_STOREP_F	8495	8493	0
// OP_BITAND	821	769	8496
// OP_NOT_F	8496	0	8497
// OP_LT	803	804	8498
// OP_NE_F	805	727	8499
// OP_OR	8498	8499	8500
// OP_AND	8497	8500	8501
// OP_IFNOT	8501	7	0
// OP_ADDRESS	28	575	8502
// OP_LOAD_F	28	575	8503
// OP_BITOR	8503	703	8504
// OP_STOREP_F	8504	8502	0
// OP_ADD_F	802	214	8505
// OP_STORE_F	8505	802	0
// OP_ADDRESS	28	588	8506
// OP_STOREP_F	354	8506	0
// OP_ADDRESS	28	667	8507
// OP_STOREP_ENT	28	8507	0
// OP_CALL0	8212	0	0
// OP_OR	35	36	8508
// OP_IFNOT	8508	9	0
// OP_LOAD_V	28	117	8509
// OP_STORE_V	8509	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	8512
// OP_MUL_VF	59	2323	8515
// OP_ADD_V	8512	8515	8518
// OP_STORE_V	8518	4	0
// OP_CALL1	7259	0	0
// OP_LOAD_V	28	105	8521
// OP_STORE_V	8521	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	7260	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	7138	0	0
// OP_BITAND	821	767	8524
// OP_IFNOT	8524	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1217	0	0
// OP_DONE	0	0	0
void () PutClientInServer = 
{
    local entity spot;
    local float UNUSED;
    self.classname = "player";
    self.health = 100;
    self.takedamage = DAMAGE_AIM;
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_WALK;
    self.show_hostile = FALSE;
    self.max_health = 100;
    self.flags = FL_CLIENT;
    self.air_finished = time + BOTSHIRTPANTS_12;
    self.dmg = FL_SWIM;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.effects = FALSE;
    self.invincible_time = FALSE;
    DecodeLevelParms();
    
    if(deathmatch == MOVETYPE_STEP)
    {
        FullLoadout(self);
    }
    
    W_SetCurrentAmmo();
    self.attack_finished = time;
    self.th_pain = player_pain;
    self.th_die = PlayerDie;
    self.deadflag = DEAD_NO;
    self.pausetime = FALSE;
    
    if(!globaldef000510)
    {
        setmodel(self, "progs/h_player.mdl");
        globaldef000510 = self.modelindex;
    }
    
    
    if(!modelindex_eyes)
    {
        setmodel(self, "progs/eyes.mdl");
        modelindex_eyes = self.modelindex;
    }
    
    setmodel(self, "progs/player.mdl");
    modelindex_player = self.modelindex;
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.view_ofs = '0 0 22';
    spot = func000350(self);
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        spot = rocket_arena_selectspawnpoint("info_player_deathmatch");
    }
    
    self.origin = spot.origin + '0 0 2';
    self.angles = spot.angles;
    self.fixangle = TRUE;
    self.skin = self.field000249;
    self.velocity = '0 0 40';
    self.old_velocity = '0 0 40';
    self.old_origin = self.origin;
    self.old_flags = FALSE;
    self.field000299 = world;
    self.waypointtype = globaldef000699;
    
    if(self.botflags & globaldef000686)
    {
        globaldef000785 = globaldef000785 - TRUE;
        self.botflags = self.botflags - globaldef000686;
    }
    
    
    if((!(obot_game_option_bitflags & OBOT_HUMANPATHING)) && ((globaldef000786 < globaldef000787) || (globaldef000788 != globaldef000710)))
    {
        self.botflags = self.botflags | globaldef000686;
        globaldef000785 = globaldef000785 + TRUE;
    }
    
    self.field000265 = skill;
    self.field000344 = self;
    player_stand1();
    
    if(deathmatch || coop)
    {
        makevectors(self.angles);
        spawn_tfog(self.origin + (v_forward * 20));
    }
    
    spawn_tdeath(self.origin, self);
    func000338(self);
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_putclientinserver(self);
    }
    
};


// info_player_start
// function begins at statement 11796, parm_start=8525
// OP_DONE	0	0	0
void () info_player_start = 
{
};


// info_player_start2
// function begins at statement 11797, parm_start=8526
// OP_DONE	0	0	0
void () info_player_start2 = 
{
};


// testplayerstart
// function begins at statement 11798, parm_start=8527
// OP_DONE	0	0	0
void () testplayerstart = 
{
};


// info_player_deathmatch
// function begins at statement 11799, parm_start=8528
// OP_DONE	0	0	0
void () info_player_deathmatch = 
{
};


// info_player_coop
// function begins at statement 11800, parm_start=8529
// OP_DONE	0	0	0
void () info_player_coop = 
{
};


// NextLevel
// function begins at statement 11801, parm_start=8529
// OP_EQ_S	34	8530	8531
// OP_IFNOT	8531	39	0
// OP_STORE_V	6635	4	0
// OP_CALL1	490	0	0
// OP_NOT_F	1	0	8532
// OP_IFNOT	8532	3	0
// OP_STORE_S	8533	34	0
// OP_GOTO	28	0	0
// OP_BITAND	38	214	8534
// OP_NOT_F	8534	0	8535
// OP_IFNOT	8535	5	0
// OP_STORE_S	8533	34	0
// OP_BITOR	38	214	8536
// OP_STORE_F	8536	38	0
// OP_GOTO	21	0	0
// OP_BITAND	38	216	8537
// OP_NOT_F	8537	0	8538
// OP_IFNOT	8538	5	0
// OP_STORE_S	8539	34	0
// OP_BITOR	38	216	8540
// OP_STORE_F	8540	38	0
// OP_GOTO	14	0	0
// OP_BITAND	38	229	8541
// OP_NOT_F	8541	0	8542
// OP_IFNOT	8542	5	0
// OP_STORE_S	8543	34	0
// OP_BITOR	38	229	8544
// OP_STORE_F	8544	38	0
// OP_GOTO	7	0	0
// OP_BITAND	38	217	8545
// OP_NOT_F	8545	0	8546
// OP_IFNOT	8546	4	0
// OP_STORE_S	8547	34	0
// OP_SUB_F	38	232	8548
// OP_STORE_F	8548	38	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	8529	0
// OP_ADDRESS	8529	356	8549
// OP_STOREP_S	34	8549	0
// OP_GOTO	13	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	8550	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	8529	0
// OP_NOT_ENT	8529	0	8551
// OP_IFNOT	8551	6	0
// OP_STORE_S	8530	34	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	8529	0
// OP_ADDRESS	8529	356	8552
// OP_STOREP_S	34	8552	0
// OP_LOAD_S	8529	356	8553
// OP_STORE_S	8553	8269	0
// OP_STORE_F	214	347	0
// OP_LOAD_F	8529	150	8554
// OP_LT	8554	31	8555
// OP_IFNOT	8555	6	0
// OP_ADDRESS	8529	148	8556
// OP_STOREP_FNC	8304	8556	0
// OP_ADDRESS	8529	150	8557
// OP_ADD_F	31	3036	8558
// OP_STOREP_F	8558	8557	0
// OP_DONE	0	0	0
void () NextLevel = 
{
    local entity o;
    if(mapname == "start")
    {
        if(!cvar("registered"))
        {
            mapname = "e1m1";
        }
        else
        {
            if(!(serverflags & TRUE))
            {
                mapname = "e1m1";
                serverflags = serverflags | TRUE;
            }
            else
            {
                if(!(serverflags & FL_SWIM))
                {
                    mapname = "e2m1";
                    serverflags = serverflags | FL_SWIM;
                }
                else
                {
                    if(!(serverflags & MOVETYPE_STEP))
                    {
                        mapname = "e3m1";
                        serverflags = serverflags | MOVETYPE_STEP;
                    }
                    else
                    {
                        
                        if(!(serverflags & FL_CLIENT))
                        {
                            mapname = "e4m1";
                            serverflags = serverflags - MOVETYPE_PUSH;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        o = spawn();
        o.map = mapname;
    }
    else
    {
        o = find(world, classname, "trigger_changelevel");
        
        if(!o)
        {
            mapname = "start";
            o = spawn();
            o.map = mapname;
        }
        
    }
    
    nextmap = o.map;
    gameover = TRUE;
    
    if(o.nextthink < time)
    {
        o.think = execute_changelevel;
        o.nextthink = time + 0.1;
    }
    
};


// CheckRules
// function begins at statement 11865, parm_start=8560
// OP_IFNOT	347	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	8562	4	0
// OP_CALL1	490	0	0
// OP_STORE_F	1	8561	0
// OP_LOAD_F	28	153	8563
// OP_GE	8563	8561	8564
// OP_AND	8561	8564	8565
// OP_IFNOT	8565	3	0
// OP_CALL0	6709	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckRules = 
{
    local float timelimit;
    local float fraglimit;
    
    if(gameover)
    {
        return;
    }
    
    fraglimit = cvar("fraglimit");
    
    if(fraglimit && (self.frags >= fraglimit))
    {
        NextLevel();
        return;
    }
    
};


// PlayerDeathThink
// function begins at statement 11877, parm_start=8567
// OP_LOAD_F	28	182	8569
// OP_BITAND	8569	223	8570
// OP_IFNOT	8570	18	0
// OP_LOAD_V	28	113	8571
// OP_STORE_V	8571	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	8568	0
// OP_SUB_F	8568	2323	8574
// OP_STORE_F	8574	8568	0
// OP_LE	8568	213	8575
// OP_IFNOT	8575	4	0
// OP_ADDRESS	28	113	8576
// OP_STOREP_V	286	8576	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	113	8579
// OP_LOAD_V	28	113	8582
// OP_STORE_V	8582	4	0
// OP_CALL1	459	0	0
// OP_MUL_FV	8568	1	8585
// OP_STOREP_V	8585	8579	0
// OP_LOAD_F	28	165	8588
// OP_EQ_F	8588	248	8589
// OP_IFNOT	8589	11	0
// OP_LOAD_F	28	172	8590
// OP_LOAD_F	28	171	8591
// OP_OR	8590	8591	8592
// OP_LOAD_F	28	170	8593
// OP_OR	8592	8593	8594
// OP_IFNOT	8594	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	165	8595
// OP_STOREP_F	249	8595	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	8596
// OP_NOT_F	8596	0	8597
// OP_IFNOT	8597	11	0
// OP_LOAD_F	28	172	8598
// OP_NOT_F	8598	0	8599
// OP_LOAD_F	28	171	8600
// OP_NOT_F	8600	0	8601
// OP_AND	8599	8601	8602
// OP_LOAD_F	28	170	8603
// OP_NOT_F	8603	0	8604
// OP_AND	8602	8604	8605
// OP_IFNOT	8605	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	170	8606
// OP_STOREP_F	213	8606	0
// OP_ADDRESS	28	171	8607
// OP_STOREP_F	213	8607	0
// OP_ADDRESS	28	172	8608
// OP_STOREP_F	213	8608	0
// OP_CALL0	8358	0	0
// OP_DONE	0	0	0
void () PlayerDeathThink = 
{
    local entity old_self;
    local float forward;
    
    if(self.flags & FL_ONGROUND)
    {
        forward = vlen(self.velocity);
        forward = forward - 20;
        if(forward <= FALSE)
        {
            self.velocity = VEC_ORIGIN;
        }
        else
        {
            self.velocity = forward * normalize(self.velocity);
        }
        
    }
    
    
    if(self.deadflag == DEAD_DEAD)
    {
        
        if((self.button2 || self.button1) || self.button0)
        {
            return;
        }
        
        self.deadflag = DEAD_RESPAWNABLE;
        return;
    }
    
    
    if(!(obot_game_option_bitflags & OBOT_ROCKETARENA))
    {
        
        if((!self.button2 && !self.button1) && !self.button0)
        {
            return;
        }
        
    }
    
    self.button0 = FALSE;
    self.button1 = FALSE;
    self.button2 = FALSE;
    respawn();
};


// PlayerJump
// function begins at statement 11931, parm_start=8610
// OP_LOAD_F	28	182	8616
// OP_BITAND	8616	225	8617
// OP_IFNOT	8617	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	8618
// OP_GE	8618	216	8619
// OP_IFNOT	8619	45	0
// OP_LOAD_F	28	190	8620
// OP_EQ_F	8620	278	8621
// OP_IFNOT	8621	8	0
// OP_ADDRESS	28	116	8622
// OP_STOREP_F	1997	8622	0
// OP_BITAND	821	767	8623
// OP_IFNOT	8623	3	0
// OP_ADDRESS	28	116	8624
// OP_STOREP_F	540	8624	0
// OP_GOTO	9	0	0
// OP_LOAD_F	28	190	8625
// OP_EQ_F	8625	279	8626
// OP_IFNOT	8626	4	0
// OP_ADDRESS	28	116	8627
// OP_STOREP_F	2805	8627	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	116	8628
// OP_STOREP_F	1470	8628	0
// OP_LOAD_S	28	129	8629
// OP_EQ_S	8629	1236	8630
// OP_IFNOT	8630	23	0
// OP_LOAD_F	28	395	8631
// OP_LT	8631	31	8632
// OP_IFNOT	8632	20	0
// OP_ADDRESS	28	395	8633
// OP_ADD_F	31	214	8634
// OP_STOREP_F	8634	8633	0
// OP_CALL0	457	0	0
// OP_LT	1	539	8635
// OP_IFNOT	8635	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6682	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6683	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	8636
// OP_BITAND	8636	223	8637
// OP_NOT_F	8637	0	8638
// OP_IFNOT	8638	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	182	8639
// OP_BITAND	8639	226	8640
// OP_NOT_F	8640	0	8641
// OP_IFNOT	8641	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	182	8642
// OP_LOAD_F	28	182	8643
// OP_LOAD_F	28	182	8644
// OP_BITAND	8644	226	8645
// OP_SUB_F	8643	8645	8646
// OP_STOREP_F	8646	8642	0
// OP_ADDRESS	28	182	8647
// OP_LOAD_F	28	182	8648
// OP_SUB_F	8648	223	8649
// OP_STOREP_F	8649	8647	0
// OP_ADDRESS	28	172	8650
// OP_STOREP_F	213	8650	0
// OP_LOAD_S	28	129	8651
// OP_EQ_S	8651	1236	8652
// OP_IFNOT	8652	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6645	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	116	8653
// OP_LOAD_F	28	116	8654
// OP_ADD_F	8654	734	8655
// OP_STOREP_F	8655	8653	0
// OP_DONE	0	0	0
void () PlayerJump = 
{
    local vector start;
    local vector end;
    
    if(self.flags & FL_WATERJUMP)
    {
        return;
    }
    
    
    if(self.waterlevel >= FL_SWIM)
    {
        if(self.watertype == CONTENT_WATER)
        {
            self.velocity_z = 100;
            
            if(obot_game_option_bitflags & OBOT_ROCKETARENA)
            {
                self.velocity_z = RA_MAXIDLETIME;
            }
            
        }
        else
        {
            if(self.watertype == CONTENT_SLIME)
            {
                self.velocity_z = 80;
            }
            else
            {
                self.velocity_z = 50;
            }
            
        }
        
        
        if(self.classname == "player")
        {
            
            if(self.swim_flag < time)
            {
                self.swim_flag = time + TRUE;
                if(random() < RA_PLAYERSTATTIME)
                {
                    sound(self, CHAN_BODY, "misc/water1.wav", TRUE, ATTN_NORM);
                }
                else
                {
                    sound(self, CHAN_BODY, "misc/water2.wav", TRUE, ATTN_NORM);
                }
                
            }
            
        }
        
        return;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        return;
    }
    
    
    if(!(self.flags & FL_JUMPRELEASED))
    {
        return;
    }
    
    self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
    self.flags = self.flags - FL_ONGROUND;
    self.button2 = FALSE;
    
    if(self.classname == "player")
    {
        sound(self, CHAN_BODY, "player/plyrjmp8.wav", TRUE, ATTN_NORM);
    }
    
    self.velocity_z = self.velocity_z + GLOBALDEF717_270;
};

.float dmgtime;

// WaterMove
// function begins at statement 12018, parm_start=8658
// OP_LOAD_F	28	103	8658
// OP_EQ_F	8658	233	8659
// OP_IFNOT	8659	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	8660
// OP_LT	8660	213	8661
// OP_IFNOT	8661	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	189	8662
// OP_NE_F	8662	228	8663
// OP_IFNOT	8663	27	0
// OP_LOAD_F	28	396	8664
// OP_LT	8664	31	8665
// OP_IFNOT	8665	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6651	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	396	8666
// OP_ADD_F	31	234	8667
// OP_LT	8666	8667	8668
// OP_IFNOT	8668	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6650	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	396	8669
// OP_ADD_F	31	791	8670
// OP_STOREP_F	8670	8669	0
// OP_ADDRESS	28	425	8671
// OP_STOREP_F	216	8671	0
// OP_GOTO	25	0	0
// OP_LOAD_F	28	396	8672
// OP_LT	8672	31	8673
// OP_IFNOT	8673	22	0
// OP_LOAD_F	28	379	8674
// OP_LT	8674	31	8675
// OP_IFNOT	8675	19	0
// OP_ADDRESS	28	425	8676
// OP_LOAD_F	28	425	8677
// OP_ADD_F	8677	216	8678
// OP_STOREP_F	8678	8676	0
// OP_LOAD_F	28	425	8679
// OP_GT	8679	765	8680
// OP_IFNOT	8680	3	0
// OP_ADDRESS	28	425	8681
// OP_STOREP_F	235	8681	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	425	8682
// OP_STORE_V	8682	13	0
// OP_CALL4	522	0	0
// OP_ADDRESS	28	379	8683
// OP_ADD_F	31	214	8684
// OP_STOREP_F	8684	8683	0
// OP_LOAD_F	28	189	8685
// OP_NOT_F	8685	0	8686
// OP_IFNOT	8686	15	0
// OP_LOAD_F	28	182	8687
// OP_BITAND	8687	218	8688
// OP_IFNOT	8688	11	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6679	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	182	8689
// OP_LOAD_F	28	182	8690
// OP_SUB_F	8690	218	8691
// OP_STOREP_F	8691	8689	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	190	8692
// OP_EQ_F	8692	280	8693
// OP_IFNOT	8693	22	0
// OP_LOAD_F	28	8656	8694
// OP_LT	8694	31	8695
// OP_IFNOT	8695	18	0
// OP_LOAD_F	28	383	8696
// OP_GT	8696	31	8697
// OP_IFNOT	8697	5	0
// OP_ADDRESS	28	8656	8698
// OP_ADD_F	31	214	8699
// OP_STOREP_F	8699	8698	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	8656	8700
// OP_ADD_F	31	3267	8701
// OP_STOREP_F	8701	8700	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	8702
// OP_MUL_F	235	8702	8703
// OP_STORE_V	8703	13	0
// OP_CALL4	522	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	190	8704
// OP_EQ_F	8704	279	8705
// OP_IFNOT	8705	17	0
// OP_LOAD_F	28	8656	8706
// OP_LT	8706	31	8707
// OP_LOAD_F	28	383	8708
// OP_LT	8708	31	8709
// OP_AND	8707	8709	8710
// OP_IFNOT	8710	11	0
// OP_ADDRESS	28	8656	8711
// OP_ADD_F	31	214	8712
// OP_STOREP_F	8712	8711	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_LOAD_F	28	189	8713
// OP_MUL_F	229	8713	8714
// OP_STORE_V	8714	13	0
// OP_CALL4	522	0	0
// OP_LOAD_F	28	182	8715
// OP_BITAND	8715	218	8716
// OP_NOT_F	8716	0	8717
// OP_IFNOT	8717	34	0
// OP_LOAD_F	28	190	8718
// OP_EQ_F	8718	280	8719
// OP_IFNOT	8719	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6678	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	190	8720
// OP_EQ_F	8720	278	8721
// OP_IFNOT	8721	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6677	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_F	28	190	8722
// OP_EQ_F	8722	279	8723
// OP_IFNOT	8723	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6676	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	182	8724
// OP_LOAD_F	28	182	8725
// OP_ADD_F	8725	218	8726
// OP_STOREP_F	8726	8724	0
// OP_ADDRESS	28	8656	8727
// OP_STOREP_F	213	8727	0
// OP_LOAD_F	28	182	8728
// OP_BITAND	8728	225	8729
// OP_NOT_F	8729	0	8730
// OP_IFNOT	8730	10	0
// OP_ADDRESS	28	113	8731
// OP_LOAD_V	28	113	8734
// OP_LOAD_F	28	189	8737
// OP_MUL_F	4478	8737	8738
// OP_MUL_F	8738	32	8739
// OP_LOAD_V	28	113	8740
// OP_MUL_FV	8739	8740	8743
// OP_SUB_V	8734	8743	8746
// OP_STOREP_V	8746	8731	0
// OP_DONE	0	0	0
void () WaterMove = 
{
    
    if(self.movetype == MOVETYPE_NOCLIP)
    {
        return;
    }
    
    
    if(self.health < FALSE)
    {
        return;
    }
    
    if(self.waterlevel != MOVETYPE_WALK)
    {
        if(self.air_finished < time)
        {
            sound(self, CHAN_VOICE, "player/gasp2.wav", TRUE, ATTN_NORM);
        }
        else
        {
            
            if(self.air_finished < (time + MOVETYPE_FLYMISSILE))
            {
                sound(self, CHAN_VOICE, "player/gasp1.wav", TRUE, ATTN_NORM);
            }
            
        }
        
        self.air_finished = time + BOTSHIRTPANTS_12;
        self.dmg = FL_SWIM;
    }
    else
    {
        
        if(self.air_finished < time)
        {
            
            if(self.pain_finished < time)
            {
                self.dmg = self.dmg + FL_SWIM;
                
                if(self.dmg > GLOBALDEF748_15)
                {
                    self.dmg = MOVETYPE_BOUNCE;
                }
                
                T_Damage(self, world, world, self.dmg);
                self.pain_finished = time + TRUE;
            }
            
        }
        
    }
    
    
    if(!self.waterlevel)
    {
        
        if(self.flags & FL_INWATER)
        {
            sound(self, CHAN_BODY, "misc/outwater.wav", TRUE, ATTN_NORM);
            self.flags = self.flags - FL_INWATER;
        }
        
        return;
    }
    
    if(self.watertype == CONTENT_LAVA)
    {
        
        if(self.dmgtime < time)
        {
            if(self.radsuit_finished > time)
            {
                self.dmgtime = time + TRUE;
            }
            else
            {
                self.dmgtime = time + 0.2;
            }
            
            T_Damage(self, world, world, MOVETYPE_BOUNCE * self.waterlevel);
        }
        
    }
    else
    {
        
        if(self.watertype == CONTENT_SLIME)
        {
            
            if((self.dmgtime < time) && (self.radsuit_finished < time))
            {
                self.dmgtime = time + TRUE;
                T_Damage(self, world, world, MOVETYPE_STEP * self.waterlevel);
            }
            
        }
        
    }
    
    
    if(!(self.flags & FL_INWATER))
    {
        
        if(self.watertype == CONTENT_LAVA)
        {
            sound(self, CHAN_BODY, "player/inlava.wav", TRUE, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/inh2o.wav", TRUE, ATTN_NORM);
        }
        
        
        if(self.watertype == CONTENT_SLIME)
        {
            sound(self, CHAN_BODY, "player/slimbrn2.wav", TRUE, ATTN_NORM);
        }
        
        self.flags = self.flags + FL_INWATER;
        self.dmgtime = FALSE;
    }
    
    
    if(!(self.flags & FL_WATERJUMP))
    {
        self.velocity = self.velocity - (((0.8 * self.waterlevel) * frametime) * self.velocity);
    }
    
};


// CheckWaterJump
// function begins at statement 12190, parm_start=8750
// OP_LOAD_V	28	117	8756
// OP_STORE_V	8756	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	8759
// OP_STORE_V	8759	8750	0
// OP_ADD_F	8752	217	8762
// OP_STORE_F	8762	8752	0
// OP_STORE_F	213	61	0
// OP_STORE_V	59	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	59	736	8763
// OP_ADD_V	8750	8763	8766
// OP_STORE_V	8766	8753	0
// OP_STORE_V	8750	4	0
// OP_STORE_V	8753	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_LT	70	214	8769
// OP_IFNOT	8769	34	0
// OP_LOAD_F	28	141	8770
// OP_ADD_F	8752	8770	8771
// OP_SUB_F	8771	217	8772
// OP_STORE_F	8772	8752	0
// OP_MUL_VF	59	736	8773
// OP_ADD_V	8750	8773	8776
// OP_STORE_V	8776	8753	0
// OP_ADDRESS	28	202	8779
// OP_MUL_VF	74	8782	8783
// OP_STOREP_V	8783	8779	0
// OP_STORE_V	8750	4	0
// OP_STORE_V	8753	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	8786
// OP_IFNOT	8786	17	0
// OP_ADDRESS	28	182	8787
// OP_LOAD_F	28	182	8788
// OP_BITOR	8788	225	8789
// OP_STOREP_F	8789	8787	0
// OP_ADDRESS	28	116	8790
// OP_STOREP_F	5827	8790	0
// OP_ADDRESS	28	182	8791
// OP_LOAD_F	28	182	8792
// OP_LOAD_F	28	182	8793
// OP_BITAND	8793	226	8794
// OP_SUB_F	8792	8794	8795
// OP_STOREP_F	8795	8791	0
// OP_ADDRESS	28	186	8796
// OP_ADD_F	31	216	8797
// OP_STOREP_F	8797	8796	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () CheckWaterJump = 
{
    local vector start;
    local vector end;
    makevectors(self.angles);
    start = self.origin;
    start_z = start_z + FL_CLIENT;
    v_forward_z = FALSE;
    normalize(v_forward);
    end = start + (v_forward * OBOT_MAXBOTS);
    traceline(start, end, TRUE, self);
    
    if(trace_fraction < TRUE)
    {
        start_z = (start_z + self.maxs_z) - FL_CLIENT;
        end = start + (v_forward * OBOT_MAXBOTS);
        self.movedir = trace_plane_normal * -50;
        traceline(start, end, TRUE, self);
        
        if(trace_fraction == TRUE)
        {
            self.flags = self.flags | FL_WATERJUMP;
            self.velocity_z = 225;
            self.flags = self.flags - (self.flags & FL_JUMPRELEASED);
            self.teleport_time = time + FL_SWIM;
            return;
        }
        
    }
    
};


// PlayerPreThink
// function begins at statement 12244, parm_start=8798
// OP_IFNOT	8213	3	0
// OP_CALL0	8294	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	8800
// OP_EQ_V	8800	286	8803
// OP_IFNOT	8803	2	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	8804
// OP_IFNOT	8804	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1216	0	0
// OP_LOAD_V	28	175	8805
// OP_STORE_V	8805	4	0
// OP_CALL1	452	0	0
// OP_CALL0	8559	0	0
// OP_CALL0	8657	0	0
// OP_LOAD_F	28	189	8808
// OP_EQ_F	8808	216	8809
// OP_IFNOT	8809	2	0
// OP_CALL0	8749	0	0
// OP_LOAD_F	28	165	8810
// OP_GE	8810	248	8811
// OP_IFNOT	8811	3	0
// OP_CALL0	8566	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	8812
// OP_EQ_F	8812	247	8813
// OP_IFNOT	8813	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	172	8814
// OP_IFNOT	8814	3	0
// OP_CALL0	8609	0	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	182	8815
// OP_LOAD_F	28	182	8816
// OP_BITOR	8816	226	8817
// OP_STOREP_F	8817	8815	0
// OP_LOAD_F	28	422	8818
// OP_LT	31	8818	8819
// OP_IFNOT	8819	3	0
// OP_ADDRESS	28	113	8820
// OP_STOREP_V	286	8820	0
// OP_LOAD_F	28	378	8823
// OP_GT	31	8823	8824
// OP_LOAD_F	28	157	8825
// OP_EQ_F	8825	213	8826
// OP_AND	8824	8826	8827
// OP_LOAD_F	28	154	8828
// OP_NE_F	8828	253	8829
// OP_AND	8827	8829	8830
// OP_IFNOT	8830	5	0
// OP_ADDRESS	28	154	8831
// OP_CALL0	4567	0	0
// OP_STOREP_F	1	8831	0
// OP_CALL0	4295	0	0
// OP_DONE	0	0	0
void () PlayerPreThink = 
{
    local float UNUSED1;
    local float UNUSED2;
    
    if(intermission_running)
    {
        IntermissionThink();
        return;
    }
    
    
    if(self.view_ofs == VEC_ORIGIN)
    {
        return;
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_prethink(self);
    }
    
    makevectors(self.v_angle);
    CheckRules();
    WaterMove();
    
    if(self.waterlevel == FL_SWIM)
    {
        CheckWaterJump();
    }
    
    
    if(self.deadflag >= DEAD_DEAD)
    {
        PlayerDeathThink();
        return;
    }
    
    
    if(self.deadflag == DEAD_DYING)
    {
        return;
    }
    
    if(self.button2)
    {
        PlayerJump();
    }
    else
    {
        self.flags = self.flags | FL_JUMPRELEASED;
    }
    
    
    if(time < self.pausetime)
    {
        self.velocity = VEC_ORIGIN;
    }
    
    
    if(((time > self.attack_finished) && (self.currentammo == FALSE)) && (self.weapon != IT_AXE))
    {
        self.weapon = W_BestWeapon();
        W_SetCurrentAmmo();
    }
    
};


// CheckPowerups
// function begins at statement 12300, parm_start=8833
// OP_LOAD_F	28	152	8833
// OP_LE	8833	213	8834
// OP_IFNOT	8834	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	381	8835
// OP_IFNOT	8835	72	0
// OP_LOAD_F	28	387	8836
// OP_LT	8836	31	8837
// OP_IFNOT	8837	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	5065	10	0
// OP_STORE_V	539	13	0
// OP_STORE_V	332	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	387	8838
// OP_CALL0	457	0	0
// OP_MUL_F	1	228	8839
// OP_ADD_F	31	8839	8840
// OP_ADD_F	8840	214	8841
// OP_STOREP_F	8841	8838	0
// OP_LOAD_F	28	381	8842
// OP_ADD_F	31	228	8843
// OP_LT	8842	8843	8844
// OP_IFNOT	8844	28	0
// OP_LOAD_F	28	386	8845
// OP_EQ_F	8845	214	8846
// OP_IFNOT	8846	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8847	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	5064	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	386	8848
// OP_ADD_F	31	214	8849
// OP_STOREP_F	8849	8848	0
// OP_LOAD_F	28	386	8850
// OP_LT	8850	31	8851
// OP_IFNOT	8851	7	0
// OP_ADDRESS	28	386	8852
// OP_ADD_F	31	214	8853
// OP_STOREP_F	8853	8852	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_LOAD_F	28	381	8854
// OP_LT	8854	31	8855
// OP_IFNOT	8855	9	0
// OP_ADDRESS	28	162	8856
// OP_LOAD_F	28	162	8857
// OP_SUB_F	8857	272	8858
// OP_STOREP_F	8858	8856	0
// OP_ADDRESS	28	381	8859
// OP_STOREP_F	213	8859	0
// OP_ADDRESS	28	386	8860
// OP_STOREP_F	213	8860	0
// OP_ADDRESS	28	131	8861
// OP_STOREP_F	213	8861	0
// OP_BITAND	821	777	8862
// OP_IFNOT	8862	6	0
// OP_ADDRESS	28	574	8863
// OP_STOREP_F	213	8863	0
// OP_ADDRESS	28	573	8864
// OP_STOREP_F	525	8864	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	132	8865
// OP_STOREP_F	213	8865	0
// OP_ADDRESS	28	93	8866
// OP_STOREP_F	525	8866	0
// OP_GOTO	14	0	0
// OP_BITAND	821	777	8867
// OP_IFNOT	8867	7	0
// OP_ADDRESS	28	574	8868
// OP_LOAD_F	28	572	8869
// OP_STOREP_F	8869	8868	0
// OP_ADDRESS	28	573	8870
// OP_STOREP_F	526	8870	0
// OP_GOTO	6	0	0
// OP_ADDRESS	28	132	8871
// OP_LOAD_F	28	572	8872
// OP_STOREP_F	8872	8871	0
// OP_ADDRESS	28	93	8873
// OP_STOREP_F	526	8873	0
// OP_LOAD_F	28	380	8874
// OP_IFNOT	8874	57	0
// OP_LOAD_F	28	380	8875
// OP_ADD_F	31	228	8876
// OP_LT	8875	8876	8877
// OP_IFNOT	8877	28	0
// OP_LOAD_F	28	384	8878
// OP_EQ_F	8878	214	8879
// OP_IFNOT	8879	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8880	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	5042	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	384	8881
// OP_ADD_F	31	214	8882
// OP_STOREP_F	8882	8881	0
// OP_LOAD_F	28	384	8883
// OP_LT	8883	31	8884
// OP_IFNOT	8884	7	0
// OP_ADDRESS	28	384	8885
// OP_ADD_F	31	214	8886
// OP_STOREP_F	8886	8885	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_LOAD_F	28	380	8887
// OP_LT	8887	31	8888
// OP_IFNOT	8888	9	0
// OP_ADDRESS	28	162	8889
// OP_LOAD_F	28	162	8890
// OP_SUB_F	8890	273	8891
// OP_STOREP_F	8891	8889	0
// OP_ADDRESS	28	384	8892
// OP_STOREP_F	213	8892	0
// OP_ADDRESS	28	380	8893
// OP_STOREP_F	213	8893	0
// OP_LOAD_F	28	380	8894
// OP_GT	8894	31	8895
// OP_IFNOT	8895	6	0
// OP_ADDRESS	28	133	8896
// OP_LOAD_F	28	133	8897
// OP_BITOR	8897	341	8898
// OP_STOREP_F	8898	8896	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	8899
// OP_LOAD_F	28	133	8900
// OP_LOAD_F	28	133	8901
// OP_BITAND	8901	341	8902
// OP_SUB_F	8900	8902	8903
// OP_STOREP_F	8903	8899	0
// OP_LOAD_F	28	382	8904
// OP_IFNOT	8904	57	0
// OP_LOAD_F	28	382	8905
// OP_ADD_F	31	228	8906
// OP_LT	8905	8906	8907
// OP_IFNOT	8907	28	0
// OP_LOAD_F	28	388	8908
// OP_EQ_F	8908	214	8909
// OP_IFNOT	8909	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8910	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	5077	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	388	8911
// OP_ADD_F	31	214	8912
// OP_STOREP_F	8912	8911	0
// OP_LOAD_F	28	388	8913
// OP_LT	8913	31	8914
// OP_IFNOT	8914	7	0
// OP_ADDRESS	28	388	8915
// OP_ADD_F	31	214	8916
// OP_STOREP_F	8916	8915	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_LOAD_F	28	382	8917
// OP_LT	8917	31	8918
// OP_IFNOT	8918	9	0
// OP_ADDRESS	28	162	8919
// OP_LOAD_F	28	162	8920
// OP_SUB_F	8920	275	8921
// OP_STOREP_F	8921	8919	0
// OP_ADDRESS	28	382	8922
// OP_STOREP_F	213	8922	0
// OP_ADDRESS	28	388	8923
// OP_STOREP_F	213	8923	0
// OP_LOAD_F	28	382	8924
// OP_GT	8924	31	8925
// OP_IFNOT	8925	6	0
// OP_ADDRESS	28	133	8926
// OP_LOAD_F	28	133	8927
// OP_BITOR	8927	341	8928
// OP_STOREP_F	8928	8926	0
// OP_GOTO	7	0	0
// OP_ADDRESS	28	133	8929
// OP_LOAD_F	28	133	8930
// OP_LOAD_F	28	133	8931
// OP_BITAND	8931	341	8932
// OP_SUB_F	8930	8932	8933
// OP_STOREP_F	8933	8929	0
// OP_LOAD_F	28	383	8934
// OP_IFNOT	8934	46	0
// OP_ADDRESS	28	396	8935
// OP_ADD_F	31	791	8936
// OP_STOREP_F	8936	8935	0
// OP_LOAD_F	28	383	8937
// OP_ADD_F	31	228	8938
// OP_LT	8937	8938	8939
// OP_IFNOT	8939	28	0
// OP_LOAD_F	28	390	8940
// OP_EQ_F	8940	214	8941
// OP_IFNOT	8941	16	0
// OP_STORE_V	28	4	0
// OP_STORE_V	8942	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	325	7	0
// OP_STORE_V	5054	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	390	8943
// OP_ADD_F	31	214	8944
// OP_STOREP_F	8944	8943	0
// OP_LOAD_F	28	390	8945
// OP_LT	8945	31	8946
// OP_IFNOT	8946	7	0
// OP_ADDRESS	28	390	8947
// OP_ADD_F	31	214	8948
// OP_STOREP_F	8948	8947	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_LOAD_F	28	383	8949
// OP_LT	8949	31	8950
// OP_IFNOT	8950	9	0
// OP_ADDRESS	28	162	8951
// OP_LOAD_F	28	162	8952
// OP_SUB_F	8952	274	8953
// OP_STOREP_F	8953	8951	0
// OP_ADDRESS	28	390	8954
// OP_STOREP_F	213	8954	0
// OP_ADDRESS	28	383	8955
// OP_STOREP_F	213	8955	0
// OP_DONE	0	0	0
void () CheckPowerups = 
{
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    if(self.invisible_finished)
    {
        
        if(self.invisible_sound < time)
        {
            sound(self, CHAN_AUTO, "items/inv3.wav", RA_PLAYERSTATTIME, ATTN_IDLE);
            self.invisible_sound = (time + (random() * MOVETYPE_WALK)) + TRUE;
        }
        
        
        if(self.invisible_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.invisible_time == TRUE)
            {
                sprint(self, "Ring of Shadows magic is fading\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/inv2.wav", TRUE, ATTN_NORM);
                self.invisible_time = time + TRUE;
            }
            
            
            if(self.invisible_time < time)
            {
                self.invisible_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.invisible_finished < time)
        {
            self.items = self.items - IT_INVISIBILITY;
            self.invisible_finished = FALSE;
            self.invisible_time = FALSE;
        }
        
        self.frame = FALSE;
        if(obot_game_option_bitflags & globaldef000760)
        {
            self.field000251 = FALSE;
            self.clmodelindex = modelindex_eyes;
        }
        else
        {
            self.skin = FALSE;
            self.modelindex = modelindex_eyes;
        }
        
    }
    else
    {
        if(obot_game_option_bitflags & globaldef000760)
        {
            self.field000251 = self.field000249;
            self.clmodelindex = modelindex_player;
        }
        else
        {
            self.skin = self.field000249;
            self.modelindex = modelindex_player;
        }
        
    }
    
    
    if(self.invincible_finished)
    {
        
        if(self.invincible_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.invincible_time == TRUE)
            {
                sprint(self, "Protection is almost burned out\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/protect2.wav", TRUE, ATTN_NORM);
                self.invincible_time = time + TRUE;
            }
            
            
            if(self.invincible_time < time)
            {
                self.invincible_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.invincible_finished < time)
        {
            self.items = self.items - IT_INVULNERABILITY;
            self.invincible_time = FALSE;
            self.invincible_finished = FALSE;
        }
        
        if(self.invincible_finished > time)
        {
            self.effects = self.effects | EF_DIMLIGHT;
        }
        else
        {
            self.effects = self.effects - (self.effects & EF_DIMLIGHT);
        }
        
    }
    
    
    if(self.super_damage_finished)
    {
        
        if(self.super_damage_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.super_time == TRUE)
            {
                sprint(self, "Quad Damage is wearing off\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/damage2.wav", TRUE, ATTN_NORM);
                self.super_time = time + TRUE;
            }
            
            
            if(self.super_time < time)
            {
                self.super_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.super_damage_finished < time)
        {
            self.items = self.items - IT_QUAD;
            self.super_damage_finished = FALSE;
            self.super_time = FALSE;
        }
        
        if(self.super_damage_finished > time)
        {
            self.effects = self.effects | EF_DIMLIGHT;
        }
        else
        {
            self.effects = self.effects - (self.effects & EF_DIMLIGHT);
        }
        
    }
    
    
    if(self.radsuit_finished)
    {
        self.air_finished = time + BOTSHIRTPANTS_12;
        
        if(self.radsuit_finished < (time + MOVETYPE_WALK))
        {
            
            if(self.rad_time == TRUE)
            {
                sprint(self, "Air supply in Biosuit expiring\n");
                stuffcmd(self, "bf\n");
                sound(self, CHAN_AUTO, "items/suit2.wav", TRUE, ATTN_NORM);
                self.rad_time = time + TRUE;
            }
            
            
            if(self.rad_time < time)
            {
                self.rad_time = time + TRUE;
                stuffcmd(self, "bf\n");
            }
            
        }
        
        
        if(self.radsuit_finished < time)
        {
            self.items = self.items - IT_SUIT;
            self.rad_time = FALSE;
            self.radsuit_finished = FALSE;
        }
        
    }
    
};


// PlayerPostThink
// function begins at statement 12554, parm_start=8956
// OP_LOAD_S	28	129	8959
// OP_EQ_S	8959	2849	8960
// OP_NOT_F	8213	0	8961
// OP_AND	8960	8961	8962
// OP_IFNOT	8962	3	0
// OP_CALL0	2796	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	28	166	8963
// OP_EQ_V	8963	286	8966
// OP_IFNOT	8966	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8967
// OP_EQ_S	8967	1236	8968
// OP_IFNOT	8968	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1055	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1069	0	0
// OP_LOAD_S	28	129	8969
// OP_EQ_S	8969	1236	8970
// OP_LOAD_S	28	129	8971
// OP_EQ_S	8971	2025	8972
// OP_OR	8970	8972	8973
// OP_IFNOT	8973	2	0
// OP_CALL0	1211	0	0
// OP_LOAD_F	28	165	8974
// OP_IFNOT	8974	4	0
// OP_ADDRESS	28	173	8975
// OP_STOREP_F	213	8975	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	8976
// OP_EQ_S	8976	2025	8977
// OP_IFNOT	8977	4	0
// OP_ADDRESS	28	173	8978
// OP_STOREP_F	213	8978	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1057	0	0
// OP_LOAD_F	28	575	8979
// OP_BITAND	8979	703	8980
// OP_IFNOT	8980	2	0
// OP_CALL0	1196	0	0
// OP_IFNOT	35	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	7410	0	0
// OP_CALL0	6496	0	0
// OP_LOAD_F	28	394	8981
// OP_LT	8981	8982	8983
// OP_LOAD_F	28	182	8984
// OP_BITAND	8984	223	8985
// OP_AND	8983	8985	8986
// OP_LOAD_F	28	152	8987
// OP_GT	8987	213	8988
// OP_AND	8986	8988	8989
// OP_IFNOT	8989	36	0
// OP_LOAD_F	28	190	8990
// OP_EQ_F	8990	278	8991
// OP_IFNOT	8991	8	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6675	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_GOTO	24	0	0
// OP_LOAD_F	28	394	8992
// OP_LT	8992	8993	8994
// OP_IFNOT	8994	15	0
// OP_STORE_V	28	4	0
// OP_STORE_V	30	7	0
// OP_STORE_V	30	10	0
// OP_STORE_V	230	13	0
// OP_CALL4	522	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6647	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	398	8995
// OP_STOREP_S	8996	8995	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6646	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	394	8997
// OP_STOREP_F	213	8997	0
// OP_LOAD_F	28	182	8998
// OP_BITAND	8998	223	8999
// OP_NOT_F	8999	0	9000
// OP_IFNOT	9000	4	0
// OP_ADDRESS	28	394	9001
// OP_LOAD_F	28	116	9002
// OP_STOREP_F	9002	9001	0
// OP_CALL0	8832	0	0
// OP_CALL0	1084	0	0
// OP_ADDRESS	28	576	9003
// OP_LOAD_V	28	113	9006
// OP_STOREP_V	9006	9003	0
// OP_ADDRESS	28	580	9009
// OP_LOAD_V	28	105	9012
// OP_STOREP_V	9012	9009	0
// OP_ADDRESS	28	584	9015
// OP_LOAD_F	28	182	9016
// OP_STOREP_F	9016	9015	0
// OP_ADDRESS	28	585	9017
// OP_LOAD_F	28	575	9018
// OP_STOREP_F	9018	9017	0
// OP_DONE	0	0	0
void () PlayerPostThink = 
{
    local float UNUSED1;
    local float UNUSED2;
    local float UNUSED3;
    
    if((self.classname == "KasCam") && !intermission_running)
    {
        CamThink();
        return;
    }
    
    
    if(self.view_ofs == VEC_ORIGIN)
    {
        return;
    }
    
    
    if(self.classname == "player")
    {
        func002267(self, self);
    }
    
    func002356(self);
    
    if((self.classname == "player") || (self.classname == "observer"))
    {
        BotImpulseCommand();
    }
    
    
    if(self.deadflag)
    {
        self.impulse = FALSE;
        return;
    }
    
    
    if(self.classname == "observer")
    {
        self.impulse = FALSE;
        return;
    }
    
    func002273(self);
    
    if(self.botflags & globaldef000686)
    {
        func002680();
    }
    
    
    if(deathmatch)
    {
        func000347(self);
    }
    
    W_WeaponFrame();
    
    if(((self.jump_flag < -300) && (self.flags & FL_ONGROUND)) && (self.health > FALSE))
    {
        if(self.watertype == CONTENT_WATER)
        {
            sound(self, CHAN_BODY, "player/h2ojump.wav", TRUE, ATTN_NORM);
        }
        else
        {
            if(self.jump_flag < -650)
            {
                T_Damage(self, world, world, MOVETYPE_FLY);
                sound(self, CHAN_VOICE, "player/land2.wav", TRUE, ATTN_NORM);
                self.deathtype = "falling";
            }
            else
            {
                sound(self, CHAN_VOICE, "player/land.wav", TRUE, ATTN_NORM);
            }
            
        }
        
        self.jump_flag = FALSE;
    }
    
    
    if(!(self.flags & FL_ONGROUND))
    {
        self.jump_flag = self.velocity_z;
    }
    
    CheckPowerups();
    func002380();
    self.old_velocity = self.velocity;
    self.old_origin = self.origin;
    self.old_flags = self.flags;
    self.old_botflags = self.botflags;
};


// ClientConnect
// function begins at statement 12667, parm_start=9019
// OP_ADDRESS	28	609	9021
// OP_STOREP_F	276	9021	0
// OP_ADDRESS	28	608	9022
// OP_LOAD_F	28	183	9023
// OP_SUB_F	9023	214	9024
// OP_STOREP_F	9024	9022	0
// OP_ADDRESS	28	610	9025
// OP_MUL_F	213	218	9026
// OP_LOAD_F	28	184	9027
// OP_ADD_F	9026	9027	9028
// OP_STOREP_F	9028	9025	0
// OP_ADDRESS	28	572	9029
// OP_STOREP_F	213	9029	0
// OP_IFNOT	833	3	0
// OP_ADDRESS	833	621	9030
// OP_STOREP_ENT	28	9030	0
// OP_ADDRESS	28	620	9031
// OP_STOREP_ENT	833	9031	0
// OP_ADDRESS	28	621	9032
// OP_STOREP_ENT	30	9032	0
// OP_STORE_ENT	28	833	0
// OP_LOAD_F	28	608	9033
// OP_STORE_V	9033	4	0
// OP_CALL1	1047	0	0
// OP_IFNOT	1	46	0
// OP_STORE_ENT	834	9019	0
// OP_IFNOT	9019	35	0
// OP_LOAD_F	9019	608	9034
// OP_LOAD_F	28	608	9035
// OP_EQ_F	9034	9035	9036
// OP_IFNOT	9036	28	0
// OP_CALL0	1046	0	0
// OP_STORE_F	1	9020	0
// OP_EQ_F	9020	276	9037
// OP_IFNOT	9037	4	0
// OP_STORE_V	9019	4	0
// OP_CALL1	1100	0	0
// OP_GOTO	21	0	0
// OP_ADDRESS	9019	608	9038
// OP_STOREP_F	9020	9038	0
// OP_LOAD_F	9019	608	9039
// OP_STORE_V	9039	4	0
// OP_CALL1	1048	0	0
// OP_LOAD_F	9019	608	9040
// OP_STORE_V	9040	4	0
// OP_LOAD_S	9019	180	9041
// OP_STORE_V	9041	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	9019	608	9042
// OP_STORE_V	9042	4	0
// OP_LOAD_F	9019	153	9043
// OP_STORE_V	9043	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	9019	608	9044
// OP_STORE_V	9044	4	0
// OP_LOAD_F	9019	610	9045
// OP_STORE_V	9045	7	0
// OP_CALL2	1052	0	0
// OP_LOAD_ENT	9019	620	9046
// OP_STORE_ENT	9046	9019	0
// OP_GOTO	-34	0	0
// OP_LOAD_F	28	608	9047
// OP_STORE_V	9047	4	0
// OP_LOAD_S	28	180	9048
// OP_STORE_V	9048	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	28	608	9049
// OP_STORE_V	9049	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	28	608	9050
// OP_STORE_V	9050	4	0
// OP_CALL1	1048	0	0
// OP_ADDRESS	28	173	9051
// OP_STOREP_F	2035	9051	0
// OP_LOAD_F	28	608	9052
// OP_EQ_F	9052	213	9053
// OP_IFNOT	9053	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1209	0	0
// OP_NOT_F	816	0	9054
// OP_OR	37	9054	9055
// OP_IFNOT	9055	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1062	0	0
// OP_LOAD_S	28	180	9056
// OP_EQ_S	9056	9057	9058
// OP_LOAD_S	28	180	9059
// OP_EQ_S	9059	3002	9060
// OP_OR	9058	9060	9061
// OP_IFNOT	9061	4	0
// OP_ADDRESS	28	173	9062
// OP_STOREP_F	738	9062	0
// OP_GOTO	6	0	0
// OP_LOAD_S	28	180	9063
// OP_STORE_V	9063	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9064	4	0
// OP_CALL1	472	0	0
// OP_BITAND	821	767	9065
// OP_IFNOT	9065	3	0
// OP_ADDRESS	28	538	9066
// OP_STOREP_F	214	9066	0
// OP_IFNOT	8213	2	0
// OP_CALL0	8271	0	0
// OP_DONE	0	0	0
void () ClientConnect = 
{
    local entity bot;
    local float botclnum;
    self.botnumber = CONTENT_EMPTY;
    self.clientnumber = self.colormap - TRUE;
    self.clientcolor = (FALSE * FL_INWATER) + self.team;
    self.field000249 = FALSE;
    
    if(firstClient)
    {
        firstClient.prev = self;
    }
    
    self.next = firstClient;
    self.prev = world;
    firstClient = self;
    
    if(ClientIsActive(self.clientnumber))
    {
        bot = firstBot;
        
        while(bot)
        {
            
            if(bot.clientnumber == self.clientnumber)
            {
                botclnum = NextAvailableClientNumber();
                if(botclnum == CONTENT_EMPTY)
                {
                    DestroyBot(bot);
                }
                else
                {
                    bot.clientnumber = botclnum;
                    SetClientNumberUsed(bot.clientnumber);
                    msgUpdateClientNameToAll(bot.clientnumber, bot.netname);
                    msgUpdateClientFragsToAll(bot.clientnumber, bot.frags);
                    msgUpdateClientColorsToAll(bot.clientnumber, bot.clientcolor);
                }
                
            }
            
            bot = bot.next;
        }
        
        msgUpdateClientNameToAll(self.clientnumber, self.netname);
        msgUpdateClientFragsToAll(self.clientnumber, FALSE);
    }
    
    SetClientNumberUsed(self.clientnumber);
    self.impulse = 190;
    
    if(self.clientnumber == FALSE)
    {
        func002738(self);
    }
    
    
    if(teamplay || !globaldef000799)
    {
        ToggleObserverMode(self);
    }
    
    if((self.netname == "CamClient") || (self.netname == ""))
    {
        self.impulse = GLOBALDEF721_250;
    }
    else
    {
        bprint(self.netname);
        bprint(" entered the game\n");
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        self.motd = TRUE;
    }
    
    
    if(intermission_running)
    {
        ExitIntermission();
    }
    
};


// ClientDisconnect
// function begins at statement 12773, parm_start=9067
// OP_STORE_V	28	4	0
// OP_CALL1	7075	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1067	0	0
// OP_LOAD_F	28	608	9068
// OP_STORE_V	9068	4	0
// OP_STORE_V	3002	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	28	608	9069
// OP_STORE_V	9069	4	0
// OP_CALL1	1049	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	1210	0	0
// OP_LOAD_ENT	28	620	9070
// OP_IFNOT	9070	5	0
// OP_LOAD_ENT	28	620	9071
// OP_ADDRESS	9071	621	9072
// OP_LOAD_ENT	28	621	9073
// OP_STOREP_ENT	9073	9072	0
// OP_LOAD_ENT	28	621	9074
// OP_IFNOT	9074	6	0
// OP_LOAD_ENT	28	621	9075
// OP_ADDRESS	9075	620	9076
// OP_LOAD_ENT	28	620	9077
// OP_STOREP_ENT	9077	9076	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28	620	9078
// OP_STORE_ENT	9078	833	0
// OP_LOAD_F	28	575	9079
// OP_BITAND	9079	703	9080
// OP_IFNOT	9080	3	0
// OP_SUB_F	802	214	9081
// OP_STORE_F	9081	802	0
// OP_IFNOT	347	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	9083
// OP_EQ_F	9083	246	9084
// OP_IFNOT	9084	3	0
// OP_STORE_F	213	9082	0
// OP_GOTO	2	0	0
// OP_STORE_F	214	9082	0
// OP_CALL0	2932	0	0
// OP_IFNOT	1	25	0
// OP_LOAD_S	28	606	9085
// OP_STORE_V	9085	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	28	180	9086
// OP_STORE_V	9086	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9087	4	0
// OP_CALL1	472	0	0
// OP_LOAD_F	28	153	9088
// OP_STORE_V	9088	4	0
// OP_CALL1	474	0	0
// OP_STORE_V	1	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9089	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	6662	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	129	9090
// OP_STOREP_S	9091	9090	0
// OP_CALL0	8357	0	0
// OP_BITAND	821	767	9092
// OP_IFNOT	9092	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9082	7	0
// OP_CALL2	1215	0	0
// OP_DONE	0	0	0
void () ClientDisconnect = 
{
    local float UNUSED1;
    local float clientisalive;
    func000334(self);
    func002364(self);
    msgUpdateClientNameToAll(self.clientnumber, "");
    SetClientNumberFree(self.clientnumber);
    stopadmin(self);
    
    if(self.next)
    {
        self.next.prev = self.prev;
    }
    
    if(self.prev)
    {
        self.prev.next = self.next;
    }
    else
    {
        firstClient = self.next;
    }
    
    
    if(self.botflags & globaldef000686)
    {
        globaldef000785 = globaldef000785 - TRUE;
    }
    
    
    if(gameover)
    {
        return;
    }
    
    if(self.deadflag == DEAD_NO)
    {
        clientisalive = FALSE;
    }
    else
    {
        clientisalive = TRUE;
    }
    
    
    if(CamDisconnect())
    {
        bprint(self.teamname);
        bprint(self.netname);
        bprint(" left the game with ");
        bprint(ftos(self.frags));
        bprint(" frags\n");
        sound(self, CHAN_BODY, "player/tornoff2.wav", TRUE, ATTN_NONE);
        self.classname = "nobody";
        set_suicide_frame();
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_disconnect(self, clientisalive);
    }
    
};


// ClientObituary
// function begins at statement 12846, parm_start=9093
// OP_CALL0	457	0	0
// OP_STORE_F	1	9095	0
// OP_LOAD_S	9093	129	9101
// OP_EQ_S	9101	1236	9102
// OP_LOAD_S	9093	129	9103
// OP_EQ_S	9103	1241	9104
// OP_OR	9102	9104	9105
// OP_IFNOT	9105	586	0
// OP_BITAND	821	767	9106
// OP_IFNOT	9106	143	0
// OP_LOAD_S	542	129	9107
// OP_EQ_S	9107	1236	9108
// OP_LOAD_S	542	129	9109
// OP_EQ_S	9109	1241	9110
// OP_OR	9108	9110	9111
// OP_IFNOT	9111	8	0
// OP_ADDRESS	542	163	9112
// OP_STOREP_F	250	9112	0
// OP_STORE_V	542	4	0
// OP_STORE_V	9113	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	542	181	9114
// OP_STOREP_ENT	30	9114	0
// OP_LOAD_S	541	129	9115
// OP_EQ_S	9115	1236	9116
// OP_LOAD_S	541	129	9117
// OP_EQ_S	9117	1241	9118
// OP_OR	9116	9118	9119
// OP_IFNOT	9119	8	0
// OP_ADDRESS	541	163	9120
// OP_STOREP_F	250	9120	0
// OP_STORE_V	541	4	0
// OP_STORE_V	9113	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	541	181	9121
// OP_STOREP_ENT	30	9121	0
// OP_NE_E	9094	9093	9122
// OP_IFNOT	9122	5	0
// OP_LOAD_F	9094	152	9123
// OP_STORE_F	9123	9098	0
// OP_LOAD_F	9094	188	9124
// OP_STORE_F	9124	9099	0
// OP_EQ_E	9093	541	9125
// OP_IFNOT	9125	36	0
// OP_ADDRESS	541	536	9126
// OP_LOAD_F	541	536	9127
// OP_ADD_F	9127	214	9128
// OP_STOREP_F	9128	9126	0
// OP_ADDRESS	542	535	9129
// OP_LOAD_F	542	535	9130
// OP_ADD_F	9130	214	9131
// OP_STOREP_F	9131	9129	0
// OP_STORE_V	9132	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	541	180	9133
// OP_STORE_V	9133	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9134	4	0
// OP_CALL1	472	0	0
// OP_EQ_E	9093	9094	9135
// OP_IFNOT	9135	7	0
// OP_STORE_V	9136	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	9094	153	9137
// OP_LOAD_F	9094	153	9138
// OP_SUB_F	9138	214	9139
// OP_STOREP_F	9139	9137	0
// OP_STORE_ENT	542	541	0
// OP_LOAD_S	541	129	9140
// OP_EQ_S	9140	1236	9141
// OP_IFNOT	9141	8	0
// OP_STORE_V	8080	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	541	180	9142
// OP_STORE_V	9142	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_CALL0	1218	0	0
// OP_EQ_E	9093	542	9143
// OP_IFNOT	9143	25	0
// OP_ADDRESS	542	536	9144
// OP_LOAD_F	542	536	9145
// OP_ADD_F	9145	214	9146
// OP_STOREP_F	9146	9144	0
// OP_ADDRESS	541	535	9147
// OP_LOAD_F	541	535	9148
// OP_ADD_F	9148	214	9149
// OP_STOREP_F	9149	9147	0
// OP_STORE_V	9150	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	542	180	9151
// OP_STORE_V	9151	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9152	4	0
// OP_CALL1	472	0	0
// OP_EQ_E	9093	9094	9153
// OP_IFNOT	9153	7	0
// OP_STORE_V	9154	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	9094	153	9155
// OP_LOAD_F	9094	153	9156
// OP_SUB_F	9156	214	9157
// OP_STOREP_F	9157	9155	0
// OP_CALL0	1218	0	0
// OP_LOAD_S	9094	129	9158
// OP_EQ_S	9158	1236	9159
// OP_LOAD_S	9094	129	9160
// OP_EQ_S	9160	1241	9161
// OP_OR	9159	9161	9162
// OP_IFNOT	9162	41	0
// OP_NE_E	9094	9093	9163
// OP_IFNOT	9163	39	0
// OP_EQ_F	9098	1997	9164
// OP_EQ_F	9099	2044	9165
// OP_AND	9164	9165	9166
// OP_IFNOT	9166	6	0
// OP_STORE_V	9167	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9168	4	0
// OP_CALL1	1219	0	0
// OP_GOTO	26	0	0
// OP_LOAD_S	9094	180	9169
// OP_STORE_V	9169	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9170	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9098	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	9100	0
// OP_STORE_V	9100	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9171	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9099	4	0
// OP_CALL1	474	0	0
// OP_STORE_S	1	9100	0
// OP_STORE_V	9100	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9172	4	0
// OP_CALL1	472	0	0
// OP_GE	9098	9173	9174
// OP_GE	9099	1997	9175
// OP_AND	9174	9175	9176
// OP_IFNOT	9176	3	0
// OP_STORE_V	9177	4	0
// OP_CALL1	1219	0	0
// OP_ADDRESS	9094	153	9178
// OP_LOAD_F	9094	153	9179
// OP_ADD_F	9179	214	9180
// OP_STOREP_F	9180	9178	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9181
// OP_EQ_S	9181	9182	9183
// OP_IFNOT	9183	26	0
// OP_LOAD_S	9093	180	9184
// OP_STORE_V	9184	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9185	4	0
// OP_CALL1	472	0	0
// OP_LOAD_ENT	9094	201	9186
// OP_LOAD_S	9186	180	9187
// OP_STORE_V	9187	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	37	7	0
// OP_STORE_V	9188	4	0
// OP_CALL1	472	0	0
// OP_LOAD_ENT	9094	201	9189
// OP_LOAD_S	9189	606	9190
// OP_STORE_V	9190	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	2127	4	0
// OP_CALL1	472	0	0
// OP_LOAD_ENT	9094	201	9191
// OP_ADDRESS	9191	153	9192
// OP_LOAD_ENT	9094	201	9193
// OP_LOAD_F	9193	153	9194
// OP_ADD_F	9194	214	9195
// OP_STOREP_F	9195	9192	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9196
// OP_EQ_S	9196	9197	9198
// OP_IFNOT	9198	19	0
// OP_STORE_V	9199	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9093	180	9200
// OP_STORE_V	9200	4	0
// OP_CALL1	472	0	0
// OP_IFNOT	37	6	0
// OP_STORE_V	9188	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9093	606	9201
// OP_STORE_V	9201	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9202	4	0
// OP_CALL1	472	0	0
// OP_ADDRESS	9093	153	9203
// OP_LOAD_F	9093	153	9204
// OP_SUB_F	9204	214	9205
// OP_STOREP_F	9205	9203	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9206
// OP_EQ_S	9206	1236	9207
// OP_LOAD_S	9094	129	9208
// OP_EQ_S	9208	1241	9209
// OP_OR	9207	9209	9210
// OP_IFNOT	9210	208	0
// OP_EQ_E	9093	9094	9211
// OP_IFNOT	9211	31	0
// OP_ADDRESS	9094	153	9212
// OP_LOAD_F	9094	153	9213
// OP_SUB_F	9213	214	9214
// OP_STOREP_F	9214	9212	0
// OP_LOAD_S	9093	180	9215
// OP_STORE_V	9215	4	0
// OP_CALL1	472	0	0
// OP_LOAD_F	9093	154	9216
// OP_EQ_F	9216	220	9217
// OP_LOAD_F	9093	189	9218
// OP_GT	9218	214	9219
// OP_AND	9217	9219	9220
// OP_IFNOT	9220	4	0
// OP_STORE_V	9221	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	9093	154	9222
// OP_EQ_F	9222	218	9223
// OP_IFNOT	9223	4	0
// OP_STORE_V	9224	4	0
// OP_CALL1	472	0	0
// OP_GOTO	7	0	0
// OP_IFNOT	9095	4	0
// OP_STORE_V	9225	4	0
// OP_CALL1	472	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	9226	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_GOTO	174	0	0
// OP_LOAD_F	9094	607	9227
// OP_LOAD_F	9093	607	9228
// OP_EQ_F	9227	9228	9229
// OP_AND	37	9229	9230
// OP_IFNOT	9230	106	0
// OP_ADDRESS	9094	153	9232
// OP_LOAD_F	9094	153	9233
// OP_SUB_F	9233	214	9234
// OP_STOREP_F	9234	9232	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	9231	0
// OP_LOAD_F	9093	152	9235
// OP_LT	9235	9236	9237
// OP_IFNOT	9237	9	0
// OP_LT	9231	539	9238
// OP_IFNOT	9238	4	0
// OP_STORE_S	9239	9096	0
// OP_STORE_S	9240	9097	0
// OP_GOTO	3	0	0
// OP_STORE_S	9241	9096	0
// OP_STORE_S	9242	9097	0
// OP_GOTO	78	0	0
// OP_LOAD_F	9094	154	9243
// OP_STORE_F	9243	9095	0
// OP_EQ_F	9095	253	9244
// OP_IFNOT	9244	9	0
// OP_LT	9231	539	9245
// OP_IFNOT	9245	4	0
// OP_STORE_S	9246	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	3	0	0
// OP_STORE_S	9247	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	66	0	0
// OP_EQ_F	9095	254	9248
// OP_STORE_F	255	9095	0
// OP_OR	9248	255	9249
// OP_IFNOT	9249	9	0
// OP_LT	9231	539	9250
// OP_IFNOT	9250	4	0
// OP_STORE_S	9251	9096	0
// OP_STORE_S	9252	9097	0
// OP_GOTO	3	0	0
// OP_STORE_S	9253	9096	0
// OP_STORE_S	9254	9097	0
// OP_GOTO	54	0	0
// OP_EQ_F	9095	256	9255
// OP_EQ_F	9095	257	9256
// OP_OR	9255	9256	9257
// OP_IFNOT	9257	4	0
// OP_STORE_S	9258	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	47	0	0
// OP_EQ_F	9095	258	9259
// OP_IFNOT	9259	4	0
// OP_STORE_S	9260	9096	0
// OP_STORE_S	9261	9097	0
// OP_GOTO	42	0	0
// OP_EQ_F	9095	259	9262
// OP_IFNOT	9262	31	0
// OP_LT	9231	9263	9264
// OP_IFNOT	9264	4	0
// OP_STORE_S	9265	9096	0
// OP_STORE_S	9266	9097	0
// OP_GOTO	25	0	0
// OP_LT	9231	8380	9267
// OP_IFNOT	9267	4	0
// OP_STORE_S	9268	9096	0
// OP_STORE_S	9269	9097	0
// OP_GOTO	20	0	0
// OP_LT	9231	539	9270
// OP_IFNOT	9270	4	0
// OP_STORE_S	9271	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	15	0	0
// OP_LT	9231	8382	9272
// OP_IFNOT	9272	4	0
// OP_STORE_S	9273	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	10	0	0
// OP_LT	9231	9274	9275
// OP_IFNOT	9275	4	0
// OP_STORE_S	9276	9096	0
// OP_STORE_S	9277	9097	0
// OP_GOTO	5	0	0
// OP_LT	9231	214	9278
// OP_IFNOT	9278	3	0
// OP_STORE_S	9279	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	10	0	0
// OP_EQ_F	9095	260	9280
// OP_IFNOT	9280	8	0
// OP_LT	9231	539	9281
// OP_IFNOT	9281	4	0
// OP_STORE_S	9282	9096	0
// OP_STORE_S	2127	9097	0
// OP_GOTO	3	0	0
// OP_STORE_S	9283	9096	0
// OP_STORE_S	2127	9097	0
// OP_LOAD_S	9094	180	9284
// OP_STORE_V	9284	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9096	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9093	180	9285
// OP_STORE_V	9285	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9097	4	0
// OP_CALL1	472	0	0
// OP_GOTO	64	0	0
// OP_ADDRESS	9094	153	9286
// OP_LOAD_F	9094	153	9287
// OP_ADD_F	9287	214	9288
// OP_STOREP_F	9288	9286	0
// OP_LOAD_F	9094	154	9289
// OP_STORE_F	9289	9095	0
// OP_EQ_F	9095	253	9290
// OP_IFNOT	9290	3	0
// OP_STORE_S	9291	9096	0
// OP_STORE_S	2127	9097	0
// OP_EQ_F	9095	254	9292
// OP_IFNOT	9292	3	0
// OP_STORE_S	9293	9096	0
// OP_STORE_S	9294	9097	0
// OP_EQ_F	9095	255	9295
// OP_IFNOT	9295	3	0
// OP_STORE_S	9296	9096	0
// OP_STORE_S	9297	9097	0
// OP_EQ_F	9095	256	9298
// OP_IFNOT	9298	3	0
// OP_STORE_S	9299	9096	0
// OP_STORE_S	2127	9097	0
// OP_EQ_F	9095	257	9300
// OP_IFNOT	9300	3	0
// OP_STORE_S	9301	9096	0
// OP_STORE_S	2127	9097	0
// OP_EQ_F	9095	258	9302
// OP_IFNOT	9302	8	0
// OP_STORE_S	9303	9096	0
// OP_STORE_S	9304	9097	0
// OP_LOAD_F	9093	152	9305
// OP_LT	9305	9236	9306
// OP_IFNOT	9306	3	0
// OP_STORE_S	9307	9096	0
// OP_STORE_S	9308	9097	0
// OP_EQ_F	9095	259	9309
// OP_IFNOT	9309	8	0
// OP_STORE_S	9310	9096	0
// OP_STORE_S	9311	9097	0
// OP_LOAD_F	9093	152	9312
// OP_LT	9312	9236	9313
// OP_IFNOT	9313	3	0
// OP_STORE_S	9314	9096	0
// OP_STORE_S	9311	9097	0
// OP_EQ_F	9095	260	9315
// OP_IFNOT	9315	8	0
// OP_STORE_S	9316	9096	0
// OP_LOAD_F	9094	189	9317
// OP_GT	9317	214	9318
// OP_IFNOT	9318	3	0
// OP_STORE_S	9319	9097	0
// OP_GOTO	2	0	0
// OP_STORE_S	9320	9097	0
// OP_LOAD_S	9093	180	9321
// OP_STORE_V	9321	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9096	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	180	9322
// OP_STORE_V	9322	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9097	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_GOTO	180	0	0
// OP_ADDRESS	9093	153	9323
// OP_LOAD_F	9093	153	9324
// OP_SUB_F	9324	214	9325
// OP_STOREP_F	9325	9323	0
// OP_LOAD_F	9093	190	9326
// OP_STORE_F	9326	9095	0
// OP_LOAD_S	9093	180	9327
// OP_STORE_V	9327	4	0
// OP_CALL1	472	0	0
// OP_EQ_F	9095	278	9328
// OP_IFNOT	9328	11	0
// OP_CALL0	457	0	0
// OP_LT	1	539	9329
// OP_IFNOT	9329	4	0
// OP_STORE_V	9330	4	0
// OP_CALL1	472	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	9331	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_GOTO	30	0	0
// OP_EQ_F	9095	279	9332
// OP_IFNOT	9332	11	0
// OP_CALL0	457	0	0
// OP_LT	1	539	9333
// OP_IFNOT	9333	4	0
// OP_STORE_V	9334	4	0
// OP_CALL1	472	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	9335	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_GOTO	18	0	0
// OP_EQ_F	9095	280	9336
// OP_IFNOT	9336	16	0
// OP_LOAD_F	9093	152	9337
// OP_LT	9337	9338	9339
// OP_IFNOT	9339	4	0
// OP_STORE_V	9340	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_LT	1	539	9341
// OP_IFNOT	9341	4	0
// OP_STORE_V	9342	4	0
// OP_CALL1	472	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	9343	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	9094	182	9344
// OP_BITAND	9344	219	9345
// OP_IFNOT	9345	82	0
// OP_LOAD_S	9094	129	9346
// OP_EQ_S	9346	3704	9347
// OP_IFNOT	9347	3	0
// OP_STORE_V	9348	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9349
// OP_EQ_S	9349	3665	9350
// OP_IFNOT	9350	3	0
// OP_STORE_V	9351	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9352
// OP_EQ_S	9352	3677	9353
// OP_IFNOT	9353	3	0
// OP_STORE_V	9354	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9355
// OP_EQ_S	9355	3800	9356
// OP_IFNOT	9356	3	0
// OP_STORE_V	9357	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9358
// OP_EQ_S	9358	3693	9359
// OP_IFNOT	9359	3	0
// OP_STORE_V	9360	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9361
// OP_EQ_S	9361	9362	9363
// OP_IFNOT	9363	3	0
// OP_STORE_V	9364	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9365
// OP_EQ_S	9365	3681	9366
// OP_IFNOT	9366	3	0
// OP_STORE_V	9367	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9368
// OP_EQ_S	9368	3254	9369
// OP_IFNOT	9369	3	0
// OP_STORE_V	9370	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9371
// OP_EQ_S	9371	3532	9372
// OP_IFNOT	9372	3	0
// OP_STORE_V	9373	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9374
// OP_EQ_S	9374	9375	9376
// OP_IFNOT	9376	3	0
// OP_STORE_V	9377	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9378
// OP_EQ_S	9378	3708	9379
// OP_IFNOT	9379	3	0
// OP_STORE_V	9380	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9381
// OP_EQ_S	9381	3661	9382
// OP_IFNOT	9382	3	0
// OP_STORE_V	9383	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9384
// OP_EQ_S	9384	3685	9385
// OP_IFNOT	9385	3	0
// OP_STORE_V	9386	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9387
// OP_EQ_S	9387	3689	9388
// OP_IFNOT	9388	3	0
// OP_STORE_V	9389	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9390
// OP_EQ_S	9390	3669	9391
// OP_IFNOT	9391	3	0
// OP_STORE_V	9392	4	0
// OP_CALL1	472	0	0
// OP_LOAD_S	9094	129	9393
// OP_EQ_S	9393	3673	9394
// OP_IFNOT	9394	3	0
// OP_STORE_V	9395	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9396
// OP_EQ_S	9396	9397	9398
// OP_IFNOT	9398	4	0
// OP_STORE_V	9399	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	9094	104	9400
// OP_EQ_F	9400	241	9401
// OP_NE_E	9094	30	9402
// OP_AND	9401	9402	9403
// OP_IFNOT	9403	4	0
// OP_STORE_V	9404	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9093	398	9405
// OP_EQ_S	9405	8996	9406
// OP_IFNOT	9406	6	0
// OP_ADDRESS	9093	398	9407
// OP_STOREP_S	3002	9407	0
// OP_STORE_V	9408	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9409
// OP_EQ_S	9409	9410	9411
// OP_LOAD_S	9094	129	9412
// OP_EQ_S	9412	9413	9414
// OP_OR	9411	9414	9415
// OP_IFNOT	9415	4	0
// OP_STORE_V	9416	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9417
// OP_EQ_S	9417	9418	9419
// OP_IFNOT	9419	4	0
// OP_STORE_V	9420	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	9094	129	9421
// OP_EQ_S	9421	8550	9422
// OP_IFNOT	9422	4	0
// OP_STORE_V	9423	4	0
// OP_CALL1	472	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9424	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) ClientObituary = 
{
    local float rnum;
    local string deathstring;
    local string deathstring2;
    local float attacker_health;
    local float attacker_armor;
    local string attacker_stat_str;
    local string UNUSED1;
    local string UNUSED2;
    local string UNUSED3;
    local string UNUSED4;
    local string UNUSED5;
    local string UNUSED6;
    local string UNUSED7;
    local string UNUSED8;
    local string UNUSED9;
    local string UNUSED10;
    local string UNUSED11;
    local string UNUSED12;
    local float UNUSED13;
    local string UNUSED14;
    local string UNUSED15;
    local string UNUSED16;
    local string UNUSED17;
    local string UNUSED18;
    local string UNUSED19;
    local string UNUSED20;
    local string UNUSED21;
    local string UNUSED22;
    local string UNUSED23;
    local string UNUSED24;
    local float rnum2;
    rnum = random();
    
    if((targ.classname == "player") || (targ.classname == "bot"))
    {
        
        if(obot_game_option_bitflags & OBOT_ROCKETARENA)
        {
            
            if((loser.classname == "player") || (loser.classname == "bot"))
            {
                loser.takedamage = DAMAGE_NO;
                stuffcmd(loser, "-attack\n");
                loser.enemy = world;
            }
            
            
            if((winner.classname == "player") || (winner.classname == "bot"))
            {
                winner.takedamage = DAMAGE_NO;
                stuffcmd(winner, "-attack\n");
                winner.enemy = world;
            }
            
            
            if(attacker != targ)
            {
                attacker_health = attacker.health;
                attacker_armor = attacker.armorvalue;
            }
            
            
            if(targ == winner)
            {
                winner.loses = winner.loses + TRUE;
                loser.wins = loser.wins + TRUE;
                bprint("The winner ");
                bprint(winner.netname);
                bprint(" has been defeated\n");
                
                if(targ == attacker)
                {
                    bprint("by Himself!\n");
                    attacker.frags = attacker.frags - TRUE;
                }
                
                winner = loser;
                
                if(winner.classname == "player")
                {
                    bprint("The new winner is ");
                    bprint(winner.netname);
                    bprint("\n");
                }
                
                getnewopponent();
            }
            
            
            if(targ == loser)
            {
                loser.loses = loser.loses + TRUE;
                winner.wins = winner.wins + TRUE;
                bprint("The challenger ");
                bprint(loser.netname);
                bprint(" has failed\n");
                
                if(targ == attacker)
                {
                    bprint("because he became bored with life!\n");
                    attacker.frags = attacker.frags - TRUE;
                }
                
                getnewopponent();
            }
            
            
            if((attacker.classname == "player") || (attacker.classname == "bot"))
            {
                
                if(attacker != targ)
                {
                    if((attacker_health == 100) && (attacker_armor == 200))
                    {
                        bprint("???????? ????????\n");
                        playallsound("play ra/flawless.wav\n");
                    }
                    else
                    {
                        bprint(attacker.netname);
                        bprint(" had ");
                        attacker_stat_str = ftos(attacker_health);
                        bprint(attacker_stat_str);
                        bprint(" health and ");
                        attacker_stat_str = ftos(attacker_armor);
                        bprint(attacker_stat_str);
                        bprint(" armor left\n");
                        
                        if((attacker_health >= 75) && (attacker_armor >= 100))
                        {
                            playallsound("play ra/excelent.wav\n");
                        }
                        
                    }
                    
                    attacker.frags = attacker.frags + TRUE;
                }
                
            }
            
            return;
        }
        
        
        if(attacker.classname == "teledeath")
        {
            bprint(targ.netname);
            bprint(" was telefragged by ");
            bprint(attacker.owner.netname);
            
            if(teamplay)
            {
                bprint(" ");
                bprint(attacker.owner.teamname);
            }
            
            bprint("\n");
            attacker.owner.frags = attacker.owner.frags + TRUE;
            return;
        }
        
        
        if(attacker.classname == "teledeath2")
        {
            bprint("Satan's power deflects ");
            bprint(targ.netname);
            
            if(teamplay)
            {
                bprint(" ");
                bprint(targ.teamname);
            }
            
            bprint("'s telefrag\n");
            targ.frags = targ.frags - TRUE;
            return;
        }
        
        if((attacker.classname == "player") || (attacker.classname == "bot"))
        {
            if(targ == attacker)
            {
                attacker.frags = attacker.frags - TRUE;
                bprint(targ.netname);
                
                if((targ.weapon == FL_GODMODE) && (targ.waterlevel > TRUE))
                {
                    bprint(" discharges into the water.\n");
                    return;
                }
                
                if(targ.weapon == FL_INWATER)
                {
                    bprint(" tries to put the pin back in\n");
                }
                else
                {
                    if(rnum)
                    {
                        bprint(" becomes bored with life\n");
                    }
                    else
                    {
                        bprint(" checks if his weapon is loaded\n");
                    }
                    
                }
                
                return;
            }
            else
            {
                if(teamplay && (attacker.field000284 == targ.field000284))
                {
                    attacker.frags = attacker.frags - TRUE;
                    rnum2 = random();
                    if(targ.health < -40)
                    {
                        if(rnum2 < RA_PLAYERSTATTIME)
                        {
                            deathstring = " tells team mate ";
                            deathstring2 = " to spread around\n";
                        }
                        else
                        {
                            deathstring = " want to play basketball with team mate ";
                            deathstring2 = " 's head\n";
                        }
                        
                    }
                    else
                    {
                        rnum = attacker.weapon;
                        if(rnum == IT_AXE)
                        {
                            if(rnum2 < RA_PLAYERSTATTIME)
                            {
                                deathstring = " wanted to axe a few questions from team mate ";
                                deathstring2 = "\n";
                            }
                            else
                            {
                                deathstring = " tried to shave team mate ";
                                deathstring2 = "\n";
                            }
                            
                        }
                        else
                        {
                            rnum = IT_SUPER_SHOTGUN;
                            if((rnum == IT_SHOTGUN) || IT_SUPER_SHOTGUN)
                            {
                                if(rnum2 < RA_PLAYERSTATTIME)
                                {
                                    deathstring = " found the trigger when team mate ";
                                    deathstring2 = " looked for a bullet in the barrel\n";
                                }
                                else
                                {
                                    deathstring = " tried to clean the ears of team mate ";
                                    deathstring2 = " with a gun\n";
                                }
                                
                            }
                            else
                            {
                                if((rnum == IT_NAILGUN) || (rnum == IT_SUPER_NAILGUN))
                                {
                                    deathstring = " crusified team mate ";
                                    deathstring2 = "\n";
                                }
                                else
                                {
                                    if(rnum == IT_GRENADE_LAUNCHER)
                                    {
                                        deathstring = " sends pineapple to team mate ";
                                        deathstring2 = " by airmail\n";
                                    }
                                    else
                                    {
                                        if(rnum == IT_ROCKET_LAUNCHER)
                                        {
                                            if(rnum2 < 0.16)
                                            {
                                                deathstring = " teaches team mate ";
                                                deathstring2 = " to fly\n";
                                            }
                                            else
                                            {
                                                if(rnum2 < 0.33)
                                                {
                                                    deathstring = " checks if team mate ";
                                                    deathstring2 = " is invulnerable\n";
                                                }
                                                else
                                                {
                                                    if(rnum2 < RA_PLAYERSTATTIME)
                                                    {
                                                        deathstring = " settled an argument with team mate ";
                                                        deathstring2 = "\n";
                                                    }
                                                    else
                                                    {
                                                        if(rnum2 < 0.66)
                                                        {
                                                            deathstring = " didn't recognize team mate ";
                                                            deathstring2 = "\n";
                                                        }
                                                        else
                                                        {
                                                            if(rnum2 < 0.83)
                                                            {
                                                                deathstring = " turned team mate ";
                                                                deathstring2 = " into a backpack\n";
                                                            }
                                                            else
                                                            {
                                                                
                                                                if(rnum2 < TRUE)
                                                                {
                                                                    deathstring = " played catch the rocket with team mate ";
                                                                    deathstring2 = "\n";
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            
                                            if(rnum == IT_LIGHTNING)
                                            {
                                                if(rnum2 < RA_PLAYERSTATTIME)
                                                {
                                                    deathstring = " brings shocking news to team mate ";
                                                    deathstring2 = "\n";
                                                }
                                                else
                                                {
                                                    deathstring = " tries to recharge team mate ";
                                                    deathstring2 = "\n";
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                    bprint(attacker.netname);
                    bprint(deathstring);
                    bprint(targ.netname);
                    bprint(deathstring2);
                }
                else
                {
                    attacker.frags = attacker.frags + TRUE;
                    rnum = attacker.weapon;
                    
                    if(rnum == IT_AXE)
                    {
                        deathstring = " was ax-murdered by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_SHOTGUN)
                    {
                        deathstring = " chewed on ";
                        deathstring2 = "'s boomstick\n";
                    }
                    
                    
                    if(rnum == IT_SUPER_SHOTGUN)
                    {
                        deathstring = " ate 2 loads of ";
                        deathstring2 = "'s buckshot\n";
                    }
                    
                    
                    if(rnum == IT_NAILGUN)
                    {
                        deathstring = " was nailed by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_SUPER_NAILGUN)
                    {
                        deathstring = " was punctured by ";
                        deathstring2 = "\n";
                    }
                    
                    
                    if(rnum == IT_GRENADE_LAUNCHER)
                    {
                        deathstring = " eats ";
                        deathstring2 = "'s pineapple\n";
                        
                        if(targ.health < -40)
                        {
                            deathstring = " was butchered by ";
                            deathstring2 = "'s grenade\n";
                        }
                        
                    }
                    
                    
                    if(rnum == IT_ROCKET_LAUNCHER)
                    {
                        deathstring = " rides ";
                        deathstring2 = "'s rocket\n";
                        
                        if(targ.health < -40)
                        {
                            deathstring = " was gibbed by ";
                            deathstring2 = "'s rocket\n";
                        }
                        
                    }
                    
                    
                    if(rnum == IT_LIGHTNING)
                    {
                        deathstring = " accepts ";
                        if(attacker.waterlevel > TRUE)
                        {
                            deathstring2 = "'s discharge\n";
                        }
                        else
                        {
                            deathstring2 = "'s shaft\n";
                        }
                        
                    }
                    
                    bprint(targ.netname);
                    bprint(deathstring);
                    bprint(attacker.netname);
                    bprint(deathstring2);
                }
                
            }
            
            return;
        }
        else
        {
            targ.frags = targ.frags - TRUE;
            rnum = targ.watertype;
            bprint(targ.netname);
            if(rnum == CONTENT_WATER)
            {
                if(random() < RA_PLAYERSTATTIME)
                {
                    bprint(" sleeps with the fishes\n");
                }
                else
                {
                    bprint(" sucks it down\n");
                }
                
                return;
            }
            else
            {
                if(rnum == CONTENT_SLIME)
                {
                    if(random() < RA_PLAYERSTATTIME)
                    {
                        bprint(" gulped a load of slime\n");
                    }
                    else
                    {
                        bprint(" can't exist on slime alone\n");
                    }
                    
                    return;
                }
                else
                {
                    
                    if(rnum == CONTENT_LAVA)
                    {
                        
                        if(targ.health < -15)
                        {
                            bprint(" burst into flames\n");
                            return;
                        }
                        
                        if(random() < RA_PLAYERSTATTIME)
                        {
                            bprint(" turned into hot slag\n");
                        }
                        else
                        {
                            bprint(" visits the Volcano God\n");
                        }
                        
                        return;
                    }
                    
                }
                
            }
            
            
            if(attacker.flags & FL_MONSTER)
            {
                
                if(attacker.classname == "monster_army")
                {
                    bprint(" was shot by a Grunt\n");
                }
                
                
                if(attacker.classname == "monster_demon1")
                {
                    bprint(" was eviscerated by a Fiend\n");
                }
                
                
                if(attacker.classname == "monster_dog")
                {
                    bprint(" was mauled by a Rottweiler\n");
                }
                
                
                if(attacker.classname == "monster_dragon")
                {
                    bprint(" was fried by a Dragon\n");
                }
                
                
                if(attacker.classname == "monster_enforcer")
                {
                    bprint(" was blasted by an Enforcer\n");
                }
                
                
                if(attacker.classname == "monster_fish")
                {
                    bprint(" was fed to the Rotfish\n");
                }
                
                
                if(attacker.classname == "monster_hell_knight")
                {
                    bprint(" was slain by a Death Knight\n");
                }
                
                
                if(attacker.classname == "monster_knight")
                {
                    bprint(" was slashed by a Knight\n");
                }
                
                
                if(attacker.classname == "monster_ogre")
                {
                    bprint(" was destroyed by an Ogre\n");
                }
                
                
                if(attacker.classname == "monster_oldone")
                {
                    bprint(" became one with Shub-Niggurath\n");
                }
                
                
                if(attacker.classname == "monster_shalrath")
                {
                    bprint(" was exploded by a Vore\n");
                }
                
                
                if(attacker.classname == "monster_shambler")
                {
                    bprint(" was smashed by a Shambler\n");
                }
                
                
                if(attacker.classname == "monster_tarbaby")
                {
                    bprint(" was slimed by a Spawn\n");
                }
                
                
                if(attacker.classname == "monster_vomit")
                {
                    bprint(" was vomited on by a Vomitus\n");
                }
                
                
                if(attacker.classname == "monster_wizard")
                {
                    bprint(" was scragged by a Scrag\n");
                }
                
                
                if(attacker.classname == "monster_zombie")
                {
                    bprint(" joins the Zombies\n");
                }
                
                return;
            }
            
            
            if(attacker.classname == "explo_box")
            {
                bprint(" blew up\n");
                return;
            }
            
            
            if((attacker.solid == SOLID_BSP) && (attacker != world))
            {
                bprint(" was squished\n");
                return;
            }
            
            
            if(targ.deathtype == "falling")
            {
                targ.deathtype = "";
                bprint(" fell to his death\n");
                return;
            }
            
            
            if((attacker.classname == "trap_shooter") || (attacker.classname == "trap_spikeshooter"))
            {
                bprint(" was spiked\n");
                return;
            }
            
            
            if(attacker.classname == "fireball")
            {
                bprint(" ate a lavaball\n");
                return;
            }
            
            
            if(attacker.classname == "trigger_changelevel")
            {
                bprint(" tried to leave\n");
                return;
            }
            
            bprint(" died\n");
        }
        
    }
    
};

