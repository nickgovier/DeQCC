
// BotJumpToGoal
// function begins at statement 40527, parm_start=22948
// OP_LOAD_F	22948	186	22951
// OP_GT	22951	31	22952
// OP_IFNOT	22952	2	0
// OP_RETURN	728	0	0
// OP_GT	22949	800	22953
// OP_IFNOT	22953	2	0
// OP_STORE_F	800	22949	0
// OP_STORE_F	800	22949	0
// OP_STORE_V	22948	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	22949	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	22870	0	0
// OP_STORE_F	1	22950	0
// OP_RETURN	22950	0	0
// OP_DONE	0	0	0
float (entity globaldef007582, float globaldef007583) BotJumpToGoal = 
{
    local float globaldef007584;
    
    if(globaldef007582.teleport_time > time)
    {
        return globaldef000711;
    }
    
    
    if(globaldef007583 > globaldef000783)
    {
    }
    
    globaldef007583 = globaldef007583 = globaldef000783;
    globaldef007584 = func002441(globaldef007582, VEC_ORIGIN, globaldef007583, TRUE);
    return globaldef007584;
};

