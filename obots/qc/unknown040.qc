void () func000607;
void () plat_outside_touch;
void () func000609;
void () func000606;
void () func000605;
void () func000610;
float globaldef003524;

// func000602
// function begins at statement 16876, parm_start=11565
// OP_CALL0	464	0	0
// OP_STORE_ENT	1	11565	0
// OP_ADDRESS	11565	146	11572
// OP_STOREP_FNC	11557	11572	0
// OP_ADDRESS	11565	103	11573
// OP_STOREP_F	227	11573	0
// OP_ADDRESS	11565	104	11574
// OP_STOREP_F	238	11574	0
// OP_ADDRESS	11565	181	11575
// OP_STOREP_ENT	28	11575	0
// OP_LOAD_V	28	134	11576
// OP_ADD_V	11576	11579	11582
// OP_STORE_V	11582	11566	0
// OP_LOAD_V	28	138	11585
// OP_SUB_V	11585	11588	11591
// OP_STORE_V	11591	11569	0
// OP_LOAD_F	28	442	11594
// OP_LOAD_F	28	446	11595
// OP_SUB_F	11594	11595	11596
// OP_ADD_F	11596	217	11597
// OP_SUB_F	11571	11597	11598
// OP_STORE_F	11598	11568	0
// OP_LOAD_F	28	195	11599
// OP_BITAND	11599	11563	11600
// OP_IFNOT	11600	3	0
// OP_ADD_F	11568	217	11601
// OP_STORE_F	11601	11571	0
// OP_LOAD_F	28	143	11602
// OP_LE	11602	1470	11603
// OP_IFNOT	11603	8	0
// OP_LOAD_F	28	135	11604
// OP_LOAD_F	28	139	11605
// OP_ADD_F	11604	11605	11606
// OP_DIV_F	11606	216	11607
// OP_STORE_F	11607	11566	0
// OP_ADD_F	11566	214	11608
// OP_STORE_F	11608	11569	0
// OP_LOAD_F	28	144	11609
// OP_LE	11609	1470	11610
// OP_IFNOT	11610	8	0
// OP_LOAD_F	28	136	11611
// OP_LOAD_F	28	140	11612
// OP_ADD_F	11611	11612	11613
// OP_DIV_F	11613	216	11614
// OP_STORE_F	11614	11567	0
// OP_ADD_F	11567	214	11615
// OP_STORE_F	11615	11570	0
// OP_STORE_V	11565	4	0
// OP_STORE_V	11566	7	0
// OP_STORE_V	11569	10	0
// OP_CALL3	455	0	0
// OP_DONE	0	0	0
void () func000602 = 
{
    local entity globaldef003526;
    local vector globaldef003527;
    local vector globaldef003531;
    globaldef003526 = spawn();
    globaldef003526.touch = func000607;
    globaldef003526.movetype = MOVETYPE_NONE;
    globaldef003526.solid = SOLID_TRIGGER;
    globaldef003526.enemy = self;
    globaldef003527 = self.mins + '25 25 0';
    globaldef003531 = self.maxs - '25 25 -8';
    globaldef003527_z = globaldef003531_z - ((self.pos1_z - self.pos2_z) + FL_CLIENT);
    
    if(self.spawnflags & globaldef003524)
    {
        globaldef003531_z = globaldef003527_z + FL_CLIENT;
    }
    
    
    if(self.size_x <= 50)
    {
        globaldef003527_x = (self.mins_x + self.maxs_x) / FL_SWIM;
        globaldef003531_x = globaldef003527_x + TRUE;
    }
    
    
    if(self.size_y <= 50)
    {
        globaldef003527_y = (self.mins_y + self.maxs_y) / FL_SWIM;
        globaldef003531_y = globaldef003527_y + TRUE;
    }
    
    setsize(globaldef003526, globaldef003527, globaldef003531);
};

