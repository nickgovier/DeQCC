// func000581
// function begins at statement 16259, parm_start=11119
// OP_ADDRESS	28	436	11120
// OP_LOAD_F	28	436	11121
// OP_SUB_F	11121	214	11122
// OP_STOREP_F	11122	11120	0
// OP_LOAD_F	28	436	11123
// OP_LT	11123	213	11124
// OP_IFNOT	11124	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	436	11125
// OP_NE_F	11125	213	11126
// OP_IFNOT	11126	33	0
// OP_LOAD_S	351	129	11127
// OP_EQ_S	11127	1236	11128
// OP_LOAD_F	28	195	11129
// OP_BITAND	11129	11005	11130
// OP_EQ_F	11130	213	11131
// OP_AND	11128	11131	11132
// OP_IFNOT	11132	25	0
// OP_LOAD_F	28	436	11133
// OP_GE	11133	229	11134
// OP_IFNOT	11134	5	0
// OP_STORE_V	351	4	0
// OP_STORE_V	11135	7	0
// OP_CALL2	852	0	0
// OP_GOTO	18	0	0
// OP_LOAD_F	28	436	11136
// OP_EQ_F	11136	228	11137
// OP_IFNOT	11137	5	0
// OP_STORE_V	351	4	0
// OP_STORE_V	11138	7	0
// OP_CALL2	852	0	0
// OP_GOTO	11	0	0
// OP_LOAD_F	28	436	11139
// OP_EQ_F	11139	216	11140
// OP_IFNOT	11140	5	0
// OP_STORE_V	351	4	0
// OP_STORE_V	11141	7	0
// OP_CALL2	852	0	0
// OP_GOTO	4	0	0
// OP_STORE_V	351	4	0
// OP_STORE_V	11142	7	0
// OP_CALL2	852	0	0
// OP_RETURN	0	0	0
// OP_LOAD_S	351	129	11143
// OP_EQ_S	11143	1236	11144
// OP_LOAD_F	28	195	11145
// OP_BITAND	11145	11005	11146
// OP_EQ_F	11146	213	11147
// OP_AND	11144	11147	11148
// OP_IFNOT	11148	4	0
// OP_STORE_V	351	4	0
// OP_STORE_V	11149	7	0
// OP_CALL2	852	0	0
// OP_ADDRESS	28	181	11150
// OP_STOREP_ENT	351	11150	0
// OP_CALL0	11013	0	0
// OP_DONE	0	0	0
void () func000581 = 
{
    local string globaldef003462;
    self.count = self.count - TRUE;
    
    if(self.count < FALSE)
    {
        return;
    }
    
    
    if(self.count != FALSE)
    {
        
        if((activator.classname == "player") && ((self.spawnflags & globaldef003444) == FALSE))
        {
            if(self.count >= MOVETYPE_STEP)
            {
                func000072(activator, "There are more to go...");
            }
            else
            {
                if(self.count == MOVETYPE_WALK)
                {
                    func000072(activator, "Only 3 more to go...");
                }
                else
                {
                    if(self.count == FL_SWIM)
                    {
                        func000072(activator, "Only 2 more to go...");
                    }
                    else
                    {
                        func000072(activator, "Only 1 more to go...");
                    }
                    
                }
                
            }
            
        }
        
        return;
    }
    
    
    if((activator.classname == "player") && ((self.spawnflags & globaldef003444) == FALSE))
    {
        func000072(activator, "Sequence completed!");
    }
    
    self.enemy = activator;
    func000572();
};

