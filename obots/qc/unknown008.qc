
// func000563
// function begins at statement 15886, parm_start=10885
// OP_ADDRESS	28	438	10885
// OP_STOREP_F	285	10885	0
// OP_LOAD_V	28	439	10886
// OP_STORE_V	10886	4	0
// OP_LOAD_F	28	369	10889
// OP_STORE_V	10889	7	0
// OP_STORE_V	10883	10	0
// OP_CALL3	514	0	0
// OP_ADDRESS	28	131	10890
// OP_STOREP_F	213	10890	0
// OP_LOAD_F	28	152	10891
// OP_IFNOT	10891	3	0
// OP_ADDRESS	28	163	10892
// OP_STOREP_F	251	10892	0
// OP_DONE	0	0	0
void () func000563 = 
{
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, button_done);
    self.frame = FALSE;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
    }
    
};


// func000564
// function begins at statement 15901, parm_start=10894
// OP_DONE	0	0	0
void () func000564 = 
{
};


// func000565
// function begins at statement 15902, parm_start=10895
// OP_LOAD_F	28	438	10895
// OP_EQ_F	10895	284	10896
// OP_LOAD_F	28	438	10897
// OP_EQ_F	10897	282	10898
// OP_OR	10896	10898	10899
// OP_IFNOT	10899	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	10900
// OP_STORE_V	10900	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	10901
// OP_STOREP_F	284	10901	0
// OP_LOAD_V	28	443	10902
// OP_STORE_V	10902	4	0
// OP_LOAD_F	28	369	10905
// OP_STORE_V	10905	7	0
// OP_STORE_V	10874	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000565 = 
{
    
    if((self.state == STATE_UP) || (self.state == STATE_TOP))
    {
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, button_wait);
};


// func000566
// function begins at statement 15925, parm_start=10907
// OP_ADDRESS	28	181	10907
// OP_STOREP_ENT	351	10907	0
// OP_LOAD_S	351	129	10908
// OP_EQ_S	10908	1241	10909
// OP_IFNOT	10909	4	0
// OP_STORE_V	351	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1132	0	0
// OP_CALL0	10894	0	0
// OP_DONE	0	0	0
void () func000566 = 
{
    self.enemy = activator;
    
    if(activator.classname == "bot")
    {
        func002472(activator, self);
    }
    
    func000565();
};


// func000567
// function begins at statement 15935, parm_start=10911
// OP_LOAD_S	29	129	10914
// OP_NE_S	10914	1236	10915
// OP_IFNOT	10915	5	0
// OP_LOAD_S	29	129	10916
// OP_NE_S	10916	1241	10917
// OP_IFNOT	10917	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	10918
// OP_STOREP_ENT	29	10918	0
// OP_LOAD_S	29	129	10919
// OP_EQ_S	10919	1241	10920
// OP_IFNOT	10920	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1132	0	0
// OP_CALL0	10894	0	0
// OP_DONE	0	0	0
void () func000567 = 
{
    local vector globaldef003427;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    self.enemy = other;
    
    if(other.classname == "bot")
    {
        func002472(other, self);
    }
    
    func000565();
};


// func000568
// function begins at statement 15952, parm_start=10922
// OP_ADDRESS	28	181	10922
// OP_STOREP_ENT	352	10922	0
// OP_ADDRESS	28	152	10923
// OP_LOAD_F	28	185	10924
// OP_STOREP_F	10924	10923	0
// OP_ADDRESS	28	163	10925
// OP_STOREP_F	250	10925	0
// OP_LOAD_S	352	129	10926
// OP_EQ_S	10926	1241	10927
// OP_IFNOT	10927	4	0
// OP_STORE_V	352	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1132	0	0
// OP_CALL0	10894	0	0
// OP_DONE	0	0	0
void () func000568 = 
{
    self.enemy = damage_attacker;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    
    if(damage_attacker.classname == "bot")
    {
        func002472(damage_attacker, self);
    }
    
    func000565();
};

