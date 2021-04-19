
// CreateBotGoal
// function begins at statement 41783, parm_start=24030
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	24030	0
// OP_ADDRESS	24030	129	24031
// OP_STOREP_S	24032	24031	0
// OP_ADDRESS	24030	104	24033
// OP_STOREP_F	238	24033	0
// OP_ADDRESS	24030	146	24034
// OP_STOREP_FNC	24012	24034	0
// OP_STORE_V	24030	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	24035	10	0
// OP_CALL3	455	0	0
// OP_RETURN	24030	0	0
// OP_DONE	0	0	0
entity () CreateBotGoal = 
{
    local entity globaldef007855;
    globaldef007855 = spawn();
    globaldef007855.classname = "botgoal";
    globaldef007855.solid = SOLID_TRIGGER;
    globaldef007855.touch = func002469;
    setsize(globaldef007855, '-4 -4 -4', '4 4 8');
    return globaldef007855;
};

