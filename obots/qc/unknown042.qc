// func000609
// function begins at statement 17056, parm_start=11678
// OP_LOAD_FNC	28	148	11678
// OP_IFNOT	11678	2	0
// OP_RETURN	0	0	0
// OP_CALL0	11561	0	0
// OP_DONE	0	0	0
void () func000609 = 
{
    
    if(self.think)
    {
        return;
    }
    
    func000605();
};

// func000610
// function begins at statement 17061, parm_start=11679
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	214	13	0
// OP_CALL4	522	0	0
// OP_LOAD_F	28	438	11679
// OP_EQ_F	11679	284	11680
// OP_IFNOT	11680	3	0
// OP_CALL0	11561	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	438	11681
// OP_EQ_F	11681	285	11682
// OP_IFNOT	11682	3	0
// OP_CALL0	11560	0	0
// OP_GOTO	3	0	0
// OP_STORE_V	11683	4	0
// OP_CALL1	461	0	0
// OP_DONE	0	0	0
void () func000610 = 
{
    func000201(other, self, self, TRUE);
    if(self.state == STATE_UP)
    {
        func000605();
    }
    else
    {
        if(self.state == STATE_DOWN)
        {
            func000606();
        }
        else
        {
            objerror("plat_crush: bad self.state\n");
        }
        
    }
    
};

// func000611
// function begins at statement 17079, parm_start=11685
// OP_ADDRESS	28	147	11685
// OP_STOREP_FNC	519	11685	0
// OP_LOAD_F	28	438	11686
// OP_NE_F	11686	284	11687
// OP_IFNOT	11687	3	0
// OP_STORE_V	11688	4	0
// OP_CALL1	461	0	0
// OP_CALL0	11561	0	0
// OP_DONE	0	0	0
void () func000611 = 
{
    self.use = SUB_Null;
    
    if(self.state != STATE_UP)
    {
        objerror("plat_use: not in up state");
    }
    
    func000605();
};

