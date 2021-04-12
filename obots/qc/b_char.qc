
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

