void () button_return;
// button_wait
// function begins at statement 22467, parm_start=15953
// OP_ADDRESS	28	447	15953
// OP_STOREP_F	296	15953	0
// OP_ADDRESS	28	150	15954
// OP_LOAD_F	28	102	15955
// OP_LOAD_F	28	427	15956
// OP_ADD_F	15955	15956	15957
// OP_STOREP_F	15957	15954	0
// OP_ADDRESS	28	148	15958
// OP_STOREP_FNC	15952	15958	0
// OP_LOAD_ENT	28	181	15959
// OP_STORE_ENT	15959	360	0
// OP_CALL0	532	0	0
// OP_ADDRESS	28	131	15960
// OP_STOREP_F	819	15960	0
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
// function begins at statement 22482, parm_start=15962
// OP_ADDRESS	28	447	15962
// OP_STOREP_F	297	15962	0
// OP_DONE	0	0	0
void () button_done = 
{
    self.state = STATE_BOTTOM;
};

// button_return
// function begins at statement 22485, parm_start=15963
// OP_ADDRESS	28	447	15963
// OP_STOREP_F	299	15963	0
// OP_LOAD_V	28	448	15964
// OP_STORE_V	15964	4	0
// OP_LOAD_F	28	378	15967
// OP_STORE_V	15967	7	0
// OP_STORE_V	15961	10	0
// OP_CALL3	526	0	0
// OP_ADDRESS	28	131	15968
// OP_STOREP_F	817	15968	0
// OP_LOAD_F	28	152	15969
// OP_IFNOT	15969	3	0
// OP_ADDRESS	28	163	15970
// OP_STOREP_F	257	15970	0
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
// function begins at statement 22500, parm_start=15972
// OP_DONE	0	0	0
void () button_blocked = 
{
};

// button_fire
// function begins at statement 22501, parm_start=15973
// OP_LOAD_F	28	447	15973
// OP_EQ_F	15973	298	15974
// OP_LOAD_F	28	447	15975
// OP_EQ_F	15975	296	15976
// OP_OR	15974	15976	15977
// OP_IFNOT	15977	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	336	7	0
// OP_LOAD_S	28	208	15978
// OP_STORE_V	15978	10	0
// OP_STORE_V	819	13	0
// OP_STORE_V	340	16	0
// OP_CALL5	467	0	0
// OP_ADDRESS	28	447	15979
// OP_STOREP_F	298	15979	0
// OP_LOAD_V	28	452	15980
// OP_STORE_V	15980	4	0
// OP_LOAD_F	28	378	15983
// OP_STORE_V	15983	7	0
// OP_STORE_V	15951	10	0
// OP_CALL3	526	0	0
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
// function begins at statement 22524, parm_start=15985
// OP_ADDRESS	28	181	15985
// OP_STOREP_ENT	360	15985	0
// OP_CALL0	15972	0	0
// OP_DONE	0	0	0
void () button_use = 
{
    self.enemy = activator;
    button_fire();
};

// button_touch
// function begins at statement 22528, parm_start=15987
// OP_LOAD_S	29	129	15987
// OP_NE_S	15987	880	15988
// OP_IFNOT	15988	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	15989
// OP_STOREP_ENT	29	15989	0
// OP_CALL0	15972	0	0
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
// function begins at statement 22536, parm_start=15991
// OP_ADDRESS	28	181	15991
// OP_STOREP_ENT	361	15991	0
// OP_ADDRESS	28	152	15992
// OP_LOAD_F	28	185	15993
// OP_STOREP_F	15993	15992	0
// OP_ADDRESS	28	163	15994
// OP_STOREP_F	256	15994	0
// OP_CALL0	15972	0	0
// OP_DONE	0	0	0
void () button_killed = 
{
    self.enemy = damage_attacker;
    self.health = self.max_health;
    self.takedamage = DAMAGE_NO;
    button_fire();
};

// func_button
// function begins at statement 22545, parm_start=15996
// OP_LOAD_F	28	207	15998
// OP_EQ_F	15998	817	15999
// OP_IFNOT	15999	5	0
// OP_STORE_V	16000	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16001
// OP_STOREP_S	16000	16001	0
// OP_LOAD_F	28	207	16002
// OP_EQ_F	16002	819	16003
// OP_IFNOT	16003	5	0
// OP_STORE_V	16004	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16005
// OP_STOREP_S	16004	16005	0
// OP_LOAD_F	28	207	16006
// OP_EQ_F	16006	821	16007
// OP_IFNOT	16007	5	0
// OP_STORE_V	16008	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16009
// OP_STOREP_S	16008	16009	0
// OP_LOAD_F	28	207	16010
// OP_EQ_F	16010	823	16011
// OP_IFNOT	16011	5	0
// OP_STORE_V	16012	4	0
// OP_CALL1	478	0	0
// OP_ADDRESS	28	208	16013
// OP_STOREP_S	16012	16013	0
// OP_CALL0	7371	0	0
// OP_ADDRESS	28	103	16014
// OP_STOREP_F	238	16014	0
// OP_ADDRESS	28	104	16015
// OP_STOREP_F	247	16015	0
// OP_STORE_V	28	4	0
// OP_LOAD_S	28	130	16016
// OP_STORE_V	16016	7	0
// OP_CALL2	463	0	0
// OP_ADDRESS	28	149	16017
// OP_STOREP_FNC	15971	16017	0
// OP_ADDRESS	28	147	16018
// OP_STOREP_FNC	15984	16018	0
// OP_LOAD_F	28	152	16019
// OP_IFNOT	16019	9	0
// OP_ADDRESS	28	185	16020
// OP_LOAD_F	28	152	16021
// OP_STOREP_F	16021	16020	0
// OP_ADDRESS	28	376	16022
// OP_STOREP_FNC	15990	16022	0
// OP_ADDRESS	28	163	16023
// OP_STOREP_F	257	16023	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	146	16024
// OP_STOREP_FNC	15986	16024	0
// OP_LOAD_F	28	378	16025
// OP_NOT_F	16025	0	16026
// OP_IFNOT	16026	3	0
// OP_ADDRESS	28	378	16027
// OP_STOREP_F	1632	16027	0
// OP_LOAD_F	28	427	16028
// OP_NOT_F	16028	0	16029
// OP_IFNOT	16029	3	0
// OP_ADDRESS	28	427	16030
// OP_STOREP_F	819	16030	0
// OP_LOAD_F	28	446	16031
// OP_NOT_F	16031	0	16032
// OP_IFNOT	16032	3	0
// OP_ADDRESS	28	446	16033
// OP_STOREP_F	825	16033	0
// OP_ADDRESS	28	447	16034
// OP_STOREP_F	297	16034	0
// OP_ADDRESS	28	448	16035
// OP_LOAD_V	28	105	16038
// OP_STOREP_V	16038	16035	0
// OP_ADDRESS	28	452	16041
// OP_LOAD_V	28	448	16044
// OP_LOAD_V	28	202	16047
// OP_LOAD_V	28	202	16050
// OP_LOAD_V	28	142	16053
// OP_MUL_V	16050	16053	16056
// OP_STORE_V	16056	4	0
// OP_CALL1	499	0	0
// OP_LOAD_F	28	446	16057
// OP_SUB_F	1	16057	16058
// OP_MUL_VF	16047	16058	16059
// OP_ADD_V	16044	16059	16062
// OP_STOREP_V	16062	16041	0
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

