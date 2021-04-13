
// func_button
// function begins at statement 15967, parm_start=10929
// OP_LOAD_F	28	207	10931
// OP_EQ_F	10931	213	10932
// OP_IFNOT	10932	5	0
// OP_STORE_V	10933	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	10934
// OP_STOREP_S	10933	10934	0
// OP_LOAD_F	28	207	10935
// OP_EQ_F	10935	214	10936
// OP_IFNOT	10936	5	0
// OP_STORE_V	10937	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	10938
// OP_STOREP_S	10937	10938	0
// OP_LOAD_F	28	207	10939
// OP_EQ_F	10939	216	10940
// OP_IFNOT	10940	5	0
// OP_STORE_V	10941	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	10942
// OP_STOREP_S	10941	10942	0
// OP_LOAD_F	28	207	10943
// OP_EQ_F	10943	228	10944
// OP_IFNOT	10944	5	0
// OP_STORE_V	10945	4	0
// OP_CALL1	469	0	0
// OP_ADDRESS	28	208	10946
// OP_STOREP_S	10945	10946	0
// OP_CALL0	2956	0	0
// OP_ADDRESS	28	103	10947
// OP_STOREP_F	232	10947	0
// OP_ADDRESS	28	104	10948
// OP_STOREP_F	241	10948	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	10949
// OP_STORE_V	10949	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	28	149	10950
// OP_STOREP_FNC	10893	10950	0
// OP_ADDRESS	28	147	10951
// OP_STOREP_FNC	10906	10951	0
// OP_ADDRESS	28	548	10952
// OP_STOREP_FNC	1001	10952	0
// OP_LOAD_F	28	152	10953
// OP_IFNOT	10953	9	0
// OP_ADDRESS	28	185	10954
// OP_LOAD_F	28	152	10955
// OP_STOREP_F	10955	10954	0
// OP_ADDRESS	28	367	10956
// OP_STOREP_FNC	10921	10956	0
// OP_ADDRESS	28	163	10957
// OP_STOREP_F	251	10957	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	146	10958
// OP_STOREP_FNC	10910	10958	0
// OP_LOAD_F	28	369	10959
// OP_NOT_F	10959	0	10960
// OP_IFNOT	10960	3	0
// OP_ADDRESS	28	369	10961
// OP_STOREP_F	746	10961	0
// OP_LOAD_F	28	418	10962
// OP_NOT_F	10962	0	10963
// OP_IFNOT	10963	3	0
// OP_ADDRESS	28	418	10964
// OP_STOREP_F	214	10964	0
// OP_LOAD_F	28	437	10965
// OP_NOT_F	10965	0	10966
// OP_IFNOT	10966	3	0
// OP_ADDRESS	28	437	10967
// OP_STOREP_F	229	10967	0
// OP_ADDRESS	28	438	10968
// OP_STOREP_F	283	10968	0
// OP_ADDRESS	28	439	10969
// OP_LOAD_V	28	105	10972
// OP_STOREP_V	10972	10969	0
// OP_ADDRESS	28	443	10975
// OP_LOAD_V	28	439	10978
// OP_LOAD_V	28	202	10981
// OP_LOAD_V	28	202	10984
// OP_LOAD_V	28	142	10987
// OP_MUL_V	10984	10987	10990
// OP_STORE_V	10990	4	0
// OP_CALL1	488	0	0
// OP_LOAD_F	28	437	10991
// OP_SUB_F	1	10991	10992
// OP_MUL_VF	10981	10992	10993
// OP_ADD_V	10978	10993	10996
// OP_STOREP_V	10996	10975	0
// OP_DONE	0	0	0
void () func_button = 
{
    local float globaldef003433;
    local float globaldef003434;
    
    if(self.sounds == FALSE)
    {
        precache_sound("buttons/airbut1.wav");
        self.noise = "buttons/airbut1.wav";
    }
    
    
    if(self.sounds == TRUE)
    {
        precache_sound("buttons/switch21.wav");
        self.noise = "buttons/switch21.wav";
    }
    
    
    if(self.sounds == FL_SWIM)
    {
        precache_sound("buttons/switch02.wav");
        self.noise = "buttons/switch02.wav";
    }
    
    
    if(self.sounds == MOVETYPE_WALK)
    {
        precache_sound("buttons/switch04.wav");
        self.noise = "buttons/switch04.wav";
    }
    
    SetMovedir();
    self.movetype = MOVETYPE_PUSH;
    self.solid = SOLID_BSP;
    setmodel(self, self.model);
    self.blocked = func000564;
    self.use = func000566;
    self.f_goalweight = func002291;
    if(self.health)
    {
        self.max_health = self.health;
        self.th_die = func000568;
        self.takedamage = DAMAGE_YES;
    }
    else
    {
        self.touch = func000567;
    }
    
    
    if(!self.speed)
    {
        self.speed = GLOBALDEFSEVENTWONINE;
    }
    
    
    if(!self.wait)
    {
        self.wait = TRUE;
    }
    
    
    if(!self.lip)
    {
        self.lip = MOVETYPE_STEP;
    }
    
    self.state = STATE_BOTTOM;
    self.pos1 = self.origin;
    self.pos2 = self.pos1 + (self.movedir * ((fabs(self.movedir * self.size)) - self.lip));
};

