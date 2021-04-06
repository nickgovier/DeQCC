// func000232
// function begins at statement 5439, parm_start=4870
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4872
// OP_NE_S	4872	1236	4873
// OP_IFNOT	4873	5	0
// OP_LOAD_S	29	129	4874
// OP_NE_S	4874	1241	4875
// OP_IFNOT	4875	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4876
// OP_LE	4876	213	4877
// OP_IFNOT	4877	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	162	4878
// OP_LOAD_F	28	162	4879
// OP_BITAND	4878	4879	4880
// OP_IFNOT	4880	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4881
// OP_EQ_S	4881	1236	4882
// OP_IFNOT	4882	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4883
// OP_STORE_V	4883	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	328	7	0
// OP_LOAD_S	28	208	4884
// OP_STORE_V	4884	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	4885
// OP_EQ_S	4885	1236	4886
// OP_IFNOT	4886	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	29	162	4887
// OP_LOAD_F	29	162	4888
// OP_LOAD_F	28	162	4889
// OP_BITOR	4888	4889	4890
// OP_STOREP_F	4890	4887	0
// OP_NOT_F	36	0	4891
// OP_IFNOT	4891	5	0
// OP_ADDRESS	28	104	4892
// OP_STOREP_F	237	4892	0
// OP_ADDRESS	28	130	4893
// OP_STOREP_S	348	4893	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000232 = 
{
    local entity globaldef001907;
    local float globaldef001908;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    
    if(other.items & self.items)
    {
        return;
    }
    
    
    if(other.classname == "player")
    {
        func000092(other, "You got the ");
        func000092(other, self.netname);
        func000092(other, "\n");
    }
    
    sound(other, CHAN_ITEM, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        func000064(other, "bf\n");
    }
    
    other.items = other.items | self.items;
    
    if(!coop)
    {
        self.solid = SOLID_NOT;
        self.model = string_null;
    }
    
    activator = other;
    SUB_UseTargets();
};

// func000233
// function begins at statement 5497, parm_start=4895
// OP_LOAD_F	30	357	4895
// OP_EQ_F	4895	213	4896
// OP_IFNOT	4896	6	0
// OP_STORE_V	4897	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	4898
// OP_STOREP_S	4897	4898	0
// OP_GOTO	16	0	0
// OP_LOAD_F	30	357	4899
// OP_EQ_F	4899	214	4900
// OP_IFNOT	4900	6	0
// OP_STORE_V	4901	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	4902
// OP_STOREP_S	4901	4902	0
// OP_GOTO	8	0	0
// OP_LOAD_F	30	357	4903
// OP_EQ_F	4903	216	4904
// OP_IFNOT	4904	5	0
// OP_STORE_V	4905	4	0
// OP_CALL1	511	0	0
// OP_ADDRESS	28	208	4906
// OP_STOREP_S	4905	4906	0
// OP_DONE	0	0	0
void () func000233 = 
{
    if(world.worldtype == FALSE)
    {
        precache_sound("misc/medkey.wav");
        self.noise = "misc/medkey.wav";
    }
    else
    {
        if(world.worldtype == TRUE)
        {
            precache_sound("misc/runekey.wav");
            self.noise = "misc/runekey.wav";
        }
        else
        {
            
            if(world.worldtype == FL_SWIM)
            {
                precache_sound2("misc/basekey.wav");
                self.noise = "misc/basekey.wav";
            }
            
        }
        
    }
    
};

