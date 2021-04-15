
// func002636
// function begins at statement 45249, parm_start=25933
// OP_LOAD_F	28	189	25934
// OP_EQ_F	25934	228	25935
// OP_IFNOT	25935	10	0
// OP_STORE_V	2323	4	0
// OP_CALL1	9610	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6652	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	229	25936
// OP_ADD_F	25936	214	25937
// OP_STORE_V	25937	4	0
// OP_CALL1	483	0	0
// OP_STORE_F	1	25933	0
// OP_EQ_F	25933	214	25938
// OP_IFNOT	25938	3	0
// OP_ADDRESS	28	208	25939
// OP_STOREP_S	6669	25939	0
// OP_EQ_F	25933	216	25940
// OP_IFNOT	25940	3	0
// OP_ADDRESS	28	208	25941
// OP_STOREP_S	6670	25941	0
// OP_EQ_F	25933	228	25942
// OP_IFNOT	25942	3	0
// OP_ADDRESS	28	208	25943
// OP_STOREP_S	6671	25943	0
// OP_EQ_F	25933	229	25944
// OP_IFNOT	25944	3	0
// OP_ADDRESS	28	208	25945
// OP_STOREP_S	6672	25945	0
// OP_EQ_F	25933	230	25946
// OP_IFNOT	25946	3	0
// OP_ADDRESS	28	208	25947
// OP_STOREP_S	6673	25947	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_LOAD_S	28	208	25948
// OP_STORE_V	25948	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	330	16	0
// OP_CALL5	458	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () func002636 = 
{
    local float globaldef008256;
    
    if(self.waterlevel == MOVETYPE_WALK)
    {
        DeathBubbles(20);
        sound(self, CHAN_VOICE, "player/h2odeath.wav", TRUE, ATTN_NONE);
        return;
    }
    
    globaldef008256 = rint((random() * MOVETYPE_STEP) + TRUE);
    
    if(globaldef008256 == TRUE)
    {
        self.noise = "player/death1.wav";
    }
    
    
    if(globaldef008256 == FL_SWIM)
    {
        self.noise = "player/death2.wav";
    }
    
    
    if(globaldef008256 == MOVETYPE_WALK)
    {
        self.noise = "player/death3.wav";
    }
    
    
    if(globaldef008256 == MOVETYPE_STEP)
    {
        self.noise = "player/death4.wav";
    }
    
    
    if(globaldef008256 == MOVETYPE_FLY)
    {
        self.noise = "player/death5.wav";
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NONE);
    return;
};


// func002637
// function begins at statement 45296, parm_start=25949
// OP_LOAD_FNC	28	148	25950
// OP_EQ_FNC	25950	16476	25951
// OP_IFNOT	25951	4	0
// OP_ADDRESS	28	553	25952
// OP_STOREP_FNC	1177	25952	0
// OP_RETURN	0	0	0
// OP_LOAD_F	28	165	25953
// OP_NE_F	25953	246	25954
// OP_IFNOT	25954	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	162	25955
// OP_LOAD_F	28	162	25956
// OP_LOAD_F	28	162	25957
// OP_BITAND	25957	272	25958
// OP_SUB_F	25956	25958	25959
// OP_STOREP_F	25959	25955	0
// OP_ADDRESS	28	381	25960
// OP_STOREP_F	213	25960	0
// OP_ADDRESS	28	380	25961
// OP_STOREP_F	213	25961	0
// OP_ADDRESS	28	382	25962
// OP_STOREP_F	213	25962	0
// OP_ADDRESS	28	383	25963
// OP_STOREP_F	213	25963	0
// OP_BITAND	821	777	25964
// OP_IFNOT	25964	7	0
// OP_ADDRESS	28	574	25965
// OP_LOAD_F	28	572	25966
// OP_STOREP_F	25966	25965	0
// OP_ADDRESS	28	573	25967
// OP_STOREP_F	526	25967	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	93	25968
// OP_STOREP_F	526	25968	0
// OP_CALL0	5177	0	0
// OP_ADDRESS	28	155	25969
// OP_STOREP_S	3002	25969	0
// OP_ADDRESS	28	166	25970
// OP_STOREP_V	9872	25970	0
// OP_ADDRESS	28	165	25973
// OP_STOREP_F	247	25973	0
// OP_ADDRESS	28	104	25974
// OP_STOREP_F	237	25974	0
// OP_ADDRESS	28	182	25975
// OP_LOAD_F	28	182	25976
// OP_LOAD_F	28	182	25977
// OP_BITAND	25977	223	25978
// OP_SUB_F	25976	25978	25979
// OP_STOREP_F	25979	25975	0
// OP_ADDRESS	28	103	25980
// OP_STOREP_F	231	25980	0
// OP_ADDRESS	28	118	25981
// OP_STOREP_F	213	25981	0
// OP_ADDRESS	28	120	25982
// OP_STOREP_F	213	25982	0
// OP_ADDRESS	28	611	25983
// OP_STOREP_F	213	25983	0
// OP_ADDRESS	28	175	25984
// OP_LOAD_V	28	117	25987
// OP_STOREP_V	25987	25984	0
// OP_LOAD_F	28	152	25990
// OP_LT	25990	9236	25991
// OP_IFNOT	25991	4	0
// OP_CALL0	9841	0	0
// OP_CALL0	25863	0	0
// OP_RETURN	0	0	0
// OP_BITAND	821	767	25992
// OP_IFNOT	25992	4	0
// OP_CALL0	9841	0	0
// OP_CALL0	25863	0	0
// OP_RETURN	0	0	0
// OP_CALL0	25932	0	0
// OP_LOAD_F	28	154	25993
// OP_EQ_F	25993	253	25994
// OP_IFNOT	25994	3	0
// OP_CALL0	25923	0	0
// OP_GOTO	27	0	0
// OP_STORE_F	213	25949	0
// OP_NOT_F	25949	0	25995
// OP_IFNOT	25995	7	0
// OP_CALL0	457	0	0
// OP_MUL_F	1	231	25996
// OP_STORE_V	25996	4	0
// OP_CALL1	484	0	0
// OP_ADD_F	214	1	25997
// OP_STORE_F	25997	25949	0
// OP_EQ_F	25949	214	25998
// OP_IFNOT	25998	3	0
// OP_CALL0	25870	0	0
// OP_GOTO	14	0	0
// OP_EQ_F	25949	216	25999
// OP_IFNOT	25999	3	0
// OP_CALL0	25881	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	25949	228	26000
// OP_IFNOT	26000	3	0
// OP_CALL0	25890	0	0
// OP_GOTO	6	0	0
// OP_EQ_F	25949	229	26001
// OP_IFNOT	26001	3	0
// OP_CALL0	25905	0	0
// OP_GOTO	2	0	0
// OP_CALL0	25914	0	0
// OP_DONE	0	0	0
void () func002637 = 
{
    local float globaldef008257;
    
    if(self.think == func002276)
    {
        self.field000230 = func002637;
        return;
    }
    
    
    if(self.deadflag != DEAD_NO)
    {
        return;
    }
    
    self.items = self.items - (self.items & IT_INVISIBILITY);
    self.invisible_finished = FALSE;
    self.invincible_finished = FALSE;
    self.super_damage_finished = FALSE;
    self.radsuit_finished = FALSE;
    if(globaldef000804 & globaldef000760)
    {
        self.field000251 = self.field000249;
        self.clmodelindex = modelindex_player;
    }
    else
    {
        self.modelindex = modelindex_player;
    }
    
    DropBackpack();
    self.weaponmodel = "";
    self.view_ofs = '0 0 -8';
    self.deadflag = DEAD_DYING;
    self.solid = SOLID_NOT;
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    self.movetype = MOVETYPE_TOSS;
    self.angles_x = FALSE;
    self.angles_z = FALSE;
    self.field000288 = FALSE;
    self.v_angle = self.angles;
    
    if(self.health < -40)
    {
        GibPlayer();
        func002573();
        return;
    }
    
    
    if(globaldef000804 & OBOT_ROCKETARENA)
    {
        GibPlayer();
        func002573();
        return;
    }
    
    func002636();
    if(self.weapon == IT_AXE)
    {
        func002627();
    }
    else
    {
        globaldef008257 = FALSE;
        
        if(!globaldef008257)
        {
            globaldef008257 = TRUE + (floor(random() * MOVETYPE_TOSS));
        }
        
        if(globaldef008257 == TRUE)
        {
            func002574();
        }
        else
        {
            if(globaldef008257 == FL_SWIM)
            {
                func002585();
            }
            else
            {
                if(globaldef008257 == MOVETYPE_WALK)
                {
                    func002594();
                }
                else
                {
                    if(globaldef008257 == MOVETYPE_STEP)
                    {
                        func002609();
                    }
                    else
                    {
                        func002618();
                    }
                    
                }
                
            }
            
        }
        
    }
    
};

