
// func002446
// function begins at statement 40591, parm_start=22982
// OP_LOAD_F	22982	182	22990
// OP_BITAND	22990	225	22991
// OP_IFNOT	22991	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	22982	575	22992
// OP_BITAND	22992	714	22993
// OP_IFNOT	22993	2	0
// OP_RETURN	214	0	0
// OP_LOAD_F	22982	575	22994
// OP_BITAND	22994	700	22995
// OP_NOT_F	22995	0	22996
// OP_IFNOT	22996	2	0
// OP_RETURN	214	0	0
// OP_STORE_V	22982	4	0
// OP_CALL1	1115	0	0
// OP_IFNOT	1	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	22982	613	22997
// OP_STORE_ENT	22997	22983	0
// OP_ADDRESS	22982	613	22998
// OP_LOAD_ENT	22982	194	22999
// OP_LOAD_ENT	22999	194	23000
// OP_STOREP_ENT	23000	22998	0
// OP_LOAD_ENT	22982	194	23001
// OP_LOAD_ENT	23001	194	23002
// OP_EQ_E	22983	23002	23003
// OP_IFNOT	23003	19	0
// OP_LOAD_ENT	22982	194	23004
// OP_LOAD_V	23004	105	23005
// OP_LOAD_V	22982	580	23008
// OP_SUB_V	23005	23008	23011
// OP_STORE_V	23011	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	22986	0
// OP_LOAD_ENT	22982	194	23014
// OP_LOAD_V	23014	105	23015
// OP_LOAD_V	22982	105	23018
// OP_SUB_V	23015	23018	23021
// OP_STORE_V	23021	4	0
// OP_CALL1	462	0	0
// OP_STORE_F	1	22985	0
// OP_SUB_F	22986	218	23024
// OP_GT	22985	23024	23025
// OP_IFNOT	23025	2	0
// OP_RETURN	213	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float (entity globaldef007601) func002446 = 
{
    local entity globaldef007602;
    local entity globaldef007603;
    local float globaldef007604;
    local float globaldef007605;
    local vector globaldef007606;
    
    if(globaldef007601.flags & FL_WATERJUMP)
    {
        return TRUE;
    }
    
    
    if(globaldef007601.botflags & GLOBALDEF697_16384)
    {
        return TRUE;
    }
    
    
    if(!(globaldef007601.botflags & GLOBALDEF683_1))
    {
        return TRUE;
    }
    
    
    if(BotIsOnMovingPlatDoorTrain(globaldef007601))
    {
        return TRUE;
    }
    
    globaldef007602 = globaldef007601.field000290;
    globaldef007601.field000290 = globaldef007601.goalentity.goalentity;
    
    if(globaldef007602 == globaldef007601.goalentity.goalentity)
    {
        globaldef007605 = vlen(globaldef007601.goalentity.origin - globaldef007601.old_origin);
        globaldef007604 = vlen(globaldef007601.goalentity.origin - globaldef007601.origin);
        
        if(globaldef007604 > (globaldef007605 - FL_INWATER))
        {
            return FALSE;
        }
        
    }
    
    return TRUE;
};

