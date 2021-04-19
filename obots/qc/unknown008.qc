
// func002500
// function begins at statement 43619, parm_start=25204
// OP_ADDRESS	25204	611	25205
// OP_STOREP_F	213	25205	0
// OP_ADDRESS	25204	163	25206
// OP_STOREP_F	250	25206	0
// OP_ADDRESS	25204	181	25207
// OP_STOREP_ENT	30	25207	0
// OP_ADDRESS	25204	551	25208
// OP_STOREP_FNC	1154	25208	0
// OP_DONE	0	0	0
void (entity globaldef008111) func002500 = 
{
    globaldef008111.field000288 = FALSE;
    globaldef008111.takedamage = DAMAGE_NO;
    globaldef008111.enemy = world;
    globaldef008111.f_ai = func002501;
};


// func002501
// function begins at statement 43628, parm_start=25209
// OP_DONE	0	0	0
void (entity globaldef008112) func002501 = 
{
};


// func002502
// function begins at statement 43629, parm_start=25210
// OP_ADDRESS	25210	551	25211
// OP_STOREP_FNC	1155	25211	0
// OP_ADDRESS	25210	371	25212
// OP_SUB_F	31	214	25213
// OP_STOREP_F	25213	25212	0
// OP_LOAD_ENT	25210	194	25214
// OP_ADDRESS	25214	194	25215
// OP_LOAD_ENT	25210	194	25216
// OP_STOREP_ENT	25216	25215	0
// OP_ADDRESS	25210	611	25217
// OP_STOREP_F	213	25217	0
// OP_ADDRESS	25210	181	25218
// OP_STOREP_ENT	30	25218	0
// OP_DONE	0	0	0
void (entity globaldef008113) func002502 = 
{
    globaldef008113.f_ai = func002503;
    globaldef008113.search_time = time - TRUE;
    globaldef008113.goalentity.goalentity = globaldef008113.goalentity;
    globaldef008113.field000288 = FALSE;
    globaldef008113.enemy = world;
};


// func002503
// function begins at statement 43643, parm_start=25219
// OP_STORE_V	25219	4	0
// OP_CALL1	1136	0	0
// OP_IFNOT	1	6	0
// OP_STORE_V	25219	4	0
// OP_CALL1	1076	0	0
// OP_STORE_V	25219	4	0
// OP_CALL1	1147	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25219	422	25220
// OP_LT	25220	31	25221
// OP_IFNOT	25221	5	0
// OP_STORE_V	25219	4	0
// OP_CALL1	1077	0	0
// OP_STORE_V	25219	4	0
// OP_CALL1	1144	0	0
// OP_DONE	0	0	0
void (entity globaldef008114) func002503 = 
{
    
    if(func002489(globaldef008114))
    {
        BotRemoveMessage(globaldef008114);
        func002509(globaldef008114);
        return;
    }
    
    
    if(globaldef008114.pausetime < time)
    {
        BotEnterMessage(globaldef008114);
        func002504(globaldef008114);
    }
    
};


// func002504
// function begins at statement 43659, parm_start=25222
// OP_ADDRESS	25222	551	25223
// OP_STOREP_FNC	1157	25223	0
// OP_ADDRESS	25222	371	25224
// OP_SUB_F	31	214	25225
// OP_STOREP_F	25225	25224	0
// OP_LOAD_ENT	25222	194	25226
// OP_ADDRESS	25226	194	25227
// OP_LOAD_ENT	25222	194	25228
// OP_STOREP_ENT	25228	25227	0
// OP_ADDRESS	25222	611	25229
// OP_STOREP_F	213	25229	0
// OP_ADDRESS	25222	181	25230
// OP_STOREP_ENT	30	25230	0
// OP_ADDRESS	25222	590	25231
// OP_STOREP_ENT	30	25231	0
// OP_DONE	0	0	0
void (entity globaldef008115) func002504 = 
{
    globaldef008115.f_ai = func002508;
    globaldef008115.search_time = time - TRUE;
    globaldef008115.goalentity.goalentity = globaldef008115.goalentity;
    globaldef008115.field000288 = FALSE;
    globaldef008115.enemy = world;
    globaldef008115.field000267 = world;
};


// func002505
// function begins at statement 43675, parm_start=25232
// OP_ADDRESS	25232	551	25233
// OP_STOREP_FNC	1156	25233	0
// OP_LOAD_ENT	25232	194	25234
// OP_LOAD_ENT	25234	194	25235
// OP_LOAD_S	25235	129	25236
// OP_EQ_S	25236	23508	25237
// OP_IFNOT	25237	10	0
// OP_LOAD_ENT	25232	586	25238
// OP_LOAD_ENT	25232	194	25239
// OP_LOAD_ENT	25239	194	25240
// OP_NE_E	25238	25240	25241
// OP_IFNOT	25241	5	0
// OP_LOAD_ENT	25232	194	25242
// OP_LOAD_ENT	25242	194	25243
// OP_ADDRESS	25243	662	25244
// OP_STOREP_ENT	30	25244	0
// OP_DONE	0	0	0
void (entity globaldef008116) func002505 = 
{
    globaldef008116.f_ai = func002506;
    
    if(globaldef008116.goalentity.goalentity.classname == "waypoint")
    {
        
        if(globaldef008116.field000263 != globaldef008116.goalentity.goalentity)
        {
            globaldef008116.goalentity.goalentity.field000339 = world;
        }
        
    }
    
};


// func002506
// function begins at statement 43692, parm_start=25245
// OP_STORE_V	25245	4	0
// OP_CALL1	1136	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1147	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25245	598	25246
// OP_LT	25246	31	25247
// OP_IFNOT	25247	13	0
// OP_ADDRESS	25245	598	25248
// OP_ADD_F	31	1644	25249
// OP_STOREP_F	25249	25248	0
// OP_STORE_V	25245	4	0
// OP_LOAD_F	25245	587	25250
// OP_STORE_V	25250	7	0
// OP_STORE_V	214	10	0
// OP_CALL3	1134	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1145	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25245	194	25251
// OP_LOAD_ENT	25251	194	25252
// OP_LOAD_F	25252	104	25253
// OP_EQ_F	25253	237	25254
// OP_IFNOT	25254	4	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1146	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25245	371	25255
// OP_LT	25255	31	25256
// OP_IFNOT	25256	4	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1146	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25245	194	25257
// OP_LOAD_ENT	25257	194	25258
// OP_LOAD_F	25258	163	25259
// OP_EQ_F	25259	251	25260
// OP_IFNOT	25260	4	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1095	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1128	0	0
// OP_STORE_V	25245	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1123	0	0
// OP_EQ_F	1	733	25261
// OP_IFNOT	25261	4	0
// OP_ADDRESS	25245	371	25262
// OP_SUB_F	31	214	25263
// OP_STOREP_F	25263	25262	0
// OP_STORE_V	25245	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	25264
// OP_IFNOT	25264	5	0
// OP_ADDRESS	25245	371	25265
// OP_LOAD_F	25245	371	25266
// OP_SUB_F	25266	214	25267
// OP_STOREP_F	25267	25265	0
// OP_DONE	0	0	0
void (entity globaldef008117) func002506 = 
{
    
    if(func002489(globaldef008117))
    {
        func002509(globaldef008117);
        return;
    }
    
    
    if(globaldef008117.field000275 < time)
    {
        globaldef008117.field000275 = time + 0.4;
        
        if(func002482(globaldef008117, globaldef008117.field000264, TRUE))
        {
            func002505(globaldef008117);
            return;
        }
        
    }
    
    
    if(globaldef008117.goalentity.goalentity.solid == SOLID_NOT)
    {
        func002507(globaldef008117);
        return;
    }
    
    
    if(globaldef008117.search_time < time)
    {
        func002507(globaldef008117);
        return;
    }
    
    if(globaldef008117.goalentity.goalentity.takedamage == DAMAGE_YES)
    {
        func002391(globaldef008117);
    }
    else
    {
        func002468(globaldef008117);
    }
    
    
    if(BotMoveToGoal(globaldef008117, globaldef000783) == globaldef000716)
    {
        globaldef008117.search_time = time - TRUE;
    }
    
    
    if(!func002446(globaldef008117))
    {
        globaldef008117.search_time = globaldef008117.search_time - TRUE;
    }
    
};


// func002507
// function begins at statement 43754, parm_start=25268
// OP_STORE_V	25268	4	0
// OP_CALL1	1157	0	0
// OP_ADDRESS	25268	551	25269
// OP_STOREP_FNC	1157	25269	0
// OP_ADDRESS	25268	587	25270
// OP_STOREP_F	213	25270	0
// OP_ADDRESS	25268	371	25271
// OP_SUB_F	31	214	25272
// OP_STOREP_F	25272	25271	0
// OP_DONE	0	0	0
void (entity globaldef008118) func002507 = 
{
    func002508(globaldef008118);
    globaldef008118.f_ai = func002508;
    globaldef008118.field000264 = FALSE;
    globaldef008118.search_time = time - TRUE;
};


// func002508
// function begins at statement 43764, parm_start=25273
// OP_STORE_V	25273	4	0
// OP_CALL1	1136	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1147	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1081	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1143	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25273	598	25282
// OP_LT	25282	31	25283
// OP_IFNOT	25283	12	0
// OP_ADDRESS	25273	598	25284
// OP_ADD_F	31	1644	25285
// OP_STOREP_F	25285	25284	0
// OP_STORE_V	25273	4	0
// OP_STORE_V	6892	7	0
// OP_STORE_V	213	10	0
// OP_CALL3	1134	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1145	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25273	575	25286
// OP_BITAND	25286	706	25287
// OP_IFNOT	25287	16	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1140	0	0
// OP_STORE_ENT	1	25274	0
// OP_IFNOT	25274	12	0
// OP_LOAD_ENT	25273	194	25288
// OP_ADDRESS	25288	194	25289
// OP_STOREP_ENT	25274	25289	0
// OP_LOAD_ENT	25273	194	25290
// OP_STORE_V	25290	4	0
// OP_LOAD_V	25274	105	25291
// OP_STORE_V	25291	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25273	371	25294
// OP_ADD_F	31	228	25295
// OP_STOREP_F	25295	25294	0
// OP_LOAD_F	25273	371	25296
// OP_LT	25296	31	25297
// OP_IFNOT	25297	95	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1139	0	0
// OP_STORE_ENT	1	25274	0
// OP_IFNOT	25274	13	0
// OP_LOAD_ENT	25273	194	25298
// OP_ADDRESS	25298	194	25299
// OP_STOREP_ENT	25274	25299	0
// OP_LOAD_ENT	25273	194	25300
// OP_STORE_V	25300	4	0
// OP_LOAD_V	25274	105	25301
// OP_STORE_V	25301	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25273	371	25304
// OP_ADD_F	31	228	25305
// OP_STOREP_F	25305	25304	0
// OP_GOTO	79	0	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1115	0	0
// OP_STORE_ENT	1	25275	0
// OP_IFNOT	25275	20	0
// OP_LOAD_V	25275	94	25306
// OP_LOAD_V	25275	98	25309
// OP_ADD_V	25306	25309	25312
// OP_MUL_VF	25312	539	25315
// OP_STORE_V	25315	25276	0
// OP_LOAD_F	25275	101	25318
// OP_ADD_F	25318	214	25319
// OP_STORE_F	25319	25278	0
// OP_LOAD_ENT	25273	194	25320
// OP_ADDRESS	25320	194	25321
// OP_STOREP_ENT	25275	25321	0
// OP_LOAD_ENT	25273	194	25322
// OP_STORE_V	25322	4	0
// OP_STORE_V	25276	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25273	371	25323
// OP_ADD_F	31	539	25324
// OP_STOREP_F	25324	25323	0
// OP_GOTO	56	0	0
// OP_LOAD_F	25273	593	25325
// OP_NOT_F	25325	0	25326
// OP_IFNOT	25326	35	0
// OP_LOAD_V	25273	113	25327
// OP_STORE_V	25327	25279	0
// OP_STORE_F	213	25281	0
// OP_STORE_V	25279	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	25279	0
// OP_LOAD_V	25273	105	25330
// OP_STORE_V	25330	4	0
// OP_LOAD_V	25273	105	25333
// OP_MUL_VF	25279	2003	25336
// OP_ADD_V	25333	25336	25339
// OP_STORE_V	25339	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	25273	13	0
// OP_CALL4	466	0	0
// OP_MUL_VF	25279	235	25342
// OP_SUB_V	71	25342	25345
// OP_STORE_V	25345	25276	0
// OP_LOAD_ENT	25273	194	25348
// OP_ADDRESS	25348	194	25349
// OP_LOAD_ENT	25273	194	25350
// OP_STOREP_ENT	25350	25349	0
// OP_LOAD_ENT	25273	194	25351
// OP_STORE_V	25351	4	0
// OP_STORE_V	25276	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25273	371	25352
// OP_ADD_F	31	539	25353
// OP_STOREP_F	25353	25352	0
// OP_ADDRESS	25273	593	25354
// OP_LOAD_F	25273	593	25355
// OP_ADD_F	25355	214	25356
// OP_STOREP_F	25356	25354	0
// OP_GOTO	19	0	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1129	0	0
// OP_STORE_V	1	25276	0
// OP_LOAD_ENT	25273	194	25357
// OP_ADDRESS	25357	194	25358
// OP_LOAD_ENT	25273	194	25359
// OP_STOREP_ENT	25359	25358	0
// OP_LOAD_ENT	25273	194	25360
// OP_STORE_V	25360	4	0
// OP_STORE_V	25276	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25273	371	25361
// OP_ADD_F	31	216	25362
// OP_STOREP_F	25362	25361	0
// OP_ADDRESS	25273	593	25363
// OP_LOAD_F	25273	593	25364
// OP_ADD_F	25364	214	25365
// OP_STOREP_F	25365	25363	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1128	0	0
// OP_STORE_V	25273	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1123	0	0
// OP_EQ_F	1	733	25366
// OP_IFNOT	25366	5	0
// OP_ADDRESS	25273	371	25367
// OP_LOAD_F	25273	371	25368
// OP_SUB_F	25368	214	25369
// OP_STOREP_F	25369	25367	0
// OP_STORE_V	25273	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	25370
// OP_IFNOT	25370	5	0
// OP_ADDRESS	25273	371	25371
// OP_LOAD_F	25273	371	25372
// OP_SUB_F	25372	214	25373
// OP_STOREP_F	25373	25371	0
// OP_DONE	0	0	0
void (entity globaldef008119) func002508 = 
{
    local entity globaldef008120;
    local entity globaldef008121;
    local vector globaldef008122;
    local vector globaldef008126;
    
    if(func002489(globaldef008119))
    {
        func002509(globaldef008119);
        return;
    }
    
    
    if(func002379(globaldef008119))
    {
        func002502(globaldef008119);
        return;
    }
    
    
    if(globaldef008119.field000275 < time)
    {
        globaldef008119.field000275 = time + 0.4;
        
        if(func002482(globaldef008119, 17, FALSE))
        {
            func002505(globaldef008119);
            return;
        }
        
    }
    
    
    if(globaldef008119.botflags & globaldef000689)
    {
        globaldef008120 = func002498(globaldef008119);
        
        if(globaldef008120)
        {
            globaldef008119.goalentity.goalentity = globaldef008120;
            setorigin(globaldef008119.goalentity, globaldef008120.origin);
            globaldef008119.search_time = time + MOVETYPE_WALK;
        }
        
    }
    
    
    if(globaldef008119.search_time < time)
    {
        globaldef008120 = func002497(globaldef008119);
        if(globaldef008120)
        {
            globaldef008119.goalentity.goalentity = globaldef008120;
            setorigin(globaldef008119.goalentity, globaldef008120.origin);
            globaldef008119.search_time = time + MOVETYPE_WALK;
        }
        else
        {
            globaldef008121 = BotIsOnMovingPlatDoorTrain(globaldef008119);
            if(globaldef008121)
            {
                globaldef008122 = (globaldef008121.absmin + globaldef008121.absmax) * RA_PLAYERSTATTIME;
                globaldef008122_z = globaldef008121.absmax_z + TRUE;
                globaldef008119.goalentity.goalentity = globaldef008121;
                setorigin(globaldef008119.goalentity, globaldef008122);
                globaldef008119.search_time = time + RA_PLAYERSTATTIME;
            }
            else
            {
                if(!globaldef008119.field000270)
                {
                    globaldef008126 = globaldef008119.velocity;
                    globaldef008126_z = FALSE;
                    globaldef008126 = normalize(globaldef008126);
                    traceline(globaldef008119.origin, globaldef008119.origin + (globaldef008126 * 150), TRUE, globaldef008119);
                    globaldef008122 = trace_endpos - (globaldef008126 * MOVETYPE_BOUNCE);
                    globaldef008119.goalentity.goalentity = globaldef008119.goalentity;
                    setorigin(globaldef008119.goalentity, globaldef008122);
                    globaldef008119.search_time = time + RA_PLAYERSTATTIME;
                    globaldef008119.field000270 = globaldef008119.field000270 + TRUE;
                }
                else
                {
                    globaldef008122 = func002474(globaldef008119);
                    globaldef008119.goalentity.goalentity = globaldef008119.goalentity;
                    setorigin(globaldef008119.goalentity, globaldef008122);
                    globaldef008119.search_time = time + FL_SWIM;
                    globaldef008119.field000270 = globaldef008119.field000270 + TRUE;
                }
                
            }
            
        }
        
    }
    
    func002468(globaldef008119);
    
    if(BotMoveToGoal(globaldef008119, globaldef000783) == globaldef000716)
    {
        globaldef008119.search_time = globaldef008119.search_time - TRUE;
    }
    
    
    if(!func002446(globaldef008119))
    {
        globaldef008119.search_time = globaldef008119.search_time - TRUE;
    }
    
};


// func002509
// function begins at statement 43925, parm_start=25374
// OP_ADDRESS	25374	594	25375
// OP_STOREP_F	213	25375	0
// OP_ADDRESS	25374	595	25376
// OP_STOREP_F	213	25376	0
// OP_LOAD_FNC	25374	551	25377
// OP_EQ_FNC	25377	1156	25378
// OP_IFNOT	25378	6	0
// OP_ADDRESS	25374	552	25379
// OP_STOREP_FNC	1158	25379	0
// OP_ADDRESS	25374	551	25380
// OP_STOREP_FNC	1162	25380	0
// OP_GOTO	9	0	0
// OP_ADDRESS	25374	551	25381
// OP_STOREP_FNC	1158	25381	0
// OP_ADDRESS	25374	371	25382
// OP_SUB_F	31	214	25383
// OP_STOREP_F	25383	25382	0
// OP_ADDRESS	25374	598	25384
// OP_SUB_F	31	214	25385
// OP_STOREP_F	25385	25384	0
// OP_ADDRESS	25374	378	25386
// OP_ADD_F	31	25387	25388
// OP_LOAD_F	25374	588	25389
// OP_MUL_F	3267	25389	25390
// OP_SUB_F	25388	25390	25391
// OP_STOREP_F	25391	25386	0
// OP_LOAD_ENT	25374	181	25392
// OP_LOAD_V	25392	105	25393
// OP_LOAD_V	25374	105	25396
// OP_SUB_V	25393	25396	25399
// OP_STORE_V	25399	4	0
// OP_CALL1	462	0	0
// OP_GT	1	5347	25402
// OP_IFNOT	25402	5	0
// OP_ADDRESS	25374	378	25403
// OP_LOAD_F	25374	378	25404
// OP_ADD_F	25404	3267	25405
// OP_STOREP_F	25405	25403	0
// OP_STORE_V	25374	4	0
// OP_CALL1	1094	0	0
// OP_DONE	0	0	0
void (entity globaldef008130) func002509 = 
{
    globaldef008130.field000271 = FALSE;
    globaldef008130.field000272 = FALSE;
    if(globaldef008130.f_ai == func002506)
    {
        globaldef008130.f_lastai = func002513;
        globaldef008130.f_ai = func002520;
    }
    else
    {
        globaldef008130.f_ai = func002513;
        globaldef008130.search_time = time - TRUE;
        globaldef008130.field000275 = time - TRUE;
    }
    
    globaldef008130.attack_finished = (time + 0.59) - (0.2 * globaldef008130.botskill);
    
    if((vlen(globaldef008130.enemy.origin - globaldef008130.origin)) > 400)
    {
        globaldef008130.attack_finished = globaldef008130.attack_finished + 0.2;
    }
    
    BotAimAtEnemy(globaldef008130);
};


// func002510
// function begins at statement 43966, parm_start=25406
// OP_ADDRESS	25406	551	25407
// OP_STOREP_FNC	1159	25407	0
// OP_DONE	0	0	0
void (entity globaldef008132) func002510 = 
{
    globaldef008132.f_ai = func002511;
};


// func002511
// function begins at statement 43969, parm_start=25408
// OP_LOAD_ENT	25408	181	25409
// OP_NOT_ENT	25409	0	25410
// OP_IFNOT	25410	4	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25408	181	25411
// OP_LOAD_F	25411	165	25412
// OP_NE_F	25412	246	25413
// OP_LOAD_ENT	25408	181	25414
// OP_LOAD_F	25414	152	25415
// OP_LE	25415	213	25416
// OP_OR	25413	25416	25417
// OP_IFNOT	25417	10	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1079	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1143	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1094	0	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1097	0	0
// OP_STORE_V	25408	4	0
// OP_LOAD_ENT	25408	181	25418
// OP_STORE_V	25418	7	0
// OP_CALL2	1096	0	0
// OP_STORE_F	1	3191	0
// OP_IFNOT	3191	13	0
// OP_LOAD_ENT	25408	194	25419
// OP_ADDRESS	25419	194	25420
// OP_LOAD_ENT	25408	181	25421
// OP_STOREP_ENT	25421	25420	0
// OP_LOAD_ENT	25408	194	25422
// OP_STORE_V	25422	4	0
// OP_LOAD_ENT	25408	181	25423
// OP_LOAD_V	25423	105	25424
// OP_STORE_V	25424	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25408	599	25427
// OP_STOREP_F	31	25427	0
// OP_STORE_V	25408	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1098	0	0
// OP_LOAD_F	25408	598	25428
// OP_LT	25428	31	25429
// OP_IFNOT	25429	11	0
// OP_ADDRESS	25408	598	25430
// OP_ADD_F	31	4474	25431
// OP_STOREP_F	25431	25430	0
// OP_STORE_V	25408	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1135	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1152	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1042	0	0
// OP_NOT_F	1	0	25432
// OP_IFNOT	25432	4	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1148	0	0
// OP_RETURN	0	0	0
// OP_NOT_F	3191	0	25433
// OP_IFNOT	25433	3	0
// OP_STORE_V	25408	4	0
// OP_CALL1	1144	0	0
// OP_DONE	0	0	0
void (entity globaldef008133) func002511 = 
{
    
    if(!globaldef008133.enemy)
    {
        func002504(globaldef008133);
        return;
    }
    
    
    if((globaldef008133.enemy.deadflag != DEAD_NO) || (globaldef008133.enemy.health <= FALSE))
    {
        if(CheckBotKillMessage(globaldef008133))
        {
            func002502(globaldef008133);
        }
        else
        {
            func002504(globaldef008133);
        }
        
        return;
    }
    
    BotAimAtEnemy(globaldef008133);
    func002397(globaldef008133);
    enemy_vis = func002392(globaldef008133, globaldef008133.enemy);
    
    if(enemy_vis)
    {
        globaldef008133.goalentity.goalentity = globaldef008133.enemy;
        setorigin(globaldef008133.goalentity, globaldef008133.enemy.origin);
        globaldef008133.field000276 = time;
    }
    
    BotAttackMove(globaldef008133, globaldef000783);
    
    if(globaldef008133.field000275 < time)
    {
        globaldef008133.field000275 = time + 0.6;
        
        if(func002483(globaldef008133, FALSE))
        {
            func002518(globaldef008133);
            return;
        }
        
    }
    
    
    if(!BotWantsToRetreat(globaldef008133))
    {
        func002512(globaldef008133);
        return;
    }
    
    
    if(!enemy_vis)
    {
        func002504(globaldef008133);
    }
    
};


// func002512
// function begins at statement 44042, parm_start=25434
// OP_ADDRESS	25434	551	25435
// OP_STOREP_FNC	1158	25435	0
// OP_DONE	0	0	0
void (entity globaldef008134) func002512 = 
{
    globaldef008134.f_ai = func002513;
};


// func002513
// function begins at statement 44045, parm_start=25436
// OP_LOAD_ENT	25436	181	25437
// OP_NOT_ENT	25437	0	25438
// OP_IFNOT	25438	4	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25436	181	25439
// OP_LOAD_F	25439	165	25440
// OP_NE_F	25440	246	25441
// OP_LOAD_ENT	25436	181	25442
// OP_LOAD_F	25442	152	25443
// OP_LE	25443	213	25444
// OP_OR	25441	25444	25445
// OP_IFNOT	25445	10	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1079	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1143	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1094	0	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1097	0	0
// OP_STORE_V	25436	4	0
// OP_LOAD_ENT	25436	181	25446
// OP_STORE_V	25446	7	0
// OP_CALL2	1096	0	0
// OP_STORE_F	1	3191	0
// OP_IFNOT	3191	13	0
// OP_LOAD_ENT	25436	194	25447
// OP_ADDRESS	25447	194	25448
// OP_LOAD_ENT	25436	181	25449
// OP_STOREP_ENT	25449	25448	0
// OP_LOAD_ENT	25436	194	25450
// OP_STORE_V	25450	4	0
// OP_LOAD_ENT	25436	181	25451
// OP_LOAD_V	25451	105	25452
// OP_STORE_V	25452	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25436	599	25455
// OP_STOREP_F	31	25455	0
// OP_STORE_V	25436	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1098	0	0
// OP_LOAD_F	25436	598	25456
// OP_LT	25456	31	25457
// OP_IFNOT	25457	11	0
// OP_ADDRESS	25436	598	25458
// OP_ADD_F	31	4474	25459
// OP_STOREP_F	25459	25458	0
// OP_STORE_V	25436	4	0
// OP_STORE_V	213	7	0
// OP_CALL2	1135	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1152	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1042	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1151	0	0
// OP_RETURN	0	0	0
// OP_NOT_F	3191	0	25460
// OP_IFNOT	25460	11	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1043	0	0
// OP_IFNOT	1	5	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1150	0	0
// OP_RETURN	0	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	25436	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void (entity globaldef008135) func002513 = 
{
    
    if(!globaldef008135.enemy)
    {
        func002504(globaldef008135);
        return;
    }
    
    
    if((globaldef008135.enemy.deadflag != DEAD_NO) || (globaldef008135.enemy.health <= FALSE))
    {
        if(CheckBotKillMessage(globaldef008135))
        {
            func002502(globaldef008135);
        }
        else
        {
            func002504(globaldef008135);
        }
        
        return;
    }
    
    BotAimAtEnemy(globaldef008135);
    func002397(globaldef008135);
    enemy_vis = func002392(globaldef008135, globaldef008135.enemy);
    
    if(enemy_vis)
    {
        globaldef008135.goalentity.goalentity = globaldef008135.enemy;
        setorigin(globaldef008135.goalentity, globaldef008135.enemy.origin);
        globaldef008135.field000276 = time;
    }
    
    BotAttackMove(globaldef008135, globaldef000783);
    
    if(globaldef008135.field000275 < time)
    {
        globaldef008135.field000275 = time + 0.6;
        
        if(func002483(globaldef008135, FALSE))
        {
            func002518(globaldef008135);
            return;
        }
        
    }
    
    
    if(BotWantsToRetreat(globaldef008135))
    {
        func002516(globaldef008135);
        return;
    }
    
    
    if(!enemy_vis)
    {
        if(BotWantsToFight(globaldef008135))
        {
            func002514(globaldef008135);
            return;
        }
        else
        {
            func002504(globaldef008135);
            return;
        }
        
    }
    
};


// func002514
// function begins at statement 44125, parm_start=25461
// OP_ADDRESS	25461	551	25462
// OP_STOREP_FNC	1160	25462	0
// OP_ADDRESS	25461	596	25463
// OP_ADD_F	31	235	25464
// OP_STOREP_F	25464	25463	0
// OP_ADDRESS	25461	371	25465
// OP_SUB_F	31	214	25466
// OP_STOREP_F	25466	25465	0
// OP_DONE	0	0	0
void (entity globaldef008136) func002514 = 
{
    globaldef008136.f_ai = func002515;
    globaldef008136.field000273 = time + MOVETYPE_BOUNCE;
    globaldef008136.search_time = time - TRUE;
};


// func002515
// function begins at statement 44134, parm_start=25467
// OP_LOAD_ENT	25467	181	25469
// OP_NOT_ENT	25469	0	25470
// OP_IFNOT	25470	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25467	181	25471
// OP_LOAD_F	25471	165	25472
// OP_NE_F	25472	246	25473
// OP_LOAD_ENT	25467	181	25474
// OP_LOAD_F	25474	152	25475
// OP_LE	25475	213	25476
// OP_OR	25473	25476	25477
// OP_IFNOT	25477	10	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1079	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1143	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25467	599	25478
// OP_ADD_F	25478	216	25479
// OP_GT	25479	31	25480
// OP_IFNOT	25480	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1094	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1128	0	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1097	0	0
// OP_STORE_V	25467	4	0
// OP_LOAD_ENT	25467	181	25481
// OP_STORE_V	25481	7	0
// OP_CALL2	1096	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1148	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1043	0	0
// OP_NOT_F	1	0	25482
// OP_IFNOT	25482	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1136	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1147	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25467	598	25483
// OP_LT	25483	31	25484
// OP_IFNOT	25484	11	0
// OP_ADDRESS	25467	598	25485
// OP_ADD_F	31	4474	25486
// OP_STOREP_F	25486	25485	0
// OP_STORE_V	25467	4	0
// OP_STORE_V	5878	7	0
// OP_CALL2	1135	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1152	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25467	371	25487
// OP_LT	25487	31	25488
// OP_IFNOT	25488	27	0
// OP_STORE_V	25467	4	0
// OP_LOAD_ENT	25467	181	25489
// OP_STORE_V	25489	7	0
// OP_CALL2	1137	0	0
// OP_STORE_ENT	1	25468	0
// OP_NE_E	25468	30	25490
// OP_LOAD_ENT	25467	194	25491
// OP_LOAD_ENT	25491	194	25492
// OP_NE_E	25468	25492	25493
// OP_AND	25490	25493	25494
// OP_IFNOT	25494	13	0
// OP_LOAD_ENT	25467	194	25495
// OP_ADDRESS	25495	194	25496
// OP_STOREP_ENT	25468	25496	0
// OP_LOAD_ENT	25467	194	25497
// OP_STORE_V	25497	4	0
// OP_LOAD_V	25468	105	25498
// OP_STORE_V	25498	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25467	371	25501
// OP_ADD_F	31	229	25502
// OP_STOREP_F	25502	25501	0
// OP_GOTO	4	0	0
// OP_ADDRESS	25467	596	25503
// OP_SUB_F	31	214	25504
// OP_STOREP_F	25504	25503	0
// OP_LOAD_F	25467	596	25505
// OP_LT	25505	31	25506
// OP_IFNOT	25506	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1044	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25467	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25467	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1123	0	0
// OP_EQ_F	1	733	25507
// OP_IFNOT	25507	5	0
// OP_ADDRESS	25467	371	25508
// OP_LOAD_F	25467	371	25509
// OP_SUB_F	25509	214	25510
// OP_STOREP_F	25510	25508	0
// OP_DONE	0	0	0
void (entity globaldef008137) func002515 = 
{
    local entity globaldef008138;
    
    if(!globaldef008137.enemy)
    {
        func002504(globaldef008137);
        return;
    }
    
    
    if((globaldef008137.enemy.deadflag != DEAD_NO) || (globaldef008137.enemy.health <= FALSE))
    {
        if(CheckBotKillMessage(globaldef008137))
        {
            func002502(globaldef008137);
        }
        else
        {
            func002504(globaldef008137);
        }
        
        return;
    }
    
    if((globaldef008137.field000276 + FL_SWIM) > time)
    {
        BotAimAtEnemy(globaldef008137);
    }
    else
    {
        func002468(globaldef008137);
    }
    
    func002397(globaldef008137);
    
    if(func002392(globaldef008137, globaldef008137.enemy))
    {
        func002512(globaldef008137);
        return;
    }
    
    
    if(!BotWantsToFight(globaldef008137))
    {
        func002504(globaldef008137);
        return;
    }
    
    
    if(func002489(globaldef008137))
    {
        func002509(globaldef008137);
        return;
    }
    
    
    if(globaldef008137.field000275 < time)
    {
        globaldef008137.field000275 = time + 0.6;
        
        if(func002483(globaldef008137, 35))
        {
            func002518(globaldef008137);
            return;
        }
        
    }
    
    
    if(globaldef008137.search_time < time)
    {
        globaldef008138 = func002491(globaldef008137, globaldef008137.enemy);
        if((globaldef008138 != world) && (globaldef008138 != globaldef008137.goalentity.goalentity))
        {
            globaldef008137.goalentity.goalentity = globaldef008138;
            setorigin(globaldef008137.goalentity, globaldef008138.origin);
            globaldef008137.search_time = time + MOVETYPE_STEP;
        }
        else
        {
            globaldef008137.field000273 = time - TRUE;
        }
        
    }
    
    
    if(globaldef008137.field000273 < time)
    {
        func002504(globaldef008137);
        return;
    }
    
    
    if(BotWantsToChase(globaldef008137))
    {
        func002504(globaldef008137);
        return;
    }
    
    
    if(BotMoveToGoal(globaldef008137, globaldef000783) == globaldef000716)
    {
        globaldef008137.search_time = globaldef008137.search_time - TRUE;
    }
    
};


// func002516
// function begins at statement 44253, parm_start=25511
// OP_ADDRESS	25511	597	25512
// OP_ADD_F	31	235	25513
// OP_STOREP_F	25513	25512	0
// OP_ADDRESS	25511	371	25514
// OP_SUB_F	31	214	25515
// OP_STOREP_F	25515	25514	0
// OP_ADDRESS	25511	551	25516
// OP_STOREP_FNC	1161	25516	0
// OP_DONE	0	0	0
void (entity globaldef008139) func002516 = 
{
    globaldef008139.field000274 = time + MOVETYPE_BOUNCE;
    globaldef008139.search_time = time - TRUE;
    globaldef008139.f_ai = func002517;
};


// func002517
// function begins at statement 44262, parm_start=25517
// OP_LOAD_ENT	25517	181	25519
// OP_NOT_ENT	25519	0	25520
// OP_IFNOT	25520	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25517	181	25521
// OP_LOAD_F	25521	165	25522
// OP_NE_F	25522	246	25523
// OP_LOAD_ENT	25517	181	25524
// OP_LOAD_F	25524	152	25525
// OP_LE	25525	213	25526
// OP_OR	25523	25526	25527
// OP_IFNOT	25527	10	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1079	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1143	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25517	4	0
// OP_LOAD_ENT	25517	181	25528
// OP_STORE_V	25528	7	0
// OP_CALL2	1096	0	0
// OP_STORE_F	1	3191	0
// OP_IFNOT	3191	3	0
// OP_ADDRESS	25517	599	25529
// OP_STOREP_F	31	25529	0
// OP_LOAD_F	25517	599	25530
// OP_ADD_F	25530	1825	25531
// OP_GT	25531	31	25532
// OP_IFNOT	25532	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1094	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1128	0	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1097	0	0
// OP_LOAD_F	25517	598	25533
// OP_LT	25533	31	25534
// OP_IFNOT	25534	11	0
// OP_ADDRESS	25517	598	25535
// OP_ADD_F	31	4474	25536
// OP_STOREP_F	25536	25535	0
// OP_STORE_V	25517	4	0
// OP_STORE_V	5878	7	0
// OP_CALL2	1135	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1152	0	0
// OP_RETURN	0	0	0
// OP_NOT_F	3191	0	25537
// OP_IFNOT	25537	3	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1136	0	0
// OP_LOAD_F	25517	599	25538
// OP_SUB_F	31	216	25539
// OP_LT	25538	25539	25540
// OP_IFNOT	25540	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1042	0	0
// OP_NOT_F	1	0	25541
// OP_IFNOT	25541	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1150	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	25517	371	25542
// OP_LT	25542	31	25543
// OP_IFNOT	25543	27	0
// OP_STORE_V	25517	4	0
// OP_LOAD_ENT	25517	181	25544
// OP_STORE_V	25544	7	0
// OP_CALL2	1138	0	0
// OP_STORE_ENT	1	25518	0
// OP_NE_E	25518	30	25545
// OP_LOAD_ENT	25517	194	25546
// OP_LOAD_ENT	25546	194	25547
// OP_NE_E	25518	25547	25548
// OP_AND	25545	25548	25549
// OP_IFNOT	25549	13	0
// OP_LOAD_ENT	25517	194	25550
// OP_ADDRESS	25550	194	25551
// OP_STOREP_ENT	25518	25551	0
// OP_LOAD_ENT	25517	194	25552
// OP_STORE_V	25552	4	0
// OP_LOAD_V	25518	105	25553
// OP_STORE_V	25553	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	25517	371	25556
// OP_ADD_F	31	229	25557
// OP_STOREP_F	25557	25556	0
// OP_GOTO	4	0	0
// OP_ADDRESS	25517	597	25558
// OP_SUB_F	31	214	25559
// OP_STOREP_F	25559	25558	0
// OP_LOAD_F	25517	597	25560
// OP_LT	25560	31	25561
// OP_IFNOT	25561	9	0
// OP_NOT_F	3191	0	25562
// OP_IFNOT	25562	4	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1144	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25517	4	0
// OP_CALL1	1149	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25517	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1123	0	0
// OP_EQ_F	1	733	25563
// OP_IFNOT	25563	5	0
// OP_ADDRESS	25517	371	25564
// OP_LOAD_F	25517	371	25565
// OP_SUB_F	25565	214	25566
// OP_STOREP_F	25566	25564	0
// OP_DONE	0	0	0
void (entity globaldef008140) func002517 = 
{
    local entity globaldef008141;
    
    if(!globaldef008140.enemy)
    {
        func002504(globaldef008140);
        return;
    }
    
    
    if((globaldef008140.enemy.deadflag != DEAD_NO) || (globaldef008140.enemy.health <= FALSE))
    {
        if(CheckBotKillMessage(globaldef008140))
        {
            func002502(globaldef008140);
        }
        else
        {
            func002504(globaldef008140);
        }
        
        return;
    }
    
    enemy_vis = func002392(globaldef008140, globaldef008140.enemy);
    
    if(enemy_vis)
    {
        globaldef008140.field000276 = time;
    }
    
    if((globaldef008140.field000276 + 1.5) > time)
    {
        BotAimAtEnemy(globaldef008140);
    }
    else
    {
        func002468(globaldef008140);
    }
    
    func002397(globaldef008140);
    
    if(globaldef008140.field000275 < time)
    {
        globaldef008140.field000275 = time + 0.6;
        
        if(func002483(globaldef008140, 35))
        {
            func002518(globaldef008140);
            return;
        }
        
    }
    
    
    if(!enemy_vis)
    {
        func002489(globaldef008140);
    }
    
    
    if(globaldef008140.field000276 < (time - FL_SWIM))
    {
        func002504(globaldef008140);
        return;
    }
    
    
    if(!BotWantsToRetreat(globaldef008140))
    {
        func002514(globaldef008140);
        return;
    }
    
    
    if(globaldef008140.search_time < time)
    {
        globaldef008141 = func002492(globaldef008140, globaldef008140.enemy);
        if((globaldef008141 != world) && (globaldef008141 != globaldef008140.goalentity.goalentity))
        {
            globaldef008140.goalentity.goalentity = globaldef008141;
            setorigin(globaldef008140.goalentity, globaldef008141.origin);
            globaldef008140.search_time = time + MOVETYPE_STEP;
        }
        else
        {
            globaldef008140.field000274 = time - TRUE;
        }
        
    }
    
    
    if(globaldef008140.field000274 < time)
    {
        if(!enemy_vis)
        {
            func002504(globaldef008140);
        }
        else
        {
            func002510(globaldef008140);
        }
        
        return;
    }
    
    
    if(BotMoveToGoal(globaldef008140, globaldef000783) == globaldef000716)
    {
        globaldef008140.search_time = globaldef008140.search_time - TRUE;
    }
    
};


// func002518
// function begins at statement 44385, parm_start=25567
// OP_ADDRESS	25567	552	25568
// OP_LOAD_FNC	25567	551	25569
// OP_STOREP_FNC	25569	25568	0
// OP_ADDRESS	25567	551	25570
// OP_STOREP_FNC	1162	25570	0
// OP_DONE	0	0	0
void (entity globaldef008142) func002518 = 
{
    globaldef008142.f_lastai = globaldef008142.f_ai;
    globaldef008142.f_ai = func002520;
};


// func002519
// function begins at statement 44391, parm_start=25571
// OP_ADDRESS	25571	551	25572
// OP_LOAD_FNC	25571	552	25573
// OP_STOREP_FNC	25573	25572	0
// OP_DONE	0	0	0
void (entity globaldef008143) func002519 = 
{
    globaldef008143.f_ai = globaldef008143.f_lastai;
};


// func002520
// function begins at statement 44395, parm_start=25574
// OP_LOAD_ENT	25574	181	25577
// OP_NOT_ENT	25577	0	25578
// OP_IFNOT	25578	4	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	25574	181	25579
// OP_LOAD_F	25579	165	25580
// OP_NE_F	25580	246	25581
// OP_LOAD_ENT	25574	181	25582
// OP_LOAD_F	25582	152	25583
// OP_LE	25583	213	25584
// OP_OR	25581	25584	25585
// OP_IFNOT	25585	10	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1079	0	0
// OP_IFNOT	1	4	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1143	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1144	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25574	4	0
// OP_LOAD_ENT	25574	181	25586
// OP_STORE_V	25586	7	0
// OP_CALL2	1096	0	0
// OP_IFNOT	1	3	0
// OP_ADDRESS	25574	599	25587
// OP_STOREP_F	31	25587	0
// OP_LOAD_F	25574	599	25588
// OP_ADD_F	25588	216	25589
// OP_GT	25589	31	25590
// OP_IFNOT	25590	4	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1094	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1128	0	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1097	0	0
// OP_LOAD_ENT	25574	194	25591
// OP_LOAD_ENT	25591	194	25592
// OP_LOAD_F	25592	104	25593
// OP_EQ_F	25593	237	25594
// OP_LOAD_F	25574	371	25595
// OP_LT	25595	31	25596
// OP_OR	25594	25596	25597
// OP_IFNOT	25597	4	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1153	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	25574	4	0
// OP_STORE_V	800	7	0
// OP_CALL2	1123	0	0
// OP_EQ_F	1	733	25598
// OP_IFNOT	25598	5	0
// OP_ADDRESS	25574	371	25599
// OP_LOAD_F	25574	371	25600
// OP_SUB_F	25600	214	25601
// OP_STOREP_F	25601	25599	0
// OP_STORE_V	25574	4	0
// OP_CALL1	1127	0	0
// OP_NOT_F	1	0	25602
// OP_IFNOT	25602	5	0
// OP_ADDRESS	25574	371	25603
// OP_LOAD_F	25574	371	25604
// OP_SUB_F	25604	214	25605
// OP_STOREP_F	25605	25603	0
// OP_DONE	0	0	0
void (entity globaldef008144) func002520 = 
{
    local float globaldef008145;
    local float globaldef008146;
    
    if(!globaldef008144.enemy)
    {
        func002504(globaldef008144);
        return;
    }
    
    
    if((globaldef008144.enemy.deadflag != DEAD_NO) || (globaldef008144.enemy.health <= FALSE))
    {
        if(CheckBotKillMessage(globaldef008144))
        {
            func002502(globaldef008144);
        }
        else
        {
            func002504(globaldef008144);
        }
        
        return;
    }
    
    
    if(func002392(globaldef008144, globaldef008144.enemy))
    {
        globaldef008144.field000276 = time;
    }
    
    if((globaldef008144.field000276 + FL_SWIM) > time)
    {
        BotAimAtEnemy(globaldef008144);
    }
    else
    {
        func002468(globaldef008144);
    }
    
    func002397(globaldef008144);
    
    if((globaldef008144.goalentity.goalentity.solid == SOLID_NOT) || (globaldef008144.search_time < time))
    {
        func002519(globaldef008144);
        return;
    }
    
    
    if(BotMoveToGoal(globaldef008144, globaldef000783) == globaldef000716)
    {
        globaldef008144.search_time = globaldef008144.search_time - TRUE;
    }
    
    
    if(!func002446(globaldef008144))
    {
        globaldef008144.search_time = globaldef008144.search_time - TRUE;
    }
    
};


// func002521
// function begins at statement 44465, parm_start=25606
// OP_STORE_ENT	834	25606	0
// OP_IFNOT	25606	8	0
// OP_LOAD_ENT	25606	181	25607
// OP_IFNOT	25607	3	0
// OP_STORE_V	25606	4	0
// OP_CALL1	1144	0	0
// OP_LOAD_ENT	25606	620	25608
// OP_STORE_ENT	25608	25606	0
// OP_GOTO	-7	0	0
// OP_DONE	0	0	0
void () func002521 = 
{
    local entity globaldef008147;
    globaldef008147 = firstBot;
    
    while(globaldef008147)
    {
        
        if(globaldef008147.enemy)
        {
            func002504(globaldef008147);
        }
        
        globaldef008147 = globaldef008147.next;
    }
    
};


// func002522
// function begins at statement 44475, parm_start=25609
// OP_STORE_ENT	834	25610	0
// OP_IFNOT	25610	9	0
// OP_LOAD_ENT	25610	181	25611
// OP_EQ_E	25611	25609	25612
// OP_IFNOT	25612	3	0
// OP_STORE_V	25610	4	0
// OP_CALL1	1144	0	0
// OP_LOAD_ENT	25610	620	25613
// OP_STORE_ENT	25613	25610	0
// OP_GOTO	-8	0	0
// OP_DONE	0	0	0
void (entity globaldef008148) func002522 = 
{
    local entity globaldef008149;
    globaldef008149 = firstBot;
    
    while(globaldef008149)
    {
        
        if(globaldef008149.enemy == globaldef008148)
        {
            func002504(globaldef008149);
        }
        
        globaldef008149 = globaldef008149.next;
    }
    
};


// func002523
// function begins at statement 44486, parm_start=25614
// OP_STORE_F	214	816	0
// OP_STORE_ENT	834	25614	0
// OP_IFNOT	25614	6	0
// OP_STORE_V	25614	4	0
// OP_CALL1	1142	0	0
// OP_LOAD_ENT	25614	620	25615
// OP_STORE_ENT	25615	25614	0
// OP_GOTO	-5	0	0
// OP_DONE	0	0	0
void () func002523 = 
{
    local entity globaldef008150;
    gameNotRunning = TRUE;
    globaldef008150 = firstBot;
    
    while(globaldef008150)
    {
        func002500(globaldef008150);
        globaldef008150 = globaldef008150.next;
    }
    
};


// func002524
// function begins at statement 44495, parm_start=25616
// OP_STATE	791	1166	0
// OP_ADDRESS	28	156	25616
// OP_STOREP_F	213	25616	0
// OP_LOAD_F	28	114	25617
// OP_LOAD_F	28	115	25618
// OP_OR	25617	25618	25619
// OP_IFNOT	25619	5	0
// OP_ADDRESS	28	377	25620
// OP_STOREP_F	213	25620	0
// OP_CALL0	1167	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	25621
// OP_EQ_F	25621	253	25622
// OP_IFNOT	25622	11	0
// OP_LOAD_F	28	377	25623
// OP_GE	25623	791	25624
// OP_IFNOT	25624	3	0
// OP_ADDRESS	28	377	25625
// OP_STOREP_F	213	25625	0
// OP_ADDRESS	28	131	25626
// OP_LOAD_F	28	377	25627
// OP_ADD_F	6892	25627	25628
// OP_STOREP_F	25628	25626	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	377	25629
// OP_GE	25629	230	25630
// OP_IFNOT	25630	3	0
// OP_ADDRESS	28	377	25631
// OP_STOREP_F	213	25631	0
// OP_ADDRESS	28	131	25632
// OP_LOAD_F	28	377	25633
// OP_ADD_F	791	25633	25634
// OP_STOREP_F	25634	25632	0
// OP_ADDRESS	28	377	25635
// OP_LOAD_F	28	377	25636
// OP_ADD_F	25636	214	25637
// OP_STOREP_F	25637	25635	0
// OP_STORE_V	276	4	0
// OP_CALL1	1099	0	0
// OP_DONE	0	0	0
void () func002524 = [12, func002524]
{
    self.weaponframe = FALSE;
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = FALSE;
        func002525();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe >= BOTSHIRTPANTS_12)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = 17 + self.walkframe;
    }
    else
    {
        
        if(self.walkframe >= MOVETYPE_FLY)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = BOTSHIRTPANTS_12 + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
    BotThink(CONTENT_EMPTY);
};

