
// func002691
// function begins at statement 56040, parm_start=29545
// OP_LOAD_F	29545	575	29556
// OP_BITAND	29556	703	29557
// OP_LOAD_ENT	29545	622	29558
// OP_NE_E	29558	30	29559
// OP_AND	29557	29559	29560
// OP_IFNOT	29560	4	0
// OP_LOAD_ENT	29545	622	29561
// OP_RETURN	29561	0	0
// OP_GOTO	46	0	0
// OP_LOAD_S	29545	129	29562
// OP_EQ_S	29562	23508	29563
// OP_IFNOT	29563	3	0
// OP_RETURN	29545	0	0
// OP_GOTO	41	0	0
// OP_STORE_F	737	29549	0
// OP_STORE_ENT	30	29547	0
// OP_STORE_ENT	836	29546	0
// OP_IFNOT	29546	35	0
// OP_LOAD_V	29545	105	29564
// OP_STORE_V	29564	29550	0
// OP_LOAD_V	29546	105	29567
// OP_STORE_V	29567	29553	0
// OP_SUB_F	29550	29553	29570
// OP_STORE_V	29570	4	0
// OP_CALL1	488	0	0
// OP_LT	1	737	29571
// OP_IFNOT	29571	23	0
// OP_SUB_F	29551	29554	29572
// OP_STORE_V	29572	4	0
// OP_CALL1	488	0	0
// OP_LT	1	737	29573
// OP_IFNOT	29573	18	0
// OP_SUB_F	29552	29555	29574
// OP_STORE_V	29574	4	0
// OP_CALL1	488	0	0
// OP_LT	1	737	29575
// OP_IFNOT	29575	13	0
// OP_SUB_V	29550	29553	29576
// OP_STORE_V	29576	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	29548	0
// OP_LT	29548	29549	29579
// OP_IFNOT	29579	7	0
// OP_STORE_V	29546	4	0
// OP_STORE_V	29545	7	0
// OP_CALL2	1119	0	0
// OP_IFNOT	1	3	0
// OP_STORE_F	29548	29549	0
// OP_STORE_ENT	29546	29547	0
// OP_LOAD_ENT	29546	620	29580
// OP_STORE_ENT	29580	29546	0
// OP_GOTO	-34	0	0
// OP_IFNOT	29547	2	0
// OP_RETURN	29547	0	0
// OP_RETURN	30	0	0
// OP_DONE	0	0	0
entity (entity globaldef009262) func002691 = 
{
    local entity globaldef009263;
    local entity globaldef009264;
    local float globaldef009265;
    local float globaldef009266;
    local vector globaldef009267;
    local vector globaldef009271;
    if((globaldef009262.field000252 & globaldef000686) && (globaldef009262.field000299 != world))
    {
        return globaldef009262.field000299;
    }
    else
    {
        if(globaldef009262.classname == "waypoint")
        {
            return globaldef009262;
        }
        else
        {
            globaldef009266 = globaldef000720;
            globaldef009264 = world;
            globaldef009263 = globaldef000819;
            
            while(globaldef009263)
            {
                globaldef009267 = globaldef009262.origin;
                globaldef009271 = globaldef009263.origin;
                
                if((fabs(globaldef009267_x - globaldef009271_x)) < globaldef000720)
                {
                    
                    if((fabs(globaldef009267_y - globaldef009271_y)) < globaldef000720)
                    {
                        
                        if((fabs(globaldef009267_z - globaldef009271_z)) < globaldef000720)
                        {
                            globaldef009265 = vlen(globaldef009267 - globaldef009271);
                            
                            if(globaldef009265 < globaldef009266)
                            {
                                
                                if(func002467(globaldef009263, globaldef009262))
                                {
                                    globaldef009266 = globaldef009265;
                                    globaldef009264 = globaldef009263;
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
                globaldef009263 = globaldef009263.field000297;
            }
            
            
            if(globaldef009264)
            {
                return globaldef009264;
            }
            
        }
        
    }
    
    return world;
};


// func002692
// function begins at statement 56096, parm_start=29581
// OP_NOT_ENT	29582	0	29584
// OP_IFNOT	29584	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	29581	0	29585
// OP_IFNOT	29585	3	0
// OP_STORE_V	29586	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	29581	547	29587
// OP_STOREP_FNC	28231	29587	0
// OP_STORE_ENT	836	29583	0
// OP_IFNOT	29583	8	0
// OP_ADDRESS	29583	646	29588
// OP_STOREP_ENT	30	29588	0
// OP_ADDRESS	29583	656	29589
// OP_STOREP_F	213	29589	0
// OP_LOAD_ENT	29583	620	29590
// OP_STORE_ENT	29590	29583	0
// OP_GOTO	-7	0	0
// OP_STORE_V	29581	4	0
// OP_STORE_V	29582	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	29581	13	0
// OP_CALL4	1201	0	0
// OP_DONE	0	0	0
void (entity globaldef009275, entity globaldef009276) func002692 = 
{
    local entity globaldef009277;
    
    if(!globaldef009276)
    {
        return;
    }
    
    
    if(!globaldef009275)
    {
        objerror("can't cache the world\n");
    }
    
    globaldef009275.field000224 = func002648;
    globaldef009277 = globaldef000819;
    
    while(globaldef009277)
    {
        globaldef009277.field000323 = world;
        globaldef009277.field000333 = FALSE;
        globaldef009277 = globaldef009277.field000297;
    }
    
    func002683(globaldef009275, globaldef009276, FALSE, globaldef009275);
};

