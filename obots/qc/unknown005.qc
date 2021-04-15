
// func002444
// function begins at statement 40543, parm_start=22954
// OP_LOAD_F	22954	186	22961
// OP_GT	22961	31	22962
// OP_IFNOT	22962	2	0
// OP_RETURN	213	0	0
// OP_GT	22956	800	22963
// OP_IFNOT	22963	2	0
// OP_STORE_F	800	22956	0
// OP_STORE_F	800	22956	0
// OP_STORE_V	286	22957	0
// OP_STORE_F	22955	22958	0
// OP_STORE_V	22957	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	22954	4	0
// OP_STORE_V	59	7	0
// OP_STORE_V	22956	10	0
// OP_STORE_V	213	13	0
// OP_CALL4	22870	0	0
// OP_STORE_F	1	22960	0
// OP_IFNOT	22960	3	0
// OP_ADDRESS	22954	113	22964
// OP_STOREP_V	286	22964	0
// OP_NOT_F	22960	0	22967
// OP_RETURN	22967	0	0
// OP_DONE	0	0	0
float (entity globaldef007585, float globaldef007586, float globaldef007587) func002444 = 
{
    local vector globaldef007588;
    local float globaldef007592;
    
    if(globaldef007585.teleport_time > time)
    {
        return FALSE;
    }
    
    
    if(globaldef007587 > globaldef000783)
    {
    }
    
    globaldef007587 = globaldef007587 = globaldef000783;
    globaldef007588 = VEC_ORIGIN;
    globaldef007588_y = globaldef007586;
    makevectors(globaldef007588);
    globaldef007592 = func002441(globaldef007585, v_forward, globaldef007587, FALSE);
    
    if(globaldef007592)
    {
        globaldef007585.velocity = VEC_ORIGIN;
    }
    
    return !globaldef007592;
};


// func002445
// function begins at statement 40567, parm_start=22968
// OP_LOAD_F	22968	186	22975
// OP_GT	22975	31	22976
// OP_IFNOT	22976	2	0
// OP_RETURN	213	0	0
// OP_GT	22970	800	22977
// OP_IFNOT	22977	2	0
// OP_STORE_F	800	22970	0
// OP_STORE_F	800	22970	0
// OP_STORE_V	286	22971	0
// OP_STORE_F	22969	22972	0
// OP_STORE_V	22971	4	0
// OP_CALL1	452	0	0
// OP_STORE_V	22968	4	0
// OP_STORE_V	59	7	0
// OP_STORE_V	22970	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	22870	0	0
// OP_STORE_F	1	22974	0
// OP_IFNOT	22974	3	0
// OP_ADDRESS	22968	113	22978
// OP_STOREP_V	286	22978	0
// OP_NOT_F	22974	0	22981
// OP_RETURN	22981	0	0
// OP_DONE	0	0	0
float (entity globaldef007593, float globaldef007594, float globaldef007595) func002445 = 
{
    local vector globaldef007596;
    local float globaldef007600;
    
    if(globaldef007593.teleport_time > time)
    {
        return FALSE;
    }
    
    
    if(globaldef007595 > globaldef000783)
    {
    }
    
    globaldef007595 = globaldef007595 = globaldef000783;
    globaldef007596 = VEC_ORIGIN;
    globaldef007596_y = globaldef007594;
    makevectors(globaldef007596);
    globaldef007600 = func002441(globaldef007593, v_forward, globaldef007595, TRUE);
    
    if(globaldef007600)
    {
        globaldef007593.velocity = VEC_ORIGIN;
    }
    
    return !globaldef007600;
};


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
    
    
    if(globaldef007601.botflags & globaldef000697)
    {
        return TRUE;
    }
    
    
    if(!(globaldef007601.botflags & globaldef000683))
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

