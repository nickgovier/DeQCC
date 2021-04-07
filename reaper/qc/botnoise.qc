// noisetarget
// function begins at statement 22605, parm_start=13110
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	13110	0
// OP_ADDRESS	13110	129	13111
// OP_STOREP_S	13112	13111	0
// OP_ADDRESS	13110	104	13113
// OP_STOREP_F	237	13113	0
// OP_STORE_V	13110	4	0
// OP_STORE_V	1481	7	0
// OP_STORE_V	1484	10	0
// OP_CALL3	450	0	0
// OP_RETURN	13110	0	0
// OP_DONE	0	0	0
entity () noisetarget = 
{
    local entity targ;
    targ = spawn();
    targ.classname = "NoiseTarget";
    targ.solid = SOLID_NOT;
    setsize(targ, '-8 -8 -8', '8 8 8');
    return targ;
};

// removenoise
// function begins at statement 22617, parm_start=13115
// OP_ADDRESS	622	194	13115
// OP_STOREP_ENT	30	13115	0
// OP_ADDRESS	622	418	13116
// OP_STOREP_ENT	30	13116	0
// OP_DONE	0	0	0
void () removenoise = 
{
    NOISEQUEUE.goalentity = world;
    NOISEQUEUE.movetarget = world;
};

// signalnoise
// function begins at statement 22622, parm_start=13117
// OP_LOAD_S	13117	129	13119
// OP_NE_S	13119	1102	13120
// OP_IFNOT	13120	2	0
// OP_RETURN	0	0	0
// OP_NOT_ENT	622	0	13121
// OP_IFNOT	13121	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	622	194	13122
// OP_STOREP_ENT	13117	13122	0
// OP_ADDRESS	622	418	13123
// OP_STOREP_ENT	13118	13123	0
// OP_ADDRESS	622	148	13124
// OP_STOREP_FNC	13114	13124	0
// OP_ADDRESS	622	150	13125
// OP_ADD_F	31	214	13126
// OP_STOREP_F	13126	13125	0
// OP_DONE	0	0	0
void (entity noisemaker, entity noiseobject) signalnoise = 
{
    
    if(noisemaker.classname != "player")
    {
        return;
    }
    
    
    if(!NOISEQUEUE)
    {
        return;
    }
    
    NOISEQUEUE.goalentity = noisemaker;
    NOISEQUEUE.movetarget = noiseobject;
    NOISEQUEUE.think = removenoise;
    NOISEQUEUE.nextthink = time + TRUE;
};

// hearnoise
// function begins at statement 22639, parm_start=13127
// OP_LOAD_F	28	553	13129
// OP_LT	13129	214	13130
// OP_IFNOT	13130	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	553	13131
// OP_LT	13131	216	13132
// OP_IFNOT	13132	8	0
// OP_CALL0	452	0	0
// OP_ADD_F	1	1222	13133
// OP_STORE_F	13133	13128	0
// OP_LOAD_F	28	553	13134
// OP_LT	13134	13128	13135
// OP_IFNOT	13135	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	622	194	13136
// OP_EQ_E	13136	13127	13137
// OP_IFNOT	13137	29	0
// OP_LOAD_S	28	571	13138
// OP_STORE_V	13138	4	0
// OP_CALL1	470	0	0
// OP_LOAD_S	28	129	13139
// OP_STORE_V	13139	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	13140	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	622	194	13141
// OP_LOAD_S	13141	180	13142
// OP_STORE_V	13142	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	622	418	13143
// OP_LOAD_S	13143	129	13144
// OP_EQ_S	13144	1102	13145
// OP_IFNOT	13145	4	0
// OP_STORE_V	13146	4	0
// OP_CALL1	470	0	0
// OP_GOTO	9	0	0
// OP_STORE_V	13147	4	0
// OP_CALL1	470	0	0
// OP_LOAD_ENT	622	418	13148
// OP_LOAD_S	13148	129	13149
// OP_STORE_V	13149	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	2184	4	0
// OP_CALL1	470	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity e) hearnoise = 
{
    local float rnd;
    
    if(self.skil < TRUE)
    {
        return FALSE;
    }
    
    
    if(self.skil < FL_SWIM)
    {
        rnd = random() + 0.9;
        
        if(self.skil < rnd)
        {
            return FALSE;
        }
        
    }
    
    
    if(NOISEQUEUE.goalentity == e)
    {
        dprint(self.teamname);
        dprint(self.classname);
        dprint(" heard ");
        dprint(NOISEQUEUE.goalentity.netname);
        if(NOISEQUEUE.movetarget.classname == "player")
        {
            dprint(" shoot\n");
        }
        else
        {
            dprint(" trigger ");
            dprint(NOISEQUEUE.movetarget.classname);
            dprint("\n");
        }
        
        return TRUE;
    }
    
    return FALSE;
};

// heardistantnoise
// function begins at statement 22686, parm_start=13151
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity e) heardistantnoise = 
{
    return FALSE;
};

