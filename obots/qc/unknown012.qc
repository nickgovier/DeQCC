// func000236
// function begins at statement 5607, parm_start=4944
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4946
// OP_NE_S	4946	1236	4947
// OP_IFNOT	4947	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4948
// OP_LE	4948	213	4949
// OP_IFNOT	4949	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4950	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_LOAD_S	28	208	4951
// OP_STORE_V	4951	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	28	104	4952
// OP_STOREP_F	237	4952	0
// OP_ADDRESS	28	130	4953
// OP_STOREP_S	348	4953	0
// OP_LOAD_F	28	195	4954
// OP_BITAND	4954	765	4955
// OP_BITOR	38	4955	4956
// OP_STORE_F	4956	38	0
// OP_ADDRESS	28	129	4957
// OP_STOREP_S	3002	4957	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000236 = 
{
    local entity globaldef001928;
    local float globaldef001929;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        return;
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    func000072(other, "You got the rune!");
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    func000064(other, "bf\n");
    self.solid = SOLID_NOT;
    self.model = string_null;
    serverflags = serverflags | (self.spawnflags & globaldef000748);
    self.classname = "";
    activator = other;
    SUB_UseTargets();
};

