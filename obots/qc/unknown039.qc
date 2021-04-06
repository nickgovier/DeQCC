// func000600
// function begins at statement 16827, parm_start=11518
// OP_LOAD_F	29	182	11518
// OP_BITOR	219	215	11519
// OP_BITOR	11519	216	11520
// OP_BITAND	11518	11520	11521
// OP_NE_F	11521	219	11522
// OP_IFNOT	11522	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	114	11523
// OP_LOAD_F	28	203	11524
// OP_LOAD_F	28	369	11525
// OP_MUL_F	11524	11525	11526
// OP_STOREP_F	11526	11523	0
// OP_ADDRESS	29	115	11527
// OP_LOAD_F	28	204	11528
// OP_LOAD_F	28	369	11529
// OP_MUL_F	11528	11529	11530
// OP_STOREP_F	11530	11527	0
// OP_LOAD_F	29	182	11531
// OP_BITAND	11531	223	11532
// OP_NOT_F	11532	0	11533
// OP_IFNOT	11533	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	29	182	11534
// OP_LOAD_F	29	182	11535
// OP_SUB_F	11535	223	11536
// OP_STOREP_F	11536	11534	0
// OP_ADDRESS	29	116	11537
// OP_LOAD_F	28	447	11538
// OP_STOREP_F	11538	11537	0
// OP_DONE	0	0	0
void () func000600 = 
{
    
    if((other.flags & ((FL_MONSTER | FL_FLY) | FL_SWIM)) != FL_MONSTER)
    {
        return;
    }
    
    other.velocity_x = self.movedir_x * self.speed;
    other.velocity_y = self.movedir_y * self.speed;
    
    if(!(other.flags & FL_ONGROUND))
    {
        return;
    }
    
    other.flags = other.flags - FL_ONGROUND;
    other.velocity_z = self.height;
};

