float numShellCases;

// EjectShell_remove
// function begins at statement 6255, parm_start=5255
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_SUB_F	5253	214	5255
// OP_STORE_F	5255	5253	0
// OP_DONE	0	0	0
void () EjectShell_remove = 
{
    remove(self);
    numShellCases = numShellCases - TRUE;
};


// EjectShell_touch
// function begins at statement 6260, parm_start=5257
// OP_LOAD_S	29	129	5258
// OP_EQ_S	5258	5259	5260
// OP_IFNOT	5260	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	121	5261
// OP_STOREP_V	286	5261	0
// OP_ADDRESS	28	118	5264
// OP_STOREP_F	213	5264	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	5265
// OP_ADD_V	5265	2827	5268
// OP_STORE_V	5268	7	0
// OP_CALL2	453	0	0
// OP_LOAD_V	28	105	5271
// OP_STORE_V	5271	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	5257	0
// OP_EQ_F	5257	278	5274
// OP_EQ_F	5257	279	5275
// OP_OR	5274	5275	5276
// OP_EQ_F	5257	280	5277
// OP_OR	5276	5277	5278
// OP_IFNOT	5278	4	0
// OP_ADDRESS	28	113	5279
// OP_STOREP_V	5282	5279	0
// OP_GOTO	16	0	0
// OP_EQ_F	5257	277	5285
// OP_IFNOT	5285	8	0
// OP_ADDRESS	28	148	5286
// OP_STOREP_FNC	5254	5286	0
// OP_ADDRESS	28	150	5287
// OP_ADD_F	31	3036	5288
// OP_STOREP_F	5288	5287	0
// OP_RETURN	0	0	0
// OP_GOTO	7	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	5289	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	113	5290
// OP_STORE_V	5290	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1997	5293
// OP_IFNOT	5293	7	0
// OP_ADDRESS	28	103	5294
// OP_STOREP_F	231	5294	0
// OP_ADDRESS	28	104	5295
// OP_STOREP_F	237	5295	0
// OP_ADDRESS	28	146	5296
// OP_STOREP_FNC	519	5296	0
// OP_DONE	0	0	0
void () EjectShell_touch = 
{
    local float currentLocationContents;
    
    if(other.classname == "door")
    {
        return;
    }
    
    self.avelocity = VEC_ORIGIN;
    self.angles_x = FALSE;
    setorigin(self, self.origin + '0 0 2');
    currentLocationContents = pointcontents(self.origin);
    if(((currentLocationContents == CONTENT_WATER) || (currentLocationContents == CONTENT_SLIME)) || (currentLocationContents == CONTENT_LAVA))
    {
        self.velocity = '0 0 -100';
    }
    else
    {
        if(currentLocationContents == CONTENT_SOLID)
        {
            self.think = EjectShell_remove;
            self.nextthink = time + 0.1;
            return;
        }
        else
        {
            sound(self, CHAN_WEAPON, "weapons/shellhit.wav", TRUE, ATTN_NORM);
        }
        
    }
    
    
    if(vlen(self.velocity) < 100)
    {
        self.movetype = MOVETYPE_TOSS;
        self.solid = SOLID_NOT;
        self.touch = SUB_Null;
    }
    
};


// EjectShell_spawn
// function begins at statement 6313, parm_start=5298
// OP_IFNOT	822	2	0
// OP_RETURN	0	0	0
// OP_BITAND	821	778	5306
// OP_IFNOT	5306	2	0
// OP_RETURN	0	0	0
// OP_GE	5253	744	5307
// OP_IFNOT	5307	11	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	5308	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	5305	0
// OP_IFNOT	5305	5	0
// OP_STORE_V	5305	4	0
// OP_CALL1	465	0	0
// OP_SUB_F	5253	214	5309
// OP_STORE_F	5309	5253	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	5304	0
// OP_ADDRESS	5304	201	5310
// OP_STOREP_ENT	28	5310	0
// OP_ADDRESS	5304	103	5311
// OP_STOREP_F	235	5311	0
// OP_ADDRESS	5304	104	5312
// OP_STOREP_F	239	5312	0
// OP_ADDRESS	5304	117	5313
// OP_STORE_V	5301	4	0
// OP_CALL1	495	0	0
// OP_STOREP_V	1	5313	0
// OP_ADDRESS	5304	146	5316
// OP_STOREP_FNC	5256	5316	0
// OP_ADDRESS	5304	129	5317
// OP_STOREP_S	5308	5317	0
// OP_ADDRESS	5304	148	5318
// OP_STOREP_FNC	5254	5318	0
// OP_ADDRESS	5304	150	5319
// OP_ADD_F	31	765	5320
// OP_STOREP_F	5320	5319	0
// OP_STORE_V	5304	4	0
// OP_STORE_V	5321	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	5304	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_STORE_V	5304	4	0
// OP_STORE_V	5298	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	5304	113	5322
// OP_MUL_VF	5301	1470	5325
// OP_STOREP_V	5325	5322	0
// OP_ADDRESS	5304	114	5328
// OP_LOAD_F	5304	114	5329
// OP_CALL0	457	0	0
// OP_MUL_F	1	1470	5330
// OP_ADD_F	5329	5330	5331
// OP_SUB_F	5331	305	5332
// OP_STOREP_F	5332	5328	0
// OP_ADDRESS	5304	115	5333
// OP_LOAD_F	5304	115	5334
// OP_CALL0	457	0	0
// OP_MUL_F	1	1470	5335
// OP_ADD_F	5334	5335	5336
// OP_SUB_F	5336	305	5337
// OP_STOREP_F	5337	5333	0
// OP_ADDRESS	5304	116	5338
// OP_LOAD_F	5304	116	5339
// OP_CALL0	457	0	0
// OP_MUL_F	1	2003	5340
// OP_ADD_F	5339	5340	5341
// OP_ADD_F	5341	1470	5342
// OP_STOREP_F	5342	5338	0
// OP_ADDRESS	5304	122	5343
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	5344
// OP_SUB_F	5344	540	5345
// OP_STOREP_F	5345	5343	0
// OP_ADDRESS	5304	123	5346
// OP_CALL0	457	0	0
// OP_MUL_F	1	5347	5348
// OP_SUB_F	5348	2044	5349
// OP_STOREP_F	5349	5346	0
// OP_ADDRESS	5304	124	5350
// OP_CALL0	457	0	0
// OP_MUL_F	1	540	5351
// OP_SUB_F	5351	2003	5352
// OP_STOREP_F	5352	5350	0
// OP_ADD_F	5253	214	5353
// OP_STORE_F	5353	5253	0
// OP_DONE	0	0	0
void (vector origin, vector angle) EjectShell_spawn = 
{
    local entity shell;
    local entity oldshell;
    
    if(globaldef000805)
    {
        return;
    }
    
    
    if(globaldef000804 & OBOT_SHELLCASES)
    {
        return;
    }
    
    
    if(numShellCases >= OBOT_MAXSHELLCASES)
    {
        oldshell = find(world, classname, "shellcase");
        
        if(oldshell)
        {
            remove(oldshell);
            numShellCases = numShellCases - TRUE;
        }
        
    }
    
    shell = spawn();
    shell.owner = self;
    shell.movetype = MOVETYPE_BOUNCE;
    shell.solid = SOLID_BBOX;
    shell.angles = vectoangles(angle);
    shell.touch = EjectShell_touch;
    shell.classname = "shellcase";
    shell.think = EjectShell_remove;
    shell.nextthink = time + GLOBALDEFSEVENFOUREIGHT;
    setmodel(shell, "progs/shelcase.mdl");
    setsize(shell, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(shell, origin);
    shell.velocity = angle * 50;
    shell.velocity_x = (shell.velocity_x + (random() * 50)) - SVC_SIGNONNUM;
    shell.velocity_y = (shell.velocity_y + (random() * 50)) - SVC_SIGNONNUM;
    shell.velocity_z = (shell.velocity_z + (random() * 150)) + 50;
    shell.avelocity_x = (random() * GLOBALDEFSEVENTWOTHREE) - RA_MAXIDLETIME;
    shell.avelocity_y = (random() * 400) - 200;
    shell.avelocity_z = (random() * RA_MAXIDLETIME) - 150;
    numShellCases = numShellCases + TRUE;
};

