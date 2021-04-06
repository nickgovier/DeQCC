entity globaldef003439;
entity globaldef003440;
entity globaldef003441;
entity globaldef003442;
// trigger_reactivate
// function begins at statement 16056, parm_start=11004
// OP_ADDRESS	28	104	11004
// OP_STOREP_F	238	11004	0
// OP_DONE	0	0	0
void () trigger_reactivate = 
{
    self.solid = SOLID_TRIGGER;
};

// trigger_multiple
// function begins at statement 16217, parm_start=11097
// OP_CALL0	11064	0	0
// OP_DONE	0	0	0
void () trigger_multiple = 
{
    func000576();
};

// trigger_once
// function begins at statement 16219, parm_start=11098
// OP_ADDRESS	28	418	11098
// OP_STOREP_F	276	11098	0
// OP_CALL0	11064	0	0
// OP_DONE	0	0	0
void () trigger_once = 
{
    self.wait = CONTENT_EMPTY;
    func000576();
};

// trigger_relay
// function begins at statement 16223, parm_start=11100
// OP_ADDRESS	28	147	11100
// OP_STOREP_FNC	520	11100	0
// OP_DONE	0	0	0
void () trigger_relay = 
{
    self.use = SUB_UseTargets;
};

// trigger_secret
// function begins at statement 16226, parm_start=11102
// OP_NOT_F	35	0	11102
// OP_IFNOT	11102	3	0
// OP_ADD_F	39	214	11103
// OP_STORE_F	11103	39	0
// OP_ADDRESS	28	418	11104
// OP_STOREP_F	276	11104	0
// OP_LOAD_S	28	206	11105
// OP_NOT_S	11105	0	11106
// OP_IFNOT	11106	3	0
// OP_ADDRESS	28	206	11107
// OP_STOREP_S	11108	11107	0
// OP_LOAD_F	28	207	11109
// OP_NOT_F	11109	0	11110
// OP_IFNOT	11110	3	0
// OP_ADDRESS	28	207	11111
// OP_STOREP_F	214	11111	0
// OP_LOAD_F	28	207	11112
// OP_EQ_F	11112	214	11113
// OP_IFNOT	11113	6	0
// OP_STORE_V	11067	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11114
// OP_STOREP_S	11067	11114	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	207	11115
// OP_EQ_F	11115	216	11116
// OP_IFNOT	11116	5	0
// OP_STORE_V	3152	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	11117
// OP_STOREP_S	3152	11117	0
// OP_CALL0	11064	0	0
// OP_DONE	0	0	0
void () trigger_secret = 
{
    
    if(!deathmatch)
    {
        total_secrets = total_secrets + TRUE;
    }
    
    self.wait = CONTENT_EMPTY;
    
    if(!self.message)
    {
        self.message = "You found a secret area!";
    }
    
    
    if(!self.sounds)
    {
        self.sounds = TRUE;
    }
    
    if(self.sounds == TRUE)
    {
        precache_sound("misc/secret.wav");
        self.noise = "misc/secret.wav";
    }
    else
    {
        
        if(self.sounds == FL_SWIM)
        {
            precache_sound("misc/talk.wav");
            self.noise = "misc/talk.wav";
        }
        
    }
    
    func000576();
};

// trigger_counter
// function begins at statement 16316, parm_start=11152
// OP_ADDRESS	28	418	11152
// OP_STOREP_F	276	11152	0
// OP_LOAD_F	28	436	11153
// OP_NOT_F	11153	0	11154
// OP_IFNOT	11154	3	0
// OP_ADDRESS	28	436	11155
// OP_STOREP_F	216	11155	0
// OP_ADDRESS	28	147	11156
// OP_STOREP_FNC	11118	11156	0
// OP_DONE	0	0	0
void () trigger_counter = 
{
    self.wait = CONTENT_EMPTY;
    
    if(!self.count)
    {
        self.count = FL_SWIM;
    }
    
    self.use = func000581;
};

// info_teleport_destination
// function begins at statement 16608, parm_start=11360
// OP_ADDRESS	28	400	11360
// OP_LOAD_V	28	117	11363
// OP_STOREP_V	11363	11360	0
// OP_ADDRESS	28	117	11366
// OP_STOREP_V	286	11366	0
// OP_ADDRESS	28	130	11369
// OP_STOREP_S	3002	11369	0
// OP_ADDRESS	28	105	11370
// OP_LOAD_V	28	105	11373
// OP_ADD_V	11373	11376	11379
// OP_STOREP_V	11379	11370	0
// OP_LOAD_S	28	197	11382
// OP_NOT_S	11382	0	11383
// OP_IFNOT	11383	3	0
// OP_STORE_V	11384	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () info_teleport_destination = 
{
    self.mangle = self.angles;
    self.angles = VEC_ORIGIN;
    self.model = "";
    self.origin = self.origin + '0 0 27';
    
    if(!self.targetname)
    {
        objerror("no targetname");
    }
    
};

// trigger_teleport
// function begins at statement 16632, parm_start=11390
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	11393
// OP_STOREP_FNC	11226	11393	0
// OP_ADDRESS	28	548	11394
// OP_STOREP_FNC	1004	11394	0
// OP_LOAD_S	28	196	11395
// OP_NOT_S	11395	0	11396
// OP_IFNOT	11396	3	0
// OP_STORE_V	11397	4	0
// OP_CALL1	461	0	0
// OP_ADDRESS	28	147	11398
// OP_STOREP_FNC	11385	11398	0
// OP_LOAD_F	28	195	11399
// OP_BITAND	11399	11158	11400
// OP_NOT_F	11400	0	11401
// OP_IFNOT	11401	13	0
// OP_STORE_V	11402	4	0
// OP_CALL1	469	0	0
// OP_LOAD_V	28	134	11403
// OP_LOAD_V	28	138	11406
// OP_ADD_V	11403	11406	11409
// OP_MUL_VF	11409	539	11412
// OP_STORE_V	11412	11390	0
// OP_STORE_V	11390	4	0
// OP_STORE_V	11402	7	0
// OP_STORE_V	539	10	0
// OP_STORE_V	333	13	0
// OP_CALL4	509	0	0
// OP_DONE	0	0	0
void () trigger_teleport = 
{
    local vector globaldef003498;
    InitTrigger();
    self.touch = func000587;
    self.field000225 = func002294;
    
    if(!self.target)
    {
        objerror("no target");
    }
    
    self.use = func000589;
    
    if(!(self.spawnflags & globaldef003470))
    {
        precache_sound("ambience/hum1.wav");
        globaldef003498 = (self.mins + self.maxs) * globaldef000522;
        ambientsound(globaldef003498, "ambience/hum1.wav", globaldef000522, ATTN_STATIC);
    }
    
};

// trigger_setskill
// function begins at statement 16667, parm_start=11418
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	11418
// OP_STOREP_FNC	11415	11418	0
// OP_DONE	0	0	0
void () trigger_setskill = 
{
    InitTrigger();
    self.touch = func000591;
};

// trigger_onlyregistered
// function begins at statement 16711, parm_start=11435
// OP_STORE_V	3152	4	0
// OP_CALL1	469	0	0
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	11435
// OP_STOREP_FNC	11419	11435	0
// OP_ADDRESS	28	548	11436
// OP_STOREP_FNC	1006	11436	0
// OP_DONE	0	0	0
void () trigger_onlyregistered = 
{
    precache_sound("misc/talk.wav");
    InitTrigger();
    self.touch = func000593;
    self.field000225 = func002296;
};

// trigger_hurt
// function begins at statement 16741, parm_start=11448
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	11448
// OP_STOREP_FNC	11440	11448	0
// OP_LOAD_F	28	425	11449
// OP_NOT_F	11449	0	11450
// OP_IFNOT	11450	3	0
// OP_ADDRESS	28	425	11451
// OP_STOREP_F	230	11451	0
// OP_DONE	0	0	0
void () trigger_hurt = 
{
    InitTrigger();
    self.touch = func000596;
    
    if(!self.dmg)
    {
        self.dmg = MOVETYPE_FLY;
    }
    
};

// trigger_push
// function begins at statement 16814, parm_start=11512
// OP_CALL0	2992	0	0
// OP_STORE_V	11493	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	146	11512
// OP_STOREP_FNC	11453	11512	0
// OP_ADDRESS	28	548	11513
// OP_STOREP_FNC	1005	11513	0
// OP_LOAD_F	28	369	11514
// OP_NOT_F	11514	0	11515
// OP_IFNOT	11515	3	0
// OP_ADDRESS	28	369	11516
// OP_STOREP_F	1663	11516	0
// OP_DONE	0	0	0
void () trigger_push = 
{
    InitTrigger();
    precache_sound("ambience/windfly.wav");
    self.touch = func000598;
    self.field000225 = func002295;
    
    if(!self.speed)
    {
        self.speed = 1000;
    }
    
};

// trigger_monsterjump
// function begins at statement 16857, parm_start=11540
// OP_LOAD_F	28	369	11540
// OP_NOT_F	11540	0	11541
// OP_IFNOT	11541	3	0
// OP_ADDRESS	28	369	11542
// OP_STOREP_F	2044	11542	0
// OP_LOAD_F	28	447	11543
// OP_NOT_F	11543	0	11544
// OP_IFNOT	11544	3	0
// OP_ADDRESS	28	447	11545
// OP_STOREP_F	2044	11545	0
// OP_LOAD_V	28	117	11546
// OP_EQ_V	11546	286	11549
// OP_IFNOT	11549	3	0
// OP_ADDRESS	28	117	11550
// OP_STOREP_V	11553	11550	0
// OP_CALL0	2992	0	0
// OP_ADDRESS	28	146	11556
// OP_STOREP_FNC	11517	11556	0
// OP_DONE	0	0	0
void () trigger_monsterjump = 
{
    
    if(!self.speed)
    {
        self.speed = 200;
    }
    
    
    if(!self.height)
    {
        self.height = 200;
    }
    
    
    if(self.angles == VEC_ORIGIN)
    {
        self.angles = '0 360 0';
    }
    
    InitTrigger();
    self.touch = func000600;
};

