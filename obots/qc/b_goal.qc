
// func002469
// function begins at statement 41760, parm_start=24013
// OP_LOAD_ENT	29	194	24013
// OP_NE_E	24013	28	24014
// OP_IFNOT	24014	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	194	24015
// OP_LOAD_S	24015	129	24016
// OP_NE_S	24016	1236	24017
// OP_LOAD_ENT	28	194	24018
// OP_LOAD_S	24018	129	24019
// OP_NE_S	24019	1241	24020
// OP_AND	24017	24020	24021
// OP_IFNOT	24021	11	0
// OP_ADDRESS	29	598	24022
// OP_SUB_F	31	214	24023
// OP_STOREP_F	24023	24022	0
// OP_LOAD_ENT	28	194	24024
// OP_LOAD_S	24024	129	24025
// OP_NE_S	24025	24026	24027
// OP_IFNOT	24027	4	0
// OP_ADDRESS	29	371	24028
// OP_SUB_F	31	214	24029
// OP_STOREP_F	24029	24028	0
// OP_DONE	0	0	0
void () func002469 = 
{
    
    if(other.goalentity != self)
    {
        return;
    }
    
    
    if((self.goalentity.classname != "player") && (self.goalentity.classname != "bot"))
    {
        other.field000275 = time - TRUE;
        
        if(self.goalentity.classname != "func_button")
        {
            other.search_time = time - TRUE;
        }
        
    }
    
};


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

