float (float v) anglemod;
void () knight_atk1;
void () knight_runatk1;
void () ogre_smash1;
void () ogre_swing1;
void () sham_smash1;
void () sham_swingr1;
void () sham_swingl1;
float () DemonCheckAttack;
void (float side) Demon_Melee;
void (vector dest3) ChooseTurn;
void () ai_face;
float enemy_vis;
float enemy_infront;
float enemy_range;
float enemy_yaw;
// knight_attack
// function begins at statement 275, parm_start=850
// OP_LOAD_ENT	28	181	851
// OP_LOAD_V	851	105	852
// OP_LOAD_ENT	28	181	855
// OP_LOAD_V	855	166	856
// OP_ADD_V	852	856	859
// OP_LOAD_V	28	105	862
// OP_LOAD_V	28	166	865
// OP_ADD_V	862	865	868
// OP_SUB_V	859	868	871
// OP_STORE_V	871	4	0
// OP_CALL1	458	0	0
// OP_STORE_F	1	850	0
// OP_LT	850	874	875
// OP_IFNOT	875	3	0
// OP_CALL0	834	0	0
// OP_GOTO	2	0	0
// OP_CALL0	835	0	0
// OP_DONE	0	0	0
void () knight_attack = 
{
    local float len;
    len = vlen((self.enemy.origin + self.enemy.view_ofs) - (self.origin + self.view_ofs));
    if(len < 80.000)
    {
        knight_atk1();
    }
    else
    {
        knight_runatk1();
    }
    
};

// CheckAttack
// function begins at statement 293, parm_start=877
// OP_LOAD_ENT	28	181	885
// OP_STORE_ENT	885	883	0
// OP_LOAD_V	28	105	886
// OP_LOAD_V	28	166	889
// OP_ADD_V	886	889	892
// OP_STORE_V	892	877	0
// OP_LOAD_V	883	105	895
// OP_LOAD_V	883	166	898
// OP_ADD_V	895	898	901
// OP_STORE_V	901	880	0
// OP_STORE_V	877	4	0
// OP_STORE_V	880	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_NE_E	78	883	904
// OP_IFNOT	904	2	0
// OP_RETURN	213	0	0
// OP_AND	79	80	905
// OP_IFNOT	905	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	243	906
// OP_IFNOT	906	11	0
// OP_LOAD_FNC	28	361	907
// OP_IFNOT	907	9	0
// OP_LOAD_S	28	129	908
// OP_EQ_S	908	909	910
// OP_IFNOT	910	3	0
// OP_CALL0	849	0	0
// OP_GOTO	3	0	0
// OP_LOAD_FNC	28	361	911
// OP_CALL0	911	0	0
// OP_RETURN	214	0	0
// OP_LOAD_FNC	28	360	912
// OP_NOT_FNC	912	0	913
// OP_IFNOT	913	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	374	914
// OP_LT	31	914	915
// OP_IFNOT	915	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	246	916
// OP_IFNOT	916	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	243	917
// OP_IFNOT	917	5	0
// OP_STORE_F	918	884	0
// OP_ADDRESS	28	374	919
// OP_STOREP_F	650	919	0
// OP_GOTO	18	0	0
// OP_EQ_F	847	244	920
// OP_IFNOT	920	7	0
// OP_LOAD_FNC	28	361	921
// OP_IFNOT	921	3	0
// OP_STORE_F	922	884	0
// OP_GOTO	2	0	0
// OP_STORE_F	923	884	0
// OP_GOTO	10	0	0
// OP_EQ_F	847	245	924
// OP_IFNOT	924	7	0
// OP_LOAD_FNC	28	361	925
// OP_IFNOT	925	3	0
// OP_STORE_F	926	884	0
// OP_GOTO	2	0	0
// OP_STORE_F	686	884	0
// OP_GOTO	2	0	0
// OP_STORE_F	650	884	0
// OP_CALL0	453	0	0
// OP_LT	1	884	927
// OP_IFNOT	927	8	0
// OP_LOAD_FNC	28	360	928
// OP_CALL0	928	0	0
// OP_CALL0	453	0	0
// OP_MUL_F	929	1	930
// OP_STORE_V	930	4	0
// OP_CALL1	816	0	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () CheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(self.th_melee)
        {
            if(self.classname == "monster_knight")
            {
                knight_attack();
            }
            else
            {
                self.th_melee();
            }
            
            return TRUE;
        }
        
    }
    
    
    if(!self.th_missile)
    {
        return FALSE;
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    if(enemy_range == RANGE_MELEE)
    {
        chance = 0.900;
        self.attack_finished = 0.000;
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            if(self.th_melee)
            {
                chance = 0.200;
            }
            else
            {
                chance = 0.400;
            }
            
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                if(self.th_melee)
                {
                    chance = 0.050;
                }
                else
                {
                    chance = 0.100;
                }
                
            }
            else
            {
                chance = 0.000;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(2.000 * random());
        return TRUE;
    }
    
    return FALSE;
};

// ai_face
// function begins at statement 372, parm_start=931
// OP_ADDRESS	28	191	931
// OP_LOAD_ENT	28	181	932
// OP_LOAD_V	932	105	933
// OP_LOAD_V	28	105	936
// OP_SUB_V	933	936	939
// OP_STORE_V	939	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	931	0
// OP_CALL0	492	0	0
// OP_DONE	0	0	0
void () ai_face = 
{
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
};

float (entity targ) infront;
float (entity targ) range;
// ai_charge
// function begins at statement 382, parm_start=945
// OP_CALL0	844	0	0
// OP_IFNOT	539	4	0
// OP_STORE_V	945	4	0
// OP_CALL1	502	0	0
// OP_GOTO	23	0	0
// OP_LOAD_V	28	105	949
// OP_LOAD_ENT	28	194	952
// OP_LOAD_V	952	105	953
// OP_SUB_V	949	953	956
// OP_STORE_V	956	4	0
// OP_CALL1	458	0	0
// OP_ADD_F	959	945	960
// OP_GT	1	960	961
// OP_IFNOT	961	14	0
// OP_LOAD_ENT	28	194	962
// OP_LOAD_V	962	105	963
// OP_LOAD_V	28	105	966
// OP_SUB_V	963	966	969
// OP_STORE_V	969	4	0
// OP_CALL1	455	0	0
// OP_STORE_V	1	946	0
// OP_STORE_V	28	4	0
// OP_LOAD_V	28	105	972
// OP_MUL_VF	946	945	975
// OP_ADD_V	972	975	978
// OP_STORE_V	978	7	0
// OP_CALL2	449	0	0
// OP_DONE	0	0	0
void (float d) ai_charge = 
{
    local vector goal_vec;
    ai_face();
    if(king_dead)
    {
        movetogoal(d);
    }
    else
    {
        
        if((vlen(self.origin - self.goalentity.origin)) > (32.000 + d))
        {
            goal_vec = normalize(self.goalentity.origin - self.origin);
            setorigin(self, self.origin + (goal_vec * d));
        }
        
    }
    
};

// ai_charge_side
// function begins at statement 410, parm_start=982
// OP_ADDRESS	28	191	986
// OP_LOAD_ENT	28	181	987
// OP_LOAD_V	987	105	988
// OP_LOAD_V	28	105	991
// OP_SUB_V	988	991	994
// OP_STORE_V	994	4	0
// OP_CALL1	459	0	0
// OP_STOREP_F	1	986	0
// OP_CALL0	492	0	0
// OP_LOAD_V	28	117	997
// OP_STORE_V	997	4	0
// OP_CALL1	448	0	0
// OP_LOAD_ENT	28	181	1000
// OP_LOAD_V	1000	105	1001
// OP_MUL_FV	1004	65	1005
// OP_SUB_V	1001	1005	1008
// OP_STORE_V	1008	982	0
// OP_LOAD_V	28	105	1011
// OP_SUB_V	982	1011	1014
// OP_STORE_V	1014	4	0
// OP_CALL1	459	0	0
// OP_STORE_F	1	985	0
// OP_STORE_V	985	4	0
// OP_STORE_V	1017	7	0
// OP_CALL2	478	0	0
// OP_DONE	0	0	0
void () ai_charge_side = 
{
    local vector dtemp;
    local float heading;
    self.ideal_yaw = vectoyaw(self.enemy.origin - self.origin);
    ChangeYaw();
    makevectors(self.angles);
    dtemp = self.enemy.origin - (30.000 * v_right);
    heading = vectoyaw(dtemp - self.origin);
    walkmove(heading, 20.000);
};

// ai_melee
// function begins at statement 436, parm_start=1019
// OP_LOAD_ENT	28	181	1023
// OP_NOT_ENT	1023	0	1024
// OP_IFNOT	1024	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1025
// OP_LOAD_V	1025	105	1026
// OP_LOAD_V	28	105	1029
// OP_SUB_V	1026	1029	1032
// OP_STORE_V	1032	1019	0
// OP_STORE_V	1019	4	0
// OP_CALL1	458	0	0
// OP_GT	1	1035	1036
// OP_IFNOT	1036	2	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_CALL0	453	0	0
// OP_ADD_F	1	1	1037
// OP_CALL0	453	0	0
// OP_ADD_F	1037	1	1038
// OP_MUL_F	1038	819	1039
// OP_STORE_F	1039	1022	0
// OP_LOAD_ENT	28	181	1040
// OP_STORE_V	1040	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1022	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ai_melee = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 60.000)
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 3.000;
    T_Damage(self.enemy, self, self, ldmg);
};

// ai_melee_side
// function begins at statement 464, parm_start=1042
// OP_LOAD_ENT	28	181	1046
// OP_NOT_ENT	1046	0	1047
// OP_IFNOT	1047	2	0
// OP_RETURN	0	0	0
// OP_CALL0	981	0	0
// OP_LOAD_ENT	28	181	1048
// OP_LOAD_V	1048	105	1049
// OP_LOAD_V	28	105	1052
// OP_SUB_V	1049	1052	1055
// OP_STORE_V	1055	1042	0
// OP_STORE_V	1042	4	0
// OP_CALL1	458	0	0
// OP_GT	1	1035	1058
// OP_IFNOT	1058	2	0
// OP_RETURN	0	0	0
// OP_LOAD_ENT	28	181	1059
// OP_STORE_V	1059	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	523	0	0
// OP_NOT_F	1	0	1060
// OP_IFNOT	1060	2	0
// OP_RETURN	0	0	0
// OP_CALL0	453	0	0
// OP_CALL0	453	0	0
// OP_ADD_F	1	1	1061
// OP_CALL0	453	0	0
// OP_ADD_F	1061	1	1062
// OP_MUL_F	1062	819	1063
// OP_STORE_F	1063	1045	0
// OP_LOAD_ENT	28	181	1064
// OP_STORE_V	1064	4	0
// OP_STORE_V	28	7	0
// OP_STORE_V	28	10	0
// OP_STORE_V	1045	13	0
// OP_CALL4	521	0	0
// OP_DONE	0	0	0
void () ai_melee_side = 
{
    local vector delta;
    local float ldmg;
    
    if(!self.enemy)
    {
        return;
    }
    
    ai_charge_side();
    delta = self.enemy.origin - self.origin;
    
    if(vlen(delta) > 60.000)
    {
        return;
    }
    
    
    if(!CanDamage(self.enemy, self))
    {
        return;
    }
    
    random();
    ldmg = ((random() + random()) + random()) * 3.000;
    T_Damage(self.enemy, self, self, ldmg);
};

// SoldierCheckAttack
// function begins at statement 500, parm_start=1066
// OP_LOAD_ENT	28	181	1074
// OP_STORE_ENT	1074	1072	0
// OP_LOAD_V	28	105	1075
// OP_LOAD_V	28	166	1078
// OP_ADD_V	1075	1078	1081
// OP_STORE_V	1081	1066	0
// OP_LOAD_V	1072	105	1084
// OP_LOAD_V	1072	166	1087
// OP_ADD_V	1084	1087	1090
// OP_STORE_V	1090	1069	0
// OP_STORE_V	1066	4	0
// OP_STORE_V	1069	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_AND	79	80	1093
// OP_IFNOT	1093	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	1072	1094
// OP_IFNOT	1094	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	374	1095
// OP_LT	31	1095	1096
// OP_IFNOT	1096	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	246	1097
// OP_IFNOT	1097	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	243	1098
// OP_IFNOT	1098	3	0
// OP_STORE_F	918	1073	0
// OP_GOTO	10	0	0
// OP_EQ_F	847	244	1099
// OP_IFNOT	1099	3	0
// OP_STORE_F	923	1073	0
// OP_GOTO	6	0	0
// OP_EQ_F	847	245	1100
// OP_IFNOT	1100	3	0
// OP_STORE_F	926	1073	0
// OP_GOTO	2	0	0
// OP_STORE_F	650	1073	0
// OP_CALL0	453	0	0
// OP_LT	1	1073	1101
// OP_IFNOT	1101	15	0
// OP_LOAD_FNC	28	360	1102
// OP_CALL0	1102	0	0
// OP_CALL0	453	0	0
// OP_ADD_F	708	1	1103
// OP_STORE_V	1103	4	0
// OP_CALL1	816	0	0
// OP_CALL0	453	0	0
// OP_LT	1	1104	1105
// OP_IFNOT	1105	5	0
// OP_ADDRESS	28	366	1106
// OP_LOAD_F	28	366	1107
// OP_NOT_F	1107	0	1108
// OP_STOREP_F	1108	1106	0
// OP_RETURN	214	0	0
// OP_RETURN	213	0	0
// OP_DONE	0	0	0
float () SoldierCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    if(enemy_range == RANGE_MELEE)
    {
        chance = 0.900;
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            chance = 0.400;
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                chance = 0.050;
            }
            else
            {
                chance = 0.000;
            }
            
        }
        
    }
    
    
    if(random() < chance)
    {
        self.th_missile();
        SUB_AttackFinished(1.000 + random());
        
        if(random() < 0.300)
        {
            self.lefty = !self.lefty;
        }
        
        return TRUE;
    }
    
    return FALSE;
};

// ShamCheckAttack
// function begins at statement 560, parm_start=1110
// OP_STORE_V	531	4	0
// OP_STORE_V	1118	7	0
// OP_CALL2	470	0	0
// OP_EQ_F	847	243	1119
// OP_IFNOT	1119	9	0
// OP_LOAD_ENT	28	181	1120
// OP_STORE_V	1120	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	523	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	368	1121
// OP_STOREP_F	371	1121	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	374	1122
// OP_LT	31	1122	1123
// OP_IFNOT	1123	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	246	1124
// OP_IFNOT	1124	2	0
// OP_RETURN	213	0	0
// OP_ADDRESS	28	368	1125
// OP_STOREP_F	372	1125	0
// OP_CALL0	453	0	0
// OP_MUL_F	929	1	1126
// OP_ADD_F	929	1126	1127
// OP_STORE_V	1127	4	0
// OP_CALL1	816	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () ShamCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    sprint(player1, "shambler check attack\n");
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(CanDamage(self.enemy, self))
        {
            self.attack_state = AS_MELEE;
            return TRUE;
        }
        
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(2.000 + (2.000 * random()));
    return TRUE;
};

// OgreCheckAttack
// function begins at statement 589, parm_start=1129
// OP_EQ_F	847	243	1137
// OP_IFNOT	1137	9	0
// OP_LOAD_ENT	28	181	1138
// OP_STORE_V	1138	4	0
// OP_STORE_V	28	7	0
// OP_CALL2	523	0	0
// OP_IFNOT	1	4	0
// OP_ADDRESS	28	368	1139
// OP_STOREP_F	371	1139	0
// OP_RETURN	214	0	0
// OP_LOAD_F	28	374	1140
// OP_LT	31	1140	1141
// OP_IFNOT	1141	2	0
// OP_RETURN	213	0	0
// OP_NOT_F	845	0	1142
// OP_IFNOT	1142	2	0
// OP_RETURN	213	0	0
// OP_LOAD_ENT	28	181	1143
// OP_STORE_ENT	1143	1135	0
// OP_LOAD_V	28	105	1144
// OP_LOAD_V	28	166	1147
// OP_ADD_V	1144	1147	1150
// OP_STORE_V	1150	1129	0
// OP_LOAD_V	1135	105	1153
// OP_LOAD_V	1135	166	1156
// OP_ADD_V	1153	1156	1159
// OP_STORE_V	1159	1132	0
// OP_STORE_V	1129	4	0
// OP_STORE_V	1132	7	0
// OP_STORE_V	213	10	0
// OP_STORE_V	28	13	0
// OP_CALL4	462	0	0
// OP_AND	79	80	1162
// OP_IFNOT	1162	2	0
// OP_RETURN	213	0	0
// OP_NE_E	78	1135	1163
// OP_IFNOT	1163	2	0
// OP_RETURN	213	0	0
// OP_LOAD_F	28	374	1164
// OP_LT	31	1164	1165
// OP_IFNOT	1165	2	0
// OP_RETURN	213	0	0
// OP_EQ_F	847	246	1166
// OP_IFNOT	1166	3	0
// OP_RETURN	213	0	0
// OP_GOTO	10	0	0
// OP_EQ_F	847	244	1167
// OP_IFNOT	1167	3	0
// OP_STORE_F	686	1136	0
// OP_GOTO	6	0	0
// OP_EQ_F	847	245	1168
// OP_IFNOT	1168	3	0
// OP_STORE_F	926	1136	0
// OP_GOTO	2	0	0
// OP_STORE_F	650	1136	0
// OP_ADDRESS	28	368	1169
// OP_STOREP_F	372	1169	0
// OP_CALL0	453	0	0
// OP_MUL_F	929	1	1170
// OP_ADD_F	708	1170	1171
// OP_STORE_V	1171	4	0
// OP_CALL1	816	0	0
// OP_RETURN	214	0	0
// OP_DONE	0	0	0
float () OgreCheckAttack = 
{
    local vector spot1;
    local vector spot2;
    local entity targ;
    local float chance;
    
    if(enemy_range == RANGE_MELEE)
    {
        
        if(CanDamage(self.enemy, self))
        {
            self.attack_state = AS_MELEE;
            return TRUE;
        }
        
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    
    if(!enemy_vis)
    {
        return FALSE;
    }
    
    targ = self.enemy;
    spot1 = self.origin + self.view_ofs;
    spot2 = targ.origin + targ.view_ofs;
    traceline(spot1, spot2, FALSE, self);
    
    if(trace_inopen && trace_inwater)
    {
        return FALSE;
    }
    
    
    if(trace_ent != targ)
    {
        return FALSE;
    }
    
    
    if(time < self.attack_finished)
    {
        return FALSE;
    }
    
    if(enemy_range == RANGE_FAR)
    {
        return FALSE;
    }
    else
    {
        if(enemy_range == RANGE_NEAR)
        {
            chance = 0.100;
        }
        else
        {
            if(enemy_range == RANGE_MID)
            {
                chance = 0.050;
            }
            else
            {
                chance = 0.000;
            }
            
        }
        
    }
    
    self.attack_state = AS_MISSILE;
    SUB_AttackFinished(1.000 + (2.000 * random()));
    return TRUE;
};

