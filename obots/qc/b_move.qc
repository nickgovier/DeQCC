
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
float (entity bot, float botspeed) BotJumpToGoal = 
{
    local float obstacle;
    
    if(bot.teleport_time > time)
    {
        return OBSTACLE_TELEPORT;
    }
    
    
    if(botspeed > globaldef000783)
    {
    }
    
    botspeed = botspeed = globaldef000783;
    obstacle = func002441(bot, VEC_ORIGIN, botspeed, TRUE);
    return obstacle;
};

