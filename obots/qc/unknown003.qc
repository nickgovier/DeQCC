
// func000292
// function begins at statement 8092, parm_start=6470
// OP_OR	35	36	6470
// OP_IFNOT	6470	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	388	6471
// OP_STOREP_F	214	6471	0
// OP_ADDRESS	28	382	6472
// OP_ADD_F	31	309	6473
// OP_STOREP_F	6473	6472	0
// OP_ADDRESS	28	162	6474
// OP_LOAD_F	28	162	6475
// OP_BITOR	6475	275	6476
// OP_STOREP_F	6476	6474	0
// OP_STORE_V	6477	4	0
// OP_CALL1	473	0	0
// OP_DONE	0	0	0
void () func000292 = 
{
    
    if(deathmatch || coop)
    {
        return;
    }
    
    self.super_time = TRUE;
    self.super_damage_finished = time + SVC_INTERMISSION;
    self.items = self.items | IT_QUAD;
    dprint("quad cheat\n");
};


// func000293
// function begins at statement 8107, parm_start=6479
// OP_LOAD_F	28	173	6479
// OP_GE	6479	214	6480
// OP_LOAD_F	28	173	6481
// OP_LE	6481	217	6482
// OP_AND	6480	6482	6483
// OP_IFNOT	6483	3	0
// OP_CALL0	6309	0	0
// OP_GOTO	20	0	0
// OP_LOAD_F	28	173	6484
// OP_EQ_F	6484	234	6485
// OP_IFNOT	6485	3	0
// OP_CALL0	6351	0	0
// OP_GOTO	15	0	0
// OP_LOAD_F	28	173	6486
// OP_EQ_F	6486	235	6487
// OP_IFNOT	6487	3	0
// OP_CALL0	6373	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	173	6488
// OP_EQ_F	6488	791	6489
// OP_IFNOT	6489	3	0
// OP_CALL0	6419	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	173	6490
// OP_EQ_F	6490	6491	6492
// OP_IFNOT	6492	2	0
// OP_CALL0	6469	0	0
// OP_LOAD_F	28	173	6493
// OP_EQ_F	6493	738	6494
// OP_IFNOT	6494	2	0
// OP_CALL0	2815	0	0
// OP_CALL0	1221	0	0
// OP_ADDRESS	28	173	6495
// OP_STOREP_F	213	6495	0
// OP_DONE	0	0	0
void () func000293 = 
{
    if((self.impulse >= TRUE) && (self.impulse <= FL_CLIENT))
    {
        func000287();
    }
    else
    {
        if(self.impulse == MOVETYPE_FLYMISSILE)
        {
            func000288();
        }
        else
        {
            if(self.impulse == MOVETYPE_BOUNCE)
            {
                func000289();
            }
            else
            {
                if(self.impulse == GLOBALDEFSEVENSEVENFOUR)
                {
                    func000290();
                }
                else
                {
                    
                    if(self.impulse == 255)
                    {
                        func000292();
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    if(self.impulse == GLOBALDEFSEVENTWOONE)
    {
        func000145();
    }
    
    func000372();
    self.impulse = FALSE;
};


// func000294
// function begins at statement 8142, parm_start=6497
// OP_LOAD_F	28	378	6497
// OP_LT	31	6497	6498
// OP_IFNOT	6498	2	0
// OP_RETURN	0	0	0
// OP_CALL0	6478	0	0
// OP_BITAND	821	767	6499
// OP_IFNOT	6499	8	0
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_NE_E	28	541	6500
// OP_NE_E	28	542	6501
// OP_AND	6500	6501	6502
// OP_IFNOT	6502	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	170	6503
// OP_IFNOT	6503	3	0
// OP_CALL0	5356	0	0
// OP_CALL0	6266	0	0
// OP_DONE	0	0	0
void () func000294 = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    func000293();
    
    if(globaldef000804 & globaldef000750)
    {
        
        if(globaldef000799)
        {
            return;
        }
        
        
        if((self != globaldef000524) && (self != globaldef000525))
        {
            return;
        }
        
    }
    
    
    if(self.button0)
    {
        func000295();
        func000286();
    }
    
};


// func000295
// function begins at statement 8161, parm_start=6504
// OP_LOAD_F	28	382	6504
// OP_GT	6504	31	6505
// OP_IFNOT	6505	13	0
// OP_LOAD_F	28	389	6506
// OP_LT	6506	31	6507
// OP_IFNOT	6507	10	0
// OP_ADDRESS	28	389	6508
// OP_ADD_F	31	214	6509
// OP_STOREP_F	6509	6508	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	5078	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000295 = 
{
    
    if(self.super_damage_finished > time)
    {
        
        if(self.super_sound < time)
        {
            self.super_sound = time + TRUE;
            sound(self, CHAN_BODY, "items/damage3.wav", TRUE, ATTN_NORM);
        }
        
    }
    
    return;
};

