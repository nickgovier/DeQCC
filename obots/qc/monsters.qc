
// monster_use
// function begins at statement 14481, parm_start=10010
// OP_LOAD_ENT	28	181	10010
// OP_IFNOT	10010	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	152	10011
// OP_LE	10011	213	10012
// OP_IFNOT	10012	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	162	10013
// OP_BITAND	10013	272	10014
// OP_IFNOT	10014	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	351	182	10015
// OP_BITAND	10015	221	10016
// OP_IFNOT	10016	2	0
// OP_RETURN	0	0	0
// OP_LOAD_S	351	129	10017
// OP_NE_S	10017	1236	10018
// OP_IFNOT	10018	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10019
// OP_STOREP_ENT	351	10019	0
// OP_ADDRESS	28	150	10020
// OP_ADD_F	31	3036	10021
// OP_STOREP_F	10021	10020	0
// OP_ADDRESS	28	148	10022
// OP_STOREP_FNC	3711	10022	0
// OP_DONE	0	0	0
void () monster_use = 
{
    
    if(self.enemy)
    {
        return;
    }
    
    
    if(self.health <= FALSE)
    {
        return;
    }
    
    
    if(activator.items & IT_INVISIBILITY)
    {
        return;
    }
    
    
    if(activator.flags & FL_NOTARGET)
    {
        return;
    }
    
    
    if(activator.classname != "player")
    {
        return;
    }
    
    self.enemy = activator;
    self.nextthink = time + 0.1;
    self.think = FoundTarget;
};


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

