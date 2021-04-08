
// ThrowGib
// function begins at statement 14084, parm_start=9772
// OP_GT	801	742	9775
// OP_IFNOT	9775	2	0
// OP_RETURN	0	0	0
// OP_ADD_F	801	214	9776
// OP_STORE_F	9776	801	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	9774	0
// OP_ADDRESS	9774	105	9777
// OP_LOAD_V	28	105	9780
// OP_STOREP_V	9780	9777	0
// OP_STORE_V	9774	4	0
// OP_STORE_V	9772	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	9774	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	9774	113	9783
// OP_STORE_V	9773	4	0
// OP_CALL1	9748	0	0
// OP_STOREP_V	1	9783	0
// OP_ADDRESS	9774	103	9786
// OP_STOREP_F	235	9786	0
// OP_ADDRESS	9774	104	9787
// OP_STOREP_F	237	9787	0
// OP_ADDRESS	9774	122	9788
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	9789
// OP_STOREP_F	9789	9788	0
// OP_ADDRESS	9774	123	9790
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	9791
// OP_STOREP_F	9791	9790	0
// OP_ADDRESS	9774	124	9792
// OP_CALL0	457	0	0
// OP_MUL_F	1	740	9793
// OP_STOREP_F	9793	9792	0
// OP_ADDRESS	9774	148	9794
// OP_STOREP_FNC	9769	9794	0
// OP_ADDRESS	9774	102	9795
// OP_STOREP_F	31	9795	0
// OP_ADDRESS	9774	150	9796
// OP_ADD_F	31	235	9797
// OP_CALL0	457	0	0
// OP_MUL_F	1	235	9798
// OP_ADD_F	9797	9798	9799
// OP_STOREP_F	9799	9796	0
// OP_ADDRESS	9774	131	9800
// OP_STOREP_F	213	9800	0
// OP_ADDRESS	9774	182	9801
// OP_STOREP_F	213	9801	0
// OP_DONE	0	0	0
void (string globaldef003186, float globaldef003187) ThrowGib = 
{
    local entity globaldef003188;
    
    if(globaldef000784 > globaldef000725)
    {
        return;
    }
    
    globaldef000784 = globaldef000784 + TRUE;
    globaldef003188 = spawn();
    globaldef003188.origin = self.origin;
    setmodel(globaldef003188, globaldef003186);
    setsize(globaldef003188, VEC_ORIGIN, VEC_ORIGIN);
    globaldef003188.velocity = func000459(globaldef003187);
    globaldef003188.movetype = MOVETYPE_BOUNCE;
    globaldef003188.solid = SOLID_NOT;
    globaldef003188.avelocity_x = random() * GLOBALDEFSEVENTWOTHREE;
    globaldef003188.avelocity_y = random() * GLOBALDEFSEVENTWOTHREE;
    globaldef003188.avelocity_z = random() * GLOBALDEFSEVENTWOTHREE;
    globaldef003188.think = func000460;
    globaldef003188.ltime = time;
    globaldef003188.nextthink = (time + MOVETYPE_BOUNCE) + (random() * MOVETYPE_BOUNCE);
    globaldef003188.frame = FALSE;
    globaldef003188.flags = FALSE;
};

