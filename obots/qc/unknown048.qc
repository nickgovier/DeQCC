float globaldef003599;
float globaldef003600;
void (vector globaldef005434, vector globaldef005438) func002072;
// func000638
// function begins at statement 17754, parm_start=12062
// OP_LOAD_F	28	195	12062
// OP_BITAND	12062	12059	12063
// OP_IFNOT	12063	13	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	12064	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12065
// OP_STORE_V	12065	4	0
// OP_LOAD_V	28	202	12068
// OP_STORE_V	12068	7	0
// OP_CALL2	12060	0	0
// OP_GOTO	21	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	5365	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	28	105	12071
// OP_STORE_V	12071	4	0
// OP_LOAD_V	28	202	12074
// OP_STORE_V	12074	7	0
// OP_CALL2	6018	0	0
// OP_ADDRESS	350	113	12077
// OP_LOAD_V	28	202	12080
// OP_MUL_VF	12080	745	12083
// OP_STOREP_V	12083	12077	0
// OP_LOAD_F	28	195	12086
// OP_BITAND	12086	12058	12087
// OP_IFNOT	12087	3	0
// OP_ADDRESS	350	146	12088
// OP_STOREP_FNC	6017	12088	0
// OP_DONE	0	0	0
void () func000638 = 
{
    if(self.spawnflags & globaldef003600)
    {
        sound(self, CHAN_VOICE, "enforcer/enfire.wav", TRUE, ATTN_NORM);
        func002072(self.origin, self.movedir);
    }
    else
    {
        sound(self, CHAN_VOICE, "weapons/spike2.wav", TRUE, ATTN_NORM);
        func000278(self.origin, self.movedir);
        newmis.velocity = self.movedir * globaldef000728;
        
        if(self.spawnflags & globaldef003599)
        {
            newmis.touch = func000282;
        }
        
    }
    
};

// func000639
// function begins at statement 17790, parm_start=12090
// OP_CALL0	12061	0	0
// OP_ADDRESS	28	150	12090
// OP_LOAD_F	28	418	12091
// OP_ADD_F	31	12091	12092
// OP_STOREP_F	12092	12090	0
// OP_ADDRESS	350	113	12093
// OP_LOAD_V	28	202	12096
// OP_MUL_VF	12096	745	12099
// OP_STOREP_V	12099	12093	0
// OP_DONE	0	0	0
void () func000639 = 
{
    func000638();
    self.nextthink = time + self.wait;
    newmis.velocity = self.movedir * globaldef000728;
};

// func000640
// function begins at statement 17800, parm_start=12103
// OP_CALL0	2956	0	0
// OP_ADDRESS	28	147	12103
// OP_STOREP_FNC	12061	12103	0
// OP_LOAD_F	28	195	12104
// OP_BITAND	12104	12059	12105
// OP_IFNOT	12105	8	0
// OP_STORE_V	12106	4	0
// OP_CALL1	510	0	0
// OP_STORE_V	12064	4	0
// OP_CALL1	511	0	0
// OP_STORE_V	12107	4	0
// OP_CALL1	511	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	5365	4	0
// OP_CALL1	469	0	0
// OP_DONE	0	0	0
void () func000640 = 
{
    SetMovedir();
    self.use = func000638;
    if(self.spawnflags & globaldef003600)
    {
        precache_model2("progs/laser.mdl");
        precache_sound2("enforcer/enfire.wav");
        precache_sound2("enforcer/enfstop.wav");
    }
    else
    {
        precache_sound("weapons/spike2.wav");
    }
    
};

