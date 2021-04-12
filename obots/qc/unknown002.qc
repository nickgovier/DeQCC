void () func000647;

// func000407
// function begins at statement 13440, parm_start=9426
// OP_STATE	6892	8212	0
// OP_ADDRESS	28	156	9426
// OP_STOREP_F	213	9426	0
// OP_LOAD_F	28	114	9427
// OP_LOAD_F	28	115	9428
// OP_OR	9427	9428	9429
// OP_IFNOT	9429	5	0
// OP_ADDRESS	28	377	9430
// OP_STOREP_F	213	9430	0
// OP_CALL0	5354	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	154	9431
// OP_EQ_F	9431	253	9432
// OP_IFNOT	9432	11	0
// OP_LOAD_F	28	377	9433
// OP_GE	9433	791	9434
// OP_IFNOT	9434	3	0
// OP_ADDRESS	28	377	9435
// OP_STOREP_F	213	9435	0
// OP_ADDRESS	28	131	9436
// OP_LOAD_F	28	377	9437
// OP_ADD_F	6892	9437	9438
// OP_STOREP_F	9438	9436	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	377	9439
// OP_GE	9439	230	9440
// OP_IFNOT	9440	3	0
// OP_ADDRESS	28	377	9441
// OP_STOREP_F	213	9441	0
// OP_ADDRESS	28	131	9442
// OP_LOAD_F	28	377	9443
// OP_ADD_F	791	9443	9444
// OP_STOREP_F	9444	9442	0
// OP_ADDRESS	28	377	9445
// OP_LOAD_F	28	377	9446
// OP_ADD_F	9446	214	9447
// OP_STOREP_F	9447	9445	0
// OP_DONE	0	0	0
void () func000407 = [17, func000407]
{
    self.weaponframe = FALSE;
    
    if(self.velocity_x || self.velocity_y)
    {
        self.walkframe = FALSE;
        player_run();
        return;
    }
    
    if(self.weapon == IT_AXE)
    {
        
        if(self.walkframe >= GLOBALDEFSEVENSEVENFOUR)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = 17 + self.walkframe;
    }
    else
    {
        
        if(self.walkframe >= MOVETYPE_FLY)
        {
            self.walkframe = FALSE;
        }
        
        self.frame = GLOBALDEFSEVENSEVENFOUR + self.walkframe;
    }
    
    self.walkframe = self.walkframe + TRUE;
};

