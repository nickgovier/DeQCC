// func000558
// function begins at statement 15723, parm_start=10789
// OP_LOAD_F	28	378	10789
// OP_LT	31	10789	10790
// OP_IFNOT	10790	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	378	10791
// OP_ADD_F	31	539	10792
// OP_STOREP_F	10792	10791	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	425	10793
// OP_STORE_V	10793	13	0
// OP_CALL4	522	0	0
// OP_DONE	0	0	0
void () func000558 = 
{
    
    if(time < self.attack_finished)
    {
        return;
    }
    
    self.attack_finished = time + globaldef000522;
    func000201(other, self, self, self.dmg);
};

// func000559
// function begins at statement 15737, parm_start=10795
// OP_LOAD_S	29	129	10795
// OP_NE_S	10795	1236	10796
// OP_IFNOT	10796	5	0
// OP_LOAD_S	29	129	10797
// OP_NE_S	10797	1241	10798
// OP_IFNOT	10798	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	378	10799
// OP_GT	10799	31	10800
// OP_IFNOT	10800	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	378	10801
// OP_ADD_F	31	216	10802
// OP_STOREP_F	10802	10801	0
// OP_LOAD_S	28	206	10803
// OP_IFNOT	10803	14	0
// OP_LOAD_S	29	129	10804
// OP_EQ_S	10804	1236	10805
// OP_IFNOT	10805	5	0
// OP_STORE_V	29	4	0
// OP_LOAD_S	28	206	10806
// OP_STORE_V	10806	7	0
// OP_CALL2	852	0	0
// OP_STORE_V	29	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	3152	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func000559 = 
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
    
    if(self.message)
    {
        
        if(other.classname == "player")
        {
            centerprint(other, self.message);
        }
        
        sound(other, CHAN_BODY, "misc/talk.wav", TRUE, ATTN_NORM);
    }
    
};

