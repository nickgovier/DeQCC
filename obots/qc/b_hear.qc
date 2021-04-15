
// CreateBotSound
// function begins at statement 40814, parm_start=23183
// OP_LOAD_S	23183	129	23190
// OP_NE_S	23190	1236	23191
// OP_IFNOT	23191	5	0
// OP_LOAD_S	23183	129	23192
// OP_NE_S	23192	1241	23193
// OP_IFNOT	23193	2	0
// OP_RETURN	0	0	0
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	23189	0
// OP_ADDRESS	23189	129	23194
// OP_STOREP_S	23195	23194	0
// OP_ADDRESS	23189	104	23196
// OP_STOREP_F	237	23196	0
// OP_STORE_V	23189	4	0
// OP_STORE_V	23197	7	0
// OP_STORE_V	23200	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	23189	194	23203
// OP_STOREP_ENT	23183	23203	0
// OP_STORE_V	23189	4	0
// OP_STORE_V	23184	7	0
// OP_CALL2	453	0	0
// OP_ADDRESS	23189	426	23204
// OP_STOREP_F	23188	23204	0
// OP_EQ_F	23188	756	23205
// OP_IFNOT	23205	4	0
// OP_ADDRESS	23189	550	23206
// OP_STOREP_FNC	23031	23206	0
// OP_GOTO	20	0	0
// OP_EQ_F	23188	757	23207
// OP_IFNOT	23207	4	0
// OP_ADDRESS	23189	550	23208
// OP_STOREP_FNC	23058	23208	0
// OP_GOTO	15	0	0
// OP_EQ_F	23188	758	23209
// OP_IFNOT	23209	4	0
// OP_ADDRESS	23189	550	23210
// OP_STOREP_FNC	23085	23210	0
// OP_GOTO	10	0	0
// OP_EQ_F	23188	759	23211
// OP_IFNOT	23211	4	0
// OP_ADDRESS	23189	550	23212
// OP_STOREP_FNC	23145	23212	0
// OP_GOTO	5	0	0
// OP_EQ_F	23188	760	23213
// OP_IFNOT	23213	3	0
// OP_ADDRESS	23189	550	23214
// OP_STOREP_FNC	23112	23214	0
// OP_IFNOT	835	3	0
// OP_ADDRESS	835	621	23215
// OP_STOREP_ENT	23189	23215	0
// OP_ADDRESS	23189	620	23216
// OP_STOREP_ENT	835	23216	0
// OP_ADDRESS	23189	621	23217
// OP_STOREP_ENT	30	23217	0
// OP_STORE_ENT	23189	835	0
// OP_ADD_F	818	214	23218
// OP_STORE_F	23218	818	0
// OP_ADDRESS	23189	148	23219
// OP_STOREP_FNC	23172	23219	0
// OP_ADDRESS	23189	150	23220
// OP_MUL_F	23187	216	23221
// OP_ADD_F	31	23221	23222
// OP_STOREP_F	23222	23220	0
// OP_DONE	0	0	0
void (entity cause, vector spot, float duration, float type) CreateBotSound = 
{
    local entity botsound;
    
    if(cause.classname != "player")
    {
        
        if(cause.classname != "bot")
        {
            return;
        }
        
    }
    
    botsound = spawn();
    botsound.classname = "botsound";
    botsound.solid = SOLID_NOT;
    setsize(botsound, '-4 -4 -4', '4 4 4');
    botsound.goalentity = cause;
    setorigin(botsound, spot);
    botsound.cnt = type;
    if(type == globaldef000739)
    {
        botsound.field000227 = func002447;
    }
    else
    {
        if(type == globaldef000740)
        {
            botsound.field000227 = func002448;
        }
        else
        {
            if(type == globaldef000741)
            {
                botsound.field000227 = func002449;
            }
            else
            {
                if(type == globaldef000742)
                {
                    botsound.field000227 = func002451;
                }
                else
                {
                    
                    if(type == globaldef000743)
                    {
                        botsound.field000227 = func002450;
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(globaldef000818)
    {
        globaldef000818.prev = botsound;
    }
    
    botsound.next = globaldef000818;
    botsound.prev = world;
    globaldef000818 = botsound;
    globaldef000801 = globaldef000801 + TRUE;
    botsound.think = func002452;
    botsound.nextthink = time + (duration * FL_SWIM);
};


// Hearable
// function begins at statement 40879, parm_start=23223
// OP_STORE_ENT	835	23225	0
// OP_IFNOT	23225	15	0
// OP_LOAD_ENT	23225	194	23226
// OP_EQ_E	23226	23224	23227
// OP_IFNOT	23227	9	0
// OP_LOAD_V	23225	105	23228
// OP_LOAD_V	23223	105	23231
// OP_SUB_V	23228	23231	23234
// OP_STORE_V	23234	4	0
// OP_CALL1	462	0	0
// OP_LT	1	1663	23237
// OP_IFNOT	23237	2	0
// OP_RETURN	214	0	0
// OP_LOAD_ENT	23225	620	23238
// OP_STORE_ENT	23238	23225	0
// OP_GOTO	-14	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity ear, entity e) Hearable = 
{
    local entity check;
    check = globaldef000818;
    
    while(check)
    {
        
        if(check.goalentity == e)
        {
            
            if((vlen(check.origin - ear.origin)) < 1000)
            {
                return TRUE;
            }
            
        }
        
        check = check.next;
    }
    
    return FALSE;
};

