// LaunchMissile
// function begins at statement 15024, parm_start=8860
// OP_LOAD_V	28	117	8870
// OP_STORE_V	8870	4	0
// OP_CALL1	447	0	0
// OP_LOAD_ENT	28	181	8873
// OP_LOAD_V	8873	105	8874
// OP_LOAD_ENT	28	181	8877
// OP_LOAD_V	8877	134	8878
// OP_ADD_V	8874	8878	8881
// OP_LOAD_ENT	28	181	8884
// OP_LOAD_V	8884	142	8885
// OP_MUL_VF	8885	2851	8888
// OP_ADD_V	8881	8888	8891
// OP_LOAD_V	8860	105	8894
// OP_SUB_V	8891	8894	8897
// OP_STORE_V	8897	8863	0
// OP_STORE_V	8863	4	0
// OP_CALL1	457	0	0
// OP_DIV_F	1	8861	8900
// OP_STORE_F	8900	8869	0
// OP_LOAD_ENT	28	181	8901
// OP_LOAD_V	8901	113	8902
// OP_STORE_V	8902	8866	0
// OP_STORE_F	337	8868	0
// OP_MUL_VF	8866	8869	8905
// OP_ADD_V	8863	8905	8908
// OP_STORE_V	8908	8863	0
// OP_STORE_V	8863	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	8863	0
// OP_MUL_FV	8862	62	8911
// OP_CALL0	452	0	0
// OP_SUB_F	1	1491	8914
// OP_MUL_VF	8911	8914	8915
// OP_ADD_V	8863	8915	8918
// OP_MUL_FV	8862	65	8921
// OP_CALL0	452	0	0
// OP_SUB_F	1	1491	8924
// OP_MUL_VF	8921	8924	8925
// OP_ADD_V	8918	8925	8928
// OP_STORE_V	8928	8863	0
// OP_ADDRESS	8860	113	8931
// OP_MUL_VF	8863	8861	8934
// OP_STOREP_V	8934	8931	0
// OP_ADDRESS	8860	117	8937
// OP_STOREP_V	286	8937	0
// OP_ADDRESS	8860	119	8940
// OP_LOAD_V	8860	113	8941
// OP_STORE_V	8941	4	0
// OP_CALL1	458	0	0
// OP_STOREP_F	1	8940	0
// OP_ADDRESS	8860	150	8944
// OP_ADD_F	31	313	8945
// OP_STOREP_F	8945	8944	0
// OP_ADDRESS	8860	148	8946
// OP_STOREP_FNC	519	8946	0
// OP_DONE	0	0	0
void (entity missile, float mspeed, float accuracy) LaunchMissile =
{
    local vector vec;
    local vector move;
    local float fly;
    makevectors(self.angles);
    vec = ((self.enemy.origin + self.enemy.mins) + (self.enemy.size * 0.700)) - missile.origin;
    fly = vlen(vec) / mspeed;
    move = self.enemy.velocity;
    move_z = MSG_BROADCAST;
    vec = vec + (move * fly);
    vec = normalize(vec);
    vec = (vec + ((accuracy * v_up) * (random() - 0.500))) + ((accuracy * v_right) * (random() - 0.500));
    missile.velocity = vec * mspeed;
    missile.angles = VEC_ORIGIN;
    missile.angles_y = vectoyaw(missile.velocity);
    missile.nextthink = time + TE_LIGHTNING1;
    missile.think = SUB_Remove;
};

void () wiz_run1;
void () wiz_side1;
// WizardCheckAttack
// function begins at statement 15080, parm_start=8949
// OP_LOAD_F	28	373	8957
// OP_LT	31	8957	8958
// OP_IFNOT	8958	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	759	0	8959
// OP_IFNOT	8959	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	245	8960
// OP_IFNOT	8960	8	0
// OP_LOAD_F	28	367	8961
// OP_NE_F	8961	368	8962
// OP_IFNOT	8962	4	0
// OP_ADDRESS	28	367	8963
// OP_STOREP_F	368	8963	0
// OP_CALL0	8947	0	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	8964
// OP_STORE_ENT	8964	8955	0
// OP_LOAD_V	28	105	8965
// OP_LOAD_V	28	166	8968
// OP_ADD_V	8965	8968	8971
// OP_STORE_V	8971	8949	0
// OP_LOAD_V	8955	105	8974
// OP_LOAD_V	8955	166	8977
// OP_ADD_V	8974	8977	8980
// OP_STORE_V	8980	8952	0
// OP_STORE_V	8949	4	0
// OP_STORE_V	8952	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	461	0	0
// OP_NE_E	78	8955	8983
// OP_IFNOT	8983	8	0
// OP_LOAD_F	28	367	8984
// OP_NE_F	8984	368	8985
// OP_IFNOT	8985	4	0
// OP_ADDRESS	28	367	8986
// OP_STOREP_F	368	8986	0
// OP_CALL0	8947	0	0
// OP_RETURN	213	0	0
// OP_EQ_F	761	242	8987
// OP_IFNOT	8987	3	0
// OP_STORE_F	832	8956	0
// OP_GOTO	10	0	0
// OP_EQ_F	761	243	8988
// OP_IFNOT	8988	3	0
// OP_STORE_F	1959	8956	0
// OP_GOTO	6	0	0
// OP_EQ_F	761	244	8989
// OP_IFNOT	8989	3	0
// OP_STORE_F	836	8956	0
// OP_GOTO	2	0	0
// OP_STORE_F	337	8956	0
// OP_CALL0	452	0	0
// OP_LT	1	8956	8990
// OP_IFNOT	8990	4	0
// OP_ADDRESS	28	367	8991
// OP_STOREP_F	371	8991	0
// OP_RETURN	214	0	0
// OP_EQ_F	761	244	8992
// OP_IFNOT	8992	8	0
// OP_LOAD_F	28	367	8993
// OP_NE_F	8993	368	8994
// OP_IFNOT	8994	4	0
// OP_ADDRESS	28	367	8995
// OP_STOREP_F	368	8995	0
// OP_CALL0	8947	0	0
// OP_GOTO	7	0	0
// OP_LOAD_F	28	367	8996
// OP_NE_F	8996	369	8997
// OP_IFNOT	8997	4	0
// OP_ADDRESS	28	367	8998
// OP_STOREP_F	369	8998	0
// OP_CALL0	8948	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () WizardCheckAttack =
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            wiz_run1();
        }
        
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_ent != targ)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            wiz_run1();
        }
        
        return FALSE;
    }
    
    if(enemy_range == RANGE_MELEE)
    {
        chance = 0.900;
    }
    else if(enemy_range == RANGE_NEAR)
    {
        chance = 0.600;
    }
    else if(enemy_range == RANGE_MID)
    {
        chance = 0.200;
    }
    else    
    {
        chance = MSG_BROADCAST;
    }
    
    
    if(random() < chance)
    {
        self.attack_state = AS_MISSILE;
        return TRUE;
    }
    
    if(enemy_range == RANGE_MID)
    {
        
        if(self.attack_state != AS_STRAIGHT)
        {
            self.attack_state = AS_STRAIGHT;
            wiz_run1();
        }
        
    }
    else    
    {
        
        if(self.attack_state != AS_SLIDING)
        {
            self.attack_state = AS_SLIDING;
            wiz_side1();
        }
        
    }
    
    return FALSE;
};

// WizardAttackFinished
// function begins at statement 15156, parm_start=9000
// OP_GE	761	244	9000
// OP_NOT_F	759	0	9001
// OP_OR	9000	9001	9002
// OP_IFNOT	9002	6	0
// OP_ADDRESS	28	367	9003
// OP_STOREP_F	368	9003	0
// OP_ADDRESS	28	148	9004
// OP_STOREP_FNC	8947	9004	0
// OP_GOTO	5	0	0
// OP_ADDRESS	28	367	9005
// OP_STOREP_F	369	9005	0
// OP_ADDRESS	28	148	9006
// OP_STOREP_FNC	8948	9006	0
// OP_DONE	0	0	0
void () WizardAttackFinished =
{
    if((enemy_range >= RANGE_MID) || !enemy_vis)
    {
        self.attack_state = AS_STRAIGHT;
        self.think = wiz_run1;
    }
    else    
    {
        self.attack_state = AS_SLIDING;
        self.think = wiz_side1;
    }
    
};

// Wiz_FastFire
// function begins at statement 15170, parm_start=9008
// OP_LOAD_ENT	28	201	9014
// OP_LOAD_F	9014	152	9015
// OP_GT	9015	337	9016
// OP_IFNOT	9016	47	0
// OP_LOAD_ENT	28	201	9017
// OP_ADDRESS	9017	133	9018
// OP_LOAD_ENT	28	201	9019
// OP_LOAD_F	9019	133	9020
// OP_BITOR	9020	334	9021
// OP_STOREP_F	9021	9018	0
// OP_LOAD_ENT	28	181	9022
// OP_LOAD_V	9022	117	9023
// OP_STORE_V	9023	4	0
// OP_CALL1	447	0	0
// OP_LOAD_ENT	28	181	9026
// OP_LOAD_V	9026	105	9027
// OP_LOAD_V	28	202	9030
// OP_MUL_FV	7768	9030	9033
// OP_SUB_V	9027	9033	9036
// OP_STORE_V	9036	9011	0
// OP_LOAD_V	28	105	9039
// OP_SUB_V	9011	9039	9042
// OP_STORE_V	9042	4	0
// OP_CALL1	454	0	0
// OP_STORE_V	1	9008	0
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	9045	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_V	28	105	9046
// OP_STORE_V	9046	4	0
// OP_STORE_V	9008	7	0
// OP_CALL2	3206	0	0
// OP_ADDRESS	345	113	9049
// OP_MUL_VF	9008	1029	9052
// OP_STOREP_V	9052	9049	0
// OP_ADDRESS	345	201	9055
// OP_LOAD_ENT	28	201	9056
// OP_STOREP_ENT	9056	9055	0
// OP_ADDRESS	345	129	9057
// OP_STOREP_S	3301	9057	0
// OP_STORE_V	345	4	0
// OP_STORE_V	9058	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	345	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_DONE	0	0	0
void () Wiz_FastFire =
{
    local vector vec;
    local vector dst;
    
    if(self.owner.health > MSG_BROADCAST)
    {
        self.owner.effects = self.owner.effects | EF_MUZZLEFLASH;
        makevectors(self.enemy.angles);
        dst = self.enemy.origin - (13.000 * self.movedir);
        vec = normalize(dst - self.origin);
        sound(self, CHAN_WEAPON, "wizard/wattack.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        launch_spike(self.origin, vec);
        newmis.velocity = vec * 600.000;
        newmis.owner = self.owner;
        newmis.classname = "wizspike";
        setmodel(newmis, "progs/w_spike.mdl");
        setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    }
    
    remove(self);
};

// Wiz_StartFast
// function begins at statement 15223, parm_start=9060
// OP_STORE_V	28	4	0
// OP_STORE_V	321	7	0
// OP_STORE_V	9045	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_ADDRESS	28	175	9061
// OP_LOAD_V	28	117	9064
// OP_STOREP_V	9064	9061	0
// OP_LOAD_V	28	117	9067
// OP_STORE_V	9067	4	0
// OP_CALL1	447	0	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	9060	0
// OP_ADDRESS	9060	201	9070
// OP_STOREP_ENT	28	9070	0
// OP_ADDRESS	9060	150	9071
// OP_ADD_F	31	1959	9072
// OP_STOREP_F	9072	9071	0
// OP_STORE_V	9060	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	9073
// OP_ADD_V	9073	9076	9079
// OP_MUL_VF	59	2901	9082
// OP_ADD_V	9079	9082	9085
// OP_MUL_VF	65	2901	9088
// OP_ADD_V	9085	9088	9091
// OP_STORE_V	9060	4	0
// OP_STORE_V	9091	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	9060	181	9094
// OP_LOAD_ENT	28	181	9095
// OP_STOREP_ENT	9095	9094	0
// OP_ADDRESS	9060	150	9096
// OP_ADD_F	31	1964	9097
// OP_STOREP_F	9097	9096	0
// OP_ADDRESS	9060	148	9098
// OP_STOREP_FNC	9007	9098	0
// OP_ADDRESS	9060	202	9099
// OP_STOREP_V	65	9099	0
// OP_CALL0	459	0	0
// OP_STORE_ENT	1	9060	0
// OP_ADDRESS	9060	201	9102
// OP_STOREP_ENT	28	9102	0
// OP_ADDRESS	9060	150	9103
// OP_ADD_F	31	7368	9104
// OP_STOREP_F	9104	9103	0
// OP_STORE_V	9060	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	450	0	0
// OP_LOAD_V	28	105	9105
// OP_ADD_V	9105	9076	9108
// OP_MUL_VF	59	2901	9111
// OP_ADD_V	9108	9111	9114
// OP_MUL_VF	65	9117	9118
// OP_ADD_V	9114	9118	9121
// OP_STORE_V	9060	4	0
// OP_STORE_V	9121	7	0
// OP_CALL2	448	0	0
// OP_ADDRESS	9060	181	9124
// OP_LOAD_ENT	28	181	9125
// OP_STOREP_ENT	9125	9124	0
// OP_ADDRESS	9060	150	9126
// OP_ADD_F	31	987	9127
// OP_STOREP_F	9127	9126	0
// OP_ADDRESS	9060	148	9128
// OP_STOREP_FNC	9007	9128	0
// OP_ADDRESS	9060	202	9129
// OP_SUB_V	286	65	9132
// OP_STOREP_V	9132	9129	0
// OP_DONE	0	0	0
void () Wiz_StartFast =
{
    local entity missile;
    sound(self, CHAN_WEAPON, "wizard/wattack.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    self.v_angle = self.angles;
    makevectors(self.angles);
    missile = spawn();
    missile.owner = self;
    missile.nextthink = time + 0.600;
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, ((self.origin + '0.000 0.000 30.000') + (v_forward * 14.000)) + (v_right * 14.000));
    missile.enemy = self.enemy;
    missile.nextthink = time + 0.800;
    missile.think = Wiz_FastFire;
    missile.movedir = v_right;
    missile = spawn();
    missile.owner = self;
    missile.nextthink = time + SPAWNFLAG_SUPERSPIKE;
    setsize(missile, VEC_ORIGIN, VEC_ORIGIN);
    setorigin(missile, ((self.origin + '0.000 0.000 30.000') + (v_forward * 14.000)) + (v_right * -14.000));
    missile.enemy = self.enemy;
    missile.nextthink = time + 0.300;
    missile.think = Wiz_FastFire;
    missile.movedir = VEC_ORIGIN - v_right;
};

// Wiz_idlesound
// function begins at statement 15297, parm_start=9136
// OP_CALL0	452	0	0
// OP_MUL_F	1	313	9137
// OP_STORE_F	9137	9136	0
// OP_LOAD_F	28	443	9138
// OP_LT	9138	31	9139
// OP_IFNOT	9139	20	0
// OP_ADDRESS	28	443	9140
// OP_ADD_F	31	7369	9141
// OP_STOREP_F	9141	9140	0
// OP_GT	9136	9142	9143
// OP_IFNOT	9143	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9144	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_LT	9136	6842	9145
// OP_IFNOT	9145	7	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9146	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	327	16	0
// OP_CALL5	453	0	0
// OP_RETURN	0	0	0
// OP_DONE	0	0	0
void () Wiz_idlesound =
{
    local float wr;
    wr = random() * TE_LIGHTNING1;
    
    if(self.waitmin < time)
    {
        self.waitmin = time + SPAWNFLAG_LASER;
        
        if(wr > 4.500)
        {
            sound(self, CHAN_VOICE, "wizard/widle1.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
        }
        
        
        if(wr < 1.500)
        {
            sound(self, CHAN_VOICE, "wizard/widle2.wav", SPAWNFLAG_SUPERSPIKE, ATTN_IDLE);
        }
        
    }
    
    return;
};

// wiz_stand1
// function begins at statement 15324, parm_start=9148
// OP_STATE	337	9148	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand1 =
{
    *** UNPROCESSED OPCODE OP_STATE 337 9148 0
    ai_stand();
};

// wiz_stand2
// function begins at statement 15327, parm_start=9149
// OP_STATE	7368	9149	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand2 =
{
    *** UNPROCESSED OPCODE OP_STATE 7368 9149 0
    ai_stand();
};

// wiz_stand3
// function begins at statement 15330, parm_start=9150
// OP_STATE	7369	9150	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7369 9150 0
    ai_stand();
};

// wiz_stand4
// function begins at statement 15333, parm_start=9151
// OP_STATE	370	9151	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand4 =
{
    *** UNPROCESSED OPCODE OP_STATE 370 9151 0
    ai_stand();
};

// wiz_stand5
// function begins at statement 15336, parm_start=9152
// OP_STATE	6076	9152	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand5 =
{
    *** UNPROCESSED OPCODE OP_STATE 6076 9152 0
    ai_stand();
};

// wiz_stand6
// function begins at statement 15339, parm_start=9153
// OP_STATE	313	9153	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand6 =
{
    *** UNPROCESSED OPCODE OP_STATE 313 9153 0
    ai_stand();
};

// wiz_stand7
// function begins at statement 15342, parm_start=9154
// OP_STATE	314	9154	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand7 =
{
    *** UNPROCESSED OPCODE OP_STATE 314 9154 0
    ai_stand();
};

// wiz_stand8
// function begins at statement 15345, parm_start=9155
// OP_STATE	315	9147	0
// OP_CALL0	1359	0	0
// OP_DONE	0	0	0
void () wiz_stand8 =
{
    *** UNPROCESSED OPCODE OP_STATE 315 9147 0
    ai_stand();
};

// wiz_walk1
// function begins at statement 15348, parm_start=9156
// OP_STATE	337	9156	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_CALL0	9135	0	0
// OP_DONE	0	0	0
void () wiz_walk1 =
{
    *** UNPROCESSED OPCODE OP_STATE 337 9156 0
    ai_walk(SECRET_NO_SHOOT);
    Wiz_idlesound();
};

// wiz_walk2
// function begins at statement 15353, parm_start=9157
// OP_STATE	7368	9157	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk2 =
{
    *** UNPROCESSED OPCODE OP_STATE 7368 9157 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_walk3
// function begins at statement 15357, parm_start=9158
// OP_STATE	7369	9158	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7369 9158 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_walk4
// function begins at statement 15361, parm_start=9159
// OP_STATE	370	9159	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk4 =
{
    *** UNPROCESSED OPCODE OP_STATE 370 9159 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_walk5
// function begins at statement 15365, parm_start=9160
// OP_STATE	6076	9160	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk5 =
{
    *** UNPROCESSED OPCODE OP_STATE 6076 9160 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_walk6
// function begins at statement 15369, parm_start=9161
// OP_STATE	313	9161	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk6 =
{
    *** UNPROCESSED OPCODE OP_STATE 313 9161 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_walk7
// function begins at statement 15373, parm_start=9162
// OP_STATE	314	9162	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk7 =
{
    *** UNPROCESSED OPCODE OP_STATE 314 9162 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_walk8
// function begins at statement 15377, parm_start=9163
// OP_STATE	315	9155	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1351	0	0
// OP_DONE	0	0	0
void () wiz_walk8 =
{
    *** UNPROCESSED OPCODE OP_STATE 315 9155 0
    ai_walk(SECRET_NO_SHOOT);
};

// wiz_side1
// function begins at statement 15381, parm_start=9163
// OP_STATE	337	9163	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_CALL0	9135	0	0
// OP_DONE	0	0	0
void () wiz_side1 =
{
    *** UNPROCESSED OPCODE OP_STATE 337 9163 0
    ai_run(SECRET_NO_SHOOT);
    Wiz_idlesound();
};

// wiz_side2
// function begins at statement 15386, parm_start=9164
// OP_STATE	7368	9164	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side2 =
{
    *** UNPROCESSED OPCODE OP_STATE 7368 9164 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_side3
// function begins at statement 15390, parm_start=9165
// OP_STATE	7369	9165	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side3 =
{
    *** UNPROCESSED OPCODE OP_STATE 7369 9165 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_side4
// function begins at statement 15394, parm_start=9166
// OP_STATE	370	9166	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side4 =
{
    *** UNPROCESSED OPCODE OP_STATE 370 9166 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_side5
// function begins at statement 15398, parm_start=9167
// OP_STATE	6076	9167	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side5 =
{
    *** UNPROCESSED OPCODE OP_STATE 6076 9167 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_side6
// function begins at statement 15402, parm_start=9168
// OP_STATE	313	9168	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side6 =
{
    *** UNPROCESSED OPCODE OP_STATE 313 9168 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_side7
// function begins at statement 15406, parm_start=9169
// OP_STATE	314	9169	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side7 =
{
    *** UNPROCESSED OPCODE OP_STATE 314 9169 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_side8
// function begins at statement 15410, parm_start=9170
// OP_STATE	315	8948	0
// OP_STORE_V	6077	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_side8 =
{
    *** UNPROCESSED OPCODE OP_STATE 315 8948 0
    ai_run(SECRET_NO_SHOOT);
};

// wiz_run1
// function begins at statement 15414, parm_start=9170
// OP_STATE	1876	9170	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_CALL0	9135	0	0
// OP_DONE	0	0	0
void () wiz_run1 =
{
    *** UNPROCESSED OPCODE OP_STATE 1876 9170 0
    ai_run(SECRET_YES_SHOOT);
    Wiz_idlesound();
};

// wiz_run2
// function begins at statement 15419, parm_start=9171
// OP_STATE	6078	9171	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run2 =
{
    *** UNPROCESSED OPCODE OP_STATE 6078 9171 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run3
// function begins at statement 15423, parm_start=9172
// OP_STATE	4861	9172	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run3 =
{
    *** UNPROCESSED OPCODE OP_STATE 4861 9172 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run4
// function begins at statement 15427, parm_start=9173
// OP_STATE	3319	9173	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run4 =
{
    *** UNPROCESSED OPCODE OP_STATE 3319 9173 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run5
// function begins at statement 15431, parm_start=9174
// OP_STATE	7776	9174	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run5 =
{
    *** UNPROCESSED OPCODE OP_STATE 7776 9174 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run6
// function begins at statement 15435, parm_start=9175
// OP_STATE	894	9175	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run6 =
{
    *** UNPROCESSED OPCODE OP_STATE 894 9175 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run7
// function begins at statement 15439, parm_start=9176
// OP_STATE	7779	9176	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run7 =
{
    *** UNPROCESSED OPCODE OP_STATE 7779 9176 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run8
// function begins at statement 15443, parm_start=9177
// OP_STATE	7781	9177	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run8 =
{
    *** UNPROCESSED OPCODE OP_STATE 7781 9177 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run9
// function begins at statement 15447, parm_start=9178
// OP_STATE	301	9178	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run9 =
{
    *** UNPROCESSED OPCODE OP_STATE 301 9178 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run10
// function begins at statement 15451, parm_start=9179
// OP_STATE	4437	9179	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run10 =
{
    *** UNPROCESSED OPCODE OP_STATE 4437 9179 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run11
// function begins at statement 15455, parm_start=9180
// OP_STATE	1890	9180	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run11 =
{
    *** UNPROCESSED OPCODE OP_STATE 1890 9180 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run12
// function begins at statement 15459, parm_start=9181
// OP_STATE	7788	9181	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run12 =
{
    *** UNPROCESSED OPCODE OP_STATE 7788 9181 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run13
// function begins at statement 15463, parm_start=9182
// OP_STATE	302	9182	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run13 =
{
    *** UNPROCESSED OPCODE OP_STATE 302 9182 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_run14
// function begins at statement 15467, parm_start=9183
// OP_STATE	303	8947	0
// OP_STORE_V	6078	4	0
// OP_CALL1	1432	0	0
// OP_DONE	0	0	0
void () wiz_run14 =
{
    *** UNPROCESSED OPCODE OP_STATE 303 8947 0
    ai_run(SECRET_YES_SHOOT);
};

// wiz_fast1
// function begins at statement 15471, parm_start=9184
// OP_STATE	5105	9184	0
// OP_CALL0	758	0	0
// OP_CALL0	9059	0	0
// OP_DONE	0	0	0
void () wiz_fast1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5105 9184 0
    ai_face();
    Wiz_StartFast();
};

// wiz_fast2
// function begins at statement 15475, parm_start=9185
// OP_STATE	304	9185	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast2 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 9185 0
    ai_face();
};

// wiz_fast3
// function begins at statement 15478, parm_start=9186
// OP_STATE	305	9186	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast3 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 9186 0
    ai_face();
};

// wiz_fast4
// function begins at statement 15481, parm_start=9187
// OP_STATE	5674	9187	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5674 9187 0
    ai_face();
};

// wiz_fast5
// function begins at statement 15484, parm_start=9188
// OP_STATE	307	9188	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast5 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 9188 0
    ai_face();
};

// wiz_fast6
// function begins at statement 15487, parm_start=9189
// OP_STATE	5112	9189	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5112 9189 0
    ai_face();
};

// wiz_fast7
// function begins at statement 15490, parm_start=9190
// OP_STATE	307	9190	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast7 =
{
    *** UNPROCESSED OPCODE OP_STATE 307 9190 0
    ai_face();
};

// wiz_fast8
// function begins at statement 15493, parm_start=9191
// OP_STATE	5674	9191	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5674 9191 0
    ai_face();
};

// wiz_fast9
// function begins at statement 15496, parm_start=9192
// OP_STATE	305	9192	0
// OP_CALL0	758	0	0
// OP_DONE	0	0	0
void () wiz_fast9 =
{
    *** UNPROCESSED OPCODE OP_STATE 305 9192 0
    ai_face();
};

// wiz_fast10
// function begins at statement 15499, parm_start=9193
// OP_STATE	304	8947	0
// OP_CALL0	758	0	0
// OP_STORE_V	7369	4	0
// OP_CALL1	731	0	0
// OP_CALL0	8999	0	0
// OP_DONE	0	0	0
void () wiz_fast10 =
{
    *** UNPROCESSED OPCODE OP_STATE 304 8947 0
    ai_face();
    SUB_AttackFinished(SPAWNFLAG_LASER);
    WizardAttackFinished();
};

// wiz_pain1
// function begins at statement 15505, parm_start=9194
// OP_STATE	5445	9194	0
// OP_DONE	0	0	0
void () wiz_pain1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5445 9194 0
};

// wiz_pain2
// function begins at statement 15507, parm_start=9195
// OP_STATE	5447	9195	0
// OP_DONE	0	0	0
void () wiz_pain2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5447 9195 0
};

// wiz_pain3
// function begins at statement 15509, parm_start=9196
// OP_STATE	5449	9196	0
// OP_DONE	0	0	0
void () wiz_pain3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5449 9196 0
};

// wiz_pain4
// function begins at statement 15511, parm_start=9197
// OP_STATE	1390	8947	0
// OP_DONE	0	0	0
void () wiz_pain4 =
{
    *** UNPROCESSED OPCODE OP_STATE 1390 8947 0
};

// wiz_death1
// function begins at statement 15513, parm_start=9198
// OP_STATE	5452	9198	0
// OP_ADDRESS	28	114	9199
// OP_CALL0	452	0	0
// OP_MUL_F	3036	1	9200
// OP_ADD_F	5210	9200	9201
// OP_STOREP_F	9201	9199	0
// OP_ADDRESS	28	115	9202
// OP_CALL0	452	0	0
// OP_MUL_F	3036	1	9203
// OP_ADD_F	5210	9203	9204
// OP_STOREP_F	9204	9202	0
// OP_ADDRESS	28	116	9205
// OP_CALL0	452	0	0
// OP_MUL_F	1884	1	9206
// OP_ADD_F	1884	9206	9207
// OP_STOREP_F	9207	9205	0
// OP_ADDRESS	28	182	9208
// OP_LOAD_F	28	182	9209
// OP_LOAD_F	28	182	9210
// OP_BITAND	9210	223	9211
// OP_SUB_F	9209	9211	9212
// OP_STOREP_F	9212	9208	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9213	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_DONE	0	0	0
void () wiz_death1 =
{
    *** UNPROCESSED OPCODE OP_STATE 5452 9198 0
    random();
    self.velocity = -200.000 + (400.000 * random());
    random();
    self.velocity_y = -200.000 + (400.000 * random());
    random();
    self.velocity_z = 100.000 + (100.000 * random());
    self.flags = self.flags - (self.flags & FL_ONGROUND);
    sound(self, CHAN_VOICE, "wizard/wdeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
};

// wiz_death2
// function begins at statement 15542, parm_start=9214
// OP_STATE	5454	9214	0
// OP_DONE	0	0	0
void () wiz_death2 =
{
    *** UNPROCESSED OPCODE OP_STATE 5454 9214 0
};

// wiz_death3
// function begins at statement 15544, parm_start=9215
// OP_STATE	5456	9215	0
// OP_ADDRESS	28	104	9216
// OP_STOREP_F	237	9216	0
// OP_DONE	0	0	0
void () wiz_death3 =
{
    *** UNPROCESSED OPCODE OP_STATE 5456 9215 0
    self.solid = SOLID_NOT;
};

// wiz_death4
// function begins at statement 15548, parm_start=9217
// OP_STATE	5458	9217	0
// OP_DONE	0	0	0
void () wiz_death4 =
{
    *** UNPROCESSED OPCODE OP_STATE 5458 9217 0
};

// wiz_death5
// function begins at statement 15550, parm_start=9218
// OP_STATE	2227	9218	0
// OP_DONE	0	0	0
void () wiz_death5 =
{
    *** UNPROCESSED OPCODE OP_STATE 2227 9218 0
};

// wiz_death6
// function begins at statement 15552, parm_start=9219
// OP_STATE	5351	9219	0
// OP_DONE	0	0	0
void () wiz_death6 =
{
    *** UNPROCESSED OPCODE OP_STATE 5351 9219 0
};

// wiz_death7
// function begins at statement 15554, parm_start=9220
// OP_STATE	5353	9220	0
// OP_DONE	0	0	0
void () wiz_death7 =
{
    *** UNPROCESSED OPCODE OP_STATE 5353 9220 0
};

// wiz_death8
// function begins at statement 15556, parm_start=9221
// OP_STATE	5355	9220	0
// OP_DONE	0	0	0
void () wiz_death8 =
{
    *** UNPROCESSED OPCODE OP_STATE 5355 9220 0
};

// wiz_die
// function begins at statement 15558, parm_start=9222
// OP_LOAD_F	28	152	9222
// OP_LT	9222	4741	9223
// OP_IFNOT	9223	24	0
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	3826	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_LOAD_F	28	152	9225
// OP_STORE_V	9224	4	0
// OP_STORE_V	9225	7	0
// OP_CALL2	5247	0	0
// OP_LOAD_F	28	152	9226
// OP_STORE_V	3853	4	0
// OP_STORE_V	9226	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	9227
// OP_STORE_V	3853	4	0
// OP_STORE_V	9227	7	0
// OP_CALL2	5218	0	0
// OP_LOAD_F	28	152	9228
// OP_STORE_V	3853	4	0
// OP_STORE_V	9228	7	0
// OP_CALL2	5218	0	0
// OP_RETURN	0	0	0
// OP_CALL0	9197	0	0
// OP_DONE	0	0	0
void () wiz_die =
{
    
    if(self.health < -40.000)
    {
        sound(self, CHAN_VOICE, "player/udeath.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
        ThrowHead("progs/h_wizard.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        ThrowGib("progs/gib2.mdl", self.health);
        return;
    }
    
    wiz_death1();
};

// Wiz_Pain
// function begins at statement 15586, parm_start=9230
// OP_STORE_V	28	4	0
// OP_STORE_V	322	7	0
// OP_STORE_V	9232	10	0
// OP_STORE_V	7368	13	0
// OP_STORE_V	326	16	0
// OP_CALL5	453	0	0
// OP_CALL0	452	0	0
// OP_MUL_F	1	5384	9233
// OP_GT	9233	9231	9234
// OP_IFNOT	9234	2	0
// OP_RETURN	0	0	0
// OP_CALL0	9193	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) Wiz_Pain =
{
    sound(self, CHAN_VOICE, "wizard/wpain.wav", SPAWNFLAG_SUPERSPIKE, ATTN_NORM);
    
    if((random() * 70.000) > damage)
    {
        return;
    }
    
    wiz_pain1();
};

// Wiz_Missile
// function begins at statement 15599, parm_start=9236
// OP_CALL0	9183	0	0
// OP_DONE	0	0	0
void () Wiz_Missile =
{
    wiz_fast1();
};

// monster_wizard
// function begins at statement 15601, parm_start=9237
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	460	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	9237	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9224	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9058	4	0
// OP_CALL1	465	0	0
// OP_STORE_V	9238	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9045	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9213	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9144	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9146	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	9232	4	0
// OP_CALL1	464	0	0
// OP_STORE_V	1253	4	0
// OP_CALL1	464	0	0
// OP_ADDRESS	28	104	9239
// OP_STOREP_F	240	9239	0
// OP_ADDRESS	28	103	9240
// OP_STOREP_F	229	9240	0
// OP_STORE_V	28	4	0
// OP_STORE_V	9237	7	0
// OP_CALL2	449	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	289	7	0
// OP_STORE_V	8669	10	0
// OP_CALL3	450	0	0
// OP_ADDRESS	28	152	9241
// OP_STOREP_F	788	9241	0
// OP_ADDRESS	28	356	9242
// OP_STOREP_FNC	9147	9242	0
// OP_ADDRESS	28	357	9243
// OP_STOREP_FNC	9155	9243	0
// OP_ADDRESS	28	358	9244
// OP_STOREP_FNC	8947	9244	0
// OP_ADDRESS	28	359	9245
// OP_STOREP_FNC	9235	9245	0
// OP_ADDRESS	28	361	9246
// OP_STOREP_FNC	9229	9246	0
// OP_ADDRESS	28	362	9247
// OP_STOREP_FNC	9221	9247	0
// OP_CALL0	5606	0	0
// OP_DONE	0	0	0
void () monster_wizard =
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/wizard.mdl");
    precache_model("progs/h_wizard.mdl");
    precache_model("progs/w_spike.mdl");
    precache_sound("wizard/hit.wav");
    precache_sound("wizard/wattack.wav");
    precache_sound("wizard/wdeath.wav");
    precache_sound("wizard/widle1.wav");
    precache_sound("wizard/widle2.wav");
    precache_sound("wizard/wpain.wav");
    precache_sound("wizard/wsight.wav");
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    setmodel(self, "progs/wizard.mdl");
    setsize(self, VEC_HULL_MIN, '16.000 16.000 40.000');
    self.health = 80.000;
    self.th_stand = wiz_stand1;
    self.th_walk = wiz_walk1;
    self.th_run = wiz_run1;
    self.th_missile = Wiz_Missile;
    self.th_pain = Wiz_Pain;
    self.th_die = wiz_die;
    flymonster_start();
};

