
// BotChooseTelefragMessage
// function begins at statement 33777, parm_start=18365
// OP_CALL0	457	0	0
// OP_STORE_F	1	18366	0
// OP_MUL_F	18366	217	18367
// OP_STORE_V	18367	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	18366	0
// OP_LE	18366	213	18368
// OP_IFNOT	18368	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18369	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	56	0	0
// OP_LE	18366	214	18370
// OP_IFNOT	18370	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18371	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	48	0	0
// OP_LE	18366	216	18372
// OP_IFNOT	18372	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18373	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	40	0	0
// OP_LE	18366	228	18374
// OP_IFNOT	18374	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18375	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	32	0	0
// OP_LE	18366	229	18376
// OP_IFNOT	18376	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18377	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	24	0	0
// OP_LE	18366	230	18378
// OP_IFNOT	18378	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18379	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	16	0	0
// OP_LE	18366	231	18380
// OP_IFNOT	18380	7	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18381	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_GOTO	8	0	0
// OP_LE	18366	232	18382
// OP_IFNOT	18382	6	0
// OP_STORE_V	18365	4	0
// OP_STORE_V	18383	7	0
// OP_STORE_V	16700	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	1073	0	0
// OP_DONE	0	0	0
void (entity globaldef006464) BotChooseTelefragMessage = 
{
    local float globaldef006465;
    globaldef006465 = random();
    globaldef006465 = floor(globaldef006465 * FL_CLIENT);
    if(globaldef006465 <= FALSE)
    {
        func002369(globaldef006464, "smooth", globaldef005812, FALSE);
    }
    else
    {
        if(globaldef006465 <= TRUE)
        {
            func002369(globaldef006464, "Whack! right in the kisser", globaldef005812, FALSE);
        }
        else
        {
            if(globaldef006465 <= FL_SWIM)
            {
                func002369(globaldef006464, "SPAM!!!", globaldef005812, FALSE);
            }
            else
            {
                if(globaldef006465 <= MOVETYPE_WALK)
                {
                    func002369(globaldef006464, "does it hurt?", globaldef005812, FALSE);
                }
                else
                {
                    if(globaldef006465 <= MOVETYPE_STEP)
                    {
                        func002369(globaldef006464, ":)", globaldef005812, FALSE);
                    }
                    else
                    {
                        if(globaldef006465 <= MOVETYPE_FLY)
                        {
                            func002369(globaldef006464, "ultimate kill", globaldef005812, FALSE);
                        }
                        else
                        {
                            if(globaldef006465 <= MOVETYPE_TOSS)
                            {
                                func002369(globaldef006464, "wow", globaldef005812, FALSE);
                            }
                            else
                            {
                                
                                if(globaldef006465 <= MOVETYPE_PUSH)
                                {
                                    func002369(globaldef006464, "ding!", globaldef005812, FALSE);
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};


// func002286
// function begins at statement 33847, parm_start=18384
// OP_CALL0	457	0	0
// OP_STORE_F	1	18385	0
// OP_MUL_F	18385	12465	18386
// OP_STORE_V	18386	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	18385	0
// OP_LE	18385	213	18387
// OP_IFNOT	18387	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18388	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	140	0	0
// OP_LE	18385	214	18389
// OP_IFNOT	18389	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18390	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	133	0	0
// OP_LE	18385	216	18391
// OP_IFNOT	18391	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18392	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	126	0	0
// OP_LE	18385	228	18393
// OP_IFNOT	18393	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18394	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	119	0	0
// OP_LE	18385	229	18395
// OP_IFNOT	18395	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18396	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	112	0	0
// OP_LE	18385	230	18397
// OP_IFNOT	18397	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18398	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	105	0	0
// OP_LE	18385	231	18399
// OP_IFNOT	18399	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18400	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	98	0	0
// OP_LE	18385	232	18401
// OP_IFNOT	18401	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18402	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	91	0	0
// OP_LE	18385	217	18403
// OP_IFNOT	18403	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18404	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	84	0	0
// OP_LE	18385	234	18405
// OP_IFNOT	18405	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18406	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	77	0	0
// OP_LE	18385	235	18407
// OP_IFNOT	18407	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18408	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	70	0	0
// OP_LE	18385	236	18409
// OP_IFNOT	18409	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18377	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	63	0	0
// OP_LE	18385	791	18410
// OP_IFNOT	18410	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18381	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	56	0	0
// OP_LE	18385	792	18411
// OP_IFNOT	18411	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18412	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	49	0	0
// OP_LE	18385	5693	18413
// OP_IFNOT	18413	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18414	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	42	0	0
// OP_LE	18385	765	18415
// OP_IFNOT	18415	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18416	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	35	0	0
// OP_LE	18385	218	18417
// OP_IFNOT	18417	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18418	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	28	0	0
// OP_LE	18385	6892	18419
// OP_IFNOT	18419	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18420	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	21	0	0
// OP_LE	18385	6133	18421
// OP_IFNOT	18421	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18422	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	14	0	0
// OP_LE	18385	6895	18423
// OP_IFNOT	18423	6	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18424	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_GOTO	7	0	0
// OP_LE	18385	2323	18425
// OP_IFNOT	18425	5	0
// OP_STORE_V	18384	4	0
// OP_STORE_V	18426	7	0
// OP_STORE_V	16700	10	0
// OP_CALL3	1070	0	0
// OP_DONE	0	0	0
void (entity globaldef006474) func002286 = 
{
    local float globaldef006475;
    globaldef006475 = random();
    globaldef006475 = floor(globaldef006475 * 21);
    if(globaldef006475 <= FALSE)
    {
        func002366(globaldef006474, "hihi", globaldef005812);
    }
    else
    {
        if(globaldef006475 <= TRUE)
        {
            func002366(globaldef006474, "hehe", globaldef005812);
        }
        else
        {
            if(globaldef006475 <= FL_SWIM)
            {
                func002366(globaldef006474, "hahaha", globaldef005812);
            }
            else
            {
                if(globaldef006475 <= MOVETYPE_WALK)
                {
                    func002366(globaldef006474, "I'll put you in backpack mode", globaldef005812);
                }
                else
                {
                    if(globaldef006475 <= MOVETYPE_STEP)
                    {
                        func002366(globaldef006474, "you're boring", globaldef005812);
                    }
                    else
                    {
                        if(globaldef006475 <= MOVETYPE_FLY)
                        {
                            func002366(globaldef006474, "you really suck at quake", globaldef005812);
                        }
                        else
                        {
                            if(globaldef006475 <= MOVETYPE_TOSS)
                            {
                                func002366(globaldef006474, "let's rock", globaldef005812);
                            }
                            else
                            {
                                if(globaldef006475 <= MOVETYPE_PUSH)
                                {
                                    func002366(globaldef006474, "whoa!!", globaldef005812);
                                }
                                else
                                {
                                    if(globaldef006475 <= FL_CLIENT)
                                    {
                                        func002366(globaldef006474, "let's play another game", globaldef005812);
                                    }
                                    else
                                    {
                                        if(globaldef006475 <= MOVETYPE_FLYMISSILE)
                                        {
                                            func002366(globaldef006474, "I've had it for today", globaldef005812);
                                        }
                                        else
                                        {
                                            if(globaldef006475 <= MOVETYPE_BOUNCE)
                                            {
                                                func002366(globaldef006474, "DUH!!!", globaldef005812);
                                            }
                                            else
                                            {
                                                if(globaldef006475 <= MOVETYPE_BOUNCEMISSILE)
                                                {
                                                    func002366(globaldef006474, ":)", globaldef005812);
                                                }
                                                else
                                                {
                                                    if(globaldef006475 <= GLOBALDEF774_12)
                                                    {
                                                        func002366(globaldef006474, "wow", globaldef005812);
                                                    }
                                                    else
                                                    {
                                                        if(globaldef006475 <= GLOBALDEF775_13)
                                                        {
                                                            func002366(globaldef006474, "weeeee", globaldef005812);
                                                        }
                                                        else
                                                        {
                                                            if(globaldef006475 <= 14)
                                                            {
                                                                func002366(globaldef006474, "I'm on a roll", globaldef005812);
                                                            }
                                                            else
                                                            {
                                                                if(globaldef006475 <= GLOBALDEF748_15)
                                                                {
                                                                    func002366(globaldef006474, "this rocks", globaldef005812);
                                                                }
                                                                else
                                                                {
                                                                    if(globaldef006475 <= FL_INWATER)
                                                                    {
                                                                        func002366(globaldef006474, "aaah", globaldef005812);
                                                                    }
                                                                    else
                                                                    {
                                                                        if(globaldef006475 <= 17)
                                                                        {
                                                                            func002366(globaldef006474, "groovy", globaldef005812);
                                                                        }
                                                                        else
                                                                        {
                                                                            if(globaldef006475 <= 18)
                                                                            {
                                                                                func002366(globaldef006474, "grrrrr", globaldef005812);
                                                                            }
                                                                            else
                                                                            {
                                                                                if(globaldef006475 <= 19)
                                                                                {
                                                                                    func002366(globaldef006474, "!!", globaldef005812);
                                                                                }
                                                                                else
                                                                                {
                                                                                    
                                                                                    if(globaldef006475 <= 20)
                                                                                    {
                                                                                        func002366(globaldef006474, "nice!", globaldef005812);
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
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

