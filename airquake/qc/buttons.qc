void () button_return;
// button_wait
// function begins at statement 23265, parm_start=16063
// OP_ADDRESS	28	482	16063
// OP_STOREP_F	331	16063	0
// OP_ADDRESS	28	175	16064
// OP_LOAD_F	28	127	16065
// OP_LOAD_F	28	462	16066
// OP_ADD_F	16065	16066	16067
// OP_STOREP_F	16067	16064	0
// OP_ADDRESS	28	173	16068
// OP_STOREP_FNC	16062	16068	0
// OP_LOAD_ENT	28	206	16069
// OP_STORE_ENT	16069	395	0
// OP_CALL0	567	0	0
// OP_ADDRESS	28	156	16070
// OP_STOREP_F	677	16070	0
// OP_DONE	0	0	0
void () button_wait = 
{
    self.state = STATE_TOP;
    self.nextthink = self.ltime + self.wait;
    self.think = button_return;
    activator = self.enemy;
    SUB_UseTargets();
    self.frame = 1.000;
};

// button_done
// function begins at statement 23280, parm_start=16072
// OP_ADDRESS	28	482	16072
// OP_STOREP_F	332	16072	0
// OP_DONE	0	0	0
void () button_done = 
{
    self.state = STATE_BOTTOM;
};

// button_return
// function begins at statement 23283, parm_start=16073
// OP_ADDRESS	28	482	16073
// OP_STOREP_F	334	16073	0
// OP_LOAD_V	28	483	16074
// OP_STORE_V	16074	4	0
// OP_LOAD_F	28	413	16077
// OP_STORE_V	16077	7	0
// OP_STORE_V	16071	10	0
// OP_CALL3	561	0	0
// OP_ADDRESS	28	156	16078
// OP_STOREP_F	619	16078	0
// OP_LOAD_F	28	177	16079
// OP_IFNOT	16079	3	0
// OP_ADDRESS	28	188	16080
// OP_STOREP_F	305	16080	0
// OP_DONE	0	0	0
void () button_return = 
{
    self.state = STATE_DOWN;
    SUB_CalcMove(self.pos1, self.speed, button_done);
    self.frame = 0.000;
    
    if(self.health)
    {
        self.takedamage = DAMAGE_YES;
    }
    
};

// button_blocked
// function begins at statement 23298, parm_start=16082
// OP_DONE	0	0	0
void () button_blocked = 
{
};

// button_fire
// function begins at statement 23299, parm_start=16083
// OP_LOAD_F	28	482	16083
// OP_EQ_F	16083	333	16084
// OP_LOAD_F	28	482	16085
// OP_EQ_F	16085	331	16086
// OP_OR	16084	16086	16087
// OP_IFNOT	16087	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	371	7	0
// OP_LOAD_S	28	233	16088
// OP_STORE_V	16088	10	0
// OP_STORE_V	677	13	0
// OP_STORE_V	375	16	0
// OP_CALL5	502	0	0
// OP_ADDRESS	28	482	16089
// OP_STOREP_F	333	16089	0
// OP_LOAD_V	28	487	16090
// OP_STORE_V	16090	4	0
// OP_LOAD_F	28	413	16093
// OP_STORE_V	16093	7	0
// OP_STORE_V	16061	10	0
// OP_CALL3	561	0	0
// OP_DONE	0	0	0
void () button_fire = 
{
    
    if((self.state == STATE_UP) || (self.state == STATE_TOP))
    {
        return;
    }
    
    sound(self, CHAN_VOICE, self.noise, 1.000, ATTN_NORM);
    self.state = STATE_UP;
    SUB_CalcMove(self.pos2, self.speed, button_wait);
};

// button_use
// function begins at statement 23322, parm_start=16095
// OP_ADDRESS	28	206	16095
// OP_STOREP_ENT	395	16095	0
// OP_CALL0	16082	0	0
// OP_DONE	0	0	0
void () button_use = 
{
    self.enemy = activator;
    button_fire();
};

// button_touch
// function begins at statement 23326, parm_start=16097
// OP_LOAD_S	29	154	16097
// OP_NE_S	16097	766	16098
// OP_IFNOT	16098	6	0
// OP_LOAD_ENT	29	219	16099
// OP_LOAD_S	16099	154	16100
// OP_NE_S	16100	766	16101
// OP_IFNOT	16101	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	206	16102
// OP_STOREP_ENT	29	16102	0
// OP_CALL0	16082	0	0
// OP_DONE	0	0	0
void () button_touch = 
{
    
    if(other.classname != "player")
    {
        
        if(other.goalentity.classname != "player")
        {
            return;
        }
        
    }
    
    self.enemy = other;
    button_fire();
};

// button_killed
// function begins at statement 23338, parm_start=16104
// OP_ADDRESS	28	206	16104
// OP_STOREP_ENT	396	16104	0
// OP_ADDRESS	28	177	16105
// OP_LOAD_F	28	210	16106
// OP_STOREP_F	16106	16105	0
// OP_ADDRESS	28	188	16107
// OP_STOREP_F	304	16107	0
// OP_CALL0	16082	0	0
// OP_DONE	0	0	0
void () button_killed = 
{
    self.enemy = damage_attacker;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    button_fire();
};

// func_button
// function begins at statement 23347, parm_start=16109
// OP_LOAD_F	28	232	16111
// OP_EQ_F	16111	619	16112
// OP_IFNOT	16112	5	0
// OP_STORE_V	16113	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16114
// OP_STOREP_S	16113	16114	0
// OP_LOAD_F	28	232	16115
// OP_EQ_F	16115	677	16116
// OP_IFNOT	16116	5	0
// OP_STORE_V	16117	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16118
// OP_STOREP_S	16117	16118	0
// OP_LOAD_F	28	232	16119
// OP_EQ_F	16119	806	16120
// OP_IFNOT	16120	5	0
// OP_STORE_V	16121	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16122
// OP_STOREP_S	16121	16122	0
// OP_LOAD_F	28	232	16123
// OP_EQ_F	16123	788	16124
// OP_IFNOT	16124	5	0
// OP_STORE_V	16125	4	0
// OP_CALL1	513	0	0
// OP_ADDRESS	28	233	16126
// OP_STOREP_S	16125	16126	0
// OP_CALL0	571	0	0
// OP_ADDRESS	28	128	16127
// OP_STOREP_F	286	16127	0
// OP_ADDRESS	28	129	16128
// OP_STOREP_F	295	16128	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	155	16129
// OP_STORE_V	16129	7	0
// OP_CALL2	498	0	0
// OP_ADDRESS	28	174	16130
// OP_STOREP_FNC	16081	16130	0
// OP_ADDRESS	28	172	16131
// OP_STOREP_FNC	16094	16131	0
// OP_LOAD_F	28	177	16132
// OP_IFNOT	16132	9	0
// OP_ADDRESS	28	210	16133
// OP_LOAD_F	28	177	16134
// OP_STOREP_F	16134	16133	0
// OP_ADDRESS	28	411	16135
// OP_STOREP_FNC	16103	16135	0
// OP_ADDRESS	28	188	16136
// OP_STOREP_F	305	16136	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	171	16137
// OP_STOREP_FNC	16096	16137	0
// OP_LOAD_F	28	413	16138
// OP_NOT_F	16138	0	16139
// OP_IFNOT	16139	3	0
// OP_ADDRESS	28	413	16140
// OP_STOREP_F	1155	16140	0
// OP_LOAD_F	28	462	16141
// OP_NOT_F	16141	0	16142
// OP_IFNOT	16142	3	0
// OP_ADDRESS	28	462	16143
// OP_STOREP_F	677	16143	0
// OP_LOAD_F	28	481	16144
// OP_NOT_F	16144	0	16145
// OP_IFNOT	16145	3	0
// OP_ADDRESS	28	481	16146
// OP_STOREP_F	808	16146	0
// OP_ADDRESS	28	482	16147
// OP_STOREP_F	332	16147	0
// OP_ADDRESS	28	483	16148
// OP_LOAD_V	28	130	16151
// OP_STOREP_V	16151	16148	0
// OP_ADDRESS	28	487	16154
// OP_LOAD_V	28	483	16157
// OP_LOAD_V	28	227	16160
// OP_LOAD_V	28	227	16163
// OP_LOAD_V	28	167	16166
// OP_MUL_V	16163	16166	16169
// OP_STORE_V	16169	4	0
// OP_CALL1	534	0	0
// OP_LOAD_F	28	481	16170
// OP_SUB_F	1	16170	16171
// OP_MUL_VF	16160	16171	16172
// OP_ADD_V	16157	16172	16175
// OP_STOREP_V	16175	16154	0
// OP_DONE	0	0	0
void () func_button = 
{
    local float gtemp;
    local float ftemp;
    
    if(self.sounds == 0.000)
    {
        precache_sound("buttons/airbut1.wav");
        self.noise = "buttons/airbut1.wav";
    }
    
    
    if(self.sounds == 1.000)
    {
        precache_sound("buttons/switch21.wav");
        self.noise = "buttons/switch21.wav";
    }
    
    
    if(self.sounds == 2.000)
    {
        precache_sound("buttons/switch02.wav");
        self.noise = "buttons/switch02.wav";
    }
    
    
    if(self.sounds == 3.000)
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
        self.speed = 40.000;
    }
    
    
    if(!self.wait)
    {
        self.wait = 1.000;
    }
    
    
    if(!self.lip)
    {
        self.lip = 4.000;
    }
    
    self.state = STATE_BOTTOM;
    self.pos1 = self.origin;
    self.pos2 = self.pos1 + (self.movedir * ((fabs(self.movedir * self.size)) - self.lip));
};

