
// GetClientEntity
// function begins at statement 27424, parm_start=16232
// OP_STORE_V	30	4	0
// OP_CALL1	492	0	0
// OP_STORE_ENT	1	16233	0
// OP_STORE_F	213	16234	0
// OP_LT	16234	813	16235
// OP_IFNOT	16235	10	0
// OP_EQ_F	16234	16232	16236
// OP_IFNOT	16236	2	0
// OP_RETURN	16233	0	0
// OP_ADD_F	16234	214	16237
// OP_STORE_F	16237	16234	0
// OP_STORE_V	16233	4	0
// OP_CALL1	492	0	0
// OP_STORE_ENT	1	16233	0
// OP_GOTO	-10	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (float globaldef005699) GetClientEntity = 
{
    local entity globaldef005700;
    local float globaldef005701;
    globaldef005700 = nextent(world);
    globaldef005701 = FALSE;
    
    while(globaldef005701 < maxClients)
    {
        
        if(globaldef005701 == globaldef005699)
        {
            return globaldef005700;
        }
        
        globaldef005701 = globaldef005701 + TRUE;
        globaldef005700 = nextent(globaldef005700);
    }
    
    return world;
};


// func002267
// function begins at statement 27441, parm_start=16238
// OP_ADDRESS	16238	132	16240
// OP_LOAD_F	16239	574	16241
// OP_STOREP_F	16241	16240	0
// OP_ADDRESS	16238	93	16242
// OP_LOAD_F	16239	573	16243
// OP_STOREP_F	16243	16242	0
// OP_ADDRESS	16238	130	16244
// OP_STOREP_S	6684	16244	0
// OP_DONE	0	0	0
void (entity globaldef005702, entity globaldef005703) func002267 = 
{
    globaldef005702.skin = globaldef005703.field000251;
    globaldef005702.modelindex = globaldef005703.clmodelindex;
    globaldef005702.model = "progs/player.mdl";
};

