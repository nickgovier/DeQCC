// T_BeamDamage
// function begins at statement 4172, parm_start=4267
// OP_LOAD_V	4267	105	4271
// OP_STORE_V	4271	4	0
// OP_ADD_F	4268	746	4274
// OP_STORE_V	4274	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	4270	0
// OP_IFNOT	4270	43	0
// OP_LOAD_F	4270	163	4275
// OP_IFNOT	4275	38	0
// OP_LOAD_V	4267	105	4276
// OP_LOAD_V	4270	105	4279
// OP_SUB_V	4276	4279	4282
// OP_STORE_V	4282	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	539	1	4285
// OP_STORE_F	4285	4269	0
// OP_LT	4269	213	4286
// OP_IFNOT	4286	2	0
// OP_STORE_F	213	4269	0
// OP_SUB_F	4268	4269	4287
// OP_STORE_F	4287	4269	0
// OP_EQ_E	4270	4267	4288
// OP_IFNOT	4288	3	0
// OP_MUL_F	4269	539	4289
// OP_STORE_F	4289	4269	0
// OP_GT	4269	213	4290
// OP_IFNOT	4290	20	0
// OP_STORE_V	4270	4	0
// OP_STORE_V	4267	7	0
// OP_CALL2	524	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	4270	129	4291
// OP_EQ_S	4291	3661	4292
// OP_IFNOT	4292	8	0
// OP_STORE_V	4270	4	0
// OP_STORE_V	4267	7	0
// OP_STORE_V	4267	10	0
// OP_MUL_F	4269	539	4293
// OP_STORE_V	4293	13	0
// OP_CALL4	522	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	4270	4	0
// OP_STORE_V	4267	7	0
// OP_STORE_V	4267	10	0
// OP_STORE_V	4269	13	0
// OP_CALL4	522	0	0
// OP_LOAD_ENT	4270	164	4294
// OP_STORE_ENT	4294	4270	0
// OP_GOTO	-42	0	0
// OP_DONE	0	0	0
void (entity globaldef001784, float globaldef001785) T_BeamDamage = 
{
    local float globaldef001786;
    local entity globaldef001787;
    globaldef001787 = findradius(globaldef001784.origin, globaldef001785 + globaldef000729);
    
    while(globaldef001787)
    {
        
        if(globaldef001787.takedamage)
        {
            globaldef001786 = globaldef000522 * (vlen(globaldef001784.origin - globaldef001787.origin));
            
            if(globaldef001786 < FALSE)
            {
                globaldef001786 = FALSE;
            }
            
            globaldef001786 = globaldef001785 - globaldef001786;
            
            if(globaldef001787 == globaldef001784)
            {
                globaldef001786 = globaldef001786 * globaldef000522;
            }
            
            
            if(globaldef001786 > FALSE)
            {
                
                if(func000199(globaldef001787, globaldef001784))
                {
                    if(globaldef001787.classname == "monster_shambler")
                    {
                        func000201(globaldef001787, globaldef001784, globaldef001784, globaldef001786 * globaldef000522);
                    }
                    else
                    {
                        func000201(globaldef001787, globaldef001784, globaldef001784, globaldef001786);
                    }
                    
                }
                
            }
            
        }
        
        globaldef001787 = globaldef001787.chain;
    }
    
};

