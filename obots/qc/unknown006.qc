
// func002455
// function begins at statement 40897, parm_start=23239
// OP_CALL0	457	0	0
// OP_LOAD_F	28	588	23246
// OP_SUB_F	228	23246	23247
// OP_MUL_F	1	23247	23248
// OP_SUB_F	228	23248	23249
// OP_LT	23249	214	23250
// OP_IFNOT	23250	2	0
// OP_RETURN	213	0	0
// OP_SUB_F	814	809	23251
// OP_MUL_F	23251	235	23252
// OP_STORE_F	23252	23241	0
// OP_GE	23241	1997	23253
// OP_IFNOT	23253	2	0
// OP_RETURN	30	0	0
// OP_SUB_F	814	809	23254
// OP_GT	23254	229	23255
// OP_IFNOT	23255	2	0
// OP_RETURN	30	0	0
// OP_STORE_ENT	30	23244	0
// OP_STORE_ENT	835	23243	0
// OP_IFNOT	23243	35	0
// OP_LOAD_ENT	23243	194	23256
// OP_NE_E	23256	23239	23257
// OP_IFNOT	23257	29	0
// OP_LOAD_ENT	23243	194	23258
// OP_LOAD_F	23258	152	23259
// OP_GT	23259	213	23260
// OP_IFNOT	23260	25	0
// OP_LOAD_ENT	23243	194	23261
// OP_LOAD_F	23261	607	23262
// OP_LOAD_F	23239	607	23263
// OP_EQ_F	23262	23263	23264
// OP_AND	37	23264	23265
// OP_NOT_F	23265	0	23266
// OP_IFNOT	23266	18	0
// OP_LOAD_ENT	23243	194	23267
// OP_LOAD_F	23267	182	23268
// OP_BITAND	23268	221	23269
// OP_NOT_F	23269	0	23270
// OP_IFNOT	23270	13	0
// OP_LOAD_FNC	23243	550	23271
// OP_STORE_V	23239	4	0
// OP_STORE_V	23243	7	0
// OP_CALL2	23271	0	0
// OP_STORE_F	1	23240	0
// OP_GT	23240	23241	23272
// OP_IFNOT	23272	6	0
// OP_STORE_F	23240	23241	0
// OP_LOAD_ENT	23243	194	23273
// OP_STORE_ENT	23273	23244	0
// OP_LOAD_F	23243	426	23274
// OP_STORE_F	23274	23242	0
// OP_LOAD_ENT	23243	620	23275
// OP_STORE_ENT	23275	23243	0
// OP_GOTO	-34	0	0
// OP_RETURN	23244	0	0
// OP_DONE	0	0	0
entity (entity globaldef007660) func002455 = 
{
    local float globaldef007661;
    local float globaldef007662;
    local float globaldef007663;
    local entity globaldef007664;
    local entity globaldef007665;
    local string globaldef007666;
    
    if((MOVETYPE_WALK - (random() * (MOVETYPE_WALK - self.field000265))) < TRUE)
    {
        return FALSE;
    }
    
    globaldef007662 = (activeClientCount - globaldef000792) * MOVETYPE_BOUNCE;
    
    if(globaldef007662 >= 100)
    {
        return world;
    }
    
    
    if((activeClientCount - globaldef000792) > MOVETYPE_STEP)
    {
        return world;
    }
    
    globaldef007665 = world;
    globaldef007664 = globaldef000818;
    
    while(globaldef007664)
    {
        
        if(globaldef007664.goalentity != globaldef007660)
        {
            
            if(globaldef007664.goalentity.health > FALSE)
            {
                
                if(!(teamplay && (globaldef007664.goalentity.field000284 == globaldef007660.field000284)))
                {
                    
                    if(!(globaldef007664.goalentity.flags & FL_NOTARGET))
                    {
                        globaldef007661 = globaldef007664.f_sndweight(globaldef007660, globaldef007664);
                        
                        if(globaldef007661 > globaldef007662)
                        {
                            globaldef007662 = globaldef007661;
                            globaldef007665 = globaldef007664.goalentity;
                            globaldef007663 = globaldef007664.cnt;
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        globaldef007664 = globaldef007664.next;
    }
    
    return globaldef007665;
};

