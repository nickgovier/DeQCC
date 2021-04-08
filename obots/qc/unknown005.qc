
// func000202
// function begins at statement 4114, parm_start=4217
// OP_LOAD_V	4217	105	4226
// OP_STORE_V	4226	4	0
// OP_ADD_F	4219	746	4229
// OP_STORE_V	4229	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	4222	0
// OP_IFNOT	4222	51	0
// OP_NE_E	4222	4220	4230
// OP_IFNOT	4230	46	0
// OP_LOAD_F	4222	163	4231
// OP_IFNOT	4231	44	0
// OP_LOAD_V	4222	105	4232
// OP_LOAD_V	4222	134	4235
// OP_LOAD_V	4222	138	4238
// OP_ADD_V	4235	4238	4241
// OP_MUL_VF	4241	539	4244
// OP_ADD_V	4232	4244	4247
// OP_STORE_V	4247	4223	0
// OP_LOAD_V	4217	105	4250
// OP_SUB_V	4250	4223	4253
// OP_STORE_V	4253	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	539	1	4256
// OP_STORE_F	4256	4221	0
// OP_LT	4221	213	4257
// OP_IFNOT	4257	2	0
// OP_STORE_F	213	4221	0
// OP_SUB_F	4219	4221	4258
// OP_STORE_F	4258	4221	0
// OP_EQ_E	4222	4218	4259
// OP_IFNOT	4259	3	0
// OP_MUL_F	4221	539	4260
// OP_STORE_F	4260	4221	0
// OP_GT	4221	213	4261
// OP_IFNOT	4261	20	0
// OP_STORE_V	4222	4	0
// OP_STORE_V	4217	7	0
// OP_CALL2	524	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	4222	129	4262
// OP_EQ_S	4262	3661	4263
// OP_IFNOT	4263	8	0
// OP_STORE_V	4222	4	0
// OP_STORE_V	4217	7	0
// OP_STORE_V	4218	10	0
// OP_MUL_F	4221	539	4264
// OP_STORE_V	4264	13	0
// OP_CALL4	522	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	4222	4	0
// OP_STORE_V	4217	7	0
// OP_STORE_V	4218	10	0
// OP_STORE_V	4221	13	0
// OP_CALL4	522	0	0
// OP_LOAD_ENT	4222	164	4265
// OP_STORE_ENT	4265	4222	0
// OP_GOTO	-50	0	0
// OP_DONE	0	0	0
void (entity globaldef001773, entity globaldef001774, float globaldef001775, entity globaldef001776) func000202 = 
{
    local float globaldef001777;
    local entity globaldef001778;
    local vector globaldef001779;
    globaldef001778 = findradius(globaldef001773.origin, globaldef001775 + globaldef000729);
    
    while(globaldef001778)
    {
        
        if(globaldef001778 != globaldef001776)
        {
            
            if(globaldef001778.takedamage)
            {
                globaldef001779 = globaldef001778.origin + ((globaldef001778.mins + globaldef001778.maxs) * globaldef000522);
                globaldef001777 = globaldef000522 * (vlen(globaldef001773.origin - globaldef001779));
                
                if(globaldef001777 < FALSE)
                {
                    globaldef001777 = FALSE;
                }
                
                globaldef001777 = globaldef001775 - globaldef001777;
                
                if(globaldef001778 == globaldef001774)
                {
                    globaldef001777 = globaldef001777 * globaldef000522;
                }
                
                
                if(globaldef001777 > FALSE)
                {
                    
                    if(CanDamage(globaldef001778, globaldef001773))
                    {
                        if(globaldef001778.classname == "monster_shambler")
                        {
                            T_Damage(globaldef001778, globaldef001773, globaldef001774, globaldef001777 * globaldef000522);
                        }
                        else
                        {
                            T_Damage(globaldef001778, globaldef001773, globaldef001774, globaldef001777);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        globaldef001778 = globaldef001778.chain;
    }
    
};

