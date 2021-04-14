void () T_MissileTouch;
void () info_player_start;
void (entity targ, entity attacker) ClientObituary;
void () monster_death_use;

// CanDamage
// function begins at statement 3781, parm_start=3926
// OP_LOAD_F	3926	103	3928
// OP_EQ_F	3928	232	3929
// OP_IFNOT	3929	18	0
// OP_LOAD_V	3927	105	3930
// OP_STORE_V	3930	4	0
// OP_LOAD_V	3926	94	3933
// OP_LOAD_V	3926	98	3936
// OP_ADD_V	3933	3936	3939
// OP_MUL_FV	539	3939	3942
// OP_STORE_V	3942	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	3945
// OP_IFNOT	3945	2	0
// OP_RETURN	214	0	0
// OP_EQ_E	78	3926	3946
// OP_IFNOT	3946	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_LOAD_V	3927	105	3947
// OP_STORE_V	3947	4	0
// OP_LOAD_V	3926	105	3950
// OP_STORE_V	3950	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	3953
// OP_IFNOT	3953	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	3927	105	3954
// OP_STORE_V	3954	4	0
// OP_LOAD_V	3926	105	3957
// OP_ADD_V	3957	3960	3963
// OP_STORE_V	3963	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	3966
// OP_IFNOT	3966	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	3927	105	3967
// OP_STORE_V	3967	4	0
// OP_LOAD_V	3926	105	3970
// OP_ADD_V	3970	3973	3976
// OP_STORE_V	3976	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	3979
// OP_IFNOT	3979	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	3927	105	3980
// OP_STORE_V	3980	4	0
// OP_LOAD_V	3926	105	3983
// OP_ADD_V	3983	3986	3989
// OP_STORE_V	3989	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	3992
// OP_IFNOT	3992	2	0
// OP_RETURN	214	0	0
// OP_LOAD_V	3927	105	3993
// OP_STORE_V	3993	4	0
// OP_LOAD_V	3926	105	3996
// OP_ADD_V	3996	3999	4002
// OP_STORE_V	4002	7	0
// OP_STORE_V	214	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	466	0	0
// OP_EQ_F	70	214	4005
// OP_IFNOT	4005	2	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float (entity targ, entity inflictor) CanDamage = 
{
    
    if(targ.movetype == MOVETYPE_PUSH)
    {
        traceline(inflictor.origin, RA_PLAYERSTATTIME * (targ.absmin + targ.absmax), TRUE, self);
        
        if(trace_fraction == TRUE)
        {
            return TRUE;
        }
        
        
        if(trace_ent == targ)
        {
            return TRUE;
        }
        
        return FALSE;
    }
    
    traceline(inflictor.origin, targ.origin, TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15 15 0', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15 -15 0', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '-15 15 0', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    traceline(inflictor.origin, targ.origin + '15 -15 0', TRUE, self);
    
    if(trace_fraction == TRUE)
    {
        return TRUE;
    }
    
    return FALSE;
};


// Killed
// function begins at statement 3857, parm_start=4007
// OP_STORE_ENT	28	4009	0
// OP_STORE_ENT	4007	28	0
// OP_LOAD_F	28	152	4010
// OP_LT	4010	4011	4012
// OP_IFNOT	4012	3	0
// OP_ADDRESS	28	152	4013
// OP_STOREP_F	4011	4013	0
// OP_LOAD_F	28	103	4014
// OP_EQ_F	4014	232	4015
// OP_LOAD_F	28	103	4016
// OP_EQ_F	4016	227	4017
// OP_OR	4015	4017	4018
// OP_IFNOT	4018	5	0
// OP_LOAD_FNC	28	367	4019
// OP_CALL0	4019	0	0
// OP_STORE_ENT	4009	28	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	4020
// OP_STOREP_ENT	4008	4020	0
// OP_LOAD_F	28	182	4021
// OP_BITAND	4021	219	4022
// OP_IFNOT	4022	6	0
// OP_ADD_F	42	214	4023
// OP_STORE_F	4023	42	0
// OP_STORE_V	344	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	4008	7	0
// OP_CALL2	3924	0	0
// OP_LOAD_S	4008	129	4024
// OP_EQ_S	4024	1241	4025
// OP_IFNOT	4025	7	0
// OP_LOAD_F	4008	608	4026
// OP_STORE_V	4026	4	0
// OP_LOAD_F	4008	153	4027
// OP_STORE_V	4027	7	0
// OP_CALL2	1051	0	0
// OP_GOTO	12	0	0
// OP_LOAD_ENT	4008	201	4028
// OP_LOAD_S	4028	129	4029
// OP_EQ_S	4029	1241	4030
// OP_IFNOT	4030	8	0
// OP_LOAD_ENT	4008	201	4031
// OP_LOAD_F	4031	608	4032
// OP_STORE_V	4032	4	0
// OP_LOAD_ENT	4008	201	4033
// OP_LOAD_F	4033	153	4034
// OP_STORE_V	4034	7	0
// OP_CALL2	1051	0	0
// OP_LOAD_S	4007	129	4035
// OP_EQ_S	4035	1241	4036
// OP_IFNOT	4036	6	0
// OP_LOAD_F	4007	608	4037
// OP_STORE_V	4037	4	0
// OP_LOAD_F	4007	153	4038
// OP_STORE_V	4038	7	0
// OP_CALL2	1051	0	0
// OP_IFNOT	4008	3	0
// OP_ADDRESS	4008	618	4039
// OP_STOREP_ENT	28	4039	0
// OP_IFNOT	28	3	0
// OP_ADDRESS	28	619	4040
// OP_STOREP_ENT	4008	4040	0
// OP_ADDRESS	28	163	4041
// OP_STOREP_F	250	4041	0
// OP_ADDRESS	28	146	4042
// OP_STOREP_FNC	519	4042	0
// OP_CALL0	3925	0	0
// OP_LOAD_FNC	28	367	4043
// OP_CALL0	4043	0	0
// OP_STORE_ENT	4009	28	0
// OP_DONE	0	0	0
void (entity targ, entity attacker) Killed = 
{
    local entity oself;
    oself = self;
    self = targ;
    
    if(self.health < -99)
    {
        self.health = -99;
    }
    
    
    if((self.movetype == MOVETYPE_PUSH) || (self.movetype == MOVETYPE_NONE))
    {
        self.th_die();
        self = oself;
        return;
    }
    
    self.enemy = attacker;
    
    if(self.flags & FL_MONSTER)
    {
        killed_monsters = killed_monsters + TRUE;
        WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    }
    
    ClientObituary(self, attacker);
    if(attacker.classname == "bot")
    {
        msgUpdateClientFragsToAll(attacker.clientnumber, attacker.frags);
    }
    else
    {
        
        if(attacker.owner.classname == "bot")
        {
            msgUpdateClientFragsToAll(attacker.owner.clientnumber, attacker.owner.frags);
        }
        
    }
    
    
    if(targ.classname == "bot")
    {
        msgUpdateClientFragsToAll(targ.clientnumber, targ.frags);
    }
    
    
    if(attacker)
    {
        attacker.field000295 = self;
    }
    
    
    if(self)
    {
        self.field000296 = attacker;
    }
    
    self.takedamage = DAMAGE_NO;
    self.touch = SUB_Null;
    monster_death_use();
    self.th_die();
    self = oself;
};


// T_Damage
// function begins at statement 3930, parm_start=4044
// OP_IFNOT	816	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	4044	163	4054
// OP_NOT_F	4054	0	4055
// OP_IFNOT	4055	2	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	4046	352	0
// OP_LOAD_F	4046	382	4056
// OP_GT	4056	31	4057
// OP_IFNOT	4057	8	0
// OP_EQ_F	35	229	4058
// OP_IFNOT	4058	4	0
// OP_MUL_F	4047	217	4059
// OP_STORE_F	4059	4047	0
// OP_GOTO	3	0	0
// OP_MUL_F	4047	229	4060
// OP_STORE_F	4060	4047	0
// OP_LOAD_F	4044	187	4061
// OP_MUL_F	4061	4047	4062
// OP_STORE_V	4062	4	0
// OP_CALL1	485	0	0
// OP_STORE_F	1	4052	0
// OP_LOAD_F	4044	188	4063
// OP_GE	4052	4063	4064
// OP_IFNOT	4064	13	0
// OP_LOAD_F	4044	188	4065
// OP_STORE_F	4065	4052	0
// OP_ADDRESS	4044	187	4066
// OP_STOREP_F	213	4066	0
// OP_ADDRESS	4044	162	4067
// OP_LOAD_F	4044	162	4068
// OP_LOAD_F	4044	162	4069
// OP_BITOR	266	267	4070
// OP_BITOR	4070	268	4071
// OP_BITAND	4069	4071	4072
// OP_SUB_F	4068	4072	4073
// OP_STOREP_F	4073	4067	0
// OP_ADDRESS	4044	188	4074
// OP_LOAD_F	4044	188	4075
// OP_SUB_F	4075	4052	4076
// OP_STOREP_F	4076	4074	0
// OP_SUB_F	4047	4052	4077
// OP_STORE_V	4077	4	0
// OP_CALL1	485	0	0
// OP_STORE_F	1	4053	0
// OP_LOAD_F	4044	182	4078
// OP_BITAND	4078	217	4079
// OP_IFNOT	4079	11	0
// OP_ADDRESS	4044	198	4080
// OP_LOAD_F	4044	198	4081
// OP_ADD_F	4081	4053	4082
// OP_STOREP_F	4082	4080	0
// OP_ADDRESS	4044	199	4083
// OP_LOAD_F	4044	199	4084
// OP_ADD_F	4084	4052	4085
// OP_STOREP_F	4085	4083	0
// OP_ADDRESS	4044	200	4086
// OP_STOREP_ENT	4045	4086	0
// OP_NE_E	4045	30	4087
// OP_LOAD_F	4044	103	4088
// OP_EQ_F	4088	228	4089
// OP_AND	4087	4089	4090
// OP_IFNOT	4090	17	0
// OP_LOAD_V	4044	105	4091
// OP_LOAD_V	4045	94	4094
// OP_LOAD_V	4045	98	4097
// OP_ADD_V	4094	4097	4100
// OP_MUL_VF	4100	539	4103
// OP_SUB_V	4091	4103	4106
// OP_STORE_V	4106	4048	0
// OP_STORE_V	4048	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	4048	0
// OP_ADDRESS	4044	113	4109
// OP_LOAD_V	4044	113	4112
// OP_MUL_VF	4048	4047	4115
// OP_MUL_VF	4115	217	4118
// OP_ADD_V	4112	4118	4121
// OP_STOREP_V	4121	4109	0
// OP_NE_E	4045	30	4124
// OP_LOAD_S	4044	129	4125
// OP_EQ_S	4125	1241	4126
// OP_AND	4124	4126	4127
// OP_IFNOT	4127	28	0
// OP_LOAD_V	4044	105	4128
// OP_LOAD_V	4045	94	4131
// OP_LOAD_V	4045	98	4134
// OP_ADD_V	4131	4134	4137
// OP_MUL_VF	4137	539	4140
// OP_SUB_V	4128	4140	4143
// OP_STORE_V	4143	4048	0
// OP_STORE_V	4048	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	4048	0
// OP_ADDRESS	4044	113	4146
// OP_LOAD_V	4044	113	4149
// OP_MUL_VF	4048	4047	4152
// OP_MUL_VF	4152	217	4155
// OP_ADD_V	4149	4155	4158
// OP_STOREP_V	4158	4146	0
// OP_LOAD_F	4044	601	4161
// OP_GT	4161	31	4162
// OP_IFNOT	4162	9	0
// OP_ADDRESS	4044	113	4163
// OP_LOAD_V	4044	113	4166
// OP_LOAD_V	4044	602	4169
// OP_ADD_V	4166	4169	4172
// OP_STOREP_V	4172	4163	0
// OP_ADDRESS	4044	601	4175
// OP_SUB_F	31	214	4176
// OP_STOREP_F	4176	4175	0
// OP_LOAD_F	4044	182	4177
// OP_BITAND	4177	220	4178
// OP_IFNOT	4178	2	0
// OP_RETURN	0	0	0
// OP_LOAD_F	4044	380	4179
// OP_GE	4179	31	4180
// OP_IFNOT	4180	14	0
// OP_LOAD_F	28	385	4181
// OP_LT	4181	31	4182
// OP_IFNOT	4182	10	0
// OP_STORE_V	4044	4	0
// OP_STORE_V	328	7	0
// OP_STORE_V	4183	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	385	4184
// OP_ADD_F	31	216	4185
// OP_STOREP_F	4185	4184	0
// OP_RETURN	0	0	0
// OP_ADDRESS	4044	152	4186
// OP_LOAD_F	4044	152	4187
// OP_SUB_F	4187	4053	4188
// OP_STOREP_F	4188	4186	0
// OP_LOAD_F	4044	152	4189
// OP_LE	4189	213	4190
// OP_IFNOT	4190	5	0
// OP_STORE_V	4044	4	0
// OP_STORE_V	4046	7	0
// OP_CALL2	4006	0	0
// OP_RETURN	0	0	0
// OP_STORE_ENT	28	4051	0
// OP_STORE_ENT	4044	28	0
// OP_LOAD_F	28	182	4191
// OP_BITAND	4191	219	4192
// OP_NE_E	4046	30	4193
// OP_AND	4192	4193	4194
// OP_IFNOT	4194	23	0
// OP_NE_E	28	4046	4195
// OP_LOAD_ENT	28	181	4196
// OP_NE_E	4046	4196	4197
// OP_AND	4195	4197	4198
// OP_IFNOT	4198	18	0
// OP_LOAD_S	28	129	4199
// OP_LOAD_S	4046	129	4200
// OP_NE_S	4199	4200	4201
// OP_LOAD_S	28	129	4202
// OP_EQ_S	4202	3704	4203
// OP_OR	4201	4203	4204
// OP_IFNOT	4204	11	0
// OP_LOAD_ENT	28	181	4205
// OP_LOAD_S	4205	129	4206
// OP_EQ_S	4206	1236	4207
// OP_IFNOT	4207	4	0
// OP_ADDRESS	28	368	4208
// OP_LOAD_ENT	28	181	4209
// OP_STOREP_ENT	4209	4208	0
// OP_ADDRESS	28	181	4210
// OP_STOREP_ENT	4046	4210	0
// OP_CALL0	3711	0	0
// OP_LOAD_FNC	28	366	4211
// OP_IFNOT	4211	10	0
// OP_LOAD_FNC	28	366	4212
// OP_STORE_V	4046	4	0
// OP_STORE_V	4053	7	0
// OP_CALL2	4212	0	0
// OP_EQ_F	354	228	4213
// OP_IFNOT	4213	4	0
// OP_ADDRESS	28	379	4214
// OP_ADD_F	31	230	4215
// OP_STOREP_F	4215	4214	0
// OP_STORE_ENT	4051	28	0
// OP_DONE	0	0	0
void (entity targ, entity inflictor, entity attacker, float damage) T_Damage = 
{
    local vector dir;
    local entity oldself;
    local float save;
    local float take;
    
    if(globaldef000799)
    {
        return;
    }
    
    
    if(!targ.takedamage)
    {
        return;
    }
    
    damage_attacker = attacker;
    
    if(attacker.super_damage_finished > time)
    {
        if(deathmatch == MOVETYPE_STEP)
        {
            damage = damage * FL_CLIENT;
        }
        else
        {
            damage = damage * MOVETYPE_STEP;
        }
        
    }
    
    save = ceil(targ.armortype * damage);
    
    if(save >= targ.armorvalue)
    {
        save = targ.armorvalue;
        targ.armortype = FALSE;
        targ.items = targ.items - (targ.items & ((IT_ARMOR1 | IT_ARMOR2) | IT_ARMOR3));
    }
    
    targ.armorvalue = targ.armorvalue - save;
    take = ceil(damage - save);
    
    if(targ.flags & FL_CLIENT)
    {
        targ.dmg_take = targ.dmg_take + take;
        targ.dmg_save = targ.dmg_save + save;
        targ.dmg_inflictor = inflictor;
    }
    
    
    if((inflictor != world) && (targ.movetype == MOVETYPE_WALK))
    {
        dir = targ.origin - ((inflictor.absmin + inflictor.absmax) * RA_PLAYERSTATTIME);
        dir = normalize(dir);
        targ.velocity = targ.velocity + ((dir * damage) * FL_CLIENT);
    }
    
    
    if((inflictor != world) && (targ.classname == "bot"))
    {
        dir = targ.origin - ((inflictor.absmin + inflictor.absmax) * RA_PLAYERSTATTIME);
        dir = normalize(dir);
        targ.velocity = targ.velocity + ((dir * damage) * FL_CLIENT);
        
        if(targ.field000278 > time)
        {
            targ.velocity = targ.velocity + targ.field000279;
            targ.field000278 = time - TRUE;
        }
        
    }
    
    
    if(targ.flags & FL_GODMODE)
    {
        return;
    }
    
    
    if(targ.invincible_finished >= time)
    {
        
        if(self.invincible_sound < time)
        {
            sound(targ, CHAN_ITEM, "items/protect3.wav", TRUE, ATTN_NORM);
            self.invincible_sound = time + FL_SWIM;
        }
        
        return;
    }
    
    targ.health = targ.health - take;
    
    if(targ.health <= FALSE)
    {
        Killed(targ, attacker);
        return;
    }
    
    oldself = self;
    self = targ;
    
    if((self.flags & FL_MONSTER) && (attacker != world))
    {
        
        if((self != attacker) && (attacker != self.enemy))
        {
            
            if((self.classname != attacker.classname) || (self.classname == "monster_army"))
            {
                
                if(self.enemy.classname == "player")
                {
                    self.oldenemy = self.enemy;
                }
                
                self.enemy = attacker;
                FoundTarget();
            }
            
        }
        
    }
    
    
    if(self.th_pain)
    {
        self.th_pain(attacker, take);
        
        if(skill == MOVETYPE_WALK)
        {
            self.pain_finished = time + MOVETYPE_FLY;
        }
        
    }
    
    self = oldself;
};


// T_RadiusDamage
// function begins at statement 4114, parm_start=4217
// OP_LOAD_V	4217	105	4226
// OP_STORE_V	4226	4	0
// OP_ADD_F	4219	746	4229
// OP_STORE_V	4229	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	4222	0
// OP_IFNOT	4222	51	0
// OP_NE_E	4222	4220	4230
// OP_IFNOT	4230	46	0
// OP_LOAD_F	4222	163	4231
// OP_IFNOT	4231	44	0
// OP_LOAD_V	4222	105	4232
// OP_LOAD_V	4222	134	4235
// OP_LOAD_V	4222	138	4238
// OP_ADD_V	4235	4238	4241
// OP_MUL_VF	4241	539	4244
// OP_ADD_V	4232	4244	4247
// OP_STORE_V	4247	4223	0
// OP_LOAD_V	4217	105	4250
// OP_SUB_V	4250	4223	4253
// OP_STORE_V	4253	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	539	1	4256
// OP_STORE_F	4256	4221	0
// OP_LT	4221	213	4257
// OP_IFNOT	4257	2	0
// OP_STORE_F	213	4221	0
// OP_SUB_F	4219	4221	4258
// OP_STORE_F	4258	4221	0
// OP_EQ_E	4222	4218	4259
// OP_IFNOT	4259	3	0
// OP_MUL_F	4221	539	4260
// OP_STORE_F	4260	4221	0
// OP_GT	4221	213	4261
// OP_IFNOT	4261	20	0
// OP_STORE_V	4222	4	0
// OP_STORE_V	4217	7	0
// OP_CALL2	524	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	4222	129	4262
// OP_EQ_S	4262	3661	4263
// OP_IFNOT	4263	8	0
// OP_STORE_V	4222	4	0
// OP_STORE_V	4217	7	0
// OP_STORE_V	4218	10	0
// OP_MUL_F	4221	539	4264
// OP_STORE_V	4264	13	0
// OP_CALL4	522	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	4222	4	0
// OP_STORE_V	4217	7	0
// OP_STORE_V	4218	10	0
// OP_STORE_V	4221	13	0
// OP_CALL4	522	0	0
// OP_LOAD_ENT	4222	164	4265
// OP_STORE_ENT	4265	4222	0
// OP_GOTO	-50	0	0
// OP_DONE	0	0	0
void (entity inflictor, entity attacker, float damage, entity ignore) T_RadiusDamage = 
{
    local float points;
    local entity head;
    local vector org;
    head = findradius(inflictor.origin, damage + GLOBALDEF729_40);
    
    while(head)
    {
        
        if(head != ignore)
        {
            
            if(head.takedamage)
            {
                org = head.origin + ((head.mins + head.maxs) * RA_PLAYERSTATTIME);
                points = RA_PLAYERSTATTIME * (vlen(inflictor.origin - org));
                
                if(points < FALSE)
                {
                    points = FALSE;
                }
                
                points = damage - points;
                
                if(head == attacker)
                {
                    points = points * RA_PLAYERSTATTIME;
                }
                
                
                if(points > FALSE)
                {
                    
                    if(CanDamage(head, inflictor))
                    {
                        if(head.classname == "monster_shambler")
                        {
                            T_Damage(head, inflictor, attacker, points * RA_PLAYERSTATTIME);
                        }
                        else
                        {
                            T_Damage(head, inflictor, attacker, points);
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
    
};


// T_BeamDamage
// function begins at statement 4172, parm_start=4267
// OP_LOAD_V	4267	105	4271
// OP_STORE_V	4271	4	0
// OP_ADD_F	4268	746	4274
// OP_STORE_V	4274	7	0
// OP_CALL2	471	0	0
// OP_STORE_ENT	1	4270	0
// OP_IFNOT	4270	43	0
// OP_LOAD_F	4270	163	4275
// OP_IFNOT	4275	38	0
// OP_LOAD_V	4267	105	4276
// OP_LOAD_V	4270	105	4279
// OP_SUB_V	4276	4279	4282
// OP_STORE_V	4282	4	0
// OP_CALL1	462	0	0
// OP_MUL_F	539	1	4285
// OP_STORE_F	4285	4269	0
// OP_LT	4269	213	4286
// OP_IFNOT	4286	2	0
// OP_STORE_F	213	4269	0
// OP_SUB_F	4268	4269	4287
// OP_STORE_F	4287	4269	0
// OP_EQ_E	4270	4267	4288
// OP_IFNOT	4288	3	0
// OP_MUL_F	4269	539	4289
// OP_STORE_F	4289	4269	0
// OP_GT	4269	213	4290
// OP_IFNOT	4290	20	0
// OP_STORE_V	4270	4	0
// OP_STORE_V	4267	7	0
// OP_CALL2	524	0	0
// OP_IFNOT	1	16	0
// OP_LOAD_S	4270	129	4291
// OP_EQ_S	4291	3661	4292
// OP_IFNOT	4292	8	0
// OP_STORE_V	4270	4	0
// OP_STORE_V	4267	7	0
// OP_STORE_V	4267	10	0
// OP_MUL_F	4269	539	4293
// OP_STORE_V	4293	13	0
// OP_CALL4	522	0	0
// OP_GOTO	6	0	0
// OP_STORE_V	4270	4	0
// OP_STORE_V	4267	7	0
// OP_STORE_V	4267	10	0
// OP_STORE_V	4269	13	0
// OP_CALL4	522	0	0
// OP_LOAD_ENT	4270	164	4294
// OP_STORE_ENT	4294	4270	0
// OP_GOTO	-42	0	0
// OP_DONE	0	0	0
void (entity attacker, float damage) T_BeamDamage = 
{
    local float points;
    local entity head;
    head = findradius(attacker.origin, damage + GLOBALDEF729_40);
    
    while(head)
    {
        
        if(head.takedamage)
        {
            points = RA_PLAYERSTATTIME * (vlen(attacker.origin - head.origin));
            
            if(points < FALSE)
            {
                points = FALSE;
            }
            
            points = damage - points;
            
            if(head == attacker)
            {
                points = points * RA_PLAYERSTATTIME;
            }
            
            
            if(points > FALSE)
            {
                
                if(CanDamage(head, attacker))
                {
                    if(head.classname == "monster_shambler")
                    {
                        T_Damage(head, attacker, attacker, points * RA_PLAYERSTATTIME);
                    }
                    else
                    {
                        T_Damage(head, attacker, attacker, points);
                    }
                    
                }
                
            }
            
        }
        
        head = head.chain;
    }
    
};

