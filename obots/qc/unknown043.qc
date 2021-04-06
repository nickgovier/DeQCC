void () func000616;
void () func000617;
// func000613
// function begins at statement 17196, parm_start=11773
// OP_LOAD_F	28	378	11773
// OP_LT	31	11773	11774
// OP_IFNOT	11774	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	378	11775
// OP_ADD_F	31	539	11776
// OP_STOREP_F	11776	11775	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	425	11777
// OP_STORE_V	11777	13	0
// OP_CALL4	522	0	0
// OP_DONE	0	0	0
void () func000613 = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + globaldef000522;
    func000201(other, self, self, self.dmg);
};

// func000614
// function begins at statement 17210, parm_start=11779
// OP_LOAD_FNC	28	148	11779
// OP_NE_FNC	11779	11771	11780
// OP_IFNOT	11780	2	0
// OP_RETURN	0	0	0
// OP_CALL0	11770	0	0
// OP_DONE	0	0	0
void () func000614 = 
{
    
    if(self.think != func000617)
    {
        return;
    }
    
    func000616();
};

