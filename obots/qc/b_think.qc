
// BotPostThink
// function begins at statement 37900, parm_start=20941
// OP_STORE_V	28	4	0
// OP_CALL1	20773	0	0
// OP_CALL0	20919	0	0
// OP_CALL0	8832	0	0
// OP_CALL0	20922	0	0
// OP_CALL0	8559	0	0
// OP_ADDRESS	28	580	20941
// OP_LOAD_V	28	105	20944
// OP_STOREP_V	20944	20941	0
// OP_ADDRESS	28	576	20947
// OP_LOAD_V	28	113	20950
// OP_STOREP_V	20950	20947	0
// OP_ADDRESS	28	584	20953
// OP_LOAD_F	28	182	20954
// OP_STOREP_F	20954	20953	0
// OP_ADDRESS	28	585	20955
// OP_LOAD_F	28	575	20956
// OP_STOREP_F	20956	20955	0
// OP_ADDRESS	28	182	20957
// OP_LOAD_F	28	182	20958
// OP_LOAD_F	28	182	20959
// OP_BITAND	20959	223	20960
// OP_SUB_F	20958	20960	20961
// OP_STOREP_F	20961	20957	0
// OP_ADDRESS	28	586	20962
// OP_STOREP_ENT	30	20962	0
// OP_DONE	0	0	0
void () BotPostThink = 
{
    func002400(self);
    func002406();
    CheckPowerups();
    func002407();
    CheckRules();
    self.old_origin = self.origin;
    self.old_velocity = self.velocity;
    self.old_flags = self.flags;
    self.old_botflags = self.botflags;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.field000263 = world;
};


// BotPreThink
// function begins at statement 37927, parm_start=20964
// OP_LOAD_F	28	575	20964
// OP_BITAND	20964	703	20965
// OP_IFNOT	20965	2	0
// OP_CALL0	1196	0	0
// OP_BITAND	821	767	20966
// OP_IFNOT	20966	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1216	0	0
// OP_DONE	0	0	0
void () BotPreThink = 
{
    
    if(self.botflags & globaldef000686)
    {
        func002680();
    }
    
    
    if(obot_game_option_bitflags & OBOT_ROCKETARENA)
    {
        rocket_arena_prethink(self);
    }
    
};


// BotThink
// function begins at statement 37936, parm_start=20967
// OP_CALL0	20963	0	0
// OP_LOAD_F	28	588	20968
// OP_GT	20968	20967	20969
// OP_IFNOT	20969	3	0
// OP_STORE_V	28	4	0
// OP_CALL1	1141	0	0
// OP_CALL0	20940	0	0
// OP_DONE	0	0	0
void (float sk) BotThink = 
{
    BotPreThink();
    
    if(self.botskill > sk)
    {
        BotAI(self);
    }
    
    BotPostThink();
};

