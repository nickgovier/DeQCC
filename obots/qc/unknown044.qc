// func000616
// function begins at statement 17238, parm_start=11792
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	11794
// OP_STORE_V	11794	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	11792	0
// OP_ADDRESS	28	196	11795
// OP_LOAD_S	11792	196	11796
// OP_STOREP_S	11796	11795	0
// OP_LOAD_S	28	196	11797
// OP_NOT_S	11797	0	11798
// OP_IFNOT	11798	3	0
// OP_STORE_V	11799	4	0
// OP_CALL1	461	0	0
// OP_LOAD_F	11792	418	11800
// OP_IFNOT	11800	5	0
// OP_ADDRESS	28	418	11801
// OP_LOAD_F	11792	418	11802
// OP_STOREP_F	11802	11801	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	418	11803
// OP_STOREP_F	213	11803	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	209	11804
// OP_STORE_V	11804	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_V	11792	105	11805
// OP_LOAD_V	28	134	11808
// OP_SUB_V	11805	11808	11811
// OP_STORE_V	11811	4	0
// OP_LOAD_F	28	369	11814
// OP_STORE_V	11814	7	0
// OP_STORE_V	11781	10	0
// OP_CALL3	514	0	0
// OP_DONE	0	0	0
void () func000616 = 
{
    local entity globaldef003554;
    local float globaldef003555;
    globaldef003554 = find(world, targetname, self.target);
    self.target = globaldef003554.target;
    
    if(!self.target)
    {
        objerror("train_next: no next target");
    }
    
    if(globaldef003554.wait)
    {
        self.wait = globaldef003554.wait;
    }
    else
    {
        self.wait = FALSE;
    }
    
    sound(self, CHAN_VOICE, self.noise1, TRUE, ATTN_NORM);
    SUB_CalcMove(globaldef003554.origin - self.mins, self.speed, train_wait);
};

// func000617
// function begins at statement 17276, parm_start=11815
// OP_STORE_V	30	4	0
// OP_STORE_V	197	7	0
// OP_LOAD_S	28	196	11816
// OP_STORE_V	11816	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	11815	0
// OP_ADDRESS	28	196	11817
// OP_LOAD_S	11815	196	11818
// OP_STOREP_S	11818	11817	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	11815	105	11819
// OP_LOAD_V	28	134	11822
// OP_SUB_V	11819	11822	11825
// OP_STORE_V	11825	7	0
// OP_CALL2	453	0	0
// OP_LOAD_S	28	197	11828
// OP_NOT_S	11828	0	11829
// OP_IFNOT	11829	7	0
// OP_ADDRESS	28	150	11830
// OP_LOAD_F	28	102	11831
// OP_ADD_F	11831	3036	11832
// OP_STOREP_F	11832	11830	0
// OP_ADDRESS	28	148	11833
// OP_STOREP_FNC	11770	11833	0
// OP_DONE	0	0	0
void () func000617 = 
{
    local entity globaldef003557;
    globaldef003557 = find(world, targetname, self.target);
    self.target = globaldef003557.target;
    setorigin(self, globaldef003557.origin - self.mins);
    
    if(!self.targetname)
    {
        self.nextthink = self.ltime + 0.1;
        self.think = func000616;
    }
    
};

