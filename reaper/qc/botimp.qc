// skinChange
// function begins at statement 27476, parm_start=16128
// OP_NOT_F	615	0	16131
// OP_IFNOT	16131	4	0
// OP_ADDRESS	16128	132	16132
// OP_STOREP_F	213	16132	0
// OP_RETURN	0	0	0
// OP_LT	16129	213	16133
// OP_IFNOT	16133	2	0
// OP_STORE_F	2246	16129	0
// OP_GT	16129	2246	16134
// OP_IFNOT	16134	2	0
// OP_STORE_F	213	16129	0
// OP_ADDRESS	16128	132	16135
// OP_STOREP_F	16129	16135	0
// OP_IFNOT	37	23	0
// OP_LOAD_S	16128	129	16136
// OP_EQ_S	16136	1102	16137
// OP_IFNOT	16137	20	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16130	0
// OP_IFNOT	16130	14	0
// OP_LOAD_F	16130	184	16138
// OP_LOAD_F	16128	184	16139
// OP_EQ_F	16138	16139	16140
// OP_IFNOT	16140	4	0
// OP_ADDRESS	16130	132	16141
// OP_LOAD_F	16128	132	16142
// OP_STOREP_F	16142	16141	0
// OP_STORE_V	16130	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16130	0
// OP_GOTO	-13	0	0
// OP_DONE	0	0	0
void (entity e, float newskin) skinChange = 
{
    local entity b;
    
    if(!SKINSMODE)
    {
        e.skin = FALSE;
        return;
    }
    
    
    if(newskin < FALSE)
    {
        newskin = 15;
    }
    
    
    if(newskin > 15)
    {
        newskin = FALSE;
    }
    
    e.skin = newskin;
    
    if(teamplay)
    {
        
        if(e.classname == "player")
        {
            b = find(world, classname, "dmbot");
            
            while(b)
            {
                
                if(b.team == e.team)
                {
                    b.skin = e.skin;
                }
                
                b = find(b, classname, "dmbot");
            }
            
        }
        
    }
    
};

// removeSkins
// function begins at statement 27513, parm_start=16144
// OP_STORE_F	213	615	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16144	0
// OP_IFNOT	16144	9	0
// OP_ADDRESS	16144	132	16145
// OP_STOREP_F	213	16145	0
// OP_STORE_V	16144	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1102	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16144	0
// OP_GOTO	-8	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16144	0
// OP_IFNOT	16144	9	0
// OP_ADDRESS	16144	132	16146
// OP_STOREP_F	213	16146	0
// OP_STORE_V	16144	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	2056	10	0
// OP_CALL3	463	0	0
// OP_STORE_ENT	1	16144	0
// OP_GOTO	-8	0	0
// OP_DONE	0	0	0
void () removeSkins = 
{
    local entity e;
    SKINSMODE = FALSE;
    e = find(world, classname, "player");
    
    while(e)
    {
        e.skin = FALSE;
        e = find(e, classname, "player");
    }
    
    e = find(world, classname, "dmbot");
    
    while(e)
    {
        e.skin = FALSE;
        e = find(e, classname, "dmbot");
    }
    
};

// setSkinsMode
// function begins at statement 27543, parm_start=16148
// OP_EQ_F	615	216	16148
// OP_IFNOT	16148	5	0
// OP_CALL0	16143	0	0
// OP_STORE_V	16149	4	0
// OP_CALL1	470	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	615	214	16150
// OP_STORE_F	16150	615	0
// OP_EQ_F	615	214	16151
// OP_IFNOT	16151	4	0
// OP_STORE_V	16152	4	0
// OP_CALL1	470	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	16153	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () setSkinsMode = 
{
    
    if(SKINSMODE == FL_SWIM)
    {
        removeSkins();
        dprint("Skins mode turned off\n");
        return;
    }
    
    SKINSMODE = SKINSMODE + TRUE;
    if(SKINSMODE == TRUE)
    {
        dprint("Skins mode activated\n");
    }
    else
    {
        dprint("Skill-based skins mode activated\n");
    }
    
};

// Peeper
// function begins at statement 27559, parm_start=16155
// OP_STORE_V	16155	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	180	16156
// OP_STORE_V	16156	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	16157	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	129	16158
// OP_STOREP_S	2455	16158	0
// OP_ADDRESS	28	131	16159
// OP_STOREP_F	213	16159	0
// OP_ADDRESS	28	93	16160
// OP_STOREP_F	4440	16160	0
// OP_ADDRESS	28	163	16161
// OP_STOREP_F	250	16161	0
// OP_DONE	0	0	0
void () Peeper = 
{
    dprint("Make ");
    dprint(self.netname);
    dprint(" an observer\n");
    self.classname = "peeper";
    self.frame = FALSE;
    self.modelindex = modelindex_eyes;
    self.takedamage = DAMAGE_NO;
};

// NoPeeper
// function begins at statement 27575, parm_start=16163
// OP_LOAD_S	28	180	16163
// OP_STORE_V	16163	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	16164	4	0
// OP_CALL1	470	0	0
// OP_ADDRESS	28	129	16165
// OP_STOREP_S	1102	16165	0
// OP_ADDRESS	28	93	16166
// OP_STOREP_F	4441	16166	0
// OP_ADDRESS	28	163	16167
// OP_STOREP_F	252	16167	0
// OP_DONE	0	0	0
void () NoPeeper = 
{
    dprint(self.netname);
    dprint(" back to normal\n");
    self.classname = "player";
    self.modelindex = modelindex_player;
    self.takedamage = DAMAGE_AIM;
};

// setPeeperMode
// function begins at statement 27587, parm_start=16169
// OP_LOAD_S	28	129	16169
// OP_EQ_S	16169	2455	16170
// OP_IFNOT	16170	3	0
// OP_CALL0	16162	0	0
// OP_RETURN	0	0	0
// OP_CALL0	16154	0	0
// OP_DONE	0	0	0
void () setPeeperMode = 
{
    
    if(self.classname == "peeper")
    {
        NoPeeper();
        return;
    }
    
    Peeper();
};

// setVerboseMode
// function begins at statement 27594, parm_start=16172
// OP_NOT_F	604	0	16172
// OP_STORE_F	16172	604	0
// OP_DONE	0	0	0
void () setVerboseMode = 
{
    VERBOSEBOT = !VERBOSEBOT;
};

// setNamingMode
// function begins at statement 27597, parm_start=16174
// OP_NOT_F	624	0	16174
// OP_STORE_F	16174	624	0
// OP_DONE	0	0	0
void () setNamingMode = 
{
    NAMEBOTS = !NAMEBOTS;
};

// botRestrictedCommand
// function begins at statement 27600, parm_start=16176
// OP_LOAD_F	28	173	16177
// OP_EQ_F	16177	16178	16179
// OP_IFNOT	16179	3	0
// OP_CALL0	16147	0	0
// OP_GOTO	110	0	0
// OP_LOAD_F	28	173	16180
// OP_EQ_F	16180	16181	16182
// OP_IFNOT	16182	3	0
// OP_CALL0	11492	0	0
// OP_GOTO	105	0	0
// OP_LOAD_F	28	173	16183
// OP_GT	16183	736	16184
// OP_LOAD_F	28	173	16185
// OP_LT	16185	5510	16186
// OP_AND	16184	16186	16187
// OP_IFNOT	16187	12	0
// OP_IFNOT	37	6	0
// OP_LOAD_F	28	173	16188
// OP_SUB_F	16188	574	16189
// OP_STORE_V	16189	4	0
// OP_CALL1	11925	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	173	16190
// OP_SUB_F	16190	574	16191
// OP_STORE_V	16191	4	0
// OP_CALL1	11908	0	0
// OP_GOTO	88	0	0
// OP_LOAD_F	28	173	16192
// OP_EQ_F	16192	16193	16194
// OP_IFNOT	16194	6	0
// OP_CALL0	11492	0	0
// OP_CALL0	11492	0	0
// OP_CALL0	11492	0	0
// OP_CALL0	11492	0	0
// OP_GOTO	80	0	0
// OP_LOAD_F	28	173	16195
// OP_EQ_F	16195	16196	16197
// OP_IFNOT	16197	3	0
// OP_CALL0	11900	0	0
// OP_GOTO	75	0	0
// OP_LOAD_F	28	173	16198
// OP_EQ_F	16198	16199	16200
// OP_IFNOT	16200	3	0
// OP_CALL0	16168	0	0
// OP_GOTO	70	0	0
// OP_LOAD_F	28	173	16201
// OP_EQ_F	16201	16202	16203
// OP_IFNOT	16203	3	0
// OP_CALL0	4183	0	0
// OP_GOTO	65	0	0
// OP_LOAD_F	28	173	16204
// OP_EQ_F	16204	16205	16206
// OP_IFNOT	16206	3	0
// OP_CALL0	16171	0	0
// OP_GOTO	60	0	0
// OP_LOAD_F	28	173	16207
// OP_EQ_F	16207	16208	16209
// OP_IFNOT	16209	9	0
// OP_STORE_V	612	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	16176	0
// OP_STORE_V	16176	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	16210	4	0
// OP_CALL1	470	0	0
// OP_GOTO	49	0	0
// OP_LOAD_F	28	173	16211
// OP_EQ_F	16211	5513	16212
// OP_IFNOT	16212	9	0
// OP_STORE_V	614	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	16176	0
// OP_STORE_V	16176	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	16213	4	0
// OP_CALL1	470	0	0
// OP_GOTO	38	0	0
// OP_LOAD_F	28	173	16214
// OP_EQ_F	16214	5516	16215
// OP_IFNOT	16215	9	0
// OP_STORE_V	606	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	16176	0
// OP_STORE_V	16176	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	16216	4	0
// OP_CALL1	470	0	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	16217
// OP_EQ_F	16217	5518	16218
// OP_IFNOT	16218	9	0
// OP_STORE_V	38	4	0
// OP_CALL1	471	0	0
// OP_STORE_S	1	16176	0
// OP_STORE_V	16176	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	16219	4	0
// OP_CALL1	470	0	0
// OP_GOTO	16	0	0
// OP_LOAD_F	28	173	16220
// OP_EQ_F	16220	16221	16222
// OP_IFNOT	16222	6	0
// OP_BITOR	38	590	16223
// OP_STORE_F	16223	38	0
// OP_STORE_V	16224	4	0
// OP_CALL1	470	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	173	16225
// OP_EQ_F	16225	16226	16227
// OP_IFNOT	16227	5	0
// OP_BITOR	38	591	16228
// OP_STORE_F	16228	38	0
// OP_STORE_V	16229	4	0
// OP_CALL1	470	0	0
// OP_DONE	0	0	0
void () botRestrictedCommand = 
{
    local string tmp;
    if(self.impulse == 202)
    {
        setSkinsMode();
    }
    else
    {
        if(self.impulse == 205)
        {
            AddAnotherBot();
        }
        else
        {
            if((self.impulse > 99) && (self.impulse < 116))
            {
                if(teamplay)
                {
                    SetTeamBots(self.impulse - MUST_HAVE);
                }
                else
                {
                    SetMaxBots(self.impulse - MUST_HAVE);
                }
                
            }
            else
            {
                if(self.impulse == 208)
                {
                    AddAnotherBot();
                    AddAnotherBot();
                    AddAnotherBot();
                    AddAnotherBot();
                }
                else
                {
                    if(self.impulse == 211)
                    {
                        removeAllBots();
                    }
                    else
                    {
                        if(self.impulse == 212)
                        {
                            setPeeperMode();
                        }
                        else
                        {
                            if(self.impulse == 214)
                            {
                                setBotGravity();
                            }
                            else
                            {
                                if(self.impulse == 215)
                                {
                                    setVerboseMode();
                                }
                                else
                                {
                                    if(self.impulse == 217)
                                    {
                                        tmp = ftos(NUMPATHS);
                                        dprint(tmp);
                                        dprint(" botpaths placed\n");
                                    }
                                    else
                                    {
                                        if(self.impulse == 117)
                                        {
                                            tmp = ftos(NUMPATHERS);
                                            dprint(tmp);
                                            dprint(" botpathers\n");
                                        }
                                        else
                                        {
                                            if(self.impulse == 118)
                                            {
                                                tmp = ftos(NUMBOTS);
                                                dprint(tmp);
                                                dprint(" active bots\n");
                                            }
                                            else
                                            {
                                                if(self.impulse == 119)
                                                {
                                                    tmp = ftos(serverflags);
                                                    dprint(tmp);
                                                    dprint(" server flags\n");
                                                }
                                                else
                                                {
                                                    if(self.impulse == 218)
                                                    {
                                                        serverflags = serverflags | RESTRICT;
                                                        dprint("Restricted mode set\n");
                                                    }
                                                    else
                                                    {
                                                        
                                                        if(self.impulse == 219)
                                                        {
                                                            serverflags = serverflags | SUPERRESTRICT;
                                                            dprint("Super Restricted mode set\n");
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

// botImpulseCommand
// function begins at statement 27715, parm_start=16230
// OP_LOAD_F	28	173	16230
// OP_EQ_F	16230	2356	16231
// OP_IFNOT	16231	7	0
// OP_STORE_V	28	4	0
// OP_LOAD_F	28	132	16232
// OP_ADD_F	16232	214	16233
// OP_STORE_V	16233	7	0
// OP_CALL2	4509	0	0
// OP_GOTO	58	0	0
// OP_LOAD_F	28	173	16234
// OP_EQ_F	16234	16235	16236
// OP_IFNOT	16236	7	0
// OP_STORE_V	28	4	0
// OP_LOAD_F	28	132	16237
// OP_SUB_F	16237	214	16238
// OP_STORE_V	16238	7	0
// OP_CALL2	4509	0	0
// OP_GOTO	49	0	0
// OP_LOAD_F	28	173	16239
// OP_EQ_F	16239	5237	16240
// OP_IFNOT	16240	3	0
// OP_CALL0	5219	0	0
// OP_GOTO	44	0	0
// OP_LOAD_F	28	173	16241
// OP_EQ_F	16241	16242	16243
// OP_IFNOT	16243	4	0
// OP_STORE_V	573	4	0
// OP_CALL1	12110	0	0
// OP_GOTO	38	0	0
// OP_LOAD_F	28	173	16244
// OP_EQ_F	16244	16245	16246
// OP_IFNOT	16246	4	0
// OP_STORE_V	572	4	0
// OP_CALL1	12110	0	0
// OP_GOTO	32	0	0
// OP_LOAD_F	28	173	16247
// OP_EQ_F	16247	16248	16249
// OP_IFNOT	16249	3	0
// OP_CALL0	11948	0	0
// OP_GOTO	27	0	0
// OP_LOAD_F	28	173	16250
// OP_EQ_F	16250	16251	16252
// OP_IFNOT	16252	3	0
// OP_CALL0	12099	0	0
// OP_GOTO	22	0	0
// OP_LOAD_F	28	173	16253
// OP_EQ_F	16253	16254	16255
// OP_IFNOT	16255	9	0
// OP_ADDRESS	28	162	16256
// OP_LOAD_F	28	162	16257
// OP_BITOR	16257	273	16258
// OP_STOREP_F	16258	16256	0
// OP_ADDRESS	28	375	16259
// OP_ADD_F	31	304	16260
// OP_STOREP_F	16260	16259	0
// OP_GOTO	11	0	0
// OP_BITAND	38	591	16261
// OP_NOT_F	16261	0	16262
// OP_IFNOT	16262	8	0
// OP_BITAND	38	590	16263
// OP_NOT_F	16263	0	16264
// OP_LOAD_F	28	183	16265
// OP_EQ_F	16265	214	16266
// OP_OR	16264	16266	16267
// OP_IFNOT	16267	2	0
// OP_CALL0	16175	0	0
// OP_DONE	0	0	0
void () botImpulseCommand = 
{
    if(self.impulse == 200)
    {
        skinChange(self, self.skin + TRUE);
    }
    else
    {
        if(self.impulse == 201)
        {
            skinChange(self, self.skin - TRUE);
        }
        else
        {
            if(self.impulse == 204)
            {
                printIntro();
            }
            else
            {
                if(self.impulse == 210)
                {
                    PrintScores(MYSCORE);
                }
                else
                {
                    if(self.impulse == 220)
                    {
                        PrintScores(NORMALSCORE);
                    }
                    else
                    {
                        if(self.impulse == 221)
                        {
                            UpdateTeamColors();
                        }
                        else
                        {
                            if(self.impulse == 222)
                            {
                                PrintTopScores();
                            }
                            else
                            {
                                if(self.impulse == 223)
                                {
                                    self.items = self.items | IT_INVULNERABILITY;
                                    self.invincible_finished = time + SVC_INTERMISSION;
                                }
                                else
                                {
                                    
                                    if(!(serverflags & SUPERRESTRICT))
                                    {
                                        
                                        if((!(serverflags & RESTRICT)) || (self.colormap == TRUE))
                                        {
                                            botRestrictedCommand();
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

