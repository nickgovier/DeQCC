// func000595
// function begins at statement 16719, parm_start=11438
// OP_ADDRESS	28	104	11438
// OP_STOREP_F	238	11438	0
// OP_ADDRESS	28	150	11439
// OP_STOREP_F	276	11439	0
// OP_DONE	0	0	0
void () func000595 = 
{
    self.solid = SOLID_TRIGGER;
    self.nextthink = CONTENT_EMPTY;
};

// func000596
// function begins at statement 16724, parm_start=11441
// OP_LOAD_F	29	163	11441
// OP_IFNOT	11441	14	0
// OP_ADDRESS	28	104	11442
// OP_STOREP_F	237	11442	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_LOAD_F	28	425	11443
// OP_STORE_V	11443	13	0
// OP_CALL4	522	0	0
// OP_ADDRESS	28	148	11444
// OP_STOREP_FNC	11437	11444	0
// OP_ADDRESS	28	150	11445
// OP_ADD_F	31	214	11446
// OP_STOREP_F	11446	11445	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func000596 = 
{
    
    if(other.takedamage)
    {
        self.solid = SOLID_NOT;
        func000201(other, self, self, self.dmg);
        self.think = func000595;
        self.nextthink = time + TRUE;
    }
    
    return;
};

