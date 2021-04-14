
// AddBots
// function begins at statement 38427, parm_start=21234
// OP_IFNOT	37	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	21234	4	0
// OP_CALL1	21203	0	0
// OP_STORE_ENT	1	21235	0
// OP_NOT_ENT	21235	0	21236
// OP_IFNOT	21236	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	21235	184	21237
// OP_STOREP_F	9989	21237	0
// OP_ADDRESS	21235	180	21238
// OP_LOAD_F	21235	609	21239
// OP_STORE_V	21239	4	0
// OP_CALL1	1085	0	0
// OP_STOREP_S	1	21238	0
// OP_ADDRESS	21235	610	21240
// OP_LOAD_F	21235	609	21241
// OP_STORE_V	21241	4	0
// OP_CALL1	1087	0	0
// OP_STOREP_F	1	21240	0
// OP_NOT_F	822	0	21242
// OP_IFNOT	21242	9	0
// OP_ADDRESS	21235	132	21243
// OP_STOREP_F	213	21243	0
// OP_ADDRESS	21235	574	21244
// OP_LOAD_F	21235	609	21245
// OP_STOREP_F	21245	21244	0
// OP_ADDRESS	21235	572	21246
// OP_LOAD_F	21235	609	21247
// OP_STOREP_F	21247	21246	0
// OP_LOAD_F	21235	608	21248
// OP_STORE_V	21248	4	0
// OP_LOAD_S	21235	180	21249
// OP_STORE_V	21249	7	0
// OP_CALL2	1050	0	0
// OP_LOAD_F	21235	608	21250
// OP_STORE_V	21250	4	0
// OP_LOAD_F	21235	153	21251
// OP_STORE_V	21251	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_F	21235	608	21252
// OP_STORE_V	21252	4	0
// OP_LOAD_F	21235	610	21253
// OP_STORE_V	21253	7	0
// OP_CALL2	1052	0	0
// OP_LOAD_S	21235	180	21254
// OP_STORE_V	21254	4	0
// OP_CALL1	472	0	0
// OP_STORE_V	9064	4	0
// OP_CALL1	472	0	0
// OP_DONE	0	0	0
void (float globaldef007118) AddBots = 
{
    local entity globaldef007119;
    
    if(teamplay)
    {
        return;
    }
    
    globaldef007119 = func002420(globaldef007118);
    
    if(!globaldef007119)
    {
        return;
    }
    
    globaldef007119.team = 99;
    globaldef007119.netname = BotName(globaldef007119.field000286);
    globaldef007119.clientcolor = BotShirtPantsColor(globaldef007119.field000286);
    
    if(!globaldef000805)
    {
        globaldef007119.skin = FALSE;
        globaldef007119.field000251 = globaldef007119.field000286;
        globaldef007119.field000249 = globaldef007119.field000286;
    }
    
    msgUpdateClientNameToAll(globaldef007119.clientnumber, globaldef007119.netname);
    msgUpdateClientFragsToAll(globaldef007119.clientnumber, globaldef007119.frags);
    msgUpdateClientColorsToAll(globaldef007119.clientnumber, globaldef007119.clientcolor);
    bprint(globaldef007119.netname);
    bprint(" entered the game\n");
};


// AddRandomDeathmatchBot
// function begins at statement 38478, parm_start=21255
// OP_CALL0	20992	0	0
// OP_STORE_F	1	21255	0
// OP_STORE_V	21255	4	0
// OP_CALL1	1104	0	0
// OP_DONE	0	0	0
void () AddRandomDeathmatchBot = 
{
    local float globaldef007120;
    globaldef007120 = func002416();
    AddBots(globaldef007120);
};


// RemoveAllBots
// function begins at statement 38483, parm_start=21256
// OP_STORE_ENT	834	21256	0
// OP_IFNOT	21256	6	0
// OP_STORE_V	21256	4	0
// OP_CALL1	1100	0	0
// OP_LOAD_ENT	21256	620	21257
// OP_STORE_ENT	21257	21256	0
// OP_GOTO	-5	0	0
// OP_DONE	0	0	0
void () RemoveAllBots = 
{
    local entity globaldef007121;
    globaldef007121 = firstBot;
    
    while(globaldef007121)
    {
        func002417(globaldef007121);
        globaldef007121 = globaldef007121.next;
    }
    
};


// RemoveOneDeathmatchBot
// function begins at statement 38491, parm_start=21258
// OP_STORE_ENT	834	21258	0
// OP_IFNOT	21258	5	0
// OP_STORE_V	21258	4	0
// OP_CALL1	1078	0	0
// OP_STORE_V	21258	4	0
// OP_CALL1	1100	0	0
// OP_DONE	0	0	0
void () RemoveOneDeathmatchBot = 
{
    local entity globaldef007122;
    globaldef007122 = firstBot;
    
    if(globaldef007122)
    {
        func002376(globaldef007122);
        func002417(globaldef007122);
    }
    
};

