
// func002639
// function begins at statement 53301, parm_start=28144
// OP_STORE_ENT	833	28144	0
// OP_IFNOT	28144	13	0
// OP_LOAD_F	28144	575	28145
// OP_BITAND	28145	703	28146
// OP_IFNOT	28146	7	0
// OP_SUB_F	802	214	28147
// OP_STORE_F	28147	802	0
// OP_ADDRESS	28144	575	28148
// OP_LOAD_F	28144	575	28149
// OP_SUB_F	28149	703	28150
// OP_STOREP_F	28150	28148	0
// OP_LOAD_ENT	28144	620	28151
// OP_STORE_ENT	28151	28144	0
// OP_GOTO	-12	0	0
// OP_STORE_ENT	834	28144	0
// OP_IFNOT	28144	13	0
// OP_LOAD_F	28144	575	28152
// OP_BITAND	28152	703	28153
// OP_IFNOT	28153	7	0
// OP_SUB_F	802	214	28154
// OP_STORE_F	28154	802	0
// OP_ADDRESS	28144	575	28155
// OP_LOAD_F	28144	575	28156
// OP_SUB_F	28156	703	28157
// OP_STOREP_F	28157	28155	0
// OP_LOAD_ENT	28144	620	28158
// OP_STORE_ENT	28158	28144	0
// OP_GOTO	-12	0	0
// OP_DONE	0	0	0
void () func002639 = 
{
    local entity globaldef008982;
    globaldef008982 = firstClient;
    
    while(globaldef008982)
    {
        
        if(globaldef008982.botflags & globaldef000686)
        {
            globaldef000785 = globaldef000785 - TRUE;
            globaldef008982.botflags = globaldef008982.botflags - globaldef000686;
        }
        
        globaldef008982 = globaldef008982.next;
    }
    
    globaldef008982 = firstBot;
    
    while(globaldef008982)
    {
        
        if(globaldef008982.botflags & globaldef000686)
        {
            globaldef000785 = globaldef000785 - TRUE;
            globaldef008982.botflags = globaldef008982.botflags - globaldef000686;
        }
        
        globaldef008982 = globaldef008982.next;
    }
    
};

