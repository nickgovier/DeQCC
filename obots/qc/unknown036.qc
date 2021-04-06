// func000593
// function begins at statement 16671, parm_start=11420
// OP_LOAD_S	29	129	11420
// OP_NE_S	11420	1236	11421
// OP_IFNOT	11421	5	0
// OP_LOAD_S	29	129	11422
// OP_NE_S	11422	1241	11423
// OP_IFNOT	11423	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	378	11424
// OP_GT	11424	31	11425
// OP_IFNOT	11425	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	378	11426
// OP_ADD_F	31	216	11427
// OP_STOREP_F	11427	11426	0
// OP_STORE_V	6635	4	0
// OP_CALL1	490	0	0
// OP_IFNOT	1	7	0
// OP_ADDRESS	28	206	11428
// OP_STOREP_S	3002	11428	0
// OP_CALL0	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_GOTO	17	0	0
// OP_LOAD_S	29	129	11429
// OP_NE_S	11429	1241	11430
// OP_IFNOT	11430	14	0
// OP_LOAD_S	28	206	11431
// OP_NE_S	11431	3002	11432
// OP_IFNOT	11432	11	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	11433
// OP_STORE_V	11433	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	3152	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000593 = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(self.attack_finished > time)
    {
        return;
    }
    
    self.attack_finished = time + FL_SWIM;
    if(cvar("registered"))
    {
        self.message = "";
        SUB_UseTargets();
        remove(self);
    }
    else
    {
        
        if(other.classname != "bot")
        {
            
            if(self.message != "")
            {
                func000072(other, self.message);
                sound(other, CHAN_BODY, "misc/talk.wav", TRUE, ATTN_NORM);
            }
            
        }
        
    }
    
};

