float globaldef007610;
float globaldef007611;
float globaldef007612;
float globaldef007613;
float globaldef007614;

// soundweight_door
// function begins at statement 40638, parm_start=23032
// OP_LOAD_V	23033	105	23037
// OP_LOAD_V	23032	105	23040
// OP_SUB_V	23037	23040	23043
// OP_STORE_V	23043	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23034	0
// OP_GT	23034	23026	23046
// OP_IFNOT	23046	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23035	0
// OP_LOAD_V	23032	105	23047
// OP_STORE_V	23047	4	0
// OP_STORE_V	23034	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23036	0
// OP_IFNOT	23036	9	0
// OP_LOAD_S	23036	129	23050
// OP_EQ_S	23050	5259	23051
// OP_IFNOT	23051	3	0
// OP_ADD_F	23035	214	23052
// OP_STORE_F	23052	23035	0
// OP_LOAD_ENT	23036	164	23053
// OP_STORE_ENT	23053	23036	0
// OP_GOTO	-8	0	0
// OP_MUL_F	23034	1997	23054
// OP_DIV_F	23054	23026	23055
// OP_SUB_F	1997	23055	23056
// OP_DIV_F	23056	23035	23057
// OP_RETURN	23057	0	0
// OP_DONE	0	0	0
float (entity globaldef007616, entity globaldef007617) soundweight_door = 
{
    local float globaldef007618;
    local float globaldef007619;
    local entity globaldef007620;
    globaldef007618 = vlen(globaldef007617.origin - globaldef007616.origin);
    
    if(globaldef007618 > globaldef007610)
    {
        return FALSE;
    }
    
    globaldef007619 = FALSE;
    globaldef007620 = findradius(globaldef007616.origin, globaldef007618);
    
    while(globaldef007620)
    {
        
        if(globaldef007620.classname == "door")
        {
            globaldef007619 = globaldef007619 + TRUE;
        }
        
        globaldef007620 = globaldef007620.chain;
    }
    
    return (100 - ((globaldef007618 * 100) / globaldef007610)) / globaldef007619;
};


// soundweight_teleport
// function begins at statement 40668, parm_start=23059
// OP_LOAD_V	23060	105	23064
// OP_LOAD_V	23059	105	23067
// OP_SUB_V	23064	23067	23070
// OP_STORE_V	23070	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23061	0
// OP_GT	23061	23027	23073
// OP_IFNOT	23073	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23062	0
// OP_LOAD_V	23059	105	23074
// OP_STORE_V	23074	4	0
// OP_STORE_V	23061	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23063	0
// OP_IFNOT	23063	9	0
// OP_LOAD_S	23063	129	23077
// OP_EQ_S	23077	19126	23078
// OP_IFNOT	23078	3	0
// OP_ADD_F	23062	214	23079
// OP_STORE_F	23079	23062	0
// OP_LOAD_ENT	23063	164	23080
// OP_STORE_ENT	23080	23063	0
// OP_GOTO	-8	0	0
// OP_MUL_F	23061	1997	23081
// OP_DIV_F	23081	23027	23082
// OP_SUB_F	1997	23082	23083
// OP_DIV_F	23083	23062	23084
// OP_RETURN	23084	0	0
// OP_DONE	0	0	0
float (entity globaldef007622, entity globaldef007623) soundweight_teleport = 
{
    local float globaldef007624;
    local float globaldef007625;
    local entity globaldef007626;
    globaldef007624 = vlen(globaldef007623.origin - globaldef007622.origin);
    
    if(globaldef007624 > globaldef007611)
    {
        return FALSE;
    }
    
    globaldef007625 = FALSE;
    globaldef007626 = findradius(globaldef007622.origin, globaldef007624);
    
    while(globaldef007626)
    {
        
        if(globaldef007626.classname == "trigger_teleport")
        {
            globaldef007625 = globaldef007625 + TRUE;
        }
        
        globaldef007626 = globaldef007626.chain;
    }
    
    return (100 - ((globaldef007624 * 100) / globaldef007611)) / globaldef007625;
};


// soundweight_fire
// function begins at statement 40698, parm_start=23086
// OP_LOAD_V	23087	105	23091
// OP_LOAD_V	23086	105	23094
// OP_SUB_V	23091	23094	23097
// OP_STORE_V	23097	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23088	0
// OP_GT	23088	23028	23100
// OP_IFNOT	23100	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23089	0
// OP_STORE_ENT	835	23090	0
// OP_IFNOT	23090	13	0
// OP_LOAD_F	23090	426	23101
// OP_EQ_F	23101	758	23102
// OP_IFNOT	23102	7	0
// OP_LOAD_ENT	23090	194	23103
// OP_LOAD_ENT	23087	194	23104
// OP_NE_E	23103	23104	23105
// OP_IFNOT	23105	3	0
// OP_ADD_F	23089	214	23106
// OP_STORE_F	23106	23089	0
// OP_LOAD_ENT	23090	620	23107
// OP_STORE_ENT	23107	23090	0
// OP_GOTO	-12	0	0
// OP_MUL_F	23088	1997	23108
// OP_DIV_F	23108	23028	23109
// OP_SUB_F	1997	23109	23110
// OP_DIV_F	23110	23089	23111
// OP_RETURN	23111	0	0
// OP_DONE	0	0	0
float (entity globaldef007628, entity globaldef007629) soundweight_fire = 
{
    local float globaldef007630;
    local float globaldef007631;
    local entity globaldef007632;
    globaldef007630 = vlen(globaldef007629.origin - globaldef007628.origin);
    
    if(globaldef007630 > globaldef007612)
    {
        return FALSE;
    }
    
    globaldef007631 = FALSE;
    globaldef007632 = firstBotSound;
    
    while(globaldef007632)
    {
        
        if(globaldef007632.cnt == BOTSOUND_FIRE)
        {
            
            if(globaldef007632.goalentity != globaldef007629.goalentity)
            {
                globaldef007631 = globaldef007631 + TRUE;
            }
            
        }
        
        globaldef007632 = globaldef007632.next;
    }
    
    return (100 - ((globaldef007630 * 100) / globaldef007612)) / globaldef007631;
};


// soundweight_armor
// function begins at statement 40728, parm_start=23113
// OP_LOAD_V	23114	105	23118
// OP_LOAD_V	23113	105	23121
// OP_SUB_V	23118	23121	23124
// OP_STORE_V	23124	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23115	0
// OP_GT	23115	23030	23127
// OP_IFNOT	23127	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23116	0
// OP_LOAD_V	23113	105	23128
// OP_STORE_V	23128	4	0
// OP_STORE_V	23030	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23117	0
// OP_IFNOT	23117	15	0
// OP_LOAD_S	23117	129	23131
// OP_EQ_S	23131	4469	23132
// OP_LOAD_S	23117	129	23133
// OP_EQ_S	23133	4472	23134
// OP_OR	23132	23134	23135
// OP_LOAD_S	23117	129	23136
// OP_EQ_S	23136	4476	23137
// OP_OR	23135	23137	23138
// OP_IFNOT	23138	3	0
// OP_ADD_F	23116	214	23139
// OP_STORE_F	23139	23116	0
// OP_LOAD_ENT	23117	164	23140
// OP_STORE_ENT	23140	23117	0
// OP_GOTO	-14	0	0
// OP_MUL_F	23115	1997	23141
// OP_DIV_F	23141	23030	23142
// OP_SUB_F	1997	23142	23143
// OP_DIV_F	23143	23116	23144
// OP_RETURN	23144	0	0
// OP_DONE	0	0	0
float (entity globaldef007634, entity globaldef007635) soundweight_armor = 
{
    local float globaldef007636;
    local float globaldef007637;
    local entity globaldef007638;
    globaldef007636 = vlen(globaldef007635.origin - globaldef007634.origin);
    
    if(globaldef007636 > globaldef007614)
    {
        return FALSE;
    }
    
    globaldef007637 = FALSE;
    globaldef007638 = findradius(globaldef007634.origin, globaldef007614);
    
    while(globaldef007638)
    {
        
        if(((globaldef007638.classname == "item_armor1") || (globaldef007638.classname == "item_armor2")) || (globaldef007638.classname == "item_armorInv"))
        {
            globaldef007637 = globaldef007637 + TRUE;
        }
        
        globaldef007638 = globaldef007638.chain;
    }
    
    return (100 - ((globaldef007636 * 100) / globaldef007614)) / globaldef007637;
};


// soundweight_pickup
// function begins at statement 40764, parm_start=23146
// OP_LOAD_V	23147	105	23151
// OP_LOAD_V	23146	105	23154
// OP_SUB_V	23151	23154	23157
// OP_STORE_V	23157	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	23148	0
// OP_GT	23148	23030	23160
// OP_IFNOT	23160	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	23149	0
// OP_LOAD_V	23146	105	23161
// OP_STORE_V	23161	4	0
// OP_STORE_V	23029	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	23150	0
// OP_IFNOT	23150	9	0
// OP_LOAD_F	23150	182	23164
// OP_BITAND	23164	222	23165
// OP_IFNOT	23165	3	0
// OP_ADD_F	23149	214	23166
// OP_STORE_F	23166	23149	0
// OP_LOAD_ENT	23150	164	23167
// OP_STORE_ENT	23167	23150	0
// OP_GOTO	-8	0	0
// OP_MUL_F	23148	1997	23168
// OP_DIV_F	23168	23029	23169
// OP_SUB_F	1997	23169	23170
// OP_DIV_F	23170	23149	23171
// OP_RETURN	23171	0	0
// OP_DONE	0	0	0
float (entity globaldef007640, entity globaldef007641) soundweight_pickup = 
{
    local float globaldef007642;
    local float globaldef007643;
    local entity globaldef007644;
    globaldef007642 = vlen(globaldef007641.origin - globaldef007640.origin);
    
    if(globaldef007642 > globaldef007614)
    {
        return FALSE;
    }
    
    globaldef007643 = FALSE;
    globaldef007644 = findradius(globaldef007640.origin, globaldef007613);
    
    while(globaldef007644)
    {
        
        if(globaldef007644.flags & FL_ITEM)
        {
            globaldef007643 = globaldef007643 + TRUE;
        }
        
        globaldef007644 = globaldef007644.chain;
    }
    
    return (100 - ((globaldef007642 * 100) / globaldef007613)) / globaldef007643;
};


// RemoveBotSound
// function begins at statement 40794, parm_start=23173
// OP_LOAD_ENT	28	620	23173
// OP_IFNOT	23173	5	0
// OP_LOAD_ENT	28	620	23174
// OP_ADDRESS	23174	621	23175
// OP_LOAD_ENT	28	621	23176
// OP_STOREP_ENT	23176	23175	0
// OP_LOAD_ENT	28	621	23177
// OP_IFNOT	23177	6	0
// OP_LOAD_ENT	28	621	23178
// OP_ADDRESS	23178	620	23179
// OP_LOAD_ENT	28	620	23180
// OP_STOREP_ENT	23180	23179	0
// OP_GOTO	3	0	0
// OP_LOAD_ENT	28	620	23181
// OP_STORE_ENT	23181	835	0
// OP_SUB_F	818	214	23182
// OP_STORE_F	23182	818	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () RemoveBotSound = 
{
    
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
        firstBotSound = self.next;
    }
    
    botSoundCount = botSoundCount - TRUE;
    remove(self);
};


// CreateBotSound
// function begins at statement 40814, parm_start=23183
// OP_LOAD_S	23183	129	23190
// OP_NE_S	23190	1236	23191
// OP_IFNOT	23191	5	0
// OP_LOAD_S	23183	129	23192
// OP_NE_S	23192	1241	23193
// OP_IFNOT	23193	2	0
// OP_RETURN	0	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	23189	0
// OP_ADDRESS	23189	129	23194
// OP_STOREP_S	23195	23194	0
// OP_ADDRESS	23189	104	23196
// OP_STOREP_F	237	23196	0
// OP_STORE_V	23189	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	23200	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	23189	194	23203
// OP_STOREP_ENT	23183	23203	0
// OP_STORE_V	23189	4	0
// OP_STORE_V	23184	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	23189	426	23204
// OP_STOREP_F	23188	23204	0
// OP_EQ_F	23188	756	23205
// OP_IFNOT	23205	4	0
// OP_ADDRESS	23189	550	23206
// OP_STOREP_FNC	23031	23206	0
// OP_GOTO	20	0	0
// OP_EQ_F	23188	757	23207
// OP_IFNOT	23207	4	0
// OP_ADDRESS	23189	550	23208
// OP_STOREP_FNC	23058	23208	0
// OP_GOTO	15	0	0
// OP_EQ_F	23188	758	23209
// OP_IFNOT	23209	4	0
// OP_ADDRESS	23189	550	23210
// OP_STOREP_FNC	23085	23210	0
// OP_GOTO	10	0	0
// OP_EQ_F	23188	759	23211
// OP_IFNOT	23211	4	0
// OP_ADDRESS	23189	550	23212
// OP_STOREP_FNC	23145	23212	0
// OP_GOTO	5	0	0
// OP_EQ_F	23188	760	23213
// OP_IFNOT	23213	3	0
// OP_ADDRESS	23189	550	23214
// OP_STOREP_FNC	23112	23214	0
// OP_IFNOT	835	3	0
// OP_ADDRESS	835	621	23215
// OP_STOREP_ENT	23189	23215	0
// OP_ADDRESS	23189	620	23216
// OP_STOREP_ENT	835	23216	0
// OP_ADDRESS	23189	621	23217
// OP_STOREP_ENT	30	23217	0
// OP_STORE_ENT	23189	835	0
// OP_ADD_F	818	214	23218
// OP_STORE_F	23218	818	0
// OP_ADDRESS	23189	148	23219
// OP_STOREP_FNC	23172	23219	0
// OP_ADDRESS	23189	150	23220
// OP_MUL_F	23187	216	23221
// OP_ADD_F	31	23221	23222
// OP_STOREP_F	23222	23220	0
// OP_DONE	0	0	0
void (entity cause, vector spot, float duration, float type) CreateBotSound = 
{
    local entity botsound;
    
    if(cause.classname != "player")
    {
        
        if(cause.classname != "bot")
        {
            return;
        }
        
    }
    
    botsound = spawn();
    botsound.classname = "botsound";
    botsound.solid = SOLID_NOT;
    setsize(botsound, '-4 -4 -4', '4 4 4');
    botsound.goalentity = cause;
    setorigin(botsound, spot);
    botsound.cnt = type;
    if(type == BOTSOUND_DOOR)
    {
        botsound.f_sndweight = soundweight_door;
    }
    else
    {
        if(type == BOTSOUND_TELEPORT)
        {
            botsound.f_sndweight = soundweight_teleport;
        }
        else
        {
            if(type == BOTSOUND_FIRE)
            {
                botsound.f_sndweight = soundweight_fire;
            }
            else
            {
                if(type == BOTSOUND_PICKUP)
                {
                    botsound.f_sndweight = soundweight_pickup;
                }
                else
                {
                    
                    if(type == BOTSOUND_ARMOR)
                    {
                        botsound.f_sndweight = soundweight_armor;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(firstBotSound)
    {
        firstBotSound.prev = botsound;
    }
    
    botsound.next = firstBotSound;
    botsound.prev = world;
    firstBotSound = botsound;
    botSoundCount = botSoundCount + TRUE;
    botsound.think = RemoveBotSound;
    botsound.nextthink = time + (duration * FL_SWIM);
};


// Hearable
// function begins at statement 40879, parm_start=23223
// OP_STORE_ENT	835	23225	0
// OP_IFNOT	23225	15	0
// OP_LOAD_ENT	23225	194	23226
// OP_EQ_E	23226	23224	23227
// OP_IFNOT	23227	9	0
// OP_LOAD_V	23225	105	23228
// OP_LOAD_V	23223	105	23231
// OP_SUB_V	23228	23231	23234
// OP_STORE_V	23234	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1663	23237
// OP_IFNOT	23237	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	23225	620	23238
// OP_STORE_ENT	23238	23225	0
// OP_GOTO	-14	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity ear, entity e) Hearable = 
{
    local entity check;
    check = firstBotSound;
    
    while(check)
    {
        
        if(check.goalentity == e)
        {
            
            if((vlen(check.origin - ear.origin)) < 1000)
            {
                return TRUE;
            }
            
        }
        
        check = check.next;
    }
    
    return FALSE;
};


// LocateDistantSound
// function begins at statement 40897, parm_start=23239
// OP_CALL0	457	0	0
// OP_LOAD_F	28	588	23246
// OP_SUB_F	228	23246	23247
// OP_MUL_F	1	23247	23248
// OP_SUB_F	228	23248	23249
// OP_LT	23249	214	23250
// OP_IFNOT	23250	2	0
// OP_RETURN	213	0	0
// OP_SUB_F	814	809	23251
// OP_MUL_F	23251	235	23252
// OP_STORE_F	23252	23241	0
// OP_GE	23241	1997	23253
// OP_IFNOT	23253	2	0
// OP_RETURN	30	0	0
// OP_SUB_F	814	809	23254
// OP_GT	23254	229	23255
// OP_IFNOT	23255	2	0
// OP_RETURN	30	0	0
// OP_STORE_ENT	30	23244	0
// OP_STORE_ENT	835	23243	0
// OP_IFNOT	23243	35	0
// OP_LOAD_ENT	23243	194	23256
// OP_NE_E	23256	23239	23257
// OP_IFNOT	23257	29	0
// OP_LOAD_ENT	23243	194	23258
// OP_LOAD_F	23258	152	23259
// OP_GT	23259	213	23260
// OP_IFNOT	23260	25	0
// OP_LOAD_ENT	23243	194	23261
// OP_LOAD_F	23261	607	23262
// OP_LOAD_F	23239	607	23263
// OP_EQ_F	23262	23263	23264
// OP_AND	37	23264	23265
// OP_NOT_F	23265	0	23266
// OP_IFNOT	23266	18	0
// OP_LOAD_ENT	23243	194	23267
// OP_LOAD_F	23267	182	23268
// OP_BITAND	23268	221	23269
// OP_NOT_F	23269	0	23270
// OP_IFNOT	23270	13	0
// OP_LOAD_FNC	23243	550	23271
// OP_STORE_V	23239	4	0
// OP_STORE_V	23243	7	0
// OP_CALL2	23271	0	0
// OP_STORE_F	1	23240	0
// OP_GT	23240	23241	23272
// OP_IFNOT	23272	6	0
// OP_STORE_F	23240	23241	0
// OP_LOAD_ENT	23243	194	23273
// OP_STORE_ENT	23273	23244	0
// OP_LOAD_F	23243	426	23274
// OP_STORE_F	23274	23242	0
// OP_LOAD_ENT	23243	620	23275
// OP_STORE_ENT	23275	23243	0
// OP_GOTO	-34	0	0
// OP_RETURN	23244	0	0
// OP_DONE	0	0	0
entity (entity ear) LocateDistantSound = 
{
    local float sndweight;
    local float highestsndweight;
    local float sndtype;
    local entity botsnd;
    local entity found;
    local string UNUSED;
    
    if((MOVETYPE_WALK - (random() * (MOVETYPE_WALK - self.field000265))) < TRUE)
    {
        return FALSE;
    }
    
    highestsndweight = (activeClientCount - observerCount) * MOVETYPE_BOUNCE;
    
    if(highestsndweight >= 100)
    {
        return world;
    }
    
    
    if((activeClientCount - observerCount) > MOVETYPE_STEP)
    {
        return world;
    }
    
    found = world;
    botsnd = firstBotSound;
    
    while(botsnd)
    {
        
        if(botsnd.goalentity != ear)
        {
            
            if(botsnd.goalentity.health > FALSE)
            {
                
                if(!(teamplay && (botsnd.goalentity.field000284 == ear.field000284)))
                {
                    
                    if(!(botsnd.goalentity.flags & FL_NOTARGET))
                    {
                        sndweight = botsnd.f_sndweight(ear, botsnd);
                        
                        if(sndweight > highestsndweight)
                        {
                            highestsndweight = sndweight;
                            found = botsnd.goalentity;
                            sndtype = botsnd.cnt;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        botsnd = botsnd.next;
    }
    
    return found;
};

