// func000238
// function begins at statement 5692, parm_start=4977
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	29	129	4979
// OP_NE_S	4979	1236	4980
// OP_IFNOT	4980	5	0
// OP_LOAD_S	29	129	4981
// OP_NE_S	4981	1241	4982
// OP_IFNOT	4982	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	4983
// OP_LE	4983	213	4984
// OP_IFNOT	4984	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	575	4985
// OP_BITAND	4985	703	4986
// OP_IFNOT	4986	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1198	0	0
// OP_LOAD_S	29	129	4987
// OP_EQ_S	4987	1241	4988
// OP_IFNOT	4988	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1131	0	0
// OP_LOAD_S	29	129	4989
// OP_EQ_S	4989	1236	4990
// OP_IFNOT	4990	11	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4651	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	180	4991
// OP_STORE_V	4991	7	0
// OP_CALL2	928	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	2127	7	0
// OP_CALL2	928	0	0
// OP_IFNOT	35	20	0
// OP_ADDRESS	28	399	4992
// OP_LOAD_S	28	130	4993
// OP_STOREP_S	4993	4992	0
// OP_LOAD_S	28	129	4994
// OP_EQ_S	4994	4995	4996
// OP_LOAD_S	28	129	4997
// OP_EQ_S	4997	4998	4999
// OP_OR	4996	4999	5000
// OP_IFNOT	5000	6	0
// OP_ADDRESS	28	150	5001
// OP_MUL_F	2019	230	5002
// OP_ADD_F	31	5002	5003
// OP_STOREP_F	5003	5001	0
// OP_GOTO	4	0	0
// OP_ADDRESS	28	150	5004
// OP_ADD_F	31	2019	5005
// OP_STOREP_F	5005	5004	0
// OP_ADDRESS	28	148	5006
// OP_STOREP_FNC	4296	5006	0
// OP_STORE_V	29	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	5007
// OP_STORE_V	5007	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_S	29	129	5008
// OP_EQ_S	5008	1236	5009
// OP_IFNOT	5009	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	4416	7	0
// OP_CALL2	839	0	0
// OP_ADDRESS	28	104	5010
// OP_STOREP_F	237	5010	0
// OP_ADDRESS	29	162	5011
// OP_LOAD_F	29	162	5012
// OP_LOAD_F	28	162	5013
// OP_BITOR	5012	5013	5014
// OP_STOREP_F	5014	5011	0
// OP_ADDRESS	28	130	5015
// OP_STOREP_S	348	5015	0
// OP_LOAD_S	28	129	5016
// OP_EQ_S	5016	5017	5018
// OP_IFNOT	5018	6	0
// OP_ADDRESS	29	390	5019
// OP_STOREP_F	214	5019	0
// OP_ADDRESS	29	383	5020
// OP_ADD_F	31	309	5021
// OP_STOREP_F	5021	5020	0
// OP_LOAD_S	28	129	5022
// OP_EQ_S	5022	4995	5023
// OP_IFNOT	5023	6	0
// OP_ADDRESS	29	384	5024
// OP_STOREP_F	214	5024	0
// OP_ADDRESS	29	380	5025
// OP_ADD_F	31	309	5026
// OP_STOREP_F	5026	5025	0
// OP_LOAD_S	28	129	5027
// OP_EQ_S	5027	4998	5028
// OP_IFNOT	5028	6	0
// OP_ADDRESS	29	386	5029
// OP_STOREP_F	214	5029	0
// OP_ADDRESS	29	381	5030
// OP_ADD_F	31	309	5031
// OP_STOREP_F	5031	5030	0
// OP_LOAD_S	28	129	5032
// OP_EQ_S	5032	5033	5034
// OP_IFNOT	5034	6	0
// OP_ADDRESS	29	388	5035
// OP_STOREP_F	214	5035	0
// OP_ADDRESS	29	382	5036
// OP_ADD_F	31	309	5037
// OP_STOREP_F	5037	5036	0
// OP_STORE_ENT	29	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () func000238 = 
{
    local entity globaldef001938;
    local float globaldef001939;
    
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
    
    
    if(other.field000252 & globaldef000686)
    {
        func002686(other, self);
    }
    
    
    if(other.classname == "bot")
    {
        func002471(other, self);
    }
    
    
    if(other.classname == "player")
    {
        func000092(other, "You got the ");
        func000092(other, self.netname);
        func000092(other, "\n");
    }
    
    
    if(deathmatch)
    {
        self.mdl = self.model;
        if((self.classname == "item_artifact_invulnerability") || (self.classname == "item_artifact_invisibility"))
        {
            self.nextthink = time + (60 * MOVETYPE_FLY);
        }
        else
        {
            self.nextthink = time + 60;
        }
        
        self.think = func000204;
    }
    
    sound(other, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    
    if(other.classname == "player")
    {
        func000064(other, "bf\n");
    }
    
    self.solid = SOLID_NOT;
    other.items = other.items | self.items;
    self.model = string_null;
    
    if(self.classname == "item_artifact_envirosuit")
    {
        other.rad_time = TRUE;
        other.radsuit_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invulnerability")
    {
        other.invincible_time = TRUE;
        other.invincible_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_invisibility")
    {
        other.invisible_time = TRUE;
        other.invisible_finished = time + SVC_INTERMISSION;
    }
    
    
    if(self.classname == "item_artifact_super_damage")
    {
        other.super_time = TRUE;
        other.super_damage_finished = time + SVC_INTERMISSION;
    }
    
    activator = other;
    SUB_UseTargets();
};

