// func000605
// function begins at statement 16954, parm_start=11626
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	11626
// OP_STORE_V	11626	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	11627
// OP_STOREP_F	285	11627	0
// OP_LOAD_V	28	443	11628
// OP_STORE_V	11628	4	0
// OP_LOAD_F	28	369	11631
// OP_STORE_V	11631	7	0
// OP_STORE_V	11623	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000605 = 
{
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos2, self.speed, plat_hit_bottom);
};

// func000606
// function begins at statement 16970, parm_start=11632
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	11632
// OP_STORE_V	11632	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	438	11633
// OP_STOREP_F	284	11633	0
// OP_LOAD_V	28	439	11634
// OP_STORE_V	11634	4	0
// OP_LOAD_F	28	369	11637
// OP_STORE_V	11637	7	0
// OP_STORE_V	11616	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000606 = 
{
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos1, self.speed, plat_hit_top);
};

// func000607
// function begins at statement 16986, parm_start=11638
// OP_LOAD_S	29	129	11638
// OP_NE_S	11638	1236	11639
// OP_IFNOT	11639	5	0
// OP_LOAD_S	29	129	11640
// OP_NE_S	11640	1241	11641
// OP_IFNOT	11641	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	29	152	11642
// OP_LE	11642	213	11643
// OP_IFNOT	11643	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	11644
// OP_STORE_ENT	11644	28	0
// OP_LOAD_F	28	438	11645
// OP_EQ_F	11645	283	11646
// OP_IFNOT	11646	3	0
// OP_CALL0	11560	0	0
// OP_GOTO	8	0	0
// OP_LOAD_F	28	438	11647
// OP_EQ_F	11647	282	11648
// OP_IFNOT	11648	5	0
// OP_ADDRESS	28	150	11649
// OP_LOAD_F	28	102	11650
// OP_ADD_F	11650	214	11651
// OP_STOREP_F	11651	11649	0
// OP_LOAD_F	29	575	11652
// OP_BITAND	11652	703	11653
// OP_IFNOT	11653	7	0
// OP_LOAD_ENT	28	622	11654
// OP_NOT_ENT	11654	0	11655
// OP_IFNOT	11655	4	0
// OP_STORE_V	29	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	1200	0	0
// OP_LOAD_ENT	29	194	11656
// OP_LOAD_ENT	11656	194	11657
// OP_EQ_E	11657	28	11658
// OP_LOAD_ENT	29	194	11659
// OP_LOAD_ENT	11659	194	11660
// OP_LOAD_ENT	28	622	11661
// OP_EQ_E	11660	11661	11662
// OP_OR	11658	11662	11663
// OP_IFNOT	11663	9	0
// OP_ADDRESS	29	371	11664
// OP_SUB_F	31	214	11665
// OP_STOREP_F	11665	11664	0
// OP_LOAD_ENT	28	622	11666
// OP_IFNOT	11666	4	0
// OP_ADDRESS	29	586	11667
// OP_LOAD_ENT	28	622	11668
// OP_STOREP_ENT	11668	11667	0
// OP_DONE	0	0	0
void () func000607 = 
{
    
    if(other.classname != "player")
    {
        
        if(other.classname != "bot")
        {
            return;
        }
        
    }
    
    
    if(other.health <= FALSE)
    {
        return;
    }
    
    self = self.enemy;
    if(self.state == STATE_BOTTOM)
    {
        func000606();
    }
    else
    {
        
        if(self.state == STATE_TOP)
        {
            self.nextthink = self.ltime + TRUE;
        }
        
    }
    
    
    if(other.field000252 & globaldef000686)
    {
        
        if(!self.field000299)
        {
            func002677(other, self);
        }
        
    }
    
    
    if((other.goalentity.goalentity == self) || (other.goalentity.goalentity == self.field000299))
    {
        other.search_time = time - TRUE;
        
        if(self.field000299)
        {
            other.field000263 = self.field000299;
        }
        
    }
    
};

