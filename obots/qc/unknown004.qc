
// func002411
// function begins at statement 37944, parm_start=20971
// OP_STORE_F	214	20972	0
// OP_ADD_F	20971	214	20973
// OP_STORE_F	20973	20971	0
// OP_GT	20971	214	20974
// OP_IFNOT	20974	6	0
// OP_MUL_F	20972	216	20975
// OP_STORE_F	20975	20972	0
// OP_SUB_F	20971	214	20976
// OP_STORE_F	20976	20971	0
// OP_GOTO	-6	0	0
// OP_RETURN	20972	0	0
// OP_DONE	0	0	0
float (float globaldef007090) func002411 = 
{
    local float globaldef007091;
    globaldef007091 = TRUE;
    globaldef007090 = globaldef007090 + TRUE;
    
    while(globaldef007090 > TRUE)
    {
        globaldef007091 = globaldef007091 * FL_SWIM;
        globaldef007090 = globaldef007090 - TRUE;
    }
    
    return globaldef007091;
};


// func002412
// function begins at statement 37956, parm_start=20978
// OP_STORE_V	20978	4	0
// OP_CALL1	20970	0	0
// OP_BITAND	811	1	20979
// OP_IFNOT	20979	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float globaldef007093) func002412 = 
{
    
    if(globaldef000794 & func002411(globaldef007093))
    {
        return TRUE;
    }
    
    return FALSE;
};


// func002413
// function begins at statement 37963, parm_start=20981
// OP_STORE_V	20981	4	0
// OP_CALL1	20970	0	0
// OP_BITOR	811	1	20982
// OP_STORE_F	20982	811	0
// OP_DONE	0	0	0
void (float globaldef007095) func002413 = 
{
    globaldef000794 = globaldef000794 | func002411(globaldef007095);
};


// func002414
// function begins at statement 37968, parm_start=20984
// OP_STORE_V	20984	4	0
// OP_CALL1	20970	0	0
// OP_BITAND	811	1	20985
// OP_SUB_F	811	20985	20986
// OP_STORE_F	20986	811	0
// OP_DONE	0	0	0
void (float globaldef007097) func002414 = 
{
    globaldef000794 = globaldef000794 - (globaldef000794 & func002411(globaldef007097));
};


// func002415
// function begins at statement 37974, parm_start=20988
// OP_STORE_F	213	20988	0
// OP_LT	20988	736	20989
// OP_IFNOT	20989	9	0
// OP_STORE_V	20988	4	0
// OP_CALL1	20977	0	0
// OP_NOT_F	1	0	20990
// OP_IFNOT	20990	2	0
// OP_RETURN	20988	0	0
// OP_ADD_F	20988	214	20991
// OP_STORE_F	20991	20988	0
// OP_GOTO	-9	0	0
// OP_RETURN	276	0	0
// OP_DONE	0	0	0
float () func002415 = 
{
    local float globaldef007099;
    globaldef007099 = FALSE;
    
    while(globaldef007099 < OBOT_MAXBOTS)
    {
        
        if(!func002412(globaldef007099))
        {
            return globaldef007099;
        }
        
        globaldef007099 = globaldef007099 + TRUE;
    }
    
    return CONTENT_EMPTY;
};


// func002416
// function begins at statement 37987, parm_start=20993
// OP_CALL0	457	0	0
// OP_SUB_F	736	214	20994
// OP_MUL_F	1	20994	20995
// OP_ADD_F	20995	539	20996
// OP_STORE_V	20996	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	20993	0
// OP_EQ_F	20993	213	20997
// OP_IFNOT	20997	8	0
// OP_CALL0	457	0	0
// OP_SUB_F	736	214	20998
// OP_MUL_F	1	20998	20999
// OP_ADD_F	20999	539	21000
// OP_STORE_V	21000	4	0
// OP_CALL1	484	0	0
// OP_STORE_F	1	20993	0
// OP_STORE_V	20993	4	0
// OP_CALL1	20977	0	0
// OP_IF	1	-18	0
// OP_RETURN	20993	0	0
// OP_DONE	0	0	0
float () func002416 = 
{
    local float globaldef007101;
    do
    {
        globaldef007101 = floor((random() * (OBOT_MAXBOTS - TRUE)) + RA_PLAYERSTATTIME);
        
        if(globaldef007101 == FALSE)
        {
            globaldef007101 = floor((random() * (OBOT_MAXBOTS - TRUE)) + RA_PLAYERSTATTIME);
        }
        
    } while (func002412(globaldef007101));
    return globaldef007101;
};

