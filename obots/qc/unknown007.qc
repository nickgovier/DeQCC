
// func002471
// function begins at statement 41797, parm_start=24038
// OP_LOAD_ENT	24038	194	24040
// OP_LOAD_ENT	24040	194	24041
// OP_EQ_E	24041	24039	24042
// OP_IFNOT	24042	4	0
// OP_ADDRESS	24038	371	24043
// OP_SUB_F	31	214	24044
// OP_STOREP_F	24044	24043	0
// OP_LOAD_ENT	24038	590	24045
// OP_EQ_E	24045	24039	24046
// OP_IFNOT	24046	5	0
// OP_ADDRESS	24038	575	24047
// OP_LOAD_F	24038	575	24048
// OP_BITOR	24048	707	24049
// OP_STOREP_F	24049	24047	0
// OP_DONE	0	0	0
void (entity globaldef007858, entity globaldef007859) func002471 = 
{
    
    if(globaldef007858.goalentity.goalentity == globaldef007859)
    {
        globaldef007858.search_time = time - TRUE;
    }
    
    
    if(globaldef007858.field000267 == globaldef007859)
    {
        globaldef007858.botflags = globaldef007858.botflags | globaldef000690;
    }
    
};


// func002472
// function begins at statement 41812, parm_start=24050
// OP_LOAD_ENT	24050	194	24056
// OP_STORE_ENT	24056	24055	0
// OP_LOAD_ENT	24055	194	24057
// OP_NE_E	24057	24051	24058
// OP_IFNOT	24058	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	24055	194	24059
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	24051	196	24060
// OP_STORE_V	24060	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	24059	0
// OP_LOAD_ENT	24055	194	24061
// OP_LOAD_S	24061	129	24062
// OP_EQ_S	24062	24063	24064
// OP_IFNOT	24064	4	0
// OP_ADDRESS	24050	371	24065
// OP_STOREP_F	31	24065	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	24055	194	24066
// OP_IFNOT	24066	24	0
// OP_ADDRESS	24050	371	24067
// OP_ADD_F	31	228	24068
// OP_STOREP_F	24068	24067	0
// OP_LOAD_ENT	24055	194	24069
// OP_LOAD_V	24069	98	24070
// OP_LOAD_ENT	24055	194	24073
// OP_LOAD_V	24073	94	24074
// OP_ADD_V	24070	24074	24077
// OP_MUL_VF	24077	539	24080
// OP_STORE_V	24080	24052	0
// OP_LOAD_ENT	24055	194	24083
// OP_LOAD_F	24083	97	24084
// OP_ADD_F	24084	214	24085
// OP_STORE_F	24085	24054	0
// OP_STORE_V	24055	4	0
// OP_STORE_V	24052	7	0
// OP_CALL2	453	0	0
// OP_LOAD_ENT	24055	194	24086
// OP_ADDRESS	24086	662	24087
// OP_STOREP_ENT	24050	24087	0
// OP_LOAD_ENT	24055	194	24088
// OP_ADDRESS	24088	663	24089
// OP_STOREP_F	31	24089	0
// OP_DONE	0	0	0
void (entity globaldef007860, entity globaldef007861) func002472 = 
{
    local vector globaldef007862;
    local entity globaldef007866;
    globaldef007866 = globaldef007860.goalentity;
    
    if(globaldef007866.goalentity != globaldef007861)
    {
        return;
    }
    
    globaldef007866.goalentity = find(world, targetname, globaldef007861.target);
    
    if(globaldef007866.goalentity.classname == "light")
    {
        globaldef007860.search_time = time;
        return;
    }
    
    
    if(globaldef007866.goalentity)
    {
        globaldef007860.search_time = time + MOVETYPE_WALK;
        globaldef007862 = (globaldef007866.goalentity.absmax + globaldef007866.goalentity.absmin) * RA_PLAYERSTATTIME;
        globaldef007862_z = globaldef007866.goalentity.absmin_z + TRUE;
        setorigin(globaldef007866, globaldef007862);
        globaldef007866.goalentity.field000339 = globaldef007860;
        globaldef007866.goalentity.field000340 = time;
    }
    
};


// func002473
// function begins at statement 41858, parm_start=24090
// OP_LOAD_ENT	24090	194	24091
// OP_LOAD_ENT	24091	194	24092
// OP_LOAD_S	24092	129	24093
// OP_EQ_S	24093	5259	24094
// OP_IFNOT	24094	4	0
// OP_ADDRESS	24090	371	24095
// OP_SUB_F	31	214	24096
// OP_STOREP_F	24096	24095	0
// OP_DONE	0	0	0
void (entity globaldef007868) func002473 = 
{
    
    if(globaldef007868.goalentity.goalentity.classname == "door")
    {
        globaldef007868.search_time = time - TRUE;
    }
    
};


// func002474
// function begins at statement 41867, parm_start=24097
// OP_STORE_F	213	24102	0
// OP_LOAD_V	24097	105	24113
// OP_STORE_V	24113	24110	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	24100	0
// OP_LT	24100	4478	24116
// OP_IFNOT	24116	14	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	24099	0
// OP_LT	24099	539	24117
// OP_IFNOT	24117	3	0
// OP_STORE_F	276	24101	0
// OP_GOTO	2	0	0
// OP_STORE_F	214	24101	0
// OP_CALL0	457	0	0
// OP_MUL_F	1438	1	24118
// OP_ADD_F	24118	1470	24119
// OP_MUL_F	24101	24119	24120
// OP_ADD_F	24110	24120	24121
// OP_STORE_F	24121	24110	0
// OP_GT	24100	3267	24122
// OP_IFNOT	24122	14	0
// OP_CALL0	457	0	0
// OP_STORE_F	1	24099	0
// OP_LT	24099	539	24123
// OP_IFNOT	24123	3	0
// OP_STORE_F	276	24101	0
// OP_GOTO	2	0	0
// OP_STORE_F	214	24101	0
// OP_CALL0	457	0	0
// OP_MUL_F	1438	1	24124
// OP_ADD_F	24124	1470	24125
// OP_MUL_F	24101	24125	24126
// OP_ADD_F	24111	24126	24127
// OP_STORE_F	24127	24111	0
// OP_MUL_F	216	793	24128
// OP_CALL0	457	0	0
// OP_MUL_F	24128	1	24129
// OP_ADD_F	24112	24129	24130
// OP_SUB_F	24130	793	24131
// OP_STORE_F	24131	24112	0
// OP_LOAD_V	24097	105	24132
// OP_STORE_V	24132	4	0
// OP_STORE_V	24110	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24097	13	0
// OP_CALL4	466	0	0
// OP_LOAD_V	24097	105	24135
// OP_SUB_V	24110	24135	24138
// OP_STORE_V	24138	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	24104	0
// OP_LOAD_V	24097	105	24141
// OP_SUB_V	24110	24141	24144
// OP_STORE_V	24144	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24098	0
// OP_LOAD_V	24097	105	24147
// OP_MUL_F	24098	70	24150
// OP_SUB_F	24150	2323	24151
// OP_MUL_VF	24104	24151	24152
// OP_ADD_V	24147	24152	24155
// OP_STORE_V	24155	24110	0
// OP_STORE_V	24110	24107	0
// OP_STORE_V	24107	4	0
// OP_CALL1	1111	0	0
// OP_ADD_F	1	214	24158
// OP_STORE_F	24158	24109	0
// OP_STORE_V	24107	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24103	0
// OP_EQ_F	24103	276	24159
// OP_EQ_F	24103	278	24160
// OP_OR	24159	24160	24161
// OP_IFNOT	24161	35	0
// OP_MUL_FV	309	24104	24162
// OP_SUB_V	24110	24162	24165
// OP_STORE_V	24165	24107	0
// OP_STORE_V	24107	4	0
// OP_CALL1	1111	0	0
// OP_ADD_F	1	214	24168
// OP_STORE_F	24168	24109	0
// OP_STORE_V	24107	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24103	0
// OP_EQ_F	24103	276	24169
// OP_EQ_F	24103	278	24170
// OP_OR	24169	24170	24171
// OP_IFNOT	24171	21	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	228	24172
// OP_ADD_F	24102	24172	24173
// OP_STORE_F	24173	24099	0
// OP_LOAD_F	24097	108	24174
// OP_GT	24112	24174	24175
// OP_GT	24099	230	24176
// OP_OR	24175	24176	24177
// OP_IFNOT	24177	4	0
// OP_LOAD_F	24097	137	24178
// OP_SUB_F	24109	24178	24179
// OP_STORE_F	24179	24112	0
// OP_LOAD_V	24097	105	24180
// OP_SUB_V	24110	24180	24183
// OP_STORE_V	24183	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24098	0
// OP_GT	24098	1997	24186
// OP_IFNOT	24186	2	0
// OP_RETURN	24110	0	0
// OP_ADD_F	24102	214	24187
// OP_STORE_F	24187	24102	0
// OP_LT	24102	232	24188
// OP_IF	24188	-111	0
// OP_RETURN	24110	0	0
// OP_DONE	0	0	0
vector (entity globaldef007869) func002474 = 
{
    local float globaldef007870;
    local float globaldef007871;
    local float globaldef007872;
    local float globaldef007873;
    local float globaldef007874;
    local float globaldef007875;
    local vector globaldef007876;
    local vector globaldef007880;
    local vector globaldef007884;
    globaldef007874 = FALSE;
    do
    {
        globaldef007884 = globaldef007869.origin;
        globaldef007872 = random();
        
        if(globaldef007872 < 0.8)
        {
            globaldef007871 = random();
            if(globaldef007871 < RA_PLAYERSTATTIME)
            {
                globaldef007873 = CONTENT_EMPTY;
            }
            else
            {
                globaldef007873 = TRUE;
            }
            
            globaldef007884_x = globaldef007884_x + (globaldef007873 * ((700 * random()) + 50));
        }
        
        
        if(globaldef007872 > 0.2)
        {
            globaldef007871 = random();
            if(globaldef007871 < RA_PLAYERSTATTIME)
            {
                globaldef007873 = CONTENT_EMPTY;
            }
            else
            {
                globaldef007873 = TRUE;
            }
            
            globaldef007884_y = globaldef007884_y + (globaldef007873 * ((700 * random()) + 50));
        }
        
        globaldef007884_z = (globaldef007884_z + ((FL_SWIM * globaldef000776) * random())) - globaldef000776;
        traceline(globaldef007869.origin, globaldef007884, TRUE, globaldef007869);
        globaldef007876 = normalize(globaldef007884 - globaldef007869.origin);
        globaldef007870 = vlen(globaldef007884 - globaldef007869.origin);
        globaldef007884 = globaldef007869.origin + (globaldef007876 * ((globaldef007870 * trace_fraction) - 20));
        globaldef007880 = globaldef007884;
        globaldef007880_z = AbsFloorHeight(globaldef007880) + TRUE;
        globaldef007875 = pointcontents(globaldef007880);
        
        if((globaldef007875 == CONTENT_EMPTY) || (globaldef007875 == CONTENT_WATER))
        {
            globaldef007880 = globaldef007884 - (SVC_INTERMISSION * globaldef007876);
            globaldef007880_z = AbsFloorHeight(globaldef007880) + TRUE;
            globaldef007875 = pointcontents(globaldef007880);
            
            if((globaldef007875 == CONTENT_EMPTY) || (globaldef007875 == CONTENT_WATER))
            {
                globaldef007871 = globaldef007874 + (random() * MOVETYPE_WALK);
                
                if((globaldef007884_z > globaldef007869.origin_z) || (globaldef007871 > MOVETYPE_FLY))
                {
                    globaldef007884_z = globaldef007880_z - globaldef007869.mins_z;
                }
                
                globaldef007870 = vlen(globaldef007884 - globaldef007869.origin);
                
                if(globaldef007870 > 100)
                {
                    return globaldef007884;
                }
                
            }
            
        }
        
        globaldef007874 = globaldef007874 + TRUE;
    } while (globaldef007874 < MOVETYPE_PUSH);
    return globaldef007884;
};


// func002475
// function begins at statement 41982, parm_start=24190
// OP_LOAD_V	24190	105	24206
// OP_STORE_V	24206	24200	0
// OP_LOAD_F	24190	108	24209
// OP_LOAD_F	24190	137	24210
// OP_ADD_F	24209	24210	24211
// OP_STORE_F	24211	24202	0
// OP_STORE_V	24200	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24194	0
// OP_NE_F	24194	24192	24212
// OP_IFNOT	24212	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	24200	24197	0
// OP_ADD_F	24199	24191	24213
// OP_STORE_F	24213	24199	0
// OP_STORE_V	24197	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24194	0
// OP_EQ_F	24194	24192	24214
// OP_IFNOT	24214	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	24200	4	0
// OP_STORE_V	24197	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24190	13	0
// OP_CALL4	466	0	0
// OP_LT	70	214	24215
// OP_IFNOT	24215	9	0
// OP_SUB_F	73	214	24216
// OP_STORE_F	24216	24199	0
// OP_STORE_V	24197	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24194	0
// OP_EQ_F	24194	24192	24217
// OP_IFNOT	24217	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	24193	0
// OP_IFNOT	214	30	0
// OP_ADD_F	24193	214	24218
// OP_STORE_F	24218	24193	0
// OP_GT	24193	1470	24219
// OP_IFNOT	24219	2	0
// OP_RETURN	213	0	0
// OP_SUB_F	24199	24202	24220
// OP_STORE_F	24220	24195	0
// OP_LE	24195	214	24221
// OP_IFNOT	24221	8	0
// OP_ADD_F	24199	24202	24222
// OP_MUL_F	24222	539	24223
// OP_STORE_F	24223	24196	0
// OP_EQ_F	24196	213	24224
// OP_IFNOT	24224	2	0
// OP_STORE_F	1283	24196	0
// OP_RETURN	24196	0	0
// OP_STORE_V	24197	24203	0
// OP_ADD_F	24199	24202	24225
// OP_MUL_F	24225	539	24226
// OP_STORE_F	24226	24195	0
// OP_STORE_F	24195	24199	0
// OP_STORE_V	24197	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24194	0
// OP_EQ_F	24194	24192	24227
// OP_IFNOT	24227	3	0
// OP_STORE_V	24197	24200	0
// OP_STORE_V	24203	24197	0
// OP_GOTO	-29	0	0
// OP_DONE	0	0	0
float (entity globaldef007889, float globaldef007890, float globaldef007891) func002475 = 
{
    local float globaldef007892;
    local float globaldef007893;
    local float globaldef007894;
    local float globaldef007895;
    local vector globaldef007896;
    local vector globaldef007900;
    local vector globaldef007904;
    globaldef007900 = globaldef007889.origin;
    globaldef007900_z = globaldef007889.origin_z + globaldef007889.mins_z;
    globaldef007893 = pointcontents(globaldef007900);
    
    if(globaldef007893 != globaldef007891)
    {
        return FALSE;
    }
    
    globaldef007896 = globaldef007900;
    globaldef007896_z = globaldef007896_z + globaldef007890;
    globaldef007893 = pointcontents(globaldef007896);
    
    if(globaldef007893 == globaldef007891)
    {
        return FALSE;
    }
    
    traceline(globaldef007900, globaldef007896, TRUE, globaldef007889);
    
    if(trace_fraction < TRUE)
    {
        globaldef007896_z = trace_endpos_z - TRUE;
        globaldef007893 = pointcontents(globaldef007896);
        
        if(globaldef007893 == globaldef007891)
        {
            return FALSE;
        }
        
    }
    
    globaldef007892 = FALSE;
    
    while(TRUE)
    {
        globaldef007892 = globaldef007892 + TRUE;
        
        if(globaldef007892 > 50)
        {
            return FALSE;
        }
        
        globaldef007894 = globaldef007896_z - globaldef007900_z;
        
        if(globaldef007894 <= TRUE)
        {
            globaldef007895 = (globaldef007896_z + globaldef007900_z) * RA_PLAYERSTATTIME;
            
            if(globaldef007895 == FALSE)
            {
                globaldef007895 = 0.001;
            }
            
            return globaldef007895;
        }
        
        globaldef007904 = globaldef007896;
        globaldef007894 = (globaldef007896_z + globaldef007900_z) * RA_PLAYERSTATTIME;
        globaldef007896_z = globaldef007894;
        globaldef007893 = pointcontents(globaldef007896);
        
        if(globaldef007893 == globaldef007891)
        {
            globaldef007900 = globaldef007896;
            globaldef007896 = globaldef007904;
        }
        
    }
    
};


// func002476
// function begins at statement 42050, parm_start=24229
// OP_LOAD_V	24229	105	24237
// OP_STORE_V	24237	24230	0
// OP_LOAD_F	24229	139	24240
// OP_ADD_F	24230	24240	24241
// OP_STORE_F	24241	24230	0
// OP_LOAD_F	24229	140	24242
// OP_ADD_F	24231	24242	24243
// OP_STORE_F	24243	24231	0
// OP_STORE_V	24230	24233	0
// OP_ADD_F	24235	741	24244
// OP_STORE_F	24244	24235	0
// OP_STORE_V	24230	4	0
// OP_STORE_V	24233	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24229	13	0
// OP_CALL4	466	0	0
// OP_IFNOT	79	132	0
// OP_STORE_V	24230	24233	0
// OP_MUL_F	70	741	24245
// OP_ADD_F	24235	24245	24246
// OP_SUB_F	24246	736	24247
// OP_STORE_F	24247	24235	0
// OP_STORE_V	24233	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	276	24248
// OP_IFNOT	24248	123	0
// OP_LOAD_V	24229	105	24249
// OP_STORE_V	24249	24230	0
// OP_LOAD_F	24229	139	24252
// OP_ADD_F	24230	24252	24253
// OP_STORE_F	24253	24230	0
// OP_LOAD_F	24229	136	24254
// OP_ADD_F	24231	24254	24255
// OP_STORE_F	24255	24231	0
// OP_STORE_V	24230	24233	0
// OP_ADD_F	24235	741	24256
// OP_STORE_F	24256	24235	0
// OP_STORE_V	24230	4	0
// OP_STORE_V	24233	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24229	13	0
// OP_CALL4	466	0	0
// OP_IFNOT	79	106	0
// OP_STORE_V	24230	24233	0
// OP_MUL_F	70	741	24257
// OP_ADD_F	24235	24257	24258
// OP_SUB_F	24258	736	24259
// OP_STORE_F	24259	24235	0
// OP_STORE_V	24233	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	276	24260
// OP_IFNOT	24260	97	0
// OP_LOAD_V	24229	105	24261
// OP_STORE_V	24261	24230	0
// OP_LOAD_F	24229	135	24264
// OP_ADD_F	24230	24264	24265
// OP_STORE_F	24265	24230	0
// OP_LOAD_F	24229	136	24266
// OP_ADD_F	24231	24266	24267
// OP_STORE_F	24267	24231	0
// OP_STORE_V	24230	24233	0
// OP_ADD_F	24235	741	24268
// OP_STORE_F	24268	24235	0
// OP_STORE_V	24230	4	0
// OP_STORE_V	24233	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24229	13	0
// OP_CALL4	466	0	0
// OP_IFNOT	79	80	0
// OP_STORE_V	24230	24233	0
// OP_MUL_F	70	741	24269
// OP_ADD_F	24235	24269	24270
// OP_SUB_F	24270	736	24271
// OP_STORE_F	24271	24235	0
// OP_STORE_V	24233	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	276	24272
// OP_IFNOT	24272	71	0
// OP_LOAD_V	24229	105	24273
// OP_STORE_V	24273	24230	0
// OP_LOAD_F	24229	135	24276
// OP_ADD_F	24230	24276	24277
// OP_STORE_F	24277	24230	0
// OP_LOAD_F	24229	140	24278
// OP_ADD_F	24231	24278	24279
// OP_STORE_F	24279	24231	0
// OP_STORE_V	24230	24233	0
// OP_ADD_F	24235	741	24280
// OP_STORE_F	24280	24235	0
// OP_STORE_V	24230	4	0
// OP_STORE_V	24233	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24229	13	0
// OP_CALL4	466	0	0
// OP_IFNOT	79	54	0
// OP_STORE_V	24230	24233	0
// OP_MUL_F	70	741	24281
// OP_ADD_F	24235	24281	24282
// OP_SUB_F	24282	736	24283
// OP_STORE_F	24283	24235	0
// OP_STORE_V	24233	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	276	24284
// OP_IFNOT	24284	45	0
// OP_LOAD_V	24229	105	24285
// OP_STORE_V	24285	24230	0
// OP_STORE_V	24230	24233	0
// OP_ADD_F	24235	741	24288
// OP_STORE_F	24288	24235	0
// OP_STORE_V	24230	4	0
// OP_STORE_V	24233	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24229	13	0
// OP_CALL4	466	0	0
// OP_IFNOT	79	34	0
// OP_STORE_V	24230	24233	0
// OP_MUL_F	70	741	24289
// OP_ADD_F	24235	24289	24290
// OP_SUB_F	24290	736	24291
// OP_STORE_F	24291	24235	0
// OP_STORE_V	24233	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	276	24292
// OP_IFNOT	24292	25	0
// OP_LOAD_ENT	24229	194	24293
// OP_ADDRESS	24293	194	24294
// OP_LOAD_ENT	24229	194	24295
// OP_STOREP_ENT	24295	24294	0
// OP_LOAD_V	24229	105	24296
// OP_STORE_V	24296	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24236	0
// OP_LOAD_V	24229	105	24299
// OP_STORE_V	24299	24233	0
// OP_STORE_V	24229	4	0
// OP_MUL_F	70	741	24302
// OP_SUB_F	24302	214	24303
// OP_STORE_V	24303	7	0
// OP_STORE_V	24236	10	0
// OP_CALL3	24189	0	0
// OP_STORE_F	1	24235	0
// OP_ADD_F	24235	2323	24304
// OP_STORE_F	24304	24235	0
// OP_LOAD_ENT	24229	194	24305
// OP_STORE_V	24305	4	0
// OP_STORE_V	24233	7	0
// OP_CALL2	453	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	24229	194	24306
// OP_ADDRESS	24306	194	24307
// OP_LOAD_ENT	24229	194	24308
// OP_STOREP_ENT	24308	24307	0
// OP_STORE_V	24229	4	0
// OP_CALL1	1129	0	0
// OP_STORE_V	1	24233	0
// OP_LOAD_ENT	24229	194	24309
// OP_STORE_V	24309	4	0
// OP_STORE_V	24233	7	0
// OP_CALL2	453	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (entity globaldef007909) func002476 = 
{
    local vector globaldef007910;
    local vector globaldef007914;
    local float globaldef007918;
    globaldef007910 = globaldef007909.origin;
    globaldef007910_x = globaldef007910_x + globaldef007909.maxs_x;
    globaldef007910_y = globaldef007910_y + globaldef007909.maxs_y;
    globaldef007914 = globaldef007910;
    globaldef007914_z = globaldef007914_z + GLOBALDEF724_800;
    traceline(globaldef007910, globaldef007914, TRUE, globaldef007909);
    
    if(trace_inopen)
    {
        globaldef007914 = globaldef007910;
        globaldef007914_z = (globaldef007914_z + (trace_fraction * GLOBALDEF724_800)) - OBOT_MAXBOTS;
        
        if(pointcontents(globaldef007914) == CONTENT_EMPTY)
        {
            globaldef007910 = globaldef007909.origin;
            globaldef007910_x = globaldef007910_x + globaldef007909.maxs_x;
            globaldef007910_y = globaldef007910_y + globaldef007909.mins_y;
            globaldef007914 = globaldef007910;
            globaldef007914_z = globaldef007914_z + GLOBALDEF724_800;
            traceline(globaldef007910, globaldef007914, TRUE, globaldef007909);
            
            if(trace_inopen)
            {
                globaldef007914 = globaldef007910;
                globaldef007914_z = (globaldef007914_z + (trace_fraction * GLOBALDEF724_800)) - OBOT_MAXBOTS;
                
                if(pointcontents(globaldef007914) == CONTENT_EMPTY)
                {
                    globaldef007910 = globaldef007909.origin;
                    globaldef007910_x = globaldef007910_x + globaldef007909.mins_x;
                    globaldef007910_y = globaldef007910_y + globaldef007909.mins_y;
                    globaldef007914 = globaldef007910;
                    globaldef007914_z = globaldef007914_z + GLOBALDEF724_800;
                    traceline(globaldef007910, globaldef007914, TRUE, globaldef007909);
                    
                    if(trace_inopen)
                    {
                        globaldef007914 = globaldef007910;
                        globaldef007914_z = (globaldef007914_z + (trace_fraction * GLOBALDEF724_800)) - OBOT_MAXBOTS;
                        
                        if(pointcontents(globaldef007914) == CONTENT_EMPTY)
                        {
                            globaldef007910 = globaldef007909.origin;
                            globaldef007910_x = globaldef007910_x + globaldef007909.mins_x;
                            globaldef007910_y = globaldef007910_y + globaldef007909.maxs_y;
                            globaldef007914 = globaldef007910;
                            globaldef007914_z = globaldef007914_z + GLOBALDEF724_800;
                            traceline(globaldef007910, globaldef007914, TRUE, globaldef007909);
                            
                            if(trace_inopen)
                            {
                                globaldef007914 = globaldef007910;
                                globaldef007914_z = (globaldef007914_z + (trace_fraction * GLOBALDEF724_800)) - OBOT_MAXBOTS;
                                
                                if(pointcontents(globaldef007914) == CONTENT_EMPTY)
                                {
                                    globaldef007910 = globaldef007909.origin;
                                    globaldef007914 = globaldef007910;
                                    globaldef007914_z = globaldef007914_z + GLOBALDEF724_800;
                                    traceline(globaldef007910, globaldef007914, TRUE, globaldef007909);
                                    
                                    if(trace_inopen)
                                    {
                                        globaldef007914 = globaldef007910;
                                        globaldef007914_z = (globaldef007914_z + (trace_fraction * GLOBALDEF724_800)) - OBOT_MAXBOTS;
                                        
                                        if(pointcontents(globaldef007914) == CONTENT_EMPTY)
                                        {
                                            globaldef007909.goalentity.goalentity = globaldef007909.goalentity;
                                            globaldef007918 = pointcontents(globaldef007909.origin);
                                            globaldef007914 = globaldef007909.origin;
                                            globaldef007914_z = func002475(globaldef007909, (trace_fraction * GLOBALDEF724_800) - TRUE, globaldef007918);
                                            globaldef007914_z = globaldef007914_z + 20;
                                            setorigin(globaldef007909.goalentity, globaldef007914);
                                            return;
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
    
    globaldef007909.goalentity.goalentity = globaldef007909.goalentity;
    globaldef007914 = func002474(globaldef007909);
    setorigin(globaldef007909.goalentity, globaldef007914);
    return;
};


// func002477
// function begins at statement 42211, parm_start=24311
// OP_LOAD_V	24311	105	24328
// OP_STORE_V	24328	24313	0
// OP_LOAD_F	24311	137	24331
// OP_ADD_F	24315	24331	24332
// OP_STORE_F	24332	24315	0
// OP_STORE_V	24311	4	0
// OP_LOAD_F	24311	145	24333
// OP_STORE_V	24333	7	0
// OP_STORE_V	24312	10	0
// OP_CALL3	24189	0	0
// OP_STORE_F	1	24315	0
// OP_EQ_F	24315	213	24334
// OP_IFNOT	24334	4	0
// OP_STORE_V	24311	4	0
// OP_CALL1	24228	0	0
// OP_RETURN	0	0	0
// OP_ADD_F	24315	214	24335
// OP_STORE_F	24335	24315	0
// OP_STORE_F	740	24327	0
// OP_STORE_V	286	24316	0
// OP_STORE_V	24316	4	0
// OP_CALL1	452	0	0
// OP_MUL_FV	740	59	24336
// OP_ADD_V	24313	24336	24339
// OP_STORE_V	24339	24319	0
// OP_STORE_V	24313	4	0
// OP_STORE_V	24319	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24311	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	24342
// OP_IFNOT	24342	44	0
// OP_MUL_F	740	70	24343
// OP_ADD_F	24343	235	24344
// OP_MUL_FV	24344	59	24345
// OP_ADD_V	24313	24345	24348
// OP_STORE_V	24348	24319	0
// OP_ADD_F	24321	219	24351
// OP_STORE_F	24351	24321	0
// OP_STORE_V	24319	4	0
// OP_CALL1	487	0	0
// OP_EQ_F	1	276	24352
// OP_IFNOT	24352	33	0
// OP_STORE_V	24319	4	0
// OP_CALL1	1111	0	0
// OP_ADD_F	1	214	24353
// OP_STORE_F	24353	24321	0
// OP_SUB_V	24319	24313	24354
// OP_STORE_V	24354	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24326	0
// OP_LT	24326	24327	24357
// OP_IFNOT	24357	23	0
// OP_STORE_V	24319	4	0
// OP_MUL_FV	746	59	24358
// OP_ADD_V	24319	24358	24361
// OP_STORE_V	24361	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24311	13	0
// OP_CALL4	466	0	0
// OP_MUL_F	9661	70	24364
// OP_MUL_FV	24364	59	24365
// OP_ADD_V	24319	24365	24368
// OP_STORE_V	24368	24319	0
// OP_STORE_V	24319	4	0
// OP_ADD_V	24319	5392	24371
// OP_STORE_V	24371	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24311	13	0
// OP_CALL4	466	0	0
// OP_MUL_F	765	70	24374
// OP_ADD_F	24321	24374	24375
// OP_STORE_F	24375	24321	0
// OP_STORE_F	24326	24327	0
// OP_STORE_V	24319	24322	0
// OP_ADD_F	24317	2598	24376
// OP_STORE_F	24376	24317	0
// OP_LT	24317	1298	24377
// OP_IF	24377	-58	0
// OP_LT	24327	740	24378
// OP_IFNOT	24378	2	0
// OP_RETURN	24322	0	0
// OP_STORE_V	24311	4	0
// OP_CALL1	1129	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
vector (entity globaldef007920, float globaldef007921) func002477 = 
{
    local vector globaldef007922;
    local vector globaldef007926;
    local vector globaldef007930;
    local vector globaldef007934;
    local float globaldef007938;
    local float globaldef007939;
    local float globaldef007940;
    globaldef007922 = globaldef007920.origin;
    globaldef007922_z = globaldef007922_z + globaldef007920.mins_z;
    globaldef007922_z = func002475(globaldef007920, globaldef007920.size_z, globaldef007921);
    
    if(globaldef007922_z == FALSE)
    {
        func002476(globaldef007920);
        return;
    }
    
    globaldef007922_z = globaldef007922_z + TRUE;
    globaldef007940 = GLOBALDEF723_600;
    globaldef007926 = VEC_ORIGIN;
    do
    {
        makevectors(globaldef007926);
        globaldef007930 = globaldef007922 + (GLOBALDEF723_600 * v_forward);
        traceline(globaldef007922, globaldef007930, TRUE, globaldef007920);
        
        if(trace_fraction != TRUE)
        {
            globaldef007930 = globaldef007922 + (((GLOBALDEF723_600 * trace_fraction) + MOVETYPE_BOUNCE) * v_forward);
            globaldef007930_z = globaldef007930_z + FL_MONSTER;
            
            if(pointcontents(globaldef007930) == CONTENT_EMPTY)
            {
                globaldef007930_z = AbsFloorHeight(globaldef007930) + TRUE;
                globaldef007939 = vlen(globaldef007930 - globaldef007922);
                
                if(globaldef007939 < globaldef007940)
                {
                    traceline(globaldef007930, globaldef007930 + (GLOBALDEF729_40 * v_forward), TRUE, globaldef007920);
                    globaldef007930 = globaldef007930 + ((39 * trace_fraction) * v_forward);
                    traceline(globaldef007930, globaldef007930 + '0 0 16', TRUE, globaldef007920);
                    globaldef007930_z = globaldef007930_z + (GLOBALDEF748_15 * trace_fraction);
                    globaldef007940 = globaldef007939;
                    globaldef007934 = globaldef007930;
                }
                
            }
            
        }
        
        globaldef007926_y = globaldef007926_y + 45;
    } while (globaldef007926_y < 360);
    
    if(globaldef007940 < GLOBALDEF723_600)
    {
        return globaldef007934;
    }
    
    return func002474(globaldef007920);
};


// func002478
// function begins at statement 42297, parm_start=24380
// OP_LOAD_ENT	24380	194	24395
// OP_STORE_ENT	24395	24384	0
// OP_LOAD_V	24380	105	24396
// OP_STORE_V	24396	4	0
// OP_STORE_V	737	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	24382	0
// OP_STORE_F	213	24392	0
// OP_IFNOT	24382	38	0
// OP_LOAD_S	24382	129	24399
// OP_EQ_S	24399	11722	24400
// OP_IFNOT	24400	32	0
// OP_LOAD_FNC	24382	548	24401
// OP_IFNOT	24401	30	0
// OP_LOAD_FNC	24382	548	24402
// OP_STORE_V	24380	4	0
// OP_STORE_V	24382	7	0
// OP_CALL2	24402	0	0
// OP_GT	1	213	24403
// OP_IFNOT	24403	24	0
// OP_LOAD_V	24382	94	24404
// OP_LOAD_V	24382	98	24407
// OP_ADD_V	24404	24407	24410
// OP_MUL_VF	24410	539	24413
// OP_STORE_V	24413	24385	0
// OP_LOAD_F	24382	101	24416
// OP_ADD_F	24416	214	24417
// OP_STORE_F	24417	24387	0
// OP_STORE_V	24385	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24393	0
// OP_EQ_F	24393	24381	24418
// OP_IFNOT	24418	11	0
// OP_LOAD_V	24380	105	24419
// OP_SUB_V	24419	24385	24422
// OP_STORE_V	24422	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24391	0
// OP_GT	24391	24392	24425
// OP_IFNOT	24425	4	0
// OP_STORE_ENT	24382	24383	0
// OP_STORE_F	24391	24392	0
// OP_STORE_V	24385	24388	0
// OP_LOAD_ENT	24382	164	24426
// OP_STORE_ENT	24426	24382	0
// OP_GOTO	-37	0	0
// OP_NOT_F	24392	0	24427
// OP_IFNOT	24427	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	24384	194	24428
// OP_STOREP_ENT	24383	24428	0
// OP_STORE_V	24384	4	0
// OP_STORE_V	24388	7	0
// OP_CALL2	453	0	0
// OP_LOAD_ENT	24384	194	24429
// OP_ADDRESS	24429	662	24430
// OP_STOREP_ENT	24380	24430	0
// OP_LOAD_ENT	24384	194	24431
// OP_ADDRESS	24431	663	24432
// OP_STOREP_F	31	24432	0
// OP_ADDRESS	24380	371	24433
// OP_ADD_F	31	232	24434
// OP_STOREP_F	24434	24433	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity bot, float globaldef007943) func002478 = 
{
    local entity e;
    local entity globaldef007945;
    local entity globaldef007946;
    local vector globaldef007947;
    local vector globaldef007951;
    local float globaldef007955;
    local float globaldef007956;
    local float globaldef007957;
    local float globaldef007958;
    globaldef007946 = bot.goalentity;
    e = findradius(bot.origin, globaldef000720);
    globaldef007956 = FALSE;
    
    while(e)
    {
        
        if(e.classname == "plat")
        {
            
            if(e.f_goalweight)
            {
                
                if(e.f_goalweight(bot, e) > FALSE)
                {
                    globaldef007947 = (e.absmin + e.absmax) * RA_PLAYERSTATTIME;
                    globaldef007947_z = e.absmax_z + TRUE;
                    globaldef007957 = pointcontents(globaldef007947);
                    
                    if(globaldef007957 == globaldef007943)
                    {
                        globaldef007955 = vlen(bot.origin - globaldef007947);
                        
                        if(globaldef007955 > globaldef007956)
                        {
                            globaldef007945 = e;
                            globaldef007956 = globaldef007955;
                            globaldef007951 = globaldef007947;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        e = e.chain;
    }
    
    
    if(!globaldef007956)
    {
        return FALSE;
    }
    
    globaldef007946.goalentity = globaldef007945;
    setorigin(globaldef007946, globaldef007951);
    globaldef007946.goalentity.field000339 = bot;
    globaldef007946.goalentity.field000340 = time;
    bot.search_time = time + MOVETYPE_PUSH;
    return TRUE;
};


// func002479
// function begins at statement 42362, parm_start=24436
// OP_STORE_V	24436	4	0
// OP_STORE_V	24437	7	0
// OP_CALL2	24379	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	24436	194	24442
// OP_STORE_ENT	24442	24438	0
// OP_ADDRESS	24438	194	24443
// OP_STOREP_ENT	24438	24443	0
// OP_LOAD_F	24436	575	24444
// OP_BITAND	24444	713	24445
// OP_IFNOT	24445	15	0
// OP_LOAD_F	24436	189	24446
// OP_GE	24446	228	24447
// OP_IFNOT	24447	4	0
// OP_STORE_V	24436	4	0
// OP_CALL1	24228	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	24436	4	0
// OP_CALL1	1129	0	0
// OP_STORE_V	1	24439	0
// OP_ADDRESS	24436	575	24448
// OP_LOAD_F	24436	575	24449
// OP_SUB_F	24449	713	24450
// OP_STOREP_F	24450	24448	0
// OP_GOTO	9	0	0
// OP_STORE_V	24436	4	0
// OP_STORE_V	24437	7	0
// OP_CALL2	24310	0	0
// OP_STORE_V	1	24439	0
// OP_ADDRESS	24436	575	24451
// OP_LOAD_F	24436	575	24452
// OP_BITOR	24452	713	24453
// OP_STOREP_F	24453	24451	0
// OP_ADDRESS	24436	371	24454
// OP_ADD_F	31	216	24455
// OP_STOREP_F	24455	24454	0
// OP_STORE_V	24438	4	0
// OP_STORE_V	24439	7	0
// OP_CALL2	453	0	0
// OP_DONE	0	0	0
void (entity globaldef007960, float globaldef007961) func002479 = 
{
    local entity globaldef007962;
    local vector globaldef007963;
    
    if(func002478(globaldef007960, globaldef007961))
    {
        return;
    }
    
    globaldef007962 = globaldef007960.goalentity;
    globaldef007962.goalentity = globaldef007962;
    if(globaldef007960.botflags & globaldef000696)
    {
        if(globaldef007960.waterlevel >= MOVETYPE_WALK)
        {
            func002476(globaldef007960);
        }
        else
        {
            globaldef007963 = func002474(globaldef007960);
        }
        
        globaldef007960.botflags = globaldef007960.botflags - globaldef000696;
    }
    else
    {
        globaldef007963 = func002477(globaldef007960, globaldef007961);
        globaldef007960.botflags = globaldef007960.botflags | globaldef000696;
    }
    
    globaldef007960.search_time = time + FL_SWIM;
    setorigin(globaldef007962, globaldef007963);
};


// func002480
// function begins at statement 42403, parm_start=24457
// OP_LOAD_F	24457	396	24458
// OP_ADD_F	31	231	24459
// OP_LT	24458	24459	24460
// OP_IFNOT	24460	4	0
// OP_STORE_V	24457	4	0
// OP_CALL1	24228	0	0
// OP_RETURN	214	0	0
// OP_LOAD_F	24457	190	24461
// OP_EQ_F	24461	280	24462
// OP_IFNOT	24462	5	0
// OP_STORE_V	24457	4	0
// OP_STORE_V	280	7	0
// OP_CALL2	24435	0	0
// OP_RETURN	214	0	0
// OP_LOAD_F	24457	190	24463
// OP_EQ_F	24463	279	24464
// OP_IFNOT	24464	9	0
// OP_LOAD_F	24457	383	24465
// OP_ADD_F	31	234	24466
// OP_LT	24465	24466	24467
// OP_IFNOT	24467	5	0
// OP_STORE_V	24457	4	0
// OP_STORE_V	279	7	0
// OP_CALL2	24435	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007968) func002480 = 
{
    
    if(globaldef007968.air_finished < (time + MOVETYPE_TOSS))
    {
        func002476(globaldef007968);
        return TRUE;
    }
    
    
    if(globaldef007968.watertype == CONTENT_LAVA)
    {
        func002479(globaldef007968, CONTENT_LAVA);
        return TRUE;
    }
    
    
    if(globaldef007968.watertype == CONTENT_SLIME)
    {
        
        if(globaldef007968.radsuit_finished < (time + MOVETYPE_FLYMISSILE))
        {
            func002479(globaldef007968, CONTENT_SLIME);
            return TRUE;
        }
        
    }
    
    return FALSE;
};


// func002481
// function begins at statement 42430, parm_start=24469
// OP_ADDRESS	24470	575	24476
// OP_LOAD_F	24470	575	24477
// OP_LOAD_F	24470	575	24478
// OP_BITAND	24478	708	24479
// OP_SUB_F	24477	24479	24480
// OP_STOREP_F	24480	24476	0
// OP_LOAD_F	24470	104	24481
// OP_NE_F	24481	238	24482
// OP_IFNOT	24482	2	0
// OP_RETURN	213	0	0
// OP_LOAD_V	24470	105	24483
// OP_STORE_V	24483	24473	0
// OP_LOAD_F	24470	137	24486
// OP_ADD_F	24475	24486	24487
// OP_ADD_F	24487	214	24488
// OP_STORE_F	24488	24475	0
// OP_STORE_V	24473	4	0
// OP_CALL1	487	0	0
// OP_STORE_F	1	24472	0
// OP_EQ_F	24472	280	24489
// OP_EQ_F	24472	279	24490
// OP_OR	24489	24490	24491
// OP_IFNOT	24491	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	24469	4	0
// OP_STORE_V	24470	7	0
// OP_STORE_V	235	10	0
// OP_CALL3	18435	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	213	0	0
// OP_STORE_F	213	24471	0
// OP_LOAD_FNC	24470	548	24492
// OP_IFNOT	24492	6	0
// OP_LOAD_FNC	24470	548	24493
// OP_STORE_V	24469	4	0
// OP_STORE_V	24470	7	0
// OP_CALL2	24493	0	0
// OP_STORE_F	1	24471	0
// OP_GT	24471	213	24494
// OP_IFNOT	24494	25	0
// OP_STORE_V	24469	4	0
// OP_STORE_V	24470	7	0
// OP_CALL2	1119	0	0
// OP_NOT_F	1	0	24495
// OP_IFNOT	24495	20	0
// OP_LT	24471	2805	24496
// OP_IFNOT	24496	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	24469	600	24497
// OP_ADD_F	24497	765	24498
// OP_GT	24498	31	24499
// OP_IFNOT	24499	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	24469	4	0
// OP_STORE_V	24469	7	0
// OP_STORE_V	24470	10	0
// OP_CALL3	1117	0	0
// OP_NOT_F	1	0	24500
// OP_IFNOT	24500	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	24470	575	24501
// OP_LOAD_F	24470	575	24502
// OP_BITOR	24502	708	24503
// OP_STOREP_F	24503	24501	0
// OP_RETURN	24471	0	0
// OP_DONE	0	0	0
float (entity globaldef007970, entity globaldef007971) func002481 = 
{
    local float globaldef007972;
    local float globaldef007973;
    local vector globaldef007974;
    globaldef007971.botflags = globaldef007971.botflags - (globaldef007971.botflags & globaldef000691);
    
    if(globaldef007971.solid != SOLID_TRIGGER)
    {
        return FALSE;
    }
    
    globaldef007974 = globaldef007971.origin;
    globaldef007974_z = (globaldef007974_z + globaldef007971.mins_z) + TRUE;
    globaldef007973 = pointcontents(globaldef007974);
    
    if((globaldef007973 == CONTENT_LAVA) || (globaldef007973 == CONTENT_SLIME))
    {
        return FALSE;
    }
    
    
    if(func002288(globaldef007970, globaldef007971, MOVETYPE_BOUNCE))
    {
        return FALSE;
    }
    
    globaldef007972 = FALSE;
    
    if(globaldef007971.f_goalweight)
    {
        globaldef007972 = globaldef007971.f_goalweight(globaldef007970, globaldef007971);
    }
    
    
    if(globaldef007972 > FALSE)
    {
        
        if(!func002467(globaldef007970, globaldef007971))
        {
            
            if(globaldef007972 < 80)
            {
                return FALSE;
            }
            
            
            if((globaldef007970.field000277 + GLOBALDEF748_15) > time)
            {
                return FALSE;
            }
            
            
            if(!func002463(globaldef007970, globaldef007970, globaldef007971))
            {
                return FALSE;
            }
            
            globaldef007971.botflags = globaldef007971.botflags | globaldef000691;
        }
        
    }
    
    return globaldef007972;
};


// func002482
// function begins at statement 42496, parm_start=24504
// OP_ADDRESS	24504	575	24522
// OP_LOAD_F	24504	575	24523
// OP_LOAD_F	24504	575	24524
// OP_BITAND	24524	708	24525
// OP_SUB_F	24523	24525	24526
// OP_STOREP_F	24526	24522	0
// OP_STORE_V	24504	4	0
// OP_CALL1	24456	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	24504	587	24527
// OP_STOREP_F	1997	24527	0
// OP_ADDRESS	24504	371	24528
// OP_ADD_F	31	229	24529
// OP_STOREP_F	24529	24528	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	24504	194	24530
// OP_STORE_ENT	24530	24520	0
// OP_LOAD_ENT	24520	194	24531
// OP_STORE_ENT	24531	24519	0
// OP_STORE_F	24505	24514	0
// OP_STORE_ENT	30	24521	0
// OP_STORE_F	213	24517	0
// OP_LOAD_ENT	24504	590	24532
// OP_IFNOT	24532	16	0
// OP_LOAD_F	24504	575	24533
// OP_BITAND	24533	706	24534
// OP_NOT_F	24534	0	24535
// OP_LOAD_F	24504	575	24536
// OP_BITAND	24536	705	24537
// OP_NOT_F	24537	0	24538
// OP_AND	24535	24538	24539
// OP_IFNOT	24539	8	0
// OP_LOAD_ENT	24504	590	24540
// OP_LOAD_FNC	24540	548	24541
// OP_STORE_V	24504	4	0
// OP_LOAD_ENT	24504	590	24542
// OP_STORE_V	24542	7	0
// OP_CALL2	24541	0	0
// OP_STORE_F	1	24517	0
// OP_LOAD_V	24504	105	24543
// OP_STORE_V	24543	4	0
// OP_STORE_V	737	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	24518	0
// OP_IFNOT	24518	87	0
// OP_NE_E	24518	24519	24546
// OP_IFNOT	24546	82	0
// OP_LOAD_FNC	24518	548	24547
// OP_IFNOT	24547	80	0
// OP_LOAD_F	24518	182	24548
// OP_BITAND	24548	222	24549
// OP_IFNOT	24549	6	0
// OP_STORE_V	24504	4	0
// OP_STORE_V	24518	7	0
// OP_CALL2	24468	0	0
// OP_STORE_F	1	24513	0
// OP_GOTO	6	0	0
// OP_LOAD_FNC	24518	548	24550
// OP_STORE_V	24504	4	0
// OP_STORE_V	24518	7	0
// OP_CALL2	24550	0	0
// OP_STORE_F	1	24513	0
// OP_GT	24513	213	24551
// OP_IFNOT	24551	65	0
// OP_LOAD_V	24518	94	24552
// OP_LOAD_V	24518	98	24555
// OP_ADD_V	24552	24555	24558
// OP_MUL_VF	24558	539	24561
// OP_STORE_V	24561	24507	0
// OP_LOAD_F	24518	97	24564
// OP_ADD_F	24564	214	24565
// OP_STORE_F	24565	24509	0
// OP_LOAD_S	24518	129	24566
// OP_EQ_S	24566	11722	24567
// OP_LOAD_S	24518	129	24568
// OP_EQ_S	24568	11860	24569
// OP_OR	24567	24569	24570
// OP_IFNOT	24570	4	0
// OP_LOAD_F	24518	101	24571
// OP_ADD_F	24571	214	24572
// OP_STORE_F	24572	24509	0
// OP_GT	24517	213	24573
// OP_IFNOT	24573	20	0
// OP_LOAD_F	24504	108	24574
// OP_LOAD_F	24504	137	24575
// OP_ADD_F	24574	24575	24576
// OP_ADD_F	24509	793	24577
// OP_GT	24576	24577	24578
// OP_IFNOT	24578	14	0
// OP_LT	24513	24517	24579
// OP_IFNOT	24579	12	0
// OP_LOAD_F	24518	182	24580
// OP_BITAND	24580	222	24581
// OP_IFNOT	24581	8	0
// OP_STORE_V	24518	4	0
// OP_STORE_V	24504	7	0
// OP_CALL2	1119	0	0
// OP_NOT_F	1	0	24582
// OP_IFNOT	24582	2	0
// OP_STORE_F	213	24513	0
// OP_GOTO	2	0	0
// OP_STORE_F	213	24513	0
// OP_GT	24513	213	24583
// OP_IFNOT	24583	25	0
// OP_GT	24513	24514	24584
// OP_IFNOT	24584	5	0
// OP_STORE_ENT	24518	24521	0
// OP_STORE_F	24513	24514	0
// OP_STORE_V	24507	24510	0
// OP_GOTO	19	0	0
// OP_EQ_F	24513	24514	24585
// OP_IFNOT	24585	17	0
// OP_NOT_F	24506	0	24586
// OP_NE_E	24521	30	24587
// OP_AND	24586	24587	24588
// OP_IFNOT	24588	13	0
// OP_LOAD_V	24504	105	24589
// OP_SUB_V	24589	24510	24592
// OP_STORE_V	24592	4	0
// OP_CALL1	462	0	0
// OP_LOAD_V	24504	105	24595
// OP_SUB_V	24595	24507	24598
// OP_STORE_V	24598	4	0
// OP_CALL1	462	0	0
// OP_GT	1	1	24601
// OP_IFNOT	24601	3	0
// OP_STORE_ENT	24518	24521	0
// OP_STORE_V	24507	24510	0
// OP_LOAD_ENT	24518	164	24602
// OP_STORE_ENT	24602	24518	0
// OP_GOTO	-86	0	0
// OP_IFNOT	24521	33	0
// OP_IFNOT	24506	6	0
// OP_ADDRESS	24519	662	24603
// OP_STOREP_ENT	30	24603	0
// OP_ADDRESS	24519	663	24604
// OP_SUB_F	31	214	24605
// OP_STOREP_F	24605	24604	0
// OP_ADDRESS	24504	587	24606
// OP_STOREP_F	24514	24606	0
// OP_ADDRESS	24520	194	24607
// OP_STOREP_ENT	24521	24607	0
// OP_LOAD_ENT	24520	194	24608
// OP_ADDRESS	24608	662	24609
// OP_STOREP_ENT	24504	24609	0
// OP_LOAD_ENT	24520	194	24610
// OP_ADDRESS	24610	663	24611
// OP_STOREP_F	31	24611	0
// OP_STORE_V	24520	4	0
// OP_STORE_V	24510	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	24504	371	24612
// OP_ADD_F	31	229	24613
// OP_STOREP_F	24613	24612	0
// OP_LOAD_F	24521	575	24614
// OP_BITAND	24614	708	24615
// OP_IFNOT	24615	7	0
// OP_ADDRESS	24504	575	24616
// OP_LOAD_F	24504	575	24617
// OP_BITOR	24617	708	24618
// OP_STOREP_F	24618	24616	0
// OP_ADDRESS	24504	600	24619
// OP_STOREP_F	31	24619	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007978, float globaldef007979, float globaldef007980) func002482 = 
{
    local vector globaldef007981;
    local vector globaldef007985;
    local float globaldef007989;
    local float globaldef007990;
    local float globaldef007991;
    local float globaldef007992;
    local float globaldef007993;
    local entity globaldef007994;
    local entity globaldef007995;
    local entity globaldef007996;
    local entity globaldef007997;
    globaldef007978.botflags = globaldef007978.botflags - (globaldef007978.botflags & globaldef000691);
    
    if(func002480(globaldef007978))
    {
        globaldef007978.field000264 = 100;
        globaldef007978.search_time = time + MOVETYPE_STEP;
        return;
    }
    
    globaldef007996 = globaldef007978.goalentity;
    globaldef007995 = globaldef007996.goalentity;
    globaldef007990 = globaldef007979;
    globaldef007997 = world;
    globaldef007993 = FALSE;
    
    if(globaldef007978.field000267)
    {
        
        if((!(globaldef007978.botflags & GLOBALDEF689_64)) && (!(globaldef007978.botflags & GLOBALDEF688_32)))
        {
            globaldef007993 = globaldef007978.field000267.f_goalweight(globaldef007978, globaldef007978.field000267);
        }
        
    }
    
    globaldef007994 = findradius(globaldef007978.origin, globaldef000720);
    
    while(globaldef007994)
    {
        
        if(globaldef007994 != globaldef007995)
        {
            
            if(globaldef007994.f_goalweight)
            {
                if(globaldef007994.flags & FL_ITEM)
                {
                    globaldef007989 = func002481(globaldef007978, globaldef007994);
                }
                else
                {
                    globaldef007989 = globaldef007994.f_goalweight(globaldef007978, globaldef007994);
                }
                
                
                if(globaldef007989 > FALSE)
                {
                    globaldef007981 = (globaldef007994.absmin + globaldef007994.absmax) * RA_PLAYERSTATTIME;
                    globaldef007981_z = globaldef007994.absmin_z + TRUE;
                    
                    if((globaldef007994.classname == "plat") || (globaldef007994.classname == "train"))
                    {
                        globaldef007981_z = globaldef007994.absmax_z + TRUE;
                    }
                    
                    
                    if(globaldef007993 > FALSE)
                    {
                        
                        if((globaldef007978.origin_z + globaldef007978.mins_z) > (globaldef007981_z + globaldef000776))
                        {
                            
                            if(globaldef007989 < globaldef007993)
                            {
                                if(globaldef007994.flags & FL_ITEM)
                                {
                                    
                                    if(!func002467(globaldef007994, globaldef007978))
                                    {
                                        globaldef007989 = FALSE;
                                    }
                                    
                                }
                                else
                                {
                                    globaldef007989 = FALSE;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                    
                    if(globaldef007989 > FALSE)
                    {
                        if(globaldef007989 > globaldef007990)
                        {
                            globaldef007997 = globaldef007994;
                            globaldef007990 = globaldef007989;
                            globaldef007985 = globaldef007981;
                        }
                        else
                        {
                            
                            if(globaldef007989 == globaldef007990)
                            {
                                
                                if(!globaldef007980 && (globaldef007997 != world))
                                {
                                    vlen(globaldef007978.origin - globaldef007985);
                                    
                                    if((vlen(globaldef007978.origin - globaldef007981)) > (vlen(globaldef007978.origin - globaldef007981)))
                                    {
                                        globaldef007997 = globaldef007994;
                                        globaldef007985 = globaldef007981;
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        globaldef007994 = globaldef007994.chain;
    }
    
    
    if(globaldef007997)
    {
        
        if(globaldef007980)
        {
            globaldef007995.field000339 = world;
            globaldef007995.field000340 = time - TRUE;
        }
        
        globaldef007978.field000264 = globaldef007990;
        globaldef007996.goalentity = globaldef007997;
        globaldef007996.goalentity.field000339 = globaldef007978;
        globaldef007996.goalentity.field000340 = time;
        setorigin(globaldef007996, globaldef007985);
        globaldef007978.search_time = time + MOVETYPE_STEP;
        
        if(globaldef007997.botflags & globaldef000691)
        {
            globaldef007978.botflags = globaldef007978.botflags | globaldef000691;
            globaldef007978.field000277 = time;
        }
        
        return TRUE;
    }
    
    return FALSE;
};


// func002483
// function begins at statement 42662, parm_start=24620
// OP_ADDRESS	24620	575	24626
// OP_LOAD_F	24620	575	24627
// OP_LOAD_F	24620	575	24628
// OP_BITAND	24628	708	24629
// OP_SUB_F	24627	24629	24630
// OP_STOREP_F	24630	24626	0
// OP_STORE_V	24620	4	0
// OP_CALL1	24456	0	0
// OP_IFNOT	1	5	0
// OP_ADDRESS	24620	371	24631
// OP_ADD_F	31	229	24632
// OP_STOREP_F	24632	24631	0
// OP_RETURN	0	0	0
// OP_LOAD_V	24620	105	24633
// OP_STORE_V	24633	4	0
// OP_STORE_V	737	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	24622	0
// OP_STORE_ENT	30	24623	0
// OP_STORE_F	24621	24625	0
// OP_IFNOT	24622	17	0
// OP_LOAD_F	24622	182	24636
// OP_BITAND	24636	222	24637
// OP_IFNOT	24637	11	0
// OP_LOAD_FNC	24622	548	24638
// OP_IFNOT	24638	9	0
// OP_STORE_V	24620	4	0
// OP_STORE_V	24622	7	0
// OP_CALL2	24468	0	0
// OP_STORE_F	1	24624	0
// OP_GT	24624	24625	24639
// OP_IFNOT	24639	3	0
// OP_STORE_ENT	24622	24623	0
// OP_STORE_F	24624	24625	0
// OP_LOAD_ENT	24622	164	24640
// OP_STORE_ENT	24640	24622	0
// OP_GOTO	-16	0	0
// OP_IFNOT	24623	22	0
// OP_LOAD_ENT	24620	194	24641
// OP_ADDRESS	24641	194	24642
// OP_STOREP_ENT	24623	24642	0
// OP_LOAD_ENT	24620	194	24643
// OP_STORE_V	24643	4	0
// OP_LOAD_V	24623	105	24644
// OP_STORE_V	24644	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	24620	371	24647
// OP_ADD_F	31	228	24648
// OP_STOREP_F	24648	24647	0
// OP_LOAD_F	24623	575	24649
// OP_BITAND	24649	708	24650
// OP_IFNOT	24650	7	0
// OP_ADDRESS	24620	575	24651
// OP_LOAD_F	24620	575	24652
// OP_BITOR	24652	708	24653
// OP_STOREP_F	24653	24651	0
// OP_ADDRESS	24620	600	24654
// OP_STOREP_F	31	24654	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef007998, float globaldef007999) func002483 = 
{
    local entity globaldef008000;
    local entity globaldef008001;
    local float globaldef008002;
    local float globaldef008003;
    globaldef007998.botflags = globaldef007998.botflags - (globaldef007998.botflags & globaldef000691);
    
    if(func002480(globaldef007998))
    {
        globaldef007998.search_time = time + MOVETYPE_STEP;
        return;
    }
    
    globaldef008000 = findradius(globaldef007998.origin, globaldef000720);
    globaldef008001 = world;
    globaldef008003 = globaldef007999;
    
    while(globaldef008000)
    {
        
        if(globaldef008000.flags & FL_ITEM)
        {
            
            if(globaldef008000.f_goalweight)
            {
                globaldef008002 = func002481(globaldef007998, globaldef008000);
                
                if(globaldef008002 > globaldef008003)
                {
                    globaldef008001 = globaldef008000;
                    globaldef008003 = globaldef008002;
                }
                
            }
            
        }
        
        globaldef008000 = globaldef008000.chain;
    }
    
    
    if(globaldef008001)
    {
        globaldef007998.goalentity.goalentity = globaldef008001;
        setorigin(globaldef007998.goalentity, globaldef008001.origin);
        globaldef007998.search_time = time + MOVETYPE_WALK;
        
        if(globaldef008001.botflags & globaldef000691)
        {
            globaldef007998.botflags = globaldef007998.botflags | globaldef000691;
            globaldef007998.field000277 = time;
        }
        
        return TRUE;
    }
    
    return FALSE;
};


// func002484
// function begins at statement 42723, parm_start=24656
// OP_NOT_ENT	24657	0	24658
// OP_IFNOT	24658	2	0
// OP_RETURN	30	0	0
// OP_LOAD_F	24657	152	24659
// OP_LE	24659	213	24660
// OP_LOAD_F	24657	165	24661
// OP_NE_F	24661	246	24662
// OP_OR	24660	24662	24663
// OP_IFNOT	24663	2	0
// OP_RETURN	30	0	0
// OP_LOAD_F	24657	163	24664
// OP_EQ_F	24664	250	24665
// OP_IFNOT	24665	2	0
// OP_RETURN	30	0	0
// OP_LOAD_S	24657	129	24666
// OP_NE_S	24666	1236	24667
// OP_IFNOT	24667	5	0
// OP_LOAD_S	24657	129	24668
// OP_NE_S	24668	1241	24669
// OP_IFNOT	24669	2	0
// OP_RETURN	30	0	0
// OP_EQ_E	24656	24657	24670
// OP_IFNOT	24670	2	0
// OP_RETURN	30	0	0
// OP_LOAD_ENT	24656	181	24671
// OP_EQ_E	24671	24657	24672
// OP_IFNOT	24672	2	0
// OP_RETURN	30	0	0
// OP_IFNOT	37	6	0
// OP_LOAD_F	24656	607	24673
// OP_LOAD_F	24657	607	24674
// OP_EQ_F	24673	24674	24675
// OP_IFNOT	24675	2	0
// OP_RETURN	30	0	0
// OP_LOAD_F	24657	182	24676
// OP_BITAND	24676	221	24677
// OP_IFNOT	24677	2	0
// OP_RETURN	30	0	0
// OP_STORE_V	24656	4	0
// OP_STORE_V	24657	7	0
// OP_CALL2	1096	0	0
// OP_NOT_F	1	0	24678
// OP_IFNOT	24678	2	0
// OP_RETURN	30	0	0
// OP_LOAD_F	24656	588	24679
// OP_LT	24679	20746	24680
// OP_IFNOT	24680	27	0
// OP_LOAD_V	24657	105	24681
// OP_LOAD_V	24656	105	24684
// OP_SUB_V	24681	24684	24687
// OP_STORE_V	24687	4	0
// OP_CALL1	462	0	0
// OP_GT	1	738	24690
// OP_IFNOT	24690	20	0
// OP_STORE_V	24656	4	0
// OP_STORE_V	24657	7	0
// OP_CALL2	20507	0	0
// OP_NOT_F	1	0	24691
// OP_IFNOT	24691	15	0
// OP_CALL0	457	0	0
// OP_LOAD_F	24656	588	24692
// OP_SUB_F	228	24692	24693
// OP_MUL_F	1	24693	24694
// OP_SUB_F	228	24694	24695
// OP_LT	24695	214	24696
// OP_IFNOT	24696	2	0
// OP_RETURN	30	0	0
// OP_STORE_V	24656	4	0
// OP_STORE_V	24657	7	0
// OP_CALL2	1121	0	0
// OP_NOT_F	1	0	24697
// OP_IFNOT	24697	2	0
// OP_RETURN	30	0	0
// OP_LOAD_F	24657	162	24698
// OP_BITAND	24698	272	24699
// OP_IFNOT	24699	2	0
// OP_RETURN	30	0	0
// OP_RETURN	24657	0	0
// OP_DONE	0	0	0
entity (entity globaldef008005, entity globaldef008006) func002484 = 
{
    
    if(!globaldef008006)
    {
        return world;
    }
    
    
    if((globaldef008006.health <= FALSE) || (globaldef008006.deadflag != DEAD_NO))
    {
        return world;
    }
    
    
    if(globaldef008006.takedamage == DAMAGE_NO)
    {
        return world;
    }
    
    
    if(globaldef008006.classname != "player")
    {
        
        if(globaldef008006.classname != "bot")
        {
            return world;
        }
        
    }
    
    
    if(globaldef008005 == globaldef008006)
    {
        return world;
    }
    
    
    if(globaldef008005.enemy == globaldef008006)
    {
        return world;
    }
    
    
    if(teamplay)
    {
        
        if(globaldef008005.field000284 == globaldef008006.field000284)
        {
            return world;
        }
        
    }
    
    
    if(globaldef008006.flags & FL_NOTARGET)
    {
        return world;
    }
    
    
    if(!func002392(globaldef008005, globaldef008006))
    {
        return world;
    }
    
    
    if(globaldef008005.botskill < 2.8)
    {
        
        if((vlen(globaldef008006.origin - globaldef008005.origin)) > GLOBALDEF721_250)
        {
            
            if(!func002394(globaldef008005, globaldef008006))
            {
                
                if((MOVETYPE_WALK - (random() * (MOVETYPE_WALK - globaldef008005.botskill))) < TRUE)
                {
                    return world;
                }
                
                
                if(!Hearable(globaldef008005, globaldef008006))
                {
                    return world;
                }
                
            }
            
        }
        
    }
    
    
    if(globaldef008006.items & IT_INVISIBILITY)
    {
        return world;
    }
    
    return globaldef008006;
};


// func002485
// function begins at statement 42802, parm_start=24701
// OP_STORE_ENT	30	24705	0
// OP_STORE_F	3722	24703	0
// OP_LOAD_V	24701	105	24706
// OP_STORE_V	24706	4	0
// OP_STORE_V	1663	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	24704	0
// OP_IFNOT	24704	20	0
// OP_LOAD_F	24704	182	24709
// OP_BITAND	24709	219	24710
// OP_IFNOT	24710	14	0
// OP_LOAD_V	24701	105	24711
// OP_LOAD_V	24704	105	24714
// OP_SUB_V	24711	24714	24717
// OP_STORE_V	24717	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24702	0
// OP_LT	24702	24703	24720
// OP_IFNOT	24720	6	0
// OP_STORE_V	24704	4	0
// OP_CALL1	3169	0	0
// OP_IFNOT	1	3	0
// OP_STORE_F	24702	24703	0
// OP_STORE_ENT	24704	24705	0
// OP_LOAD_ENT	24704	164	24721
// OP_STORE_ENT	24721	24704	0
// OP_GOTO	-19	0	0
// OP_RETURN	24705	0	0
// OP_DONE	0	0	0
entity (entity globaldef008008) func002485 = 
{
    local float globaldef008009;
    local float globaldef008010;
    local entity globaldef008011;
    local entity globaldef008012;
    globaldef008012 = world;
    globaldef008010 = 9999;
    globaldef008011 = findradius(globaldef008008.origin, 1000);
    
    while(globaldef008011)
    {
        
        if(globaldef008011.flags & FL_MONSTER)
        {
            globaldef008009 = vlen(globaldef008008.origin - globaldef008011.origin);
            
            if(globaldef008009 < globaldef008010)
            {
                
                if(visible(globaldef008011))
                {
                    globaldef008010 = globaldef008009;
                    globaldef008012 = globaldef008011;
                }
                
            }
            
        }
        
        globaldef008011 = globaldef008011.chain;
    }
    
    return globaldef008012;
};


// func002486
// function begins at statement 42831, parm_start=24723
// OP_STORE_F	213	24724	0
// OP_LT	24724	230	24725
// OP_IFNOT	24725	32	0
// OP_LOAD_ENT	24723	662	24726
// OP_NOT_ENT	24726	0	24727
// OP_IFNOT	24727	4	0
// OP_ADDRESS	24723	662	24728
// OP_STOREP_ENT	834	24728	0
// OP_GOTO	7	0	0
// OP_LOAD_ENT	24723	662	24729
// OP_LOAD_S	24729	129	24730
// OP_NE_S	24730	1241	24731
// OP_IFNOT	24731	3	0
// OP_ADDRESS	24723	662	24732
// OP_STOREP_ENT	834	24732	0
// OP_LOAD_ENT	24723	662	24733
// OP_NE_E	24733	24723	24734
// OP_IFNOT	24734	10	0
// OP_LOAD_ENT	24723	662	24735
// OP_STORE_V	24735	4	0
// OP_CALL1	3169	0	0
// OP_IFNOT	1	6	0
// OP_STORE_V	24723	4	0
// OP_LOAD_ENT	24723	662	24736
// OP_STORE_V	24736	7	0
// OP_CALL2	24655	0	0
// OP_RETURN	1	0	0
// OP_ADDRESS	24723	662	24737
// OP_LOAD_ENT	24723	662	24738
// OP_LOAD_ENT	24738	620	24739
// OP_STOREP_ENT	24739	24737	0
// OP_ADD_F	24724	214	24740
// OP_STORE_F	24740	24724	0
// OP_GOTO	-32	0	0
// OP_DONE	0	0	0
entity (entity globaldef008014) func002486 = 
{
    local float globaldef008015;
    globaldef008015 = FALSE;
    
    while(globaldef008015 < MOVETYPE_FLY)
    {
        if(!globaldef008014.field000339)
        {
            globaldef008014.field000339 = firstBot;
        }
        else
        {
            
            if(globaldef008014.field000339.classname != "bot")
            {
                globaldef008014.field000339 = firstBot;
            }
            
        }
        
        
        if(globaldef008014.field000339 != globaldef008014)
        {
            
            if(visible(globaldef008014.field000339))
            {
                return func002484(globaldef008014, globaldef008014.field000339);
            }
            
        }
        
        globaldef008014.field000339 = globaldef008014.field000339.next;
        globaldef008015 = globaldef008015 + TRUE;
    }
    
};


// func002487
// function begins at statement 42866, parm_start=24742
// OP_STORE_ENT	28	24744	0
// OP_STORE_ENT	24742	28	0
// OP_CALL0	467	0	0
// OP_STORE_ENT	1	24743	0
// OP_STORE_ENT	24744	28	0
// OP_STORE_V	24742	4	0
// OP_STORE_V	24743	7	0
// OP_CALL2	24655	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
entity (entity globaldef008017) func002487 = 
{
    local entity globaldef008018;
    local entity globaldef008019;
    globaldef008019 = self;
    self = globaldef008017;
    globaldef008018 = checkclient();
    self = globaldef008019;
    return func002484(globaldef008017, globaldef008018);
};


// func002488
// function begins at statement 42876, parm_start=24746
// OP_LOAD_ENT	24746	589	24749
// OP_NOT_ENT	24749	0	24750
// OP_IFNOT	24750	2	0
// OP_RETURN	30	0	0
// OP_LOAD_ENT	24746	589	24751
// OP_EQ_E	24751	24746	24752
// OP_IFNOT	24752	2	0
// OP_RETURN	30	0	0
// OP_IFNOT	37	7	0
// OP_LOAD_ENT	24746	589	24753
// OP_LOAD_F	24753	184	24754
// OP_LOAD_F	24746	184	24755
// OP_EQ_F	24754	24755	24756
// OP_IFNOT	24756	2	0
// OP_RETURN	30	0	0
// OP_LOAD_ENT	24746	589	24757
// OP_LOAD_F	24757	163	24758
// OP_EQ_F	24758	250	24759
// OP_IFNOT	24759	2	0
// OP_RETURN	30	0	0
// OP_LOAD_ENT	24746	589	24760
// OP_LOAD_F	24760	182	24761
// OP_BITAND	24761	221	24762
// OP_IFNOT	24762	2	0
// OP_RETURN	30	0	0
// OP_LOAD_ENT	24746	181	24763
// OP_NOT_ENT	24763	0	24764
// OP_IFNOT	24764	3	0
// OP_LOAD_ENT	24746	589	24765
// OP_RETURN	24765	0	0
// OP_STORE_V	24746	4	0
// OP_LOAD_ENT	24746	181	24766
// OP_STORE_V	24766	7	0
// OP_CALL2	1096	0	0
// OP_NOT_F	1	0	24767
// OP_IFNOT	24767	3	0
// OP_LOAD_ENT	24746	589	24768
// OP_RETURN	24768	0	0
// OP_LOAD_ENT	24746	181	24769
// OP_LOAD_V	24769	105	24770
// OP_LOAD_V	24746	105	24773
// OP_SUB_V	24770	24773	24776
// OP_STORE_V	24776	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24747	0
// OP_LOAD_ENT	24746	589	24779
// OP_LOAD_V	24779	105	24780
// OP_LOAD_V	24746	105	24783
// OP_SUB_V	24780	24783	24786
// OP_STORE_V	24786	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24748	0
// OP_GT	24747	745	24789
// OP_IFNOT	24789	5	0
// OP_LT	24748	5347	24790
// OP_IFNOT	24790	3	0
// OP_LOAD_ENT	24746	589	24791
// OP_RETURN	24791	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity globaldef008021) func002488 = 
{
    local float globaldef008022;
    local float globaldef008023;
    
    if(!globaldef008021.field000266)
    {
        return world;
    }
    
    
    if(globaldef008021.field000266 == globaldef008021)
    {
        return world;
    }
    
    
    if(teamplay)
    {
        
        if(globaldef008021.field000266.team == globaldef008021.team)
        {
            return world;
        }
        
    }
    
    
    if(globaldef008021.field000266.takedamage == DAMAGE_NO)
    {
        return world;
    }
    
    
    if(globaldef008021.field000266.flags & FL_NOTARGET)
    {
        return world;
    }
    
    
    if(!globaldef008021.enemy)
    {
        return globaldef008021.field000266;
    }
    
    
    if(!func002392(globaldef008021, globaldef008021.enemy))
    {
        return globaldef008021.field000266;
    }
    
    globaldef008022 = vlen(globaldef008021.enemy.origin - globaldef008021.origin);
    globaldef008023 = vlen(globaldef008021.field000266.origin - globaldef008021.origin);
    
    if(globaldef008022 > GLOBALDEF728_500)
    {
        
        if(globaldef008023 < 400)
        {
            return globaldef008021.field000266;
        }
        
    }
    
    return world;
};


// func002489
// function begins at statement 42936, parm_start=24792
// OP_IFNOT	816	2	0
// OP_RETURN	213	0	0
// OP_STORE_V	24792	4	0
// OP_CALL1	24745	0	0
// OP_STORE_ENT	1	24793	0
// OP_NOT_ENT	24793	0	24794
// OP_IFNOT	24794	4	0
// OP_STORE_V	24792	4	0
// OP_CALL1	24741	0	0
// OP_STORE_ENT	1	24793	0
// OP_NOT_ENT	24793	0	24795
// OP_IFNOT	24795	4	0
// OP_STORE_V	24792	4	0
// OP_CALL1	24722	0	0
// OP_STORE_ENT	1	24793	0
// OP_NOT_ENT	24793	0	24796
// OP_AND	24796	36	24797
// OP_IFNOT	24797	4	0
// OP_STORE_V	24792	4	0
// OP_CALL1	24700	0	0
// OP_STORE_ENT	1	24793	0
// OP_ADDRESS	24792	589	24798
// OP_STOREP_ENT	30	24798	0
// OP_IFNOT	24793	4	0
// OP_ADDRESS	24792	181	24799
// OP_STOREP_ENT	24793	24799	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity globaldef008024) func002489 = 
{
    local entity globaldef008025;
    
    if(gameNotRunning)
    {
        return FALSE;
    }
    
    globaldef008025 = func002488(globaldef008024);
    
    if(!globaldef008025)
    {
        globaldef008025 = func002487(globaldef008024);
    }
    
    
    if(!globaldef008025)
    {
        globaldef008025 = func002486(globaldef008024);
    }
    
    
    if(!globaldef008025 && coop)
    {
        globaldef008025 = func002485(globaldef008024);
    }
    
    globaldef008024.field000266 = world;
    
    if(globaldef008025)
    {
        globaldef008024.enemy = globaldef008025;
        return TRUE;
    }
    
    return FALSE;
};


// func002490
// function begins at statement 42965, parm_start=24801
// OP_STORE_ENT	30	24806	0
// OP_IFNOT	24801	29	0
// OP_LOAD_V	24801	105	24810
// OP_STORE_V	24810	24807	0
// OP_SUB_F	24807	24802	24813
// OP_STORE_V	24813	4	0
// OP_CALL1	488	0	0
// OP_LT	1	24805	24814
// OP_IFNOT	24814	19	0
// OP_SUB_F	24808	24803	24815
// OP_STORE_V	24815	4	0
// OP_CALL1	488	0	0
// OP_LT	1	24805	24816
// OP_IFNOT	24816	14	0
// OP_SUB_F	24809	24804	24817
// OP_STORE_V	24817	4	0
// OP_CALL1	488	0	0
// OP_LT	1	24805	24818
// OP_IFNOT	24818	9	0
// OP_SUB_V	24807	24802	24819
// OP_STORE_V	24819	4	0
// OP_CALL1	462	0	0
// OP_LT	1	24805	24822
// OP_IFNOT	24822	4	0
// OP_ADDRESS	24801	164	24823
// OP_STOREP_ENT	24806	24823	0
// OP_STORE_ENT	24801	24806	0
// OP_LOAD_ENT	24801	620	24824
// OP_STORE_ENT	24824	24801	0
// OP_GOTO	-28	0	0
// OP_RETURN	24806	0	0
// OP_DONE	0	0	0
entity (entity globaldef008027, vector globaldef008028, float globaldef008032) func002490 = 
{
    local entity globaldef008033;
    local vector globaldef008034;
    globaldef008033 = world;
    
    while(globaldef008027)
    {
        globaldef008034 = globaldef008027.origin;
        
        if((fabs(globaldef008034_x - globaldef008028_x)) < globaldef008032)
        {
            
            if((fabs(globaldef008034_y - globaldef008028_y)) < globaldef008032)
            {
                
                if((fabs(globaldef008034_z - globaldef008028_z)) < globaldef008032)
                {
                    
                    if((vlen(globaldef008034 - globaldef008028)) < globaldef008032)
                    {
                        globaldef008027.chain = globaldef008033;
                        globaldef008033 = globaldef008027;
                    }
                    
                }
                
            }
            
        }
        
        globaldef008027 = globaldef008027.next;
    }
    
    return globaldef008033;
};


// func002491
// function begins at statement 42997, parm_start=24825
// OP_STORE_V	24826	4	0
// OP_CALL1	1207	0	0
// OP_STORE_ENT	1	24829	0
// OP_NOT_ENT	24829	0	24832
// OP_IFNOT	24832	2	0
// OP_RETURN	30	0	0
// OP_STORE_V	24826	4	0
// OP_STORE_V	24829	7	0
// OP_CALL2	1208	0	0
// OP_STORE_V	836	4	0
// OP_LOAD_V	24825	105	24833
// OP_STORE_V	24833	7	0
// OP_STORE_V	737	10	0
// OP_CALL3	24800	0	0
// OP_STORE_ENT	1	24827	0
// OP_STORE_F	24836	24831	0
// OP_STORE_ENT	30	24828	0
// OP_IFNOT	24827	24	0
// OP_LOAD_ENT	24827	662	24837
// OP_NE_E	24837	24825	24838
// OP_LOAD_F	24827	663	24839
// OP_SUB_F	31	229	24840
// OP_LT	24839	24840	24841
// OP_OR	24838	24841	24842
// OP_IFNOT	24842	14	0
// OP_STORE_V	24827	4	0
// OP_STORE_V	24826	7	0
// OP_CALL2	1206	0	0
// OP_STORE_F	1	24830	0
// OP_IFNOT	24830	9	0
// OP_LT	24830	24831	24843
// OP_IFNOT	24843	7	0
// OP_STORE_V	24825	4	0
// OP_STORE_V	24827	7	0
// OP_CALL2	1119	0	0
// OP_IFNOT	1	3	0
// OP_STORE_F	24830	24831	0
// OP_STORE_ENT	24827	24828	0
// OP_LOAD_ENT	24827	164	24844
// OP_STORE_ENT	24844	24827	0
// OP_GOTO	-23	0	0
// OP_IFNOT	24828	5	0
// OP_ADDRESS	24828	662	24845
// OP_STOREP_ENT	24825	24845	0
// OP_ADDRESS	24828	663	24846
// OP_STOREP_F	31	24846	0
// OP_RETURN	24828	0	0
// OP_DONE	0	0	0
entity (entity globaldef008038, entity globaldef008039) func002491 = 
{
    local entity globaldef008040;
    local entity globaldef008041;
    local entity globaldef008042;
    local float globaldef008043;
    local float globaldef008044;
    globaldef008042 = func002691(globaldef008039);
    
    if(!globaldef008042)
    {
        return world;
    }
    
    func002692(globaldef008039, globaldef008042);
    globaldef008040 = func002490(firstWaypoint, globaldef008038.origin, globaldef000720);
    globaldef008044 = 99999;
    globaldef008041 = world;
    
    while(globaldef008040)
    {
        
        if((globaldef008040.field000339 != globaldef008038) || (globaldef008040.field000340 < (time - MOVETYPE_STEP)))
        {
            globaldef008043 = func002688(globaldef008040, globaldef008039);
            
            if(globaldef008043)
            {
                
                if(globaldef008043 < globaldef008044)
                {
                    
                    if(func002467(globaldef008038, globaldef008040))
                    {
                        globaldef008044 = globaldef008043;
                        globaldef008041 = globaldef008040;
                    }
                    
                }
                
            }
            
        }
        
        globaldef008040 = globaldef008040.chain;
    }
    
    
    if(globaldef008041)
    {
        globaldef008041.field000339 = globaldef008038;
        globaldef008041.field000340 = time;
    }
    
    return globaldef008041;
};


// func002492
// function begins at statement 43045, parm_start=24847
// OP_STORE_V	24848	4	0
// OP_CALL1	1207	0	0
// OP_STORE_ENT	1	24851	0
// OP_NOT_ENT	24851	0	24854
// OP_IFNOT	24854	2	0
// OP_RETURN	30	0	0
// OP_STORE_V	24848	4	0
// OP_STORE_V	24851	7	0
// OP_CALL2	1208	0	0
// OP_STORE_V	836	4	0
// OP_LOAD_V	24847	105	24855
// OP_STORE_V	24855	7	0
// OP_STORE_V	737	10	0
// OP_CALL3	24800	0	0
// OP_STORE_ENT	1	24849	0
// OP_STORE_V	24847	4	0
// OP_STORE_V	24848	7	0
// OP_CALL2	1096	0	0
// OP_STORE_F	1	3191	0
// OP_IFNOT	3191	8	0
// OP_LOAD_V	24848	105	24858
// OP_LOAD_V	24847	105	24861
// OP_SUB_V	24858	24861	24864
// OP_STORE_V	24864	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	24853	0
// OP_GOTO	2	0	0
// OP_STORE_F	1997	24853	0
// OP_STORE_ENT	30	24850	0
// OP_IFNOT	24849	43	0
// OP_LOAD_ENT	24849	662	24867
// OP_NE_E	24867	24847	24868
// OP_LOAD_F	24849	663	24869
// OP_SUB_F	31	229	24870
// OP_LT	24869	24870	24871
// OP_OR	24868	24871	24872
// OP_IFNOT	24872	33	0
// OP_STORE_V	24849	4	0
// OP_STORE_V	24848	7	0
// OP_CALL2	1206	0	0
// OP_STORE_F	1	24852	0
// OP_IFNOT	24852	28	0
// OP_IFNOT	3191	19	0
// OP_LOAD_V	24848	105	24873
// OP_LOAD_V	24848	166	24876
// OP_ADD_V	24873	24876	24879
// OP_STORE_V	24879	4	0
// OP_LOAD_V	24849	105	24882
// OP_STORE_V	24882	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	24848	13	0
// OP_CALL4	466	0	0
// OP_NE_F	70	214	24885
// OP_IFNOT	24885	3	0
// OP_ADD_F	24852	540	24886
// OP_STORE_F	24886	24852	0
// OP_LOAD_F	24849	688	24887
// OP_EQ_F	24887	719	24888
// OP_IFNOT	24888	3	0
// OP_ADD_F	24852	745	24889
// OP_STORE_F	24889	24852	0
// OP_GT	24852	24853	24890
// OP_IFNOT	24890	7	0
// OP_STORE_V	24847	4	0
// OP_STORE_V	24849	7	0
// OP_CALL2	1119	0	0
// OP_IFNOT	1	3	0
// OP_STORE_F	24852	24853	0
// OP_STORE_ENT	24849	24850	0
// OP_LOAD_ENT	24849	164	24891
// OP_STORE_ENT	24891	24849	0
// OP_GOTO	-42	0	0
// OP_IFNOT	24850	5	0
// OP_ADDRESS	24850	662	24892
// OP_STOREP_ENT	24847	24892	0
// OP_ADDRESS	24850	663	24893
// OP_STOREP_F	31	24893	0
// OP_RETURN	24850	0	0
// OP_DONE	0	0	0
entity (entity globaldef008046, entity globaldef008047) func002492 = 
{
    local entity globaldef008048;
    local entity globaldef008049;
    local entity globaldef008050;
    local float globaldef008051;
    local float globaldef008052;
    globaldef008050 = func002691(globaldef008047);
    
    if(!globaldef008050)
    {
        return world;
    }
    
    func002692(globaldef008047, globaldef008050);
    globaldef008048 = func002490(firstWaypoint, globaldef008046.origin, globaldef000720);
    enemy_vis = func002392(globaldef008046, globaldef008047);
    if(enemy_vis)
    {
        globaldef008052 = vlen(globaldef008047.origin - globaldef008046.origin);
    }
    else
    {
        globaldef008052 = 100;
    }
    
    globaldef008049 = world;
    
    while(globaldef008048)
    {
        
        if((globaldef008048.field000339 != globaldef008046) || (globaldef008048.field000340 < (time - MOVETYPE_STEP)))
        {
            globaldef008051 = func002688(globaldef008048, globaldef008047);
            
            if(globaldef008051)
            {
                
                if(enemy_vis)
                {
                    traceline(globaldef008047.origin + globaldef008047.view_ofs, globaldef008048.origin, TRUE, globaldef008047);
                    
                    if(trace_fraction != TRUE)
                    {
                        globaldef008051 = globaldef008051 + RA_MAXIDLETIME;
                    }
                    
                    
                    if(globaldef008048.waypointtype == WAYPOINTTYPE_TELEPORT)
                    {
                        globaldef008051 = globaldef008051 + GLOBALDEF728_500;
                    }
                    
                }
                
                
                if(globaldef008051 > globaldef008052)
                {
                    
                    if(func002467(globaldef008046, globaldef008048))
                    {
                        globaldef008052 = globaldef008051;
                        globaldef008049 = globaldef008048;
                    }
                    
                }
                
            }
            
        }
        
        globaldef008048 = globaldef008048.chain;
    }
    
    
    if(globaldef008049)
    {
        globaldef008049.field000339 = globaldef008046;
        globaldef008049.field000340 = time;
    }
    
    return globaldef008049;
};


// func002493
// function begins at statement 43124, parm_start=24895
// OP_STORE_ENT	836	24901	0
// OP_STORE_ENT	30	24902	0
// OP_IFNOT	24901	42	0
// OP_LOAD_V	24901	105	24906
// OP_STORE_V	24906	24903	0
// OP_SUB_F	24903	24896	24909
// OP_STORE_V	24909	4	0
// OP_CALL1	488	0	0
// OP_LT	1	24899	24910
// OP_IFNOT	24910	26	0
// OP_SUB_F	24904	24897	24911
// OP_STORE_V	24911	4	0
// OP_CALL1	488	0	0
// OP_LT	1	24899	24912
// OP_IFNOT	24912	21	0
// OP_SUB_F	24905	24898	24913
// OP_STORE_V	24913	4	0
// OP_CALL1	488	0	0
// OP_LT	1	24899	24914
// OP_IFNOT	24914	16	0
// OP_ADDRESS	24901	450	24915
// OP_SUB_V	24903	24896	24916
// OP_STORE_V	24916	4	0
// OP_CALL1	462	0	0
// OP_STOREP_F	1	24915	0
// OP_LOAD_F	24901	450	24919
// OP_LT	24919	24899	24920
// OP_IFNOT	24920	8	0
// OP_STORE_V	24895	4	0
// OP_STORE_V	24901	7	0
// OP_CALL2	1119	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	24901	164	24921
// OP_STOREP_ENT	24902	24921	0
// OP_STORE_ENT	24901	24902	0
// OP_IFNOT	24900	6	0
// OP_LOAD_ENT	24901	662	24922
// OP_EQ_E	24922	24895	24923
// OP_IFNOT	24923	3	0
// OP_ADDRESS	24901	663	24924
// OP_STOREP_F	213	24924	0
// OP_LOAD_ENT	24901	620	24925
// OP_STORE_ENT	24925	24901	0
// OP_GOTO	-41	0	0
// OP_RETURN	24902	0	0
// OP_DONE	0	0	0
entity (entity globaldef008054, vector globaldef008055, float globaldef008059, float globaldef008060) func002493 = 
{
    local entity globaldef008061;
    local entity globaldef008062;
    local vector globaldef008063;
    globaldef008061 = firstWaypoint;
    globaldef008062 = world;
    
    while(globaldef008061)
    {
        globaldef008063 = globaldef008061.origin;
        
        if((fabs(globaldef008063_x - globaldef008055_x)) < globaldef008059)
        {
            
            if((fabs(globaldef008063_y - globaldef008055_y)) < globaldef008059)
            {
                
                if((fabs(globaldef008063_z - globaldef008055_z)) < globaldef008059)
                {
                    globaldef008061.distance = vlen(globaldef008063 - globaldef008055);
                    
                    if(globaldef008061.distance < globaldef008059)
                    {
                        
                        if(func002467(globaldef008054, globaldef008061))
                        {
                            globaldef008061.chain = globaldef008062;
                            globaldef008062 = globaldef008061;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        if(globaldef008060)
        {
            
            if(globaldef008061.field000339 == globaldef008054)
            {
                globaldef008061.field000340 = FALSE;
            }
            
        }
        
        globaldef008061 = globaldef008061.next;
    }
    
    return globaldef008062;
};


// func002494
// function begins at statement 43170, parm_start=24927
// OP_LOAD_ENT	24927	590	24934
// OP_STORE_ENT	24934	24929	0
// OP_NOT_ENT	24929	0	24935
// OP_IFNOT	24935	2	0
// OP_RETURN	30	0	0
// OP_LOAD_ENT	24927	591	24936
// OP_NE_E	24936	30	24937
// OP_LOAD_ENT	24927	586	24938
// OP_LOAD_ENT	24927	591	24939
// OP_EQ_E	24938	24939	24940
// OP_AND	24937	24940	24941
// OP_IFNOT	24941	8	0
// OP_LOAD_ENT	24927	591	24942
// OP_STORE_V	24942	4	0
// OP_STORE_V	24929	7	0
// OP_CALL2	1205	0	0
// OP_ADD_F	1	219	24943
// OP_STORE_F	24943	24933	0
// OP_GOTO	3	0	0
// OP_LOAD_F	24927	592	24944
// OP_STORE_F	24944	24933	0
// OP_ADDRESS	24927	592	24945
// OP_STOREP_F	24933	24945	0
// OP_STORE_ENT	30	24928	0
// OP_STORE_V	24927	4	0
// OP_LOAD_V	24927	105	24946
// OP_STORE_V	24946	7	0
// OP_STORE_V	737	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	24894	0	0
// OP_STORE_ENT	1	24930	0
// OP_IFNOT	24930	15	0
// OP_STORE_V	24930	4	0
// OP_STORE_V	24929	7	0
// OP_CALL2	1203	0	0
// OP_NOT_F	1	0	24949
// OP_IFNOT	24949	10	0
// OP_STORE_V	24929	4	0
// OP_CALL1	1207	0	0
// OP_STORE_ENT	1	24931	0
// OP_NOT_ENT	24931	0	24950
// OP_IFNOT	24950	2	0
// OP_RETURN	30	0	0
// OP_STORE_V	24929	4	0
// OP_STORE_V	24931	7	0
// OP_CALL2	1208	0	0
// OP_IFNOT	24930	28	0
// OP_LOAD_ENT	24930	662	24951
// OP_NE_E	24951	24927	24952
// OP_LOAD_F	24930	663	24953
// OP_SUB_F	31	231	24954
// OP_LT	24953	24954	24955
// OP_OR	24952	24955	24956
// OP_IFNOT	24956	18	0
// OP_STORE_V	24930	4	0
// OP_STORE_V	24929	7	0
// OP_CALL2	1205	0	0
// OP_STORE_F	1	24932	0
// OP_IFNOT	24932	13	0
// OP_LOAD_V	24930	105	24957
// OP_LOAD_V	24927	105	24960
// OP_SUB_V	24957	24960	24963
// OP_STORE_V	24963	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	1	4478	24966
// OP_ADD_F	24932	24966	24967
// OP_STORE_F	24967	24932	0
// OP_LT	24932	24933	24968
// OP_IFNOT	24968	3	0
// OP_STORE_F	24932	24933	0
// OP_STORE_ENT	24930	24928	0
// OP_LOAD_ENT	24930	164	24969
// OP_STORE_ENT	24969	24930	0
// OP_GOTO	-27	0	0
// OP_IFNOT	24928	17	0
// OP_ADDRESS	24928	662	24970
// OP_STOREP_ENT	24927	24970	0
// OP_ADDRESS	24928	663	24971
// OP_STOREP_F	31	24971	0
// OP_ADDRESS	24927	593	24972
// OP_STOREP_F	213	24972	0
// OP_ADDRESS	24927	592	24973
// OP_LOAD_V	24928	105	24974
// OP_LOAD_V	24927	105	24977
// OP_SUB_V	24974	24977	24980
// OP_STORE_V	24980	4	0
// OP_CALL1	462	0	0
// OP_ADD_F	24933	1	24983
// OP_STOREP_F	24983	24973	0
// OP_ADDRESS	24927	591	24984
// OP_STOREP_ENT	24928	24984	0
// OP_RETURN	24928	0	0
// OP_DONE	0	0	0
entity (entity globaldef008068) func002494 = 
{
    local entity globaldef008069;
    local entity globaldef008070;
    local entity globaldef008071;
    local entity globaldef008072;
    local float globaldef008073;
    local float globaldef008074;
    globaldef008070 = globaldef008068.field000267;
    
    if(!globaldef008070)
    {
        return world;
    }
    
    if((globaldef008068.field000268 != world) && (globaldef008068.field000263 == globaldef008068.field000268))
    {
        globaldef008074 = func002687(globaldef008068.field000268, globaldef008070) + FL_MONSTER;
    }
    else
    {
        globaldef008074 = globaldef008068.field000269;
    }
    
    globaldef008068.field000269 = globaldef008074;
    globaldef008069 = world;
    globaldef008071 = func002493(globaldef008068, globaldef008068.origin, globaldef000720, FALSE);
    
    if(globaldef008071)
    {
        
        if(!func002689(globaldef008071, globaldef008070))
        {
            globaldef008072 = func002691(globaldef008070);
            
            if(!globaldef008072)
            {
                return world;
            }
            
            func002692(globaldef008070, globaldef008072);
        }
        
    }
    
    
    while(globaldef008071)
    {
        
        if((globaldef008071.field000339 != globaldef008068) || (globaldef008071.field000340 < (time - MOVETYPE_TOSS)))
        {
            globaldef008073 = func002687(globaldef008071, globaldef008070);
            
            if(globaldef008073)
            {
                globaldef008073 = globaldef008073 + ((vlen(globaldef008071.origin - globaldef008068.origin)) * 0.8);
                
                if(globaldef008073 < globaldef008074)
                {
                    globaldef008074 = globaldef008073;
                    globaldef008069 = globaldef008071;
                }
                
            }
            
        }
        
        globaldef008071 = globaldef008071.chain;
    }
    
    
    if(globaldef008069)
    {
        globaldef008069.field000339 = globaldef008068;
        globaldef008069.field000340 = time;
        globaldef008068.field000270 = FALSE;
        globaldef008068.field000269 = globaldef008074 + (vlen(globaldef008069.origin - globaldef008068.origin));
        globaldef008068.field000268 = globaldef008069;
    }
    
    return globaldef008069;
};


// func002495
// function begins at statement 43263, parm_start=24986
// OP_STORE_F	213	24987	0
// OP_STORE_ENT	30	24999	0
// OP_STORE_ENT	30	25000	0
// OP_STORE_F	213	24994	0
// OP_STORE_ENT	30	25006	0
// OP_STORE_ENT	30	25007	0
// OP_LOAD_ENT	24986	590	25009
// OP_STORE_ENT	25009	25001	0
// OP_ADDRESS	24986	590	25010
// OP_STOREP_ENT	30	25010	0
// OP_ADDRESS	24986	592	25011
// OP_STOREP_F	213	25011	0
// OP_ADDRESS	24986	591	25012
// OP_STOREP_ENT	30	25012	0
// OP_STORE_V	24986	4	0
// OP_LOAD_V	24986	105	25013
// OP_STORE_V	25013	7	0
// OP_STORE_V	737	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	24894	0	0
// OP_STORE_ENT	1	25004	0
// OP_STORE_ENT	25004	25003	0
// OP_IFNOT	25003	117	0
// OP_STORE_F	213	24988	0
// OP_STORE_ENT	30	24998	0
// OP_STORE_F	213	24995	0
// OP_STORE_ENT	30	25005	0
// OP_STORE_F	213	24993	0
// OP_EQ_F	24993	213	25016
// OP_IFNOT	25016	6	0
// OP_LOAD_ENT	25003	638	25017
// OP_STORE_ENT	25017	25002	0
// OP_LOAD_F	25003	648	25018
// OP_STORE_F	25018	24992	0
// OP_GOTO	49	0	0
// OP_EQ_F	24993	214	25019
// OP_IFNOT	25019	6	0
// OP_LOAD_ENT	25003	639	25020
// OP_STORE_ENT	25020	25002	0
// OP_LOAD_F	25003	649	25021
// OP_STORE_F	25021	24992	0
// OP_GOTO	42	0	0
// OP_EQ_F	24993	216	25022
// OP_IFNOT	25022	6	0
// OP_LOAD_ENT	25003	640	25023
// OP_STORE_ENT	25023	25002	0
// OP_LOAD_F	25003	650	25024
// OP_STORE_F	25024	24992	0
// OP_GOTO	35	0	0
// OP_EQ_F	24993	228	25025
// OP_IFNOT	25025	6	0
// OP_LOAD_ENT	25003	641	25026
// OP_STORE_ENT	25026	25002	0
// OP_LOAD_F	25003	651	25027
// OP_STORE_F	25027	24992	0
// OP_GOTO	28	0	0
// OP_EQ_F	24993	229	25028
// OP_IFNOT	25028	6	0
// OP_LOAD_ENT	25003	642	25029
// OP_STORE_ENT	25029	25002	0
// OP_LOAD_F	25003	652	25030
// OP_STORE_F	25030	24992	0
// OP_GOTO	21	0	0
// OP_EQ_F	24993	230	25031
// OP_IFNOT	25031	6	0
// OP_LOAD_ENT	25003	643	25032
// OP_STORE_ENT	25032	25002	0
// OP_LOAD_F	25003	653	25033
// OP_STORE_F	25033	24992	0
// OP_GOTO	14	0	0
// OP_EQ_F	24993	231	25034
// OP_IFNOT	25034	6	0
// OP_LOAD_ENT	25003	644	25035
// OP_STORE_ENT	25035	25002	0
// OP_LOAD_F	25003	654	25036
// OP_STORE_F	25036	24992	0
// OP_GOTO	7	0	0
// OP_EQ_F	24993	232	25037
// OP_IFNOT	25037	5	0
// OP_LOAD_ENT	25003	645	25038
// OP_STORE_ENT	25038	25002	0
// OP_LOAD_F	25003	655	25039
// OP_STORE_F	25039	24992	0
// OP_IFNOT	25002	37	0
// OP_NE_E	25002	25001	25040
// OP_IFNOT	25040	35	0
// OP_LOAD_F	25002	104	25041
// OP_EQ_F	25041	238	25042
// OP_IFNOT	25042	13	0
// OP_LOAD_FNC	25002	548	25043
// OP_STORE_V	24986	4	0
// OP_STORE_V	25002	7	0
// OP_CALL2	25043	0	0
// OP_DIV_F	1	24992	25044
// OP_MUL_F	25044	1283	25045
// OP_STORE_F	25045	24991	0
// OP_GT	24991	24988	25046
// OP_IFNOT	25046	4	0
// OP_STORE_F	24991	24988	0
// OP_STORE_ENT	25002	24998	0
// OP_STORE_F	24992	24989	0
// OP_LOAD_ENT	25002	664	25047
// OP_NE_E	25047	24986	25048
// OP_LOAD_F	25002	665	25049
// OP_SUB_F	31	305	25050
// OP_LT	25049	25050	25051
// OP_OR	25048	25051	25052
// OP_IFNOT	25052	13	0
// OP_LOAD_FNC	25002	549	25053
// OP_IFNOT	25053	11	0
// OP_LOAD_FNC	25002	549	25054
// OP_STORE_V	24986	4	0
// OP_STORE_V	25002	7	0
// OP_CALL2	25054	0	0
// OP_STORE_F	1	24991	0
// OP_GT	24991	24995	25055
// OP_IFNOT	25055	4	0
// OP_STORE_F	24991	24995	0
// OP_STORE_ENT	25002	25005	0
// OP_STORE_F	24992	24996	0
// OP_ADD_F	24993	214	25056
// OP_STORE_F	25056	24993	0
// OP_LE	24993	232	25057
// OP_IF	25057	-95	0
// OP_GT	24988	24987	25058
// OP_IFNOT	25058	5	0
// OP_STORE_F	24988	24987	0
// OP_STORE_ENT	24998	24999	0
// OP_STORE_ENT	25003	25000	0
// OP_STORE_F	24989	24990	0
// OP_GT	24995	24994	25059
// OP_IFNOT	25059	5	0
// OP_STORE_F	24995	24994	0
// OP_STORE_ENT	25005	25006	0
// OP_STORE_ENT	25003	25007	0
// OP_STORE_F	24996	24997	0
// OP_LOAD_ENT	25003	164	25060
// OP_STORE_ENT	25060	25003	0
// OP_GOTO	-116	0	0
// OP_IFNOT	24999	42	0
// OP_ADDRESS	24986	590	25061
// OP_STOREP_ENT	24999	25061	0
// OP_ADDRESS	24986	575	25062
// OP_LOAD_F	24986	575	25063
// OP_LOAD_F	24986	575	25064
// OP_BITAND	25064	705	25065
// OP_SUB_F	25063	25065	25066
// OP_STOREP_F	25066	25062	0
// OP_ADDRESS	24986	575	25067
// OP_LOAD_F	24986	575	25068
// OP_LOAD_F	24986	575	25069
// OP_BITAND	25069	706	25070
// OP_SUB_F	25068	25070	25071
// OP_STOREP_F	25071	25067	0
// OP_ADDRESS	24986	575	25072
// OP_LOAD_F	24986	575	25073
// OP_LOAD_F	24986	575	25074
// OP_BITAND	25074	707	25075
// OP_SUB_F	25073	25075	25076
// OP_STOREP_F	25076	25072	0
// OP_ADDRESS	25000	662	25077
// OP_STOREP_ENT	24986	25077	0
// OP_ADDRESS	25000	663	25078
// OP_STOREP_F	31	25078	0
// OP_ADDRESS	24999	664	25079
// OP_STOREP_ENT	24986	25079	0
// OP_ADDRESS	24999	665	25080
// OP_STOREP_F	31	25080	0
// OP_ADDRESS	24986	593	25081
// OP_STOREP_F	213	25081	0
// OP_ADDRESS	24986	592	25082
// OP_LOAD_V	25000	105	25083
// OP_LOAD_V	24986	105	25086
// OP_SUB_V	25083	25086	25089
// OP_STORE_V	25089	4	0
// OP_CALL1	462	0	0
// OP_ADD_F	24990	1	25092
// OP_STOREP_F	25092	25082	0
// OP_ADDRESS	24986	591	25093
// OP_STOREP_ENT	25000	25093	0
// OP_RETURN	25000	0	0
// OP_IFNOT	25006	40	0
// OP_ADDRESS	24986	590	25094
// OP_STOREP_ENT	25006	25094	0
// OP_ADDRESS	24986	575	25095
// OP_LOAD_F	24986	575	25096
// OP_BITOR	25096	706	25097
// OP_STOREP_F	25097	25095	0
// OP_ADDRESS	24986	575	25098
// OP_LOAD_F	24986	575	25099
// OP_LOAD_F	24986	575	25100
// OP_BITAND	25100	705	25101
// OP_SUB_F	25099	25101	25102
// OP_STOREP_F	25102	25098	0
// OP_ADDRESS	24986	575	25103
// OP_LOAD_F	24986	575	25104
// OP_LOAD_F	24986	575	25105
// OP_BITAND	25105	707	25106
// OP_SUB_F	25104	25106	25107
// OP_STOREP_F	25107	25103	0
// OP_ADDRESS	25006	664	25108
// OP_STOREP_ENT	24986	25108	0
// OP_ADDRESS	25006	665	25109
// OP_STOREP_F	31	25109	0
// OP_ADDRESS	25007	662	25110
// OP_STOREP_ENT	24986	25110	0
// OP_ADDRESS	25007	663	25111
// OP_STOREP_F	31	25111	0
// OP_ADDRESS	24986	593	25112
// OP_STOREP_F	213	25112	0
// OP_ADDRESS	24986	592	25113
// OP_LOAD_V	25007	105	25114
// OP_LOAD_V	24986	105	25117
// OP_SUB_V	25114	25117	25120
// OP_STORE_V	25120	4	0
// OP_CALL1	462	0	0
// OP_ADD_F	24997	1	25123
// OP_STOREP_F	25123	25113	0
// OP_ADDRESS	24986	591	25124
// OP_STOREP_ENT	25007	25124	0
// OP_RETURN	25007	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity bot) func002495 = 
{
    local float globaldef008077;
    local float globaldef008078;
    local float globaldef008079;
    local float globaldef008080;
    local float globaldef008081;
    local float globaldef008082;
    local float globaldef008083;
    local float globaldef008084;
    local float globaldef008085;
    local float globaldef008086;
    local float globaldef008087;
    local entity globaldef008088;
    local entity globaldef008089;
    local entity globaldef008090;
    local entity globaldef008091;
    local entity e;
    local entity globaldef008093;
    local entity globaldef008094;
    local entity globaldef008095;
    local entity globaldef008096;
    local entity globaldef008097;
    local entity globaldef008098;
    globaldef008077 = FALSE;
    globaldef008090 = globaldef008089 = world;
    globaldef008084 = FALSE;
    globaldef008097 = globaldef008096 = world;
    globaldef008091 = bot.field000267;
    bot.field000267 = world;
    bot.field000269 = FALSE;
    bot.field000268 = world;
    globaldef008094 = func002493(bot, bot.origin, globaldef000720, TRUE);
    globaldef008093 = globaldef008094;
    
    while(globaldef008093)
    {
        globaldef008078 = FALSE;
        globaldef008088 = world;
        globaldef008085 = FALSE;
        globaldef008095 = world;
        globaldef008083 = FALSE;
        do
        {
            if(globaldef008083 == FALSE)
            {
                e = globaldef008093.cache0_ent;
                globaldef008082 = globaldef008093.cache0_dist;
            }
            else
            {
                if(globaldef008083 == TRUE)
                {
                    e = globaldef008093.cache1_ent;
                    globaldef008082 = globaldef008093.cache1_dist;
                }
                else
                {
                    if(globaldef008083 == FL_SWIM)
                    {
                        e = globaldef008093.cache2_ent;
                        globaldef008082 = globaldef008093.cache2_dist;
                    }
                    else
                    {
                        if(globaldef008083 == MOVETYPE_WALK)
                        {
                            e = globaldef008093.cache3_ent;
                            globaldef008082 = globaldef008093.cache3_dist;
                        }
                        else
                        {
                            if(globaldef008083 == MOVETYPE_STEP)
                            {
                                e = globaldef008093.cache4_ent;
                                globaldef008082 = globaldef008093.cache4_dist;
                            }
                            else
                            {
                                if(globaldef008083 == MOVETYPE_FLY)
                                {
                                    e = globaldef008093.cache5_ent;
                                    globaldef008082 = globaldef008093.cache5_dist;
                                }
                                else
                                {
                                    if(globaldef008083 == MOVETYPE_TOSS)
                                    {
                                        e = globaldef008093.cache6_ent;
                                        globaldef008082 = globaldef008093.cache6_dist;
                                    }
                                    else
                                    {
                                        
                                        if(globaldef008083 == MOVETYPE_PUSH)
                                        {
                                            e = globaldef008093.cache7_ent;
                                            globaldef008082 = globaldef008093.cache7_dist;
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            
            if(e)
            {
                
                if(e != globaldef008091)
                {
                    
                    if(e.solid == SOLID_TRIGGER)
                    {
                        globaldef008081 = (e.f_goalweight(bot, e) / globaldef008082) * 0.001;
                        
                        if(globaldef008081 > globaldef008078)
                        {
                            globaldef008078 = globaldef008081;
                            globaldef008088 = e;
                            globaldef008079 = globaldef008082;
                        }
                        
                    }
                    
                    
                    if((e.field000341 != bot) || (e.field000342 < (time - SVC_SIGNONNUM)))
                    {
                        
                        if(e.f_walkaboutweight)
                        {
                            globaldef008081 = e.f_walkaboutweight(bot, e);
                            
                            if(globaldef008081 > globaldef008085)
                            {
                                globaldef008085 = globaldef008081;
                                globaldef008095 = e;
                                globaldef008086 = globaldef008082;
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
            globaldef008083 = globaldef008083 + TRUE;
        } while (globaldef008083 <= MOVETYPE_PUSH);
        
        if(globaldef008078 > globaldef008077)
        {
            globaldef008077 = globaldef008078;
            globaldef008089 = globaldef008088;
            globaldef008090 = globaldef008093;
            globaldef008080 = globaldef008079;
        }
        
        
        if(globaldef008085 > globaldef008084)
        {
            globaldef008084 = globaldef008085;
            globaldef008096 = globaldef008095;
            globaldef008097 = globaldef008093;
            globaldef008087 = globaldef008086;
        }
        
        globaldef008093 = globaldef008093.chain;
    }
    
    
    if(globaldef008089)
    {
        bot.field000267 = globaldef008089;
        bot.botflags = bot.botflags - (bot.botflags & GLOBALDEF688_32);
        bot.botflags = bot.botflags - (bot.botflags & GLOBALDEF689_64);
        bot.botflags = bot.botflags - (bot.botflags & globaldef000690);
        globaldef008090.field000339 = bot;
        globaldef008090.field000340 = time;
        globaldef008089.field000341 = bot;
        globaldef008089.field000342 = time;
        bot.field000270 = FALSE;
        bot.field000269 = globaldef008080 + (vlen(globaldef008090.origin - bot.origin));
        bot.field000268 = globaldef008090;
        return globaldef008090;
    }
    
    
    if(globaldef008096)
    {
        bot.field000267 = globaldef008096;
        bot.botflags = bot.botflags | GLOBALDEF689_64;
        bot.botflags = bot.botflags - (bot.botflags & GLOBALDEF688_32);
        bot.botflags = bot.botflags - (bot.botflags & globaldef000690);
        globaldef008096.field000341 = bot;
        globaldef008096.field000342 = time;
        globaldef008097.field000339 = bot;
        globaldef008097.field000340 = time;
        bot.field000270 = FALSE;
        bot.field000269 = globaldef008087 + (vlen(globaldef008097.origin - bot.origin));
        bot.field000268 = globaldef008097;
        return globaldef008097;
    }
    
    return world;
};


// func002496
// function begins at statement 43486, parm_start=25126
// OP_LOAD_ENT	25126	590	25127
// OP_NOT_ENT	25127	0	25128
// OP_IFNOT	25128	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	25126	575	25129
// OP_BITAND	25129	707	25130
// OP_IFNOT	25130	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	25126	593	25131
// OP_GT	25131	229	25132
// OP_IFNOT	25132	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	25126	575	25133
// OP_BITAND	25133	706	25134
// OP_NOT_F	25134	0	25135
// OP_LOAD_F	25126	575	25136
// OP_BITAND	25136	705	25137
// OP_NOT_F	25137	0	25138
// OP_AND	25135	25138	25139
// OP_IFNOT	25139	16	0
// OP_LOAD_ENT	25126	590	25140
// OP_LOAD_F	25140	104	25141
// OP_NE_F	25141	238	25142
// OP_IFNOT	25142	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	25126	590	25143
// OP_LOAD_FNC	25143	548	25144
// OP_STORE_V	25126	4	0
// OP_LOAD_ENT	25126	590	25145
// OP_STORE_V	25145	7	0
// OP_CALL2	25144	0	0
// OP_LE	1	213	25146
// OP_IFNOT	25146	2	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_LOAD_ENT	25126	590	25147
// OP_LOAD_V	25147	105	25148
// OP_LOAD_V	25126	105	25151
// OP_SUB_V	25148	25151	25154
// OP_STORE_V	25154	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1997	25157
// OP_IFNOT	25157	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef008100) func002496 = 
{
    
    if(!globaldef008100.field000267)
    {
        return FALSE;
    }
    
    
    if(globaldef008100.botflags & globaldef000690)
    {
        return FALSE;
    }
    
    
    if(globaldef008100.field000270 > MOVETYPE_STEP)
    {
        return FALSE;
    }
    
    if((!(globaldef008100.botflags & GLOBALDEF689_64)) && (!(globaldef008100.botflags & GLOBALDEF688_32)))
    {
        
        if(globaldef008100.field000267.solid != SOLID_TRIGGER)
        {
            return FALSE;
        }
        
        
        if(globaldef008100.field000267.f_goalweight(globaldef008100, globaldef008100.field000267) <= FALSE)
        {
            return FALSE;
        }
        
    }
    else
    {
        
        if((vlen(globaldef008100.field000267.origin - globaldef008100.origin)) < 100)
        {
            return FALSE;
        }
        
    }
    
    return TRUE;
};


// func002497
// function begins at statement 43532, parm_start=25158
// OP_STORE_V	25158	4	0
// OP_CALL1	25125	0	0
// OP_NOT_F	1	0	25160
// OP_IFNOT	25160	5	0
// OP_STORE_V	25158	4	0
// OP_CALL1	24985	0	0
// OP_RETURN	1	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	25158	4	0
// OP_CALL1	24926	0	0
// OP_RETURN	1	0	0
// OP_DONE	0	0	0
entity (entity globaldef008101) func002497 = 
{
    local entity globaldef008102;
    if(!func002496(globaldef008101))
    {
        return func002495(globaldef008101);
    }
    else
    {
        return func002494(globaldef008101);
    }
    
};


// func002498
// function begins at statement 43544, parm_start=25161
// OP_STORE_V	25161	4	0
// OP_CALL1	1122	0	0
// OP_STORE_ENT	1	25162	0
// OP_IFNOT	25162	66	0
// OP_STORE_V	25162	4	0
// OP_CALL1	1207	0	0
// OP_STORE_ENT	1	25163	0
// OP_IFNOT	25163	62	0
// OP_STORE_V	25163	4	0
// OP_STORE_V	25163	7	0
// OP_CALL2	1208	0	0
// OP_STORE_F	3722	25167	0
// OP_STORE_ENT	30	25164	0
// OP_STORE_V	25161	4	0
// OP_LOAD_V	25161	105	25168
// OP_STORE_V	25168	7	0
// OP_STORE_V	737	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	24894	0	0
// OP_STORE_ENT	1	25165	0
// OP_IFNOT	25165	13	0
// OP_STORE_V	25165	4	0
// OP_STORE_V	25163	7	0
// OP_CALL2	1205	0	0
// OP_STORE_F	1	25166	0
// OP_IFNOT	25166	5	0
// OP_LT	25166	25167	25171
// OP_IFNOT	25171	3	0
// OP_STORE_F	25166	25167	0
// OP_STORE_ENT	25165	25164	0
// OP_LOAD_ENT	25165	164	25172
// OP_STORE_ENT	25172	25165	0
// OP_GOTO	-12	0	0
// OP_IFNOT	25164	36	0
// OP_ADDRESS	25161	590	25173
// OP_STOREP_ENT	25163	25173	0
// OP_ADDRESS	25161	575	25174
// OP_LOAD_F	25161	575	25175
// OP_BITOR	25175	705	25176
// OP_STOREP_F	25176	25174	0
// OP_ADDRESS	25161	575	25177
// OP_LOAD_F	25161	575	25178
// OP_LOAD_F	25161	575	25179
// OP_BITAND	25179	706	25180
// OP_SUB_F	25178	25180	25181
// OP_STOREP_F	25181	25177	0
// OP_ADDRESS	25161	575	25182
// OP_LOAD_F	25161	575	25183
// OP_LOAD_F	25161	575	25184
// OP_BITAND	25184	707	25185
// OP_SUB_F	25183	25185	25186
// OP_STOREP_F	25186	25182	0
// OP_ADDRESS	25164	662	25187
// OP_STOREP_ENT	25161	25187	0
// OP_ADDRESS	25164	663	25188
// OP_STOREP_F	31	25188	0
// OP_ADDRESS	25161	593	25189
// OP_STOREP_F	213	25189	0
// OP_ADDRESS	25161	592	25190
// OP_LOAD_V	25164	105	25191
// OP_LOAD_V	25161	105	25194
// OP_SUB_V	25191	25194	25197
// OP_STORE_V	25197	4	0
// OP_CALL1	462	0	0
// OP_ADD_F	25167	1	25200
// OP_STOREP_F	25200	25190	0
// OP_ADDRESS	25161	591	25201
// OP_STOREP_ENT	25164	25201	0
// OP_RETURN	25164	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity globaldef008103) func002498 = 
{
    local entity globaldef008104;
    local entity globaldef008105;
    local entity globaldef008106;
    local entity globaldef008107;
    local float globaldef008108;
    local float globaldef008109;
    globaldef008104 = LocateDistantSound(globaldef008103);
    
    if(globaldef008104)
    {
        globaldef008105 = func002691(globaldef008104);
        
        if(globaldef008105)
        {
            func002692(globaldef008105, globaldef008105);
            globaldef008109 = 9999;
            globaldef008106 = world;
            globaldef008107 = func002493(globaldef008103, globaldef008103.origin, globaldef000720, FALSE);
            
            while(globaldef008107)
            {
                globaldef008108 = func002687(globaldef008107, globaldef008105);
                
                if(globaldef008108)
                {
                    
                    if(globaldef008108 < globaldef008109)
                    {
                        globaldef008109 = globaldef008108;
                        globaldef008106 = globaldef008107;
                    }
                    
                }
                
                globaldef008107 = globaldef008107.chain;
            }
            
            
            if(globaldef008106)
            {
                globaldef008103.field000267 = globaldef008105;
                globaldef008103.botflags = globaldef008103.botflags | GLOBALDEF688_32;
                globaldef008103.botflags = globaldef008103.botflags - (globaldef008103.botflags & GLOBALDEF689_64);
                globaldef008103.botflags = globaldef008103.botflags - (globaldef008103.botflags & globaldef000690);
                globaldef008106.field000339 = globaldef008103;
                globaldef008106.field000340 = time;
                globaldef008103.field000270 = FALSE;
                globaldef008103.field000269 = globaldef008109 + (vlen(globaldef008106.origin - globaldef008103.origin));
                globaldef008103.field000268 = globaldef008106;
                return globaldef008106;
            }
            
        }
        
    }
    
    return world;
};

