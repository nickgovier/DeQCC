// SetMonsterStuff
// function begins at statement 21515, parm_start=12183
// OP_STORE_V	28	4	0
// OP_STORE_V	290	7	0
// OP_STORE_V	293	10	0
// OP_CALL3	451	0	0
// OP_ADDRESS	28	552	12183
// OP_LOAD_F	28	551	12184
// OP_STORE_V	12184	4	0
// OP_CALL1	472	0	0
// OP_STOREP_S	1	12183	0
// OP_ADDRESS	28	560	12185
// OP_LOAD_V	28	117	12188
// OP_STOREP_V	12188	12185	0
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_LE	1	708	12192
// OP_IFNOT	12192	10	0
// OP_LOAD_S	28	550	12193
// OP_EQ_S	12193	12194	12195
// OP_IFNOT	12195	4	0
// OP_ADDRESS	28	132	12196
// OP_STOREP_F	708	12196	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	132	12197
// OP_STOREP_F	929	12197	0
// OP_GOTO	7	0	0
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_EQ_F	1	819	12198
// OP_IFNOT	12198	3	0
// OP_ADDRESS	28	132	12199
// OP_STOREP_F	819	12199	0
// OP_DONE	0	0	0
void () SetMonsterStuff = 
{
    setsize(self, VEC_HULL_MIN, VEC_HULL_MAX);
    self.location_str = ftos(self.location);
    self.orig_angle = self.angles;
    if(cvar("coop") <= 1.000)
    {
        if(self.chess_team == "black")
        {
            self.skin = 1.000;
        }
        else
        {
            self.skin = 2.000;
        }
        
    }
    else
    {
        
        if(cvar("coop") == 3.000)
        {
            self.skin = 3.000;
        }
        
    }
    
};

// chess_pawn
// function begins at statement 21547, parm_start=12201
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_NE_F	1	6100	12201
// OP_IFNOT	12201	3	0
// OP_CALL0	9336	0	0
// OP_GOTO	2	0	0
// OP_CALL0	10144	0	0
// OP_CALL0	12182	0	0
// OP_ADDRESS	28	180	12202
// OP_STOREP_S	12203	12202	0
// OP_DONE	0	0	0
void () chess_pawn = 
{
    if(cvar("coop") != 69.000)
    {
        monster_knight();
    }
    else
    {
        monster_dog();
    }
    
    SetMonsterStuff();
    self.netname = "pawn";
};

// chess_rook
// function begins at statement 21558, parm_start=12205
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_NE_F	1	6100	12205
// OP_IFNOT	12205	3	0
// OP_CALL0	8634	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9516	0	0
// OP_CALL0	12182	0	0
// OP_ADDRESS	28	180	12206
// OP_STOREP_S	12207	12206	0
// OP_DONE	0	0	0
void () chess_rook = 
{
    if(cvar("coop") != 69.000)
    {
        monster_ogre();
    }
    else
    {
        monster_army();
    }
    
    SetMonsterStuff();
    self.netname = "rook";
};

// chess_knight
// function begins at statement 21569, parm_start=12209
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_NE_F	1	6100	12209
// OP_IFNOT	12209	3	0
// OP_CALL0	8766	0	0
// OP_GOTO	2	0	0
// OP_CALL0	9905	0	0
// OP_CALL0	12182	0	0
// OP_ADDRESS	28	180	12210
// OP_STOREP_S	12211	12210	0
// OP_DONE	0	0	0
void () chess_knight = 
{
    if(cvar("coop") != 69.000)
    {
        monster_demon1();
    }
    else
    {
        monster_wizard();
    }
    
    SetMonsterStuff();
    self.netname = "knight";
};

// chess_bishop
// function begins at statement 21580, parm_start=12213
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_NE_F	1	6100	12213
// OP_IFNOT	12213	3	0
// OP_CALL0	11375	0	0
// OP_GOTO	2	0	0
// OP_CALL0	11967	0	0
// OP_CALL0	12182	0	0
// OP_ADDRESS	28	180	12214
// OP_STOREP_S	12215	12214	0
// OP_DONE	0	0	0
void () chess_bishop = 
{
    if(cvar("coop") != 69.000)
    {
        monster_hell_knight();
    }
    else
    {
        monster_enforcer();
    }
    
    SetMonsterStuff();
    self.netname = "bishop";
};

// chess_queen
// function begins at statement 21591, parm_start=12217
// OP_STORE_F	650	544	0
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_NE_F	1	6100	12217
// OP_IFNOT	12217	3	0
// OP_CALL0	9197	0	0
// OP_GOTO	3	0	0
// OP_CALL0	11712	0	0
// OP_STORE_F	708	544	0
// OP_CALL0	12182	0	0
// OP_ADDRESS	28	180	12218
// OP_STOREP_S	12219	12218	0
// OP_DONE	0	0	0
void () chess_queen = 
{
    secret_monsters = 0.000;
    if(cvar("coop") != 69.000)
    {
        monster_shambler();
    }
    else
    {
        monster_shalrath();
        secret_monsters = 1.000;
    }
    
    SetMonsterStuff();
    self.netname = "queen";
};

// chess_king
// function begins at statement 21604, parm_start=12221
// OP_CALL0	10571	0	0
// OP_CALL0	12182	0	0
// OP_ADDRESS	28	180	12221
// OP_STOREP_S	12222	12221	0
// OP_DONE	0	0	0
void () chess_king = 
{
    monster_zombie();
    SetMonsterStuff();
    self.netname = "king";
};

// GetX
// function begins at statement 21609, parm_start=12223
// OP_DIV_F	12223	1931	12224
// OP_STORE_V	12224	4	0
// OP_CALL1	482	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
void (float loc) GetX = 
{
    return floor(loc / 10.000);
};

// GetY
// function begins at statement 21614, parm_start=12225
// OP_STORE_V	12225	4	0
// OP_CALL1	582	0	0
// OP_STORE_F	1	12226	0
// OP_MUL_F	12226	1931	12227
// OP_SUB_F	12225	12227	12228
// OP_RETURN	12228	0	0
// OP_DONE	0	0	0
float (float loc) GetY = 
{
    local float x;
    x = GetX(loc);
    return loc - (x * 10.000);
};

// TwoPlayersInGame
// function begins at statement 21621, parm_start=12229
// OP_STORE_F	650	12229	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	797	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12230	0
// OP_NE_E	12230	30	12231
// OP_IFNOT	12231	9	0
// OP_ADD_F	12229	708	12232
// OP_STORE_F	12232	12229	0
// OP_STORE_V	12230	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	797	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12230	0
// OP_GOTO	-9	0	0
// OP_EQ_F	12229	929	12233
// OP_RETURN	12233	0	0
// OP_DONE	0	0	0
float () TwoPlayersInGame = 
{
    local float num_players;
    local entity trav;
    num_players = 0.000;
    trav = find(world, classname, "player");
    
    while(trav != world)
    {
        num_players = num_players + 1.000;
        trav = find(trav, classname, "player");
    }
    
    return num_players == 2.000;
};

// FindLocation
// function begins at statement 21640, parm_start=12234
// OP_LOAD_V	28	175	12238
// OP_STORE_V	12238	4	0
// OP_CALL1	448	0	0
// OP_LOAD_V	28	105	12241
// OP_STORE_V	12241	4	0
// OP_LOAD_V	28	105	12244
// OP_MUL_VF	59	9102	12247
// OP_ADD_V	12244	12247	12250
// OP_STORE_V	12250	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_STORE_S	344	528	0
// OP_LT	70	708	12253
// OP_IFNOT	12253	33	0
// OP_ADD_V	71	12254	12257
// OP_STORE_V	12257	12234	0
// OP_DIV_F	12234	1684	12260
// OP_STORE_F	12260	12234	0
// OP_DIV_F	12235	1684	12261
// OP_STORE_F	12261	12235	0
// OP_STORE_F	650	12236	0
// OP_STORE_V	12235	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	12235	0
// OP_GT	12235	1502	12262
// OP_IFNOT	12262	2	0
// OP_STORE_F	1502	12235	0
// OP_LT	12235	708	12263
// OP_IFNOT	12263	2	0
// OP_STORE_F	708	12235	0
// OP_STORE_V	12234	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	12234	0
// OP_GT	12234	1502	12264
// OP_IFNOT	12264	2	0
// OP_STORE_F	1502	12234	0
// OP_LT	12234	708	12265
// OP_IFNOT	12265	2	0
// OP_STORE_F	708	12234	0
// OP_MUL_F	12234	1931	12266
// OP_ADD_F	12266	12235	12267
// OP_STORE_F	12267	12237	0
// OP_STORE_V	12237	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	528	0
// OP_STORE_F	12237	529	0
// OP_DONE	0	0	0
void () FindLocation = 
{
    local vector v1;
    local float loc;
    makevectors(self.v_angle);
    traceline(self.origin, self.origin + (v_forward * 4000.000), TRUE, self);
    current_destination = string_null;
    
    if(trace_fraction < 1.000)
    {
        v1 = trace_endpos + '256.000 256.000 0.000';
        v1_x = v1_x / 64.000;
        v1_y = v1_y / 64.000;
        v1_z = 0.000;
        v1_y = ceil(v1_y);
        
        if(v1_y > 8.000)
        {
            v1_y = 8.000;
        }
        
        
        if(v1_y < 1.000)
        {
            v1_y = 1.000;
        }
        
        v1_x = ceil(v1_x);
        
        if(v1_x > 8.000)
        {
            v1_x = 8.000;
        }
        
        
        if(v1_x < 1.000)
        {
            v1_x = 1.000;
        }
        
        loc = (v1_x * 10.000) + v1_y;
        current_destination = ftos(loc);
        current_dest_int = loc;
    }
    
};

// FindSelection
// function begins at statement 21688, parm_start=12268
// OP_STORE_F	529	12268	0
// OP_CALL0	580	0	0
// OP_NE_F	12268	529	12269
// OP_IFNOT	12269	4	0
// OP_STORE_V	529	4	0
// OP_CALL1	587	0	0
// OP_STORE_ENT	1	526	0
// OP_NE_F	12268	529	12270
// OP_NE_E	540	30	12271
// OP_AND	12270	12271	12272
// OP_IFNOT	12272	12	0
// OP_STORE_V	540	4	0
// OP_LOAD_V	540	439	12273
// OP_STORE_V	12273	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	540	439	12276
// OP_LOAD_V	540	435	12279
// OP_STOREP_V	12279	12276	0
// OP_ADDRESS	540	435	12282
// OP_LOAD_V	540	105	12285
// OP_STOREP_V	12285	12282	0
// OP_STORE_ENT	30	540	0
// OP_NE_F	12268	529	12288
// OP_NE_E	526	30	12289
// OP_AND	12288	12289	12290
// OP_IFNOT	12290	8	0
// OP_LOAD_ENT	526	201	12291
// OP_EQ_E	12291	524	12292
// OP_IFNOT	12292	4	0
// OP_STORE_V	529	4	0
// OP_CALL1	595	0	0
// OP_GOTO	2	0	0
// OP_STORE_ENT	30	526	0
// OP_NE_E	526	30	12293
// OP_LOAD_ENT	526	201	12294
// OP_EQ_E	12294	524	12295
// OP_AND	12293	12295	12296
// OP_LOAD_ENT	28	554	12297
// OP_LOAD_S	12297	129	12298
// OP_LOAD_S	526	129	12299
// OP_NE_S	12298	12299	12300
// OP_AND	12296	12300	12301
// OP_LOAD_F	28	553	12302
// OP_SUB_F	31	7506	12303
// OP_LT	12302	12303	12304
// OP_AND	12301	12304	12305
// OP_IFNOT	12305	15	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12306	7	0
// OP_CALL2	601	0	0
// OP_STORE_V	524	4	0
// OP_LOAD_S	526	180	12307
// OP_STORE_V	12307	7	0
// OP_CALL2	601	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12308	7	0
// OP_CALL2	601	0	0
// OP_ADDRESS	28	553	12309
// OP_STOREP_F	31	12309	0
// OP_ADDRESS	28	554	12310
// OP_STOREP_ENT	526	12310	0
// OP_DONE	0	0	0
void () FindSelection = 
{
    local float old_loc;
    old_loc = current_dest_int;
    FindLocation();
    
    if(old_loc != current_dest_int)
    {
        current_selected = EntityAtLoc(current_dest_int);
    }
    
    
    if((old_loc != current_dest_int) && (last_highlight != world))
    {
        setorigin(last_highlight, last_highlight.pos2);
        last_highlight.pos2 = last_highlight.pos1;
        last_highlight.pos1 = last_highlight.origin;
        last_highlight = world;
    }
    
    
    if((old_loc != current_dest_int) && (current_selected != world))
    {
        if(current_selected.owner == current_turn)
        {
            HighlightLocation(current_dest_int);
        }
        else
        {
            current_selected = world;
        }
        
    }
    
    
    if((((current_selected != world) && (current_selected.owner == current_turn)) && (self.last_voice_entity.classname != current_selected.classname)) && (self.last_voice < (time - 1.500)))
    {
        mystuffcmd(current_turn, "play voice/");
        mystuffcmd(current_turn, current_selected.netname);
        mystuffcmd(current_turn, ".wav\n");
        self.last_voice = time;
        self.last_voice_entity = current_selected;
    }
    
};

// CameraPos
// function begins at statement 21750, parm_start=12311
// OP_LOAD_V	28	175	12319
// OP_STORE_V	12319	4	0
// OP_CALL1	448	0	0
// OP_MUL_VF	59	12322	12323
// OP_STORE_V	12323	12311	0
// OP_LT	12313	650	12326
// OP_IFNOT	12326	2	0
// OP_STORE_F	650	12313	0
// OP_ADDRESS	28	402	12327
// OP_STOREP_V	12311	12327	0
// OP_DONE	0	0	0
void () CameraPos = 
{
    local vector ideal_pos;
    local vector ideal_vec;
    local float ideal_len;
    local float ideal_vec_len;
    makevectors(self.v_angle);
    ideal_pos = v_forward * -350.000;
    
    if(ideal_pos_z < 0.000)
    {
        ideal_pos_z = 0.000;
    }
    
    self.dest = ideal_pos;
};

// AllocateMonsters
// function begins at statement 21761, parm_start=12330
// OP_LOAD_S	12330	550	12333
// OP_STORE_S	12333	12332	0
// OP_STORE_V	30	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12332	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12331	0
// OP_NE_E	12331	30	12334
// OP_IFNOT	12334	12	0
// OP_LOAD_F	12331	182	12335
// OP_BITAND	12335	219	12336
// OP_IFNOT	12336	3	0
// OP_ADDRESS	12331	201	12337
// OP_STOREP_ENT	12330	12337	0
// OP_STORE_V	12331	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12332	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12331	0
// OP_GOTO	-12	0	0
// OP_STORE_V	12330	4	0
// OP_CALL1	597	0	0
// OP_DONE	0	0	0
void (entity plyr) AllocateMonsters = 
{
    local entity monst;
    local string plyr_team;
    plyr_team = plyr.chess_team;
    monst = find(world, chess_team, plyr_team);
    
    while(monst != world)
    {
        
        if(monst.flags & FL_MONSTER)
        {
            monst.owner = plyr;
        }
        
        monst = find(monst, chess_team, plyr_team);
    }
    
    UpdateMonsterColors(plyr);
};

// ClearPath
// function begins at statement 21784, parm_start=12339
// OP_STORE_V	12339	4	0
// OP_CALL1	582	0	0
// OP_STORE_F	1	12343	0
// OP_STORE_V	12339	4	0
// OP_CALL1	583	0	0
// OP_STORE_F	1	12344	0
// OP_STORE_V	12340	4	0
// OP_CALL1	582	0	0
// OP_STORE_F	1	12345	0
// OP_STORE_V	12340	4	0
// OP_CALL1	583	0	0
// OP_STORE_F	1	12346	0
// OP_STORE_F	650	12341	0
// OP_GT	12346	12344	12347
// OP_IFNOT	12347	3	0
// OP_STORE_F	708	12341	0
// OP_GOTO	4	0	0
// OP_LT	12346	12344	12348
// OP_IFNOT	12348	2	0
// OP_STORE_F	720	12341	0
// OP_GT	12345	12343	12349
// OP_IFNOT	12349	4	0
// OP_ADD_F	12341	1931	12350
// OP_STORE_F	12350	12341	0
// OP_GOTO	5	0	0
// OP_LT	12345	12343	12351
// OP_IFNOT	12351	3	0
// OP_SUB_F	12341	1931	12352
// OP_STORE_F	12352	12341	0
// OP_ADD_F	12339	12341	12353
// OP_STORE_F	12353	12342	0
// OP_NE_F	12342	12340	12354
// OP_IFNOT	12354	9	0
// OP_STORE_V	12342	4	0
// OP_CALL1	587	0	0
// OP_NE_E	1	30	12355
// OP_IFNOT	12355	2	0
// OP_RETURN	213	0	0
// OP_ADD_F	12342	12341	12356
// OP_STORE_F	12356	12342	0
// OP_GOTO	-9	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (float start, float end) ClearPath = 
{
    local float step;
    local float loc;
    local float startx;
    local float starty;
    local float endx;
    local float endy;
    startx = GetX(start);
    starty = GetY(start);
    endx = GetX(end);
    endy = GetY(end);
    step = 0.000;
    if(endy > starty)
    {
        step = 1.000;
    }
    else
    {
        
        if(endy < starty)
        {
            step = -1.000;
        }
        
    }
    
    if(endx > startx)
    {
        step = step + 10.000;
    }
    else
    {
        
        if(endx < startx)
        {
            step = step - 10.000;
        }
        
    }
    
    loc = start + step;
    
    while(loc != end)
    {
        
        if(EntityAtLoc(loc) != world)
        {
            return FALSE;
        }
        
        loc = loc + step;
    }
    
    return TRUE;
};

// CheckValidMove
// function begins at statement 21827, parm_start=12358
// OP_LOAD_F	12358	551	12374
// OP_STORE_V	12374	4	0
// OP_CALL1	582	0	0
// OP_STORE_F	1	12362	0
// OP_LOAD_F	12358	551	12375
// OP_STORE_V	12375	4	0
// OP_CALL1	583	0	0
// OP_STORE_F	1	12363	0
// OP_STORE_V	12359	4	0
// OP_CALL1	582	0	0
// OP_STORE_F	1	12364	0
// OP_STORE_V	12359	4	0
// OP_CALL1	583	0	0
// OP_STORE_F	1	12365	0
// OP_SUB_F	12364	12362	12376
// OP_STORE_F	12376	12366	0
// OP_SUB_F	12365	12363	12377
// OP_STORE_F	12377	12367	0
// OP_IFNOT	12361	3	0
// OP_STORE_F	213	538	0
// OP_STORE_F	213	548	0
// OP_STORE_F	213	12369	0
// OP_LOAD_S	12358	129	12378
// OP_EQ_S	12378	1516	12379
// OP_IFNOT	12379	118	0
// OP_LOAD_S	12358	550	12380
// OP_EQ_S	12380	12194	12381
// OP_IFNOT	12381	58	0
// OP_NE_F	12364	12362	12382
// OP_IFNOT	12382	38	0
// OP_SUB_F	12364	12362	12383
// OP_STORE_V	12383	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	708	12384
// OP_SUB_F	12363	12365	12385
// OP_EQ_F	12385	708	12386
// OP_AND	12384	12386	12387
// OP_IFNOT	12387	29	0
// OP_MUL_F	12364	1931	12388
// OP_ADD_F	12388	12363	12389
// OP_STORE_F	12389	12368	0
// OP_STORE_V	12368	4	0
// OP_CALL1	587	0	0
// OP_STORE_ENT	1	12372	0
// OP_EQ_F	12365	819	12390
// OP_EQ_E	12360	30	12391
// OP_AND	12390	12391	12392
// OP_NE_E	12372	30	12393
// OP_AND	12392	12393	12394
// OP_LOAD_ENT	12372	201	12395
// OP_LOAD_ENT	12358	201	12396
// OP_LOAD_ENT	12396	555	12397
// OP_EQ_E	12395	12397	12398
// OP_AND	12394	12398	12399
// OP_LOAD_ENT	524	555	12400
// OP_LOAD_ENT	12400	569	12401
// OP_EQ_E	12372	12401	12402
// OP_AND	12399	12402	12403
// OP_IFNOT	12403	5	0
// OP_STORE_ENT	12372	542	0
// OP_STORE_F	214	548	0
// OP_RETURN	929	0	0
// OP_GOTO	4	0	0
// OP_NE_E	12360	30	12404
// OP_MUL_F	12404	929	12405
// OP_RETURN	12405	0	0
// OP_GOTO	18	0	0
// OP_SUB_F	12363	12365	12406
// OP_EQ_F	12406	708	12407
// OP_SUB_F	12363	12365	12408
// OP_EQ_F	12408	929	12409
// OP_LOAD_F	12358	549	12410
// OP_BITAND	12410	571	12411
// OP_NOT_F	12411	0	12412
// OP_AND	12409	12412	12413
// OP_LOAD_F	12358	551	12414
// OP_STORE_V	12414	4	0
// OP_STORE_V	12359	7	0
// OP_CALL2	12338	0	0
// OP_AND	12413	1	12415
// OP_OR	12407	12415	12416
// OP_IFNOT	12416	3	0
// OP_EQ_E	12360	30	12417
// OP_RETURN	12417	0	0
// OP_GOTO	57	0	0
// OP_NE_F	12364	12362	12418
// OP_IFNOT	12418	38	0
// OP_SUB_F	12364	12362	12419
// OP_STORE_V	12419	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	708	12420
// OP_SUB_F	12363	12365	12421
// OP_EQ_F	12421	720	12422
// OP_AND	12420	12422	12423
// OP_IFNOT	12423	29	0
// OP_MUL_F	12364	1931	12424
// OP_ADD_F	12424	12363	12425
// OP_STORE_F	12425	12368	0
// OP_STORE_V	12368	4	0
// OP_CALL1	587	0	0
// OP_STORE_ENT	1	12372	0
// OP_EQ_F	12365	2107	12426
// OP_EQ_E	12360	30	12427
// OP_AND	12426	12427	12428
// OP_NE_E	12372	30	12429
// OP_AND	12428	12429	12430
// OP_LOAD_ENT	12372	201	12431
// OP_LOAD_ENT	12358	201	12432
// OP_LOAD_ENT	12432	555	12433
// OP_EQ_E	12431	12433	12434
// OP_AND	12430	12434	12435
// OP_LOAD_ENT	524	555	12436
// OP_LOAD_ENT	12436	569	12437
// OP_EQ_E	12372	12437	12438
// OP_AND	12435	12438	12439
// OP_IFNOT	12439	5	0
// OP_STORE_ENT	12372	542	0
// OP_STORE_F	214	548	0
// OP_RETURN	929	0	0
// OP_GOTO	4	0	0
// OP_NE_E	12360	30	12440
// OP_MUL_F	12440	929	12441
// OP_RETURN	12441	0	0
// OP_GOTO	18	0	0
// OP_SUB_F	12363	12365	12442
// OP_EQ_F	12442	720	12443
// OP_SUB_F	12363	12365	12444
// OP_EQ_F	12444	3132	12445
// OP_LOAD_F	12358	549	12446
// OP_BITAND	12446	571	12447
// OP_NOT_F	12447	0	12448
// OP_AND	12445	12448	12449
// OP_LOAD_F	12358	551	12450
// OP_STORE_V	12450	4	0
// OP_STORE_V	12359	7	0
// OP_CALL2	12338	0	0
// OP_AND	12449	1	12451
// OP_OR	12443	12451	12452
// OP_IFNOT	12452	3	0
// OP_EQ_E	12360	30	12453
// OP_RETURN	12453	0	0
// OP_GOTO	187	0	0
// OP_LOAD_S	12358	129	12454
// OP_EQ_S	12454	12455	12456
// OP_IFNOT	12456	18	0
// OP_EQ_F	12362	12364	12457
// OP_EQ_F	12363	12365	12458
// OP_OR	12457	12458	12459
// OP_IFNOT	12459	12	0
// OP_LOAD_F	12358	551	12460
// OP_STORE_V	12460	4	0
// OP_STORE_V	12359	7	0
// OP_CALL2	12338	0	0
// OP_IFNOT	1	5	0
// OP_NE_E	12360	30	12461
// OP_ADD_F	12461	708	12462
// OP_RETURN	12462	0	0
// OP_GOTO	2	0	0
// OP_RETURN	650	0	0
// OP_GOTO	2	0	0
// OP_RETURN	650	0	0
// OP_GOTO	167	0	0
// OP_LOAD_S	12358	129	12463
// OP_EQ_S	12463	12464	12465
// OP_IFNOT	12465	27	0
// OP_SUB_F	12364	12362	12466
// OP_STORE_V	12466	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	929	12467
// OP_SUB_F	12365	12363	12468
// OP_STORE_V	12468	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	708	12469
// OP_AND	12467	12469	12470
// OP_SUB_F	12364	12362	12471
// OP_STORE_V	12471	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	708	12472
// OP_SUB_F	12365	12363	12473
// OP_STORE_V	12473	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	929	12474
// OP_AND	12472	12474	12475
// OP_OR	12470	12475	12476
// OP_IFNOT	12476	5	0
// OP_NE_E	12360	30	12477
// OP_ADD_F	12477	708	12478
// OP_RETURN	12478	0	0
// OP_GOTO	2	0	0
// OP_RETURN	650	0	0
// OP_GOTO	138	0	0
// OP_LOAD_S	12358	129	12479
// OP_EQ_S	12479	12480	12481
// OP_IFNOT	12481	22	0
// OP_STORE_V	12366	4	0
// OP_CALL1	486	0	0
// OP_STORE_F	1	12366	0
// OP_STORE_V	12367	4	0
// OP_CALL1	486	0	0
// OP_STORE_F	1	12367	0
// OP_EQ_F	12366	12367	12482
// OP_IFNOT	12482	7	0
// OP_LOAD_F	12358	551	12483
// OP_STORE_V	12483	4	0
// OP_STORE_V	12359	7	0
// OP_CALL2	12338	0	0
// OP_IFNOT	1	2	0
// OP_STORE_F	214	12369	0
// OP_IFNOT	12369	5	0
// OP_NE_E	12360	30	12484
// OP_ADD_F	12484	708	12485
// OP_RETURN	12485	0	0
// OP_GOTO	2	0	0
// OP_RETURN	650	0	0
// OP_GOTO	114	0	0
// OP_LOAD_S	12358	129	12486
// OP_EQ_S	12486	12487	12488
// OP_IFNOT	12488	26	0
// OP_STORE_V	12366	4	0
// OP_CALL1	486	0	0
// OP_STORE_F	1	12366	0
// OP_STORE_V	12367	4	0
// OP_CALL1	486	0	0
// OP_STORE_F	1	12367	0
// OP_EQ_F	12366	12367	12489
// OP_EQ_F	12364	12362	12490
// OP_EQ_F	12365	12363	12491
// OP_OR	12490	12491	12492
// OP_OR	12489	12492	12493
// OP_IFNOT	12493	7	0
// OP_LOAD_F	12358	551	12494
// OP_STORE_V	12494	4	0
// OP_STORE_V	12359	7	0
// OP_CALL2	12338	0	0
// OP_IFNOT	1	2	0
// OP_STORE_F	214	12369	0
// OP_IFNOT	12369	5	0
// OP_NE_E	12360	30	12495
// OP_ADD_F	12495	708	12496
// OP_RETURN	12496	0	0
// OP_GOTO	2	0	0
// OP_RETURN	650	0	0
// OP_GOTO	86	0	0
// OP_LOAD_S	12358	129	12497
// OP_EQ_S	12497	12498	12499
// OP_IFNOT	12499	80	0
// OP_SUB_F	12364	12362	12500
// OP_STORE_V	12500	4	0
// OP_CALL1	486	0	0
// OP_LE	1	708	12501
// OP_SUB_F	12365	12363	12502
// OP_STORE_V	12502	4	0
// OP_CALL1	486	0	0
// OP_LE	1	708	12503
// OP_AND	12501	12503	12504
// OP_IFNOT	12504	5	0
// OP_NE_E	12360	30	12505
// OP_ADD_F	12505	708	12506
// OP_RETURN	12506	0	0
// OP_GOTO	65	0	0
// OP_LOAD_F	12358	549	12507
// OP_BITAND	12507	571	12508
// OP_NOT_F	12508	0	12509
// OP_EQ_F	12363	12365	12510
// OP_AND	12509	12510	12511
// OP_IFNOT	12511	58	0
// OP_LOAD_F	524	549	12512
// OP_BITAND	12512	572	12513
// OP_IFNOT	12513	6	0
// OP_IFNOT	12361	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12514	7	0
// OP_CALL2	600	0	0
// OP_RETURN	12369	0	0
// OP_STORE_V	12366	4	0
// OP_CALL1	486	0	0
// OP_EQ_F	1	929	12515
// OP_IFNOT	12515	46	0
// OP_LT	12364	12362	12516
// OP_IFNOT	12516	10	0
// OP_LOAD_F	12358	551	12517
// OP_STORE_V	12517	4	0
// OP_CALL1	583	0	0
// OP_ADD_F	1931	1	12518
// OP_STORE_F	12518	12370	0
// OP_SUB_F	12362	708	12519
// OP_MUL_F	12519	1931	12520
// OP_STORE_F	12520	537	0
// OP_GOTO	9	0	0
// OP_LOAD_F	12358	551	12521
// OP_STORE_V	12521	4	0
// OP_CALL1	583	0	0
// OP_ADD_F	874	1	12522
// OP_STORE_F	12522	12370	0
// OP_ADD_F	12362	708	12523
// OP_MUL_F	12523	1931	12524
// OP_STORE_F	12524	537	0
// OP_STORE_V	12370	4	0
// OP_CALL1	587	0	0
// OP_STORE_ENT	1	12371	0
// OP_LOAD_S	12371	129	12525
// OP_EQ_S	12525	12455	12526
// OP_LOAD_F	12371	549	12527
// OP_BITAND	12527	571	12528
// OP_NOT_F	12528	0	12529
// OP_AND	12526	12529	12530
// OP_LOAD_F	12371	551	12531
// OP_STORE_V	12531	4	0
// OP_LOAD_F	526	551	12532
// OP_STORE_V	12532	7	0
// OP_CALL2	12338	0	0
// OP_AND	12530	1	12533
// OP_IFNOT	12533	11	0
// OP_STORE_ENT	12371	536	0
// OP_LOAD_F	12358	551	12534
// OP_STORE_V	12534	4	0
// OP_CALL1	583	0	0
// OP_ADD_F	537	1	12535
// OP_STORE_F	12535	537	0
// OP_STORE_F	214	538	0
// OP_NE_E	12360	30	12536
// OP_ADD_F	12536	708	12537
// OP_STORE_F	12537	12369	0
// OP_RETURN	12369	0	0
// OP_GOTO	4	0	0
// OP_NE_E	12360	30	12538
// OP_ADD_F	12538	708	12539
// OP_RETURN	12539	0	0
// OP_DONE	0	0	0
float (entity ent, float loc, entity at_loc, float actual_move) CheckValidMove = 
{
    local float oldx;
    local float oldy;
    local float newx;
    local float newy;
    local float xchange;
    local float ychange;
    local float pawning_loc;
    local float valid;
    local float castle_loc;
    local entity castle;
    local entity pawning_ent;
    local string str;
    oldx = GetX(ent.location);
    oldy = GetY(ent.location);
    newx = GetX(loc);
    newy = GetY(loc);
    xchange = newx - oldx;
    ychange = newy - oldy;
    
    if(actual_move)
    {
        king_castle_move_flag = FALSE;
        en_passant_flag = FALSE;
    }
    
    valid = FALSE;
    if(ent.classname == "chess_pawn")
    {
        if(ent.chess_team == "black")
        {
            if(newx != oldx)
            {
                
                if(((fabs(newx - oldx)) == 1.000) && ((oldy - newy) == 1.000))
                {
                    pawning_loc = (newx * 10.000) + oldy;
                    pawning_ent = EntityAtLoc(pawning_loc);
                    if(((((newy == 3.000) && (at_loc == world)) && (pawning_ent != world)) && (pawning_ent.owner == ent.owner.opponent)) && (pawning_ent == current_turn.opponent.last_moved))
                    {
                        pawning_enemy = pawning_ent;
                        en_passant_flag = TRUE;
                        return 2.000;
                    }
                    else
                    {
                        return (at_loc != world) * 2.000;
                    }
                    
                }
                
            }
            else
            {
                
                if(((oldy - newy) == 1.000) || ((((oldy - newy) == 2.000) && (!(ent.chess_flags & CF_HAS_MOVED))) && ClearPath(ent.location, loc)))
                {
                    return at_loc == world;
                }
                
            }
            
        }
        else
        {
            if(newx != oldx)
            {
                
                if(((fabs(newx - oldx)) == 1.000) && ((oldy - newy) == -1.000))
                {
                    pawning_loc = (newx * 10.000) + oldy;
                    pawning_ent = EntityAtLoc(pawning_loc);
                    if(((((newy == 6.000) && (at_loc == world)) && (pawning_ent != world)) && (pawning_ent.owner == ent.owner.opponent)) && (pawning_ent == current_turn.opponent.last_moved))
                    {
                        pawning_enemy = pawning_ent;
                        en_passant_flag = TRUE;
                        return 2.000;
                    }
                    else
                    {
                        return (at_loc != world) * 2.000;
                    }
                    
                }
                
            }
            else
            {
                
                if(((oldy - newy) == -1.000) || ((((oldy - newy) == -2.000) && (!(ent.chess_flags & CF_HAS_MOVED))) && ClearPath(ent.location, loc)))
                {
                    return at_loc == world;
                }
                
            }
            
        }
        
    }
    else
    {
        if(ent.classname == "chess_rook")
        {
            if((oldx == newx) || (oldy == newy))
            {
                if(ClearPath(ent.location, loc))
                {
                    return (at_loc != world) + 1.000;
                }
                else
                {
                    return 0.000;
                }
                
            }
            else
            {
                return 0.000;
            }
            
        }
        else
        {
            if(ent.classname == "chess_knight")
            {
                if((((fabs(newx - oldx)) == 2.000) && ((fabs(newy - oldy)) == 1.000)) || (((fabs(newx - oldx)) == 1.000) && ((fabs(newy - oldy)) == 2.000)))
                {
                    return (at_loc != world) + 1.000;
                }
                else
                {
                    return 0.000;
                }
                
            }
            else
            {
                if(ent.classname == "chess_bishop")
                {
                    xchange = fabs(xchange);
                    ychange = fabs(ychange);
                    
                    if(xchange == ychange)
                    {
                        
                        if(ClearPath(ent.location, loc))
                        {
                            valid = TRUE;
                        }
                        
                    }
                    
                    if(valid)
                    {
                        return (at_loc != world) + 1.000;
                    }
                    else
                    {
                        return 0.000;
                    }
                    
                }
                else
                {
                    if(ent.classname == "chess_queen")
                    {
                        xchange = fabs(xchange);
                        ychange = fabs(ychange);
                        
                        if((xchange == ychange) || ((newx == oldx) || (newy == oldy)))
                        {
                            
                            if(ClearPath(ent.location, loc))
                            {
                                valid = TRUE;
                            }
                            
                        }
                        
                        if(valid)
                        {
                            return (at_loc != world) + 1.000;
                        }
                        else
                        {
                            return 0.000;
                        }
                        
                    }
                    else
                    {
                        if(ent.classname == "chess_king")
                        {
                            if(((fabs(newx - oldx)) <= 1.000) && ((fabs(newy - oldy)) <= 1.000))
                            {
                                return (at_loc != world) + 1.000;
                            }
                            else
                            {
                                
                                if((!(ent.chess_flags & CF_HAS_MOVED)) && (oldy == newy))
                                {
                                    
                                    if(current_turn.chess_flags & CF_CHECK_NOTIFY)
                                    {
                                        
                                        if(actual_move)
                                        {
                                            mycentreprint(current_turn, "Cannot castle while in Check");
                                        }
                                        
                                        return valid;
                                    }
                                    
                                    
                                    if(fabs(xchange) == 2.000)
                                    {
                                        if(newx < oldx)
                                        {
                                            castle_loc = 10.000 + GetY(ent.location);
                                            castle_destination = (oldx - 1.000) * 10.000;
                                        }
                                        else
                                        {
                                            castle_loc = 80.000 + GetY(ent.location);
                                            castle_destination = (oldx + 1.000) * 10.000;
                                        }
                                        
                                        castle = EntityAtLoc(castle_loc);
                                        
                                        if(((castle.classname == "chess_rook") && (!(castle.chess_flags & CF_HAS_MOVED))) && ClearPath(castle.location, current_selected.location))
                                        {
                                            castle_to_move = castle;
                                            castle_destination = castle_destination + GetY(ent.location);
                                            king_castle_move_flag = TRUE;
                                            valid = (at_loc != world) + 1.000;
                                        }
                                        
                                    }
                                    
                                }
                                
                                return valid;
                            }
                            
                        }
                        else
                        {
                            return (at_loc != world) + 1.000;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// EntityAtLoc
// function begins at statement 22156, parm_start=12540
// OP_STORE_V	638	4	0
// OP_STORE_V	12542	7	0
// OP_CALL2	468	0	0
// OP_STORE_ENT	1	12541	0
// OP_NE_E	12541	30	12543
// OP_IFNOT	12543	14	0
// OP_LOAD_F	12541	551	12544
// OP_EQ_F	12544	12540	12545
// OP_LOAD_F	12541	182	12546
// OP_BITAND	12546	219	12547
// OP_AND	12545	12547	12548
// OP_LOAD_F	12541	152	12549
// OP_GT	12549	650	12550
// OP_AND	12548	12550	12551
// OP_IFNOT	12551	2	0
// OP_RETURN	12541	0	0
// OP_LOAD_ENT	12541	164	12552
// OP_STORE_ENT	12552	12541	0
// OP_GOTO	-14	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (float loc) EntityAtLoc = 
{
    local entity trav;
    trav = findradius('0.000 0.000 0.000', 4096.000);
    
    while(trav != world)
    {
        
        if(((trav.location == loc) && (trav.flags & FL_MONSTER)) && (trav.health > 0.000))
        {
            return trav;
        }
        
        trav = trav.chain;
    }
    
    return world;
};

// random_pawn_speech
// function begins at statement 22177, parm_start=12554
// OP_CALL0	453	0	0
// OP_MUL_F	1	1835	12555
// OP_STORE_F	12555	12554	0
// OP_LT	12554	708	12556
// OP_IFNOT	12556	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12557	7	0
// OP_CALL2	601	0	0
// OP_GOTO	18	0	0
// OP_LT	12554	929	12558
// OP_IFNOT	12558	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12559	7	0
// OP_CALL2	601	0	0
// OP_GOTO	12	0	0
// OP_LT	12554	819	12560
// OP_IFNOT	12560	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12561	7	0
// OP_CALL2	601	0	0
// OP_GOTO	6	0	0
// OP_LT	12554	1835	12562
// OP_IFNOT	12562	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12563	7	0
// OP_CALL2	601	0	0
// OP_DONE	0	0	0
void () random_pawn_speech = 
{
    local float rnd;
    rnd = random() * 4.000;
    if(rnd < 1.000)
    {
        mystuffcmd(current_turn, "play voice/pawn/hwhat2.wav\n");
    }
    else
    {
        if(rnd < 2.000)
        {
            mystuffcmd(current_turn, "play voice/pawn/hwhat3.wav\n");
        }
        else
        {
            if(rnd < 3.000)
            {
                mystuffcmd(current_turn, "play voice/pawn/hwhat4.wav\n");
            }
            else
            {
                
                if(rnd < 4.000)
                {
                    mystuffcmd(current_turn, "play voice/pawn/hwhat5.wav\n");
                }
                
            }
            
        }
        
    }
    
};

// random_bishop_speech
// function begins at statement 22204, parm_start=12565
// OP_CALL0	453	0	0
// OP_MUL_F	1	819	12566
// OP_STORE_F	12566	12565	0
// OP_LT	12565	708	12567
// OP_IFNOT	12567	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12568	7	0
// OP_CALL2	601	0	0
// OP_GOTO	12	0	0
// OP_LT	12565	929	12569
// OP_IFNOT	12569	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12570	7	0
// OP_CALL2	601	0	0
// OP_GOTO	6	0	0
// OP_LT	12565	819	12571
// OP_IFNOT	12571	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12572	7	0
// OP_CALL2	601	0	0
// OP_DONE	0	0	0
void () random_bishop_speech = 
{
    local float rnd;
    rnd = random() * 3.000;
    if(rnd < 1.000)
    {
        mystuffcmd(current_turn, "play voice/bishop/tuwhat1.wav\n");
    }
    else
    {
        if(rnd < 2.000)
        {
            mystuffcmd(current_turn, "play voice/bishop/tuwhat2.wav\n");
        }
        else
        {
            
            if(rnd < 3.000)
            {
                mystuffcmd(current_turn, "play voice/bishop/tuwhat3.wav\n");
            }
            
        }
        
    }
    
};

// random_rook_speech
// function begins at statement 22225, parm_start=12574
// OP_CALL0	453	0	0
// OP_MUL_F	1	2307	12575
// OP_STORE_F	12575	12574	0
// OP_LT	12574	708	12576
// OP_IFNOT	12576	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12577	7	0
// OP_CALL2	601	0	0
// OP_GOTO	36	0	0
// OP_LT	12574	929	12578
// OP_IFNOT	12578	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12579	7	0
// OP_CALL2	601	0	0
// OP_GOTO	30	0	0
// OP_LT	12574	819	12580
// OP_IFNOT	12580	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12581	7	0
// OP_CALL2	601	0	0
// OP_GOTO	24	0	0
// OP_LT	12574	1835	12582
// OP_IFNOT	12582	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12583	7	0
// OP_CALL2	601	0	0
// OP_GOTO	18	0	0
// OP_LT	12574	1660	12584
// OP_IFNOT	12584	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12585	7	0
// OP_CALL2	601	0	0
// OP_GOTO	12	0	0
// OP_LT	12574	2107	12586
// OP_IFNOT	12586	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12587	7	0
// OP_CALL2	601	0	0
// OP_GOTO	6	0	0
// OP_LT	12574	2307	12588
// OP_IFNOT	12588	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12589	7	0
// OP_CALL2	601	0	0
// OP_DONE	0	0	0
void () random_rook_speech = 
{
    local float rnd;
    rnd = random() * 7.000;
    if(rnd < 1.000)
    {
        mystuffcmd(current_turn, "play voice/rook/pissed1.wav\n");
    }
    else
    {
        if(rnd < 2.000)
        {
            mystuffcmd(current_turn, "play voice/rook/ready.wav\n");
        }
        else
        {
            if(rnd < 3.000)
            {
                mystuffcmd(current_turn, "play voice/rook/what1.wav\n");
            }
            else
            {
                if(rnd < 4.000)
                {
                    mystuffcmd(current_turn, "play voice/rook/what2.wav\n");
                }
                else
                {
                    if(rnd < 5.000)
                    {
                        mystuffcmd(current_turn, "play voice/rook/what3.wav\n");
                    }
                    else
                    {
                        if(rnd < 6.000)
                        {
                            mystuffcmd(current_turn, "play voice/rook/what4.wav\n");
                        }
                        else
                        {
                            
                            if(rnd < 7.000)
                            {
                                mystuffcmd(current_turn, "play voice/rook/what5.wav\n");
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// CanMove
// function begins at statement 22270, parm_start=12590
// OP_STORE_V	12591	4	0
// OP_CALL1	587	0	0
// OP_STORE_ENT	1	12593	0
// OP_NE_E	12593	30	12597
// OP_LOAD_ENT	12593	201	12598
// OP_LOAD_ENT	12590	201	12599
// OP_EQ_E	12598	12599	12600
// OP_AND	12597	12600	12601
// OP_NE_E	12593	543	12602
// OP_AND	12601	12602	12603
// OP_IFNOT	12603	34	0
// OP_IFNOT	12592	32	0
// OP_EQ_E	12593	12590	12604
// OP_IFNOT	12604	26	0
// OP_LOAD_ENT	12590	201	12605
// OP_LOAD_F	12605	549	12606
// OP_BITAND	12606	570	12607
// OP_IFNOT	12607	21	0
// OP_LOAD_ENT	12590	201	12608
// OP_STORE_V	12608	4	0
// OP_STORE_V	12609	7	0
// OP_CALL2	600	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12610	7	0
// OP_CALL2	601	0	0
// OP_STORE_ENT	30	536	0
// OP_STORE_F	213	538	0
// OP_LOAD_ENT	12590	201	12611
// OP_ADDRESS	12611	549	12612
// OP_LOAD_ENT	12590	201	12613
// OP_LOAD_F	12613	549	12614
// OP_LOAD_ENT	12590	201	12615
// OP_LOAD_F	12615	549	12616
// OP_BITAND	12616	570	12617
// OP_SUB_F	12614	12617	12618
// OP_STOREP_F	12618	12612	0
// OP_ADDRESS	546	133	12619
// OP_STOREP_F	650	12619	0
// OP_GOTO	5	0	0
// OP_LOAD_ENT	12590	201	12620
// OP_STORE_V	12620	4	0
// OP_STORE_V	12621	7	0
// OP_CALL2	600	0	0
// OP_RETURN	213	0	0
// OP_STORE_V	12590	4	0
// OP_STORE_V	12591	7	0
// OP_STORE_V	12593	10	0
// OP_STORE_V	12592	13	0
// OP_CALL4	12357	0	0
// OP_STORE_F	1	12595	0
// OP_EQ_F	12595	650	12622
// OP_IFNOT	12622	8	0
// OP_IFNOT	12592	5	0
// OP_LOAD_ENT	12590	201	12623
// OP_STORE_V	12623	4	0
// OP_STORE_V	12624	7	0
// OP_CALL2	600	0	0
// OP_RETURN	213	0	0
// OP_GOTO	25	0	0
// OP_IFNOT	12592	24	0
// OP_LOAD_F	12590	551	12625
// OP_STORE_F	12625	12596	0
// OP_ADDRESS	12590	551	12626
// OP_STOREP_F	12591	12626	0
// OP_LOAD_ENT	12590	201	12627
// OP_STORE_V	12627	4	0
// OP_CALL1	599	0	0
// OP_STORE_ENT	1	12594	0
// OP_STORE_ENT	12593	543	0
// OP_STORE_V	12594	4	0
// OP_STORE_V	12593	7	0
// OP_CALL2	598	0	0
// OP_IFNOT	1	8	0
// OP_LOAD_ENT	12590	201	12628
// OP_STORE_V	12628	4	0
// OP_STORE_V	12629	7	0
// OP_CALL2	600	0	0
// OP_ADDRESS	12590	551	12630
// OP_STOREP_F	12596	12630	0
// OP_RETURN	213	0	0
// OP_STORE_ENT	30	543	0
// OP_ADDRESS	12590	551	12631
// OP_STOREP_F	12596	12631	0
// OP_EQ_F	12595	929	12632
// OP_IFNOT	12632	38	0
// OP_IFNOT	12592	37	0
// OP_IFNOT	548	2	0
// OP_STORE_ENT	542	12593	0
// OP_ADDRESS	12590	181	12633
// OP_STOREP_ENT	12593	12633	0
// OP_ADDRESS	12590	148	12634
// OP_STOREP_FNC	1384	12634	0
// OP_ADDRESS	12590	150	12635
// OP_ADD_F	31	686	12636
// OP_STOREP_F	12636	12635	0
// OP_STORE_ENT	12593	527	0
// OP_ADDRESS	12593	181	12637
// OP_STOREP_ENT	12590	12637	0
// OP_ADDRESS	12593	148	12638
// OP_STOREP_FNC	1384	12638	0
// OP_ADDRESS	12593	150	12639
// OP_ADD_F	31	686	12640
// OP_STOREP_F	12640	12639	0
// OP_GT	37	650	12641
// OP_IFNOT	12641	18	0
// OP_NOT_F	545	0	12642
// OP_IFNOT	12642	8	0
// OP_LOAD_ENT	12590	201	12643
// OP_ADDRESS	12643	132	12644
// OP_STOREP_F	708	12644	0
// OP_LOAD_ENT	12593	201	12645
// OP_ADDRESS	12645	132	12646
// OP_STOREP_F	929	12646	0
// OP_GOTO	9	0	0
// OP_LOAD_ENT	12590	201	12647
// OP_LOAD_ENT	12647	201	12648
// OP_ADDRESS	12648	132	12649
// OP_STOREP_F	708	12649	0
// OP_LOAD_ENT	12593	201	12650
// OP_LOAD_ENT	12650	201	12651
// OP_ADDRESS	12651	132	12652
// OP_STOREP_F	929	12652	0
// OP_IFNOT	12592	10	0
// OP_LOAD_ENT	12590	201	12653
// OP_ADDRESS	12653	549	12654
// OP_LOAD_ENT	12590	201	12655
// OP_LOAD_F	12655	549	12656
// OP_LOAD_ENT	12590	201	12657
// OP_LOAD_F	12657	549	12658
// OP_BITAND	12658	572	12659
// OP_SUB_F	12656	12659	12660
// OP_STOREP_F	12660	12654	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity ent, float loc, float actual_move) CanMove = 
{
    local entity at_loc;
    local entity king;
    local float result;
    local float temp_loc;
    at_loc = EntityAtLoc(loc);
    
    if(((at_loc != world) && (at_loc.owner == ent.owner)) && (at_loc != ignore_canmove))
    {
        
        if(actual_move)
        {
            if(at_loc == ent)
            {
                
                if(ent.owner.chess_flags & CF_SELECTED_PIECE)
                {
                    mycentreprint(ent.owner, "Selection cleared\n");
                    mystuffcmd(self, "play effects/button.wav\n");
                    castle_to_move = world;
                    king_castle_move_flag = FALSE;
                    ent.owner.chess_flags = ent.owner.chess_flags - (ent.owner.chess_flags & CF_SELECTED_PIECE);
                    light_ent.effects = 0.000;
                }
                
            }
            else
            {
                mycentreprint(ent.owner, "You already have a piece there..");
            }
            
        }
        
        return FALSE;
    }
    
    result = CheckValidMove(ent, loc, at_loc, actual_move);
    if(result == 0.000)
    {
        
        if(actual_move)
        {
            mycentreprint(ent.owner, "Invalid move for that piece");
        }
        
        return FALSE;
    }
    else
    {
        
        if(actual_move)
        {
            temp_loc = ent.location;
            ent.location = loc;
            king = get_king(ent.owner);
            ignore_canmove = at_loc;
            
            if(CanDie(king, at_loc))
            {
                mycentreprint(ent.owner, "This move places your King in danger");
                ent.location = temp_loc;
                return FALSE;
            }
            
            ignore_canmove = world;
            ent.location = temp_loc;
        }
        
    }
    
    
    if(result == 2.000)
    {
        
        if(actual_move)
        {
            
            if(en_passant_flag)
            {
                at_loc = pawning_enemy;
            }
            
            ent.enemy = at_loc;
            ent.think = FoundTarget;
            ent.nextthink = time + 0.100;
            current_enemy = at_loc;
            at_loc.enemy = ent;
            at_loc.think = FoundTarget;
            at_loc.nextthink = time + 0.100;
            
            if(teamplay > 0.000)
            {
                if(!single_player)
                {
                    ent.owner.skin = 1.000;
                    at_loc.owner.skin = 2.000;
                }
                else
                {
                    ent.owner.owner.skin = 1.000;
                    at_loc.owner.owner.skin = 2.000;
                }
                
            }
            
        }
        
    }
    
    
    if(actual_move)
    {
        ent.owner.chess_flags = ent.owner.chess_flags - (ent.owner.chess_flags & CF_CHECK_NOTIFY);
    }
    
    return TRUE;
};

// LocationToVector
// function begins at statement 22404, parm_start=12661
// OP_STORE_V	12661	4	0
// OP_CALL1	583	0	0
// OP_STORE_F	1	12663	0
// OP_STORE_V	12661	4	0
// OP_CALL1	582	0	0
// OP_STORE_F	1	12662	0
// OP_STORE_F	650	12664	0
// OP_MUL_VF	12662	1684	12665
// OP_STORE_V	12665	12662	0
// OP_SUB_V	12662	12254	12668
// OP_SUB_V	12668	12671	12674
// OP_MUL_FV	292	613	12677
// OP_SUB_V	12674	12677	12680
// OP_STORE_V	12680	12662	0
// OP_RETURN	12662	0	0
// OP_DONE	0	0	0
vector (float loc) LocationToVector = 
{
    local vector dest_org;
    dest_org_y = GetY(loc);
    dest_org_x = GetX(loc);
    dest_org_z = 0.000;
    dest_org = dest_org * 64.000;
    dest_org = ((dest_org - '256.000 256.000 0.000') - '32.000 32.000 0.000') - (VEC_HULL_MIN_z * '0.000 0.000 1.000');
    return dest_org;
};

// ProcessSelection
// function begins at statement 22420, parm_start=12683
// OP_IFNOT	525	2	0
// OP_RETURN	0	0	0
// OP_NE_E	524	28	12687
// OP_NOT_F	545	0	12688
// OP_AND	12687	12688	12689
// OP_IFNOT	12689	2	0
// OP_RETURN	0	0	0
// OP_NE_E	526	30	12690
// OP_IFNOT	12690	224	0
// OP_LOAD_F	524	549	12691
// OP_BITAND	12691	570	12692
// OP_NOT_F	12692	0	12693
// OP_IFNOT	12693	82	0
// OP_ADDRESS	524	549	12694
// OP_LOAD_F	524	549	12695
// OP_BITOR	12695	570	12696
// OP_STOREP_F	12696	12694	0
// OP_LOAD_S	526	129	12697
// OP_EQ_S	12697	1516	12698
// OP_IFNOT	12698	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12699	7	0
// OP_CALL2	600	0	0
// OP_GOTO	35	0	0
// OP_LOAD_S	526	129	12700
// OP_EQ_S	12700	12455	12701
// OP_IFNOT	12701	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12702	7	0
// OP_CALL2	600	0	0
// OP_GOTO	28	0	0
// OP_LOAD_S	526	129	12703
// OP_EQ_S	12703	12464	12704
// OP_IFNOT	12704	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12705	7	0
// OP_CALL2	600	0	0
// OP_GOTO	21	0	0
// OP_LOAD_S	526	129	12706
// OP_EQ_S	12706	12480	12707
// OP_IFNOT	12707	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12708	7	0
// OP_CALL2	600	0	0
// OP_GOTO	14	0	0
// OP_LOAD_S	526	129	12709
// OP_EQ_S	12709	12487	12710
// OP_IFNOT	12710	5	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12711	7	0
// OP_CALL2	600	0	0
// OP_GOTO	7	0	0
// OP_LOAD_S	526	129	12712
// OP_EQ_S	12712	12498	12713
// OP_IFNOT	12713	4	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12714	7	0
// OP_CALL2	600	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12610	7	0
// OP_CALL2	601	0	0
// OP_LOAD_V	546	105	12715
// OP_LOAD_V	526	105	12718
// OP_ADD_V	12718	12721	12724
// OP_NE_V	12715	12724	12727
// OP_IFNOT	12727	6	0
// OP_STORE_V	546	4	0
// OP_LOAD_V	526	105	12728
// OP_ADD_V	12728	12721	12731
// OP_STORE_V	12731	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	546	133	12734
// OP_STOREP_F	337	12734	0
// OP_NOT_F	544	0	12735
// OP_LOAD_S	526	129	12736
// OP_EQ_S	12736	1516	12737
// OP_AND	12735	12737	12738
// OP_LOAD_S	526	129	12739
// OP_EQ_S	12739	12455	12740
// OP_AND	544	12740	12741
// OP_OR	12738	12741	12742
// OP_IFNOT	12742	3	0
// OP_CALL0	12553	0	0
// OP_GOTO	10	0	0
// OP_LOAD_S	526	129	12743
// OP_EQ_S	12743	12480	12744
// OP_IFNOT	12744	3	0
// OP_CALL0	12564	0	0
// OP_GOTO	5	0	0
// OP_LOAD_S	526	129	12745
// OP_EQ_S	12745	12455	12746
// OP_IFNOT	12746	2	0
// OP_CALL0	12573	0	0
// OP_GOTO	139	0	0
// OP_NE_S	528	652	12747
// OP_IFNOT	12747	137	0
// OP_STORE_V	526	4	0
// OP_STORE_V	529	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	581	0	0
// OP_IFNOT	1	132	0
// OP_STORE_F	214	525	0
// OP_ADDRESS	546	133	12748
// OP_STOREP_F	650	12748	0
// OP_STORE_V	529	4	0
// OP_CALL1	592	0	0
// OP_STORE_V	1	12683	0
// OP_STORE_V	547	4	0
// OP_STORE_V	12683	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	12610	7	0
// OP_CALL2	601	0	0
// OP_LOAD_FNC	526	148	12749
// OP_NE_FNC	12749	1384	12750
// OP_IFNOT	12750	103	0
// OP_STORE_V	28	4	0
// OP_CALL1	585	0	0
// OP_NOT_F	544	0	12751
// OP_LOAD_S	526	129	12752
// OP_EQ_S	12752	1516	12753
// OP_AND	12751	12753	12754
// OP_LOAD_S	526	129	12755
// OP_EQ_S	12755	12455	12756
// OP_AND	544	12756	12757
// OP_OR	12754	12757	12758
// OP_IFNOT	12758	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12759	7	0
// OP_CALL2	601	0	0
// OP_GOTO	54	0	0
// OP_LOAD_S	526	129	12760
// OP_EQ_S	12760	12480	12761
// OP_IFNOT	12761	22	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	819	12762
// OP_STORE_F	12762	12686	0
// OP_LT	12686	708	12763
// OP_IFNOT	12763	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12764	7	0
// OP_CALL2	601	0	0
// OP_GOTO	12	0	0
// OP_LT	12686	929	12765
// OP_IFNOT	12765	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12766	7	0
// OP_CALL2	601	0	0
// OP_GOTO	6	0	0
// OP_LT	12686	819	12767
// OP_IFNOT	12767	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12768	7	0
// OP_CALL2	601	0	0
// OP_GOTO	30	0	0
// OP_LOAD_S	526	129	12769
// OP_EQ_S	12769	12455	12770
// OP_IFNOT	12770	27	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	1835	12771
// OP_STORE_F	12771	12686	0
// OP_LT	12686	708	12772
// OP_IFNOT	12772	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12773	7	0
// OP_CALL2	601	0	0
// OP_GOTO	18	0	0
// OP_LT	12686	929	12774
// OP_IFNOT	12774	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12775	7	0
// OP_CALL2	601	0	0
// OP_GOTO	12	0	0
// OP_LT	12686	819	12776
// OP_IFNOT	12776	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12777	7	0
// OP_CALL2	601	0	0
// OP_GOTO	6	0	0
// OP_LT	12686	1835	12778
// OP_IFNOT	12778	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12779	7	0
// OP_CALL2	601	0	0
// OP_NOT_F	544	0	12780
// OP_LOAD_S	526	129	12781
// OP_EQ_S	12781	12464	12782
// OP_AND	12780	12782	12783
// OP_IFNOT	12783	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12784	7	0
// OP_CALL2	601	0	0
// OP_NOT_F	544	0	12785
// OP_LOAD_S	526	129	12786
// OP_EQ_S	12786	12487	12787
// OP_AND	12785	12787	12788
// OP_IFNOT	12788	15	0
// OP_CALL0	453	0	0
// OP_MUL_F	1	929	12789
// OP_STORE_F	12789	12686	0
// OP_LT	12686	708	12790
// OP_IFNOT	12790	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12791	7	0
// OP_CALL2	601	0	0
// OP_GOTO	6	0	0
// OP_LT	12686	929	12792
// OP_IFNOT	12792	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12793	7	0
// OP_CALL2	601	0	0
// OP_LOAD_S	526	129	12794
// OP_EQ_S	12794	1516	12795
// OP_AND	544	12795	12796
// OP_IFNOT	12796	4	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12797	7	0
// OP_CALL2	601	0	0
// OP_ADDRESS	526	552	12798
// OP_STORE_V	529	4	0
// OP_CALL1	472	0	0
// OP_STOREP_S	1	12798	0
// OP_ADDRESS	526	551	12799
// OP_STOREP_F	529	12799	0
// OP_ADDRESS	526	549	12800
// OP_LOAD_F	526	549	12801
// OP_BITOR	12801	571	12802
// OP_STOREP_F	12802	12800	0
// OP_ADDRESS	524	549	12803
// OP_LOAD_F	524	549	12804
// OP_SUB_F	12804	570	12805
// OP_STOREP_F	12805	12803	0
// OP_DONE	0	0	0
void () ProcessSelection = 
{
    local vector dest_org;
    local float rnd;
    
    if(action_flag)
    {
        return;
    }
    
    
    if((current_turn != self) && !single_player)
    {
        return;
    }
    
    
    if(current_selected != world)
    {
        if(!(current_turn.chess_flags & CF_SELECTED_PIECE))
        {
            current_turn.chess_flags = current_turn.chess_flags | CF_SELECTED_PIECE;
            if(current_selected.classname == "chess_pawn")
            {
                mycentreprint(self, "Pawn selected");
            }
            else
            {
                if(current_selected.classname == "chess_rook")
                {
                    mycentreprint(self, "Rook selected");
                }
                else
                {
                    if(current_selected.classname == "chess_knight")
                    {
                        mycentreprint(self, "Knight selected");
                    }
                    else
                    {
                        if(current_selected.classname == "chess_bishop")
                        {
                            mycentreprint(self, "Bishop selected");
                        }
                        else
                        {
                            if(current_selected.classname == "chess_queen")
                            {
                                mycentreprint(self, "Queen selected");
                            }
                            else
                            {
                                
                                if(current_selected.classname == "chess_king")
                                {
                                    mycentreprint(self, "King selected");
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            mystuffcmd(self, "play effects/button.wav\n");
            
            if(light_ent.origin != (current_selected.origin + '0.000 0.000 96.000'))
            {
                setorigin(light_ent, current_selected.origin + '0.000 0.000 96.000');
            }
            
            light_ent.effects = EF_DIMLIGHT;
            if((!secret_monsters && (current_selected.classname == "chess_pawn")) || (secret_monsters && (current_selected.classname == "chess_rook")))
            {
                random_pawn_speech();
            }
            else
            {
                if(current_selected.classname == "chess_bishop")
                {
                    random_bishop_speech();
                }
                else
                {
                    
                    if(current_selected.classname == "chess_rook")
                    {
                        random_rook_speech();
                    }
                    
                }
                
            }
            
        }
        else
        {
            
            if(current_destination != "")
            {
                
                if(CanMove(current_selected, current_dest_int, TRUE))
                {
                    action_flag = TRUE;
                    light_ent.effects = 0.000;
                    dest_org = LocationToVector(current_dest_int);
                    setorigin(dest_ent, dest_org);
                    mystuffcmd(self, "play effects/button.wav\n");
                    
                    if(current_selected.think != FoundTarget)
                    {
                        WalkToDest(self);
                        if((!secret_monsters && (current_selected.classname == "chess_pawn")) || (secret_monsters && (current_selected.classname == "chess_rook")))
                        {
                            mystuffcmd(current_turn, "play voice/pawn/hyessir4.wav\n");
                        }
                        else
                        {
                            if(current_selected.classname == "chess_bishop")
                            {
                                rnd = random() * 3.000;
                                if(rnd < 1.000)
                                {
                                    mystuffcmd(current_turn, "play voice/bishop/tuyessr1.wav\n");
                                }
                                else
                                {
                                    if(rnd < 2.000)
                                    {
                                        mystuffcmd(current_turn, "play voice/bishop/tuyessr2.wav\n");
                                    }
                                    else
                                    {
                                        
                                        if(rnd < 3.000)
                                        {
                                            mystuffcmd(current_turn, "play voice/bishop/tuyessr3.wav\n");
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            else
                            {
                                
                                if(current_selected.classname == "chess_rook")
                                {
                                    rnd = random() * 4.000;
                                    if(rnd < 1.000)
                                    {
                                        mystuffcmd(current_turn, "play voice/rook/yessir1.wav\n");
                                    }
                                    else
                                    {
                                        if(rnd < 2.000)
                                        {
                                            mystuffcmd(current_turn, "play voice/rook/yessir2.wav\n");
                                        }
                                        else
                                        {
                                            if(rnd < 3.000)
                                            {
                                                mystuffcmd(current_turn, "play voice/rook/yessir3.wav\n");
                                            }
                                            else
                                            {
                                                
                                                if(rnd < 4.000)
                                                {
                                                    mystuffcmd(current_turn, "play voice/rook/yessir4.wav\n");
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                        
                        if(!secret_monsters && (current_selected.classname == "chess_knight"))
                        {
                            mystuffcmd(current_turn, "play demon/sight2.wav\n");
                        }
                        
                        
                        if(!secret_monsters && (current_selected.classname == "chess_queen"))
                        {
                            rnd = random() * 2.000;
                            if(rnd < 1.000)
                            {
                                mystuffcmd(current_turn, "play shambler/melee1.wav\n");
                            }
                            else
                            {
                                
                                if(rnd < 2.000)
                                {
                                    mystuffcmd(current_turn, "play shambler/melee2.wav\n");
                                }
                                
                            }
                            
                        }
                        
                        
                        if(secret_monsters && (current_selected.classname == "chess_pawn"))
                        {
                            mystuffcmd(current_turn, "play dog/dsight.wav\n");
                        }
                        
                    }
                    
                    current_selected.location_str = ftos(current_dest_int);
                    current_selected.location = current_dest_int;
                    current_selected.chess_flags = current_selected.chess_flags | CF_HAS_MOVED;
                    current_turn.chess_flags = current_turn.chess_flags - CF_SELECTED_PIECE;
                }
                
            }
            
        }
        
    }
    
};

// WalkToDest
// function begins at statement 22653, parm_start=12806
// OP_ADDRESS	526	194	12808
// OP_STOREP_ENT	547	12808	0
// OP_ADDRESS	524	569	12809
// OP_STOREP_ENT	526	12809	0
// OP_STORE_ENT	28	12807	0
// OP_STORE_ENT	526	28	0
// OP_LOAD_FNC	526	358	12810
// OP_CALL0	12810	0	0
// OP_STORE_ENT	12807	28	0
// OP_ADDRESS	526	191	12811
// OP_LOAD_V	547	105	12812
// OP_LOAD_V	526	105	12815
// OP_SUB_V	12812	12815	12818
// OP_STORE_V	12818	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	12811	0
// OP_DONE	0	0	0
void (entity client) WalkToDest = 
{
    local entity etemp;
    current_selected.goalentity = dest_ent;
    current_turn.last_moved = current_selected;
    etemp = self;
    self = current_selected;
    current_selected.th_walk();
    self = etemp;
    current_selected.ideal_yaw = vectoyaw(dest_ent.origin - current_selected.origin);
};

// message_think
// function begins at statement 22670, parm_start=12821
// OP_STORE_V	535	4	0
// OP_STORE_V	534	7	0
// OP_CALL2	600	0	0
// OP_ADDRESS	28	150	12821
// OP_ADD_F	31	708	12822
// OP_STOREP_F	12822	12821	0
// OP_DONE	0	0	0
void () message_think = 
{
    mycentreprint(message_target, message_text);
    self.nextthink = time + 1.000;
};

// welcome_mesg
// function begins at statement 22677, parm_start=12823
// OP_LOAD_ENT	28	201	12823
// OP_STORE_V	12823	4	0
// OP_STORE_V	12824	7	0
// OP_CALL2	470	0	0
// OP_LOAD_ENT	28	201	12825
// OP_STORE_V	12825	4	0
// OP_STORE_V	12826	7	0
// OP_CALL2	470	0	0
// OP_LOAD_ENT	28	201	12827
// OP_STORE_V	12827	4	0
// OP_STORE_V	12828	7	0
// OP_CALL2	470	0	0
// OP_LOAD_ENT	28	201	12829
// OP_STORE_V	12829	4	0
// OP_STORE_V	12830	7	0
// OP_CALL2	470	0	0
// OP_LOAD_ENT	28	201	12831
// OP_STORE_V	12831	4	0
// OP_STORE_V	12832	7	0
// OP_CALL2	470	0	0
// OP_LOAD_ENT	28	201	12833
// OP_STORE_V	12833	4	0
// OP_STORE_V	12834	7	0
// OP_CALL2	470	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () welcome_mesg = 
{
    sprint(self.owner, "\n\n  -------------------------\n    - Q - U - E - S - S -\n  -------------------------\n\n");
    sprint(self.owner, "by the IMPACT TEAM\n\n");
    sprint(self.owner, "Right Mouse to pan around board\n");
    sprint(self.owner, "Left Mouse to select/deselect peice\n");
    sprint(self.owner, "H for a list of keys\n\n");
    sprint(self.owner, "See README.TXT for more detailed information\n");
    remove(self);
};

// become_queen
// function begins at statement 22704, parm_start=12835
// OP_CALL0	460	0	0
// OP_STORE_ENT	1	12835	0
// OP_ADDRESS	12835	551	12836
// OP_STOREP_F	529	12836	0
// OP_STORE_V	12835	4	0
// OP_LOAD_V	28	105	12837
// OP_STORE_V	12837	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	12835	117	12840
// OP_LOAD_V	28	117	12843
// OP_STOREP_V	12843	12840	0
// OP_ADDRESS	12835	201	12846
// OP_STOREP_ENT	524	12846	0
// OP_ADDRESS	12835	550	12847
// OP_LOAD_S	524	550	12848
// OP_STOREP_S	12848	12847	0
// OP_ADDRESS	12835	549	12849
// OP_LOAD_F	524	549	12850
// OP_STOREP_F	12850	12849	0
// OP_ADDRESS	12835	182	12851
// OP_LOAD_F	28	182	12852
// OP_STOREP_F	12852	12851	0
// OP_ADDRESS	12835	192	12853
// OP_STOREP_F	1017	12853	0
// OP_ADDRESS	12835	166	12854
// OP_STOREP_V	6224	12854	0
// OP_ADDRESS	12835	147	12857
// OP_STOREP_FNC	6176	12857	0
// OP_ADDRESS	12835	191	12858
// OP_LOAD_V	12835	117	12859
// OP_MUL_V	12859	1938	12862
// OP_STOREP_F	12862	12858	0
// OP_ADDRESS	12835	163	12863
// OP_STOREP_F	253	12863	0
// OP_STORE_V	28	4	0
// OP_CALL1	461	0	0
// OP_STORE_ENT	12835	28	0
// OP_ADDRESS	28	129	12864
// OP_STOREP_S	12487	12864	0
// OP_CALL0	12216	0	0
// OP_STORE_V	12835	4	0
// OP_LOAD_V	12835	105	12865
// OP_ADD_V	12865	2893	12868
// OP_STORE_V	12868	7	0
// OP_CALL2	449	0	0
// OP_CALL0	479	0	0
// OP_ADDRESS	28	418	12871
// OP_STOREP_F	6232	12871	0
// OP_LOAD_FNC	28	357	12872
// OP_CALL0	12872	0	0
// OP_LOAD_V	28	105	12873
// OP_STORE_V	12873	4	0
// OP_CALL1	591	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	1532	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_DONE	0	0	0
void () become_queen = 
{
    local entity new;
    new = spawn();
    new.location = current_dest_int;
    setorigin(new, self.origin);
    new.angles = self.angles;
    new.owner = current_turn;
    new.chess_team = current_turn.chess_team;
    new.chess_flags = current_turn.chess_flags;
    new.flags = self.flags;
    new.yaw_speed = 20.000;
    new.view_ofs = '0.000 0.000 25.000';
    new.use = monster_use;
    new.ideal_yaw = new.angles * '0.000 1.000 0.000';
    new.takedamage = DAMAGE_AIM;
    remove(self);
    self = new;
    self.classname = "chess_queen";
    chess_queen();
    setorigin(new, new.origin + '0.000 0.000 16.000');
    droptofloor();
    self.pausetime = 100000000.000;
    self.th_stand();
    spawn_tfog(self.origin);
    sound(self, CHAN_AUTO, "misc/r_tele4.wav", 1.000, ATTN_NORM);
};

// get_king
// function begins at statement 22764, parm_start=12876
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12498	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12877	0
// OP_NE_E	12877	30	12878
// OP_IFNOT	12878	11	0
// OP_LOAD_ENT	12877	201	12879
// OP_EQ_E	12879	12876	12880
// OP_IFNOT	12880	2	0
// OP_RETURN	12877	0	0
// OP_STORE_V	12877	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	12498	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12877	0
// OP_GOTO	-11	0	0
// OP_DONE	0	0	0
entity (entity own) get_king = 
{
    local entity trav;
    trav = find(world, classname, "chess_king");
    
    while(trav != world)
    {
        
        if(trav.owner == own)
        {
            return trav;
        }
        
        trav = find(trav, classname, "chess_king");
    }
    
};

// next_turn
// function begins at statement 22782, parm_start=12881
// OP_IFNOT	545	14	0
// OP_ADDRESS	524	175	12882
// OP_LOAD_ENT	524	201	12885
// OP_LOAD_V	12885	175	12886
// OP_STOREP_V	12886	12882	0
// OP_ADDRESS	524	177	12889
// OP_LOAD_F	524	177	12890
// OP_STORE_V	12890	4	0
// OP_CALL1	833	0	0
// OP_STOREP_F	1	12889	0
// OP_ADDRESS	524	105	12891
// OP_LOAD_ENT	524	201	12894
// OP_LOAD_V	12894	105	12895
// OP_STOREP_V	12895	12891	0
// OP_ADDRESS	546	133	12898
// OP_STOREP_F	650	12898	0
// OP_ADDRESS	524	549	12899
// OP_LOAD_F	524	549	12900
// OP_LOAD_F	524	549	12901
// OP_BITAND	12901	570	12902
// OP_SUB_F	12900	12902	12903
// OP_STOREP_F	12903	12899	0
// OP_ADDRESS	524	549	12904
// OP_LOAD_F	524	549	12905
// OP_LOAD_F	524	549	12906
// OP_BITAND	12906	573	12907
// OP_SUB_F	12905	12907	12908
// OP_STOREP_F	12908	12904	0
// OP_ADDRESS	524	549	12909
// OP_LOAD_F	524	549	12910
// OP_LOAD_F	524	549	12911
// OP_BITAND	12911	572	12912
// OP_SUB_F	12910	12912	12913
// OP_STOREP_F	12913	12909	0
// OP_NOT_F	545	0	12914
// OP_IFNOT	12914	5	0
// OP_LOAD_ENT	524	568	12915
// OP_STORE_V	12915	4	0
// OP_STORE_V	4331	7	0
// OP_CALL2	450	0	0
// OP_LOAD_ENT	524	555	12916
// OP_STORE_ENT	12916	524	0
// OP_STORE_F	650	529	0
// OP_NOT_F	545	0	12917
// OP_IFNOT	12917	9	0
// OP_LOAD_ENT	524	568	12918
// OP_STORE_V	12918	4	0
// OP_STORE_V	4071	7	0
// OP_CALL2	450	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12919	7	0
// OP_CALL2	600	0	0
// OP_GOTO	11	0	0
// OP_LOAD_S	524	550	12920
// OP_EQ_S	12920	12921	12922
// OP_IFNOT	12922	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12923	7	0
// OP_CALL2	600	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12924	7	0
// OP_CALL2	600	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	2192	7	0
// OP_CALL2	601	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1727	12925
// OP_IFNOT	12925	5	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4705	7	0
// OP_CALL2	601	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	4706	7	0
// OP_CALL2	601	0	0
// OP_ADDRESS	524	566	12926
// OP_STOREP_F	31	12926	0
// OP_STORE_ENT	30	526	0
// OP_STORE_V	524	4	0
// OP_CALL1	599	0	0
// OP_STORE_ENT	1	12881	0
// OP_STORE_V	12881	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	598	0	0
// OP_IFNOT	1	11	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12927	7	0
// OP_CALL2	601	0	0
// OP_STORE_V	524	4	0
// OP_STORE_V	12928	7	0
// OP_CALL2	600	0	0
// OP_ADDRESS	524	549	12929
// OP_LOAD_F	524	549	12930
// OP_BITOR	12930	572	12931
// OP_STOREP_F	12931	12929	0
// OP_IFNOT	545	25	0
// OP_LOAD_ENT	524	201	12932
// OP_STORE_V	12932	4	0
// OP_LOAD_V	524	105	12933
// OP_STORE_V	12933	7	0
// OP_CALL2	449	0	0
// OP_LOAD_ENT	524	201	12936
// OP_STORE_ENT	12936	81	0
// OP_STORE_V	339	4	0
// OP_STORE_V	575	7	0
// OP_CALL2	494	0	0
// OP_STORE_V	339	4	0
// OP_LOAD_F	524	176	12937
// OP_STORE_V	12937	7	0
// OP_CALL2	499	0	0
// OP_STORE_V	339	4	0
// OP_LOAD_F	524	177	12938
// OP_STORE_V	12938	7	0
// OP_CALL2	499	0	0
// OP_STORE_V	339	4	0
// OP_LOAD_F	524	178	12939
// OP_STORE_V	12939	7	0
// OP_CALL2	499	0	0
// OP_ADDRESS	524	174	12940
// OP_STOREP_F	214	12940	0
// OP_STORE_F	213	525	0
// OP_DONE	0	0	0
void () next_turn = 
{
    local entity king;
    
    if(single_player)
    {
        current_turn.v_angle = current_turn.owner.v_angle;
        current_turn.v_angle_y = anglemod(current_turn.v_angle_y);
        current_turn.origin = current_turn.owner.origin;
    }
    
    light_ent.effects = 0.000;
    current_turn.chess_flags = current_turn.chess_flags - (current_turn.chess_flags & CF_SELECTED_PIECE);
    current_turn.chess_flags = current_turn.chess_flags - (current_turn.chess_flags & CF_TIME_NOTIFY);
    current_turn.chess_flags = current_turn.chess_flags - (current_turn.chess_flags & CF_CHECK_NOTIFY);
    
    if(!single_player)
    {
        setmodel(current_turn.pointer, "progs/null.mdl");
    }
    
    current_turn = current_turn.opponent;
    current_dest_int = 0.000;
    if(!single_player)
    {
        setmodel(current_turn.pointer, "progs/s_bubble.spr");
        mycentreprint(current_turn, "Your turn\n");
    }
    else
    {
        if(current_turn.chess_team == "white")
        {
            mycentreprint(current_turn, "Current turn: White\n");
        }
        else
        {
            mycentreprint(current_turn, "Current turn: Black\n");
        }
        
    }
    
    mystuffcmd(current_turn, "bf\n");
    if(random() < 0.500)
    {
        mystuffcmd(current_turn, "play buttons/switch02.wav\n");
    }
    else
    {
        mystuffcmd(current_turn, "play buttons/switch04.wav\n");
    }
    
    current_turn.turn_starttime = time;
    current_selected = world;
    king = get_king(current_turn);
    
    if(CanDie(king, world))
    {
        mystuffcmd(current_turn, "play voice/check.wav\n");
        mycentreprint(current_turn, "You are in Check!");
        current_turn.chess_flags = current_turn.chess_flags | CF_CHECK_NOTIFY;
    }
    
    
    if(single_player)
    {
        setorigin(current_turn.owner, current_turn.origin);
        msg_entity = current_turn.owner;
        WriteByte(MSG_ONE, SVC_SETVIEWANGLES);
        WriteAngle(MSG_ONE, current_turn.v_angle_x);
        WriteAngle(MSG_ONE, current_turn.v_angle_y);
        WriteAngle(MSG_ONE, current_turn.v_angle_z);
        current_turn.fixangle = TRUE;
    }
    
    action_flag = FALSE;
};

// FindNewEnemy
// function begins at statement 22905, parm_start=12941
// OP_NOT_F	539	0	12944
// OP_IFNOT	12944	2	0
// OP_RETURN	30	0	0
// OP_LOAD_S	12941	550	12945
// OP_EQ_S	12945	12194	12946
// OP_IFNOT	12946	3	0
// OP_STORE_S	12921	12942	0
// OP_GOTO	2	0	0
// OP_STORE_S	12194	12942	0
// OP_STORE_V	30	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12942	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12943	0
// OP_NE_E	12943	30	12947
// OP_LOAD_S	12943	550	12948
// OP_NE_S	12948	12942	12949
// OP_LOAD_F	12943	152	12950
// OP_LE	12950	650	12951
// OP_OR	12949	12951	12952
// OP_LOAD_F	12943	182	12953
// OP_BITAND	12953	219	12954
// OP_NOT_F	12954	0	12955
// OP_OR	12952	12955	12956
// OP_LOAD_ENT	12943	181	12957
// OP_EQ_E	12957	30	12958
// OP_OR	12956	12958	12959
// OP_AND	12947	12959	12960
// OP_IFNOT	12960	7	0
// OP_STORE_V	12943	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12942	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12943	0
// OP_GOTO	-20	0	0
// OP_NE_E	12943	30	12961
// OP_IFNOT	12961	3	0
// OP_RETURN	12943	0	0
// OP_GOTO	25	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12942	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12943	0
// OP_NE_E	12943	30	12962
// OP_LOAD_S	12943	550	12963
// OP_NE_S	12963	12942	12964
// OP_LOAD_F	12943	152	12965
// OP_LE	12965	650	12966
// OP_OR	12964	12966	12967
// OP_LOAD_F	12943	182	12968
// OP_BITAND	12968	219	12969
// OP_NOT_F	12969	0	12970
// OP_OR	12967	12970	12971
// OP_AND	12962	12971	12972
// OP_IFNOT	12972	7	0
// OP_STORE_V	12943	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12942	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12943	0
// OP_GOTO	-17	0	0
// OP_RETURN	12943	0	0
// OP_DONE	0	0	0
entity (entity monst) FindNewEnemy = 
{
    local string other_team;
    local entity trav;
    
    if(!king_dead)
    {
        return world;
    }
    
    if(monst.chess_team == "black")
    {
        other_team = "white";
    }
    else
    {
        other_team = "black";
    }
    
    trav = find(world, chess_team, other_team);
    
    if((trav != world) && ((((trav.chess_team != other_team) || (trav.health <= 0.000)) || (!(trav.flags & FL_MONSTER))) || (trav.enemy == world)))
    {
        trav = find(trav, chess_team, other_team);
    }
    
}

if(trav != world)
{
    return trav;
}
else
{
    trav = find(world, chess_team, other_team);
    
    if((trav != world) && (((trav.chess_team != other_team) || (trav.health <= 0.000)) || (!(trav.flags & FL_MONSTER))))
    {
        trav = find(trav, chess_team, other_team);
    }
    
}

return trav;
}

};

/* ERROR INDENTATION */
// HighlightLocation
// function begins at statement 22969, parm_start=12973
// OP_STORE_V	12973	4	0
// OP_CALL1	472	0	0
// OP_STORE_S	1	12975	0
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_STORE_V	12975	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12974	0
// OP_NE_E	12974	30	12976
// OP_LOAD_S	12974	129	12977
// OP_NE_S	12977	6657	12978
// OP_AND	12976	12978	12979
// OP_IFNOT	12979	7	0
// OP_STORE_V	12974	4	0
// OP_STORE_V	197	7	0
// OP_STORE_V	12975	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12974	0
// OP_GOTO	-10	0	0
// OP_NE_E	12974	30	12980
// OP_IFNOT	12980	12	0
// OP_STORE_V	12974	4	0
// OP_LOAD_V	12974	439	12981
// OP_STORE_V	12981	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	12974	439	12984
// OP_LOAD_V	12974	435	12987
// OP_STOREP_V	12987	12984	0
// OP_ADDRESS	12974	435	12990
// OP_LOAD_V	12974	105	12993
// OP_STOREP_V	12993	12990	0
// OP_STORE_ENT	12974	540	0
// OP_DONE	0	0	0
void (float loc) HighlightLocation = 
{
    local entity trav;
    local string loc_str;
    loc_str = ftos(loc);
    trav = find(world, targetname, loc_str);
    
    if((trav != world) && (trav.classname != "door"))
    {
        trav = find(trav, targetname, loc_str);
    }
    
}


if(trav != world)
{
    setorigin(trav, trav.pos2);
    trav.pos2 = trav.pos1;
    trav.pos1 = trav.origin;
    last_highlight = trav;
}

};

/* ERROR INDENTATION */
// CheckGameOver
// function begins at statement 23002, parm_start=12996
// OP_NOT_F	539	0	13001
// OP_IFNOT	13001	190	0
// OP_ADDRESS	28	152	13002
// OP_STOREP_F	8164	13002	0
// OP_STORE_F	214	539	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	4320	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	454	0	0
// OP_STORE_F	214	525	0
// OP_STORE_F	213	13000	0
// OP_STORE_V	30	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12921	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12998	0
// OP_NE_E	12998	30	13003
// OP_NOT_F	13000	0	13004
// OP_AND	13003	13004	13005
// OP_IFNOT	13005	19	0
// OP_STORE_V	12998	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12921	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12998	0
// OP_NE_E	12998	30	13006
// OP_IFNOT	13006	11	0
// OP_LOAD_F	12998	182	13007
// OP_BITAND	13007	219	13008
// OP_LOAD_F	12998	152	13009
// OP_GT	13009	650	13010
// OP_AND	13008	13010	13011
// OP_LOAD_S	12998	129	13012
// OP_NE_S	13012	12498	13013
// OP_AND	13011	13013	13014
// OP_IFNOT	13014	2	0
// OP_STORE_F	214	13000	0
// OP_GOTO	-21	0	0
// OP_NE_E	12998	30	13015
// OP_IFNOT	13015	3	0
// OP_STORE_ENT	12998	12996	0
// OP_GOTO	2	0	0
// OP_RETURN	0	0	0
// OP_STORE_F	213	13000	0
// OP_STORE_V	30	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12194	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12999	0
// OP_NE_E	12999	30	13016
// OP_NOT_F	13000	0	13017
// OP_AND	13016	13017	13018
// OP_IFNOT	13018	19	0
// OP_STORE_V	12999	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12194	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12999	0
// OP_NE_E	12999	30	13019
// OP_IFNOT	13019	11	0
// OP_LOAD_F	12999	182	13020
// OP_BITAND	13020	219	13021
// OP_LOAD_F	12999	152	13022
// OP_GT	13022	650	13023
// OP_AND	13021	13023	13024
// OP_LOAD_S	12999	129	13025
// OP_NE_S	13025	12498	13026
// OP_AND	13024	13026	13027
// OP_IFNOT	13027	2	0
// OP_STORE_F	214	13000	0
// OP_GOTO	-21	0	0
// OP_NE_E	12999	30	13028
// OP_IFNOT	13028	3	0
// OP_STORE_ENT	12999	12997	0
// OP_GOTO	2	0	0
// OP_RETURN	0	0	0
// OP_NE_E	12998	30	13029
// OP_NE_E	12999	30	13030
// OP_OR	13029	13030	13031
// OP_IFNOT	13031	82	0
// OP_ADDRESS	12996	181	13032
// OP_STOREP_ENT	12997	13032	0
// OP_ADDRESS	12996	148	13033
// OP_STOREP_FNC	1384	13033	0
// OP_ADDRESS	12996	150	13034
// OP_ADD_F	31	686	13035
// OP_STOREP_F	13035	13034	0
// OP_ADDRESS	12997	181	13036
// OP_STOREP_ENT	12996	13036	0
// OP_ADDRESS	12997	148	13037
// OP_STOREP_FNC	1384	13037	0
// OP_ADDRESS	12997	150	13038
// OP_ADD_F	31	686	13039
// OP_STOREP_F	13039	13038	0
// OP_NE_E	12998	30	13040
// OP_IFNOT	13040	32	0
// OP_STORE_F	213	13000	0
// OP_STORE_V	12998	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12921	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12998	0
// OP_NE_E	12998	30	13041
// OP_NOT_F	13000	0	13042
// OP_AND	13041	13042	13043
// OP_IFNOT	13043	19	0
// OP_STORE_V	12998	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12921	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12998	0
// OP_NE_E	12998	30	13044
// OP_IFNOT	13044	11	0
// OP_LOAD_F	12998	182	13045
// OP_BITAND	13045	219	13046
// OP_LOAD_F	12998	152	13047
// OP_GT	13047	650	13048
// OP_AND	13046	13048	13049
// OP_LOAD_S	12998	129	13050
// OP_NE_S	13050	12498	13051
// OP_AND	13049	13051	13052
// OP_IFNOT	13052	2	0
// OP_STORE_F	214	13000	0
// OP_GOTO	-21	0	0
// OP_NE_E	12998	30	13053
// OP_IFNOT	13053	2	0
// OP_STORE_ENT	12998	12996	0
// OP_NE_E	12999	30	13054
// OP_IFNOT	13054	32	0
// OP_STORE_F	213	13000	0
// OP_STORE_V	12999	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12194	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12999	0
// OP_NE_E	12999	30	13055
// OP_NOT_F	13000	0	13056
// OP_AND	13055	13056	13057
// OP_IFNOT	13057	19	0
// OP_STORE_V	12999	4	0
// OP_STORE_V	550	7	0
// OP_STORE_V	12194	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	12999	0
// OP_NE_E	12999	30	13058
// OP_IFNOT	13058	11	0
// OP_LOAD_F	12999	182	13059
// OP_BITAND	13059	219	13060
// OP_LOAD_F	12999	152	13061
// OP_GT	13061	650	13062
// OP_AND	13060	13062	13063
// OP_LOAD_S	12999	129	13064
// OP_NE_S	13064	12498	13065
// OP_AND	13063	13065	13066
// OP_IFNOT	13066	2	0
// OP_STORE_F	214	13000	0
// OP_GOTO	-21	0	0
// OP_NE_E	12999	30	13067
// OP_IFNOT	13067	2	0
// OP_STORE_ENT	12999	12997	0
// OP_GOTO	-84	0	0
// OP_GT	37	650	13068
// OP_IFNOT	13068	27	0
// OP_LOAD_ENT	28	201	13069
// OP_LOAD_ENT	13069	555	13070
// OP_LOAD_F	13070	182	13071
// OP_BITAND	13071	217	13072
// OP_IFNOT	13072	10	0
// OP_LOAD_ENT	28	201	13073
// OP_LOAD_ENT	13073	555	13074
// OP_STORE_V	13074	4	0
// OP_STORE_V	13075	7	0
// OP_CALL2	600	0	0
// OP_LOAD_ENT	28	201	13076
// OP_LOAD_ENT	13076	555	13077
// OP_ADDRESS	13077	132	13078
// OP_STOREP_F	708	13078	0
// OP_LOAD_ENT	28	201	13079
// OP_LOAD_F	13079	182	13080
// OP_BITAND	13080	217	13081
// OP_IFNOT	13081	9	0
// OP_LOAD_ENT	28	201	13082
// OP_STORE_V	13082	4	0
// OP_STORE_V	13083	7	0
// OP_CALL2	600	0	0
// OP_LOAD_ENT	28	201	13084
// OP_LOAD_ENT	13084	555	13085
// OP_ADDRESS	13085	132	13086
// OP_STOREP_F	650	13086	0
// OP_DONE	0	0	0
void () CheckGameOver = 
{
    local entity ent1;
    local entity ent2;
    local entity e1trav;
    local entity e2trav;
    local float found;
    
    if(!king_dead)
    {
        self.health = -10.000;
        king_dead = TRUE;
        sound(self, CHAN_AUTO, "boss1/death.wav", 1.000, ATTN_NONE);
        action_flag = TRUE;
        found = FALSE;
        e1trav = find(world, chess_team, "white");
        
        if((e1trav != world) && !found)
        {
            e1trav = find(e1trav, chess_team, "white");
            
            if(e1trav != world)
            {
                
                if(((e1trav.flags & FL_MONSTER) && (e1trav.health > 0.000)) && (e1trav.classname != "chess_king"))
                {
                    found = TRUE;
                }
                
            }
            
        }
        
    }
    
    if(e1trav != world)
    {
        ent1 = e1trav;
    }
    else
    {
        return;
    }
    
    found = FALSE;
    e2trav = find(world, chess_team, "black");
    
    if((e2trav != world) && !found)
    {
        e2trav = find(e2trav, chess_team, "black");
        
        if(e2trav != world)
        {
            
            if(((e2trav.flags & FL_MONSTER) && (e2trav.health > 0.000)) && (e2trav.classname != "chess_king"))
            {
                found = TRUE;
            }
            
        }
        
    }
    
}

if(e2trav != world)
{
    ent2 = e2trav;
}
else
{
    return;
}


if((e1trav != world) || (e2trav != world))
{
    ent1.enemy = ent2;
    ent1.think = FoundTarget;
    ent1.nextthink = time + 0.100;
    ent2.enemy = ent1;
    ent2.think = FoundTarget;
    ent2.nextthink = time + 0.100;
    
    if(e1trav != world)
    {
        found = FALSE;
        e1trav = find(e1trav, chess_team, "white");
        
        if((e1trav != world) && !found)
        {
            e1trav = find(e1trav, chess_team, "white");
            
            if(e1trav != world)
            {
                
                if(((e1trav.flags & FL_MONSTER) && (e1trav.health > 0.000)) && (e1trav.classname != "chess_king"))
                {
                    found = TRUE;
                }
                
            }
            
        }
        
    }
    
    
    if(e1trav != world)
    {
        ent1 = e1trav;
    }
    
}


if(e2trav != world)
{
    found = FALSE;
    e2trav = find(e2trav, chess_team, "black");
    
    if((e2trav != world) && !found)
    {
        e2trav = find(e2trav, chess_team, "black");
        
        if(e2trav != world)
        {
            
            if(((e2trav.flags & FL_MONSTER) && (e2trav.health > 0.000)) && (e2trav.classname != "chess_king"))
            {
                found = TRUE;
            }
            
        }
        
    }
    
}


if(e2trav != world)
{
    ent2 = e2trav;
}

}

}

}


if(teamplay > 0.000)
{

if(self.owner.opponent.flags & FL_CLIENT)
{
mycentreprint(self.owner.opponent, "YOU HAVE WON!");
self.owner.opponent.skin = 1.000;
}


if(self.owner.flags & FL_CLIENT)
{
mycentreprint(self.owner, "You have lost..");
self.owner.opponent.skin = 0.000;
}

}

}

};

/* ERROR INDENTATION */
// UpdateMonsterColors
// function begins at statement 23194, parm_start=13087
// OP_STORE_V	12191	4	0
// OP_CALL1	488	0	0
// OP_NE_F	1	819	13089
// OP_IFNOT	13089	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	550	7	0
// OP_LOAD_S	13087	550	13090
// OP_STORE_V	13090	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	13088	0
// OP_NE_E	13088	30	13091
// OP_IFNOT	13091	20	0
// OP_LOAD_F	13088	182	13092
// OP_BITAND	13092	219	13093
// OP_LOAD_S	13088	129	13094
// OP_NE_S	13094	12498	13095
// OP_AND	13093	13095	13096
// OP_LOAD_S	13088	129	13097
// OP_NE_S	13097	12487	13098
// OP_AND	13096	13098	13099
// OP_IFNOT	13099	4	0
// OP_ADDRESS	13088	183	13100
// OP_LOAD_F	13087	183	13101
// OP_STOREP_F	13101	13100	0
// OP_STORE_V	13088	4	0
// OP_STORE_V	550	7	0
// OP_LOAD_S	13087	550	13102
// OP_STORE_V	13102	10	0
// OP_CALL3	464	0	0
// OP_STORE_ENT	1	13088	0
// OP_GOTO	-20	0	0
// OP_DONE	0	0	0
void (entity plyr) UpdateMonsterColors = 
{
    local entity trav;
    
    if(cvar("coop") != 3.000)
    {
        return;
    }
    
    trav = find(world, chess_team, plyr.chess_team);
    
    while(trav != world)
    {
        
        if(((trav.flags & FL_MONSTER) && (trav.classname != "chess_king")) && (trav.classname != "chess_queen"))
        {
            trav.colormap = plyr.colormap;
        }
        
        trav = find(trav, chess_team, plyr.chess_team);
    }
    
};

// CanDie
// function begins at statement 23227, parm_start=13103
// OP_LOAD_S	13103	550	13107
// OP_EQ_S	13107	12921	13108
// OP_IFNOT	13108	3	0
// OP_STORE_S	12194	13106	0
// OP_GOTO	2	0	0
// OP_STORE_S	12921	13106	0
// OP_STORE_V	287	4	0
// OP_STORE_V	9102	7	0
// OP_CALL2	468	0	0
// OP_STORE_ENT	1	13105	0
// OP_NE_E	13105	30	13109
// OP_IFNOT	13109	23	0
// OP_LOAD_ENT	13105	201	13110
// OP_LOAD_ENT	13103	201	13111
// OP_NE_E	13110	13111	13112
// OP_NE_E	13105	13104	13113
// OP_AND	13112	13113	13114
// OP_IFNOT	13114	14	0
// OP_LOAD_F	13105	182	13115
// OP_BITAND	13115	219	13116
// OP_LOAD_F	13105	152	13117
// OP_GT	13117	650	13118
// OP_AND	13116	13118	13119
// OP_IFNOT	13119	8	0
// OP_STORE_V	13105	4	0
// OP_LOAD_F	13103	551	13120
// OP_STORE_V	13120	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	581	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	13105	164	13121
// OP_STORE_ENT	13121	13105	0
// OP_GOTO	-23	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity ent, entity ignore) CanDie = 
{
    local entity trav;
    local string team_str;
    if(ent.chess_team == "white")
    {
        team_str = "black";
    }
    else
    {
        team_str = "white";
    }
    
    trav = findradius(VEC_ORIGIN, 4000.000);
    
    while(trav != world)
    {
        
        if((trav.owner != ent.owner) && (trav != ignore))
        {
            
            if((trav.flags & FL_MONSTER) && (trav.health > 0.000))
            {
                
                if(CanMove(trav, ent.location, FALSE))
                {
                    return TRUE;
                }
                
            }
            
        }
        
        trav = trav.chain;
    }
    
    return FALSE;
};

// mycentreprint
// function begins at statement 23263, parm_start=13122
// OP_ADDRESS	13122	567	13124
// OP_STOREP_S	13123	13124	0
// OP_LOAD_S	13122	129	13125
// OP_EQ_S	13125	4469	13126
// OP_IFNOT	13126	6	0
// OP_LOAD_ENT	13122	201	13127
// OP_STORE_V	13127	4	0
// OP_STORE_V	13123	7	0
// OP_CALL2	507	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	13122	4	0
// OP_STORE_V	13123	7	0
// OP_CALL2	507	0	0
// OP_DONE	0	0	0
void (entity ent, string msg) mycentreprint = 
{
    ent.last_message = msg;
    if(ent.classname == "info_player_start")
    {
        centerprint(ent.owner, msg);
    }
    else
    {
        centerprint(ent, msg);
    }
    
};

// mystuffcmd
// function begins at statement 23277, parm_start=13128
// OP_LOAD_S	13128	129	13130
// OP_EQ_S	13130	4469	13131
// OP_IFNOT	13131	6	0
// OP_LOAD_ENT	13128	201	13132
// OP_STORE_V	13132	4	0
// OP_STORE_V	13129	7	0
// OP_CALL2	467	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	13128	4	0
// OP_STORE_V	13129	7	0
// OP_CALL2	467	0	0
// OP_DONE	0	0	0
void (entity ent, string cmd) mystuffcmd = 
{
    if(ent.classname == "info_player_start")
    {
        stuffcmd(ent.owner, cmd);
    }
    else
    {
        stuffcmd(ent, cmd);
    }
    
};

