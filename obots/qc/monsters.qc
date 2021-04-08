
// monster_death_use
// function begins at statement 14508, parm_start=10023
// OP_LOAD_F	28	182	10026
// OP_BITAND	10026	215	10027
// OP_IFNOT	10027	5	0
// OP_ADDRESS	28	182	10028
// OP_LOAD_F	28	182	10029
// OP_SUB_F	10029	215	10030
// OP_STOREP_F	10030	10028	0
// OP_LOAD_F	28	182	10031
// OP_BITAND	10031	216	10032
// OP_IFNOT	10032	5	0
// OP_ADDRESS	28	182	10033
// OP_LOAD_F	28	182	10034
// OP_SUB_F	10034	216	10035
// OP_STOREP_F	10035	10033	0
// OP_LOAD_S	28	196	10036
// OP_NOT_S	10036	0	10037
// OP_IFNOT	10037	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	10038
// OP_STORE_ENT	10038	351	0
// OP_CALL0	520	0	0
// OP_DONE	0	0	0
void () monster_death_use = 
{
    local entity globaldef003297;
    local entity globaldef003298;
    local entity globaldef003299;
    
    if(self.flags & FL_FLY)
    {
        self.flags = self.flags - FL_FLY;
    }
    
    
    if(self.flags & FL_SWIM)
    {
        self.flags = self.flags - FL_SWIM;
    }
    
    
    if(!self.target)
    {
        return;
    }
    
    activator = self.enemy;
    SUB_UseTargets();
};

