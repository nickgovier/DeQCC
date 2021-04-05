void () button_return;
// button_wait
// function begins at statement 10366, parm_start=6971
// OP_ADDRESS	28	434	6971
// OP_STOREP_F	283	6971	0
// OP_ADDRESS	28	150	6972
// OP_LOAD_F	28	102	6973
// OP_LOAD_F	28	414	6974
// OP_ADD_F	6973	6974	6975
// OP_STOREP_F	6975	6972	0
// OP_ADDRESS	28	148	6976
// OP_STOREP_FNC	6970	6976	0
// OP_LOAD_ENT	28	181	6977
// OP_STORE_ENT	6977	347	0
// OP_CALL0	519	0	0
// OP_ADDRESS	28	131	6978
// OP_STOREP_F	708	6978	0
// OP_DONE	0	0	0
void () button_wait = 
{
    self.state = STATE_TOP;
    self.nextthink = self.ltime + self.wait;
    self.think = button_return;
    activator = self.enemy;
    SUB_UseTargets();
    self.frame = 1;
};

// button_done
// function begins at statement 10381, parm_start=6980
// OP_ADDRESS	28	434	6980
// OP_STOREP_F	284	6980	0
// OP_DONE	0	0	0
void () button_done = 
{
    self.state = STATE_BOTTOM;
};

// button_return
// function begins at statement 10384, parm_start=6981
// OP_ADDRESS	28	434	6981
// OP_STOREP_F	286	6981	0
// OP_LOAD_V	28	435	6982
// OP_STORE_V	6982	4	0
// OP_LOAD_F	28	365	6985
// OP_STORE_V	6985	7	0
// OP_STORE_V	6979	10	0
// OP_CALL3	513	0	0
// OP_ADDRESS	28	131	6986
// OP_STOREP_F	650	6986	0
// OP_LOAD_F	28	152	6987
// OP_IFNOT	6987	3	0
// OP_ADDRESS	28	163	6988
// OP_STOREP_F	252	6988	0
// OP_DONE	0	0	0
void () button_return = 
{
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, button_done);
    self.frame = 0;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
    }
    
};

// button_blocked
// function begins at statement 10399, parm_start=6990
// OP_DONE	0	0	0
void () button_blocked = 
{
};

// button_fire
// function begins at statement 10400, parm_start=6991
// OP_LOAD_F	28	434	6991
// OP_EQ_F	6991	285	6992
// OP_LOAD_F	28	434	6993
// OP_EQ_F	6993	283	6994
// OP_OR	6992	6994	6995
// OP_IFNOT	6995	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	323	7	0
// OP_LOAD_S	28	208	6996
// OP_STORE_V	6996	10	0
// OP_STORE_V	708	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	454	0	0
// OP_ADDRESS	28	434	6997
// OP_STOREP_F	285	6997	0
// OP_LOAD_V	28	439	6998
// OP_STORE_V	6998	4	0
// OP_LOAD_F	28	365	7001
// OP_STORE_V	7001	7	0
// OP_STORE_V	6969	10	0
// OP_CALL3	513	0	0
// OP_DONE	0	0	0
void () button_fire = 
{
    
    if((self.state == STATE_UP) || (self.state == STATE_TOP))
    {
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise, 1, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, button_wait);
};

// button_use
// function begins at statement 10423, parm_start=7003
// OP_ADDRESS	28	181	7003
// OP_STOREP_ENT	347	7003	0
// OP_CALL0	6990	0	0
// OP_DONE	0	0	0
void () button_use = 
{
    self.enemy = activator;
    button_fire();
};

// button_touch
// function begins at statement 10427, parm_start=7005
// OP_LOAD_S	29	129	7005
// OP_NE_S	7005	797	7006
// OP_IFNOT	7006	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	7007
// OP_STOREP_ENT	29	7007	0
// OP_CALL0	6990	0	0
// OP_DONE	0	0	0
void () button_touch = 
{
    
    if(other.classname != "player")
    {
        return;
    }
    
    self.enemy = other;
    button_fire();
};

// button_killed
// function begins at statement 10435, parm_start=7009
// OP_ADDRESS	28	181	7009
// OP_STOREP_ENT	348	7009	0
// OP_ADDRESS	28	152	7010
// OP_LOAD_F	28	185	7011
// OP_STOREP_F	7011	7010	0
// OP_ADDRESS	28	163	7012
// OP_STOREP_F	251	7012	0
// OP_CALL0	6990	0	0
// OP_DONE	0	0	0
void () button_killed = 
{
    self.enemy = damage_attacker;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    button_fire();
};

// func_button
// function begins at statement 10444, parm_start=7014
// OP_LOAD_F	28	207	7016
// OP_EQ_F	7016	650	7017
// OP_IFNOT	7017	5	0
// OP_STORE_V	7018	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7019
// OP_STOREP_S	7018	7019	0
// OP_LOAD_F	28	207	7020
// OP_EQ_F	7020	708	7021
// OP_IFNOT	7021	5	0
// OP_STORE_V	7022	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7023
// OP_STOREP_S	7022	7023	0
// OP_LOAD_F	28	207	7024
// OP_EQ_F	7024	929	7025
// OP_IFNOT	7025	5	0
// OP_STORE_V	7026	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7027
// OP_STOREP_S	7026	7027	0
// OP_LOAD_F	28	207	7028
// OP_EQ_F	7028	819	7029
// OP_IFNOT	7029	5	0
// OP_STORE_V	7030	4	0
// OP_CALL1	465	0	0
// OP_ADDRESS	28	208	7031
// OP_STOREP_S	7030	7031	0
// OP_CALL0	602	0	0
// OP_ADDRESS	28	103	7032
// OP_STOREP_F	233	7032	0
// OP_ADDRESS	28	104	7033
// OP_STOREP_F	242	7033	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	7034
// OP_STORE_V	7034	7	0
// OP_CALL2	450	0	0
// OP_ADDRESS	28	149	7035
// OP_STOREP_FNC	6989	7035	0
// OP_ADDRESS	28	147	7036
// OP_STOREP_FNC	7002	7036	0
// OP_LOAD_F	28	152	7037
// OP_IFNOT	7037	9	0
// OP_ADDRESS	28	185	7038
// OP_LOAD_F	28	152	7039
// OP_STOREP_F	7039	7038	0
// OP_ADDRESS	28	363	7040
// OP_STOREP_FNC	7008	7040	0
// OP_ADDRESS	28	163	7041
// OP_STOREP_F	252	7041	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	146	7042
// OP_STOREP_FNC	7004	7042	0
// OP_LOAD_F	28	365	7043
// OP_NOT_F	7043	0	7044
// OP_IFNOT	7044	3	0
// OP_ADDRESS	28	365	7045
// OP_STOREP_F	2007	7045	0
// OP_LOAD_F	28	414	7046
// OP_NOT_F	7046	0	7047
// OP_IFNOT	7047	3	0
// OP_ADDRESS	28	414	7048
// OP_STOREP_F	708	7048	0
// OP_LOAD_F	28	433	7049
// OP_NOT_F	7049	0	7050
// OP_IFNOT	7050	3	0
// OP_ADDRESS	28	433	7051
// OP_STOREP_F	1835	7051	0
// OP_ADDRESS	28	434	7052
// OP_STOREP_F	284	7052	0
// OP_ADDRESS	28	435	7053
// OP_LOAD_V	28	105	7056
// OP_STOREP_V	7056	7053	0
// OP_ADDRESS	28	439	7059
// OP_LOAD_V	28	435	7062
// OP_LOAD_V	28	202	7065
// OP_LOAD_V	28	202	7068
// OP_LOAD_V	28	142	7071
// OP_MUL_V	7068	7071	7074
// OP_STORE_V	7074	4	0
// OP_CALL1	486	0	0
// OP_LOAD_F	28	433	7075
// OP_SUB_F	1	7075	7076
// OP_MUL_VF	7065	7076	7077
// OP_ADD_V	7062	7077	7080
// OP_STOREP_V	7080	7059	0
// OP_DONE	0	0	0
void () func_button = 
{
    local float gtemp;
    local float ftemp;
    
    if(self.sounds == 0)
    {
        precache_sound("buttons/airbut1.wav");
        self.noise = "buttons/airbut1.wav";
    }
    
    
    if(self.sounds == 1)
    {
        precache_sound("buttons/switch21.wav");
        self.noise = "buttons/switch21.wav";
    }
    
    
    if(self.sounds == 2)
    {
        precache_sound("buttons/switch02.wav");
        self.noise = "buttons/switch02.wav";
    }
    
    
    if(self.sounds == 3)
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
        self.speed = 40;
    }
    
    
    if(!self.wait)
    {
        self.wait = 1;
    }
    
    
    if(!self.lip)
    {
        self.lip = 4;
    }
    
    self.state = STATE_BOTTOM;
    self.pos1 = self.origin;
    self.pos2 = self.pos1 + (self.movedir * ((fabs(self.movedir * self.size)) - self.lip));
};

