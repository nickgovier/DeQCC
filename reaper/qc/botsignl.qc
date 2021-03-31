void () t_botmovetarget;
entity (entity chaser, entity en) BestChaseRoute;
// botmovetarget
// function begins at statement 21115, parm_start=12120
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	12120	0
// OP_ADDRESS	12120	129	12121
// OP_STOREP_S	12122	12121	0
// OP_ADDRESS	12120	104	12123
// OP_STOREP_F	238	12123	0
// OP_ADDRESS	12120	418	12124
// OP_STOREP_ENT	30	12124	0
// OP_ADDRESS	12120	146	12125
// OP_STOREP_FNC	12118	12125	0
// OP_STORE_V	12120	4	0
// OP_STORE_V	12126	7	0
// OP_STORE_V	12129	10	0
// OP_CALL3	450	0	0
// OP_RETURN	12120	0	0
// OP_DONE	0	0	0
entity () botmovetarget = 
{
    local entity targ;
    targ = spawn();
    targ.classname = "BotTarget";
    targ.solid = SOLID_TRIGGER;
    targ.movetarget = world;
    targ.touch = t_botmovetarget;
    setsize(targ, '-4.000 -4.000 0.000', '4.000 4.000 8.000');
    return targ;
};

// t_botmovetarget
// function begins at statement 21131, parm_start=12132
// OP_LOAD_ENT	29	194	12138
// OP_NE_E	12138	28	12139
// OP_IFNOT	12139	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	12140
// OP_NE_S	12140	12122	12141
// OP_IFNOT	12141	3	0
// OP_STORE_V	12142	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	12143
// OP_LOAD_S	12143	129	12144
// OP_NE_S	12144	1102	12145
// OP_IFNOT	12145	74	0
// OP_IFNOT	604	15	0
// OP_LOAD_S	29	571	12146
// OP_STORE_V	12146	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	29	180	12147
// OP_STORE_V	12147	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12148	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	194	12149
// OP_LOAD_S	12149	129	12150
// OP_STORE_V	12150	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	29	365	12151
// OP_LOAD_F	29	365	12152
// OP_LOAD_F	29	365	12153
// OP_BITAND	12153	595	12154
// OP_SUB_F	12152	12154	12155
// OP_STOREP_F	12155	12151	0
// OP_LOAD_ENT	28	194	12156
// OP_LOAD_S	12156	129	12157
// OP_EQ_S	12157	6605	12158
// OP_IFNOT	12158	6	0
// OP_LOAD_ENT	28	194	12159
// OP_LOAD_FNC	12159	147	12160
// OP_EQ_FNC	12160	6697	12161
// OP_IFNOT	12161	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	12162
// OP_LOAD_S	12162	129	12163
// OP_EQ_S	12163	7946	12164
// OP_IFNOT	12164	13	0
// OP_LOAD_F	29	365	12165
// OP_BITAND	12165	602	12166
// OP_NOT_F	12166	0	12167
// OP_IFNOT	12167	8	0
// OP_ADDRESS	29	365	12168
// OP_LOAD_F	29	365	12169
// OP_BITOR	12169	602	12170
// OP_STOREP_F	12170	12168	0
// OP_ADDRESS	29	366	12171
// OP_ADD_F	31	214	12172
// OP_STOREP_F	12172	12171	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	12173
// OP_LOAD_S	12173	129	12174
// OP_NE_S	12174	12175	12176
// OP_IFNOT	12176	10	0
// OP_LOAD_F	29	365	12177
// OP_BITAND	12177	601	12178
// OP_IFNOT	12178	4	0
// OP_ADDRESS	29	538	12179
// OP_STOREP_F	31	12179	0
// OP_GOTO	3	0	0
// OP_ADDRESS	29	366	12180
// OP_STOREP_F	31	12180	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	12135	0
// OP_LOAD_ENT	28	194	12181
// OP_STORE_ENT	12181	28	0
// OP_CALL0	6965	0	0
// OP_STORE_ENT	12135	28	0
// OP_STORE_V	29	4	0
// OP_CALL1	11242	0	0
// OP_ADDRESS	29	366	12182
// OP_ADD_F	31	228	12183
// OP_STOREP_F	12183	12182	0
// OP_ADDRESS	29	150	12184
// OP_ADD_F	31	1369	12185
// OP_STOREP_F	12185	12184	0
// OP_RETURN	0	0	0
// OP_IFNOT	604	19	0
// OP_LOAD_S	29	571	12186
// OP_STORE_V	12186	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	29	180	12187
// OP_STORE_V	12187	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12188	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	194	12189
// OP_LOAD_S	12189	571	12190
// OP_STORE_V	12190	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	28	194	12191
// OP_LOAD_S	12191	180	12192
// OP_STORE_V	12192	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_ENT	28	194	12193
// OP_STORE_V	12193	7	0
// OP_CALL2	12119	0	0
// OP_STORE_ENT	1	12136	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	1548	12195
// OP_ADD_F	12194	12195	12196
// OP_LOAD_F	29	553	12197
// OP_MUL_F	12197	580	12198
// OP_ADD_F	12196	12198	12199
// OP_STORE_F	12199	12137	0
// OP_LOAD_V	29	105	12200
// OP_LOAD_V	12136	105	12203
// OP_SUB_V	12200	12203	12206
// OP_STORE_V	12206	4	0
// OP_CALL1	457	0	0
// OP_SUB_F	12137	1	12209
// OP_STORE_F	12209	12137	0
// OP_LOAD_F	12136	568	12210
// OP_LT	12137	12210	12211
// OP_IFNOT	12211	5	0
// OP_ADDRESS	29	366	12212
// OP_SUB_F	31	214	12213
// OP_STOREP_F	12213	12212	0
// OP_RETURN	0	0	0
// OP_CALL0	452	0	0
// OP_LOAD_F	29	553	12214
// OP_ADD_F	12214	214	12215
// OP_MUL_F	1	12215	12216
// OP_STORE_F	12216	12137	0
// OP_LT	12137	993	12217
// OP_IFNOT	12217	5	0
// OP_ADDRESS	29	366	12218
// OP_SUB_F	31	214	12219
// OP_STOREP_F	12219	12218	0
// OP_RETURN	0	0	0
// OP_LOAD_S	28	129	12220
// OP_NE_S	12220	12122	12221
// OP_IFNOT	12221	3	0
// OP_STORE_V	12222	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	12136	105	12223
// OP_STORE_V	12223	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	29	366	12226
// OP_ADD_F	31	229	12227
// OP_STOREP_F	12227	12226	0
// OP_DONE	0	0	0
void () t_botmovetarget = 
{
    local vector in;
    local entity tmp;
    local entity pth;
    local float rnd;
    
    if(other.goalentity != self)
    {
        return;
    }
    
    
    if(self.classname != "BotTarget")
    {
        objerror("bad bot target in bot_touch! 1\n");
    }
    
    
    if(self.goalentity.classname != "player")
    {
        
        if(VERBOSEBOT)
        {
            dprint(other.teamname);
            dprint(other.netname);
            dprint(" got to ");
            dprint(self.goalentity.classname);
            dprint("\n");
        }
        
        other.lefty = other.lefty - (other.lefty & LOCAL_TIME);
        
        if(self.goalentity.classname == "door")
        {
            
            if(self.goalentity.use == fd_secret_use)
            {
                return;
            }
            
        }
        
        
        if(self.goalentity.classname == "train")
        {
            
            if(!(other.lefty & ONTRAIN))
            {
                other.lefty = other.lefty | ONTRAIN;
                other.search_time = time + TRUE;
            }
            
            return;
        }
        
        
        if(self.goalentity.classname != "func_button")
        {
            if(other.lefty & GETGOODY)
            {
                other.goody_time = time;
            }
            else
            {
                other.search_time = time;
            }
            
            return;
        }
        
        tmp = self;
        self = self.goalentity;
        button_touch();
        self = tmp;
        clearCache(other);
        other.search_time = time + MOVETYPE_WALK;
        other.nextthink = time + 0.300;
        return;
    }
    
    
    if(VERBOSEBOT)
    {
        dprint(other.teamname);
        dprint(other.netname);
        dprint("tracking ");
        dprint(self.goalentity.teamname);
        dprint(self.goalentity.netname);
        dprint("\n");
    }
    
    pth = BestChaseRoute(other, self.goalentity);
    rnd = (2000.000 + (random() * 1000.000)) + (other.skil * SEARCH_RADIUS);
    rnd = rnd - (vlen(other.origin - pth.origin));
    
    if(rnd < pth.enemylen)
    {
        other.search_time = time - TRUE;
        return;
    }
    
    rnd = random() * (other.skil + TRUE);
    
    if(rnd < 0.100)
    {
        other.search_time = time - TRUE;
        return;
    }
    
    
    if(self.classname != "BotTarget")
    {
        objerror("bad bot target in bot_touch! 2\n");
    }
    
    setorigin(self, pth.origin);
    other.search_time = time + MOVETYPE_STEP;
};

// bot_toucheditem
// function begins at statement 21286, parm_start=12228
// OP_LOAD_ENT	29	194	12228
// OP_LOAD_ENT	12228	194	12229
// OP_EQ_E	12229	28	12230
// OP_IFNOT	12230	24	0
// OP_IFNOT	604	14	0
// OP_LOAD_S	29	571	12231
// OP_STORE_V	12231	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	29	180	12232
// OP_STORE_V	12232	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12148	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	129	12233
// OP_STORE_V	12233	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	29	365	12234
// OP_LOAD_F	29	365	12235
// OP_LOAD_F	29	365	12236
// OP_BITAND	12236	595	12237
// OP_SUB_F	12235	12237	12238
// OP_STOREP_F	12238	12234	0
// OP_ADDRESS	29	366	12239
// OP_SUB_F	31	214	12240
// OP_STOREP_F	12240	12239	0
// OP_DONE	0	0	0
void () bot_toucheditem = 
{
    
    if(other.goalentity.goalentity == self)
    {
        
        if(VERBOSEBOT)
        {
            dprint(other.teamname);
            dprint(other.netname);
            dprint(" got to ");
            dprint(self.classname);
            dprint("\n");
        }
        
        other.lefty = other.lefty - (other.lefty & LOCAL_TIME);
        other.search_time = time - TRUE;
    }
    
};

// bot_triggered
// function begins at statement 21314, parm_start=12241
// OP_LOAD_ENT	12241	194	12246
// OP_STORE_ENT	12246	12245	0
// OP_LOAD_ENT	12245	194	12247
// OP_NE_E	12247	28	12248
// OP_IFNOT	12248	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	12245	194	12249
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	12250
// OP_STORE_V	12250	10	0
// OP_CALL3	463	0	0
// OP_STOREP_ENT	1	12249	0
// OP_LOAD_ENT	12245	194	12251
// OP_LOAD_S	12251	129	12252
// OP_EQ_S	12252	12253	12254
// OP_IFNOT	12254	4	0
// OP_ADDRESS	12241	366	12255
// OP_STOREP_F	31	12255	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	12245	194	12256
// OP_IFNOT	12256	38	0
// OP_ADDRESS	12241	366	12257
// OP_ADD_F	31	228	12258
// OP_STOREP_F	12258	12257	0
// OP_LOAD_ENT	12245	194	12259
// OP_LOAD_V	12259	98	12260
// OP_LOAD_ENT	12245	194	12263
// OP_LOAD_V	12263	94	12264
// OP_ADD_V	12260	12264	12267
// OP_MUL_VF	12267	677	12270
// OP_STORE_V	12270	12242	0
// OP_LOAD_ENT	12245	194	12273
// OP_LOAD_F	12273	97	12274
// OP_ADD_F	12274	214	12275
// OP_STORE_F	12275	12244	0
// OP_LOAD_S	12245	129	12276
// OP_NE_S	12276	12122	12277
// OP_IFNOT	12277	3	0
// OP_STORE_V	12278	4	0
// OP_CALL1	456	0	0
// OP_STORE_V	12245	4	0
// OP_STORE_V	12242	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	12245	194	12279
// OP_ADDRESS	12279	549	12280
// OP_STOREP_ENT	12241	12280	0
// OP_LOAD_ENT	12245	194	12281
// OP_ADDRESS	12281	550	12282
// OP_STOREP_F	31	12282	0
// OP_IFNOT	604	9	0
// OP_STORE_V	12283	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	12245	194	12284
// OP_LOAD_S	12284	129	12285
// OP_STORE_V	12285	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void (entity bot) bot_triggered = 
{
    local vector org;
    local entity Botgoal;
    Botgoal = bot.goalentity;
    
    if(Botgoal.goalentity != self)
    {
        return;
    }
    
    Botgoal.goalentity = find(world, targetname, self.target);
    
    if(Botgoal.goalentity.classname == "light")
    {
        bot.search_time = time;
        return;
    }
    
    
    if(Botgoal.goalentity)
    {
        bot.search_time = time + MOVETYPE_WALK;
        org = (Botgoal.goalentity.absmax + Botgoal.goalentity.absmin) * 0.500;
        org_z = Botgoal.goalentity.absmin_z + TRUE;
        
        if(Botgoal.classname != "BotTarget")
        {
            objerror("bad bot target in bot_touch! 3\n");
        }
        
        setorigin(Botgoal, org);
        Botgoal.goalentity.lastbot = bot;
        Botgoal.goalentity.lasttime = time;
        
        if(VERBOSEBOT)
        {
            dprint("now Bot will go after the triggered ");
            dprint(Botgoal.goalentity.classname);
            dprint("\n");
        }
        
    }
    
};

void () aibot_setupchase;
// bot_touched
// function begins at statement 21374, parm_start=12287
// OP_STORE_ENT	28	12287	0
// OP_LOAD_ENT	29	194	12288
// OP_STORE_ENT	12288	28	0
// OP_LOAD_S	28	129	12289
// OP_NE_S	12289	12122	12290
// OP_IFNOT	12290	3	0
// OP_STORE_V	12291	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	12292
// OP_EQ_E	12292	12287	12293
// OP_IFNOT	12293	3	0
// OP_CALL0	12118	0	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	28	194	12294
// OP_LOAD_S	12294	129	12295
// OP_EQ_S	12295	6605	12296
// OP_IFNOT	12296	5	0
// OP_LOAD_S	12287	129	12297
// OP_EQ_S	12297	6605	12298
// OP_IFNOT	12298	2	0
// OP_CALL0	12118	0	0
// OP_STORE_ENT	12287	28	0
// OP_DONE	0	0	0
void () bot_touched = 
{
    local entity tmp;
    tmp = self;
    self = other.goalentity;
    
    if(self.classname != "BotTarget")
    {
        objerror("bad bot target in bot_touch! 4\n");
    }
    
    if(self.goalentity == tmp)
    {
        t_botmovetarget();
    }
    else
    {
        
        if(self.goalentity.classname == "door")
        {
            
            if(tmp.classname == "door")
            {
                t_botmovetarget();
            }
            
        }
        
    }
    
    self = tmp;
};

// enemy_touched
// function begins at statement 21397, parm_start=12299
// OP_IFNOT	604	24	0
// OP_LOAD_ENT	29	181	12303
// OP_LOAD_S	12303	571	12304
// OP_STORE_V	12304	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	29	181	12305
// OP_LOAD_S	12305	180	12306
// OP_STORE_V	12306	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12307	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	29	571	12308
// OP_STORE_V	12308	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	29	180	12309
// OP_STORE_V	12309	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12310	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	129	12311
// OP_STORE_V	12311	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	12312	4	0
// OP_CALL1	470	0	0
// OP_LOAD_V	28	98	12313
// OP_LOAD_V	28	94	12316
// OP_ADD_V	12313	12316	12319
// OP_MUL_VF	12319	677	12322
// OP_STORE_V	12322	12300	0
// OP_LOAD_F	28	97	12325
// OP_ADD_F	12325	214	12326
// OP_STORE_F	12326	12302	0
// OP_LOAD_S	28	129	12327
// OP_EQ_S	12327	6605	12328
// OP_IFNOT	12328	3	0
// OP_LOAD_V	29	105	12329
// OP_STORE_V	12329	12300	0
// OP_STORE_ENT	28	12299	0
// OP_LOAD_ENT	29	181	12332
// OP_STORE_ENT	12332	28	0
// OP_LOAD_ENT	28	181	12333
// OP_NE_E	12333	29	12334
// OP_IFNOT	12334	3	0
// OP_STORE_ENT	12299	28	0
// OP_RETURN	0	0	0
// OP_LOAD_S	12299	129	12335
// OP_EQ_S	12335	12336	12337
// OP_IFNOT	12337	20	0
// OP_CALL0	1852	0	0
// OP_ADDRESS	28	366	12338
// OP_ADD_F	31	229	12339
// OP_STOREP_F	12339	12338	0
// OP_LOAD_ENT	28	194	12340
// OP_LOAD_ENT	12340	194	12341
// OP_EQ_E	12341	12299	12342
// OP_LOAD_ENT	28	194	12343
// OP_LOAD_S	12343	129	12344
// OP_NE_S	12344	12122	12345
// OP_IFNOT	12345	3	0
// OP_STORE_V	12346	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	12347
// OP_STORE_V	12347	4	0
// OP_STORE_V	12300	7	0
// OP_CALL2	448	0	0
// OP_STORE_ENT	12299	28	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	12348
// OP_LOAD_S	12348	129	12349
// OP_NE_S	12349	12122	12350
// OP_IFNOT	12350	3	0
// OP_STORE_V	12351	4	0
// OP_CALL1	456	0	0
// OP_LOAD_ENT	28	194	12352
// OP_STORE_V	12352	4	0
// OP_STORE_V	12300	7	0
// OP_CALL2	448	0	0
// OP_LOAD_ENT	28	194	12353
// OP_ADDRESS	12353	194	12354
// OP_LOAD_ENT	28	181	12355
// OP_STOREP_ENT	12355	12354	0
// OP_ADDRESS	28	366	12356
// OP_ADD_F	31	229	12357
// OP_STOREP_F	12357	12356	0
// OP_LOAD_F	28	365	12358
// OP_BITAND	12358	601	12359
// OP_IFNOT	12359	5	0
// OP_ADDRESS	28	365	12360
// OP_LOAD_F	28	365	12361
// OP_SUB_F	12361	601	12362
// OP_STOREP_F	12362	12360	0
// OP_CALL0	12286	0	0
// OP_STORE_ENT	12299	28	0
// OP_DONE	0	0	0
void () enemy_touched = 
{
    local entity tmp;
    local vector org;
    
    if(VERBOSEBOT)
    {
        dprint(other.enemy.teamname);
        dprint(other.enemy.netname);
        dprint(" chasing ");
        dprint(other.teamname);
        dprint(other.netname);
        dprint(" through ");
        dprint(self.classname);
        dprint("!\n");
    }
    
    org = (self.absmax + self.absmin) * 0.500;
    org_z = self.absmin_z + TRUE;
    
    if(self.classname == "door")
    {
        org = other.origin;
    }
    
    tmp = self;
    self = other.enemy;
    
    if(self.enemy != other)
    {
        self = tmp;
        return;
    }
    
    
    if(tmp.classname == "trigger_push")
    {
        endEnemy();
        self.search_time = time + MOVETYPE_STEP;
        
        if(self.goalentity.classname != "BotTarget")
        {
            objerror("bad bot target in bot_touch! 5\n");
        }
        
        setorigin(self.goalentity, org);
        self = tmp;
        return;
    }
    
    
    if(self.goalentity.classname != "BotTarget")
    {
        objerror("ERROR - bad bot target!\n");
    }
    
    setorigin(self.goalentity, org);
    self.goalentity.goalentity = self.enemy;
    self.search_time = time + MOVETYPE_STEP;
    
    if(self.lefty & GETGOODY)
    {
        self.lefty = self.lefty - GETGOODY;
    }
    
    aibot_setupchase();
    self = tmp;
};

