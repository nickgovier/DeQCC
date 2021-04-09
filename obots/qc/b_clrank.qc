float MSG_UPDATENAME = 13;
float MSG_UPDATEFRAGS = 14;
float MSG_UPDATECOLORS = 17;

// InitMaxClients
// function begins at statement 27279, parm_start=16186
// OP_STORE_V	30	4	0
// OP_CALL1	492	0	0
// OP_STORE_ENT	1	16186	0
// OP_LOAD_S	16186	129	16187
// OP_NE_S	16187	16188	16189
// OP_IFNOT	16189	7	0
// OP_ADD_F	813	214	16190
// OP_STORE_F	16190	813	0
// OP_STORE_V	16186	4	0
// OP_CALL1	492	0	0
// OP_STORE_ENT	1	16186	0
// OP_GOTO	-8	0	0
// OP_DONE	0	0	0
void () InitMaxClients = 
{
    local entity ent;
    ent = nextent(world);
    
    while(ent.classname != "worldspawn")
    {
        maxClients = maxClients + TRUE;
        ent = nextent(ent);
    }
    
};


// clientBitFlag
// function begins at statement 27292, parm_start=16192
// OP_STORE_F	214	16193	0
// OP_ADD_F	16192	214	16194
// OP_STORE_F	16194	16192	0
// OP_GT	16192	214	16195
// OP_IFNOT	16195	6	0
// OP_MUL_F	16193	216	16196
// OP_STORE_F	16196	16193	0
// OP_SUB_F	16192	214	16197
// OP_STORE_F	16197	16192	0
// OP_GOTO	-6	0	0
// OP_RETURN	16193	0	0
// OP_DONE	0	0	0
float (float clnumber) clientBitFlag = 
{
    local float bitflag;
    bitflag = TRUE;
    clnumber = clnumber + TRUE;
    
    while(clnumber > TRUE)
    {
        bitflag = bitflag * FL_SWIM;
        clnumber = clnumber - TRUE;
    }
    
    return bitflag;
};


// ClientIsActive
// function begins at statement 27304, parm_start=16198
// OP_STORE_V	16198	4	0
// OP_CALL1	16191	0	0
// OP_BITAND	812	1	16199
// OP_IFNOT	16199	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (float clnumber) ClientIsActive = 
{
    
    if(activeClientBitmask & clientBitFlag(clnumber))
    {
        return TRUE;
    }
    
    return FALSE;
};


// ActiveClientCount
// function begins at statement 27311, parm_start=16201
// OP_STORE_F	213	16202	0
// OP_STORE_F	213	16201	0
// OP_LT	16201	813	16203
// OP_IFNOT	16203	9	0
// OP_STORE_V	16201	4	0
// OP_CALL1	1047	0	0
// OP_IFNOT	1	3	0
// OP_ADD_F	16202	214	16204
// OP_STORE_F	16204	16202	0
// OP_ADD_F	16201	214	16205
// OP_STORE_F	16205	16201	0
// OP_GOTO	-9	0	0
// OP_RETURN	16202	0	0
// OP_DONE	0	0	0
float () ActiveClientCount = 
{
    local float index;
    local float num_active;
    num_active = FALSE;
    index = FALSE;
    
    while(index < maxClients)
    {
        
        if(ClientIsActive(index))
        {
            num_active = num_active + TRUE;
        }
        
        index = index + TRUE;
    }
    
    return num_active;
};


// SetClientNumberUsed
// function begins at statement 27325, parm_start=16206
// OP_STORE_V	16206	4	0
// OP_CALL1	16191	0	0
// OP_BITOR	812	1	16207
// OP_STORE_F	16207	812	0
// OP_CALL0	16200	0	0
// OP_STORE_F	1	814	0
// OP_DONE	0	0	0
void (float clnumber) SetClientNumberUsed = 
{
    activeClientBitmask = activeClientBitmask | clientBitFlag(clnumber);
    activeClientCount = ActiveClientCount();
};


// SetClientNumberFree
// function begins at statement 27332, parm_start=16208
// OP_STORE_V	16208	4	0
// OP_CALL1	16191	0	0
// OP_BITAND	812	1	16209
// OP_SUB_F	812	16209	16210
// OP_STORE_F	16210	812	0
// OP_CALL0	16200	0	0
// OP_STORE_F	1	814	0
// OP_DONE	0	0	0
void (float clnumber) SetClientNumberFree = 
{
    activeClientBitmask = activeClientBitmask - (activeClientBitmask & clientBitFlag(clnumber));
    activeClientCount = ActiveClientCount();
};


// NextAvailableClientNumber
// function begins at statement 27340, parm_start=16211
// OP_STORE_F	213	16211	0
// OP_LT	16211	813	16212
// OP_IFNOT	16212	9	0
// OP_STORE_V	16211	4	0
// OP_CALL1	1047	0	0
// OP_NOT_F	1	0	16213
// OP_IFNOT	16213	2	0
// OP_RETURN	16211	0	0
// OP_ADD_F	16211	214	16214
// OP_STORE_F	16214	16211	0
// OP_GOTO	-9	0	0
// OP_RETURN	276	0	0
// OP_DONE	0	0	0
float () NextAvailableClientNumber = 
{
    local float clnumber;
    clnumber = FALSE;
    
    while(clnumber < maxClients)
    {
        
        if(!ClientIsActive(clnumber))
        {
            return clnumber;
        }
        
        clnumber = clnumber + TRUE;
    }
    
    return CONTENT_EMPTY;
};


// msgUpdateClientNameToAll
// function begins at statement 27353, parm_start=16215
// OP_STORE_V	344	4	0
// OP_STORE_V	16183	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	16215	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	16216	7	0
// OP_CALL2	502	0	0
// OP_DONE	0	0	0
void (float clnumber, string n) msgUpdateClientNameToAll = 
{
    WriteByte(MSG_ALL, MSG_UPDATENAME);
    WriteByte(MSG_ALL, clnumber);
    WriteString(MSG_ALL, n);
};


// msgUpdateClientFragsToAll
// function begins at statement 27363, parm_start=16217
// OP_STORE_V	344	4	0
// OP_STORE_V	16184	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	16217	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	16218	7	0
// OP_CALL2	498	0	0
// OP_DONE	0	0	0
void (float clnumber, float f) msgUpdateClientFragsToAll = 
{
    WriteByte(MSG_ALL, MSG_UPDATEFRAGS);
    WriteByte(MSG_ALL, clnumber);
    WriteShort(MSG_ALL, f);
};


// msgUpdateClientColorsToAll
// function begins at statement 27373, parm_start=16219
// OP_STORE_V	344	4	0
// OP_STORE_V	16185	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	16219	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	16220	7	0
// OP_CALL2	496	0	0
// OP_DONE	0	0	0
void (float clnumber, float c) msgUpdateClientColorsToAll = 
{
    WriteByte(MSG_ALL, MSG_UPDATECOLORS);
    WriteByte(MSG_ALL, clnumber);
    WriteByte(MSG_ALL, c);
};


// msgUpdateAllClientSettingsToAll
// function begins at statement 27383, parm_start=16221
// OP_STORE_F	213	16222	0
// OP_LT	16222	813	16223
// OP_IFNOT	16223	11	0
// OP_STORE_V	16222	4	0
// OP_CALL1	1047	0	0
// OP_NOT_F	1	0	16224
// OP_IFNOT	16224	4	0
// OP_STORE_V	16222	4	0
// OP_STORE_V	3002	7	0
// OP_CALL2	1050	0	0
// OP_ADD_F	16222	214	16225
// OP_STORE_F	16225	16222	0
// OP_GOTO	-11	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	16221	0
// OP_IFNOT	16221	22	0
// OP_LOAD_F	16221	608	16226
// OP_STORE_V	16226	4	0
// OP_LOAD_S	16221	180	16227
// OP_STORE_V	16227	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	16221	608	16228
// OP_STORE_V	16228	4	0
// OP_LOAD_F	16221	153	16229
// OP_STORE_V	16229	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	16221	608	16230
// OP_STORE_V	16230	4	0
// OP_LOAD_F	16221	610	16231
// OP_STORE_V	16231	7	0
// OP_CALL2	1052	0	0
// OP_STORE_V	16221	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1241	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	16221	0
// OP_GOTO	-21	0	0
// OP_DONE	0	0	0
void () msgUpdateAllClientSettingsToAll = 
{
    local entity bot;
    local float index;
    index = FALSE;
    
    while(index < maxClients)
    {
        
        if(!ClientIsActive(index))
        {
            msgUpdateClientNameToAll(index, "");
        }
        
        index = index + TRUE;
    }
    
    bot = find(world, classname, "bot");
    
    while(bot)
    {
        msgUpdateClientNameToAll(bot.clientnumber, bot.netname);
        msgUpdateClientFragsToAll(bot.clientnumber, bot.frags);
        msgUpdateClientColorsToAll(bot.clientnumber, bot.clientcolor);
        bot = find(bot, classname, "bot");
    }
    
};

