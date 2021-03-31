void () button_return;
// button_wait
// function begins at statement 10568, parm_start=6929
// OP_ADDRESS	28	433	6929
// OP_STOREP_F	282	6929	0
// OP_ADDRESS	28	150	6930
// OP_LOAD_F	28	102	6931
// OP_LOAD_F	28	413	6932
// OP_ADD_F	6931	6932	6933
// OP_STOREP_F	6933	6930	0
// OP_ADDRESS	28	148	6934
// OP_STOREP_FNC	6928	6934	0
// OP_LOAD_ENT	28	181	6935
// OP_STORE_ENT	6935	346	0
// OP_CALL0	518	0	0
// OP_ADDRESS	28	131	6936
// OP_STOREP_F	214	6936	0
// OP_DONE	0	0	0
void () button_wait = 
{
    self.state = STATE_TOP;
    self.nextthink = self.ltime + self.wait;
    self.think = button_return;
    activator = self.enemy;
    SUB_UseTargets();
    self.frame = TRUE;
};

// button_done
// function begins at statement 10583, parm_start=6938
// OP_ADDRESS	28	433	6938
// OP_STOREP_F	283	6938	0
// OP_DONE	0	0	0
void () button_done = 
{
    self.state = STATE_BOTTOM;
};

// button_return
// function begins at statement 10586, parm_start=6939
// OP_ADDRESS	28	433	6939
// OP_STOREP_F	285	6939	0
// OP_LOAD_V	28	434	6940
// OP_STORE_V	6940	4	0
// OP_LOAD_F	28	364	6943
// OP_STORE_V	6943	7	0
// OP_STORE_V	6937	10	0
// OP_CALL3	512	0	0
// OP_ADDRESS	28	131	6944
// OP_STOREP_F	213	6944	0
// OP_LOAD_F	28	152	6945
// OP_IFNOT	6945	3	0
// OP_ADDRESS	28	163	6946
// OP_STOREP_F	251	6946	0
// OP_DONE	0	0	0
void () button_return = 
{
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, button_done);
    self.frame = FALSE;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
    }
    
};

// button_blocked
// function begins at statement 10601, parm_start=6948
// OP_DONE	0	0	0
void () button_blocked = 
{
};

// button_fire
// function begins at statement 10602, parm_start=6949
// OP_LOAD_F	28	433	6949
// OP_EQ_F	6949	284	6950
// OP_LOAD_F	28	433	6951
// OP_EQ_F	6951	282	6952
// OP_OR	6950	6952	6953
// OP_IFNOT	6953	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_LOAD_S	28	208	6954
// OP_STORE_V	6954	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	433	6955
// OP_STOREP_F	284	6955	0
// OP_LOAD_V	28	438	6956
// OP_STORE_V	6956	4	0
// OP_LOAD_F	28	364	6959
// OP_STORE_V	6959	7	0
// OP_STORE_V	6927	10	0
// OP_CALL3	512	0	0
// OP_DONE	0	0	0
void () button_fire = 
{
    
    if((self.state == STATE_UP) || (self.state == STATE_TOP))
    {
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise, TRUE, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, button_wait);
};

void (entity bot) bot_triggered;
// button_use
// function begins at statement 10625, parm_start=6962
// OP_ADDRESS	28	181	6962
// OP_STOREP_ENT	346	6962	0
// OP_LOAD_S	29	129	6963
// OP_EQ_S	6963	2056	6964
// OP_IFNOT	6964	3	0
// OP_STORE_V	29	4	0
// OP_CALL1	6960	0	0
// OP_CALL0	6948	0	0
// OP_DONE	0	0	0
void () button_use = 
{
    self.enemy = activator;
    
    if(other.classname == "dmbot")
    {
        bot_triggered(other);
    }
    
    button_fire();
};

// button_touch
// function begins at statement 10634, parm_start=6966
// OP_LOAD_S	29	129	6969
// OP_NE_S	6969	1102	6970
// OP_IFNOT	6970	5	0
// OP_LOAD_S	29	129	6971
// OP_NE_S	6971	2056	6972
// OP_IFNOT	6972	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	6973
// OP_STOREP_ENT	29	6973	0
// OP_LOAD_S	29	129	6974
// OP_EQ_S	6974	2056	6975
// OP_IFNOT	6975	3	0
// OP_STORE_V	29	4	0
// OP_CALL1	6960	0	0
// OP_CALL0	6948	0	0
// OP_DONE	0	0	0
void () button_touch = 
{
    local vector org;
    
    if(other.classname != "player")
    {
        
        if(other.classname != "dmbot")
        {
            return;
        }
        
    }
    
    self.enemy = other;
    
    if(other.classname == "dmbot")
    {
        bot_triggered(other);
    }
    
    button_fire();
};

// button_killed
// function begins at statement 10650, parm_start=6977
// OP_ADDRESS	28	181	6977
// OP_STOREP_ENT	347	6977	0
// OP_ADDRESS	28	152	6978
// OP_LOAD_F	28	185	6979
// OP_STOREP_F	6979	6978	0
// OP_ADDRESS	28	163	6980
// OP_STOREP_F	250	6980	0
// OP_LOAD_S	29	129	6981
// OP_EQ_S	6981	2056	6982
// OP_IFNOT	6982	3	0
// OP_STORE_V	29	4	0
// OP_CALL1	6960	0	0
// OP_CALL0	6948	0	0
// OP_DONE	0	0	0
void () button_killed = 
{
    self.enemy = damage_attacker;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    
    if(other.classname == "dmbot")
    {
        bot_triggered(other);
    }
    
    button_fire();
};

// func_button
// function begins at statement 10664, parm_start=6984
// OP_LOAD_F	28	207	6986
// OP_EQ_F	6986	213	6987
// OP_IFNOT	6987	5	0
// OP_STORE_V	6988	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6989
// OP_STOREP_S	6988	6989	0
// OP_LOAD_F	28	207	6990
// OP_EQ_F	6990	214	6991
// OP_IFNOT	6991	5	0
// OP_STORE_V	6992	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6993
// OP_STOREP_S	6992	6993	0
// OP_LOAD_F	28	207	6994
// OP_EQ_F	6994	216	6995
// OP_IFNOT	6995	5	0
// OP_STORE_V	6996	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	6997
// OP_STOREP_S	6996	6997	0
// OP_LOAD_F	28	207	6998
// OP_EQ_F	6998	228	6999
// OP_IFNOT	6999	5	0
// OP_STORE_V	7000	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	208	7001
// OP_STOREP_S	7000	7001	0
// OP_CALL0	916	0	0
// OP_ADDRESS	28	103	7002
// OP_STOREP_F	232	7002	0
// OP_ADDRESS	28	104	7003
// OP_STOREP_F	241	7003	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7004
// OP_STORE_V	7004	7	0
// OP_CALL2	449	0	0
// OP_ADDRESS	28	149	7005
// OP_STOREP_FNC	6947	7005	0
// OP_ADDRESS	28	147	7006
// OP_STOREP_FNC	6961	7006	0
// OP_ADDRESS	28	523	7007
// OP_STOREP_FNC	648	7007	0
// OP_LOAD_F	28	152	7008
// OP_IFNOT	7008	9	0
// OP_ADDRESS	28	185	7009
// OP_LOAD_F	28	152	7010
// OP_STOREP_F	7010	7009	0
// OP_ADDRESS	28	362	7011
// OP_STOREP_FNC	6976	7011	0
// OP_ADDRESS	28	163	7012
// OP_STOREP_F	251	7012	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	146	7013
// OP_STOREP_FNC	6965	7013	0
// OP_LOAD_F	28	364	7014
// OP_NOT_F	7014	0	7015
// OP_IFNOT	7015	3	0
// OP_ADDRESS	28	364	7016
// OP_STOREP_F	2101	7016	0
// OP_LOAD_F	28	413	7017
// OP_NOT_F	7017	0	7018
// OP_IFNOT	7018	3	0
// OP_ADDRESS	28	413	7019
// OP_STOREP_F	214	7019	0
// OP_LOAD_F	28	432	7020
// OP_NOT_F	7020	0	7021
// OP_IFNOT	7021	3	0
// OP_ADDRESS	28	432	7022
// OP_STOREP_F	229	7022	0
// OP_ADDRESS	28	433	7023
// OP_STOREP_F	283	7023	0
// OP_ADDRESS	28	434	7024
// OP_LOAD_V	28	105	7027
// OP_STOREP_V	7027	7024	0
// OP_ADDRESS	28	438	7030
// OP_LOAD_V	28	434	7033
// OP_LOAD_V	28	202	7036
// OP_LOAD_V	28	202	7039
// OP_LOAD_V	28	142	7042
// OP_MUL_V	7039	7042	7045
// OP_STORE_V	7045	4	0
// OP_CALL1	485	0	0
// OP_LOAD_F	28	432	7046
// OP_SUB_F	1	7046	7047
// OP_MUL_VF	7036	7047	7048
// OP_ADD_V	7033	7048	7051
// OP_STOREP_V	7051	7030	0
// OP_DONE	0	0	0
void () func_button = 
{
    local float gtemp;
    local float ftemp;
    
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
    self.blocked = button_blocked;
    self.use = button_use;
    self.th_weight = buttonweight;
    if(self.health)
    {
        self.max_health = self.health;
        self.th_die = button_killed;
        self.takedamage = DAMAGE_YES;
    }
    else
    {
        self.touch = button_touch;
    }
    
    
    if(!self.speed)
    {
        self.speed = 40.000;
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

